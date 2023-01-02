#include <stdio.h>
#include <stdlib.h>
#include <errno.h>


 int pedantic;

//should rename error as acpp_error

void do_sccs(void) {
    if (pedantic != 0) {
        error("ANSI C does not allow #sccs");
    }
}
