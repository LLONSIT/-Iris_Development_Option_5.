.section .rodata
glabel STR_10008084
/* 027084 10008084 */ .asciz "st_pext_iext: index out of range (%d)\n"
                      .balign 4


.section .text
/* Generated by spimdisasm 1.10.3 */

glabel st_pext_iext # 157
# _gp_disp: 0xFBFCFC0
.set noreorder; .cpload $t9; # .set reorder
/* 013B0C 00413B0C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 013B10 00413B10 AFBF001C */  sw          $ra, 0x1C($sp)
/* 013B14 00413B14 AFBC0018 */  sw          $gp, 0x18($sp)
/* 013B18 00413B18 0480000A */  bltz        $a0, .L00413B44
/* 013B1C 00413B1C 00802825 */   move       $a1, $a0
/* 013B20 00413B20 8F8383CC */  lw          $v1, %got(st_pchdr)($gp)
/* 013B24 00413B24 00000000 */  nop
/* 013B28 00413B28 8C630000 */  lw          $v1, 0x0($v1)
/* 013B2C 00413B2C 00000000 */  nop
/* 013B30 00413B30 8C6E001C */  lw          $t6, 0x1C($v1)
/* 013B34 00413B34 00000000 */  nop
/* 013B38 00413B38 01C4082A */  slt         $at, $t6, $a0
/* 013B3C 00413B3C 1020000C */  beqz        $at, .L00413B70
/* 013B40 00413B40 00000000 */   nop
.L00413B44:
/* 013B44 00413B44 8F848054 */  lw          $a0, %got(STR_10008084)($gp)
/* 013B48 00413B48 8F998208 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 013B4C 00413B4C AFA50020 */  sw          $a1, 0x20($sp)
/* 013B50 00413B50 0320F809 */  jalr        $t9
/* 013B54 00413B54 24848084 */   addiu      $a0, $a0, %lo(STR_10008084)
/* 013B58 00413B58 8FBC0018 */  lw          $gp, 0x18($sp)
/* 013B5C 00413B5C 8FA50020 */  lw          $a1, 0x20($sp)
/* 013B60 00413B60 8F8383CC */  lw          $v1, %got(st_pchdr)($gp)
/* 013B64 00413B64 00000000 */  nop
/* 013B68 00413B68 8C630000 */  lw          $v1, 0x0($v1)
/* 013B6C 00413B6C 00000000 */  nop
.L00413B70:
/* 013B70 00413B70 8C6F0018 */  lw          $t7, 0x18($v1)
/* 013B74 00413B74 8FBF001C */  lw          $ra, 0x1C($sp)
/* 013B78 00413B78 0005C100 */  sll         $t8, $a1, 4
/* 013B7C 00413B7C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 013B80 00413B80 03E00008 */  jr          $ra
/* 013B84 00413B84 01F81021 */   addu       $v0, $t7, $t8