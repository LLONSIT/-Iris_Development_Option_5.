/* Generated by spimdisasm 1.10.3 */

glabel swap_reginfo # 261
/* 01D6B0 0041D6B0 AFA50004 */  sw          $a1, 0x4($sp)
/* 01D6B4 0041D6B4 8C820000 */  lw          $v0, 0x0($a0)
/* 01D6B8 0041D6B8 3C0700FF */  lui         $a3, (0xFF0000 >> 16)
/* 01D6BC 0041D6BC 00027A00 */  sll         $t7, $v0, 8
/* 01D6C0 0041D6C0 8C830004 */  lw          $v1, 0x4($a0)
/* 01D6C4 0041D6C4 01E7C024 */  and         $t8, $t7, $a3
/* 01D6C8 0041D6C8 00027600 */  sll         $t6, $v0, 24
/* 01D6CC 0041D6CC 00024202 */  srl         $t0, $v0, 8
/* 01D6D0 0041D6D0 3109FF00 */  andi        $t1, $t0, 0xFF00
/* 01D6D4 0041D6D4 01D8C825 */  or          $t9, $t6, $t8
/* 01D6D8 0041D6D8 03295025 */  or          $t2, $t9, $t1
/* 01D6DC 0041D6DC 00025E02 */  srl         $t3, $v0, 24
/* 01D6E0 0041D6E0 014B6025 */  or          $t4, $t2, $t3
/* 01D6E4 0041D6E4 8C850008 */  lw          $a1, 0x8($a0)
/* 01D6E8 0041D6E8 0003C200 */  sll         $t8, $v1, 8
/* 01D6EC 0041D6EC 00037E00 */  sll         $t7, $v1, 24
/* 01D6F0 0041D6F0 00036E02 */  srl         $t5, $v1, 24
/* 01D6F4 0041D6F4 01AF7025 */  or          $t6, $t5, $t7
/* 01D6F8 0041D6F8 03074024 */  and         $t0, $t8, $a3
/* 01D6FC 0041D6FC 00034A02 */  srl         $t1, $v1, 8
/* 01D700 0041D700 AC8C0000 */  sw          $t4, 0x0($a0)
/* 01D704 0041D704 312AFF00 */  andi        $t2, $t1, 0xFF00
/* 01D708 0041D708 01C8C825 */  or          $t9, $t6, $t0
/* 01D70C 0041D70C 8C86000C */  lw          $a2, 0xC($a0)
/* 01D710 0041D710 032A5825 */  or          $t3, $t9, $t2
/* 01D714 0041D714 00056602 */  srl         $t4, $a1, 24
/* 01D718 0041D718 00056E00 */  sll         $t5, $a1, 24
/* 01D71C 0041D71C 018D7825 */  or          $t7, $t4, $t5
/* 01D720 0041D720 0005C200 */  sll         $t8, $a1, 8
/* 01D724 0041D724 AC8B0004 */  sw          $t3, 0x4($a0)
/* 01D728 0041D728 03077024 */  and         $t6, $t8, $a3
/* 01D72C 0041D72C 00054A02 */  srl         $t1, $a1, 8
/* 01D730 0041D730 8C820010 */  lw          $v0, 0x10($a0)
/* 01D734 0041D734 3139FF00 */  andi        $t9, $t1, 0xFF00
/* 01D738 0041D738 01EE4025 */  or          $t0, $t7, $t6
/* 01D73C 0041D73C 00065E02 */  srl         $t3, $a2, 24
/* 01D740 0041D740 00066600 */  sll         $t4, $a2, 24
/* 01D744 0041D744 01195025 */  or          $t2, $t0, $t9
/* 01D748 0041D748 016C6825 */  or          $t5, $t3, $t4
/* 01D74C 0041D74C 0006C200 */  sll         $t8, $a2, 8
/* 01D750 0041D750 AC8A0008 */  sw          $t2, 0x8($a0)
/* 01D754 0041D754 03077824 */  and         $t7, $t8, $a3
/* 01D758 0041D758 01AF7025 */  or          $t6, $t5, $t7
/* 01D75C 0041D75C 00064A02 */  srl         $t1, $a2, 8
/* 01D760 0041D760 00025602 */  srl         $t2, $v0, 24
/* 01D764 0041D764 00025E00 */  sll         $t3, $v0, 24
/* 01D768 0041D768 8C830014 */  lw          $v1, 0x14($a0)
/* 01D76C 0041D76C 3128FF00 */  andi        $t0, $t1, 0xFF00
/* 01D770 0041D770 014B6025 */  or          $t4, $t2, $t3
/* 01D774 0041D774 0002C200 */  sll         $t8, $v0, 8
/* 01D778 0041D778 01C8C825 */  or          $t9, $t6, $t0
/* 01D77C 0041D77C 03076824 */  and         $t5, $t8, $a3
/* 01D780 0041D780 018D7825 */  or          $t7, $t4, $t5
/* 01D784 0041D784 AC99000C */  sw          $t9, 0xC($a0)
/* 01D788 0041D788 3C0100FF */  lui         $at, (0xFF0000 >> 16)
/* 01D78C 0041D78C 00024A02 */  srl         $t1, $v0, 8
/* 01D790 0041D790 00035200 */  sll         $t2, $v1, 8
/* 01D794 0041D794 312EFF00 */  andi        $t6, $t1, 0xFF00
/* 01D798 0041D798 01415824 */  and         $t3, $t2, $at
/* 01D79C 0041D79C 0003CE00 */  sll         $t9, $v1, 24
/* 01D7A0 0041D7A0 00036203 */  sra         $t4, $v1, 8
/* 01D7A4 0041D7A4 01EE4025 */  or          $t0, $t7, $t6
/* 01D7A8 0041D7A8 318DFF00 */  andi        $t5, $t4, 0xFF00
/* 01D7AC 0041D7AC 032BC025 */  or          $t8, $t9, $t3
/* 01D7B0 0041D7B0 030D4825 */  or          $t1, $t8, $t5
/* 01D7B4 0041D7B4 00037E02 */  srl         $t7, $v1, 24
/* 01D7B8 0041D7B8 012F7025 */  or          $t6, $t1, $t7
/* 01D7BC 0041D7BC AC880010 */  sw          $t0, 0x10($a0)
/* 01D7C0 0041D7C0 03E00008 */  jr          $ra
/* 01D7C4 0041D7C4 AC8E0014 */   sw         $t6, 0x14($a0)