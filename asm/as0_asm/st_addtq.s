/* Generated by spimdisasm 1.10.3 */

glabel st_addtq # 201
# _gp_disp: 0xFBFA134
.set noreorder; .cpload $t9; # .set reorder
/* 016998 00416998 8F998200 */  lw          $t9, %call16(st_paux_iaux)($gp)
/* 01699C 0041699C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0169A0 004169A0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 0169A4 004169A4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 0169A8 004169A8 0320F809 */  jalr        $t9
/* 0169AC 004169AC AFA50024 */   sw         $a1, 0x24($sp)
/* 0169B0 004169B0 944E0002 */  lhu         $t6, 0x2($v0)
/* 0169B4 004169B4 8FA50024 */  lw          $a1, 0x24($sp)
/* 0169B8 004169B8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0169BC 004169BC 000E7B02 */  srl         $t7, $t6, 12
/* 0169C0 004169C0 15E00007 */  bnez        $t7, .L004169E0
/* 0169C4 004169C4 30B8000F */   andi       $t8, $a1, 0xF
/* 0169C8 004169C8 90490002 */  lbu         $t1, 0x2($v0)
/* 0169CC 004169CC 0018C900 */  sll         $t9, $t8, 4
/* 0169D0 004169D0 312AFF0F */  andi        $t2, $t1, 0xFF0F
/* 0169D4 004169D4 032A5825 */  or          $t3, $t9, $t2
/* 0169D8 004169D8 1000002B */  b           .L00416A88
/* 0169DC 004169DC A04B0002 */   sb         $t3, 0x2($v0)
.L004169E0:
/* 0169E0 004169E0 90430002 */  lbu         $v1, 0x2($v0)
/* 0169E4 004169E4 30AE000F */  andi        $t6, $a1, 0xF
/* 0169E8 004169E8 306C000F */  andi        $t4, $v1, 0xF
/* 0169EC 004169EC 15800004 */  bnez        $t4, .L00416A00
/* 0169F0 004169F0 306FFFF0 */   andi       $t7, $v1, 0xFFF0
/* 0169F4 004169F4 01CFC025 */  or          $t8, $t6, $t7
/* 0169F8 004169F8 10000023 */  b           .L00416A88
/* 0169FC 004169FC A0580002 */   sb         $t8, 0x2($v0)
.L00416A00:
/* 016A00 00416A00 90430003 */  lbu         $v1, 0x3($v0)
/* 016A04 00416A04 00055100 */  sll         $t2, $a1, 4
/* 016A08 00416A08 0003C902 */  srl         $t9, $v1, 4
/* 016A0C 00416A0C 17200004 */  bnez        $t9, .L00416A20
/* 016A10 00416A10 306BFF0F */   andi       $t3, $v1, 0xFF0F
/* 016A14 00416A14 014B6025 */  or          $t4, $t2, $t3
/* 016A18 00416A18 1000001B */  b           .L00416A88
/* 016A1C 00416A1C A04C0003 */   sb         $t4, 0x3($v0)
.L00416A20:
/* 016A20 00416A20 8C4D0000 */  lw          $t5, 0x0($v0)
/* 016A24 00416A24 30B8000F */  andi        $t8, $a1, 0xF
/* 016A28 00416A28 31AE000F */  andi        $t6, $t5, 0xF
/* 016A2C 00416A2C 15C00005 */  bnez        $t6, .L00416A44
/* 016A30 00416A30 00000000 */   nop
/* 016A34 00416A34 3079FFF0 */  andi        $t9, $v1, 0xFFF0
/* 016A38 00416A38 03194825 */  or          $t1, $t8, $t9
/* 016A3C 00416A3C 10000012 */  b           .L00416A88
/* 016A40 00416A40 A0490003 */   sb         $t1, 0x3($v0)
.L00416A44:
/* 016A44 00416A44 90430001 */  lbu         $v1, 0x1($v0)
/* 016A48 00416A48 00056100 */  sll         $t4, $a1, 4
/* 016A4C 00416A4C 00034102 */  srl         $t0, $v1, 4
/* 016A50 00416A50 15000004 */  bnez        $t0, .L00416A64
/* 016A54 00416A54 306DFF0F */   andi       $t5, $v1, 0xFF0F
/* 016A58 00416A58 018D7025 */  or          $t6, $t4, $t5
/* 016A5C 00416A5C 1000000A */  b           .L00416A88
/* 016A60 00416A60 A04E0001 */   sb         $t6, 0x1($v0)
.L00416A64:
/* 016A64 00416A64 944F0000 */  lhu         $t7, 0x0($v0)
/* 016A68 00416A68 3068FFF0 */  andi        $t0, $v1, 0xFFF0
/* 016A6C 00416A6C 31F8000F */  andi        $t8, $t7, 0xF
/* 016A70 00416A70 17000006 */  bnez        $t8, .L00416A8C
/* 016A74 00416A74 8FBF001C */   lw         $ra, 0x1C($sp)
/* 016A78 00416A78 30B9000F */  andi        $t9, $a1, 0xF
/* 016A7C 00416A7C 3329000F */  andi        $t1, $t9, 0xF
/* 016A80 00416A80 01285025 */  or          $t2, $t1, $t0
/* 016A84 00416A84 A04A0001 */  sb          $t2, 0x1($v0)
.L00416A88:
/* 016A88 00416A88 8FBF001C */  lw          $ra, 0x1C($sp)
.L00416A8C:
/* 016A8C 00416A8C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016A90 00416A90 03E00008 */  jr          $ra
/* 016A94 00416A94 00000000 */   nop