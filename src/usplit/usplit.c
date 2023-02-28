// Normal C headers
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
 #include <fcntl.h>

// SGI headers
#ifdef __sgi
#include <sex.h>
#endif

// types
#include "common_types.h"

#define SEEK_SET 0

#define  MIPSEBUMAGIC	0x0180
#define  MIPSELUMAGIC	0x0182

//necesary
struct filehdr {
	unsigned short	f_magic;	/* magic number */
	unsigned short	f_nscns;	/* number of sections */
	long		f_timdat;	/* time & date stamp */
	long		f_symptr;	/* file pointer to symbolic header */
	long		f_nsyms;	/* sizeof(symbolic hdr) */
	unsigned short	f_opthdr;	/* sizeof(optional hdr) */
	unsigned short	f_flags;	/* flags */
	};

struct scnhdr {
	/* 0x00 */ char		s_name[8];	/* section name */
	/* 0x08 */ long		s_paddr;	/* physical address, aliased s_nlib */
	/* 0x0C */ long		s_vaddr;	/* virtual address */
	/* 0x10 */ long		s_size;		/* section size */
	/* 0x14 */ long		s_scnptr;	/* file ptr to raw data for section */
	long		s_relptr;	/* file ptr to relocation */
	long		s_lnnoptr;	/* file ptr to gp histogram */
	unsigned short	s_nreloc;	/* number of relocation entries */
	unsigned short	s_nlnno;	/* number of gp histogram entries */
    long		s_flags;	/* flags */
	};



/*

Variables

*/

u8 myname;

s32 main(s32 argc, u8** argv) {
    s32 outputFd;
    s32 tfileFd;
    s32 inputFd;
    char outputFilename[0x400];
    char tfileFilename[0x400];
    struct filehdr fileHeader;
    struct scnhdr sectionHeader;

    myname = argv[0];
    st_setmsgname(myname);
    strcpy(outputFilename, "a.out.F");
    strcpy(tfileFilename, "a.out.T");

    while(1) {
        if (argc < 2) {
            fprintf(stderr, "Usage: %s [-o file.B] [-t file.T] file\n", myname);
            exit(1);
        }
        if (strcmp(argv[1], "-v") == 0) {
            argv++;
            --argc;
            continue;
        }
        if (strcmp(argv[1], "-mips2") == 0) {
            argv++;
            argc -= 1;
            continue;
        }
        if (strcmp(argv[1], "-o") == 0) {
            strcpy(outputFilename,  argv[2]);
            argv += 2;
            argc -= 2;
            continue;
        }
        if (strcmp(argv[1], "-t") == 0) {
            strcpy(tfileFilename,  argv[2]);
            argv += 2;
            argc -= 2;
            continue;
        }
        break;
    }
  
    outputFd =  open(outputFilename, 0x301, 0x1B6);
    if (outputFd < 0) {
        fprintf(stderr, "%s: Error: opening %s: ", myname, outputFilename);
        perror("");
        exit(1);
    }
    
    tfileFd = open(tfileFilename, 0x301, 0x1B6);;
    if (tfileFd < 0) {
        fprintf(stderr, "%s: Error: opening %s: ", myname, tfileFilename);
        perror("");
        exit(1);
    }
    inputFd = open(argv[1], 0, 0);
    if (inputFd < 0) {
        fprintf(stderr, "%s: Error: opening %s: ", myname, argv[1]);
        perror("");
        exit(1);
    }
    if (read(inputFd, &fileHeader, sizeof(struct filehdr)) != sizeof(struct filehdr)) {
        fprintf(stderr, "%s: Error: cannot read file header from %s: ", myname,  argv[1]);
        perror("");
        exit(1);
    }
    if (read(inputFd, &sectionHeader, sizeof(struct scnhdr)) != sizeof(struct scnhdr)) {
        fprintf(stderr, "%s: Error: cannot read section header from %s: ", myname, argv[1]);
        perror("");
        exit(1);
    }
    if ((fileHeader.f_magic != MIPSELUMAGIC) && (fileHeader.f_magic != MIPSEBUMAGIC)) {
        fprintf(stderr, "%s: Error: magic must be elu or ebu was 0x%x\n", myname, fileHeader.f_magic);
        exit(1);
    }
    lseek(inputFd, sectionHeader.s_scnptr, SEEK_SET);
    if (forward(inputFd, outputFd, sectionHeader.s_size) != sectionHeader.s_size) {
        fprintf(stderr, "%s: Error: cannot read/write ucodes from/to %s/%s: ", myname,  argv[1], outputFilename);
        perror("");
        exit(1);
    }
    if (fileHeader.f_symptr == 0) {
        exit(0);
    }
    lseek(inputFd, fileHeader.f_symptr, SEEK_SET);
    if (st_readst(inputFd, 0x72, 0, 0, -1) < 0) {
        fprintf(stderr, "%s: Error: cannot read symbol table from %s: ", myname, argv[1]);
        perror("");
        exit(1);
   }
    st_writest(tfileFd, -1);
    close(tfileFd);
    close(outputFd);
    close(inputFd);
    return 0;
}

/*
 Match by: Taggerung (decomp.me: tcmg2)
  Original Scratch: https://decomp.me/scratch/I8d42
*/

s32 forward(s32 sourceFd, s32 targetFd, s32 size) {
    s32 var_s1;
    s32 buffer[1023];
    s32 bytesRead; // This variable is both the number of bytes to-be-read AND the number of bytes actually read
    s32 bytesWritten;
    s32 totalBytesWritten = 0;

    for (; size > 0; size -= bytesWritten) {
        if (size > 0x1000) {
            bytesRead = 0x1000;
        } else {
            bytesRead = size;
        }
        bytesRead = read(sourceFd, buffer, bytesRead);
        if (bytesRead < 0) {
            // Read error occurred, return the error
            return bytesRead;
        }
        
        if (bytesRead == 0) {
            // Reached the end of the source file? I think?
            return totalBytesWritten;
        }
        bytesWritten = write(targetFd, buffer, bytesRead);
        if (bytesWritten != bytesRead) {
            // Bytes written don't match bytes read, which is likely an error
            return bytesWritten;
        }
        totalBytesWritten += bytesWritten;
    }
    
    return totalBytesWritten;
}
