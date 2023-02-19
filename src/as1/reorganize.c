__asm__(R""(
.macro glabel label
    .global \label
    .balign 4
    \label:
.endm




.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.text
glabel reorganize_init
    .ent reorganize_init
    # 00436EE0 init_reorg_state
/* 0042D3AC 3C1C0FC0 */  .cpload $t9
/* 0042D3B0 279CCEB4 */  
/* 0042D3B4 0399E021 */  
/* 0042D3B8 8F8E895C */  lw     $t6, %got(nops)($gp)
/* 0042D3BC 00000000 */  nop   
/* 0042D3C0 8DCE0000 */  lw    $t6, ($t6)
/* 0042D3C4 00000000 */  nop   
/* 0042D3C8 11C0000A */  beqz  $t6, .L0042D3F4
/* 0042D3CC 00000000 */   nop   
/* 0042D3D0 8F818088 */  lw    $at, %got(B_1002363C)($gp)
/* 0042D3D4 24020002 */  li    $v0, 2
/* 0042D3D8 AC22363C */  sw    $v0, %lo(B_1002363C)($at)
/* 0042D3DC 8F818AB8 */  lw     $at, %got(mtf_hazard)($gp)
/* 0042D3E0 00000000 */  nop   
/* 0042D3E4 AC220000 */  sw    $v0, ($at)
/* 0042D3E8 8F818088 */  lw    $at, %got(B_10023640)($gp)
/* 0042D3EC 03E00008 */  jr    $ra
/* 0042D3F0 AC223640 */   sw    $v0, %lo(B_10023640)($at)

.L0042D3F4:
/* 0042D3F4 8F818088 */  lw    $at, %got(B_1002363C)($gp)
/* 0042D3F8 24020002 */  li    $v0, 2
/* 0042D3FC AC20363C */  sw    $zero, %lo(B_1002363C)($at)
/* 0042D400 8F818AB8 */  lw     $at, %got(mtf_hazard)($gp)
/* 0042D404 00000000 */  nop   
/* 0042D408 AC220000 */  sw    $v0, ($at)
/* 0042D40C 8F818088 */  lw    $at, %got(B_10023640)($gp)
/* 0042D410 00000000 */  nop   
/* 0042D414 AC203640 */  sw    $zero, %lo(B_10023640)($at)
/* 0042D418 03E00008 */  jr    $ra
/* 0042D41C 00000000 */   nop   

    .type reorganize_init, @function
    .size reorganize_init, .-reorganize_init
    .end reorganize_init

    .type func_0042D420, @function
func_0042D420:
    # 0042D8E8 func_0042D8E8
    # 0042E2E0 func_0042E2E0
    # 0042E834 func_0042E834
    # 0042EB84 func_0042EB84
    # 004318D4 func_004318D4
/* 0042D420 3C1C0FC0 */  .cpload $t9
/* 0042D424 279CCE40 */  
/* 0042D428 0399E021 */  
/* 0042D42C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0042D430 AFB00018 */  sw    $s0, 0x18($sp)
/* 0042D434 00808025 */  move  $s0, $a0
/* 0042D438 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0042D43C AFBC0020 */  sw    $gp, 0x20($sp)
/* 0042D440 10800008 */  beqz  $a0, .L0042D464
/* 0042D444 AFB1001C */   sw    $s1, 0x1c($sp)
.L0042D448:
/* 0042D448 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 0042D44C 8E110000 */  lw    $s1, ($s0)
/* 0042D450 0320F809 */  jalr  $t9
/* 0042D454 02002025 */   move  $a0, $s0
/* 0042D458 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042D45C 1620FFFA */  bnez  $s1, .L0042D448
/* 0042D460 02208025 */   move  $s0, $s1
.L0042D464:
/* 0042D464 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0042D468 8FB00018 */  lw    $s0, 0x18($sp)
/* 0042D46C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0042D470 03E00008 */  jr    $ra
/* 0042D474 27BD0028 */   addiu $sp, $sp, 0x28

    .type func_0042D478, @function
func_0042D478:
    # 0042D550 func_0042D550
    # 0042D5F0 func_0042D5F0
    # 00433ED0 func_00433ED0
/* 0042D478 3C1C0FC0 */  .cpload $t9
/* 0042D47C 279CCDE8 */  
/* 0042D480 0399E021 */  
/* 0042D484 8F83808C */  lw    $v1, %got(B_1002DD70)($gp)
/* 0042D488 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0042D48C 8C63DD70 */  lw    $v1, %lo(B_1002DD70)($v1)
/* 0042D490 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0042D494 00034082 */  srl   $t0, $v1, 2
/* 0042D498 29010258 */  slti  $at, $t0, 0x258
/* 0042D49C AFBC0018 */  sw    $gp, 0x18($sp)
/* 0042D4A0 AFA40028 */  sw    $a0, 0x28($sp)
/* 0042D4A4 AFA5002C */  sw    $a1, 0x2c($sp)
/* 0042D4A8 AFA60030 */  sw    $a2, 0x30($sp)
/* 0042D4AC 1420000F */  bnez  $at, .L0042D4EC
/* 0042D4B0 AFA70034 */   sw    $a3, 0x34($sp)
/* 0042D4B4 8F84806C */  lw    $a0, %got(RO_100152E0)($gp)
/* 0042D4B8 8F85806C */  lw    $a1, %got(RO_100152F4)($gp)
/* 0042D4BC 8F998670 */  lw    $t9, %call16(assertion_failed)($gp)
/* 0042D4C0 24060258 */  li    $a2, 600
/* 0042D4C4 AFA80024 */  sw    $t0, 0x24($sp)
/* 0042D4C8 248452E0 */  addiu $a0, %lo(RO_100152E0) # addiu $a0, $a0, 0x52e0
/* 0042D4CC 0320F809 */  jalr  $t9
/* 0042D4D0 24A552F4 */   addiu $a1, %lo(RO_100152F4) # addiu $a1, $a1, 0x52f4
/* 0042D4D4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042D4D8 8FA80024 */  lw    $t0, 0x24($sp)
/* 0042D4DC 8F83808C */  lw    $v1, %got(B_1002DD70)($gp)
/* 0042D4E0 00000000 */  nop   
/* 0042D4E4 8C63DD70 */  lw    $v1, %lo(B_1002DD70)($v1)
/* 0042D4E8 00000000 */  nop   
.L0042D4EC:
/* 0042D4EC 8F8F808C */  lw    $t7, %got(B_1002A530)($gp)
/* 0042D4F0 00087080 */  sll   $t6, $t0, 2
/* 0042D4F4 01C87023 */  subu  $t6, $t6, $t0
/* 0042D4F8 000E70C0 */  sll   $t6, $t6, 3
/* 0042D4FC 27B80028 */  addiu $t8, $sp, 0x28
/* 0042D500 25EFA530 */  addiu $t7, %lo(B_1002A530) # addiu $t7, $t7, -0x5ad0
/* 0042D504 8F010000 */  lw    $at, ($t8)
/* 0042D508 01CF1021 */  addu  $v0, $t6, $t7
/* 0042D50C 8FAB002C */  lw    $t3, 0x2c($sp)
/* 0042D510 8FAC0030 */  lw    $t4, 0x30($sp)
/* 0042D514 8FAD0034 */  lw    $t5, 0x34($sp)
/* 0042D518 8FAE0038 */  lw    $t6, 0x38($sp)
/* 0042D51C 8FAF003C */  lw    $t7, 0x3c($sp)
/* 0042D520 AC410000 */  sw    $at, ($v0)
/* 0042D524 8F81808C */  lw    $at, %got(B_1002DD70)($gp)
/* 0042D528 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0042D52C 24690004 */  addiu $t1, $v1, 4
/* 0042D530 AC4B0004 */  sw    $t3, 4($v0)
/* 0042D534 AC4C0008 */  sw    $t4, 8($v0)
/* 0042D538 AC4D000C */  sw    $t5, 0xc($v0)
/* 0042D53C AC4E0010 */  sw    $t6, 0x10($v0)
/* 0042D540 AC4F0014 */  sw    $t7, 0x14($v0)
/* 0042D544 27BD0028 */  addiu $sp, $sp, 0x28
/* 0042D548 03E00008 */  jr    $ra
/* 0042D54C AC29DD70 */   sw    $t1, %lo(B_1002DD70)($at)

    .type func_0042D550, @function
func_0042D550:
    # 00433ED0 func_00433ED0
/* 0042D550 3C1C0FC0 */  .cpload $t9
/* 0042D554 279CCD10 */  
/* 0042D558 0399E021 */  
/* 0042D55C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0042D560 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0042D564 AFBC0020 */  sw    $gp, 0x20($sp)
/* 0042D568 AFB0001C */  sw    $s0, 0x1c($sp)
/* 0042D56C 8C810000 */  lw    $at, ($a0)
/* 0042D570 8F888088 */  lw    $t0, %got(B_10023634)($gp)
/* 0042D574 27AE002C */  addiu $t6, $sp, 0x2c
/* 0042D578 ADC10000 */  sw    $at, ($t6)
/* 0042D57C 8D083634 */  lw    $t0, %lo(B_10023634)($t0)
/* 0042D580 00808025 */  move  $s0, $a0
/* 0042D584 11000009 */  beqz  $t0, .L0042D5AC
/* 0042D588 27A4002C */   addiu $a0, $sp, 0x2c
/* 0042D58C 8C850000 */  lw    $a1, ($a0)
/* 0042D590 8F998314 */  lw    $t9, %call16(assign_real_regs)($gp)
/* 0042D594 AFA50004 */  sw    $a1, 4($sp)
/* 0042D598 8E060014 */  lw    $a2, 0x14($s0)
/* 0042D59C 0320F809 */  jalr  $t9
/* 0042D5A0 00000000 */   nop   
/* 0042D5A4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042D5A8 00000000 */  nop   
.L0042D5AC:
/* 0042D5AC 8FA4002C */  lw    $a0, 0x2c($sp)
/* 0042D5B0 8F998020 */  lw    $t9, %got(func_0042D478)($gp)
/* 0042D5B4 AFA40000 */  sw    $a0, ($sp)
/* 0042D5B8 8E0D0010 */  lw    $t5, 0x10($s0)
/* 0042D5BC 8E07000C */  lw    $a3, 0xc($s0)
/* 0042D5C0 8E060008 */  lw    $a2, 8($s0)
/* 0042D5C4 8E050004 */  lw    $a1, 4($s0)
/* 0042D5C8 AFAD0010 */  sw    $t5, 0x10($sp)
/* 0042D5CC 8E180014 */  lw    $t8, 0x14($s0)
/* 0042D5D0 2739D478 */  addiu $t9, %lo(func_0042D478) # addiu $t9, $t9, -0x2b88
/* 0042D5D4 0320F809 */  jalr  $t9
/* 0042D5D8 AFB80014 */   sw    $t8, 0x14($sp)
/* 0042D5DC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0042D5E0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042D5E4 8FB0001C */  lw    $s0, 0x1c($sp)
/* 0042D5E8 03E00008 */  jr    $ra
/* 0042D5EC 27BD0030 */   addiu $sp, $sp, 0x30

    .type func_0042D5F0, @function
func_0042D5F0:
    # 00433ED0 func_00433ED0
/* 0042D5F0 3C1C0FC0 */  .cpload $t9
/* 0042D5F4 279CCC70 */  
/* 0042D5F8 0399E021 */  
/* 0042D5FC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0042D600 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0042D604 AFBC0020 */  sw    $gp, 0x20($sp)
/* 0042D608 AFB0001C */  sw    $s0, 0x1c($sp)
/* 0042D60C AFA50034 */  sw    $a1, 0x34($sp)
/* 0042D610 8C810004 */  lw    $at, 4($a0)
/* 0042D614 8F888088 */  lw    $t0, %got(B_10023634)($gp)
/* 0042D618 27AE002C */  addiu $t6, $sp, 0x2c
/* 0042D61C ADC10000 */  sw    $at, ($t6)
/* 0042D620 8D083634 */  lw    $t0, %lo(B_10023634)($t0)
/* 0042D624 00808025 */  move  $s0, $a0
/* 0042D628 11000009 */  beqz  $t0, .L0042D650
/* 0042D62C 27A4002C */   addiu $a0, $sp, 0x2c
/* 0042D630 8C850000 */  lw    $a1, ($a0)
/* 0042D634 8F998314 */  lw    $t9, %call16(assign_real_regs)($gp)
/* 0042D638 AFA50004 */  sw    $a1, 4($sp)
/* 0042D63C 8E060010 */  lw    $a2, 0x10($s0)
/* 0042D640 0320F809 */  jalr  $t9
/* 0042D644 00000000 */   nop   
/* 0042D648 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042D64C 00000000 */  nop   
.L0042D650:
/* 0042D650 8FA4002C */  lw    $a0, 0x2c($sp)
/* 0042D654 8FAD0034 */  lw    $t5, 0x34($sp)
/* 0042D658 AFA40000 */  sw    $a0, ($sp)
/* 0042D65C 8DB80010 */  lw    $t8, 0x10($t5)
/* 0042D660 8E06000C */  lw    $a2, 0xc($s0)
/* 0042D664 8E050008 */  lw    $a1, 8($s0)
/* 0042D668 8DA7000C */  lw    $a3, 0xc($t5)
/* 0042D66C 8F998020 */  lw    $t9, %got(func_0042D478)($gp)
/* 0042D670 AFB80010 */  sw    $t8, 0x10($sp)
/* 0042D674 8E0F0010 */  lw    $t7, 0x10($s0)
/* 0042D678 2739D478 */  addiu $t9, %lo(func_0042D478) # addiu $t9, $t9, -0x2b88
/* 0042D67C 0320F809 */  jalr  $t9
/* 0042D680 AFAF0014 */   sw    $t7, 0x14($sp)
/* 0042D684 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0042D688 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042D68C 8FB0001C */  lw    $s0, 0x1c($sp)
/* 0042D690 03E00008 */  jr    $ra
/* 0042D694 27BD0030 */   addiu $sp, $sp, 0x30

    .type func_0042D698, @function
func_0042D698:
    # 0042D8E8 func_0042D8E8
    # 0042DE4C func_0042DE4C
    # 0042E2E0 func_0042E2E0
    # 0042E530 func_0042E530
    # 0042E834 func_0042E834
    # 0042EB84 func_0042EB84
    # 0042EE78 func_0042EE78
    # 0042F0E8 func_0042F0E8
    # 0042F244 func_0042F244
    # 0042F3BC func_0042F3BC
    # 0042F4D8 func_0042F4D8
    # 004318D4 func_004318D4
/* 0042D698 3C1C0FC0 */  .cpload $t9
/* 0042D69C 279CCBC8 */  
/* 0042D6A0 0399E021 */  
/* 0042D6A4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0042D6A8 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0042D6AC AFB10018 */  sw    $s1, 0x18($sp)
/* 0042D6B0 AFB00014 */  sw    $s0, 0x14($sp)
/* 0042D6B4 00E08025 */  move  $s0, $a3
/* 0042D6B8 00C08825 */  move  $s1, $a2
/* 0042D6BC 00809025 */  move  $s2, $a0
/* 0042D6C0 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0042D6C4 1485000F */  bne   $a0, $a1, .L0042D704
/* 0042D6C8 AFBC0020 */   sw    $gp, 0x20($sp)
/* 0042D6CC 8C8E0020 */  lw    $t6, 0x20($a0)
/* 0042D6D0 240602AB */  li    $a2, 683
/* 0042D6D4 31CF0002 */  andi  $t7, $t6, 2
/* 0042D6D8 15E0007E */  bnez  $t7, .L0042D8D4
/* 0042D6DC 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0042D6E0 8F84806C */  lw    $a0, %got(RO_10015304)($gp)
/* 0042D6E4 8F85806C */  lw    $a1, %got(RO_1001531C)($gp)
/* 0042D6E8 8F998670 */  lw    $t9, %call16(assertion_failed)($gp)
/* 0042D6EC 24845304 */  addiu $a0, %lo(RO_10015304) # addiu $a0, $a0, 0x5304
/* 0042D6F0 0320F809 */  jalr  $t9
/* 0042D6F4 24A5531C */   addiu $a1, %lo(RO_1001531C) # addiu $a1, $a1, 0x531c
/* 0042D6F8 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042D6FC 10000075 */  b     .L0042D8D4
/* 0042D700 8FBF0024 */   lw    $ra, 0x24($sp)
.L0042D704:
/* 0042D704 8E420024 */  lw    $v0, 0x24($s2)
/* 0042D708 00003025 */  move  $a2, $zero
/* 0042D70C 10400033 */  beqz  $v0, .L0042D7DC
/* 0042D710 00003825 */   move  $a3, $zero
.L0042D714:
/* 0042D714 8C430008 */  lw    $v1, 8($v0)
/* 0042D718 00000000 */  nop   
/* 0042D71C 14A3001F */  bne   $a1, $v1, .L0042D79C
/* 0042D720 00000000 */   nop   
/* 0042D724 94B8002A */  lhu   $t8, 0x2a($a1)
/* 0042D728 00000000 */  nop   
/* 0042D72C 17000006 */  bnez  $t8, .L0042D748
/* 0042D730 00000000 */   nop   
/* 0042D734 8CB90020 */  lw    $t9, 0x20($a1)
/* 0042D738 00000000 */  nop   
/* 0042D73C 33280002 */  andi  $t0, $t9, 2
/* 0042D740 15000022 */  bnez  $t0, .L0042D7CC
/* 0042D744 00000000 */   nop   
.L0042D748:
/* 0042D748 94490004 */  lhu   $t1, 4($v0)
/* 0042D74C 00403825 */  move  $a3, $v0
/* 0042D750 0130082B */  sltu  $at, $t1, $s0
/* 0042D754 10200002 */  beqz  $at, .L0042D760
/* 0042D758 00000000 */   nop   
/* 0042D75C A4500004 */  sh    $s0, 4($v0)
.L0042D760:
/* 0042D760 844A0006 */  lh    $t2, 6($v0)
/* 0042D764 00000000 */  nop   
/* 0042D768 0151082A */  slt   $at, $t2, $s1
/* 0042D76C 10200059 */  beqz  $at, .L0042D8D4
/* 0042D770 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0042D774 14C00004 */  bnez  $a2, .L0042D788
/* 0042D778 00000000 */   nop   
/* 0042D77C 8C4B0000 */  lw    $t3, ($v0)
/* 0042D780 10000012 */  b     .L0042D7CC
/* 0042D784 AE4B0024 */   sw    $t3, 0x24($s2)
.L0042D788:
/* 0042D788 8C4C0000 */  lw    $t4, ($v0)
/* 0042D78C 00000000 */  nop   
/* 0042D790 ACCC0000 */  sw    $t4, ($a2)
/* 0042D794 1000000D */  b     .L0042D7CC
/* 0042D798 00403825 */   move  $a3, $v0
.L0042D79C:
/* 0042D79C 84440006 */  lh    $a0, 6($v0)
/* 0042D7A0 00000000 */  nop   
/* 0042D7A4 04800008 */  bltz  $a0, .L0042D7C8
/* 0042D7A8 00000000 */   nop   
/* 0042D7AC 946D002C */  lhu   $t5, 0x2c($v1)
/* 0042D7B0 94AF002C */  lhu   $t7, 0x2c($a1)
/* 0042D7B4 01A47021 */  addu  $t6, $t5, $a0
/* 0042D7B8 01F1C021 */  addu  $t8, $t7, $s1
/* 0042D7BC 01D8082A */  slt   $at, $t6, $t8
/* 0042D7C0 10200002 */  beqz  $at, .L0042D7CC
/* 0042D7C4 00000000 */   nop   
.L0042D7C8:
/* 0042D7C8 00403025 */  move  $a2, $v0
.L0042D7CC:
/* 0042D7CC 8C420000 */  lw    $v0, ($v0)
/* 0042D7D0 00000000 */  nop   
/* 0042D7D4 1440FFCF */  bnez  $v0, .L0042D714
/* 0042D7D8 00000000 */   nop   
.L0042D7DC:
/* 0042D7DC 14E00031 */  bnez  $a3, .L0042D8A4
/* 0042D7E0 00000000 */   nop   
/* 0042D7E4 94A2002A */  lhu   $v0, 0x2a($a1)
/* 0042D7E8 00000000 */  nop   
/* 0042D7EC 14400021 */  bnez  $v0, .L0042D874
/* 0042D7F0 244B0001 */   addiu $t3, $v0, 1
/* 0042D7F4 8F828088 */  lw    $v0, %got(B_10025A1C)($gp)
/* 0042D7F8 00000000 */  nop   
/* 0042D7FC 24425A1C */  addiu $v0, %lo(B_10025A1C) # addiu $v0, $v0, 0x5a1c
/* 0042D800 8C440000 */  lw    $a0, ($v0)
/* 0042D804 00000000 */  nop   
/* 0042D808 8C990008 */  lw    $t9, 8($a0)
/* 0042D80C 00000000 */  nop   
/* 0042D810 14B90004 */  bne   $a1, $t9, .L0042D824
/* 0042D814 00000000 */   nop   
/* 0042D818 8C880000 */  lw    $t0, ($a0)
/* 0042D81C 1000000B */  b     .L0042D84C
/* 0042D820 AC480000 */   sw    $t0, ($v0)
.L0042D824:
/* 0042D824 00801025 */  move  $v0, $a0
/* 0042D828 8C840000 */  lw    $a0, ($a0)
/* 0042D82C 00000000 */  nop   
/* 0042D830 8C890008 */  lw    $t1, 8($a0)
/* 0042D834 00000000 */  nop   
/* 0042D838 14A9FFFA */  bne   $a1, $t1, .L0042D824
/* 0042D83C 00000000 */   nop   
/* 0042D840 8C8A0000 */  lw    $t2, ($a0)
/* 0042D844 00000000 */  nop   
/* 0042D848 AC4A0000 */  sw    $t2, ($v0)
.L0042D84C:
/* 0042D84C 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 0042D850 AFA50034 */  sw    $a1, 0x34($sp)
/* 0042D854 0320F809 */  jalr  $t9
/* 0042D858 AFA6002C */   sw    $a2, 0x2c($sp)
/* 0042D85C 8FA50034 */  lw    $a1, 0x34($sp)
/* 0042D860 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042D864 8FA6002C */  lw    $a2, 0x2c($sp)
/* 0042D868 94A2002A */  lhu   $v0, 0x2a($a1)
/* 0042D86C 00000000 */  nop   
/* 0042D870 244B0001 */  addiu $t3, $v0, 1
.L0042D874:
/* 0042D874 A4AB002A */  sh    $t3, 0x2a($a1)
/* 0042D878 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0042D87C AFA6002C */  sw    $a2, 0x2c($sp)
/* 0042D880 AFA50034 */  sw    $a1, 0x34($sp)
/* 0042D884 0320F809 */  jalr  $t9
/* 0042D888 2404000C */   li    $a0, 12
/* 0042D88C 8FA50034 */  lw    $a1, 0x34($sp)
/* 0042D890 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042D894 8FA6002C */  lw    $a2, 0x2c($sp)
/* 0042D898 00403825 */  move  $a3, $v0
/* 0042D89C A4500004 */  sh    $s0, 4($v0)
/* 0042D8A0 AC450008 */  sw    $a1, 8($v0)
.L0042D8A4:
/* 0042D8A4 14C00006 */  bnez  $a2, .L0042D8C0
/* 0042D8A8 A4F10006 */   sh    $s1, 6($a3)
/* 0042D8AC 8E4C0024 */  lw    $t4, 0x24($s2)
/* 0042D8B0 00000000 */  nop   
/* 0042D8B4 ACEC0000 */  sw    $t4, ($a3)
/* 0042D8B8 10000005 */  b     .L0042D8D0
/* 0042D8BC AE470024 */   sw    $a3, 0x24($s2)
.L0042D8C0:
/* 0042D8C0 8CCD0000 */  lw    $t5, ($a2)
/* 0042D8C4 00000000 */  nop   
/* 0042D8C8 ACED0000 */  sw    $t5, ($a3)
/* 0042D8CC ACC70000 */  sw    $a3, ($a2)
.L0042D8D0:
/* 0042D8D0 8FBF0024 */  lw    $ra, 0x24($sp)
.L0042D8D4:
/* 0042D8D4 8FB00014 */  lw    $s0, 0x14($sp)
/* 0042D8D8 8FB10018 */  lw    $s1, 0x18($sp)
/* 0042D8DC 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0042D8E0 03E00008 */  jr    $ra
/* 0042D8E4 27BD0030 */   addiu $sp, $sp, 0x30

    .type func_0042D8E8, @function
func_0042D8E8:
    # 0042F4D8 func_0042F4D8
/* 0042D8E8 3C1C0FC0 */  .cpload $t9
/* 0042D8EC 279CC978 */  
/* 0042D8F0 0399E021 */  
/* 0042D8F4 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0042D8F8 AFB30020 */  sw    $s3, 0x20($sp)
/* 0042D8FC 8F938088 */  lw    $s3, %got(B_10023644)($gp)
/* 0042D900 AFB10018 */  sw    $s1, 0x18($sp)
/* 0042D904 26733644 */  addiu $s3, %lo(B_10023644) # addiu $s3, $s3, 0x3644
/* 0042D908 8E710000 */  lw    $s1, ($s3)
/* 0042D90C AFBF003C */  sw    $ra, 0x3c($sp)
/* 0042D910 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0042D914 AFBC0034 */  sw    $gp, 0x34($sp)
/* 0042D918 AFB70030 */  sw    $s7, 0x30($sp)
/* 0042D91C AFB6002C */  sw    $s6, 0x2c($sp)
/* 0042D920 AFB50028 */  sw    $s5, 0x28($sp)
/* 0042D924 AFB40024 */  sw    $s4, 0x24($sp)
/* 0042D928 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0042D92C AFB00014 */  sw    $s0, 0x14($sp)
/* 0042D930 AFA40048 */  sw    $a0, 0x48($sp)
/* 0042D934 AFA5004C */  sw    $a1, 0x4c($sp)
/* 0042D938 AFA60050 */  sw    $a2, 0x50($sp)
/* 0042D93C 8E220004 */  lw    $v0, 4($s1)
/* 0042D940 8E370008 */  lw    $s7, 8($s1)
/* 0042D944 1040000A */  beqz  $v0, .L0042D970
/* 0042D948 00008025 */   move  $s0, $zero
/* 0042D94C 8F8E8AF4 */  lw     $t6, %got(rld_list)($gp)
/* 0042D950 00027880 */  sll   $t7, $v0, 2
/* 0042D954 8DCE0000 */  lw    $t6, ($t6)
/* 0042D958 01E27823 */  subu  $t7, $t7, $v0
/* 0042D95C 000F78C0 */  sll   $t7, $t7, 3
/* 0042D960 01CFC021 */  addu  $t8, $t6, $t7
/* 0042D964 83100010 */  lb    $s0, 0x10($t8)
/* 0042D968 10000001 */  b     .L0042D970
/* 0042D96C 00000000 */   nop   
.L0042D970:
/* 0042D970 8F858088 */  lw    $a1, %got(B_10024238)($gp)
/* 0042D974 02202025 */  move  $a0, $s1
/* 0042D978 8CA54238 */  lw    $a1, %lo(B_10024238)($a1)
/* 0042D97C 00000000 */  nop   
/* 0042D980 10A00009 */  beqz  $a1, .L0042D9A8
/* 0042D984 00000000 */   nop   
/* 0042D988 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042D98C 24060001 */  li    $a2, 1
/* 0042D990 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042D994 0320F809 */  jalr  $t9
/* 0042D998 00003825 */   move  $a3, $zero
/* 0042D99C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0042D9A0 8E710000 */  lw    $s1, ($s3)
/* 0042D9A4 00000000 */  nop   
.L0042D9A8:
/* 0042D9A8 8E390020 */  lw    $t9, 0x20($s1)
/* 0042D9AC 00000000 */  nop   
/* 0042D9B0 33280001 */  andi  $t0, $t9, 1
/* 0042D9B4 11000011 */  beqz  $t0, .L0042D9FC
/* 0042D9B8 00000000 */   nop   
/* 0042D9BC 8F928088 */  lw    $s2, %got(B_1002423C)($gp)
/* 0042D9C0 02202025 */  move  $a0, $s1
/* 0042D9C4 2652423C */  addiu $s2, %lo(B_1002423C) # addiu $s2, $s2, 0x423c
/* 0042D9C8 8E450000 */  lw    $a1, ($s2)
/* 0042D9CC 00000000 */  nop   
/* 0042D9D0 10A00009 */  beqz  $a1, .L0042D9F8
/* 0042D9D4 00000000 */   nop   
/* 0042D9D8 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042D9DC 24060001 */  li    $a2, 1
/* 0042D9E0 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042D9E4 0320F809 */  jalr  $t9
/* 0042D9E8 00003825 */   move  $a3, $zero
/* 0042D9EC 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0042D9F0 8E710000 */  lw    $s1, ($s3)
/* 0042D9F4 00000000 */  nop   
.L0042D9F8:
/* 0042D9F8 AE510000 */  sw    $s1, ($s2)
.L0042D9FC:
/* 0042D9FC 16E00007 */  bnez  $s7, .L0042DA1C
/* 0042DA00 2401000E */   li    $at, 14
/* 0042DA04 8FA90048 */  lw    $t1, 0x48($sp)
/* 0042DA08 2401001D */  li    $at, 29
/* 0042DA0C 15210003 */  bne   $t1, $at, .L0042DA1C
/* 0042DA10 2401000E */   li    $at, 14
/* 0042DA14 2417FFFF */  li    $s7, -1
/* 0042DA18 2401000E */  li    $at, 14
.L0042DA1C:
/* 0042DA1C 1201000B */  beq   $s0, $at, .L0042DA4C
/* 0042DA20 2401000F */   li    $at, 15
/* 0042DA24 12010009 */  beq   $s0, $at, .L0042DA4C
/* 0042DA28 24010017 */   li    $at, 23
/* 0042DA2C 12010007 */  beq   $s0, $at, .L0042DA4C
/* 0042DA30 24010018 */   li    $at, 24
/* 0042DA34 12010005 */  beq   $s0, $at, .L0042DA4C
/* 0042DA38 24010015 */   li    $at, 21
/* 0042DA3C 12010003 */  beq   $s0, $at, .L0042DA4C
/* 0042DA40 24010016 */   li    $at, 22
/* 0042DA44 16010002 */  bne   $s0, $at, .L0042DA50
/* 0042DA48 00000000 */   nop   
.L0042DA4C:
/* 0042DA4C 2417FFFE */  li    $s7, -2
.L0042DA50:
/* 0042DA50 8F828088 */  lw    $v0, %got(B_10025A20)($gp)
/* 0042DA54 AFA00044 */  sw    $zero, 0x44($sp)
/* 0042DA58 8C425A20 */  lw    $v0, %lo(B_10025A20)($v0)
/* 0042DA5C 0000B025 */  move  $s6, $zero
/* 0042DA60 104000BB */  beqz  $v0, .L0042DD50
/* 0042DA64 8FAD0044 */   lw    $t5, 0x44($sp)
/* 0042DA68 8F958088 */  lw    $s5, %got(B_10025A28)($gp)
/* 0042DA6C 8F928938 */  lw     $s2, %got(store_bus_time)($gp)
/* 0042DA70 241EFFFE */  li    $fp, -2
/* 0042DA74 26B55A28 */  addiu $s5, %lo(B_10025A28) # addiu $s5, $s5, 0x5a28
.L0042DA78:
/* 0042DA78 92A20000 */  lbu   $v0, ($s5)
/* 0042DA7C 8FAA0048 */  lw    $t2, 0x48($sp)
/* 0042DA80 8EA30004 */  lw    $v1, 4($s5)
/* 0042DA84 144A0050 */  bne   $v0, $t2, .L0042DBC8
/* 0042DA88 00000000 */   nop   
/* 0042DA8C 1477004E */  bne   $v1, $s7, .L0042DBC8
/* 0042DA90 00000000 */   nop   
/* 0042DA94 86A20002 */  lh    $v0, 2($s5)
/* 0042DA98 92AC0001 */  lbu   $t4, 1($s5)
/* 0042DA9C 8FAB004C */  lw    $t3, 0x4c($sp)
/* 0042DAA0 01826821 */  addu  $t5, $t4, $v0
/* 0042DAA4 016D082A */  slt   $at, $t3, $t5
/* 0042DAA8 102000A2 */  beqz  $at, .L0042DD34
/* 0042DAAC 00000000 */   nop   
/* 0042DAB0 8FAE004C */  lw    $t6, 0x4c($sp)
/* 0042DAB4 8FAF0050 */  lw    $t7, 0x50($sp)
/* 0042DAB8 00000000 */  nop   
/* 0042DABC 01CFC021 */  addu  $t8, $t6, $t7
/* 0042DAC0 0058082A */  slt   $at, $v0, $t8
/* 0042DAC4 1020009B */  beqz  $at, .L0042DD34
/* 0042DAC8 00161080 */   sll   $v0, $s6, 2
/* 0042DACC 8F998088 */  lw    $t9, %got(B_10023658)($gp)
/* 0042DAD0 8F898088 */  lw    $t1, %got(B_10024248)($gp)
/* 0042DAD4 27393658 */  addiu $t9, %lo(B_10023658) # addiu $t9, $t9, 0x3658
/* 0042DAD8 00594021 */  addu  $t0, $v0, $t9
/* 0042DADC 8D100140 */  lw    $s0, 0x140($t0)
/* 0042DAE0 25294248 */  addiu $t1, %lo(B_10024248) # addiu $t1, $t1, 0x4248
/* 0042DAE4 1200000B */  beqz  $s0, .L0042DB14
/* 0042DAE8 0049A021 */   addu  $s4, $v0, $t1
/* 0042DAEC 8E710000 */  lw    $s1, ($s3)
/* 0042DAF0 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042DAF4 96260028 */  lhu   $a2, 0x28($s1)
/* 0042DAF8 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042DAFC 02002825 */  move  $a1, $s0
/* 0042DB00 00003825 */  move  $a3, $zero
/* 0042DB04 0320F809 */  jalr  $t9
/* 0042DB08 02202025 */   move  $a0, $s1
/* 0042DB0C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0042DB10 00000000 */  nop   
.L0042DB14:
/* 0042DB14 8E900140 */  lw    $s0, 0x140($s4)
/* 0042DB18 00000000 */  nop   
/* 0042DB1C 12000017 */  beqz  $s0, .L0042DB7C
/* 0042DB20 8FAC004C */   lw    $t4, 0x4c($sp)
.L0042DB24:
/* 0042DB24 8E430000 */  lw    $v1, ($s2)
/* 0042DB28 8E020004 */  lw    $v0, 4($s0)
/* 0042DB2C 8E710000 */  lw    $s1, ($s3)
/* 0042DB30 246A0001 */  addiu $t2, $v1, 1
/* 0042DB34 004A082B */  sltu  $at, $v0, $t2
/* 0042DB38 14200004 */  bnez  $at, .L0042DB4C
/* 0042DB3C 02202025 */   move  $a0, $s1
/* 0042DB40 96260028 */  lhu   $a2, 0x28($s1)
/* 0042DB44 10000003 */  b     .L0042DB54
/* 0042DB48 00000000 */   nop   
.L0042DB4C:
/* 0042DB4C 00623023 */  subu  $a2, $v1, $v0
/* 0042DB50 24C60001 */  addiu $a2, $a2, 1
.L0042DB54:
/* 0042DB54 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042DB58 8E050008 */  lw    $a1, 8($s0)
/* 0042DB5C 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042DB60 0320F809 */  jalr  $t9
/* 0042DB64 00003825 */   move  $a3, $zero
/* 0042DB68 8E100000 */  lw    $s0, ($s0)
/* 0042DB6C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0042DB70 1600FFEC */  bnez  $s0, .L0042DB24
/* 0042DB74 00000000 */   nop   
/* 0042DB78 8FAC004C */  lw    $t4, 0x4c($sp)
.L0042DB7C:
/* 0042DB7C 86AB0002 */  lh    $t3, 2($s5)
/* 0042DB80 8FAD0050 */  lw    $t5, 0x50($sp)
/* 0042DB84 158B006B */  bne   $t4, $t3, .L0042DD34
/* 0042DB88 00000000 */   nop   
/* 0042DB8C 92AE0001 */  lbu   $t6, 1($s5)
/* 0042DB90 26C20050 */  addiu $v0, $s6, 0x50
/* 0042DB94 15AE0067 */  bne   $t5, $t6, .L0042DD34
/* 0042DB98 00027880 */   sll   $t7, $v0, 2
/* 0042DB9C 8F988088 */  lw    $t8, %got(B_10024248)($gp)
/* 0042DBA0 8F998020 */  lw    $t9, %got(func_0042D420)($gp)
/* 0042DBA4 8E840140 */  lw    $a0, 0x140($s4)
/* 0042DBA8 27184248 */  addiu $t8, %lo(B_10024248) # addiu $t8, $t8, 0x4248
/* 0042DBAC 2739D420 */  addiu $t9, %lo(func_0042D420) # addiu $t9, $t9, -0x2be0
/* 0042DBB0 AFA20044 */  sw    $v0, 0x44($sp)
/* 0042DBB4 0320F809 */  jalr  $t9
/* 0042DBB8 01F88021 */   addu  $s0, $t7, $t8
/* 0042DBBC 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0042DBC0 1000005C */  b     .L0042DD34
/* 0042DBC4 AE000000 */   sw    $zero, ($s0)
.L0042DBC8:
/* 0042DBC8 12FE0009 */  beq   $s7, $fp, .L0042DBF0
/* 0042DBCC 00000000 */   nop   
/* 0042DBD0 107E0007 */  beq   $v1, $fp, .L0042DBF0
/* 0042DBD4 00000000 */   nop   
/* 0042DBD8 12E00019 */  beqz  $s7, .L0042DC40
/* 0042DBDC 00000000 */   nop   
/* 0042DBE0 10600017 */  beqz  $v1, .L0042DC40
/* 0042DBE4 00000000 */   nop   
/* 0042DBE8 12E30015 */  beq   $s7, $v1, .L0042DC40
/* 0042DBEC 00000000 */   nop   
.L0042DBF0:
/* 0042DBF0 12E00050 */  beqz  $s7, .L0042DD34
/* 0042DBF4 2401FFFF */   li    $at, -1
/* 0042DBF8 12E1004E */  beq   $s7, $at, .L0042DD34
/* 0042DBFC 00000000 */   nop   
/* 0042DC00 12FE004C */  beq   $s7, $fp, .L0042DD34
/* 0042DC04 00000000 */   nop   
/* 0042DC08 92F9003E */  lbu   $t9, 0x3e($s7)
/* 0042DC0C 00000000 */  nop   
/* 0042DC10 13200048 */  beqz  $t9, .L0042DD34
/* 0042DC14 00000000 */   nop   
/* 0042DC18 10600046 */  beqz  $v1, .L0042DD34
/* 0042DC1C 2401FFFF */   li    $at, -1
/* 0042DC20 10610044 */  beq   $v1, $at, .L0042DD34
/* 0042DC24 00000000 */   nop   
/* 0042DC28 107E0042 */  beq   $v1, $fp, .L0042DD34
/* 0042DC2C 00000000 */   nop   
/* 0042DC30 9068003E */  lbu   $t0, 0x3e($v1)
/* 0042DC34 00000000 */  nop   
/* 0042DC38 1100003E */  beqz  $t0, .L0042DD34
/* 0042DC3C 00000000 */   nop   
.L0042DC40:
/* 0042DC40 8F898088 */  lw    $t1, %got(B_10023658)($gp)
/* 0042DC44 00161080 */  sll   $v0, $s6, 2
/* 0042DC48 25293658 */  addiu $t1, %lo(B_10023658) # addiu $t1, $t1, 0x3658
/* 0042DC4C 8F8C8088 */  lw    $t4, %got(B_10024248)($gp)
/* 0042DC50 00495021 */  addu  $t2, $v0, $t1
/* 0042DC54 8D500140 */  lw    $s0, 0x140($t2)
/* 0042DC58 258C4248 */  addiu $t4, %lo(B_10024248) # addiu $t4, $t4, 0x4248
/* 0042DC5C 12000011 */  beqz  $s0, .L0042DCA4
/* 0042DC60 004CA021 */   addu  $s4, $v0, $t4
/* 0042DC64 8F9983D0 */  lw    $t9, %call16(do_not_alias)($gp)
/* 0042DC68 8E640000 */  lw    $a0, ($s3)
/* 0042DC6C 0320F809 */  jalr  $t9
/* 0042DC70 02002825 */   move  $a1, $s0
/* 0042DC74 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0042DC78 1440000A */  bnez  $v0, .L0042DCA4
/* 0042DC7C 02002825 */   move  $a1, $s0
/* 0042DC80 8E710000 */  lw    $s1, ($s3)
/* 0042DC84 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042DC88 96260028 */  lhu   $a2, 0x28($s1)
/* 0042DC8C 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042DC90 00003825 */  move  $a3, $zero
/* 0042DC94 0320F809 */  jalr  $t9
/* 0042DC98 02202025 */   move  $a0, $s1
/* 0042DC9C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0042DCA0 00000000 */  nop   
.L0042DCA4:
/* 0042DCA4 8E900140 */  lw    $s0, 0x140($s4)
/* 0042DCA8 00000000 */  nop   
/* 0042DCAC 12000021 */  beqz  $s0, .L0042DD34
/* 0042DCB0 00000000 */   nop   
.L0042DCB4:
/* 0042DCB4 8F9983D0 */  lw    $t9, %call16(do_not_alias)($gp)
/* 0042DCB8 8E640000 */  lw    $a0, ($s3)
/* 0042DCBC 8E050008 */  lw    $a1, 8($s0)
/* 0042DCC0 0320F809 */  jalr  $t9
/* 0042DCC4 00000000 */   nop   
/* 0042DCC8 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0042DCCC 14400015 */  bnez  $v0, .L0042DD24
/* 0042DCD0 00003825 */   move  $a3, $zero
/* 0042DCD4 8E430000 */  lw    $v1, ($s2)
/* 0042DCD8 8E020004 */  lw    $v0, 4($s0)
/* 0042DCDC 246B0001 */  addiu $t3, $v1, 1
/* 0042DCE0 004B082B */  sltu  $at, $v0, $t3
/* 0042DCE4 14200006 */  bnez  $at, .L0042DD00
/* 0042DCE8 00623023 */   subu  $a2, $v1, $v0
/* 0042DCEC 8E710000 */  lw    $s1, ($s3)
/* 0042DCF0 00000000 */  nop   
/* 0042DCF4 96260028 */  lhu   $a2, 0x28($s1)
/* 0042DCF8 10000003 */  b     .L0042DD08
/* 0042DCFC 00000000 */   nop   
.L0042DD00:
/* 0042DD00 8E710000 */  lw    $s1, ($s3)
/* 0042DD04 24C60001 */  addiu $a2, $a2, 1
.L0042DD08:
/* 0042DD08 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042DD0C 8E050008 */  lw    $a1, 8($s0)
/* 0042DD10 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042DD14 0320F809 */  jalr  $t9
/* 0042DD18 02202025 */   move  $a0, $s1
/* 0042DD1C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0042DD20 00000000 */  nop   
.L0042DD24:
/* 0042DD24 8E100000 */  lw    $s0, ($s0)
/* 0042DD28 00000000 */  nop   
/* 0042DD2C 1600FFE1 */  bnez  $s0, .L0042DCB4
/* 0042DD30 00000000 */   nop   
.L0042DD34:
/* 0042DD34 8F828088 */  lw    $v0, %got(B_10025A20)($gp)
/* 0042DD38 26D60001 */  addiu $s6, $s6, 1
/* 0042DD3C 8C425A20 */  lw    $v0, %lo(B_10025A20)($v0)
/* 0042DD40 26B50008 */  addiu $s5, $s5, 8
/* 0042DD44 16C2FF4C */  bne   $s6, $v0, .L0042DA78
/* 0042DD48 00000000 */   nop   
/* 0042DD4C 8FAD0044 */  lw    $t5, 0x44($sp)
.L0042DD50:
/* 0042DD50 8FB80048 */  lw    $t8, 0x48($sp)
/* 0042DD54 15A0001C */  bnez  $t5, .L0042DDC8
/* 0042DD58 001670C0 */   sll   $t6, $s6, 3
/* 0042DD5C 8F8F8088 */  lw    $t7, %got(B_10025A28)($gp)
/* 0042DD60 8FB90050 */  lw    $t9, 0x50($sp)
/* 0042DD64 25EF5A28 */  addiu $t7, %lo(B_10025A28) # addiu $t7, $t7, 0x5a28
/* 0042DD68 01CFA821 */  addu  $s5, $t6, $t7
/* 0042DD6C 8FA8004C */  lw    $t0, 0x4c($sp)
/* 0042DD70 8F818088 */  lw    $at, %got(B_10025A20)($gp)
/* 0042DD74 8F8C8088 */  lw    $t4, %got(B_10025A20)($gp)
/* 0042DD78 A2B80000 */  sb    $t8, ($s5)
/* 0042DD7C AEB70004 */  sw    $s7, 4($s5)
/* 0042DD80 244A0001 */  addiu $t2, $v0, 1
/* 0042DD84 A2B90001 */  sb    $t9, 1($s5)
/* 0042DD88 A6A80002 */  sh    $t0, 2($s5)
/* 0042DD8C AC2A5A20 */  sw    $t2, %lo(B_10025A20)($at)
/* 0042DD90 8D8C5A20 */  lw    $t4, %lo(B_10025A20)($t4)
/* 0042DD94 26C90050 */  addiu $t1, $s6, 0x50
/* 0042DD98 2D81012D */  sltiu $at, $t4, 0x12d
/* 0042DD9C 1420000A */  bnez  $at, .L0042DDC8
/* 0042DDA0 AFA90044 */   sw    $t1, 0x44($sp)
/* 0042DDA4 8F84806C */  lw    $a0, %got(RO_1001532C)($gp)
/* 0042DDA8 8F85806C */  lw    $a1, %got(RO_10015358)($gp)
/* 0042DDAC 8F998670 */  lw    $t9, %call16(assertion_failed)($gp)
/* 0042DDB0 2406035E */  li    $a2, 862
/* 0042DDB4 2484532C */  addiu $a0, %lo(RO_1001532C) # addiu $a0, $a0, 0x532c
/* 0042DDB8 0320F809 */  jalr  $t9
/* 0042DDBC 24A55358 */   addiu $a1, %lo(RO_10015358) # addiu $a1, $a1, 0x5358
/* 0042DDC0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0042DDC4 00000000 */  nop   
.L0042DDC8:
/* 0042DDC8 8FAB0044 */  lw    $t3, 0x44($sp)
/* 0042DDCC 8F8E8088 */  lw    $t6, %got(B_10023658)($gp)
/* 0042DDD0 000B6880 */  sll   $t5, $t3, 2
/* 0042DDD4 25CE3658 */  addiu $t6, %lo(B_10023658) # addiu $t6, $t6, 0x3658
/* 0042DDD8 01AE1821 */  addu  $v1, $t5, $t6
/* 0042DDDC 8C6F0000 */  lw    $t7, ($v1)
/* 0042DDE0 00000000 */  nop   
/* 0042DDE4 15E0000B */  bnez  $t7, .L0042DE14
/* 0042DDE8 00000000 */   nop   
/* 0042DDEC 8F828088 */  lw    $v0, %got(B_10024E28)($gp)
/* 0042DDF0 00000000 */  nop   
/* 0042DDF4 24424E28 */  addiu $v0, %lo(B_10024E28) # addiu $v0, $v0, 0x4e28
/* 0042DDF8 8C580000 */  lw    $t8, ($v0)
/* 0042DDFC 00000000 */  nop   
/* 0042DE00 AF0B0000 */  sw    $t3, ($t8)
/* 0042DE04 8C590000 */  lw    $t9, ($v0)
/* 0042DE08 00000000 */  nop   
/* 0042DE0C 27280004 */  addiu $t0, $t9, 4
/* 0042DE10 AC480000 */  sw    $t0, ($v0)
.L0042DE14:
/* 0042DE14 8E690000 */  lw    $t1, ($s3)
/* 0042DE18 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0042DE1C 8FB30020 */  lw    $s3, 0x20($sp)
/* 0042DE20 8FB00014 */  lw    $s0, 0x14($sp)
/* 0042DE24 8FB10018 */  lw    $s1, 0x18($sp)
/* 0042DE28 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0042DE2C 8FB40024 */  lw    $s4, 0x24($sp)
/* 0042DE30 8FB50028 */  lw    $s5, 0x28($sp)
/* 0042DE34 8FB6002C */  lw    $s6, 0x2c($sp)
/* 0042DE38 8FB70030 */  lw    $s7, 0x30($sp)
/* 0042DE3C 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0042DE40 27BD0048 */  addiu $sp, $sp, 0x48
/* 0042DE44 03E00008 */  jr    $ra
/* 0042DE48 AC690000 */   sw    $t1, ($v1)

    .type func_0042DE4C, @function
func_0042DE4C:
    # 0042F4D8 func_0042F4D8
/* 0042DE4C 3C1C0FC0 */  .cpload $t9
/* 0042DE50 279CC414 */  
/* 0042DE54 0399E021 */  
/* 0042DE58 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0042DE5C AFB70030 */  sw    $s7, 0x30($sp)
/* 0042DE60 8F978088 */  lw    $s7, %got(B_10023644)($gp)
/* 0042DE64 AFB10018 */  sw    $s1, 0x18($sp)
/* 0042DE68 26F73644 */  addiu $s7, %lo(B_10023644) # addiu $s7, $s7, 0x3644
/* 0042DE6C 8EF10000 */  lw    $s1, ($s7)
/* 0042DE70 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0042DE74 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0042DE78 AFBC0034 */  sw    $gp, 0x34($sp)
/* 0042DE7C AFB6002C */  sw    $s6, 0x2c($sp)
/* 0042DE80 AFB50028 */  sw    $s5, 0x28($sp)
/* 0042DE84 AFB40024 */  sw    $s4, 0x24($sp)
/* 0042DE88 AFB30020 */  sw    $s3, 0x20($sp)
/* 0042DE8C AFB2001C */  sw    $s2, 0x1c($sp)
/* 0042DE90 AFB00014 */  sw    $s0, 0x14($sp)
/* 0042DE94 AFA40048 */  sw    $a0, 0x48($sp)
/* 0042DE98 AFA60050 */  sw    $a2, 0x50($sp)
/* 0042DE9C 8E220004 */  lw    $v0, 4($s1)
/* 0042DEA0 8E340008 */  lw    $s4, 8($s1)
/* 0042DEA4 1040000A */  beqz  $v0, .L0042DED0
/* 0042DEA8 00A0F025 */   move  $fp, $a1
/* 0042DEAC 8F8E8AF4 */  lw     $t6, %got(rld_list)($gp)
/* 0042DEB0 00027880 */  sll   $t7, $v0, 2
/* 0042DEB4 8DCE0000 */  lw    $t6, ($t6)
/* 0042DEB8 01E27823 */  subu  $t7, $t7, $v0
/* 0042DEBC 000F78C0 */  sll   $t7, $t7, 3
/* 0042DEC0 01CFC021 */  addu  $t8, $t6, $t7
/* 0042DEC4 83100010 */  lb    $s0, 0x10($t8)
/* 0042DEC8 10000003 */  b     .L0042DED8
/* 0042DECC 8E390020 */   lw    $t9, 0x20($s1)
.L0042DED0:
/* 0042DED0 00008025 */  move  $s0, $zero
/* 0042DED4 8E390020 */  lw    $t9, 0x20($s1)
.L0042DED8:
/* 0042DED8 8F858088 */  lw    $a1, %got(B_10024238)($gp)
/* 0042DEDC 37280004 */  ori   $t0, $t9, 4
/* 0042DEE0 AE280020 */  sw    $t0, 0x20($s1)
/* 0042DEE4 8CA54238 */  lw    $a1, %lo(B_10024238)($a1)
/* 0042DEE8 24060001 */  li    $a2, 1
/* 0042DEEC 10A00008 */  beqz  $a1, .L0042DF10
/* 0042DEF0 00000000 */   nop   
/* 0042DEF4 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042DEF8 8EE40000 */  lw    $a0, ($s7)
/* 0042DEFC 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042DF00 0320F809 */  jalr  $t9
/* 0042DF04 00003825 */   move  $a3, $zero
/* 0042DF08 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0042DF0C 00000000 */  nop   
.L0042DF10:
/* 0042DF10 8F858088 */  lw    $a1, %got(B_10024240)($gp)
/* 0042DF14 00000000 */  nop   
/* 0042DF18 8CA54240 */  lw    $a1, %lo(B_10024240)($a1)
/* 0042DF1C 00000000 */  nop   
/* 0042DF20 10A0000C */  beqz  $a1, .L0042DF54
/* 0042DF24 00000000 */   nop   
/* 0042DF28 8EF10000 */  lw    $s1, ($s7)
/* 0042DF2C 00000000 */  nop   
/* 0042DF30 12250008 */  beq   $s1, $a1, .L0042DF54
/* 0042DF34 02202025 */   move  $a0, $s1
/* 0042DF38 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042DF3C 24060001 */  li    $a2, 1
/* 0042DF40 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042DF44 0320F809 */  jalr  $t9
/* 0042DF48 00003825 */   move  $a3, $zero
/* 0042DF4C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0042DF50 00000000 */  nop   
.L0042DF54:
/* 0042DF54 8EF10000 */  lw    $s1, ($s7)
/* 0042DF58 00000000 */  nop   
/* 0042DF5C 8E290020 */  lw    $t1, 0x20($s1)
/* 0042DF60 00000000 */  nop   
/* 0042DF64 312A0001 */  andi  $t2, $t1, 1
/* 0042DF68 11400011 */  beqz  $t2, .L0042DFB0
/* 0042DF6C 00000000 */   nop   
/* 0042DF70 8F928088 */  lw    $s2, %got(B_1002423C)($gp)
/* 0042DF74 02202025 */  move  $a0, $s1
/* 0042DF78 2652423C */  addiu $s2, %lo(B_1002423C) # addiu $s2, $s2, 0x423c
/* 0042DF7C 8E450000 */  lw    $a1, ($s2)
/* 0042DF80 00000000 */  nop   
/* 0042DF84 10A00009 */  beqz  $a1, .L0042DFAC
/* 0042DF88 00000000 */   nop   
/* 0042DF8C 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042DF90 24060001 */  li    $a2, 1
/* 0042DF94 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042DF98 0320F809 */  jalr  $t9
/* 0042DF9C 00003825 */   move  $a3, $zero
/* 0042DFA0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0042DFA4 8EF10000 */  lw    $s1, ($s7)
/* 0042DFA8 00000000 */  nop   
.L0042DFAC:
/* 0042DFAC AE510000 */  sw    $s1, ($s2)
.L0042DFB0:
/* 0042DFB0 16800006 */  bnez  $s4, .L0042DFCC
/* 0042DFB4 2416FFFE */   li    $s6, -2
/* 0042DFB8 8FAB0048 */  lw    $t3, 0x48($sp)
/* 0042DFBC 2401001D */  li    $at, 29
/* 0042DFC0 15610003 */  bne   $t3, $at, .L0042DFD0
/* 0042DFC4 2401000E */   li    $at, 14
/* 0042DFC8 2414FFFF */  li    $s4, -1
.L0042DFCC:
/* 0042DFCC 2401000E */  li    $at, 14
.L0042DFD0:
/* 0042DFD0 12010007 */  beq   $s0, $at, .L0042DFF0
/* 0042DFD4 2401000F */   li    $at, 15
/* 0042DFD8 12010005 */  beq   $s0, $at, .L0042DFF0
/* 0042DFDC 24010015 */   li    $at, 21
/* 0042DFE0 12010003 */  beq   $s0, $at, .L0042DFF0
/* 0042DFE4 24010016 */   li    $at, 22
/* 0042DFE8 16010002 */  bne   $s0, $at, .L0042DFF4
/* 0042DFEC 00000000 */   nop   
.L0042DFF0:
/* 0042DFF0 2414FFFE */  li    $s4, -2
.L0042DFF4:
/* 0042DFF4 8F828088 */  lw    $v0, %got(B_10025A20)($gp)
/* 0042DFF8 AFA00044 */  sw    $zero, 0x44($sp)
/* 0042DFFC 8C425A20 */  lw    $v0, %lo(B_10025A20)($v0)
/* 0042E000 00009825 */  move  $s3, $zero
/* 0042E004 1040005B */  beqz  $v0, .L0042E174
/* 0042E008 8FAE0044 */   lw    $t6, 0x44($sp)
/* 0042E00C 8F928088 */  lw    $s2, %got(B_10025A28)($gp)
/* 0042E010 8F958088 */  lw    $s5, %got(B_10023658)($gp)
/* 0042E014 26525A28 */  addiu $s2, %lo(B_10025A28) # addiu $s2, $s2, 0x5a28
/* 0042E018 26B53658 */  addiu $s5, %lo(B_10023658) # addiu $s5, $s5, 0x3658
.L0042E01C:
/* 0042E01C 92420000 */  lbu   $v0, ($s2)
/* 0042E020 8FAC0048 */  lw    $t4, 0x48($sp)
/* 0042E024 8E430004 */  lw    $v1, 4($s2)
/* 0042E028 144C0029 */  bne   $v0, $t4, .L0042E0D0
/* 0042E02C 00136080 */   sll   $t4, $s3, 2
/* 0042E030 14740027 */  bne   $v1, $s4, .L0042E0D0
/* 0042E034 00136080 */   sll   $t4, $s3, 2
/* 0042E038 86420002 */  lh    $v0, 2($s2)
/* 0042E03C 924D0001 */  lbu   $t5, 1($s2)
/* 0042E040 8FAF0050 */  lw    $t7, 0x50($sp)
/* 0042E044 01A27021 */  addu  $t6, $t5, $v0
/* 0042E048 03CE082A */  slt   $at, $fp, $t6
/* 0042E04C 10200042 */  beqz  $at, .L0042E158
/* 0042E050 03CFC021 */   addu  $t8, $fp, $t7
/* 0042E054 0058082A */  slt   $at, $v0, $t8
/* 0042E058 1020003F */  beqz  $at, .L0042E158
/* 0042E05C 00000000 */   nop   
/* 0042E060 0013C880 */  sll   $t9, $s3, 2
/* 0042E064 02B94021 */  addu  $t0, $s5, $t9
/* 0042E068 8D100140 */  lw    $s0, 0x140($t0)
/* 0042E06C 00000000 */  nop   
/* 0042E070 1200000D */  beqz  $s0, .L0042E0A8
/* 0042E074 00000000 */   nop   
/* 0042E078 8EF10000 */  lw    $s1, ($s7)
/* 0042E07C 02002825 */  move  $a1, $s0
/* 0042E080 12110009 */  beq   $s0, $s1, .L0042E0A8
/* 0042E084 02202025 */   move  $a0, $s1
/* 0042E088 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042E08C 24060001 */  li    $a2, 1
/* 0042E090 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042E094 0320F809 */  jalr  $t9
/* 0042E098 00003825 */   move  $a3, $zero
/* 0042E09C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0042E0A0 86420002 */  lh    $v0, 2($s2)
/* 0042E0A4 00000000 */  nop   
.L0042E0A8:
/* 0042E0A8 17C2002B */  bne   $fp, $v0, .L0042E158
/* 0042E0AC 00000000 */   nop   
/* 0042E0B0 8FA90050 */  lw    $t1, 0x50($sp)
/* 0042E0B4 924A0001 */  lbu   $t2, 1($s2)
/* 0042E0B8 266B0050 */  addiu $t3, $s3, 0x50
/* 0042E0BC 152A0026 */  bne   $t1, $t2, .L0042E158
/* 0042E0C0 00000000 */   nop   
/* 0042E0C4 10000024 */  b     .L0042E158
/* 0042E0C8 AFAB0044 */   sw    $t3, 0x44($sp)
/* 0042E0CC 00136080 */  sll   $t4, $s3, 2
.L0042E0D0:
/* 0042E0D0 02AC6821 */  addu  $t5, $s5, $t4
/* 0042E0D4 8DB00140 */  lw    $s0, 0x140($t5)
/* 0042E0D8 00000000 */  nop   
/* 0042E0DC 1200001E */  beqz  $s0, .L0042E158
/* 0042E0E0 00000000 */   nop   
/* 0042E0E4 8EF10000 */  lw    $s1, ($s7)
/* 0042E0E8 00000000 */  nop   
/* 0042E0EC 1211001A */  beq   $s0, $s1, .L0042E158
/* 0042E0F0 00000000 */   nop   
/* 0042E0F4 12960018 */  beq   $s4, $s6, .L0042E158
/* 0042E0F8 00000000 */   nop   
/* 0042E0FC 10760016 */  beq   $v1, $s6, .L0042E158
/* 0042E100 00000000 */   nop   
/* 0042E104 12800005 */  beqz  $s4, .L0042E11C
/* 0042E108 00000000 */   nop   
/* 0042E10C 10600003 */  beqz  $v1, .L0042E11C
/* 0042E110 00000000 */   nop   
/* 0042E114 16830010 */  bne   $s4, $v1, .L0042E158
/* 0042E118 00000000 */   nop   
.L0042E11C:
/* 0042E11C 8F9983D0 */  lw    $t9, %call16(do_not_alias)($gp)
/* 0042E120 02202025 */  move  $a0, $s1
/* 0042E124 0320F809 */  jalr  $t9
/* 0042E128 02002825 */   move  $a1, $s0
/* 0042E12C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0042E130 14400009 */  bnez  $v0, .L0042E158
/* 0042E134 02002825 */   move  $a1, $s0
/* 0042E138 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042E13C 8EE40000 */  lw    $a0, ($s7)
/* 0042E140 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042E144 24060001 */  li    $a2, 1
/* 0042E148 0320F809 */  jalr  $t9
/* 0042E14C 00003825 */   move  $a3, $zero
/* 0042E150 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0042E154 00000000 */  nop   
.L0042E158:
/* 0042E158 8F828088 */  lw    $v0, %got(B_10025A20)($gp)
/* 0042E15C 26730001 */  addiu $s3, $s3, 1
/* 0042E160 8C425A20 */  lw    $v0, %lo(B_10025A20)($v0)
/* 0042E164 26520008 */  addiu $s2, $s2, 8
/* 0042E168 1662FFAC */  bne   $s3, $v0, .L0042E01C
/* 0042E16C 00000000 */   nop   
/* 0042E170 8FAE0044 */  lw    $t6, 0x44($sp)
.L0042E174:
/* 0042E174 001378C0 */  sll   $t7, $s3, 3
/* 0042E178 15C0001B */  bnez  $t6, .L0042E1E8
/* 0042E17C 244A0001 */   addiu $t2, $v0, 1
/* 0042E180 8F988088 */  lw    $t8, %got(B_10025A28)($gp)
/* 0042E184 8FB90048 */  lw    $t9, 0x48($sp)
/* 0042E188 27185A28 */  addiu $t8, %lo(B_10025A28) # addiu $t8, $t8, 0x5a28
/* 0042E18C 01F89021 */  addu  $s2, $t7, $t8
/* 0042E190 8FA80050 */  lw    $t0, 0x50($sp)
/* 0042E194 8F818088 */  lw    $at, %got(B_10025A20)($gp)
/* 0042E198 8F8B8088 */  lw    $t3, %got(B_10025A20)($gp)
/* 0042E19C A65E0002 */  sh    $fp, 2($s2)
/* 0042E1A0 AE540004 */  sw    $s4, 4($s2)
/* 0042E1A4 A2590000 */  sb    $t9, ($s2)
/* 0042E1A8 A2480001 */  sb    $t0, 1($s2)
/* 0042E1AC AC2A5A20 */  sw    $t2, %lo(B_10025A20)($at)
/* 0042E1B0 8D6B5A20 */  lw    $t3, %lo(B_10025A20)($t3)
/* 0042E1B4 26690050 */  addiu $t1, $s3, 0x50
/* 0042E1B8 2D61012D */  sltiu $at, $t3, 0x12d
/* 0042E1BC 1420000A */  bnez  $at, .L0042E1E8
/* 0042E1C0 AFA90044 */   sw    $t1, 0x44($sp)
/* 0042E1C4 8F84806C */  lw    $a0, %got(RO_10015368)($gp)
/* 0042E1C8 8F85806C */  lw    $a1, %got(RO_10015394)($gp)
/* 0042E1CC 8F998670 */  lw    $t9, %call16(assertion_failed)($gp)
/* 0042E1D0 240603B9 */  li    $a2, 953
/* 0042E1D4 24845368 */  addiu $a0, %lo(RO_10015368) # addiu $a0, $a0, 0x5368
/* 0042E1D8 0320F809 */  jalr  $t9
/* 0042E1DC 24A55394 */   addiu $a1, %lo(RO_10015394) # addiu $a1, $a1, 0x5394
/* 0042E1E0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0042E1E4 00000000 */  nop   
.L0042E1E8:
/* 0042E1E8 8FB10044 */  lw    $s1, 0x44($sp)
/* 0042E1EC 8F8D8088 */  lw    $t5, %got(B_10024248)($gp)
/* 0042E1F0 00116080 */  sll   $t4, $s1, 2
/* 0042E1F4 25AD4248 */  addiu $t5, %lo(B_10024248) # addiu $t5, $t5, 0x4248
/* 0042E1F8 018D8021 */  addu  $s0, $t4, $t5
/* 0042E1FC 8E020000 */  lw    $v0, ($s0)
/* 0042E200 01808825 */  move  $s1, $t4
/* 0042E204 1040000E */  beqz  $v0, .L0042E240
/* 0042E208 00000000 */   nop   
/* 0042E20C 8EEE0000 */  lw    $t6, ($s7)
/* 0042E210 8C4F0008 */  lw    $t7, 8($v0)
/* 0042E214 00000000 */  nop   
/* 0042E218 15CF0009 */  bne   $t6, $t7, .L0042E240
/* 0042E21C 00000000 */   nop   
/* 0042E220 8C580004 */  lw    $t8, 4($v0)
/* 0042E224 00000000 */  nop   
/* 0042E228 2F010002 */  sltiu $at, $t8, 2
/* 0042E22C 10200021 */  beqz  $at, .L0042E2B4
/* 0042E230 8FBF003C */   lw    $ra, 0x3c($sp)
/* 0042E234 24190002 */  li    $t9, 2
/* 0042E238 1000001D */  b     .L0042E2B0
/* 0042E23C AC590004 */   sw    $t9, 4($v0)
.L0042E240:
/* 0042E240 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0042E244 2404000C */  li    $a0, 12
/* 0042E248 0320F809 */  jalr  $t9
/* 0042E24C 00000000 */   nop   
/* 0042E250 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0042E254 8EE80000 */  lw    $t0, ($s7)
/* 0042E258 24090002 */  li    $t1, 2
/* 0042E25C 8F8B8088 */  lw    $t3, %got(B_10025428)($gp)
/* 0042E260 AC490004 */  sw    $t1, 4($v0)
/* 0042E264 AC480008 */  sw    $t0, 8($v0)
/* 0042E268 8E0A0000 */  lw    $t2, ($s0)
/* 0042E26C 256B5428 */  addiu $t3, %lo(B_10025428) # addiu $t3, $t3, 0x5428
/* 0042E270 022B1821 */  addu  $v1, $s1, $t3
/* 0042E274 AC4A0000 */  sw    $t2, ($v0)
/* 0042E278 8C6C0000 */  lw    $t4, ($v1)
/* 0042E27C AE020000 */  sw    $v0, ($s0)
/* 0042E280 1580000C */  bnez  $t4, .L0042E2B4
/* 0042E284 8FBF003C */   lw    $ra, 0x3c($sp)
/* 0042E288 8F828088 */  lw    $v0, %got(B_10025420)($gp)
/* 0042E28C 8FAD0044 */  lw    $t5, 0x44($sp)
/* 0042E290 24425420 */  addiu $v0, %lo(B_10025420) # addiu $v0, $v0, 0x5420
/* 0042E294 8C4E0000 */  lw    $t6, ($v0)
/* 0042E298 24190001 */  li    $t9, 1
/* 0042E29C ADCD0000 */  sw    $t5, ($t6)
/* 0042E2A0 8C4F0000 */  lw    $t7, ($v0)
/* 0042E2A4 AC790000 */  sw    $t9, ($v1)
/* 0042E2A8 25F80004 */  addiu $t8, $t7, 4
/* 0042E2AC AC580000 */  sw    $t8, ($v0)
.L0042E2B0:
/* 0042E2B0 8FBF003C */  lw    $ra, 0x3c($sp)
.L0042E2B4:
/* 0042E2B4 8FB00014 */  lw    $s0, 0x14($sp)
/* 0042E2B8 8FB10018 */  lw    $s1, 0x18($sp)
/* 0042E2BC 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0042E2C0 8FB30020 */  lw    $s3, 0x20($sp)
/* 0042E2C4 8FB40024 */  lw    $s4, 0x24($sp)
/* 0042E2C8 8FB50028 */  lw    $s5, 0x28($sp)
/* 0042E2CC 8FB6002C */  lw    $s6, 0x2c($sp)
/* 0042E2D0 8FB70030 */  lw    $s7, 0x30($sp)
/* 0042E2D4 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0042E2D8 03E00008 */  jr    $ra
/* 0042E2DC 27BD0048 */   addiu $sp, $sp, 0x48

    .type func_0042E2E0, @function
func_0042E2E0:
    # 0042F4D8 func_0042F4D8
/* 0042E2E0 3C1C0FC0 */  .cpload $t9
/* 0042E2E4 279CBF80 */  
/* 0042E2E8 0399E021 */  
/* 0042E2EC 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0042E2F0 AFB30024 */  sw    $s3, 0x24($sp)
/* 0042E2F4 AFB20020 */  sw    $s2, 0x20($sp)
/* 0042E2F8 AFB00018 */  sw    $s0, 0x18($sp)
/* 0042E2FC 00808025 */  move  $s0, $a0
/* 0042E300 00A09825 */  move  $s3, $a1
/* 0042E304 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0042E308 AFBC0028 */  sw    $gp, 0x28($sp)
/* 0042E30C AFB1001C */  sw    $s1, 0x1c($sp)
/* 0042E310 10800080 */  beqz  $a0, .L0042E514
/* 0042E314 24120001 */   li    $s2, 1
/* 0042E318 2401001D */  li    $at, 29
/* 0042E31C 14810006 */  bne   $a0, $at, .L0042E338
/* 0042E320 00000000 */   nop   
/* 0042E324 8F8E8088 */  lw    $t6, %got(B_10023644)($gp)
/* 0042E328 8F818088 */  lw    $at, %got(B_10024240)($gp)
/* 0042E32C 8DCE3644 */  lw    $t6, %lo(B_10023644)($t6)
/* 0042E330 00000000 */  nop   
/* 0042E334 AC2E4240 */  sw    $t6, %lo(B_10024240)($at)
.L0042E338:
/* 0042E338 8F8F8088 */  lw    $t7, %got(B_10023634)($gp)
/* 0042E33C 2E010020 */  sltiu $at, $s0, 0x20
/* 0042E340 8DEF3634 */  lw    $t7, %lo(B_10023634)($t7)
/* 0042E344 00000000 */  nop   
/* 0042E348 11E00019 */  beqz  $t7, .L0042E3B0
/* 0042E34C 00000000 */   nop   
/* 0042E350 14200017 */  bnez  $at, .L0042E3B0
/* 0042E354 2E010040 */   sltiu $at, $s0, 0x40
/* 0042E358 10200015 */  beqz  $at, .L0042E3B0
/* 0042E35C 00000000 */   nop   
/* 0042E360 8F888AA4 */  lw     $t0, %got(symbolic_regs)($gp)
/* 0042E364 3C188000 */  lui   $t8, 0x8000
/* 0042E368 8D080000 */  lw    $t0, ($t0)
/* 0042E36C 0218C806 */  srlv  $t9, $t8, $s0
/* 0042E370 03284824 */  and   $t1, $t9, $t0
/* 0042E374 1120000E */  beqz  $t1, .L0042E3B0
/* 0042E378 00105080 */   sll   $t2, $s0, 2
/* 0042E37C 8F8B8088 */  lw    $t3, %got(B_10024248)($gp)
/* 0042E380 8F858088 */  lw    $a1, %got(B_10023638)($gp)
/* 0042E384 256B4248 */  addiu $t3, %lo(B_10024248) # addiu $t3, $t3, 0x4248
/* 0042E388 014B6021 */  addu  $t4, $t2, $t3
/* 0042E38C 8D920000 */  lw    $s2, ($t4)
/* 0042E390 8F998308 */  lw    $t9, %call16(process_symbolic_def)($gp)
/* 0042E394 8CA53638 */  lw    $a1, %lo(B_10023638)($a1)
/* 0042E398 2E4D0001 */  sltiu $t5, $s2, 1
/* 0042E39C 01A09025 */  move  $s2, $t5
/* 0042E3A0 0320F809 */  jalr  $t9
/* 0042E3A4 02002025 */   move  $a0, $s0
/* 0042E3A8 8FBC0028 */  lw    $gp, 0x28($sp)
/* 0042E3AC 00000000 */  nop   
.L0042E3B0:
/* 0042E3B0 8F8E8088 */  lw    $t6, %got(B_10023658)($gp)
/* 0042E3B4 8F8F8088 */  lw    $t7, %got(B_10024248)($gp)
/* 0042E3B8 00101080 */  sll   $v0, $s0, 2
/* 0042E3BC 25CE3658 */  addiu $t6, %lo(B_10023658) # addiu $t6, $t6, 0x3658
/* 0042E3C0 004E8821 */  addu  $s1, $v0, $t6
/* 0042E3C4 8E250000 */  lw    $a1, ($s1)
/* 0042E3C8 25EF4248 */  addiu $t7, %lo(B_10024248) # addiu $t7, $t7, 0x4248
/* 0042E3CC 004FC021 */  addu  $t8, $v0, $t7
/* 0042E3D0 14A0000E */  bnez  $a1, .L0042E40C
/* 0042E3D4 AFB80034 */   sw    $t8, 0x34($sp)
/* 0042E3D8 8F828088 */  lw    $v0, %got(B_10024E28)($gp)
/* 0042E3DC 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 0042E3E0 24424E28 */  addiu $v0, %lo(B_10024E28) # addiu $v0, $v0, 0x4e28
/* 0042E3E4 8C590000 */  lw    $t9, ($v0)
/* 0042E3E8 00000000 */  nop   
/* 0042E3EC AF300000 */  sw    $s0, ($t9)
/* 0042E3F0 8C480000 */  lw    $t0, ($v0)
/* 0042E3F4 00000000 */  nop   
/* 0042E3F8 25090004 */  addiu $t1, $t0, 4
/* 0042E3FC AC490000 */  sw    $t1, ($v0)
/* 0042E400 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 0042E404 10000012 */  b     .L0042E450
/* 0042E408 8FAA0034 */   lw    $t2, 0x34($sp)
.L0042E40C:
/* 0042E40C 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 0042E410 00000000 */  nop   
/* 0042E414 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 0042E418 1240000D */  beqz  $s2, .L0042E450
/* 0042E41C 8FAA0034 */   lw    $t2, 0x34($sp)
/* 0042E420 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042E424 94860028 */  lhu   $a2, 0x28($a0)
/* 0042E428 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042E42C 0320F809 */  jalr  $t9
/* 0042E430 00003825 */   move  $a3, $zero
/* 0042E434 8FBC0028 */  lw    $gp, 0x28($sp)
/* 0042E438 00000000 */  nop   
/* 0042E43C 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 0042E440 00000000 */  nop   
/* 0042E444 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 0042E448 00000000 */  nop   
/* 0042E44C 8FAA0034 */  lw    $t2, 0x34($sp)
.L0042E450:
/* 0042E450 AE240000 */  sw    $a0, ($s1)
/* 0042E454 8D450000 */  lw    $a1, ($t2)
/* 0042E458 00000000 */  nop   
/* 0042E45C 10A00025 */  beqz  $a1, .L0042E4F4
/* 0042E460 00A08025 */   move  $s0, $a1
/* 0042E464 8F928AC0 */  lw     $s2, %got(fp_pipelining)($gp)
/* 0042E468 2411000B */  li    $s1, 11
.L0042E46C:
/* 0042E46C 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 0042E470 8E4B0000 */  lw    $t3, ($s2)
/* 0042E474 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 0042E478 162B0009 */  bne   $s1, $t3, .L0042E4A0
/* 0042E47C 02601025 */   move  $v0, $s3
/* 0042E480 8E0C0008 */  lw    $t4, 8($s0)
/* 0042E484 00000000 */  nop   
/* 0042E488 8D8D0020 */  lw    $t5, 0x20($t4)
/* 0042E48C 00000000 */  nop   
/* 0042E490 31AE0004 */  andi  $t6, $t5, 4
/* 0042E494 11C00002 */  beqz  $t6, .L0042E4A0
/* 0042E498 00000000 */   nop   
/* 0042E49C 26620004 */  addiu $v0, $s3, 4
.L0042E4A0:
/* 0042E4A0 8E030004 */  lw    $v1, 4($s0)
/* 0042E4A4 8E050008 */  lw    $a1, 8($s0)
/* 0042E4A8 0062082B */  sltu  $at, $v1, $v0
/* 0042E4AC 14200004 */  bnez  $at, .L0042E4C0
/* 0042E4B0 00433023 */   subu  $a2, $v0, $v1
/* 0042E4B4 94860028 */  lhu   $a2, 0x28($a0)
/* 0042E4B8 10000001 */  b     .L0042E4C0
/* 0042E4BC 00000000 */   nop   
.L0042E4C0:
/* 0042E4C0 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042E4C4 00003825 */  move  $a3, $zero
/* 0042E4C8 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042E4CC 0320F809 */  jalr  $t9
/* 0042E4D0 00000000 */   nop   
/* 0042E4D4 8E100000 */  lw    $s0, ($s0)
/* 0042E4D8 8FBC0028 */  lw    $gp, 0x28($sp)
/* 0042E4DC 1600FFE3 */  bnez  $s0, .L0042E46C
/* 0042E4E0 00000000 */   nop   
/* 0042E4E4 8FAF0034 */  lw    $t7, 0x34($sp)
/* 0042E4E8 00000000 */  nop   
/* 0042E4EC 8DE50000 */  lw    $a1, ($t7)
/* 0042E4F0 00000000 */  nop   
.L0042E4F4:
/* 0042E4F4 8F998020 */  lw    $t9, %got(func_0042D420)($gp)
/* 0042E4F8 00A02025 */  move  $a0, $a1
/* 0042E4FC 2739D420 */  addiu $t9, %lo(func_0042D420) # addiu $t9, $t9, -0x2be0
/* 0042E500 0320F809 */  jalr  $t9
/* 0042E504 00000000 */   nop   
/* 0042E508 8FB80034 */  lw    $t8, 0x34($sp)
/* 0042E50C 8FBC0028 */  lw    $gp, 0x28($sp)
/* 0042E510 AF000000 */  sw    $zero, ($t8)
.L0042E514:
/* 0042E514 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0042E518 8FB00018 */  lw    $s0, 0x18($sp)
/* 0042E51C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0042E520 8FB20020 */  lw    $s2, 0x20($sp)
/* 0042E524 8FB30024 */  lw    $s3, 0x24($sp)
/* 0042E528 03E00008 */  jr    $ra
/* 0042E52C 27BD0050 */   addiu $sp, $sp, 0x50

    .type func_0042E530, @function
func_0042E530:
    # 0042F4D8 func_0042F4D8
/* 0042E530 3C1C0FC0 */  .cpload $t9
/* 0042E534 279CBD30 */  
/* 0042E538 0399E021 */  
/* 0042E53C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0042E540 AFB70034 */  sw    $s7, 0x34($sp)
/* 0042E544 AFB60030 */  sw    $s6, 0x30($sp)
/* 0042E548 AFB30024 */  sw    $s3, 0x24($sp)
/* 0042E54C 00809825 */  move  $s3, $a0
/* 0042E550 00C0B025 */  move  $s6, $a2
/* 0042E554 00A0B825 */  move  $s7, $a1
/* 0042E558 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0042E55C AFBC0038 */  sw    $gp, 0x38($sp)
/* 0042E560 AFB5002C */  sw    $s5, 0x2c($sp)
/* 0042E564 AFB40028 */  sw    $s4, 0x28($sp)
/* 0042E568 AFB20020 */  sw    $s2, 0x20($sp)
/* 0042E56C AFB1001C */  sw    $s1, 0x1c($sp)
/* 0042E570 108000A5 */  beqz  $a0, .L0042E808
/* 0042E574 AFB00018 */   sw    $s0, 0x18($sp)
/* 0042E578 2401001D */  li    $at, 29
/* 0042E57C 14810007 */  bne   $a0, $at, .L0042E59C
/* 0042E580 00138080 */   sll   $s0, $s3, 2
/* 0042E584 8F958088 */  lw    $s5, %got(B_10023644)($gp)
/* 0042E588 8F818088 */  lw    $at, %got(B_10024240)($gp)
/* 0042E58C 26B53644 */  addiu $s5, %lo(B_10023644) # addiu $s5, $s5, 0x3644
/* 0042E590 8EAE0000 */  lw    $t6, ($s5)
/* 0042E594 00000000 */  nop   
/* 0042E598 AC2E4240 */  sw    $t6, %lo(B_10024240)($at)
.L0042E59C:
/* 0042E59C 8F8F8088 */  lw    $t7, %got(B_10023658)($gp)
/* 0042E5A0 8F988088 */  lw    $t8, %got(B_10023C48)($gp)
/* 0042E5A4 25EF3658 */  addiu $t7, %lo(B_10023658) # addiu $t7, $t7, 0x3658
/* 0042E5A8 020F9021 */  addu  $s2, $s0, $t7
/* 0042E5AC 8F958088 */  lw    $s5, %got(B_10023644)($gp)
/* 0042E5B0 8E450000 */  lw    $a1, ($s2)
/* 0042E5B4 27183C48 */  addiu $t8, %lo(B_10023C48) # addiu $t8, $t8, 0x3c48
/* 0042E5B8 0218C821 */  addu  $t9, $s0, $t8
/* 0042E5BC 26B53644 */  addiu $s5, %lo(B_10023644) # addiu $s5, $s5, 0x3644
/* 0042E5C0 14A0000C */  bnez  $a1, .L0042E5F4
/* 0042E5C4 AF250000 */   sw    $a1, ($t9)
/* 0042E5C8 8F828088 */  lw    $v0, %got(B_10024E28)($gp)
/* 0042E5CC 00000000 */  nop   
/* 0042E5D0 24424E28 */  addiu $v0, %lo(B_10024E28) # addiu $v0, $v0, 0x4e28
/* 0042E5D4 8C480000 */  lw    $t0, ($v0)
/* 0042E5D8 00000000 */  nop   
/* 0042E5DC AD130000 */  sw    $s3, ($t0)
/* 0042E5E0 8C490000 */  lw    $t1, ($v0)
/* 0042E5E4 00000000 */  nop   
/* 0042E5E8 252A0004 */  addiu $t2, $t1, 4
/* 0042E5EC 10000009 */  b     .L0042E614
/* 0042E5F0 AC4A0000 */   sw    $t2, ($v0)
.L0042E5F4:
/* 0042E5F4 8EA40000 */  lw    $a0, ($s5)
/* 0042E5F8 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042E5FC 94860028 */  lhu   $a2, 0x28($a0)
/* 0042E600 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042E604 0320F809 */  jalr  $t9
/* 0042E608 00003825 */   move  $a3, $zero
/* 0042E60C 8FBC0038 */  lw    $gp, 0x38($sp)
/* 0042E610 00000000 */  nop   
.L0042E614:
/* 0042E614 8F8C8088 */  lw    $t4, %got(B_10024248)($gp)
/* 0042E618 8EAB0000 */  lw    $t3, ($s5)
/* 0042E61C 258C4248 */  addiu $t4, %lo(B_10024248) # addiu $t4, $t4, 0x4248
/* 0042E620 020CA021 */  addu  $s4, $s0, $t4
/* 0042E624 8E910000 */  lw    $s1, ($s4)
/* 0042E628 AE800000 */  sw    $zero, ($s4)
/* 0042E62C 12200016 */  beqz  $s1, .L0042E688
/* 0042E630 AE4B0000 */   sw    $t3, ($s2)
/* 0042E634 8F848088 */  lw    $a0, %got(B_10025A20)($gp)
/* 0042E638 00000000 */  nop   
/* 0042E63C 8C845A20 */  lw    $a0, %lo(B_10025A20)($a0)
/* 0042E640 00000000 */  nop   
/* 0042E644 10800010 */  beqz  $a0, .L0042E688
/* 0042E648 00000000 */   nop   
/* 0042E64C 8F8D8088 */  lw    $t5, -0x7f78($gp)
/* 0042E650 000470C0 */  sll   $t6, $a0, 3
/* 0042E654 25A25A28 */  addiu $v0, $t5, 0x5a28
/* 0042E658 01C21821 */  addu  $v1, $t6, $v0
.L0042E65C:
/* 0042E65C 904F0000 */  lbu   $t7, ($v0)
/* 0042E660 00000000 */  nop   
/* 0042E664 166F0005 */  bne   $s3, $t7, .L0042E67C
/* 0042E668 00000000 */   nop   
/* 0042E66C 84580002 */  lh    $t8, 2($v0)
/* 0042E670 00000000 */  nop   
/* 0042E674 0316C821 */  addu  $t9, $t8, $s6
/* 0042E678 A4590002 */  sh    $t9, 2($v0)
.L0042E67C:
/* 0042E67C 24420008 */  addiu $v0, $v0, 8
/* 0042E680 1443FFF6 */  bne   $v0, $v1, .L0042E65C
/* 0042E684 00000000 */   nop   
.L0042E688:
/* 0042E688 12200060 */  beqz  $s1, .L0042E80C
/* 0042E68C 8FBF003C */   lw    $ra, 0x3c($sp)
.L0042E690:
/* 0042E690 8E250008 */  lw    $a1, 8($s1)
/* 0042E694 8E320000 */  lw    $s2, ($s1)
/* 0042E698 2401001D */  li    $at, 29
/* 0042E69C 12610037 */  beq   $s3, $at, .L0042E77C
/* 0042E6A0 00A08025 */   move  $s0, $a1
/* 0042E6A4 8E030000 */  lw    $v1, ($s0)
/* 0042E6A8 00000000 */  nop   
/* 0042E6AC 00031682 */  srl   $v0, $v1, 0x1a
/* 0042E6B0 2C410020 */  sltiu $at, $v0, 0x20
/* 0042E6B4 14200031 */  bnez  $at, .L0042E77C
/* 0042E6B8 00034180 */   sll   $t0, $v1, 6
/* 0042E6BC 00084EC2 */  srl   $t1, $t0, 0x1b
/* 0042E6C0 1669002E */  bne   $s3, $t1, .L0042E77C
/* 0042E6C4 00000000 */   nop   
/* 0042E6C8 960A0000 */  lhu   $t2, ($s0)
/* 0042E6CC 2C410028 */  sltiu $at, $v0, 0x28
/* 0042E6D0 314B001F */  andi  $t3, $t2, 0x1f
/* 0042E6D4 166B0005 */  bne   $s3, $t3, .L0042E6EC
/* 0042E6D8 00000000 */   nop   
/* 0042E6DC 14200003 */  bnez  $at, .L0042E6EC
/* 0042E6E0 2C410040 */   sltiu $at, $v0, 0x40
/* 0042E6E4 14200025 */  bnez  $at, .L0042E77C
/* 0042E6E8 00000000 */   nop   
.L0042E6EC:
/* 0042E6EC 8E0C0004 */  lw    $t4, 4($s0)
/* 0042E6F0 00000000 */  nop   
/* 0042E6F4 15800021 */  bnez  $t4, .L0042E77C
/* 0042E6F8 00000000 */   nop   
/* 0042E6FC 860E0002 */  lh    $t6, 2($s0)
/* 0042E700 00000000 */  nop   
/* 0042E704 01D61021 */  addu  $v0, $t6, $s6
/* 0042E708 28418000 */  slti  $at, $v0, -0x8000
/* 0042E70C 1420001B */  bnez  $at, .L0042E77C
/* 0042E710 34018000 */   li    $at, 32768
/* 0042E714 0041082A */  slt   $at, $v0, $at
/* 0042E718 10200018 */  beqz  $at, .L0042E77C
/* 0042E71C 00000000 */   nop   
/* 0042E720 A6020002 */  sh    $v0, 2($s0)
/* 0042E724 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0042E728 2404000C */  li    $a0, 12
/* 0042E72C 0320F809 */  jalr  $t9
/* 0042E730 00000000 */   nop   
/* 0042E734 8FBC0038 */  lw    $gp, 0x38($sp)
/* 0042E738 240DFFFF */  li    $t5, -1
/* 0042E73C AC500008 */  sw    $s0, 8($v0)
/* 0042E740 A4400004 */  sh    $zero, 4($v0)
/* 0042E744 A44D0006 */  sh    $t5, 6($v0)
/* 0042E748 8EAF0000 */  lw    $t7, ($s5)
/* 0042E74C 00000000 */  nop   
/* 0042E750 8DF80024 */  lw    $t8, 0x24($t7)
/* 0042E754 00000000 */  nop   
/* 0042E758 AC580000 */  sw    $t8, ($v0)
/* 0042E75C 8EB90000 */  lw    $t9, ($s5)
/* 0042E760 00000000 */  nop   
/* 0042E764 AF220024 */  sw    $v0, 0x24($t9)
/* 0042E768 8E880000 */  lw    $t0, ($s4)
/* 0042E76C 00000000 */  nop   
/* 0042E770 AE280000 */  sw    $t0, ($s1)
/* 0042E774 10000022 */  b     .L0042E800
/* 0042E778 AE910000 */   sw    $s1, ($s4)
.L0042E77C:
/* 0042E77C 8F898AC0 */  lw     $t1, %got(fp_pipelining)($gp)
/* 0042E780 8EA40000 */  lw    $a0, ($s5)
/* 0042E784 8D290000 */  lw    $t1, ($t1)
/* 0042E788 2401000B */  li    $at, 11
/* 0042E78C 15210007 */  bne   $t1, $at, .L0042E7AC
/* 0042E790 02E01025 */   move  $v0, $s7
/* 0042E794 8CAA0020 */  lw    $t2, 0x20($a1)
/* 0042E798 00000000 */  nop   
/* 0042E79C 314B0004 */  andi  $t3, $t2, 4
/* 0042E7A0 11600002 */  beqz  $t3, .L0042E7AC
/* 0042E7A4 00000000 */   nop   
/* 0042E7A8 26E20004 */  addiu $v0, $s7, 4
.L0042E7AC:
/* 0042E7AC 8E230004 */  lw    $v1, 4($s1)
/* 0042E7B0 00000000 */  nop   
/* 0042E7B4 0062082B */  sltu  $at, $v1, $v0
/* 0042E7B8 14200004 */  bnez  $at, .L0042E7CC
/* 0042E7BC 00433023 */   subu  $a2, $v0, $v1
/* 0042E7C0 94860028 */  lhu   $a2, 0x28($a0)
/* 0042E7C4 10000001 */  b     .L0042E7CC
/* 0042E7C8 00000000 */   nop   
.L0042E7CC:
/* 0042E7CC 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042E7D0 02002825 */  move  $a1, $s0
/* 0042E7D4 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042E7D8 0320F809 */  jalr  $t9
/* 0042E7DC 00003825 */   move  $a3, $zero
/* 0042E7E0 8FBC0038 */  lw    $gp, 0x38($sp)
/* 0042E7E4 02202025 */  move  $a0, $s1
/* 0042E7E8 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 0042E7EC 00000000 */  nop   
/* 0042E7F0 0320F809 */  jalr  $t9
/* 0042E7F4 00000000 */   nop   
/* 0042E7F8 8FBC0038 */  lw    $gp, 0x38($sp)
/* 0042E7FC 00000000 */  nop   
.L0042E800:
/* 0042E800 1640FFA3 */  bnez  $s2, .L0042E690
/* 0042E804 02408825 */   move  $s1, $s2
.L0042E808:
/* 0042E808 8FBF003C */  lw    $ra, 0x3c($sp)
.L0042E80C:
/* 0042E80C 8FB00018 */  lw    $s0, 0x18($sp)
/* 0042E810 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0042E814 8FB20020 */  lw    $s2, 0x20($sp)
/* 0042E818 8FB30024 */  lw    $s3, 0x24($sp)
/* 0042E81C 8FB40028 */  lw    $s4, 0x28($sp)
/* 0042E820 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0042E824 8FB60030 */  lw    $s6, 0x30($sp)
/* 0042E828 8FB70034 */  lw    $s7, 0x34($sp)
/* 0042E82C 03E00008 */  jr    $ra
/* 0042E830 27BD0040 */   addiu $sp, $sp, 0x40

    .type func_0042E834, @function
func_0042E834:
    # 0042F4D8 func_0042F4D8
/* 0042E834 3C1C0FC0 */  .cpload $t9
/* 0042E838 279CBA2C */  
/* 0042E83C 0399E021 */  
/* 0042E840 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0042E844 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0042E848 AFB10018 */  sw    $s1, 0x18($sp)
/* 0042E84C AFB00014 */  sw    $s0, 0x14($sp)
/* 0042E850 00808025 */  move  $s0, $a0
/* 0042E854 00A08825 */  move  $s1, $a1
/* 0042E858 00C09025 */  move  $s2, $a2
/* 0042E85C AFBF0024 */  sw    $ra, 0x24($sp)
/* 0042E860 AFBC0020 */  sw    $gp, 0x20($sp)
/* 0042E864 108000C1 */  beqz  $a0, .L0042EB6C
/* 0042E868 24030001 */   li    $v1, 1
/* 0042E86C 2401001D */  li    $at, 29
/* 0042E870 14810006 */  bne   $a0, $at, .L0042E88C
/* 0042E874 00000000 */   nop   
/* 0042E878 8F8E8088 */  lw    $t6, %got(B_10023644)($gp)
/* 0042E87C 8F818088 */  lw    $at, %got(B_10024240)($gp)
/* 0042E880 8DCE3644 */  lw    $t6, %lo(B_10023644)($t6)
/* 0042E884 00000000 */  nop   
/* 0042E888 AC2E4240 */  sw    $t6, %lo(B_10024240)($at)
.L0042E88C:
/* 0042E88C 8F8F8088 */  lw    $t7, %got(B_10023634)($gp)
/* 0042E890 2E010020 */  sltiu $at, $s0, 0x20
/* 0042E894 8DEF3634 */  lw    $t7, %lo(B_10023634)($t7)
/* 0042E898 00000000 */  nop   
/* 0042E89C 11E0001A */  beqz  $t7, .L0042E908
/* 0042E8A0 00000000 */   nop   
/* 0042E8A4 14200018 */  bnez  $at, .L0042E908
/* 0042E8A8 2E010040 */   sltiu $at, $s0, 0x40
/* 0042E8AC 10200016 */  beqz  $at, .L0042E908
/* 0042E8B0 00000000 */   nop   
/* 0042E8B4 8F888AA4 */  lw     $t0, %got(symbolic_regs)($gp)
/* 0042E8B8 3C188000 */  lui   $t8, 0x8000
/* 0042E8BC 8D080000 */  lw    $t0, ($t0)
/* 0042E8C0 0218C806 */  srlv  $t9, $t8, $s0
/* 0042E8C4 03284824 */  and   $t1, $t9, $t0
/* 0042E8C8 1120000F */  beqz  $t1, .L0042E908
/* 0042E8CC 00105080 */   sll   $t2, $s0, 2
/* 0042E8D0 8F8B8088 */  lw    $t3, %got(B_10024248)($gp)
/* 0042E8D4 8F858088 */  lw    $a1, %got(B_10023638)($gp)
/* 0042E8D8 256B4248 */  addiu $t3, %lo(B_10024248) # addiu $t3, $t3, 0x4248
/* 0042E8DC 014B6021 */  addu  $t4, $t2, $t3
/* 0042E8E0 8D830000 */  lw    $v1, ($t4)
/* 0042E8E4 8F998308 */  lw    $t9, %call16(process_symbolic_def)($gp)
/* 0042E8E8 8CA53638 */  lw    $a1, %lo(B_10023638)($a1)
/* 0042E8EC 2C6D0001 */  sltiu $t5, $v1, 1
/* 0042E8F0 AFAD0044 */  sw    $t5, 0x44($sp)
/* 0042E8F4 0320F809 */  jalr  $t9
/* 0042E8F8 02002025 */   move  $a0, $s0
/* 0042E8FC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042E900 8FA30044 */  lw    $v1, 0x44($sp)
/* 0042E904 00000000 */  nop   
.L0042E908:
/* 0042E908 8F8E8088 */  lw    $t6, %got(B_10023658)($gp)
/* 0042E90C 00101080 */  sll   $v0, $s0, 2
/* 0042E910 25CE3658 */  addiu $t6, %lo(B_10023658) # addiu $t6, $t6, 0x3658
/* 0042E914 8F998088 */  lw    $t9, %got(B_10024248)($gp)
/* 0042E918 004E7821 */  addu  $t7, $v0, $t6
/* 0042E91C AFAF0028 */  sw    $t7, 0x28($sp)
/* 0042E920 8DE50000 */  lw    $a1, ($t7)
/* 0042E924 27394248 */  addiu $t9, %lo(B_10024248) # addiu $t9, $t9, 0x4248
/* 0042E928 00594021 */  addu  $t0, $v0, $t9
/* 0042E92C 14A0000E */  bnez  $a1, .L0042E968
/* 0042E930 AFA80030 */   sw    $t0, 0x30($sp)
/* 0042E934 8F828088 */  lw    $v0, %got(B_10024E28)($gp)
/* 0042E938 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 0042E93C 24424E28 */  addiu $v0, %lo(B_10024E28) # addiu $v0, $v0, 0x4e28
/* 0042E940 8C490000 */  lw    $t1, ($v0)
/* 0042E944 00000000 */  nop   
/* 0042E948 AD300000 */  sw    $s0, ($t1)
/* 0042E94C 8C4A0000 */  lw    $t2, ($v0)
/* 0042E950 00000000 */  nop   
/* 0042E954 254B0004 */  addiu $t3, $t2, 4
/* 0042E958 AC4B0000 */  sw    $t3, ($v0)
/* 0042E95C 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 0042E960 10000012 */  b     .L0042E9AC
/* 0042E964 8FAC0028 */   lw    $t4, 0x28($sp)
.L0042E968:
/* 0042E968 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 0042E96C 00000000 */  nop   
/* 0042E970 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 0042E974 1060000D */  beqz  $v1, .L0042E9AC
/* 0042E978 8FAC0028 */   lw    $t4, 0x28($sp)
/* 0042E97C 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042E980 94860028 */  lhu   $a2, 0x28($a0)
/* 0042E984 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042E988 0320F809 */  jalr  $t9
/* 0042E98C 00003825 */   move  $a3, $zero
/* 0042E990 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042E994 00000000 */  nop   
/* 0042E998 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 0042E99C 00000000 */  nop   
/* 0042E9A0 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 0042E9A4 00000000 */  nop   
/* 0042E9A8 8FAC0028 */  lw    $t4, 0x28($sp)
.L0042E9AC:
/* 0042E9AC 00000000 */  nop   
/* 0042E9B0 AD840000 */  sw    $a0, ($t4)
/* 0042E9B4 8FAD0030 */  lw    $t5, 0x30($sp)
/* 0042E9B8 00000000 */  nop   
/* 0042E9BC 8DA50000 */  lw    $a1, ($t5)
/* 0042E9C0 00000000 */  nop   
/* 0042E9C4 10A0002A */  beqz  $a1, .L0042EA70
/* 0042E9C8 00A08025 */   move  $s0, $a1
.L0042E9CC:
/* 0042E9CC 8F8E8AC0 */  lw     $t6, %got(fp_pipelining)($gp)
/* 0042E9D0 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 0042E9D4 8DCE0000 */  lw    $t6, ($t6)
/* 0042E9D8 2401000B */  li    $at, 11
/* 0042E9DC 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 0042E9E0 15C10009 */  bne   $t6, $at, .L0042EA08
/* 0042E9E4 02201825 */   move  $v1, $s1
/* 0042E9E8 8E0F0008 */  lw    $t7, 8($s0)
/* 0042E9EC 00000000 */  nop   
/* 0042E9F0 8DF80020 */  lw    $t8, 0x20($t7)
/* 0042E9F4 00000000 */  nop   
/* 0042E9F8 33190004 */  andi  $t9, $t8, 4
/* 0042E9FC 13200002 */  beqz  $t9, .L0042EA08
/* 0042EA00 00000000 */   nop   
/* 0042EA04 26230004 */  addiu $v1, $s1, 4
.L0042EA08:
/* 0042EA08 8E020004 */  lw    $v0, 4($s0)
/* 0042EA0C 8E050008 */  lw    $a1, 8($s0)
/* 0042EA10 0043082B */  sltu  $at, $v0, $v1
/* 0042EA14 14200004 */  bnez  $at, .L0042EA28
/* 0042EA18 00623023 */   subu  $a2, $v1, $v0
/* 0042EA1C 94860028 */  lhu   $a2, 0x28($a0)
/* 0042EA20 10000002 */  b     .L0042EA2C
/* 0042EA24 0052082B */   sltu  $at, $v0, $s2
.L0042EA28:
/* 0042EA28 0052082B */  sltu  $at, $v0, $s2
.L0042EA2C:
/* 0042EA2C 14200003 */  bnez  $at, .L0042EA3C
/* 0042EA30 02423823 */   subu  $a3, $s2, $v0
/* 0042EA34 10000001 */  b     .L0042EA3C
/* 0042EA38 24070001 */   li    $a3, 1
.L0042EA3C:
/* 0042EA3C 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042EA40 00000000 */  nop   
/* 0042EA44 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042EA48 0320F809 */  jalr  $t9
/* 0042EA4C 00000000 */   nop   
/* 0042EA50 8E100000 */  lw    $s0, ($s0)
/* 0042EA54 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042EA58 1600FFDC */  bnez  $s0, .L0042E9CC
/* 0042EA5C 00000000 */   nop   
/* 0042EA60 8FA80030 */  lw    $t0, 0x30($sp)
/* 0042EA64 00000000 */  nop   
/* 0042EA68 8D050000 */  lw    $a1, ($t0)
/* 0042EA6C 00000000 */  nop   
.L0042EA70:
/* 0042EA70 8F998020 */  lw    $t9, %got(func_0042D420)($gp)
/* 0042EA74 00A02025 */  move  $a0, $a1
/* 0042EA78 2739D420 */  addiu $t9, %lo(func_0042D420) # addiu $t9, $t9, -0x2be0
/* 0042EA7C 0320F809 */  jalr  $t9
/* 0042EA80 00000000 */   nop   
/* 0042EA84 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042EA88 8FA90030 */  lw    $t1, 0x30($sp)
/* 0042EA8C 8F8B8088 */  lw    $t3, %got(B_1002378C)($gp)
/* 0042EA90 AD200000 */  sw    $zero, ($t1)
/* 0042EA94 8FAA0028 */  lw    $t2, 0x28($sp)
/* 0042EA98 256B378C */  addiu $t3, %lo(B_1002378C) # addiu $t3, $t3, 0x378c
/* 0042EA9C 154B0034 */  bne   $t2, $t3, .L0042EB70
/* 0042EAA0 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0042EAA4 8F848088 */  lw    $a0, %got(B_10025A18)($gp)
/* 0042EAA8 00000000 */  nop   
/* 0042EAAC 8C845A18 */  lw    $a0, %lo(B_10025A18)($a0)
/* 0042EAB0 00000000 */  nop   
/* 0042EAB4 10800023 */  beqz  $a0, .L0042EB44
/* 0042EAB8 00808025 */   move  $s0, $a0
.L0042EABC:
/* 0042EABC 8E020004 */  lw    $v0, 4($s0)
/* 0042EAC0 00000000 */  nop   
/* 0042EAC4 0051082B */  sltu  $at, $v0, $s1
/* 0042EAC8 14200008 */  bnez  $at, .L0042EAEC
/* 0042EACC 02423823 */   subu  $a3, $s2, $v0
/* 0042EAD0 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 0042EAD4 00000000 */  nop   
/* 0042EAD8 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 0042EADC 00000000 */  nop   
/* 0042EAE0 94860028 */  lhu   $a2, 0x28($a0)
/* 0042EAE4 10000006 */  b     .L0042EB00
/* 0042EAE8 0052082B */   sltu  $at, $v0, $s2
.L0042EAEC:
/* 0042EAEC 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 0042EAF0 02223023 */  subu  $a2, $s1, $v0
/* 0042EAF4 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 0042EAF8 00000000 */  nop   
/* 0042EAFC 0052082B */  sltu  $at, $v0, $s2
.L0042EB00:
/* 0042EB00 14200003 */  bnez  $at, .L0042EB10
/* 0042EB04 00000000 */   nop   
/* 0042EB08 10000001 */  b     .L0042EB10
/* 0042EB0C 24070001 */   li    $a3, 1
.L0042EB10:
/* 0042EB10 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042EB14 8E050008 */  lw    $a1, 8($s0)
/* 0042EB18 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042EB1C 0320F809 */  jalr  $t9
/* 0042EB20 00000000 */   nop   
/* 0042EB24 8E100000 */  lw    $s0, ($s0)
/* 0042EB28 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042EB2C 1600FFE3 */  bnez  $s0, .L0042EABC
/* 0042EB30 00000000 */   nop   
/* 0042EB34 8F848088 */  lw    $a0, %got(B_10025A18)($gp)
/* 0042EB38 00000000 */  nop   
/* 0042EB3C 8C845A18 */  lw    $a0, %lo(B_10025A18)($a0)
/* 0042EB40 00000000 */  nop   
.L0042EB44:
/* 0042EB44 8F998020 */  lw    $t9, %got(func_0042D420)($gp)
/* 0042EB48 00000000 */  nop   
/* 0042EB4C 2739D420 */  addiu $t9, %lo(func_0042D420) # addiu $t9, $t9, -0x2be0
/* 0042EB50 0320F809 */  jalr  $t9
/* 0042EB54 00000000 */   nop   
/* 0042EB58 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042EB5C 00000000 */  nop   
/* 0042EB60 8F818088 */  lw    $at, %got(B_10025A18)($gp)
/* 0042EB64 00000000 */  nop   
/* 0042EB68 AC205A18 */  sw    $zero, %lo(B_10025A18)($at)
.L0042EB6C:
/* 0042EB6C 8FBF0024 */  lw    $ra, 0x24($sp)
.L0042EB70:
/* 0042EB70 8FB00014 */  lw    $s0, 0x14($sp)
/* 0042EB74 8FB10018 */  lw    $s1, 0x18($sp)
/* 0042EB78 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0042EB7C 03E00008 */  jr    $ra
/* 0042EB80 27BD0050 */   addiu $sp, $sp, 0x50

    .type func_0042EB84, @function
func_0042EB84:
    # 0042F4D8 func_0042F4D8
/* 0042EB84 3C1C0FC0 */  .cpload $t9
/* 0042EB88 279CB6DC */  
/* 0042EB8C 0399E021 */  
/* 0042EB90 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0042EB94 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0042EB98 240E0001 */  li    $t6, 1
/* 0042EB9C 00809025 */  move  $s2, $a0
/* 0042EBA0 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0042EBA4 AFBC0020 */  sw    $gp, 0x20($sp)
/* 0042EBA8 AFB10018 */  sw    $s1, 0x18($sp)
/* 0042EBAC AFB00014 */  sw    $s0, 0x14($sp)
/* 0042EBB0 AFA5004C */  sw    $a1, 0x4c($sp)
/* 0042EBB4 108000AA */  beqz  $a0, .L0042EE60
/* 0042EBB8 AFAE0038 */   sw    $t6, 0x38($sp)
/* 0042EBBC 8F8F8088 */  lw    $t7, %got(B_10023634)($gp)
/* 0042EBC0 2C810020 */  sltiu $at, $a0, 0x20
/* 0042EBC4 8DEF3634 */  lw    $t7, %lo(B_10023634)($t7)
/* 0042EBC8 00000000 */  nop   
/* 0042EBCC 11E00031 */  beqz  $t7, .L0042EC94
/* 0042EBD0 00000000 */   nop   
/* 0042EBD4 1420002F */  bnez  $at, .L0042EC94
/* 0042EBD8 2C810040 */   sltiu $at, $a0, 0x40
/* 0042EBDC 1020002D */  beqz  $at, .L0042EC94
/* 0042EBE0 00000000 */   nop   
/* 0042EBE4 8F888AA4 */  lw     $t0, %got(symbolic_regs)($gp)
/* 0042EBE8 3C188000 */  lui   $t8, 0x8000
/* 0042EBEC 8D080000 */  lw    $t0, ($t0)
/* 0042EBF0 0098C806 */  srlv  $t9, $t8, $a0
/* 0042EBF4 03284824 */  and   $t1, $t9, $t0
/* 0042EBF8 11200026 */  beqz  $t1, .L0042EC94
/* 0042EBFC 00000000 */   nop   
/* 0042EC00 8F858088 */  lw    $a1, %got(B_10023638)($gp)
/* 0042EC04 8F99830C */  lw    $t9, %call16(process_symbolic_use)($gp)
/* 0042EC08 8CA53638 */  lw    $a1, %lo(B_10023638)($a1)
/* 0042EC0C 0320F809 */  jalr  $t9
/* 0042EC10 AFA00038 */   sw    $zero, 0x38($sp)
/* 0042EC14 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042EC18 1040001E */  beqz  $v0, .L0042EC94
/* 0042EC1C 00125080 */   sll   $t2, $s2, 2
/* 0042EC20 8F918088 */  lw    $s1, %got(B_10024248)($gp)
/* 0042EC24 8F998020 */  lw    $t9, %got(func_0042D420)($gp)
/* 0042EC28 26314248 */  addiu $s1, %lo(B_10024248) # addiu $s1, $s1, 0x4248
/* 0042EC2C 022A1021 */  addu  $v0, $s1, $t2
/* 0042EC30 8C440000 */  lw    $a0, ($v0)
/* 0042EC34 2739D420 */  addiu $t9, %lo(func_0042D420) # addiu $t9, $t9, -0x2be0
/* 0042EC38 0320F809 */  jalr  $t9
/* 0042EC3C AFA20028 */   sw    $v0, 0x28($sp)
/* 0042EC40 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042EC44 8FAB0028 */  lw    $t3, 0x28($sp)
/* 0042EC48 8F8C8B3C */  lw     $t4, %got(fp32regs)($gp)
/* 0042EC4C AD600000 */  sw    $zero, ($t3)
/* 0042EC50 918C0000 */  lbu   $t4, ($t4)
/* 0042EC54 324D0001 */  andi  $t5, $s2, 1
/* 0042EC58 1580000E */  bnez  $t4, .L0042EC94
/* 0042EC5C 00000000 */   nop   
/* 0042EC60 11A00003 */  beqz  $t5, .L0042EC70
/* 0042EC64 26420001 */   addiu $v0, $s2, 1
/* 0042EC68 10000001 */  b     .L0042EC70
/* 0042EC6C 2642FFFF */   addiu $v0, $s2, -1
.L0042EC70:
/* 0042EC70 8F998020 */  lw    $t9, %got(func_0042D420)($gp)
/* 0042EC74 00027080 */  sll   $t6, $v0, 2
/* 0042EC78 022E8021 */  addu  $s0, $s1, $t6
/* 0042EC7C 8E040000 */  lw    $a0, ($s0)
/* 0042EC80 2739D420 */  addiu $t9, %lo(func_0042D420) # addiu $t9, $t9, -0x2be0
/* 0042EC84 0320F809 */  jalr  $t9
/* 0042EC88 00000000 */   nop   
/* 0042EC8C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042EC90 AE000000 */  sw    $zero, ($s0)
.L0042EC94:
/* 0042EC94 8F998088 */  lw    $t9, %got(B_10023658)($gp)
/* 0042EC98 00127880 */  sll   $t7, $s2, 2
/* 0042EC9C 8F898088 */  lw    $t1, %got(B_10024248)($gp)
/* 0042ECA0 27393658 */  addiu $t9, %lo(B_10023658) # addiu $t9, $t9, 0x3658
/* 0042ECA4 01F94021 */  addu  $t0, $t7, $t9
/* 0042ECA8 AFAF002C */  sw    $t7, 0x2c($sp)
/* 0042ECAC 8D050000 */  lw    $a1, ($t0)
/* 0042ECB0 25294248 */  addiu $t1, %lo(B_10024248) # addiu $t1, $t1, 0x4248
/* 0042ECB4 01E95021 */  addu  $t2, $t7, $t1
/* 0042ECB8 10A00011 */  beqz  $a1, .L0042ED00
/* 0042ECBC AFAA0028 */   sw    $t2, 0x28($sp)
/* 0042ECC0 8F918088 */  lw    $s1, %got(B_10023644)($gp)
/* 0042ECC4 8FAB0038 */  lw    $t3, 0x38($sp)
/* 0042ECC8 26313644 */  addiu $s1, %lo(B_10023644) # addiu $s1, $s1, 0x3644
/* 0042ECCC 8E240000 */  lw    $a0, ($s1)
/* 0042ECD0 00000000 */  nop   
/* 0042ECD4 10A4000A */  beq   $a1, $a0, .L0042ED00
/* 0042ECD8 00000000 */   nop   
/* 0042ECDC 11600008 */  beqz  $t3, .L0042ED00
/* 0042ECE0 00000000 */   nop   
/* 0042ECE4 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042ECE8 24060001 */  li    $a2, 1
/* 0042ECEC 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042ECF0 0320F809 */  jalr  $t9
/* 0042ECF4 00003825 */   move  $a3, $zero
/* 0042ECF8 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042ECFC 00000000 */  nop   
.L0042ED00:
/* 0042ED00 8F918088 */  lw    $s1, %got(B_10023644)($gp)
/* 0042ED04 2401004D */  li    $at, 77
/* 0042ED08 16410020 */  bne   $s2, $at, .L0042ED8C
/* 0042ED0C 26313644 */   addiu $s1, %lo(B_10023644) # addiu $s1, $s1, 0x3644
/* 0042ED10 8F848088 */  lw    $a0, %got(B_10025A18)($gp)
/* 0042ED14 00000000 */  nop   
/* 0042ED18 8C845A18 */  lw    $a0, %lo(B_10025A18)($a0)
/* 0042ED1C 00000000 */  nop   
/* 0042ED20 10800010 */  beqz  $a0, .L0042ED64
/* 0042ED24 00808025 */   move  $s0, $a0
.L0042ED28:
/* 0042ED28 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042ED2C 8E240000 */  lw    $a0, ($s1)
/* 0042ED30 8E050008 */  lw    $a1, 8($s0)
/* 0042ED34 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042ED38 24060001 */  li    $a2, 1
/* 0042ED3C 0320F809 */  jalr  $t9
/* 0042ED40 00003825 */   move  $a3, $zero
/* 0042ED44 8E100000 */  lw    $s0, ($s0)
/* 0042ED48 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042ED4C 1600FFF6 */  bnez  $s0, .L0042ED28
/* 0042ED50 00000000 */   nop   
/* 0042ED54 8F848088 */  lw    $a0, %got(B_10025A18)($gp)
/* 0042ED58 00000000 */  nop   
/* 0042ED5C 8C845A18 */  lw    $a0, %lo(B_10025A18)($a0)
/* 0042ED60 00000000 */  nop   
.L0042ED64:
/* 0042ED64 8F998020 */  lw    $t9, %got(func_0042D420)($gp)
/* 0042ED68 00000000 */  nop   
/* 0042ED6C 2739D420 */  addiu $t9, %lo(func_0042D420) # addiu $t9, $t9, -0x2be0
/* 0042ED70 0320F809 */  jalr  $t9
/* 0042ED74 00000000 */   nop   
/* 0042ED78 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042ED7C 00000000 */  nop   
/* 0042ED80 8F818088 */  lw    $at, %got(B_10025A18)($gp)
/* 0042ED84 00000000 */  nop   
/* 0042ED88 AC205A18 */  sw    $zero, %lo(B_10025A18)($at)
.L0042ED8C:
/* 0042ED8C 8FAC0028 */  lw    $t4, 0x28($sp)
/* 0042ED90 00000000 */  nop   
/* 0042ED94 8D820000 */  lw    $v0, ($t4)
/* 0042ED98 00000000 */  nop   
/* 0042ED9C 1040000D */  beqz  $v0, .L0042EDD4
/* 0042EDA0 00000000 */   nop   
/* 0042EDA4 8E2D0000 */  lw    $t5, ($s1)
/* 0042EDA8 8C4E0008 */  lw    $t6, 8($v0)
/* 0042EDAC 8FB9004C */  lw    $t9, 0x4c($sp)
/* 0042EDB0 15AE0008 */  bne   $t5, $t6, .L0042EDD4
/* 0042EDB4 00000000 */   nop   
/* 0042EDB8 8C4F0004 */  lw    $t7, 4($v0)
/* 0042EDBC 00000000 */  nop   
/* 0042EDC0 01F9082B */  sltu  $at, $t7, $t9
/* 0042EDC4 10200027 */  beqz  $at, .L0042EE64
/* 0042EDC8 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0042EDCC 10000024 */  b     .L0042EE60
/* 0042EDD0 AC590004 */   sw    $t9, 4($v0)
.L0042EDD4:
/* 0042EDD4 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0042EDD8 2404000C */  li    $a0, 12
/* 0042EDDC 0320F809 */  jalr  $t9
/* 0042EDE0 00000000 */   nop   
/* 0042EDE4 8E280000 */  lw    $t0, ($s1)
/* 0042EDE8 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042EDEC AC480008 */  sw    $t0, 8($v0)
/* 0042EDF0 8FB8004C */  lw    $t8, 0x4c($sp)
/* 0042EDF4 8F8D8088 */  lw    $t5, %got(B_10025428)($gp)
/* 0042EDF8 AC580004 */  sw    $t8, 4($v0)
/* 0042EDFC 8FA90028 */  lw    $t1, 0x28($sp)
/* 0042EE00 25AD5428 */  addiu $t5, %lo(B_10025428) # addiu $t5, $t5, 0x5428
/* 0042EE04 8D2A0000 */  lw    $t2, ($t1)
/* 0042EE08 00000000 */  nop   
/* 0042EE0C AC4A0000 */  sw    $t2, ($v0)
/* 0042EE10 8FAB0028 */  lw    $t3, 0x28($sp)
/* 0042EE14 00000000 */  nop   
/* 0042EE18 AD620000 */  sw    $v0, ($t3)
/* 0042EE1C 8FAC002C */  lw    $t4, 0x2c($sp)
/* 0042EE20 00000000 */  nop   
/* 0042EE24 018D1821 */  addu  $v1, $t4, $t5
/* 0042EE28 8C6E0000 */  lw    $t6, ($v1)
/* 0042EE2C 00000000 */  nop   
/* 0042EE30 15C0000C */  bnez  $t6, .L0042EE64
/* 0042EE34 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0042EE38 8F828088 */  lw    $v0, %got(B_10025420)($gp)
/* 0042EE3C 24180001 */  li    $t8, 1
/* 0042EE40 24425420 */  addiu $v0, %lo(B_10025420) # addiu $v0, $v0, 0x5420
/* 0042EE44 8C4F0000 */  lw    $t7, ($v0)
/* 0042EE48 00000000 */  nop   
/* 0042EE4C ADF20000 */  sw    $s2, ($t7)
/* 0042EE50 8C590000 */  lw    $t9, ($v0)
/* 0042EE54 AC780000 */  sw    $t8, ($v1)
/* 0042EE58 27280004 */  addiu $t0, $t9, 4
/* 0042EE5C AC480000 */  sw    $t0, ($v0)
.L0042EE60:
/* 0042EE60 8FBF0024 */  lw    $ra, 0x24($sp)
.L0042EE64:
/* 0042EE64 8FB00014 */  lw    $s0, 0x14($sp)
/* 0042EE68 8FB10018 */  lw    $s1, 0x18($sp)
/* 0042EE6C 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0042EE70 03E00008 */  jr    $ra
/* 0042EE74 27BD0048 */   addiu $sp, $sp, 0x48

    .type func_0042EE78, @function
func_0042EE78:
    # 0042F4D8 func_0042F4D8
/* 0042EE78 3C1C0FC0 */  .cpload $t9
/* 0042EE7C 279CB3E8 */  
/* 0042EE80 0399E021 */  
/* 0042EE84 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0042EE88 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0042EE8C AFBC0018 */  sw    $gp, 0x18($sp)
/* 0042EE90 AFA40040 */  sw    $a0, 0x40($sp)
/* 0042EE94 10800090 */  beqz  $a0, .L0042F0D8
/* 0042EE98 AFA50044 */   sw    $a1, 0x44($sp)
/* 0042EE9C 8F988088 */  lw    $t8, %got(B_10023658)($gp)
/* 0042EEA0 00044080 */  sll   $t0, $a0, 2
/* 0042EEA4 27183658 */  addiu $t8, %lo(B_10023658) # addiu $t8, $t8, 0x3658
/* 0042EEA8 0118C821 */  addu  $t9, $t0, $t8
/* 0042EEAC 8F250000 */  lw    $a1, ($t9)
/* 0042EEB0 00000000 */  nop   
/* 0042EEB4 10A00054 */  beqz  $a1, .L0042F008
/* 0042EEB8 00000000 */   nop   
/* 0042EEBC 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 0042EEC0 00000000 */  nop   
/* 0042EEC4 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 0042EEC8 00000000 */  nop   
/* 0042EECC 10A4004E */  beq   $a1, $a0, .L0042F008
/* 0042EED0 00000000 */   nop   
/* 0042EED4 8CA20000 */  lw    $v0, ($a1)
/* 0042EED8 24010008 */  li    $at, 8
/* 0042EEDC 00021E82 */  srl   $v1, $v0, 0x1a
/* 0042EEE0 10610003 */  beq   $v1, $at, .L0042EEF0
/* 0042EEE4 24010009 */   li    $at, 9
/* 0042EEE8 1461003E */  bne   $v1, $at, .L0042EFE4
/* 0042EEEC 00000000 */   nop   
.L0042EEF0:
/* 0042EEF0 94AA0000 */  lhu   $t2, ($a1)
/* 0042EEF4 8FA90040 */  lw    $t1, 0x40($sp)
/* 0042EEF8 314B001F */  andi  $t3, $t2, 0x1f
/* 0042EEFC 152B0039 */  bne   $t1, $t3, .L0042EFE4
/* 0042EF00 00026180 */   sll   $t4, $v0, 6
/* 0042EF04 000C6EC2 */  srl   $t5, $t4, 0x1b
/* 0042EF08 152D0036 */  bne   $t1, $t5, .L0042EFE4
/* 0042EF0C 00000000 */   nop   
/* 0042EF10 8CAE0004 */  lw    $t6, 4($a1)
/* 0042EF14 00000000 */  nop   
/* 0042EF18 15C00032 */  bnez  $t6, .L0042EFE4
/* 0042EF1C 00000000 */   nop   
/* 0042EF20 8C8F0004 */  lw    $t7, 4($a0)
/* 0042EF24 2401001D */  li    $at, 29
/* 0042EF28 15E0002E */  bnez  $t7, .L0042EFE4
/* 0042EF2C 00000000 */   nop   
/* 0042EF30 1121002C */  beq   $t1, $at, .L0042EFE4
/* 0042EF34 00000000 */   nop   
/* 0042EF38 84B80002 */  lh    $t8, 2($a1)
/* 0042EF3C 00000000 */  nop   
/* 0042EF40 00D81023 */  subu  $v0, $a2, $t8
/* 0042EF44 28418000 */  slti  $at, $v0, -0x8000
/* 0042EF48 14200026 */  bnez  $at, .L0042EFE4
/* 0042EF4C 34018000 */   li    $at, 32768
/* 0042EF50 0041082A */  slt   $at, $v0, $at
/* 0042EF54 10200023 */  beqz  $at, .L0042EFE4
/* 0042EF58 00000000 */   nop   
/* 0042EF5C 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0042EF60 2404000C */  li    $a0, 12
/* 0042EF64 AFA5003C */  sw    $a1, 0x3c($sp)
/* 0042EF68 0320F809 */  jalr  $t9
/* 0042EF6C AFA80028 */   sw    $t0, 0x28($sp)
/* 0042EF70 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042EF74 8FA5003C */  lw    $a1, 0x3c($sp)
/* 0042EF78 8F998088 */  lw    $t9, %got(B_10023644)($gp)
/* 0042EF7C 8FA80028 */  lw    $t0, 0x28($sp)
/* 0042EF80 8F393644 */  lw    $t9, %lo(B_10023644)($t9)
/* 0042EF84 240AFFFF */  li    $t2, -1
/* 0042EF88 A4400004 */  sh    $zero, 4($v0)
/* 0042EF8C A44A0006 */  sh    $t2, 6($v0)
/* 0042EF90 AC590008 */  sw    $t9, 8($v0)
/* 0042EF94 8F8C8088 */  lw    $t4, %got(B_10023C48)($gp)
/* 0042EF98 8CAB0024 */  lw    $t3, 0x24($a1)
/* 0042EF9C 258C3C48 */  addiu $t4, %lo(B_10023C48) # addiu $t4, $t4, 0x3c48
/* 0042EFA0 AC4B0000 */  sw    $t3, ($v0)
/* 0042EFA4 ACA20024 */  sw    $v0, 0x24($a1)
/* 0042EFA8 010C6821 */  addu  $t5, $t0, $t4
/* 0042EFAC 8DA50000 */  lw    $a1, ($t5)
/* 0042EFB0 24060001 */  li    $a2, 1
/* 0042EFB4 10A00014 */  beqz  $a1, .L0042F008
/* 0042EFB8 00003825 */   move  $a3, $zero
/* 0042EFBC 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 0042EFC0 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042EFC4 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 0042EFC8 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042EFCC 0320F809 */  jalr  $t9
/* 0042EFD0 AFA80028 */   sw    $t0, 0x28($sp)
/* 0042EFD4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042EFD8 8FA80028 */  lw    $t0, 0x28($sp)
/* 0042EFDC 1000000A */  b     .L0042F008
/* 0042EFE0 00000000 */   nop   
.L0042EFE4:
/* 0042EFE4 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042EFE8 24060001 */  li    $a2, 1
/* 0042EFEC 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042EFF0 00003825 */  move  $a3, $zero
/* 0042EFF4 0320F809 */  jalr  $t9
/* 0042EFF8 AFA80028 */   sw    $t0, 0x28($sp)
/* 0042EFFC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F000 8FA80028 */  lw    $t0, 0x28($sp)
/* 0042F004 00000000 */  nop   
.L0042F008:
/* 0042F008 8F8E8088 */  lw    $t6, %got(B_10024248)($gp)
/* 0042F00C 2404000C */  li    $a0, 12
/* 0042F010 25CE4248 */  addiu $t6, %lo(B_10024248) # addiu $t6, $t6, 0x4248
/* 0042F014 010E1821 */  addu  $v1, $t0, $t6
/* 0042F018 8C620000 */  lw    $v0, ($v1)
/* 0042F01C 00000000 */  nop   
/* 0042F020 1040000E */  beqz  $v0, .L0042F05C
/* 0042F024 00000000 */   nop   
/* 0042F028 8F8F8088 */  lw    $t7, %got(B_10023644)($gp)
/* 0042F02C 8C490008 */  lw    $t1, 8($v0)
/* 0042F030 8DEF3644 */  lw    $t7, %lo(B_10023644)($t7)
/* 0042F034 8FB90044 */  lw    $t9, 0x44($sp)
/* 0042F038 15E90008 */  bne   $t7, $t1, .L0042F05C
/* 0042F03C 00000000 */   nop   
/* 0042F040 8C580004 */  lw    $t8, 4($v0)
/* 0042F044 00000000 */  nop   
/* 0042F048 0319082B */  sltu  $at, $t8, $t9
/* 0042F04C 10200023 */  beqz  $at, .L0042F0DC
/* 0042F050 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0042F054 10000020 */  b     .L0042F0D8
/* 0042F058 AC590004 */   sw    $t9, 4($v0)
.L0042F05C:
/* 0042F05C 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0042F060 AFA30024 */  sw    $v1, 0x24($sp)
/* 0042F064 0320F809 */  jalr  $t9
/* 0042F068 AFA80028 */   sw    $t0, 0x28($sp)
/* 0042F06C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F070 8FA30024 */  lw    $v1, 0x24($sp)
/* 0042F074 8F8A8088 */  lw    $t2, %got(B_10023644)($gp)
/* 0042F078 8FA80028 */  lw    $t0, 0x28($sp)
/* 0042F07C 8D4A3644 */  lw    $t2, %lo(B_10023644)($t2)
/* 0042F080 8F8D8088 */  lw    $t5, %got(B_10025428)($gp)
/* 0042F084 AC4A0008 */  sw    $t2, 8($v0)
/* 0042F088 8FAB0044 */  lw    $t3, 0x44($sp)
/* 0042F08C 25AD5428 */  addiu $t5, %lo(B_10025428) # addiu $t5, $t5, 0x5428
/* 0042F090 AC4B0004 */  sw    $t3, 4($v0)
/* 0042F094 8C6C0000 */  lw    $t4, ($v1)
/* 0042F098 010D2021 */  addu  $a0, $t0, $t5
/* 0042F09C AC4C0000 */  sw    $t4, ($v0)
/* 0042F0A0 8C8E0000 */  lw    $t6, ($a0)
/* 0042F0A4 AC620000 */  sw    $v0, ($v1)
/* 0042F0A8 15C0000C */  bnez  $t6, .L0042F0DC
/* 0042F0AC 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0042F0B0 8F828088 */  lw    $v0, %got(B_10025420)($gp)
/* 0042F0B4 8FAF0040 */  lw    $t7, 0x40($sp)
/* 0042F0B8 24425420 */  addiu $v0, %lo(B_10025420) # addiu $v0, $v0, 0x5420
/* 0042F0BC 8C490000 */  lw    $t1, ($v0)
/* 0042F0C0 240A0001 */  li    $t2, 1
/* 0042F0C4 AD2F0000 */  sw    $t7, ($t1)
/* 0042F0C8 8C580000 */  lw    $t8, ($v0)
/* 0042F0CC AC8A0000 */  sw    $t2, ($a0)
/* 0042F0D0 27190004 */  addiu $t9, $t8, 4
/* 0042F0D4 AC590000 */  sw    $t9, ($v0)
.L0042F0D8:
/* 0042F0D8 8FBF001C */  lw    $ra, 0x1c($sp)
.L0042F0DC:
/* 0042F0DC 27BD0040 */  addiu $sp, $sp, 0x40
/* 0042F0E0 03E00008 */  jr    $ra
/* 0042F0E4 00000000 */   nop   

    .type func_0042F0E8, @function
func_0042F0E8:
    # 0042F4D8 func_0042F4D8
/* 0042F0E8 3C1C0FC0 */  .cpload $t9
/* 0042F0EC 279CB178 */  
/* 0042F0F0 0399E021 */  
/* 0042F0F4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0042F0F8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0042F0FC AFBC0018 */  sw    $gp, 0x18($sp)
/* 0042F100 AFA40038 */  sw    $a0, 0x38($sp)
/* 0042F104 1080004B */  beqz  $a0, .L0042F234
/* 0042F108 AFA5003C */   sw    $a1, 0x3c($sp)
/* 0042F10C 8F988088 */  lw    $t8, %got(B_10023658)($gp)
/* 0042F110 00047880 */  sll   $t7, $a0, 2
/* 0042F114 27183658 */  addiu $t8, %lo(B_10023658) # addiu $t8, $t8, 0x3658
/* 0042F118 01F8C821 */  addu  $t9, $t7, $t8
/* 0042F11C 8F250000 */  lw    $a1, ($t9)
/* 0042F120 01E04025 */  move  $t0, $t7
/* 0042F124 10A0000F */  beqz  $a1, .L0042F164
/* 0042F128 00000000 */   nop   
/* 0042F12C 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 0042F130 00000000 */  nop   
/* 0042F134 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 0042F138 00000000 */  nop   
/* 0042F13C 10A40009 */  beq   $a1, $a0, .L0042F164
/* 0042F140 00000000 */   nop   
/* 0042F144 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042F148 00C03825 */  move  $a3, $a2
/* 0042F14C 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042F150 0320F809 */  jalr  $t9
/* 0042F154 AFAF0024 */   sw    $t7, 0x24($sp)
/* 0042F158 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F15C 8FA80024 */  lw    $t0, 0x24($sp)
/* 0042F160 00000000 */  nop   
.L0042F164:
/* 0042F164 8F898088 */  lw    $t1, %got(B_10024248)($gp)
/* 0042F168 2404000C */  li    $a0, 12
/* 0042F16C 25294248 */  addiu $t1, %lo(B_10024248) # addiu $t1, $t1, 0x4248
/* 0042F170 01091821 */  addu  $v1, $t0, $t1
/* 0042F174 8C620000 */  lw    $v0, ($v1)
/* 0042F178 00000000 */  nop   
/* 0042F17C 1040000E */  beqz  $v0, .L0042F1B8
/* 0042F180 00000000 */   nop   
/* 0042F184 8F8A8088 */  lw    $t2, %got(B_10023644)($gp)
/* 0042F188 8C4B0008 */  lw    $t3, 8($v0)
/* 0042F18C 8D4A3644 */  lw    $t2, %lo(B_10023644)($t2)
/* 0042F190 8FAD003C */  lw    $t5, 0x3c($sp)
/* 0042F194 154B0008 */  bne   $t2, $t3, .L0042F1B8
/* 0042F198 00000000 */   nop   
/* 0042F19C 8C4C0004 */  lw    $t4, 4($v0)
/* 0042F1A0 00000000 */  nop   
/* 0042F1A4 018D082B */  sltu  $at, $t4, $t5
/* 0042F1A8 10200023 */  beqz  $at, .L0042F238
/* 0042F1AC 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0042F1B0 10000020 */  b     .L0042F234
/* 0042F1B4 AC4D0004 */   sw    $t5, 4($v0)
.L0042F1B8:
/* 0042F1B8 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0042F1BC AFA30020 */  sw    $v1, 0x20($sp)
/* 0042F1C0 0320F809 */  jalr  $t9
/* 0042F1C4 AFA80024 */   sw    $t0, 0x24($sp)
/* 0042F1C8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F1CC 8FA30020 */  lw    $v1, 0x20($sp)
/* 0042F1D0 8F8E8088 */  lw    $t6, %got(B_10023644)($gp)
/* 0042F1D4 8FA80024 */  lw    $t0, 0x24($sp)
/* 0042F1D8 8DCE3644 */  lw    $t6, %lo(B_10023644)($t6)
/* 0042F1DC 8F998088 */  lw    $t9, %got(B_10025428)($gp)
/* 0042F1E0 AC4E0008 */  sw    $t6, 8($v0)
/* 0042F1E4 8FAF003C */  lw    $t7, 0x3c($sp)
/* 0042F1E8 27395428 */  addiu $t9, %lo(B_10025428) # addiu $t9, $t9, 0x5428
/* 0042F1EC AC4F0004 */  sw    $t7, 4($v0)
/* 0042F1F0 8C780000 */  lw    $t8, ($v1)
/* 0042F1F4 01192021 */  addu  $a0, $t0, $t9
/* 0042F1F8 AC580000 */  sw    $t8, ($v0)
/* 0042F1FC 8C890000 */  lw    $t1, ($a0)
/* 0042F200 AC620000 */  sw    $v0, ($v1)
/* 0042F204 1520000C */  bnez  $t1, .L0042F238
/* 0042F208 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0042F20C 8F828088 */  lw    $v0, %got(B_10025420)($gp)
/* 0042F210 8FAA0038 */  lw    $t2, 0x38($sp)
/* 0042F214 24425420 */  addiu $v0, %lo(B_10025420) # addiu $v0, $v0, 0x5420
/* 0042F218 8C4B0000 */  lw    $t3, ($v0)
/* 0042F21C 240E0001 */  li    $t6, 1
/* 0042F220 AD6A0000 */  sw    $t2, ($t3)
/* 0042F224 8C4C0000 */  lw    $t4, ($v0)
/* 0042F228 AC8E0000 */  sw    $t6, ($a0)
/* 0042F22C 258D0004 */  addiu $t5, $t4, 4
/* 0042F230 AC4D0000 */  sw    $t5, ($v0)
.L0042F234:
/* 0042F234 8FBF001C */  lw    $ra, 0x1c($sp)
.L0042F238:
/* 0042F238 27BD0038 */  addiu $sp, $sp, 0x38
/* 0042F23C 03E00008 */  jr    $ra
/* 0042F240 00000000 */   nop   

    .type func_0042F244, @function
func_0042F244:
    # 0042F4D8 func_0042F4D8
/* 0042F244 3C1C0FC0 */  .cpload $t9
/* 0042F248 279CB01C */  
/* 0042F24C 0399E021 */  
/* 0042F250 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 0042F254 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0042F258 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 0042F25C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0042F260 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0042F264 8C8E0020 */  lw    $t6, 0x20($a0)
/* 0042F268 00000000 */  nop   
/* 0042F26C 31CF0002 */  andi  $t7, $t6, 2
/* 0042F270 15E0004F */  bnez  $t7, .L0042F3B0
/* 0042F274 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0042F278 8F988088 */  lw    $t8, %got(B_1002364C)($gp)
/* 0042F27C 240604F7 */  li    $a2, 1271
/* 0042F280 8F18364C */  lw    $t8, %lo(B_1002364C)($t8)
/* 0042F284 00000000 */  nop   
/* 0042F288 1300000D */  beqz  $t8, .L0042F2C0
/* 0042F28C 00000000 */   nop   
/* 0042F290 8F84806C */  lw    $a0, %got(RO_100153A4)($gp)
/* 0042F294 8F85806C */  lw    $a1, %got(RO_100153B8)($gp)
/* 0042F298 8F998670 */  lw    $t9, %call16(assertion_failed)($gp)
/* 0042F29C 248453A4 */  addiu $a0, %lo(RO_100153A4) # addiu $a0, $a0, 0x53a4
/* 0042F2A0 0320F809 */  jalr  $t9
/* 0042F2A4 24A553B8 */   addiu $a1, %lo(RO_100153B8) # addiu $a1, $a1, 0x53b8
/* 0042F2A8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F2AC 00000000 */  nop   
/* 0042F2B0 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 0042F2B4 00000000 */  nop   
/* 0042F2B8 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 0042F2BC 00000000 */  nop   
.L0042F2C0:
/* 0042F2C0 8F838088 */  lw    $v1, %got(B_10023650)($gp)
/* 0042F2C4 8F818088 */  lw    $at, %got(B_1002364C)($gp)
/* 0042F2C8 24633650 */  addiu $v1, %lo(B_10023650) # addiu $v1, $v1, 0x3650
/* 0042F2CC AC24364C */  sw    $a0, %lo(B_1002364C)($at)
/* 0042F2D0 AC600000 */  sw    $zero, ($v1)
/* 0042F2D4 8C990000 */  lw    $t9, ($a0)
/* 0042F2D8 00000000 */  nop   
/* 0042F2DC 00194682 */  srl   $t0, $t9, 0x1a
/* 0042F2E0 2509FFFF */  addiu $t1, $t0, -1
/* 0042F2E4 2D210017 */  sltiu $at, $t1, 0x17
/* 0042F2E8 1020001F */  beqz  $at, .L0042F368
/* 0042F2EC 00000000 */   nop   
/* 0042F2F0 8F81806C */  lw    $at, %got(jtbl_100157F4)($gp)
/* 0042F2F4 00094880 */  sll   $t1, $t1, 2
/* 0042F2F8 00290821 */  addu  $at, $at, $t1
/* 0042F2FC 8C2957F4 */  lw    $t1, %lo(jtbl_100157F4)($at)
/* 0042F300 00000000 */  nop   
/* 0042F304 013C4821 */  addu  $t1, $t1, $gp
/* 0042F308 01200008 */  jr    $t1
/* 0042F30C 00000000 */   nop   
.L0042F310:
/* 0042F310 240A0001 */  li    $t2, 1
/* 0042F314 10000014 */  b     .L0042F368
/* 0042F318 AC6A0000 */   sw    $t2, ($v1)
.L0042F31C:
/* 0042F31C 94820000 */  lhu   $v0, ($a0)
/* 0042F320 24010002 */  li    $at, 2
/* 0042F324 304B001F */  andi  $t3, $v0, 0x1f
/* 0042F328 11610008 */  beq   $t3, $at, .L0042F34C
/* 0042F32C 240C0001 */   li    $t4, 1
/* 0042F330 24010003 */  li    $at, 3
/* 0042F334 11610005 */  beq   $t3, $at, .L0042F34C
/* 0042F338 24010012 */   li    $at, 18
/* 0042F33C 11610003 */  beq   $t3, $at, .L0042F34C
/* 0042F340 24010013 */   li    $at, 19
/* 0042F344 15610008 */  bne   $t3, $at, .L0042F368
/* 0042F348 00000000 */   nop   
.L0042F34C:
/* 0042F34C 10000006 */  b     .L0042F368
/* 0042F350 AC6C0000 */   sw    $t4, ($v1)
.L0042F354:
/* 0042F354 948E0000 */  lhu   $t6, ($a0)
/* 0042F358 00000000 */  nop   
/* 0042F35C 31CF0002 */  andi  $t7, $t6, 2
/* 0042F360 000FC02B */  sltu  $t8, $zero, $t7
/* 0042F364 AC780000 */  sw    $t8, ($v1)
.L0042F368:
/* 0042F368 8C790000 */  lw    $t9, ($v1)
/* 0042F36C 00000000 */  nop   
/* 0042F370 1320000F */  beqz  $t9, .L0042F3B0
/* 0042F374 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0042F378 8F858088 */  lw    $a1, %got(B_10023648)($gp)
/* 0042F37C 00000000 */  nop   
/* 0042F380 8CA53648 */  lw    $a1, %lo(B_10023648)($a1)
/* 0042F384 00000000 */  nop   
/* 0042F388 10A00009 */  beqz  $a1, .L0042F3B0
/* 0042F38C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0042F390 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042F394 94860028 */  lhu   $a2, 0x28($a0)
/* 0042F398 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042F39C 0320F809 */  jalr  $t9
/* 0042F3A0 00003825 */   move  $a3, $zero
/* 0042F3A4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F3A8 00000000 */  nop   
/* 0042F3AC 8FBF001C */  lw    $ra, 0x1c($sp)
.L0042F3B0:
/* 0042F3B0 27BD0020 */  addiu $sp, $sp, 0x20
/* 0042F3B4 03E00008 */  jr    $ra
/* 0042F3B8 00000000 */   nop   

    .type func_0042F3BC, @function
func_0042F3BC:
    # 0042F4D8 func_0042F4D8
/* 0042F3BC 3C1C0FC0 */  .cpload $t9
/* 0042F3C0 279CAEA4 */  
/* 0042F3C4 0399E021 */  
/* 0042F3C8 8F858088 */  lw    $a1, %got(B_1002378C)($gp)
/* 0042F3CC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0042F3D0 8CA5378C */  lw    $a1, %lo(B_1002378C)($a1)
/* 0042F3D4 AFB10018 */  sw    $s1, 0x18($sp)
/* 0042F3D8 00808825 */  move  $s1, $a0
/* 0042F3DC AFBF0024 */  sw    $ra, 0x24($sp)
/* 0042F3E0 AFBC0020 */  sw    $gp, 0x20($sp)
/* 0042F3E4 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0042F3E8 10A0000B */  beqz  $a1, .L0042F418
/* 0042F3EC AFB00014 */   sw    $s0, 0x14($sp)
/* 0042F3F0 8F928088 */  lw    $s2, %got(B_10023644)($gp)
/* 0042F3F4 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042F3F8 26523644 */  addiu $s2, %lo(B_10023644) # addiu $s2, $s2, 0x3644
/* 0042F3FC 8E440000 */  lw    $a0, ($s2)
/* 0042F400 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042F404 2626FFFF */  addiu $a2, $s1, -1
/* 0042F408 0320F809 */  jalr  $t9
/* 0042F40C 00003825 */   move  $a3, $zero
/* 0042F410 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042F414 00000000 */  nop   
.L0042F418:
/* 0042F418 8F908088 */  lw    $s0, %got(B_1002437C)($gp)
/* 0042F41C 8F928088 */  lw    $s2, %got(B_10023644)($gp)
/* 0042F420 8E10437C */  lw    $s0, %lo(B_1002437C)($s0)
/* 0042F424 26523644 */  addiu $s2, %lo(B_10023644) # addiu $s2, $s2, 0x3644
/* 0042F428 12000016 */  beqz  $s0, .L0042F484
/* 0042F42C 00000000 */   nop   
.L0042F430:
/* 0042F430 8E020004 */  lw    $v0, 4($s0)
/* 0042F434 00000000 */  nop   
/* 0042F438 0051082B */  sltu  $at, $v0, $s1
/* 0042F43C 14200006 */  bnez  $at, .L0042F458
/* 0042F440 00000000 */   nop   
/* 0042F444 8E440000 */  lw    $a0, ($s2)
/* 0042F448 00000000 */  nop   
/* 0042F44C 94860028 */  lhu   $a2, 0x28($a0)
/* 0042F450 10000003 */  b     .L0042F460
/* 0042F454 00000000 */   nop   
.L0042F458:
/* 0042F458 8E440000 */  lw    $a0, ($s2)
/* 0042F45C 02223023 */  subu  $a2, $s1, $v0
.L0042F460:
/* 0042F460 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0042F464 8E050008 */  lw    $a1, 8($s0)
/* 0042F468 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 0042F46C 0320F809 */  jalr  $t9
/* 0042F470 00003825 */   move  $a3, $zero
/* 0042F474 8E100000 */  lw    $s0, ($s0)
/* 0042F478 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042F47C 1600FFEC */  bnez  $s0, .L0042F430
/* 0042F480 00000000 */   nop   
.L0042F484:
/* 0042F484 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0042F488 2404000C */  li    $a0, 12
/* 0042F48C 0320F809 */  jalr  $t9
/* 0042F490 00000000 */   nop   
/* 0042F494 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042F498 8E4E0000 */  lw    $t6, ($s2)
/* 0042F49C 8F838088 */  lw    $v1, %got(B_10025A18)($gp)
/* 0042F4A0 240F0001 */  li    $t7, 1
/* 0042F4A4 AC4F0004 */  sw    $t7, 4($v0)
/* 0042F4A8 AC4E0008 */  sw    $t6, 8($v0)
/* 0042F4AC 24635A18 */  addiu $v1, %lo(B_10025A18) # addiu $v1, $v1, 0x5a18
/* 0042F4B0 8C780000 */  lw    $t8, ($v1)
/* 0042F4B4 00000000 */  nop   
/* 0042F4B8 AC580000 */  sw    $t8, ($v0)
/* 0042F4BC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0042F4C0 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0042F4C4 8FB10018 */  lw    $s1, 0x18($sp)
/* 0042F4C8 8FB00014 */  lw    $s0, 0x14($sp)
/* 0042F4CC AC620000 */  sw    $v0, ($v1)
/* 0042F4D0 03E00008 */  jr    $ra
/* 0042F4D4 27BD0028 */   addiu $sp, $sp, 0x28

    .type func_0042F4D8, @function
func_0042F4D8:
    # 004318D4 func_004318D4
/* 0042F4D8 3C1C0FC0 */  .cpload $t9
/* 0042F4DC 279CAD88 */  
/* 0042F4E0 0399E021 */  
/* 0042F4E4 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0042F4E8 AFA40050 */  sw    $a0, 0x50($sp)
/* 0042F4EC 97AE0050 */  lhu   $t6, 0x50($sp)
/* 0042F4F0 AFB00014 */  sw    $s0, 0x14($sp)
/* 0042F4F4 00048180 */  sll   $s0, $a0, 6
/* 0042F4F8 00043E82 */  srl   $a3, $a0, 0x1a
/* 0042F4FC 0010CEC2 */  srl   $t9, $s0, 0x1b
/* 0042F500 2CE10040 */  sltiu $at, $a3, 0x40
/* 0042F504 31CF001F */  andi  $t7, $t6, 0x1f
/* 0042F508 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0042F50C AFBC0018 */  sw    $gp, 0x18($sp)
/* 0042F510 AFAF004C */  sw    $t7, 0x4c($sp)
/* 0042F514 03208025 */  move  $s0, $t9
/* 0042F518 102008DE */  beqz  $at, .L00431894
/* 0042F51C 00E01825 */   move  $v1, $a3
/* 0042F520 8F81806C */  lw    $at, %got(jtbl_10015850)($gp)
/* 0042F524 00034080 */  sll   $t0, $v1, 2
/* 0042F528 00280821 */  addu  $at, $at, $t0
/* 0042F52C 8C285850 */  lw    $t0, %lo(jtbl_10015850)($at)
/* 0042F530 00000000 */  nop   
/* 0042F534 011C4021 */  addu  $t0, $t0, $gp
/* 0042F538 01000008 */  jr    $t0
/* 0042F53C 00000000 */   nop   
.L0042F540:
/* 0042F540 8F85890C */  lw     $a1, %got(logical_latency)($gp)
/* 0042F544 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 0042F548 8CA50000 */  lw    $a1, ($a1)
/* 0042F54C 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0042F550 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 0042F554 0320F809 */  jalr  $t9
/* 0042F558 24A50001 */   addiu $a1, $a1, 1
/* 0042F55C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F560 02002025 */  move  $a0, $s0
/* 0042F564 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 0042F568 24050001 */  li    $a1, 1
/* 0042F56C 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0042F570 0320F809 */  jalr  $t9
/* 0042F574 00000000 */   nop   
/* 0042F578 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F57C 100008D2 */  b     .L004318C8
/* 0042F580 8FBF001C */   lw    $ra, 0x1c($sp)
.L0042F584:
/* 0042F584 8F858914 */  lw     $a1, %got(shift_latency)($gp)
/* 0042F588 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 0042F58C 8CA50000 */  lw    $a1, ($a1)
/* 0042F590 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0042F594 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 0042F598 0320F809 */  jalr  $t9
/* 0042F59C 24A50001 */   addiu $a1, $a1, 1
/* 0042F5A0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F5A4 02002025 */  move  $a0, $s0
/* 0042F5A8 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 0042F5AC 24050001 */  li    $a1, 1
/* 0042F5B0 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0042F5B4 0320F809 */  jalr  $t9
/* 0042F5B8 00000000 */   nop   
/* 0042F5BC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F5C0 100008C1 */  b     .L004318C8
/* 0042F5C4 8FBF001C */   lw    $ra, 0x1c($sp)
.L0042F5C8:
/* 0042F5C8 8FA9004C */  lw    $t1, 0x4c($sp)
/* 0042F5CC 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0042F5D0 15300020 */  bne   $t1, $s0, .L0042F654
/* 0042F5D4 2401001D */   li    $at, 29
/* 0042F5D8 15210007 */  bne   $t1, $at, .L0042F5F8
/* 0042F5DC 00000000 */   nop   
/* 0042F5E0 8F8A8C40 */  lw     $t2, %got(non_pic_flag)($gp)
/* 0042F5E4 00000000 */  nop   
/* 0042F5E8 914A0000 */  lbu   $t2, ($t2)
/* 0042F5EC 00000000 */  nop   
/* 0042F5F0 11400018 */  beqz  $t2, .L0042F654
/* 0042F5F4 00000000 */   nop   
.L0042F5F8:
/* 0042F5F8 8F828088 */  lw    $v0, %got(B_10023644)($gp)
/* 0042F5FC 00000000 */  nop   
/* 0042F600 8C423644 */  lw    $v0, %lo(B_10023644)($v0)
/* 0042F604 00000000 */  nop   
/* 0042F608 8C4B0004 */  lw    $t3, 4($v0)
/* 0042F60C 00000000 */  nop   
/* 0042F610 15600010 */  bnez  $t3, .L0042F654
/* 0042F614 00000000 */   nop   
/* 0042F618 8C4C0020 */  lw    $t4, 0x20($v0)
/* 0042F61C 87A60052 */  lh    $a2, 0x52($sp)
/* 0042F620 318D0002 */  andi  $t5, $t4, 2
/* 0042F624 15A0000B */  bnez  $t5, .L0042F654
/* 0042F628 00000000 */   nop   
/* 0042F62C 8F85891C */  lw     $a1, %got(add_latency)($gp)
/* 0042F630 8F998020 */  lw    $t9, %got(func_0042E530)($gp)
/* 0042F634 8CA50000 */  lw    $a1, ($a1)
/* 0042F638 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0042F63C 2739E530 */  addiu $t9, %lo(func_0042E530) # addiu $t9, $t9, -0x1ad0
/* 0042F640 0320F809 */  jalr  $t9
/* 0042F644 24A50001 */   addiu $a1, $a1, 1
/* 0042F648 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F64C 10000009 */  b     .L0042F674
/* 0042F650 00000000 */   nop   
.L0042F654:
/* 0042F654 8F85891C */  lw     $a1, %got(add_latency)($gp)
/* 0042F658 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 0042F65C 8CA50000 */  lw    $a1, ($a1)
/* 0042F660 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 0042F664 0320F809 */  jalr  $t9
/* 0042F668 24A50001 */   addiu $a1, $a1, 1
/* 0042F66C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F670 00000000 */  nop   
.L0042F674:
/* 0042F674 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 0042F678 02002025 */  move  $a0, $s0
/* 0042F67C 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0042F680 0320F809 */  jalr  $t9
/* 0042F684 24050001 */   li    $a1, 1
/* 0042F688 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F68C 1000088E */  b     .L004318C8
/* 0042F690 8FBF001C */   lw    $ra, 0x1c($sp)
.L0042F694:
/* 0042F694 8F85891C */  lw     $a1, %got(add_latency)($gp)
/* 0042F698 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 0042F69C 8CA50000 */  lw    $a1, ($a1)
/* 0042F6A0 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0042F6A4 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 0042F6A8 0320F809 */  jalr  $t9
/* 0042F6AC 24A50001 */   addiu $a1, $a1, 1
/* 0042F6B0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F6B4 02002025 */  move  $a0, $s0
/* 0042F6B8 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 0042F6BC 24050001 */  li    $a1, 1
/* 0042F6C0 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0042F6C4 0320F809 */  jalr  $t9
/* 0042F6C8 00000000 */   nop   
/* 0042F6CC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F6D0 1000087D */  b     .L004318C8
/* 0042F6D4 8FBF001C */   lw    $ra, 0x1c($sp)
.L0042F6D8:
/* 0042F6D8 8F998020 */  lw    $t9, %got(func_0042F244)($gp)
/* 0042F6DC 00000000 */  nop   
/* 0042F6E0 2739F244 */  addiu $t9, %lo(func_0042F244) # addiu $t9, $t9, -0xdbc
/* 0042F6E4 0320F809 */  jalr  $t9
/* 0042F6E8 00000000 */   nop   
/* 0042F6EC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F6F0 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0042F6F4 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 0042F6F8 24050001 */  li    $a1, 1
/* 0042F6FC 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0042F700 0320F809 */  jalr  $t9
/* 0042F704 00000000 */   nop   
/* 0042F708 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F70C 02002025 */  move  $a0, $s0
/* 0042F710 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 0042F714 24050001 */  li    $a1, 1
/* 0042F718 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0042F71C 0320F809 */  jalr  $t9
/* 0042F720 00000000 */   nop   
/* 0042F724 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F728 10000867 */  b     .L004318C8
/* 0042F72C 8FBF001C */   lw    $ra, 0x1c($sp)
.L0042F730:
/* 0042F730 8FAE004C */  lw    $t6, 0x4c($sp)
/* 0042F734 00000000 */  nop   
/* 0042F738 2DC10014 */  sltiu $at, $t6, 0x14
/* 0042F73C 10200037 */  beqz  $at, .L0042F81C
/* 0042F740 8FAF004C */   lw    $t7, 0x4c($sp)
/* 0042F744 8F81806C */  lw    $at, %got(jtbl_10015950)($gp)
/* 0042F748 000E7080 */  sll   $t6, $t6, 2
/* 0042F74C 002E0821 */  addu  $at, $at, $t6
/* 0042F750 8C2E5950 */  lw    $t6, %lo(jtbl_10015950)($at)
/* 0042F754 00000000 */  nop   
/* 0042F758 01DC7021 */  addu  $t6, $t6, $gp
/* 0042F75C 01C00008 */  jr    $t6
/* 0042F760 00000000 */   nop   
.L0042F764:
/* 0042F764 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 0042F768 02002025 */  move  $a0, $s0
/* 0042F76C 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0042F770 0320F809 */  jalr  $t9
/* 0042F774 24050001 */   li    $a1, 1
/* 0042F778 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F77C 10000852 */  b     .L004318C8
/* 0042F780 8FBF001C */   lw    $ra, 0x1c($sp)
.L0042F784:
/* 0042F784 8F998020 */  lw    $t9, %got(func_0042F244)($gp)
/* 0042F788 00000000 */  nop   
/* 0042F78C 2739F244 */  addiu $t9, %lo(func_0042F244) # addiu $t9, $t9, -0xdbc
/* 0042F790 0320F809 */  jalr  $t9
/* 0042F794 00000000 */   nop   
/* 0042F798 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F79C 02002025 */  move  $a0, $s0
/* 0042F7A0 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 0042F7A4 24050001 */  li    $a1, 1
/* 0042F7A8 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0042F7AC 0320F809 */  jalr  $t9
/* 0042F7B0 00000000 */   nop   
/* 0042F7B4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F7B8 10000843 */  b     .L004318C8
/* 0042F7BC 8FBF001C */   lw    $ra, 0x1c($sp)
.L0042F7C0:
/* 0042F7C0 8F998020 */  lw    $t9, %got(func_0042F244)($gp)
/* 0042F7C4 00000000 */  nop   
/* 0042F7C8 2739F244 */  addiu $t9, %lo(func_0042F244) # addiu $t9, $t9, -0xdbc
/* 0042F7CC 0320F809 */  jalr  $t9
/* 0042F7D0 00000000 */   nop   
/* 0042F7D4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F7D8 2404001F */  li    $a0, 31
/* 0042F7DC 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 0042F7E0 24050001 */  li    $a1, 1
/* 0042F7E4 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 0042F7E8 0320F809 */  jalr  $t9
/* 0042F7EC 00000000 */   nop   
/* 0042F7F0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F7F4 02002025 */  move  $a0, $s0
/* 0042F7F8 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 0042F7FC 24050001 */  li    $a1, 1
/* 0042F800 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0042F804 0320F809 */  jalr  $t9
/* 0042F808 00000000 */   nop   
/* 0042F80C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F810 1000082D */  b     .L004318C8
/* 0042F814 8FBF001C */   lw    $ra, 0x1c($sp)
.L0042F818:
/* 0042F818 8FAF004C */  lw    $t7, 0x4c($sp)
.L0042F81C:
/* 0042F81C 8F988A54 */  lw     $t8, %got(bcond_name)($gp)
/* 0042F820 000FC880 */  sll   $t9, $t7, 2
/* 0042F824 03384021 */  addu  $t0, $t9, $t8
/* 0042F828 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 0042F82C 8F8480AC */  lw     $a0, %got(__iob)($gp)
/* 0042F830 8F85806C */  lw    $a1, %got(RO_100153C8)($gp)
/* 0042F834 8D060000 */  lw    $a2, ($t0)
/* 0042F838 24840020 */  addiu $a0, $a0, 0x20
/* 0042F83C 0320F809 */  jalr  $t9
/* 0042F840 24A553C8 */   addiu $a1, %lo(RO_100153C8) # addiu $a1, $a1, 0x53c8
/* 0042F844 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F848 1000081F */  b     .L004318C8
/* 0042F84C 8FBF001C */   lw    $ra, 0x1c($sp)
.L0042F850:
/* 0042F850 8F998020 */  lw    $t9, %got(func_0042F244)($gp)
/* 0042F854 00000000 */  nop   
/* 0042F858 2739F244 */  addiu $t9, %lo(func_0042F244) # addiu $t9, $t9, -0xdbc
/* 0042F85C 0320F809 */  jalr  $t9
/* 0042F860 00000000 */   nop   
/* 0042F864 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F868 2404001F */  li    $a0, 31
/* 0042F86C 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 0042F870 24050001 */  li    $a1, 1
/* 0042F874 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 0042F878 0320F809 */  jalr  $t9
/* 0042F87C 00000000 */   nop   
/* 0042F880 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F884 24090001 */  li    $t1, 1
/* 0042F888 8F818B74 */  lw     $at, %got(is_nonleaf)($gp)
/* 0042F88C 1000080D */  b     .L004318C4
/* 0042F890 A0290000 */   sb    $t1, ($at)
.L0042F894:
/* 0042F894 8F998020 */  lw    $t9, %got(func_0042F244)($gp)
/* 0042F898 00000000 */  nop   
/* 0042F89C 2739F244 */  addiu $t9, %lo(func_0042F244) # addiu $t9, $t9, -0xdbc
/* 0042F8A0 0320F809 */  jalr  $t9
/* 0042F8A4 00000000 */   nop   
/* 0042F8A8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F8AC 240A0001 */  li    $t2, 1
/* 0042F8B0 8F818B74 */  lw     $at, %got(is_nonleaf)($gp)
/* 0042F8B4 10000803 */  b     .L004318C4
/* 0042F8B8 A02A0000 */   sb    $t2, ($at)
.L0042F8BC:
/* 0042F8BC 8F828088 */  lw    $v0, %got(B_1002363C)($gp)
/* 0042F8C0 8F8C8088 */  lw    $t4, %got(B_10023644)($gp)
/* 0042F8C4 2442363C */  addiu $v0, %lo(B_1002363C) # addiu $v0, $v0, 0x363c
/* 0042F8C8 8C4B0000 */  lw    $t3, ($v0)
/* 0042F8CC 8D8C3644 */  lw    $t4, %lo(B_10023644)($t4)
/* 0042F8D0 8F85892C */  lw     $a1, %got(load_latency)($gp)
/* 0042F8D4 AD8B0034 */  sw    $t3, 0x34($t4)
/* 0042F8D8 8F998020 */  lw    $t9, %got(func_0042E834)($gp)
/* 0042F8DC 8C460000 */  lw    $a2, ($v0)
/* 0042F8E0 8CA50000 */  lw    $a1, ($a1)
/* 0042F8E4 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0042F8E8 2739E834 */  addiu $t9, %lo(func_0042E834) # addiu $t9, $t9, -0x17cc
/* 0042F8EC AFA70034 */  sw    $a3, 0x34($sp)
/* 0042F8F0 24C60001 */  addiu $a2, $a2, 1
/* 0042F8F4 0320F809 */  jalr  $t9
/* 0042F8F8 24A50001 */   addiu $a1, $a1, 1
/* 0042F8FC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F900 8FA70034 */  lw    $a3, 0x34($sp)
/* 0042F904 8F8D8080 */  lw    $t5, %got(D_10004880)($gp)
/* 0042F908 8F998020 */  lw    $t9, %got(func_0042DE4C)($gp)
/* 0042F90C 25AD4880 */  addiu $t5, %lo(D_10004880) # addiu $t5, $t5, 0x4880
/* 0042F910 00ED7021 */  addu  $t6, $a3, $t5
/* 0042F914 91C60000 */  lbu   $a2, ($t6)
/* 0042F918 87A50052 */  lh    $a1, 0x52($sp)
/* 0042F91C 2739DE4C */  addiu $t9, %lo(func_0042DE4C) # addiu $t9, $t9, -0x21b4
/* 0042F920 0320F809 */  jalr  $t9
/* 0042F924 02002025 */   move  $a0, $s0
/* 0042F928 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F92C 87A60052 */  lh    $a2, 0x52($sp)
/* 0042F930 8F998020 */  lw    $t9, %got(func_0042EE78)($gp)
/* 0042F934 02002025 */  move  $a0, $s0
/* 0042F938 2739EE78 */  addiu $t9, %lo(func_0042EE78) # addiu $t9, $t9, -0x1188
/* 0042F93C 0320F809 */  jalr  $t9
/* 0042F940 24050001 */   li    $a1, 1
/* 0042F944 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F948 100007DF */  b     .L004318C8
/* 0042F94C 8FBF001C */   lw    $ra, 0x1c($sp)
.L0042F950:
/* 0042F950 8F828088 */  lw    $v0, %got(B_1002363C)($gp)
/* 0042F954 8F998088 */  lw    $t9, %got(B_10023644)($gp)
/* 0042F958 2442363C */  addiu $v0, %lo(B_1002363C) # addiu $v0, $v0, 0x363c
/* 0042F95C 8C4F0000 */  lw    $t7, ($v0)
/* 0042F960 8F393644 */  lw    $t9, %lo(B_10023644)($t9)
/* 0042F964 8F85892C */  lw     $a1, %got(load_latency)($gp)
/* 0042F968 AF2F0034 */  sw    $t7, 0x34($t9)
/* 0042F96C 8F998020 */  lw    $t9, %got(func_0042E834)($gp)
/* 0042F970 8C460000 */  lw    $a2, ($v0)
/* 0042F974 8CA50000 */  lw    $a1, ($a1)
/* 0042F978 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0042F97C 2739E834 */  addiu $t9, %lo(func_0042E834) # addiu $t9, $t9, -0x17cc
/* 0042F980 AFA70034 */  sw    $a3, 0x34($sp)
/* 0042F984 24C60001 */  addiu $a2, $a2, 1
/* 0042F988 0320F809 */  jalr  $t9
/* 0042F98C 24A50001 */   addiu $a1, $a1, 1
/* 0042F990 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F994 8FA70034 */  lw    $a3, 0x34($sp)
/* 0042F998 8F988080 */  lw    $t8, %got(D_10004880)($gp)
/* 0042F99C 8F998020 */  lw    $t9, %got(func_0042DE4C)($gp)
/* 0042F9A0 27184880 */  addiu $t8, %lo(D_10004880) # addiu $t8, $t8, 0x4880
/* 0042F9A4 00F84021 */  addu  $t0, $a3, $t8
/* 0042F9A8 91060000 */  lbu   $a2, ($t0)
/* 0042F9AC 87A50052 */  lh    $a1, 0x52($sp)
/* 0042F9B0 2739DE4C */  addiu $t9, %lo(func_0042DE4C) # addiu $t9, $t9, -0x21b4
/* 0042F9B4 0320F809 */  jalr  $t9
/* 0042F9B8 02002025 */   move  $a0, $s0
/* 0042F9BC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F9C0 87A60052 */  lh    $a2, 0x52($sp)
/* 0042F9C4 8F998020 */  lw    $t9, %got(func_0042EE78)($gp)
/* 0042F9C8 02002025 */  move  $a0, $s0
/* 0042F9CC 2739EE78 */  addiu $t9, %lo(func_0042EE78) # addiu $t9, $t9, -0x1188
/* 0042F9D0 0320F809 */  jalr  $t9
/* 0042F9D4 24050001 */   li    $a1, 1
/* 0042F9D8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042F9DC 00000000 */  nop   
/* 0042F9E0 8F898088 */  lw    $t1, %got(B_10023644)($gp)
/* 0042F9E4 8F818088 */  lw    $at, %got(B_10024238)($gp)
/* 0042F9E8 8D293644 */  lw    $t1, %lo(B_10023644)($t1)
/* 0042F9EC 100007B5 */  b     .L004318C4
/* 0042F9F0 AC294238 */   sw    $t1, %lo(B_10024238)($at)
.L0042F9F4:
/* 0042F9F4 8F828088 */  lw    $v0, %got(B_1002363C)($gp)
/* 0042F9F8 8F8B8088 */  lw    $t3, %got(B_10023644)($gp)
/* 0042F9FC 2442363C */  addiu $v0, %lo(B_1002363C) # addiu $v0, $v0, 0x363c
/* 0042FA00 8C4A0000 */  lw    $t2, ($v0)
/* 0042FA04 8D6B3644 */  lw    $t3, %lo(B_10023644)($t3)
/* 0042FA08 8F85892C */  lw     $a1, %got(load_latency)($gp)
/* 0042FA0C AD6A0034 */  sw    $t2, 0x34($t3)
/* 0042FA10 8F998020 */  lw    $t9, %got(func_0042E834)($gp)
/* 0042FA14 8C460000 */  lw    $a2, ($v0)
/* 0042FA18 8CA50000 */  lw    $a1, ($a1)
/* 0042FA1C 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0042FA20 2739E834 */  addiu $t9, %lo(func_0042E834) # addiu $t9, $t9, -0x17cc
/* 0042FA24 AFA30028 */  sw    $v1, 0x28($sp)
/* 0042FA28 24C60001 */  addiu $a2, $a2, 1
/* 0042FA2C 0320F809 */  jalr  $t9
/* 0042FA30 24A50001 */   addiu $a1, $a1, 1
/* 0042FA34 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FA38 8FA30028 */  lw    $v1, 0x28($sp)
/* 0042FA3C 8F8D8B14 */  lw     $t5, %got(bigendian)($gp)
/* 0042FA40 386C0022 */  xori  $t4, $v1, 0x22
/* 0042FA44 91AD0000 */  lbu   $t5, ($t5)
/* 0042FA48 2D8C0001 */  sltiu $t4, $t4, 1
/* 0042FA4C 158D000A */  bne   $t4, $t5, .L0042FA78
/* 0042FA50 02002025 */   move  $a0, $s0
/* 0042FA54 8F998020 */  lw    $t9, %got(func_0042DE4C)($gp)
/* 0042FA58 87A50052 */  lh    $a1, 0x52($sp)
/* 0042FA5C 2739DE4C */  addiu $t9, %lo(func_0042DE4C) # addiu $t9, $t9, -0x21b4
/* 0042FA60 02002025 */  move  $a0, $s0
/* 0042FA64 0320F809 */  jalr  $t9
/* 0042FA68 24060004 */   li    $a2, 4
/* 0042FA6C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FA70 10000009 */  b     .L0042FA98
/* 0042FA74 00000000 */   nop   
.L0042FA78:
/* 0042FA78 8F998020 */  lw    $t9, %got(func_0042DE4C)($gp)
/* 0042FA7C 87A50052 */  lh    $a1, 0x52($sp)
/* 0042FA80 2739DE4C */  addiu $t9, %lo(func_0042DE4C) # addiu $t9, $t9, -0x21b4
/* 0042FA84 24060004 */  li    $a2, 4
/* 0042FA88 0320F809 */  jalr  $t9
/* 0042FA8C 24A5FFFD */   addiu $a1, $a1, -3
/* 0042FA90 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FA94 00000000 */  nop   
.L0042FA98:
/* 0042FA98 8F85892C */  lw     $a1, %got(load_latency)($gp)
/* 0042FA9C 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 0042FAA0 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0042FAA4 8CA50000 */  lw    $a1, ($a1)
/* 0042FAA8 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0042FAAC 0320F809 */  jalr  $t9
/* 0042FAB0 00000000 */   nop   
/* 0042FAB4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FAB8 87A60052 */  lh    $a2, 0x52($sp)
/* 0042FABC 8F998020 */  lw    $t9, %got(func_0042EE78)($gp)
/* 0042FAC0 02002025 */  move  $a0, $s0
/* 0042FAC4 2739EE78 */  addiu $t9, %lo(func_0042EE78) # addiu $t9, $t9, -0x1188
/* 0042FAC8 0320F809 */  jalr  $t9
/* 0042FACC 24050001 */   li    $a1, 1
/* 0042FAD0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FAD4 1000077C */  b     .L004318C8
/* 0042FAD8 8FBF001C */   lw    $ra, 0x1c($sp)
.L0042FADC:
/* 0042FADC 8F828088 */  lw    $v0, %got(B_1002363C)($gp)
/* 0042FAE0 8F8F8088 */  lw    $t7, %got(B_10023644)($gp)
/* 0042FAE4 2442363C */  addiu $v0, %lo(B_1002363C) # addiu $v0, $v0, 0x363c
/* 0042FAE8 8C4E0000 */  lw    $t6, ($v0)
/* 0042FAEC 8DEF3644 */  lw    $t7, %lo(B_10023644)($t7)
/* 0042FAF0 8F85892C */  lw     $a1, %got(load_latency)($gp)
/* 0042FAF4 ADEE0034 */  sw    $t6, 0x34($t7)
/* 0042FAF8 8F998020 */  lw    $t9, %got(func_0042E834)($gp)
/* 0042FAFC 8C460000 */  lw    $a2, ($v0)
/* 0042FB00 8CA50000 */  lw    $a1, ($a1)
/* 0042FB04 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0042FB08 2739E834 */  addiu $t9, %lo(func_0042E834) # addiu $t9, $t9, -0x17cc
/* 0042FB0C AFA30028 */  sw    $v1, 0x28($sp)
/* 0042FB10 24C60001 */  addiu $a2, $a2, 1
/* 0042FB14 0320F809 */  jalr  $t9
/* 0042FB18 24A50001 */   addiu $a1, $a1, 1
/* 0042FB1C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FB20 8FA30028 */  lw    $v1, 0x28($sp)
/* 0042FB24 8F988B14 */  lw     $t8, %got(bigendian)($gp)
/* 0042FB28 3879001A */  xori  $t9, $v1, 0x1a
/* 0042FB2C 93180000 */  lbu   $t8, ($t8)
/* 0042FB30 2F390001 */  sltiu $t9, $t9, 1
/* 0042FB34 1738000A */  bne   $t9, $t8, .L0042FB60
/* 0042FB38 02002025 */   move  $a0, $s0
/* 0042FB3C 8F998020 */  lw    $t9, %got(func_0042DE4C)($gp)
/* 0042FB40 87A50052 */  lh    $a1, 0x52($sp)
/* 0042FB44 2739DE4C */  addiu $t9, %lo(func_0042DE4C) # addiu $t9, $t9, -0x21b4
/* 0042FB48 02002025 */  move  $a0, $s0
/* 0042FB4C 0320F809 */  jalr  $t9
/* 0042FB50 24060008 */   li    $a2, 8
/* 0042FB54 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FB58 10000009 */  b     .L0042FB80
/* 0042FB5C 00000000 */   nop   
.L0042FB60:
/* 0042FB60 8F998020 */  lw    $t9, %got(func_0042DE4C)($gp)
/* 0042FB64 87A50052 */  lh    $a1, 0x52($sp)
/* 0042FB68 2739DE4C */  addiu $t9, %lo(func_0042DE4C) # addiu $t9, $t9, -0x21b4
/* 0042FB6C 24060008 */  li    $a2, 8
/* 0042FB70 0320F809 */  jalr  $t9
/* 0042FB74 24A5FFF9 */   addiu $a1, $a1, -7
/* 0042FB78 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FB7C 00000000 */  nop   
.L0042FB80:
/* 0042FB80 8F85892C */  lw     $a1, %got(load_latency)($gp)
/* 0042FB84 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 0042FB88 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0042FB8C 8CA50000 */  lw    $a1, ($a1)
/* 0042FB90 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0042FB94 0320F809 */  jalr  $t9
/* 0042FB98 00000000 */   nop   
/* 0042FB9C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FBA0 87A60052 */  lh    $a2, 0x52($sp)
/* 0042FBA4 8F998020 */  lw    $t9, %got(func_0042EE78)($gp)
/* 0042FBA8 02002025 */  move  $a0, $s0
/* 0042FBAC 2739EE78 */  addiu $t9, %lo(func_0042EE78) # addiu $t9, $t9, -0x1188
/* 0042FBB0 0320F809 */  jalr  $t9
/* 0042FBB4 24050001 */   li    $a1, 1
/* 0042FBB8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FBBC 10000742 */  b     .L004318C8
/* 0042FBC0 8FBF001C */   lw    $ra, 0x1c($sp)
.L0042FBC4:
/* 0042FBC4 8F888080 */  lw    $t0, %got(D_10004880)($gp)
/* 0042FBC8 8F998020 */  lw    $t9, %got(func_0042D8E8)($gp)
/* 0042FBCC 25084880 */  addiu $t0, %lo(D_10004880) # addiu $t0, $t0, 0x4880
/* 0042FBD0 00E84821 */  addu  $t1, $a3, $t0
/* 0042FBD4 91260000 */  lbu   $a2, ($t1)
/* 0042FBD8 87A50052 */  lh    $a1, 0x52($sp)
/* 0042FBDC 2739D8E8 */  addiu $t9, %lo(func_0042D8E8) # addiu $t9, $t9, -0x2718
/* 0042FBE0 0320F809 */  jalr  $t9
/* 0042FBE4 02002025 */   move  $a0, $s0
/* 0042FBE8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FBEC 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0042FBF0 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 0042FBF4 24050001 */  li    $a1, 1
/* 0042FBF8 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0042FBFC 0320F809 */  jalr  $t9
/* 0042FC00 00000000 */   nop   
/* 0042FC04 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FC08 87A60052 */  lh    $a2, 0x52($sp)
/* 0042FC0C 8F998020 */  lw    $t9, %got(func_0042EE78)($gp)
/* 0042FC10 02002025 */  move  $a0, $s0
/* 0042FC14 2739EE78 */  addiu $t9, %lo(func_0042EE78) # addiu $t9, $t9, -0x1188
/* 0042FC18 0320F809 */  jalr  $t9
/* 0042FC1C 24050001 */   li    $a1, 1
/* 0042FC20 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FC24 10000728 */  b     .L004318C8
/* 0042FC28 8FBF001C */   lw    $ra, 0x1c($sp)
.L0042FC2C:
/* 0042FC2C 8F828088 */  lw    $v0, %got(B_1002363C)($gp)
/* 0042FC30 8F8B8088 */  lw    $t3, %got(B_10023644)($gp)
/* 0042FC34 2442363C */  addiu $v0, %lo(B_1002363C) # addiu $v0, $v0, 0x363c
/* 0042FC38 8C4A0000 */  lw    $t2, ($v0)
/* 0042FC3C 8F8C8080 */  lw    $t4, %got(D_10004880)($gp)
/* 0042FC40 8D6B3644 */  lw    $t3, %lo(B_10023644)($t3)
/* 0042FC44 8F998020 */  lw    $t9, %got(func_0042D8E8)($gp)
/* 0042FC48 258C4880 */  addiu $t4, %lo(D_10004880) # addiu $t4, $t4, 0x4880
/* 0042FC4C AD6A0034 */  sw    $t2, 0x34($t3)
/* 0042FC50 00EC6821 */  addu  $t5, $a3, $t4
/* 0042FC54 91A60000 */  lbu   $a2, ($t5)
/* 0042FC58 87A50052 */  lh    $a1, 0x52($sp)
/* 0042FC5C 2739D8E8 */  addiu $t9, %lo(func_0042D8E8) # addiu $t9, $t9, -0x2718
/* 0042FC60 0320F809 */  jalr  $t9
/* 0042FC64 02002025 */   move  $a0, $s0
/* 0042FC68 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FC6C 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0042FC70 8F828088 */  lw    $v0, %got(B_1002363C)($gp)
/* 0042FC74 8F85892C */  lw     $a1, %got(load_latency)($gp)
/* 0042FC78 8F998020 */  lw    $t9, %got(func_0042E834)($gp)
/* 0042FC7C 2442363C */  addiu $v0, %lo(B_1002363C) # addiu $v0, $v0, 0x363c
/* 0042FC80 8C460000 */  lw    $a2, ($v0)
/* 0042FC84 8CA50000 */  lw    $a1, ($a1)
/* 0042FC88 2739E834 */  addiu $t9, %lo(func_0042E834) # addiu $t9, $t9, -0x17cc
/* 0042FC8C 24C60001 */  addiu $a2, $a2, 1
/* 0042FC90 0320F809 */  jalr  $t9
/* 0042FC94 24A50001 */   addiu $a1, $a1, 1
/* 0042FC98 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FC9C 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0042FCA0 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 0042FCA4 24050001 */  li    $a1, 1
/* 0042FCA8 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0042FCAC 0320F809 */  jalr  $t9
/* 0042FCB0 00000000 */   nop   
/* 0042FCB4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FCB8 87A60052 */  lh    $a2, 0x52($sp)
/* 0042FCBC 8F998020 */  lw    $t9, %got(func_0042EE78)($gp)
/* 0042FCC0 02002025 */  move  $a0, $s0
/* 0042FCC4 2739EE78 */  addiu $t9, %lo(func_0042EE78) # addiu $t9, $t9, -0x1188
/* 0042FCC8 0320F809 */  jalr  $t9
/* 0042FCCC 24050001 */   li    $a1, 1
/* 0042FCD0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FCD4 00000000 */  nop   
/* 0042FCD8 8F8E8088 */  lw    $t6, %got(B_10023644)($gp)
/* 0042FCDC 8F818088 */  lw    $at, %got(B_10024238)($gp)
/* 0042FCE0 8DCE3644 */  lw    $t6, %lo(B_10023644)($t6)
/* 0042FCE4 100006F7 */  b     .L004318C4
/* 0042FCE8 AC2E4238 */   sw    $t6, %lo(B_10024238)($at)
.L0042FCEC:
/* 0042FCEC 8F998B14 */  lw     $t9, %got(bigendian)($gp)
/* 0042FCF0 386F002A */  xori  $t7, $v1, 0x2a
/* 0042FCF4 93390000 */  lbu   $t9, ($t9)
/* 0042FCF8 2DEF0001 */  sltiu $t7, $t7, 1
/* 0042FCFC 15F9000A */  bne   $t7, $t9, .L0042FD28
/* 0042FD00 02002025 */   move  $a0, $s0
/* 0042FD04 8F998020 */  lw    $t9, %got(func_0042D8E8)($gp)
/* 0042FD08 87A50052 */  lh    $a1, 0x52($sp)
/* 0042FD0C 2739D8E8 */  addiu $t9, %lo(func_0042D8E8) # addiu $t9, $t9, -0x2718
/* 0042FD10 02002025 */  move  $a0, $s0
/* 0042FD14 0320F809 */  jalr  $t9
/* 0042FD18 24060004 */   li    $a2, 4
/* 0042FD1C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FD20 10000009 */  b     .L0042FD48
/* 0042FD24 00000000 */   nop   
.L0042FD28:
/* 0042FD28 8F998020 */  lw    $t9, %got(func_0042D8E8)($gp)
/* 0042FD2C 87A50052 */  lh    $a1, 0x52($sp)
/* 0042FD30 2739D8E8 */  addiu $t9, %lo(func_0042D8E8) # addiu $t9, $t9, -0x2718
/* 0042FD34 24060004 */  li    $a2, 4
/* 0042FD38 0320F809 */  jalr  $t9
/* 0042FD3C 24A5FFFD */   addiu $a1, $a1, -3
/* 0042FD40 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FD44 00000000 */  nop   
.L0042FD48:
/* 0042FD48 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 0042FD4C 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0042FD50 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0042FD54 0320F809 */  jalr  $t9
/* 0042FD58 24050001 */   li    $a1, 1
/* 0042FD5C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FD60 87A60052 */  lh    $a2, 0x52($sp)
/* 0042FD64 8F998020 */  lw    $t9, %got(func_0042EE78)($gp)
/* 0042FD68 02002025 */  move  $a0, $s0
/* 0042FD6C 2739EE78 */  addiu $t9, %lo(func_0042EE78) # addiu $t9, $t9, -0x1188
/* 0042FD70 0320F809 */  jalr  $t9
/* 0042FD74 24050001 */   li    $a1, 1
/* 0042FD78 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FD7C 100006D2 */  b     .L004318C8
/* 0042FD80 8FBF001C */   lw    $ra, 0x1c($sp)
.L0042FD84:
/* 0042FD84 8F888B14 */  lw     $t0, %got(bigendian)($gp)
/* 0042FD88 3878002C */  xori  $t8, $v1, 0x2c
/* 0042FD8C 91080000 */  lbu   $t0, ($t0)
/* 0042FD90 2F180001 */  sltiu $t8, $t8, 1
/* 0042FD94 1708000A */  bne   $t8, $t0, .L0042FDC0
/* 0042FD98 02002025 */   move  $a0, $s0
/* 0042FD9C 8F998020 */  lw    $t9, %got(func_0042D8E8)($gp)
/* 0042FDA0 87A50052 */  lh    $a1, 0x52($sp)
/* 0042FDA4 2739D8E8 */  addiu $t9, %lo(func_0042D8E8) # addiu $t9, $t9, -0x2718
/* 0042FDA8 02002025 */  move  $a0, $s0
/* 0042FDAC 0320F809 */  jalr  $t9
/* 0042FDB0 24060008 */   li    $a2, 8
/* 0042FDB4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FDB8 10000009 */  b     .L0042FDE0
/* 0042FDBC 00000000 */   nop   
.L0042FDC0:
/* 0042FDC0 8F998020 */  lw    $t9, %got(func_0042D8E8)($gp)
/* 0042FDC4 87A50052 */  lh    $a1, 0x52($sp)
/* 0042FDC8 2739D8E8 */  addiu $t9, %lo(func_0042D8E8) # addiu $t9, $t9, -0x2718
/* 0042FDCC 24060008 */  li    $a2, 8
/* 0042FDD0 0320F809 */  jalr  $t9
/* 0042FDD4 24A5FFF9 */   addiu $a1, $a1, -7
/* 0042FDD8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FDDC 00000000 */  nop   
.L0042FDE0:
/* 0042FDE0 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 0042FDE4 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0042FDE8 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0042FDEC 0320F809 */  jalr  $t9
/* 0042FDF0 24050001 */   li    $a1, 1
/* 0042FDF4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FDF8 87A60052 */  lh    $a2, 0x52($sp)
/* 0042FDFC 8F998020 */  lw    $t9, %got(func_0042EE78)($gp)
/* 0042FE00 02002025 */  move  $a0, $s0
/* 0042FE04 2739EE78 */  addiu $t9, %lo(func_0042EE78) # addiu $t9, $t9, -0x1188
/* 0042FE08 0320F809 */  jalr  $t9
/* 0042FE0C 24050001 */   li    $a1, 1
/* 0042FE10 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FE14 100006AC */  b     .L004318C8
/* 0042FE18 8FBF001C */   lw    $ra, 0x1c($sp)
.L0042FE1C:
/* 0042FE1C 8F828088 */  lw    $v0, %got(B_10023640)($gp)
/* 0042FE20 8F8A8088 */  lw    $t2, %got(B_10023644)($gp)
/* 0042FE24 24423640 */  addiu $v0, %lo(B_10023640) # addiu $v0, $v0, 0x3640
/* 0042FE28 8C490000 */  lw    $t1, ($v0)
/* 0042FE2C 8D4A3644 */  lw    $t2, %lo(B_10023644)($t2)
/* 0042FE30 8F858930 */  lw     $a1, %got(fp_load_latency)($gp)
/* 0042FE34 AD490034 */  sw    $t1, 0x34($t2)
/* 0042FE38 8F998020 */  lw    $t9, %got(func_0042E834)($gp)
/* 0042FE3C 8C460000 */  lw    $a2, ($v0)
/* 0042FE40 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0042FE44 8CA50000 */  lw    $a1, ($a1)
/* 0042FE48 2739E834 */  addiu $t9, %lo(func_0042E834) # addiu $t9, $t9, -0x17cc
/* 0042FE4C AFA70034 */  sw    $a3, 0x34($sp)
/* 0042FE50 24C60001 */  addiu $a2, $a2, 1
/* 0042FE54 24840020 */  addiu $a0, $a0, 0x20
/* 0042FE58 0320F809 */  jalr  $t9
/* 0042FE5C 24A50001 */   addiu $a1, $a1, 1
/* 0042FE60 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FE64 8FA70034 */  lw    $a3, 0x34($sp)
/* 0042FE68 8F8B8080 */  lw    $t3, %got(D_10004880)($gp)
/* 0042FE6C 8F998020 */  lw    $t9, %got(func_0042DE4C)($gp)
/* 0042FE70 256B4880 */  addiu $t3, %lo(D_10004880) # addiu $t3, $t3, 0x4880
/* 0042FE74 00EB6021 */  addu  $t4, $a3, $t3
/* 0042FE78 91860000 */  lbu   $a2, ($t4)
/* 0042FE7C 87A50052 */  lh    $a1, 0x52($sp)
/* 0042FE80 2739DE4C */  addiu $t9, %lo(func_0042DE4C) # addiu $t9, $t9, -0x21b4
/* 0042FE84 0320F809 */  jalr  $t9
/* 0042FE88 02002025 */   move  $a0, $s0
/* 0042FE8C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FE90 87A60052 */  lh    $a2, 0x52($sp)
/* 0042FE94 8F998020 */  lw    $t9, %got(func_0042EE78)($gp)
/* 0042FE98 02002025 */  move  $a0, $s0
/* 0042FE9C 2739EE78 */  addiu $t9, %lo(func_0042EE78) # addiu $t9, $t9, -0x1188
/* 0042FEA0 0320F809 */  jalr  $t9
/* 0042FEA4 24050001 */   li    $a1, 1
/* 0042FEA8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FEAC 10000686 */  b     .L004318C8
/* 0042FEB0 8FBF001C */   lw    $ra, 0x1c($sp)
.L0042FEB4:
/* 0042FEB4 8F828088 */  lw    $v0, %got(B_10023640)($gp)
/* 0042FEB8 8F8E8088 */  lw    $t6, %got(B_10023644)($gp)
/* 0042FEBC 24423640 */  addiu $v0, %lo(B_10023640) # addiu $v0, $v0, 0x3640
/* 0042FEC0 8C4D0000 */  lw    $t5, ($v0)
/* 0042FEC4 8DCE3644 */  lw    $t6, %lo(B_10023644)($t6)
/* 0042FEC8 8F858930 */  lw     $a1, %got(fp_load_latency)($gp)
/* 0042FECC ADCD0034 */  sw    $t5, 0x34($t6)
/* 0042FED0 8F998020 */  lw    $t9, %got(func_0042E834)($gp)
/* 0042FED4 8C460000 */  lw    $a2, ($v0)
/* 0042FED8 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0042FEDC 8CA50000 */  lw    $a1, ($a1)
/* 0042FEE0 2739E834 */  addiu $t9, %lo(func_0042E834) # addiu $t9, $t9, -0x17cc
/* 0042FEE4 AFA70034 */  sw    $a3, 0x34($sp)
/* 0042FEE8 24C60001 */  addiu $a2, $a2, 1
/* 0042FEEC 24840020 */  addiu $a0, $a0, 0x20
/* 0042FEF0 0320F809 */  jalr  $t9
/* 0042FEF4 24A50001 */   addiu $a1, $a1, 1
/* 0042FEF8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FEFC 8FA70034 */  lw    $a3, 0x34($sp)
/* 0042FF00 8F8F8B3C */  lw     $t7, %got(fp32regs)($gp)
/* 0042FF04 8F828088 */  lw    $v0, %got(B_10023640)($gp)
/* 0042FF08 91EF0000 */  lbu   $t7, ($t7)
/* 0042FF0C 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0042FF10 15E0000E */  bnez  $t7, .L0042FF4C
/* 0042FF14 24423640 */   addiu $v0, %lo(B_10023640) # addiu $v0, $v0, 0x3640
/* 0042FF18 8F858930 */  lw     $a1, %got(fp_load_latency)($gp)
/* 0042FF1C 8F998020 */  lw    $t9, %got(func_0042E834)($gp)
/* 0042FF20 8C460000 */  lw    $a2, ($v0)
/* 0042FF24 8CA50000 */  lw    $a1, ($a1)
/* 0042FF28 2739E834 */  addiu $t9, %lo(func_0042E834) # addiu $t9, $t9, -0x17cc
/* 0042FF2C 24840021 */  addiu $a0, $a0, 0x21
/* 0042FF30 AFA70034 */  sw    $a3, 0x34($sp)
/* 0042FF34 24C60001 */  addiu $a2, $a2, 1
/* 0042FF38 0320F809 */  jalr  $t9
/* 0042FF3C 24A50001 */   addiu $a1, $a1, 1
/* 0042FF40 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FF44 8FA70034 */  lw    $a3, 0x34($sp)
/* 0042FF48 00000000 */  nop   
.L0042FF4C:
/* 0042FF4C 8F998080 */  lw    $t9, %got(D_10004880)($gp)
/* 0042FF50 87A50052 */  lh    $a1, 0x52($sp)
/* 0042FF54 27394880 */  addiu $t9, %lo(D_10004880) # addiu $t9, $t9, 0x4880
/* 0042FF58 00F9C021 */  addu  $t8, $a3, $t9
/* 0042FF5C 8F998020 */  lw    $t9, %got(func_0042DE4C)($gp)
/* 0042FF60 93060000 */  lbu   $a2, ($t8)
/* 0042FF64 2739DE4C */  addiu $t9, %lo(func_0042DE4C) # addiu $t9, $t9, -0x21b4
/* 0042FF68 0320F809 */  jalr  $t9
/* 0042FF6C 02002025 */   move  $a0, $s0
/* 0042FF70 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FF74 87A60052 */  lh    $a2, 0x52($sp)
/* 0042FF78 8F998020 */  lw    $t9, %got(func_0042EE78)($gp)
/* 0042FF7C 02002025 */  move  $a0, $s0
/* 0042FF80 2739EE78 */  addiu $t9, %lo(func_0042EE78) # addiu $t9, $t9, -0x1188
/* 0042FF84 0320F809 */  jalr  $t9
/* 0042FF88 24050001 */   li    $a1, 1
/* 0042FF8C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FF90 1000064D */  b     .L004318C8
/* 0042FF94 8FBF001C */   lw    $ra, 0x1c($sp)
.L0042FF98:
/* 0042FF98 8F888080 */  lw    $t0, %got(D_10004880)($gp)
/* 0042FF9C 8F998020 */  lw    $t9, %got(func_0042D8E8)($gp)
/* 0042FFA0 25084880 */  addiu $t0, %lo(D_10004880) # addiu $t0, $t0, 0x4880
/* 0042FFA4 00E84821 */  addu  $t1, $a3, $t0
/* 0042FFA8 91260000 */  lbu   $a2, ($t1)
/* 0042FFAC 87A50052 */  lh    $a1, 0x52($sp)
/* 0042FFB0 2739D8E8 */  addiu $t9, %lo(func_0042D8E8) # addiu $t9, $t9, -0x2718
/* 0042FFB4 0320F809 */  jalr  $t9
/* 0042FFB8 02002025 */   move  $a0, $s0
/* 0042FFBC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FFC0 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0042FFC4 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 0042FFC8 24050001 */  li    $a1, 1
/* 0042FFCC 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0042FFD0 0320F809 */  jalr  $t9
/* 0042FFD4 24840020 */   addiu $a0, $a0, 0x20
/* 0042FFD8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FFDC 87A60052 */  lh    $a2, 0x52($sp)
/* 0042FFE0 8F998020 */  lw    $t9, %got(func_0042EE78)($gp)
/* 0042FFE4 02002025 */  move  $a0, $s0
/* 0042FFE8 2739EE78 */  addiu $t9, %lo(func_0042EE78) # addiu $t9, $t9, -0x1188
/* 0042FFEC 0320F809 */  jalr  $t9
/* 0042FFF0 24050001 */   li    $a1, 1
/* 0042FFF4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042FFF8 10000633 */  b     .L004318C8
/* 0042FFFC 8FBF001C */   lw    $ra, 0x1c($sp)
.L00430000:
/* 00430000 8F8A8080 */  lw    $t2, %got(D_10004880)($gp)
/* 00430004 8F998020 */  lw    $t9, %got(func_0042D8E8)($gp)
/* 00430008 254A4880 */  addiu $t2, %lo(D_10004880) # addiu $t2, $t2, 0x4880
/* 0043000C 00EA5821 */  addu  $t3, $a3, $t2
/* 00430010 91660000 */  lbu   $a2, ($t3)
/* 00430014 87A50052 */  lh    $a1, 0x52($sp)
/* 00430018 2739D8E8 */  addiu $t9, %lo(func_0042D8E8) # addiu $t9, $t9, -0x2718
/* 0043001C 0320F809 */  jalr  $t9
/* 00430020 02002025 */   move  $a0, $s0
/* 00430024 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430028 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0043002C 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430030 24050001 */  li    $a1, 1
/* 00430034 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430038 0320F809 */  jalr  $t9
/* 0043003C 24840020 */   addiu $a0, $a0, 0x20
/* 00430040 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430044 8FA4004C */  lw    $a0, 0x4c($sp)
/* 00430048 8F8C8B3C */  lw     $t4, %got(fp32regs)($gp)
/* 0043004C 00000000 */  nop   
/* 00430050 918C0000 */  lbu   $t4, ($t4)
/* 00430054 00000000 */  nop   
/* 00430058 15800008 */  bnez  $t4, .L0043007C
/* 0043005C 00000000 */   nop   
/* 00430060 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430064 24840021 */  addiu $a0, $a0, 0x21
/* 00430068 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0043006C 0320F809 */  jalr  $t9
/* 00430070 24050001 */   li    $a1, 1
/* 00430074 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430078 00000000 */  nop   
.L0043007C:
/* 0043007C 8F998020 */  lw    $t9, %got(func_0042EE78)($gp)
/* 00430080 87A60052 */  lh    $a2, 0x52($sp)
/* 00430084 2739EE78 */  addiu $t9, %lo(func_0042EE78) # addiu $t9, $t9, -0x1188
/* 00430088 02002025 */  move  $a0, $s0
/* 0043008C 0320F809 */  jalr  $t9
/* 00430090 24050001 */   li    $a1, 1
/* 00430094 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430098 1000060B */  b     .L004318C8
/* 0043009C 8FBF001C */   lw    $ra, 0x1c($sp)
.L004300A0:
/* 004300A0 8F828088 */  lw    $v0, %got(B_1002363C)($gp)
/* 004300A4 8F8E8088 */  lw    $t6, %got(B_10023644)($gp)
/* 004300A8 2442363C */  addiu $v0, %lo(B_1002363C) # addiu $v0, $v0, 0x363c
/* 004300AC 8C4D0000 */  lw    $t5, ($v0)
/* 004300B0 8DCE3644 */  lw    $t6, %lo(B_10023644)($t6)
/* 004300B4 8F85892C */  lw     $a1, %got(load_latency)($gp)
/* 004300B8 ADCD0034 */  sw    $t5, 0x34($t6)
/* 004300BC 8F998020 */  lw    $t9, %got(func_0042E834)($gp)
/* 004300C0 8C460000 */  lw    $a2, ($v0)
/* 004300C4 8CA50000 */  lw    $a1, ($a1)
/* 004300C8 30E40003 */  andi  $a0, $a3, 3
/* 004300CC 2739E834 */  addiu $t9, %lo(func_0042E834) # addiu $t9, $t9, -0x17cc
/* 004300D0 24840048 */  addiu $a0, $a0, 0x48
/* 004300D4 AFA70034 */  sw    $a3, 0x34($sp)
/* 004300D8 24C60001 */  addiu $a2, $a2, 1
/* 004300DC 0320F809 */  jalr  $t9
/* 004300E0 24A50001 */   addiu $a1, $a1, 1
/* 004300E4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004300E8 8FA70034 */  lw    $a3, 0x34($sp)
/* 004300EC 8F8F8080 */  lw    $t7, %got(D_10004880)($gp)
/* 004300F0 87A50052 */  lh    $a1, 0x52($sp)
/* 004300F4 25EF4880 */  addiu $t7, %lo(D_10004880) # addiu $t7, $t7, 0x4880
/* 004300F8 00EFC821 */  addu  $t9, $a3, $t7
/* 004300FC 93260000 */  lbu   $a2, ($t9)
/* 00430100 8F998020 */  lw    $t9, %got(func_0042DE4C)($gp)
/* 00430104 02002025 */  move  $a0, $s0
/* 00430108 2739DE4C */  addiu $t9, %lo(func_0042DE4C) # addiu $t9, $t9, -0x21b4
/* 0043010C 0320F809 */  jalr  $t9
/* 00430110 00000000 */   nop   
/* 00430114 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430118 87A60052 */  lh    $a2, 0x52($sp)
/* 0043011C 8F998020 */  lw    $t9, %got(func_0042EE78)($gp)
/* 00430120 02002025 */  move  $a0, $s0
/* 00430124 2739EE78 */  addiu $t9, %lo(func_0042EE78) # addiu $t9, $t9, -0x1188
/* 00430128 0320F809 */  jalr  $t9
/* 0043012C 24050001 */   li    $a1, 1
/* 00430130 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430134 100005E4 */  b     .L004318C8
/* 00430138 8FBF001C */   lw    $ra, 0x1c($sp)
.L0043013C:
/* 0043013C 8F988080 */  lw    $t8, %got(D_10004880)($gp)
/* 00430140 8F998020 */  lw    $t9, %got(func_0042D8E8)($gp)
/* 00430144 27184880 */  addiu $t8, %lo(D_10004880) # addiu $t8, $t8, 0x4880
/* 00430148 00F84021 */  addu  $t0, $a3, $t8
/* 0043014C 91060000 */  lbu   $a2, ($t0)
/* 00430150 87A50052 */  lh    $a1, 0x52($sp)
/* 00430154 2739D8E8 */  addiu $t9, %lo(func_0042D8E8) # addiu $t9, $t9, -0x2718
/* 00430158 AFA70034 */  sw    $a3, 0x34($sp)
/* 0043015C 0320F809 */  jalr  $t9
/* 00430160 02002025 */   move  $a0, $s0
/* 00430164 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430168 8FA70034 */  lw    $a3, 0x34($sp)
/* 0043016C 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430170 30E40003 */  andi  $a0, $a3, 3
/* 00430174 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430178 24840048 */  addiu $a0, $a0, 0x48
/* 0043017C 0320F809 */  jalr  $t9
/* 00430180 24050001 */   li    $a1, 1
/* 00430184 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430188 87A60052 */  lh    $a2, 0x52($sp)
/* 0043018C 8F998020 */  lw    $t9, %got(func_0042EE78)($gp)
/* 00430190 02002025 */  move  $a0, $s0
/* 00430194 2739EE78 */  addiu $t9, %lo(func_0042EE78) # addiu $t9, $t9, -0x1188
/* 00430198 0320F809 */  jalr  $t9
/* 0043019C 24050001 */   li    $a1, 1
/* 004301A0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004301A4 100005C8 */  b     .L004318C8
/* 004301A8 8FBF001C */   lw    $ra, 0x1c($sp)
.L004301AC:
/* 004301AC 8FAA0050 */  lw    $t2, 0x50($sp)
/* 004301B0 8F81806C */  lw    $at, %got(RO_100159A0)($gp)
/* 004301B4 314B003F */  andi  $t3, $t2, 0x3f
/* 004301B8 000B5880 */  sll   $t3, $t3, 2
/* 004301BC 002B0821 */  addu  $at, $at, $t3
/* 004301C0 97A40052 */  lhu   $a0, 0x52($sp)
/* 004301C4 8C2B59A0 */  lw    $t3, %lo(RO_100159A0)($at)
/* 004301C8 00044AC2 */  srl   $t1, $a0, 0xb
/* 004301CC 017C5821 */  addu  $t3, $t3, $gp
/* 004301D0 01600008 */  jr    $t3
/* 004301D4 01202025 */   move  $a0, $t1
/* 004301D8 8F85890C */  lw     $a1, %got(logical_latency)($gp)
/* 004301DC 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 004301E0 8CA50000 */  lw    $a1, ($a1)
/* 004301E4 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 004301E8 0320F809 */  jalr  $t9
/* 004301EC 24A50001 */   addiu $a1, $a1, 1
/* 004301F0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004301F4 8FA4004C */  lw    $a0, 0x4c($sp)
/* 004301F8 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 004301FC 24050001 */  li    $a1, 1
/* 00430200 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430204 0320F809 */  jalr  $t9
/* 00430208 00000000 */   nop   
/* 0043020C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430210 02002025 */  move  $a0, $s0
/* 00430214 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430218 24050001 */  li    $a1, 1
/* 0043021C 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430220 0320F809 */  jalr  $t9
/* 00430224 00000000 */   nop   
/* 00430228 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043022C 100005A6 */  b     .L004318C8
/* 00430230 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00430234 8F8C8088 */  lw    $t4, %got(B_10023644)($gp)
/* 00430238 8F858914 */  lw     $a1, %got(shift_latency)($gp)
/* 0043023C 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 00430240 8F818088 */  lw    $at, %got(B_10024244)($gp)
/* 00430244 8D8C3644 */  lw    $t4, %lo(B_10023644)($t4)
/* 00430248 8CA50000 */  lw    $a1, ($a1)
/* 0043024C 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 00430250 AC2C4244 */  sw    $t4, %lo(B_10024244)($at)
/* 00430254 0320F809 */  jalr  $t9
/* 00430258 24A50001 */   addiu $a1, $a1, 1
/* 0043025C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430260 8FA4004C */  lw    $a0, 0x4c($sp)
/* 00430264 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430268 24050001 */  li    $a1, 1
/* 0043026C 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430270 0320F809 */  jalr  $t9
/* 00430274 00000000 */   nop   
/* 00430278 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043027C 02002025 */  move  $a0, $s0
/* 00430280 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430284 24050001 */  li    $a1, 1
/* 00430288 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0043028C 0320F809 */  jalr  $t9
/* 00430290 00000000 */   nop   
/* 00430294 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430298 1000058B */  b     .L004318C8
/* 0043029C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 004302A0 8F858914 */  lw     $a1, %got(shift_latency)($gp)
/* 004302A4 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 004302A8 8CA50000 */  lw    $a1, ($a1)
/* 004302AC 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 004302B0 0320F809 */  jalr  $t9
/* 004302B4 24A50001 */   addiu $a1, $a1, 1
/* 004302B8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004302BC 8FA4004C */  lw    $a0, 0x4c($sp)
/* 004302C0 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 004302C4 24050001 */  li    $a1, 1
/* 004302C8 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 004302CC 0320F809 */  jalr  $t9
/* 004302D0 00000000 */   nop   
/* 004302D4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004302D8 1000057B */  b     .L004318C8
/* 004302DC 8FBF001C */   lw    $ra, 0x1c($sp)
/* 004302E0 8F8D8088 */  lw    $t5, %got(B_10023644)($gp)
/* 004302E4 8F858914 */  lw     $a1, %got(shift_latency)($gp)
/* 004302E8 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 004302EC 8F818088 */  lw    $at, %got(B_10024244)($gp)
/* 004302F0 8DAD3644 */  lw    $t5, %lo(B_10023644)($t5)
/* 004302F4 8CA50000 */  lw    $a1, ($a1)
/* 004302F8 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 004302FC AC2D4244 */  sw    $t5, %lo(B_10024244)($at)
/* 00430300 0320F809 */  jalr  $t9
/* 00430304 24A50001 */   addiu $a1, $a1, 1
/* 00430308 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043030C 8FA4004C */  lw    $a0, 0x4c($sp)
/* 00430310 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430314 24050001 */  li    $a1, 1
/* 00430318 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0043031C 0320F809 */  jalr  $t9
/* 00430320 00000000 */   nop   
/* 00430324 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430328 10000567 */  b     .L004318C8
/* 0043032C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00430330 8F85891C */  lw     $a1, %got(add_latency)($gp)
/* 00430334 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 00430338 8CA50000 */  lw    $a1, ($a1)
/* 0043033C 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 00430340 0320F809 */  jalr  $t9
/* 00430344 24A50001 */   addiu $a1, $a1, 1
/* 00430348 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043034C 8FA4004C */  lw    $a0, 0x4c($sp)
/* 00430350 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430354 24050001 */  li    $a1, 1
/* 00430358 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0043035C 0320F809 */  jalr  $t9
/* 00430360 00000000 */   nop   
/* 00430364 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430368 02002025 */  move  $a0, $s0
/* 0043036C 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430370 24050001 */  li    $a1, 1
/* 00430374 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430378 0320F809 */  jalr  $t9
/* 0043037C 00000000 */   nop   
/* 00430380 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430384 10000550 */  b     .L004318C8
/* 00430388 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0043038C 8F998020 */  lw    $t9, %got(func_0042F244)($gp)
/* 00430390 AFA40044 */  sw    $a0, 0x44($sp)
/* 00430394 2739F244 */  addiu $t9, %lo(func_0042F244) # addiu $t9, $t9, -0xdbc
/* 00430398 0320F809 */  jalr  $t9
/* 0043039C 00000000 */   nop   
/* 004303A0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004303A4 8FA40044 */  lw    $a0, 0x44($sp)
/* 004303A8 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 004303AC 24050001 */  li    $a1, 1
/* 004303B0 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 004303B4 0320F809 */  jalr  $t9
/* 004303B8 00000000 */   nop   
/* 004303BC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004303C0 02002025 */  move  $a0, $s0
/* 004303C4 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 004303C8 24050001 */  li    $a1, 1
/* 004303CC 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 004303D0 0320F809 */  jalr  $t9
/* 004303D4 00000000 */   nop   
/* 004303D8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004303DC 240E0001 */  li    $t6, 1
/* 004303E0 8F818B74 */  lw     $at, %got(is_nonleaf)($gp)
/* 004303E4 10000537 */  b     .L004318C4
/* 004303E8 A02E0000 */   sb    $t6, ($at)
/* 004303EC 8F998020 */  lw    $t9, %got(func_0042F244)($gp)
/* 004303F0 00000000 */  nop   
/* 004303F4 2739F244 */  addiu $t9, %lo(func_0042F244) # addiu $t9, $t9, -0xdbc
/* 004303F8 0320F809 */  jalr  $t9
/* 004303FC 00000000 */   nop   
/* 00430400 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430404 02002025 */  move  $a0, $s0
/* 00430408 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 0043040C 24050001 */  li    $a1, 1
/* 00430410 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430414 0320F809 */  jalr  $t9
/* 00430418 00000000 */   nop   
/* 0043041C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430420 10000529 */  b     .L004318C8
/* 00430424 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00430428 8F818B74 */  lw     $at, %got(is_nonleaf)($gp)
/* 0043042C 240F0001 */  li    $t7, 1
/* 00430430 10000524 */  b     .L004318C4
/* 00430434 A02F0000 */   sb    $t7, ($at)
/* 00430438 8F998088 */  lw    $t9, %got(B_10023644)($gp)
/* 0043043C 8F818088 */  lw    $at, %got(B_10024238)($gp)
/* 00430440 8F393644 */  lw    $t9, %lo(B_10023644)($t9)
/* 00430444 1000051F */  b     .L004318C4
/* 00430448 AC394238 */   sw    $t9, %lo(B_10024238)($at)
/* 0043044C 8F888088 */  lw    $t0, %got(B_10023644)($gp)
/* 00430450 8F858928 */  lw     $a1, %got(hilo_latency)($gp)
/* 00430454 8D083644 */  lw    $t0, %lo(B_10023644)($t0)
/* 00430458 24180003 */  li    $t8, 3
/* 0043045C 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 00430460 AD180034 */  sw    $t8, 0x34($t0)
/* 00430464 8CA50000 */  lw    $a1, ($a1)
/* 00430468 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 0043046C 0320F809 */  jalr  $t9
/* 00430470 24A50001 */   addiu $a1, $a1, 1
/* 00430474 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430478 2404004F */  li    $a0, 79
/* 0043047C 8F998020 */  lw    $t9, %got(func_0042F0E8)($gp)
/* 00430480 24050001 */  li    $a1, 1
/* 00430484 2739F0E8 */  addiu $t9, %lo(func_0042F0E8) # addiu $t9, $t9, -0xf18
/* 00430488 0320F809 */  jalr  $t9
/* 0043048C 24060003 */   li    $a2, 3
/* 00430490 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430494 00000000 */  nop   
/* 00430498 8F898C44 */  lw     $t1, %got(maybe_r4000)($gp)
/* 0043049C 00000000 */  nop   
/* 004304A0 91290000 */  lbu   $t1, ($t1)
/* 004304A4 00000000 */  nop   
/* 004304A8 11200507 */  beqz  $t1, .L004318C8
/* 004304AC 8FBF001C */   lw    $ra, 0x1c($sp)
/* 004304B0 8F908088 */  lw    $s0, %got(B_10024244)($gp)
/* 004304B4 24060001 */  li    $a2, 1
/* 004304B8 26104244 */  addiu $s0, %lo(B_10024244) # addiu $s0, $s0, 0x4244
/* 004304BC 8E050000 */  lw    $a1, ($s0)
/* 004304C0 00000000 */  nop   
/* 004304C4 10A00500 */  beqz  $a1, .L004318C8
/* 004304C8 8FBF001C */   lw    $ra, 0x1c($sp)
/* 004304CC 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 004304D0 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 004304D4 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 004304D8 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 004304DC 0320F809 */  jalr  $t9
/* 004304E0 00003825 */   move  $a3, $zero
/* 004304E4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004304E8 100004F6 */  b     .L004318C4
/* 004304EC AE000000 */   sw    $zero, ($s0)
/* 004304F0 8F8B8088 */  lw    $t3, %got(B_10023644)($gp)
/* 004304F4 8F858928 */  lw     $a1, %got(hilo_latency)($gp)
/* 004304F8 8D6B3644 */  lw    $t3, %lo(B_10023644)($t3)
/* 004304FC 240A0003 */  li    $t2, 3
/* 00430500 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 00430504 AD6A0034 */  sw    $t2, 0x34($t3)
/* 00430508 8CA50000 */  lw    $a1, ($a1)
/* 0043050C 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 00430510 0320F809 */  jalr  $t9
/* 00430514 24A50001 */   addiu $a1, $a1, 1
/* 00430518 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043051C 2404004E */  li    $a0, 78
/* 00430520 8F998020 */  lw    $t9, %got(func_0042F0E8)($gp)
/* 00430524 24050001 */  li    $a1, 1
/* 00430528 2739F0E8 */  addiu $t9, %lo(func_0042F0E8) # addiu $t9, $t9, -0xf18
/* 0043052C 0320F809 */  jalr  $t9
/* 00430530 24060003 */   li    $a2, 3
/* 00430534 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430538 00000000 */  nop   
/* 0043053C 8F8C8C44 */  lw     $t4, %got(maybe_r4000)($gp)
/* 00430540 00000000 */  nop   
/* 00430544 918C0000 */  lbu   $t4, ($t4)
/* 00430548 00000000 */  nop   
/* 0043054C 118004DE */  beqz  $t4, .L004318C8
/* 00430550 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00430554 8F908088 */  lw    $s0, %got(B_10024244)($gp)
/* 00430558 24060001 */  li    $a2, 1
/* 0043055C 26104244 */  addiu $s0, %lo(B_10024244) # addiu $s0, $s0, 0x4244
/* 00430560 8E050000 */  lw    $a1, ($s0)
/* 00430564 00000000 */  nop   
/* 00430568 10A004D7 */  beqz  $a1, .L004318C8
/* 0043056C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00430570 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 00430574 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 00430578 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 0043057C 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 00430580 0320F809 */  jalr  $t9
/* 00430584 00003825 */   move  $a3, $zero
/* 00430588 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043058C 100004CD */  b     .L004318C4
/* 00430590 AE000000 */   sw    $zero, ($s0)
/* 00430594 8F858928 */  lw     $a1, %got(hilo_latency)($gp)
/* 00430598 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 0043059C 8CA50000 */  lw    $a1, ($a1)
/* 004305A0 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 004305A4 2404004F */  li    $a0, 79
/* 004305A8 0320F809 */  jalr  $t9
/* 004305AC 24A50001 */   addiu $a1, $a1, 1
/* 004305B0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004305B4 2404004E */  li    $a0, 78
/* 004305B8 8F858928 */  lw     $a1, %got(hilo_latency)($gp)
/* 004305BC 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 004305C0 8CA50000 */  lw    $a1, ($a1)
/* 004305C4 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 004305C8 0320F809 */  jalr  $t9
/* 004305CC 24A50001 */   addiu $a1, $a1, 1
/* 004305D0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004305D4 02002025 */  move  $a0, $s0
/* 004305D8 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 004305DC 24050001 */  li    $a1, 1
/* 004305E0 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 004305E4 0320F809 */  jalr  $t9
/* 004305E8 00000000 */   nop   
/* 004305EC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004305F0 100004B5 */  b     .L004318C8
/* 004305F4 8FBF001C */   lw    $ra, 0x1c($sp)
/* 004305F8 8F858928 */  lw     $a1, %got(hilo_latency)($gp)
/* 004305FC 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 00430600 8CA50000 */  lw    $a1, ($a1)
/* 00430604 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 00430608 2404004E */  li    $a0, 78
/* 0043060C 0320F809 */  jalr  $t9
/* 00430610 24A50001 */   addiu $a1, $a1, 1
/* 00430614 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430618 2404004F */  li    $a0, 79
/* 0043061C 8F858928 */  lw     $a1, %got(hilo_latency)($gp)
/* 00430620 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 00430624 8CA50000 */  lw    $a1, ($a1)
/* 00430628 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 0043062C 0320F809 */  jalr  $t9
/* 00430630 24A50001 */   addiu $a1, $a1, 1
/* 00430634 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430638 02002025 */  move  $a0, $s0
/* 0043063C 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430640 24050001 */  li    $a1, 1
/* 00430644 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430648 0320F809 */  jalr  $t9
/* 0043064C 00000000 */   nop   
/* 00430650 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430654 1000049C */  b     .L004318C8
/* 00430658 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0043065C 8F858948 */  lw     $a1, %got(multiply_latency)($gp)
/* 00430660 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 00430664 8CA50000 */  lw    $a1, ($a1)
/* 00430668 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 0043066C 2404004F */  li    $a0, 79
/* 00430670 0320F809 */  jalr  $t9
/* 00430674 24A50001 */   addiu $a1, $a1, 1
/* 00430678 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043067C 2404004E */  li    $a0, 78
/* 00430680 8F858948 */  lw     $a1, %got(multiply_latency)($gp)
/* 00430684 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 00430688 8CA50000 */  lw    $a1, ($a1)
/* 0043068C 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 00430690 0320F809 */  jalr  $t9
/* 00430694 24A50001 */   addiu $a1, $a1, 1
/* 00430698 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043069C 8FA4004C */  lw    $a0, 0x4c($sp)
/* 004306A0 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 004306A4 24050001 */  li    $a1, 1
/* 004306A8 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 004306AC 0320F809 */  jalr  $t9
/* 004306B0 00000000 */   nop   
/* 004306B4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004306B8 02002025 */  move  $a0, $s0
/* 004306BC 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 004306C0 24050001 */  li    $a1, 1
/* 004306C4 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 004306C8 0320F809 */  jalr  $t9
/* 004306CC 00000000 */   nop   
/* 004306D0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004306D4 00000000 */  nop   
/* 004306D8 8F8D8C44 */  lw     $t5, %got(maybe_r4000)($gp)
/* 004306DC 00000000 */  nop   
/* 004306E0 91AD0000 */  lbu   $t5, ($t5)
/* 004306E4 00000000 */  nop   
/* 004306E8 11A00477 */  beqz  $t5, .L004318C8
/* 004306EC 8FBF001C */   lw    $ra, 0x1c($sp)
/* 004306F0 8F858088 */  lw    $a1, %got(B_10024244)($gp)
/* 004306F4 00000000 */  nop   
/* 004306F8 8CA54244 */  lw    $a1, %lo(B_10024244)($a1)
/* 004306FC 00000000 */  nop   
/* 00430700 10A00471 */  beqz  $a1, .L004318C8
/* 00430704 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00430708 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 0043070C 8F878948 */  lw     $a3, %got(multiply_latency)($gp)
/* 00430710 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 00430714 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 00430718 8CE70000 */  lw    $a3, ($a3)
/* 0043071C 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 00430720 0320F809 */  jalr  $t9
/* 00430724 24060001 */   li    $a2, 1
/* 00430728 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043072C 00000000 */  nop   
/* 00430730 8F818088 */  lw    $at, %got(B_10024244)($gp)
/* 00430734 10000463 */  b     .L004318C4
/* 00430738 AC204244 */   sw    $zero, %lo(B_10024244)($at)
/* 0043073C 8F85894C */  lw     $a1, %got(dmultiply_latency)($gp)
/* 00430740 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 00430744 8CA50000 */  lw    $a1, ($a1)
/* 00430748 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 0043074C 2404004F */  li    $a0, 79
/* 00430750 0320F809 */  jalr  $t9
/* 00430754 24A50001 */   addiu $a1, $a1, 1
/* 00430758 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043075C 2404004E */  li    $a0, 78
/* 00430760 8F85894C */  lw     $a1, %got(dmultiply_latency)($gp)
/* 00430764 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 00430768 8CA50000 */  lw    $a1, ($a1)
/* 0043076C 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 00430770 0320F809 */  jalr  $t9
/* 00430774 24A50001 */   addiu $a1, $a1, 1
/* 00430778 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043077C 8FA4004C */  lw    $a0, 0x4c($sp)
/* 00430780 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430784 24050001 */  li    $a1, 1
/* 00430788 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0043078C 0320F809 */  jalr  $t9
/* 00430790 00000000 */   nop   
/* 00430794 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430798 02002025 */  move  $a0, $s0
/* 0043079C 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 004307A0 24050001 */  li    $a1, 1
/* 004307A4 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 004307A8 0320F809 */  jalr  $t9
/* 004307AC 00000000 */   nop   
/* 004307B0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004307B4 00000000 */  nop   
/* 004307B8 8F8E8C44 */  lw     $t6, %got(maybe_r4000)($gp)
/* 004307BC 00000000 */  nop   
/* 004307C0 91CE0000 */  lbu   $t6, ($t6)
/* 004307C4 00000000 */  nop   
/* 004307C8 11C0043F */  beqz  $t6, .L004318C8
/* 004307CC 8FBF001C */   lw    $ra, 0x1c($sp)
/* 004307D0 8F858088 */  lw    $a1, %got(B_10024244)($gp)
/* 004307D4 00000000 */  nop   
/* 004307D8 8CA54244 */  lw    $a1, %lo(B_10024244)($a1)
/* 004307DC 00000000 */  nop   
/* 004307E0 10A00439 */  beqz  $a1, .L004318C8
/* 004307E4 8FBF001C */   lw    $ra, 0x1c($sp)
/* 004307E8 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 004307EC 8F87894C */  lw     $a3, %got(dmultiply_latency)($gp)
/* 004307F0 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 004307F4 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 004307F8 8CE70000 */  lw    $a3, ($a3)
/* 004307FC 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 00430800 0320F809 */  jalr  $t9
/* 00430804 24060001 */   li    $a2, 1
/* 00430808 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043080C 00000000 */  nop   
/* 00430810 8F818088 */  lw    $at, %got(B_10024244)($gp)
/* 00430814 1000042B */  b     .L004318C4
/* 00430818 AC204244 */   sw    $zero, %lo(B_10024244)($at)
/* 0043081C 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430820 8FA4004C */  lw    $a0, 0x4c($sp)
/* 00430824 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430828 0320F809 */  jalr  $t9
/* 0043082C 24050001 */   li    $a1, 1
/* 00430830 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430834 02002025 */  move  $a0, $s0
/* 00430838 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 0043083C 24050001 */  li    $a1, 1
/* 00430840 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430844 0320F809 */  jalr  $t9
/* 00430848 00000000 */   nop   
/* 0043084C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430850 1000041D */  b     .L004318C8
/* 00430854 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00430858 8F858954 */  lw     $a1, %got(divide_latency)($gp)
/* 0043085C 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 00430860 8CA50000 */  lw    $a1, ($a1)
/* 00430864 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 00430868 2404004F */  li    $a0, 79
/* 0043086C 0320F809 */  jalr  $t9
/* 00430870 24A50001 */   addiu $a1, $a1, 1
/* 00430874 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430878 2404004E */  li    $a0, 78
/* 0043087C 8F858954 */  lw     $a1, %got(divide_latency)($gp)
/* 00430880 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 00430884 8CA50000 */  lw    $a1, ($a1)
/* 00430888 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 0043088C 0320F809 */  jalr  $t9
/* 00430890 24A50001 */   addiu $a1, $a1, 1
/* 00430894 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430898 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0043089C 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 004308A0 24050001 */  li    $a1, 1
/* 004308A4 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 004308A8 0320F809 */  jalr  $t9
/* 004308AC 00000000 */   nop   
/* 004308B0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004308B4 02002025 */  move  $a0, $s0
/* 004308B8 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 004308BC 24050001 */  li    $a1, 1
/* 004308C0 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 004308C4 0320F809 */  jalr  $t9
/* 004308C8 00000000 */   nop   
/* 004308CC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004308D0 00000000 */  nop   
/* 004308D4 8F828C44 */  lw     $v0, %got(maybe_r4000)($gp)
/* 004308D8 00000000 */  nop   
/* 004308DC 90420000 */  lbu   $v0, ($v0)
/* 004308E0 00000000 */  nop   
/* 004308E4 10400013 */  beqz  $v0, .L00430934
/* 004308E8 00000000 */   nop   
/* 004308EC 8F858088 */  lw    $a1, %got(B_1002364C)($gp)
/* 004308F0 24060001 */  li    $a2, 1
/* 004308F4 8CA5364C */  lw    $a1, %lo(B_1002364C)($a1)
/* 004308F8 00000000 */  nop   
/* 004308FC 10A0000D */  beqz  $a1, .L00430934
/* 00430900 00000000 */   nop   
/* 00430904 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 00430908 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0043090C 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 00430910 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 00430914 0320F809 */  jalr  $t9
/* 00430918 00003825 */   move  $a3, $zero
/* 0043091C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430920 00000000 */  nop   
/* 00430924 8F828C44 */  lw     $v0, %got(maybe_r4000)($gp)
/* 00430928 00000000 */  nop   
/* 0043092C 90420000 */  lbu   $v0, ($v0)
/* 00430930 00000000 */  nop   
.L00430934:
/* 00430934 104003E4 */  beqz  $v0, .L004318C8
/* 00430938 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0043093C 8F858088 */  lw    $a1, %got(B_10024244)($gp)
/* 00430940 24060001 */  li    $a2, 1
/* 00430944 8CA54244 */  lw    $a1, %lo(B_10024244)($a1)
/* 00430948 00000000 */  nop   
/* 0043094C 10A003DE */  beqz  $a1, .L004318C8
/* 00430950 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00430954 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 00430958 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 0043095C 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 00430960 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 00430964 0320F809 */  jalr  $t9
/* 00430968 24070002 */   li    $a3, 2
/* 0043096C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430970 00000000 */  nop   
/* 00430974 8F818088 */  lw    $at, %got(B_10024244)($gp)
/* 00430978 100003D2 */  b     .L004318C4
/* 0043097C AC204244 */   sw    $zero, %lo(B_10024244)($at)
/* 00430980 8F858958 */  lw     $a1, %got(ddivide_latency)($gp)
/* 00430984 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 00430988 8CA50000 */  lw    $a1, ($a1)
/* 0043098C 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 00430990 2404004F */  li    $a0, 79
/* 00430994 0320F809 */  jalr  $t9
/* 00430998 24A50001 */   addiu $a1, $a1, 1
/* 0043099C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004309A0 2404004E */  li    $a0, 78
/* 004309A4 8F858958 */  lw     $a1, %got(ddivide_latency)($gp)
/* 004309A8 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 004309AC 8CA50000 */  lw    $a1, ($a1)
/* 004309B0 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 004309B4 0320F809 */  jalr  $t9
/* 004309B8 24A50001 */   addiu $a1, $a1, 1
/* 004309BC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004309C0 8FA4004C */  lw    $a0, 0x4c($sp)
/* 004309C4 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 004309C8 24050001 */  li    $a1, 1
/* 004309CC 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 004309D0 0320F809 */  jalr  $t9
/* 004309D4 00000000 */   nop   
/* 004309D8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004309DC 02002025 */  move  $a0, $s0
/* 004309E0 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 004309E4 24050001 */  li    $a1, 1
/* 004309E8 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 004309EC 0320F809 */  jalr  $t9
/* 004309F0 00000000 */   nop   
/* 004309F4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004309F8 00000000 */  nop   
/* 004309FC 8F828C44 */  lw     $v0, %got(maybe_r4000)($gp)
/* 00430A00 00000000 */  nop   
/* 00430A04 90420000 */  lbu   $v0, ($v0)
/* 00430A08 00000000 */  nop   
/* 00430A0C 10400013 */  beqz  $v0, .L00430A5C
/* 00430A10 00000000 */   nop   
/* 00430A14 8F858088 */  lw    $a1, %got(B_1002364C)($gp)
/* 00430A18 24060001 */  li    $a2, 1
/* 00430A1C 8CA5364C */  lw    $a1, %lo(B_1002364C)($a1)
/* 00430A20 00000000 */  nop   
/* 00430A24 10A0000D */  beqz  $a1, .L00430A5C
/* 00430A28 00000000 */   nop   
/* 00430A2C 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 00430A30 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 00430A34 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 00430A38 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 00430A3C 0320F809 */  jalr  $t9
/* 00430A40 00003825 */   move  $a3, $zero
/* 00430A44 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430A48 00000000 */  nop   
/* 00430A4C 8F828C44 */  lw     $v0, %got(maybe_r4000)($gp)
/* 00430A50 00000000 */  nop   
/* 00430A54 90420000 */  lbu   $v0, ($v0)
/* 00430A58 00000000 */  nop   
.L00430A5C:
/* 00430A5C 1040039A */  beqz  $v0, .L004318C8
/* 00430A60 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00430A64 8F858088 */  lw    $a1, %got(B_10024244)($gp)
/* 00430A68 24060001 */  li    $a2, 1
/* 00430A6C 8CA54244 */  lw    $a1, %lo(B_10024244)($a1)
/* 00430A70 00000000 */  nop   
/* 00430A74 10A00394 */  beqz  $a1, .L004318C8
/* 00430A78 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00430A7C 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 00430A80 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 00430A84 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 00430A88 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 00430A8C 0320F809 */  jalr  $t9
/* 00430A90 24070002 */   li    $a3, 2
/* 00430A94 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430A98 00000000 */  nop   
/* 00430A9C 8F818088 */  lw    $at, %got(B_10024244)($gp)
/* 00430AA0 10000388 */  b     .L004318C4
/* 00430AA4 AC204244 */   sw    $zero, %lo(B_10024244)($at)
/* 00430AA8 8F85891C */  lw     $a1, %got(add_latency)($gp)
/* 00430AAC 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 00430AB0 8CA50000 */  lw    $a1, ($a1)
/* 00430AB4 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 00430AB8 0320F809 */  jalr  $t9
/* 00430ABC 24A50001 */   addiu $a1, $a1, 1
/* 00430AC0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430AC4 02002025 */  move  $a0, $s0
/* 00430AC8 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430ACC 24050001 */  li    $a1, 1
/* 00430AD0 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430AD4 0320F809 */  jalr  $t9
/* 00430AD8 00000000 */   nop   
/* 00430ADC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430AE0 8FA4004C */  lw    $a0, 0x4c($sp)
/* 00430AE4 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430AE8 24050001 */  li    $a1, 1
/* 00430AEC 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430AF0 0320F809 */  jalr  $t9
/* 00430AF4 00000000 */   nop   
/* 00430AF8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430AFC 10000372 */  b     .L004318C8
/* 00430B00 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00430B04 8F85891C */  lw     $a1, %got(add_latency)($gp)
/* 00430B08 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 00430B0C 8CA50000 */  lw    $a1, ($a1)
/* 00430B10 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 00430B14 0320F809 */  jalr  $t9
/* 00430B18 24A50001 */   addiu $a1, $a1, 1
/* 00430B1C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430B20 02002025 */  move  $a0, $s0
/* 00430B24 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430B28 24050001 */  li    $a1, 1
/* 00430B2C 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430B30 0320F809 */  jalr  $t9
/* 00430B34 00000000 */   nop   
/* 00430B38 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430B3C 8FA4004C */  lw    $a0, 0x4c($sp)
/* 00430B40 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430B44 00047882 */  srl   $t7, $a0, 2
/* 00430B48 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430B4C 25E40040 */  addiu $a0, $t7, 0x40
/* 00430B50 0320F809 */  jalr  $t9
/* 00430B54 24050001 */   li    $a1, 1
/* 00430B58 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430B5C 1000035A */  b     .L004318C8
/* 00430B60 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00430B64 8FB90050 */  lw    $t9, 0x50($sp)
/* 00430B68 8F898A50 */  lw     $t1, %got(spec_name)($gp)
/* 00430B6C 3338003F */  andi  $t8, $t9, 0x3f
/* 00430B70 00184080 */  sll   $t0, $t8, 2
/* 00430B74 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 00430B78 8F8480AC */  lw     $a0, %got(__iob)($gp)
/* 00430B7C 8F85806C */  lw    $a1, %got(RO_100153F8)($gp)
/* 00430B80 01095021 */  addu  $t2, $t0, $t1
/* 00430B84 8D460000 */  lw    $a2, ($t2)
/* 00430B88 24840020 */  addiu $a0, $a0, 0x20
/* 00430B8C 0320F809 */  jalr  $t9
/* 00430B90 24A553F8 */   addiu $a1, %lo(RO_100153F8) # addiu $a1, $a1, 0x53f8
/* 00430B94 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430B98 1000034B */  b     .L004318C8
/* 00430B9C 8FBF001C */   lw    $ra, 0x1c($sp)
.L00430BA0:
/* 00430BA0 8F8B8080 */  lw    $t3, %got(D_10004880)($gp)
/* 00430BA4 8F998020 */  lw    $t9, %got(func_0042DE4C)($gp)
/* 00430BA8 256B4880 */  addiu $t3, %lo(D_10004880) # addiu $t3, $t3, 0x4880
/* 00430BAC 00EB6021 */  addu  $t4, $a3, $t3
/* 00430BB0 91860000 */  lbu   $a2, ($t4)
/* 00430BB4 87A50052 */  lh    $a1, 0x52($sp)
/* 00430BB8 2739DE4C */  addiu $t9, %lo(func_0042DE4C) # addiu $t9, $t9, -0x21b4
/* 00430BBC 0320F809 */  jalr  $t9
/* 00430BC0 02002025 */   move  $a0, $s0
/* 00430BC4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430BC8 87A60052 */  lh    $a2, 0x52($sp)
/* 00430BCC 8F998020 */  lw    $t9, %got(func_0042EE78)($gp)
/* 00430BD0 02002025 */  move  $a0, $s0
/* 00430BD4 2739EE78 */  addiu $t9, %lo(func_0042EE78) # addiu $t9, $t9, -0x1188
/* 00430BD8 0320F809 */  jalr  $t9
/* 00430BDC 24050001 */   li    $a1, 1
/* 00430BE0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430BE4 00000000 */  nop   
/* 00430BE8 8F8D8088 */  lw    $t5, %got(B_10023644)($gp)
/* 00430BEC 8F818088 */  lw    $at, %got(B_10024238)($gp)
/* 00430BF0 8DAD3644 */  lw    $t5, %lo(B_10023644)($t5)
/* 00430BF4 10000333 */  b     .L004318C4
/* 00430BF8 AC2D4238 */   sw    $t5, %lo(B_10024238)($at)
.L00430BFC:
/* 00430BFC 8F8E8080 */  lw    $t6, %got(D_10004880)($gp)
/* 00430C00 8F998020 */  lw    $t9, %got(func_0042DE4C)($gp)
/* 00430C04 25CE4880 */  addiu $t6, %lo(D_10004880) # addiu $t6, $t6, 0x4880
/* 00430C08 00EE7821 */  addu  $t7, $a3, $t6
/* 00430C0C 91E60000 */  lbu   $a2, ($t7)
/* 00430C10 87A50052 */  lh    $a1, 0x52($sp)
/* 00430C14 2739DE4C */  addiu $t9, %lo(func_0042DE4C) # addiu $t9, $t9, -0x21b4
/* 00430C18 0320F809 */  jalr  $t9
/* 00430C1C 02002025 */   move  $a0, $s0
/* 00430C20 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430C24 87A60052 */  lh    $a2, 0x52($sp)
/* 00430C28 8F998020 */  lw    $t9, %got(func_0042EE78)($gp)
/* 00430C2C 02002025 */  move  $a0, $s0
/* 00430C30 2739EE78 */  addiu $t9, %lo(func_0042EE78) # addiu $t9, $t9, -0x1188
/* 00430C34 0320F809 */  jalr  $t9
/* 00430C38 24050001 */   li    $a1, 1
/* 00430C3C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430C40 10000321 */  b     .L004318C8
/* 00430C44 8FBF001C */   lw    $ra, 0x1c($sp)
.L00430C48:
/* 00430C48 2E010009 */  sltiu $at, $s0, 9
/* 00430C4C 10200052 */  beqz  $at, .L00430D98
/* 00430C50 00000000 */   nop   
/* 00430C54 8F81806C */  lw    $at, %got(jtbl_10015AA0)($gp)
/* 00430C58 0010C880 */  sll   $t9, $s0, 2
/* 00430C5C 00390821 */  addu  $at, $at, $t9
/* 00430C60 8C395AA0 */  lw    $t9, %lo(jtbl_10015AA0)($at)
/* 00430C64 00000000 */  nop   
/* 00430C68 033CC821 */  addu  $t9, $t9, $gp
/* 00430C6C 03200008 */  jr    $t9
/* 00430C70 00000000 */   nop   
.L00430C74:
/* 00430C74 8F998020 */  lw    $t9, %got(func_0042F244)($gp)
/* 00430C78 AFA70034 */  sw    $a3, 0x34($sp)
/* 00430C7C 2739F244 */  addiu $t9, %lo(func_0042F244) # addiu $t9, $t9, -0xdbc
/* 00430C80 0320F809 */  jalr  $t9
/* 00430C84 00000000 */   nop   
/* 00430C88 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430C8C 8FA70034 */  lw    $a3, 0x34($sp)
/* 00430C90 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430C94 30E40003 */  andi  $a0, $a3, 3
/* 00430C98 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430C9C 24840048 */  addiu $a0, $a0, 0x48
/* 00430CA0 0320F809 */  jalr  $t9
/* 00430CA4 00002825 */   move  $a1, $zero
/* 00430CA8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430CAC 10000306 */  b     .L004318C8
/* 00430CB0 8FBF001C */   lw    $ra, 0x1c($sp)
.L00430CB4:
/* 00430CB4 8F838AB8 */  lw     $v1, %got(mtf_hazard)($gp)
/* 00430CB8 8F888088 */  lw    $t0, %got(B_10023644)($gp)
/* 00430CBC 8C780000 */  lw    $t8, ($v1)
/* 00430CC0 8D083644 */  lw    $t0, %lo(B_10023644)($t0)
/* 00430CC4 8F85892C */  lw     $a1, %got(load_latency)($gp)
/* 00430CC8 AD180034 */  sw    $t8, 0x34($t0)
/* 00430CCC 8F998020 */  lw    $t9, %got(func_0042E834)($gp)
/* 00430CD0 8C660000 */  lw    $a2, ($v1)
/* 00430CD4 8CA50000 */  lw    $a1, ($a1)
/* 00430CD8 30E40003 */  andi  $a0, $a3, 3
/* 00430CDC 2739E834 */  addiu $t9, %lo(func_0042E834) # addiu $t9, $t9, -0x17cc
/* 00430CE0 24840048 */  addiu $a0, $a0, 0x48
/* 00430CE4 24C60001 */  addiu $a2, $a2, 1
/* 00430CE8 0320F809 */  jalr  $t9
/* 00430CEC 24A50001 */   addiu $a1, $a1, 1
/* 00430CF0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430CF4 8FA4004C */  lw    $a0, 0x4c($sp)
/* 00430CF8 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430CFC 24050001 */  li    $a1, 1
/* 00430D00 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430D04 0320F809 */  jalr  $t9
/* 00430D08 00000000 */   nop   
/* 00430D0C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430D10 100002ED */  b     .L004318C8
/* 00430D14 8FBF001C */   lw    $ra, 0x1c($sp)
.L00430D18:
/* 00430D18 24010010 */  li    $at, 16
/* 00430D1C 14E10003 */  bne   $a3, $at, .L00430D2C
/* 00430D20 00000000 */   nop   
/* 00430D24 10000005 */  b     .L00430D3C
/* 00430D28 00001025 */   move  $v0, $zero
.L00430D2C:
/* 00430D2C 8F838AB8 */  lw     $v1, %got(mtf_hazard)($gp)
/* 00430D30 00000000 */  nop   
/* 00430D34 8C620000 */  lw    $v0, ($v1)
/* 00430D38 00000000 */  nop   
.L00430D3C:
/* 00430D3C 8F898088 */  lw    $t1, %got(B_10023644)($gp)
/* 00430D40 8F85892C */  lw     $a1, %got(load_latency)($gp)
/* 00430D44 8D293644 */  lw    $t1, %lo(B_10023644)($t1)
/* 00430D48 8F998020 */  lw    $t9, %got(func_0042E834)($gp)
/* 00430D4C AD220034 */  sw    $v0, 0x34($t1)
/* 00430D50 8CA50000 */  lw    $a1, ($a1)
/* 00430D54 8FA4004C */  lw    $a0, 0x4c($sp)
/* 00430D58 2739E834 */  addiu $t9, %lo(func_0042E834) # addiu $t9, $t9, -0x17cc
/* 00430D5C AFA70034 */  sw    $a3, 0x34($sp)
/* 00430D60 24460001 */  addiu $a2, $v0, 1
/* 00430D64 0320F809 */  jalr  $t9
/* 00430D68 24A50001 */   addiu $a1, $a1, 1
/* 00430D6C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430D70 8FA70034 */  lw    $a3, 0x34($sp)
/* 00430D74 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430D78 30E40003 */  andi  $a0, $a3, 3
/* 00430D7C 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430D80 24840048 */  addiu $a0, $a0, 0x48
/* 00430D84 0320F809 */  jalr  $t9
/* 00430D88 24050001 */   li    $a1, 1
/* 00430D8C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430D90 100002CD */  b     .L004318C8
/* 00430D94 8FBF001C */   lw    $ra, 0x1c($sp)
.L00430D98:
/* 00430D98 8F85891C */  lw     $a1, %got(add_latency)($gp)
/* 00430D9C 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 00430DA0 8CA50000 */  lw    $a1, ($a1)
/* 00430DA4 30E40003 */  andi  $a0, $a3, 3
/* 00430DA8 24840048 */  addiu $a0, $a0, 0x48
/* 00430DAC 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 00430DB0 AFA40028 */  sw    $a0, 0x28($sp)
/* 00430DB4 0320F809 */  jalr  $t9
/* 00430DB8 24A50001 */   addiu $a1, $a1, 1
/* 00430DBC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430DC0 8FA40028 */  lw    $a0, 0x28($sp)
/* 00430DC4 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430DC8 24050001 */  li    $a1, 1
/* 00430DCC 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430DD0 0320F809 */  jalr  $t9
/* 00430DD4 00000000 */   nop   
/* 00430DD8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430DDC 100002BA */  b     .L004318C8
/* 00430DE0 8FBF001C */   lw    $ra, 0x1c($sp)
.L00430DE4:
/* 00430DE4 8F8A8B04 */  lw     $t2, %got(isa)($gp)
/* 00430DE8 8FAB0050 */  lw    $t3, 0x50($sp)
/* 00430DEC 914A0000 */  lbu   $t2, ($t2)
/* 00430DF0 24010001 */  li    $at, 1
/* 00430DF4 1141FF94 */  beq   $t2, $at, .L00430C48
/* 00430DF8 316C003F */   andi  $t4, $t3, 0x3f
/* 00430DFC 2D81000A */  sltiu $at, $t4, 0xa
/* 00430E00 10200045 */  beqz  $at, .L00430F18
/* 00430E04 8FA80050 */   lw    $t0, 0x50($sp)
/* 00430E08 8F81806C */  lw    $at, %got(jtbl_10015AC4)($gp)
/* 00430E0C 000C6080 */  sll   $t4, $t4, 2
/* 00430E10 002C0821 */  addu  $at, $at, $t4
/* 00430E14 8C2C5AC4 */  lw    $t4, %lo(jtbl_10015AC4)($at)
/* 00430E18 00000000 */  nop   
/* 00430E1C 019C6021 */  addu  $t4, $t4, $gp
/* 00430E20 01800008 */  jr    $t4
/* 00430E24 00000000 */   nop   
.L00430E28:
/* 00430E28 8F828088 */  lw    $v0, %got(B_10023640)($gp)
/* 00430E2C 8F998088 */  lw    $t9, %got(B_10023644)($gp)
/* 00430E30 24423640 */  addiu $v0, %lo(B_10023640) # addiu $v0, $v0, 0x3640
/* 00430E34 8C4F0000 */  lw    $t7, ($v0)
/* 00430E38 8F393644 */  lw    $t9, %lo(B_10023644)($t9)
/* 00430E3C 8FA70050 */  lw    $a3, 0x50($sp)
/* 00430E40 AF2F0034 */  sw    $t7, 0x34($t9)
/* 00430E44 8F858930 */  lw     $a1, %got(fp_load_latency)($gp)
/* 00430E48 8F998020 */  lw    $t9, %got(func_0042E834)($gp)
/* 00430E4C 8C460000 */  lw    $a2, ($v0)
/* 00430E50 8CA50000 */  lw    $a1, ($a1)
/* 00430E54 00076D40 */  sll   $t5, $a3, 0x15
/* 00430E58 000D76C2 */  srl   $t6, $t5, 0x1b
/* 00430E5C 2739E834 */  addiu $t9, %lo(func_0042E834) # addiu $t9, $t9, -0x17cc
/* 00430E60 25C40020 */  addiu $a0, $t6, 0x20
/* 00430E64 24C60001 */  addiu $a2, $a2, 1
/* 00430E68 0320F809 */  jalr  $t9
/* 00430E6C 24A50001 */   addiu $a1, $a1, 1
/* 00430E70 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430E74 02002025 */  move  $a0, $s0
/* 00430E78 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430E7C 24050001 */  li    $a1, 1
/* 00430E80 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430E84 0320F809 */  jalr  $t9
/* 00430E88 00000000 */   nop   
/* 00430E8C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430E90 8FA4004C */  lw    $a0, 0x4c($sp)
/* 00430E94 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430E98 24050001 */  li    $a1, 1
/* 00430E9C 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430EA0 0320F809 */  jalr  $t9
/* 00430EA4 00000000 */   nop   
/* 00430EA8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430EAC 10000286 */  b     .L004318C8
/* 00430EB0 8FBF001C */   lw    $ra, 0x1c($sp)
.L00430EB4:
/* 00430EB4 97A40052 */  lhu   $a0, 0x52($sp)
/* 00430EB8 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430EBC 0004C2C2 */  srl   $t8, $a0, 0xb
/* 00430EC0 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430EC4 27040020 */  addiu $a0, $t8, 0x20
/* 00430EC8 0320F809 */  jalr  $t9
/* 00430ECC 24050001 */   li    $a1, 1
/* 00430ED0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430ED4 00000000 */  nop   
.L00430ED8:
/* 00430ED8 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430EDC 02002025 */  move  $a0, $s0
/* 00430EE0 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430EE4 0320F809 */  jalr  $t9
/* 00430EE8 24050001 */   li    $a1, 1
/* 00430EEC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430EF0 8FA4004C */  lw    $a0, 0x4c($sp)
/* 00430EF4 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430EF8 24050001 */  li    $a1, 1
/* 00430EFC 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430F00 0320F809 */  jalr  $t9
/* 00430F04 00000000 */   nop   
/* 00430F08 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430F0C 1000026E */  b     .L004318C8
/* 00430F10 8FBF001C */   lw    $ra, 0x1c($sp)
.L00430F14:
/* 00430F14 8FA80050 */  lw    $t0, 0x50($sp)
.L00430F18:
/* 00430F18 97B00052 */  lhu   $s0, 0x52($sp)
/* 00430F1C 00084980 */  sll   $t1, $t0, 6
/* 00430F20 000956C2 */  srl   $t2, $t1, 0x1b
/* 00430F24 97AD0050 */  lhu   $t5, 0x50($sp)
/* 00430F28 254B0020 */  addiu $t3, $t2, 0x20
/* 00430F2C 001062C2 */  srl   $t4, $s0, 0xb
/* 00430F30 25900020 */  addiu $s0, $t4, 0x20
/* 00430F34 0008CD40 */  sll   $t9, $t0, 0x15
/* 00430F38 8F8C8994 */  lw     $t4, %got(mad_latency)($gp)
/* 00430F3C AFAB0030 */  sw    $t3, 0x30($sp)
/* 00430F40 0019C6C2 */  srl   $t8, $t9, 0x1b
/* 00430F44 310A0003 */  andi  $t2, $t0, 3
/* 00430F48 31AE001F */  andi  $t6, $t5, 0x1f
/* 00430F4C 25CF0020 */  addiu $t7, $t6, 0x20
/* 00430F50 27090020 */  addiu $t1, $t8, 0x20
/* 00430F54 000A5880 */  sll   $t3, $t2, 2
/* 00430F58 AFAF004C */  sw    $t7, 0x4c($sp)
/* 00430F5C AFA90044 */  sw    $t1, 0x44($sp)
/* 00430F60 016C6821 */  addu  $t5, $t3, $t4
/* 00430F64 8DA20000 */  lw    $v0, ($t5)
/* 00430F68 8F998020 */  lw    $t9, %got(func_0042F3BC)($gp)
/* 00430F6C 24440001 */  addiu $a0, $v0, 1
/* 00430F70 2739F3BC */  addiu $t9, %lo(func_0042F3BC) # addiu $t9, $t9, -0xc44
/* 00430F74 0320F809 */  jalr  $t9
/* 00430F78 AFA40024 */   sw    $a0, 0x24($sp)
/* 00430F7C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430F80 8FA40044 */  lw    $a0, 0x44($sp)
/* 00430F84 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 00430F88 8FA50024 */  lw    $a1, 0x24($sp)
/* 00430F8C 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 00430F90 0320F809 */  jalr  $t9
/* 00430F94 00000000 */   nop   
/* 00430F98 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430F9C 8FA40044 */  lw    $a0, 0x44($sp)
/* 00430FA0 8F8E8B3C */  lw     $t6, %got(fp32regs)($gp)
/* 00430FA4 00000000 */  nop   
/* 00430FA8 91CE0000 */  lbu   $t6, ($t6)
/* 00430FAC 00000000 */  nop   
/* 00430FB0 15C00008 */  bnez  $t6, .L00430FD4
/* 00430FB4 00000000 */   nop   
/* 00430FB8 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 00430FBC 8FA50024 */  lw    $a1, 0x24($sp)
/* 00430FC0 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 00430FC4 0320F809 */  jalr  $t9
/* 00430FC8 24840001 */   addiu $a0, $a0, 1
/* 00430FCC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430FD0 00000000 */  nop   
.L00430FD4:
/* 00430FD4 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430FD8 8FA40030 */  lw    $a0, 0x30($sp)
/* 00430FDC 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430FE0 0320F809 */  jalr  $t9
/* 00430FE4 24050001 */   li    $a1, 1
/* 00430FE8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00430FEC 02002025 */  move  $a0, $s0
/* 00430FF0 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00430FF4 24050001 */  li    $a1, 1
/* 00430FF8 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00430FFC 0320F809 */  jalr  $t9
/* 00431000 00000000 */   nop   
/* 00431004 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00431008 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0043100C 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00431010 24050001 */  li    $a1, 1
/* 00431014 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00431018 0320F809 */  jalr  $t9
/* 0043101C 00000000 */   nop   
/* 00431020 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00431024 00000000 */  nop   
/* 00431028 8F8F8B3C */  lw     $t7, %got(fp32regs)($gp)
/* 0043102C 00000000 */  nop   
/* 00431030 91EF0000 */  lbu   $t7, ($t7)
/* 00431034 00000000 */  nop   
/* 00431038 15E00223 */  bnez  $t7, .L004318C8
/* 0043103C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00431040 8FB90050 */  lw    $t9, 0x50($sp)
/* 00431044 24010001 */  li    $at, 1
/* 00431048 33380003 */  andi  $t8, $t9, 3
/* 0043104C 1701021D */  bne   $t8, $at, .L004318C4
/* 00431050 24050001 */   li    $a1, 1
/* 00431054 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00431058 8FA40030 */  lw    $a0, 0x30($sp)
/* 0043105C 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00431060 0320F809 */  jalr  $t9
/* 00431064 24840001 */   addiu $a0, $a0, 1
/* 00431068 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043106C 26040001 */  addiu $a0, $s0, 1
/* 00431070 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00431074 24050001 */  li    $a1, 1
/* 00431078 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0043107C 0320F809 */  jalr  $t9
/* 00431080 00000000 */   nop   
/* 00431084 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00431088 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0043108C 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00431090 24050001 */  li    $a1, 1
/* 00431094 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00431098 0320F809 */  jalr  $t9
/* 0043109C 24840001 */   addiu $a0, $a0, 1
/* 004310A0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004310A4 10000208 */  b     .L004318C8
/* 004310A8 8FBF001C */   lw    $ra, 0x1c($sp)
.L004310AC:
/* 004310AC 2E010016 */  sltiu $at, $s0, 0x16
/* 004310B0 102001EB */  beqz  $at, .L00431860
/* 004310B4 02002825 */   move  $a1, $s0
/* 004310B8 8F81806C */  lw    $at, %got(jtbl_10015AEC)($gp)
/* 004310BC 00054880 */  sll   $t1, $a1, 2
/* 004310C0 00290821 */  addu  $at, $at, $t1
/* 004310C4 8C295AEC */  lw    $t1, %lo(jtbl_10015AEC)($at)
/* 004310C8 00000000 */  nop   
/* 004310CC 013C4821 */  addu  $t1, $t1, $gp
/* 004310D0 01200008 */  jr    $t1
/* 004310D4 00000000 */   nop   
.L004310D8:
/* 004310D8 8F998020 */  lw    $t9, %got(func_0042F244)($gp)
/* 004310DC 00000000 */  nop   
/* 004310E0 2739F244 */  addiu $t9, %lo(func_0042F244) # addiu $t9, $t9, -0xdbc
/* 004310E4 0320F809 */  jalr  $t9
/* 004310E8 00000000 */   nop   
/* 004310EC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004310F0 97A40050 */  lhu   $a0, 0x50($sp)
/* 004310F4 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 004310F8 3088001F */  andi  $t0, $a0, 0x1f
/* 004310FC 00085082 */  srl   $t2, $t0, 2
/* 00431100 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00431104 25440040 */  addiu $a0, $t2, 0x40
/* 00431108 0320F809 */  jalr  $t9
/* 0043110C 00002825 */   move  $a1, $zero
/* 00431110 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00431114 100001EC */  b     .L004318C8
/* 00431118 8FBF001C */   lw    $ra, 0x1c($sp)
.L0043111C:
/* 0043111C 8F838AB8 */  lw     $v1, %got(mtf_hazard)($gp)
/* 00431120 8F8C8088 */  lw    $t4, %got(B_10023644)($gp)
/* 00431124 8C6B0000 */  lw    $t3, ($v1)
/* 00431128 8D8C3644 */  lw    $t4, %lo(B_10023644)($t4)
/* 0043112C 8F85892C */  lw     $a1, %got(load_latency)($gp)
/* 00431130 AD8B0034 */  sw    $t3, 0x34($t4)
/* 00431134 97A40052 */  lhu   $a0, 0x52($sp)
/* 00431138 8F998020 */  lw    $t9, %got(func_0042E834)($gp)
/* 0043113C 8C660000 */  lw    $a2, ($v1)
/* 00431140 8CA50000 */  lw    $a1, ($a1)
/* 00431144 00046AC2 */  srl   $t5, $a0, 0xb
/* 00431148 2739E834 */  addiu $t9, %lo(func_0042E834) # addiu $t9, $t9, -0x17cc
/* 0043114C 25A40020 */  addiu $a0, $t5, 0x20
/* 00431150 24C60001 */  addiu $a2, $a2, 1
/* 00431154 0320F809 */  jalr  $t9
/* 00431158 24A50001 */   addiu $a1, $a1, 1
/* 0043115C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00431160 8FA4004C */  lw    $a0, 0x4c($sp)
/* 00431164 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00431168 24050001 */  li    $a1, 1
/* 0043116C 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00431170 0320F809 */  jalr  $t9
/* 00431174 00000000 */   nop   
/* 00431178 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043117C 100001D2 */  b     .L004318C8
/* 00431180 8FBF001C */   lw    $ra, 0x1c($sp)
.L00431184:
/* 00431184 8F838AB8 */  lw     $v1, %got(mtf_hazard)($gp)
/* 00431188 8F998088 */  lw    $t9, %got(B_10023644)($gp)
/* 0043118C 8C6E0000 */  lw    $t6, ($v1)
/* 00431190 8F393644 */  lw    $t9, %lo(B_10023644)($t9)
/* 00431194 25CF0001 */  addiu $t7, $t6, 1
/* 00431198 AF2F0034 */  sw    $t7, 0x34($t9)
/* 0043119C 8F85892C */  lw     $a1, %got(load_latency)($gp)
/* 004311A0 8F998020 */  lw    $t9, %got(func_0042E834)($gp)
/* 004311A4 8C660000 */  lw    $a2, ($v1)
/* 004311A8 8CA50000 */  lw    $a1, ($a1)
/* 004311AC 2739E834 */  addiu $t9, %lo(func_0042E834) # addiu $t9, $t9, -0x17cc
/* 004311B0 2404004D */  li    $a0, 77
/* 004311B4 24C60001 */  addiu $a2, $a2, 1
/* 004311B8 0320F809 */  jalr  $t9
/* 004311BC 24A50001 */   addiu $a1, $a1, 1
/* 004311C0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004311C4 2404004C */  li    $a0, 76
/* 004311C8 8F838AB8 */  lw     $v1, %got(mtf_hazard)($gp)
/* 004311CC 8F85892C */  lw     $a1, %got(load_latency)($gp)
/* 004311D0 8F998020 */  lw    $t9, %got(func_0042E834)($gp)
/* 004311D4 8C660000 */  lw    $a2, ($v1)
/* 004311D8 8CA50000 */  lw    $a1, ($a1)
/* 004311DC 2739E834 */  addiu $t9, %lo(func_0042E834) # addiu $t9, $t9, -0x17cc
/* 004311E0 24C60002 */  addiu $a2, $a2, 2
/* 004311E4 0320F809 */  jalr  $t9
/* 004311E8 24A50002 */   addiu $a1, $a1, 2
/* 004311EC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004311F0 8FA4004C */  lw    $a0, 0x4c($sp)
/* 004311F4 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 004311F8 24050001 */  li    $a1, 1
/* 004311FC 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00431200 0320F809 */  jalr  $t9
/* 00431204 00000000 */   nop   
/* 00431208 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043120C 100001AE */  b     .L004318C8
/* 00431210 8FBF001C */   lw    $ra, 0x1c($sp)
.L00431214:
/* 00431214 8F838AB8 */  lw     $v1, %got(mtf_hazard)($gp)
/* 00431218 8F898088 */  lw    $t1, %got(B_10023644)($gp)
/* 0043121C 8C780000 */  lw    $t8, ($v1)
/* 00431220 8D293644 */  lw    $t1, %lo(B_10023644)($t1)
/* 00431224 8F85892C */  lw     $a1, %got(load_latency)($gp)
/* 00431228 AD380034 */  sw    $t8, 0x34($t1)
/* 0043122C 8F998020 */  lw    $t9, %got(func_0042E834)($gp)
/* 00431230 8C660000 */  lw    $a2, ($v1)
/* 00431234 8CA50000 */  lw    $a1, ($a1)
/* 00431238 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0043123C 2739E834 */  addiu $t9, %lo(func_0042E834) # addiu $t9, $t9, -0x17cc
/* 00431240 24C60001 */  addiu $a2, $a2, 1
/* 00431244 0320F809 */  jalr  $t9
/* 00431248 24A50001 */   addiu $a1, $a1, 1
/* 0043124C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00431250 97A40052 */  lhu   $a0, 0x52($sp)
/* 00431254 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00431258 000442C2 */  srl   $t0, $a0, 0xb
/* 0043125C 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00431260 25040020 */  addiu $a0, $t0, 0x20
/* 00431264 0320F809 */  jalr  $t9
/* 00431268 24050001 */   li    $a1, 1
/* 0043126C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00431270 10000195 */  b     .L004318C8
/* 00431274 8FBF001C */   lw    $ra, 0x1c($sp)
.L00431278:
/* 00431278 8F838AB8 */  lw     $v1, %got(mtf_hazard)($gp)
/* 0043127C 8F8B8088 */  lw    $t3, %got(B_10023644)($gp)
/* 00431280 8C6A0000 */  lw    $t2, ($v1)
/* 00431284 8D6B3644 */  lw    $t3, %lo(B_10023644)($t3)
/* 00431288 8F85892C */  lw     $a1, %got(load_latency)($gp)
/* 0043128C AD6A0034 */  sw    $t2, 0x34($t3)
/* 00431290 8F998020 */  lw    $t9, %got(func_0042E834)($gp)
/* 00431294 8C660000 */  lw    $a2, ($v1)
/* 00431298 8CA50000 */  lw    $a1, ($a1)
/* 0043129C 8FA4004C */  lw    $a0, 0x4c($sp)
/* 004312A0 2739E834 */  addiu $t9, %lo(func_0042E834) # addiu $t9, $t9, -0x17cc
/* 004312A4 24C60001 */  addiu $a2, $a2, 1
/* 004312A8 0320F809 */  jalr  $t9
/* 004312AC 24A50001 */   addiu $a1, $a1, 1
/* 004312B0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004312B4 2404004C */  li    $a0, 76
/* 004312B8 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 004312BC 24050001 */  li    $a1, 1
/* 004312C0 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 004312C4 0320F809 */  jalr  $t9
/* 004312C8 00000000 */   nop   
/* 004312CC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004312D0 2404004D */  li    $a0, 77
/* 004312D4 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 004312D8 24050001 */  li    $a1, 1
/* 004312DC 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 004312E0 0320F809 */  jalr  $t9
/* 004312E4 00000000 */   nop   
/* 004312E8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004312EC 10000176 */  b     .L004318C8
/* 004312F0 8FBF001C */   lw    $ra, 0x1c($sp)
.L004312F4:
/* 004312F4 8FB80050 */  lw    $t8, 0x50($sp)
/* 004312F8 8FAC004C */  lw    $t4, 0x4c($sp)
/* 004312FC 8F888964 */  lw     $t0, %got(fp_latency)($gp)
/* 00431300 3303003F */  andi  $v1, $t8, 0x3f
/* 00431304 97AE0052 */  lhu   $t6, 0x52($sp)
/* 00431308 00035080 */  sll   $t2, $v1, 2
/* 0043130C 8D080000 */  lw    $t0, ($t0)
/* 00431310 01435023 */  subu  $t2, $t2, $v1
/* 00431314 258D0020 */  addiu $t5, $t4, 0x20
/* 00431318 000A50C0 */  sll   $t2, $t2, 3
/* 0043131C 000E7AC2 */  srl   $t7, $t6, 0xb
/* 00431320 AFAD004C */  sw    $t5, 0x4c($sp)
/* 00431324 25F90020 */  addiu $t9, $t7, 0x20
/* 00431328 00106080 */  sll   $t4, $s0, 2
/* 0043132C 010A5821 */  addu  $t3, $t0, $t2
/* 00431330 AFB90044 */  sw    $t9, 0x44($sp)
/* 00431334 016C6821 */  addu  $t5, $t3, $t4
/* 00431338 8DA2FFC0 */  lw    $v0, -0x40($t5)
/* 0043133C 8F998020 */  lw    $t9, %got(func_0042F3BC)($gp)
/* 00431340 00183D40 */  sll   $a3, $t8, 0x15
/* 00431344 00074EC2 */  srl   $t1, $a3, 0x1b
/* 00431348 25270020 */  addiu $a3, $t1, 0x20
/* 0043134C 24440001 */  addiu $a0, $v0, 1
/* 00431350 2739F3BC */  addiu $t9, %lo(func_0042F3BC) # addiu $t9, $t9, -0xc44
/* 00431354 AFA40024 */  sw    $a0, 0x24($sp)
/* 00431358 AFA70040 */  sw    $a3, 0x40($sp)
/* 0043135C AFA50028 */  sw    $a1, 0x28($sp)
/* 00431360 0320F809 */  jalr  $t9
/* 00431364 AFA3003C */   sw    $v1, 0x3c($sp)
/* 00431368 8FA3003C */  lw    $v1, 0x3c($sp)
/* 0043136C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00431370 8FA70040 */  lw    $a3, 0x40($sp)
/* 00431374 2C610040 */  sltiu $at, $v1, 0x40
/* 00431378 1020012C */  beqz  $at, .L0043182C
/* 0043137C 00601025 */   move  $v0, $v1
/* 00431380 8F81806C */  lw    $at, %got(jtbl_10015B44)($gp)
/* 00431384 00027080 */  sll   $t6, $v0, 2
/* 00431388 002E0821 */  addu  $at, $at, $t6
/* 0043138C 8C2E5B44 */  lw    $t6, %lo(jtbl_10015B44)($at)
/* 00431390 00000000 */  nop   
/* 00431394 01DC7021 */  addu  $t6, $t6, $gp
/* 00431398 01C00008 */  jr    $t6
/* 0043139C 00000000 */   nop   
.L004313A0:
/* 004313A0 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 004313A4 8FA50024 */  lw    $a1, 0x24($sp)
/* 004313A8 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 004313AC 00E02025 */  move  $a0, $a3
/* 004313B0 0320F809 */  jalr  $t9
/* 004313B4 AFA70040 */   sw    $a3, 0x40($sp)
/* 004313B8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004313BC 8FA70040 */  lw    $a3, 0x40($sp)
/* 004313C0 8F8F8B3C */  lw     $t7, %got(fp32regs)($gp)
/* 004313C4 00000000 */  nop   
/* 004313C8 91EF0000 */  lbu   $t7, ($t7)
/* 004313CC 00000000 */  nop   
/* 004313D0 15E00008 */  bnez  $t7, .L004313F4
/* 004313D4 00000000 */   nop   
/* 004313D8 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 004313DC 8FA50024 */  lw    $a1, 0x24($sp)
/* 004313E0 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 004313E4 0320F809 */  jalr  $t9
/* 004313E8 24E40001 */   addiu $a0, $a3, 1
/* 004313EC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004313F0 00000000 */  nop   
.L004313F4:
/* 004313F4 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 004313F8 8FA40044 */  lw    $a0, 0x44($sp)
/* 004313FC 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00431400 0320F809 */  jalr  $t9
/* 00431404 24050001 */   li    $a1, 1
/* 00431408 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043140C 8FA20028 */  lw    $v0, 0x28($sp)
/* 00431410 8F998B3C */  lw     $t9, %got(fp32regs)($gp)
/* 00431414 24010011 */  li    $at, 17
/* 00431418 93390000 */  lbu   $t9, ($t9)
/* 0043141C 00000000 */  nop   
/* 00431420 17200129 */  bnez  $t9, .L004318C8
/* 00431424 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00431428 10410004 */  beq   $v0, $at, .L0043143C
/* 0043142C 24050001 */   li    $a1, 1
/* 00431430 24010012 */  li    $at, 18
/* 00431434 14410124 */  bne   $v0, $at, .L004318C8
/* 00431438 8FBF001C */   lw    $ra, 0x1c($sp)
.L0043143C:
/* 0043143C 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00431440 8FA40044 */  lw    $a0, 0x44($sp)
/* 00431444 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00431448 0320F809 */  jalr  $t9
/* 0043144C 24840001 */   addiu $a0, $a0, 1
/* 00431450 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00431454 1000011C */  b     .L004318C8
/* 00431458 8FBF001C */   lw    $ra, 0x1c($sp)
.L0043145C:
/* 0043145C 24010002 */  li    $at, 2
/* 00431460 1441000D */  bne   $v0, $at, .L00431498
/* 00431464 00E02025 */   move  $a0, $a3
/* 00431468 8F898BDC */  lw     $t1, %got(r4300_mul)($gp)
/* 0043146C 00000000 */  nop   
/* 00431470 91290000 */  lbu   $t1, ($t1)
/* 00431474 00000000 */  nop   
/* 00431478 11200007 */  beqz  $t1, .L00431498
/* 0043147C 00000000 */   nop   
/* 00431480 8F988904 */  lw     $t8, %got(branch_latency)($gp)
/* 00431484 8F888088 */  lw    $t0, %got(B_10023644)($gp)
/* 00431488 8F180000 */  lw    $t8, ($t8)
/* 0043148C 8D083644 */  lw    $t0, %lo(B_10023644)($t0)
/* 00431490 00000000 */  nop   
/* 00431494 AD180034 */  sw    $t8, 0x34($t0)
.L00431498:
/* 00431498 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 0043149C 8FA50024 */  lw    $a1, 0x24($sp)
/* 004314A0 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 004314A4 AFA20020 */  sw    $v0, 0x20($sp)
/* 004314A8 0320F809 */  jalr  $t9
/* 004314AC AFA70040 */   sw    $a3, 0x40($sp)
/* 004314B0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004314B4 8FA70040 */  lw    $a3, 0x40($sp)
/* 004314B8 8F8A8B3C */  lw     $t2, %got(fp32regs)($gp)
/* 004314BC 00000000 */  nop   
/* 004314C0 914A0000 */  lbu   $t2, ($t2)
/* 004314C4 00000000 */  nop   
/* 004314C8 15400008 */  bnez  $t2, .L004314EC
/* 004314CC 00000000 */   nop   
/* 004314D0 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 004314D4 8FA50024 */  lw    $a1, 0x24($sp)
/* 004314D8 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 004314DC 0320F809 */  jalr  $t9
/* 004314E0 24E40001 */   addiu $a0, $a3, 1
/* 004314E4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004314E8 00000000 */  nop   
.L004314EC:
/* 004314EC 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 004314F0 8FA4004C */  lw    $a0, 0x4c($sp)
/* 004314F4 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 004314F8 0320F809 */  jalr  $t9
/* 004314FC 24050001 */   li    $a1, 1
/* 00431500 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00431504 8FA40044 */  lw    $a0, 0x44($sp)
/* 00431508 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 0043150C 24050001 */  li    $a1, 1
/* 00431510 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00431514 0320F809 */  jalr  $t9
/* 00431518 00000000 */   nop   
/* 0043151C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00431520 8FA20028 */  lw    $v0, 0x28($sp)
/* 00431524 8F8B8B3C */  lw     $t3, %got(fp32regs)($gp)
/* 00431528 24010011 */  li    $at, 17
/* 0043152C 916B0000 */  lbu   $t3, ($t3)
/* 00431530 00000000 */  nop   
/* 00431534 15600015 */  bnez  $t3, .L0043158C
/* 00431538 8FAC0020 */   lw    $t4, 0x20($sp)
/* 0043153C 10410004 */  beq   $v0, $at, .L00431550
/* 00431540 24050001 */   li    $a1, 1
/* 00431544 24010012 */  li    $at, 18
/* 00431548 14410010 */  bne   $v0, $at, .L0043158C
/* 0043154C 8FAC0020 */   lw    $t4, 0x20($sp)
.L00431550:
/* 00431550 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00431554 8FA4004C */  lw    $a0, 0x4c($sp)
/* 00431558 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0043155C 0320F809 */  jalr  $t9
/* 00431560 24840001 */   addiu $a0, $a0, 1
/* 00431564 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00431568 8FA40044 */  lw    $a0, 0x44($sp)
/* 0043156C 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00431570 24050001 */  li    $a1, 1
/* 00431574 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00431578 0320F809 */  jalr  $t9
/* 0043157C 24840001 */   addiu $a0, $a0, 1
/* 00431580 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00431584 00000000 */  nop   
/* 00431588 8FAC0020 */  lw    $t4, 0x20($sp)
.L0043158C:
/* 0043158C 24010002 */  li    $at, 2
/* 00431590 158100CD */  bne   $t4, $at, .L004318C8
/* 00431594 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00431598 8F908088 */  lw    $s0, %got(B_10026388)($gp)
/* 0043159C 00000000 */  nop   
/* 004315A0 26106388 */  addiu $s0, %lo(B_10026388) # addiu $s0, $s0, 0x6388
/* 004315A4 8E050000 */  lw    $a1, ($s0)
/* 004315A8 00000000 */  nop   
/* 004315AC 10A0000F */  beqz  $a1, .L004315EC
/* 004315B0 00000000 */   nop   
/* 004315B4 8F8D8088 */  lw    $t5, %got(B_10023634)($gp)
/* 004315B8 24060003 */  li    $a2, 3
/* 004315BC 8DAD3634 */  lw    $t5, %lo(B_10023634)($t5)
/* 004315C0 00000000 */  nop   
/* 004315C4 15A00009 */  bnez  $t5, .L004315EC
/* 004315C8 00000000 */   nop   
/* 004315CC 8F848088 */  lw    $a0, %got(B_10023644)($gp)
/* 004315D0 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 004315D4 8C843644 */  lw    $a0, %lo(B_10023644)($a0)
/* 004315D8 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 004315DC 0320F809 */  jalr  $t9
/* 004315E0 00003825 */   move  $a3, $zero
/* 004315E4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004315E8 00000000 */  nop   
.L004315EC:
/* 004315EC 8F8E8088 */  lw    $t6, %got(B_10023644)($gp)
/* 004315F0 00000000 */  nop   
/* 004315F4 8DCE3644 */  lw    $t6, %lo(B_10023644)($t6)
/* 004315F8 100000B2 */  b     .L004318C4
/* 004315FC AE0E0000 */   sw    $t6, ($s0)
.L00431600:
/* 00431600 8F8F8B04 */  lw     $t7, %got(isa)($gp)
/* 00431604 00000000 */  nop   
/* 00431608 91EF0000 */  lbu   $t7, ($t7)
/* 0043160C 00000000 */  nop   
/* 00431610 29E10003 */  slti  $at, $t7, 3
/* 00431614 10200019 */  beqz  $at, .L0043167C
/* 00431618 00000000 */   nop   
/* 0043161C 8F898088 */  lw    $t1, %got(B_10023644)($gp)
/* 00431620 24190002 */  li    $t9, 2
/* 00431624 8D293644 */  lw    $t1, %lo(B_10023644)($t1)
/* 00431628 2404004C */  li    $a0, 76
/* 0043162C AD390034 */  sw    $t9, 0x34($t1)
/* 00431630 8F998020 */  lw    $t9, %got(func_0042E834)($gp)
/* 00431634 8FA50024 */  lw    $a1, 0x24($sp)
/* 00431638 2739E834 */  addiu $t9, %lo(func_0042E834) # addiu $t9, $t9, -0x17cc
/* 0043163C 0320F809 */  jalr  $t9
/* 00431640 24060002 */   li    $a2, 2
/* 00431644 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00431648 8FA40050 */  lw    $a0, 0x50($sp)
/* 0043164C 8F998020 */  lw    $t9, %got(func_0042E834)($gp)
/* 00431650 0004C540 */  sll   $t8, $a0, 0x15
/* 00431654 001846C2 */  srl   $t0, $t8, 0x1b
/* 00431658 00085082 */  srl   $t2, $t0, 2
/* 0043165C 8FA50024 */  lw    $a1, 0x24($sp)
/* 00431660 2739E834 */  addiu $t9, %lo(func_0042E834) # addiu $t9, $t9, -0x17cc
/* 00431664 25440040 */  addiu $a0, $t2, 0x40
/* 00431668 0320F809 */  jalr  $t9
/* 0043166C 24060002 */   li    $a2, 2
/* 00431670 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00431674 10000012 */  b     .L004316C0
/* 00431678 00000000 */   nop   
.L0043167C:
/* 0043167C 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 00431680 8FA50024 */  lw    $a1, 0x24($sp)
/* 00431684 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 00431688 0320F809 */  jalr  $t9
/* 0043168C 2404004C */   li    $a0, 76
/* 00431690 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00431694 8FA40050 */  lw    $a0, 0x50($sp)
/* 00431698 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 0043169C 00045D40 */  sll   $t3, $a0, 0x15
/* 004316A0 000B66C2 */  srl   $t4, $t3, 0x1b
/* 004316A4 000C6882 */  srl   $t5, $t4, 2
/* 004316A8 8FA50024 */  lw    $a1, 0x24($sp)
/* 004316AC 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 004316B0 0320F809 */  jalr  $t9
/* 004316B4 25A40040 */   addiu $a0, $t5, 0x40
/* 004316B8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004316BC 00000000 */  nop   
.L004316C0:
/* 004316C0 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 004316C4 8FA4004C */  lw    $a0, 0x4c($sp)
/* 004316C8 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 004316CC 0320F809 */  jalr  $t9
/* 004316D0 24050001 */   li    $a1, 1
/* 004316D4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004316D8 8FA40044 */  lw    $a0, 0x44($sp)
/* 004316DC 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 004316E0 24050001 */  li    $a1, 1
/* 004316E4 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 004316E8 0320F809 */  jalr  $t9
/* 004316EC 00000000 */   nop   
/* 004316F0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004316F4 8FA20028 */  lw    $v0, 0x28($sp)
/* 004316F8 8F8E8B3C */  lw     $t6, %got(fp32regs)($gp)
/* 004316FC 24010011 */  li    $at, 17
/* 00431700 91CE0000 */  lbu   $t6, ($t6)
/* 00431704 00000000 */  nop   
/* 00431708 15C0006F */  bnez  $t6, .L004318C8
/* 0043170C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00431710 10410004 */  beq   $v0, $at, .L00431724
/* 00431714 24050001 */   li    $a1, 1
/* 00431718 24010012 */  li    $at, 18
/* 0043171C 1441006A */  bne   $v0, $at, .L004318C8
/* 00431720 8FBF001C */   lw    $ra, 0x1c($sp)
.L00431724:
/* 00431724 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00431728 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0043172C 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00431730 0320F809 */  jalr  $t9
/* 00431734 24840001 */   addiu $a0, $a0, 1
/* 00431738 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043173C 8FA40044 */  lw    $a0, 0x44($sp)
/* 00431740 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00431744 24050001 */  li    $a1, 1
/* 00431748 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 0043174C 0320F809 */  jalr  $t9
/* 00431750 24840001 */   addiu $a0, $a0, 1
/* 00431754 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00431758 1000005B */  b     .L004318C8
/* 0043175C 8FBF001C */   lw    $ra, 0x1c($sp)
.L00431760:
/* 00431760 8F85891C */  lw     $a1, %got(add_latency)($gp)
/* 00431764 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 00431768 8CA50000 */  lw    $a1, ($a1)
/* 0043176C 8FA40044 */  lw    $a0, 0x44($sp)
/* 00431770 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 00431774 0320F809 */  jalr  $t9
/* 00431778 24A50001 */   addiu $a1, $a1, 1
/* 0043177C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00431780 02002025 */  move  $a0, $s0
/* 00431784 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00431788 24050001 */  li    $a1, 1
/* 0043178C 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00431790 0320F809 */  jalr  $t9
/* 00431794 00000000 */   nop   
/* 00431798 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043179C 97A40050 */  lhu   $a0, 0x50($sp)
/* 004317A0 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 004317A4 308F001F */  andi  $t7, $a0, 0x1f
/* 004317A8 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 004317AC 01E02025 */  move  $a0, $t7
/* 004317B0 0320F809 */  jalr  $t9
/* 004317B4 24050001 */   li    $a1, 1
/* 004317B8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004317BC 10000042 */  b     .L004318C8
/* 004317C0 8FBF001C */   lw    $ra, 0x1c($sp)
.L004317C4:
/* 004317C4 8F85891C */  lw     $a1, %got(add_latency)($gp)
/* 004317C8 8F998020 */  lw    $t9, %got(func_0042E2E0)($gp)
/* 004317CC 8CA50000 */  lw    $a1, ($a1)
/* 004317D0 8FA40044 */  lw    $a0, 0x44($sp)
/* 004317D4 2739E2E0 */  addiu $t9, %lo(func_0042E2E0) # addiu $t9, $t9, -0x1d20
/* 004317D8 0320F809 */  jalr  $t9
/* 004317DC 24A50001 */   addiu $a1, $a1, 1
/* 004317E0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004317E4 02002025 */  move  $a0, $s0
/* 004317E8 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 004317EC 24050001 */  li    $a1, 1
/* 004317F0 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 004317F4 0320F809 */  jalr  $t9
/* 004317F8 00000000 */   nop   
/* 004317FC 97A40050 */  lhu   $a0, 0x50($sp)
/* 00431800 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00431804 3099001F */  andi  $t9, $a0, 0x1f
/* 00431808 00194882 */  srl   $t1, $t9, 2
/* 0043180C 8F998020 */  lw    $t9, %got(func_0042EB84)($gp)
/* 00431810 25240040 */  addiu $a0, $t1, 0x40
/* 00431814 2739EB84 */  addiu $t9, %lo(func_0042EB84) # addiu $t9, $t9, -0x147c
/* 00431818 0320F809 */  jalr  $t9
/* 0043181C 24050001 */   li    $a1, 1
/* 00431820 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00431824 10000028 */  b     .L004318C8
/* 00431828 8FBF001C */   lw    $ra, 0x1c($sp)
.L0043182C:
/* 0043182C 8F888A58 */  lw     $t0, %got(cop1func_name)($gp)
/* 00431830 0003C080 */  sll   $t8, $v1, 2
/* 00431834 8F8480AC */  lw     $a0, %got(__iob)($gp)
/* 00431838 8F85806C */  lw    $a1, %got(RO_10015428)($gp)
/* 0043183C 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 00431840 03085021 */  addu  $t2, $t8, $t0
/* 00431844 8D460000 */  lw    $a2, ($t2)
/* 00431848 24840020 */  addiu $a0, $a0, 0x20
/* 0043184C 0320F809 */  jalr  $t9
/* 00431850 24A55428 */   addiu $a1, %lo(RO_10015428) # addiu $a1, $a1, 0x5428
/* 00431854 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00431858 1000001B */  b     .L004318C8
/* 0043185C 8FBF001C */   lw    $ra, 0x1c($sp)
.L00431860:
/* 00431860 8F8C89A4 */  lw     $t4, %got(cop1op_name)($gp)
/* 00431864 00105880 */  sll   $t3, $s0, 2
/* 00431868 8F8480AC */  lw     $a0, %got(__iob)($gp)
/* 0043186C 8F85806C */  lw    $a1, %got(RO_10015454)($gp)
/* 00431870 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 00431874 016C6821 */  addu  $t5, $t3, $t4
/* 00431878 8DA60000 */  lw    $a2, ($t5)
/* 0043187C 24840020 */  addiu $a0, $a0, 0x20
/* 00431880 0320F809 */  jalr  $t9
/* 00431884 24A55454 */   addiu $a1, %lo(RO_10015454) # addiu $a1, $a1, 0x5454
/* 00431888 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043188C 1000000E */  b     .L004318C8
/* 00431890 8FBF001C */   lw    $ra, 0x1c($sp)
.L00431894:
/* 00431894 8F8F8A4C */  lw     $t7, %got(op_name)($gp)
/* 00431898 00077080 */  sll   $t6, $a3, 2
/* 0043189C 01CFC821 */  addu  $t9, $t6, $t7
/* 004318A0 8F260000 */  lw    $a2, ($t9)
/* 004318A4 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 004318A8 8F8480AC */  lw     $a0, %got(__iob)($gp)
/* 004318AC 8F85806C */  lw    $a1, %got(RO_10015480)($gp)
/* 004318B0 24840020 */  addiu $a0, $a0, 0x20
/* 004318B4 0320F809 */  jalr  $t9
/* 004318B8 24A55480 */   addiu $a1, %lo(RO_10015480) # addiu $a1, $a1, 0x5480
/* 004318BC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004318C0 00000000 */  nop   
.L004318C4:
/* 004318C4 8FBF001C */  lw    $ra, 0x1c($sp)
.L004318C8:
/* 004318C8 8FB00014 */  lw    $s0, 0x14($sp)
/* 004318CC 03E00008 */  jr    $ra
/* 004318D0 27BD0050 */   addiu $sp, $sp, 0x50

    .type func_004318D4, @function
func_004318D4:
    # 00434EDC reorganize_bb
/* 004318D4 3C1C0FC0 */  .cpload $t9
/* 004318D8 279C898C */  
/* 004318DC 0399E021 */  
/* 004318E0 8F818088 */  lw    $at, %got(B_10025A20)($gp)
/* 004318E4 8F8E8088 */  lw    $t6, %got(B_10024838)($gp)
/* 004318E8 AC205A20 */  sw    $zero, %lo(B_10025A20)($at)
/* 004318EC 8F818088 */  lw    $at, %got(B_10024E28)($gp)
/* 004318F0 25CE4838 */  addiu $t6, %lo(B_10024838) # addiu $t6, $t6, 0x4838
/* 004318F4 8F8F8088 */  lw    $t7, %got(B_10024E30)($gp)
/* 004318F8 AC2E4E28 */  sw    $t6, %lo(B_10024E28)($at)
/* 004318FC 8F818088 */  lw    $at, %got(B_10025420)($gp)
/* 00431900 25EF4E30 */  addiu $t7, %lo(B_10024E30) # addiu $t7, $t7, 0x4e30
/* 00431904 AC2F5420 */  sw    $t7, %lo(B_10025420)($at)
/* 00431908 8F818088 */  lw    $at, %got(B_10024238)($gp)
/* 0043190C 27BDFF80 */  addiu $sp, $sp, -0x80
/* 00431910 AC204238 */  sw    $zero, %lo(B_10024238)($at)
/* 00431914 8F818088 */  lw    $at, %got(B_1002423C)($gp)
/* 00431918 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0043191C AC20423C */  sw    $zero, %lo(B_1002423C)($at)
/* 00431920 8F818088 */  lw    $at, %got(B_10024240)($gp)
/* 00431924 8F928088 */  lw    $s2, %got(B_10023644)($gp)
/* 00431928 AC204240 */  sw    $zero, %lo(B_10024240)($at)
/* 0043192C 8F818088 */  lw    $at, %got(B_10024244)($gp)
/* 00431930 26523644 */  addiu $s2, %lo(B_10023644) # addiu $s2, $s2, 0x3644
/* 00431934 AC204244 */  sw    $zero, %lo(B_10024244)($at)
/* 00431938 8F818088 */  lw    $at, %got(B_10025A18)($gp)
/* 0043193C AFB6002C */  sw    $s6, 0x2c($sp)
/* 00431940 AC205A18 */  sw    $zero, %lo(B_10025A18)($at)
/* 00431944 8F818088 */  lw    $at, %got(B_10026388)($gp)
/* 00431948 AFB50028 */  sw    $s5, 0x28($sp)
/* 0043194C AC206388 */  sw    $zero, %lo(B_10026388)($at)
/* 00431950 8F818088 */  lw    $at, %got(B_10025A1C)($gp)
/* 00431954 AE400000 */  sw    $zero, ($s2)
/* 00431958 AC205A1C */  sw    $zero, %lo(B_10025A1C)($at)
/* 0043195C 8F818088 */  lw    $at, %got(B_1002364C)($gp)
/* 00431960 AFB40024 */  sw    $s4, 0x24($sp)
/* 00431964 AC20364C */  sw    $zero, %lo(B_1002364C)($at)
/* 00431968 8F81808C */  lw    $at, %got(B_1002DD74)($gp)
/* 0043196C AFBF003C */  sw    $ra, 0x3c($sp)
/* 00431970 AFBE0038 */  sw    $fp, 0x38($sp)
/* 00431974 AFBC0034 */  sw    $gp, 0x34($sp)
/* 00431978 AFB70030 */  sw    $s7, 0x30($sp)
/* 0043197C AFB30020 */  sw    $s3, 0x20($sp)
/* 00431980 AFB10018 */  sw    $s1, 0x18($sp)
/* 00431984 AFB00014 */  sw    $s0, 0x14($sp)
/* 00431988 AFA50084 */  sw    $a1, 0x84($sp)
/* 0043198C 0000A825 */  move  $s5, $zero
/* 00431990 0000A025 */  move  $s4, $zero
/* 00431994 0080B025 */  move  $s6, $a0
/* 00431998 18800183 */  blez  $a0, .L00431FA8
/* 0043199C AC20DD74 */   sw    $zero, %lo(B_1002DD74)($at)
/* 004319A0 0004C080 */  sll   $t8, $a0, 2
/* 004319A4 8F978088 */  lw    $s7, %got(B_10023638)($gp)
/* 004319A8 0304C021 */  addu  $t8, $t8, $a0
/* 004319AC 0018C0C0 */  sll   $t8, $t8, 3
/* 004319B0 8F9E8904 */  lw     $fp, %got(branch_latency)($gp)
/* 004319B4 AFB80044 */  sw    $t8, 0x44($sp)
/* 004319B8 26F73638 */  addiu $s7, %lo(B_10023638) # addiu $s7, $s7, 0x3638
.L004319BC:
/* 004319BC 8F898B40 */  lw     $t1, %got(pinstruction)($gp)
/* 004319C0 8E510000 */  lw    $s1, ($s2)
/* 004319C4 8F818088 */  lw    $at, %got(B_10023648)($gp)
/* 004319C8 AEF60000 */  sw    $s6, ($s7)
/* 004319CC 8FB90044 */  lw    $t9, 0x44($sp)
/* 004319D0 8D290000 */  lw    $t1, ($t1)
/* 004319D4 AC313648 */  sw    $s1, %lo(B_10023648)($at)
/* 004319D8 03291821 */  addu  $v1, $t9, $t1
/* 004319DC 8C620000 */  lw    $v0, ($v1)
/* 004319E0 3C017FFF */  lui   $at, 0x7fff
/* 004319E4 3421FFFF */  ori   $at, $at, 0xffff
/* 004319E8 1041016B */  beq   $v0, $at, .L00431F98
/* 004319EC 8FAA0044 */   lw    $t2, 0x44($sp)
/* 004319F0 906A0022 */  lbu   $t2, 0x22($v1)
/* 004319F4 00002825 */  move  $a1, $zero
/* 004319F8 15400002 */  bnez  $t2, .L00431A04
/* 004319FC 00000000 */   nop   
/* 00431A00 24050002 */  li    $a1, 2
.L00431A04:
/* 00431A04 906B0021 */  lbu   $t3, 0x21($v1)
/* 00431A08 34AC0001 */  ori   $t4, $a1, 1
/* 00431A0C 11600002 */  beqz  $t3, .L00431A18
/* 00431A10 00000000 */   nop   
/* 00431A14 01802825 */  move  $a1, $t4
.L00431A18:
/* 00431A18 14400006 */  bnez  $v0, .L00431A34
/* 00431A1C 30AD0002 */   andi  $t5, $a1, 2
/* 00431A20 15A00005 */  bnez  $t5, .L00431A38
/* 00431A24 30A20002 */   andi  $v0, $a1, 2
/* 00431A28 8FAE0084 */  lw    $t6, 0x84($sp)
/* 00431A2C 00000000 */  nop   
/* 00431A30 11C00158 */  beqz  $t6, .L00431F94
.L00431A34:
/* 00431A34 30A20002 */   andi  $v0, $a1, 2
.L00431A38:
/* 00431A38 10400045 */  beqz  $v0, .L00431B50
/* 00431A3C 00008025 */   move  $s0, $zero
/* 00431A40 12200044 */  beqz  $s1, .L00431B54
/* 00431A44 001568C0 */   sll   $t5, $s5, 3
/* 00431A48 8E2F0020 */  lw    $t7, 0x20($s1)
/* 00431A4C 24040014 */  li    $a0, 20
/* 00431A50 31F80002 */  andi  $t8, $t7, 2
/* 00431A54 1300003F */  beqz  $t8, .L00431B54
/* 00431A58 001568C0 */   sll   $t5, $s5, 3
/* 00431A5C 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 00431A60 AFA3006C */  sw    $v1, 0x6c($sp)
/* 00431A64 0320F809 */  jalr  $t9
/* 00431A68 AFA50068 */   sw    $a1, 0x68($sp)
/* 00431A6C 8E590000 */  lw    $t9, ($s2)
/* 00431A70 8FA3006C */  lw    $v1, 0x6c($sp)
/* 00431A74 8F290018 */  lw    $t1, 0x18($t9)
/* 00431A78 8FA50068 */  lw    $a1, 0x68($sp)
/* 00431A7C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00431A80 AC490000 */  sw    $t1, ($v0)
/* 00431A84 8E4A0000 */  lw    $t2, ($s2)
/* 00431A88 00000000 */  nop   
/* 00431A8C 8D410000 */  lw    $at, ($t2)
/* 00431A90 00000000 */  nop   
/* 00431A94 AC410004 */  sw    $at, 4($v0)
/* 00431A98 8E4D0000 */  lw    $t5, ($s2)
/* 00431A9C 00000000 */  nop   
/* 00431AA0 8DAE0004 */  lw    $t6, 4($t5)
/* 00431AA4 00000000 */  nop   
/* 00431AA8 AC4E0008 */  sw    $t6, 8($v0)
/* 00431AAC 8E4F0000 */  lw    $t7, ($s2)
/* 00431AB0 00000000 */  nop   
/* 00431AB4 8DF80008 */  lw    $t8, 8($t7)
/* 00431AB8 00000000 */  nop   
/* 00431ABC AC58000C */  sw    $t8, 0xc($v0)
/* 00431AC0 8E590000 */  lw    $t9, ($s2)
/* 00431AC4 00000000 */  nop   
/* 00431AC8 8F290014 */  lw    $t1, 0x14($t9)
/* 00431ACC 00000000 */  nop   
/* 00431AD0 AC490010 */  sw    $t1, 0x10($v0)
/* 00431AD4 8E4B0000 */  lw    $t3, ($s2)
/* 00431AD8 00000000 */  nop   
/* 00431ADC AD620018 */  sw    $v0, 0x18($t3)
/* 00431AE0 8E4C0000 */  lw    $t4, ($s2)
/* 00431AE4 8C6A0000 */  lw    $t2, ($v1)
/* 00431AE8 00000000 */  nop   
/* 00431AEC AD8A0000 */  sw    $t2, ($t4)
/* 00431AF0 8E4E0000 */  lw    $t6, ($s2)
/* 00431AF4 8C6D0004 */  lw    $t5, 4($v1)
/* 00431AF8 00000000 */  nop   
/* 00431AFC ADCD0004 */  sw    $t5, 4($t6)
/* 00431B00 8E580000 */  lw    $t8, ($s2)
/* 00431B04 8C6F0014 */  lw    $t7, 0x14($v1)
/* 00431B08 00000000 */  nop   
/* 00431B0C AF0F0008 */  sw    $t7, 8($t8)
/* 00431B10 8E590000 */  lw    $t9, ($s2)
/* 00431B14 00000000 */  nop   
/* 00431B18 AF250020 */  sw    $a1, 0x20($t9)
/* 00431B1C 8E4B0000 */  lw    $t3, ($s2)
/* 00431B20 8EE90000 */  lw    $t1, ($s7)
/* 00431B24 00000000 */  nop   
/* 00431B28 AD690014 */  sw    $t1, 0x14($t3)
/* 00431B2C 8E510000 */  lw    $s1, ($s2)
/* 00431B30 00000000 */  nop   
/* 00431B34 962A0028 */  lhu   $t2, 0x28($s1)
/* 00431B38 00000000 */  nop   
/* 00431B3C 254C0001 */  addiu $t4, $t2, 1
/* 00431B40 A62C0028 */  sh    $t4, 0x28($s1)
/* 00431B44 8E510000 */  lw    $s1, ($s2)
/* 00431B48 1000006A */  b     .L00431CF4
/* 00431B4C 8E220000 */   lw    $v0, ($s1)
.L00431B50:
/* 00431B50 001568C0 */  sll   $t5, $s5, 3
.L00431B54:
/* 00431B54 8F8E8AC8 */  lw     $t6, %got(bbnode)($gp)
/* 00431B58 01B56823 */  subu  $t5, $t5, $s5
/* 00431B5C 000D68C0 */  sll   $t5, $t5, 3
/* 00431B60 01AE7821 */  addu  $t7, $t5, $t6
/* 00431B64 AE4F0000 */  sw    $t7, ($s2)
/* 00431B68 8C780000 */  lw    $t8, ($v1)
/* 00431B6C 00000000 */  nop   
/* 00431B70 ADF80000 */  sw    $t8, ($t7)
/* 00431B74 8E4B0000 */  lw    $t3, ($s2)
/* 00431B78 8C690004 */  lw    $t1, 4($v1)
/* 00431B7C 00000000 */  nop   
/* 00431B80 AD690004 */  sw    $t1, 4($t3)
/* 00431B84 8E4C0000 */  lw    $t4, ($s2)
/* 00431B88 8C6A000C */  lw    $t2, 0xc($v1)
/* 00431B8C 00000000 */  nop   
/* 00431B90 AD8A000C */  sw    $t2, 0xc($t4)
/* 00431B94 8E4E0000 */  lw    $t6, ($s2)
/* 00431B98 8C6D0018 */  lw    $t5, 0x18($v1)
/* 00431B9C 00000000 */  nop   
/* 00431BA0 ADCD0010 */  sw    $t5, 0x10($t6)
/* 00431BA4 8E580000 */  lw    $t8, ($s2)
/* 00431BA8 8C6F0014 */  lw    $t7, 0x14($v1)
/* 00431BAC 00000000 */  nop   
/* 00431BB0 AF0F0008 */  sw    $t7, 8($t8)
/* 00431BB4 8E590000 */  lw    $t9, ($s2)
/* 00431BB8 24180001 */  li    $t8, 1
/* 00431BBC AF250020 */  sw    $a1, 0x20($t9)
/* 00431BC0 8E4B0000 */  lw    $t3, ($s2)
/* 00431BC4 8EE90000 */  lw    $t1, ($s7)
/* 00431BC8 00000000 */  nop   
/* 00431BCC AD690014 */  sw    $t1, 0x14($t3)
/* 00431BD0 8E4A0000 */  lw    $t2, ($s2)
/* 00431BD4 00000000 */  nop   
/* 00431BD8 AD400018 */  sw    $zero, 0x18($t2)
/* 00431BDC 8E4C0000 */  lw    $t4, ($s2)
/* 00431BE0 00000000 */  nop   
/* 00431BE4 A580002A */  sh    $zero, 0x2a($t4)
/* 00431BE8 8E4D0000 */  lw    $t5, ($s2)
/* 00431BEC 00000000 */  nop   
/* 00431BF0 A5A0002C */  sh    $zero, 0x2c($t5)
/* 00431BF4 8E4E0000 */  lw    $t6, ($s2)
/* 00431BF8 00000000 */  nop   
/* 00431BFC ADC00024 */  sw    $zero, 0x24($t6)
/* 00431C00 8E4F0000 */  lw    $t7, ($s2)
/* 00431C04 00000000 */  nop   
/* 00431C08 ADE0001C */  sw    $zero, 0x1c($t7)
/* 00431C0C 8E590000 */  lw    $t9, ($s2)
/* 00431C10 00000000 */  nop   
/* 00431C14 A7380028 */  sh    $t8, 0x28($t9)
/* 00431C18 8E490000 */  lw    $t1, ($s2)
/* 00431C1C 00000000 */  nop   
/* 00431C20 A520002E */  sh    $zero, 0x2e($t1)
/* 00431C24 8E4B0000 */  lw    $t3, ($s2)
/* 00431C28 00000000 */  nop   
/* 00431C2C AD600030 */  sw    $zero, 0x30($t3)
/* 00431C30 8E4A0000 */  lw    $t2, ($s2)
/* 00431C34 10400013 */  beqz  $v0, .L00431C84
/* 00431C38 AD400034 */   sw    $zero, 0x34($t2)
/* 00431C3C 8E510000 */  lw    $s1, ($s2)
/* 00431C40 00000000 */  nop   
/* 00431C44 8E2C0018 */  lw    $t4, 0x18($s1)
/* 00431C48 00000000 */  nop   
/* 00431C4C 1580000E */  bnez  $t4, .L00431C88
/* 00431C50 8FAD0084 */   lw    $t5, 0x84($sp)
/* 00431C54 1280000A */  beqz  $s4, .L00431C80
/* 00431C58 02202025 */   move  $a0, $s1
/* 00431C5C 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 00431C60 02802825 */  move  $a1, $s4
/* 00431C64 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 00431C68 2406FFFE */  li    $a2, -2
/* 00431C6C 0320F809 */  jalr  $t9
/* 00431C70 00003825 */   move  $a3, $zero
/* 00431C74 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00431C78 8E510000 */  lw    $s1, ($s2)
/* 00431C7C 00000000 */  nop   
.L00431C80:
/* 00431C80 0220A025 */  move  $s4, $s1
.L00431C84:
/* 00431C84 8FAD0084 */  lw    $t5, 0x84($sp)
.L00431C88:
/* 00431C88 8E510000 */  lw    $s1, ($s2)
/* 00431C8C 15A00007 */  bnez  $t5, .L00431CAC
/* 00431C90 00000000 */   nop   
/* 00431C94 8F8E8B1C */  lw     $t6, %got(optflag)($gp)
/* 00431C98 00000000 */  nop   
/* 00431C9C 8DCE0000 */  lw    $t6, ($t6)
/* 00431CA0 00000000 */  nop   
/* 00431CA4 15C00011 */  bnez  $t6, .L00431CEC
/* 00431CA8 00000000 */   nop   
.L00431CAC:
/* 00431CAC 12A0000F */  beqz  $s5, .L00431CEC
/* 00431CB0 02202025 */   move  $a0, $s1
/* 00431CB4 001578C0 */  sll   $t7, $s5, 3
/* 00431CB8 01F57823 */  subu  $t7, $t7, $s5
/* 00431CBC 8F998AC8 */  lw     $t9, %got(bbnode)($gp)
/* 00431CC0 000F78C0 */  sll   $t7, $t7, 3
/* 00431CC4 25F8FFC8 */  addiu $t8, $t7, -0x38
/* 00431CC8 03192821 */  addu  $a1, $t8, $t9
/* 00431CCC 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 00431CD0 24060001 */  li    $a2, 1
/* 00431CD4 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 00431CD8 0320F809 */  jalr  $t9
/* 00431CDC 00003825 */   move  $a3, $zero
/* 00431CE0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00431CE4 8E510000 */  lw    $s1, ($s2)
/* 00431CE8 00000000 */  nop   
.L00431CEC:
/* 00431CEC 26B50001 */  addiu $s5, $s5, 1
/* 00431CF0 8E220000 */  lw    $v0, ($s1)
.L00431CF4:
/* 00431CF4 24010018 */  li    $at, 24
/* 00431CF8 00024E82 */  srl   $t1, $v0, 0x1a
/* 00431CFC 1520001A */  bnez  $t1, .L00431D68
/* 00431D00 3043003F */   andi  $v1, $v0, 0x3f
/* 00431D04 10610009 */  beq   $v1, $at, .L00431D2C
/* 00431D08 24010019 */   li    $at, 25
/* 00431D0C 10610007 */  beq   $v1, $at, .L00431D2C
/* 00431D10 2401001A */   li    $at, 26
/* 00431D14 1061000D */  beq   $v1, $at, .L00431D4C
/* 00431D18 2401001B */   li    $at, 27
/* 00431D1C 1061000B */  beq   $v1, $at, .L00431D4C
/* 00431D20 00000000 */   nop   
/* 00431D24 10000010 */  b     .L00431D68
/* 00431D28 00000000 */   nop   
.L00431D2C:
/* 00431D2C 8F8B8944 */  lw     $t3, %got(multiply_issue)($gp)
/* 00431D30 00000000 */  nop   
/* 00431D34 8D6B0000 */  lw    $t3, ($t3)
/* 00431D38 00000000 */  nop   
/* 00431D3C A62B0028 */  sh    $t3, 0x28($s1)
/* 00431D40 8E510000 */  lw    $s1, ($s2)
/* 00431D44 10000008 */  b     .L00431D68
/* 00431D48 00000000 */   nop   
.L00431D4C:
/* 00431D4C 8F8A8950 */  lw     $t2, %got(divide_issue)($gp)
/* 00431D50 00000000 */  nop   
/* 00431D54 8D4A0000 */  lw    $t2, ($t2)
/* 00431D58 00000000 */  nop   
/* 00431D5C A62A0028 */  sh    $t2, 0x28($s1)
/* 00431D60 8E510000 */  lw    $s1, ($s2)
/* 00431D64 00000000 */  nop   
.L00431D68:
/* 00431D68 8F998020 */  lw    $t9, %got(func_0042F4D8)($gp)
/* 00431D6C 8E240000 */  lw    $a0, ($s1)
/* 00431D70 2739F4D8 */  addiu $t9, %lo(func_0042F4D8) # addiu $t9, $t9, -0xb28
/* 00431D74 0320F809 */  jalr  $t9
/* 00431D78 AFA40000 */   sw    $a0, ($sp)
/* 00431D7C 8E510000 */  lw    $s1, ($s2)
/* 00431D80 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00431D84 8E2E0020 */  lw    $t6, 0x20($s1)
/* 00431D88 00000000 */  nop   
/* 00431D8C 31CF0002 */  andi  $t7, $t6, 2
/* 00431D90 15E00011 */  bnez  $t7, .L00431DD8
/* 00431D94 00000000 */   nop   
/* 00431D98 8E220000 */  lw    $v0, ($s1)
/* 00431D9C 2401000D */  li    $at, 13
/* 00431DA0 0002C682 */  srl   $t8, $v0, 0x1a
/* 00431DA4 1700000C */  bnez  $t8, .L00431DD8
/* 00431DA8 3043003F */   andi  $v1, $v0, 0x3f
/* 00431DAC 10610003 */  beq   $v1, $at, .L00431DBC
/* 00431DB0 2401000C */   li    $at, 12
/* 00431DB4 14610008 */  bne   $v1, $at, .L00431DD8
/* 00431DB8 00000000 */   nop   
.L00431DBC:
/* 00431DBC 9639002A */  lhu   $t9, 0x2a($s1)
/* 00431DC0 8F81808C */  lw    $at, %got(B_1002DD74)($gp)
/* 00431DC4 27290001 */  addiu $t1, $t9, 1
/* 00431DC8 A629002A */  sh    $t1, 0x2a($s1)
/* 00431DCC 8E510000 */  lw    $s1, ($s2)
/* 00431DD0 10000020 */  b     .L00431E54
/* 00431DD4 AC31DD74 */   sw    $s1, %lo(B_1002DD74)($at)
.L00431DD8:
/* 00431DD8 8E2B0018 */  lw    $t3, 0x18($s1)
/* 00431DDC 00000000 */  nop   
/* 00431DE0 1560001C */  bnez  $t3, .L00431E54
/* 00431DE4 00000000 */   nop   
/* 00431DE8 1280000B */  beqz  $s4, .L00431E18
/* 00431DEC 00000000 */   nop   
/* 00431DF0 12910009 */  beq   $s4, $s1, .L00431E18
/* 00431DF4 02202025 */   move  $a0, $s1
/* 00431DF8 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 00431DFC 02802825 */  move  $a1, $s4
/* 00431E00 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 00431E04 2406FFFE */  li    $a2, -2
/* 00431E08 0320F809 */  jalr  $t9
/* 00431E0C 00003825 */   move  $a3, $zero
/* 00431E10 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00431E14 00000000 */  nop   
.L00431E18:
/* 00431E18 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 00431E1C 2404000C */  li    $a0, 12
/* 00431E20 0320F809 */  jalr  $t9
/* 00431E24 00000000 */   nop   
/* 00431E28 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00431E2C 8E4A0000 */  lw    $t2, ($s2)
/* 00431E30 8F838088 */  lw    $v1, %got(B_10025A1C)($gp)
/* 00431E34 AC400004 */  sw    $zero, 4($v0)
/* 00431E38 AC4A0008 */  sw    $t2, 8($v0)
/* 00431E3C 24635A1C */  addiu $v1, %lo(B_10025A1C) # addiu $v1, $v1, 0x5a1c
/* 00431E40 8C6C0000 */  lw    $t4, ($v1)
/* 00431E44 00000000 */  nop   
/* 00431E48 AC4C0000 */  sw    $t4, ($v0)
/* 00431E4C 8E510000 */  lw    $s1, ($s2)
/* 00431E50 AC620000 */  sw    $v0, ($v1)
.L00431E54:
/* 00431E54 8F938088 */  lw    $s3, %got(B_1002364C)($gp)
/* 00431E58 00000000 */  nop   
/* 00431E5C 8E73364C */  lw    $s3, %lo(B_1002364C)($s3)
/* 00431E60 00000000 */  nop   
/* 00431E64 1260001E */  beqz  $s3, .L00431EE0
/* 00431E68 00000000 */   nop   
/* 00431E6C 1271001C */  beq   $s3, $s1, .L00431EE0
/* 00431E70 00000000 */   nop   
/* 00431E74 8F8D8088 */  lw    $t5, %got(B_10023650)($gp)
/* 00431E78 02202025 */  move  $a0, $s1
/* 00431E7C 8DAD3650 */  lw    $t5, %lo(B_10023650)($t5)
/* 00431E80 02602825 */  move  $a1, $s3
/* 00431E84 15A0000B */  bnez  $t5, .L00431EB4
/* 00431E88 00000000 */   nop   
/* 00431E8C 8E2E0034 */  lw    $t6, 0x34($s1)
/* 00431E90 8FCF0000 */  lw    $t7, ($fp)
/* 00431E94 00000000 */  nop   
/* 00431E98 01CF082B */  sltu  $at, $t6, $t7
/* 00431E9C 10200005 */  beqz  $at, .L00431EB4
/* 00431EA0 00000000 */   nop   
/* 00431EA4 8E380018 */  lw    $t8, 0x18($s1)
/* 00431EA8 00000000 */  nop   
/* 00431EAC 1300000C */  beqz  $t8, .L00431EE0
/* 00431EB0 00000000 */   nop   
.L00431EB4:
/* 00431EB4 8F998020 */  lw    $t9, %got(func_0042D698)($gp)
/* 00431EB8 24060001 */  li    $a2, 1
/* 00431EBC 2739D698 */  addiu $t9, %lo(func_0042D698) # addiu $t9, $t9, -0x2968
/* 00431EC0 0320F809 */  jalr  $t9
/* 00431EC4 00003825 */   move  $a3, $zero
/* 00431EC8 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00431ECC 8E510000 */  lw    $s1, ($s2)
/* 00431ED0 8F938088 */  lw    $s3, %got(B_1002364C)($gp)
/* 00431ED4 00000000 */  nop   
/* 00431ED8 8E73364C */  lw    $s3, %lo(B_1002364C)($s3)
/* 00431EDC 00000000 */  nop   
.L00431EE0:
/* 00431EE0 8E220024 */  lw    $v0, 0x24($s1)
/* 00431EE4 8E260034 */  lw    $a2, 0x34($s1)
/* 00431EE8 10400012 */  beqz  $v0, .L00431F34
/* 00431EEC 2CC10002 */   sltiu $at, $a2, 2
.L00431EF0:
/* 00431EF0 84440006 */  lh    $a0, 6($v0)
/* 00431EF4 8C430008 */  lw    $v1, 8($v0)
/* 00431EF8 18800009 */  blez  $a0, .L00431F20
/* 00431EFC 00000000 */   nop   
/* 00431F00 94790028 */  lhu   $t9, 0x28($v1)
/* 00431F04 9469002C */  lhu   $t1, 0x2c($v1)
/* 00431F08 02198021 */  addu  $s0, $s0, $t9
/* 00431F0C 01242821 */  addu  $a1, $t1, $a0
/* 00431F10 0205082B */  sltu  $at, $s0, $a1
/* 00431F14 10200002 */  beqz  $at, .L00431F20
/* 00431F18 00000000 */   nop   
/* 00431F1C 00A08025 */  move  $s0, $a1
.L00431F20:
/* 00431F20 8C420000 */  lw    $v0, ($v0)
/* 00431F24 00000000 */  nop   
/* 00431F28 1440FFF1 */  bnez  $v0, .L00431EF0
/* 00431F2C 00000000 */   nop   
/* 00431F30 2CC10002 */  sltiu $at, $a2, 2
.L00431F34:
/* 00431F34 14200005 */  bnez  $at, .L00431F4C
/* 00431F38 24C2FFFF */   addiu $v0, $a2, -1
/* 00431F3C 0202082B */  sltu  $at, $s0, $v0
/* 00431F40 10200002 */  beqz  $at, .L00431F4C
/* 00431F44 00000000 */   nop   
/* 00431F48 00408025 */  move  $s0, $v0
.L00431F4C:
/* 00431F4C 16710009 */  bne   $s3, $s1, .L00431F74
/* 00431F50 00000000 */   nop   
/* 00431F54 8FC20000 */  lw    $v0, ($fp)
/* 00431F58 00000000 */  nop   
/* 00431F5C 2442FFFF */  addiu $v0, $v0, -1
/* 00431F60 0202082B */  sltu  $at, $s0, $v0
/* 00431F64 1020000A */  beqz  $at, .L00431F90
/* 00431F68 00000000 */   nop   
/* 00431F6C 10000008 */  b     .L00431F90
/* 00431F70 00408025 */   move  $s0, $v0
.L00431F74:
/* 00431F74 12600006 */  beqz  $s3, .L00431F90
/* 00431F78 00000000 */   nop   
/* 00431F7C 8FC20000 */  lw    $v0, ($fp)
/* 00431F80 260B0001 */  addiu $t3, $s0, 1
/* 00431F84 15620002 */  bne   $t3, $v0, .L00431F90
/* 00431F88 00000000 */   nop   
/* 00431F8C 00408025 */  move  $s0, $v0
.L00431F90:
/* 00431F90 A630002C */  sh    $s0, 0x2c($s1)
.L00431F94:
/* 00431F94 8FAA0044 */  lw    $t2, 0x44($sp)
.L00431F98:
/* 00431F98 26D6FFFF */  addiu $s6, $s6, -1
/* 00431F9C 254CFFD8 */  addiu $t4, $t2, -0x28
/* 00431FA0 16C0FE86 */  bnez  $s6, .L004319BC
/* 00431FA4 AFAC0044 */   sw    $t4, 0x44($sp)
.L00431FA8:
/* 00431FA8 8F848088 */  lw    $a0, %got(B_10025A18)($gp)
/* 00431FAC 8F998020 */  lw    $t9, %got(func_0042D420)($gp)
/* 00431FB0 8C845A18 */  lw    $a0, %lo(B_10025A18)($a0)
/* 00431FB4 2739D420 */  addiu $t9, %lo(func_0042D420) # addiu $t9, $t9, -0x2be0
/* 00431FB8 0320F809 */  jalr  $t9
/* 00431FBC 00000000 */   nop   
/* 00431FC0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00431FC4 00000000 */  nop   
/* 00431FC8 8F878088 */  lw    $a3, %got(B_10024E28)($gp)
/* 00431FCC 8F818088 */  lw    $at, %got(B_10025A18)($gp)
/* 00431FD0 8F888088 */  lw    $t0, %got(B_10024838)($gp)
/* 00431FD4 24E74E28 */  addiu $a3, %lo(B_10024E28) # addiu $a3, $a3, 0x4e28
/* 00431FD8 AC205A18 */  sw    $zero, %lo(B_10025A18)($at)
/* 00431FDC 8CE30000 */  lw    $v1, ($a3)
/* 00431FE0 25084838 */  addiu $t0, %lo(B_10024838) # addiu $t0, $t0, 0x4838
/* 00431FE4 1068000F */  beq   $v1, $t0, .L00432024
/* 00431FE8 00000000 */   nop   
/* 00431FEC 8F868088 */  lw    $a2, %got(B_10023C48)($gp)
/* 00431FF0 8F858088 */  lw    $a1, %got(B_10023658)($gp)
/* 00431FF4 24C63C48 */  addiu $a2, %lo(B_10023C48) # addiu $a2, $a2, 0x3c48
/* 00431FF8 24A53658 */  addiu $a1, %lo(B_10023658) # addiu $a1, $a1, 0x3658
.L00431FFC:
/* 00431FFC 246DFFFC */  addiu $t5, $v1, -4
/* 00432000 ACED0000 */  sw    $t5, ($a3)
/* 00432004 8DA40000 */  lw    $a0, ($t5)
/* 00432008 01A01825 */  move  $v1, $t5
/* 0043200C 00041080 */  sll   $v0, $a0, 2
/* 00432010 00A27021 */  addu  $t6, $a1, $v0
/* 00432014 ADC00000 */  sw    $zero, ($t6)
/* 00432018 00C27821 */  addu  $t7, $a2, $v0
/* 0043201C 15A8FFF7 */  bne   $t5, $t0, .L00431FFC
/* 00432020 ADE00000 */   sw    $zero, ($t7)
.L00432024:
/* 00432024 8F838088 */  lw    $v1, %got(B_10025420)($gp)
/* 00432028 8F988088 */  lw    $t8, %got(B_10024E30)($gp)
/* 0043202C 24635420 */  addiu $v1, %lo(B_10025420) # addiu $v1, $v1, 0x5420
/* 00432030 8C700000 */  lw    $s0, ($v1)
/* 00432034 27184E30 */  addiu $t8, %lo(B_10024E30) # addiu $t8, $t8, 0x4e30
/* 00432038 1218001C */  beq   $s0, $t8, .L004320AC
/* 0043203C 00000000 */   nop   
/* 00432040 8F938088 */  lw    $s3, %got(B_10024248)($gp)
/* 00432044 00000000 */  nop   
/* 00432048 26734248 */  addiu $s3, %lo(B_10024248) # addiu $s3, $s3, 0x4248
.L0043204C:
/* 0043204C 8F838088 */  lw    $v1, %got(B_10025420)($gp)
/* 00432050 2619FFFC */  addiu $t9, $s0, -4
/* 00432054 24635420 */  addiu $v1, %lo(B_10025420) # addiu $v1, $v1, 0x5420
/* 00432058 AC790000 */  sw    $t9, ($v1)
/* 0043205C 8F220000 */  lw    $v0, ($t9)
/* 00432060 8F998020 */  lw    $t9, %got(func_0042D420)($gp)
/* 00432064 00028880 */  sll   $s1, $v0, 2
/* 00432068 02719021 */  addu  $s2, $s3, $s1
/* 0043206C 8E440000 */  lw    $a0, ($s2)
/* 00432070 2739D420 */  addiu $t9, %lo(func_0042D420) # addiu $t9, $t9, -0x2be0
/* 00432074 0320F809 */  jalr  $t9
/* 00432078 00000000 */   nop   
/* 0043207C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00432080 AE400000 */  sw    $zero, ($s2)
/* 00432084 8F8B8088 */  lw    $t3, %got(B_10025428)($gp)
/* 00432088 8F908088 */  lw    $s0, %got(B_10025420)($gp)
/* 0043208C 256B5428 */  addiu $t3, %lo(B_10025428) # addiu $t3, $t3, 0x5428
/* 00432090 022B5021 */  addu  $t2, $s1, $t3
/* 00432094 8F8C8088 */  lw    $t4, %got(B_10024E30)($gp)
/* 00432098 AD400000 */  sw    $zero, ($t2)
/* 0043209C 8E105420 */  lw    $s0, %lo(B_10025420)($s0)
/* 004320A0 258C4E30 */  addiu $t4, %lo(B_10024E30) # addiu $t4, $t4, 0x4e30
/* 004320A4 160CFFE9 */  bne   $s0, $t4, .L0043204C
/* 004320A8 00000000 */   nop   
.L004320AC:
/* 004320AC 8F818AB4 */  lw     $at, %got(dag_count)($gp)
/* 004320B0 8FBF003C */  lw    $ra, 0x3c($sp)
/* 004320B4 02A01025 */  move  $v0, $s5
/* 004320B8 AC350000 */  sw    $s5, ($at)
/* 004320BC 8FB50028 */  lw    $s5, 0x28($sp)
/* 004320C0 8FB00014 */  lw    $s0, 0x14($sp)
/* 004320C4 8FB10018 */  lw    $s1, 0x18($sp)
/* 004320C8 8FB2001C */  lw    $s2, 0x1c($sp)
/* 004320CC 8FB30020 */  lw    $s3, 0x20($sp)
/* 004320D0 8FB40024 */  lw    $s4, 0x24($sp)
/* 004320D4 8FB6002C */  lw    $s6, 0x2c($sp)
/* 004320D8 8FB70030 */  lw    $s7, 0x30($sp)
/* 004320DC 8FBE0038 */  lw    $fp, 0x38($sp)
/* 004320E0 03E00008 */  jr    $ra
/* 004320E4 27BD0080 */   addiu $sp, $sp, 0x80

    .type func_004320E8, @function
func_004320E8:
    # 00434EDC reorganize_bb
/* 004320E8 3C1C0FC0 */  .cpload $t9
/* 004320EC 279C8178 */  
/* 004320F0 0399E021 */  
/* 004320F4 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 004320F8 AFB70038 */  sw    $s7, 0x38($sp)
/* 004320FC 2482FFFF */  addiu $v0, $a0, -1
/* 00432100 AFBF0044 */  sw    $ra, 0x44($sp)
/* 00432104 AFBE0040 */  sw    $fp, 0x40($sp)
/* 00432108 AFBC003C */  sw    $gp, 0x3c($sp)
/* 0043210C AFB60034 */  sw    $s6, 0x34($sp)
/* 00432110 AFB50030 */  sw    $s5, 0x30($sp)
/* 00432114 AFB4002C */  sw    $s4, 0x2c($sp)
/* 00432118 AFB30028 */  sw    $s3, 0x28($sp)
/* 0043211C AFB20024 */  sw    $s2, 0x24($sp)
/* 00432120 AFB10020 */  sw    $s1, 0x20($sp)
/* 00432124 AFB0001C */  sw    $s0, 0x1c($sp)
/* 00432128 0440006E */  bltz  $v0, .L004322E4
/* 0043212C 0040B825 */   move  $s7, $v0
/* 00432130 000270C0 */  sll   $t6, $v0, 3
/* 00432134 8F938AC8 */  lw     $s3, %got(bbnode)($gp)
/* 00432138 8F9E80AC */  lw     $fp, %got(__iob)($gp)
/* 0043213C 8F92806C */  lw    $s2, %got(RO_10015520)($gp)
/* 00432140 8F91806C */  lw    $s1, %got(RO_10015518)($gp)
/* 00432144 01C27023 */  subu  $t6, $t6, $v0
/* 00432148 000E70C0 */  sll   $t6, $t6, 3
/* 0043214C 8F9680AC */  lw     $s6, %got(__iob)($gp)
/* 00432150 24140038 */  li    $s4, 56
/* 00432154 01D3A821 */  addu  $s5, $t6, $s3
/* 00432158 27DE0010 */  addiu $fp, $fp, 0x10
/* 0043215C 26525520 */  addiu $s2, %lo(RO_10015520) # addiu $s2, $s2, 0x5520
/* 00432160 26315518 */  addiu $s1, %lo(RO_10015518) # addiu $s1, $s1, 0x5518
.L00432164:
/* 00432164 8F84806C */  lw    $a0, %got(RO_100154AC)($gp)
/* 00432168 8EA60000 */  lw    $a2, ($s5)
/* 0043216C 8EA8000C */  lw    $t0, 0xc($s5)
/* 00432170 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 00432174 8EA70004 */  lw    $a3, 4($s5)
/* 00432178 02E02825 */  move  $a1, $s7
/* 0043217C 248454AC */  addiu $a0, %lo(RO_100154AC) # addiu $a0, $a0, 0x54ac
/* 00432180 AFA60008 */  sw    $a2, 8($sp)
/* 00432184 0320F809 */  jalr  $t9
/* 00432188 AFA80010 */   sw    $t0, 0x10($sp)
/* 0043218C 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00432190 96A5002A */  lhu   $a1, 0x2a($s5)
/* 00432194 8F84806C */  lw    $a0, %got(RO_100154DC)($gp)
/* 00432198 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0043219C 96A6002C */  lhu   $a2, 0x2c($s5)
/* 004321A0 8EA70034 */  lw    $a3, 0x34($s5)
/* 004321A4 0320F809 */  jalr  $t9
/* 004321A8 248454DC */   addiu $a0, %lo(RO_100154DC) # addiu $a0, $a0, 0x54dc
/* 004321AC 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004321B0 03C02825 */  move  $a1, $fp
/* 004321B4 8F84806C */  lw    $a0, %got(RO_10015508)($gp)
/* 004321B8 8F998134 */  lw    $t9, %call16(fputs)($gp)
/* 004321BC 24845508 */  addiu $a0, %lo(RO_10015508) # addiu $a0, $a0, 0x5508
/* 004321C0 0320F809 */  jalr  $t9
/* 004321C4 00000000 */   nop   
/* 004321C8 8EB00024 */  lw    $s0, 0x24($s5)
/* 004321CC 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004321D0 12000021 */  beqz  $s0, .L00432258
/* 004321D4 00000000 */   nop   
.L004321D8:
/* 004321D8 8E090008 */  lw    $t1, 8($s0)
/* 004321DC 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 004321E0 01335023 */  subu  $t2, $t1, $s3
/* 004321E4 0154001A */  div   $zero, $t2, $s4
/* 004321E8 86060006 */  lh    $a2, 6($s0)
/* 004321EC 02202025 */  move  $a0, $s1
/* 004321F0 16800002 */  bnez  $s4, .L004321FC
/* 004321F4 00000000 */   nop   
/* 004321F8 0007000D */  break 7
.L004321FC:
/* 004321FC 2401FFFF */  li    $at, -1
/* 00432200 16810004 */  bne   $s4, $at, .L00432214
/* 00432204 3C018000 */   lui   $at, 0x8000
/* 00432208 15410002 */  bne   $t2, $at, .L00432214
/* 0043220C 00000000 */   nop   
/* 00432210 0006000D */  break 6
.L00432214:
/* 00432214 00002812 */  mflo  $a1
/* 00432218 0320F809 */  jalr  $t9
/* 0043221C 00000000 */   nop   
/* 00432220 96050004 */  lhu   $a1, 4($s0)
/* 00432224 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00432228 10A00007 */  beqz  $a1, .L00432248
/* 0043222C 00000000 */   nop   
/* 00432230 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 00432234 02402025 */  move  $a0, $s2
/* 00432238 0320F809 */  jalr  $t9
/* 0043223C 00000000 */   nop   
/* 00432240 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00432244 00000000 */  nop   
.L00432248:
/* 00432248 8E100000 */  lw    $s0, ($s0)
/* 0043224C 00000000 */  nop   
/* 00432250 1600FFE1 */  bnez  $s0, .L004321D8
/* 00432254 00000000 */   nop   
.L00432258:
/* 00432258 8F8B80B0 */  lw     $t3, %got(__us_rsthread_stdio)($gp)
/* 0043225C 00000000 */  nop   
/* 00432260 8D6B0000 */  lw    $t3, ($t3)
/* 00432264 00000000 */  nop   
/* 00432268 11600008 */  beqz  $t3, .L0043228C
/* 0043226C 00000000 */   nop   
/* 00432270 8F99813C */  lw    $t9, %call16(__semputc)($gp)
/* 00432274 2404000A */  li    $a0, 10
/* 00432278 0320F809 */  jalr  $t9
/* 0043227C 03C02825 */   move  $a1, $fp
/* 00432280 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00432284 10000015 */  b     .L004322DC
/* 00432288 26F7FFFF */   addiu $s7, $s7, -1
.L0043228C:
/* 0043228C 8ECC0010 */  lw    $t4, 0x10($s6)
/* 00432290 00000000 */  nop   
/* 00432294 258DFFFF */  addiu $t5, $t4, -1
/* 00432298 05A10008 */  bgez  $t5, .L004322BC
/* 0043229C AECD0010 */   sw    $t5, 0x10($s6)
/* 004322A0 8F998124 */  lw    $t9, %call16(__flsbuf)($gp)
/* 004322A4 2404000A */  li    $a0, 10
/* 004322A8 0320F809 */  jalr  $t9
/* 004322AC 03C02825 */   move  $a1, $fp
/* 004322B0 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004322B4 10000009 */  b     .L004322DC
/* 004322B8 26F7FFFF */   addiu $s7, $s7, -1
.L004322BC:
/* 004322BC 8ED80014 */  lw    $t8, 0x14($s6)
/* 004322C0 240F000A */  li    $t7, 10
/* 004322C4 A30F0000 */  sb    $t7, ($t8)
/* 004322C8 8ED90014 */  lw    $t9, 0x14($s6)
/* 004322CC 00000000 */  nop   
/* 004322D0 27280001 */  addiu $t0, $t9, 1
/* 004322D4 AEC80014 */  sw    $t0, 0x14($s6)
/* 004322D8 26F7FFFF */  addiu $s7, $s7, -1
.L004322DC:
/* 004322DC 06E1FFA1 */  bgez  $s7, .L00432164
/* 004322E0 26B5FFC8 */   addiu $s5, $s5, -0x38
.L004322E4:
/* 004322E4 8F9680AC */  lw     $s6, %got(__iob)($gp)
/* 004322E8 8F84806C */  lw    $a0, %got(RO_10015524)($gp)
/* 004322EC 8F998134 */  lw    $t9, %call16(fputs)($gp)
/* 004322F0 8F938AC8 */  lw     $s3, %got(bbnode)($gp)
/* 004322F4 26DE0010 */  addiu $fp, $s6, 0x10
/* 004322F8 24140038 */  li    $s4, 56
/* 004322FC 03C02825 */  move  $a1, $fp
/* 00432300 0320F809 */  jalr  $t9
/* 00432304 24845524 */   addiu $a0, %lo(RO_10015524) # addiu $a0, $a0, 0x5524
/* 00432308 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0043230C 00000000 */  nop   
/* 00432310 8F908088 */  lw    $s0, %got(B_10025A1C)($gp)
/* 00432314 00000000 */  nop   
/* 00432318 8E105A1C */  lw    $s0, %lo(B_10025A1C)($s0)
/* 0043231C 00000000 */  nop   
/* 00432320 12000019 */  beqz  $s0, .L00432388
/* 00432324 00000000 */   nop   
/* 00432328 8F91806C */  lw    $s1, %got(RO_10015534)($gp)
/* 0043232C 00000000 */  nop   
/* 00432330 26315534 */  addiu $s1, %lo(RO_10015534) # addiu $s1, $s1, 0x5534
.L00432334:
/* 00432334 8E090008 */  lw    $t1, 8($s0)
/* 00432338 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0043233C 01335023 */  subu  $t2, $t1, $s3
/* 00432340 0154001A */  div   $zero, $t2, $s4
/* 00432344 02202025 */  move  $a0, $s1
/* 00432348 16800002 */  bnez  $s4, .L00432354
/* 0043234C 00000000 */   nop   
/* 00432350 0007000D */  break 7
.L00432354:
/* 00432354 2401FFFF */  li    $at, -1
/* 00432358 16810004 */  bne   $s4, $at, .L0043236C
/* 0043235C 3C018000 */   lui   $at, 0x8000
/* 00432360 15410002 */  bne   $t2, $at, .L0043236C
/* 00432364 00000000 */   nop   
/* 00432368 0006000D */  break 6
.L0043236C:
/* 0043236C 00002812 */  mflo  $a1
/* 00432370 0320F809 */  jalr  $t9
/* 00432374 00000000 */   nop   
/* 00432378 8E100000 */  lw    $s0, ($s0)
/* 0043237C 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00432380 1600FFEC */  bnez  $s0, .L00432334
/* 00432384 00000000 */   nop   
.L00432388:
/* 00432388 8F8B80B0 */  lw     $t3, %got(__us_rsthread_stdio)($gp)
/* 0043238C 00000000 */  nop   
/* 00432390 8D6B0000 */  lw    $t3, ($t3)
/* 00432394 00000000 */  nop   
/* 00432398 11600008 */  beqz  $t3, .L004323BC
/* 0043239C 00000000 */   nop   
/* 004323A0 8F99813C */  lw    $t9, %call16(__semputc)($gp)
/* 004323A4 2404000A */  li    $a0, 10
/* 004323A8 0320F809 */  jalr  $t9
/* 004323AC 03C02825 */   move  $a1, $fp
/* 004323B0 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004323B4 10000014 */  b     .L00432408
/* 004323B8 00000000 */   nop   
.L004323BC:
/* 004323BC 8ECC0010 */  lw    $t4, 0x10($s6)
/* 004323C0 00000000 */  nop   
/* 004323C4 258DFFFF */  addiu $t5, $t4, -1
/* 004323C8 05A10008 */  bgez  $t5, .L004323EC
/* 004323CC AECD0010 */   sw    $t5, 0x10($s6)
/* 004323D0 8F998124 */  lw    $t9, %call16(__flsbuf)($gp)
/* 004323D4 2404000A */  li    $a0, 10
/* 004323D8 0320F809 */  jalr  $t9
/* 004323DC 03C02825 */   move  $a1, $fp
/* 004323E0 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004323E4 10000008 */  b     .L00432408
/* 004323E8 00000000 */   nop   
.L004323EC:
/* 004323EC 8ED80014 */  lw    $t8, 0x14($s6)
/* 004323F0 240F000A */  li    $t7, 10
/* 004323F4 A30F0000 */  sb    $t7, ($t8)
/* 004323F8 8ED90014 */  lw    $t9, 0x14($s6)
/* 004323FC 00000000 */  nop   
/* 00432400 27280001 */  addiu $t0, $t9, 1
/* 00432404 AEC80014 */  sw    $t0, 0x14($s6)
.L00432408:
/* 00432408 8F8980B0 */  lw     $t1, %got(__us_rsthread_stdio)($gp)
/* 0043240C 00000000 */  nop   
/* 00432410 8D290000 */  lw    $t1, ($t1)
/* 00432414 00000000 */  nop   
/* 00432418 11200008 */  beqz  $t1, .L0043243C
/* 0043241C 00000000 */   nop   
/* 00432420 8F99813C */  lw    $t9, %call16(__semputc)($gp)
/* 00432424 2404000A */  li    $a0, 10
/* 00432428 0320F809 */  jalr  $t9
/* 0043242C 03C02825 */   move  $a1, $fp
/* 00432430 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00432434 10000015 */  b     .L0043248C
/* 00432438 8FBF0044 */   lw    $ra, 0x44($sp)
.L0043243C:
/* 0043243C 8ECA0010 */  lw    $t2, 0x10($s6)
/* 00432440 00000000 */  nop   
/* 00432444 254BFFFF */  addiu $t3, $t2, -1
/* 00432448 05610008 */  bgez  $t3, .L0043246C
/* 0043244C AECB0010 */   sw    $t3, 0x10($s6)
/* 00432450 8F998124 */  lw    $t9, %call16(__flsbuf)($gp)
/* 00432454 2404000A */  li    $a0, 10
/* 00432458 0320F809 */  jalr  $t9
/* 0043245C 03C02825 */   move  $a1, $fp
/* 00432460 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00432464 10000009 */  b     .L0043248C
/* 00432468 8FBF0044 */   lw    $ra, 0x44($sp)
.L0043246C:
/* 0043246C 8ECE0014 */  lw    $t6, 0x14($s6)
/* 00432470 240D000A */  li    $t5, 10
/* 00432474 A1CD0000 */  sb    $t5, ($t6)
/* 00432478 8ECF0014 */  lw    $t7, 0x14($s6)
/* 0043247C 00000000 */  nop   
/* 00432480 25F80001 */  addiu $t8, $t7, 1
/* 00432484 AED80014 */  sw    $t8, 0x14($s6)
/* 00432488 8FBF0044 */  lw    $ra, 0x44($sp)
.L0043248C:
/* 0043248C 8FB0001C */  lw    $s0, 0x1c($sp)
/* 00432490 8FB10020 */  lw    $s1, 0x20($sp)
/* 00432494 8FB20024 */  lw    $s2, 0x24($sp)
/* 00432498 8FB30028 */  lw    $s3, 0x28($sp)
/* 0043249C 8FB4002C */  lw    $s4, 0x2c($sp)
/* 004324A0 8FB50030 */  lw    $s5, 0x30($sp)
/* 004324A4 8FB60034 */  lw    $s6, 0x34($sp)
/* 004324A8 8FB70038 */  lw    $s7, 0x38($sp)
/* 004324AC 8FBE0040 */  lw    $fp, 0x40($sp)
/* 004324B0 03E00008 */  jr    $ra
/* 004324B4 27BD0048 */   addiu $sp, $sp, 0x48

    .type func_004324B8, @function
func_004324B8:
    # 00434EDC reorganize_bb
/* 004324B8 3C1C0FBF */  .cpload $t9
/* 004324BC 279C7DA8 */  
/* 004324C0 0399E021 */  
/* 004324C4 8F828AB4 */  lw     $v0, %got(dag_count)($gp)
/* 004324C8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 004324CC 8C420000 */  lw    $v0, ($v0)
/* 004324D0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 004324D4 2442FFFF */  addiu $v0, $v0, -1
/* 004324D8 AFBC0028 */  sw    $gp, 0x28($sp)
/* 004324DC AFB30024 */  sw    $s3, 0x24($sp)
/* 004324E0 AFB20020 */  sw    $s2, 0x20($sp)
/* 004324E4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 004324E8 0440002B */  bltz  $v0, .L00432598
/* 004324EC AFB00018 */   sw    $s0, 0x18($sp)
/* 004324F0 000270C0 */  sll   $t6, $v0, 3
/* 004324F4 8F938AC8 */  lw     $s3, %got(bbnode)($gp)
/* 004324F8 01C27023 */  subu  $t6, $t6, $v0
/* 004324FC 000E70C0 */  sll   $t6, $t6, 3
/* 00432500 01D39021 */  addu  $s2, $t6, $s3
.L00432504:
/* 00432504 8E510024 */  lw    $s1, 0x24($s2)
/* 00432508 00000000 */  nop   
/* 0043250C 12200008 */  beqz  $s1, .L00432530
/* 00432510 00000000 */   nop   
.L00432514:
/* 00432514 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 00432518 8E300000 */  lw    $s0, ($s1)
/* 0043251C 0320F809 */  jalr  $t9
/* 00432520 02202025 */   move  $a0, $s1
/* 00432524 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00432528 1600FFFA */  bnez  $s0, .L00432514
/* 0043252C 02008825 */   move  $s1, $s0
.L00432530:
/* 00432530 8E51001C */  lw    $s1, 0x1c($s2)
/* 00432534 AE400024 */  sw    $zero, 0x24($s2)
/* 00432538 12200008 */  beqz  $s1, .L0043255C
/* 0043253C 00000000 */   nop   
.L00432540:
/* 00432540 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 00432544 8E300000 */  lw    $s0, ($s1)
/* 00432548 0320F809 */  jalr  $t9
/* 0043254C 02202025 */   move  $a0, $s1
/* 00432550 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00432554 1600FFFA */  bnez  $s0, .L00432540
/* 00432558 02008825 */   move  $s1, $s0
.L0043255C:
/* 0043255C 8E500018 */  lw    $s0, 0x18($s2)
/* 00432560 AE40001C */  sw    $zero, 0x1c($s2)
/* 00432564 12000008 */  beqz  $s0, .L00432588
/* 00432568 00000000 */   nop   
.L0043256C:
/* 0043256C 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 00432570 8E110000 */  lw    $s1, ($s0)
/* 00432574 0320F809 */  jalr  $t9
/* 00432578 02002025 */   move  $a0, $s0
/* 0043257C 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00432580 1620FFFA */  bnez  $s1, .L0043256C
/* 00432584 02208025 */   move  $s0, $s1
.L00432588:
/* 00432588 2652FFC8 */  addiu $s2, $s2, -0x38
/* 0043258C 0253082B */  sltu  $at, $s2, $s3
/* 00432590 1020FFDC */  beqz  $at, .L00432504
/* 00432594 AE400050 */   sw    $zero, 0x50($s2)
.L00432598:
/* 00432598 8F928088 */  lw    $s2, %got(B_10025A1C)($gp)
/* 0043259C 00000000 */  nop   
/* 004325A0 26525A1C */  addiu $s2, %lo(B_10025A1C) # addiu $s2, $s2, 0x5a1c
/* 004325A4 8E500000 */  lw    $s0, ($s2)
/* 004325A8 00000000 */  nop   
/* 004325AC 12000009 */  beqz  $s0, .L004325D4
/* 004325B0 8FBF002C */   lw    $ra, 0x2c($sp)
.L004325B4:
/* 004325B4 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 004325B8 8E110000 */  lw    $s1, ($s0)
/* 004325BC 0320F809 */  jalr  $t9
/* 004325C0 02002025 */   move  $a0, $s0
/* 004325C4 8FBC0028 */  lw    $gp, 0x28($sp)
/* 004325C8 1620FFFA */  bnez  $s1, .L004325B4
/* 004325CC 02208025 */   move  $s0, $s1
/* 004325D0 8FBF002C */  lw    $ra, 0x2c($sp)
.L004325D4:
/* 004325D4 AE400000 */  sw    $zero, ($s2)
/* 004325D8 8FB20020 */  lw    $s2, 0x20($sp)
/* 004325DC 8FB00018 */  lw    $s0, 0x18($sp)
/* 004325E0 8FB1001C */  lw    $s1, 0x1c($sp)
/* 004325E4 8FB30024 */  lw    $s3, 0x24($sp)
/* 004325E8 03E00008 */  jr    $ra
/* 004325EC 27BD0030 */   addiu $sp, $sp, 0x30

    .type func_004325F0, @function
func_004325F0:
    # 00432670 start_time
/* 004325F0 3C1C0FBF */  .cpload $t9
/* 004325F4 279C7C70 */  
/* 004325F8 0399E021 */  
/* 004325FC 8F82808C */  lw    $v0, %got(B_1002DDB8)($gp)
/* 00432600 00000000 */  nop   
/* 00432604 8C42DDB8 */  lw    $v0, %lo(B_1002DDB8)($v0)
/* 00432608 00000000 */  nop   
/* 0043260C 0082082B */  sltu  $at, $a0, $v0
/* 00432610 10200015 */  beqz  $at, .L00432668
/* 00432614 00000000 */   nop   
/* 00432618 8F83808C */  lw    $v1, %got(B_1002DDB0)($gp)
/* 0043261C 8F8E808C */  lw    $t6, %got(B_1002DDB4)($gp)
/* 00432620 8C63DDB0 */  lw    $v1, %lo(B_1002DDB0)($v1)
/* 00432624 8DCEDDB4 */  lw    $t6, %lo(B_1002DDB4)($t6)
/* 00432628 24010006 */  li    $at, 6
/* 0043262C 11C3000A */  beq   $t6, $v1, .L00432658
/* 00432630 00432823 */   subu  $a1, $v0, $v1
/* 00432634 14A10003 */  bne   $a1, $at, .L00432644
/* 00432638 00837823 */   subu  $t7, $a0, $v1
/* 0043263C 2DE10002 */  sltiu $at, $t7, 2
/* 00432640 10200005 */  beqz  $at, .L00432658
.L00432644:
/* 00432644 24010007 */   li    $at, 7
/* 00432648 14A10007 */  bne   $a1, $at, .L00432668
/* 0043264C 0083C023 */   subu  $t8, $a0, $v1
/* 00432650 2F010003 */  sltiu $at, $t8, 3
/* 00432654 14200004 */  bnez  $at, .L00432668
.L00432658:
/* 00432658 0082082B */   sltu  $at, $a0, $v0
/* 0043265C 10200002 */  beqz  $at, .L00432668
/* 00432660 00000000 */   nop   
/* 00432664 00402025 */  move  $a0, $v0
.L00432668:
/* 00432668 03E00008 */  jr    $ra
/* 0043266C 00801025 */   move  $v0, $a0

glabel start_time
    .ent start_time
    # 00427388 func_00427388
    # 00433ED0 func_00433ED0
/* 00432670 3C1C0FBF */  .cpload $t9
/* 00432674 279C7BF0 */  
/* 00432678 0399E021 */  
/* 0043267C 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 00432680 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00432684 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00432688 AFB00014 */  sw    $s0, 0x14($sp)
/* 0043268C 8CA10000 */  lw    $at, ($a1)
/* 00432690 27AE005C */  addiu $t6, $sp, 0x5c
/* 00432694 ADC10000 */  sw    $at, ($t6)
/* 00432698 94B0002E */  lhu   $s0, 0x2e($a1)
/* 0043269C 8FA2005C */  lw    $v0, 0x5c($sp)
/* 004326A0 0204082B */  sltu  $at, $s0, $a0
/* 004326A4 10200002 */  beqz  $at, .L004326B0
/* 004326A8 00025682 */   srl   $t2, $v0, 0x1a
/* 004326AC 00808025 */  move  $s0, $a0
.L004326B0:
/* 004326B0 2D410040 */  sltiu $at, $t2, 0x40
/* 004326B4 102002F0 */  beqz  $at, .L00433278
/* 004326B8 01401025 */   move  $v0, $t2
/* 004326BC 8F81806C */  lw    $at, %got(jtbl_10015C44)($gp)
/* 004326C0 000A5880 */  sll   $t3, $t2, 2
/* 004326C4 002B0821 */  addu  $at, $at, $t3
/* 004326C8 8C2B5C44 */  lw    $t3, %lo(jtbl_10015C44)($at)
/* 004326CC 00000000 */  nop   
/* 004326D0 017C5821 */  addu  $t3, $t3, $gp
/* 004326D4 01600008 */  jr    $t3
/* 004326D8 00000000 */   nop   
.L004326DC:
/* 004326DC 8FAC005C */  lw    $t4, 0x5c($sp)
/* 004326E0 8F81806C */  lw    $at, %got(RO_10015D44)($gp)
/* 004326E4 318D003F */  andi  $t5, $t4, 0x3f
/* 004326E8 000D6880 */  sll   $t5, $t5, 2
/* 004326EC 002D0821 */  addu  $at, $at, $t5
/* 004326F0 8C2D5D44 */  lw    $t5, %lo(RO_10015D44)($at)
/* 004326F4 00000000 */  nop   
/* 004326F8 01BC6821 */  addu  $t5, $t5, $gp
/* 004326FC 01A00008 */  jr    $t5
/* 00432700 00000000 */   nop   
/* 00432704 8FB8005C */  lw    $t8, 0x5c($sp)
/* 00432708 8F998A50 */  lw     $t9, %got(spec_name)($gp)
/* 0043270C 330F003F */  andi  $t7, $t8, 0x3f
/* 00432710 000F7080 */  sll   $t6, $t7, 2
/* 00432714 01D95021 */  addu  $t2, $t6, $t9
/* 00432718 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 0043271C 8F8480AC */  lw     $a0, %got(__iob)($gp)
/* 00432720 8F85806C */  lw    $a1, %got(RO_10015538)($gp)
/* 00432724 8D460000 */  lw    $a2, ($t2)
/* 00432728 24840020 */  addiu $a0, $a0, 0x20
/* 0043272C 0320F809 */  jalr  $t9
/* 00432730 24A55538 */   addiu $a1, %lo(RO_10015538) # addiu $a1, $a1, 0x5538
/* 00432734 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00432738 100002DC */  b     .L004332AC
/* 0043273C 8FBF001C */   lw    $ra, 0x1c($sp)
.L00432740:
/* 00432740 97AB005C */  lhu   $t3, 0x5c($sp)
/* 00432744 00000000 */  nop   
/* 00432748 316C001F */  andi  $t4, $t3, 0x1f
/* 0043274C 258DFFF8 */  addiu $t5, $t4, -8
/* 00432750 2DA10007 */  sltiu $at, $t5, 7
/* 00432754 10200009 */  beqz  $at, .L0043277C
/* 00432758 00000000 */   nop   
/* 0043275C 8F81806C */  lw    $at, %got(jtbl_10015E44)($gp)
/* 00432760 000D6880 */  sll   $t5, $t5, 2
/* 00432764 002D0821 */  addu  $at, $at, $t5
/* 00432768 8C2D5E44 */  lw    $t5, %lo(jtbl_10015E44)($at)
/* 0043276C 00000000 */  nop   
/* 00432770 01BC6821 */  addu  $t5, $t5, $gp
/* 00432774 01A00008 */  jr    $t5
/* 00432778 00000000 */   nop   
.L0043277C:
/* 0043277C 8F82808C */  lw    $v0, %got(B_1002DD84)($gp)
/* 00432780 00000000 */  nop   
/* 00432784 8C42DD84 */  lw    $v0, %lo(B_1002DD84)($v0)
/* 00432788 00000000 */  nop   
/* 0043278C 0202082B */  sltu  $at, $s0, $v0
/* 00432790 102002C6 */  beqz  $at, .L004332AC
/* 00432794 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00432798 100002C3 */  b     .L004332A8
/* 0043279C 00408025 */   move  $s0, $v0
.L004327A0:
/* 004327A0 8F82808C */  lw    $v0, %got(B_1002DD78)($gp)
/* 004327A4 00000000 */  nop   
/* 004327A8 8C42DD78 */  lw    $v0, %lo(B_1002DD78)($v0)
/* 004327AC 00000000 */  nop   
/* 004327B0 0202082B */  sltu  $at, $s0, $v0
/* 004327B4 10200002 */  beqz  $at, .L004327C0
/* 004327B8 00000000 */   nop   
/* 004327BC 00408025 */  move  $s0, $v0
.L004327C0:
/* 004327C0 8F82808C */  lw    $v0, %got(B_1002DDD4)($gp)
/* 004327C4 00000000 */  nop   
/* 004327C8 8C42DDD4 */  lw    $v0, %lo(B_1002DDD4)($v0)
/* 004327CC 00000000 */  nop   
/* 004327D0 0202082B */  sltu  $at, $s0, $v0
/* 004327D4 102002B5 */  beqz  $at, .L004332AC
/* 004327D8 8FBF001C */   lw    $ra, 0x1c($sp)
/* 004327DC 100002B2 */  b     .L004332A8
/* 004327E0 00408025 */   move  $s0, $v0
.L004327E4:
/* 004327E4 8F82808C */  lw    $v0, %got(B_1002DD7C)($gp)
/* 004327E8 00000000 */  nop   
/* 004327EC 8C42DD7C */  lw    $v0, %lo(B_1002DD7C)($v0)
/* 004327F0 00000000 */  nop   
/* 004327F4 0202082B */  sltu  $at, $s0, $v0
/* 004327F8 10200002 */  beqz  $at, .L00432804
/* 004327FC 00000000 */   nop   
/* 00432800 00408025 */  move  $s0, $v0
.L00432804:
/* 00432804 8F82808C */  lw    $v0, %got(B_1002DDD4)($gp)
/* 00432808 00000000 */  nop   
/* 0043280C 8C42DDD4 */  lw    $v0, %lo(B_1002DDD4)($v0)
/* 00432810 00000000 */  nop   
/* 00432814 0202082B */  sltu  $at, $s0, $v0
/* 00432818 102002A4 */  beqz  $at, .L004332AC
/* 0043281C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00432820 100002A1 */  b     .L004332A8
/* 00432824 00408025 */   move  $s0, $v0
.L00432828:
/* 00432828 8F82808C */  lw    $v0, %got(B_1002DD80)($gp)
/* 0043282C 00000000 */  nop   
/* 00432830 8C42DD80 */  lw    $v0, %lo(B_1002DD80)($v0)
/* 00432834 00000000 */  nop   
/* 00432838 0202082B */  sltu  $at, $s0, $v0
/* 0043283C 10200002 */  beqz  $at, .L00432848
/* 00432840 00000000 */   nop   
/* 00432844 00408025 */  move  $s0, $v0
.L00432848:
/* 00432848 8F82808C */  lw    $v0, %got(B_1002DDD4)($gp)
/* 0043284C 00000000 */  nop   
/* 00432850 8C42DDD4 */  lw    $v0, %lo(B_1002DDD4)($v0)
/* 00432854 00000000 */  nop   
/* 00432858 0202082B */  sltu  $at, $s0, $v0
/* 0043285C 10200293 */  beqz  $at, .L004332AC
/* 00432860 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00432864 10000290 */  b     .L004332A8
/* 00432868 00408025 */   move  $s0, $v0
.L0043286C:
/* 0043286C 8F82808C */  lw    $v0, %got(B_1002DD90)($gp)
/* 00432870 00000000 */  nop   
/* 00432874 8C42DD90 */  lw    $v0, %lo(B_1002DD90)($v0)
/* 00432878 00000000 */  nop   
/* 0043287C 0202082B */  sltu  $at, $s0, $v0
/* 00432880 1020028A */  beqz  $at, .L004332AC
/* 00432884 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00432888 10000287 */  b     .L004332A8
/* 0043288C 00408025 */   move  $s0, $v0
.L00432890:
/* 00432890 8FB8005C */  lw    $t8, 0x5c($sp)
/* 00432894 00000000 */  nop   
/* 00432898 00187980 */  sll   $t7, $t8, 6
/* 0043289C 000F76C2 */  srl   $t6, $t7, 0x1b
/* 004328A0 2DC10009 */  sltiu $at, $t6, 9
/* 004328A4 10200009 */  beqz  $at, .L004328CC
/* 004328A8 00000000 */   nop   
/* 004328AC 8F81806C */  lw    $at, %got(jtbl_10015E60)($gp)
/* 004328B0 000E7080 */  sll   $t6, $t6, 2
/* 004328B4 002E0821 */  addu  $at, $at, $t6
/* 004328B8 8C2E5E60 */  lw    $t6, %lo(jtbl_10015E60)($at)
/* 004328BC 00000000 */  nop   
/* 004328C0 01DC7021 */  addu  $t6, $t6, $gp
/* 004328C4 01C00008 */  jr    $t6
/* 004328C8 00000000 */   nop   
.L004328CC:
/* 004328CC 8F8A808C */  lw    $t2, %got(B_1002DD90)($gp)
/* 004328D0 0002C880 */  sll   $t9, $v0, 2
/* 004328D4 254ADD90 */  addiu $t2, %lo(B_1002DD90) # addiu $t2, $t2, -0x2270
/* 004328D8 032A5821 */  addu  $t3, $t9, $t2
/* 004328DC 8D63FFC0 */  lw    $v1, -0x40($t3)
/* 004328E0 00000000 */  nop   
/* 004328E4 0203082B */  sltu  $at, $s0, $v1
/* 004328E8 10200270 */  beqz  $at, .L004332AC
/* 004328EC 8FBF001C */   lw    $ra, 0x1c($sp)
/* 004328F0 1000026D */  b     .L004332A8
/* 004328F4 00608025 */   move  $s0, $v1
.L004328F8:
/* 004328F8 8FAC005C */  lw    $t4, 0x5c($sp)
/* 004328FC 00000000 */  nop   
/* 00432900 318D003F */  andi  $t5, $t4, 0x3f
/* 00432904 2DA1000A */  sltiu $at, $t5, 0xa
/* 00432908 10200009 */  beqz  $at, .L00432930
/* 0043290C 00000000 */   nop   
/* 00432910 8F81806C */  lw    $at, %got(jtbl_10015E84)($gp)
/* 00432914 000D6880 */  sll   $t5, $t5, 2
/* 00432918 002D0821 */  addu  $at, $at, $t5
/* 0043291C 8C2D5E84 */  lw    $t5, %lo(jtbl_10015E84)($at)
/* 00432920 00000000 */  nop   
/* 00432924 01BC6821 */  addu  $t5, $t5, $gp
/* 00432928 01A00008 */  jr    $t5
/* 0043292C 00000000 */   nop   
.L00432930:
/* 00432930 8F82808C */  lw    $v0, %got(B_1002DDAC)($gp)
/* 00432934 00000000 */  nop   
/* 00432938 8C42DDAC */  lw    $v0, %lo(B_1002DDAC)($v0)
/* 0043293C 00000000 */  nop   
/* 00432940 0202082B */  sltu  $at, $s0, $v0
/* 00432944 10200259 */  beqz  $at, .L004332AC
/* 00432948 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0043294C 10000256 */  b     .L004332A8
/* 00432950 00408025 */   move  $s0, $v0
.L00432954:
/* 00432954 8FB8005C */  lw    $t8, 0x5c($sp)
/* 00432958 00000000 */  nop   
/* 0043295C 00187980 */  sll   $t7, $t8, 6
/* 00432960 000F76C2 */  srl   $t6, $t7, 0x1b
/* 00432964 2DC10016 */  sltiu $at, $t6, 0x16
/* 00432968 1020022F */  beqz  $at, .L00433228
/* 0043296C 00000000 */   nop   
/* 00432970 8F81806C */  lw    $at, %got(jtbl_10015EAC)($gp)
/* 00432974 000E7080 */  sll   $t6, $t6, 2
/* 00432978 002E0821 */  addu  $at, $at, $t6
/* 0043297C 8C2E5EAC */  lw    $t6, %lo(jtbl_10015EAC)($at)
/* 00432980 00000000 */  nop   
/* 00432984 01DC7021 */  addu  $t6, $t6, $gp
/* 00432988 01C00008 */  jr    $t6
/* 0043298C 00000000 */   nop   
.L00432990:
/* 00432990 8F82808C */  lw    $v0, %got(B_1002DDA0)($gp)
/* 00432994 8FB9005C */  lw    $t9, 0x5c($sp)
/* 00432998 8C42DDA0 */  lw    $v0, %lo(B_1002DDA0)($v0)
/* 0043299C 00194980 */  sll   $t1, $t9, 6
/* 004329A0 0202082B */  sltu  $at, $s0, $v0
/* 004329A4 10200002 */  beqz  $at, .L004329B0
/* 004329A8 000956C2 */   srl   $t2, $t1, 0x1b
/* 004329AC 00408025 */  move  $s0, $v0
.L004329B0:
/* 004329B0 8F8B8964 */  lw     $t3, %got(fp_latency)($gp)
/* 004329B4 3328003F */  andi  $t0, $t9, 0x3f
/* 004329B8 8F8E8AC0 */  lw     $t6, %got(fp_pipelining)($gp)
/* 004329BC 00086080 */  sll   $t4, $t0, 2
/* 004329C0 8D6B0000 */  lw    $t3, ($t3)
/* 004329C4 01886023 */  subu  $t4, $t4, $t0
/* 004329C8 8DCE0000 */  lw    $t6, ($t6)
/* 004329CC 000C60C0 */  sll   $t4, $t4, 3
/* 004329D0 000AC080 */  sll   $t8, $t2, 2
/* 004329D4 01404825 */  move  $t1, $t2
/* 004329D8 016C6821 */  addu  $t5, $t3, $t4
/* 004329DC 01B87821 */  addu  $t7, $t5, $t8
/* 004329E0 25CAFFFF */  addiu $t2, $t6, -1
/* 004329E4 8DE7FFC0 */  lw    $a3, -0x40($t7)
/* 004329E8 2D41000B */  sltiu $at, $t2, 0xb
/* 004329EC 10200204 */  beqz  $at, .L00433200
/* 004329F0 00000000 */   nop   
/* 004329F4 8F81806C */  lw    $at, %got(jtbl_10015F04)($gp)
/* 004329F8 000A5080 */  sll   $t2, $t2, 2
/* 004329FC 002A0821 */  addu  $at, $at, $t2
/* 00432A00 8C2A5F04 */  lw    $t2, %lo(jtbl_10015F04)($at)
/* 00432A04 00000000 */  nop   
/* 00432A08 015C5021 */  addu  $t2, $t2, $gp
/* 00432A0C 01400008 */  jr    $t2
/* 00432A10 00000000 */   nop   
.L00432A14:
/* 00432A14 24050002 */  li    $a1, 2
/* 00432A18 11050012 */  beq   $t0, $a1, .L00432A64
/* 00432A1C 24ED001F */   addiu $t5, $a3, 0x1f
/* 00432A20 24010003 */  li    $at, 3
/* 00432A24 11010005 */  beq   $t0, $at, .L00432A3C
/* 00432A28 24EB001D */   addiu $t3, $a3, 0x1d
/* 00432A2C 24190001 */  li    $t9, 1
/* 00432A30 00F91804 */  sllv  $v1, $t9, $a3
/* 00432A34 10000013 */  b     .L00432A84
/* 00432A38 2463FFFF */   addiu $v1, $v1, -1
.L00432A3C:
/* 00432A3C 8F82808C */  lw    $v0, %got(B_1002DDA4)($gp)
/* 00432A40 240C0007 */  li    $t4, 7
/* 00432A44 8C42DDA4 */  lw    $v0, %lo(B_1002DDA4)($v0)
/* 00432A48 016C1804 */  sllv  $v1, $t4, $t3
/* 00432A4C 0202082B */  sltu  $at, $s0, $v0
/* 00432A50 10200002 */  beqz  $at, .L00432A5C
/* 00432A54 00000000 */   nop   
/* 00432A58 00408025 */  move  $s0, $v0
.L00432A5C:
/* 00432A5C 10000009 */  b     .L00432A84
/* 00432A60 24630001 */   addiu $v1, $v1, 1
.L00432A64:
/* 00432A64 8F82808C */  lw    $v0, %got(B_1002DDAC)($gp)
/* 00432A68 24180001 */  li    $t8, 1
/* 00432A6C 8C42DDAC */  lw    $v0, %lo(B_1002DDAC)($v0)
/* 00432A70 01B81804 */  sllv  $v1, $t8, $t5
/* 00432A74 0202082B */  sltu  $at, $s0, $v0
/* 00432A78 10200002 */  beqz  $at, .L00432A84
/* 00432A7C 24630001 */   addiu $v1, $v1, 1
/* 00432A80 00408025 */  move  $s0, $v0
.L00432A84:
/* 00432A84 8F8F808C */  lw    $t7, %got(B_1002DDD0)($gp)
/* 00432A88 00000000 */  nop   
/* 00432A8C 8DEFDDD0 */  lw    $t7, %lo(B_1002DDD0)($t7)
/* 00432A90 00000000 */  nop   
/* 00432A94 020F3823 */  subu  $a3, $s0, $t7
/* 00432A98 2CE10020 */  sltiu $at, $a3, 0x20
/* 00432A9C 10200203 */  beqz  $at, .L004332AC
/* 00432AA0 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00432AA4 8F8E808C */  lw    $t6, %got(B_1002DDC0)($gp)
/* 00432AA8 00000000 */  nop   
/* 00432AAC 8DCEDDC0 */  lw    $t6, %lo(B_1002DDC0)($t6)
/* 00432AB0 00000000 */  nop   
/* 00432AB4 00EE1006 */  srlv  $v0, $t6, $a3
/* 00432AB8 00435024 */  and   $t2, $v0, $v1
/* 00432ABC 114001FB */  beqz  $t2, .L004332AC
/* 00432AC0 8FBF001C */   lw    $ra, 0x1c($sp)
.L00432AC4:
/* 00432AC4 0002C842 */  srl   $t9, $v0, 1
/* 00432AC8 03236024 */  and   $t4, $t9, $v1
/* 00432ACC 26100001 */  addiu $s0, $s0, 1
/* 00432AD0 1580FFFC */  bnez  $t4, .L00432AC4
/* 00432AD4 03201025 */   move  $v0, $t9
/* 00432AD8 100001F4 */  b     .L004332AC
/* 00432ADC 8FBF001C */   lw    $ra, 0x1c($sp)
.L00432AE0:
/* 00432AE0 24050002 */  li    $a1, 2
/* 00432AE4 1105000E */  beq   $t0, $a1, .L00432B20
/* 00432AE8 24010003 */   li    $at, 3
/* 00432AEC 11010003 */  beq   $t0, $at, .L00432AFC
/* 00432AF0 24010004 */   li    $at, 4
/* 00432AF4 15010013 */  bne   $t0, $at, .L00432B44
/* 00432AF8 00000000 */   nop   
.L00432AFC:
/* 00432AFC 8F82808C */  lw    $v0, %got(B_1002DDA4)($gp)
/* 00432B00 00000000 */  nop   
/* 00432B04 8C42DDA4 */  lw    $v0, %lo(B_1002DDA4)($v0)
/* 00432B08 00000000 */  nop   
/* 00432B0C 0202082B */  sltu  $at, $s0, $v0
/* 00432B10 102001E6 */  beqz  $at, .L004332AC
/* 00432B14 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00432B18 100001E3 */  b     .L004332A8
/* 00432B1C 00408025 */   move  $s0, $v0
.L00432B20:
/* 00432B20 8F82808C */  lw    $v0, %got(B_1002DDAC)($gp)
/* 00432B24 00000000 */  nop   
/* 00432B28 8C42DDAC */  lw    $v0, %lo(B_1002DDAC)($v0)
/* 00432B2C 00000000 */  nop   
/* 00432B30 0202082B */  sltu  $at, $s0, $v0
/* 00432B34 102001DD */  beqz  $at, .L004332AC
/* 00432B38 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00432B3C 100001DA */  b     .L004332A8
/* 00432B40 00408025 */   move  $s0, $v0
.L00432B44:
/* 00432B44 8F82808C */  lw    $v0, %got(B_1002DDBC)($gp)
/* 00432B48 00000000 */  nop   
/* 00432B4C 8C42DDBC */  lw    $v0, %lo(B_1002DDBC)($v0)
/* 00432B50 00000000 */  nop   
/* 00432B54 0202082B */  sltu  $at, $s0, $v0
/* 00432B58 102001D4 */  beqz  $at, .L004332AC
/* 00432B5C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00432B60 100001D1 */  b     .L004332A8
/* 00432B64 00408025 */   move  $s0, $v0
.L00432B68:
/* 00432B68 24010006 */  li    $at, 6
/* 00432B6C 110101CE */  beq   $t0, $at, .L004332A8
/* 00432B70 24050002 */   li    $a1, 2
/* 00432B74 11050027 */  beq   $t0, $a1, .L00432C14
/* 00432B78 24010003 */   li    $at, 3
/* 00432B7C 1101001A */  beq   $t0, $at, .L00432BE8
/* 00432B80 24010004 */   li    $at, 4
/* 00432B84 11010006 */  beq   $t0, $at, .L00432BA0
/* 00432B88 00000000 */   nop   
/* 00432B8C 8F82808C */  lw    $v0, %got(B_1002DDA4)($gp)
/* 00432B90 8F86808C */  lw    $a2, %got(B_1002DDB8)($gp)
/* 00432B94 8C42DDA4 */  lw    $v0, %lo(B_1002DDA4)($v0)
/* 00432B98 1000002A */  b     .L00432C44
/* 00432B9C 24C6DDB8 */   addiu $a2, %lo(B_1002DDB8) # addiu $a2, $a2, -0x2248
.L00432BA0:
/* 00432BA0 8F86808C */  lw    $a2, %got(B_1002DDB8)($gp)
/* 00432BA4 00000000 */  nop   
/* 00432BA8 24C6DDB8 */  addiu $a2, %lo(B_1002DDB8) # addiu $a2, $a2, -0x2248
/* 00432BAC 8CC20000 */  lw    $v0, ($a2)
/* 00432BB0 00000000 */  nop   
/* 00432BB4 0202082B */  sltu  $at, $s0, $v0
/* 00432BB8 10200002 */  beqz  $at, .L00432BC4
/* 00432BBC 00000000 */   nop   
/* 00432BC0 00408025 */  move  $s0, $v0
.L00432BC4:
/* 00432BC4 8F82808C */  lw    $v0, %got(B_1002DDA4)($gp)
/* 00432BC8 00000000 */  nop   
/* 00432BCC 8C42DDA4 */  lw    $v0, %lo(B_1002DDA4)($v0)
/* 00432BD0 00000000 */  nop   
/* 00432BD4 0202082B */  sltu  $at, $s0, $v0
/* 00432BD8 1020001B */  beqz  $at, .L00432C48
/* 00432BDC 0202082B */   sltu  $at, $s0, $v0
/* 00432BE0 10000018 */  b     .L00432C44
/* 00432BE4 00408025 */   move  $s0, $v0
.L00432BE8:
/* 00432BE8 8F82808C */  lw    $v0, %got(B_1002DDA4)($gp)
/* 00432BEC 00000000 */  nop   
/* 00432BF0 8C42DDA4 */  lw    $v0, %lo(B_1002DDA4)($v0)
/* 00432BF4 00000000 */  nop   
/* 00432BF8 0202082B */  sltu  $at, $s0, $v0
/* 00432BFC 10200002 */  beqz  $at, .L00432C08
/* 00432C00 00000000 */   nop   
/* 00432C04 00408025 */  move  $s0, $v0
.L00432C08:
/* 00432C08 8F86808C */  lw    $a2, %got(B_1002DDB8)($gp)
/* 00432C0C 1000000D */  b     .L00432C44
/* 00432C10 24C6DDB8 */   addiu $a2, %lo(B_1002DDB8) # addiu $a2, $a2, -0x2248
.L00432C14:
/* 00432C14 8F82808C */  lw    $v0, %got(B_1002DDAC)($gp)
/* 00432C18 00000000 */  nop   
/* 00432C1C 8C42DDAC */  lw    $v0, %lo(B_1002DDAC)($v0)
/* 00432C20 00000000 */  nop   
/* 00432C24 0202082B */  sltu  $at, $s0, $v0
/* 00432C28 10200002 */  beqz  $at, .L00432C34
/* 00432C2C 00000000 */   nop   
/* 00432C30 00408025 */  move  $s0, $v0
.L00432C34:
/* 00432C34 8F82808C */  lw    $v0, %got(B_1002DDA4)($gp)
/* 00432C38 8F86808C */  lw    $a2, %got(B_1002DDB8)($gp)
/* 00432C3C 8C42DDA4 */  lw    $v0, %lo(B_1002DDA4)($v0)
/* 00432C40 24C6DDB8 */  addiu $a2, %lo(B_1002DDB8) # addiu $a2, $a2, -0x2248
.L00432C44:
/* 00432C44 0202082B */  sltu  $at, $s0, $v0
.L00432C48:
/* 00432C48 1020001E */  beqz  $at, .L00432CC4
/* 00432C4C 250DFFFD */   addiu $t5, $t0, -3
/* 00432C50 00505823 */  subu  $t3, $v0, $s0
/* 00432C54 2D61000E */  sltiu $at, $t3, 0xe
/* 00432C58 10200004 */  beqz  $at, .L00432C6C
/* 00432C5C 0202082B */   sltu  $at, $s0, $v0
/* 00432C60 10200002 */  beqz  $at, .L00432C6C
/* 00432C64 00000000 */   nop   
/* 00432C68 00408025 */  move  $s0, $v0
.L00432C6C:
/* 00432C6C 8F83808C */  lw    $v1, %got(B_1002DDA8)($gp)
/* 00432C70 00000000 */  nop   
/* 00432C74 8C63DDA8 */  lw    $v1, %lo(B_1002DDA8)($v1)
/* 00432C78 00000000 */  nop   
/* 00432C7C 02032023 */  subu  $a0, $s0, $v1
/* 00432C80 2C810004 */  sltiu $at, $a0, 4
/* 00432C84 1020000F */  beqz  $at, .L00432CC4
/* 00432C88 0043C023 */   subu  $t8, $v0, $v1
/* 00432C8C 24010023 */  li    $at, 35
/* 00432C90 17010007 */  bne   $t8, $at, .L00432CB0
/* 00432C94 00000000 */   nop   
/* 00432C98 15050005 */  bne   $t0, $a1, .L00432CB0
/* 00432C9C 00000000 */   nop   
/* 00432CA0 14A40008 */  bne   $a1, $a0, .L00432CC4
/* 00432CA4 00000000 */   nop   
/* 00432CA8 10000006 */  b     .L00432CC4
/* 00432CAC 26100001 */   addiu $s0, $s0, 1
.L00432CB0:
/* 00432CB0 24620004 */  addiu $v0, $v1, 4
/* 00432CB4 0202082B */  sltu  $at, $s0, $v0
/* 00432CB8 10200002 */  beqz  $at, .L00432CC4
/* 00432CBC 00000000 */   nop   
/* 00432CC0 00408025 */  move  $s0, $v0
.L00432CC4:
/* 00432CC4 1105000A */  beq   $t0, $a1, .L00432CF0
/* 00432CC8 2DA10023 */   sltiu $at, $t5, 0x23
/* 00432CCC 8F82808C */  lw    $v0, %got(B_1002DDBC)($gp)
/* 00432CD0 00000000 */  nop   
/* 00432CD4 8C42DDBC */  lw    $v0, %lo(B_1002DDBC)($v0)
/* 00432CD8 00000000 */  nop   
/* 00432CDC 0202082B */  sltu  $at, $s0, $v0
/* 00432CE0 10200003 */  beqz  $at, .L00432CF0
/* 00432CE4 2DA10023 */   sltiu $at, $t5, 0x23
/* 00432CE8 00408025 */  move  $s0, $v0
/* 00432CEC 2DA10023 */  sltiu $at, $t5, 0x23
.L00432CF0:
/* 00432CF0 10200060 */  beqz  $at, .L00432E74
/* 00432CF4 00000000 */   nop   
/* 00432CF8 8F81806C */  lw    $at, %got(jtbl_10015F30)($gp)
/* 00432CFC 000D6880 */  sll   $t5, $t5, 2
/* 00432D00 002D0821 */  addu  $at, $at, $t5
/* 00432D04 8C2D5F30 */  lw    $t5, %lo(jtbl_10015F30)($at)
/* 00432D08 00000000 */  nop   
/* 00432D0C 01BC6821 */  addu  $t5, $t5, $gp
/* 00432D10 01A00008 */  jr    $t5
/* 00432D14 00000000 */   nop   
.L00432D18:
/* 00432D18 8CC20000 */  lw    $v0, ($a2)
/* 00432D1C 00000000 */  nop   
/* 00432D20 0202082B */  sltu  $at, $s0, $v0
/* 00432D24 10200053 */  beqz  $at, .L00432E74
/* 00432D28 00000000 */   nop   
/* 00432D2C 8F83808C */  lw    $v1, %got(B_1002DDB0)($gp)
/* 00432D30 24010001 */  li    $at, 1
/* 00432D34 8C63DDB0 */  lw    $v1, %lo(B_1002DDB0)($v1)
/* 00432D38 00000000 */  nop   
/* 00432D3C 02037823 */  subu  $t7, $s0, $v1
/* 00432D40 15E10007 */  bne   $t7, $at, .L00432D60
/* 00432D44 0202082B */   sltu  $at, $s0, $v0
/* 00432D48 8F8E808C */  lw    $t6, %got(B_1002DDB4)($gp)
/* 00432D4C 00000000 */  nop   
/* 00432D50 8DCEDDB4 */  lw    $t6, %lo(B_1002DDB4)($t6)
/* 00432D54 00000000 */  nop   
/* 00432D58 15C30046 */  bne   $t6, $v1, .L00432E74
/* 00432D5C 0202082B */   sltu  $at, $s0, $v0
.L00432D60:
/* 00432D60 10200044 */  beqz  $at, .L00432E74
/* 00432D64 00000000 */   nop   
/* 00432D68 10000042 */  b     .L00432E74
/* 00432D6C 00408025 */   move  $s0, $v0
.L00432D70:
/* 00432D70 24010011 */  li    $at, 17
/* 00432D74 1121000D */  beq   $t1, $at, .L00432DAC
/* 00432D78 02002025 */   move  $a0, $s0
/* 00432D7C 24010014 */  li    $at, 20
/* 00432D80 11210003 */  beq   $t1, $at, .L00432D90
/* 00432D84 24010015 */   li    $at, 21
/* 00432D88 1521003A */  bne   $t1, $at, .L00432E74
/* 00432D8C 00000000 */   nop   
.L00432D90:
/* 00432D90 8CC20000 */  lw    $v0, ($a2)
/* 00432D94 00000000 */  nop   
/* 00432D98 0202082B */  sltu  $at, $s0, $v0
/* 00432D9C 10200035 */  beqz  $at, .L00432E74
/* 00432DA0 00000000 */   nop   
/* 00432DA4 10000033 */  b     .L00432E74
/* 00432DA8 00408025 */   move  $s0, $v0
.L00432DAC:
/* 00432DAC 8F998020 */  lw    $t9, %got(func_004325F0)($gp)
/* 00432DB0 AFA70048 */  sw    $a3, 0x48($sp)
/* 00432DB4 273925F0 */  addiu $t9, %lo(func_004325F0) # addiu $t9, $t9, 0x25f0
/* 00432DB8 AFA80050 */  sw    $t0, 0x50($sp)
/* 00432DBC 0320F809 */  jalr  $t9
/* 00432DC0 AFA90054 */   sw    $t1, 0x54($sp)
/* 00432DC4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00432DC8 8FA70048 */  lw    $a3, 0x48($sp)
/* 00432DCC 8FA80050 */  lw    $t0, 0x50($sp)
/* 00432DD0 8FA90054 */  lw    $t1, 0x54($sp)
/* 00432DD4 10000027 */  b     .L00432E74
/* 00432DD8 00408025 */   move  $s0, $v0
.L00432DDC:
/* 00432DDC 24010014 */  li    $at, 20
/* 00432DE0 11210005 */  beq   $t1, $at, .L00432DF8
/* 00432DE4 24010015 */   li    $at, 21
/* 00432DE8 1121000A */  beq   $t1, $at, .L00432E14
/* 00432DEC 02002025 */   move  $a0, $s0
/* 00432DF0 10000020 */  b     .L00432E74
/* 00432DF4 00000000 */   nop   
.L00432DF8:
/* 00432DF8 8CC20000 */  lw    $v0, ($a2)
/* 00432DFC 00000000 */  nop   
/* 00432E00 0202082B */  sltu  $at, $s0, $v0
/* 00432E04 1020001B */  beqz  $at, .L00432E74
/* 00432E08 00000000 */   nop   
/* 00432E0C 10000019 */  b     .L00432E74
/* 00432E10 00408025 */   move  $s0, $v0
.L00432E14:
/* 00432E14 8F998020 */  lw    $t9, %got(func_004325F0)($gp)
/* 00432E18 AFA70048 */  sw    $a3, 0x48($sp)
/* 00432E1C 273925F0 */  addiu $t9, %lo(func_004325F0) # addiu $t9, $t9, 0x25f0
/* 00432E20 AFA80050 */  sw    $t0, 0x50($sp)
/* 00432E24 0320F809 */  jalr  $t9
/* 00432E28 AFA90054 */   sw    $t1, 0x54($sp)
/* 00432E2C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00432E30 8FA70048 */  lw    $a3, 0x48($sp)
/* 00432E34 8FA80050 */  lw    $t0, 0x50($sp)
/* 00432E38 8FA90054 */  lw    $t1, 0x54($sp)
/* 00432E3C 1000000D */  b     .L00432E74
/* 00432E40 00408025 */   move  $s0, $v0
.L00432E44:
/* 00432E44 8F998020 */  lw    $t9, %got(func_004325F0)($gp)
/* 00432E48 02002025 */  move  $a0, $s0
/* 00432E4C 273925F0 */  addiu $t9, %lo(func_004325F0) # addiu $t9, $t9, 0x25f0
/* 00432E50 AFA70048 */  sw    $a3, 0x48($sp)
/* 00432E54 AFA80050 */  sw    $t0, 0x50($sp)
/* 00432E58 0320F809 */  jalr  $t9
/* 00432E5C AFA90054 */   sw    $t1, 0x54($sp)
/* 00432E60 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00432E64 8FA70048 */  lw    $a3, 0x48($sp)
/* 00432E68 8FA80050 */  lw    $t0, 0x50($sp)
/* 00432E6C 8FA90054 */  lw    $t1, 0x54($sp)
/* 00432E70 00408025 */  move  $s0, $v0
.L00432E74:
/* 00432E74 8F8A808C */  lw    $t2, %got(B_1002DDD0)($gp)
/* 00432E78 24180001 */  li    $t8, 1
/* 00432E7C 8D4ADDD0 */  lw    $t2, %lo(B_1002DDD0)($t2)
/* 00432E80 00F83004 */  sllv  $a2, $t8, $a3
/* 00432E84 020A2823 */  subu  $a1, $s0, $t2
/* 00432E88 2CA10020 */  sltiu $at, $a1, 0x20
/* 00432E8C 10200107 */  beqz  $at, .L004332AC
/* 00432E90 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00432E94 8F8B808C */  lw    $t3, %got(B_1002DDC4)($gp)
/* 00432E98 8F99808C */  lw    $t9, %got(B_1002DDC8)($gp)
/* 00432E9C 8F8C808C */  lw    $t4, %got(B_1002DDCC)($gp)
/* 00432EA0 8D6BDDC4 */  lw    $t3, %lo(B_1002DDC4)($t3)
/* 00432EA4 8F39DDC8 */  lw    $t9, %lo(B_1002DDC8)($t9)
/* 00432EA8 8D8CDDCC */  lw    $t4, %lo(B_1002DDCC)($t4)
/* 00432EAC 00AB2006 */  srlv  $a0, $t3, $a1
/* 00432EB0 00C46824 */  and   $t5, $a2, $a0
/* 00432EB4 00B91006 */  srlv  $v0, $t9, $a1
/* 00432EB8 15A00016 */  bnez  $t5, .L00432F14
/* 00432EBC 00AC1806 */   srlv  $v1, $t4, $a1
/* 00432EC0 00087880 */  sll   $t7, $t0, 2
/* 00432EC4 8F878998 */  lw     $a3, %got(r4010_a)($gp)
/* 00432EC8 01E87823 */  subu  $t7, $t7, $t0
/* 00432ECC 000F78C0 */  sll   $t7, $t7, 3
/* 00432ED0 00095080 */  sll   $t2, $t1, 2
/* 00432ED4 00EF7021 */  addu  $t6, $a3, $t7
/* 00432ED8 01CAC821 */  addu  $t9, $t6, $t2
/* 00432EDC 8F2CFFC0 */  lw    $t4, -0x40($t9)
/* 00432EE0 0008C080 */  sll   $t8, $t0, 2
/* 00432EE4 01825824 */  and   $t3, $t4, $v0
/* 00432EE8 1560000A */  bnez  $t3, .L00432F14
/* 00432EEC 0308C023 */   subu  $t8, $t8, $t0
/* 00432EF0 8F85899C */  lw     $a1, %got(r4010_s)($gp)
/* 00432EF4 0018C0C0 */  sll   $t8, $t8, 3
/* 00432EF8 00097880 */  sll   $t7, $t1, 2
/* 00432EFC 00B86821 */  addu  $t5, $a1, $t8
/* 00432F00 01AF7021 */  addu  $t6, $t5, $t7
/* 00432F04 8DCAFFC0 */  lw    $t2, -0x40($t6)
/* 00432F08 00000000 */  nop   
/* 00432F0C 0143C824 */  and   $t9, $t2, $v1
/* 00432F10 132000E5 */  beqz  $t9, .L004332A8
.L00432F14:
/* 00432F14 00046042 */   srl   $t4, $a0, 1
.L00432F18:
/* 00432F18 8F85899C */  lw     $a1, %got(r4010_s)($gp)
/* 00432F1C 8F878998 */  lw     $a3, %got(r4010_a)($gp)
/* 00432F20 00025842 */  srl   $t3, $v0, 1
/* 00432F24 00CC6824 */  and   $t5, $a2, $t4
/* 00432F28 0003C042 */  srl   $t8, $v1, 1
/* 00432F2C 26100001 */  addiu $s0, $s0, 1
/* 00432F30 01802025 */  move  $a0, $t4
/* 00432F34 01601025 */  move  $v0, $t3
/* 00432F38 15A0FFF6 */  bnez  $t5, .L00432F14
/* 00432F3C 03001825 */   move  $v1, $t8
/* 00432F40 00087880 */  sll   $t7, $t0, 2
/* 00432F44 01E87823 */  subu  $t7, $t7, $t0
/* 00432F48 000F78C0 */  sll   $t7, $t7, 3
/* 00432F4C 00EF7021 */  addu  $t6, $a3, $t7
/* 00432F50 00095080 */  sll   $t2, $t1, 2
/* 00432F54 01CAC821 */  addu  $t9, $t6, $t2
/* 00432F58 8F2CFFC0 */  lw    $t4, -0x40($t9)
/* 00432F5C 00000000 */  nop   
/* 00432F60 018B5824 */  and   $t3, $t4, $t3
/* 00432F64 1560FFEC */  bnez  $t3, .L00432F18
/* 00432F68 00046042 */   srl   $t4, $a0, 1
/* 00432F6C 0008C080 */  sll   $t8, $t0, 2
/* 00432F70 0308C023 */  subu  $t8, $t8, $t0
/* 00432F74 0018C0C0 */  sll   $t8, $t8, 3
/* 00432F78 00B86821 */  addu  $t5, $a1, $t8
/* 00432F7C 00097880 */  sll   $t7, $t1, 2
/* 00432F80 01AF7021 */  addu  $t6, $t5, $t7
/* 00432F84 8DCAFFC0 */  lw    $t2, -0x40($t6)
/* 00432F88 00000000 */  nop   
/* 00432F8C 0143C824 */  and   $t9, $t2, $v1
/* 00432F90 1720FFE1 */  bnez  $t9, .L00432F18
/* 00432F94 00046042 */   srl   $t4, $a0, 1
/* 00432F98 100000C4 */  b     .L004332AC
/* 00432F9C 8FBF001C */   lw    $ra, 0x1c($sp)
.L00432FA0:
/* 00432FA0 24050002 */  li    $a1, 2
/* 00432FA4 1505000A */  bne   $t0, $a1, .L00432FD0
/* 00432FA8 00000000 */   nop   
/* 00432FAC 8F82808C */  lw    $v0, %got(B_1002DDAC)($gp)
/* 00432FB0 00000000 */  nop   
/* 00432FB4 8C42DDAC */  lw    $v0, %lo(B_1002DDAC)($v0)
/* 00432FB8 00000000 */  nop   
/* 00432FBC 0202082B */  sltu  $at, $s0, $v0
/* 00432FC0 102000BA */  beqz  $at, .L004332AC
/* 00432FC4 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00432FC8 100000B7 */  b     .L004332A8
/* 00432FCC 00408025 */   move  $s0, $v0
.L00432FD0:
/* 00432FD0 8F82808C */  lw    $v0, %got(B_1002DDBC)($gp)
/* 00432FD4 00000000 */  nop   
/* 00432FD8 8C42DDBC */  lw    $v0, %lo(B_1002DDBC)($v0)
/* 00432FDC 00000000 */  nop   
/* 00432FE0 0202082B */  sltu  $at, $s0, $v0
/* 00432FE4 102000B1 */  beqz  $at, .L004332AC
/* 00432FE8 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00432FEC 100000AE */  b     .L004332A8
/* 00432FF0 00408025 */   move  $s0, $v0
.L00432FF4:
/* 00432FF4 24050002 */  li    $a1, 2
/* 00432FF8 11050005 */  beq   $t0, $a1, .L00433010
/* 00432FFC 24010003 */   li    $at, 3
/* 00433000 11010003 */  beq   $t0, $at, .L00433010
/* 00433004 24010004 */   li    $at, 4
/* 00433008 1501000A */  bne   $t0, $at, .L00433034
/* 0043300C 00000000 */   nop   
.L00433010:
/* 00433010 8F82808C */  lw    $v0, %got(B_1002DDAC)($gp)
/* 00433014 00000000 */  nop   
/* 00433018 8C42DDAC */  lw    $v0, %lo(B_1002DDAC)($v0)
/* 0043301C 00000000 */  nop   
/* 00433020 0202082B */  sltu  $at, $s0, $v0
/* 00433024 102000A1 */  beqz  $at, .L004332AC
/* 00433028 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0043302C 1000009E */  b     .L004332A8
/* 00433030 00408025 */   move  $s0, $v0
.L00433034:
/* 00433034 8F82808C */  lw    $v0, %got(B_1002DDBC)($gp)
/* 00433038 00000000 */  nop   
/* 0043303C 8C42DDBC */  lw    $v0, %lo(B_1002DDBC)($v0)
/* 00433040 00000000 */  nop   
/* 00433044 0202082B */  sltu  $at, $s0, $v0
/* 00433048 10200098 */  beqz  $at, .L004332AC
/* 0043304C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00433050 10000095 */  b     .L004332A8
/* 00433054 00408025 */   move  $s0, $v0
.L00433058:
/* 00433058 24050002 */  li    $a1, 2
/* 0043305C 1105000E */  beq   $t0, $a1, .L00433098
/* 00433060 24010003 */   li    $at, 3
/* 00433064 11010003 */  beq   $t0, $at, .L00433074
/* 00433068 24010004 */   li    $at, 4
/* 0043306C 15010013 */  bne   $t0, $at, .L004330BC
/* 00433070 00000000 */   nop   
.L00433074:
/* 00433074 8F82808C */  lw    $v0, %got(B_1002DDA4)($gp)
/* 00433078 00000000 */  nop   
/* 0043307C 8C42DDA4 */  lw    $v0, %lo(B_1002DDA4)($v0)
/* 00433080 00000000 */  nop   
/* 00433084 0202082B */  sltu  $at, $s0, $v0
/* 00433088 10200088 */  beqz  $at, .L004332AC
/* 0043308C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00433090 10000085 */  b     .L004332A8
/* 00433094 00408025 */   move  $s0, $v0
.L00433098:
/* 00433098 8F82808C */  lw    $v0, %got(B_1002DDAC)($gp)
/* 0043309C 00000000 */  nop   
/* 004330A0 8C42DDAC */  lw    $v0, %lo(B_1002DDAC)($v0)
/* 004330A4 00000000 */  nop   
/* 004330A8 0202082B */  sltu  $at, $s0, $v0
/* 004330AC 1020007F */  beqz  $at, .L004332AC
/* 004330B0 8FBF001C */   lw    $ra, 0x1c($sp)
/* 004330B4 1000007C */  b     .L004332A8
/* 004330B8 00408025 */   move  $s0, $v0
.L004330BC:
/* 004330BC 8F82808C */  lw    $v0, %got(B_1002DDBC)($gp)
/* 004330C0 00000000 */  nop   
/* 004330C4 8C42DDBC */  lw    $v0, %lo(B_1002DDBC)($v0)
/* 004330C8 00000000 */  nop   
/* 004330CC 0202082B */  sltu  $at, $s0, $v0
/* 004330D0 10200076 */  beqz  $at, .L004332AC
/* 004330D4 8FBF001C */   lw    $ra, 0x1c($sp)
/* 004330D8 10000073 */  b     .L004332A8
/* 004330DC 00408025 */   move  $s0, $v0
.L004330E0:
/* 004330E0 24050002 */  li    $a1, 2
/* 004330E4 11050010 */  beq   $t0, $a1, .L00433128
/* 004330E8 24EC001F */   addiu $t4, $a3, 0x1f
/* 004330EC 24010003 */  li    $at, 3
/* 004330F0 11010003 */  beq   $t0, $at, .L00433100
/* 004330F4 24010004 */   li    $at, 4
/* 004330F8 15010015 */  bne   $t0, $at, .L00433150
/* 004330FC 24F8001F */   addiu $t8, $a3, 0x1f
.L00433100:
/* 00433100 8F82808C */  lw    $v0, %got(B_1002DDA4)($gp)
/* 00433104 00000000 */  nop   
/* 00433108 8C42DDA4 */  lw    $v0, %lo(B_1002DDA4)($v0)
/* 0043310C 00000000 */  nop   
/* 00433110 0202082B */  sltu  $at, $s0, $v0
/* 00433114 10200002 */  beqz  $at, .L00433120
/* 00433118 00000000 */   nop   
/* 0043311C 00408025 */  move  $s0, $v0
.L00433120:
/* 00433120 1000FE58 */  b     .L00432A84
/* 00433124 00001825 */   move  $v1, $zero
.L00433128:
/* 00433128 8F82808C */  lw    $v0, %got(B_1002DDAC)($gp)
/* 0043312C 240B0001 */  li    $t3, 1
/* 00433130 8C42DDAC */  lw    $v0, %lo(B_1002DDAC)($v0)
/* 00433134 00000000 */  nop   
/* 00433138 0202082B */  sltu  $at, $s0, $v0
/* 0043313C 10200002 */  beqz  $at, .L00433148
/* 00433140 00000000 */   nop   
/* 00433144 00408025 */  move  $s0, $v0
.L00433148:
/* 00433148 1000FE4E */  b     .L00432A84
/* 0043314C 018B1804 */   sllv  $v1, $t3, $t4
.L00433150:
/* 00433150 8F82808C */  lw    $v0, %got(B_1002DDBC)($gp)
/* 00433154 240D0001 */  li    $t5, 1
/* 00433158 8C42DDBC */  lw    $v0, %lo(B_1002DDBC)($v0)
/* 0043315C 00000000 */  nop   
/* 00433160 0202082B */  sltu  $at, $s0, $v0
/* 00433164 10200002 */  beqz  $at, .L00433170
/* 00433168 00000000 */   nop   
/* 0043316C 00408025 */  move  $s0, $v0
.L00433170:
/* 00433170 1000FE44 */  b     .L00432A84
/* 00433174 030D1804 */   sllv  $v1, $t5, $t8
.L00433178:
/* 00433178 24050002 */  li    $a1, 2
/* 0043317C 1105000E */  beq   $t0, $a1, .L004331B8
/* 00433180 24010003 */   li    $at, 3
/* 00433184 11010003 */  beq   $t0, $at, .L00433194
/* 00433188 24010004 */   li    $at, 4
/* 0043318C 15010013 */  bne   $t0, $at, .L004331DC
/* 00433190 00000000 */   nop   
.L00433194:
/* 00433194 8F82808C */  lw    $v0, %got(B_1002DDA4)($gp)
/* 00433198 00000000 */  nop   
/* 0043319C 8C42DDA4 */  lw    $v0, %lo(B_1002DDA4)($v0)
/* 004331A0 00000000 */  nop   
/* 004331A4 0202082B */  sltu  $at, $s0, $v0
/* 004331A8 10200040 */  beqz  $at, .L004332AC
/* 004331AC 8FBF001C */   lw    $ra, 0x1c($sp)
/* 004331B0 1000003D */  b     .L004332A8
/* 004331B4 00408025 */   move  $s0, $v0
.L004331B8:
/* 004331B8 8F82808C */  lw    $v0, %got(B_1002DDAC)($gp)
/* 004331BC 00000000 */  nop   
/* 004331C0 8C42DDAC */  lw    $v0, %lo(B_1002DDAC)($v0)
/* 004331C4 00000000 */  nop   
/* 004331C8 0202082B */  sltu  $at, $s0, $v0
/* 004331CC 10200037 */  beqz  $at, .L004332AC
/* 004331D0 8FBF001C */   lw    $ra, 0x1c($sp)
/* 004331D4 10000034 */  b     .L004332A8
/* 004331D8 00408025 */   move  $s0, $v0
.L004331DC:
/* 004331DC 8F82808C */  lw    $v0, %got(B_1002DDBC)($gp)
/* 004331E0 00000000 */  nop   
/* 004331E4 8C42DDBC */  lw    $v0, %lo(B_1002DDBC)($v0)
/* 004331E8 00000000 */  nop   
/* 004331EC 0202082B */  sltu  $at, $s0, $v0
/* 004331F0 1020002E */  beqz  $at, .L004332AC
/* 004331F4 8FBF001C */   lw    $ra, 0x1c($sp)
/* 004331F8 1000002B */  b     .L004332A8
/* 004331FC 00408025 */   move  $s0, $v0
.L00433200:
/* 00433200 8F84806C */  lw    $a0, %got(RO_10015550)($gp)
/* 00433204 8F85806C */  lw    $a1, %got(RO_10015558)($gp)
/* 00433208 8F998670 */  lw    $t9, %call16(assertion_failed)($gp)
/* 0043320C 24060AFD */  li    $a2, 2813
/* 00433210 24845550 */  addiu $a0, %lo(RO_10015550) # addiu $a0, $a0, 0x5550
/* 00433214 0320F809 */  jalr  $t9
/* 00433218 24A55558 */   addiu $a1, %lo(RO_10015558) # addiu $a1, $a1, 0x5558
/* 0043321C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00433220 10000022 */  b     .L004332AC
/* 00433224 8FBF001C */   lw    $ra, 0x1c($sp)
.L00433228:
/* 00433228 8F84806C */  lw    $a0, %got(RO_10015568)($gp)
/* 0043322C 8F85806C */  lw    $a1, %got(RO_10015570)($gp)
/* 00433230 8F998670 */  lw    $t9, %call16(assertion_failed)($gp)
/* 00433234 24060B01 */  li    $a2, 2817
/* 00433238 24845568 */  addiu $a0, %lo(RO_10015568) # addiu $a0, $a0, 0x5568
/* 0043323C 0320F809 */  jalr  $t9
/* 00433240 24A55570 */   addiu $a1, %lo(RO_10015570) # addiu $a1, $a1, 0x5570
/* 00433244 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00433248 00000000 */  nop   
/* 0043324C 10000017 */  b     .L004332AC
/* 00433250 8FBF001C */   lw    $ra, 0x1c($sp)
.L00433254:
/* 00433254 8F82808C */  lw    $v0, %got(B_1002DD88)($gp)
/* 00433258 00000000 */  nop   
/* 0043325C 8C42DD88 */  lw    $v0, %lo(B_1002DD88)($v0)
/* 00433260 00000000 */  nop   
/* 00433264 0202082B */  sltu  $at, $s0, $v0
/* 00433268 10200010 */  beqz  $at, .L004332AC
/* 0043326C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00433270 1000000D */  b     .L004332A8
/* 00433274 00408025 */   move  $s0, $v0
.L00433278:
/* 00433278 8F8E8A4C */  lw     $t6, %got(op_name)($gp)
/* 0043327C 00027880 */  sll   $t7, $v0, 2
/* 00433280 8F8480AC */  lw     $a0, %got(__iob)($gp)
/* 00433284 8F85806C */  lw    $a1, %got(RO_10015580)($gp)
/* 00433288 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 0043328C 01EE5021 */  addu  $t2, $t7, $t6
/* 00433290 8D460000 */  lw    $a2, ($t2)
/* 00433294 24840020 */  addiu $a0, $a0, 0x20
/* 00433298 0320F809 */  jalr  $t9
/* 0043329C 24A55580 */   addiu $a1, %lo(RO_10015580) # addiu $a1, $a1, 0x5580
/* 004332A0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004332A4 00000000 */  nop   
.L004332A8:
/* 004332A8 8FBF001C */  lw    $ra, 0x1c($sp)
.L004332AC:
/* 004332AC 02001025 */  move  $v0, $s0
/* 004332B0 8FB00014 */  lw    $s0, 0x14($sp)
/* 004332B4 03E00008 */  jr    $ra
/* 004332B8 27BD0060 */   addiu $sp, $sp, 0x60

    .type start_time, @function
    .size start_time, .-start_time
    .end start_time

glabel start_instruction
    .ent start_instruction
    # 00427388 func_00427388
    # 00433ED0 func_00433ED0
/* 004332BC 3C1C0FBF */  .cpload $t9
/* 004332C0 279C6FA4 */  
/* 004332C4 0399E021 */  
/* 004332C8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 004332CC 00057682 */  srl   $t6, $a1, 0x1a
/* 004332D0 2DC10040 */  sltiu $at, $t6, 0x40
/* 004332D4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 004332D8 AFBC0018 */  sw    $gp, 0x18($sp)
/* 004332DC AFA40020 */  sw    $a0, 0x20($sp)
/* 004332E0 AFA50024 */  sw    $a1, 0x24($sp)
/* 004332E4 1020027D */  beqz  $at, .L00433CDC
/* 004332E8 01C01025 */   move  $v0, $t6
/* 004332EC 8F81806C */  lw    $at, %got(jtbl_10015FBC)($gp)
/* 004332F0 000E7880 */  sll   $t7, $t6, 2
/* 004332F4 002F0821 */  addu  $at, $at, $t7
/* 004332F8 8C2F5FBC */  lw    $t7, %lo(jtbl_10015FBC)($at)
/* 004332FC 00000000 */  nop   
/* 00433300 01FC7821 */  addu  $t7, $t7, $gp
/* 00433304 01E00008 */  jr    $t7
/* 00433308 00000000 */   nop   
.L0043330C:
/* 0043330C 8FB80024 */  lw    $t8, 0x24($sp)
/* 00433310 8F81806C */  lw    $at, %got(RO_100160BC)($gp)
/* 00433314 3319003F */  andi  $t9, $t8, 0x3f
/* 00433318 0019C880 */  sll   $t9, $t9, 2
/* 0043331C 00390821 */  addu  $at, $at, $t9
/* 00433320 8C3960BC */  lw    $t9, %lo(RO_100160BC)($at)
/* 00433324 00000000 */  nop   
/* 00433328 033CC821 */  addu  $t9, $t9, $gp
/* 0043332C 03200008 */  jr    $t9
/* 00433330 00000000 */   nop   
/* 00433334 8FAA0024 */  lw    $t2, 0x24($sp)
/* 00433338 8F8D8A50 */  lw     $t5, %got(spec_name)($gp)
/* 0043333C 314B003F */  andi  $t3, $t2, 0x3f
/* 00433340 000B6080 */  sll   $t4, $t3, 2
/* 00433344 8F8480AC */  lw     $a0, %got(__iob)($gp)
/* 00433348 8F85806C */  lw    $a1, %got(RO_10015598)($gp)
/* 0043334C 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 00433350 018D7021 */  addu  $t6, $t4, $t5
/* 00433354 8DC60000 */  lw    $a2, ($t6)
/* 00433358 24840020 */  addiu $a0, $a0, 0x20
/* 0043335C 0320F809 */  jalr  $t9
/* 00433360 24A55598 */   addiu $a1, %lo(RO_10015598) # addiu $a1, $a1, 0x5598
/* 00433364 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00433368 00000000 */  nop   
.L0043336C:
/* 0043336C 97AF0024 */  lhu   $t7, 0x24($sp)
/* 00433370 00000000 */  nop   
/* 00433374 31F8001F */  andi  $t8, $t7, 0x1f
/* 00433378 2719FFF8 */  addiu $t9, $t8, -8
/* 0043337C 2F210007 */  sltiu $at, $t9, 7
/* 00433380 10200009 */  beqz  $at, .L004333A8
/* 00433384 00000000 */   nop   
/* 00433388 8F81806C */  lw    $at, %got(jtbl_100161BC)($gp)
/* 0043338C 0019C880 */  sll   $t9, $t9, 2
/* 00433390 00390821 */  addu  $at, $at, $t9
/* 00433394 8C3961BC */  lw    $t9, %lo(jtbl_100161BC)($at)
/* 00433398 00000000 */  nop   
/* 0043339C 033CC821 */  addu  $t9, $t9, $gp
/* 004333A0 03200008 */  jr    $t9
/* 004333A4 00000000 */   nop   
.L004333A8:
/* 004333A8 8F8B8908 */  lw     $t3, %got(branch_repeat)($gp)
/* 004333AC 8FAA0020 */  lw    $t2, 0x20($sp)
/* 004333B0 8D6B0000 */  lw    $t3, ($t3)
/* 004333B4 8F81808C */  lw    $at, %got(B_1002DD84)($gp)
/* 004333B8 014B6021 */  addu  $t4, $t2, $t3
/* 004333BC 10000253 */  b     .L00433D0C
/* 004333C0 AC2CDD84 */   sw    $t4, %lo(B_1002DD84)($at)
.L004333C4:
/* 004333C4 8F8E8910 */  lw     $t6, %got(logical_repeat)($gp)
/* 004333C8 8FAD0020 */  lw    $t5, 0x20($sp)
/* 004333CC 8DCE0000 */  lw    $t6, ($t6)
/* 004333D0 8F81808C */  lw    $at, %got(B_1002DD78)($gp)
/* 004333D4 8F988924 */  lw     $t8, %got(int_repeat)($gp)
/* 004333D8 01AE7821 */  addu  $t7, $t5, $t6
/* 004333DC 8F180000 */  lw    $t8, ($t8)
/* 004333E0 AC2FDD78 */  sw    $t7, %lo(B_1002DD78)($at)
/* 004333E4 8F81808C */  lw    $at, %got(B_1002DDD4)($gp)
/* 004333E8 01B8C821 */  addu  $t9, $t5, $t8
/* 004333EC 10000247 */  b     .L00433D0C
/* 004333F0 AC39DDD4 */   sw    $t9, %lo(B_1002DDD4)($at)
.L004333F4:
/* 004333F4 8F8B8918 */  lw     $t3, %got(shift_repeat)($gp)
/* 004333F8 8FAA0020 */  lw    $t2, 0x20($sp)
/* 004333FC 8D6B0000 */  lw    $t3, ($t3)
/* 00433400 8F81808C */  lw    $at, %got(B_1002DD7C)($gp)
/* 00433404 8F8E8924 */  lw     $t6, %got(int_repeat)($gp)
/* 00433408 014B6021 */  addu  $t4, $t2, $t3
/* 0043340C 8DCE0000 */  lw    $t6, ($t6)
/* 00433410 AC2CDD7C */  sw    $t4, %lo(B_1002DD7C)($at)
/* 00433414 8F81808C */  lw    $at, %got(B_1002DDD4)($gp)
/* 00433418 014E7821 */  addu  $t7, $t2, $t6
/* 0043341C 1000023B */  b     .L00433D0C
/* 00433420 AC2FDDD4 */   sw    $t7, %lo(B_1002DDD4)($at)
.L00433424:
/* 00433424 8F988920 */  lw     $t8, %got(add_repeat)($gp)
/* 00433428 8FAD0020 */  lw    $t5, 0x20($sp)
/* 0043342C 8F180000 */  lw    $t8, ($t8)
/* 00433430 8F81808C */  lw    $at, %got(B_1002DD80)($gp)
/* 00433434 8F8B8924 */  lw     $t3, %got(int_repeat)($gp)
/* 00433438 01B8C821 */  addu  $t9, $t5, $t8
/* 0043343C 8D6B0000 */  lw    $t3, ($t3)
/* 00433440 AC39DD80 */  sw    $t9, %lo(B_1002DD80)($at)
/* 00433444 8F81808C */  lw    $at, %got(B_1002DDD4)($gp)
/* 00433448 01AB6021 */  addu  $t4, $t5, $t3
/* 0043344C 1000022F */  b     .L00433D0C
/* 00433450 AC2CDDD4 */   sw    $t4, %lo(B_1002DDD4)($at)
.L00433454:
/* 00433454 8FAA0020 */  lw    $t2, 0x20($sp)
/* 00433458 8F81808C */  lw    $at, %got(B_1002DD90)($gp)
/* 0043345C 254E0001 */  addiu $t6, $t2, 1
/* 00433460 1000022A */  b     .L00433D0C
/* 00433464 AC2EDD90 */   sw    $t6, %lo(B_1002DD90)($at)
.L00433468:
/* 00433468 8FAF0024 */  lw    $t7, 0x24($sp)
/* 0043346C 00000000 */  nop   
/* 00433470 000FC180 */  sll   $t8, $t7, 6
/* 00433474 0018CEC2 */  srl   $t9, $t8, 0x1b
/* 00433478 2F210009 */  sltiu $at, $t9, 9
/* 0043347C 10200009 */  beqz  $at, .L004334A4
/* 00433480 00000000 */   nop   
/* 00433484 8F81806C */  lw    $at, %got(jtbl_100161D8)($gp)
/* 00433488 0019C880 */  sll   $t9, $t9, 2
/* 0043348C 00390821 */  addu  $at, $at, $t9
/* 00433490 8C3961D8 */  lw    $t9, %lo(jtbl_100161D8)($at)
/* 00433494 00000000 */  nop   
/* 00433498 033CC821 */  addu  $t9, $t9, $gp
/* 0043349C 03200008 */  jr    $t9
/* 004334A0 00000000 */   nop   
.L004334A4:
/* 004334A4 8F8A808C */  lw    $t2, %got(B_1002DD90)($gp)
/* 004334A8 8FAD0020 */  lw    $t5, 0x20($sp)
/* 004334AC 00026080 */  sll   $t4, $v0, 2
/* 004334B0 254ADD90 */  addiu $t2, %lo(B_1002DD90) # addiu $t2, $t2, -0x2270
/* 004334B4 018A7021 */  addu  $t6, $t4, $t2
/* 004334B8 25AB0001 */  addiu $t3, $t5, 1
/* 004334BC 10000213 */  b     .L00433D0C
/* 004334C0 ADCBFFC0 */   sw    $t3, -0x40($t6)
.L004334C4:
/* 004334C4 8FAF0024 */  lw    $t7, 0x24($sp)
/* 004334C8 00000000 */  nop   
/* 004334CC 31F8003F */  andi  $t8, $t7, 0x3f
/* 004334D0 2F01000A */  sltiu $at, $t8, 0xa
/* 004334D4 10200017 */  beqz  $at, .L00433534
/* 004334D8 00000000 */   nop   
/* 004334DC 8F81806C */  lw    $at, %got(jtbl_100161FC)($gp)
/* 004334E0 0018C080 */  sll   $t8, $t8, 2
/* 004334E4 00380821 */  addu  $at, $at, $t8
/* 004334E8 8C3861FC */  lw    $t8, %lo(jtbl_100161FC)($at)
/* 004334EC 00000000 */  nop   
/* 004334F0 031CC021 */  addu  $t8, $t8, $gp
/* 004334F4 03000008 */  jr    $t8
/* 004334F8 00000000 */   nop   
.L004334FC:
/* 004334FC 8F8D893C */  lw     $t5, %got(fp_load_bus_time)($gp)
/* 00433500 8FB90020 */  lw    $t9, 0x20($sp)
/* 00433504 8DAD0000 */  lw    $t5, ($t5)
/* 00433508 8F81808C */  lw    $at, %got(B_1002DD88)($gp)
/* 0043350C 032D6021 */  addu  $t4, $t9, $t5
/* 00433510 100001FE */  b     .L00433D0C
/* 00433514 AC2CDD88 */   sw    $t4, %lo(B_1002DD88)($at)
.L00433518:
/* 00433518 8F8B8940 */  lw     $t3, %got(fp_store_bus_time)($gp)
/* 0043351C 8FAA0020 */  lw    $t2, 0x20($sp)
/* 00433520 8D6B0000 */  lw    $t3, ($t3)
/* 00433524 8F81808C */  lw    $at, %got(B_1002DD88)($gp)
/* 00433528 014B7021 */  addu  $t6, $t2, $t3
/* 0043352C 100001F7 */  b     .L00433D0C
/* 00433530 AC2EDD88 */   sw    $t6, %lo(B_1002DD88)($at)
.L00433534:
/* 00433534 8F988970 */  lw     $t8, %got(fp_mul_repeat)($gp)
/* 00433538 8F86808C */  lw    $a2, %got(B_1002DDAC)($gp)
/* 0043353C 8FAF0020 */  lw    $t7, 0x20($sp)
/* 00433540 8F180000 */  lw    $t8, ($t8)
/* 00433544 24C6DDAC */  addiu $a2, %lo(B_1002DDAC) # addiu $a2, $a2, -0x2254
/* 00433548 01F8C821 */  addu  $t9, $t7, $t8
/* 0043354C 100001EF */  b     .L00433D0C
/* 00433550 ACD90000 */   sw    $t9, ($a2)
.L00433554:
/* 00433554 8FAD0024 */  lw    $t5, 0x24($sp)
/* 00433558 00000000 */  nop   
/* 0043355C 000D6180 */  sll   $t4, $t5, 6
/* 00433560 000C56C2 */  srl   $t2, $t4, 0x1b
/* 00433564 2D410016 */  sltiu $at, $t2, 0x16
/* 00433568 102001B6 */  beqz  $at, .L00433C44
/* 0043356C 00000000 */   nop   
/* 00433570 8F81806C */  lw    $at, %got(jtbl_10016224)($gp)
/* 00433574 000A5080 */  sll   $t2, $t2, 2
/* 00433578 002A0821 */  addu  $at, $at, $t2
/* 0043357C 8C2A6224 */  lw    $t2, %lo(jtbl_10016224)($at)
/* 00433580 00000000 */  nop   
/* 00433584 015C5021 */  addu  $t2, $t2, $gp
/* 00433588 01400008 */  jr    $t2
/* 0043358C 00000000 */   nop   
.L00433590:
/* 00433590 8FAB0024 */  lw    $t3, 0x24($sp)
/* 00433594 8F8F8964 */  lw     $t7, %got(fp_latency)($gp)
/* 00433598 3163003F */  andi  $v1, $t3, 0x3f
/* 0043359C 8F8A8AC0 */  lw     $t2, %got(fp_pipelining)($gp)
/* 004335A0 0003C080 */  sll   $t8, $v1, 2
/* 004335A4 000B4980 */  sll   $t1, $t3, 6
/* 004335A8 8DEF0000 */  lw    $t7, ($t7)
/* 004335AC 000976C2 */  srl   $t6, $t1, 0x1b
/* 004335B0 0303C023 */  subu  $t8, $t8, $v1
/* 004335B4 8D4A0000 */  lw    $t2, ($t2)
/* 004335B8 0018C0C0 */  sll   $t8, $t8, 3
/* 004335BC 000E6880 */  sll   $t5, $t6, 2
/* 004335C0 01C04825 */  move  $t1, $t6
/* 004335C4 01F8C821 */  addu  $t9, $t7, $t8
/* 004335C8 032D6021 */  addu  $t4, $t9, $t5
/* 004335CC 254EFFFF */  addiu $t6, $t2, -1
/* 004335D0 8D84FFC0 */  lw    $a0, -0x40($t4)
/* 004335D4 2DC1000B */  sltiu $at, $t6, 0xb
/* 004335D8 10200190 */  beqz  $at, .L00433C1C
/* 004335DC 00000000 */   nop   
/* 004335E0 8F81806C */  lw    $at, %got(jtbl_1001627C)($gp)
/* 004335E4 000E7080 */  sll   $t6, $t6, 2
/* 004335E8 002E0821 */  addu  $at, $at, $t6
/* 004335EC 8C2E627C */  lw    $t6, %lo(jtbl_1001627C)($at)
/* 004335F0 00000000 */  nop   
/* 004335F4 01DC7021 */  addu  $t6, $t6, $gp
/* 004335F8 01C00008 */  jr    $t6
/* 004335FC 00000000 */   nop   
.L00433600:
/* 00433600 8FA20024 */  lw    $v0, 0x24($sp)
/* 00433604 24010002 */  li    $at, 2
/* 00433608 304B003F */  andi  $t3, $v0, 0x3f
/* 0043360C 11610010 */  beq   $t3, $at, .L00433650
/* 00433610 240F0001 */   li    $t7, 1
/* 00433614 24010003 */  li    $at, 3
/* 00433618 11610005 */  beq   $t3, $at, .L00433630
/* 0043361C 248D001D */   addiu $t5, $a0, 0x1d
/* 00433620 240F0001 */  li    $t7, 1
/* 00433624 008F1804 */  sllv  $v1, $t7, $a0
/* 00433628 10000011 */  b     .L00433670
/* 0043362C 2463FFFF */   addiu $v1, $v1, -1
.L00433630:
/* 00433630 8FB80020 */  lw    $t8, 0x20($sp)
/* 00433634 8F81808C */  lw    $at, %got(B_1002DDA4)($gp)
/* 00433638 240C0007 */  li    $t4, 7
/* 0043363C 01AC1804 */  sllv  $v1, $t4, $t5
/* 00433640 0304C821 */  addu  $t9, $t8, $a0
/* 00433644 24630001 */  addiu $v1, $v1, 1
/* 00433648 10000009 */  b     .L00433670
/* 0043364C AC39DDA4 */   sw    $t9, %lo(B_1002DDA4)($at)
.L00433650:
/* 00433650 8F86808C */  lw    $a2, %got(B_1002DDAC)($gp)
/* 00433654 8FAA0020 */  lw    $t2, 0x20($sp)
/* 00433658 248B001F */  addiu $t3, $a0, 0x1f
/* 0043365C 016F1804 */  sllv  $v1, $t7, $t3
/* 00433660 24C6DDAC */  addiu $a2, %lo(B_1002DDAC) # addiu $a2, $a2, -0x2254
/* 00433664 01447021 */  addu  $t6, $t2, $a0
/* 00433668 ACCE0000 */  sw    $t6, ($a2)
/* 0043366C 24630001 */  addiu $v1, $v1, 1
.L00433670:
/* 00433670 8F88808C */  lw    $t0, %got(B_1002DDD0)($gp)
/* 00433674 8FB80020 */  lw    $t8, 0x20($sp)
/* 00433678 2508DDD0 */  addiu $t0, %lo(B_1002DDD0) # addiu $t0, $t0, -0x2230
/* 0043367C 8D190000 */  lw    $t9, ($t0)
/* 00433680 00000000 */  nop   
/* 00433684 03191023 */  subu  $v0, $t8, $t9
/* 00433688 2C410020 */  sltiu $at, $v0, 0x20
/* 0043368C 10200009 */  beqz  $at, .L004336B4
/* 00433690 00000000 */   nop   
/* 00433694 8F84808C */  lw    $a0, %got(B_1002DDC0)($gp)
/* 00433698 00000000 */  nop   
/* 0043369C 2484DDC0 */  addiu $a0, %lo(B_1002DDC0) # addiu $a0, $a0, -0x2240
/* 004336A0 8C8C0000 */  lw    $t4, ($a0)
/* 004336A4 00000000 */  nop   
/* 004336A8 004C6806 */  srlv  $t5, $t4, $v0
/* 004336AC 10000005 */  b     .L004336C4
/* 004336B0 AC8D0000 */   sw    $t5, ($a0)
.L004336B4:
/* 004336B4 8F84808C */  lw    $a0, %got(B_1002DDC0)($gp)
/* 004336B8 00000000 */  nop   
/* 004336BC 2484DDC0 */  addiu $a0, %lo(B_1002DDC0) # addiu $a0, $a0, -0x2240
/* 004336C0 AC800000 */  sw    $zero, ($a0)
.L004336C4:
/* 004336C4 8C8A0000 */  lw    $t2, ($a0)
/* 004336C8 8FAF0020 */  lw    $t7, 0x20($sp)
/* 004336CC 01437025 */  or    $t6, $t2, $v1
/* 004336D0 AC8E0000 */  sw    $t6, ($a0)
/* 004336D4 1000018D */  b     .L00433D0C
/* 004336D8 AD0F0000 */   sw    $t7, ($t0)
.L004336DC:
/* 004336DC 8FAB0020 */  lw    $t3, 0x20($sp)
/* 004336E0 8F81808C */  lw    $at, %got(B_1002DDA0)($gp)
/* 004336E4 25780002 */  addiu $t8, $t3, 2
/* 004336E8 AC38DDA0 */  sw    $t8, %lo(B_1002DDA0)($at)
/* 004336EC 24010002 */  li    $at, 2
/* 004336F0 1061000F */  beq   $v1, $at, .L00433730
/* 004336F4 24010003 */   li    $at, 3
/* 004336F8 10610008 */  beq   $v1, $at, .L0043371C
/* 004336FC 24010004 */   li    $at, 4
/* 00433700 10610007 */  beq   $v1, $at, .L00433720
/* 00433704 8FAC0020 */   lw    $t4, 0x20($sp)
/* 00433708 8F85808C */  lw    $a1, %got(B_1002DDBC)($gp)
/* 0043370C 25790004 */  addiu $t9, $t3, 4
/* 00433710 24A5DDBC */  addiu $a1, %lo(B_1002DDBC) # addiu $a1, $a1, -0x2244
/* 00433714 1000017D */  b     .L00433D0C
/* 00433718 ACB90000 */   sw    $t9, ($a1)
.L0043371C:
/* 0043371C 8FAC0020 */  lw    $t4, 0x20($sp)
.L00433720:
/* 00433720 8F81808C */  lw    $at, %got(B_1002DDA4)($gp)
/* 00433724 01846821 */  addu  $t5, $t4, $a0
/* 00433728 10000178 */  b     .L00433D0C
/* 0043372C AC2DDDA4 */   sw    $t5, %lo(B_1002DDA4)($at)
.L00433730:
/* 00433730 8F86808C */  lw    $a2, %got(B_1002DDAC)($gp)
/* 00433734 8FAA0020 */  lw    $t2, 0x20($sp)
/* 00433738 24C6DDAC */  addiu $a2, %lo(B_1002DDAC) # addiu $a2, $a2, -0x2254
/* 0043373C 254E0004 */  addiu $t6, $t2, 4
/* 00433740 10000172 */  b     .L00433D0C
/* 00433744 ACCE0000 */   sw    $t6, ($a2)
.L00433748:
/* 00433748 24010002 */  li    $at, 2
/* 0043374C 10610023 */  beq   $v1, $at, .L004337DC
/* 00433750 24010003 */   li    $at, 3
/* 00433754 10610019 */  beq   $v1, $at, .L004337BC
/* 00433758 24010004 */   li    $at, 4
/* 0043375C 10610009 */  beq   $v1, $at, .L00433784
/* 00433760 8FB90020 */   lw    $t9, 0x20($sp)
/* 00433764 8FAF0020 */  lw    $t7, 0x20($sp)
/* 00433768 8F85808C */  lw    $a1, %got(B_1002DDBC)($gp)
/* 0043376C 01E4C021 */  addu  $t8, $t7, $a0
/* 00433770 270BFFFF */  addiu $t3, $t8, -1
/* 00433774 24A5DDBC */  addiu $a1, %lo(B_1002DDBC) # addiu $a1, $a1, -0x2244
/* 00433778 1000002F */  b     .L00433838
/* 0043377C ACAB0000 */   sw    $t3, ($a1)
/* 00433780 8FB90020 */  lw    $t9, 0x20($sp)
.L00433784:
/* 00433784 8F82808C */  lw    $v0, %got(B_1002DDB8)($gp)
/* 00433788 03246021 */  addu  $t4, $t9, $a0
/* 0043378C 8F85808C */  lw    $a1, %got(B_1002DDBC)($gp)
/* 00433790 8F86808C */  lw    $a2, %got(B_1002DDAC)($gp)
/* 00433794 258DFFFF */  addiu $t5, $t4, -1
/* 00433798 8F81808C */  lw    $at, %got(B_1002DDA4)($gp)
/* 0043379C 2442DDB8 */  addiu $v0, %lo(B_1002DDB8) # addiu $v0, $v0, -0x2248
/* 004337A0 24A5DDBC */  addiu $a1, %lo(B_1002DDBC) # addiu $a1, $a1, -0x2244
/* 004337A4 24C6DDAC */  addiu $a2, %lo(B_1002DDAC) # addiu $a2, $a2, -0x2254
/* 004337A8 ACCD0000 */  sw    $t5, ($a2)
/* 004337AC ACAD0000 */  sw    $t5, ($a1)
/* 004337B0 AC4D0000 */  sw    $t5, ($v0)
/* 004337B4 10000020 */  b     .L00433838
/* 004337B8 AC2DDDA4 */   sw    $t5, %lo(B_1002DDA4)($at)
.L004337BC:
/* 004337BC 8FB80020 */  lw    $t8, 0x20($sp)
/* 004337C0 8F81808C */  lw    $at, %got(B_1002DDA4)($gp)
/* 004337C4 03045821 */  addu  $t3, $t8, $a0
/* 004337C8 2579FFFF */  addiu $t9, $t3, -1
/* 004337CC AC39DDA4 */  sw    $t9, %lo(B_1002DDA4)($at)
/* 004337D0 8F81808C */  lw    $at, %got(B_1002DDA8)($gp)
/* 004337D4 10000018 */  b     .L00433838
/* 004337D8 AC38DDA8 */   sw    $t8, %lo(B_1002DDA8)($at)
.L004337DC:
/* 004337DC 8F82808C */  lw    $v0, %got(B_1002DDB8)($gp)
/* 004337E0 8FAC0020 */  lw    $t4, 0x20($sp)
/* 004337E4 2442DDB8 */  addiu $v0, %lo(B_1002DDB8) # addiu $v0, $v0, -0x2248
/* 004337E8 8C4D0000 */  lw    $t5, ($v0)
/* 004337EC 00000000 */  nop   
/* 004337F0 018D082B */  sltu  $at, $t4, $t5
/* 004337F4 10200005 */  beqz  $at, .L0043380C
/* 004337F8 8FAA0020 */   lw    $t2, 0x20($sp)
/* 004337FC 8F81808C */  lw    $at, %got(B_1002DDB4)($gp)
/* 00433800 00000000 */  nop   
/* 00433804 AC2CDDB4 */  sw    $t4, %lo(B_1002DDB4)($at)
/* 00433808 8FAA0020 */  lw    $t2, 0x20($sp)
.L0043380C:
/* 0043380C 8F81808C */  lw    $at, %got(B_1002DDB0)($gp)
/* 00433810 8FAB0020 */  lw    $t3, 0x20($sp)
/* 00433814 8F86808C */  lw    $a2, %got(B_1002DDAC)($gp)
/* 00433818 008A7021 */  addu  $t6, $a0, $t2
/* 0043381C AC2ADDB0 */  sw    $t2, %lo(B_1002DDB0)($at)
/* 00433820 0164C821 */  addu  $t9, $t3, $a0
/* 00433824 25CFFFFC */  addiu $t7, $t6, -4
/* 00433828 2738FFFF */  addiu $t8, $t9, -1
/* 0043382C 24C6DDAC */  addiu $a2, %lo(B_1002DDAC) # addiu $a2, $a2, -0x2254
/* 00433830 ACCF0000 */  sw    $t7, ($a2)
/* 00433834 AC580000 */  sw    $t8, ($v0)
.L00433838:
/* 00433838 8F88808C */  lw    $t0, %got(B_1002DDD0)($gp)
/* 0043383C 8FAD0020 */  lw    $t5, 0x20($sp)
/* 00433840 2508DDD0 */  addiu $t0, %lo(B_1002DDD0) # addiu $t0, $t0, -0x2230
/* 00433844 8D0C0000 */  lw    $t4, ($t0)
/* 00433848 00000000 */  nop   
/* 0043384C 01AC1023 */  subu  $v0, $t5, $t4
/* 00433850 2C410020 */  sltiu $at, $v0, 0x20
/* 00433854 10200011 */  beqz  $at, .L0043389C
/* 00433858 240C0001 */   li    $t4, 1
/* 0043385C 8F85808C */  lw    $a1, %got(B_1002DDC4)($gp)
/* 00433860 8F86808C */  lw    $a2, %got(B_1002DDC8)($gp)
/* 00433864 8F87808C */  lw    $a3, %got(B_1002DDCC)($gp)
/* 00433868 24A5DDC4 */  addiu $a1, %lo(B_1002DDC4) # addiu $a1, $a1, -0x223c
/* 0043386C 24C6DDC8 */  addiu $a2, %lo(B_1002DDC8) # addiu $a2, $a2, -0x2238
/* 00433870 24E7DDCC */  addiu $a3, %lo(B_1002DDCC) # addiu $a3, $a3, -0x2234
/* 00433874 8CAA0000 */  lw    $t2, ($a1)
/* 00433878 8CCF0000 */  lw    $t7, ($a2)
/* 0043387C 8CF90000 */  lw    $t9, ($a3)
/* 00433880 004A7006 */  srlv  $t6, $t2, $v0
/* 00433884 004F5806 */  srlv  $t3, $t7, $v0
/* 00433888 0059C006 */  srlv  $t8, $t9, $v0
/* 0043388C ACAE0000 */  sw    $t6, ($a1)
/* 00433890 ACCB0000 */  sw    $t3, ($a2)
/* 00433894 1000000A */  b     .L004338C0
/* 00433898 ACF80000 */   sw    $t8, ($a3)
.L0043389C:
/* 0043389C 8F85808C */  lw    $a1, %got(B_1002DDC4)($gp)
/* 004338A0 8F86808C */  lw    $a2, %got(B_1002DDC8)($gp)
/* 004338A4 8F87808C */  lw    $a3, %got(B_1002DDCC)($gp)
/* 004338A8 24A5DDC4 */  addiu $a1, %lo(B_1002DDC4) # addiu $a1, $a1, -0x223c
/* 004338AC 24C6DDC8 */  addiu $a2, %lo(B_1002DDC8) # addiu $a2, $a2, -0x2238
/* 004338B0 24E7DDCC */  addiu $a3, %lo(B_1002DDCC) # addiu $a3, $a3, -0x2234
/* 004338B4 ACA00000 */  sw    $zero, ($a1)
/* 004338B8 ACC00000 */  sw    $zero, ($a2)
/* 004338BC ACE00000 */  sw    $zero, ($a3)
.L004338C0:
/* 004338C0 00035880 */  sll   $t3, $v1, 2
/* 004338C4 01635823 */  subu  $t3, $t3, $v1
/* 004338C8 00091080 */  sll   $v0, $t1, 2
/* 004338CC 8CAD0000 */  lw    $t5, ($a1)
/* 004338D0 2442FFC0 */  addiu $v0, $v0, -0x40
/* 004338D4 000B58C0 */  sll   $t3, $t3, 3
/* 004338D8 8F988998 */  lw     $t8, %got(r4010_a)($gp)
/* 004338DC 008C5004 */  sllv  $t2, $t4, $a0
/* 004338E0 0162C821 */  addu  $t9, $t3, $v0
/* 004338E4 01AA7025 */  or    $t6, $t5, $t2
/* 004338E8 ACAE0000 */  sw    $t6, ($a1)
/* 004338EC 00035880 */  sll   $t3, $v1, 2
/* 004338F0 03386021 */  addu  $t4, $t9, $t8
/* 004338F4 8D8D0000 */  lw    $t5, ($t4)
/* 004338F8 8CCF0000 */  lw    $t7, ($a2)
/* 004338FC 01635823 */  subu  $t3, $t3, $v1
/* 00433900 8F98899C */  lw     $t8, %got(r4010_s)($gp)
/* 00433904 000B58C0 */  sll   $t3, $t3, 3
/* 00433908 0162C821 */  addu  $t9, $t3, $v0
/* 0043390C 01ED5025 */  or    $t2, $t7, $t5
/* 00433910 ACCA0000 */  sw    $t2, ($a2)
/* 00433914 03386021 */  addu  $t4, $t9, $t8
/* 00433918 8D8F0000 */  lw    $t7, ($t4)
/* 0043391C 8CEE0000 */  lw    $t6, ($a3)
/* 00433920 8FAA0020 */  lw    $t2, 0x20($sp)
/* 00433924 01CF6825 */  or    $t5, $t6, $t7
/* 00433928 ACED0000 */  sw    $t5, ($a3)
/* 0043392C 100000F7 */  b     .L00433D0C
/* 00433930 AD0A0000 */   sw    $t2, ($t0)
.L00433934:
/* 00433934 8FA20020 */  lw    $v0, 0x20($sp)
/* 00433938 8F81808C */  lw    $at, %got(B_1002DDA0)($gp)
/* 0043393C 24420002 */  addiu $v0, $v0, 2
/* 00433940 AC22DDA0 */  sw    $v0, %lo(B_1002DDA0)($at)
/* 00433944 24010002 */  li    $at, 2
/* 00433948 1461000A */  bne   $v1, $at, .L00433974
/* 0043394C 00000000 */   nop   
/* 00433950 8F85808C */  lw    $a1, %got(B_1002DDBC)($gp)
/* 00433954 8F86808C */  lw    $a2, %got(B_1002DDAC)($gp)
/* 00433958 8FAB0020 */  lw    $t3, 0x20($sp)
/* 0043395C 24A5DDBC */  addiu $a1, %lo(B_1002DDBC) # addiu $a1, $a1, -0x2244
/* 00433960 24C6DDAC */  addiu $a2, %lo(B_1002DDAC) # addiu $a2, $a2, -0x2254
/* 00433964 25790006 */  addiu $t9, $t3, 6
/* 00433968 ACD90000 */  sw    $t9, ($a2)
/* 0043396C 100000E7 */  b     .L00433D0C
/* 00433970 ACA20000 */   sw    $v0, ($a1)
.L00433974:
/* 00433974 8F85808C */  lw    $a1, %got(B_1002DDBC)($gp)
/* 00433978 8F86808C */  lw    $a2, %got(B_1002DDAC)($gp)
/* 0043397C 8FB80020 */  lw    $t8, 0x20($sp)
/* 00433980 24A5DDBC */  addiu $a1, %lo(B_1002DDBC) # addiu $a1, $a1, -0x2244
/* 00433984 24C6DDAC */  addiu $a2, %lo(B_1002DDAC) # addiu $a2, $a2, -0x2254
/* 00433988 03041021 */  addu  $v0, $t8, $a0
/* 0043398C ACC20000 */  sw    $v0, ($a2)
/* 00433990 100000DE */  b     .L00433D0C
/* 00433994 ACA20000 */   sw    $v0, ($a1)
.L00433998:
/* 00433998 8FA20024 */  lw    $v0, 0x24($sp)
/* 0043399C 24010002 */  li    $at, 2
/* 004339A0 304C003F */  andi  $t4, $v0, 0x3f
/* 004339A4 1181000C */  beq   $t4, $at, .L004339D8
/* 004339A8 24010003 */   li    $at, 3
/* 004339AC 1181000A */  beq   $t4, $at, .L004339D8
/* 004339B0 24010004 */   li    $at, 4
/* 004339B4 11810009 */  beq   $t4, $at, .L004339DC
/* 004339B8 8FAA0024 */   lw    $t2, 0x24($sp)
/* 004339BC 8FAE0020 */  lw    $t6, 0x20($sp)
/* 004339C0 8F85808C */  lw    $a1, %got(B_1002DDBC)($gp)
/* 004339C4 008E7821 */  addu  $t7, $a0, $t6
/* 004339C8 25EDFFFF */  addiu $t5, $t7, -1
/* 004339CC 24A5DDBC */  addiu $a1, %lo(B_1002DDBC) # addiu $a1, $a1, -0x2244
/* 004339D0 100000CE */  b     .L00433D0C
/* 004339D4 ACAD0000 */   sw    $t5, ($a1)
.L004339D8:
/* 004339D8 8FAA0024 */  lw    $t2, 0x24($sp)
.L004339DC:
/* 004339DC 24010011 */  li    $at, 17
/* 004339E0 000A5980 */  sll   $t3, $t2, 6
/* 004339E4 000BCEC2 */  srl   $t9, $t3, 0x1b
/* 004339E8 13210003 */  beq   $t9, $at, .L004339F8
/* 004339EC 24010012 */   li    $at, 18
/* 004339F0 17210009 */  bne   $t9, $at, .L00433A18
/* 004339F4 8FAF0020 */   lw    $t7, 0x20($sp)
.L004339F8:
/* 004339F8 8FB80020 */  lw    $t8, 0x20($sp)
/* 004339FC 8F86808C */  lw    $a2, %got(B_1002DDAC)($gp)
/* 00433A00 00986021 */  addu  $t4, $a0, $t8
/* 00433A04 258EFFFE */  addiu $t6, $t4, -2
/* 00433A08 24C6DDAC */  addiu $a2, %lo(B_1002DDAC) # addiu $a2, $a2, -0x2254
/* 00433A0C 100000BF */  b     .L00433D0C
/* 00433A10 ACCE0000 */   sw    $t6, ($a2)
/* 00433A14 8FAF0020 */  lw    $t7, 0x20($sp)
.L00433A18:
/* 00433A18 8F86808C */  lw    $a2, %got(B_1002DDAC)($gp)
/* 00433A1C 008F6821 */  addu  $t5, $a0, $t7
/* 00433A20 25AAFFFF */  addiu $t2, $t5, -1
/* 00433A24 24C6DDAC */  addiu $a2, %lo(B_1002DDAC) # addiu $a2, $a2, -0x2254
/* 00433A28 100000B8 */  b     .L00433D0C
/* 00433A2C ACCA0000 */   sw    $t2, ($a2)
.L00433A30:
/* 00433A30 8FA20024 */  lw    $v0, 0x24($sp)
/* 00433A34 24010002 */  li    $at, 2
/* 00433A38 304B003F */  andi  $t3, $v0, 0x3f
/* 00433A3C 11610010 */  beq   $t3, $at, .L00433A80
/* 00433A40 24010003 */   li    $at, 3
/* 00433A44 11610009 */  beq   $t3, $at, .L00433A6C
/* 00433A48 24010004 */   li    $at, 4
/* 00433A4C 11610008 */  beq   $t3, $at, .L00433A70
/* 00433A50 8FAC0020 */   lw    $t4, 0x20($sp)
/* 00433A54 8F85808C */  lw    $a1, %got(B_1002DDBC)($gp)
/* 00433A58 8FB90020 */  lw    $t9, 0x20($sp)
/* 00433A5C 24A5DDBC */  addiu $a1, %lo(B_1002DDBC) # addiu $a1, $a1, -0x2244
/* 00433A60 0324C021 */  addu  $t8, $t9, $a0
/* 00433A64 100000A9 */  b     .L00433D0C
/* 00433A68 ACB80000 */   sw    $t8, ($a1)
.L00433A6C:
/* 00433A6C 8FAC0020 */  lw    $t4, 0x20($sp)
.L00433A70:
/* 00433A70 8F81808C */  lw    $at, %got(B_1002DDA4)($gp)
/* 00433A74 01847021 */  addu  $t6, $t4, $a0
/* 00433A78 100000A4 */  b     .L00433D0C
/* 00433A7C AC2EDDA4 */   sw    $t6, %lo(B_1002DDA4)($at)
.L00433A80:
/* 00433A80 8F86808C */  lw    $a2, %got(B_1002DDAC)($gp)
/* 00433A84 8FAF0020 */  lw    $t7, 0x20($sp)
/* 00433A88 24C6DDAC */  addiu $a2, %lo(B_1002DDAC) # addiu $a2, $a2, -0x2254
/* 00433A8C 01E46821 */  addu  $t5, $t7, $a0
/* 00433A90 1000009E */  b     .L00433D0C
/* 00433A94 ACCD0000 */   sw    $t5, ($a2)
.L00433A98:
/* 00433A98 8FA20024 */  lw    $v0, 0x24($sp)
/* 00433A9C 24010002 */  li    $at, 2
/* 00433AA0 304A003F */  andi  $t2, $v0, 0x3f
/* 00433AA4 11410016 */  beq   $t2, $at, .L00433B00
/* 00433AA8 2482FFFF */   addiu $v0, $a0, -1
/* 00433AAC 24010003 */  li    $at, 3
/* 00433AB0 1141000C */  beq   $t2, $at, .L00433AE4
/* 00433AB4 24010004 */   li    $at, 4
/* 00433AB8 1141000A */  beq   $t2, $at, .L00433AE4
/* 00433ABC 248C001F */   addiu $t4, $a0, 0x1f
/* 00433AC0 8FAB0020 */  lw    $t3, 0x20($sp)
/* 00433AC4 8F85808C */  lw    $a1, %got(B_1002DDBC)($gp)
/* 00433AC8 008BC821 */  addu  $t9, $a0, $t3
/* 00433ACC 2738FFFF */  addiu $t8, $t9, -1
/* 00433AD0 240E0001 */  li    $t6, 1
/* 00433AD4 24A5DDBC */  addiu $a1, %lo(B_1002DDBC) # addiu $a1, $a1, -0x2244
/* 00433AD8 ACB80000 */  sw    $t8, ($a1)
/* 00433ADC 1000FEE4 */  b     .L00433670
/* 00433AE0 018E1804 */   sllv  $v1, $t6, $t4
.L00433AE4:
/* 00433AE4 8FAF0020 */  lw    $t7, 0x20($sp)
/* 00433AE8 8F81808C */  lw    $at, %got(B_1002DDA4)($gp)
/* 00433AEC 008F6821 */  addu  $t5, $a0, $t7
/* 00433AF0 25AAFFFF */  addiu $t2, $t5, -1
/* 00433AF4 00001825 */  move  $v1, $zero
/* 00433AF8 1000FEDD */  b     .L00433670
/* 00433AFC AC2ADDA4 */   sw    $t2, %lo(B_1002DDA4)($at)
.L00433B00:
/* 00433B00 8F86808C */  lw    $a2, %got(B_1002DDAC)($gp)
/* 00433B04 8FAB0020 */  lw    $t3, 0x20($sp)
/* 00433B08 24180001 */  li    $t8, 1
/* 00433B0C 24C6DDAC */  addiu $a2, %lo(B_1002DDAC) # addiu $a2, $a2, -0x2254
/* 00433B10 004BC821 */  addu  $t9, $v0, $t3
/* 00433B14 ACD90000 */  sw    $t9, ($a2)
/* 00433B18 1000FED5 */  b     .L00433670
/* 00433B1C 00581804 */   sllv  $v1, $t8, $v0
.L00433B20:
/* 00433B20 8FA20024 */  lw    $v0, 0x24($sp)
/* 00433B24 24010002 */  li    $at, 2
/* 00433B28 304E003F */  andi  $t6, $v0, 0x3f
/* 00433B2C 11C10012 */  beq   $t6, $at, .L00433B78
/* 00433B30 24010003 */   li    $at, 3
/* 00433B34 11C10003 */  beq   $t6, $at, .L00433B44
/* 00433B38 24010004 */   li    $at, 4
/* 00433B3C 15C1001C */  bne   $t6, $at, .L00433BB0
/* 00433B40 00000000 */   nop   
.L00433B44:
/* 00433B44 8F828974 */  lw     $v0, %got(fp_div_repeat)($gp)
/* 00433B48 8FAC0020 */  lw    $t4, 0x20($sp)
/* 00433B4C 8C420000 */  lw    $v0, ($v0)
/* 00433B50 00801825 */  move  $v1, $a0
/* 00433B54 0044082B */  sltu  $at, $v0, $a0
/* 00433B58 10200003 */  beqz  $at, .L00433B68
/* 00433B5C 00000000 */   nop   
/* 00433B60 10000001 */  b     .L00433B68
/* 00433B64 00401825 */   move  $v1, $v0
.L00433B68:
/* 00433B68 8F81808C */  lw    $at, %got(B_1002DDA4)($gp)
/* 00433B6C 006C7821 */  addu  $t7, $v1, $t4
/* 00433B70 1000001D */  b     .L00433BE8
/* 00433B74 AC2FDDA4 */   sw    $t7, %lo(B_1002DDA4)($at)
.L00433B78:
/* 00433B78 8F838970 */  lw     $v1, %got(fp_mul_repeat)($gp)
/* 00433B7C 8FAD0020 */  lw    $t5, 0x20($sp)
/* 00433B80 8C630000 */  lw    $v1, ($v1)
/* 00433B84 00801025 */  move  $v0, $a0
/* 00433B88 0064082B */  sltu  $at, $v1, $a0
/* 00433B8C 10200003 */  beqz  $at, .L00433B9C
/* 00433B90 00000000 */   nop   
/* 00433B94 10000001 */  b     .L00433B9C
/* 00433B98 00601025 */   move  $v0, $v1
.L00433B9C:
/* 00433B9C 8F86808C */  lw    $a2, %got(B_1002DDAC)($gp)
/* 00433BA0 004D5021 */  addu  $t2, $v0, $t5
/* 00433BA4 24C6DDAC */  addiu $a2, %lo(B_1002DDAC) # addiu $a2, $a2, -0x2254
/* 00433BA8 1000000F */  b     .L00433BE8
/* 00433BAC ACCA0000 */   sw    $t2, ($a2)
.L00433BB0:
/* 00433BB0 8F83896C */  lw     $v1, %got(fp_add_repeat)($gp)
/* 00433BB4 8FAB0020 */  lw    $t3, 0x20($sp)
/* 00433BB8 8C630000 */  lw    $v1, ($v1)
/* 00433BBC 00000000 */  nop   
/* 00433BC0 0064082B */  sltu  $at, $v1, $a0
/* 00433BC4 10200004 */  beqz  $at, .L00433BD8
/* 00433BC8 00801025 */   move  $v0, $a0
/* 00433BCC 10000002 */  b     .L00433BD8
/* 00433BD0 00601025 */   move  $v0, $v1
/* 00433BD4 00801025 */  move  $v0, $a0
.L00433BD8:
/* 00433BD8 8F85808C */  lw    $a1, %got(B_1002DDBC)($gp)
/* 00433BDC 004BC821 */  addu  $t9, $v0, $t3
/* 00433BE0 24A5DDBC */  addiu $a1, %lo(B_1002DDBC) # addiu $a1, $a1, -0x2244
/* 00433BE4 ACB90000 */  sw    $t9, ($a1)
.L00433BE8:
/* 00433BE8 8F838968 */  lw     $v1, %got(fp_repeat)($gp)
/* 00433BEC 8FB80020 */  lw    $t8, 0x20($sp)
/* 00433BF0 8C630000 */  lw    $v1, ($v1)
/* 00433BF4 00801025 */  move  $v0, $a0
/* 00433BF8 0064082B */  sltu  $at, $v1, $a0
/* 00433BFC 10200003 */  beqz  $at, .L00433C0C
/* 00433C00 00000000 */   nop   
/* 00433C04 10000001 */  b     .L00433C0C
/* 00433C08 00601025 */   move  $v0, $v1
.L00433C0C:
/* 00433C0C 8F81808C */  lw    $at, %got(B_1002DDA0)($gp)
/* 00433C10 00587021 */  addu  $t6, $v0, $t8
/* 00433C14 1000003D */  b     .L00433D0C
/* 00433C18 AC2EDDA0 */   sw    $t6, %lo(B_1002DDA0)($at)
.L00433C1C:
/* 00433C1C 8F84806C */  lw    $a0, %got(RO_100155B0)($gp)
/* 00433C20 8F85806C */  lw    $a1, %got(RO_100155B8)($gp)
/* 00433C24 8F998670 */  lw    $t9, %call16(assertion_failed)($gp)
/* 00433C28 24060C8D */  li    $a2, 3213
/* 00433C2C 248455B0 */  addiu $a0, %lo(RO_100155B0) # addiu $a0, $a0, 0x55b0
/* 00433C30 0320F809 */  jalr  $t9
/* 00433C34 24A555B8 */   addiu $a1, %lo(RO_100155B8) # addiu $a1, $a1, 0x55b8
/* 00433C38 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00433C3C 10000033 */  b     .L00433D0C
/* 00433C40 00000000 */   nop   
.L00433C44:
/* 00433C44 8F84806C */  lw    $a0, %got(RO_100155C8)($gp)
/* 00433C48 8F85806C */  lw    $a1, %got(RO_100155D0)($gp)
/* 00433C4C 8F998670 */  lw    $t9, %call16(assertion_failed)($gp)
/* 00433C50 24060C91 */  li    $a2, 3217
/* 00433C54 248455C8 */  addiu $a0, %lo(RO_100155C8) # addiu $a0, $a0, 0x55c8
/* 00433C58 0320F809 */  jalr  $t9
/* 00433C5C 24A555D0 */   addiu $a1, %lo(RO_100155D0) # addiu $a1, $a1, 0x55d0
/* 00433C60 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00433C64 10000029 */  b     .L00433D0C
/* 00433C68 00000000 */   nop   
.L00433C6C:
/* 00433C6C 8F8F893C */  lw     $t7, %got(fp_load_bus_time)($gp)
/* 00433C70 8FAC0020 */  lw    $t4, 0x20($sp)
/* 00433C74 8DEF0000 */  lw    $t7, ($t7)
/* 00433C78 8F81808C */  lw    $at, %got(B_1002DD88)($gp)
/* 00433C7C 018F6821 */  addu  $t5, $t4, $t7
/* 00433C80 10000022 */  b     .L00433D0C
/* 00433C84 AC2DDD88 */   sw    $t5, %lo(B_1002DD88)($at)
.L00433C88:
/* 00433C88 8F8B8940 */  lw     $t3, %got(fp_store_bus_time)($gp)
/* 00433C8C 8FAA0020 */  lw    $t2, 0x20($sp)
/* 00433C90 8D6B0000 */  lw    $t3, ($t3)
/* 00433C94 8F81808C */  lw    $at, %got(B_1002DD88)($gp)
/* 00433C98 014BC821 */  addu  $t9, $t2, $t3
/* 00433C9C 1000001B */  b     .L00433D0C
/* 00433CA0 AC39DD88 */   sw    $t9, %lo(B_1002DD88)($at)
.L00433CA4:
/* 00433CA4 8F8E8934 */  lw     $t6, %got(load_bus_time)($gp)
/* 00433CA8 8FB80020 */  lw    $t8, 0x20($sp)
/* 00433CAC 8DCE0000 */  lw    $t6, ($t6)
/* 00433CB0 8F81808C */  lw    $at, %got(B_1002DD88)($gp)
/* 00433CB4 030E6021 */  addu  $t4, $t8, $t6
/* 00433CB8 10000014 */  b     .L00433D0C
/* 00433CBC AC2CDD88 */   sw    $t4, %lo(B_1002DD88)($at)
.L00433CC0:
/* 00433CC0 8F8D8938 */  lw     $t5, %got(store_bus_time)($gp)
/* 00433CC4 8FAF0020 */  lw    $t7, 0x20($sp)
/* 00433CC8 8DAD0000 */  lw    $t5, ($t5)
/* 00433CCC 8F81808C */  lw    $at, %got(B_1002DD88)($gp)
/* 00433CD0 01ED5021 */  addu  $t2, $t7, $t5
/* 00433CD4 1000000D */  b     .L00433D0C
/* 00433CD8 AC2ADD88 */   sw    $t2, %lo(B_1002DD88)($at)
.L00433CDC:
/* 00433CDC 8F998A4C */  lw     $t9, %got(op_name)($gp)
/* 00433CE0 00025880 */  sll   $t3, $v0, 2
/* 00433CE4 0179C021 */  addu  $t8, $t3, $t9
/* 00433CE8 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 00433CEC 8F8480AC */  lw     $a0, %got(__iob)($gp)
/* 00433CF0 8F85806C */  lw    $a1, %got(RO_100155E0)($gp)
/* 00433CF4 8F060000 */  lw    $a2, ($t8)
/* 00433CF8 24840020 */  addiu $a0, $a0, 0x20
/* 00433CFC 0320F809 */  jalr  $t9
/* 00433D00 24A555E0 */   addiu $a1, %lo(RO_100155E0) # addiu $a1, $a1, 0x55e0
/* 00433D04 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00433D08 00000000 */  nop   
.L00433D0C:
/* 00433D0C 8F8E8960 */  lw     $t6, %got(prefetch)($gp)
/* 00433D10 00000000 */  nop   
/* 00433D14 8DCE0000 */  lw    $t6, ($t6)
/* 00433D18 00000000 */  nop   
/* 00433D1C 11C00019 */  beqz  $t6, .L00433D84
/* 00433D20 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00433D24 8F8F808C */  lw    $t7, %got(B_1002DD88)($gp)
/* 00433D28 8FAC0020 */  lw    $t4, 0x20($sp)
/* 00433D2C 8DEFDD88 */  lw    $t7, %lo(B_1002DD88)($t7)
/* 00433D30 00000000 */  nop   
/* 00433D34 018F082B */  sltu  $at, $t4, $t7
/* 00433D38 1420000A */  bnez  $at, .L00433D64
/* 00433D3C 00000000 */   nop   
/* 00433D40 8F83808C */  lw    $v1, %got(B_1002DDD8)($gp)
/* 00433D44 00000000 */  nop   
/* 00433D48 2463DDD8 */  addiu $v1, %lo(B_1002DDD8) # addiu $v1, $v1, -0x2228
/* 00433D4C 8C620000 */  lw    $v0, ($v1)
/* 00433D50 00000000 */  nop   
/* 00433D54 2C410004 */  sltiu $at, $v0, 4
/* 00433D58 10200002 */  beqz  $at, .L00433D64
/* 00433D5C 244D0002 */   addiu $t5, $v0, 2
/* 00433D60 AC6D0000 */  sw    $t5, ($v1)
.L00433D64:
/* 00433D64 8F83808C */  lw    $v1, %got(B_1002DDD8)($gp)
/* 00433D68 00000000 */  nop   
/* 00433D6C 2463DDD8 */  addiu $v1, %lo(B_1002DDD8) # addiu $v1, $v1, -0x2228
/* 00433D70 8C6A0000 */  lw    $t2, ($v1)
/* 00433D74 00000000 */  nop   
/* 00433D78 254BFFFF */  addiu $t3, $t2, -1
/* 00433D7C AC6B0000 */  sw    $t3, ($v1)
/* 00433D80 8FBF001C */  lw    $ra, 0x1c($sp)
.L00433D84:
/* 00433D84 27BD0020 */  addiu $sp, $sp, 0x20
/* 00433D88 03E00008 */  jr    $ra
/* 00433D8C 00000000 */   nop   

    .type start_instruction, @function
    .size start_instruction, .-start_instruction
    .end start_instruction

    .type func_00433D90, @function
func_00433D90:
    # 00433ED0 func_00433ED0
/* 00433D90 3C1C0FBF */  .cpload $t9
/* 00433D94 279C64D0 */  
/* 00433D98 0399E021 */  
/* 00433D9C 8F8E8C48 */  lw     $t6, %got(nowarnflag)($gp)
/* 00433DA0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00433DA4 8DCE0000 */  lw    $t6, ($t6)
/* 00433DA8 AFB00014 */  sw    $s0, 0x14($sp)
/* 00433DAC 00A08025 */  move  $s0, $a1
/* 00433DB0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00433DB4 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00433DB8 15C00028 */  bnez  $t6, .L00433E5C
/* 00433DBC 00803825 */   move  $a3, $a0
/* 00433DC0 10A00027 */  beqz  $a1, .L00433E60
/* 00433DC4 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00433DC8 10800005 */  beqz  $a0, .L00433DE0
/* 00433DCC 24050002 */   li    $a1, 2
/* 00433DD0 8C8F000C */  lw    $t7, 0xc($a0)
/* 00433DD4 8F818BB8 */  lw     $at, %got(currentline)($gp)
/* 00433DD8 10000007 */  b     .L00433DF8
/* 00433DDC AC2F0000 */   sw    $t7, ($at)
.L00433DE0:
/* 00433DE0 12000005 */  beqz  $s0, .L00433DF8
/* 00433DE4 00000000 */   nop   
/* 00433DE8 8E18000C */  lw    $t8, 0xc($s0)
/* 00433DEC 8F818BB8 */  lw     $at, %got(currentline)($gp)
/* 00433DF0 00000000 */  nop   
/* 00433DF4 AC380000 */  sw    $t8, ($at)
.L00433DF8:
/* 00433DF8 8F84806C */  lw    $a0, %got(RO_100155F8)($gp)
/* 00433DFC 8F998674 */  lw    $t9, %call16(postcerror)($gp)
/* 00433E00 AFA70020 */  sw    $a3, 0x20($sp)
/* 00433E04 0320F809 */  jalr  $t9
/* 00433E08 248455F8 */   addiu $a0, %lo(RO_100155F8) # addiu $a0, $a0, 0x55f8
/* 00433E0C 8FA70020 */  lw    $a3, 0x20($sp)
/* 00433E10 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00433E14 10E00008 */  beqz  $a3, .L00433E38
/* 00433E18 2404FFFF */   li    $a0, -1
/* 00433E1C 8CE50000 */  lw    $a1, ($a3)
/* 00433E20 8F9985E0 */  lw    $t9, %call16(disasm_text_errfile)($gp)
/* 00433E24 00003025 */  move  $a2, $zero
/* 00433E28 0320F809 */  jalr  $t9
/* 00433E2C AFA50004 */   sw    $a1, 4($sp)
/* 00433E30 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00433E34 00000000 */  nop   
.L00433E38:
/* 00433E38 12000008 */  beqz  $s0, .L00433E5C
/* 00433E3C 2404FFFF */   li    $a0, -1
/* 00433E40 8E050000 */  lw    $a1, ($s0)
/* 00433E44 8F9985E0 */  lw    $t9, %call16(disasm_text_errfile)($gp)
/* 00433E48 00003025 */  move  $a2, $zero
/* 00433E4C 0320F809 */  jalr  $t9
/* 00433E50 AFA50004 */   sw    $a1, 4($sp)
/* 00433E54 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00433E58 00000000 */  nop   
.L00433E5C:
/* 00433E5C 8FBF001C */  lw    $ra, 0x1c($sp)
.L00433E60:
/* 00433E60 8FB00014 */  lw    $s0, 0x14($sp)
/* 00433E64 03E00008 */  jr    $ra
/* 00433E68 27BD0020 */   addiu $sp, $sp, 0x20

    .type func_00433E6C, @function
func_00433E6C:
    # 00433ED0 func_00433ED0
/* 00433E6C 10C00016 */  beqz  $a2, .L00433EC8
/* 00433E70 AFA50004 */   sw    $a1, 4($sp)
/* 00433E74 00057682 */  srl   $t6, $a1, 0x1a
/* 00433E78 24010011 */  li    $at, 17
/* 00433E7C 11C10009 */  beq   $t6, $at, .L00433EA4
/* 00433E80 24010031 */   li    $at, 49
/* 00433E84 11C10007 */  beq   $t6, $at, .L00433EA4
/* 00433E88 24010035 */   li    $at, 53
/* 00433E8C 11C10005 */  beq   $t6, $at, .L00433EA4
/* 00433E90 24010039 */   li    $at, 57
/* 00433E94 11C10003 */  beq   $t6, $at, .L00433EA4
/* 00433E98 2401003D */   li    $at, 61
/* 00433E9C 15C10006 */  bne   $t6, $at, .L00433EB8
/* 00433EA0 00000000 */   nop   
.L00433EA4:
/* 00433EA4 908F0046 */  lbu   $t7, 0x46($a0)
/* 00433EA8 00000000 */  nop   
/* 00433EAC 31F8FFFB */  andi  $t8, $t7, 0xfffb
/* 00433EB0 37190004 */  ori   $t9, $t8, 4
/* 00433EB4 A0990046 */  sb    $t9, 0x46($a0)
.L00433EB8:
/* 00433EB8 9488004C */  lhu   $t0, 0x4c($a0)
/* 00433EBC 00000000 */  nop   
/* 00433EC0 01064821 */  addu  $t1, $t0, $a2
/* 00433EC4 A489004C */  sh    $t1, 0x4c($a0)
.L00433EC8:
/* 00433EC8 03E00008 */  jr    $ra
/* 00433ECC 00000000 */   nop   

    .type func_00433ED0, @function
func_00433ED0:
    # 00434EDC reorganize_bb
/* 00433ED0 3C1C0FBF */  .cpload $t9
/* 00433ED4 279C6390 */  
/* 00433ED8 0399E021 */  
/* 00433EDC 8F81808C */  lw    $at, %got(B_1002DD70)($gp)
/* 00433EE0 8F82808C */  lw    $v0, %got(B_1002DD90)($gp)
/* 00433EE4 AC20DD70 */  sw    $zero, %lo(B_1002DD70)($at)
/* 00433EE8 8F81808C */  lw    $at, %got(B_1002DD78)($gp)
/* 00433EEC 2442DD90 */  addiu $v0, %lo(B_1002DD90) # addiu $v0, $v0, -0x2270
/* 00433EF0 AC20DD78 */  sw    $zero, %lo(B_1002DD78)($at)
/* 00433EF4 8F81808C */  lw    $at, %got(B_1002DD7C)($gp)
/* 00433EF8 27BDFF50 */  addiu $sp, $sp, -0xb0
/* 00433EFC AC20DD7C */  sw    $zero, %lo(B_1002DD7C)($at)
/* 00433F00 8F81808C */  lw    $at, %got(B_1002DD80)($gp)
/* 00433F04 8F8E8AC0 */  lw     $t6, %got(fp_pipelining)($gp)
/* 00433F08 AC20DD80 */  sw    $zero, %lo(B_1002DD80)($at)
/* 00433F0C 8F81808C */  lw    $at, %got(B_1002DD84)($gp)
/* 00433F10 AFBF0044 */  sw    $ra, 0x44($sp)
/* 00433F14 AC20DD84 */  sw    $zero, %lo(B_1002DD84)($at)
/* 00433F18 8F81808C */  lw    $at, %got(B_1002DD88)($gp)
/* 00433F1C AFBE0040 */  sw    $fp, 0x40($sp)
/* 00433F20 AC20DD88 */  sw    $zero, %lo(B_1002DD88)($at)
/* 00433F24 8F81808C */  lw    $at, %got(B_1002DDA0)($gp)
/* 00433F28 AC400000 */  sw    $zero, ($v0)
/* 00433F2C AC400004 */  sw    $zero, 4($v0)
/* 00433F30 AC400008 */  sw    $zero, 8($v0)
/* 00433F34 AC40000C */  sw    $zero, 0xc($v0)
/* 00433F38 AC20DDA0 */  sw    $zero, %lo(B_1002DDA0)($at)
/* 00433F3C 8F81808C */  lw    $at, %got(B_1002DDD4)($gp)
/* 00433F40 8DCE0000 */  lw    $t6, ($t6)
/* 00433F44 AC20DDD4 */  sw    $zero, %lo(B_1002DDD4)($at)
/* 00433F48 8F81808C */  lw    $at, %got(B_1002DDA4)($gp)
/* 00433F4C AFBC003C */  sw    $gp, 0x3c($sp)
/* 00433F50 AC20DDA4 */  sw    $zero, %lo(B_1002DDA4)($at)
/* 00433F54 8F81808C */  lw    $at, %got(B_1002DDA8)($gp)
/* 00433F58 AFB70038 */  sw    $s7, 0x38($sp)
/* 00433F5C AC20DDA8 */  sw    $zero, %lo(B_1002DDA8)($at)
/* 00433F60 8F81808C */  lw    $at, %got(B_1002DDAC)($gp)
/* 00433F64 AFB60034 */  sw    $s6, 0x34($sp)
/* 00433F68 AC20DDAC */  sw    $zero, %lo(B_1002DDAC)($at)
/* 00433F6C 8F81808C */  lw    $at, %got(B_1002DDB0)($gp)
/* 00433F70 AFB50030 */  sw    $s5, 0x30($sp)
/* 00433F74 AC20DDB0 */  sw    $zero, %lo(B_1002DDB0)($at)
/* 00433F78 8F81808C */  lw    $at, %got(B_1002DDB4)($gp)
/* 00433F7C AFB4002C */  sw    $s4, 0x2c($sp)
/* 00433F80 AC20DDB4 */  sw    $zero, %lo(B_1002DDB4)($at)
/* 00433F84 8F81808C */  lw    $at, %got(B_1002DDB8)($gp)
/* 00433F88 AFB30028 */  sw    $s3, 0x28($sp)
/* 00433F8C AC20DDB8 */  sw    $zero, %lo(B_1002DDB8)($at)
/* 00433F90 8F81808C */  lw    $at, %got(B_1002DDBC)($gp)
/* 00433F94 AFB20024 */  sw    $s2, 0x24($sp)
/* 00433F98 AC20DDBC */  sw    $zero, %lo(B_1002DDBC)($at)
/* 00433F9C 8F81808C */  lw    $at, %got(B_1002DDC0)($gp)
/* 00433FA0 AFB10020 */  sw    $s1, 0x20($sp)
/* 00433FA4 AC20DDC0 */  sw    $zero, %lo(B_1002DDC0)($at)
/* 00433FA8 8F81808C */  lw    $at, %got(B_1002DDC4)($gp)
/* 00433FAC AFB0001C */  sw    $s0, 0x1c($sp)
/* 00433FB0 AC20DDC4 */  sw    $zero, %lo(B_1002DDC4)($at)
/* 00433FB4 8F81808C */  lw    $at, %got(B_1002DDC8)($gp)
/* 00433FB8 AFA400B0 */  sw    $a0, 0xb0($sp)
/* 00433FBC AC20DDC8 */  sw    $zero, %lo(B_1002DDC8)($at)
/* 00433FC0 8F81808C */  lw    $at, %got(B_1002DDCC)($gp)
/* 00433FC4 AFA500B4 */  sw    $a1, 0xb4($sp)
/* 00433FC8 AC20DDCC */  sw    $zero, %lo(B_1002DDCC)($at)
/* 00433FCC 8F81808C */  lw    $at, %got(B_1002DDD0)($gp)
/* 00433FD0 AFA600B8 */  sw    $a2, 0xb8($sp)
/* 00433FD4 AC20DDD0 */  sw    $zero, %lo(B_1002DDD0)($at)
/* 00433FD8 24010006 */  li    $at, 6
/* 00433FDC 15C10007 */  bne   $t6, $at, .L00433FFC
/* 00433FE0 AFA00098 */   sw    $zero, 0x98($sp)
/* 00433FE4 8F998374 */  lw    $t9, %call16(r6_init_state)($gp)
/* 00433FE8 00000000 */  nop   
/* 00433FEC 0320F809 */  jalr  $t9
/* 00433FF0 00000000 */   nop   
/* 00433FF4 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00433FF8 00000000 */  nop   
.L00433FFC:
/* 00433FFC 8F838088 */  lw    $v1, %got(B_10025A1C)($gp)
/* 00434000 0000B025 */  move  $s6, $zero
/* 00434004 8C635A1C */  lw    $v1, %lo(B_10025A1C)($v1)
/* 00434008 AFA000AC */  sw    $zero, 0xac($sp)
/* 0043400C 1060032B */  beqz  $v1, .L00434CBC
/* 00434010 AFA000A0 */   sw    $zero, 0xa0($sp)
/* 00434014 8FBE0084 */  lw    $fp, 0x84($sp)
/* 00434018 AFA000A0 */  sw    $zero, 0xa0($sp)
.L0043401C:
/* 0043401C 8F8F8960 */  lw     $t7, %got(prefetch)($gp)
/* 00434020 0000A025 */  move  $s4, $zero
/* 00434024 8DEF0000 */  lw    $t7, ($t7)
/* 00434028 AFA00090 */  sw    $zero, 0x90($sp)
/* 0043402C 11E00015 */  beqz  $t7, .L00434084
/* 00434030 00000000 */   nop   
/* 00434034 8F98808C */  lw    $t8, %got(B_1002DDD8)($gp)
/* 00434038 00000000 */  nop   
/* 0043403C 8F18DDD8 */  lw    $t8, %lo(B_1002DDD8)($t8)
/* 00434040 00000000 */  nop   
/* 00434044 1700000F */  bnez  $t8, .L00434084
/* 00434048 00000000 */   nop   
/* 0043404C 8F82808C */  lw    $v0, %got(B_1002DD88)($gp)
/* 00434050 00000000 */  nop   
/* 00434054 8C42DD88 */  lw    $v0, %lo(B_1002DD88)($v0)
/* 00434058 00000000 */  nop   
/* 0043405C 02C2082B */  sltu  $at, $s6, $v0
/* 00434060 10200002 */  beqz  $at, .L0043406C
/* 00434064 00000000 */   nop   
/* 00434068 0040B025 */  move  $s6, $v0
.L0043406C:
/* 0043406C 8F81808C */  lw    $at, %got(B_1002DD88)($gp)
/* 00434070 26D90001 */  addiu $t9, $s6, 1
/* 00434074 AC39DD88 */  sw    $t9, %lo(B_1002DD88)($at)
/* 00434078 8F81808C */  lw    $at, %got(B_1002DDD8)($gp)
/* 0043407C 24080002 */  li    $t0, 2
/* 00434080 AC28DDD8 */  sw    $t0, %lo(B_1002DDD8)($at)
.L00434084:
/* 00434084 106000DC */  beqz  $v1, .L004343F8
/* 00434088 0060A825 */   move  $s5, $v1
.L0043408C:
/* 0043408C 8EB20008 */  lw    $s2, 8($s5)
/* 00434090 8F998384 */  lw    $t9, %call16(start_time)($gp)
/* 00434094 0000B825 */  move  $s7, $zero
/* 00434098 02C02025 */  move  $a0, $s6
/* 0043409C 00008825 */  move  $s1, $zero
/* 004340A0 0320F809 */  jalr  $t9
/* 004340A4 02402825 */   move  $a1, $s2
/* 004340A8 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004340AC 24010006 */  li    $at, 6
/* 004340B0 8F898AC0 */  lw     $t1, %got(fp_pipelining)($gp)
/* 004340B4 00409825 */  move  $s3, $v0
/* 004340B8 8D290000 */  lw    $t1, ($t1)
/* 004340BC 00000000 */  nop   
/* 004340C0 1521000F */  bne   $t1, $at, .L00434100
/* 004340C4 00000000 */   nop   
/* 004340C8 8F998378 */  lw    $t9, %call16(r6_start_time)($gp)
/* 004340CC 00402025 */  move  $a0, $v0
/* 004340D0 0320F809 */  jalr  $t9
/* 004340D4 02402825 */   move  $a1, $s2
/* 004340D8 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004340DC 0262082B */  sltu  $at, $s3, $v0
/* 004340E0 10200007 */  beqz  $at, .L00434100
/* 004340E4 00000000 */   nop   
/* 004340E8 8F998378 */  lw    $t9, %call16(r6_start_time)($gp)
/* 004340EC 02602025 */  move  $a0, $s3
/* 004340F0 0320F809 */  jalr  $t9
/* 004340F4 02402825 */   move  $a1, $s2
/* 004340F8 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004340FC 00409825 */  move  $s3, $v0
.L00434100:
/* 00434100 8E500024 */  lw    $s0, 0x24($s2)
/* 00434104 00000000 */  nop   
/* 00434108 1200000C */  beqz  $s0, .L0043413C
/* 0043410C 00000000 */   nop   
.L00434110:
/* 00434110 86020006 */  lh    $v0, 6($s0)
/* 00434114 00000000 */  nop   
/* 00434118 18400004 */  blez  $v0, .L0043412C
/* 0043411C 0222082B */   sltu  $at, $s1, $v0
/* 00434120 10200002 */  beqz  $at, .L0043412C
/* 00434124 00000000 */   nop   
/* 00434128 00408825 */  move  $s1, $v0
.L0043412C:
/* 0043412C 8E100000 */  lw    $s0, ($s0)
/* 00434130 00000000 */  nop   
/* 00434134 1600FFF6 */  bnez  $s0, .L00434110
/* 00434138 00000000 */   nop   
.L0043413C:
/* 0043413C 8F8A8B00 */  lw     $t2, %got(tracereorder)($gp)
/* 00434140 9650002C */  lhu   $s0, 0x2c($s2)
/* 00434144 914A0000 */  lbu   $t2, ($t2)
/* 00434148 00000000 */  nop   
/* 0043414C 11400017 */  beqz  $t2, .L004341AC
/* 00434150 00000000 */   nop   
/* 00434154 8F8B8AC8 */  lw     $t3, %got(bbnode)($gp)
/* 00434158 24010038 */  li    $at, 56
/* 0043415C 024B2823 */  subu  $a1, $s2, $t3
/* 00434160 00A1001A */  div   $zero, $a1, $at
/* 00434164 8F84806C */  lw    $a0, %got(RO_10015608)($gp)
/* 00434168 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0043416C 8E460014 */  lw    $a2, 0x14($s2)
/* 00434170 AFB00010 */  sw    $s0, 0x10($sp)
/* 00434174 02603825 */  move  $a3, $s3
/* 00434178 24845608 */  addiu $a0, %lo(RO_10015608) # addiu $a0, $a0, 0x5608
/* 0043417C 00002812 */  mflo  $a1
/* 00434180 0320F809 */  jalr  $t9
/* 00434184 00000000 */   nop   
/* 00434188 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0043418C 02202825 */  move  $a1, $s1
/* 00434190 8F84806C */  lw    $a0, %got(RO_1001563C)($gp)
/* 00434194 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 00434198 03C03025 */  move  $a2, $fp
/* 0043419C 0320F809 */  jalr  $t9
/* 004341A0 2484563C */   addiu $a0, %lo(RO_1001563C) # addiu $a0, $a0, 0x563c
/* 004341A4 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004341A8 00000000 */  nop   
.L004341AC:
/* 004341AC 8F8D8088 */  lw    $t5, %got(B_10023634)($gp)
/* 004341B0 00000000 */  nop   
/* 004341B4 8DAD3634 */  lw    $t5, %lo(B_10023634)($t5)
/* 004341B8 00000000 */  nop   
/* 004341BC 11A0000B */  beqz  $t5, .L004341EC
/* 004341C0 8FB800B8 */   lw    $t8, 0xb8($sp)
/* 004341C4 8E440000 */  lw    $a0, ($s2)
/* 004341C8 8F998310 */  lw    $t9, %call16(num_regs_available)($gp)
/* 004341CC AFA40000 */  sw    $a0, ($sp)
/* 004341D0 8E450014 */  lw    $a1, 0x14($s2)
/* 004341D4 0320F809 */  jalr  $t9
/* 004341D8 00000000 */   nop   
/* 004341DC 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004341E0 04400080 */  bltz  $v0, .L004343E4
/* 004341E4 0040B825 */   move  $s7, $v0
/* 004341E8 8FB800B8 */  lw    $t8, 0xb8($sp)
.L004341EC:
/* 004341EC 00000000 */  nop   
/* 004341F0 8F190044 */  lw    $t9, 0x44($t8)
/* 004341F4 00000000 */  nop   
/* 004341F8 00194C80 */  sll   $t1, $t9, 0x12
/* 004341FC 0521000E */  bgez  $t1, .L00434238
/* 00434200 00000000 */   nop   
/* 00434204 8F8A8088 */  lw    $t2, %got(B_1002364C)($gp)
/* 00434208 00000000 */  nop   
/* 0043420C 8D4A364C */  lw    $t2, %lo(B_1002364C)($t2)
/* 00434210 00000000 */  nop   
/* 00434214 164A0008 */  bne   $s2, $t2, .L00434238
/* 00434218 00000000 */   nop   
/* 0043421C 8F8B8904 */  lw     $t3, %got(branch_latency)($gp)
/* 00434220 8FAC00B0 */  lw    $t4, 0xb0($sp)
/* 00434224 8D6B0000 */  lw    $t3, ($t3)
/* 00434228 00000000 */  nop   
/* 0043422C 016C082B */  sltu  $at, $t3, $t4
/* 00434230 1420006C */  bnez  $at, .L004343E4
/* 00434234 00000000 */   nop   
.L00434238:
/* 00434238 8F8D8BDC */  lw     $t5, %got(r4300_mul)($gp)
/* 0043423C 8FAE00A0 */  lw    $t6, 0xa0($sp)
/* 00434240 91AD0000 */  lbu   $t5, ($t5)
/* 00434244 00000000 */  nop   
/* 00434248 11A00024 */  beqz  $t5, .L004342DC
/* 0043424C 00000000 */   nop   
/* 00434250 11C00022 */  beqz  $t6, .L004342DC
/* 00434254 00000000 */   nop   
/* 00434258 12800020 */  beqz  $s4, .L004342DC
/* 0043425C 00000000 */   nop   
/* 00434260 8DC20000 */  lw    $v0, ($t6)
/* 00434264 24010011 */  li    $at, 17
/* 00434268 00027E82 */  srl   $t7, $v0, 0x1a
/* 0043426C 15E1001B */  bne   $t7, $at, .L004342DC
/* 00434270 3058003F */   andi  $t8, $v0, 0x3f
/* 00434274 24010002 */  li    $at, 2
/* 00434278 17010018 */  bne   $t8, $at, .L004342DC
/* 0043427C 00000000 */   nop   
/* 00434280 8E430000 */  lw    $v1, ($s2)
/* 00434284 24010018 */  li    $at, 24
/* 00434288 00031682 */  srl   $v0, $v1, 0x1a
/* 0043428C 10400006 */  beqz  $v0, .L004342A8
/* 00434290 00000000 */   nop   
/* 00434294 24010011 */  li    $at, 17
/* 00434298 1041000C */  beq   $v0, $at, .L004342CC
/* 0043429C 00000000 */   nop   
/* 004342A0 1000000E */  b     .L004342DC
/* 004342A4 00000000 */   nop   
.L004342A8:
/* 004342A8 3062003F */  andi  $v0, $v1, 0x3f
/* 004342AC 1041004D */  beq   $v0, $at, .L004343E4
/* 004342B0 24010019 */   li    $at, 25
/* 004342B4 1041004B */  beq   $v0, $at, .L004343E4
/* 004342B8 2401001C */   li    $at, 28
/* 004342BC 10410049 */  beq   $v0, $at, .L004343E4
/* 004342C0 2401001D */   li    $at, 29
/* 004342C4 10410047 */  beq   $v0, $at, .L004343E4
/* 004342C8 00000000 */   nop   
.L004342CC:
/* 004342CC 3079003F */  andi  $t9, $v1, 0x3f
/* 004342D0 24010002 */  li    $at, 2
/* 004342D4 13210043 */  beq   $t9, $at, .L004343E4
/* 004342D8 00000000 */   nop   
.L004342DC:
/* 004342DC 1280003A */  beqz  $s4, .L004343C8
/* 004342E0 027E082B */   sltu  $at, $s3, $fp
/* 004342E4 14200039 */  bnez  $at, .L004343CC
/* 004342E8 8FAB0090 */   lw    $t3, 0x90($sp)
/* 004342EC 167E003D */  bne   $s3, $fp, .L004343E4
/* 004342F0 00000000 */   nop   
/* 004342F4 8F828088 */  lw    $v0, %got(B_10023634)($gp)
/* 004342F8 02402025 */  move  $a0, $s2
/* 004342FC 8C423634 */  lw    $v0, %lo(B_10023634)($v0)
/* 00434300 02802825 */  move  $a1, $s4
/* 00434304 1040000E */  beqz  $v0, .L00434340
/* 00434308 02203025 */   move  $a2, $s1
/* 0043430C 8FA80078 */  lw    $t0, 0x78($sp)
/* 00434310 8F998318 */  lw    $t9, %call16(is_node_better)($gp)
/* 00434314 8FA70080 */  lw    $a3, 0x80($sp)
/* 00434318 AFB70010 */  sw    $s7, 0x10($sp)
/* 0043431C 0320F809 */  jalr  $t9
/* 00434320 AFA80014 */   sw    $t0, 0x14($sp)
/* 00434324 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434328 14400028 */  bnez  $v0, .L004343CC
/* 0043432C 8FAB0090 */   lw    $t3, 0x90($sp)
/* 00434330 8F828088 */  lw    $v0, %got(B_10023634)($gp)
/* 00434334 00000000 */  nop   
/* 00434338 8C423634 */  lw    $v0, %lo(B_10023634)($v0)
/* 0043433C 00000000 */  nop   
.L00434340:
/* 00434340 14400028 */  bnez  $v0, .L004343E4
/* 00434344 00000000 */   nop   
/* 00434348 8FA9007C */  lw    $t1, 0x7c($sp)
/* 0043434C 00000000 */  nop   
/* 00434350 0130082B */  sltu  $at, $t1, $s0
/* 00434354 1420001D */  bnez  $at, .L004343CC
/* 00434358 8FAB0090 */   lw    $t3, 0x90($sp)
/* 0043435C 16090021 */  bne   $s0, $t1, .L004343E4
/* 00434360 00000000 */   nop   
/* 00434364 8FAA0080 */  lw    $t2, 0x80($sp)
/* 00434368 00000000 */  nop   
/* 0043436C 0151082B */  sltu  $at, $t2, $s1
/* 00434370 14200016 */  bnez  $at, .L004343CC
/* 00434374 8FAB0090 */   lw    $t3, 0x90($sp)
/* 00434378 162A001A */  bne   $s1, $t2, .L004343E4
/* 0043437C 00000000 */   nop   
/* 00434380 8E420030 */  lw    $v0, 0x30($s2)
/* 00434384 8E830030 */  lw    $v1, 0x30($s4)
/* 00434388 00000000 */  nop   
/* 0043438C 0043082B */  sltu  $at, $v0, $v1
/* 00434390 1420000E */  bnez  $at, .L004343CC
/* 00434394 8FAB0090 */   lw    $t3, 0x90($sp)
/* 00434398 14620012 */  bne   $v1, $v0, .L004343E4
/* 0043439C 00000000 */   nop   
/* 004343A0 8E42000C */  lw    $v0, 0xc($s2)
/* 004343A4 8E83000C */  lw    $v1, 0xc($s4)
/* 004343A8 00000000 */  nop   
/* 004343AC 0043082A */  slt   $at, $v0, $v1
/* 004343B0 14200006 */  bnez  $at, .L004343CC
/* 004343B4 8FAB0090 */   lw    $t3, 0x90($sp)
/* 004343B8 1462000A */  bne   $v1, $v0, .L004343E4
/* 004343BC 00000000 */   nop   
/* 004343C0 10000009 */  b     .L004343E8
/* 004343C4 AFB50090 */   sw    $s5, 0x90($sp)
.L004343C8:
/* 004343C8 8FAB0090 */  lw    $t3, 0x90($sp)
.L004343CC:
/* 004343CC 0240A025 */  move  $s4, $s2
/* 004343D0 0260F025 */  move  $fp, $s3
/* 004343D4 AFB10080 */  sw    $s1, 0x80($sp)
/* 004343D8 AFB0007C */  sw    $s0, 0x7c($sp)
/* 004343DC AFB70078 */  sw    $s7, 0x78($sp)
/* 004343E0 AFAB0094 */  sw    $t3, 0x94($sp)
.L004343E4:
/* 004343E4 AFB50090 */  sw    $s5, 0x90($sp)
.L004343E8:
/* 004343E8 8EB50000 */  lw    $s5, ($s5)
/* 004343EC 00000000 */  nop   
/* 004343F0 16A0FF26 */  bnez  $s5, .L0043408C
/* 004343F4 00000000 */   nop   
.L004343F8:
/* 004343F8 8F8C8088 */  lw    $t4, %got(B_10023634)($gp)
/* 004343FC 00000000 */  nop   
/* 00434400 8D8C3634 */  lw    $t4, %lo(B_10023634)($t4)
/* 00434404 00000000 */  nop   
/* 00434408 11800008 */  beqz  $t4, .L0043442C
/* 0043440C 00000000 */   nop   
/* 00434410 16800006 */  bnez  $s4, .L0043442C
/* 00434414 3C0D7FFF */   lui   $t5, 0x7fff
/* 00434418 8FAE00B4 */  lw    $t6, 0xb4($sp)
/* 0043441C 35ADFFFF */  ori   $t5, $t5, 0xffff
/* 00434420 00001025 */  move  $v0, $zero
/* 00434424 100002A1 */  b     .L00434EAC
/* 00434428 ADCD0000 */   sw    $t5, ($t6)
.L0043442C:
/* 0043442C 8F8F8B00 */  lw     $t7, %got(tracereorder)($gp)
/* 00434430 00000000 */  nop   
/* 00434434 91EF0000 */  lbu   $t7, ($t7)
/* 00434438 00000000 */  nop   
/* 0043443C 11E0001B */  beqz  $t7, .L004344AC
/* 00434440 00000000 */   nop   
/* 00434444 8F988AC8 */  lw     $t8, %got(bbnode)($gp)
/* 00434448 24010038 */  li    $at, 56
/* 0043444C 02982823 */  subu  $a1, $s4, $t8
/* 00434450 00A1001A */  div   $zero, $a1, $at
/* 00434454 8F898AE4 */  lw     $t1, %got(currtextindex)($gp)
/* 00434458 8F888AEC */  lw     $t0, %got(seg_ic)($gp)
/* 0043445C 8D290000 */  lw    $t1, ($t1)
/* 00434460 8D080000 */  lw    $t0, ($t0)
/* 00434464 00095080 */  sll   $t2, $t1, 2
/* 00434468 8F8C808C */  lw    $t4, %got(B_1002DD70)($gp)
/* 0043446C 010A5821 */  addu  $t3, $t0, $t2
/* 00434470 8D620000 */  lw    $v0, ($t3)
/* 00434474 8E8D0030 */  lw    $t5, 0x30($s4)
/* 00434478 8F84806C */  lw    $a0, %got(RO_1001565C)($gp)
/* 0043447C 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 00434480 8D8CDD70 */  lw    $t4, %lo(B_1002DD70)($t4)
/* 00434484 8E860014 */  lw    $a2, 0x14($s4)
/* 00434488 004D7021 */  addu  $t6, $v0, $t5
/* 0043448C AFAE0010 */  sw    $t6, 0x10($sp)
/* 00434490 2484565C */  addiu $a0, %lo(RO_1001565C) # addiu $a0, $a0, 0x565c
/* 00434494 004C3821 */  addu  $a3, $v0, $t4
/* 00434498 00002812 */  mflo  $a1
/* 0043449C 0320F809 */  jalr  $t9
/* 004344A0 00000000 */   nop   
/* 004344A4 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004344A8 00000000 */  nop   
.L004344AC:
/* 004344AC 8F8F8C4C */  lw     $t7, %got(fp_hack_flag)($gp)
/* 004344B0 24010004 */  li    $at, 4
/* 004344B4 8DEF0000 */  lw    $t7, ($t7)
/* 004344B8 8FB800A0 */  lw    $t8, 0xa0($sp)
/* 004344BC 15E10034 */  bne   $t7, $at, .L00434590
/* 004344C0 00000000 */   nop   
/* 004344C4 1300000A */  beqz  $t8, .L004344F0
/* 004344C8 00000000 */   nop   
/* 004344CC 8F020000 */  lw    $v0, ($t8)
/* 004344D0 24010011 */  li    $at, 17
/* 004344D4 0002CE82 */  srl   $t9, $v0, 0x1a
/* 004344D8 1721002D */  bne   $t9, $at, .L00434590
/* 004344DC 00024980 */   sll   $t1, $v0, 6
/* 004344E0 000946C2 */  srl   $t0, $t1, 0x1b
/* 004344E4 2D010010 */  sltiu $at, $t0, 0x10
/* 004344E8 14200029 */  bnez  $at, .L00434590
/* 004344EC 00000000 */   nop   
.L004344F0:
/* 004344F0 8E820000 */  lw    $v0, ($s4)
/* 004344F4 24010011 */  li    $at, 17
/* 004344F8 00025682 */  srl   $t2, $v0, 0x1a
/* 004344FC 15410024 */  bne   $t2, $at, .L00434590
/* 00434500 00025980 */   sll   $t3, $v0, 6
/* 00434504 000B66C2 */  srl   $t4, $t3, 0x1b
/* 00434508 2D810010 */  sltiu $at, $t4, 0x10
/* 0043450C 14200020 */  bnez  $at, .L00434590
/* 00434510 304D003F */   andi  $t5, $v0, 0x3f
/* 00434514 24010003 */  li    $at, 3
/* 00434518 15A1001D */  bne   $t5, $at, .L00434590
/* 0043451C 00000000 */   nop   
/* 00434520 8FAE00B8 */  lw    $t6, 0xb8($sp)
/* 00434524 8FA40098 */  lw    $a0, 0x98($sp)
/* 00434528 8DCF0044 */  lw    $t7, 0x44($t6)
/* 0043452C 26D00001 */  addiu $s0, $s6, 1
/* 00434530 000FCC80 */  sll   $t9, $t7, 0x12
/* 00434534 0721000D */  bgez  $t9, .L0043456C
/* 00434538 00002825 */   move  $a1, $zero
/* 0043453C AFA40000 */  sw    $a0, ($sp)
/* 00434540 8F998020 */  lw    $t9, %got(func_0042D478)($gp)
/* 00434544 8E880010 */  lw    $t0, 0x10($s4)
/* 00434548 8E87000C */  lw    $a3, 0xc($s4)
/* 0043454C 240AFFFF */  li    $t2, -1
/* 00434550 2739D478 */  addiu $t9, %lo(func_0042D478) # addiu $t9, $t9, -0x2b88
/* 00434554 AFAA0014 */  sw    $t2, 0x14($sp)
/* 00434558 00003025 */  move  $a2, $zero
/* 0043455C 0320F809 */  jalr  $t9
/* 00434560 AFA80010 */   sw    $t0, 0x10($sp)
/* 00434564 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434568 00000000 */  nop   
.L0043456C:
/* 0043456C 8F998020 */  lw    $t9, %got(func_00433E6C)($gp)
/* 00434570 8E850000 */  lw    $a1, ($s4)
/* 00434574 8FA400B8 */  lw    $a0, 0xb8($sp)
/* 00434578 27393E6C */  addiu $t9, %lo(func_00433E6C) # addiu $t9, $t9, 0x3e6c
/* 0043457C 24060001 */  li    $a2, 1
/* 00434580 0320F809 */  jalr  $t9
/* 00434584 AFA50004 */   sw    $a1, 4($sp)
/* 00434588 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0043458C 0200B025 */  move  $s6, $s0
.L00434590:
/* 00434590 8F82808C */  lw    $v0, %got(B_1002DD70)($gp)
/* 00434594 8E8D0030 */  lw    $t5, 0x30($s4)
/* 00434598 8C42DD70 */  lw    $v0, %lo(B_1002DD70)($v0)
/* 0043459C 00000000 */  nop   
/* 004345A0 004D082B */  sltu  $at, $v0, $t5
/* 004345A4 10200034 */  beqz  $at, .L00434678
/* 004345A8 00000000 */   nop   
/* 004345AC 8FAE00B8 */  lw    $t6, 0xb8($sp)
.L004345B0:
/* 004345B0 8FA40098 */  lw    $a0, 0x98($sp)
/* 004345B4 8DCF0044 */  lw    $t7, 0x44($t6)
/* 004345B8 26D00001 */  addiu $s0, $s6, 1
/* 004345BC 000FCC80 */  sll   $t9, $t7, 0x12
/* 004345C0 0721000E */  bgez  $t9, .L004345FC
/* 004345C4 00002825 */   move  $a1, $zero
/* 004345C8 AFA40000 */  sw    $a0, ($sp)
/* 004345CC 8F998020 */  lw    $t9, %got(func_0042D478)($gp)
/* 004345D0 8E880010 */  lw    $t0, 0x10($s4)
/* 004345D4 8E87000C */  lw    $a3, 0xc($s4)
/* 004345D8 240AFFFF */  li    $t2, -1
/* 004345DC 2739D478 */  addiu $t9, %lo(func_0042D478) # addiu $t9, $t9, -0x2b88
/* 004345E0 AFAA0014 */  sw    $t2, 0x14($sp)
/* 004345E4 00003025 */  move  $a2, $zero
/* 004345E8 0320F809 */  jalr  $t9
/* 004345EC AFA80010 */   sw    $t0, 0x10($sp)
/* 004345F0 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004345F4 10000010 */  b     .L00434638
/* 004345F8 00000000 */   nop   
.L004345FC:
/* 004345FC 8F998020 */  lw    $t9, %got(func_00433D90)($gp)
/* 00434600 8FA400A0 */  lw    $a0, 0xa0($sp)
/* 00434604 27393D90 */  addiu $t9, %lo(func_00433D90) # addiu $t9, $t9, 0x3d90
/* 00434608 0320F809 */  jalr  $t9
/* 0043460C 02802825 */   move  $a1, $s4
/* 00434610 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434614 00000000 */  nop   
/* 00434618 8F8B808C */  lw    $t3, %got(B_1002DD70)($gp)
/* 0043461C 8F8C808C */  lw    $t4, %got(B_1002DD70)($gp)
/* 00434620 8D6BDD70 */  lw    $t3, %lo(B_1002DD70)($t3)
/* 00434624 00000000 */  nop   
/* 00434628 AE8B0030 */  sw    $t3, 0x30($s4)
/* 0043462C 8D8CDD70 */  lw    $t4, %lo(B_1002DD70)($t4)
/* 00434630 00000000 */  nop   
/* 00434634 AFAC00AC */  sw    $t4, 0xac($sp)
.L00434638:
/* 00434638 8F998020 */  lw    $t9, %got(func_00433E6C)($gp)
/* 0043463C 8E850000 */  lw    $a1, ($s4)
/* 00434640 8FA400B8 */  lw    $a0, 0xb8($sp)
/* 00434644 27393E6C */  addiu $t9, %lo(func_00433E6C) # addiu $t9, $t9, 0x3e6c
/* 00434648 24060001 */  li    $a2, 1
/* 0043464C 0320F809 */  jalr  $t9
/* 00434650 AFA50004 */   sw    $a1, 4($sp)
/* 00434654 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434658 8E8F0030 */  lw    $t7, 0x30($s4)
/* 0043465C 8F82808C */  lw    $v0, %got(B_1002DD70)($gp)
/* 00434660 0200B025 */  move  $s6, $s0
/* 00434664 8C42DD70 */  lw    $v0, %lo(B_1002DD70)($v0)
/* 00434668 00000000 */  nop   
/* 0043466C 004F082B */  sltu  $at, $v0, $t7
/* 00434670 1420FFCF */  bnez  $at, .L004345B0
/* 00434674 8FAE00B8 */   lw    $t6, 0xb8($sp)
.L00434678:
/* 00434678 8F988088 */  lw    $t8, %got(B_1002364C)($gp)
/* 0043467C 00000000 */  nop   
/* 00434680 8F18364C */  lw    $t8, %lo(B_1002364C)($t8)
/* 00434684 00000000 */  nop   
/* 00434688 1698003A */  bne   $s4, $t8, .L00434774
/* 0043468C 00000000 */   nop   
/* 00434690 8F998088 */  lw    $t9, %got(B_10023650)($gp)
/* 00434694 8FA900AC */  lw    $t1, 0xac($sp)
/* 00434698 8F393650 */  lw    $t9, %lo(B_10023650)($t9)
/* 0043469C 24480008 */  addiu $t0, $v0, 8
/* 004346A0 17200034 */  bnez  $t9, .L00434774
/* 004346A4 0109082B */   sltu  $at, $t0, $t1
/* 004346A8 10200032 */  beqz  $at, .L00434774
/* 004346AC 00000000 */   nop   
/* 004346B0 8FAA00B8 */  lw    $t2, 0xb8($sp)
.L004346B4:
/* 004346B4 8FA40098 */  lw    $a0, 0x98($sp)
/* 004346B8 8D4B0044 */  lw    $t3, 0x44($t2)
/* 004346BC 26D00001 */  addiu $s0, $s6, 1
/* 004346C0 000B6C80 */  sll   $t5, $t3, 0x12
/* 004346C4 05A1000E */  bgez  $t5, .L00434700
/* 004346C8 00002825 */   move  $a1, $zero
/* 004346CC AFA40000 */  sw    $a0, ($sp)
/* 004346D0 8F998020 */  lw    $t9, %got(func_0042D478)($gp)
/* 004346D4 8E8F0010 */  lw    $t7, 0x10($s4)
/* 004346D8 8E87000C */  lw    $a3, 0xc($s4)
/* 004346DC 2418FFFF */  li    $t8, -1
/* 004346E0 2739D478 */  addiu $t9, %lo(func_0042D478) # addiu $t9, $t9, -0x2b88
/* 004346E4 AFB80014 */  sw    $t8, 0x14($sp)
/* 004346E8 00003025 */  move  $a2, $zero
/* 004346EC 0320F809 */  jalr  $t9
/* 004346F0 AFAF0010 */   sw    $t7, 0x10($sp)
/* 004346F4 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004346F8 1000000E */  b     .L00434734
/* 004346FC 00000000 */   nop   
.L00434700:
/* 00434700 8F998020 */  lw    $t9, %got(func_00433D90)($gp)
/* 00434704 8FA400A0 */  lw    $a0, 0xa0($sp)
/* 00434708 27393D90 */  addiu $t9, %lo(func_00433D90) # addiu $t9, $t9, 0x3d90
/* 0043470C 0320F809 */  jalr  $t9
/* 00434710 02802825 */   move  $a1, $s4
/* 00434714 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434718 00000000 */  nop   
/* 0043471C 8F99808C */  lw    $t9, %got(B_1002DD70)($gp)
/* 00434720 00000000 */  nop   
/* 00434724 8F39DD70 */  lw    $t9, %lo(B_1002DD70)($t9)
/* 00434728 00000000 */  nop   
/* 0043472C 27290008 */  addiu $t1, $t9, 8
/* 00434730 AFA900AC */  sw    $t1, 0xac($sp)
.L00434734:
/* 00434734 8F998020 */  lw    $t9, %got(func_00433E6C)($gp)
/* 00434738 8E850000 */  lw    $a1, ($s4)
/* 0043473C 8FA400B8 */  lw    $a0, 0xb8($sp)
/* 00434740 27393E6C */  addiu $t9, %lo(func_00433E6C) # addiu $t9, $t9, 0x3e6c
/* 00434744 24060001 */  li    $a2, 1
/* 00434748 0320F809 */  jalr  $t9
/* 0043474C AFA50004 */   sw    $a1, 4($sp)
/* 00434750 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434754 8FAB00AC */  lw    $t3, 0xac($sp)
/* 00434758 8F8C808C */  lw    $t4, %got(B_1002DD70)($gp)
/* 0043475C 0200B025 */  move  $s6, $s0
/* 00434760 8D8CDD70 */  lw    $t4, %lo(B_1002DD70)($t4)
/* 00434764 00000000 */  nop   
/* 00434768 258D0008 */  addiu $t5, $t4, 8
/* 0043476C 156DFFD1 */  bne   $t3, $t5, .L004346B4
/* 00434770 8FAA00B8 */   lw    $t2, 0xb8($sp)
.L00434774:
/* 00434774 8F8E8C50 */  lw     $t6, %got(fpstall_nop)($gp)
/* 00434778 03D67823 */  subu  $t7, $fp, $s6
/* 0043477C 91CE0000 */  lbu   $t6, ($t6)
/* 00434780 24010001 */  li    $at, 1
/* 00434784 11C00035 */  beqz  $t6, .L0043485C
/* 00434788 8FA80094 */   lw    $t0, 0x94($sp)
/* 0043478C 15E10033 */  bne   $t7, $at, .L0043485C
/* 00434790 8FA80094 */   lw    $t0, 0x94($sp)
/* 00434794 8FB800B8 */  lw    $t8, 0xb8($sp)
/* 00434798 00000000 */  nop   
/* 0043479C 8F190044 */  lw    $t9, 0x44($t8)
/* 004347A0 00000000 */  nop   
/* 004347A4 00194480 */  sll   $t0, $t9, 0x12
/* 004347A8 0501002C */  bgez  $t0, .L0043485C
/* 004347AC 8FA80094 */   lw    $t0, 0x94($sp)
/* 004347B0 8F8A8AC0 */  lw     $t2, %got(fp_pipelining)($gp)
/* 004347B4 24010001 */  li    $at, 1
/* 004347B8 8D4A0000 */  lw    $t2, ($t2)
/* 004347BC 00000000 */  nop   
/* 004347C0 15410026 */  bne   $t2, $at, .L0043485C
/* 004347C4 8FA80094 */   lw    $t0, 0x94($sp)
/* 004347C8 8F8B8088 */  lw    $t3, %got(B_1002364C)($gp)
/* 004347CC 8FAC00A0 */  lw    $t4, 0xa0($sp)
/* 004347D0 8D6B364C */  lw    $t3, %lo(B_1002364C)($t3)
/* 004347D4 00000000 */  nop   
/* 004347D8 118B0020 */  beq   $t4, $t3, .L0043485C
/* 004347DC 8FA80094 */   lw    $t0, 0x94($sp)
/* 004347E0 8E820000 */  lw    $v0, ($s4)
/* 004347E4 24010011 */  li    $at, 17
/* 004347E8 00026E82 */  srl   $t5, $v0, 0x1a
/* 004347EC 11A10004 */  beq   $t5, $at, .L00434800
/* 004347F0 00002825 */   move  $a1, $zero
/* 004347F4 24010039 */  li    $at, 57
/* 004347F8 15A10018 */  bne   $t5, $at, .L0043485C
/* 004347FC 8FA80094 */   lw    $t0, 0x94($sp)
.L00434800:
/* 00434800 8FA40098 */  lw    $a0, 0x98($sp)
/* 00434804 8F998020 */  lw    $t9, %got(func_0042D478)($gp)
/* 00434808 AFA40000 */  sw    $a0, ($sp)
/* 0043480C 8E8F0010 */  lw    $t7, 0x10($s4)
/* 00434810 8E87000C */  lw    $a3, 0xc($s4)
/* 00434814 2418FFFF */  li    $t8, -1
/* 00434818 2739D478 */  addiu $t9, %lo(func_0042D478) # addiu $t9, $t9, -0x2b88
/* 0043481C AFB80014 */  sw    $t8, 0x14($sp)
/* 00434820 00003025 */  move  $a2, $zero
/* 00434824 26D00001 */  addiu $s0, $s6, 1
/* 00434828 0320F809 */  jalr  $t9
/* 0043482C AFAF0010 */   sw    $t7, 0x10($sp)
/* 00434830 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434834 8E850000 */  lw    $a1, ($s4)
/* 00434838 8F998020 */  lw    $t9, %got(func_00433E6C)($gp)
/* 0043483C 8FA400B8 */  lw    $a0, 0xb8($sp)
/* 00434840 27393E6C */  addiu $t9, %lo(func_00433E6C) # addiu $t9, $t9, 0x3e6c
/* 00434844 24060001 */  li    $a2, 1
/* 00434848 0320F809 */  jalr  $t9
/* 0043484C AFA50004 */   sw    $a1, 4($sp)
/* 00434850 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434854 0200B025 */  move  $s6, $s0
/* 00434858 8FA80094 */  lw    $t0, 0x94($sp)
.L0043485C:
/* 0043485C 03D69023 */  subu  $s2, $fp, $s6
/* 00434860 1500000A */  bnez  $t0, .L0043488C
/* 00434864 8FAC0094 */   lw    $t4, 0x94($sp)
/* 00434868 8F828088 */  lw    $v0, %got(B_10025A1C)($gp)
/* 0043486C 00000000 */  nop   
/* 00434870 24425A1C */  addiu $v0, %lo(B_10025A1C) # addiu $v0, $v0, 0x5a1c
/* 00434874 8C550000 */  lw    $s5, ($v0)
/* 00434878 00000000 */  nop   
/* 0043487C 8EAA0000 */  lw    $t2, ($s5)
/* 00434880 10000008 */  b     .L004348A4
/* 00434884 AC4A0000 */   sw    $t2, ($v0)
/* 00434888 8FAC0094 */  lw    $t4, 0x94($sp)
.L0043488C:
/* 0043488C 00000000 */  nop   
/* 00434890 8D950000 */  lw    $s5, ($t4)
/* 00434894 00000000 */  nop   
/* 00434898 8EAB0000 */  lw    $t3, ($s5)
/* 0043489C 00000000 */  nop   
/* 004348A0 AD8B0000 */  sw    $t3, ($t4)
.L004348A4:
/* 004348A4 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 004348A8 02A02025 */  move  $a0, $s5
/* 004348AC 0320F809 */  jalr  $t9
/* 004348B0 00000000 */   nop   
/* 004348B4 8E900024 */  lw    $s0, 0x24($s4)
/* 004348B8 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004348BC 1200007F */  beqz  $s0, .L00434ABC
/* 004348C0 00000000 */   nop   
.L004348C4:
/* 004348C4 86020006 */  lh    $v0, 6($s0)
/* 004348C8 8E110008 */  lw    $s1, 8($s0)
/* 004348CC 2401FFFF */  li    $at, -1
/* 004348D0 14410031 */  bne   $v0, $at, .L00434998
/* 004348D4 00000000 */   nop   
/* 004348D8 8E820000 */  lw    $v0, ($s4)
/* 004348DC 24010008 */  li    $at, 8
/* 004348E0 00026E82 */  srl   $t5, $v0, 0x1a
/* 004348E4 11A10007 */  beq   $t5, $at, .L00434904
/* 004348E8 24010009 */   li    $at, 9
/* 004348EC 11A10005 */  beq   $t5, $at, .L00434904
/* 004348F0 24010018 */   li    $at, 24
/* 004348F4 11A10003 */  beq   $t5, $at, .L00434904
/* 004348F8 24010019 */   li    $at, 25
/* 004348FC 15A10007 */  bne   $t5, $at, .L0043491C
/* 00434900 00000000 */   nop   
.L00434904:
/* 00434904 8E2E0000 */  lw    $t6, ($s1)
/* 00434908 00000000 */  nop   
/* 0043490C 000E7E82 */  srl   $t7, $t6, 0x1a
/* 00434910 2DE1001A */  sltiu $at, $t7, 0x1a
/* 00434914 1020000A */  beqz  $at, .L00434940
/* 00434918 00000000 */   nop   
.L0043491C:
/* 0043491C 8F84806C */  lw    $a0, %got(RO_10015690)($gp)
/* 00434920 8F85806C */  lw    $a1, %got(RO_1001575C)($gp)
/* 00434924 8F998670 */  lw    $t9, %call16(assertion_failed)($gp)
/* 00434928 24060E29 */  li    $a2, 3625
/* 0043492C 24845690 */  addiu $a0, %lo(RO_10015690) # addiu $a0, $a0, 0x5690
/* 00434930 0320F809 */  jalr  $t9
/* 00434934 24A5575C */   addiu $a1, %lo(RO_1001575C) # addiu $a1, $a1, 0x575c
/* 00434938 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0043493C 00000000 */  nop   
.L00434940:
/* 00434940 8E380030 */  lw    $t8, 0x30($s1)
/* 00434944 2401FFFF */  li    $at, -1
/* 00434948 13010006 */  beq   $t8, $at, .L00434964
/* 0043494C 00000000 */   nop   
/* 00434950 86390002 */  lh    $t9, 2($s1)
/* 00434954 86890002 */  lh    $t1, 2($s4)
/* 00434958 00000000 */  nop   
/* 0043495C 03294023 */  subu  $t0, $t9, $t1
/* 00434960 A6280002 */  sh    $t0, 2($s1)
.L00434964:
/* 00434964 8F8A8088 */  lw    $t2, %got(B_10023634)($gp)
/* 00434968 00000000 */  nop   
/* 0043496C 8D4A3634 */  lw    $t2, %lo(B_10023634)($t2)
/* 00434970 00000000 */  nop   
/* 00434974 1140004D */  beqz  $t2, .L00434AAC
/* 00434978 00000000 */   nop   
/* 0043497C 8F99831C */  lw    $t9, %call16(adjust_prolog_epilog_offsets)($gp)
/* 00434980 02802025 */  move  $a0, $s4
/* 00434984 0320F809 */  jalr  $t9
/* 00434988 02202825 */   move  $a1, $s1
/* 0043498C 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434990 10000047 */  b     .L00434AB0
/* 00434994 8E100000 */   lw    $s0, ($s0)
.L00434998:
/* 00434998 04410008 */  bgez  $v0, .L004349BC
/* 0043499C 24060E40 */   li    $a2, 3648
/* 004349A0 962B002E */  lhu   $t3, 0x2e($s1)
/* 004349A4 00000000 */  nop   
/* 004349A8 017E082B */  sltu  $at, $t3, $fp
/* 004349AC 10200009 */  beqz  $at, .L004349D4
/* 004349B0 00000000 */   nop   
/* 004349B4 10000007 */  b     .L004349D4
/* 004349B8 A63E002E */   sh    $fp, 0x2e($s1)
.L004349BC:
/* 004349BC 962C002E */  lhu   $t4, 0x2e($s1)
/* 004349C0 03C21821 */  addu  $v1, $fp, $v0
/* 004349C4 0183082B */  sltu  $at, $t4, $v1
/* 004349C8 10200002 */  beqz  $at, .L004349D4
/* 004349CC 00000000 */   nop   
/* 004349D0 A623002E */  sh    $v1, 0x2e($s1)
.L004349D4:
/* 004349D4 96030004 */  lhu   $v1, 4($s0)
/* 004349D8 00000000 */  nop   
/* 004349DC 10600015 */  beqz  $v1, .L00434A34
/* 004349E0 00000000 */   nop   
/* 004349E4 8F8D808C */  lw    $t5, %got(B_1002DD70)($gp)
/* 004349E8 8E2F0030 */  lw    $t7, 0x30($s1)
/* 004349EC 8DADDD70 */  lw    $t5, %lo(B_1002DD70)($t5)
/* 004349F0 00037080 */  sll   $t6, $v1, 2
/* 004349F4 01AE1021 */  addu  $v0, $t5, $t6
/* 004349F8 01E2082B */  sltu  $at, $t7, $v0
/* 004349FC 10200008 */  beqz  $at, .L00434A20
/* 00434A00 8FA800AC */   lw    $t0, 0xac($sp)
/* 00434A04 8F98808C */  lw    $t8, %got(B_1002DD70)($gp)
/* 00434A08 AE220030 */  sw    $v0, 0x30($s1)
/* 00434A0C 96190004 */  lhu   $t9, 4($s0)
/* 00434A10 8F18DD70 */  lw    $t8, %lo(B_1002DD70)($t8)
/* 00434A14 00194880 */  sll   $t1, $t9, 2
/* 00434A18 03091021 */  addu  $v0, $t8, $t1
/* 00434A1C 8FA800AC */  lw    $t0, 0xac($sp)
.L00434A20:
/* 00434A20 24430004 */  addiu $v1, $v0, 4
/* 00434A24 0103082B */  sltu  $at, $t0, $v1
/* 00434A28 10200002 */  beqz  $at, .L00434A34
/* 00434A2C 00000000 */   nop   
/* 00434A30 AFA300AC */  sw    $v1, 0xac($sp)
.L00434A34:
/* 00434A34 9622002A */  lhu   $v0, 0x2a($s1)
/* 00434A38 00000000 */  nop   
/* 00434A3C 1440000B */  bnez  $v0, .L00434A6C
/* 00434A40 244AFFFF */   addiu $t2, $v0, -1
/* 00434A44 8F84806C */  lw    $a0, %got(RO_1001576C)($gp)
/* 00434A48 8F85806C */  lw    $a1, %got(RO_1001577C)($gp)
/* 00434A4C 8F998670 */  lw    $t9, %call16(assertion_failed)($gp)
/* 00434A50 2484576C */  addiu $a0, %lo(RO_1001576C) # addiu $a0, $a0, 0x576c
/* 00434A54 0320F809 */  jalr  $t9
/* 00434A58 24A5577C */   addiu $a1, %lo(RO_1001577C) # addiu $a1, $a1, 0x577c
/* 00434A5C 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434A60 9622002A */  lhu   $v0, 0x2a($s1)
/* 00434A64 00000000 */  nop   
/* 00434A68 244AFFFF */  addiu $t2, $v0, -1
.L00434A6C:
/* 00434A6C 314BFFFF */  andi  $t3, $t2, 0xffff
/* 00434A70 1560000E */  bnez  $t3, .L00434AAC
/* 00434A74 A62A002A */   sh    $t2, 0x2a($s1)
/* 00434A78 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 00434A7C 2404000C */  li    $a0, 12
/* 00434A80 0320F809 */  jalr  $t9
/* 00434A84 00000000 */   nop   
/* 00434A88 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434A8C AC400004 */  sw    $zero, 4($v0)
/* 00434A90 8F838088 */  lw    $v1, %got(B_10025A1C)($gp)
/* 00434A94 AC510008 */  sw    $s1, 8($v0)
/* 00434A98 24635A1C */  addiu $v1, %lo(B_10025A1C) # addiu $v1, $v1, 0x5a1c
/* 00434A9C 8C6C0000 */  lw    $t4, ($v1)
/* 00434AA0 00000000 */  nop   
/* 00434AA4 AC4C0000 */  sw    $t4, ($v0)
/* 00434AA8 AC620000 */  sw    $v0, ($v1)
.L00434AAC:
/* 00434AAC 8E100000 */  lw    $s0, ($s0)
.L00434AB0:
/* 00434AB0 00000000 */  nop   
/* 00434AB4 1600FF83 */  bnez  $s0, .L004348C4
/* 00434AB8 00000000 */   nop   
.L00434ABC:
/* 00434ABC 8F82808C */  lw    $v0, %got(B_1002DD70)($gp)
/* 00434AC0 8E8D0034 */  lw    $t5, 0x34($s4)
/* 00434AC4 8C42DD70 */  lw    $v0, %lo(B_1002DD70)($v0)
/* 00434AC8 8FAF00AC */  lw    $t7, 0xac($sp)
/* 00434ACC 000D7080 */  sll   $t6, $t5, 2
/* 00434AD0 01C21821 */  addu  $v1, $t6, $v0
/* 00434AD4 01E3082B */  sltu  $at, $t7, $v1
/* 00434AD8 10200002 */  beqz  $at, .L00434AE4
/* 00434ADC 00000000 */   nop   
/* 00434AE0 AFA300AC */  sw    $v1, 0xac($sp)
.L00434AE4:
/* 00434AE4 8F998088 */  lw    $t9, %got(B_1002364C)($gp)
/* 00434AE8 00000000 */  nop   
/* 00434AEC 8F39364C */  lw    $t9, %lo(B_1002364C)($t9)
/* 00434AF0 00000000 */  nop   
/* 00434AF4 16990011 */  bne   $s4, $t9, .L00434B3C
/* 00434AF8 00000000 */   nop   
/* 00434AFC 8F988088 */  lw    $t8, %got(B_10023650)($gp)
/* 00434B00 00000000 */  nop   
/* 00434B04 8F183650 */  lw    $t8, %lo(B_10023650)($t8)
/* 00434B08 00000000 */  nop   
/* 00434B0C 1700000B */  bnez  $t8, .L00434B3C
/* 00434B10 00000000 */   nop   
/* 00434B14 8F898904 */  lw     $t1, %got(branch_latency)($gp)
/* 00434B18 8FAA00AC */  lw    $t2, 0xac($sp)
/* 00434B1C 8D290000 */  lw    $t1, ($t1)
/* 00434B20 00000000 */  nop   
/* 00434B24 00094080 */  sll   $t0, $t1, 2
/* 00434B28 01021821 */  addu  $v1, $t0, $v0
/* 00434B2C 0143082B */  sltu  $at, $t2, $v1
/* 00434B30 10200002 */  beqz  $at, .L00434B3C
/* 00434B34 00000000 */   nop   
/* 00434B38 AFA300AC */  sw    $v1, 0xac($sp)
.L00434B3C:
/* 00434B3C 8E90001C */  lw    $s0, 0x1c($s4)
/* 00434B40 00000000 */  nop   
/* 00434B44 1200000D */  beqz  $s0, .L00434B7C
/* 00434B48 00000000 */   nop   
.L00434B4C:
/* 00434B4C 8E020008 */  lw    $v0, 8($s0)
/* 00434B50 860B0006 */  lh    $t3, 6($s0)
/* 00434B54 944C002E */  lhu   $t4, 0x2e($v0)
/* 00434B58 03CB1821 */  addu  $v1, $fp, $t3
/* 00434B5C 0183082B */  sltu  $at, $t4, $v1
/* 00434B60 10200002 */  beqz  $at, .L00434B6C
/* 00434B64 00000000 */   nop   
/* 00434B68 A443002E */  sh    $v1, 0x2e($v0)
.L00434B6C:
/* 00434B6C 8E100000 */  lw    $s0, ($s0)
/* 00434B70 00000000 */  nop   
/* 00434B74 1600FFF5 */  bnez  $s0, .L00434B4C
/* 00434B78 00000000 */   nop   
.L00434B7C:
/* 00434B7C 8F998020 */  lw    $t9, %got(func_0042D550)($gp)
/* 00434B80 02802025 */  move  $a0, $s4
/* 00434B84 2739D550 */  addiu $t9, %lo(func_0042D550) # addiu $t9, $t9, -0x2ab0
/* 00434B88 0320F809 */  jalr  $t9
/* 00434B8C 00000000 */   nop   
/* 00434B90 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434B94 8E850000 */  lw    $a1, ($s4)
/* 00434B98 8F998020 */  lw    $t9, %got(func_00433E6C)($gp)
/* 00434B9C 8FA400B8 */  lw    $a0, 0xb8($sp)
/* 00434BA0 27393E6C */  addiu $t9, %lo(func_00433E6C) # addiu $t9, $t9, 0x3e6c
/* 00434BA4 02403025 */  move  $a2, $s2
/* 00434BA8 0320F809 */  jalr  $t9
/* 00434BAC AFA50004 */   sw    $a1, 4($sp)
/* 00434BB0 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434BB4 8E850000 */  lw    $a1, ($s4)
/* 00434BB8 8F998388 */  lw    $t9, %call16(start_instruction)($gp)
/* 00434BBC 03C02025 */  move  $a0, $fp
/* 00434BC0 0320F809 */  jalr  $t9
/* 00434BC4 AFA50004 */   sw    $a1, 4($sp)
/* 00434BC8 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434BCC 24010006 */  li    $at, 6
/* 00434BD0 8F988AC0 */  lw     $t8, %got(fp_pipelining)($gp)
/* 00434BD4 00000000 */  nop   
/* 00434BD8 8F180000 */  lw    $t8, ($t8)
/* 00434BDC 00000000 */  nop   
/* 00434BE0 17010008 */  bne   $t8, $at, .L00434C04
/* 00434BE4 00000000 */   nop   
/* 00434BE8 8E850000 */  lw    $a1, ($s4)
/* 00434BEC 8F99837C */  lw    $t9, %call16(r6_start_instruction)($gp)
/* 00434BF0 03C02025 */  move  $a0, $fp
/* 00434BF4 0320F809 */  jalr  $t9
/* 00434BF8 AFA50004 */   sw    $a1, 4($sp)
/* 00434BFC 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434C00 00000000 */  nop   
.L00434C04:
/* 00434C04 968A0028 */  lhu   $t2, 0x28($s4)
/* 00434C08 8E900018 */  lw    $s0, 0x18($s4)
/* 00434C0C 015EB021 */  addu  $s6, $t2, $fp
/* 00434C10 12000021 */  beqz  $s0, .L00434C98
/* 00434C14 2419FFFF */   li    $t9, -1
.L00434C18:
/* 00434C18 8F998020 */  lw    $t9, %got(func_0042D5F0)($gp)
/* 00434C1C 02002025 */  move  $a0, $s0
/* 00434C20 2739D5F0 */  addiu $t9, %lo(func_0042D5F0) # addiu $t9, $t9, -0x2a10
/* 00434C24 0320F809 */  jalr  $t9
/* 00434C28 02802825 */   move  $a1, $s4
/* 00434C2C 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434C30 26110004 */  addiu $s1, $s0, 4
/* 00434C34 8E250000 */  lw    $a1, ($s1)
/* 00434C38 8F998388 */  lw    $t9, %call16(start_instruction)($gp)
/* 00434C3C 02C02025 */  move  $a0, $s6
/* 00434C40 0320F809 */  jalr  $t9
/* 00434C44 AFA50004 */   sw    $a1, 4($sp)
/* 00434C48 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434C4C 24010006 */  li    $at, 6
/* 00434C50 8F8D8AC0 */  lw     $t5, %got(fp_pipelining)($gp)
/* 00434C54 00000000 */  nop   
/* 00434C58 8DAD0000 */  lw    $t5, ($t5)
/* 00434C5C 00000000 */  nop   
/* 00434C60 15A10008 */  bne   $t5, $at, .L00434C84
/* 00434C64 00000000 */   nop   
/* 00434C68 8E250000 */  lw    $a1, ($s1)
/* 00434C6C 8F99837C */  lw    $t9, %call16(r6_start_instruction)($gp)
/* 00434C70 02C02025 */  move  $a0, $s6
/* 00434C74 0320F809 */  jalr  $t9
/* 00434C78 AFA50004 */   sw    $a1, 4($sp)
/* 00434C7C 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434C80 00000000 */  nop   
.L00434C84:
/* 00434C84 8E100000 */  lw    $s0, ($s0)
/* 00434C88 26D60001 */  addiu $s6, $s6, 1
/* 00434C8C 1600FFE2 */  bnez  $s0, .L00434C18
/* 00434C90 00000000 */   nop   
/* 00434C94 2419FFFF */  li    $t9, -1
.L00434C98:
/* 00434C98 8F838088 */  lw    $v1, %got(B_10025A1C)($gp)
/* 00434C9C AE990030 */  sw    $t9, 0x30($s4)
/* 00434CA0 8FB800B0 */  lw    $t8, 0xb0($sp)
/* 00434CA4 8C635A1C */  lw    $v1, %lo(B_10025A1C)($v1)
/* 00434CA8 2709FFFF */  addiu $t1, $t8, -1
/* 00434CAC AFB400A0 */  sw    $s4, 0xa0($sp)
/* 00434CB0 1460FCDA */  bnez  $v1, .L0043401C
/* 00434CB4 AFA900B0 */   sw    $t1, 0xb0($sp)
/* 00434CB8 AFBE0084 */  sw    $fp, 0x84($sp)
.L00434CBC:
/* 00434CBC 8F91808C */  lw    $s1, %got(B_1002DD74)($gp)
/* 00434CC0 8FB000A0 */  lw    $s0, 0xa0($sp)
/* 00434CC4 2631DD74 */  addiu $s1, %lo(B_1002DD74) # addiu $s1, $s1, -0x228c
/* 00434CC8 8E240000 */  lw    $a0, ($s1)
/* 00434CCC 00000000 */  nop   
/* 00434CD0 10800019 */  beqz  $a0, .L00434D38
/* 00434CD4 00000000 */   nop   
/* 00434CD8 9488002A */  lhu   $t0, 0x2a($a0)
/* 00434CDC 24010001 */  li    $at, 1
/* 00434CE0 1101000A */  beq   $t0, $at, .L00434D0C
/* 00434CE4 24060E84 */   li    $a2, 3716
/* 00434CE8 8F84806C */  lw    $a0, %got(RO_1001578C)($gp)
/* 00434CEC 8F85806C */  lw    $a1, %got(RO_100157A4)($gp)
/* 00434CF0 8F998670 */  lw    $t9, %call16(assertion_failed)($gp)
/* 00434CF4 2484578C */  addiu $a0, %lo(RO_1001578C) # addiu $a0, $a0, 0x578c
/* 00434CF8 0320F809 */  jalr  $t9
/* 00434CFC 24A557A4 */   addiu $a1, %lo(RO_100157A4) # addiu $a1, $a1, 0x57a4
/* 00434D00 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434D04 8E240000 */  lw    $a0, ($s1)
/* 00434D08 00000000 */  nop   
.L00434D0C:
/* 00434D0C 8F998020 */  lw    $t9, %got(func_0042D550)($gp)
/* 00434D10 00000000 */  nop   
/* 00434D14 2739D550 */  addiu $t9, %lo(func_0042D550) # addiu $t9, $t9, -0x2ab0
/* 00434D18 0320F809 */  jalr  $t9
/* 00434D1C 00000000 */   nop   
/* 00434D20 8FAB00B0 */  lw    $t3, 0xb0($sp)
/* 00434D24 8E300000 */  lw    $s0, ($s1)
/* 00434D28 256CFFFF */  addiu $t4, $t3, -1
/* 00434D2C 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434D30 AFAC00B0 */  sw    $t4, 0xb0($sp)
/* 00434D34 AFB000A0 */  sw    $s0, 0xa0($sp)
.L00434D38:
/* 00434D38 8F8D808C */  lw    $t5, %got(B_1002DD70)($gp)
/* 00434D3C 8FAE00AC */  lw    $t6, 0xac($sp)
/* 00434D40 8DADDD70 */  lw    $t5, %lo(B_1002DD70)($t5)
/* 00434D44 00000000 */  nop   
/* 00434D48 01AE082B */  sltu  $at, $t5, $t6
/* 00434D4C 10200037 */  beqz  $at, .L00434E2C
/* 00434D50 8FB900B0 */   lw    $t9, 0xb0($sp)
/* 00434D54 AFB000A0 */  sw    $s0, 0xa0($sp)
/* 00434D58 8FAF00B8 */  lw    $t7, 0xb8($sp)
.L00434D5C:
/* 00434D5C 8FB000A0 */  lw    $s0, 0xa0($sp)
/* 00434D60 8DF90044 */  lw    $t9, 0x44($t7)
/* 00434D64 00002825 */  move  $a1, $zero
/* 00434D68 00194C80 */  sll   $t1, $t9, 0x12
/* 00434D6C 0521001D */  bgez  $t1, .L00434DE4
/* 00434D70 02002025 */   move  $a0, $s0
/* 00434D74 8FA40098 */  lw    $a0, 0x98($sp)
/* 00434D78 8F998020 */  lw    $t9, %got(func_0042D478)($gp)
/* 00434D7C AFA40000 */  sw    $a0, ($sp)
/* 00434D80 8E0A0010 */  lw    $t2, 0x10($s0)
/* 00434D84 8E07000C */  lw    $a3, 0xc($s0)
/* 00434D88 240BFFFF */  li    $t3, -1
/* 00434D8C 2739D478 */  addiu $t9, %lo(func_0042D478) # addiu $t9, $t9, -0x2b88
/* 00434D90 AFAB0014 */  sw    $t3, 0x14($sp)
/* 00434D94 AFB000A0 */  sw    $s0, 0xa0($sp)
/* 00434D98 00003025 */  move  $a2, $zero
/* 00434D9C 0320F809 */  jalr  $t9
/* 00434DA0 AFAA0010 */   sw    $t2, 0x10($sp)
/* 00434DA4 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434DA8 8FAC00A0 */  lw    $t4, 0xa0($sp)
/* 00434DAC 8F998020 */  lw    $t9, %got(func_00433E6C)($gp)
/* 00434DB0 8D850000 */  lw    $a1, ($t4)
/* 00434DB4 8FA400B8 */  lw    $a0, 0xb8($sp)
/* 00434DB8 27393E6C */  addiu $t9, %lo(func_00433E6C) # addiu $t9, $t9, 0x3e6c
/* 00434DBC 24060001 */  li    $a2, 1
/* 00434DC0 0320F809 */  jalr  $t9
/* 00434DC4 AFA50004 */   sw    $a1, 4($sp)
/* 00434DC8 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434DCC 00000000 */  nop   
/* 00434DD0 8F82808C */  lw    $v0, %got(B_1002DD70)($gp)
/* 00434DD4 00000000 */  nop   
/* 00434DD8 8C42DD70 */  lw    $v0, %lo(B_1002DD70)($v0)
/* 00434DDC 1000000E */  b     .L00434E18
/* 00434DE0 8FAF00AC */   lw    $t7, 0xac($sp)
.L00434DE4:
/* 00434DE4 8F998020 */  lw    $t9, %got(func_00433D90)($gp)
/* 00434DE8 00002825 */  move  $a1, $zero
/* 00434DEC 27393D90 */  addiu $t9, %lo(func_00433D90) # addiu $t9, $t9, 0x3d90
/* 00434DF0 0320F809 */  jalr  $t9
/* 00434DF4 AFB000A0 */   sw    $s0, 0xa0($sp)
/* 00434DF8 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434DFC 00000000 */  nop   
/* 00434E00 8F82808C */  lw    $v0, %got(B_1002DD70)($gp)
/* 00434E04 00000000 */  nop   
/* 00434E08 8C42DD70 */  lw    $v0, %lo(B_1002DD70)($v0)
/* 00434E0C 00000000 */  nop   
/* 00434E10 AFA200AC */  sw    $v0, 0xac($sp)
/* 00434E14 8FAF00AC */  lw    $t7, 0xac($sp)
.L00434E18:
/* 00434E18 26D60001 */  addiu $s6, $s6, 1
/* 00434E1C 004F082B */  sltu  $at, $v0, $t7
/* 00434E20 1420FFCE */  bnez  $at, .L00434D5C
/* 00434E24 8FAF00B8 */   lw    $t7, 0xb8($sp)
/* 00434E28 8FB900B0 */  lw    $t9, 0xb0($sp)
.L00434E2C:
/* 00434E2C 24060EA5 */  li    $a2, 3749
/* 00434E30 13200009 */  beqz  $t9, .L00434E58
/* 00434E34 00000000 */   nop   
/* 00434E38 8F84806C */  lw    $a0, %got(RO_100157B4)($gp)
/* 00434E3C 8F85806C */  lw    $a1, %got(RO_100157C0)($gp)
/* 00434E40 8F998670 */  lw    $t9, %call16(assertion_failed)($gp)
/* 00434E44 248457B4 */  addiu $a0, %lo(RO_100157B4) # addiu $a0, $a0, 0x57b4
/* 00434E48 0320F809 */  jalr  $t9
/* 00434E4C 24A557C0 */   addiu $a1, %lo(RO_100157C0) # addiu $a1, $a1, 0x57c0
/* 00434E50 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434E54 00000000 */  nop   
.L00434E58:
/* 00434E58 8F988088 */  lw    $t8, %got(B_10025A1C)($gp)
/* 00434E5C 24060EA6 */  li    $a2, 3750
/* 00434E60 8F185A1C */  lw    $t8, %lo(B_10025A1C)($t8)
/* 00434E64 00000000 */  nop   
/* 00434E68 1300000A */  beqz  $t8, .L00434E94
/* 00434E6C 8FA900B4 */   lw    $t1, 0xb4($sp)
/* 00434E70 8F84806C */  lw    $a0, %got(RO_100157D0)($gp)
/* 00434E74 8F85806C */  lw    $a1, %got(RO_100157E4)($gp)
/* 00434E78 8F998670 */  lw    $t9, %call16(assertion_failed)($gp)
/* 00434E7C 248457D0 */  addiu $a0, %lo(RO_100157D0) # addiu $a0, $a0, 0x57d0
/* 00434E80 0320F809 */  jalr  $t9
/* 00434E84 24A557E4 */   addiu $a1, %lo(RO_100157E4) # addiu $a1, $a1, 0x57e4
/* 00434E88 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00434E8C 00000000 */  nop   
/* 00434E90 8FA900B4 */  lw    $t1, 0xb4($sp)
.L00434E94:
/* 00434E94 8F82808C */  lw    $v0, %got(B_1002DD70)($gp)
/* 00434E98 AD360000 */  sw    $s6, ($t1)
/* 00434E9C 8C42DD70 */  lw    $v0, %lo(B_1002DD70)($v0)
/* 00434EA0 00000000 */  nop   
/* 00434EA4 00024082 */  srl   $t0, $v0, 2
/* 00434EA8 01001025 */  move  $v0, $t0
.L00434EAC:
/* 00434EAC 8FBF0044 */  lw    $ra, 0x44($sp)
/* 00434EB0 8FB0001C */  lw    $s0, 0x1c($sp)
/* 00434EB4 8FB10020 */  lw    $s1, 0x20($sp)
/* 00434EB8 8FB20024 */  lw    $s2, 0x24($sp)
/* 00434EBC 8FB30028 */  lw    $s3, 0x28($sp)
/* 00434EC0 8FB4002C */  lw    $s4, 0x2c($sp)
/* 00434EC4 8FB50030 */  lw    $s5, 0x30($sp)
/* 00434EC8 8FB60034 */  lw    $s6, 0x34($sp)
/* 00434ECC 8FB70038 */  lw    $s7, 0x38($sp)
/* 00434ED0 8FBE0040 */  lw    $fp, 0x40($sp)
/* 00434ED4 03E00008 */  jr    $ra
/* 00434ED8 27BD00B0 */   addiu $sp, $sp, 0xb0

glabel reorganize_bb
    .ent reorganize_bb
    # 00427890 reschedule
    # 004279B8 schedule
/* 00434EDC 3C1C0FBF */  .cpload $t9
/* 00434EE0 279C5384 */  
/* 00434EE4 0399E021 */  
/* 00434EE8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 00434EEC AFBF001C */  sw    $ra, 0x1c($sp)
/* 00434EF0 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00434EF4 AFB00014 */  sw    $s0, 0x14($sp)
/* 00434EF8 908E0046 */  lbu   $t6, 0x46($a0)
/* 00434EFC 8C980058 */  lw    $t8, 0x58($a0)
/* 00434F00 8F818AC4 */  lw     $at, %got(cur_alias_table)($gp)
/* 00434F04 31CFFFFB */  andi  $t7, $t6, 0xfffb
/* 00434F08 A480004A */  sh    $zero, 0x4a($a0)
/* 00434F0C A480004C */  sh    $zero, 0x4c($a0)
/* 00434F10 A08F0046 */  sb    $t7, 0x46($a0)
/* 00434F14 AC380000 */  sw    $t8, ($at)
/* 00434F18 84990044 */  lh    $t9, 0x44($a0)
/* 00434F1C 8F818AA0 */  lw     $at, %got(current_loop)($gp)
/* 00434F20 000559C0 */  sll   $t3, $a1, 7
/* 00434F24 AC390000 */  sw    $t9, ($at)
/* 00434F28 8C88000C */  lw    $t0, 0xc($a0)
/* 00434F2C 8F818B40 */  lw     $at, %got(pinstruction)($gp)
/* 00434F30 8F998020 */  lw    $t9, %got(func_004324B8)($gp)
/* 00434F34 AC280000 */  sw    $t0, ($at)
/* 00434F38 8F818088 */  lw    $at, %got(B_10023634)($gp)
/* 00434F3C 273924B8 */  addiu $t9, %lo(func_004324B8) # addiu $t9, $t9, 0x24b8
/* 00434F40 AC253634 */  sw    $a1, %lo(B_10023634)($at)
/* 00434F44 908C0047 */  lbu   $t4, 0x47($a0)
/* 00434F48 00808025 */  move  $s0, $a0
/* 00434F4C 318DFF7F */  andi  $t5, $t4, 0xff7f
/* 00434F50 016D7025 */  or    $t6, $t3, $t5
/* 00434F54 0320F809 */  jalr  $t9
/* 00434F58 A08E0047 */   sb    $t6, 0x47($a0)
/* 00434F5C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00434F60 8E050044 */  lw    $a1, 0x44($s0)
/* 00434F64 8F998020 */  lw    $t9, %got(func_004318D4)($gp)
/* 00434F68 00057C80 */  sll   $t7, $a1, 0x12
/* 00434F6C 000FC7C2 */  srl   $t8, $t7, 0x1f
/* 00434F70 9604003C */  lhu   $a0, 0x3c($s0)
/* 00434F74 273918D4 */  addiu $t9, %lo(func_004318D4) # addiu $t9, $t9, 0x18d4
/* 00434F78 0320F809 */  jalr  $t9
/* 00434F7C 2F050001 */   sltiu $a1, $t8, 1
/* 00434F80 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00434F84 AFA20034 */  sw    $v0, 0x34($sp)
/* 00434F88 8F888B00 */  lw     $t0, %got(tracereorder)($gp)
/* 00434F8C 00000000 */  nop   
/* 00434F90 91080000 */  lbu   $t0, ($t0)
/* 00434F94 00000000 */  nop   
/* 00434F98 11000008 */  beqz  $t0, .L00434FBC
/* 00434F9C 00000000 */   nop   
/* 00434FA0 8F998020 */  lw    $t9, %got(func_004320E8)($gp)
/* 00434FA4 00402025 */  move  $a0, $v0
/* 00434FA8 273920E8 */  addiu $t9, %lo(func_004320E8) # addiu $t9, $t9, 0x20e8
/* 00434FAC 0320F809 */  jalr  $t9
/* 00434FB0 00000000 */   nop   
/* 00434FB4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00434FB8 00000000 */  nop   
.L00434FBC:
/* 00434FBC 8F828088 */  lw    $v0, %got(B_10023634)($gp)
/* 00434FC0 00000000 */  nop   
/* 00434FC4 8C423634 */  lw    $v0, %lo(B_10023634)($v0)
/* 00434FC8 00000000 */  nop   
/* 00434FCC 1040000C */  beqz  $v0, .L00435000
/* 00434FD0 00000000 */   nop   
/* 00434FD4 8F998304 */  lw    $t9, %call16(update_live_ranges)($gp)
/* 00434FD8 00000000 */  nop   
/* 00434FDC 0320F809 */  jalr  $t9
/* 00434FE0 00000000 */   nop   
/* 00434FE4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00434FE8 10400036 */  beqz  $v0, .L004350C4
/* 00434FEC 3C0A7FFF */   lui   $t2, 0x7fff
/* 00434FF0 8F828088 */  lw    $v0, %got(B_10023634)($gp)
/* 00434FF4 00000000 */  nop   
/* 00434FF8 8C423634 */  lw    $v0, %lo(B_10023634)($v0)
/* 00434FFC 00000000 */  nop   
.L00435000:
/* 00435000 10400007 */  beqz  $v0, .L00435020
/* 00435004 00000000 */   nop   
/* 00435008 8F998320 */  lw    $t9, %call16(update_dag)($gp)
/* 0043500C 8FA50034 */  lw    $a1, 0x34($sp)
/* 00435010 0320F809 */  jalr  $t9
/* 00435014 02002025 */   move  $a0, $s0
/* 00435018 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043501C 00000000 */  nop   
.L00435020:
/* 00435020 8F998020 */  lw    $t9, %got(func_00433ED0)($gp)
/* 00435024 8FA40034 */  lw    $a0, 0x34($sp)
/* 00435028 27393ED0 */  addiu $t9, %lo(func_00433ED0) # addiu $t9, $t9, 0x3ed0
/* 0043502C 27A50030 */  addiu $a1, $sp, 0x30
/* 00435030 0320F809 */  jalr  $t9
/* 00435034 02003025 */   move  $a2, $s0
/* 00435038 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043503C 00401825 */  move  $v1, $v0
/* 00435040 1040001D */  beqz  $v0, .L004350B8
/* 00435044 A602004E */   sh    $v0, 0x4e($s0)
/* 00435048 8E040050 */  lw    $a0, 0x50($s0)
/* 0043504C 00000000 */  nop   
/* 00435050 10800009 */  beqz  $a0, .L00435078
/* 00435054 00033080 */   sll   $a2, $v1, 2
/* 00435058 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 0043505C AFA20028 */  sw    $v0, 0x28($sp)
/* 00435060 0320F809 */  jalr  $t9
/* 00435064 00000000 */   nop   
/* 00435068 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043506C 8FA30028 */  lw    $v1, 0x28($sp)
/* 00435070 00000000 */  nop   
/* 00435074 00033080 */  sll   $a2, $v1, 2
.L00435078:
/* 00435078 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0043507C 00C33023 */  subu  $a2, $a2, $v1
/* 00435080 000630C0 */  sll   $a2, $a2, 3
/* 00435084 00C02025 */  move  $a0, $a2
/* 00435088 0320F809 */  jalr  $t9
/* 0043508C AFA60024 */   sw    $a2, 0x24($sp)
/* 00435090 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00435094 8FA60024 */  lw    $a2, 0x24($sp)
/* 00435098 AE020050 */  sw    $v0, 0x50($s0)
/* 0043509C 8F9980DC */  lw    $t9, %call16(memcpy)($gp)
/* 004350A0 8F85808C */  lw    $a1, %got(B_1002A530)($gp)
/* 004350A4 00402025 */  move  $a0, $v0
/* 004350A8 0320F809 */  jalr  $t9
/* 004350AC 24A5A530 */   addiu $a1, %lo(B_1002A530) # addiu $a1, $a1, -0x5ad0
/* 004350B0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004350B4 AE020050 */  sw    $v0, 0x50($s0)
.L004350B8:
/* 004350B8 8FA90030 */  lw    $t1, 0x30($sp)
/* 004350BC 10000003 */  b     .L004350CC
/* 004350C0 A609004A */   sh    $t1, 0x4a($s0)
.L004350C4:
/* 004350C4 354AFFFF */  ori   $t2, $t2, 0xffff
/* 004350C8 AFAA0030 */  sw    $t2, 0x30($sp)
.L004350CC:
/* 004350CC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 004350D0 8FA20030 */  lw    $v0, 0x30($sp)
/* 004350D4 8FB00014 */  lw    $s0, 0x14($sp)
/* 004350D8 03E00008 */  jr    $ra
/* 004350DC 27BD0038 */   addiu $sp, $sp, 0x38

/* 004350E0 00000000 */  nop   
/* 004350E4 00000000 */  nop   
    .type reorganize_bb, @function
    .size reorganize_bb, .-reorganize_bb
    .end reorganize_bb
)"");
