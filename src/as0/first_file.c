#include <stdio.h>
#include "common_types.h"
#include "as0_common.h"


//as0 parse?
void assertion_failed(s32 assert_name, char *file, s32 line) {
    call_name_and_line(0);
    fprintf(stderr, "%s, line %1d:\n", file, line);
    if (assert_name != 0) {
        fprintf(stderr, "    assertion (%s) failed\n", assert_name);
    }
    fflush(stderr);
    exit(1);
}
