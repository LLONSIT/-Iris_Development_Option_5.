/* Generated by spimdisasm 1.10.3 */

glabel alloc_mark # 279
# _gp_disp: 0xFBF21D8
.set noreorder; .cpload $t9; # .set reorder
/* 01E8F4 0041E8F4 27BDFFC0 */  addiu       $sp, $sp, -0x40
/* 01E8F8 0041E8F8 8F9982CC */  lw          $t9, %call16(alloc_scb)($gp)
/* 01E8FC 0041E8FC AFBF001C */  sw          $ra, 0x1C($sp)
/* 01E900 0041E900 AFA40040 */  sw          $a0, 0x40($sp)
/* 01E904 0041E904 AFBC0018 */  sw          $gp, 0x18($sp)
/* 01E908 0041E908 27A40034 */  addiu       $a0, $sp, 0x34
/* 01E90C 0041E90C 0320F809 */  jalr        $t9
/* 01E910 0041E910 3C050001 */   lui        $a1, (0x10000 >> 16)
/* 01E914 0041E914 8FA40034 */  lw          $a0, 0x34($sp)
/* 01E918 0041E918 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01E91C 0041E91C 8FA90040 */  lw          $t1, 0x40($sp)
/* 01E920 0041E920 14800003 */  bnez        $a0, .L0041E930
/* 01E924 0041E924 2401FFFC */   addiu      $at, $zero, -0x4
/* 01E928 0041E928 10000030 */  b           .L0041E9EC
/* 01E92C 0041E92C 00001025 */   move       $v0, $zero
.L0041E930:
/* 01E930 0041E930 8FAE0034 */  lw          $t6, 0x34($sp)
/* 01E934 0041E934 8D230000 */  lw          $v1, 0x0($t1)
/* 01E938 0041E938 01C04025 */  move        $t0, $t6
/* 01E93C 0041E93C 1060000D */  beqz        $v1, .L0041E974
/* 01E940 0041E940 8FAF0034 */   lw         $t7, 0x34($sp)
/* 01E944 0041E944 8C620004 */  lw          $v0, 0x4($v1)
/* 01E948 0041E948 01C02025 */  move        $a0, $t6
/* 01E94C 0041E94C 10400006 */  beqz        $v0, .L0041E968
/* 01E950 0041E950 00000000 */   nop
.L0041E954:
/* 01E954 0041E954 00401825 */  move        $v1, $v0
/* 01E958 0041E958 8C420004 */  lw          $v0, 0x4($v0)
/* 01E95C 0041E95C 00000000 */  nop
/* 01E960 0041E960 1440FFFC */  bnez        $v0, .L0041E954
/* 01E964 0041E964 00000000 */   nop
.L0041E968:
/* 01E968 0041E968 AC640004 */  sw          $a0, 0x4($v1)
/* 01E96C 0041E96C AC830000 */  sw          $v1, 0x0($a0)
/* 01E970 0041E970 8FAF0034 */  lw          $t7, 0x34($sp)
.L0041E974:
/* 01E974 0041E974 00000000 */  nop
/* 01E978 0041E978 AD2F0000 */  sw          $t7, 0x0($t1)
/* 01E97C 0041E97C 8FB80034 */  lw          $t8, 0x34($sp)
/* 01E980 0041E980 00000000 */  nop
/* 01E984 0041E984 8F19000C */  lw          $t9, 0xC($t8)
/* 01E988 0041E988 00000000 */  nop
/* 01E98C 0041E98C 07210002 */  bgez        $t9, .L0041E998
/* 01E990 0041E990 03205025 */   move       $t2, $t9
/* 01E994 0041E994 00195023 */  negu        $t2, $t9
.L0041E998:
/* 01E998 0041E998 AF0A000C */  sw          $t2, 0xC($t8)
/* 01E99C 0041E99C 8FAB0034 */  lw          $t3, 0x34($sp)
/* 01E9A0 0041E9A0 240F0002 */  addiu       $t7, $zero, 0x2
/* 01E9A4 0041E9A4 8D630008 */  lw          $v1, 0x8($t3)
/* 01E9A8 0041E9A8 01001025 */  move        $v0, $t0
/* 01E9AC 0041E9AC 8C670004 */  lw          $a3, 0x4($v1)
/* 01E9B0 0041E9B0 24640010 */  addiu       $a0, $v1, 0x10
/* 01E9B4 0041E9B4 00E16024 */  and         $t4, $a3, $at
/* 01E9B8 0041E9B8 006C2821 */  addu        $a1, $v1, $t4
/* 01E9BC 0041E9BC 00A33023 */  subu        $a2, $a1, $v1
/* 01E9C0 0041E9C0 24CDFFF0 */  addiu       $t5, $a2, -0x10
/* 01E9C4 0041E9C4 AC64000C */  sw          $a0, 0xC($v1)
/* 01E9C8 0041E9C8 AC640008 */  sw          $a0, 0x8($v1)
/* 01E9CC 0041E9CC AC63001C */  sw          $v1, 0x1C($v1)
/* 01E9D0 0041E9D0 AC630018 */  sw          $v1, 0x18($v1)
/* 01E9D4 0041E9D4 ACAD0000 */  sw          $t5, 0x0($a1)
/* 01E9D8 0041E9D8 8FB90034 */  lw          $t9, 0x34($sp)
/* 01E9DC 0041E9DC 24CEFFF2 */  addiu       $t6, $a2, -0xE
/* 01E9E0 0041E9E0 AC6E0014 */  sw          $t6, 0x14($v1)
/* 01E9E4 0041E9E4 AC6F0004 */  sw          $t7, 0x4($v1)
/* 01E9E8 0041E9E8 AF240008 */  sw          $a0, 0x8($t9)
.L0041E9EC:
/* 01E9EC 0041E9EC 8FBF001C */  lw          $ra, 0x1C($sp)
/* 01E9F0 0041E9F0 27BD0040 */  addiu       $sp, $sp, 0x40
/* 01E9F4 0041E9F4 03E00008 */  jr          $ra
/* 01E9F8 0041E9F8 00000000 */   nop