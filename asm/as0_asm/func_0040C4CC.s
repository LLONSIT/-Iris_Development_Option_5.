/* Generated by spimdisasm 1.10.3 */

glabel func_0040C4CC # 72
# _gp_disp: 0xFC045F4
.set noreorder; .cpload $t9; # .set reorder
/* 00C4D8 0040C4D8 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00C4DC 0040C4DC AFB00014 */  sw          $s0, 0x14($sp)
/* 00C4E0 0040C4E0 8F9083A0 */  lw          $s0, %got(binasm_rec)($gp)
/* 00C4E4 0040C4E4 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00C4E8 0040C4E8 920E0005 */  lbu         $t6, 0x5($s0)
/* 00C4EC 0040C4EC AE000000 */  sw          $zero, 0x0($s0)
/* 00C4F0 0040C4F0 31CFFFC0 */  andi        $t7, $t6, 0xFFC0
/* 00C4F4 0040C4F4 35F8003D */  ori         $t8, $t7, 0x3D
/* 00C4F8 0040C4F8 A2180005 */  sb          $t8, 0x5($s0)
/* 00C4FC 0040C4FC 8F998194 */  lw          $t9, %call16(GetExpr)($gp)
/* 00C500 0040C500 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00C504 0040C504 0320F809 */  jalr        $t9
/* 00C508 0040C508 00000000 */   nop
/* 00C50C 0040C50C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C510 0040C510 1040002C */  beqz        $v0, .L0040C5C4
/* 00C514 0040C514 AE020008 */   sw         $v0, 0x8($s0)
/* 00C518 0040C518 8F99816C */  lw          $t9, %call16(LookUp)($gp)
/* 00C51C 0040C51C 8F84837C */  lw          $a0, %got(Tstring)($gp)
/* 00C520 0040C520 AFA00024 */  sw          $zero, 0x24($sp)
/* 00C524 0040C524 0320F809 */  jalr        $t9
/* 00C528 0040C528 27A50024 */   addiu      $a1, $sp, 0x24
/* 00C52C 0040C52C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C530 0040C530 14400007 */  bnez        $v0, .L0040C550
/* 00C534 0040C534 27A50024 */   addiu      $a1, $sp, 0x24
/* 00C538 0040C538 8F99818C */  lw          $t9, %call16(EnterSym)($gp)
/* 00C53C 0040C53C 8F84837C */  lw          $a0, %got(Tstring)($gp)
/* 00C540 0040C540 0320F809 */  jalr        $t9
/* 00C544 0040C544 00003025 */   move       $a2, $zero
/* 00C548 0040C548 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C54C 0040C54C 00000000 */  nop
.L0040C550:
/* 00C550 0040C550 8FA80024 */  lw          $t0, 0x24($sp)
/* 00C554 0040C554 00000000 */  nop
/* 00C558 0040C558 8D090018 */  lw          $t1, 0x18($t0)
/* 00C55C 0040C55C AFA00024 */  sw          $zero, 0x24($sp)
/* 00C560 0040C560 AE090000 */  sw          $t1, 0x0($s0)
/* 00C564 0040C564 8F99817C */  lw          $t9, %call16(nexttoken)($gp)
/* 00C568 0040C568 00000000 */  nop
/* 00C56C 0040C56C 0320F809 */  jalr        $t9
/* 00C570 0040C570 00000000 */   nop
/* 00C574 0040C574 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C578 0040C578 27A50024 */  addiu       $a1, $sp, 0x24
/* 00C57C 0040C57C 8F99816C */  lw          $t9, %call16(LookUp)($gp)
/* 00C580 0040C580 8F84837C */  lw          $a0, %got(Tstring)($gp)
/* 00C584 0040C584 0320F809 */  jalr        $t9
/* 00C588 0040C588 00000000 */   nop
/* 00C58C 0040C58C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C590 0040C590 14400007 */  bnez        $v0, .L0040C5B0
/* 00C594 0040C594 27A50024 */   addiu      $a1, $sp, 0x24
/* 00C598 0040C598 8F99818C */  lw          $t9, %call16(EnterSym)($gp)
/* 00C59C 0040C59C 8F84837C */  lw          $a0, %got(Tstring)($gp)
/* 00C5A0 0040C5A0 0320F809 */  jalr        $t9
/* 00C5A4 0040C5A4 24060001 */   addiu      $a2, $zero, 0x1
/* 00C5A8 0040C5A8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C5AC 0040C5AC 00000000 */  nop
.L0040C5B0:
/* 00C5B0 0040C5B0 8FAA0024 */  lw          $t2, 0x24($sp)
/* 00C5B4 0040C5B4 00000000 */  nop
/* 00C5B8 0040C5B8 8D4B0018 */  lw          $t3, 0x18($t2)
/* 00C5BC 0040C5BC 00000000 */  nop
/* 00C5C0 0040C5C0 AE0B000C */  sw          $t3, 0xC($s0)
.L0040C5C4:
/* 00C5C4 0040C5C4 8F9981A8 */  lw          $t9, %call16(put_binasmfyle)($gp)
/* 00C5C8 0040C5C8 00000000 */  nop
/* 00C5CC 0040C5CC 0320F809 */  jalr        $t9
/* 00C5D0 0040C5D0 00000000 */   nop
/* 00C5D4 0040C5D4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00C5D8 0040C5D8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C5DC 0040C5DC 8FB00014 */  lw          $s0, 0x14($sp)
/* 00C5E0 0040C5E0 03E00008 */  jr          $ra
/* 00C5E4 0040C5E4 27BD0028 */   addiu      $sp, $sp, 0x28