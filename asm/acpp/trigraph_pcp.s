.section .rodata
glabel STR_10000EB8
/* 012EB8 10000EB8 */ .asciz "%d trigraph(s) encountered"
                      .balign 4

.section .late_rodata
glabel jtbl_10001C38
/* 013C38 10001C38 F03FA1B4 */ .gpword .L004049D4
/* 013C3C 10001C3C F03FA218 */ .gpword .L00404A38
/* 013C40 10001C40 F03FA218 */ .gpword .L00404A38
/* 013C44 10001C44 F03FA218 */ .gpword .L00404A38
/* 013C48 10001C48 F03FA218 */ .gpword .L00404A38
/* 013C4C 10001C4C F03FA218 */ .gpword .L00404A38
/* 013C50 10001C50 F03FA1A4 */ .gpword .L004049C4
/* 013C54 10001C54 F03FA18C */ .gpword .L004049AC
/* 013C58 10001C58 F03FA19C */ .gpword .L004049BC
/* 013C5C 10001C5C F03FA218 */ .gpword .L00404A38
/* 013C60 10001C60 F03FA218 */ .gpword .L00404A38
/* 013C64 10001C64 F03FA218 */ .gpword .L00404A38
/* 013C68 10001C68 F03FA1C4 */ .gpword .L004049E4
/* 013C6C 10001C6C F03FA218 */ .gpword .L00404A38
/* 013C70 10001C70 F03FA194 */ .gpword .L004049B4
/* 013C74 10001C74 F03FA218 */ .gpword .L00404A38
/* 013C78 10001C78 F03FA218 */ .gpword .L00404A38
/* 013C7C 10001C7C F03FA218 */ .gpword .L00404A38
/* 013C80 10001C80 F03FA218 */ .gpword .L00404A38
/* 013C84 10001C84 F03FA218 */ .gpword .L00404A38
/* 013C88 10001C88 F03FA218 */ .gpword .L00404A38
/* 013C8C 10001C8C F03FA218 */ .gpword .L00404A38
/* 013C90 10001C90 F03FA218 */ .gpword .L00404A38
/* 013C94 10001C94 F03FA218 */ .gpword .L00404A38
/* 013C98 10001C98 F03FA218 */ .gpword .L00404A38
/* 013C9C 10001C9C F03FA218 */ .gpword .L00404A38
/* 013CA0 10001CA0 F03FA218 */ .gpword .L00404A38
/* 013CA4 10001CA4 F03FA1AC */ .gpword .L004049CC
/* 013CA8 10001CA8 F03FA184 */ .gpword .L004049A4
/* 013CAC 10001CAC F03FA1BC */ .gpword .L004049DC
/* 013CB0 10001CB0 F03FA1CC */ .gpword .L004049EC


.section .text
/* Generated by spimdisasm 1.9.1 */

