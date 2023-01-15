#include <stdio.h>
#include <stdlib.h>


void assertion_failed(char *assert_name, char *file, int line) {
    call_name_and_line(0);
    fprintf(stderr, "%s, line %1d:\n", file, line);
    if (assert_name != 0) {
        fprintf(stderr, "    assertion (%s) failed\n", assert_name);
    }
    fflush(stderr);
    exit(1);
}
