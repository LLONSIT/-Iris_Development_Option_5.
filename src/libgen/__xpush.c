#include <stdio.h>
#include <stdlib.h>
#include "types.h"

u32 *__eptr_;
u32 *__lptr_;

s32 __xpush(s32 lvalue, s32 ptr) {
    if ((u32) __lptr_ >= (u32) __eptr_) {
        return -1;
    }
    if (lvalue != 0) {
        *__lptr_ = ptr;
        __lptr_++;
    } else {
        *__eptr_ = ptr;
        __eptr_--;
    }
    return 1;
}
