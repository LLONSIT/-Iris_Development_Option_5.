/* Generated by spimdisasm 1.9.1 */

glabel skip_to_end_of_comment # 39
# _gp_disp: 0xFBFF0E4
.set noreorder; .cpload $t9; # .set reorder
/* 00B748 0040B748 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00B74C 0040B74C 8F83828C */  lw          $v1, %got(put_out_comments)($gp)
/* 00B750 0040B750 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00B754 0040B754 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00B758 0040B758 AFB00014 */  sw          $s0, 0x14($sp)
/* 00B75C 0040B75C AFA40030 */  sw          $a0, 0x30($sp)
/* 00B760 0040B760 8C630000 */  lw          $v1, 0x0($v1)
/* 00B764 0040B764 8C980008 */  lw          $t8, 0x8($a0)
/* 00B768 0040B768 8C8F0010 */  lw          $t7, 0x10($a0)
/* 00B76C 0040B76C 8C900014 */  lw          $s0, 0x14($a0)
/* 00B770 0040B770 0003C82B */  sltu        $t9, $zero, $v1
/* 00B774 0040B774 00A03025 */  move        $a2, $a1
/* 00B778 0040B778 03201825 */  move        $v1, $t9
/* 00B77C 0040B77C 13200002 */  beqz        $t9, .L0040B788
/* 00B780 0040B780 01F83821 */   addu       $a3, $t7, $t8
/* 00B784 0040B784 2CA30001 */  sltiu       $v1, $a1, 0x1
.L0040B788:
/* 00B788 0040B788 10600011 */  beqz        $v1, .L0040B7D0
/* 00B78C 0040B78C 00604025 */   move       $t0, $v1
/* 00B790 0040B790 8F8A8344 */  lw          $t2, %got(outbuf)($gp)
/* 00B794 0040B794 8F8B8344 */  lw          $t3, %got(outbuf)($gp)
/* 00B798 0040B798 8D4A0014 */  lw          $t2, 0x14($t2)
/* 00B79C 0040B79C 2409002F */  addiu       $t1, $zero, 0x2F
/* 00B7A0 0040B7A0 A1490000 */  sb          $t1, 0x0($t2)
/* 00B7A4 0040B7A4 8D6B0014 */  lw          $t3, 0x14($t3)
/* 00B7A8 0040B7A8 8F818344 */  lw          $at, %got(outbuf)($gp)
/* 00B7AC 0040B7AC 256C0001 */  addiu       $t4, $t3, 0x1
/* 00B7B0 0040B7B0 8F8F8344 */  lw          $t7, %got(outbuf)($gp)
/* 00B7B4 0040B7B4 240D002A */  addiu       $t5, $zero, 0x2A
/* 00B7B8 0040B7B8 AC2C0014 */  sw          $t4, 0x14($at)
/* 00B7BC 0040B7BC A18D0000 */  sb          $t5, 0x0($t4)
/* 00B7C0 0040B7C0 8DEF0014 */  lw          $t7, 0x14($t7)
/* 00B7C4 0040B7C4 8F818344 */  lw          $at, %got(outbuf)($gp)
/* 00B7C8 0040B7C8 25F80001 */  addiu       $t8, $t7, 0x1
/* 00B7CC 0040B7CC AC380014 */  sw          $t8, 0x14($at)
.L0040B7D0:
/* 00B7D0 0040B7D0 8F8E830C */  lw          $t6, %got(cplusplus)($gp)
/* 00B7D4 0040B7D4 2409002F */  addiu       $t1, $zero, 0x2F
/* 00B7D8 0040B7D8 8DCE0000 */  lw          $t6, 0x0($t6)
/* 00B7DC 0040B7DC 0207082B */  sltu        $at, $s0, $a3
/* 00B7E0 0040B7E0 11C0003C */  beqz        $t6, .L0040B8D4
/* 00B7E4 0040B7E4 00000000 */   nop
/* 00B7E8 0040B7E8 9219FFFF */  lbu         $t9, -0x1($s0)
/* 00B7EC 0040B7EC 00000000 */  nop
/* 00B7F0 0040B7F0 15390038 */  bne         $t1, $t9, .L0040B8D4
/* 00B7F4 0040B7F4 00000000 */   nop
/* 00B7F8 0040B7F8 10600028 */  beqz        $v1, .L0040B89C
/* 00B7FC 0040B7FC 0207082B */   sltu       $at, $s0, $a3
/* 00B800 0040B800 0207082B */  sltu        $at, $s0, $a3
/* 00B804 0040B804 10200012 */  beqz        $at, .L0040B850
/* 00B808 0040B808 240C002A */   addiu      $t4, $zero, 0x2A
/* 00B80C 0040B80C 2405000A */  addiu       $a1, $zero, 0xA
.L0040B810:
/* 00B810 0040B810 8F8A8344 */  lw          $t2, %got(outbuf)($gp)
/* 00B814 0040B814 92020000 */  lbu         $v0, 0x0($s0)
/* 00B818 0040B818 8D4A0014 */  lw          $t2, 0x14($t2)
/* 00B81C 0040B81C 8F8B8344 */  lw          $t3, %got(outbuf)($gp)
/* 00B820 0040B820 A1420000 */  sb          $v0, 0x0($t2)
/* 00B824 0040B824 8D6B0014 */  lw          $t3, 0x14($t3)
/* 00B828 0040B828 8F818344 */  lw          $at, %got(outbuf)($gp)
/* 00B82C 0040B82C 256D0001 */  addiu       $t5, $t3, 0x1
/* 00B830 0040B830 26100001 */  addiu       $s0, $s0, 0x1
/* 00B834 0040B834 14450003 */  bne         $v0, $a1, .L0040B844
/* 00B838 0040B838 AC2D0014 */   sw         $t5, 0x14($at)
/* 00B83C 0040B83C 10000004 */  b           .L0040B850
/* 00B840 0040B840 2610FFFF */   addiu      $s0, $s0, -0x1
.L0040B844:
/* 00B844 0040B844 0207082B */  sltu        $at, $s0, $a3
/* 00B848 0040B848 1420FFF1 */  bnez        $at, .L0040B810
/* 00B84C 0040B84C 00000000 */   nop
.L0040B850:
/* 00B850 0040B850 8F8F8344 */  lw          $t7, %got(outbuf)($gp)
/* 00B854 0040B854 8F988344 */  lw          $t8, %got(outbuf)($gp)
/* 00B858 0040B858 8DEF0014 */  lw          $t7, 0x14($t7)
/* 00B85C 0040B85C 8F8E8344 */  lw          $t6, %got(outbuf)($gp)
/* 00B860 0040B860 A1ECFFFF */  sb          $t4, -0x1($t7)
/* 00B864 0040B864 8F180014 */  lw          $t8, 0x14($t8)
/* 00B868 0040B868 8F818344 */  lw          $at, %got(outbuf)($gp)
/* 00B86C 0040B86C A3090000 */  sb          $t1, 0x0($t8)
/* 00B870 0040B870 8DCE0014 */  lw          $t6, 0x14($t6)
/* 00B874 0040B874 8F8A8344 */  lw          $t2, %got(outbuf)($gp)
/* 00B878 0040B878 25D90001 */  addiu       $t9, $t6, 0x1
/* 00B87C 0040B87C 2405000A */  addiu       $a1, $zero, 0xA
/* 00B880 0040B880 AC390014 */  sw          $t9, 0x14($at)
/* 00B884 0040B884 A3250000 */  sb          $a1, 0x0($t9)
/* 00B888 0040B888 8D4A0014 */  lw          $t2, 0x14($t2)
/* 00B88C 0040B88C 8F818344 */  lw          $at, %got(outbuf)($gp)
/* 00B890 0040B890 254B0001 */  addiu       $t3, $t2, 0x1
/* 00B894 0040B894 1000000B */  b           .L0040B8C4
/* 00B898 0040B898 AC2B0014 */   sw         $t3, 0x14($at)
.L0040B89C:
/* 00B89C 0040B89C 10200009 */  beqz        $at, .L0040B8C4
/* 00B8A0 0040B8A0 2405000A */   addiu      $a1, $zero, 0xA
.L0040B8A4:
/* 00B8A4 0040B8A4 920D0000 */  lbu         $t5, 0x0($s0)
/* 00B8A8 0040B8A8 26100001 */  addiu       $s0, $s0, 0x1
/* 00B8AC 0040B8AC 14AD0003 */  bne         $a1, $t5, .L0040B8BC
/* 00B8B0 0040B8B0 0207082B */   sltu       $at, $s0, $a3
/* 00B8B4 0040B8B4 10000003 */  b           .L0040B8C4
/* 00B8B8 0040B8B8 2610FFFF */   addiu      $s0, $s0, -0x1
.L0040B8BC:
/* 00B8BC 0040B8BC 1420FFF9 */  bnez        $at, .L0040B8A4
/* 00B8C0 0040B8C0 00000000 */   nop
.L0040B8C4:
/* 00B8C4 0040B8C4 8FAC0030 */  lw          $t4, 0x30($sp)
/* 00B8C8 0040B8C8 02001025 */  move        $v0, $s0
/* 00B8CC 0040B8CC 10000051 */  b           .L0040BA14
/* 00B8D0 0040B8D0 AD900014 */   sw         $s0, 0x14($t4)
.L0040B8D4:
/* 00B8D4 0040B8D4 1020004C */  beqz        $at, .L0040BA08
/* 00B8D8 0040B8D8 2405000A */   addiu      $a1, $zero, 0xA
.L0040B8DC:
/* 00B8DC 0040B8DC 92020000 */  lbu         $v0, 0x0($s0)
/* 00B8E0 0040B8E0 1100000C */  beqz        $t0, .L0040B914
/* 00B8E4 0040B8E4 00000000 */   nop
/* 00B8E8 0040B8E8 8F8F8344 */  lw          $t7, %got(outbuf)($gp)
/* 00B8EC 0040B8EC 8F988344 */  lw          $t8, %got(outbuf)($gp)
/* 00B8F0 0040B8F0 8DEF0014 */  lw          $t7, 0x14($t7)
/* 00B8F4 0040B8F4 8F818344 */  lw          $at, %got(outbuf)($gp)
/* 00B8F8 0040B8F8 A1E20000 */  sb          $v0, 0x0($t7)
/* 00B8FC 0040B8FC 8F180014 */  lw          $t8, 0x14($t8)
/* 00B900 0040B900 00000000 */  nop
/* 00B904 0040B904 270E0001 */  addiu       $t6, $t8, 0x1
/* 00B908 0040B908 AC2E0014 */  sw          $t6, 0x14($at)
/* 00B90C 0040B90C 92020000 */  lbu         $v0, 0x0($s0)
/* 00B910 0040B910 00000000 */  nop
.L0040B914:
/* 00B914 0040B914 10450006 */  beq         $v0, $a1, .L0040B930
/* 00B918 0040B918 26100001 */   addiu      $s0, $s0, 0x1
/* 00B91C 0040B91C 2401002A */  addiu       $at, $zero, 0x2A
/* 00B920 0040B920 10410012 */  beq         $v0, $at, .L0040B96C
/* 00B924 0040B924 00000000 */   nop
/* 00B928 0040B928 10000035 */  b           .L0040BA00
/* 00B92C 0040B92C 0207082B */   sltu       $at, $s0, $a3
.L0040B930:
/* 00B930 0040B930 10C00005 */  beqz        $a2, .L0040B948
/* 00B934 0040B934 00000000 */   nop
/* 00B938 0040B938 8CD90000 */  lw          $t9, 0x0($a2)
/* 00B93C 0040B93C 00000000 */  nop
/* 00B940 0040B940 272A0001 */  addiu       $t2, $t9, 0x1
/* 00B944 0040B944 ACCA0000 */  sw          $t2, 0x0($a2)
.L0040B948:
/* 00B948 0040B948 1100002D */  beqz        $t0, .L0040BA00
/* 00B94C 0040B94C 0207082B */   sltu       $at, $s0, $a3
/* 00B950 0040B950 8F8B8344 */  lw          $t3, %got(outbuf)($gp)
/* 00B954 0040B954 8F818344 */  lw          $at, %got(outbuf)($gp)
/* 00B958 0040B958 8D6B0004 */  lw          $t3, 0x4($t3)
/* 00B95C 0040B95C 00000000 */  nop
/* 00B960 0040B960 256D0001 */  addiu       $t5, $t3, 0x1
/* 00B964 0040B964 10000025 */  b           .L0040B9FC
/* 00B968 0040B968 AC2D0004 */   sw         $t5, 0x4($at)
.L0040B96C:
/* 00B96C 0040B96C 92020000 */  lbu         $v0, 0x0($s0)
/* 00B970 0040B970 2401005C */  addiu       $at, $zero, 0x5C
/* 00B974 0040B974 14410011 */  bne         $v0, $at, .L0040B9BC
/* 00B978 0040B978 00000000 */   nop
/* 00B97C 0040B97C 920C0001 */  lbu         $t4, 0x1($s0)
/* 00B980 0040B980 02002025 */  move        $a0, $s0
/* 00B984 0040B984 14AC000D */  bne         $a1, $t4, .L0040B9BC
/* 00B988 0040B988 00000000 */   nop
/* 00B98C 0040B98C 8F998158 */  lw          $t9, %call16(newline_fix)($gp)
/* 00B990 0040B990 AFA60034 */  sw          $a2, 0x34($sp)
/* 00B994 0040B994 AFA7002C */  sw          $a3, 0x2C($sp)
/* 00B998 0040B998 0320F809 */  jalr        $t9
/* 00B99C 0040B99C AFA80020 */   sw         $t0, 0x20($sp)
/* 00B9A0 0040B9A0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B9A4 0040B9A4 8FA60034 */  lw          $a2, 0x34($sp)
/* 00B9A8 0040B9A8 8FA7002C */  lw          $a3, 0x2C($sp)
/* 00B9AC 0040B9AC 8FA80020 */  lw          $t0, 0x20($sp)
/* 00B9B0 0040B9B0 92020000 */  lbu         $v0, 0x0($s0)
/* 00B9B4 0040B9B4 2405000A */  addiu       $a1, $zero, 0xA
/* 00B9B8 0040B9B8 2409002F */  addiu       $t1, $zero, 0x2F
.L0040B9BC:
/* 00B9BC 0040B9BC 15220010 */  bne         $t1, $v0, .L0040BA00
/* 00B9C0 0040B9C0 0207082B */   sltu       $at, $s0, $a3
/* 00B9C4 0040B9C4 1100000A */  beqz        $t0, .L0040B9F0
/* 00B9C8 0040B9C8 26020001 */   addiu      $v0, $s0, 0x1
/* 00B9CC 0040B9CC 8F8F8344 */  lw          $t7, %got(outbuf)($gp)
/* 00B9D0 0040B9D0 8F988344 */  lw          $t8, %got(outbuf)($gp)
/* 00B9D4 0040B9D4 8DEF0014 */  lw          $t7, 0x14($t7)
/* 00B9D8 0040B9D8 8F818344 */  lw          $at, %got(outbuf)($gp)
/* 00B9DC 0040B9DC A1E90000 */  sb          $t1, 0x0($t7)
/* 00B9E0 0040B9E0 8F180014 */  lw          $t8, 0x14($t8)
/* 00B9E4 0040B9E4 00000000 */  nop
/* 00B9E8 0040B9E8 270E0001 */  addiu       $t6, $t8, 0x1
/* 00B9EC 0040B9EC AC2E0014 */  sw          $t6, 0x14($at)
.L0040B9F0:
/* 00B9F0 0040B9F0 8FB90030 */  lw          $t9, 0x30($sp)
/* 00B9F4 0040B9F4 10000007 */  b           .L0040BA14
/* 00B9F8 0040B9F8 AF220014 */   sw         $v0, 0x14($t9)
.L0040B9FC:
/* 00B9FC 0040B9FC 0207082B */  sltu        $at, $s0, $a3
.L0040BA00:
/* 00BA00 0040BA00 1420FFB6 */  bnez        $at, .L0040B8DC
/* 00BA04 0040BA04 00000000 */   nop
.L0040BA08:
/* 00BA08 0040BA08 8FAA0030 */  lw          $t2, 0x30($sp)
/* 00BA0C 0040BA0C 02001025 */  move        $v0, $s0
/* 00BA10 0040BA10 AD500014 */  sw          $s0, 0x14($t2)
.L0040BA14:
/* 00BA14 0040BA14 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00BA18 0040BA18 8FB00014 */  lw          $s0, 0x14($sp)
/* 00BA1C 0040BA1C 03E00008 */  jr          $ra
/* 00BA20 0040BA20 27BD0030 */   addiu      $sp, $sp, 0x30