/* Generated by spimdisasm 1.10.3 */

glabel func_004075CC # 30
# _gp_disp: 0xFC094F4
.set noreorder; .cpload $t9; # .set reorder
/* 0075D8 004075D8 8F8383A0 */  lw          $v1, %got(binasm_rec)($gp)
/* 0075DC 004075DC 0080C825 */  move        $t9, $a0
/* 0075E0 004075E0 906E0005 */  lbu         $t6, 0x5($v1)
/* 0075E4 004075E4 946A0006 */  lhu         $t2, 0x6($v1)
/* 0075E8 004075E8 00194040 */  sll         $t0, $t9, 1
/* 0075EC 004075EC 310903FE */  andi        $t1, $t0, 0x3FE
/* 0075F0 004075F0 31CFFFC0 */  andi        $t7, $t6, 0xFFC0
/* 0075F4 004075F4 314BFC01 */  andi        $t3, $t2, 0xFC01
/* 0075F8 004075F8 35F80017 */  ori         $t8, $t7, 0x17
/* 0075FC 004075FC 012B6025 */  or          $t4, $t1, $t3
/* 007600 00407600 AC600000 */  sw          $zero, 0x0($v1)
/* 007604 00407604 A0780005 */  sb          $t8, 0x5($v1)
/* 007608 00407608 A46C0006 */  sh          $t4, 0x6($v1)
/* 00760C 0040760C 8F998190 */  lw          $t9, %call16(GetRegister)($gp)
/* 007610 00407610 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 007614 00407614 AFBF001C */  sw          $ra, 0x1C($sp)
/* 007618 00407618 0320F809 */  jalr        $t9
/* 00761C 0040761C AFBC0018 */   sw         $gp, 0x18($sp)
/* 007620 00407620 8FBC0018 */  lw          $gp, 0x18($sp)
/* 007624 00407624 00000000 */  nop
/* 007628 00407628 8F8383A0 */  lw          $v1, %got(binasm_rec)($gp)
/* 00762C 0040762C 10400007 */  beqz        $v0, .L0040764C
/* 007630 00407630 00000000 */   nop
/* 007634 00407634 8C4E0014 */  lw          $t6, 0x14($v0)
/* 007638 00407638 90790008 */  lbu         $t9, 0x8($v1)
/* 00763C 0040763C 000EC040 */  sll         $t8, $t6, 1
/* 007640 00407640 3328FF01 */  andi        $t0, $t9, 0xFF01
/* 007644 00407644 03085025 */  or          $t2, $t8, $t0
/* 007648 00407648 A06A0008 */  sb          $t2, 0x8($v1)
.L0040764C:
/* 00764C 0040764C 94690008 */  lhu         $t1, 0x8($v1)
/* 007650 00407650 00000000 */  nop
/* 007654 00407654 312BFE03 */  andi        $t3, $t1, 0xFE03
/* 007658 00407658 356C0120 */  ori         $t4, $t3, 0x120
/* 00765C 0040765C A46C0008 */  sh          $t4, 0x8($v1)
/* 007660 00407660 8C620008 */  lw          $v0, 0x8($v1)
/* 007664 00407664 00000000 */  nop
/* 007668 00407668 00026B82 */  srl         $t5, $v0, 14
/* 00766C 0040766C 39AE0002 */  xori        $t6, $t5, 0x2
/* 007670 00407670 000E7F00 */  sll         $t7, $t6, 28
/* 007674 00407674 000FCB82 */  srl         $t9, $t7, 14
/* 007678 00407678 0322C026 */  xor         $t8, $t9, $v0
/* 00767C 0040767C 8F998014 */  lw          $t9, %got(func_00407334)($gp)
/* 007680 00407680 AC780008 */  sw          $t8, 0x8($v1)
/* 007684 00407684 27397334 */  addiu       $t9, $t9, %lo(func_00407334)
/* 007688 00407688 0320F809 */  jalr        $t9
/* 00768C 0040768C 00000000 */   nop
/* 007690 00407690 8FBF001C */  lw          $ra, 0x1C($sp)
/* 007694 00407694 8FBC0018 */  lw          $gp, 0x18($sp)
/* 007698 00407698 03E00008 */  jr          $ra
/* 00769C 0040769C 27BD0020 */   addiu      $sp, $sp, 0x20