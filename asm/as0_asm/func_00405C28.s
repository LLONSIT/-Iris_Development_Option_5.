/* Generated by spimdisasm 1.10.3 */

glabel func_00405C28 # 20
# _gp_disp: 0xFC0AE98
.set noreorder; .cpload $t9; # .set reorder
/* 005C34 00405C34 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 005C38 00405C38 AFB30024 */  sw          $s3, 0x24($sp)
/* 005C3C 00405C3C AFB20020 */  sw          $s2, 0x20($sp)
/* 005C40 00405C40 AFB1001C */  sw          $s1, 0x1C($sp)
/* 005C44 00405C44 AFB00018 */  sw          $s0, 0x18($sp)
/* 005C48 00405C48 28A10011 */  slti        $at, $a1, 0x11
/* 005C4C 00405C4C 00A08025 */  move        $s0, $a1
/* 005C50 00405C50 00808825 */  move        $s1, $a0
/* 005C54 00405C54 00C09025 */  move        $s2, $a2
/* 005C58 00405C58 00E09825 */  move        $s3, $a3
/* 005C5C 00405C5C AFBF002C */  sw          $ra, 0x2C($sp)
/* 005C60 00405C60 14200002 */  bnez        $at, .L00405C6C
/* 005C64 00405C64 AFBC0028 */   sw         $gp, 0x28($sp)
/* 005C68 00405C68 24100010 */  addiu       $s0, $zero, 0x10
.L00405C6C:
/* 005C6C 00405C6C 1A000021 */  blez        $s0, .L00405CF4
/* 005C70 00405C70 00002025 */   move       $a0, $zero
/* 005C74 00405C74 32060003 */  andi        $a2, $s0, 0x3
/* 005C78 00405C78 10C0000C */  beqz        $a2, .L00405CAC
/* 005C7C 00405C7C 00C02825 */   move       $a1, $a2
/* 005C80 00405C80 00107023 */  negu        $t6, $s0
/* 005C84 00405C84 27B80048 */  addiu       $t8, $sp, 0x48
/* 005C88 00405C88 01D81021 */  addu        $v0, $t6, $t8
/* 005C8C 00405C8C 02201821 */  addu        $v1, $s1, $zero
.L00405C90:
/* 005C90 00405C90 90790000 */  lbu         $t9, 0x0($v1)
/* 005C94 00405C94 24840001 */  addiu       $a0, $a0, 0x1
/* 005C98 00405C98 24420001 */  addiu       $v0, $v0, 0x1
/* 005C9C 00405C9C 24630001 */  addiu       $v1, $v1, 0x1
/* 005CA0 00405CA0 14A4FFFB */  bne         $a1, $a0, .L00405C90
/* 005CA4 00405CA4 A059000F */   sb         $t9, 0xF($v0)
/* 005CA8 00405CA8 10900011 */  beq         $a0, $s0, .L00405CF0
.L00405CAC:
/* 005CAC 00405CAC 00104023 */   negu       $t0, $s0
/* 005CB0 00405CB0 00884821 */  addu        $t1, $a0, $t0
/* 005CB4 00405CB4 27AA0048 */  addiu       $t2, $sp, 0x48
/* 005CB8 00405CB8 012A1021 */  addu        $v0, $t1, $t2
/* 005CBC 00405CBC 02241821 */  addu        $v1, $s1, $a0
.L00405CC0:
/* 005CC0 00405CC0 906B0000 */  lbu         $t3, 0x0($v1)
/* 005CC4 00405CC4 24840004 */  addiu       $a0, $a0, 0x4
/* 005CC8 00405CC8 A04B0010 */  sb          $t3, 0x10($v0)
/* 005CCC 00405CCC 906C0001 */  lbu         $t4, 0x1($v1)
/* 005CD0 00405CD0 24420004 */  addiu       $v0, $v0, 0x4
/* 005CD4 00405CD4 A04C000D */  sb          $t4, 0xD($v0)
/* 005CD8 00405CD8 906D0002 */  lbu         $t5, 0x2($v1)
/* 005CDC 00405CDC 24630004 */  addiu       $v1, $v1, 0x4
/* 005CE0 00405CE0 A04D000E */  sb          $t5, 0xE($v0)
/* 005CE4 00405CE4 906EFFFF */  lbu         $t6, -0x1($v1)
/* 005CE8 00405CE8 1490FFF5 */  bne         $a0, $s0, .L00405CC0
/* 005CEC 00405CEC A04E000F */   sb         $t6, 0xF($v0)
.L00405CF0:
/* 005CF0 00405CF0 00002025 */  move        $a0, $zero
.L00405CF4:
/* 005CF4 00405CF4 240F0010 */  addiu       $t7, $zero, 0x10
/* 005CF8 00405CF8 01F02823 */  subu        $a1, $t7, $s0
/* 005CFC 00405CFC 18A00016 */  blez        $a1, .L00405D58
/* 005D00 00405D00 27B10050 */   addiu      $s1, $sp, 0x50
/* 005D04 00405D04 30A20003 */  andi        $v0, $a1, 0x3
/* 005D08 00405D08 10400009 */  beqz        $v0, .L00405D30
/* 005D0C 00405D0C 00401825 */   move       $v1, $v0
/* 005D10 00405D10 27B80048 */  addiu       $t8, $sp, 0x48
/* 005D14 00405D14 00988021 */  addu        $s0, $a0, $t8
/* 005D18 00405D18 24020030 */  addiu       $v0, $zero, 0x30
.L00405D1C:
/* 005D1C 00405D1C 24840001 */  addiu       $a0, $a0, 0x1
/* 005D20 00405D20 A2020000 */  sb          $v0, 0x0($s0)
/* 005D24 00405D24 1464FFFD */  bne         $v1, $a0, .L00405D1C
/* 005D28 00405D28 26100001 */   addiu      $s0, $s0, 0x1
/* 005D2C 00405D2C 1085000A */  beq         $a0, $a1, .L00405D58
.L00405D30:
/* 005D30 00405D30 27B90048 */   addiu      $t9, $sp, 0x48
/* 005D34 00405D34 00998021 */  addu        $s0, $a0, $t9
/* 005D38 00405D38 00B91821 */  addu        $v1, $a1, $t9
/* 005D3C 00405D3C 24020030 */  addiu       $v0, $zero, 0x30
.L00405D40:
/* 005D40 00405D40 26100004 */  addiu       $s0, $s0, 0x4
/* 005D44 00405D44 A202FFFD */  sb          $v0, -0x3($s0)
/* 005D48 00405D48 A202FFFE */  sb          $v0, -0x2($s0)
/* 005D4C 00405D4C A202FFFF */  sb          $v0, -0x1($s0)
/* 005D50 00405D50 1603FFFB */  bne         $s0, $v1, .L00405D40
/* 005D54 00405D54 A202FFFC */   sb         $v0, -0x4($s0)
.L00405D58:
/* 005D58 00405D58 AE400000 */  sw          $zero, 0x0($s2)
/* 005D5C 00405D5C AE600000 */  sw          $zero, 0x0($s3)
/* 005D60 00405D60 27B00048 */  addiu       $s0, $sp, 0x48
.L00405D64:
/* 005D64 00405D64 8F998158 */  lw          $t9, %call16(hex_to_num)($gp)
/* 005D68 00405D68 92040000 */  lbu         $a0, 0x0($s0)
/* 005D6C 00405D6C 0320F809 */  jalr        $t9
/* 005D70 00405D70 00000000 */   nop
/* 005D74 00405D74 8E480000 */  lw          $t0, 0x0($s2)
/* 005D78 00405D78 26100001 */  addiu       $s0, $s0, 0x1
/* 005D7C 00405D7C 00084900 */  sll         $t1, $t0, 4
/* 005D80 00405D80 0211082B */  sltu        $at, $s0, $s1
/* 005D84 00405D84 00495021 */  addu        $t2, $v0, $t1
/* 005D88 00405D88 8FBC0028 */  lw          $gp, 0x28($sp)
/* 005D8C 00405D8C 1420FFF5 */  bnez        $at, .L00405D64
/* 005D90 00405D90 AE4A0000 */   sw         $t2, 0x0($s2)
/* 005D94 00405D94 27B00050 */  addiu       $s0, $sp, 0x50
/* 005D98 00405D98 27B10058 */  addiu       $s1, $sp, 0x58
.L00405D9C:
/* 005D9C 00405D9C 8F998158 */  lw          $t9, %call16(hex_to_num)($gp)
/* 005DA0 00405DA0 92040000 */  lbu         $a0, 0x0($s0)
/* 005DA4 00405DA4 0320F809 */  jalr        $t9
/* 005DA8 00405DA8 00000000 */   nop
/* 005DAC 00405DAC 8E6B0000 */  lw          $t3, 0x0($s3)
/* 005DB0 00405DB0 26100001 */  addiu       $s0, $s0, 0x1
/* 005DB4 00405DB4 000B6100 */  sll         $t4, $t3, 4
/* 005DB8 00405DB8 004C6821 */  addu        $t5, $v0, $t4
/* 005DBC 00405DBC 8FBC0028 */  lw          $gp, 0x28($sp)
/* 005DC0 00405DC0 1611FFF6 */  bne         $s0, $s1, .L00405D9C
/* 005DC4 00405DC4 AE6D0000 */   sw         $t5, 0x0($s3)
/* 005DC8 00405DC8 8FBF002C */  lw          $ra, 0x2C($sp)
/* 005DCC 00405DCC 8FB00018 */  lw          $s0, 0x18($sp)
/* 005DD0 00405DD0 8FB1001C */  lw          $s1, 0x1C($sp)
/* 005DD4 00405DD4 8FB20020 */  lw          $s2, 0x20($sp)
/* 005DD8 00405DD8 8FB30024 */  lw          $s3, 0x24($sp)
/* 005DDC 00405DDC 03E00008 */  jr          $ra
/* 005DE0 00405DE0 27BD0058 */   addiu      $sp, $sp, 0x58