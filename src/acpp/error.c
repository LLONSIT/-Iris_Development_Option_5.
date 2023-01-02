#include <stdio.h>
#include <stdlib.h>

char progname;

void fatal(char* error_message, int format_arg) {
    fprintf(stderr,"%s: ", progname);
    fprintf(stderr, error_message, format_arg);
    fprintf(stderr, "\n");
    exit(0x21);
}
