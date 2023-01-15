.section .rodata
glabel STR_100083A0
/* 0273A0 100083A0 */ .asciz "st_fdadd: number of files (%d) exceeds max (%d)\n"
                      .balign 4

glabel STR_100083D4
/* 0273D4 100083D4 */ .asciz "st_fdadd: allocation botch (%d fds and %d cfds) in %s\n"
                      .balign 4

glabel STR_10008410
/* 027410 10008410 */ .asciz "</4Debug/>"
                      .balign 4

glabel STR_1000841C
/* 02741C 1000841C */ .asciz ":"
                      .balign 4

glabel STR_10008420
/* 027420 10008420 */ .asciz ":"
                      .balign 4

glabel STR_10008424
/* 027424 10008424 */ .asciz "st_fdadd: could not malloc path name!! %d\n"
                      .balign 4

glabel STR_10008450
/* 027450 10008450 */ .asciz "st_fdadd: could not malloc path name! %d\n"
                      .balign 4

glabel STR_1000847C
/* 02747C 1000847C */ .asciz "Cannot st_fdadd: cannot malloc %d bytes to hold file name\n"
                      .balign 4

glabel STR_100084B8
/* 0274B8 100084B8 */ .asciz "/"
                      .balign 4

glabel STR_100084BC
/* 0274BC 100084BC */ .asciz "%lu"
                      .balign 4

glabel STR_100084C0
/* 0274C0 100084C0 */ .asciz "-1"
                      .balign 4

glabel STR_100084C4
/* 0274C4 100084C4 */ .asciz "%lu"
                      .balign 4


.section .text
/* Generated by spimdisasm 1.10.3 */

