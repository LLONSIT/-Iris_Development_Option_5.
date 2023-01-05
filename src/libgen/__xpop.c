
#include <stdio.h>
#include "types.h"

extern u32 __lptr;
extern u32 __st;

__asm__(R""(
.macro glabel label
    .global \label
    .balign 4
    \label:
.endm

.set noat
glabel __xpop # 36
# _gp_disp: 0x10928
.set noreorder; .cpload $t9; # .set reorder
/* 007B84 0F9A7B84 1080000F */  beqz        $a0, .L0F9A7BC4
/* 007B88 0F9A7B88 00000000 */   nop
/* 007B8C 0F9A7B8C 8F848174 */  lw          $a0, %got(__lptr_)($gp)
/* 007B90 0F9A7B90 8F8E816C */  lw          $t6, %got(__st)($gp)
/* 007B94 0F9A7B94 8C820000 */  lw          $v0, 0x0($a0)
/* 007B98 0F9A7B98 00000000 */  nop
/* 007B9C 0F9A7B9C 004E082B */  sltu        $at, $v0, $t6
/* 007BA0 0F9A7BA0 10200003 */  beqz        $at, .L0F9A7BB0
/* 007BA4 0F9A7BA4 244FFFFC */   addiu      $t7, $v0, -0x4
/* 007BA8 0F9A7BA8 03E00008 */  jr          $ra
/* 007BAC 0F9A7BAC 00001025 */   move       $v0, $zero
.L0F9A7BB0:
/* 007BB0 0F9A7BB0 AC8F0000 */  sw          $t7, 0x0($a0)
/* 007BB4 0F9A7BB4 8DE30000 */  lw          $v1, 0x0($t7)
/* 007BB8 0F9A7BB8 00000000 */  nop
/* 007BBC 0F9A7BBC 03E00008 */  jr          $ra
/* 007BC0 0F9A7BC0 00601025 */   move       $v0, $v1
.L0F9A7BC4:
/* 007BC4 0F9A7BC4 8F848170 */  lw          $a0, %got(__eptr_)($gp)
/* 007BC8 0F9A7BC8 8F99816C */  lw          $t9, %got(__st)($gp)
/* 007BCC 0F9A7BCC 8C820000 */  lw          $v0, 0x0($a0)
/* 007BD0 0F9A7BD0 273900C8 */  addiu       $t9, $t9, 0xC8
/* 007BD4 0F9A7BD4 0322082B */  sltu        $at, $t9, $v0
/* 007BD8 0F9A7BD8 10200003 */  beqz        $at, .L0F9A7BE8
/* 007BDC 0F9A7BDC 24480004 */   addiu      $t0, $v0, 0x4
/* 007BE0 0F9A7BE0 10000004 */  b           .L0F9A7BF4
/* 007BE4 0F9A7BE4 00001825 */   move       $v1, $zero
.L0F9A7BE8:
/* 007BE8 0F9A7BE8 AC880000 */  sw          $t0, 0x0($a0)
/* 007BEC 0F9A7BEC 8D030000 */  lw          $v1, 0x0($t0)
/* 007BF0 0F9A7BF0 00000000 */  nop
.L0F9A7BF4:
/* 007BF4 0F9A7BF4 00601025 */  move        $v0, $v1
/* 007BF8 0F9A7BF8 03E00008 */  jr          $ra
/* 007BFC 0F9A7BFC 00000000 */   nop

)"");
