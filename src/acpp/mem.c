#include <stdio.h>
#include <stdlib.h>



__asm__(R""(

.include "macro.inc"

.set noat

glabel xcalloc
# _gp_disp: 0xFBFB8C0
.set noreorder; .cpload $t9; # .set reorder
/* 00EF6C 0040EF6C 00850019 */  multu       $a0, $a1
/* 00EF70 0040EF70 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00EF74 0040EF74 AFB00014 */  sw          $s0, 0x14($sp)
/* 00EF78 0040EF78 8F99811C */  lw          $t9, %call16(malloc)($gp)
/* 00EF7C 0040EF7C AFBF001C */  sw          $ra, 0x1C($sp)
/* 00EF80 0040EF80 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00EF84 0040EF84 00008012 */  mflo        $s0
/* 00EF88 0040EF88 02002025 */  move        $a0, $s0
/* 00EF8C 0040EF8C 0320F809 */  jalr        $t9
/* 00EF90 0040EF90 AFB00024 */   sw         $s0, 0x24($sp)
/* 00EF94 0040EF94 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EF98 0040EF98 8FA70024 */  lw          $a3, 0x24($sp)
/* 00EF9C 0040EF9C 10400023 */  beqz        $v0, .L0040F02C
/* 00EFA0 0040EFA0 AFA20020 */   sw         $v0, 0x20($sp)
/* 00EFA4 0040EFA4 2A010065 */  slti        $at, $s0, 0x65
/* 00EFA8 0040EFA8 14200008 */  bnez        $at, .L0040EFCC
/* 00EFAC 0040EFAC 00401825 */   move       $v1, $v0
/* 00EFB0 0040EFB0 8F99822C */  lw          $t9, %call16(bzero)($gp)
/* 00EFB4 0040EFB4 00402025 */  move        $a0, $v0
/* 00EFB8 0040EFB8 0320F809 */  jalr        $t9
/* 00EFBC 0040EFBC 02002825 */   move       $a1, $s0
/* 00EFC0 0040EFC0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EFC4 0040EFC4 10000017 */  b           .L0040F024
/* 00EFC8 0040EFC8 8FA20020 */   lw         $v0, 0x20($sp)
.L0040EFCC:
/* 00EFCC 0040EFCC 00503021 */  addu        $a2, $v0, $s0
/* 00EFD0 0040EFD0 24C5FFFC */  addiu       $a1, $a2, -0x4
/* 00EFD4 0040EFD4 2608FFFC */  addiu       $t0, $s0, -0x4
/* 00EFD8 0040EFD8 0045082B */  sltu        $at, $v0, $a1
/* 00EFDC 0040EFDC 10200005 */  beqz        $at, .L0040EFF4
/* 00EFE0 0040EFE0 01002025 */   move       $a0, $t0
.L0040EFE4:
/* 00EFE4 0040EFE4 24630004 */  addiu       $v1, $v1, 0x4
/* 00EFE8 0040EFE8 0065082B */  sltu        $at, $v1, $a1
/* 00EFEC 0040EFEC 1420FFFD */  bnez        $at, .L0040EFE4
/* 00EFF0 0040EFF0 AC60FFFC */   sw         $zero, -0x4($v1)
.L0040EFF4:
/* 00EFF4 0040EFF4 05010003 */  bgez        $t0, .L0040F004
/* 00EFF8 0040EFF8 0090082A */   slt        $at, $a0, $s0
/* 00EFFC 0040EFFC 00002025 */  move        $a0, $zero
/* 00F000 0040F000 0090082A */  slt         $at, $a0, $s0
.L0040F004:
/* 00F004 0040F004 10200006 */  beqz        $at, .L0040F020
/* 00F008 0040F008 00441821 */   addu       $v1, $v0, $a0
.L0040F00C:
/* 00F00C 0040F00C 24840001 */  addiu       $a0, $a0, 0x1
/* 00F010 0040F010 0087082A */  slt         $at, $a0, $a3
/* 00F014 0040F014 A0600000 */  sb          $zero, 0x0($v1)
/* 00F018 0040F018 1420FFFC */  bnez        $at, .L0040F00C
/* 00F01C 0040F01C 24630001 */   addiu      $v1, $v1, 0x1
.L0040F020:
/* 00F020 0040F020 8FA20020 */  lw          $v0, 0x20($sp)
.L0040F024:
/* 00F024 0040F024 10000008 */  b           .L0040F048
/* 00F028 0040F028 8FBF001C */   lw         $ra, 0x1C($sp)
.L0040F02C:
/* 00F02C 0040F02C 8F998244 */  lw          $t9, %call16(memory_full)($gp)
/* 00F030 0040F030 00000000 */  nop
/* 00F034 0040F034 0320F809 */  jalr        $t9
/* 00F038 0040F038 00000000 */   nop
/* 00F03C 0040F03C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F040 0040F040 00000000 */  nop
/* 00F044 0040F044 8FBF001C */  lw          $ra, 0x1C($sp)
.L0040F048:
/* 00F048 0040F048 8FB00014 */  lw          $s0, 0x14($sp)
/* 00F04C 0040F04C 03E00008 */  jr          $ra
/* 00F050 0040F050 27BD0028 */   addiu      $sp, $sp, 0x28

glabel xmalloc
# _gp_disp: 0xFBFB978
.set noreorder; .cpload $t9; # .set reorder
/* 00EEB4 0040EEB4 8F99811C */  lw          $t9, %call16(malloc)($gp)
/* 00EEB8 0040EEB8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00EEBC 0040EEBC AFBF001C */  sw          $ra, 0x1C($sp)
/* 00EEC0 0040EEC0 0320F809 */  jalr        $t9
/* 00EEC4 0040EEC4 AFBC0018 */   sw         $gp, 0x18($sp)
/* 00EEC8 0040EEC8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EECC 0040EECC 10400003 */  beqz        $v0, .L0040EEDC
/* 00EED0 0040EED0 00000000 */   nop
/* 00EED4 0040EED4 10000008 */  b           .L0040EEF8
/* 00EED8 0040EED8 8FBF001C */   lw         $ra, 0x1C($sp)
.L0040EEDC:
/* 00EEDC 0040EEDC 8F998244 */  lw          $t9, %call16(memory_full)($gp)
/* 00EEE0 0040EEE0 00000000 */  nop
/* 00EEE4 0040EEE4 0320F809 */  jalr        $t9
/* 00EEE8 0040EEE8 00000000 */   nop
/* 00EEEC 0040EEEC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EEF0 0040EEF0 00000000 */  nop
/* 00EEF4 0040EEF4 8FBF001C */  lw          $ra, 0x1C($sp)
.L0040EEF8:
/* 00EEF8 0040EEF8 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00EEFC 0040EEFC 03E00008 */  jr          $ra
/* 00EF00 0040EF00 00000000 */   nop




)"");


void memory_full(void) {
    fatal("Memory exhausted.");
}

