.section .rodata
glabel STR_100065D8
/* 0255D8 100065D8 */ .asciz "Expected cpp-generated line number"
                      .balign 4

glabel STR_100065FC
/* 0255FC 100065FC */ .asciz "Expected cpp-generated line number"
                      .balign 4

glabel STR_10006620
/* 025620 10006620 */ .asciz "Expected cpp-generated file name"
                      .balign 4

glabel STR_10006644
/* 025644 10006644 */ .asciz "Truncating cpp-generated filename"
                      .balign 4


.section .text
/* Generated by spimdisasm 1.10.3 */

glabel func_00410E80 # 116
# _gp_disp: 0xFBFFC40
.set noreorder; .cpload $t9; # .set reorder
/* 010E8C 00410E8C 27BDFBB0 */  addiu       $sp, $sp, -0x450
/* 010E90 00410E90 AFB2001C */  sw          $s2, 0x1C($sp)
/* 010E94 00410E94 8F9283A8 */  lw          $s2, %got(in_file)($gp)
/* 010E98 00410E98 8F99809C */  lw          $t9, %call16(fgetc)($gp)
/* 010E9C 00410E9C AFBF0034 */  sw          $ra, 0x34($sp)
/* 010EA0 00410EA0 8E440000 */  lw          $a0, 0x0($s2)
/* 010EA4 00410EA4 AFBC0030 */  sw          $gp, 0x30($sp)
/* 010EA8 00410EA8 AFB6002C */  sw          $s6, 0x2C($sp)
/* 010EAC 00410EAC AFB50028 */  sw          $s5, 0x28($sp)
/* 010EB0 00410EB0 AFB40024 */  sw          $s4, 0x24($sp)
/* 010EB4 00410EB4 AFB30020 */  sw          $s3, 0x20($sp)
/* 010EB8 00410EB8 AFB10018 */  sw          $s1, 0x18($sp)
/* 010EBC 00410EBC 0320F809 */  jalr        $t9
/* 010EC0 00410EC0 AFB00014 */   sw         $s0, 0x14($sp)
/* 010EC4 00410EC4 8FBC0030 */  lw          $gp, 0x30($sp)
/* 010EC8 00410EC8 24150020 */  addiu       $s5, $zero, 0x20
/* 010ECC 00410ECC 304400FF */  andi        $a0, $v0, 0xFF
/* 010ED0 00410ED0 00801825 */  move        $v1, $a0
/* 010ED4 00410ED4 12A40004 */  beq         $s5, $a0, .L00410EE8
/* 010ED8 00410ED8 305000FF */   andi       $s0, $v0, 0xFF
/* 010EDC 00410EDC 24140009 */  addiu       $s4, $zero, 0x9
/* 010EE0 00410EE0 1684000D */  bne         $s4, $a0, .L00410F18
/* 010EE4 00410EE4 2401006C */   addiu      $at, $zero, 0x6C
.L00410EE8:
/* 010EE8 00410EE8 8F99809C */  lw          $t9, %call16(fgetc)($gp)
/* 010EEC 00410EEC 8E440000 */  lw          $a0, 0x0($s2)
/* 010EF0 00410EF0 0320F809 */  jalr        $t9
/* 010EF4 00410EF4 24140009 */   addiu      $s4, $zero, 0x9
/* 010EF8 00410EF8 8FBC0030 */  lw          $gp, 0x30($sp)
/* 010EFC 00410EFC 304400FF */  andi        $a0, $v0, 0xFF
/* 010F00 00410F00 00801825 */  move        $v1, $a0
/* 010F04 00410F04 12A4FFF8 */  beq         $s5, $a0, .L00410EE8
/* 010F08 00410F08 305000FF */   andi       $s0, $v0, 0xFF
/* 010F0C 00410F0C 1290FFF6 */  beq         $s4, $s0, .L00410EE8
/* 010F10 00410F10 00000000 */   nop
/* 010F14 00410F14 2401006C */  addiu       $at, $zero, 0x6C
.L00410F18:
/* 010F18 00410F18 1461003E */  bne         $v1, $at, .L00411014
/* 010F1C 00410F1C 00000000 */   nop
/* 010F20 00410F20 8F99809C */  lw          $t9, %call16(fgetc)($gp)
/* 010F24 00410F24 8E440000 */  lw          $a0, 0x0($s2)
/* 010F28 00410F28 0320F809 */  jalr        $t9
/* 010F2C 00410F2C 00000000 */   nop
/* 010F30 00410F30 8FBC0030 */  lw          $gp, 0x30($sp)
/* 010F34 00410F34 304E00FF */  andi        $t6, $v0, 0xFF
/* 010F38 00410F38 24010069 */  addiu       $at, $zero, 0x69
/* 010F3C 00410F3C 15C10013 */  bne         $t6, $at, .L00410F8C
/* 010F40 00410F40 00000000 */   nop
/* 010F44 00410F44 8F99809C */  lw          $t9, %call16(fgetc)($gp)
/* 010F48 00410F48 8E440000 */  lw          $a0, 0x0($s2)
/* 010F4C 00410F4C 0320F809 */  jalr        $t9
/* 010F50 00410F50 00000000 */   nop
/* 010F54 00410F54 8FBC0030 */  lw          $gp, 0x30($sp)
/* 010F58 00410F58 304F00FF */  andi        $t7, $v0, 0xFF
/* 010F5C 00410F5C 2401006E */  addiu       $at, $zero, 0x6E
/* 010F60 00410F60 15E1000A */  bne         $t7, $at, .L00410F8C
/* 010F64 00410F64 00000000 */   nop
/* 010F68 00410F68 8F99809C */  lw          $t9, %call16(fgetc)($gp)
/* 010F6C 00410F6C 8E440000 */  lw          $a0, 0x0($s2)
/* 010F70 00410F70 0320F809 */  jalr        $t9
/* 010F74 00410F74 00000000 */   nop
/* 010F78 00410F78 8FBC0030 */  lw          $gp, 0x30($sp)
/* 010F7C 00410F7C 305800FF */  andi        $t8, $v0, 0xFF
/* 010F80 00410F80 24010065 */  addiu       $at, $zero, 0x65
/* 010F84 00410F84 1301000F */  beq         $t8, $at, .L00410FC4
/* 010F88 00410F88 00000000 */   nop
.L00410F8C:
/* 010F8C 00410F8C 8F848050 */  lw          $a0, %got(STR_100065D8)($gp)
/* 010F90 00410F90 8F9981C8 */  lw          $t9, %call16(posterror)($gp)
/* 010F94 00410F94 00002825 */  move        $a1, $zero
/* 010F98 00410F98 24060001 */  addiu       $a2, $zero, 0x1
/* 010F9C 00410F9C 0320F809 */  jalr        $t9
/* 010FA0 00410FA0 248465D8 */   addiu      $a0, $a0, %lo(STR_100065D8)
/* 010FA4 00410FA4 8FBC0030 */  lw          $gp, 0x30($sp)
/* 010FA8 00410FA8 24040001 */  addiu       $a0, $zero, 0x1
/* 010FAC 00410FAC 8F9980F4 */  lw          $t9, %call16(exit)($gp)
/* 010FB0 00410FB0 00000000 */  nop
/* 010FB4 00410FB4 0320F809 */  jalr        $t9
/* 010FB8 00410FB8 00000000 */   nop
/* 010FBC 00410FBC 8FBC0030 */  lw          $gp, 0x30($sp)
/* 010FC0 00410FC0 00000000 */  nop
.L00410FC4:
/* 010FC4 00410FC4 8F99809C */  lw          $t9, %call16(fgetc)($gp)
/* 010FC8 00410FC8 8E440000 */  lw          $a0, 0x0($s2)
/* 010FCC 00410FCC 0320F809 */  jalr        $t9
/* 010FD0 00410FD0 00000000 */   nop
/* 010FD4 00410FD4 8FBC0030 */  lw          $gp, 0x30($sp)
/* 010FD8 00410FD8 304400FF */  andi        $a0, $v0, 0xFF
/* 010FDC 00410FDC 12A40003 */  beq         $s5, $a0, .L00410FEC
/* 010FE0 00410FE0 305000FF */   andi       $s0, $v0, 0xFF
/* 010FE4 00410FE4 1684000B */  bne         $s4, $a0, .L00411014
/* 010FE8 00410FE8 00000000 */   nop
.L00410FEC:
/* 010FEC 00410FEC 8F99809C */  lw          $t9, %call16(fgetc)($gp)
/* 010FF0 00410FF0 8E440000 */  lw          $a0, 0x0($s2)
/* 010FF4 00410FF4 0320F809 */  jalr        $t9
/* 010FF8 00410FF8 00000000 */   nop
/* 010FFC 00410FFC 8FBC0030 */  lw          $gp, 0x30($sp)
/* 011000 00411000 304400FF */  andi        $a0, $v0, 0xFF
/* 011004 00411004 12A4FFF9 */  beq         $s5, $a0, .L00410FEC
/* 011008 00411008 305000FF */   andi       $s0, $v0, 0xFF
/* 01100C 0041100C 1290FFF7 */  beq         $s4, $s0, .L00410FEC
/* 011010 00411010 00000000 */   nop
.L00411014:
/* 011014 00411014 8F918078 */  lw          $s1, %got(__ctype)($gp)
/* 011018 00411018 00002825 */  move        $a1, $zero
/* 01101C 0041101C 0224C821 */  addu        $t9, $s1, $a0
/* 011020 00411020 93280001 */  lbu         $t0, 0x1($t9)
/* 011024 00411024 00000000 */  nop
/* 011028 00411028 31090004 */  andi        $t1, $t0, 0x4
/* 01102C 0041102C 1520000F */  bnez        $t1, .L0041106C
/* 011030 00411030 0000B025 */   move       $s6, $zero
/* 011034 00411034 8F848050 */  lw          $a0, %got(STR_100065FC)($gp)
/* 011038 00411038 8F9981C8 */  lw          $t9, %call16(posterror)($gp)
/* 01103C 0041103C 24060001 */  addiu       $a2, $zero, 0x1
/* 011040 00411040 0320F809 */  jalr        $t9
/* 011044 00411044 248465FC */   addiu      $a0, $a0, %lo(STR_100065FC)
/* 011048 00411048 8FBC0030 */  lw          $gp, 0x30($sp)
/* 01104C 0041104C 24040001 */  addiu       $a0, $zero, 0x1
/* 011050 00411050 8F9980F4 */  lw          $t9, %call16(exit)($gp)
/* 011054 00411054 00000000 */  nop
/* 011058 00411058 0320F809 */  jalr        $t9
/* 01105C 0041105C 00000000 */   nop
/* 011060 00411060 8FBC0030 */  lw          $gp, 0x30($sp)
/* 011064 00411064 00000000 */  nop
/* 011068 00411068 0000B025 */  move        $s6, $zero
.L0041106C:
/* 01106C 0041106C 2413000A */  addiu       $s3, $zero, 0xA
.L00411070:
/* 011070 00411070 02D30019 */  multu       $s6, $s3
/* 011074 00411074 8F99809C */  lw          $t9, %call16(fgetc)($gp)
/* 011078 00411078 8E440000 */  lw          $a0, 0x0($s2)
/* 01107C 0041107C 00005012 */  mflo        $t2
/* 011080 00411080 0150B021 */  addu        $s6, $t2, $s0
/* 011084 00411084 0320F809 */  jalr        $t9
/* 011088 00411088 26D6FFD0 */   addiu      $s6, $s6, -0x30
/* 01108C 0041108C 304400FF */  andi        $a0, $v0, 0xFF
/* 011090 00411090 02245821 */  addu        $t3, $s1, $a0
/* 011094 00411094 916C0001 */  lbu         $t4, 0x1($t3)
/* 011098 00411098 8FBC0030 */  lw          $gp, 0x30($sp)
/* 01109C 0041109C 318D0004 */  andi        $t5, $t4, 0x4
/* 0110A0 004110A0 15A0FFF3 */  bnez        $t5, .L00411070
/* 0110A4 004110A4 305000FF */   andi       $s0, $v0, 0xFF
/* 0110A8 004110A8 12B00003 */  beq         $s5, $s0, .L004110B8
/* 0110AC 004110AC 00000000 */   nop
/* 0110B0 004110B0 1684000B */  bne         $s4, $a0, .L004110E0
/* 0110B4 004110B4 00801825 */   move       $v1, $a0
.L004110B8:
/* 0110B8 004110B8 8F99809C */  lw          $t9, %call16(fgetc)($gp)
/* 0110BC 004110BC 8E440000 */  lw          $a0, 0x0($s2)
/* 0110C0 004110C0 0320F809 */  jalr        $t9
/* 0110C4 004110C4 00000000 */   nop
/* 0110C8 004110C8 8FBC0030 */  lw          $gp, 0x30($sp)
/* 0110CC 004110CC 304300FF */  andi        $v1, $v0, 0xFF
/* 0110D0 004110D0 12A3FFF9 */  beq         $s5, $v1, .L004110B8
/* 0110D4 004110D4 305000FF */   andi       $s0, $v0, 0xFF
/* 0110D8 004110D8 1290FFF7 */  beq         $s4, $s0, .L004110B8
/* 0110DC 004110DC 00000000 */   nop
.L004110E0:
/* 0110E0 004110E0 24010022 */  addiu       $at, $zero, 0x22
/* 0110E4 004110E4 10610009 */  beq         $v1, $at, .L0041110C
/* 0110E8 004110E8 00002825 */   move       $a1, $zero
/* 0110EC 004110EC 8F848050 */  lw          $a0, %got(STR_10006620)($gp)
/* 0110F0 004110F0 8F9981C8 */  lw          $t9, %call16(posterror)($gp)
/* 0110F4 004110F4 24060001 */  addiu       $a2, $zero, 0x1
/* 0110F8 004110F8 0320F809 */  jalr        $t9
/* 0110FC 004110FC 24846620 */   addiu      $a0, $a0, %lo(STR_10006620)
/* 011100 00411100 8FBC0030 */  lw          $gp, 0x30($sp)
/* 011104 00411104 1000004B */  b           .L00411234
/* 011108 00411108 02001025 */   move       $v0, $s0
.L0041110C:
/* 01110C 0041110C 8F99809C */  lw          $t9, %call16(fgetc)($gp)
/* 011110 00411110 8E440000 */  lw          $a0, 0x0($s2)
/* 011114 00411114 0320F809 */  jalr        $t9
/* 011118 00411118 00000000 */   nop
/* 01111C 0041111C 8FBC0030 */  lw          $gp, 0x30($sp)
/* 011120 00411120 304400FF */  andi        $a0, $v0, 0xFF
/* 011124 00411124 24010022 */  addiu       $at, $zero, 0x22
/* 011128 00411128 305000FF */  andi        $s0, $v0, 0xFF
/* 01112C 0041112C 1081001A */  beq         $a0, $at, .L00411198
/* 011130 00411130 00008825 */   move       $s1, $zero
/* 011134 00411134 12A40019 */  beq         $s5, $a0, .L0041119C
/* 011138 00411138 2A210400 */   slti       $at, $s1, 0x400
/* 01113C 0041113C 12640016 */  beq         $s3, $a0, .L00411198
/* 011140 00411140 240100FF */   addiu      $at, $zero, 0xFF
/* 011144 00411144 10810014 */  beq         $a0, $at, .L00411198
/* 011148 00411148 27B40044 */   addiu      $s4, $sp, 0x44
/* 01114C 0041114C 2A2103FF */  slti        $at, $s1, 0x3FF
.L00411150:
/* 011150 00411150 10200002 */  beqz        $at, .L0041115C
/* 011154 00411154 02917021 */   addu       $t6, $s4, $s1
/* 011158 00411158 A1C40000 */  sb          $a0, 0x0($t6)
.L0041115C:
/* 01115C 0041115C 8F99809C */  lw          $t9, %call16(fgetc)($gp)
/* 011160 00411160 8E440000 */  lw          $a0, 0x0($s2)
/* 011164 00411164 0320F809 */  jalr        $t9
/* 011168 00411168 26310001 */   addiu      $s1, $s1, 0x1
/* 01116C 0041116C 8FBC0030 */  lw          $gp, 0x30($sp)
/* 011170 00411170 304400FF */  andi        $a0, $v0, 0xFF
/* 011174 00411174 24010022 */  addiu       $at, $zero, 0x22
/* 011178 00411178 10810007 */  beq         $a0, $at, .L00411198
/* 01117C 0041117C 305000FF */   andi       $s0, $v0, 0xFF
/* 011180 00411180 12A40005 */  beq         $s5, $a0, .L00411198
/* 011184 00411184 240100FF */   addiu      $at, $zero, 0xFF
/* 011188 00411188 12640003 */  beq         $s3, $a0, .L00411198
/* 01118C 0041118C 00000000 */   nop
/* 011190 00411190 1601FFEF */  bne         $s0, $at, .L00411150
/* 011194 00411194 2A2103FF */   slti       $at, $s1, 0x3FF
.L00411198:
/* 011198 00411198 2A210400 */  slti        $at, $s1, 0x400
.L0041119C:
/* 01119C 0041119C 27B40044 */  addiu       $s4, $sp, 0x44
/* 0111A0 004111A0 1420000B */  bnez        $at, .L004111D0
/* 0111A4 004111A4 02009825 */   move       $s3, $s0
/* 0111A8 004111A8 8F848050 */  lw          $a0, %got(STR_10006644)($gp)
/* 0111AC 004111AC 8F9981C8 */  lw          $t9, %call16(posterror)($gp)
/* 0111B0 004111B0 A3A00443 */  sb          $zero, 0x443($sp)
/* 0111B4 004111B4 02802825 */  move        $a1, $s4
/* 0111B8 004111B8 24060002 */  addiu       $a2, $zero, 0x2
/* 0111BC 004111BC 0320F809 */  jalr        $t9
/* 0111C0 004111C0 24846644 */   addiu      $a0, $a0, %lo(STR_10006644)
/* 0111C4 004111C4 8FBC0030 */  lw          $gp, 0x30($sp)
/* 0111C8 004111C8 10000003 */  b           .L004111D8
/* 0111CC 004111CC 00000000 */   nop
.L004111D0:
/* 0111D0 004111D0 02917821 */  addu        $t7, $s4, $s1
/* 0111D4 004111D4 A1E00000 */  sb          $zero, 0x0($t7)
.L004111D8:
/* 0111D8 004111D8 8F998358 */  lw          $t9, %got(invent_locs)($gp)
/* 0111DC 004111DC 8F818370 */  lw          $at, %got(CurrentLine)($gp)
/* 0111E0 004111E0 8F390000 */  lw          $t9, 0x0($t9)
/* 0111E4 004111E4 26D8FFFE */  addiu       $t8, $s6, -0x2
/* 0111E8 004111E8 13200007 */  beqz        $t9, .L00411208
/* 0111EC 004111EC AC380000 */   sw         $t8, 0x0($at)
/* 0111F0 004111F0 8F998164 */  lw          $t9, %call16(make_file)($gp)
/* 0111F4 004111F4 02802025 */  move        $a0, $s4
/* 0111F8 004111F8 0320F809 */  jalr        $t9
/* 0111FC 004111FC 00000000 */   nop
/* 011200 00411200 8FBC0030 */  lw          $gp, 0x30($sp)
/* 011204 00411204 00000000 */  nop
.L00411208:
/* 011208 00411208 24010022 */  addiu       $at, $zero, 0x22
/* 01120C 0041120C 16610008 */  bne         $s3, $at, .L00411230
/* 011210 00411210 02601825 */   move       $v1, $s3
/* 011214 00411214 8F99809C */  lw          $t9, %call16(fgetc)($gp)
/* 011218 00411218 8E440000 */  lw          $a0, 0x0($s2)
/* 01121C 0041121C 0320F809 */  jalr        $t9
/* 011220 00411220 00000000 */   nop
/* 011224 00411224 8FBC0030 */  lw          $gp, 0x30($sp)
/* 011228 00411228 10000001 */  b           .L00411230
/* 01122C 0041122C 00401825 */   move       $v1, $v0
.L00411230:
/* 011230 00411230 306200FF */  andi        $v0, $v1, 0xFF
.L00411234:
/* 011234 00411234 8FBF0034 */  lw          $ra, 0x34($sp)
/* 011238 00411238 8FB00014 */  lw          $s0, 0x14($sp)
/* 01123C 0041123C 8FB10018 */  lw          $s1, 0x18($sp)
/* 011240 00411240 8FB2001C */  lw          $s2, 0x1C($sp)
/* 011244 00411244 8FB30020 */  lw          $s3, 0x20($sp)
/* 011248 00411248 8FB40024 */  lw          $s4, 0x24($sp)
/* 01124C 0041124C 8FB50028 */  lw          $s5, 0x28($sp)
/* 011250 00411250 8FB6002C */  lw          $s6, 0x2C($sp)
/* 011254 00411254 03E00008 */  jr          $ra
/* 011258 00411258 27BD0450 */   addiu      $sp, $sp, 0x450