glabel st_fdadd # 212
# _gp_disp: 0xFBF9BF8
.set noreorder; .cpload $t9; # .set reorder
/* 016ED4 00416ED4 27BDFF10 */  addiu       $sp, $sp, -0xF0
/* 016ED8 00416ED8 8F8A83CC */  lw          $t2, %got(st_pchdr)($gp)
/* 016EDC 00416EDC AFBF001C */  sw          $ra, 0x1C($sp)
/* 016EE0 00416EE0 8D480000 */  lw          $t0, 0x0($t2)
/* 016EE4 00416EE4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 016EE8 00416EE8 AFA400F0 */  sw          $a0, 0xF0($sp)
/* 016EEC 00416EEC AFA500F4 */  sw          $a1, 0xF4($sp)
/* 016EF0 00416EF0 AFA600F8 */  sw          $a2, 0xF8($sp)
/* 016EF4 00416EF4 AFA700FC */  sw          $a3, 0xFC($sp)
/* 016EF8 00416EF8 8D0E000C */  lw          $t6, 0xC($t0)
/* 016EFC 00416EFC 3C017FFF */  lui         $at, (0x7FFFFFFF >> 16)
/* 016F00 00416F00 3421FFFF */  ori         $at, $at, (0x7FFFFFFF & 0xFFFF)
/* 016F04 00416F04 01C1082A */  slt         $at, $t6, $at
/* 016F08 00416F08 14200011 */  bnez        $at, .L00416F50
/* 016F0C 00416F0C AFAE0028 */   sw         $t6, 0x28($sp)
/* 016F10 00416F10 8F848054 */  lw          $a0, %got(STR_100083A0)($gp)
/* 016F14 00416F14 8F9981B0 */  lw          $t9, %call16(st_error)($gp)
/* 016F18 00416F18 3C067FFF */  lui         $a2, (0x7FFFFFFF >> 16)
/* 016F1C 00416F1C 34C6FFFF */  ori         $a2, $a2, (0x7FFFFFFF & 0xFFFF)
/* 016F20 00416F20 01C02825 */  move        $a1, $t6
/* 016F24 00416F24 0320F809 */  jalr        $t9
/* 016F28 00416F28 248483A0 */   addiu      $a0, $a0, %lo(STR_100083A0)
/* 016F2C 00416F2C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 016F30 00416F30 00000000 */  nop
/* 016F34 00416F34 8F8A83CC */  lw          $t2, %got(st_pchdr)($gp)
/* 016F38 00416F38 00000000 */  nop
/* 016F3C 00416F3C 8D480000 */  lw          $t0, 0x0($t2)
/* 016F40 00416F40 00000000 */  nop
/* 016F44 00416F44 8D18000C */  lw          $t8, 0xC($t0)
/* 016F48 00416F48 00000000 */  nop
/* 016F4C 00416F4C AFB80028 */  sw          $t8, 0x28($sp)
.L00416F50:
/* 016F50 00416F50 8D020010 */  lw          $v0, 0x10($t0)
/* 016F54 00416F54 8FB90028 */  lw          $t9, 0x28($sp)
/* 016F58 00416F58 25050010 */  addiu       $a1, $t0, 0x10
/* 016F5C 00416F5C 0322082A */  slt         $at, $t9, $v0
/* 016F60 00416F60 1420003B */  bnez        $at, .L00417050
/* 016F64 00416F64 24060040 */   addiu      $a2, $zero, 0x40
/* 016F68 00416F68 8F998268 */  lw          $t9, %call16(st_malloc)($gp)
/* 016F6C 00416F6C AFA200EC */  sw          $v0, 0xEC($sp)
/* 016F70 00416F70 8D040004 */  lw          $a0, 0x4($t0)
/* 016F74 00416F74 AFA200E8 */  sw          $v0, 0xE8($sp)
/* 016F78 00416F78 0320F809 */  jalr        $t9
/* 016F7C 00416F7C 24070019 */   addiu      $a3, $zero, 0x19
/* 016F80 00416F80 8FBC0018 */  lw          $gp, 0x18($sp)
/* 016F84 00416F84 27A500EC */  addiu       $a1, $sp, 0xEC
/* 016F88 00416F88 8F8A83CC */  lw          $t2, %got(st_pchdr)($gp)
/* 016F8C 00416F8C 24060048 */  addiu       $a2, $zero, 0x48
/* 016F90 00416F90 8D4B0000 */  lw          $t3, 0x0($t2)
/* 016F94 00416F94 24070019 */  addiu       $a3, $zero, 0x19
/* 016F98 00416F98 AD620004 */  sw          $v0, 0x4($t3)
/* 016F9C 00416F9C 8D4C0000 */  lw          $t4, 0x0($t2)
/* 016FA0 00416FA0 8F998268 */  lw          $t9, %call16(st_malloc)($gp)
/* 016FA4 00416FA4 8D840008 */  lw          $a0, 0x8($t4)
/* 016FA8 00416FA8 0320F809 */  jalr        $t9
/* 016FAC 00416FAC 00000000 */   nop
/* 016FB0 00416FB0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 016FB4 00416FB4 8FA900E8 */  lw          $t1, 0xE8($sp)
/* 016FB8 00416FB8 8F8A83CC */  lw          $t2, %got(st_pchdr)($gp)
/* 016FBC 00416FBC 00000000 */  nop
/* 016FC0 00416FC0 8D4D0000 */  lw          $t5, 0x0($t2)
/* 016FC4 00416FC4 00000000 */  nop
/* 016FC8 00416FC8 ADA20008 */  sw          $v0, 0x8($t5)
/* 016FCC 00416FCC 8D4E0000 */  lw          $t6, 0x0($t2)
/* 016FD0 00416FD0 8FAF00EC */  lw          $t7, 0xEC($sp)
/* 016FD4 00416FD4 8DC60010 */  lw          $a2, 0x10($t6)
/* 016FD8 00416FD8 8FA700F0 */  lw          $a3, 0xF0($sp)
/* 016FDC 00416FDC 11E6000A */  beq         $t7, $a2, .L00417008
/* 016FE0 00416FE0 01E02825 */   move       $a1, $t7
/* 016FE4 00416FE4 8F848054 */  lw          $a0, %got(STR_100083D4)($gp)
/* 016FE8 00416FE8 8F9981B8 */  lw          $t9, %call16(st_internal)($gp)
/* 016FEC 00416FEC AFA900E8 */  sw          $t1, 0xE8($sp)
/* 016FF0 00416FF0 0320F809 */  jalr        $t9
/* 016FF4 00416FF4 248483D4 */   addiu      $a0, $a0, %lo(STR_100083D4)
/* 016FF8 00416FF8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 016FFC 00416FFC 8FA900E8 */  lw          $t1, 0xE8($sp)
/* 017000 00417000 8F8A83CC */  lw          $t2, %got(st_pchdr)($gp)
/* 017004 00417004 00000000 */  nop
.L00417008:
/* 017008 00417008 01202025 */  move        $a0, $t1
/* 01700C 0041700C 11200010 */  beqz        $t1, .L00417050
/* 017010 00417010 2529FFFF */   addiu      $t1, $t1, -0x1
/* 017014 00417014 000918C0 */  sll         $v1, $t1, 3
/* 017018 00417018 00691821 */  addu        $v1, $v1, $t1
/* 01701C 0041701C 000318C0 */  sll         $v1, $v1, 3
/* 017020 00417020 00091180 */  sll         $v0, $t1, 6
.L00417024:
/* 017024 00417024 8D480000 */  lw          $t0, 0x0($t2)
/* 017028 00417028 01202025 */  move        $a0, $t1
/* 01702C 0041702C 8D180008 */  lw          $t8, 0x8($t0)
/* 017030 00417030 8D0B0004 */  lw          $t3, 0x4($t0)
/* 017034 00417034 0303C821 */  addu        $t9, $t8, $v1
/* 017038 00417038 01626021 */  addu        $t4, $t3, $v0
/* 01703C 0041703C AD990000 */  sw          $t9, 0x0($t4)
/* 017040 00417040 2442FFC0 */  addiu       $v0, $v0, -0x40
/* 017044 00417044 2463FFB8 */  addiu       $v1, $v1, -0x48
/* 017048 00417048 1520FFF6 */  bnez        $t1, .L00417024
/* 01704C 0041704C 2529FFFF */   addiu      $t1, $t1, -0x1
.L00417050:
/* 017050 00417050 8D480000 */  lw          $t0, 0x0($t2)
/* 017054 00417054 8F998064 */  lw          $t9, %got(B_1000A888)($gp)
/* 017058 00417058 8D0E000C */  lw          $t6, 0xC($t0)
/* 01705C 0041705C 8D0D0004 */  lw          $t5, 0x4($t0)
/* 017060 00417060 8F8583D0 */  lw          $a1, %got(pcfdcur)($gp)
/* 017064 00417064 000E7980 */  sll         $t7, $t6, 6
/* 017068 00417068 2739A888 */  addiu       $t9, $t9, %lo(B_1000A888)
/* 01706C 0041706C 01AF5821 */  addu        $t3, $t5, $t7
/* 017070 00417070 272E003C */  addiu       $t6, $t9, 0x3C
/* 017074 00417074 ACAB0000 */  sw          $t3, 0x0($a1)
.L00417078:
/* 017078 00417078 8F210000 */  lw          $at, 0x0($t9)
/* 01707C 0041707C 2739000C */  addiu       $t9, $t9, 0xC
/* 017080 00417080 AD610000 */  sw          $at, 0x0($t3)
/* 017084 00417084 8F21FFF8 */  lw          $at, -0x8($t9)
/* 017088 00417088 256B000C */  addiu       $t3, $t3, 0xC
/* 01708C 0041708C AD61FFF8 */  sw          $at, -0x8($t3)
/* 017090 00417090 8F21FFFC */  lw          $at, -0x4($t9)
/* 017094 00417094 172EFFF8 */  bne         $t9, $t6, .L00417078
/* 017098 00417098 AD61FFFC */   sw         $at, -0x4($t3)
/* 01709C 0041709C 8F210000 */  lw          $at, 0x0($t9)
/* 0170A0 004170A0 00000000 */  nop
/* 0170A4 004170A4 AD610000 */  sw          $at, 0x0($t3)
/* 0170A8 004170A8 8D480000 */  lw          $t0, 0x0($t2)
/* 0170AC 004170AC 8CAE0000 */  lw          $t6, 0x0($a1)
/* 0170B0 004170B0 8D0D000C */  lw          $t5, 0xC($t0)
/* 0170B4 004170B4 8D180008 */  lw          $t8, 0x8($t0)
/* 0170B8 004170B8 000D78C0 */  sll         $t7, $t5, 3
/* 0170BC 004170BC 01ED7821 */  addu        $t7, $t7, $t5
/* 0170C0 004170C0 000F78C0 */  sll         $t7, $t7, 3
/* 0170C4 004170C4 01F86021 */  addu        $t4, $t7, $t8
/* 0170C8 004170C8 ADCC0000 */  sw          $t4, 0x0($t6)
/* 0170CC 004170CC 8D480000 */  lw          $t0, 0x0($t2)
/* 0170D0 004170D0 8F988064 */  lw          $t8, %got(B_1000A840)($gp)
/* 0170D4 004170D4 8D19000C */  lw          $t9, 0xC($t0)
/* 0170D8 004170D8 2718A840 */  addiu       $t8, $t8, %lo(B_1000A840)
/* 0170DC 004170DC 272B0001 */  addiu       $t3, $t9, 0x1
/* 0170E0 004170E0 AD0B000C */  sw          $t3, 0xC($t0)
/* 0170E4 004170E4 8CAD0000 */  lw          $t5, 0x0($a1)
/* 0170E8 004170E8 270E0048 */  addiu       $t6, $t8, 0x48
/* 0170EC 004170EC 8DAF0000 */  lw          $t7, 0x0($t5)
/* 0170F0 004170F0 00000000 */  nop
.L004170F4:
/* 0170F4 004170F4 8F010000 */  lw          $at, 0x0($t8)
/* 0170F8 004170F8 2718000C */  addiu       $t8, $t8, 0xC
/* 0170FC 004170FC ADE10000 */  sw          $at, 0x0($t7)
/* 017100 00417100 8F01FFF8 */  lw          $at, -0x8($t8)
/* 017104 00417104 25EF000C */  addiu       $t7, $t7, 0xC
/* 017108 00417108 ADE1FFF8 */  sw          $at, -0x8($t7)
/* 01710C 0041710C 8F01FFFC */  lw          $at, -0x4($t8)
/* 017110 00417110 170EFFF8 */  bne         $t8, $t6, .L004170F4
/* 017114 00417114 ADE1FFFC */   sw         $at, -0x4($t7)
/* 017118 00417118 8CB90000 */  lw          $t9, 0x0($a1)
/* 01711C 0041711C 8FAD00F4 */  lw          $t5, 0xF4($sp)
/* 017120 00417120 8F230000 */  lw          $v1, 0x0($t9)
/* 017124 00417124 000D70C0 */  sll         $t6, $t5, 3
/* 017128 00417128 9078003C */  lbu         $t8, 0x3C($v1)
/* 01712C 0041712C 00000000 */  nop
/* 017130 00417130 330FFF07 */  andi        $t7, $t8, 0xFF07
/* 017134 00417134 01CFC825 */  or          $t9, $t6, $t7
/* 017138 00417138 A079003C */  sb          $t9, 0x3C($v1)
/* 01713C 0041713C 8CAB0000 */  lw          $t3, 0x0($a1)
/* 017140 00417140 8FAC00F8 */  lw          $t4, 0xF8($sp)
/* 017144 00417144 8D630000 */  lw          $v1, 0x0($t3)
/* 017148 00417148 000CC080 */  sll         $t8, $t4, 2
/* 01714C 0041714C 906F003C */  lbu         $t7, 0x3C($v1)
/* 017150 00417150 330E0004 */  andi        $t6, $t8, 0x4
/* 017154 00417154 31F9FFFB */  andi        $t9, $t7, 0xFFFB
/* 017158 00417158 01D95825 */  or          $t3, $t6, $t9
/* 01715C 0041715C A06B003C */  sb          $t3, 0x3C($v1)
/* 017160 00417160 8CAD0000 */  lw          $t5, 0x0($a1)
/* 017164 00417164 8FB800FC */  lw          $t8, 0xFC($sp)
/* 017168 00417168 8DA30000 */  lw          $v1, 0x0($t5)
/* 01716C 0041716C 00187180 */  sll         $t6, $t8, 6
/* 017170 00417170 9079003D */  lbu         $t9, 0x3D($v1)
/* 017174 00417174 00000000 */  nop
/* 017178 00417178 332BFF3F */  andi        $t3, $t9, 0xFF3F
/* 01717C 0041717C 01CB6825 */  or          $t5, $t6, $t3
/* 017180 00417180 A06D003D */  sb          $t5, 0x3D($v1)
/* 017184 00417184 8F99828C */  lw          $t9, %call16(gethostsex)($gp)
/* 017188 00417188 00000000 */  nop
/* 01718C 0041718C 0320F809 */  jalr        $t9
/* 017190 00417190 00000000 */   nop
/* 017194 00417194 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017198 00417198 2C4F0001 */  sltiu       $t7, $v0, 0x1
/* 01719C 0041719C 8F8583D0 */  lw          $a1, %got(pcfdcur)($gp)
/* 0171A0 004171A0 31F90001 */  andi        $t9, $t7, 0x1
/* 0171A4 004171A4 8CAC0000 */  lw          $t4, 0x0($a1)
/* 0171A8 004171A8 8F848054 */  lw          $a0, %got(RO_1000840C)($gp)
/* 0171AC 004171AC 8D830000 */  lw          $v1, 0x0($t4)
/* 0171B0 004171B0 2484840C */  addiu       $a0, $a0, %lo(RO_1000840C)
/* 0171B4 004171B4 906E003C */  lbu         $t6, 0x3C($v1)
/* 0171B8 004171B8 00000000 */  nop
/* 0171BC 004171BC 31CBFFFE */  andi        $t3, $t6, 0xFFFE
/* 0171C0 004171C0 032B6825 */  or          $t5, $t9, $t3
/* 0171C4 004171C4 A06D003C */  sb          $t5, 0x3C($v1)
/* 0171C8 004171C8 8F998260 */  lw          $t9, %call16(st_stradd)($gp)
/* 0171CC 004171CC 00000000 */  nop
/* 0171D0 004171D0 0320F809 */  jalr        $t9
/* 0171D4 004171D4 00000000 */   nop
/* 0171D8 004171D8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0171DC 004171DC 8FA400F0 */  lw          $a0, 0xF0($sp)
/* 0171E0 004171E0 8F998260 */  lw          $t9, %call16(st_stradd)($gp)
/* 0171E4 004171E4 00000000 */  nop
/* 0171E8 004171E8 0320F809 */  jalr        $t9
/* 0171EC 004171EC 00000000 */   nop
/* 0171F0 004171F0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0171F4 004171F4 00000000 */  nop
/* 0171F8 004171F8 8F8583D0 */  lw          $a1, %got(pcfdcur)($gp)
/* 0171FC 004171FC 8F8F8304 */  lw          $t7, %got(__sgi_common_dummy_file)($gp)
/* 017200 00417200 8CAC0000 */  lw          $t4, 0x0($a1)
/* 017204 00417204 00000000 */  nop
/* 017208 00417208 8D980000 */  lw          $t8, 0x0($t4)
/* 01720C 0041720C 00000000 */  nop
/* 017210 00417210 AF020004 */  sw          $v0, 0x4($t8)
/* 017214 00417214 8DEF0000 */  lw          $t7, 0x0($t7)
/* 017218 00417218 8FAE00FC */  lw          $t6, 0xFC($sp)
/* 01721C 0041721C 15E000EA */  bnez        $t7, .L004175C8
/* 017220 00417220 8FBF001C */   lw         $ra, 0x1C($sp)
/* 017224 00417224 11C00003 */  beqz        $t6, .L00417234
/* 017228 00417228 29C10003 */   slti       $at, $t6, 0x3
/* 01722C 0041722C 142000E6 */  bnez        $at, .L004175C8
/* 017230 00417230 8FBF001C */   lw         $ra, 0x1C($sp)
.L00417234:
/* 017234 00417234 8F848054 */  lw          $a0, %got(STR_10008410)($gp)
/* 017238 00417238 8F998260 */  lw          $t9, %call16(st_stradd)($gp)
/* 01723C 0041723C 24848410 */  addiu       $a0, $a0, %lo(STR_10008410)
/* 017240 00417240 0320F809 */  jalr        $t9
/* 017244 00417244 00000000 */   nop
/* 017248 00417248 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01724C 0041724C 240B0001 */  addiu       $t3, $zero, 0x1
/* 017250 00417250 8F998060 */  lw          $t9, %got(D_1000143C)($gp)
/* 017254 00417254 24050040 */  addiu       $a1, $zero, 0x40
/* 017258 00417258 8339143C */  lb          $t9, %lo(D_1000143C)($t9)
/* 01725C 0041725C 00000000 */  nop
/* 017260 00417260 17200061 */  bnez        $t9, .L004173E8
/* 017264 00417264 8FAC00F0 */   lw         $t4, 0xF0($sp)
/* 017268 00417268 8F818060 */  lw          $at, %got(D_1000143C)($gp)
/* 01726C 0041726C 8F848064 */  lw          $a0, %got(B_1000A8C8)($gp)
/* 017270 00417270 8F99812C */  lw          $t9, %call16(gethostname)($gp)
/* 017274 00417274 A02B143C */  sb          $t3, %lo(D_1000143C)($at)
/* 017278 00417278 0320F809 */  jalr        $t9
/* 01727C 0041727C 2484A8C8 */   addiu      $a0, $a0, %lo(B_1000A8C8)
/* 017280 00417280 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017284 00417284 0441000A */  bgez        $v0, .L004172B0
/* 017288 00417288 00000000 */   nop
/* 01728C 0041728C 8F848064 */  lw          $a0, %got(B_1000A8C8)($gp)
/* 017290 00417290 8F858054 */  lw          $a1, %got(STR_1000841C)($gp)
/* 017294 00417294 8F998104 */  lw          $t9, %call16(strcpy)($gp)
/* 017298 00417298 2484A8C8 */  addiu       $a0, $a0, %lo(B_1000A8C8)
/* 01729C 0041729C 0320F809 */  jalr        $t9
/* 0172A0 004172A0 24A5841C */   addiu      $a1, $a1, %lo(STR_1000841C)
/* 0172A4 004172A4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0172A8 004172A8 10000009 */  b           .L004172D0
/* 0172AC 004172AC 00000000 */   nop
.L004172B0:
/* 0172B0 004172B0 8F848064 */  lw          $a0, %got(B_1000A8C8)($gp)
/* 0172B4 004172B4 8F858054 */  lw          $a1, %got(STR_10008420)($gp)
/* 0172B8 004172B8 8F998108 */  lw          $t9, %call16(strcat)($gp)
/* 0172BC 004172BC 2484A8C8 */  addiu       $a0, $a0, %lo(B_1000A8C8)
/* 0172C0 004172C0 0320F809 */  jalr        $t9
/* 0172C4 004172C4 24A58420 */   addiu      $a1, $a1, %lo(STR_10008420)
/* 0172C8 004172C8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0172CC 004172CC 00000000 */  nop
.L004172D0:
/* 0172D0 004172D0 8F998114 */  lw          $t9, %call16(pathconf)($gp)
/* 0172D4 004172D4 8FA400F0 */  lw          $a0, 0xF0($sp)
/* 0172D8 004172D8 0320F809 */  jalr        $t9
/* 0172DC 004172DC 24050005 */   addiu      $a1, $zero, 0x5
/* 0172E0 004172E0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0172E4 004172E4 28410005 */  slti        $at, $v0, 0x5
/* 0172E8 004172E8 10200002 */  beqz        $at, .L004172F4
/* 0172EC 004172EC 00401825 */   move       $v1, $v0
/* 0172F0 004172F0 24030005 */  addiu       $v1, $zero, 0x5
.L004172F4:
/* 0172F4 004172F4 00036880 */  sll         $t5, $v1, 2
/* 0172F8 004172F8 000D1080 */  sll         $v0, $t5, 2
/* 0172FC 004172FC 8F9980DC */  lw          $t9, %call16(malloc)($gp)
/* 017300 00417300 004D1023 */  subu        $v0, $v0, $t5
/* 017304 00417304 2442000A */  addiu       $v0, $v0, 0xA
/* 017308 00417308 00402025 */  move        $a0, $v0
/* 01730C 0041730C AFA2002C */  sw          $v0, 0x2C($sp)
/* 017310 00417310 0320F809 */  jalr        $t9
/* 017314 00417314 AFAD00E4 */   sw         $t5, 0xE4($sp)
/* 017318 00417318 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01731C 0041731C 8FA300E4 */  lw          $v1, 0xE4($sp)
/* 017320 00417320 8F818064 */  lw          $at, %got(B_1000A910)($gp)
/* 017324 00417324 1440000A */  bnez        $v0, .L00417350
/* 017328 00417328 AC22A910 */   sw         $v0, %lo(B_1000A910)($at)
/* 01732C 0041732C 8F848054 */  lw          $a0, %got(STR_10008424)($gp)
/* 017330 00417330 8F9981B8 */  lw          $t9, %call16(st_internal)($gp)
/* 017334 00417334 8FA5002C */  lw          $a1, 0x2C($sp)
/* 017338 00417338 AFA300E4 */  sw          $v1, 0xE4($sp)
/* 01733C 0041733C 0320F809 */  jalr        $t9
/* 017340 00417340 24848424 */   addiu      $a0, $a0, %lo(STR_10008424)
/* 017344 00417344 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017348 00417348 8FA300E4 */  lw          $v1, 0xE4($sp)
/* 01734C 0041734C 00000000 */  nop
.L00417350:
/* 017350 00417350 8F9980D8 */  lw          $t9, %call16(getcwd)($gp)
/* 017354 00417354 8FA5002C */  lw          $a1, 0x2C($sp)
/* 017358 00417358 00002025 */  move        $a0, $zero
/* 01735C 0041735C 0320F809 */  jalr        $t9
/* 017360 00417360 AFA300E4 */   sw         $v1, 0xE4($sp)
/* 017364 00417364 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017368 00417368 8FA300E4 */  lw          $v1, 0xE4($sp)
/* 01736C 0041736C 8F818064 */  lw          $at, %got(B_1000A914)($gp)
/* 017370 00417370 1440000A */  bnez        $v0, .L0041739C
/* 017374 00417374 AC22A914 */   sw         $v0, %lo(B_1000A914)($at)
/* 017378 00417378 8F848054 */  lw          $a0, %got(STR_10008450)($gp)
/* 01737C 0041737C 8F9981B8 */  lw          $t9, %call16(st_internal)($gp)
/* 017380 00417380 8FA5002C */  lw          $a1, 0x2C($sp)
/* 017384 00417384 AFA300E4 */  sw          $v1, 0xE4($sp)
/* 017388 00417388 0320F809 */  jalr        $t9
/* 01738C 0041738C 24848450 */   addiu      $a0, $a0, %lo(STR_10008450)
/* 017390 00417390 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017394 00417394 8FA300E4 */  lw          $v1, 0xE4($sp)
/* 017398 00417398 00000000 */  nop
.L0041739C:
/* 01739C 0041739C 8F9980DC */  lw          $t9, %call16(malloc)($gp)
/* 0173A0 004173A0 00032880 */  sll         $a1, $v1, 2
/* 0173A4 004173A4 24A5000A */  addiu       $a1, $a1, 0xA
/* 0173A8 004173A8 00A02025 */  move        $a0, $a1
/* 0173AC 004173AC 0320F809 */  jalr        $t9
/* 0173B0 004173B0 AFA5002C */   sw         $a1, 0x2C($sp)
/* 0173B4 004173B4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0173B8 004173B8 8FA5002C */  lw          $a1, 0x2C($sp)
/* 0173BC 004173BC 8F818064 */  lw          $at, %got(B_1000A90C)($gp)
/* 0173C0 004173C0 14400008 */  bnez        $v0, .L004173E4
/* 0173C4 004173C4 AC22A90C */   sw         $v0, %lo(B_1000A90C)($at)
/* 0173C8 004173C8 8F848054 */  lw          $a0, %got(STR_1000847C)($gp)
/* 0173CC 004173CC 8F9981B8 */  lw          $t9, %call16(st_internal)($gp)
/* 0173D0 004173D0 2484847C */  addiu       $a0, $a0, %lo(STR_1000847C)
/* 0173D4 004173D4 0320F809 */  jalr        $t9
/* 0173D8 004173D8 00000000 */   nop
/* 0173DC 004173DC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0173E0 004173E0 00000000 */  nop
.L004173E4:
/* 0173E4 004173E4 8FAC00F0 */  lw          $t4, 0xF0($sp)
.L004173E8:
/* 0173E8 004173E8 2401002F */  addiu       $at, $zero, 0x2F
/* 0173EC 004173EC 81980000 */  lb          $t8, 0x0($t4)
/* 0173F0 004173F0 8FA500F0 */  lw          $a1, 0xF0($sp)
/* 0173F4 004173F4 1301001A */  beq         $t8, $at, .L00417460
/* 0173F8 004173F8 00000000 */   nop
/* 0173FC 004173FC 8F848064 */  lw          $a0, %got(B_1000A910)($gp)
/* 017400 00417400 8F858064 */  lw          $a1, %got(B_1000A914)($gp)
/* 017404 00417404 8F998104 */  lw          $t9, %call16(strcpy)($gp)
/* 017408 00417408 8C84A910 */  lw          $a0, %lo(B_1000A910)($a0)
/* 01740C 0041740C 8CA5A914 */  lw          $a1, %lo(B_1000A914)($a1)
/* 017410 00417410 0320F809 */  jalr        $t9
/* 017414 00417414 00000000 */   nop
/* 017418 00417418 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01741C 0041741C 00000000 */  nop
/* 017420 00417420 8F848064 */  lw          $a0, %got(B_1000A910)($gp)
/* 017424 00417424 8F858054 */  lw          $a1, %got(STR_100084B8)($gp)
/* 017428 00417428 8F998108 */  lw          $t9, %call16(strcat)($gp)
/* 01742C 0041742C 8C84A910 */  lw          $a0, %lo(B_1000A910)($a0)
/* 017430 00417430 0320F809 */  jalr        $t9
/* 017434 00417434 24A584B8 */   addiu      $a1, $a1, %lo(STR_100084B8)
/* 017438 00417438 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01743C 0041743C 8FA500F0 */  lw          $a1, 0xF0($sp)
/* 017440 00417440 8F848064 */  lw          $a0, %got(B_1000A910)($gp)
/* 017444 00417444 8F998108 */  lw          $t9, %call16(strcat)($gp)
/* 017448 00417448 8C84A910 */  lw          $a0, %lo(B_1000A910)($a0)
/* 01744C 0041744C 0320F809 */  jalr        $t9
/* 017450 00417450 00000000 */   nop
/* 017454 00417454 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017458 00417458 10000008 */  b           .L0041747C
/* 01745C 0041745C 00000000 */   nop
.L00417460:
/* 017460 00417460 8F848064 */  lw          $a0, %got(B_1000A910)($gp)
/* 017464 00417464 8F998104 */  lw          $t9, %call16(strcpy)($gp)
/* 017468 00417468 8C84A910 */  lw          $a0, %lo(B_1000A910)($a0)
/* 01746C 0041746C 0320F809 */  jalr        $t9
/* 017470 00417470 00000000 */   nop
/* 017474 00417474 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017478 00417478 00000000 */  nop
.L0041747C:
/* 01747C 0041747C 8F848064 */  lw          $a0, %got(B_1000A90C)($gp)
/* 017480 00417480 8F858064 */  lw          $a1, %got(B_1000A8C8)($gp)
/* 017484 00417484 8F998104 */  lw          $t9, %call16(strcpy)($gp)
/* 017488 00417488 8C84A90C */  lw          $a0, %lo(B_1000A90C)($a0)
/* 01748C 0041748C 0320F809 */  jalr        $t9
/* 017490 00417490 24A5A8C8 */   addiu      $a1, $a1, %lo(B_1000A8C8)
/* 017494 00417494 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017498 00417498 00000000 */  nop
/* 01749C 0041749C 8F848064 */  lw          $a0, %got(B_1000A90C)($gp)
/* 0174A0 004174A0 8F858064 */  lw          $a1, %got(B_1000A910)($gp)
/* 0174A4 004174A4 8F998108 */  lw          $t9, %call16(strcat)($gp)
/* 0174A8 004174A8 8C84A90C */  lw          $a0, %lo(B_1000A90C)($a0)
/* 0174AC 004174AC 8CA5A910 */  lw          $a1, %lo(B_1000A910)($a1)
/* 0174B0 004174B0 0320F809 */  jalr        $t9
/* 0174B4 004174B4 00000000 */   nop
/* 0174B8 004174B8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0174BC 004174BC 00000000 */  nop
/* 0174C0 004174C0 8F848064 */  lw          $a0, %got(B_1000A90C)($gp)
/* 0174C4 004174C4 8F998260 */  lw          $t9, %call16(st_stradd)($gp)
/* 0174C8 004174C8 8C84A90C */  lw          $a0, %lo(B_1000A90C)($a0)
/* 0174CC 004174CC 0320F809 */  jalr        $t9
/* 0174D0 004174D0 00000000 */   nop
/* 0174D4 004174D4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0174D8 004174D8 240E0001 */  addiu       $t6, $zero, 0x1
/* 0174DC 004174DC 8F8F8060 */  lw          $t7, %got(D_10001440)($gp)
/* 0174E0 004174E0 00000000 */  nop
/* 0174E4 004174E4 8DEF1440 */  lw          $t7, %lo(D_10001440)($t7)
/* 0174E8 004174E8 00000000 */  nop
/* 0174EC 004174EC 15E00012 */  bnez        $t7, .L00417538
/* 0174F0 004174F0 00000000 */   nop
/* 0174F4 004174F4 8F818060 */  lw          $at, %got(D_10001440)($gp)
/* 0174F8 004174F8 8F998118 */  lw          $t9, %call16(time)($gp)
/* 0174FC 004174FC 00002025 */  move        $a0, $zero
/* 017500 00417500 0320F809 */  jalr        $t9
/* 017504 00417504 AC2E1440 */   sw         $t6, %lo(D_10001440)($at)
/* 017508 00417508 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01750C 0041750C 00403025 */  move        $a2, $v0
/* 017510 00417510 8F818064 */  lw          $at, %got(B_1000A938)($gp)
/* 017514 00417514 8F848064 */  lw          $a0, %got(B_1000A918)($gp)
/* 017518 00417518 8F858054 */  lw          $a1, %got(STR_100084BC)($gp)
/* 01751C 0041751C 8F9980EC */  lw          $t9, %call16(sprintf)($gp)
/* 017520 00417520 AC22A938 */  sw          $v0, %lo(B_1000A938)($at)
/* 017524 00417524 2484A918 */  addiu       $a0, $a0, %lo(B_1000A918)
/* 017528 00417528 0320F809 */  jalr        $t9
/* 01752C 0041752C 24A584BC */   addiu      $a1, $a1, %lo(STR_100084BC)
/* 017530 00417530 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017534 00417534 00000000 */  nop
.L00417538:
/* 017538 00417538 8F848064 */  lw          $a0, %got(B_1000A918)($gp)
/* 01753C 0041753C 8F998260 */  lw          $t9, %call16(st_stradd)($gp)
/* 017540 00417540 2484A918 */  addiu       $a0, $a0, %lo(B_1000A918)
/* 017544 00417544 0320F809 */  jalr        $t9
/* 017548 00417548 00000000 */   nop
/* 01754C 0041754C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017550 00417550 8FA400F0 */  lw          $a0, 0xF0($sp)
/* 017554 00417554 8F99810C */  lw          $t9, %call16(stat)($gp)
/* 017558 00417558 27A50038 */  addiu       $a1, $sp, 0x38
/* 01755C 0041755C 0320F809 */  jalr        $t9
/* 017560 00417560 00000000 */   nop
/* 017564 00417564 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017568 00417568 04410009 */  bgez        $v0, .L00417590
/* 01756C 0041756C 27A400C0 */   addiu      $a0, $sp, 0xC0
/* 017570 00417570 8F848054 */  lw          $a0, %got(STR_100084C0)($gp)
/* 017574 00417574 8F998260 */  lw          $t9, %call16(st_stradd)($gp)
/* 017578 00417578 248484C0 */  addiu       $a0, $a0, %lo(STR_100084C0)
/* 01757C 0041757C 0320F809 */  jalr        $t9
/* 017580 00417580 00000000 */   nop
/* 017584 00417584 8FBC0018 */  lw          $gp, 0x18($sp)
/* 017588 00417588 1000000F */  b           .L004175C8
/* 01758C 0041758C 8FBF001C */   lw         $ra, 0x1C($sp)
.L00417590:
/* 017590 00417590 8F858054 */  lw          $a1, %got(STR_100084C4)($gp)
/* 017594 00417594 8F9980EC */  lw          $t9, %call16(sprintf)($gp)
/* 017598 00417598 8FA60068 */  lw          $a2, 0x68($sp)
/* 01759C 0041759C 0320F809 */  jalr        $t9
/* 0175A0 004175A0 24A584C4 */   addiu      $a1, $a1, %lo(STR_100084C4)
/* 0175A4 004175A4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0175A8 004175A8 27A400C0 */  addiu       $a0, $sp, 0xC0
/* 0175AC 004175AC 8F998260 */  lw          $t9, %call16(st_stradd)($gp)
/* 0175B0 004175B0 00000000 */  nop
/* 0175B4 004175B4 0320F809 */  jalr        $t9
/* 0175B8 004175B8 00000000 */   nop
/* 0175BC 004175BC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0175C0 004175C0 00000000 */  nop
/* 0175C4 004175C4 8FBF001C */  lw          $ra, 0x1C($sp)
.L004175C8:
/* 0175C8 004175C8 27BD00F0 */  addiu       $sp, $sp, 0xF0
/* 0175CC 004175CC 03E00008 */  jr          $ra
/* 0175D0 004175D0 00000000 */   nop