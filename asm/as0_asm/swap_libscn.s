/* Generated by spimdisasm 1.10.3 */

glabel swap_libscn # 245
/* 01B4B8 0041B4B8 AFA50004 */  sw          $a1, 0x4($sp)
/* 01B4BC 0041B4BC 8C820000 */  lw          $v0, 0x0($a0)
/* 01B4C0 0041B4C0 3C0700FF */  lui         $a3, (0xFF0000 >> 16)
/* 01B4C4 0041B4C4 00027A00 */  sll         $t7, $v0, 8
/* 01B4C8 0041B4C8 8C830004 */  lw          $v1, 0x4($a0)
/* 01B4CC 0041B4CC 01E7C024 */  and         $t8, $t7, $a3
/* 01B4D0 0041B4D0 00027600 */  sll         $t6, $v0, 24
/* 01B4D4 0041B4D4 01D8C825 */  or          $t9, $t6, $t8
/* 01B4D8 0041B4D8 00024203 */  sra         $t0, $v0, 8
/* 01B4DC 0041B4DC 3109FF00 */  andi        $t1, $t0, 0xFF00
/* 01B4E0 0041B4E0 03295025 */  or          $t2, $t9, $t1
/* 01B4E4 0041B4E4 00025E02 */  srl         $t3, $v0, 24
/* 01B4E8 0041B4E8 00037A00 */  sll         $t7, $v1, 8
/* 01B4EC 0041B4EC 8C850008 */  lw          $a1, 0x8($a0)
/* 01B4F0 0041B4F0 014B6025 */  or          $t4, $t2, $t3
/* 01B4F4 0041B4F4 01E77024 */  and         $t6, $t7, $a3
/* 01B4F8 0041B4F8 00034203 */  sra         $t0, $v1, 8
/* 01B4FC 0041B4FC 00036E00 */  sll         $t5, $v1, 24
/* 01B500 0041B500 01AEC025 */  or          $t8, $t5, $t6
/* 01B504 0041B504 3119FF00 */  andi        $t9, $t0, 0xFF00
/* 01B508 0041B508 03194825 */  or          $t1, $t8, $t9
/* 01B50C 0041B50C AC8C0000 */  sw          $t4, 0x0($a0)
/* 01B510 0041B510 00035602 */  srl         $t2, $v1, 24
/* 01B514 0041B514 00057A00 */  sll         $t7, $a1, 8
/* 01B518 0041B518 8C86000C */  lw          $a2, 0xC($a0)
/* 01B51C 0041B51C 012A5825 */  or          $t3, $t1, $t2
/* 01B520 0041B520 01E76824 */  and         $t5, $t7, $a3
/* 01B524 0041B524 00056600 */  sll         $t4, $a1, 24
/* 01B528 0041B528 00054203 */  sra         $t0, $a1, 8
/* 01B52C 0041B52C 3118FF00 */  andi        $t8, $t0, 0xFF00
/* 01B530 0041B530 018D7025 */  or          $t6, $t4, $t5
/* 01B534 0041B534 01D8C825 */  or          $t9, $t6, $t8
/* 01B538 0041B538 00054E02 */  srl         $t1, $a1, 24
/* 01B53C 0041B53C AC8B0004 */  sw          $t3, 0x4($a0)
/* 01B540 0041B540 03295025 */  or          $t2, $t9, $t1
/* 01B544 0041B544 00067A00 */  sll         $t7, $a2, 8
/* 01B548 0041B548 8C820010 */  lw          $v0, 0x10($a0)
/* 01B54C 0041B54C 01E76024 */  and         $t4, $t7, $a3
/* 01B550 0041B550 00065E00 */  sll         $t3, $a2, 24
/* 01B554 0041B554 00064203 */  sra         $t0, $a2, 8
/* 01B558 0041B558 310EFF00 */  andi        $t6, $t0, 0xFF00
/* 01B55C 0041B55C 016C6825 */  or          $t5, $t3, $t4
/* 01B560 0041B560 AC8A0008 */  sw          $t2, 0x8($a0)
/* 01B564 0041B564 01AEC025 */  or          $t8, $t5, $t6
/* 01B568 0041B568 0006CE02 */  srl         $t9, $a2, 24
/* 01B56C 0041B56C 00027A00 */  sll         $t7, $v0, 8
/* 01B570 0041B570 8C830014 */  lw          $v1, 0x14($a0)
/* 01B574 0041B574 03194825 */  or          $t1, $t8, $t9
/* 01B578 0041B578 01E75824 */  and         $t3, $t7, $a3
/* 01B57C 0041B57C 00025600 */  sll         $t2, $v0, 24
/* 01B580 0041B580 014B6025 */  or          $t4, $t2, $t3
/* 01B584 0041B584 00024203 */  sra         $t0, $v0, 8
/* 01B588 0041B588 AC89000C */  sw          $t1, 0xC($a0)
/* 01B58C 0041B58C 310DFF00 */  andi        $t5, $t0, 0xFF00
/* 01B590 0041B590 00037A00 */  sll         $t7, $v1, 8
/* 01B594 0041B594 8C850018 */  lw          $a1, 0x18($a0)
/* 01B598 0041B598 018D7025 */  or          $t6, $t4, $t5
/* 01B59C 0041B59C 01E75024 */  and         $t2, $t7, $a3
/* 01B5A0 0041B5A0 0002C602 */  srl         $t8, $v0, 24
/* 01B5A4 0041B5A4 00034E00 */  sll         $t1, $v1, 24
/* 01B5A8 0041B5A8 01D8C825 */  or          $t9, $t6, $t8
/* 01B5AC 0041B5AC 012A5825 */  or          $t3, $t1, $t2
/* 01B5B0 0041B5B0 00034203 */  sra         $t0, $v1, 8
/* 01B5B4 0041B5B4 310CFF00 */  andi        $t4, $t0, 0xFF00
/* 01B5B8 0041B5B8 AC990010 */  sw          $t9, 0x10($a0)
/* 01B5BC 0041B5BC 016C6825 */  or          $t5, $t3, $t4
/* 01B5C0 0041B5C0 00057A00 */  sll         $t7, $a1, 8
/* 01B5C4 0041B5C4 8C86001C */  lw          $a2, 0x1C($a0)
/* 01B5C8 0041B5C8 01E74824 */  and         $t1, $t7, $a3
/* 01B5CC 0041B5CC 00037602 */  srl         $t6, $v1, 24
/* 01B5D0 0041B5D0 0005CE00 */  sll         $t9, $a1, 24
/* 01B5D4 0041B5D4 00054203 */  sra         $t0, $a1, 8
/* 01B5D8 0041B5D8 01AEC025 */  or          $t8, $t5, $t6
/* 01B5DC 0041B5DC 310BFF00 */  andi        $t3, $t0, 0xFF00
/* 01B5E0 0041B5E0 03295025 */  or          $t2, $t9, $t1
/* 01B5E4 0041B5E4 014B6025 */  or          $t4, $t2, $t3
/* 01B5E8 0041B5E8 AC980014 */  sw          $t8, 0x14($a0)
/* 01B5EC 0041B5EC 00067A00 */  sll         $t7, $a2, 8
/* 01B5F0 0041B5F0 01E7C824 */  and         $t9, $t7, $a3
/* 01B5F4 0041B5F4 00056E02 */  srl         $t5, $a1, 24
/* 01B5F8 0041B5F8 0006C600 */  sll         $t8, $a2, 24
/* 01B5FC 0041B5FC 00064203 */  sra         $t0, $a2, 8
/* 01B600 0041B600 018D7025 */  or          $t6, $t4, $t5
/* 01B604 0041B604 310AFF00 */  andi        $t2, $t0, 0xFF00
/* 01B608 0041B608 03194825 */  or          $t1, $t8, $t9
/* 01B60C 0041B60C 012A5825 */  or          $t3, $t1, $t2
/* 01B610 0041B610 00066602 */  srl         $t4, $a2, 24
/* 01B614 0041B614 016C6825 */  or          $t5, $t3, $t4
/* 01B618 0041B618 AC8E0018 */  sw          $t6, 0x18($a0)
/* 01B61C 0041B61C 03E00008 */  jr          $ra
/* 01B620 0041B620 AC8D001C */   sw         $t5, 0x1C($a0)