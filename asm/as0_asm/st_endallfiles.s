/* Generated by spimdisasm 1.10.3 */

glabel st_endallfiles # 178
# _gp_disp: 0xFBFBD1C
.set noreorder; .cpload $t9; # .set reorder
/* 014DB0 00414DB0 27BDFFB8 */  addiu       $sp, $sp, -0x48
/* 014DB4 00414DB4 8F998248 */  lw          $t9, %call16(st_currentifd)($gp)
/* 014DB8 00414DB8 AFBF0034 */  sw          $ra, 0x34($sp)
/* 014DBC 00414DBC AFBC0030 */  sw          $gp, 0x30($sp)
/* 014DC0 00414DC0 AFB4002C */  sw          $s4, 0x2C($sp)
/* 014DC4 00414DC4 AFB30028 */  sw          $s3, 0x28($sp)
/* 014DC8 00414DC8 AFB20024 */  sw          $s2, 0x24($sp)
/* 014DCC 00414DCC AFB10020 */  sw          $s1, 0x20($sp)
/* 014DD0 00414DD0 0320F809 */  jalr        $t9
/* 014DD4 00414DD4 AFB0001C */   sw         $s0, 0x1C($sp)
/* 014DD8 00414DD8 8FBC0030 */  lw          $gp, 0x30($sp)
/* 014DDC 00414DDC AFA20038 */  sw          $v0, 0x38($sp)
/* 014DE0 00414DE0 8F99824C */  lw          $t9, %call16(st_ifdmax)($gp)
/* 014DE4 00414DE4 00008825 */  move        $s1, $zero
/* 014DE8 00414DE8 0320F809 */  jalr        $t9
/* 014DEC 00414DEC 00000000 */   nop
/* 014DF0 00414DF0 8FBC0030 */  lw          $gp, 0x30($sp)
/* 014DF4 00414DF4 18400048 */  blez        $v0, .L00414F18
/* 014DF8 00414DF8 2414000C */   addiu      $s4, $zero, 0xC
/* 014DFC 00414DFC 24130008 */  addiu       $s3, $zero, 0x8
/* 014E00 00414E00 2412FFFF */  addiu       $s2, $zero, -0x1
.L00414E04:
/* 014E04 00414E04 8F9981F8 */  lw          $t9, %call16(st_pcfd_ifd)($gp)
/* 014E08 00414E08 02202025 */  move        $a0, $s1
/* 014E0C 00414E0C 0320F809 */  jalr        $t9
/* 014E10 00414E10 00000000 */   nop
/* 014E14 00414E14 8C430004 */  lw          $v1, 0x4($v0)
/* 014E18 00414E18 8FBC0030 */  lw          $gp, 0x30($sp)
/* 014E1C 00414E1C 10600013 */  beqz        $v1, .L00414E6C
/* 014E20 00414E20 00000000 */   nop
/* 014E24 00414E24 12430011 */  beq         $s2, $v1, .L00414E6C
/* 014E28 00414E28 00000000 */   nop
/* 014E2C 00414E2C 8C4E0000 */  lw          $t6, 0x0($v0)
/* 014E30 00414E30 00000000 */  nop
/* 014E34 00414E34 8DC40014 */  lw          $a0, 0x14($t6)
/* 014E38 00414E38 00000000 */  nop
/* 014E3C 00414E3C 1880000B */  blez        $a0, .L00414E6C
/* 014E40 00414E40 00000000 */   nop
/* 014E44 00414E44 00940019 */  multu       $a0, $s4
/* 014E48 00414E48 00007812 */  mflo        $t7
/* 014E4C 00414E4C 006FC021 */  addu        $t8, $v1, $t7
/* 014E50 00414E50 8F05FFFC */  lw          $a1, -0x4($t8)
/* 014E54 00414E54 00000000 */  nop
/* 014E58 00414E58 0005CE82 */  srl         $t9, $a1, 26
/* 014E5C 00414E5C 16790003 */  bne         $s3, $t9, .L00414E6C
/* 014E60 00414E60 00054300 */   sll        $t0, $a1, 12
/* 014E64 00414E64 11000024 */  beqz        $t0, .L00414EF8
/* 014E68 00414E68 00000000 */   nop
.L00414E6C:
/* 014E6C 00414E6C 8F998250 */  lw          $t9, %call16(st_setfd)($gp)
/* 014E70 00414E70 02202025 */  move        $a0, $s1
/* 014E74 00414E74 0320F809 */  jalr        $t9
/* 014E78 00414E78 00000000 */   nop
/* 014E7C 00414E7C 8FBC0030 */  lw          $gp, 0x30($sp)
/* 014E80 00414E80 02202025 */  move        $a0, $s1
/* 014E84 00414E84 8F9981FC */  lw          $t9, %call16(st_psym_ifd_isym)($gp)
/* 014E88 00414E88 00002825 */  move        $a1, $zero
/* 014E8C 00414E8C 0320F809 */  jalr        $t9
/* 014E90 00414E90 00000000 */   nop
/* 014E94 00414E94 8FBC0030 */  lw          $gp, 0x30($sp)
/* 014E98 00414E98 8C440000 */  lw          $a0, 0x0($v0)
/* 014E9C 00414E9C 8F9981F0 */  lw          $t9, %call16(st_symadd)($gp)
/* 014EA0 00414EA0 AFA00010 */  sw          $zero, 0x10($sp)
/* 014EA4 00414EA4 00002825 */  move        $a1, $zero
/* 014EA8 00414EA8 24060008 */  addiu       $a2, $zero, 0x8
/* 014EAC 00414EAC 0320F809 */  jalr        $t9
/* 014EB0 00414EB0 24070001 */   addiu      $a3, $zero, 0x1
/* 014EB4 00414EB4 8FBC0030 */  lw          $gp, 0x30($sp)
/* 014EB8 00414EB8 00408025 */  move        $s0, $v0
/* 014EBC 00414EBC 8F9981FC */  lw          $t9, %call16(st_psym_ifd_isym)($gp)
/* 014EC0 00414EC0 02202025 */  move        $a0, $s1
/* 014EC4 00414EC4 0320F809 */  jalr        $t9
/* 014EC8 00414EC8 00002825 */   move       $a1, $zero
/* 014ECC 00414ECC 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 014ED0 00414ED0 8C430008 */  lw          $v1, 0x8($v0)
/* 014ED4 00414ED4 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 014ED8 00414ED8 26100001 */  addiu       $s0, $s0, 0x1
/* 014EDC 00414EDC 02014824 */  and         $t1, $s0, $at
/* 014EE0 00414EE0 01235026 */  xor         $t2, $t1, $v1
/* 014EE4 00414EE4 000A5B00 */  sll         $t3, $t2, 12
/* 014EE8 00414EE8 000B6302 */  srl         $t4, $t3, 12
/* 014EEC 00414EEC 8FBC0030 */  lw          $gp, 0x30($sp)
/* 014EF0 00414EF0 01836826 */  xor         $t5, $t4, $v1
/* 014EF4 00414EF4 AC4D0008 */  sw          $t5, 0x8($v0)
.L00414EF8:
/* 014EF8 00414EF8 8F99824C */  lw          $t9, %call16(st_ifdmax)($gp)
/* 014EFC 00414EFC 26310001 */  addiu       $s1, $s1, 0x1
/* 014F00 00414F00 0320F809 */  jalr        $t9
/* 014F04 00414F04 00000000 */   nop
/* 014F08 00414F08 8FBC0030 */  lw          $gp, 0x30($sp)
/* 014F0C 00414F0C 0222082A */  slt         $at, $s1, $v0
/* 014F10 00414F10 1420FFBC */  bnez        $at, .L00414E04
/* 014F14 00414F14 00000000 */   nop
.L00414F18:
/* 014F18 00414F18 8F998250 */  lw          $t9, %call16(st_setfd)($gp)
/* 014F1C 00414F1C 8FA40038 */  lw          $a0, 0x38($sp)
/* 014F20 00414F20 0320F809 */  jalr        $t9
/* 014F24 00414F24 00000000 */   nop
/* 014F28 00414F28 8FBC0030 */  lw          $gp, 0x30($sp)
/* 014F2C 00414F2C 00000000 */  nop
/* 014F30 00414F30 8F908064 */  lw          $s0, %got(B_1000A82C)($gp)
/* 014F34 00414F34 8F9980F0 */  lw          $t9, %call16(free)($gp)
/* 014F38 00414F38 2610A82C */  addiu       $s0, $s0, %lo(B_1000A82C)
/* 014F3C 00414F3C 8E040000 */  lw          $a0, 0x0($s0)
/* 014F40 00414F40 0320F809 */  jalr        $t9
/* 014F44 00414F44 00000000 */   nop
/* 014F48 00414F48 8FBC0030 */  lw          $gp, 0x30($sp)
/* 014F4C 00414F4C AE000000 */  sw          $zero, 0x0($s0)
/* 014F50 00414F50 8F818064 */  lw          $at, %got(B_1000A830)($gp)
/* 014F54 00414F54 8FBF0034 */  lw          $ra, 0x34($sp)
/* 014F58 00414F58 AC20A830 */  sw          $zero, %lo(B_1000A830)($at)
/* 014F5C 00414F5C 8F818064 */  lw          $at, %got(B_1000A834)($gp)
/* 014F60 00414F60 8FB0001C */  lw          $s0, 0x1C($sp)
/* 014F64 00414F64 8FB10020 */  lw          $s1, 0x20($sp)
/* 014F68 00414F68 8FB20024 */  lw          $s2, 0x24($sp)
/* 014F6C 00414F6C 8FB30028 */  lw          $s3, 0x28($sp)
/* 014F70 00414F70 8FB4002C */  lw          $s4, 0x2C($sp)
/* 014F74 00414F74 27BD0048 */  addiu       $sp, $sp, 0x48
/* 014F78 00414F78 03E00008 */  jr          $ra
/* 014F7C 00414F7C AC20A834 */   sw         $zero, %lo(B_1000A834)($at)