glabel trigraph_pcp # 10
# _gp_disp: 0xFC05F20
.set noreorder; .cpload $t9; # .set reorder
/* 00490C 0040490C 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 004910 00404910 AFBF0034 */  sw          $ra, 0x34($sp)
/* 004914 00404914 AFBC0030 */  sw          $gp, 0x30($sp)
/* 004918 00404918 AFB5002C */  sw          $s5, 0x2C($sp)
/* 00491C 0040491C AFB40028 */  sw          $s4, 0x28($sp)
/* 004920 00404920 AFB30024 */  sw          $s3, 0x24($sp)
/* 004924 00404924 AFB20020 */  sw          $s2, 0x20($sp)
/* 004928 00404928 AFB1001C */  sw          $s1, 0x1C($sp)
/* 00492C 0040492C AFB00018 */  sw          $s0, 0x18($sp)
/* 004930 00404930 AFA40038 */  sw          $a0, 0x38($sp)
/* 004934 00404934 8C940010 */  lw          $s4, 0x10($a0)
/* 004938 00404938 8F9980CC */  lw          $t9, %call16(strchr)($gp)
/* 00493C 0040493C 2405003F */  addiu       $a1, $zero, 0x3F
/* 004940 00404940 02809025 */  move        $s2, $s4
/* 004944 00404944 0320F809 */  jalr        $t9
/* 004948 00404948 02802025 */   move       $a0, $s4
/* 00494C 0040494C 8FBC0030 */  lw          $gp, 0x30($sp)
/* 004950 00404950 10400040 */  beqz        $v0, .L00404A54
/* 004954 00404954 2415003F */   addiu      $s5, $zero, 0x3F
/* 004958 00404958 24510001 */  addiu       $s1, $v0, 0x1
.L0040495C:
/* 00495C 0040495C 922F0000 */  lbu         $t7, 0x0($s1)
/* 004960 00404960 00000000 */  nop
/* 004964 00404964 16AF0034 */  bne         $s5, $t7, .L00404A38
/* 004968 00404968 00000000 */   nop
/* 00496C 0040496C 92380001 */  lbu         $t8, 0x1($s1)
/* 004970 00404970 26310001 */  addiu       $s1, $s1, 0x1
/* 004974 00404974 2719FFDF */  addiu       $t9, $t8, -0x21
/* 004978 00404978 2F21001F */  sltiu       $at, $t9, 0x1F
/* 00497C 0040497C 1020002E */  beqz        $at, .L00404A38
/* 004980 00404980 00000000 */   nop
/* 004984 00404984 8F81804C */  lw          $at, %got(jtbl_10001C38)($gp)
/* 004988 00404988 0019C880 */  sll         $t9, $t9, 2
/* 00498C 0040498C 00390821 */  addu        $at, $at, $t9
/* 004990 00404990 8C391C38 */  lw          $t9, %lo(jtbl_10001C38)($at)
/* 004994 00404994 00000000 */  nop
/* 004998 00404998 033CC821 */  addu        $t9, $t9, $gp
/* 00499C 0040499C 03200008 */  jr          $t9
/* 0049A0 004049A0 00000000 */   nop
.L004049A4:
/* 0049A4 004049A4 10000013 */  b           .L004049F4
/* 0049A8 004049A8 24100023 */   addiu      $s0, $zero, 0x23
.L004049AC:
/* 0049AC 004049AC 10000011 */  b           .L004049F4
/* 0049B0 004049B0 2410005B */   addiu      $s0, $zero, 0x5B
.L004049B4:
/* 0049B4 004049B4 1000000F */  b           .L004049F4
/* 0049B8 004049B8 2410005C */   addiu      $s0, $zero, 0x5C
.L004049BC:
/* 0049BC 004049BC 1000000D */  b           .L004049F4
/* 0049C0 004049C0 2410005D */   addiu      $s0, $zero, 0x5D
.L004049C4:
/* 0049C4 004049C4 1000000B */  b           .L004049F4
/* 0049C8 004049C8 2410005E */   addiu      $s0, $zero, 0x5E
.L004049CC:
/* 0049CC 004049CC 10000009 */  b           .L004049F4
/* 0049D0 004049D0 2410007B */   addiu      $s0, $zero, 0x7B
.L004049D4:
/* 0049D4 004049D4 10000007 */  b           .L004049F4
/* 0049D8 004049D8 2410007C */   addiu      $s0, $zero, 0x7C
.L004049DC:
/* 0049DC 004049DC 10000005 */  b           .L004049F4
/* 0049E0 004049E0 2410007D */   addiu      $s0, $zero, 0x7D
.L004049E4:
/* 0049E4 004049E4 10000003 */  b           .L004049F4
/* 0049E8 004049E8 2410007E */   addiu      $s0, $zero, 0x7E
.L004049EC:
/* 0049EC 004049EC 10000012 */  b           .L00404A38
/* 0049F0 004049F0 2631FFFF */   addiu      $s1, $s1, -0x1
.L004049F4:
/* 0049F4 004049F4 02343023 */  subu        $a2, $s1, $s4
/* 0049F8 004049F8 24C6FFFE */  addiu       $a2, $a2, -0x2
/* 0049FC 004049FC 12540009 */  beq         $s2, $s4, .L00404A24
/* 004A00 00404A00 00C09825 */   move       $s3, $a2
/* 004A04 00404A04 18C00007 */  blez        $a2, .L00404A24
/* 004A08 00404A08 00000000 */   nop
/* 004A0C 00404A0C 8F998230 */  lw          $t9, %call16(bcopy)($gp)
/* 004A10 00404A10 02802025 */  move        $a0, $s4
/* 004A14 00404A14 0320F809 */  jalr        $t9
/* 004A18 00404A18 02402825 */   move       $a1, $s2
/* 004A1C 00404A1C 8FBC0030 */  lw          $gp, 0x30($sp)
/* 004A20 00404A20 00000000 */  nop
.L00404A24:
/* 004A24 00404A24 02539021 */  addu        $s2, $s2, $s3
/* 004A28 00404A28 26310001 */  addiu       $s1, $s1, 0x1
/* 004A2C 00404A2C 26520001 */  addiu       $s2, $s2, 0x1
/* 004A30 00404A30 A250FFFF */  sb          $s0, -0x1($s2)
/* 004A34 00404A34 0220A025 */  move        $s4, $s1
.L00404A38:
/* 004A38 00404A38 8F9980CC */  lw          $t9, %call16(strchr)($gp)
/* 004A3C 00404A3C 02202025 */  move        $a0, $s1
/* 004A40 00404A40 0320F809 */  jalr        $t9
/* 004A44 00404A44 2405003F */   addiu      $a1, $zero, 0x3F
/* 004A48 00404A48 8FBC0030 */  lw          $gp, 0x30($sp)
/* 004A4C 00404A4C 1440FFC3 */  bnez        $v0, .L0040495C
/* 004A50 00404A50 24510001 */   addiu      $s1, $v0, 0x1
.L00404A54:
/* 004A54 00404A54 8FA70038 */  lw          $a3, 0x38($sp)
/* 004A58 00404A58 00000000 */  nop
/* 004A5C 00404A5C 8CE20010 */  lw          $v0, 0x10($a3)
/* 004A60 00404A60 8CE30008 */  lw          $v1, 0x8($a3)
/* 004A64 00404A64 02824023 */  subu        $t0, $s4, $v0
/* 004A68 00404A68 1254000C */  beq         $s2, $s4, .L00404A9C
/* 004A6C 00404A6C 00689823 */   subu       $s3, $v1, $t0
/* 004A70 00404A70 1A60000A */  blez        $s3, .L00404A9C
/* 004A74 00404A74 02802025 */   move       $a0, $s4
/* 004A78 00404A78 8F998230 */  lw          $t9, %call16(bcopy)($gp)
/* 004A7C 00404A7C 02402825 */  move        $a1, $s2
/* 004A80 00404A80 0320F809 */  jalr        $t9
/* 004A84 00404A84 02603025 */   move       $a2, $s3
/* 004A88 00404A88 8FA70038 */  lw          $a3, 0x38($sp)
/* 004A8C 00404A8C 8FBC0030 */  lw          $gp, 0x30($sp)
/* 004A90 00404A90 8CE20010 */  lw          $v0, 0x10($a3)
/* 004A94 00404A94 8CE30008 */  lw          $v1, 0x8($a3)
/* 004A98 00404A98 00000000 */  nop
.L00404A9C:
/* 004A9C 00404A9C 02923023 */  subu        $a2, $s4, $s2
/* 004AA0 00404AA0 00665023 */  subu        $t2, $v1, $a2
/* 004AA4 00404AA4 8F8D8334 */  lw          $t5, %got(warn_trigraphs)($gp)
/* 004AA8 00404AA8 ACEA0008 */  sw          $t2, 0x8($a3)
/* 004AAC 00404AAC 004A6021 */  addu        $t4, $v0, $t2
/* 004AB0 00404AB0 A1800000 */  sb          $zero, 0x0($t4)
/* 004AB4 00404AB4 8DAD0000 */  lw          $t5, 0x0($t5)
/* 004AB8 00404AB8 00000000 */  nop
/* 004ABC 00404ABC 11A00015 */  beqz        $t5, .L00404B14
/* 004AC0 00404AC0 8FBF0034 */   lw         $ra, 0x34($sp)
/* 004AC4 00404AC4 12920013 */  beq         $s4, $s2, .L00404B14
/* 004AC8 00404AC8 8FBF0034 */   lw         $ra, 0x34($sp)
/* 004ACC 00404ACC 8F8E8328 */  lw          $t6, %got(warnings_off)($gp)
/* 004AD0 00404AD0 00000000 */  nop
/* 004AD4 00404AD4 8DCE0000 */  lw          $t6, 0x0($t6)
/* 004AD8 00404AD8 00000000 */  nop
/* 004ADC 00404ADC 15C0000D */  bnez        $t6, .L00404B14
/* 004AE0 00404AE0 8FBF0034 */   lw         $ra, 0x34($sp)
/* 004AE4 00404AE4 8F84804C */  lw          $a0, %got(STR_10000EB8)($gp)
/* 004AE8 00404AE8 8F9981EC */  lw          $t9, %call16(warning)($gp)
/* 004AEC 00404AEC 24840EB8 */  addiu       $a0, $a0, %lo(STR_10000EB8)
/* 004AF0 00404AF0 04C10003 */  bgez        $a2, .L00404B00
/* 004AF4 00404AF4 00062843 */   sra        $a1, $a2, 1
/* 004AF8 00404AF8 24C10001 */  addiu       $at, $a2, 0x1
/* 004AFC 00404AFC 00012843 */  sra         $a1, $at, 1
.L00404B00:
/* 004B00 00404B00 0320F809 */  jalr        $t9
/* 004B04 00404B04 00000000 */   nop
/* 004B08 00404B08 8FBC0030 */  lw          $gp, 0x30($sp)
/* 004B0C 00404B0C 00000000 */  nop
/* 004B10 00404B10 8FBF0034 */  lw          $ra, 0x34($sp)
.L00404B14:
/* 004B14 00404B14 8FB00018 */  lw          $s0, 0x18($sp)
/* 004B18 00404B18 8FB1001C */  lw          $s1, 0x1C($sp)
/* 004B1C 00404B1C 8FB20020 */  lw          $s2, 0x20($sp)
/* 004B20 00404B20 8FB30024 */  lw          $s3, 0x24($sp)
/* 004B24 00404B24 8FB40028 */  lw          $s4, 0x28($sp)
/* 004B28 00404B28 8FB5002C */  lw          $s5, 0x2C($sp)
/* 004B2C 00404B2C 03E00008 */  jr          $ra
/* 004B30 00404B30 27BD0038 */   addiu      $sp, $sp, 0x38
