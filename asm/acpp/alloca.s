/* Generated by spimdisasm 1.9.1 */

glabel alloca # 5
# _gp_disp: 0xFC07980
.set noreorder; .cpload $t9; # .set reorder
/* 002EAC 00402EAC 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 002EB0 00402EB0 AFB30024 */  sw          $s3, 0x24($sp)
/* 002EB4 00402EB4 8F93805C */  lw          $s3, %got(B_10002BD0)($gp)
/* 002EB8 00402EB8 AFBF002C */  sw          $ra, 0x2C($sp)
/* 002EBC 00402EBC 26732BD0 */  addiu       $s3, $s3, %lo(B_10002BD0)
/* 002EC0 00402EC0 8E6E0000 */  lw          $t6, 0x0($s3)
/* 002EC4 00402EC4 AFBC0028 */  sw          $gp, 0x28($sp)
/* 002EC8 00402EC8 AFB20020 */  sw          $s2, 0x20($sp)
/* 002ECC 00402ECC AFB1001C */  sw          $s1, 0x1C($sp)
/* 002ED0 00402ED0 AFB00018 */  sw          $s0, 0x18($sp)
/* 002ED4 00402ED4 15C00008 */  bnez        $t6, .L00402EF8
/* 002ED8 00402ED8 AFA40048 */   sw         $a0, 0x48($sp)
/* 002EDC 00402EDC 8F998014 */  lw          $t9, %got(func_00402E20)($gp)
/* 002EE0 00402EE0 00000000 */  nop
/* 002EE4 00402EE4 27392E20 */  addiu       $t9, $t9, %lo(func_00402E20)
/* 002EE8 00402EE8 0320F809 */  jalr        $t9
/* 002EEC 00402EEC 00000000 */   nop
/* 002EF0 00402EF0 8FBC0028 */  lw          $gp, 0x28($sp)
/* 002EF4 00402EF4 00000000 */  nop
.L00402EF8:
/* 002EF8 00402EF8 8F90805C */  lw          $s0, %got(D_10000018)($gp)
/* 002EFC 00402EFC 27B20047 */  addiu       $s2, $sp, 0x47
/* 002F00 00402F00 8E100018 */  lw          $s0, %lo(D_10000018)($s0)
/* 002F04 00402F04 00000000 */  nop
/* 002F08 00402F08 12000018 */  beqz        $s0, .L00402F6C
/* 002F0C 00402F0C 00000000 */   nop
.L00402F10:
/* 002F10 00402F10 8E620000 */  lw          $v0, 0x0($s3)
/* 002F14 00402F14 00000000 */  nop
/* 002F18 00402F18 18400006 */  blez        $v0, .L00402F34
/* 002F1C 00402F1C 00000000 */   nop
/* 002F20 00402F20 8E0F0004 */  lw          $t7, 0x4($s0)
/* 002F24 00402F24 00000000 */  nop
/* 002F28 00402F28 024F082B */  sltu        $at, $s2, $t7
/* 002F2C 00402F2C 14200008 */  bnez        $at, .L00402F50
/* 002F30 00402F30 00000000 */   nop
.L00402F34:
/* 002F34 00402F34 0441000D */  bgez        $v0, .L00402F6C
/* 002F38 00402F38 00000000 */   nop
/* 002F3C 00402F3C 8E180004 */  lw          $t8, 0x4($s0)
/* 002F40 00402F40 00000000 */  nop
/* 002F44 00402F44 0312082B */  sltu        $at, $t8, $s2
/* 002F48 00402F48 10200008 */  beqz        $at, .L00402F6C
/* 002F4C 00402F4C 00000000 */   nop
.L00402F50:
/* 002F50 00402F50 8F99808C */  lw          $t9, %call16(free)($gp)
/* 002F54 00402F54 8E110000 */  lw          $s1, 0x0($s0)
/* 002F58 00402F58 0320F809 */  jalr        $t9
/* 002F5C 00402F5C 02002025 */   move       $a0, $s0
/* 002F60 00402F60 8FBC0028 */  lw          $gp, 0x28($sp)
/* 002F64 00402F64 1620FFEA */  bnez        $s1, .L00402F10
/* 002F68 00402F68 02208025 */   move       $s0, $s1
.L00402F6C:
/* 002F6C 00402F6C 8F81805C */  lw          $at, %got(D_10000018)($gp)
/* 002F70 00402F70 8FB90048 */  lw          $t9, 0x48($sp)
/* 002F74 00402F74 27B20047 */  addiu       $s2, $sp, 0x47
/* 002F78 00402F78 17200003 */  bnez        $t9, .L00402F88
/* 002F7C 00402F7C AC300018 */   sw         $s0, %lo(D_10000018)($at)
/* 002F80 00402F80 1000000F */  b           .L00402FC0
/* 002F84 00402F84 00001025 */   move       $v0, $zero
.L00402F88:
/* 002F88 00402F88 8FA40048 */  lw          $a0, 0x48($sp)
/* 002F8C 00402F8C 8F998248 */  lw          $t9, %call16(xmalloc)($gp)
/* 002F90 00402F90 24840008 */  addiu       $a0, $a0, 0x8
/* 002F94 00402F94 0320F809 */  jalr        $t9
/* 002F98 00402F98 00000000 */   nop
/* 002F9C 00402F9C 8FBC0028 */  lw          $gp, 0x28($sp)
/* 002FA0 00402FA0 00000000 */  nop
/* 002FA4 00402FA4 8F88805C */  lw          $t0, %got(D_10000018)($gp)
/* 002FA8 00402FA8 8F81805C */  lw          $at, %got(D_10000018)($gp)
/* 002FAC 00402FAC 8D080018 */  lw          $t0, %lo(D_10000018)($t0)
/* 002FB0 00402FB0 AC520004 */  sw          $s2, 0x4($v0)
/* 002FB4 00402FB4 AC480000 */  sw          $t0, 0x0($v0)
/* 002FB8 00402FB8 AC220018 */  sw          $v0, %lo(D_10000018)($at)
/* 002FBC 00402FBC 24420008 */  addiu       $v0, $v0, 0x8
.L00402FC0:
/* 002FC0 00402FC0 8FBF002C */  lw          $ra, 0x2C($sp)
/* 002FC4 00402FC4 8FB00018 */  lw          $s0, 0x18($sp)
/* 002FC8 00402FC8 8FB1001C */  lw          $s1, 0x1C($sp)
/* 002FCC 00402FCC 8FB20020 */  lw          $s2, 0x20($sp)
/* 002FD0 00402FD0 8FB30024 */  lw          $s3, 0x24($sp)
/* 002FD4 00402FD4 03E00008 */  jr          $ra
/* 002FD8 00402FD8 27BD0048 */   addiu      $sp, $sp, 0x48
/* 002FDC 00402FDC 00000000 */  nop
/* 002FE0 00402FE0 00000000 */  nop