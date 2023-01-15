#include <sys/regdef.h>
#include <sys/asm.h>

/* Using as0 parseable syntax*/
.set noat
.set noreorder

LEAF(_mcount)
  addiu         sp,  sp, -0x8
  addiu         sp,  sp, 0x10
  jr            ra
  move          ra,AT
  nop
  nop
END(_mcount)
