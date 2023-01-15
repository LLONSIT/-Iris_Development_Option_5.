.section .rodata
glabel STR_100063FC
/* 0253FC 100063FC */ .asciz "Overflow"
                      .balign 4

glabel STR_10006408
/* 025408 10006408 */ .asciz "Large decimal set sign bit"
                      .balign 4


.section .text
/* Generated by spimdisasm 1.10.3 */

glabel func_0040F5D8 # 102
# _gp_disp: 0xFC014E8
.set noreorder; .cpload $t9; # .set reorder
/* 00F5E4 0040F5E4 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 00F5E8 0040F5E8 AFBF0034 */  sw          $ra, 0x34($sp)
/* 00F5EC 0040F5EC AFBC0030 */  sw          $gp, 0x30($sp)
/* 00F5F0 0040F5F0 AFB5002C */  sw          $s5, 0x2C($sp)
/* 00F5F4 0040F5F4 AFB40028 */  sw          $s4, 0x28($sp)
/* 00F5F8 0040F5F8 AFB30024 */  sw          $s3, 0x24($sp)
/* 00F5FC 0040F5FC AFB20020 */  sw          $s2, 0x20($sp)
/* 00F600 0040F600 AFB1001C */  sw          $s1, 0x1C($sp)
/* 00F604 0040F604 AFB00018 */  sw          $s0, 0x18($sp)
/* 00F608 0040F608 AFA5003C */  sw          $a1, 0x3C($sp)
/* 00F60C 0040F60C 908E0000 */  lbu         $t6, 0x0($a0)
/* 00F610 0040F610 24010030 */  addiu       $at, $zero, 0x30
/* 00F614 0040F614 00803825 */  move        $a3, $a0
/* 00F618 0040F618 15C1000C */  bne         $t6, $at, .L0040F64C
/* 00F61C 0040F61C 00009025 */   move       $s2, $zero
/* 00F620 0040F620 90820001 */  lbu         $v0, 0x1($a0)
/* 00F624 0040F624 24010078 */  addiu       $at, $zero, 0x78
/* 00F628 0040F628 10410004 */  beq         $v0, $at, .L0040F63C
/* 00F62C 0040F62C 24150010 */   addiu      $s5, $zero, 0x10
/* 00F630 0040F630 24010058 */  addiu       $at, $zero, 0x58
/* 00F634 0040F634 14410003 */  bne         $v0, $at, .L0040F644
/* 00F638 0040F638 24140001 */   addiu      $s4, $zero, 0x1
.L0040F63C:
/* 00F63C 0040F63C 10000005 */  b           .L0040F654
/* 00F640 0040F640 24140002 */   addiu      $s4, $zero, 0x2
.L0040F644:
/* 00F644 0040F644 10000003 */  b           .L0040F654
/* 00F648 0040F648 24150008 */   addiu      $s5, $zero, 0x8
.L0040F64C:
/* 00F64C 0040F64C 2415000A */  addiu       $s5, $zero, 0xA
/* 00F650 0040F650 0000A025 */  move        $s4, $zero
.L0040F654:
/* 00F654 0040F654 00F48021 */  addu        $s0, $a3, $s4
/* 00F658 0040F658 92040000 */  lbu         $a0, 0x0($s0)
/* 00F65C 0040F65C 3C0F7FFF */  lui         $t7, (0x7FFFFFFF >> 16)
/* 00F660 0040F660 10800027 */  beqz        $a0, .L0040F700
/* 00F664 0040F664 35EFFFFF */   ori        $t7, $t7, (0x7FFFFFFF & 0xFFFF)
/* 00F668 0040F668 01F5001B */  divu        $zero, $t7, $s5
/* 00F66C 0040F66C AFA70038 */  sw          $a3, 0x38($sp)
/* 00F670 0040F670 16A00002 */  bnez        $s5, .L0040F67C
/* 00F674 0040F674 00000000 */   nop
/* 00F678 0040F678 0007000D */  break       7
.L0040F67C:
/* 00F67C 0040F67C 2413FFFF */  addiu       $s3, $zero, -0x1
/* 00F680 0040F680 00008812 */  mflo        $s1
/* 00F684 0040F684 0011C040 */  sll         $t8, $s1, 1
/* 00F688 0040F688 27110001 */  addiu       $s1, $t8, 0x1
.L0040F68C:
/* 00F68C 0040F68C 8F998158 */  lw          $t9, %call16(hex_to_num)($gp)
/* 00F690 0040F690 00000000 */  nop
/* 00F694 0040F694 0320F809 */  jalr        $t9
/* 00F698 0040F698 00000000 */   nop
/* 00F69C 0040F69C 8FBC0030 */  lw          $gp, 0x30($sp)
/* 00F6A0 0040F6A0 0232082B */  sltu        $at, $s1, $s2
/* 00F6A4 0040F6A4 14200007 */  bnez        $at, .L0040F6C4
/* 00F6A8 0040F6A8 26100001 */   addiu      $s0, $s0, 0x1
/* 00F6AC 0040F6AC 02550019 */  multu       $s2, $s5
/* 00F6B0 0040F6B0 00001812 */  mflo        $v1
/* 00F6B4 0040F6B4 0263C823 */  subu        $t9, $s3, $v1
/* 00F6B8 0040F6B8 0322082B */  sltu        $at, $t9, $v0
/* 00F6BC 0040F6BC 1020000A */  beqz        $at, .L0040F6E8
/* 00F6C0 0040F6C0 00000000 */   nop
.L0040F6C4:
/* 00F6C4 0040F6C4 8F848050 */  lw          $a0, %got(STR_100063FC)($gp)
/* 00F6C8 0040F6C8 8F9981C8 */  lw          $t9, %call16(posterror)($gp)
/* 00F6CC 0040F6CC 8FA50038 */  lw          $a1, 0x38($sp)
/* 00F6D0 0040F6D0 24060001 */  addiu       $a2, $zero, 0x1
/* 00F6D4 0040F6D4 0320F809 */  jalr        $t9
/* 00F6D8 0040F6D8 248463FC */   addiu      $a0, $a0, %lo(STR_100063FC)
/* 00F6DC 0040F6DC 8FBC0030 */  lw          $gp, 0x30($sp)
/* 00F6E0 0040F6E0 1000001D */  b           .L0040F758
/* 00F6E4 0040F6E4 02801025 */   move       $v0, $s4
.L0040F6E8:
/* 00F6E8 0040F6E8 92040000 */  lbu         $a0, 0x0($s0)
/* 00F6EC 0040F6EC 00629021 */  addu        $s2, $v1, $v0
/* 00F6F0 0040F6F0 1480FFE6 */  bnez        $a0, .L0040F68C
/* 00F6F4 0040F6F4 26940001 */   addiu      $s4, $s4, 0x1
/* 00F6F8 0040F6F8 8FA70038 */  lw          $a3, 0x38($sp)
/* 00F6FC 0040F6FC 00000000 */  nop
.L0040F700:
/* 00F700 0040F700 2401000A */  addiu       $at, $zero, 0xA
/* 00F704 0040F704 16A1000C */  bne         $s5, $at, .L0040F738
/* 00F708 0040F708 00124000 */   sll        $t0, $s2, 0
/* 00F70C 0040F70C 0501000A */  bgez        $t0, .L0040F738
/* 00F710 0040F710 3C108000 */   lui        $s0, (0x80000000 >> 16)
/* 00F714 0040F714 12500008 */  beq         $s2, $s0, .L0040F738
/* 00F718 0040F718 00E02825 */   move       $a1, $a3
/* 00F71C 0040F71C 8F848050 */  lw          $a0, %got(STR_10006408)($gp)
/* 00F720 0040F720 8F9981C8 */  lw          $t9, %call16(posterror)($gp)
/* 00F724 0040F724 24060002 */  addiu       $a2, $zero, 0x2
/* 00F728 0040F728 0320F809 */  jalr        $t9
/* 00F72C 0040F72C 24846408 */   addiu      $a0, $a0, %lo(STR_10006408)
/* 00F730 0040F730 8FBC0030 */  lw          $gp, 0x30($sp)
/* 00F734 0040F734 00000000 */  nop
.L0040F738:
/* 00F738 0040F738 8FA9003C */  lw          $t1, 0x3C($sp)
/* 00F73C 0040F73C 3C108000 */  lui         $s0, (0x80000000 >> 16)
/* 00F740 0040F740 11200004 */  beqz        $t1, .L0040F754
/* 00F744 0040F744 0240A025 */   move       $s4, $s2
/* 00F748 0040F748 12500003 */  beq         $s2, $s0, .L0040F758
/* 00F74C 0040F74C 02801025 */   move       $v0, $s4
/* 00F750 0040F750 0012A023 */  negu        $s4, $s2
.L0040F754:
/* 00F754 0040F754 02801025 */  move        $v0, $s4
.L0040F758:
/* 00F758 0040F758 8FBF0034 */  lw          $ra, 0x34($sp)
/* 00F75C 0040F75C 8FB00018 */  lw          $s0, 0x18($sp)
/* 00F760 0040F760 8FB1001C */  lw          $s1, 0x1C($sp)
/* 00F764 0040F764 8FB20020 */  lw          $s2, 0x20($sp)
/* 00F768 0040F768 8FB30024 */  lw          $s3, 0x24($sp)
/* 00F76C 0040F76C 8FB40028 */  lw          $s4, 0x28($sp)
/* 00F770 0040F770 8FB5002C */  lw          $s5, 0x2C($sp)
/* 00F774 0040F774 03E00008 */  jr          $ra
/* 00F778 0040F778 27BD0038 */   addiu      $sp, $sp, 0x38