#include <stdio.h>
#include <stdlib.h>

char progname;

void fatal(char* error_message, int format_arg) {
    fprintf(stderr,"%s: ", progname);
    fprintf(stderr, error_message, format_arg);
    fprintf(stderr, "\n");
    exit(0x21);
}


void perror_with_name(char err) {

    fprintf(stderr, "%s: ", progname);

    if (errno < sys_nerr) {
        fprintf(stderr, "%s: %s\n", err, sys_errlist[errno]);
    } else {
        fprintf(stderr, "%s: undocumented I/O error\n", err);
    }
    errors++;
}
