#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

int dont_repeat_files;
int pedantic;
int instack;
int indepth;
int savestring;

//should rename error as acpp_error

void do_sccs(void) {
    if (pedantic != 0) {
        error("ANSI C does not allow #sccs");
    }
}

#pragma GLOBAL_ASM("asm/acpp_asm/do_endif.s")
