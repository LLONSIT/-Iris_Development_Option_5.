/* Generated by spimdisasm 1.10.3 */

glabel st_shifttq # 198
# _gp_disp: 0xFBFA55C
.set noreorder; .cpload $t9; # .set reorder
/* 016570 00416570 8F998200 */  lw          $t9, %call16(st_paux_iaux)($gp)
/* 016574 00416574 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016578 00416578 AFBF001C */  sw          $ra, 0x1C($sp)
/* 01657C 0041657C AFBC0018 */  sw          $gp, 0x18($sp)
/* 016580 00416580 0320F809 */  jalr        $t9
/* 016584 00416584 AFA50024 */   sw         $a1, 0x24($sp)
/* 016588 00416588 90430001 */  lbu         $v1, 0x1($v0)
/* 01658C 0041658C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 016590 00416590 00037102 */  srl         $t6, $v1, 4
/* 016594 00416594 31CF000F */  andi        $t7, $t6, 0xF
/* 016598 00416598 3078FFF0 */  andi        $t8, $v1, 0xFFF0
/* 01659C 0041659C 01F86025 */  or          $t4, $t7, $t8
/* 0165A0 004165A0 A04C0001 */  sb          $t4, 0x1($v0)
/* 0165A4 004165A4 8C490000 */  lw          $t1, 0x0($v0)
/* 0165A8 004165A8 90440003 */  lbu         $a0, 0x3($v0)
/* 0165AC 004165AC 318D000F */  andi        $t5, $t4, 0xF
/* 0165B0 004165B0 00095900 */  sll         $t3, $t1, 4
/* 0165B4 004165B4 016D7025 */  or          $t6, $t3, $t5
/* 0165B8 004165B8 00047902 */  srl         $t7, $a0, 4
/* 0165BC 004165BC 90490002 */  lbu         $t1, 0x2($v0)
/* 0165C0 004165C0 31F8000F */  andi        $t8, $t7, 0xF
/* 0165C4 004165C4 3099FFF0 */  andi        $t9, $a0, 0xFFF0
/* 0165C8 004165C8 03195825 */  or          $t3, $t8, $t9
/* 0165CC 004165CC A04E0001 */  sb          $t6, 0x1($v0)
/* 0165D0 004165D0 316D000F */  andi        $t5, $t3, 0xF
/* 0165D4 004165D4 00096100 */  sll         $t4, $t1, 4
/* 0165D8 004165D8 A04B0003 */  sb          $t3, 0x3($v0)
/* 0165DC 004165DC 018D7025 */  or          $t6, $t4, $t5
/* 0165E0 004165E0 A04E0003 */  sb          $t6, 0x3($v0)
/* 0165E4 004165E4 944F0002 */  lhu         $t7, 0x2($v0)
/* 0165E8 004165E8 3128FFF0 */  andi        $t0, $t1, 0xFFF0
/* 0165EC 004165EC 000FC302 */  srl         $t8, $t7, 12
/* 0165F0 004165F0 3319000F */  andi        $t9, $t8, 0xF
/* 0165F4 004165F4 03287025 */  or          $t6, $t9, $t0
/* 0165F8 004165F8 A04E0002 */  sb          $t6, 0x2($v0)
/* 0165FC 004165FC 8FAB0024 */  lw          $t3, 0x24($sp)
/* 016600 00416600 31CF000F */  andi        $t7, $t6, 0xF
/* 016604 00416604 000B6900 */  sll         $t5, $t3, 4
/* 016608 00416608 01AFC025 */  or          $t8, $t5, $t7
/* 01660C 0041660C A0580002 */  sb          $t8, 0x2($v0)
/* 016610 00416610 8FBF001C */  lw          $ra, 0x1C($sp)
/* 016614 00416614 27BD0020 */  addiu       $sp, $sp, 0x20
/* 016618 00416618 03E00008 */  jr          $ra
/* 01661C 0041661C 00000000 */   nop