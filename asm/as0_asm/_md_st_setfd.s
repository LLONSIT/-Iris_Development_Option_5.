/* Generated by spimdisasm 1.10.3 */

glabel _md_st_setfd # 175
# _gp_disp: 0xFBFC0D8
.set noreorder; .cpload $t9; # .set reorder
/* 0149F4 004149F4 8F8E83CC */  lw          $t6, %got(st_pchdr)($gp)
/* 0149F8 004149F8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0149FC 004149FC 8DCE0000 */  lw          $t6, 0x0($t6)
/* 014A00 00414A00 AFBF001C */  sw          $ra, 0x1C($sp)
/* 014A04 00414A04 AFBC0018 */  sw          $gp, 0x18($sp)
/* 014A08 00414A08 AFA40020 */  sw          $a0, 0x20($sp)
/* 014A0C 00414A0C 8DC20004 */  lw          $v0, 0x4($t6)
/* 014A10 00414A10 00000000 */  nop
/* 014A14 00414A14 1440000F */  bnez        $v0, .L00414A54
/* 014A18 00414A18 8FB80020 */   lw         $t8, 0x20($sp)
/* 014A1C 00414A1C 8F848060 */  lw          $a0, %got(D_10001310)($gp)
/* 014A20 00414A20 8F998208 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 014A24 00414A24 24841310 */  addiu       $a0, $a0, %lo(D_10001310)
/* 014A28 00414A28 0320F809 */  jalr        $t9
/* 014A2C 00414A2C 00000000 */   nop
/* 014A30 00414A30 8FBC0018 */  lw          $gp, 0x18($sp)
/* 014A34 00414A34 00000000 */  nop
/* 014A38 00414A38 8F8F83CC */  lw          $t7, %got(st_pchdr)($gp)
/* 014A3C 00414A3C 00000000 */  nop
/* 014A40 00414A40 8DEF0000 */  lw          $t7, 0x0($t7)
/* 014A44 00414A44 00000000 */  nop
/* 014A48 00414A48 8DE20004 */  lw          $v0, 0x4($t7)
/* 014A4C 00414A4C 00000000 */  nop
/* 014A50 00414A50 8FB80020 */  lw          $t8, 0x20($sp)
.L00414A54:
/* 014A54 00414A54 8F8183D0 */  lw          $at, %got(pcfdcur)($gp)
/* 014A58 00414A58 8FBF001C */  lw          $ra, 0x1C($sp)
/* 014A5C 00414A5C 0018C980 */  sll         $t9, $t8, 6
/* 014A60 00414A60 00594021 */  addu        $t0, $v0, $t9
/* 014A64 00414A64 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014A68 00414A68 03E00008 */  jr          $ra
/* 014A6C 00414A6C AC280000 */   sw         $t0, 0x0($at)
/* 014A70 00414A70 00000000 */  nop