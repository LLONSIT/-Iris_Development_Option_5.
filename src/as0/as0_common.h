#include <stdio.h>
#include <stdlib.h>

static int D_10000004[4]; //int

struct asm{
    char pad[0x4];
    unsigned int unk4;
};

extern struct asm asm_info[];
extern int atflag;
extern unsigned char isa;

#define UNK_FLAG 1
