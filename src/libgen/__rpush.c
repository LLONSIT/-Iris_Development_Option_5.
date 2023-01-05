#include <stdio.h>
#include <stdlib.h>
#include "types.h"


 u32 __sp_;
 u32 __stmax;

s32 __rpush(s32 __stack_item) {

    __sp_ =  __sp_ + 4;

    if (__stmax < __sp_) {
        return 0;
    }
      *((s32 *)(__sp_ - 0)) = __stack_item;
    return 1;

}
