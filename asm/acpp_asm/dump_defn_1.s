/* Generated by spimdisasm 1.9.1 */

glabel dump_defn_1 # 57
# _gp_disp: 0xFBFC4AC
.set noreorder; .cpload $t9; # .set reorder
/* 00E380 0040E380 27BDFFB0 */  addiu       $sp, $sp, -0x50
/* 00E384 0040E384 AFB4002C */  sw          $s4, 0x2C($sp)
/* 00E388 0040E388 00851021 */  addu        $v0, $a0, $a1
/* 00E38C 0040E38C 0046A021 */  addu        $s4, $v0, $a2
/* 00E390 0040E390 AFB0001C */  sw          $s0, 0x1C($sp)
/* 00E394 0040E394 0054082B */  sltu        $at, $v0, $s4
/* 00E398 0040E398 AFBF0044 */  sw          $ra, 0x44($sp)
/* 00E39C 0040E39C AFBE0040 */  sw          $fp, 0x40($sp)
/* 00E3A0 0040E3A0 AFBC003C */  sw          $gp, 0x3C($sp)
/* 00E3A4 0040E3A4 AFB70038 */  sw          $s7, 0x38($sp)
/* 00E3A8 0040E3A8 AFB60034 */  sw          $s6, 0x34($sp)
/* 00E3AC 0040E3AC AFB50030 */  sw          $s5, 0x30($sp)
/* 00E3B0 0040E3B0 AFB30028 */  sw          $s3, 0x28($sp)
/* 00E3B4 0040E3B4 AFB20024 */  sw          $s2, 0x24($sp)
/* 00E3B8 0040E3B8 AFB10020 */  sw          $s1, 0x20($sp)
/* 00E3BC 0040E3BC 00408025 */  move        $s0, $v0
/* 00E3C0 0040E3C0 10200046 */  beqz        $at, .L0040E4DC
/* 00E3C4 0040E3C4 AFB40048 */   sw         $s4, 0x48($sp)
/* 00E3C8 0040E3C8 8F938074 */  lw          $s3, %got(__iob)($gp)
/* 00E3CC 0040E3CC 8F968078 */  lw          $s6, %got(__us_rsthread_stdio)($gp)
/* 00E3D0 0040E3D0 8F918074 */  lw          $s1, %got(__iob)($gp)
/* 00E3D4 0040E3D4 241E0027 */  addiu       $fp, $zero, 0x27
/* 00E3D8 0040E3D8 24170022 */  addiu       $s7, $zero, 0x22
/* 00E3DC 0040E3DC 2415000A */  addiu       $s5, $zero, 0xA
/* 00E3E0 0040E3E0 26730010 */  addiu       $s3, $s3, 0x10
.L0040E3E4:
/* 00E3E4 0040E3E4 92020000 */  lbu         $v0, 0x0($s0)
/* 00E3E8 0040E3E8 00000000 */  nop
/* 00E3EC 0040E3EC 12A20021 */  beq         $s5, $v0, .L0040E474
/* 00E3F0 0040E3F0 00000000 */   nop
/* 00E3F4 0040E3F4 8ECE0000 */  lw          $t6, 0x0($s6)
/* 00E3F8 0040E3F8 00000000 */  nop
/* 00E3FC 0040E3FC 11C00008 */  beqz        $t6, .L0040E420
/* 00E400 0040E400 00000000 */   nop
/* 00E404 0040E404 8F99809C */  lw          $t9, %call16(__semputc)($gp)
/* 00E408 0040E408 00402025 */  move        $a0, $v0
/* 00E40C 0040E40C 0320F809 */  jalr        $t9
/* 00E410 0040E410 02602825 */   move       $a1, $s3
/* 00E414 0040E414 8FBC003C */  lw          $gp, 0x3C($sp)
/* 00E418 0040E418 1000002C */  b           .L0040E4CC
/* 00E41C 0040E41C 8FAC0048 */   lw         $t4, 0x48($sp)
.L0040E420:
/* 00E420 0040E420 8E2F0010 */  lw          $t7, 0x10($s1)
/* 00E424 0040E424 00000000 */  nop
/* 00E428 0040E428 25F9FFFF */  addiu       $t9, $t7, -0x1
/* 00E42C 0040E42C 07210008 */  bgez        $t9, .L0040E450
/* 00E430 0040E430 AE390010 */   sw         $t9, 0x10($s1)
/* 00E434 0040E434 8F9980AC */  lw          $t9, %call16(__flsbuf)($gp)
/* 00E438 0040E438 92040000 */  lbu         $a0, 0x0($s0)
/* 00E43C 0040E43C 0320F809 */  jalr        $t9
/* 00E440 0040E440 02602825 */   move       $a1, $s3
/* 00E444 0040E444 8FBC003C */  lw          $gp, 0x3C($sp)
/* 00E448 0040E448 10000020 */  b           .L0040E4CC
/* 00E44C 0040E44C 8FAC0048 */   lw         $t4, 0x48($sp)
.L0040E450:
/* 00E450 0040E450 92080000 */  lbu         $t0, 0x0($s0)
/* 00E454 0040E454 8E290014 */  lw          $t1, 0x14($s1)
/* 00E458 0040E458 00000000 */  nop
/* 00E45C 0040E45C A1280000 */  sb          $t0, 0x0($t1)
/* 00E460 0040E460 8E2A0014 */  lw          $t2, 0x14($s1)
/* 00E464 0040E464 00000000 */  nop
/* 00E468 0040E468 254B0001 */  addiu       $t3, $t2, 0x1
/* 00E46C 0040E46C 10000016 */  b           .L0040E4C8
/* 00E470 0040E470 AE2B0014 */   sw         $t3, 0x14($s1)
.L0040E474:
/* 00E474 0040E474 12E20003 */  beq         $s7, $v0, .L0040E484
/* 00E478 0040E478 02002025 */   move       $a0, $s0
/* 00E47C 0040E47C 17C20013 */  bne         $fp, $v0, .L0040E4CC
/* 00E480 0040E480 8FAC0048 */   lw         $t4, 0x48($sp)
.L0040E484:
/* 00E484 0040E484 8F9981CC */  lw          $t9, %call16(skip_quoted_string)($gp)
/* 00E488 0040E488 02802825 */  move        $a1, $s4
/* 00E48C 0040E48C 00003025 */  move        $a2, $zero
/* 00E490 0040E490 00003825 */  move        $a3, $zero
/* 00E494 0040E494 AFA00010 */  sw          $zero, 0x10($sp)
/* 00E498 0040E498 0320F809 */  jalr        $t9
/* 00E49C 0040E49C AFA00014 */   sw         $zero, 0x14($sp)
/* 00E4A0 0040E4A0 8FBC003C */  lw          $gp, 0x3C($sp)
/* 00E4A4 0040E4A4 00409025 */  move        $s2, $v0
/* 00E4A8 0040E4A8 8F998130 */  lw          $t9, %call16(fwrite)($gp)
/* 00E4AC 0040E4AC 02002025 */  move        $a0, $s0
/* 00E4B0 0040E4B0 00502823 */  subu        $a1, $v0, $s0
/* 00E4B4 0040E4B4 24060001 */  addiu       $a2, $zero, 0x1
/* 00E4B8 0040E4B8 0320F809 */  jalr        $t9
/* 00E4BC 0040E4BC 02603825 */   move       $a3, $s3
/* 00E4C0 0040E4C0 8FBC003C */  lw          $gp, 0x3C($sp)
/* 00E4C4 0040E4C4 2650FFFF */  addiu       $s0, $s2, -0x1
.L0040E4C8:
/* 00E4C8 0040E4C8 8FAC0048 */  lw          $t4, 0x48($sp)
.L0040E4CC:
/* 00E4CC 0040E4CC 26100001 */  addiu       $s0, $s0, 0x1
/* 00E4D0 0040E4D0 020C082B */  sltu        $at, $s0, $t4
/* 00E4D4 0040E4D4 1420FFC3 */  bnez        $at, .L0040E3E4
/* 00E4D8 0040E4D8 00000000 */   nop
.L0040E4DC:
/* 00E4DC 0040E4DC 8FBF0044 */  lw          $ra, 0x44($sp)
/* 00E4E0 0040E4E0 8FB0001C */  lw          $s0, 0x1C($sp)
/* 00E4E4 0040E4E4 8FB10020 */  lw          $s1, 0x20($sp)
/* 00E4E8 0040E4E8 8FB20024 */  lw          $s2, 0x24($sp)
/* 00E4EC 0040E4EC 8FB30028 */  lw          $s3, 0x28($sp)
/* 00E4F0 0040E4F0 8FB4002C */  lw          $s4, 0x2C($sp)
/* 00E4F4 0040E4F4 8FB50030 */  lw          $s5, 0x30($sp)
/* 00E4F8 0040E4F8 8FB60034 */  lw          $s6, 0x34($sp)
/* 00E4FC 0040E4FC 8FB70038 */  lw          $s7, 0x38($sp)
/* 00E500 0040E500 8FBE0040 */  lw          $fp, 0x40($sp)
/* 00E504 0040E504 03E00008 */  jr          $ra
/* 00E508 0040E508 27BD0050 */   addiu      $sp, $sp, 0x50