#include <stdio.h>
#include <stdlib.h>
#include "types.h"

void _eaccess(s32 path, s32 mode) {
    access(path, mode | 8);
}
