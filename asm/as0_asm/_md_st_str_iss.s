/* Generated by spimdisasm 1.10.3 */

glabel _md_st_str_iss # 170
# _gp_disp: 0xFBFC3B4
.set noreorder; .cpload $t9; # .set reorder
/* 014718 00414718 8F8E83CC */  lw          $t6, %got(st_pchdr)($gp)
/* 01471C 0041471C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014720 00414720 8DCE0000 */  lw          $t6, 0x0($t6)
/* 014724 00414724 AFBF001C */  sw          $ra, 0x1C($sp)
/* 014728 00414728 AFBC0018 */  sw          $gp, 0x18($sp)
/* 01472C 0041472C AFA40020 */  sw          $a0, 0x20($sp)
/* 014730 00414730 8DCF0004 */  lw          $t7, 0x4($t6)
/* 014734 00414734 00000000 */  nop
/* 014738 00414738 15E00008 */  bnez        $t7, .L0041475C
/* 01473C 0041473C 00000000 */   nop
/* 014740 00414740 8F848060 */  lw          $a0, %got(D_10001310)($gp)
/* 014744 00414744 8F998208 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 014748 00414748 24841310 */  addiu       $a0, $a0, %lo(D_10001310)
/* 01474C 0041474C 0320F809 */  jalr        $t9
/* 014750 00414750 00000000 */   nop
/* 014754 00414754 8FBC0018 */  lw          $gp, 0x18($sp)
/* 014758 00414758 00000000 */  nop
.L0041475C:
/* 01475C 0041475C 8F8383D0 */  lw          $v1, %got(pcfdcur)($gp)
/* 014760 00414760 00000000 */  nop
/* 014764 00414764 8C630000 */  lw          $v1, 0x0($v1)
/* 014768 00414768 00000000 */  nop
/* 01476C 0041476C 1460000C */  bnez        $v1, .L004147A0
/* 014770 00414770 00000000 */   nop
/* 014774 00414774 8F848060 */  lw          $a0, %got(D_1000134C)($gp)
/* 014778 00414778 8F998208 */  lw          $t9, %call16(_md_st_internal)($gp)
/* 01477C 0041477C 2484134C */  addiu       $a0, $a0, %lo(D_1000134C)
/* 014780 00414780 0320F809 */  jalr        $t9
/* 014784 00414784 00000000 */   nop
/* 014788 00414788 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01478C 0041478C 00000000 */  nop
/* 014790 00414790 8F8383D0 */  lw          $v1, %got(pcfdcur)($gp)
/* 014794 00414794 00000000 */  nop
/* 014798 00414798 8C630000 */  lw          $v1, 0x0($v1)
/* 01479C 0041479C 00000000 */  nop
.L004147A0:
/* 0147A0 004147A0 8C780000 */  lw          $t8, 0x0($v1)
/* 0147A4 004147A4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0147A8 004147A8 8F02000C */  lw          $v0, 0xC($t8)
/* 0147AC 004147AC 00000000 */  nop
/* 0147B0 004147B0 10400009 */  beqz        $v0, .L004147D8
/* 0147B4 004147B4 00000000 */   nop
/* 0147B8 004147B8 8FB90020 */  lw          $t9, 0x20($sp)
/* 0147BC 004147BC 8FA90020 */  lw          $t1, 0x20($sp)
/* 0147C0 004147C0 0322082A */  slt         $at, $t9, $v0
/* 0147C4 004147C4 10200005 */  beqz        $at, .L004147DC
/* 0147C8 004147C8 00001025 */   move       $v0, $zero
/* 0147CC 004147CC 8C680014 */  lw          $t0, 0x14($v1)
/* 0147D0 004147D0 10000002 */  b           .L004147DC
/* 0147D4 004147D4 01091021 */   addu       $v0, $t0, $t1
.L004147D8:
/* 0147D8 004147D8 00001025 */  move        $v0, $zero
.L004147DC:
/* 0147DC 004147DC 03E00008 */  jr          $ra
/* 0147E0 004147E0 27BD0020 */   addiu      $sp, $sp, 0x20