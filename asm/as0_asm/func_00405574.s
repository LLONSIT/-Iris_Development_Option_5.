/* Generated by spimdisasm 1.10.3 */

glabel func_00405574 # 13
# _gp_disp: 0xFC0B54C
.set noreorder; .cpload $t9; # .set reorder
/* 005580 00405580 8F838340 */  lw          $v1, %got(StructOrg)($gp)
/* 005584 00405584 240F0001 */  addiu       $t7, $zero, 0x1
/* 005588 00405588 8C6E0000 */  lw          $t6, 0x0($v1)
/* 00558C 0040558C 008FC004 */  sllv        $t8, $t7, $a0
/* 005590 00405590 8F858344 */  lw          $a1, %got(LastLabel)($gp)
/* 005594 00405594 01D8C821 */  addu        $t9, $t6, $t8
/* 005598 00405598 2728FFFF */  addiu       $t0, $t9, -0x1
/* 00559C 0040559C 8CA20000 */  lw          $v0, 0x0($a1)
/* 0055A0 004055A0 00884807 */  srav        $t1, $t0, $a0
/* 0055A4 004055A4 00895004 */  sllv        $t2, $t1, $a0
/* 0055A8 004055A8 10400008 */  beqz        $v0, .L004055CC
/* 0055AC 004055AC AC6A0000 */   sw         $t2, 0x0($v1)
.L004055B0:
/* 0055B0 004055B0 8C6B0000 */  lw          $t3, 0x0($v1)
/* 0055B4 004055B4 00000000 */  nop
/* 0055B8 004055B8 AC4B0008 */  sw          $t3, 0x8($v0)
/* 0055BC 004055BC 8C42000C */  lw          $v0, 0xC($v0)
/* 0055C0 004055C0 00000000 */  nop
/* 0055C4 004055C4 1440FFFA */  bnez        $v0, .L004055B0
/* 0055C8 004055C8 00000000 */   nop
.L004055CC:
/* 0055CC 004055CC 03E00008 */  jr          $ra
/* 0055D0 004055D0 ACA00000 */   sw         $zero, 0x0($a1)