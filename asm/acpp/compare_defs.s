/* Generated by spimdisasm 1.9.1 */

glabel compare_defs # 20
# _gp_disp: 0xFC01E54
.set noreorder; .cpload $t9; # .set reorder
/* 0089D8 004089D8 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 0089DC 004089DC AFBF003C */  sw          $ra, 0x3C($sp)
/* 0089E0 004089E0 AFBC0038 */  sw          $gp, 0x38($sp)
/* 0089E4 004089E4 AFB50034 */  sw          $s5, 0x34($sp)
/* 0089E8 004089E8 AFB40030 */  sw          $s4, 0x30($sp)
/* 0089EC 004089EC AFB3002C */  sw          $s3, 0x2C($sp)
/* 0089F0 004089F0 AFB20028 */  sw          $s2, 0x28($sp)
/* 0089F4 004089F4 AFB10024 */  sw          $s1, 0x24($sp)
/* 0089F8 004089F8 AFB00020 */  sw          $s0, 0x20($sp)
/* 0089FC 004089FC 8C8F0000 */  lw          $t7, 0x0($a0)
/* 008A00 00408A00 8CAE0000 */  lw          $t6, 0x0($a1)
/* 008A04 00408A04 8C930008 */  lw          $s3, 0x8($a0)
/* 008A08 00408A08 8CB40008 */  lw          $s4, 0x8($a1)
/* 008A0C 00408A0C 00803025 */  move        $a2, $a0
/* 008A10 00408A10 00A03825 */  move        $a3, $a1
/* 008A14 00408A14 11CF0003 */  beq         $t6, $t7, .L00408A24
/* 008A18 00408A18 24150001 */   addiu      $s5, $zero, 0x1
/* 008A1C 00408A1C 10000068 */  b           .L00408BC0
/* 008A20 00408A20 24020001 */   addiu      $v0, $zero, 0x1
.L00408A24:
/* 008A24 00408A24 8F9980B8 */  lw          $t9, %call16(strcmp)($gp)
/* 008A28 00408A28 8CC40010 */  lw          $a0, 0x10($a2)
/* 008A2C 00408A2C 8CE50010 */  lw          $a1, 0x10($a3)
/* 008A30 00408A30 AFA70044 */  sw          $a3, 0x44($sp)
/* 008A34 00408A34 0320F809 */  jalr        $t9
/* 008A38 00408A38 AFA60040 */   sw         $a2, 0x40($sp)
/* 008A3C 00408A3C 8FBC0038 */  lw          $gp, 0x38($sp)
/* 008A40 00408A40 10400004 */  beqz        $v0, .L00408A54
/* 008A44 00408A44 8FB80040 */   lw         $t8, 0x40($sp)
/* 008A48 00408A48 1000005D */  b           .L00408BC0
/* 008A4C 00408A4C 24020001 */   addiu      $v0, $zero, 0x1
/* 008A50 00408A50 8FB80040 */  lw          $t8, 0x40($sp)
.L00408A54:
/* 008A54 00408A54 8FB90044 */  lw          $t9, 0x44($sp)
/* 008A58 00408A58 8F11000C */  lw          $s1, 0xC($t8)
/* 008A5C 00408A5C 8F32000C */  lw          $s2, 0xC($t9)
/* 008A60 00408A60 1220003C */  beqz        $s1, .L00408B54
/* 008A64 00408A64 00000000 */   nop
/* 008A68 00408A68 1240003A */  beqz        $s2, .L00408B54
/* 008A6C 00408A6C 00000000 */   nop
.L00408A70:
/* 008A70 00408A70 8E420008 */  lw          $v0, 0x8($s2)
/* 008A74 00408A74 8E300008 */  lw          $s0, 0x8($s1)
/* 008A78 00408A78 02602025 */  move        $a0, $s3
/* 008A7C 00408A7C 1450000B */  bne         $v0, $s0, .L00408AAC
/* 008A80 00408A80 00000000 */   nop
/* 008A84 00408A84 8F998090 */  lw          $t9, %call16(strncmp)($gp)
/* 008A88 00408A88 02802825 */  move        $a1, $s4
/* 008A8C 00408A8C 0320F809 */  jalr        $t9
/* 008A90 00408A90 02003025 */   move       $a2, $s0
/* 008A94 00408A94 8FBC0038 */  lw          $gp, 0x38($sp)
/* 008A98 00408A98 1040000F */  beqz        $v0, .L00408AD8
/* 008A9C 00408A9C 00000000 */   nop
/* 008AA0 00408AA0 8E420008 */  lw          $v0, 0x8($s2)
/* 008AA4 00408AA4 8E300008 */  lw          $s0, 0x8($s1)
/* 008AA8 00408AA8 00000000 */  nop
.L00408AAC:
/* 008AAC 00408AAC 8F998180 */  lw          $t9, %call16(comp_def_part)($gp)
/* 008AB0 00408AB0 02A02025 */  move        $a0, $s5
/* 008AB4 00408AB4 02602825 */  move        $a1, $s3
/* 008AB8 00408AB8 02003025 */  move        $a2, $s0
/* 008ABC 00408ABC 02803825 */  move        $a3, $s4
/* 008AC0 00408AC0 AFA20010 */  sw          $v0, 0x10($sp)
/* 008AC4 00408AC4 0320F809 */  jalr        $t9
/* 008AC8 00408AC8 AFA00014 */   sw         $zero, 0x14($sp)
/* 008ACC 00408ACC 8FBC0038 */  lw          $gp, 0x38($sp)
/* 008AD0 00408AD0 14400015 */  bnez        $v0, .L00408B28
/* 008AD4 00408AD4 00000000 */   nop
.L00408AD8:
/* 008AD8 00408AD8 8E48000C */  lw          $t0, 0xC($s2)
/* 008ADC 00408ADC 8E29000C */  lw          $t1, 0xC($s1)
/* 008AE0 00408AE0 0000A825 */  move        $s5, $zero
/* 008AE4 00408AE4 15090010 */  bne         $t0, $t1, .L00408B28
/* 008AE8 00408AE8 00000000 */   nop
/* 008AEC 00408AEC 924A0004 */  lbu         $t2, 0x4($s2)
/* 008AF0 00408AF0 922B0004 */  lbu         $t3, 0x4($s1)
/* 008AF4 00408AF4 00000000 */  nop
/* 008AF8 00408AF8 154B000B */  bne         $t2, $t3, .L00408B28
/* 008AFC 00408AFC 00000000 */   nop
/* 008B00 00408B00 924C0005 */  lbu         $t4, 0x5($s2)
/* 008B04 00408B04 922D0005 */  lbu         $t5, 0x5($s1)
/* 008B08 00408B08 00000000 */  nop
/* 008B0C 00408B0C 158D0006 */  bne         $t4, $t5, .L00408B28
/* 008B10 00408B10 00000000 */   nop
/* 008B14 00408B14 924E0006 */  lbu         $t6, 0x6($s2)
/* 008B18 00408B18 922F0006 */  lbu         $t7, 0x6($s1)
/* 008B1C 00408B1C 00000000 */  nop
/* 008B20 00408B20 11CF0003 */  beq         $t6, $t7, .L00408B30
/* 008B24 00408B24 00000000 */   nop
.L00408B28:
/* 008B28 00408B28 10000025 */  b           .L00408BC0
/* 008B2C 00408B2C 24020001 */   addiu      $v0, $zero, 0x1
.L00408B30:
/* 008B30 00408B30 8E380008 */  lw          $t8, 0x8($s1)
/* 008B34 00408B34 8E590008 */  lw          $t9, 0x8($s2)
/* 008B38 00408B38 8E310000 */  lw          $s1, 0x0($s1)
/* 008B3C 00408B3C 8E520000 */  lw          $s2, 0x0($s2)
/* 008B40 00408B40 02789821 */  addu        $s3, $s3, $t8
/* 008B44 00408B44 12200003 */  beqz        $s1, .L00408B54
/* 008B48 00408B48 0299A021 */   addu       $s4, $s4, $t9
/* 008B4C 00408B4C 1640FFC8 */  bnez        $s2, .L00408A70
/* 008B50 00408B50 00000000 */   nop
.L00408B54:
/* 008B54 00408B54 12320003 */  beq         $s1, $s2, .L00408B64
/* 008B58 00408B58 02A02025 */   move       $a0, $s5
/* 008B5C 00408B5C 10000018 */  b           .L00408BC0
/* 008B60 00408B60 24020001 */   addiu      $v0, $zero, 0x1
.L00408B64:
/* 008B64 00408B64 8FA80040 */  lw          $t0, 0x40($sp)
/* 008B68 00408B68 8FAC0044 */  lw          $t4, 0x44($sp)
/* 008B6C 00408B6C 8D090004 */  lw          $t1, 0x4($t0)
/* 008B70 00408B70 8D8E0008 */  lw          $t6, 0x8($t4)
/* 008B74 00408B74 8D0A0008 */  lw          $t2, 0x8($t0)
/* 008B78 00408B78 8D8D0004 */  lw          $t5, 0x4($t4)
/* 008B7C 00408B7C 24190001 */  addiu       $t9, $zero, 0x1
/* 008B80 00408B80 AFB90014 */  sw          $t9, 0x14($sp)
/* 008B84 00408B84 8F998180 */  lw          $t9, %call16(comp_def_part)($gp)
/* 008B88 00408B88 028E7823 */  subu        $t7, $s4, $t6
/* 008B8C 00408B8C 026A5823 */  subu        $t3, $s3, $t2
/* 008B90 00408B90 01AFC023 */  subu        $t8, $t5, $t7
/* 008B94 00408B94 AFB80010 */  sw          $t8, 0x10($sp)
/* 008B98 00408B98 02602825 */  move        $a1, $s3
/* 008B9C 00408B9C 02803825 */  move        $a3, $s4
/* 008BA0 00408BA0 0320F809 */  jalr        $t9
/* 008BA4 00408BA4 012B3023 */   subu       $a2, $t1, $t3
/* 008BA8 00408BA8 8FBC0038 */  lw          $gp, 0x38($sp)
/* 008BAC 00408BAC 10400004 */  beqz        $v0, .L00408BC0
/* 008BB0 00408BB0 00001025 */   move       $v0, $zero
/* 008BB4 00408BB4 10000002 */  b           .L00408BC0
/* 008BB8 00408BB8 24020001 */   addiu      $v0, $zero, 0x1
/* 008BBC 00408BBC 00001025 */  move        $v0, $zero
.L00408BC0:
/* 008BC0 00408BC0 8FBF003C */  lw          $ra, 0x3C($sp)
/* 008BC4 00408BC4 8FB00020 */  lw          $s0, 0x20($sp)
/* 008BC8 00408BC8 8FB10024 */  lw          $s1, 0x24($sp)
/* 008BCC 00408BCC 8FB20028 */  lw          $s2, 0x28($sp)
/* 008BD0 00408BD0 8FB3002C */  lw          $s3, 0x2C($sp)
/* 008BD4 00408BD4 8FB40030 */  lw          $s4, 0x30($sp)
/* 008BD8 00408BD8 8FB50034 */  lw          $s5, 0x34($sp)
/* 008BDC 00408BDC 03E00008 */  jr          $ra
/* 008BE0 00408BE0 27BD0040 */   addiu      $sp, $sp, 0x40
