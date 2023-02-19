__asm__(R""(
.macro glabel label
    .global \label
    .balign 4
    \label:
.endm




.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.text
    .type func_004421F0, @function
func_004421F0:
    # 004423F4 func_004423F4
/* 004421F0 3C1C0FBF */  .cpload $t9
/* 004421F4 279C8070 */  
/* 004421F8 0399E021 */  
/* 004421FC 8F8F8B44 */  lw     $t7, %got(template)($gp)
/* 00442200 8F998D18 */  lw     $t9, %got(opcodeformat)($gp)
/* 00442204 00047080 */  sll   $t6, $a0, 2
/* 00442208 AFA40000 */  sw    $a0, ($sp)
/* 0044220C AFA60008 */  sw    $a2, 8($sp)
/* 00442210 01CFC021 */  addu  $t8, $t6, $t7
/* 00442214 AF050000 */  sw    $a1, ($t8)
/* 00442218 00994021 */  addu  $t0, $a0, $t9
/* 0044221C 03E00008 */  jr    $ra
/* 00442220 A1060000 */   sb    $a2, ($t0)

    .type func_00442224, @function
func_00442224:
    # 004423F4 func_004423F4
/* 00442224 3C1C0FBF */  .cpload $t9
/* 00442228 279C803C */  
/* 0044222C 0399E021 */  
/* 00442230 8F8F8D1C */  lw     $t7, %got(asm2op)($gp)
/* 00442234 8F998D20 */  lw     $t9, %got(asm2asmformat)($gp)
/* 00442238 00047040 */  sll   $t6, $a0, 1
/* 0044223C AFA40000 */  sw    $a0, ($sp)
/* 00442240 AFA50004 */  sw    $a1, 4($sp)
/* 00442244 AFA60008 */  sw    $a2, 8($sp)
/* 00442248 01CFC021 */  addu  $t8, $t6, $t7
/* 0044224C A7060000 */  sh    $a2, ($t8)
/* 00442250 00994021 */  addu  $t0, $a0, $t9
/* 00442254 03E00008 */  jr    $ra
/* 00442258 A1050000 */   sb    $a1, ($t0)

    .type func_0044225C, @function
func_0044225C:
    # 004423F4 func_004423F4
/* 0044225C 3C1C0FBF */  .cpload $t9
/* 00442260 279C8004 */  
/* 00442264 0399E021 */  
/* 00442268 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0044226C AFB2001C */  sw    $s2, 0x1c($sp)
/* 00442270 AFB10018 */  sw    $s1, 0x18($sp)
/* 00442274 AFB40024 */  sw    $s4, 0x24($sp)
/* 00442278 AFB30020 */  sw    $s3, 0x20($sp)
/* 0044227C AFB00014 */  sw    $s0, 0x14($sp)
/* 00442280 8F918D88 */  lw     $s1, %got(gp_tables)($gp)
/* 00442284 8F928B10 */  lw     $s2, %got(gprelsize)($gp)
/* 00442288 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0044228C AFBC0028 */  sw    $gp, 0x28($sp)
/* 00442290 24140001 */  li    $s4, 1
/* 00442294 00008025 */  move  $s0, $zero
/* 00442298 24130010 */  li    $s3, 16
.L0044229C:
/* 0044229C 2E0E0020 */  sltiu $t6, $s0, 0x20
/* 004422A0 000E7823 */  negu  $t7, $t6
/* 004422A4 3C015000 */  lui   $at, 0x5000
/* 004422A8 01E1C024 */  and   $t8, $t7, $at
/* 004422AC 0218C804 */  sllv  $t9, $t8, $s0
/* 004422B0 0721000A */  bgez  $t9, .L004422DC
/* 004422B4 00000000 */   nop   
/* 004422B8 8F9987F8 */  lw    $t9, %call16(init_gp_table)($gp)
/* 004422BC 8E440000 */  lw    $a0, ($s2)
/* 004422C0 0320F809 */  jalr  $t9
/* 004422C4 00000000 */   nop   
/* 004422C8 8FBC0028 */  lw    $gp, 0x28($sp)
/* 004422CC 14400004 */  bnez  $v0, .L004422E0
/* 004422D0 AE220000 */   sw    $v0, ($s1)
/* 004422D4 10000002 */  b     .L004422E0
/* 004422D8 0000A025 */   move  $s4, $zero
.L004422DC:
/* 004422DC AE200000 */  sw    $zero, ($s1)
.L004422E0:
/* 004422E0 26100001 */  addiu $s0, $s0, 1
/* 004422E4 1613FFED */  bne   $s0, $s3, .L0044229C
/* 004422E8 26310004 */   addiu $s1, $s1, 4
/* 004422EC 8F828D8C */  lw     $v0, %got(prev_sdata)($gp)
/* 004422F0 24030001 */  li    $v1, 1
/* 004422F4 24440028 */  addiu $a0, $v0, 0x28
.L004422F8:
/* 004422F8 24420014 */  addiu $v0, $v0, 0x14
/* 004422FC AC40FFEC */  sw    $zero, -0x14($v0)
/* 00442300 AC40FFF8 */  sw    $zero, -8($v0)
/* 00442304 A040FFF0 */  sb    $zero, -0x10($v0)
/* 00442308 AC43FFF4 */  sw    $v1, -0xc($v0)
/* 0044230C 1444FFFA */  bne   $v0, $a0, .L004422F8
/* 00442310 AC43FFFC */   sw    $v1, -4($v0)
/* 00442314 8FBF002C */  lw    $ra, 0x2c($sp)
/* 00442318 02801025 */  move  $v0, $s4
/* 0044231C 8FB40024 */  lw    $s4, 0x24($sp)
/* 00442320 8FB00014 */  lw    $s0, 0x14($sp)
/* 00442324 8FB10018 */  lw    $s1, 0x18($sp)
/* 00442328 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0044232C 8FB30020 */  lw    $s3, 0x20($sp)
/* 00442330 03E00008 */  jr    $ra
/* 00442334 27BD0030 */   addiu $sp, $sp, 0x30

    .type func_00442338, @function
func_00442338:
    # 004423F4 func_004423F4
/* 00442338 3C1C0FBE */  .cpload $t9
/* 0044233C 279C7F28 */  
/* 00442340 0399E021 */  
/* 00442344 8F8E8B04 */  lw     $t6, %got(isa)($gp)
/* 00442348 AFA40000 */  sw    $a0, ($sp)
/* 0044234C 91CE0000 */  lbu   $t6, ($t6)
/* 00442350 00001825 */  move  $v1, $zero
/* 00442354 2DC10002 */  sltiu $at, $t6, 2
/* 00442358 14200003 */  bnez  $at, .L00442368
/* 0044235C 00000000 */   nop   
/* 00442360 03E00008 */  jr    $ra
/* 00442364 3082FFFF */   andi  $v0, $a0, 0xffff

.L00442368:
/* 00442368 03E00008 */  jr    $ra
/* 0044236C 00601025 */   move  $v0, $v1

    .type func_00442370, @function
func_00442370:
    # 004423F4 func_004423F4
/* 00442370 3C1C0FBE */  .cpload $t9
/* 00442374 279C7EF0 */  
/* 00442378 0399E021 */  
/* 0044237C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00442380 8F998690 */  lw    $t9, %call16(new)($gp)
/* 00442384 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00442388 AFA40020 */  sw    $a0, 0x20($sp)
/* 0044238C AFA50024 */  sw    $a1, 0x24($sp)
/* 00442390 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00442394 24050001 */  li    $a1, 1
/* 00442398 0320F809 */  jalr  $t9
/* 0044239C 24040064 */   li    $a0, 100
/* 004423A0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004423A4 8FAE0020 */  lw    $t6, 0x20($sp)
/* 004423A8 00402025 */  move  $a0, $v0
/* 004423AC ADC20000 */  sw    $v0, ($t6)
/* 004423B0 8F998180 */  lw    $t9, %call16(memset)($gp)
/* 004423B4 00002825 */  move  $a1, $zero
/* 004423B8 0320F809 */  jalr  $t9
/* 004423BC 24060064 */   li    $a2, 100
/* 004423C0 8FA30020 */  lw    $v1, 0x20($sp)
/* 004423C4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004423C8 AC620000 */  sw    $v0, ($v1)
/* 004423CC 93AF0027 */  lbu   $t7, 0x27($sp)
/* 004423D0 24180001 */  li    $t8, 1
/* 004423D4 AC4F0030 */  sw    $t7, 0x30($v0)
/* 004423D8 8C790000 */  lw    $t9, ($v1)
/* 004423DC 00000000 */  nop   
/* 004423E0 A3380037 */  sb    $t8, 0x37($t9)
/* 004423E4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 004423E8 27BD0020 */  addiu $sp, $sp, 0x20
/* 004423EC 03E00008 */  jr    $ra
/* 004423F0 00000000 */   nop   

    .type func_004423F4, @function
func_004423F4:
    # 0044AF18 main
/* 004423F4 3C1C0FBE */  .cpload $t9
/* 004423F8 279C7E6C */  
/* 004423FC 0399E021 */  
/* 00442400 27BDFF30 */  addiu $sp, $sp, -0xd0
/* 00442404 8F998690 */  lw    $t9, %call16(new)($gp)
/* 00442408 AFBF007C */  sw    $ra, 0x7c($sp)
/* 0044240C AFBC0078 */  sw    $gp, 0x78($sp)
/* 00442410 AFB50074 */  sw    $s5, 0x74($sp)
/* 00442414 AFB40070 */  sw    $s4, 0x70($sp)
/* 00442418 AFB3006C */  sw    $s3, 0x6c($sp)
/* 0044241C AFB20068 */  sw    $s2, 0x68($sp)
/* 00442420 AFB10064 */  sw    $s1, 0x64($sp)
/* 00442424 AFB00060 */  sw    $s0, 0x60($sp)
/* 00442428 AFA200CC */  sw    $v0, 0xcc($sp)
/* 0044242C 24040004 */  li    $a0, 4
/* 00442430 0320F809 */  jalr  $t9
/* 00442434 00002825 */   move  $a1, $zero
/* 00442438 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044243C 24040400 */  li    $a0, 1024
/* 00442440 8F838C68 */  lw     $v1, %got(emptystring)($gp)
/* 00442444 00002825 */  move  $a1, $zero
/* 00442448 AC620000 */  sw    $v0, ($v1)
/* 0044244C A0400000 */  sb    $zero, ($v0)
/* 00442450 8F998690 */  lw    $t9, %call16(new)($gp)
/* 00442454 00000000 */  nop   
/* 00442458 0320F809 */  jalr  $t9
/* 0044245C 00000000 */   nop   
/* 00442460 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442464 8FA300CC */  lw    $v1, 0xcc($sp)
/* 00442468 24040400 */  li    $a0, 1024
/* 0044246C AC62FFF4 */  sw    $v0, -0xc($v1)
/* 00442470 A0400000 */  sb    $zero, ($v0)
/* 00442474 8F998690 */  lw    $t9, %call16(new)($gp)
/* 00442478 00002825 */  move  $a1, $zero
/* 0044247C 0320F809 */  jalr  $t9
/* 00442480 00000000 */   nop   
/* 00442484 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442488 8FA300CC */  lw    $v1, 0xcc($sp)
/* 0044248C 24040400 */  li    $a0, 1024
/* 00442490 AC62FFF8 */  sw    $v0, -8($v1)
/* 00442494 A0400000 */  sb    $zero, ($v0)
/* 00442498 8F998690 */  lw    $t9, %call16(new)($gp)
/* 0044249C 00002825 */  move  $a1, $zero
/* 004424A0 0320F809 */  jalr  $t9
/* 004424A4 00000000 */   nop   
/* 004424A8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004424AC 24040400 */  li    $a0, 1024
/* 004424B0 8F838D60 */  lw     $v1, %got(outname)($gp)
/* 004424B4 8F988070 */  lw    $t8, %got(RO_10018E25)($gp)
/* 004424B8 AC620000 */  sw    $v0, ($v1)
/* 004424BC 27188E25 */  addiu $t8, %lo(RO_10018E25) # addiu $t8, $t8, -0x71db
/* 004424C0 8B010000 */  lwl   $at, ($t8)
/* 004424C4 9B010003 */  lwr   $at, 3($t8)
/* 004424C8 00002825 */  move  $a1, $zero
/* 004424CC A8410000 */  swl   $at, ($v0)
/* 004424D0 B8410003 */  swr   $at, 3($v0)
/* 004424D4 8B0A0004 */  lwl   $t2, 4($t8)
/* 004424D8 9B0A0007 */  lwr   $t2, 7($t8)
/* 004424DC 00000000 */  nop   
/* 004424E0 A84A0004 */  swl   $t2, 4($v0)
/* 004424E4 B84A0007 */  swr   $t2, 7($v0)
/* 004424E8 8B010008 */  lwl   $at, 8($t8)
/* 004424EC 9B01000B */  lwr   $at, 0xb($t8)
/* 004424F0 00000000 */  nop   
/* 004424F4 A8410008 */  swl   $at, 8($v0)
/* 004424F8 B841000B */  swr   $at, 0xb($v0)
/* 004424FC 8B0A000C */  lwl   $t2, 0xc($t8)
/* 00442500 9B0A000F */  lwr   $t2, 0xf($t8)
/* 00442504 00000000 */  nop   
/* 00442508 A84A000C */  swl   $t2, 0xc($v0)
/* 0044250C B84A000F */  swr   $t2, 0xf($v0)
/* 00442510 8B010010 */  lwl   $at, 0x10($t8)
/* 00442514 9B010013 */  lwr   $at, 0x13($t8)
/* 00442518 00000000 */  nop   
/* 0044251C A8410010 */  swl   $at, 0x10($v0)
/* 00442520 B8410013 */  swr   $at, 0x13($v0)
/* 00442524 8B0A0014 */  lwl   $t2, 0x14($t8)
/* 00442528 9B0A0017 */  lwr   $t2, 0x17($t8)
/* 0044252C 00000000 */  nop   
/* 00442530 A84A0014 */  swl   $t2, 0x14($v0)
/* 00442534 B84A0017 */  swr   $t2, 0x17($v0)
/* 00442538 8B010018 */  lwl   $at, 0x18($t8)
/* 0044253C 9B01001B */  lwr   $at, 0x1b($t8)
/* 00442540 00000000 */  nop   
/* 00442544 A8410018 */  swl   $at, 0x18($v0)
/* 00442548 B841001B */  swr   $at, 0x1b($v0)
/* 0044254C 8B0A001C */  lwl   $t2, 0x1c($t8)
/* 00442550 9B0A001F */  lwr   $t2, 0x1f($t8)
/* 00442554 00000000 */  nop   
/* 00442558 A84A001C */  swl   $t2, 0x1c($v0)
/* 0044255C B84A001F */  swr   $t2, 0x1f($v0)
/* 00442560 8F998690 */  lw    $t9, %call16(new)($gp)
/* 00442564 00000000 */  nop   
/* 00442568 0320F809 */  jalr  $t9
/* 0044256C 00000000 */   nop   
/* 00442570 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442574 8FA600CC */  lw    $a2, 0xcc($sp)
/* 00442578 8F818C74 */  lw     $at, %got(nopinserted)($gp)
/* 0044257C ACC2FFF0 */  sw    $v0, -0x10($a2)
/* 00442580 A0400000 */  sb    $zero, ($v0)
/* 00442584 AC200000 */  sw    $zero, ($at)
/* 00442588 8F818C78 */  lw     $at, %got(nopsremaining)($gp)
/* 0044258C 24100001 */  li    $s0, 1
/* 00442590 AC200000 */  sw    $zero, ($at)
/* 00442594 8F818C8C */  lw     $at, %got(endofbasicb)($gp)
/* 00442598 8F858B94 */  lw     $a1, %got(opts)($gp)
/* 0044259C A0200000 */  sb    $zero, ($at)
/* 004425A0 8F818B8C */  lw     $at, %got(reorderflag)($gp)
/* 004425A4 8F848B94 */  lw     $a0, %got(opts)($gp)
/* 004425A8 A0300000 */  sb    $s0, ($at)
/* 004425AC 8F818B90 */  lw     $at, %got(transform_flag)($gp)
/* 004425B0 240BFFFF */  li    $t3, -1
/* 004425B4 A0300000 */  sb    $s0, ($at)
/* 004425B8 8F818C88 */  lw     $at, %got(macroflag)($gp)
/* 004425BC 24A50008 */  addiu $a1, $a1, 8
/* 004425C0 A0300000 */  sb    $s0, ($at)
/* 004425C4 8F818BB4 */  lw     $at, %got(atflag)($gp)
/* 004425C8 24820005 */  addiu $v0, $a0, 5
/* 004425CC A0300000 */  sb    $s0, ($at)
/* 004425D0 8F818C10 */  lw     $at, %got(volatileflag)($gp)
/* 004425D4 00000000 */  nop   
/* 004425D8 A0200000 */  sb    $zero, ($at)
/* 004425DC 8F818C14 */  lw     $at, %got(movableflag)($gp)
/* 004425E0 00000000 */  nop   
/* 004425E4 A0300000 */  sb    $s0, ($at)
/* 004425E8 8F818B0C */  lw     $at, %got(keepflag)($gp)
/* 004425EC 00000000 */  nop   
/* 004425F0 A0200000 */  sb    $zero, ($at)
/* 004425F4 8F818BD0 */  lw     $at, %got(deferred_line_no)($gp)
/* 004425F8 00000000 */  nop   
/* 004425FC AC2B0000 */  sw    $t3, ($at)
.L00442600:
/* 00442600 24840001 */  addiu $a0, $a0, 1
/* 00442604 ACA00000 */  sw    $zero, ($a1)
/* 00442608 A090FFFF */  sb    $s0, -1($a0)
/* 0044260C 1482FFFC */  bne   $a0, $v0, .L00442600
/* 00442610 24A50004 */   addiu $a1, $a1, 4
/* 00442614 8F948B94 */  lw     $s4, %got(opts)($gp)
/* 00442618 8F818CB8 */  lw     $at, %got(has_noreorder)($gp)
/* 0044261C 240C0003 */  li    $t4, 3
/* 00442620 A28C001C */  sb    $t4, 0x1c($s4)
/* 00442624 A280001D */  sb    $zero, 0x1d($s4)
/* 00442628 A280001E */  sb    $zero, 0x1e($s4)
/* 0044262C A0200000 */  sb    $zero, ($at)
/* 00442630 8F818BD4 */  lw     $at, %got(dwalign)($gp)
/* 00442634 8F828B5C */  lw     $v0, %got(last_bb)($gp)
/* 00442638 A0200000 */  sb    $zero, ($at)
/* 0044263C 8F818C04 */  lw     $at, %got(ent_pending)($gp)
/* 00442640 24040064 */  li    $a0, 100
/* 00442644 A0200000 */  sb    $zero, ($at)
/* 00442648 8F818C38 */  lw     $at, %got(unsafe_opt)($gp)
/* 0044264C A0400000 */  sb    $zero, ($v0)
/* 00442650 A0400001 */  sb    $zero, 1($v0)
/* 00442654 A0400002 */  sb    $zero, 2($v0)
/* 00442658 A0200000 */  sb    $zero, ($at)
/* 0044265C 8F818B38 */  lw     $at, %got(xbb_opt)($gp)
/* 00442660 8F998690 */  lw    $t9, %call16(new)($gp)
/* 00442664 A0300000 */  sb    $s0, ($at)
/* 00442668 8F818BEC */  lw     $at, %got(peep_opt)($gp)
/* 0044266C 02002825 */  move  $a1, $s0
/* 00442670 A0300000 */  sb    $s0, ($at)
/* 00442674 8F818C34 */  lw     $at, %got(swpipe_opt)($gp)
/* 00442678 00000000 */  nop   
/* 0044267C A0300000 */  sb    $s0, ($at)
/* 00442680 8F818BF4 */  lw     $at, %got(branch_opt)($gp)
/* 00442684 00000000 */  nop   
/* 00442688 A0300000 */  sb    $s0, ($at)
/* 0044268C 8F818C30 */  lw     $at, %got(symregs_opt)($gp)
/* 00442690 00000000 */  nop   
/* 00442694 A0300000 */  sb    $s0, ($at)
/* 00442698 8F818BC4 */  lw     $at, %got(global_opt)($gp)
/* 0044269C 00000000 */  nop   
/* 004426A0 A0300000 */  sb    $s0, ($at)
/* 004426A4 8F818CA4 */  lw     $at, %got(initial_loc)($gp)
/* 004426A8 00000000 */  nop   
/* 004426AC A0300000 */  sb    $s0, ($at)
/* 004426B0 8F818BE8 */  lw     $at, %got(currsegment)($gp)
/* 004426B4 00000000 */  nop   
/* 004426B8 A0200000 */  sb    $zero, ($at)
/* 004426BC 8F818B74 */  lw     $at, %got(is_nonleaf)($gp)
/* 004426C0 00000000 */  nop   
/* 004426C4 A0200000 */  sb    $zero, ($at)
/* 004426C8 8F818B70 */  lw     $at, %got(currfunc_hasedata)($gp)
/* 004426CC 0320F809 */  jalr  $t9
/* 004426D0 A0200000 */   sb    $zero, ($at)
/* 004426D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004426D8 3C0DE641 */  lui   $t5, 0xe641
/* 004426DC 8F878DA0 */  lw     $a3, %got(currfunc_sym)($gp)
/* 004426E0 8F818D84 */  lw     $at, %got(realsegments)($gp)
/* 004426E4 ACE20000 */  sw    $v0, ($a3)
/* 004426E8 A0500037 */  sb    $s0, 0x37($v0)
/* 004426EC A0400035 */  sb    $zero, 0x35($v0)
/* 004426F0 AC400030 */  sw    $zero, 0x30($v0)
/* 004426F4 AC2D0000 */  sw    $t5, ($at)
/* 004426F8 8F818BB8 */  lw     $at, %got(currentline)($gp)
/* 004426FC 2408FFFF */  li    $t0, -1
/* 00442700 AC200000 */  sw    $zero, ($at)
/* 00442704 8F818B98 */  lw     $at, %got(currentent)($gp)
/* 00442708 24060001 */  li    $a2, 1
/* 0044270C AC200000 */  sw    $zero, ($at)
/* 00442710 8F818B9C */  lw     $at, %got(currentent_name)($gp)
/* 00442714 240E0004 */  li    $t6, 4
/* 00442718 AC200000 */  sw    $zero, ($at)
/* 0044271C 8F818BBC */  lw     $at, %got(currentfile)($gp)
/* 00442720 AFA600B0 */  sw    $a2, 0xb0($sp)
/* 00442724 AC280000 */  sw    $t0, ($at)
/* 00442728 8F818CE8 */  lw     $at, %got(savelastloc)($gp)
/* 0044272C 97AF00B0 */  lhu   $t7, 0xb0($sp)
/* 00442730 A0200000 */  sb    $zero, ($at)
/* 00442734 8F818D0C */  lw     $at, %got(lastsym)($gp)
/* 00442738 24190008 */  li    $t9, 8
/* 0044273C AC200000 */  sw    $zero, ($at)
/* 00442740 8F818B58 */  lw     $at, %got(aligning)($gp)
/* 00442744 8F898C3C */  lw     $t1, %got(isbigendianhost)($gp)
/* 00442748 A0300000 */  sb    $s0, ($at)
/* 0044274C 8F818CE0 */  lw     $at, %got(lastic)($gp)
/* 00442750 2DF80001 */  sltiu $t8, $t7, 1
/* 00442754 AC200000 */  sw    $zero, ($at)
/* 00442758 8F818CE4 */  lw     $at, %got(lastsegment)($gp)
/* 0044275C 27B200D0 */  addiu $s2, $sp, 0xd0
/* 00442760 A0200000 */  sb    $zero, ($at)
/* 00442764 8F818D70 */  lw     $at, %got(lastrld)($gp)
/* 00442768 8F848D10 */  lw     $a0, %got(s_pool_symbol)($gp)
/* 0044276C AC200000 */  sw    $zero, ($at)
/* 00442770 8F818AF0 */  lw     $at, %got(nextrld)($gp)
/* 00442774 0000A825 */  move  $s5, $zero
/* 00442778 AC260000 */  sw    $a2, ($at)
/* 0044277C 8F818B80 */  lw     $at, %got(nextmultireloc)($gp)
/* 00442780 02401025 */  move  $v0, $s2
/* 00442784 AC260000 */  sw    $a2, ($at)
/* 00442788 8F818D74 */  lw     $at, %got(nextmultirelocinstr)($gp)
/* 0044278C 24050005 */  li    $a1, 5
/* 00442790 AC260000 */  sw    $a2, ($at)
/* 00442794 8F818D00 */  lw     $at, %got(severity)($gp)
/* 00442798 00000000 */  nop   
/* 0044279C A02E0000 */  sb    $t6, ($at)
/* 004427A0 8F818B00 */  lw     $at, %got(tracereorder)($gp)
/* 004427A4 00000000 */  nop   
/* 004427A8 A0200000 */  sb    $zero, ($at)
/* 004427AC 8F818B54 */  lw     $at, %got(reorder)($gp)
/* 004427B0 00000000 */  nop   
/* 004427B4 A0200000 */  sb    $zero, ($at)
/* 004427B8 8F818B18 */  lw     $at, %got(debugflag)($gp)
/* 004427BC 00000000 */  nop   
/* 004427C0 AC200000 */  sw    $zero, ($at)
/* 004427C4 8F818C08 */  lw     $at, %got(profileflag)($gp)
/* 004427C8 00000000 */  nop   
/* 004427CC AC260000 */  sw    $a2, ($at)
/* 004427D0 8F818C90 */  lw     $at, %got(moxieflag)($gp)
/* 004427D4 00000000 */  nop   
/* 004427D8 A0200000 */  sb    $zero, ($at)
/* 004427DC 8F818B1C */  lw     $at, %got(optflag)($gp)
/* 004427E0 00000000 */  nop   
/* 004427E4 AC260000 */  sw    $a2, ($at)
/* 004427E8 8F818CC8 */  lw     $at, %got(elf_flag)($gp)
/* 004427EC 00000000 */  nop   
/* 004427F0 A0300000 */  sb    $s0, ($at)
/* 004427F4 8F818B30 */  lw     $at, %got(abi_flag)($gp)
/* 004427F8 00000000 */  nop   
/* 004427FC A0200000 */  sb    $zero, ($at)
/* 00442800 8F818B10 */  lw     $at, %got(gprelsize)($gp)
/* 00442804 00000000 */  nop   
/* 00442808 AC390000 */  sw    $t9, ($at)
/* 0044280C 8F818B08 */  lw     $at, %got(verbose)($gp)
/* 00442810 A1380000 */  sb    $t8, ($t1)
/* 00442814 A0200000 */  sb    $zero, ($at)
/* 00442818 8F818B14 */  lw     $at, %got(bigendian)($gp)
/* 0044281C 912A0000 */  lbu   $t2, ($t1)
/* 00442820 8F998024 */  lw    $t9, %got(func_00442370)($gp)
/* 00442824 A02A0000 */  sb    $t2, ($at)
/* 00442828 8F818CFC */  lw     $at, %got(pendinginstr)($gp)
/* 0044282C 27392370 */  addiu $t9, %lo(func_00442370) # addiu $t9, $t9, 0x2370
/* 00442830 A0200000 */  sb    $zero, ($at)
/* 00442834 8F818BA8 */  lw     $at, %got(notandm)($gp)
/* 00442838 00000000 */  nop   
/* 0044283C A0300000 */  sb    $s0, ($at)
/* 00442840 8F818CEC */  lw     $at, %got(listingflag)($gp)
/* 00442844 00000000 */  nop   
/* 00442848 A0200000 */  sb    $zero, ($at)
/* 0044284C 8F818B04 */  lw     $at, %got(isa)($gp)
/* 00442850 00000000 */  nop   
/* 00442854 A0200000 */  sb    $zero, ($at)
/* 00442858 8F818C7C */  lw     $at, %got(fp_pool_flag)($gp)
/* 0044285C 00000000 */  nop   
/* 00442860 A0300000 */  sb    $s0, ($at)
/* 00442864 8F818C9C */  lw     $at, %got(saw_cap_g)($gp)
/* 00442868 00000000 */  nop   
/* 0044286C A0200000 */  sb    $zero, ($at)
/* 00442870 8F818AF8 */  lw     $at, %got(picflag)($gp)
/* 00442874 00000000 */  nop   
/* 00442878 AC200000 */  sw    $zero, ($at)
/* 0044287C 8F818C94 */  lw     $at, %got(big_got)($gp)
/* 00442880 00000000 */  nop   
/* 00442884 A0200000 */  sb    $zero, ($at)
/* 00442888 8F818CA8 */  lw     $at, %got(gp_disp_address)($gp)
/* 0044288C 00000000 */  nop   
/* 00442890 AC200000 */  sw    $zero, ($at)
/* 00442894 8F818C98 */  lw     $at, %got(saw_pic_flag)($gp)
/* 00442898 00000000 */  nop   
/* 0044289C A0200000 */  sb    $zero, ($at)
/* 004428A0 8F818C44 */  lw     $at, %got(maybe_r4000)($gp)
/* 004428A4 00000000 */  nop   
/* 004428A8 A0300000 */  sb    $s0, ($at)
/* 004428AC 8F818CA0 */  lw     $at, %got(cprestore_offset)($gp)
/* 004428B0 0320F809 */  jalr  $t9
/* 004428B4 AC280000 */   sw    $t0, ($at)
/* 004428B8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004428BC 24050006 */  li    $a1, 6
/* 004428C0 8F998024 */  lw    $t9, %got(func_00442370)($gp)
/* 004428C4 8F848D14 */  lw     $a0, %got(d_pool_symbol)($gp)
/* 004428C8 27392370 */  addiu $t9, %lo(func_00442370) # addiu $t9, $t9, 0x2370
/* 004428CC 0320F809 */  jalr  $t9
/* 004428D0 02401025 */   move  $v0, $s2
/* 004428D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004428D8 240B0004 */  li    $t3, 4
/* 004428DC 8F818C80 */  lw     $at, %got(float_li_flag)($gp)
/* 004428E0 240C1214 */  li    $t4, 4628
/* 004428E4 A0200000 */  sb    $zero, ($at)
/* 004428E8 8F818BD8 */  lw     $at, %got(tfp_rev10)($gp)
/* 004428EC 3C0D060A */  lui   $t5, 0x60a
/* 004428F0 A0200000 */  sb    $zero, ($at)
/* 004428F4 8F818BDC */  lw     $at, %got(r4300_mul)($gp)
/* 004428F8 35ADA060 */  ori   $t5, $t5, 0xa060
/* 004428FC A0200000 */  sb    $zero, ($at)
/* 00442900 8F818C4C */  lw     $at, %got(fp_hack_flag)($gp)
/* 00442904 240E01F4 */  li    $t6, 500
/* 00442908 A02B0000 */  sb    $t3, ($at)
/* 0044290C 8F818C84 */  lw     $at, %got(gp_fp_moves)($gp)
/* 00442910 2419000F */  li    $t9, 15
/* 00442914 AC200000 */  sw    $zero, ($at)
/* 00442918 8F818C84 */  lw     $at, %got(gp_fp_moves)($gp)
/* 0044291C 24110010 */  li    $s1, 16
/* 00442920 AC200004 */  sw    $zero, 4($at)
/* 00442924 8F818C84 */  lw     $at, %got(gp_fp_moves)($gp)
/* 00442928 8F938AE0 */  lw     $s3, %got(memory)($gp)
/* 0044292C AC200008 */  sw    $zero, 8($at)
/* 00442930 8F818C84 */  lw     $at, %got(gp_fp_moves)($gp)
/* 00442934 240FFFFF */  li    $t7, -1
/* 00442938 AC2C000C */  sw    $t4, 0xc($at)
/* 0044293C 8F818C84 */  lw     $at, %got(gp_fp_moves)($gp)
/* 00442940 0011C080 */  sll   $t8, $s1, 2
/* 00442944 AC2D0010 */  sw    $t5, 0x10($at)
/* 00442948 8F818C84 */  lw     $at, %got(gp_fp_moves)($gp)
/* 0044294C 0311C023 */  subu  $t8, $t8, $s1
/* 00442950 AC200014 */  sw    $zero, 0x14($at)
/* 00442954 8F818C84 */  lw     $at, %got(gp_fp_moves)($gp)
/* 00442958 0018C080 */  sll   $t8, $t8, 2
/* 0044295C AC200018 */  sw    $zero, 0x18($at)
/* 00442960 8F818C84 */  lw     $at, %got(gp_fp_moves)($gp)
/* 00442964 0311C023 */  subu  $t8, $t8, $s1
/* 00442968 AC20001C */  sw    $zero, 0x1c($at)
/* 0044296C 8F818C84 */  lw     $at, %got(gp_fp_moves)($gp)
/* 00442970 00182080 */  sll   $a0, $t8, 2
/* 00442974 AC200020 */  sw    $zero, 0x20($at)
/* 00442978 8F818C84 */  lw     $at, %got(gp_fp_moves)($gp)
/* 0044297C 00000000 */  nop   
/* 00442980 AC200024 */  sw    $zero, 0x24($at)
/* 00442984 8F818C84 */  lw     $at, %got(gp_fp_moves)($gp)
/* 00442988 00000000 */  nop   
/* 0044298C AC200028 */  sw    $zero, 0x28($at)
/* 00442990 8F818BC8 */  lw     $at, %got(fromas0)($gp)
/* 00442994 00000000 */  nop   
/* 00442998 A0200000 */  sb    $zero, ($at)
/* 0044299C 8F818C5C */  lw     $at, %got(real_delays)($gp)
/* 004429A0 00000000 */  nop   
/* 004429A4 A0200000 */  sb    $zero, ($at)
/* 004429A8 8F818BE0 */  lw     $at, %got(gprmask)($gp)
/* 004429AC 00000000 */  nop   
/* 004429B0 AC200000 */  sw    $zero, ($at)
/* 004429B4 8F818BE4 */  lw     $at, %got(fprmask)($gp)
/* 004429B8 00000000 */  nop   
/* 004429BC AC200000 */  sw    $zero, ($at)
/* 004429C0 8F818AFC */  lw     $at, %got(fixup_count)($gp)
/* 004429C4 00000000 */  nop   
/* 004429C8 AC200000 */  sw    $zero, ($at)
/* 004429CC 8F818C1C */  lw     $at, %got(liveset)($gp)
/* 004429D0 00000000 */  nop   
/* 004429D4 AC200000 */  sw    $zero, ($at)
/* 004429D8 8F818BF0 */  lw     $at, %got(olimit_value)($gp)
/* 004429DC 00000000 */  nop   
/* 004429E0 AC2E0000 */  sw    $t6, ($at)
/* 004429E4 8F818B48 */  lw     $at, %got(peep_debug)($gp)
/* 004429E8 00000000 */  nop   
/* 004429EC AC200000 */  sw    $zero, ($at)
/* 004429F0 8F818CD4 */  lw     $at, %got(firstusertextseg)($gp)
/* 004429F4 00000000 */  nop   
/* 004429F8 AC390000 */  sw    $t9, ($at)
/* 004429FC 8F818CD8 */  lw     $at, %got(lastusertextseg)($gp)
/* 00442A00 00000000 */  nop   
/* 00442A04 AC2F0000 */  sw    $t7, ($at)
/* 00442A08 AE710004 */  sw    $s1, 4($s3)
/* 00442A0C 8F9988C0 */  lw    $t9, %call16(xmalloc)($gp)
/* 00442A10 00000000 */  nop   
/* 00442A14 0320F809 */  jalr  $t9
/* 00442A18 00000000 */   nop   
/* 00442A1C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442A20 14400007 */  bnez  $v0, .L00442A40
/* 00442A24 AE620000 */   sw    $v0, ($s3)
/* 00442A28 8F998664 */  lw    $t9, %call16(new_error)($gp)
/* 00442A2C 00000000 */  nop   
/* 00442A30 0320F809 */  jalr  $t9
/* 00442A34 00000000 */   nop   
/* 00442A38 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442A3C 00000000 */  nop   
.L00442A40:
/* 00442A40 8F938AEC */  lw     $s3, %got(seg_ic)($gp)
/* 00442A44 00112080 */  sll   $a0, $s1, 2
/* 00442A48 AE710004 */  sw    $s1, 4($s3)
/* 00442A4C 8F9988C0 */  lw    $t9, %call16(xmalloc)($gp)
/* 00442A50 00000000 */  nop   
/* 00442A54 0320F809 */  jalr  $t9
/* 00442A58 00000000 */   nop   
/* 00442A5C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442A60 14400007 */  bnez  $v0, .L00442A80
/* 00442A64 AE620000 */   sw    $v0, ($s3)
/* 00442A68 8F998664 */  lw    $t9, %call16(new_error)($gp)
/* 00442A6C 00000000 */  nop   
/* 00442A70 0320F809 */  jalr  $t9
/* 00442A74 00000000 */   nop   
/* 00442A78 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442A7C 00000000 */  nop   
.L00442A80:
/* 00442A80 8F938CDC */  lw     $s3, %got(nextlabelchain)($gp)
/* 00442A84 00112080 */  sll   $a0, $s1, 2
/* 00442A88 AE710004 */  sw    $s1, 4($s3)
/* 00442A8C 8F9988C0 */  lw    $t9, %call16(xmalloc)($gp)
/* 00442A90 00000000 */  nop   
/* 00442A94 0320F809 */  jalr  $t9
/* 00442A98 00000000 */   nop   
/* 00442A9C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442AA0 AE620000 */  sw    $v0, ($s3)
/* 00442AA4 1440000B */  bnez  $v0, .L00442AD4
/* 00442AA8 00403025 */   move  $a2, $v0
/* 00442AAC 8F998664 */  lw    $t9, %call16(new_error)($gp)
/* 00442AB0 00000000 */  nop   
/* 00442AB4 0320F809 */  jalr  $t9
/* 00442AB8 00000000 */   nop   
/* 00442ABC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442AC0 00000000 */  nop   
/* 00442AC4 8F868CDC */  lw     $a2, %got(nextlabelchain)($gp)
/* 00442AC8 00000000 */  nop   
/* 00442ACC 8CC60000 */  lw    $a2, ($a2)
/* 00442AD0 00000000 */  nop   
.L00442AD4:
/* 00442AD4 8F818AF4 */  lw     $at, %got(rld_list)($gp)
/* 00442AD8 8F828AE0 */  lw     $v0, %got(memory)($gp)
/* 00442ADC AC200004 */  sw    $zero, 4($at)
/* 00442AE0 8F818B84 */  lw     $at, %got(multireloc_list)($gp)
/* 00442AE4 8F848AEC */  lw     $a0, %got(seg_ic)($gp)
/* 00442AE8 AC200004 */  sw    $zero, 4($at)
/* 00442AEC 8F818D78 */  lw     $at, %got(multirelocinstr_list)($gp)
/* 00442AF0 8C420000 */  lw    $v0, ($v0)
/* 00442AF4 8C840000 */  lw    $a0, ($a0)
/* 00442AF8 00001825 */  move  $v1, $zero
/* 00442AFC 00C02825 */  move  $a1, $a2
/* 00442B00 AC200004 */  sw    $zero, 4($at)
.L00442B04:
/* 00442B04 AC400004 */  sw    $zero, 4($v0)
/* 00442B08 A0430008 */  sb    $v1, 8($v0)
/* 00442B0C AC800000 */  sw    $zero, ($a0)
/* 00442B10 ACA00000 */  sw    $zero, ($a1)
/* 00442B14 246E0001 */  addiu $t6, $v1, 1
/* 00442B18 A04E0034 */  sb    $t6, 0x34($v0)
/* 00442B1C AC400030 */  sw    $zero, 0x30($v0)
/* 00442B20 AC800004 */  sw    $zero, 4($a0)
/* 00442B24 ACA00004 */  sw    $zero, 4($a1)
/* 00442B28 24790002 */  addiu $t9, $v1, 2
/* 00442B2C A0590060 */  sb    $t9, 0x60($v0)
/* 00442B30 AC40005C */  sw    $zero, 0x5c($v0)
/* 00442B34 AC800008 */  sw    $zero, 8($a0)
/* 00442B38 ACA00008 */  sw    $zero, 8($a1)
/* 00442B3C 246F0003 */  addiu $t7, $v1, 3
/* 00442B40 A04F008C */  sb    $t7, 0x8c($v0)
/* 00442B44 AC400088 */  sw    $zero, 0x88($v0)
/* 00442B48 AC80000C */  sw    $zero, 0xc($a0)
/* 00442B4C 24630004 */  addiu $v1, $v1, 4
/* 00442B50 ACA0000C */  sw    $zero, 0xc($a1)
/* 00442B54 244200B0 */  addiu $v0, $v0, 0xb0
/* 00442B58 24840010 */  addiu $a0, $a0, 0x10
/* 00442B5C 1471FFE9 */  bne   $v1, $s1, .L00442B04
/* 00442B60 24A50010 */   addiu $a1, $a1, 0x10
/* 00442B64 8F818D04 */  lw     $at, %got(sym_tab)($gp)
/* 00442B68 8F998690 */  lw    $t9, %call16(new)($gp)
/* 00442B6C AC200004 */  sw    $zero, 4($at)
/* 00442B70 8F818D08 */  lw     $at, %got(neg_sym_tab)($gp)
/* 00442B74 24040400 */  li    $a0, 1024
/* 00442B78 00002825 */  move  $a1, $zero
/* 00442B7C 0320F809 */  jalr  $t9
/* 00442B80 AC200004 */   sw    $zero, 4($at)
/* 00442B84 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442B88 00002025 */  move  $a0, $zero
/* 00442B8C 8F838DB4 */  lw     $v1, %got(mainpath)($gp)
/* 00442B90 AFA20004 */  sw    $v0, 4($sp)
/* 00442B94 AC620000 */  sw    $v0, ($v1)
/* 00442B98 8F998680 */  lw    $t9, %call16(get_sstring)($gp)
/* 00442B9C 00402825 */  move  $a1, $v0
/* 00442BA0 0320F809 */  jalr  $t9
/* 00442BA4 00000000 */   nop   
/* 00442BA8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442BAC 24040020 */  li    $a0, 32
/* 00442BB0 8F998690 */  lw    $t9, %call16(new)($gp)
/* 00442BB4 00002825 */  move  $a1, $zero
/* 00442BB8 0320F809 */  jalr  $t9
/* 00442BBC 00000000 */   nop   
/* 00442BC0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442BC4 AFA200BC */  sw    $v0, 0xbc($sp)
/* 00442BC8 8F8B8AD8 */  lw     $t3, %got(__Argc)($gp)
/* 00442BCC 24110001 */  li    $s1, 1
/* 00442BD0 8D6B0000 */  lw    $t3, ($t3)
/* 00442BD4 00000000 */  nop   
/* 00442BD8 29610002 */  slti  $at, $t3, 2
/* 00442BDC 14200286 */  bnez  $at, .L004435F8
/* 00442BE0 27B300BC */   addiu $s3, $sp, 0xbc
.L00442BE4:
/* 00442BE4 8E650000 */  lw    $a1, ($s3)
/* 00442BE8 8F99867C */  lw    $t9, %call16(get_lstring)($gp)
/* 00442BEC 02202025 */  move  $a0, $s1
/* 00442BF0 0320F809 */  jalr  $t9
/* 00442BF4 AFA50004 */   sw    $a1, 4($sp)
/* 00442BF8 8FAE00BC */  lw    $t6, 0xbc($sp)
/* 00442BFC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442C00 91D90000 */  lbu   $t9, ($t6)
/* 00442C04 2401002D */  li    $at, 45
/* 00442C08 1721023C */  bne   $t9, $at, .L004434FC
/* 00442C0C 8FAB00CC */   lw    $t3, 0xcc($sp)
/* 00442C10 8E640000 */  lw    $a0, ($s3)
/* 00442C14 8F998678 */  lw    $t9, %call16(which_opt)($gp)
/* 00442C18 AFA40000 */  sw    $a0, ($sp)
/* 00442C1C 0320F809 */  jalr  $t9
/* 00442C20 00000000 */   nop   
/* 00442C24 304300FF */  andi  $v1, $v0, 0xff
/* 00442C28 2C610069 */  sltiu $at, $v1, 0x69
/* 00442C2C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442C30 10200207 */  beqz  $at, .L00443450
/* 00442C34 00000000 */   nop   
/* 00442C38 8F818070 */  lw    $at, %got(jtbl_10018E48)($gp)
/* 00442C3C 00035080 */  sll   $t2, $v1, 2
/* 00442C40 002A0821 */  addu  $at, $at, $t2
/* 00442C44 8C2A8E48 */  lw    $t2, %lo(jtbl_10018E48)($at)
/* 00442C48 00000000 */  nop   
/* 00442C4C 015C5021 */  addu  $t2, $t2, $gp
/* 00442C50 01400008 */  jr    $t2
/* 00442C54 00000000 */   nop   
.L00442C58:
/* 00442C58 8F818C44 */  lw     $at, %got(maybe_r4000)($gp)
/* 00442C5C 321500FF */  andi  $s5, $s0, 0xff
/* 00442C60 1000025E */  b     .L004435DC
/* 00442C64 A0200000 */   sb    $zero, ($at)
.L00442C68:
/* 00442C68 8F818B04 */  lw     $at, %got(isa)($gp)
/* 00442C6C 1000025B */  b     .L004435DC
/* 00442C70 A0300000 */   sb    $s0, ($at)
.L00442C74:
/* 00442C74 8F818B04 */  lw     $at, %got(isa)($gp)
/* 00442C78 240B0002 */  li    $t3, 2
/* 00442C7C 10000257 */  b     .L004435DC
/* 00442C80 A02B0000 */   sb    $t3, ($at)
.L00442C84:
/* 00442C84 8F818B04 */  lw     $at, %got(isa)($gp)
/* 00442C88 240C0003 */  li    $t4, 3
/* 00442C8C 10000253 */  b     .L004435DC
/* 00442C90 A02C0000 */   sb    $t4, ($at)
.L00442C94:
/* 00442C94 10000251 */  b     .L004435DC
/* 00442C98 24150003 */   li    $s5, 3
.L00442C9C:
/* 00442C9C 1000024F */  b     .L004435DC
/* 00442CA0 24150004 */   li    $s5, 4
.L00442CA4:
/* 00442CA4 1000024D */  b     .L004435DC
/* 00442CA8 24150005 */   li    $s5, 5
.L00442CAC:
/* 00442CAC 1000024B */  b     .L004435DC
/* 00442CB0 2415000B */   li    $s5, 11
.L00442CB4:
/* 00442CB4 8F818C44 */  lw     $at, %got(maybe_r4000)($gp)
/* 00442CB8 24150006 */  li    $s5, 6
/* 00442CBC 10000247 */  b     .L004435DC
/* 00442CC0 A0200000 */   sb    $zero, ($at)
.L00442CC4:
/* 00442CC4 8F818B04 */  lw     $at, %got(isa)($gp)
/* 00442CC8 240D0004 */  li    $t5, 4
/* 00442CCC A02D0000 */  sb    $t5, ($at)
/* 00442CD0 8F818C44 */  lw     $at, %got(maybe_r4000)($gp)
/* 00442CD4 10000241 */  b     .L004435DC
/* 00442CD8 A0200000 */   sb    $zero, ($at)
.L00442CDC:
/* 00442CDC 8F818BEC */  lw     $at, %got(peep_opt)($gp)
/* 00442CE0 1000023E */  b     .L004435DC
/* 00442CE4 A0200000 */   sb    $zero, ($at)
.L00442CE8:
/* 00442CE8 8E650000 */  lw    $a1, ($s3)
/* 00442CEC 8F99867C */  lw    $t9, %call16(get_lstring)($gp)
/* 00442CF0 26310001 */  addiu $s1, $s1, 1
/* 00442CF4 02202025 */  move  $a0, $s1
/* 00442CF8 0320F809 */  jalr  $t9
/* 00442CFC AFA50004 */   sw    $a1, 4($sp)
/* 00442D00 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442D04 8FA400BC */  lw    $a0, 0xbc($sp)
/* 00442D08 8F9981D4 */  lw    $t9, %call16(atol)($gp)
/* 00442D0C 00000000 */  nop   
/* 00442D10 0320F809 */  jalr  $t9
/* 00442D14 00000000 */   nop   
/* 00442D18 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442D1C 00000000 */  nop   
/* 00442D20 8F818B48 */  lw     $at, %got(peep_debug)($gp)
/* 00442D24 1000022D */  b     .L004435DC
/* 00442D28 AC220000 */   sw    $v0, ($at)
.L00442D2C:
/* 00442D2C 8F818C34 */  lw     $at, %got(swpipe_opt)($gp)
/* 00442D30 1000022A */  b     .L004435DC
/* 00442D34 A0200000 */   sb    $zero, ($at)
.L00442D38:
/* 00442D38 8E650000 */  lw    $a1, ($s3)
/* 00442D3C 8F99867C */  lw    $t9, %call16(get_lstring)($gp)
/* 00442D40 26310001 */  addiu $s1, $s1, 1
/* 00442D44 02202025 */  move  $a0, $s1
/* 00442D48 0320F809 */  jalr  $t9
/* 00442D4C AFA50004 */   sw    $a1, 4($sp)
/* 00442D50 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442D54 8FA400BC */  lw    $a0, 0xbc($sp)
/* 00442D58 8F9981D4 */  lw    $t9, %call16(atol)($gp)
/* 00442D5C 00000000 */  nop   
/* 00442D60 0320F809 */  jalr  $t9
/* 00442D64 00000000 */   nop   
/* 00442D68 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442D6C 00000000 */  nop   
/* 00442D70 8F818C2C */  lw     $at, %got(swpipe_debug)($gp)
/* 00442D74 10000219 */  b     .L004435DC
/* 00442D78 AC220000 */   sw    $v0, ($at)
.L00442D7C:
/* 00442D7C 8F818C30 */  lw     $at, %got(symregs_opt)($gp)
/* 00442D80 10000216 */  b     .L004435DC
/* 00442D84 A0200000 */   sb    $zero, ($at)
.L00442D88:
/* 00442D88 8F818B38 */  lw     $at, %got(xbb_opt)($gp)
/* 00442D8C 10000213 */  b     .L004435DC
/* 00442D90 A0200000 */   sb    $zero, ($at)
.L00442D94:
/* 00442D94 8F818C38 */  lw     $at, %got(unsafe_opt)($gp)
/* 00442D98 10000210 */  b     .L004435DC
/* 00442D9C A0300000 */   sb    $s0, ($at)
.L00442DA0:
/* 00442DA0 8E650000 */  lw    $a1, ($s3)
/* 00442DA4 8F99867C */  lw    $t9, %call16(get_lstring)($gp)
/* 00442DA8 26310001 */  addiu $s1, $s1, 1
/* 00442DAC 02202025 */  move  $a0, $s1
/* 00442DB0 0320F809 */  jalr  $t9
/* 00442DB4 AFA50004 */   sw    $a1, 4($sp)
/* 00442DB8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442DBC 8FA400BC */  lw    $a0, 0xbc($sp)
/* 00442DC0 8F9981D4 */  lw    $t9, %call16(atol)($gp)
/* 00442DC4 00000000 */  nop   
/* 00442DC8 0320F809 */  jalr  $t9
/* 00442DCC 00000000 */   nop   
/* 00442DD0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442DD4 00000000 */  nop   
/* 00442DD8 8F818BA0 */  lw     $at, %got(xbb_debug)($gp)
/* 00442DDC 100001FF */  b     .L004435DC
/* 00442DE0 AC220000 */   sw    $v0, ($at)
.L00442DE4:
/* 00442DE4 8F818DB0 */  lw     $at, %got(new_hilo)($gp)
/* 00442DE8 100001FC */  b     .L004435DC
/* 00442DEC A0300000 */   sb    $s0, ($at)
.L00442DF0:
/* 00442DF0 8F818C58 */  lw     $at, %got(do_mtag)($gp)
/* 00442DF4 100001F9 */  b     .L004435DC
/* 00442DF8 A0300000 */   sb    $s0, ($at)
.L00442DFC:
/* 00442DFC 8F818C50 */  lw     $at, %got(fpstall_nop)($gp)
/* 00442E00 100001F6 */  b     .L004435DC
/* 00442E04 A0300000 */   sb    $s0, ($at)
.L00442E08:
/* 00442E08 8F818BC4 */  lw     $at, %got(global_opt)($gp)
/* 00442E0C 100001F3 */  b     .L004435DC
/* 00442E10 A0200000 */   sb    $zero, ($at)
.L00442E14:
/* 00442E14 8F818BF4 */  lw     $at, %got(branch_opt)($gp)
/* 00442E18 100001F0 */  b     .L004435DC
/* 00442E1C A0200000 */   sb    $zero, ($at)
.L00442E20:
/* 00442E20 8F818BD4 */  lw     $at, %got(dwalign)($gp)
/* 00442E24 100001ED */  b     .L004435DC
/* 00442E28 A0300000 */   sb    $s0, ($at)
.L00442E2C:
/* 00442E2C 8F818CB4 */  lw     $at, %got(excpt_opt)($gp)
/* 00442E30 3C0CE7C1 */  lui   $t4, 0xe7c1
/* 00442E34 A0300000 */  sb    $s0, ($at)
/* 00442E38 8F818D84 */  lw     $at, %got(realsegments)($gp)
/* 00442E3C 100001E7 */  b     .L004435DC
/* 00442E40 AC2C0000 */   sw    $t4, ($at)
.L00442E44:
/* 00442E44 8F818CAC */  lw     $at, %got(r6000_lhu_flag)($gp)
/* 00442E48 100001E4 */  b     .L004435DC
/* 00442E4C A0300000 */   sb    $s0, ($at)
.L00442E50:
/* 00442E50 8F818C80 */  lw     $at, %got(float_li_flag)($gp)
/* 00442E54 100001E1 */  b     .L004435DC
/* 00442E58 A0300000 */   sb    $s0, ($at)
.L00442E5C:
/* 00442E5C 8F818C4C */  lw     $at, %got(fp_hack_flag)($gp)
/* 00442E60 240D0003 */  li    $t5, 3
/* 00442E64 100001DD */  b     .L004435DC
/* 00442E68 A02D0000 */   sb    $t5, ($at)
.L00442E6C:
/* 00442E6C 8F818C4C */  lw     $at, %got(fp_hack_flag)($gp)
/* 00442E70 100001DA */  b     .L004435DC
/* 00442E74 A0200000 */   sb    $zero, ($at)
.L00442E78:
/* 00442E78 8F818C4C */  lw     $at, %got(fp_hack_flag)($gp)
/* 00442E7C 100001D7 */  b     .L004435DC
/* 00442E80 A0300000 */   sb    $s0, ($at)
.L00442E84:
/* 00442E84 8F818C4C */  lw     $at, %got(fp_hack_flag)($gp)
/* 00442E88 240E0002 */  li    $t6, 2
/* 00442E8C 100001D3 */  b     .L004435DC
/* 00442E90 A02E0000 */   sb    $t6, ($at)
.L00442E94:
/* 00442E94 8F818C4C */  lw     $at, %got(fp_hack_flag)($gp)
/* 00442E98 24190003 */  li    $t9, 3
/* 00442E9C 100001CF */  b     .L004435DC
/* 00442EA0 A0390000 */   sb    $t9, ($at)
.L00442EA4:
/* 00442EA4 8F818C4C */  lw     $at, %got(fp_hack_flag)($gp)
/* 00442EA8 240F0004 */  li    $t7, 4
/* 00442EAC 100001CB */  b     .L004435DC
/* 00442EB0 A02F0000 */   sb    $t7, ($at)
.L00442EB4:
/* 00442EB4 8F818C48 */  lw     $at, %got(nowarnflag)($gp)
/* 00442EB8 00000000 */  nop   
/* 00442EBC A0300000 */  sb    $s0, ($at)
/* 00442EC0 8F818C70 */  lw     $at, %got(warnexitflag)($gp)
/* 00442EC4 100001C5 */  b     .L004435DC
/* 00442EC8 A0200000 */   sb    $zero, ($at)
.L00442ECC:
/* 00442ECC 8F818C48 */  lw     $at, %got(nowarnflag)($gp)
/* 00442ED0 00000000 */  nop   
/* 00442ED4 A0200000 */  sb    $zero, ($at)
/* 00442ED8 8F818C70 */  lw     $at, %got(warnexitflag)($gp)
/* 00442EDC 100001BF */  b     .L004435DC
/* 00442EE0 A0300000 */   sb    $s0, ($at)
.L00442EE4:
/* 00442EE4 8F818C48 */  lw     $at, %got(nowarnflag)($gp)
/* 00442EE8 00000000 */  nop   
/* 00442EEC A0300000 */  sb    $s0, ($at)
/* 00442EF0 8F818C70 */  lw     $at, %got(warnexitflag)($gp)
/* 00442EF4 100001B9 */  b     .L004435DC
/* 00442EF8 A0300000 */   sb    $s0, ($at)
.L00442EFC:
/* 00442EFC 8F818B0C */  lw     $at, %got(keepflag)($gp)
/* 00442F00 100001B6 */  b     .L004435DC
/* 00442F04 A0300000 */   sb    $s0, ($at)
.L00442F08:
/* 00442F08 8F818C90 */  lw     $at, %got(moxieflag)($gp)
/* 00442F0C 100001B3 */  b     .L004435DC
/* 00442F10 A0300000 */   sb    $s0, ($at)
.L00442F14:
/* 00442F14 8F818B1C */  lw     $at, %got(optflag)($gp)
/* 00442F18 100001B0 */  b     .L004435DC
/* 00442F1C AC200000 */   sw    $zero, ($at)
.L00442F20:
/* 00442F20 8F818B1C */  lw     $at, %got(optflag)($gp)
/* 00442F24 24180001 */  li    $t8, 1
/* 00442F28 100001AC */  b     .L004435DC
/* 00442F2C AC380000 */   sw    $t8, ($at)
.L00442F30:
/* 00442F30 8F818B1C */  lw     $at, %got(optflag)($gp)
/* 00442F34 240A0002 */  li    $t2, 2
/* 00442F38 100001A8 */  b     .L004435DC
/* 00442F3C AC2A0000 */   sw    $t2, ($at)
.L00442F40:
/* 00442F40 8F818B1C */  lw     $at, %got(optflag)($gp)
/* 00442F44 240B0003 */  li    $t3, 3
/* 00442F48 100001A4 */  b     .L004435DC
/* 00442F4C AC2B0000 */   sw    $t3, ($at)
.L00442F50:
/* 00442F50 8F818B1C */  lw     $at, %got(optflag)($gp)
/* 00442F54 240C0004 */  li    $t4, 4
/* 00442F58 100001A0 */  b     .L004435DC
/* 00442F5C AC2C0000 */   sw    $t4, ($at)
.L00442F60:
/* 00442F60 8E650000 */  lw    $a1, ($s3)
/* 00442F64 8F99867C */  lw    $t9, %call16(get_lstring)($gp)
/* 00442F68 26310001 */  addiu $s1, $s1, 1
/* 00442F6C 02202025 */  move  $a0, $s1
/* 00442F70 0320F809 */  jalr  $t9
/* 00442F74 AFA50004 */   sw    $a1, 4($sp)
/* 00442F78 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442F7C 8FA400BC */  lw    $a0, 0xbc($sp)
/* 00442F80 8F9981D4 */  lw    $t9, %call16(atol)($gp)
/* 00442F84 00000000 */  nop   
/* 00442F88 0320F809 */  jalr  $t9
/* 00442F8C 00000000 */   nop   
/* 00442F90 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442F94 00000000 */  nop   
/* 00442F98 8F818BF0 */  lw     $at, %got(olimit_value)($gp)
/* 00442F9C 1000018F */  b     .L004435DC
/* 00442FA0 AC220000 */   sw    $v0, ($at)
.L00442FA4:
/* 00442FA4 8FB900CC */  lw    $t9, 0xcc($sp)
/* 00442FA8 26310001 */  addiu $s1, $s1, 1
/* 00442FAC 8F25FFF0 */  lw    $a1, -0x10($t9)
/* 00442FB0 8F998680 */  lw    $t9, %call16(get_sstring)($gp)
/* 00442FB4 02202025 */  move  $a0, $s1
/* 00442FB8 0320F809 */  jalr  $t9
/* 00442FBC AFA50004 */   sw    $a1, 4($sp)
/* 00442FC0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442FC4 8FAA00CC */  lw    $t2, 0xcc($sp)
/* 00442FC8 8F9987E8 */  lw    $t9, %call16(dd_initialize)($gp)
/* 00442FCC 8D44FFF0 */  lw    $a0, -0x10($t2)
/* 00442FD0 0320F809 */  jalr  $t9
/* 00442FD4 00000000 */   nop   
/* 00442FD8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00442FDC 00000000 */  nop   
/* 00442FE0 8F818C54 */  lw     $at, %got(use_ddopt_info)($gp)
/* 00442FE4 1000017D */  b     .L004435DC
/* 00442FE8 A0300000 */   sb    $s0, ($at)
.L00442FEC:
/* 00442FEC 8F818B18 */  lw     $at, %got(debugflag)($gp)
/* 00442FF0 1000017A */  b     .L004435DC
/* 00442FF4 AC200000 */   sw    $zero, ($at)
.L00442FF8:
/* 00442FF8 8F818B18 */  lw     $at, %got(debugflag)($gp)
/* 00442FFC 240B0001 */  li    $t3, 1
/* 00443000 10000176 */  b     .L004435DC
/* 00443004 AC2B0000 */   sw    $t3, ($at)
.L00443008:
/* 00443008 8F818B18 */  lw     $at, %got(debugflag)($gp)
/* 0044300C 240C0002 */  li    $t4, 2
/* 00443010 10000172 */  b     .L004435DC
/* 00443014 AC2C0000 */   sw    $t4, ($at)
.L00443018:
/* 00443018 8F818B18 */  lw     $at, %got(debugflag)($gp)
/* 0044301C 240D0003 */  li    $t5, 3
/* 00443020 1000016E */  b     .L004435DC
/* 00443024 AC2D0000 */   sw    $t5, ($at)
.L00443028:
/* 00443028 8F818C08 */  lw     $at, %got(profileflag)($gp)
/* 0044302C 1000016B */  b     .L004435DC
/* 00443030 AC200000 */   sw    $zero, ($at)
.L00443034:
/* 00443034 8F818C08 */  lw     $at, %got(profileflag)($gp)
/* 00443038 240E0001 */  li    $t6, 1
/* 0044303C 10000167 */  b     .L004435DC
/* 00443040 AC2E0000 */   sw    $t6, ($at)
.L00443044:
/* 00443044 8F818C08 */  lw     $at, %got(profileflag)($gp)
/* 00443048 240F0002 */  li    $t7, 2
/* 0044304C 10000163 */  b     .L004435DC
/* 00443050 AC2F0000 */   sw    $t7, ($at)
.L00443054:
/* 00443054 8F818C08 */  lw     $at, %got(profileflag)($gp)
/* 00443058 24190003 */  li    $t9, 3
/* 0044305C 1000015F */  b     .L004435DC
/* 00443060 AC390000 */   sw    $t9, ($at)
.L00443064:
/* 00443064 8F818B54 */  lw     $at, %got(reorder)($gp)
/* 00443068 1000015C */  b     .L004435DC
/* 0044306C A0300000 */   sb    $s0, ($at)
.L00443070:
/* 00443070 8F818C5C */  lw     $at, %got(real_delays)($gp)
/* 00443074 10000159 */  b     .L004435DC
/* 00443078 A0300000 */   sb    $s0, ($at)
.L0044307C:
/* 0044307C 8F818B8C */  lw     $at, %got(reorderflag)($gp)
/* 00443080 10000156 */  b     .L004435DC
/* 00443084 A0200000 */   sb    $zero, ($at)
.L00443088:
/* 00443088 8F818B00 */  lw     $at, %got(tracereorder)($gp)
/* 0044308C 10000153 */  b     .L004435DC
/* 00443090 A0300000 */   sb    $s0, ($at)
.L00443094:
/* 00443094 8F818CEC */  lw     $at, %got(listingflag)($gp)
/* 00443098 10000150 */  b     .L004435DC
/* 0044309C A0300000 */   sb    $s0, ($at)
.L004430A0:
/* 004430A0 8F818B14 */  lw     $at, %got(bigendian)($gp)
/* 004430A4 1000014D */  b     .L004435DC
/* 004430A8 A0300000 */   sb    $s0, ($at)
.L004430AC:
/* 004430AC 8F818B14 */  lw     $at, %got(bigendian)($gp)
/* 004430B0 1000014A */  b     .L004435DC
/* 004430B4 A0200000 */   sb    $zero, ($at)
.L004430B8:
/* 004430B8 8F848A10 */  lw     $a0, %got(err)($gp)
/* 004430BC 8F818B08 */  lw     $at, %got(verbose)($gp)
/* 004430C0 8F858070 */  lw    $a1, %got(RO_10018E20)($gp)
/* 004430C4 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 004430C8 8C840000 */  lw    $a0, ($a0)
/* 004430CC 24060005 */  li    $a2, 5
/* 004430D0 24070005 */  li    $a3, 5
/* 004430D4 A0300000 */  sb    $s0, ($at)
/* 004430D8 0320F809 */  jalr  $t9
/* 004430DC 24A58E20 */   addiu $a1, %lo(RO_10018E20) # addiu $a1, $a1, -0x71e0
/* 004430E0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004430E4 00000000 */  nop   
/* 004430E8 8F848A10 */  lw     $a0, %got(err)($gp)
/* 004430EC 8F99817C */  lw    $t9, %call16(fflush)($gp)
/* 004430F0 8C840000 */  lw    $a0, ($a0)
/* 004430F4 0320F809 */  jalr  $t9
/* 004430F8 00000000 */   nop   
/* 004430FC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00443100 10000136 */  b     .L004435DC
/* 00443104 00000000 */   nop   
.L00443108:
/* 00443108 8FB800CC */  lw    $t8, 0xcc($sp)
/* 0044310C 8F998680 */  lw    $t9, %call16(get_sstring)($gp)
/* 00443110 8F05FFF4 */  lw    $a1, -0xc($t8)
/* 00443114 26310001 */  addiu $s1, $s1, 1
/* 00443118 02202025 */  move  $a0, $s1
/* 0044311C 0320F809 */  jalr  $t9
/* 00443120 AFA50004 */   sw    $a1, 4($sp)
/* 00443124 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00443128 1000012C */  b     .L004435DC
/* 0044312C 00000000 */   nop   
.L00443130:
/* 00443130 8E650000 */  lw    $a1, ($s3)
/* 00443134 8F99867C */  lw    $t9, %call16(get_lstring)($gp)
/* 00443138 26310001 */  addiu $s1, $s1, 1
/* 0044313C 02202025 */  move  $a0, $s1
/* 00443140 0320F809 */  jalr  $t9
/* 00443144 AFA50004 */   sw    $a1, 4($sp)
/* 00443148 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044314C 8FA400BC */  lw    $a0, 0xbc($sp)
/* 00443150 8F9981D4 */  lw    $t9, %call16(atol)($gp)
/* 00443154 00000000 */  nop   
/* 00443158 0320F809 */  jalr  $t9
/* 0044315C 00000000 */   nop   
/* 00443160 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00443164 00000000 */  nop   
/* 00443168 8F818B10 */  lw     $at, %got(gprelsize)($gp)
/* 0044316C 8F8E8B10 */  lw     $t6, %got(gprelsize)($gp)
/* 00443170 AC220000 */  sw    $v0, ($at)
/* 00443174 8DCE0000 */  lw    $t6, ($t6)
/* 00443178 00000000 */  nop   
/* 0044317C 11C00117 */  beqz  $t6, .L004435DC
/* 00443180 00000000 */   nop   
/* 00443184 8F818C9C */  lw     $at, %got(saw_cap_g)($gp)
/* 00443188 10000114 */  b     .L004435DC
/* 0044318C A0300000 */   sb    $s0, ($at)
.L00443190:
/* 00443190 8F8F8D60 */  lw     $t7, %got(outname)($gp)
/* 00443194 8F998680 */  lw    $t9, %call16(get_sstring)($gp)
/* 00443198 8DE50000 */  lw    $a1, ($t7)
/* 0044319C 26310001 */  addiu $s1, $s1, 1
/* 004431A0 02202025 */  move  $a0, $s1
/* 004431A4 0320F809 */  jalr  $t9
/* 004431A8 AFA50004 */   sw    $a1, 4($sp)
/* 004431AC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004431B0 1000010A */  b     .L004435DC
/* 004431B4 00000000 */   nop   
.L004431B8:
/* 004431B8 10000108 */  b     .L004435DC
/* 004431BC A2800000 */   sb    $zero, ($s4)
.L004431C0:
/* 004431C0 10000106 */  b     .L004435DC
/* 004431C4 A2800001 */   sb    $zero, 1($s4)
.L004431C8:
/* 004431C8 10000104 */  b     .L004435DC
/* 004431CC A2800002 */   sb    $zero, 2($s4)
.L004431D0:
/* 004431D0 10000102 */  b     .L004435DC
/* 004431D4 A2800003 */   sb    $zero, 3($s4)
.L004431D8:
/* 004431D8 10000100 */  b     .L004435DC
/* 004431DC A2800004 */   sb    $zero, 4($s4)
.L004431E0:
/* 004431E0 100000FE */  b     .L004435DC
/* 004431E4 A290001E */   sb    $s0, 0x1e($s4)
.L004431E8:
/* 004431E8 8F818C40 */  lw     $at, %got(non_pic_flag)($gp)
/* 004431EC 00000000 */  nop   
/* 004431F0 A0300000 */  sb    $s0, ($at)
/* 004431F4 8F818AF8 */  lw     $at, %got(picflag)($gp)
/* 004431F8 100000F8 */  b     .L004435DC
/* 004431FC AC200000 */   sw    $zero, ($at)
.L00443200:
/* 00443200 8F818AF8 */  lw     $at, %got(picflag)($gp)
/* 00443204 00000000 */  nop   
/* 00443208 AC200000 */  sw    $zero, ($at)
/* 0044320C 8F818C98 */  lw     $at, %got(saw_pic_flag)($gp)
/* 00443210 100000F2 */  b     .L004435DC
/* 00443214 A0300000 */   sb    $s0, ($at)
.L00443218:
/* 00443218 8F818AF8 */  lw     $at, %got(picflag)($gp)
/* 0044321C 24190001 */  li    $t9, 1
/* 00443220 AC390000 */  sw    $t9, ($at)
/* 00443224 8F818C98 */  lw     $at, %got(saw_pic_flag)($gp)
/* 00443228 100000EC */  b     .L004435DC
/* 0044322C A0300000 */   sb    $s0, ($at)
.L00443230:
/* 00443230 8F818AF8 */  lw     $at, %got(picflag)($gp)
/* 00443234 8F988C9C */  lw     $t8, %got(saw_cap_g)($gp)
/* 00443238 240A0002 */  li    $t2, 2
/* 0044323C AC2A0000 */  sw    $t2, ($at)
/* 00443240 8F818C98 */  lw     $at, %got(saw_pic_flag)($gp)
/* 00443244 93180000 */  lbu   $t8, ($t8)
/* 00443248 A0300000 */  sb    $s0, ($at)
/* 0044324C 13000030 */  beqz  $t8, .L00443310
/* 00443250 00000000 */   nop   
/* 00443254 8F8B8B10 */  lw     $t3, %got(gprelsize)($gp)
/* 00443258 00000000 */  nop   
/* 0044325C 8D6B0000 */  lw    $t3, ($t3)
/* 00443260 00000000 */  nop   
/* 00443264 1160002A */  beqz  $t3, .L00443310
/* 00443268 00000000 */   nop   
/* 0044326C 8F8C8070 */  lw    $t4, %got(RO_10018DD0)($gp)
/* 00443270 03A07825 */  move  $t7, $sp
/* 00443274 258C8DD0 */  addiu $t4, %lo(RO_10018DD0) # addiu $t4, $t4, -0x7230
/* 00443278 258E0048 */  addiu $t6, $t4, 0x48
.L0044327C:
/* 0044327C 89810000 */  lwl   $at, ($t4)
/* 00443280 99810003 */  lwr   $at, 3($t4)
/* 00443284 258C000C */  addiu $t4, $t4, 0xc
/* 00443288 A9E10000 */  swl   $at, ($t7)
/* 0044328C B9E10003 */  swr   $at, 3($t7)
/* 00443290 8981FFF8 */  lwl   $at, -8($t4)
/* 00443294 9981FFFB */  lwr   $at, -5($t4)
/* 00443298 25EF000C */  addiu $t7, $t7, 0xc
/* 0044329C A9E1FFF8 */  swl   $at, -8($t7)
/* 004432A0 B9E1FFFB */  swr   $at, -5($t7)
/* 004432A4 8981FFFC */  lwl   $at, -4($t4)
/* 004432A8 9981FFFF */  lwr   $at, -1($t4)
/* 004432AC 00000000 */  nop   
/* 004432B0 A9E1FFFC */  swl   $at, -4($t7)
/* 004432B4 158EFFF1 */  bne   $t4, $t6, .L0044327C
/* 004432B8 B9E1FFFF */   swr   $at, -1($t7)
/* 004432BC 89810000 */  lwl   $at, ($t4)
/* 004432C0 99810003 */  lwr   $at, 3($t4)
/* 004432C4 8F998C68 */  lw     $t9, %got(emptystring)($gp)
/* 004432C8 A9E10000 */  swl   $at, ($t7)
/* 004432CC B9E10003 */  swr   $at, 3($t7)
/* 004432D0 898E0004 */  lwl   $t6, 4($t4)
/* 004432D4 998E0007 */  lwr   $t6, 7($t4)
/* 004432D8 240A0002 */  li    $t2, 2
/* 004432DC A9EE0004 */  swl   $t6, 4($t7)
/* 004432E0 B9EE0007 */  swr   $t6, 7($t7)
/* 004432E4 8F390000 */  lw    $t9, ($t9)
/* 004432E8 8FA7000C */  lw    $a3, 0xc($sp)
/* 004432EC AFB90050 */  sw    $t9, 0x50($sp)
/* 004432F0 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 004432F4 8FA60008 */  lw    $a2, 8($sp)
/* 004432F8 8FA50004 */  lw    $a1, 4($sp)
/* 004432FC 8FA40000 */  lw    $a0, ($sp)
/* 00443300 0320F809 */  jalr  $t9
/* 00443304 AFAA0054 */   sw    $t2, 0x54($sp)
/* 00443308 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044330C 00000000 */  nop   
.L00443310:
/* 00443310 8F818B10 */  lw     $at, %got(gprelsize)($gp)
/* 00443314 100000B1 */  b     .L004435DC
/* 00443318 AC200000 */   sw    $zero, ($at)
.L0044331C:
/* 0044331C 8F818C94 */  lw     $at, %got(big_got)($gp)
/* 00443320 100000AE */  b     .L004435DC
/* 00443324 A0300000 */   sb    $s0, ($at)
.L00443328:
/* 00443328 100000AC */  b     .L004435DC
/* 0044332C A290001D */   sb    $s0, 0x1d($s4)
.L00443330:
/* 00443330 8F818C7C */  lw     $at, %got(fp_pool_flag)($gp)
/* 00443334 100000A9 */  b     .L004435DC
/* 00443338 A0200000 */   sb    $zero, ($at)
.L0044333C:
/* 0044333C 8F818C28 */  lw     $at, %got(diag_flag)($gp)
/* 00443340 100000A6 */  b     .L004435DC
/* 00443344 A0300000 */   sb    $s0, ($at)
.L00443348:
/* 00443348 8F818CBC */  lw     $at, %got(mednat)($gp)
/* 0044334C 100000A3 */  b     .L004435DC
/* 00443350 A0300000 */   sb    $s0, ($at)
.L00443354:
/* 00443354 8F818CC0 */  lw     $at, %got(dwopcode)($gp)
/* 00443358 100000A0 */  b     .L004435DC
/* 0044335C A0300000 */   sb    $s0, ($at)
.L00443360:
/* 00443360 8F818B28 */  lw     $at, %got(sixtyfour_bit)($gp)
/* 00443364 00000000 */  nop   
/* 00443368 A0300000 */  sb    $s0, ($at)
/* 0044336C 8F818CC0 */  lw     $at, %got(dwopcode)($gp)
/* 00443370 00000000 */  nop   
/* 00443374 A0300000 */  sb    $s0, ($at)
/* 00443378 8F818B3C */  lw     $at, %got(fp32regs)($gp)
/* 0044337C 10000097 */  b     .L004435DC
/* 00443380 A0300000 */   sb    $s0, ($at)
.L00443384:
/* 00443384 8F818B3C */  lw     $at, %got(fp32regs)($gp)
/* 00443388 10000094 */  b     .L004435DC
/* 0044338C A0300000 */   sb    $s0, ($at)
.L00443390:
/* 00443390 8F818CC8 */  lw     $at, %got(elf_flag)($gp)
/* 00443394 10000091 */  b     .L004435DC
/* 00443398 A0200000 */   sb    $zero, ($at)
.L0044339C:
/* 0044339C 8F818CC8 */  lw     $at, %got(elf_flag)($gp)
/* 004433A0 1000008E */  b     .L004435DC
/* 004433A4 A0300000 */   sb    $s0, ($at)
.L004433A8:
/* 004433A8 8F818C64 */  lw     $at, %got(mscoff)($gp)
/* 004433AC 1000008B */  b     .L004435DC
/* 004433B0 A0300000 */   sb    $s0, ($at)
.L004433B4:
/* 004433B4 8F818CCC */  lw     $at, %got(mscoff1)($gp)
/* 004433B8 10000088 */  b     .L004435DC
/* 004433BC A0300000 */   sb    $s0, ($at)
.L004433C0:
/* 004433C0 8E650000 */  lw    $a1, ($s3)
/* 004433C4 8F99867C */  lw    $t9, %call16(get_lstring)($gp)
/* 004433C8 26310001 */  addiu $s1, $s1, 1
/* 004433CC 02202025 */  move  $a0, $s1
/* 004433D0 2415000A */  li    $s5, 10
/* 004433D4 0320F809 */  jalr  $t9
/* 004433D8 AFA50004 */   sw    $a1, 4($sp)
/* 004433DC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004433E0 8FA400BC */  lw    $a0, 0xbc($sp)
/* 004433E4 8F9981D4 */  lw    $t9, %call16(atol)($gp)
/* 004433E8 00000000 */  nop   
/* 004433EC 0320F809 */  jalr  $t9
/* 004433F0 00000000 */   nop   
/* 004433F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004433F8 00000000 */  nop   
/* 004433FC 8F818C60 */  lw     $at, %got(num_issue)($gp)
/* 00443400 10000076 */  b     .L004435DC
/* 00443404 AC220000 */   sw    $v0, ($at)
.L00443408:
/* 00443408 8F818CD0 */  lw     $at, %got(nonzero_scnbase)($gp)
/* 0044340C 10000073 */  b     .L004435DC
/* 00443410 A0300000 */   sb    $s0, ($at)
.L00443414:
/* 00443414 8F818B34 */  lw     $at, %got(new_mdebug)($gp)
/* 00443418 10000070 */  b     .L004435DC
/* 0044341C A0300000 */   sb    $s0, ($at)
.L00443420:
/* 00443420 8F818B30 */  lw     $at, %got(abi_flag)($gp)
/* 00443424 1000006D */  b     .L004435DC
/* 00443428 A0300000 */   sb    $s0, ($at)
.L0044342C:
/* 0044342C 8F818BD8 */  lw     $at, %got(tfp_rev10)($gp)
/* 00443430 1000006A */  b     .L004435DC
/* 00443434 A0300000 */   sb    $s0, ($at)
.L00443438:
/* 00443438 8F818BDC */  lw     $at, %got(r4300_mul)($gp)
/* 0044343C 10000067 */  b     .L004435DC
/* 00443440 A0300000 */   sb    $s0, ($at)
.L00443444:
/* 00443444 8F818BAC */  lw     $at, %got(force_branch_fixup)($gp)
/* 00443448 10000064 */  b     .L004435DC
/* 0044344C A0300000 */   sb    $s0, ($at)
.L00443450:
/* 00443450 8F8D8070 */  lw    $t5, %got(RO_10018D80)($gp)
/* 00443454 03A07825 */  move  $t7, $sp
/* 00443458 25AD8D80 */  addiu $t5, %lo(RO_10018D80) # addiu $t5, $t5, -0x7280
/* 0044345C 25AC0048 */  addiu $t4, $t5, 0x48
.L00443460:
/* 00443460 89A10000 */  lwl   $at, ($t5)
/* 00443464 99A10003 */  lwr   $at, 3($t5)
/* 00443468 25AD000C */  addiu $t5, $t5, 0xc
/* 0044346C A9E10000 */  swl   $at, ($t7)
/* 00443470 B9E10003 */  swr   $at, 3($t7)
/* 00443474 89A1FFF8 */  lwl   $at, -8($t5)
/* 00443478 99A1FFFB */  lwr   $at, -5($t5)
/* 0044347C 25EF000C */  addiu $t7, $t7, 0xc
/* 00443480 A9E1FFF8 */  swl   $at, -8($t7)
/* 00443484 B9E1FFFB */  swr   $at, -5($t7)
/* 00443488 89A1FFFC */  lwl   $at, -4($t5)
/* 0044348C 99A1FFFF */  lwr   $at, -1($t5)
/* 00443490 00000000 */  nop   
/* 00443494 A9E1FFFC */  swl   $at, -4($t7)
/* 00443498 15ACFFF1 */  bne   $t5, $t4, .L00443460
/* 0044349C B9E1FFFF */   swr   $at, -1($t7)
/* 004434A0 89A10000 */  lwl   $at, ($t5)
/* 004434A4 99A10003 */  lwr   $at, 3($t5)
/* 004434A8 24180002 */  li    $t8, 2
/* 004434AC A9E10000 */  swl   $at, ($t7)
/* 004434B0 B9E10003 */  swr   $at, 3($t7)
/* 004434B4 89AC0004 */  lwl   $t4, 4($t5)
/* 004434B8 99AC0007 */  lwr   $t4, 7($t5)
/* 004434BC 00000000 */  nop   
/* 004434C0 A9EC0004 */  swl   $t4, 4($t7)
/* 004434C4 B9EC0007 */  swr   $t4, 7($t7)
/* 004434C8 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 004434CC 8E610000 */  lw    $at, ($s3)
/* 004434D0 8FA7000C */  lw    $a3, 0xc($sp)
/* 004434D4 8FA60008 */  lw    $a2, 8($sp)
/* 004434D8 8FA50004 */  lw    $a1, 4($sp)
/* 004434DC 8FA40000 */  lw    $a0, ($sp)
/* 004434E0 AFB80054 */  sw    $t8, 0x54($sp)
/* 004434E4 0320F809 */  jalr  $t9
/* 004434E8 AFA10050 */   sw    $at, 0x50($sp)
/* 004434EC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004434F0 1000003A */  b     .L004435DC
/* 004434F4 00000000 */   nop   
/* 004434F8 8FAB00CC */  lw    $t3, 0xcc($sp)
.L004434FC:
/* 004434FC 00000000 */  nop   
/* 00443500 8D6EFFF8 */  lw    $t6, -8($t3)
/* 00443504 00000000 */  nop   
/* 00443508 91CC0000 */  lbu   $t4, ($t6)
/* 0044350C 00000000 */  nop   
/* 00443510 15800009 */  bnez  $t4, .L00443538
/* 00443514 00000000 */   nop   
/* 00443518 8D65FFF8 */  lw    $a1, -8($t3)
/* 0044351C 8F998680 */  lw    $t9, %call16(get_sstring)($gp)
/* 00443520 02202025 */  move  $a0, $s1
/* 00443524 0320F809 */  jalr  $t9
/* 00443528 AFA50004 */   sw    $a1, 4($sp)
/* 0044352C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00443530 1000002A */  b     .L004435DC
/* 00443534 00000000 */   nop   
.L00443538:
/* 00443538 8F998070 */  lw    $t9, %got(RO_10018D30)($gp)
/* 0044353C 03A07025 */  move  $t6, $sp
/* 00443540 27398D30 */  addiu $t9, %lo(RO_10018D30) # addiu $t9, $t9, -0x72d0
/* 00443544 27380048 */  addiu $t8, $t9, 0x48
.L00443548:
/* 00443548 8B210000 */  lwl   $at, ($t9)
/* 0044354C 9B210003 */  lwr   $at, 3($t9)
/* 00443550 2739000C */  addiu $t9, $t9, 0xc
/* 00443554 A9C10000 */  swl   $at, ($t6)
/* 00443558 B9C10003 */  swr   $at, 3($t6)
/* 0044355C 8B21FFF8 */  lwl   $at, -8($t9)
/* 00443560 9B21FFFB */  lwr   $at, -5($t9)
/* 00443564 25CE000C */  addiu $t6, $t6, 0xc
/* 00443568 A9C1FFF8 */  swl   $at, -8($t6)
/* 0044356C B9C1FFFB */  swr   $at, -5($t6)
/* 00443570 8B21FFFC */  lwl   $at, -4($t9)
/* 00443574 9B21FFFF */  lwr   $at, -1($t9)
/* 00443578 00000000 */  nop   
/* 0044357C A9C1FFFC */  swl   $at, -4($t6)
/* 00443580 1738FFF1 */  bne   $t9, $t8, .L00443548
/* 00443584 B9C1FFFF */   swr   $at, -1($t6)
/* 00443588 8B210000 */  lwl   $at, ($t9)
/* 0044358C 9B210003 */  lwr   $at, 3($t9)
/* 00443590 8F8C8C68 */  lw     $t4, %got(emptystring)($gp)
/* 00443594 A9C10000 */  swl   $at, ($t6)
/* 00443598 B9C10003 */  swr   $at, 3($t6)
/* 0044359C 8B380004 */  lwl   $t8, 4($t9)
/* 004435A0 9B380007 */  lwr   $t8, 7($t9)
/* 004435A4 240D0002 */  li    $t5, 2
/* 004435A8 A9D80004 */  swl   $t8, 4($t6)
/* 004435AC B9D80007 */  swr   $t8, 7($t6)
/* 004435B0 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 004435B4 8D8C0000 */  lw    $t4, ($t4)
/* 004435B8 8FA7000C */  lw    $a3, 0xc($sp)
/* 004435BC 8FA60008 */  lw    $a2, 8($sp)
/* 004435C0 8FA50004 */  lw    $a1, 4($sp)
/* 004435C4 8FA40000 */  lw    $a0, ($sp)
/* 004435C8 AFAD0054 */  sw    $t5, 0x54($sp)
/* 004435CC 0320F809 */  jalr  $t9
/* 004435D0 AFAC0050 */   sw    $t4, 0x50($sp)
/* 004435D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004435D8 00000000 */  nop   
.L004435DC:
/* 004435DC 8F8B8AD8 */  lw     $t3, %got(__Argc)($gp)
/* 004435E0 26310001 */  addiu $s1, $s1, 1
/* 004435E4 8D6B0000 */  lw    $t3, ($t3)
/* 004435E8 00000000 */  nop   
/* 004435EC 022B082A */  slt   $at, $s1, $t3
/* 004435F0 1420FD7C */  bnez  $at, .L00442BE4
/* 004435F4 00000000 */   nop   
.L004435F8:
/* 004435F8 8F998694 */  lw    $t9, %call16(dispose)($gp)
/* 004435FC 8FA400BC */  lw    $a0, 0xbc($sp)
/* 00443600 0320F809 */  jalr  $t9
/* 00443604 24050020 */   li    $a1, 32
/* 00443608 8FAF00CC */  lw    $t7, 0xcc($sp)
/* 0044360C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00443610 8DE2FFF8 */  lw    $v0, -8($t7)
/* 00443614 00000000 */  nop   
/* 00443618 904A0000 */  lbu   $t2, ($v0)
/* 0044361C 00000000 */  nop   
/* 00443620 1540002C */  bnez  $t2, .L004436D4
/* 00443624 00000000 */   nop   
/* 00443628 8F988070 */  lw    $t8, %got(RO_10018D10)($gp)
/* 0044362C 00000000 */  nop   
/* 00443630 27188D10 */  addiu $t8, %lo(RO_10018D10) # addiu $t8, $t8, -0x72f0
/* 00443634 8B010000 */  lwl   $at, ($t8)
/* 00443638 9B010003 */  lwr   $at, 3($t8)
/* 0044363C 00000000 */  nop   
/* 00443640 A8410000 */  swl   $at, ($v0)
/* 00443644 B8410003 */  swr   $at, 3($v0)
/* 00443648 8B0E0004 */  lwl   $t6, 4($t8)
/* 0044364C 9B0E0007 */  lwr   $t6, 7($t8)
/* 00443650 00000000 */  nop   
/* 00443654 A84E0004 */  swl   $t6, 4($v0)
/* 00443658 B84E0007 */  swr   $t6, 7($v0)
/* 0044365C 8B010008 */  lwl   $at, 8($t8)
/* 00443660 9B01000B */  lwr   $at, 0xb($t8)
/* 00443664 00000000 */  nop   
/* 00443668 A8410008 */  swl   $at, 8($v0)
/* 0044366C B841000B */  swr   $at, 0xb($v0)
/* 00443670 8B0E000C */  lwl   $t6, 0xc($t8)
/* 00443674 9B0E000F */  lwr   $t6, 0xf($t8)
/* 00443678 00000000 */  nop   
/* 0044367C A84E000C */  swl   $t6, 0xc($v0)
/* 00443680 B84E000F */  swr   $t6, 0xf($v0)
/* 00443684 8B010010 */  lwl   $at, 0x10($t8)
/* 00443688 9B010013 */  lwr   $at, 0x13($t8)
/* 0044368C 00000000 */  nop   
/* 00443690 A8410010 */  swl   $at, 0x10($v0)
/* 00443694 B8410013 */  swr   $at, 0x13($v0)
/* 00443698 8B0E0014 */  lwl   $t6, 0x14($t8)
/* 0044369C 9B0E0017 */  lwr   $t6, 0x17($t8)
/* 004436A0 00000000 */  nop   
/* 004436A4 A84E0014 */  swl   $t6, 0x14($v0)
/* 004436A8 B84E0017 */  swr   $t6, 0x17($v0)
/* 004436AC 8B010018 */  lwl   $at, 0x18($t8)
/* 004436B0 9B01001B */  lwr   $at, 0x1b($t8)
/* 004436B4 00000000 */  nop   
/* 004436B8 A8410018 */  swl   $at, 0x18($v0)
/* 004436BC B841001B */  swr   $at, 0x1b($v0)
/* 004436C0 8B0E001C */  lwl   $t6, 0x1c($t8)
/* 004436C4 9B0E001F */  lwr   $t6, 0x1f($t8)
/* 004436C8 00000000 */  nop   
/* 004436CC A84E001C */  swl   $t6, 0x1c($v0)
/* 004436D0 B84E001F */  swr   $t6, 0x1f($v0)
.L004436D4:
/* 004436D4 8F8C8C08 */  lw     $t4, %got(profileflag)($gp)
/* 004436D8 00000000 */  nop   
/* 004436DC 8D8C0000 */  lw    $t4, ($t4)
/* 004436E0 00000000 */  nop   
/* 004436E4 29810002 */  slti  $at, $t4, 2
/* 004436E8 14200008 */  bnez  $at, .L0044370C
/* 004436EC 00000000 */   nop   
/* 004436F0 8F838B18 */  lw     $v1, %got(debugflag)($gp)
/* 004436F4 00000000 */  nop   
/* 004436F8 8C6D0000 */  lw    $t5, ($v1)
/* 004436FC 00000000 */  nop   
/* 00443700 1DA00002 */  bgtz  $t5, .L0044370C
/* 00443704 240B0003 */   li    $t3, 3
/* 00443708 AC6B0000 */  sw    $t3, ($v1)
.L0044370C:
/* 0044370C 8F848BC4 */  lw     $a0, %got(global_opt)($gp)
/* 00443710 8F838B18 */  lw     $v1, %got(debugflag)($gp)
/* 00443714 90820000 */  lbu   $v0, ($a0)
/* 00443718 00000000 */  nop   
/* 0044371C 10400012 */  beqz  $v0, .L00443768
/* 00443720 304D00FF */   andi  $t5, $v0, 0xff
/* 00443724 8F828B1C */  lw     $v0, %got(optflag)($gp)
/* 00443728 00000000 */  nop   
/* 0044372C 8C420000 */  lw    $v0, ($v0)
/* 00443730 00000000 */  nop   
/* 00443734 284F0002 */  slti  $t7, $v0, 2
/* 00443738 39E20001 */  xori  $v0, $t7, 1
/* 0044373C 1040000A */  beqz  $v0, .L00443768
/* 00443740 304D00FF */   andi  $t5, $v0, 0xff
/* 00443744 8C6A0000 */  lw    $t2, ($v1)
/* 00443748 3C019000 */  lui   $at, 0x9000
/* 0044374C 2D590020 */  sltiu $t9, $t2, 0x20
/* 00443750 0019C023 */  negu  $t8, $t9
/* 00443754 03017024 */  and   $t6, $t8, $at
/* 00443758 014E1004 */  sllv  $v0, $t6, $t2
/* 0044375C 284C0000 */  slti  $t4, $v0, 0
/* 00443760 01801025 */  move  $v0, $t4
/* 00443764 304D00FF */  andi  $t5, $v0, 0xff
.L00443768:
/* 00443768 15A0000D */  bnez  $t5, .L004437A0
/* 0044376C A0820000 */   sb    $v0, ($a0)
/* 00443770 8F818BEC */  lw     $at, %got(peep_opt)($gp)
/* 00443774 00000000 */  nop   
/* 00443778 A0200000 */  sb    $zero, ($at)
/* 0044377C 8F818C30 */  lw     $at, %got(symregs_opt)($gp)
/* 00443780 00000000 */  nop   
/* 00443784 A0200000 */  sb    $zero, ($at)
/* 00443788 8F818C34 */  lw     $at, %got(swpipe_opt)($gp)
/* 0044378C 00000000 */  nop   
/* 00443790 A0200000 */  sb    $zero, ($at)
/* 00443794 8F818B38 */  lw     $at, %got(xbb_opt)($gp)
/* 00443798 00000000 */  nop   
/* 0044379C A0200000 */  sb    $zero, ($at)
.L004437A0:
/* 004437A0 8F9983D4 */  lw    $t9, %call16(init_reorg_state)($gp)
/* 004437A4 02A02025 */  move  $a0, $s5
/* 004437A8 0320F809 */  jalr  $t9
/* 004437AC 00000000 */   nop   
/* 004437B0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004437B4 241807FE */  li    $t8, 2046
/* 004437B8 8F8B8B14 */  lw     $t3, %got(bigendian)($gp)
/* 004437BC 8F8F8C3C */  lw     $t7, %got(isbigendianhost)($gp)
/* 004437C0 916B0000 */  lbu   $t3, ($t3)
/* 004437C4 91EF0000 */  lbu   $t7, ($t7)
/* 004437C8 8F818AE8 */  lw     $at, %got(sexchange)($gp)
/* 004437CC 016FC826 */  xor   $t9, $t3, $t7
/* 004437D0 0019C82B */  sltu  $t9, $zero, $t9
/* 004437D4 A0390000 */  sb    $t9, ($at)
/* 004437D8 8F838D28 */  lw     $v1, %got(br_always_ops)($gp)
/* 004437DC 8F878D2C */  lw     $a3, %got(br_likely_ops)($gp)
/* 004437E0 3C0BFF81 */  lui   $t3, 0xff81
/* 004437E4 8F818D30 */  lw     $at, %got(branchops)($gp)
/* 004437E8 3C0E001E */  lui   $t6, 0x1e
/* 004437EC 240A0001 */  li    $t2, 1
/* 004437F0 3C0C8000 */  lui   $t4, 0x8000
/* 004437F4 356BE000 */  ori   $t3, $t3, 0xe000
/* 004437F8 240D0001 */  li    $t5, 1
/* 004437FC AC6C0028 */  sw    $t4, 0x28($v1)
/* 00443800 AC6A0024 */  sw    $t2, 0x24($v1)
/* 00443804 AC6E0008 */  sw    $t6, 8($v1)
/* 00443808 AC600000 */  sw    $zero, ($v1)
/* 0044380C AC780004 */  sw    $t8, 4($v1)
/* 00443810 AC60000C */  sw    $zero, 0xc($v1)
/* 00443814 AC600010 */  sw    $zero, 0x10($v1)
/* 00443818 AC600014 */  sw    $zero, 0x14($v1)
/* 0044381C AC600018 */  sw    $zero, 0x18($v1)
/* 00443820 AC60001C */  sw    $zero, 0x1c($v1)
/* 00443824 AC600020 */  sw    $zero, 0x20($v1)
/* 00443828 ACED0004 */  sw    $t5, 4($a3)
/* 0044382C ACEB0008 */  sw    $t3, 8($a3)
/* 00443830 ACE00000 */  sw    $zero, ($a3)
/* 00443834 ACE0000C */  sw    $zero, 0xc($a3)
/* 00443838 ACE00010 */  sw    $zero, 0x10($a3)
/* 0044383C ACE00014 */  sw    $zero, 0x14($a3)
/* 00443840 ACE00018 */  sw    $zero, 0x18($a3)
/* 00443844 ACE0001C */  sw    $zero, 0x1c($a3)
/* 00443848 ACE00020 */  sw    $zero, 0x20($a3)
/* 0044384C ACE00024 */  sw    $zero, 0x24($a3)
/* 00443850 ACE00028 */  sw    $zero, 0x28($a3)
/* 00443854 AC200000 */  sw    $zero, ($at)
/* 00443858 8C6E0004 */  lw    $t6, 4($v1)
/* 0044385C 8CEA0004 */  lw    $t2, 4($a3)
/* 00443860 8F818D30 */  lw     $at, %got(branchops)($gp)
/* 00443864 01CA6025 */  or    $t4, $t6, $t2
/* 00443868 AC2C0004 */  sw    $t4, 4($at)
/* 0044386C 8C6D0008 */  lw    $t5, 8($v1)
/* 00443870 8CEB0008 */  lw    $t3, 8($a3)
/* 00443874 8F818D30 */  lw     $at, %got(branchops)($gp)
/* 00443878 01AB7825 */  or    $t7, $t5, $t3
/* 0044387C AC2F0008 */  sw    $t7, 8($at)
/* 00443880 8C79000C */  lw    $t9, 0xc($v1)
/* 00443884 8CF8000C */  lw    $t8, 0xc($a3)
/* 00443888 8F818D30 */  lw     $at, %got(branchops)($gp)
/* 0044388C 03387025 */  or    $t6, $t9, $t8
/* 00443890 AC2E000C */  sw    $t6, 0xc($at)
/* 00443894 8C6A0010 */  lw    $t2, 0x10($v1)
/* 00443898 8CEC0010 */  lw    $t4, 0x10($a3)
/* 0044389C 8F818D30 */  lw     $at, %got(branchops)($gp)
/* 004438A0 014C6825 */  or    $t5, $t2, $t4
/* 004438A4 AC2D0010 */  sw    $t5, 0x10($at)
/* 004438A8 8C6B0014 */  lw    $t3, 0x14($v1)
/* 004438AC 8CEF0014 */  lw    $t7, 0x14($a3)
/* 004438B0 8F818D30 */  lw     $at, %got(branchops)($gp)
/* 004438B4 016FC825 */  or    $t9, $t3, $t7
/* 004438B8 AC390014 */  sw    $t9, 0x14($at)
/* 004438BC 8C780018 */  lw    $t8, 0x18($v1)
/* 004438C0 8CEE0018 */  lw    $t6, 0x18($a3)
/* 004438C4 8F818D30 */  lw     $at, %got(branchops)($gp)
/* 004438C8 030E5025 */  or    $t2, $t8, $t6
/* 004438CC AC2A0018 */  sw    $t2, 0x18($at)
/* 004438D0 8C6C001C */  lw    $t4, 0x1c($v1)
/* 004438D4 8CED001C */  lw    $t5, 0x1c($a3)
/* 004438D8 8F818D30 */  lw     $at, %got(branchops)($gp)
/* 004438DC 018D5825 */  or    $t3, $t4, $t5
/* 004438E0 AC2B001C */  sw    $t3, 0x1c($at)
/* 004438E4 8C6F0020 */  lw    $t7, 0x20($v1)
/* 004438E8 8CF90020 */  lw    $t9, 0x20($a3)
/* 004438EC 8F818D30 */  lw     $at, %got(branchops)($gp)
/* 004438F0 01F9C025 */  or    $t8, $t7, $t9
/* 004438F4 AC380020 */  sw    $t8, 0x20($at)
/* 004438F8 8C6E0024 */  lw    $t6, 0x24($v1)
/* 004438FC 8CEA0024 */  lw    $t2, 0x24($a3)
/* 00443900 8F818D30 */  lw     $at, %got(branchops)($gp)
/* 00443904 01CA6025 */  or    $t4, $t6, $t2
/* 00443908 AC2C0024 */  sw    $t4, 0x24($at)
/* 0044390C 8C6D0028 */  lw    $t5, 0x28($v1)
/* 00443910 8CEB0028 */  lw    $t3, 0x28($a3)
/* 00443914 8F818D30 */  lw     $at, %got(branchops)($gp)
/* 00443918 01AB7825 */  or    $t7, $t5, $t3
/* 0044391C AC2F0028 */  sw    $t7, 0x28($at)
/* 00443920 8F818D50 */  lw     $at, %got(storeops)($gp)
/* 00443924 3C190007 */  lui   $t9, 7
/* 00443928 AC200000 */  sw    $zero, ($at)
/* 0044392C 8F818D50 */  lw     $at, %got(storeops)($gp)
/* 00443930 3739C726 */  ori   $t9, $t9, 0xc726
/* 00443934 AC200004 */  sw    $zero, 4($at)
/* 00443938 8F818D50 */  lw     $at, %got(storeops)($gp)
/* 0044393C 3C183A00 */  lui   $t8, 0x3a00
/* 00443940 AC200008 */  sw    $zero, 8($at)
/* 00443944 8F818D50 */  lw     $at, %got(storeops)($gp)
/* 00443948 3C0E1000 */  lui   $t6, 0x1000
/* 0044394C AC39000C */  sw    $t9, 0xc($at)
/* 00443950 8F818D50 */  lw     $at, %got(storeops)($gp)
/* 00443954 3C0A0700 */  lui   $t2, 0x700
/* 00443958 AC380010 */  sw    $t8, 0x10($at)
/* 0044395C 8F818D50 */  lw     $at, %got(storeops)($gp)
/* 00443960 354AFFFF */  ori   $t2, $t2, 0xffff
/* 00443964 AC200014 */  sw    $zero, 0x14($at)
/* 00443968 8F818D50 */  lw     $at, %got(storeops)($gp)
/* 0044396C 240CF800 */  li    $t4, -2048
/* 00443970 AC200018 */  sw    $zero, 0x18($at)
/* 00443974 8F818D50 */  lw     $at, %got(storeops)($gp)
/* 00443978 3C0D01E0 */  lui   $t5, 0x1e0
/* 0044397C AC20001C */  sw    $zero, 0x1c($at)
/* 00443980 8F818D50 */  lw     $at, %got(storeops)($gp)
/* 00443984 240B0F80 */  li    $t3, 3968
/* 00443988 AC200020 */  sw    $zero, 0x20($at)
/* 0044398C 8F818D50 */  lw     $at, %got(storeops)($gp)
/* 00443990 240F0003 */  li    $t7, 3
/* 00443994 AC200024 */  sw    $zero, 0x24($at)
/* 00443998 8F818D50 */  lw     $at, %got(storeops)($gp)
/* 0044399C 3C19F000 */  lui   $t9, 0xf000
/* 004439A0 AC2E0028 */  sw    $t6, 0x28($at)
/* 004439A4 8F818D34 */  lw     $at, %got(alu3ops)($gp)
/* 004439A8 2418FFFF */  li    $t8, -1
/* 004439AC AC2A0000 */  sw    $t2, ($at)
/* 004439B0 8F818D34 */  lw     $at, %got(alu3ops)($gp)
/* 004439B4 240EFFFF */  li    $t6, -1
/* 004439B8 AC2C0004 */  sw    $t4, 4($at)
/* 004439BC 8F818D34 */  lw     $at, %got(alu3ops)($gp)
/* 004439C0 240AF01F */  li    $t2, -4065
/* 004439C4 AC200008 */  sw    $zero, 8($at)
/* 004439C8 8F818D34 */  lw     $at, %got(alu3ops)($gp)
/* 004439CC 240CFFEF */  li    $t4, -17
/* 004439D0 AC20000C */  sw    $zero, 0xc($at)
/* 004439D4 8F818D34 */  lw     $at, %got(alu3ops)($gp)
/* 004439D8 00000000 */  nop   
/* 004439DC AC2D0010 */  sw    $t5, 0x10($at)
/* 004439E0 8F818D34 */  lw     $at, %got(alu3ops)($gp)
/* 004439E4 240DF000 */  li    $t5, -4096
/* 004439E8 AC200014 */  sw    $zero, 0x14($at)
/* 004439EC 8F818D34 */  lw     $at, %got(alu3ops)($gp)
/* 004439F0 00000000 */  nop   
/* 004439F4 AC200018 */  sw    $zero, 0x18($at)
/* 004439F8 8F818D34 */  lw     $at, %got(alu3ops)($gp)
/* 004439FC 00000000 */  nop   
/* 00443A00 AC20001C */  sw    $zero, 0x1c($at)
/* 00443A04 8F818D34 */  lw     $at, %got(alu3ops)($gp)
/* 00443A08 00000000 */  nop   
/* 00443A0C AC200020 */  sw    $zero, 0x20($at)
/* 00443A10 8F818D34 */  lw     $at, %got(alu3ops)($gp)
/* 00443A14 00000000 */  nop   
/* 00443A18 AC2B0024 */  sw    $t3, 0x24($at)
/* 00443A1C 8F818D34 */  lw     $at, %got(alu3ops)($gp)
/* 00443A20 3C0B001F */  lui   $t3, 0x1f
/* 00443A24 AC200028 */  sw    $zero, 0x28($at)
/* 00443A28 8F818D38 */  lw     $at, %got(trapops)($gp)
/* 00443A2C 356BE07E */  ori   $t3, $t3, 0xe07e
/* 00443A30 AC2F0000 */  sw    $t7, ($at)
/* 00443A34 8F818D38 */  lw     $at, %got(trapops)($gp)
/* 00443A38 240F0F00 */  li    $t7, 3840
/* 00443A3C AC390004 */  sw    $t9, 4($at)
/* 00443A40 8F818D38 */  lw     $at, %got(trapops)($gp)
/* 00443A44 3C190FF0 */  lui   $t9, 0xff0
/* 00443A48 AC200008 */  sw    $zero, 8($at)
/* 00443A4C 8F818D38 */  lw     $at, %got(trapops)($gp)
/* 00443A50 00000000 */  nop   
/* 00443A54 AC20000C */  sw    $zero, 0xc($at)
/* 00443A58 8F818D38 */  lw     $at, %got(trapops)($gp)
/* 00443A5C 00000000 */  nop   
/* 00443A60 AC200010 */  sw    $zero, 0x10($at)
/* 00443A64 8F818D38 */  lw     $at, %got(trapops)($gp)
/* 00443A68 00000000 */  nop   
/* 00443A6C AC200014 */  sw    $zero, 0x14($at)
/* 00443A70 8F818D38 */  lw     $at, %got(trapops)($gp)
/* 00443A74 00000000 */  nop   
/* 00443A78 AC200018 */  sw    $zero, 0x18($at)
/* 00443A7C 8F818D38 */  lw     $at, %got(trapops)($gp)
/* 00443A80 00000000 */  nop   
/* 00443A84 AC20001C */  sw    $zero, 0x1c($at)
/* 00443A88 8F818D38 */  lw     $at, %got(trapops)($gp)
/* 00443A8C 00000000 */  nop   
/* 00443A90 AC200020 */  sw    $zero, 0x20($at)
/* 00443A94 8F818D38 */  lw     $at, %got(trapops)($gp)
/* 00443A98 00000000 */  nop   
/* 00443A9C AC200024 */  sw    $zero, 0x24($at)
/* 00443AA0 8F818D38 */  lw     $at, %got(trapops)($gp)
/* 00443AA4 00000000 */  nop   
/* 00443AA8 AC200028 */  sw    $zero, 0x28($at)
/* 00443AAC 8F818D3C */  lw     $at, %got(fpops)($gp)
/* 00443AB0 00000000 */  nop   
/* 00443AB4 AC200000 */  sw    $zero, ($at)
/* 00443AB8 8F818D3C */  lw     $at, %got(fpops)($gp)
/* 00443ABC 00000000 */  nop   
/* 00443AC0 AC200004 */  sw    $zero, 4($at)
/* 00443AC4 8F818D3C */  lw     $at, %got(fpops)($gp)
/* 00443AC8 00000000 */  nop   
/* 00443ACC AC200008 */  sw    $zero, 8($at)
/* 00443AD0 8F818D3C */  lw     $at, %got(fpops)($gp)
/* 00443AD4 00000000 */  nop   
/* 00443AD8 AC20000C */  sw    $zero, 0xc($at)
/* 00443ADC 8F818D3C */  lw     $at, %got(fpops)($gp)
/* 00443AE0 00000000 */  nop   
/* 00443AE4 AC200010 */  sw    $zero, 0x10($at)
/* 00443AE8 8F818D3C */  lw     $at, %got(fpops)($gp)
/* 00443AEC 00000000 */  nop   
/* 00443AF0 AC380014 */  sw    $t8, 0x14($at)
/* 00443AF4 8F818D3C */  lw     $at, %got(fpops)($gp)
/* 00443AF8 24180003 */  li    $t8, 3
/* 00443AFC AC2E0018 */  sw    $t6, 0x18($at)
/* 00443B00 8F818D3C */  lw     $at, %got(fpops)($gp)
/* 00443B04 3C0EF000 */  lui   $t6, 0xf000
/* 00443B08 AC2A001C */  sw    $t2, 0x1c($at)
/* 00443B0C 8F818D3C */  lw     $at, %got(fpops)($gp)
/* 00443B10 35CE0001 */  ori   $t6, $t6, 1
/* 00443B14 AC2C0020 */  sw    $t4, 0x20($at)
/* 00443B18 8F818D3C */  lw     $at, %got(fpops)($gp)
/* 00443B1C 3C0AFF81 */  lui   $t2, 0xff81
/* 00443B20 AC2D0024 */  sw    $t5, 0x24($at)
/* 00443B24 8F818D3C */  lw     $at, %got(fpops)($gp)
/* 00443B28 354AE01F */  ori   $t2, $t2, 0xe01f
/* 00443B2C AC200028 */  sw    $zero, 0x28($at)
/* 00443B30 8F818D40 */  lw     $at, %got(c0123_moves)($gp)
/* 00443B34 3C0C8000 */  lui   $t4, 0x8000
/* 00443B38 AC200000 */  sw    $zero, ($at)
/* 00443B3C 8F818D40 */  lw     $at, %got(c0123_moves)($gp)
/* 00443B40 358C241E */  ori   $t4, $t4, 0x241e
/* 00443B44 AC200004 */  sw    $zero, 4($at)
/* 00443B48 8F818D40 */  lw     $at, %got(c0123_moves)($gp)
/* 00443B4C 240D0001 */  li    $t5, 1
/* 00443B50 AC200008 */  sw    $zero, 8($at)
/* 00443B54 8F818D40 */  lw     $at, %got(c0123_moves)($gp)
/* 00443B58 00000000 */  nop   
/* 00443B5C AC20000C */  sw    $zero, 0xc($at)
/* 00443B60 8F818D40 */  lw     $at, %got(c0123_moves)($gp)
/* 00443B64 00000000 */  nop   
/* 00443B68 AC2B0010 */  sw    $t3, 0x10($at)
/* 00443B6C 8F818D40 */  lw     $at, %got(c0123_moves)($gp)
/* 00443B70 240B0010 */  li    $t3, 16
/* 00443B74 AC200014 */  sw    $zero, 0x14($at)
/* 00443B78 8F818D40 */  lw     $at, %got(c0123_moves)($gp)
/* 00443B7C 00000000 */  nop   
/* 00443B80 AC200018 */  sw    $zero, 0x18($at)
/* 00443B84 8F818D40 */  lw     $at, %got(c0123_moves)($gp)
/* 00443B88 00000000 */  nop   
/* 00443B8C AC2F001C */  sw    $t7, 0x1c($at)
/* 00443B90 8F818D40 */  lw     $at, %got(c0123_moves)($gp)
/* 00443B94 3C0F0FFF */  lui   $t7, 0xfff
/* 00443B98 AC200020 */  sw    $zero, 0x20($at)
/* 00443B9C 8F818D40 */  lw     $at, %got(c0123_moves)($gp)
/* 00443BA0 35EFF800 */  ori   $t7, $t7, 0xf800
/* 00443BA4 AC200024 */  sw    $zero, 0x24($at)
/* 00443BA8 8F818D40 */  lw     $at, %got(c0123_moves)($gp)
/* 00443BAC 00000000 */  nop   
/* 00443BB0 AC390028 */  sw    $t9, 0x28($at)
/* 00443BB4 8F818D44 */  lw     $at, %got(mark2ops)($gp)
/* 00443BB8 3C196000 */  lui   $t9, 0x6000
/* 00443BBC AC380000 */  sw    $t8, ($at)
/* 00443BC0 8F818D44 */  lw     $at, %got(mark2ops)($gp)
/* 00443BC4 373900E1 */  ori   $t9, $t9, 0xe1
/* 00443BC8 AC2E0004 */  sw    $t6, 4($at)
/* 00443BCC 8F818D44 */  lw     $at, %got(mark2ops)($gp)
/* 00443BD0 3C18F800 */  lui   $t8, 0xf800
/* 00443BD4 AC2A0008 */  sw    $t2, 8($at)
/* 00443BD8 8F818D44 */  lw     $at, %got(mark2ops)($gp)
/* 00443BDC 3718007E */  ori   $t8, $t8, 0x7e
/* 00443BE0 AC2C000C */  sw    $t4, 0xc($at)
/* 00443BE4 8F818D44 */  lw     $at, %got(mark2ops)($gp)
/* 00443BE8 3C0E01FF */  lui   $t6, 0x1ff
/* 00443BEC AC2D0010 */  sw    $t5, 0x10($at)
/* 00443BF0 8F818D44 */  lw     $at, %got(mark2ops)($gp)
/* 00443BF4 35CEFFE0 */  ori   $t6, $t6, 0xffe0
/* 00443BF8 AC200014 */  sw    $zero, 0x14($at)
/* 00443BFC 8F818D44 */  lw     $at, %got(mark2ops)($gp)
/* 00443C00 00000000 */  nop   
/* 00443C04 AC200018 */  sw    $zero, 0x18($at)
/* 00443C08 8F818D44 */  lw     $at, %got(mark2ops)($gp)
/* 00443C0C 00000000 */  nop   
/* 00443C10 AC20001C */  sw    $zero, 0x1c($at)
/* 00443C14 8F818D44 */  lw     $at, %got(mark2ops)($gp)
/* 00443C18 00000000 */  nop   
/* 00443C1C AC2B0020 */  sw    $t3, 0x20($at)
/* 00443C20 8F818D44 */  lw     $at, %got(mark2ops)($gp)
/* 00443C24 00000000 */  nop   
/* 00443C28 AC200024 */  sw    $zero, 0x24($at)
/* 00443C2C 8F818D44 */  lw     $at, %got(mark2ops)($gp)
/* 00443C30 00000000 */  nop   
/* 00443C34 AC200028 */  sw    $zero, 0x28($at)
/* 00443C38 8F818D48 */  lw     $at, %got(mark3ops)($gp)
/* 00443C3C 00000000 */  nop   
/* 00443C40 AC200000 */  sw    $zero, ($at)
/* 00443C44 8F818D48 */  lw     $at, %got(mark3ops)($gp)
/* 00443C48 00000000 */  nop   
/* 00443C4C AC2F0004 */  sw    $t7, 4($at)
/* 00443C50 8F818D48 */  lw     $at, %got(mark3ops)($gp)
/* 00443C54 00000000 */  nop   
/* 00443C58 AC200008 */  sw    $zero, 8($at)
/* 00443C5C 8F818D48 */  lw     $at, %got(mark3ops)($gp)
/* 00443C60 00000000 */  nop   
/* 00443C64 AC39000C */  sw    $t9, 0xc($at)
/* 00443C68 8F818D48 */  lw     $at, %got(mark3ops)($gp)
/* 00443C6C 00000000 */  nop   
/* 00443C70 AC380010 */  sw    $t8, 0x10($at)
/* 00443C74 8F818D48 */  lw     $at, %got(mark3ops)($gp)
/* 00443C78 00000000 */  nop   
/* 00443C7C AC200014 */  sw    $zero, 0x14($at)
/* 00443C80 8F818D48 */  lw     $at, %got(mark3ops)($gp)
/* 00443C84 00000000 */  nop   
/* 00443C88 AC200018 */  sw    $zero, 0x18($at)
/* 00443C8C 8F818D48 */  lw     $at, %got(mark3ops)($gp)
/* 00443C90 00000000 */  nop   
/* 00443C94 AC20001C */  sw    $zero, 0x1c($at)
/* 00443C98 8F818D48 */  lw     $at, %got(mark3ops)($gp)
/* 00443C9C 00000000 */  nop   
/* 00443CA0 AC2E0020 */  sw    $t6, 0x20($at)
/* 00443CA4 8F818D48 */  lw     $at, %got(mark3ops)($gp)
/* 00443CA8 3C0A01E0 */  lui   $t2, 0x1e0
/* 00443CAC AC200024 */  sw    $zero, 0x24($at)
/* 00443CB0 8F818D48 */  lw     $at, %got(mark3ops)($gp)
/* 00443CB4 240C000F */  li    $t4, 15
/* 00443CB8 AC200028 */  sw    $zero, 0x28($at)
/* 00443CBC 8F818D4C */  lw     $at, %got(mark4ops)($gp)
/* 00443CC0 240DFF8E */  li    $t5, -114
/* 00443CC4 AC200000 */  sw    $zero, ($at)
/* 00443CC8 8F818D4C */  lw     $at, %got(mark4ops)($gp)
/* 00443CCC 3C0B00F0 */  lui   $t3, 0xf0
/* 00443CD0 AC200004 */  sw    $zero, 4($at)
/* 00443CD4 8F818D4C */  lw     $at, %got(mark4ops)($gp)
/* 00443CD8 3C0F0005 */  lui   $t7, 5
/* 00443CDC AC200008 */  sw    $zero, 8($at)
/* 00443CE0 8F818D4C */  lw     $at, %got(mark4ops)($gp)
/* 00443CE4 35EFF000 */  ori   $t7, $t7, 0xf000
/* 00443CE8 AC20000C */  sw    $zero, 0xc($at)
/* 00443CEC 8F818D4C */  lw     $at, %got(mark4ops)($gp)
/* 00443CF0 24197800 */  li    $t9, 30720
/* 00443CF4 AC2A0010 */  sw    $t2, 0x10($at)
/* 00443CF8 8F818D4C */  lw     $at, %got(mark4ops)($gp)
/* 00443CFC 24180060 */  li    $t8, 96
/* 00443D00 AC200014 */  sw    $zero, 0x14($at)
/* 00443D04 8F818D4C */  lw     $at, %got(mark4ops)($gp)
/* 00443D08 3C0E1000 */  lui   $t6, 0x1000
/* 00443D0C AC200018 */  sw    $zero, 0x18($at)
/* 00443D10 8F818D4C */  lw     $at, %got(mark4ops)($gp)
/* 00443D14 3C0A0011 */  lui   $t2, 0x11
/* 00443D18 AC20001C */  sw    $zero, 0x1c($at)
/* 00443D1C 8F818D4C */  lw     $at, %got(mark4ops)($gp)
/* 00443D20 354A0F19 */  ori   $t2, $t2, 0xf19
/* 00443D24 AC2C0020 */  sw    $t4, 0x20($at)
/* 00443D28 8F818D4C */  lw     $at, %got(mark4ops)($gp)
/* 00443D2C 240C0076 */  li    $t4, 118
/* 00443D30 AC2D0024 */  sw    $t5, 0x24($at)
/* 00443D34 8F818D4C */  lw     $at, %got(mark4ops)($gp)
/* 00443D38 3C0D00F0 */  lui   $t5, 0xf0
/* 00443D3C AC2B0028 */  sw    $t3, 0x28($at)
/* 00443D40 8F818D54 */  lw     $at, %got(hilo_defs)($gp)
/* 00443D44 240B0001 */  li    $t3, 1
/* 00443D48 AC2F0000 */  sw    $t7, ($at)
/* 00443D4C 8F818D54 */  lw     $at, %got(hilo_defs)($gp)
/* 00443D50 3C0FFF00 */  lui   $t7, 0xff00
/* 00443D54 AC390004 */  sw    $t9, 4($at)
/* 00443D58 8F818D54 */  lw     $at, %got(hilo_defs)($gp)
/* 00443D5C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00443D60 AC200008 */  sw    $zero, 8($at)
/* 00443D64 8F818D54 */  lw     $at, %got(hilo_defs)($gp)
/* 00443D68 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00443D6C AC20000C */  sw    $zero, 0xc($at)
/* 00443D70 8F818D54 */  lw     $at, %got(hilo_defs)($gp)
/* 00443D74 00002025 */  move  $a0, $zero
/* 00443D78 AC200010 */  sw    $zero, 0x10($at)
/* 00443D7C 8F818D54 */  lw     $at, %got(hilo_defs)($gp)
/* 00443D80 24050004 */  li    $a1, 4
/* 00443D84 AC200014 */  sw    $zero, 0x14($at)
/* 00443D88 8F818D54 */  lw     $at, %got(hilo_defs)($gp)
/* 00443D8C 00003025 */  move  $a2, $zero
/* 00443D90 AC200018 */  sw    $zero, 0x18($at)
/* 00443D94 8F818D54 */  lw     $at, %got(hilo_defs)($gp)
/* 00443D98 02401025 */  move  $v0, $s2
/* 00443D9C AC20001C */  sw    $zero, 0x1c($at)
/* 00443DA0 8F818D54 */  lw     $at, %got(hilo_defs)($gp)
/* 00443DA4 00000000 */  nop   
/* 00443DA8 AC200020 */  sw    $zero, 0x20($at)
/* 00443DAC 8F818D54 */  lw     $at, %got(hilo_defs)($gp)
/* 00443DB0 00000000 */  nop   
/* 00443DB4 AC200024 */  sw    $zero, 0x24($at)
/* 00443DB8 8F818D54 */  lw     $at, %got(hilo_defs)($gp)
/* 00443DBC 00000000 */  nop   
/* 00443DC0 AC200028 */  sw    $zero, 0x28($at)
/* 00443DC4 8F818D58 */  lw     $at, %got(c0_ops)($gp)
/* 00443DC8 00000000 */  nop   
/* 00443DCC AC200000 */  sw    $zero, ($at)
/* 00443DD0 8F818D58 */  lw     $at, %got(c0_ops)($gp)
/* 00443DD4 00000000 */  nop   
/* 00443DD8 AC380004 */  sw    $t8, 4($at)
/* 00443DDC 8F818D58 */  lw     $at, %got(c0_ops)($gp)
/* 00443DE0 00000000 */  nop   
/* 00443DE4 AC200008 */  sw    $zero, 8($at)
/* 00443DE8 8F818D58 */  lw     $at, %got(c0_ops)($gp)
/* 00443DEC 00000000 */  nop   
/* 00443DF0 AC2E000C */  sw    $t6, 0xc($at)
/* 00443DF4 8F818D58 */  lw     $at, %got(c0_ops)($gp)
/* 00443DF8 00000000 */  nop   
/* 00443DFC AC2A0010 */  sw    $t2, 0x10($at)
/* 00443E00 8F818D58 */  lw     $at, %got(c0_ops)($gp)
/* 00443E04 00000000 */  nop   
/* 00443E08 AC200014 */  sw    $zero, 0x14($at)
/* 00443E0C 8F818D58 */  lw     $at, %got(c0_ops)($gp)
/* 00443E10 00000000 */  nop   
/* 00443E14 AC200018 */  sw    $zero, 0x18($at)
/* 00443E18 8F818D58 */  lw     $at, %got(c0_ops)($gp)
/* 00443E1C 00000000 */  nop   
/* 00443E20 AC20001C */  sw    $zero, 0x1c($at)
/* 00443E24 8F818D58 */  lw     $at, %got(c0_ops)($gp)
/* 00443E28 00000000 */  nop   
/* 00443E2C AC200020 */  sw    $zero, 0x20($at)
/* 00443E30 8F818D58 */  lw     $at, %got(c0_ops)($gp)
/* 00443E34 00000000 */  nop   
/* 00443E38 AC2C0024 */  sw    $t4, 0x24($at)
/* 00443E3C 8F818D58 */  lw     $at, %got(c0_ops)($gp)
/* 00443E40 00000000 */  nop   
/* 00443E44 AC2D0028 */  sw    $t5, 0x28($at)
/* 00443E48 8F818DC0 */  lw     $at, %got(c3_ops)($gp)
/* 00443E4C 00000000 */  nop   
/* 00443E50 AC200000 */  sw    $zero, ($at)
/* 00443E54 8F818DC0 */  lw     $at, %got(c3_ops)($gp)
/* 00443E58 00000000 */  nop   
/* 00443E5C AC200004 */  sw    $zero, 4($at)
/* 00443E60 8F818DC0 */  lw     $at, %got(c3_ops)($gp)
/* 00443E64 00000000 */  nop   
/* 00443E68 AC200008 */  sw    $zero, 8($at)
/* 00443E6C 8F818DC0 */  lw     $at, %got(c3_ops)($gp)
/* 00443E70 00000000 */  nop   
/* 00443E74 AC20000C */  sw    $zero, 0xc($at)
/* 00443E78 8F818DC0 */  lw     $at, %got(c3_ops)($gp)
/* 00443E7C 00000000 */  nop   
/* 00443E80 AC200010 */  sw    $zero, 0x10($at)
/* 00443E84 8F818DC0 */  lw     $at, %got(c3_ops)($gp)
/* 00443E88 00000000 */  nop   
/* 00443E8C AC200014 */  sw    $zero, 0x14($at)
/* 00443E90 8F818DC0 */  lw     $at, %got(c3_ops)($gp)
/* 00443E94 00000000 */  nop   
/* 00443E98 AC200018 */  sw    $zero, 0x18($at)
/* 00443E9C 8F818DC0 */  lw     $at, %got(c3_ops)($gp)
/* 00443EA0 00000000 */  nop   
/* 00443EA4 AC20001C */  sw    $zero, 0x1c($at)
/* 00443EA8 8F818DC0 */  lw     $at, %got(c3_ops)($gp)
/* 00443EAC 00000000 */  nop   
/* 00443EB0 AC200020 */  sw    $zero, 0x20($at)
/* 00443EB4 8F818DC0 */  lw     $at, %got(c3_ops)($gp)
/* 00443EB8 00000000 */  nop   
/* 00443EBC AC2B0024 */  sw    $t3, 0x24($at)
/* 00443EC0 8F818DC0 */  lw     $at, %got(c3_ops)($gp)
/* 00443EC4 0320F809 */  jalr  $t9
/* 00443EC8 AC2F0028 */   sw    $t7, 0x28($at)
/* 00443ECC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00443ED0 24040001 */  li    $a0, 1
/* 00443ED4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00443ED8 24050003 */  li    $a1, 3
/* 00443EDC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00443EE0 24060014 */  li    $a2, 20
/* 00443EE4 0320F809 */  jalr  $t9
/* 00443EE8 02401025 */   move  $v0, $s2
/* 00443EEC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00443EF0 24040002 */  li    $a0, 2
/* 00443EF4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00443EF8 24050003 */  li    $a1, 3
/* 00443EFC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00443F00 24060015 */  li    $a2, 21
/* 00443F04 0320F809 */  jalr  $t9
/* 00443F08 02401025 */   move  $v0, $s2
/* 00443F0C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00443F10 240400EE */  li    $a0, 238
/* 00443F14 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00443F18 24050003 */  li    $a1, 3
/* 00443F1C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00443F20 24060015 */  li    $a2, 21
/* 00443F24 0320F809 */  jalr  $t9
/* 00443F28 02401025 */   move  $v0, $s2
/* 00443F2C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00443F30 24040003 */  li    $a0, 3
/* 00443F34 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00443F38 24050003 */  li    $a1, 3
/* 00443F3C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00443F40 24060018 */  li    $a2, 24
/* 00443F44 0320F809 */  jalr  $t9
/* 00443F48 02401025 */   move  $v0, $s2
/* 00443F4C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00443F50 24040004 */  li    $a0, 4
/* 00443F54 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00443F58 24050008 */  li    $a1, 8
/* 00443F5C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00443F60 00003025 */  move  $a2, $zero
/* 00443F64 0320F809 */  jalr  $t9
/* 00443F68 02401025 */   move  $v0, $s2
/* 00443F6C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00443F70 24040005 */  li    $a0, 5
/* 00443F74 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00443F78 24050008 */  li    $a1, 8
/* 00443F7C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00443F80 24060039 */  li    $a2, 57
/* 00443F84 0320F809 */  jalr  $t9
/* 00443F88 02401025 */   move  $v0, $s2
/* 00443F8C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00443F90 24040006 */  li    $a0, 6
/* 00443F94 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00443F98 24050008 */  li    $a1, 8
/* 00443F9C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00443FA0 2406003A */  li    $a2, 58
/* 00443FA4 0320F809 */  jalr  $t9
/* 00443FA8 02401025 */   move  $v0, $s2
/* 00443FAC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00443FB0 24040007 */  li    $a0, 7
/* 00443FB4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00443FB8 24050008 */  li    $a1, 8
/* 00443FBC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00443FC0 2406003B */  li    $a2, 59
/* 00443FC4 0320F809 */  jalr  $t9
/* 00443FC8 02401025 */   move  $v0, $s2
/* 00443FCC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00443FD0 24040008 */  li    $a0, 8
/* 00443FD4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00443FD8 24050008 */  li    $a1, 8
/* 00443FDC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00443FE0 2406003C */  li    $a2, 60
/* 00443FE4 0320F809 */  jalr  $t9
/* 00443FE8 02401025 */   move  $v0, $s2
/* 00443FEC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00443FF0 24040009 */  li    $a0, 9
/* 00443FF4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00443FF8 24050008 */  li    $a1, 8
/* 00443FFC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444000 2406003D */  li    $a2, 61
/* 00444004 0320F809 */  jalr  $t9
/* 00444008 02401025 */   move  $v0, $s2
/* 0044400C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444010 2404000A */  li    $a0, 10
/* 00444014 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444018 24050008 */  li    $a1, 8
/* 0044401C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444020 2406003E */  li    $a2, 62
/* 00444024 0320F809 */  jalr  $t9
/* 00444028 02401025 */   move  $v0, $s2
/* 0044402C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444030 24040125 */  li    $a0, 293
/* 00444034 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444038 24050008 */  li    $a1, 8
/* 0044403C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444040 24060043 */  li    $a2, 67
/* 00444044 0320F809 */  jalr  $t9
/* 00444048 02401025 */   move  $v0, $s2
/* 0044404C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444050 24040126 */  li    $a0, 294
/* 00444054 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444058 24050008 */  li    $a1, 8
/* 0044405C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444060 24060044 */  li    $a2, 68
/* 00444064 0320F809 */  jalr  $t9
/* 00444068 02401025 */   move  $v0, $s2
/* 0044406C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444070 24040127 */  li    $a0, 295
/* 00444074 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444078 24050008 */  li    $a1, 8
/* 0044407C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444080 24060045 */  li    $a2, 69
/* 00444084 0320F809 */  jalr  $t9
/* 00444088 02401025 */   move  $v0, $s2
/* 0044408C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444090 24040128 */  li    $a0, 296
/* 00444094 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444098 24050008 */  li    $a1, 8
/* 0044409C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004440A0 24060046 */  li    $a2, 70
/* 004440A4 0320F809 */  jalr  $t9
/* 004440A8 02401025 */   move  $v0, $s2
/* 004440AC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004440B0 24040129 */  li    $a0, 297
/* 004440B4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004440B8 24050008 */  li    $a1, 8
/* 004440BC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004440C0 24060047 */  li    $a2, 71
/* 004440C4 0320F809 */  jalr  $t9
/* 004440C8 02401025 */   move  $v0, $s2
/* 004440CC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004440D0 2404012A */  li    $a0, 298
/* 004440D4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004440D8 24050008 */  li    $a1, 8
/* 004440DC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004440E0 24060048 */  li    $a2, 72
/* 004440E4 0320F809 */  jalr  $t9
/* 004440E8 02401025 */   move  $v0, $s2
/* 004440EC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004440F0 2404000D */  li    $a0, 13
/* 004440F4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004440F8 24050006 */  li    $a1, 6
/* 004440FC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444100 2406004B */  li    $a2, 75
/* 00444104 0320F809 */  jalr  $t9
/* 00444108 02401025 */   move  $v0, $s2
/* 0044410C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444110 240400DC */  li    $a0, 220
/* 00444114 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444118 24050007 */  li    $a1, 7
/* 0044411C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444120 2406004B */  li    $a2, 75
/* 00444124 0320F809 */  jalr  $t9
/* 00444128 02401025 */   move  $v0, $s2
/* 0044412C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444130 2404001A */  li    $a0, 26
/* 00444134 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444138 24050006 */  li    $a1, 6
/* 0044413C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444140 2406004C */  li    $a2, 76
/* 00444144 0320F809 */  jalr  $t9
/* 00444148 02401025 */   move  $v0, $s2
/* 0044414C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444150 240400DD */  li    $a0, 221
/* 00444154 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444158 24050007 */  li    $a1, 7
/* 0044415C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444160 2406004C */  li    $a2, 76
/* 00444164 0320F809 */  jalr  $t9
/* 00444168 02401025 */   move  $v0, $s2
/* 0044416C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444170 24040014 */  li    $a0, 20
/* 00444174 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444178 24050006 */  li    $a1, 6
/* 0044417C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444180 00003025 */  move  $a2, $zero
/* 00444184 0320F809 */  jalr  $t9
/* 00444188 02401025 */   move  $v0, $s2
/* 0044418C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444190 24040015 */  li    $a0, 21
/* 00444194 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444198 24050006 */  li    $a1, 6
/* 0044419C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004441A0 00003025 */  move  $a2, $zero
/* 004441A4 0320F809 */  jalr  $t9
/* 004441A8 02401025 */   move  $v0, $s2
/* 004441AC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004441B0 24040016 */  li    $a0, 22
/* 004441B4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004441B8 24050007 */  li    $a1, 7
/* 004441BC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004441C0 2406004D */  li    $a2, 77
/* 004441C4 0320F809 */  jalr  $t9
/* 004441C8 02401025 */   move  $v0, $s2
/* 004441CC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004441D0 24040011 */  li    $a0, 17
/* 004441D4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004441D8 24050006 */  li    $a1, 6
/* 004441DC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004441E0 00003025 */  move  $a2, $zero
/* 004441E4 0320F809 */  jalr  $t9
/* 004441E8 02401025 */   move  $v0, $s2
/* 004441EC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004441F0 24040012 */  li    $a0, 18
/* 004441F4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004441F8 24050006 */  li    $a1, 6
/* 004441FC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444200 00003025 */  move  $a2, $zero
/* 00444204 0320F809 */  jalr  $t9
/* 00444208 02401025 */   move  $v0, $s2
/* 0044420C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444210 24040013 */  li    $a0, 19
/* 00444214 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444218 24050007 */  li    $a1, 7
/* 0044421C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444220 2406004E */  li    $a2, 78
/* 00444224 0320F809 */  jalr  $t9
/* 00444228 02401025 */   move  $v0, $s2
/* 0044422C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444230 24040017 */  li    $a0, 23
/* 00444234 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444238 24050006 */  li    $a1, 6
/* 0044423C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444240 00003025 */  move  $a2, $zero
/* 00444244 0320F809 */  jalr  $t9
/* 00444248 02401025 */   move  $v0, $s2
/* 0044424C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444250 24040018 */  li    $a0, 24
/* 00444254 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444258 24050006 */  li    $a1, 6
/* 0044425C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444260 00003025 */  move  $a2, $zero
/* 00444264 0320F809 */  jalr  $t9
/* 00444268 02401025 */   move  $v0, $s2
/* 0044426C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444270 24040019 */  li    $a0, 25
/* 00444274 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444278 24050007 */  li    $a1, 7
/* 0044427C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444280 24060035 */  li    $a2, 53
/* 00444284 0320F809 */  jalr  $t9
/* 00444288 02401025 */   move  $v0, $s2
/* 0044428C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444290 240400E5 */  li    $a0, 229
/* 00444294 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444298 24050007 */  li    $a1, 7
/* 0044429C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004442A0 24060037 */  li    $a2, 55
/* 004442A4 0320F809 */  jalr  $t9
/* 004442A8 02401025 */   move  $v0, $s2
/* 004442AC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004442B0 2404000E */  li    $a0, 14
/* 004442B4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004442B8 24050006 */  li    $a1, 6
/* 004442BC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004442C0 00003025 */  move  $a2, $zero
/* 004442C4 0320F809 */  jalr  $t9
/* 004442C8 02401025 */   move  $v0, $s2
/* 004442CC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004442D0 2404000F */  li    $a0, 15
/* 004442D4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004442D8 24050006 */  li    $a1, 6
/* 004442DC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004442E0 00003025 */  move  $a2, $zero
/* 004442E4 0320F809 */  jalr  $t9
/* 004442E8 02401025 */   move  $v0, $s2
/* 004442EC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004442F0 24040010 */  li    $a0, 16
/* 004442F4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004442F8 24050007 */  li    $a1, 7
/* 004442FC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444300 24060036 */  li    $a2, 54
/* 00444304 0320F809 */  jalr  $t9
/* 00444308 02401025 */   move  $v0, $s2
/* 0044430C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444310 240400E4 */  li    $a0, 228
/* 00444314 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444318 24050007 */  li    $a1, 7
/* 0044431C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444320 24060038 */  li    $a2, 56
/* 00444324 0320F809 */  jalr  $t9
/* 00444328 02401025 */   move  $v0, $s2
/* 0044432C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444330 240400E3 */  li    $a0, 227
/* 00444334 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444338 24050007 */  li    $a1, 7
/* 0044433C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444340 24060038 */  li    $a2, 56
/* 00444344 0320F809 */  jalr  $t9
/* 00444348 02401025 */   move  $v0, $s2
/* 0044434C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444350 24040113 */  li    $a0, 275
/* 00444354 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444358 24050006 */  li    $a1, 6
/* 0044435C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444360 2406004F */  li    $a2, 79
/* 00444364 0320F809 */  jalr  $t9
/* 00444368 02401025 */   move  $v0, $s2
/* 0044436C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444370 24040114 */  li    $a0, 276
/* 00444374 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444378 24050007 */  li    $a1, 7
/* 0044437C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444380 2406004F */  li    $a2, 79
/* 00444384 0320F809 */  jalr  $t9
/* 00444388 02401025 */   move  $v0, $s2
/* 0044438C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444390 24040115 */  li    $a0, 277
/* 00444394 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444398 24050006 */  li    $a1, 6
/* 0044439C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004443A0 24060050 */  li    $a2, 80
/* 004443A4 0320F809 */  jalr  $t9
/* 004443A8 02401025 */   move  $v0, $s2
/* 004443AC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004443B0 24040116 */  li    $a0, 278
/* 004443B4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004443B8 24050007 */  li    $a1, 7
/* 004443BC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004443C0 24060050 */  li    $a2, 80
/* 004443C4 0320F809 */  jalr  $t9
/* 004443C8 02401025 */   move  $v0, $s2
/* 004443CC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004443D0 24040117 */  li    $a0, 279
/* 004443D4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004443D8 24050006 */  li    $a1, 6
/* 004443DC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004443E0 00003025 */  move  $a2, $zero
/* 004443E4 0320F809 */  jalr  $t9
/* 004443E8 02401025 */   move  $v0, $s2
/* 004443EC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004443F0 24040118 */  li    $a0, 280
/* 004443F4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004443F8 24050006 */  li    $a1, 6
/* 004443FC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444400 00003025 */  move  $a2, $zero
/* 00444404 0320F809 */  jalr  $t9
/* 00444408 02401025 */   move  $v0, $s2
/* 0044440C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444410 24040119 */  li    $a0, 281
/* 00444414 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444418 24050007 */  li    $a1, 7
/* 0044441C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444420 24060051 */  li    $a2, 81
/* 00444424 0320F809 */  jalr  $t9
/* 00444428 02401025 */   move  $v0, $s2
/* 0044442C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444430 2404011A */  li    $a0, 282
/* 00444434 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444438 24050006 */  li    $a1, 6
/* 0044443C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444440 00003025 */  move  $a2, $zero
/* 00444444 0320F809 */  jalr  $t9
/* 00444448 02401025 */   move  $v0, $s2
/* 0044444C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444450 2404011B */  li    $a0, 283
/* 00444454 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444458 24050006 */  li    $a1, 6
/* 0044445C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444460 00003025 */  move  $a2, $zero
/* 00444464 0320F809 */  jalr  $t9
/* 00444468 02401025 */   move  $v0, $s2
/* 0044446C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444470 2404011C */  li    $a0, 284
/* 00444474 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444478 24050007 */  li    $a1, 7
/* 0044447C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444480 24060052 */  li    $a2, 82
/* 00444484 0320F809 */  jalr  $t9
/* 00444488 02401025 */   move  $v0, $s2
/* 0044448C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444490 2404011D */  li    $a0, 285
/* 00444494 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444498 24050006 */  li    $a1, 6
/* 0044449C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004444A0 00003025 */  move  $a2, $zero
/* 004444A4 0320F809 */  jalr  $t9
/* 004444A8 02401025 */   move  $v0, $s2
/* 004444AC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004444B0 2404011E */  li    $a0, 286
/* 004444B4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004444B8 24050006 */  li    $a1, 6
/* 004444BC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004444C0 00003025 */  move  $a2, $zero
/* 004444C4 0320F809 */  jalr  $t9
/* 004444C8 02401025 */   move  $v0, $s2
/* 004444CC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004444D0 2404011F */  li    $a0, 287
/* 004444D4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004444D8 24050007 */  li    $a1, 7
/* 004444DC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004444E0 2406003F */  li    $a2, 63
/* 004444E4 0320F809 */  jalr  $t9
/* 004444E8 02401025 */   move  $v0, $s2
/* 004444EC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004444F0 24040120 */  li    $a0, 288
/* 004444F4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004444F8 24050007 */  li    $a1, 7
/* 004444FC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444500 24060041 */  li    $a2, 65
/* 00444504 0320F809 */  jalr  $t9
/* 00444508 02401025 */   move  $v0, $s2
/* 0044450C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444510 24040121 */  li    $a0, 289
/* 00444514 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444518 24050006 */  li    $a1, 6
/* 0044451C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444520 00003025 */  move  $a2, $zero
/* 00444524 0320F809 */  jalr  $t9
/* 00444528 02401025 */   move  $v0, $s2
/* 0044452C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444530 24040122 */  li    $a0, 290
/* 00444534 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444538 24050006 */  li    $a1, 6
/* 0044453C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444540 00003025 */  move  $a2, $zero
/* 00444544 0320F809 */  jalr  $t9
/* 00444548 02401025 */   move  $v0, $s2
/* 0044454C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444550 24040123 */  li    $a0, 291
/* 00444554 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444558 24050007 */  li    $a1, 7
/* 0044455C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444560 24060040 */  li    $a2, 64
/* 00444564 0320F809 */  jalr  $t9
/* 00444568 02401025 */   move  $v0, $s2
/* 0044456C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444570 24040124 */  li    $a0, 292
/* 00444574 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444578 24050007 */  li    $a1, 7
/* 0044457C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444580 24060042 */  li    $a2, 66
/* 00444584 0320F809 */  jalr  $t9
/* 00444588 02401025 */   move  $v0, $s2
/* 0044458C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444590 2404001B */  li    $a0, 27
/* 00444594 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444598 00002825 */  move  $a1, $zero
/* 0044459C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004445A0 2406000B */  li    $a2, 11
/* 004445A4 0320F809 */  jalr  $t9
/* 004445A8 02401025 */   move  $v0, $s2
/* 004445AC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004445B0 24040164 */  li    $a0, 356
/* 004445B4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004445B8 24050002 */  li    $a1, 2
/* 004445BC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004445C0 00003025 */  move  $a2, $zero
/* 004445C4 0320F809 */  jalr  $t9
/* 004445C8 02401025 */   move  $v0, $s2
/* 004445CC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004445D0 2404001C */  li    $a0, 28
/* 004445D4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004445D8 24050009 */  li    $a1, 9
/* 004445DC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004445E0 24060063 */  li    $a2, 99
/* 004445E4 0320F809 */  jalr  $t9
/* 004445E8 02401025 */   move  $v0, $s2
/* 004445EC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004445F0 2404001D */  li    $a0, 29
/* 004445F4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004445F8 24050009 */  li    $a1, 9
/* 004445FC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444600 24060064 */  li    $a2, 100
/* 00444604 0320F809 */  jalr  $t9
/* 00444608 02401025 */   move  $v0, $s2
/* 0044460C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444610 2404001E */  li    $a0, 30
/* 00444614 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444618 24050009 */  li    $a1, 9
/* 0044461C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444620 24060065 */  li    $a2, 101
/* 00444624 0320F809 */  jalr  $t9
/* 00444628 02401025 */   move  $v0, $s2
/* 0044462C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444630 24040020 */  li    $a0, 32
/* 00444634 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444638 24050003 */  li    $a1, 3
/* 0044463C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444640 24060012 */  li    $a2, 18
/* 00444644 0320F809 */  jalr  $t9
/* 00444648 02401025 */   move  $v0, $s2
/* 0044464C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444650 24040021 */  li    $a0, 33
/* 00444654 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444658 24050003 */  li    $a1, 3
/* 0044465C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444660 24060013 */  li    $a2, 19
/* 00444664 0320F809 */  jalr  $t9
/* 00444668 02401025 */   move  $v0, $s2
/* 0044466C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444670 24040022 */  li    $a0, 34
/* 00444674 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444678 24050005 */  li    $a1, 5
/* 0044467C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444680 24060049 */  li    $a2, 73
/* 00444684 0320F809 */  jalr  $t9
/* 00444688 02401025 */   move  $v0, $s2
/* 0044468C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444690 24040023 */  li    $a0, 35
/* 00444694 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444698 24050005 */  li    $a1, 5
/* 0044469C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004446A0 2406004A */  li    $a2, 74
/* 004446A4 0320F809 */  jalr  $t9
/* 004446A8 02401025 */   move  $v0, $s2
/* 004446AC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004446B0 24040024 */  li    $a0, 36
/* 004446B4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004446B8 24050001 */  li    $a1, 1
/* 004446BC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004446C0 00003025 */  move  $a2, $zero
/* 004446C4 0320F809 */  jalr  $t9
/* 004446C8 02401025 */   move  $v0, $s2
/* 004446CC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004446D0 24040025 */  li    $a0, 37
/* 004446D4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004446D8 24050001 */  li    $a1, 1
/* 004446DC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004446E0 24060066 */  li    $a2, 102
/* 004446E4 0320F809 */  jalr  $t9
/* 004446E8 02401025 */   move  $v0, $s2
/* 004446EC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004446F0 24040026 */  li    $a0, 38
/* 004446F4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004446F8 24050001 */  li    $a1, 1
/* 004446FC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444700 2406006A */  li    $a2, 106
/* 00444704 0320F809 */  jalr  $t9
/* 00444708 02401025 */   move  $v0, $s2
/* 0044470C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444710 24040027 */  li    $a0, 39
/* 00444714 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444718 24050001 */  li    $a1, 1
/* 0044471C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444720 24060067 */  li    $a2, 103
/* 00444724 0320F809 */  jalr  $t9
/* 00444728 02401025 */   move  $v0, $s2
/* 0044472C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444730 24040028 */  li    $a0, 40
/* 00444734 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444738 24050001 */  li    $a1, 1
/* 0044473C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444740 2406006B */  li    $a2, 107
/* 00444744 0320F809 */  jalr  $t9
/* 00444748 02401025 */   move  $v0, $s2
/* 0044474C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444750 24040029 */  li    $a0, 41
/* 00444754 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444758 24050002 */  li    $a1, 2
/* 0044475C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444760 00003025 */  move  $a2, $zero
/* 00444764 0320F809 */  jalr  $t9
/* 00444768 02401025 */   move  $v0, $s2
/* 0044476C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444770 2404002A */  li    $a0, 42
/* 00444774 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444778 24050001 */  li    $a1, 1
/* 0044477C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444780 24060069 */  li    $a2, 105
/* 00444784 0320F809 */  jalr  $t9
/* 00444788 02401025 */   move  $v0, $s2
/* 0044478C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444790 24040105 */  li    $a0, 261
/* 00444794 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444798 24050001 */  li    $a1, 1
/* 0044479C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004447A0 24060072 */  li    $a2, 114
/* 004447A4 0320F809 */  jalr  $t9
/* 004447A8 02401025 */   move  $v0, $s2
/* 004447AC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004447B0 2404002C */  li    $a0, 44
/* 004447B4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004447B8 24050001 */  li    $a1, 1
/* 004447BC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004447C0 24060073 */  li    $a2, 115
/* 004447C4 0320F809 */  jalr  $t9
/* 004447C8 02401025 */   move  $v0, $s2
/* 004447CC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004447D0 2404002D */  li    $a0, 45
/* 004447D4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004447D8 24050001 */  li    $a1, 1
/* 004447DC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004447E0 24060074 */  li    $a2, 116
/* 004447E4 0320F809 */  jalr  $t9
/* 004447E8 02401025 */   move  $v0, $s2
/* 004447EC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004447F0 2404005B */  li    $a0, 91
/* 004447F4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004447F8 24050001 */  li    $a1, 1
/* 004447FC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444800 24060068 */  li    $a2, 104
/* 00444804 0320F809 */  jalr  $t9
/* 00444808 02401025 */   move  $v0, $s2
/* 0044480C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444810 2404005C */  li    $a0, 92
/* 00444814 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444818 24050001 */  li    $a1, 1
/* 0044481C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444820 2406006C */  li    $a2, 108
/* 00444824 0320F809 */  jalr  $t9
/* 00444828 02401025 */   move  $v0, $s2
/* 0044482C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444830 24040060 */  li    $a0, 96
/* 00444834 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444838 24050004 */  li    $a1, 4
/* 0044483C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444840 2406008B */  li    $a2, 139
/* 00444844 0320F809 */  jalr  $t9
/* 00444848 02401025 */   move  $v0, $s2
/* 0044484C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444850 24040061 */  li    $a0, 97
/* 00444854 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444858 24050004 */  li    $a1, 4
/* 0044485C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444860 2406008C */  li    $a2, 140
/* 00444864 0320F809 */  jalr  $t9
/* 00444868 02401025 */   move  $v0, $s2
/* 0044486C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444870 240400E7 */  li    $a0, 231
/* 00444874 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444878 24050004 */  li    $a1, 4
/* 0044487C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444880 2406008C */  li    $a2, 140
/* 00444884 0320F809 */  jalr  $t9
/* 00444888 02401025 */   move  $v0, $s2
/* 0044488C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444890 24040062 */  li    $a0, 98
/* 00444894 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444898 24050004 */  li    $a1, 4
/* 0044489C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004448A0 2406008D */  li    $a2, 141
/* 004448A4 0320F809 */  jalr  $t9
/* 004448A8 02401025 */   move  $v0, $s2
/* 004448AC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004448B0 240400F6 */  li    $a0, 246
/* 004448B4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004448B8 24050004 */  li    $a1, 4
/* 004448BC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004448C0 240600F4 */  li    $a2, 244
/* 004448C4 0320F809 */  jalr  $t9
/* 004448C8 02401025 */   move  $v0, $s2
/* 004448CC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004448D0 240400E1 */  li    $a0, 225
/* 004448D4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004448D8 24050004 */  li    $a1, 4
/* 004448DC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004448E0 2406008E */  li    $a2, 142
/* 004448E4 0320F809 */  jalr  $t9
/* 004448E8 02401025 */   move  $v0, $s2
/* 004448EC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004448F0 240400F7 */  li    $a0, 247
/* 004448F4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004448F8 24050004 */  li    $a1, 4
/* 004448FC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444900 240600F5 */  li    $a2, 245
/* 00444904 0320F809 */  jalr  $t9
/* 00444908 02401025 */   move  $v0, $s2
/* 0044490C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444910 2404002F */  li    $a0, 47
/* 00444914 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444918 2405000A */  li    $a1, 10
/* 0044491C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444920 2406000C */  li    $a2, 12
/* 00444924 0320F809 */  jalr  $t9
/* 00444928 02401025 */   move  $v0, $s2
/* 0044492C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444930 24040030 */  li    $a0, 48
/* 00444934 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444938 2405000A */  li    $a1, 10
/* 0044493C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444940 2406000E */  li    $a2, 14
/* 00444944 0320F809 */  jalr  $t9
/* 00444948 02401025 */   move  $v0, $s2
/* 0044494C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444950 24040031 */  li    $a0, 49
/* 00444954 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444958 24050004 */  li    $a1, 4
/* 0044495C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444960 00003025 */  move  $a2, $zero
/* 00444964 0320F809 */  jalr  $t9
/* 00444968 02401025 */   move  $v0, $s2
/* 0044496C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444970 24040064 */  li    $a0, 100
/* 00444974 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444978 24050004 */  li    $a1, 4
/* 0044497C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444980 2406008F */  li    $a2, 143
/* 00444984 0320F809 */  jalr  $t9
/* 00444988 02401025 */   move  $v0, $s2
/* 0044498C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444990 24040065 */  li    $a0, 101
/* 00444994 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444998 24050004 */  li    $a1, 4
/* 0044499C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004449A0 24060090 */  li    $a2, 144
/* 004449A4 0320F809 */  jalr  $t9
/* 004449A8 02401025 */   move  $v0, $s2
/* 004449AC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004449B0 240400E6 */  li    $a0, 230
/* 004449B4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004449B8 24050004 */  li    $a1, 4
/* 004449BC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004449C0 24060090 */  li    $a2, 144
/* 004449C4 0320F809 */  jalr  $t9
/* 004449C8 02401025 */   move  $v0, $s2
/* 004449CC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004449D0 24040066 */  li    $a0, 102
/* 004449D4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004449D8 24050004 */  li    $a1, 4
/* 004449DC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004449E0 24060091 */  li    $a2, 145
/* 004449E4 0320F809 */  jalr  $t9
/* 004449E8 02401025 */   move  $v0, $s2
/* 004449EC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004449F0 240400F9 */  li    $a0, 249
/* 004449F4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004449F8 24050004 */  li    $a1, 4
/* 004449FC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444A00 240600F6 */  li    $a2, 246
/* 00444A04 0320F809 */  jalr  $t9
/* 00444A08 02401025 */   move  $v0, $s2
/* 00444A0C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444A10 240400E2 */  li    $a0, 226
/* 00444A14 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444A18 24050004 */  li    $a1, 4
/* 00444A1C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444A20 24060092 */  li    $a2, 146
/* 00444A24 0320F809 */  jalr  $t9
/* 00444A28 02401025 */   move  $v0, $s2
/* 00444A2C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444A30 240400FA */  li    $a0, 250
/* 00444A34 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444A38 24050004 */  li    $a1, 4
/* 00444A3C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444A40 240600F7 */  li    $a2, 247
/* 00444A44 0320F809 */  jalr  $t9
/* 00444A48 02401025 */   move  $v0, $s2
/* 00444A4C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444A50 24040036 */  li    $a0, 54
/* 00444A54 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444A58 2405000A */  li    $a1, 10
/* 00444A5C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444A60 2406000D */  li    $a2, 13
/* 00444A64 0320F809 */  jalr  $t9
/* 00444A68 02401025 */   move  $v0, $s2
/* 00444A6C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444A70 24040037 */  li    $a0, 55
/* 00444A74 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444A78 2405000A */  li    $a1, 10
/* 00444A7C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444A80 2406000F */  li    $a2, 15
/* 00444A84 0320F809 */  jalr  $t9
/* 00444A88 02401025 */   move  $v0, $s2
/* 00444A8C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444A90 24040038 */  li    $a0, 56
/* 00444A94 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444A98 24050003 */  li    $a1, 3
/* 00444A9C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444AA0 00003025 */  move  $a2, $zero
/* 00444AA4 0320F809 */  jalr  $t9
/* 00444AA8 02401025 */   move  $v0, $s2
/* 00444AAC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444AB0 24040039 */  li    $a0, 57
/* 00444AB4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444AB8 24050003 */  li    $a1, 3
/* 00444ABC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444AC0 00003025 */  move  $a2, $zero
/* 00444AC4 0320F809 */  jalr  $t9
/* 00444AC8 02401025 */   move  $v0, $s2
/* 00444ACC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444AD0 2404003A */  li    $a0, 58
/* 00444AD4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444AD8 24050003 */  li    $a1, 3
/* 00444ADC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444AE0 00003025 */  move  $a2, $zero
/* 00444AE4 0320F809 */  jalr  $t9
/* 00444AE8 02401025 */   move  $v0, $s2
/* 00444AEC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444AF0 2404003B */  li    $a0, 59
/* 00444AF4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444AF8 24050004 */  li    $a1, 4
/* 00444AFC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444B00 24060010 */  li    $a2, 16
/* 00444B04 0320F809 */  jalr  $t9
/* 00444B08 02401025 */   move  $v0, $s2
/* 00444B0C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444B10 2404003C */  li    $a0, 60
/* 00444B14 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444B18 24050004 */  li    $a1, 4
/* 00444B1C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444B20 24060011 */  li    $a2, 17
/* 00444B24 0320F809 */  jalr  $t9
/* 00444B28 02401025 */   move  $v0, $s2
/* 00444B2C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444B30 2404003D */  li    $a0, 61
/* 00444B34 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444B38 24050004 */  li    $a1, 4
/* 00444B3C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444B40 00003025 */  move  $a2, $zero
/* 00444B44 0320F809 */  jalr  $t9
/* 00444B48 02401025 */   move  $v0, $s2
/* 00444B4C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444B50 240400DB */  li    $a0, 219
/* 00444B54 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444B58 24050004 */  li    $a1, 4
/* 00444B5C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444B60 00003025 */  move  $a2, $zero
/* 00444B64 0320F809 */  jalr  $t9
/* 00444B68 02401025 */   move  $v0, $s2
/* 00444B6C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444B70 2404003E */  li    $a0, 62
/* 00444B74 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444B78 00002825 */  move  $a1, $zero
/* 00444B7C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444B80 24060001 */  li    $a2, 1
/* 00444B84 0320F809 */  jalr  $t9
/* 00444B88 02401025 */   move  $v0, $s2
/* 00444B8C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444B90 2404003F */  li    $a0, 63
/* 00444B94 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444B98 24050003 */  li    $a1, 3
/* 00444B9C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444BA0 2406001B */  li    $a2, 27
/* 00444BA4 0320F809 */  jalr  $t9
/* 00444BA8 02401025 */   move  $v0, $s2
/* 00444BAC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444BB0 2404005A */  li    $a0, 90
/* 00444BB4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444BB8 24050004 */  li    $a1, 4
/* 00444BBC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444BC0 00003025 */  move  $a2, $zero
/* 00444BC4 0320F809 */  jalr  $t9
/* 00444BC8 02401025 */   move  $v0, $s2
/* 00444BCC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444BD0 24040040 */  li    $a0, 64
/* 00444BD4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444BD8 24050003 */  li    $a1, 3
/* 00444BDC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444BE0 24060019 */  li    $a2, 25
/* 00444BE4 0320F809 */  jalr  $t9
/* 00444BE8 02401025 */   move  $v0, $s2
/* 00444BEC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444BF0 24040041 */  li    $a0, 65
/* 00444BF4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444BF8 24050003 */  li    $a1, 3
/* 00444BFC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444C00 24060012 */  li    $a2, 18
/* 00444C04 0320F809 */  jalr  $t9
/* 00444C08 02401025 */   move  $v0, $s2
/* 00444C0C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444C10 24040042 */  li    $a0, 66
/* 00444C14 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444C18 24050003 */  li    $a1, 3
/* 00444C1C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444C20 24060013 */  li    $a2, 19
/* 00444C24 0320F809 */  jalr  $t9
/* 00444C28 02401025 */   move  $v0, $s2
/* 00444C2C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444C30 24040043 */  li    $a0, 67
/* 00444C34 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444C38 00002825 */  move  $a1, $zero
/* 00444C3C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444C40 24060093 */  li    $a2, 147
/* 00444C44 0320F809 */  jalr  $t9
/* 00444C48 02401025 */   move  $v0, $s2
/* 00444C4C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444C50 24040044 */  li    $a0, 68
/* 00444C54 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444C58 24050003 */  li    $a1, 3
/* 00444C5C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444C60 00003025 */  move  $a2, $zero
/* 00444C64 0320F809 */  jalr  $t9
/* 00444C68 02401025 */   move  $v0, $s2
/* 00444C6C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444C70 24040045 */  li    $a0, 69
/* 00444C74 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444C78 24050003 */  li    $a1, 3
/* 00444C7C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444C80 00003025 */  move  $a2, $zero
/* 00444C84 0320F809 */  jalr  $t9
/* 00444C88 02401025 */   move  $v0, $s2
/* 00444C8C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444C90 24040046 */  li    $a0, 70
/* 00444C94 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444C98 24050001 */  li    $a1, 1
/* 00444C9C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444CA0 2406006D */  li    $a2, 109
/* 00444CA4 0320F809 */  jalr  $t9
/* 00444CA8 02401025 */   move  $v0, $s2
/* 00444CAC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444CB0 24040047 */  li    $a0, 71
/* 00444CB4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444CB8 24050003 */  li    $a1, 3
/* 00444CBC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444CC0 00003025 */  move  $a2, $zero
/* 00444CC4 0320F809 */  jalr  $t9
/* 00444CC8 02401025 */   move  $v0, $s2
/* 00444CCC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444CD0 24040048 */  li    $a0, 72
/* 00444CD4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444CD8 24050003 */  li    $a1, 3
/* 00444CDC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444CE0 00003025 */  move  $a2, $zero
/* 00444CE4 0320F809 */  jalr  $t9
/* 00444CE8 02401025 */   move  $v0, $s2
/* 00444CEC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444CF0 24040049 */  li    $a0, 73
/* 00444CF4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444CF8 24050003 */  li    $a1, 3
/* 00444CFC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444D00 00003025 */  move  $a2, $zero
/* 00444D04 0320F809 */  jalr  $t9
/* 00444D08 02401025 */   move  $v0, $s2
/* 00444D0C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444D10 2404004A */  li    $a0, 74
/* 00444D14 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444D18 24050003 */  li    $a1, 3
/* 00444D1C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444D20 00003025 */  move  $a2, $zero
/* 00444D24 0320F809 */  jalr  $t9
/* 00444D28 02401025 */   move  $v0, $s2
/* 00444D2C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444D30 2404004B */  li    $a0, 75
/* 00444D34 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444D38 24050003 */  li    $a1, 3
/* 00444D3C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444D40 00003025 */  move  $a2, $zero
/* 00444D44 0320F809 */  jalr  $t9
/* 00444D48 02401025 */   move  $v0, $s2
/* 00444D4C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444D50 2404004C */  li    $a0, 76
/* 00444D54 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444D58 24050001 */  li    $a1, 1
/* 00444D5C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444D60 2406006E */  li    $a2, 110
/* 00444D64 0320F809 */  jalr  $t9
/* 00444D68 02401025 */   move  $v0, $s2
/* 00444D6C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444D70 2404004D */  li    $a0, 77
/* 00444D74 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444D78 24050003 */  li    $a1, 3
/* 00444D7C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444D80 00003025 */  move  $a2, $zero
/* 00444D84 0320F809 */  jalr  $t9
/* 00444D88 02401025 */   move  $v0, $s2
/* 00444D8C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444D90 2404004E */  li    $a0, 78
/* 00444D94 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444D98 24050003 */  li    $a1, 3
/* 00444D9C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444DA0 00003025 */  move  $a2, $zero
/* 00444DA4 0320F809 */  jalr  $t9
/* 00444DA8 02401025 */   move  $v0, $s2
/* 00444DAC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444DB0 2404004F */  li    $a0, 79
/* 00444DB4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444DB8 24050003 */  li    $a1, 3
/* 00444DBC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444DC0 24060002 */  li    $a2, 2
/* 00444DC4 0320F809 */  jalr  $t9
/* 00444DC8 02401025 */   move  $v0, $s2
/* 00444DCC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444DD0 24040050 */  li    $a0, 80
/* 00444DD4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444DD8 24050003 */  li    $a1, 3
/* 00444DDC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444DE0 00003025 */  move  $a2, $zero
/* 00444DE4 0320F809 */  jalr  $t9
/* 00444DE8 02401025 */   move  $v0, $s2
/* 00444DEC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444DF0 24040051 */  li    $a0, 81
/* 00444DF4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444DF8 24050003 */  li    $a1, 3
/* 00444DFC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444E00 00003025 */  move  $a2, $zero
/* 00444E04 0320F809 */  jalr  $t9
/* 00444E08 02401025 */   move  $v0, $s2
/* 00444E0C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444E10 24040052 */  li    $a0, 82
/* 00444E14 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444E18 24050003 */  li    $a1, 3
/* 00444E1C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444E20 00003025 */  move  $a2, $zero
/* 00444E24 0320F809 */  jalr  $t9
/* 00444E28 02401025 */   move  $v0, $s2
/* 00444E2C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444E30 24040053 */  li    $a0, 83
/* 00444E34 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444E38 24050003 */  li    $a1, 3
/* 00444E3C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444E40 24060004 */  li    $a2, 4
/* 00444E44 0320F809 */  jalr  $t9
/* 00444E48 02401025 */   move  $v0, $s2
/* 00444E4C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444E50 24040054 */  li    $a0, 84
/* 00444E54 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444E58 24050003 */  li    $a1, 3
/* 00444E5C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444E60 24060003 */  li    $a2, 3
/* 00444E64 0320F809 */  jalr  $t9
/* 00444E68 02401025 */   move  $v0, $s2
/* 00444E6C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444E70 240401A6 */  li    $a0, 422
/* 00444E74 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444E78 24050003 */  li    $a1, 3
/* 00444E7C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444E80 24060005 */  li    $a2, 5
/* 00444E84 0320F809 */  jalr  $t9
/* 00444E88 02401025 */   move  $v0, $s2
/* 00444E8C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444E90 240401A7 */  li    $a0, 423
/* 00444E94 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444E98 24050003 */  li    $a1, 3
/* 00444E9C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444EA0 24060006 */  li    $a2, 6
/* 00444EA4 0320F809 */  jalr  $t9
/* 00444EA8 02401025 */   move  $v0, $s2
/* 00444EAC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444EB0 240401A8 */  li    $a0, 424
/* 00444EB4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444EB8 24050003 */  li    $a1, 3
/* 00444EBC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444EC0 24060007 */  li    $a2, 7
/* 00444EC4 0320F809 */  jalr  $t9
/* 00444EC8 02401025 */   move  $v0, $s2
/* 00444ECC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444ED0 24040055 */  li    $a0, 85
/* 00444ED4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444ED8 24050003 */  li    $a1, 3
/* 00444EDC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444EE0 24060016 */  li    $a2, 22
/* 00444EE4 0320F809 */  jalr  $t9
/* 00444EE8 02401025 */   move  $v0, $s2
/* 00444EEC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444EF0 24040056 */  li    $a0, 86
/* 00444EF4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444EF8 24050003 */  li    $a1, 3
/* 00444EFC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444F00 24060017 */  li    $a2, 23
/* 00444F04 0320F809 */  jalr  $t9
/* 00444F08 02401025 */   move  $v0, $s2
/* 00444F0C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444F10 240400EF */  li    $a0, 239
/* 00444F14 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444F18 24050003 */  li    $a1, 3
/* 00444F1C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444F20 24060017 */  li    $a2, 23
/* 00444F24 0320F809 */  jalr  $t9
/* 00444F28 02401025 */   move  $v0, $s2
/* 00444F2C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444F30 24040057 */  li    $a0, 87
/* 00444F34 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444F38 24050001 */  li    $a1, 1
/* 00444F3C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444F40 24060070 */  li    $a2, 112
/* 00444F44 0320F809 */  jalr  $t9
/* 00444F48 02401025 */   move  $v0, $s2
/* 00444F4C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444F50 24040106 */  li    $a0, 262
/* 00444F54 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444F58 24050001 */  li    $a1, 1
/* 00444F5C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444F60 24060075 */  li    $a2, 117
/* 00444F64 0320F809 */  jalr  $t9
/* 00444F68 02401025 */   move  $v0, $s2
/* 00444F6C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444F70 24040033 */  li    $a0, 51
/* 00444F74 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444F78 24050001 */  li    $a1, 1
/* 00444F7C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444F80 24060076 */  li    $a2, 118
/* 00444F84 0320F809 */  jalr  $t9
/* 00444F88 02401025 */   move  $v0, $s2
/* 00444F8C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444F90 24040034 */  li    $a0, 52
/* 00444F94 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444F98 24050001 */  li    $a1, 1
/* 00444F9C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444FA0 24060077 */  li    $a2, 119
/* 00444FA4 0320F809 */  jalr  $t9
/* 00444FA8 02401025 */   move  $v0, $s2
/* 00444FAC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444FB0 2404005D */  li    $a0, 93
/* 00444FB4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444FB8 24050001 */  li    $a1, 1
/* 00444FBC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444FC0 2406006F */  li    $a2, 111
/* 00444FC4 0320F809 */  jalr  $t9
/* 00444FC8 02401025 */   move  $v0, $s2
/* 00444FCC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444FD0 2404005E */  li    $a0, 94
/* 00444FD4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444FD8 24050001 */  li    $a1, 1
/* 00444FDC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00444FE0 24060071 */  li    $a2, 113
/* 00444FE4 0320F809 */  jalr  $t9
/* 00444FE8 02401025 */   move  $v0, $s2
/* 00444FEC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00444FF0 24040058 */  li    $a0, 88
/* 00444FF4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00444FF8 00002825 */  move  $a1, $zero
/* 00444FFC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00445000 2406000A */  li    $a2, 10
/* 00445004 0320F809 */  jalr  $t9
/* 00445008 02401025 */   move  $v0, $s2
/* 0044500C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445010 24040059 */  li    $a0, 89
/* 00445014 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00445018 24050003 */  li    $a1, 3
/* 0044501C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00445020 2406001A */  li    $a2, 26
/* 00445024 0320F809 */  jalr  $t9
/* 00445028 02401025 */   move  $v0, $s2
/* 0044502C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445030 24040068 */  li    $a0, 104
/* 00445034 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00445038 00002825 */  move  $a1, $zero
/* 0044503C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00445040 24060094 */  li    $a2, 148
/* 00445044 0320F809 */  jalr  $t9
/* 00445048 02401025 */   move  $v0, $s2
/* 0044504C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445050 24040069 */  li    $a0, 105
/* 00445054 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00445058 00002825 */  move  $a1, $zero
/* 0044505C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00445060 24060095 */  li    $a2, 149
/* 00445064 0320F809 */  jalr  $t9
/* 00445068 02401025 */   move  $v0, $s2
/* 0044506C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445070 2404006A */  li    $a0, 106
/* 00445074 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00445078 00002825 */  move  $a1, $zero
/* 0044507C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00445080 24060096 */  li    $a2, 150
/* 00445084 0320F809 */  jalr  $t9
/* 00445088 02401025 */   move  $v0, $s2
/* 0044508C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445090 2404006B */  li    $a0, 107
/* 00445094 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00445098 00002825 */  move  $a1, $zero
/* 0044509C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004450A0 24060097 */  li    $a2, 151
/* 004450A4 0320F809 */  jalr  $t9
/* 004450A8 02401025 */   move  $v0, $s2
/* 004450AC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004450B0 24040071 */  li    $a0, 113
/* 004450B4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004450B8 00002825 */  move  $a1, $zero
/* 004450BC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004450C0 2406013D */  li    $a2, 317
/* 004450C4 0320F809 */  jalr  $t9
/* 004450C8 02401025 */   move  $v0, $s2
/* 004450CC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004450D0 24040072 */  li    $a0, 114
/* 004450D4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004450D8 00002825 */  move  $a1, $zero
/* 004450DC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004450E0 2406013E */  li    $a2, 318
/* 004450E4 0320F809 */  jalr  $t9
/* 004450E8 02401025 */   move  $v0, $s2
/* 004450EC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004450F0 24040067 */  li    $a0, 103
/* 004450F4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004450F8 00002825 */  move  $a1, $zero
/* 004450FC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00445100 24060098 */  li    $a2, 152
/* 00445104 0320F809 */  jalr  $t9
/* 00445108 02401025 */   move  $v0, $s2
/* 0044510C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445110 24040079 */  li    $a0, 121
/* 00445114 8F998024 */  lw    $t9, %got(func_00442338)($gp)
/* 00445118 02401025 */  move  $v0, $s2
/* 0044511C 27392338 */  addiu $t9, %lo(func_00442338) # addiu $t9, $t9, 0x2338
/* 00445120 0320F809 */  jalr  $t9
/* 00445124 00000000 */   nop   
/* 00445128 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044512C 00403025 */  move  $a2, $v0
/* 00445130 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00445134 02401025 */  move  $v0, $s2
/* 00445138 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 0044513C 2404006C */  li    $a0, 108
/* 00445140 0320F809 */  jalr  $t9
/* 00445144 24050001 */   li    $a1, 1
/* 00445148 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044514C 2404007A */  li    $a0, 122
/* 00445150 8F998024 */  lw    $t9, %got(func_00442338)($gp)
/* 00445154 02401025 */  move  $v0, $s2
/* 00445158 27392338 */  addiu $t9, %lo(func_00442338) # addiu $t9, $t9, 0x2338
/* 0044515C 0320F809 */  jalr  $t9
/* 00445160 00000000 */   nop   
/* 00445164 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445168 00403025 */  move  $a2, $v0
/* 0044516C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00445170 02401025 */  move  $v0, $s2
/* 00445174 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00445178 2404006D */  li    $a0, 109
/* 0044517C 0320F809 */  jalr  $t9
/* 00445180 24050001 */   li    $a1, 1
/* 00445184 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445188 2404007B */  li    $a0, 123
/* 0044518C 8F998024 */  lw    $t9, %got(func_00442338)($gp)
/* 00445190 02401025 */  move  $v0, $s2
/* 00445194 27392338 */  addiu $t9, %lo(func_00442338) # addiu $t9, $t9, 0x2338
/* 00445198 0320F809 */  jalr  $t9
/* 0044519C 00000000 */   nop   
/* 004451A0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004451A4 00403025 */  move  $a2, $v0
/* 004451A8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004451AC 02401025 */  move  $v0, $s2
/* 004451B0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004451B4 2404006F */  li    $a0, 111
/* 004451B8 0320F809 */  jalr  $t9
/* 004451BC 24050001 */   li    $a1, 1
/* 004451C0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004451C4 2404007C */  li    $a0, 124
/* 004451C8 8F998024 */  lw    $t9, %got(func_00442338)($gp)
/* 004451CC 02401025 */  move  $v0, $s2
/* 004451D0 27392338 */  addiu $t9, %lo(func_00442338) # addiu $t9, $t9, 0x2338
/* 004451D4 0320F809 */  jalr  $t9
/* 004451D8 00000000 */   nop   
/* 004451DC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004451E0 00403025 */  move  $a2, $v0
/* 004451E4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004451E8 02401025 */  move  $v0, $s2
/* 004451EC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004451F0 24040070 */  li    $a0, 112
/* 004451F4 0320F809 */  jalr  $t9
/* 004451F8 24050001 */   li    $a1, 1
/* 004451FC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445200 2404007D */  li    $a0, 125
/* 00445204 8F998024 */  lw    $t9, %got(func_00442338)($gp)
/* 00445208 02401025 */  move  $v0, $s2
/* 0044520C 27392338 */  addiu $t9, %lo(func_00442338) # addiu $t9, $t9, 0x2338
/* 00445210 0320F809 */  jalr  $t9
/* 00445214 00000000 */   nop   
/* 00445218 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044521C 00403025 */  move  $a2, $v0
/* 00445220 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00445224 02401025 */  move  $v0, $s2
/* 00445228 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 0044522C 24040073 */  li    $a0, 115
/* 00445230 0320F809 */  jalr  $t9
/* 00445234 24050001 */   li    $a1, 1
/* 00445238 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044523C 2404007E */  li    $a0, 126
/* 00445240 8F998024 */  lw    $t9, %got(func_00442338)($gp)
/* 00445244 02401025 */  move  $v0, $s2
/* 00445248 27392338 */  addiu $t9, %lo(func_00442338) # addiu $t9, $t9, 0x2338
/* 0044524C 0320F809 */  jalr  $t9
/* 00445250 00000000 */   nop   
/* 00445254 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445258 00403025 */  move  $a2, $v0
/* 0044525C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00445260 02401025 */  move  $v0, $s2
/* 00445264 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00445268 24040074 */  li    $a0, 116
/* 0044526C 0320F809 */  jalr  $t9
/* 00445270 24050001 */   li    $a1, 1
/* 00445274 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445278 240400D3 */  li    $a0, 211
/* 0044527C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00445280 24050003 */  li    $a1, 3
/* 00445284 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00445288 24060053 */  li    $a2, 83
/* 0044528C 0320F809 */  jalr  $t9
/* 00445290 02401025 */   move  $v0, $s2
/* 00445294 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445298 240400D4 */  li    $a0, 212
/* 0044529C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004452A0 24050003 */  li    $a1, 3
/* 004452A4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004452A8 24060054 */  li    $a2, 84
/* 004452AC 0320F809 */  jalr  $t9
/* 004452B0 02401025 */   move  $v0, $s2
/* 004452B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004452B8 240400D5 */  li    $a0, 213
/* 004452BC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004452C0 24050003 */  li    $a1, 3
/* 004452C4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004452C8 24060055 */  li    $a2, 85
/* 004452CC 0320F809 */  jalr  $t9
/* 004452D0 02401025 */   move  $v0, $s2
/* 004452D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004452D8 240400D6 */  li    $a0, 214
/* 004452DC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004452E0 24050003 */  li    $a1, 3
/* 004452E4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004452E8 24060056 */  li    $a2, 86
/* 004452EC 0320F809 */  jalr  $t9
/* 004452F0 02401025 */   move  $v0, $s2
/* 004452F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004452F8 240400D7 */  li    $a0, 215
/* 004452FC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00445300 24050003 */  li    $a1, 3
/* 00445304 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00445308 24060057 */  li    $a2, 87
/* 0044530C 0320F809 */  jalr  $t9
/* 00445310 02401025 */   move  $v0, $s2
/* 00445314 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445318 240400D8 */  li    $a0, 216
/* 0044531C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00445320 24050003 */  li    $a1, 3
/* 00445324 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00445328 24060058 */  li    $a2, 88
/* 0044532C 0320F809 */  jalr  $t9
/* 00445330 02401025 */   move  $v0, $s2
/* 00445334 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445338 240400D9 */  li    $a0, 217
/* 0044533C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00445340 24050003 */  li    $a1, 3
/* 00445344 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00445348 24060059 */  li    $a2, 89
/* 0044534C 0320F809 */  jalr  $t9
/* 00445350 02401025 */   move  $v0, $s2
/* 00445354 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445358 240400CD */  li    $a0, 205
/* 0044535C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00445360 24050002 */  li    $a1, 2
/* 00445364 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00445368 2406005A */  li    $a2, 90
/* 0044536C 0320F809 */  jalr  $t9
/* 00445370 02401025 */   move  $v0, $s2
/* 00445374 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445378 240400CE */  li    $a0, 206
/* 0044537C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00445380 24050001 */  li    $a1, 1
/* 00445384 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00445388 00003025 */  move  $a2, $zero
/* 0044538C 0320F809 */  jalr  $t9
/* 00445390 02401025 */   move  $v0, $s2
/* 00445394 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445398 240400CF */  li    $a0, 207
/* 0044539C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004453A0 24050001 */  li    $a1, 1
/* 004453A4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004453A8 00003025 */  move  $a2, $zero
/* 004453AC 0320F809 */  jalr  $t9
/* 004453B0 02401025 */   move  $v0, $s2
/* 004453B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004453B8 240400D0 */  li    $a0, 208
/* 004453BC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004453C0 24050001 */  li    $a1, 1
/* 004453C4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004453C8 00003025 */  move  $a2, $zero
/* 004453CC 0320F809 */  jalr  $t9
/* 004453D0 02401025 */   move  $v0, $s2
/* 004453D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004453D8 240400D1 */  li    $a0, 209
/* 004453DC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004453E0 24050001 */  li    $a1, 1
/* 004453E4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004453E8 00003025 */  move  $a2, $zero
/* 004453EC 0320F809 */  jalr  $t9
/* 004453F0 02401025 */   move  $v0, $s2
/* 004453F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004453F8 240400D2 */  li    $a0, 210
/* 004453FC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00445400 24050001 */  li    $a1, 1
/* 00445404 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00445408 00003025 */  move  $a2, $zero
/* 0044540C 0320F809 */  jalr  $t9
/* 00445410 02401025 */   move  $v0, $s2
/* 00445414 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445418 2404014C */  li    $a0, 332
/* 0044541C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00445420 2405000E */  li    $a1, 14
/* 00445424 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00445428 00003025 */  move  $a2, $zero
/* 0044542C 0320F809 */  jalr  $t9
/* 00445430 02401025 */   move  $v0, $s2
/* 00445434 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445438 2404014D */  li    $a0, 333
/* 0044543C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00445440 24050001 */  li    $a1, 1
/* 00445444 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00445448 00003025 */  move  $a2, $zero
/* 0044544C 0320F809 */  jalr  $t9
/* 00445450 02401025 */   move  $v0, $s2
/* 00445454 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445458 2404000B */  li    $a0, 11
/* 0044545C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00445460 24050001 */  li    $a1, 1
/* 00445464 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00445468 00003025 */  move  $a2, $zero
/* 0044546C 0320F809 */  jalr  $t9
/* 00445470 02401025 */   move  $v0, $s2
/* 00445474 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445478 24040014 */  li    $a0, 20
/* 0044547C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445480 24050020 */  li    $a1, 32
/* 00445484 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445488 24060003 */  li    $a2, 3
/* 0044548C 0320F809 */  jalr  $t9
/* 00445490 02401025 */   move  $v0, $s2
/* 00445494 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445498 24040053 */  li    $a0, 83
/* 0044549C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004454A0 3C052000 */  lui   $a1, 0x2000
/* 004454A4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004454A8 00003025 */  move  $a2, $zero
/* 004454AC 0320F809 */  jalr  $t9
/* 004454B0 02401025 */   move  $v0, $s2
/* 004454B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004454B8 24040054 */  li    $a0, 84
/* 004454BC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004454C0 3C052400 */  lui   $a1, 0x2400
/* 004454C4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004454C8 00003025 */  move  $a2, $zero
/* 004454CC 0320F809 */  jalr  $t9
/* 004454D0 02401025 */   move  $v0, $s2
/* 004454D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004454D8 24040015 */  li    $a0, 21
/* 004454DC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004454E0 24050021 */  li    $a1, 33
/* 004454E4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004454E8 24060003 */  li    $a2, 3
/* 004454EC 0320F809 */  jalr  $t9
/* 004454F0 02401025 */   move  $v0, $s2
/* 004454F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004454F8 24040018 */  li    $a0, 24
/* 004454FC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445500 24050024 */  li    $a1, 36
/* 00445504 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445508 24060003 */  li    $a2, 3
/* 0044550C 0320F809 */  jalr  $t9
/* 00445510 02401025 */   move  $v0, $s2
/* 00445514 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445518 24040057 */  li    $a0, 87
/* 0044551C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445520 3C053000 */  lui   $a1, 0x3000
/* 00445524 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445528 00003025 */  move  $a2, $zero
/* 0044552C 0320F809 */  jalr  $t9
/* 00445530 02401025 */   move  $v0, $s2
/* 00445534 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445538 24040039 */  li    $a0, 57
/* 0044553C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445540 3C054100 */  lui   $a1, 0x4100
/* 00445544 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445548 24060002 */  li    $a2, 2
/* 0044554C 0320F809 */  jalr  $t9
/* 00445550 02401025 */   move  $v0, $s2
/* 00445554 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445558 2404003A */  li    $a0, 58
/* 0044555C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445560 3C054101 */  lui   $a1, 0x4101
/* 00445564 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445568 24060002 */  li    $a2, 2
/* 0044556C 0320F809 */  jalr  $t9
/* 00445570 02401025 */   move  $v0, $s2
/* 00445574 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445578 2404003B */  li    $a0, 59
/* 0044557C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445580 3C054500 */  lui   $a1, 0x4500
/* 00445584 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445588 24060002 */  li    $a2, 2
/* 0044558C 0320F809 */  jalr  $t9
/* 00445590 02401025 */   move  $v0, $s2
/* 00445594 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445598 2404003C */  li    $a0, 60
/* 0044559C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004455A0 3C054501 */  lui   $a1, 0x4501
/* 004455A4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004455A8 24060002 */  li    $a2, 2
/* 004455AC 0320F809 */  jalr  $t9
/* 004455B0 02401025 */   move  $v0, $s2
/* 004455B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004455B8 2404003D */  li    $a0, 61
/* 004455BC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004455C0 3C054900 */  lui   $a1, 0x4900
/* 004455C4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004455C8 24060002 */  li    $a2, 2
/* 004455CC 0320F809 */  jalr  $t9
/* 004455D0 02401025 */   move  $v0, $s2
/* 004455D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004455D8 2404003E */  li    $a0, 62
/* 004455DC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004455E0 3C054901 */  lui   $a1, 0x4901
/* 004455E4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004455E8 24060002 */  li    $a2, 2
/* 004455EC 0320F809 */  jalr  $t9
/* 004455F0 02401025 */   move  $v0, $s2
/* 004455F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004455F8 24040043 */  li    $a0, 67
/* 004455FC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445600 3C054102 */  lui   $a1, 0x4102
/* 00445604 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445608 24060002 */  li    $a2, 2
/* 0044560C 0320F809 */  jalr  $t9
/* 00445610 02401025 */   move  $v0, $s2
/* 00445614 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445618 24040044 */  li    $a0, 68
/* 0044561C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445620 3C054103 */  lui   $a1, 0x4103
/* 00445624 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445628 24060002 */  li    $a2, 2
/* 0044562C 0320F809 */  jalr  $t9
/* 00445630 02401025 */   move  $v0, $s2
/* 00445634 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445638 24040045 */  li    $a0, 69
/* 0044563C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445640 3C054502 */  lui   $a1, 0x4502
/* 00445644 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445648 24060002 */  li    $a2, 2
/* 0044564C 0320F809 */  jalr  $t9
/* 00445650 02401025 */   move  $v0, $s2
/* 00445654 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445658 24040046 */  li    $a0, 70
/* 0044565C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445660 3C054503 */  lui   $a1, 0x4503
/* 00445664 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445668 24060002 */  li    $a2, 2
/* 0044566C 0320F809 */  jalr  $t9
/* 00445670 02401025 */   move  $v0, $s2
/* 00445674 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445678 24040047 */  li    $a0, 71
/* 0044567C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445680 3C054902 */  lui   $a1, 0x4902
/* 00445684 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445688 24060002 */  li    $a2, 2
/* 0044568C 0320F809 */  jalr  $t9
/* 00445690 02401025 */   move  $v0, $s2
/* 00445694 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445698 24040048 */  li    $a0, 72
/* 0044569C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004456A0 3C054903 */  lui   $a1, 0x4903
/* 004456A4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004456A8 24060002 */  li    $a2, 2
/* 004456AC 0320F809 */  jalr  $t9
/* 004456B0 02401025 */   move  $v0, $s2
/* 004456B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004456B8 2404004B */  li    $a0, 75
/* 004456BC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004456C0 3C051000 */  lui   $a1, 0x1000
/* 004456C4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004456C8 24060001 */  li    $a2, 1
/* 004456CC 0320F809 */  jalr  $t9
/* 004456D0 02401025 */   move  $v0, $s2
/* 004456D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004456D8 2404004C */  li    $a0, 76
/* 004456DC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004456E0 3C051400 */  lui   $a1, 0x1400
/* 004456E4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004456E8 24060001 */  li    $a2, 1
/* 004456EC 0320F809 */  jalr  $t9
/* 004456F0 02401025 */   move  $v0, $s2
/* 004456F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004456F8 2404004D */  li    $a0, 77
/* 004456FC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445700 3C051800 */  lui   $a1, 0x1800
/* 00445704 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445708 24060002 */  li    $a2, 2
/* 0044570C 0320F809 */  jalr  $t9
/* 00445710 02401025 */   move  $v0, $s2
/* 00445714 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445718 2404004E */  li    $a0, 78
/* 0044571C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445720 3C051C00 */  lui   $a1, 0x1c00
/* 00445724 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445728 24060002 */  li    $a2, 2
/* 0044572C 0320F809 */  jalr  $t9
/* 00445730 02401025 */   move  $v0, $s2
/* 00445734 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445738 24040035 */  li    $a0, 53
/* 0044573C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445740 3C050400 */  lui   $a1, 0x400
/* 00445744 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445748 24060002 */  li    $a2, 2
/* 0044574C 0320F809 */  jalr  $t9
/* 00445750 02401025 */   move  $v0, $s2
/* 00445754 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445758 24040037 */  li    $a0, 55
/* 0044575C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445760 3C050410 */  lui   $a1, 0x410
/* 00445764 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445768 24060002 */  li    $a2, 2
/* 0044576C 0320F809 */  jalr  $t9
/* 00445770 02401025 */   move  $v0, $s2
/* 00445774 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445778 24040036 */  li    $a0, 54
/* 0044577C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445780 3C050401 */  lui   $a1, 0x401
/* 00445784 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445788 24060002 */  li    $a2, 2
/* 0044578C 0320F809 */  jalr  $t9
/* 00445790 02401025 */   move  $v0, $s2
/* 00445794 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445798 24040038 */  li    $a0, 56
/* 0044579C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004457A0 3C050411 */  lui   $a1, 0x411
/* 004457A4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004457A8 24060002 */  li    $a2, 2
/* 004457AC 0320F809 */  jalr  $t9
/* 004457B0 02401025 */   move  $v0, $s2
/* 004457B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004457B8 2404004F */  li    $a0, 79
/* 004457BC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004457C0 3C055000 */  lui   $a1, 0x5000
/* 004457C4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004457C8 24060001 */  li    $a2, 1
/* 004457CC 0320F809 */  jalr  $t9
/* 004457D0 02401025 */   move  $v0, $s2
/* 004457D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004457D8 24040050 */  li    $a0, 80
/* 004457DC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004457E0 3C055400 */  lui   $a1, 0x5400
/* 004457E4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004457E8 24060001 */  li    $a2, 1
/* 004457EC 0320F809 */  jalr  $t9
/* 004457F0 02401025 */   move  $v0, $s2
/* 004457F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004457F8 24040051 */  li    $a0, 81
/* 004457FC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445800 3C055800 */  lui   $a1, 0x5800
/* 00445804 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445808 24060002 */  li    $a2, 2
/* 0044580C 0320F809 */  jalr  $t9
/* 00445810 02401025 */   move  $v0, $s2
/* 00445814 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445818 24040052 */  li    $a0, 82
/* 0044581C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445820 3C055C00 */  lui   $a1, 0x5c00
/* 00445824 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445828 24060002 */  li    $a2, 2
/* 0044582C 0320F809 */  jalr  $t9
/* 00445830 02401025 */   move  $v0, $s2
/* 00445834 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445838 2404003F */  li    $a0, 63
/* 0044583C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445840 3C050402 */  lui   $a1, 0x402
/* 00445844 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445848 24060002 */  li    $a2, 2
/* 0044584C 0320F809 */  jalr  $t9
/* 00445850 02401025 */   move  $v0, $s2
/* 00445854 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445858 24040041 */  li    $a0, 65
/* 0044585C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445860 3C050412 */  lui   $a1, 0x412
/* 00445864 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445868 24060002 */  li    $a2, 2
/* 0044586C 0320F809 */  jalr  $t9
/* 00445870 02401025 */   move  $v0, $s2
/* 00445874 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445878 24040040 */  li    $a0, 64
/* 0044587C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445880 3C050403 */  lui   $a1, 0x403
/* 00445884 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445888 24060002 */  li    $a2, 2
/* 0044588C 0320F809 */  jalr  $t9
/* 00445890 02401025 */   move  $v0, $s2
/* 00445894 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445898 24040042 */  li    $a0, 66
/* 0044589C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004458A0 3C050413 */  lui   $a1, 0x413
/* 004458A4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004458A8 24060002 */  li    $a2, 2
/* 004458AC 0320F809 */  jalr  $t9
/* 004458B0 02401025 */   move  $v0, $s2
/* 004458B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004458B8 2404000B */  li    $a0, 11
/* 004458BC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004458C0 2405000D */  li    $a1, 13
/* 004458C4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004458C8 24060003 */  li    $a2, 3
/* 004458CC 0320F809 */  jalr  $t9
/* 004458D0 02401025 */   move  $v0, $s2
/* 004458D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004458D8 24040063 */  li    $a0, 99
/* 004458DC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004458E0 3C054200 */  lui   $a1, 0x4200
/* 004458E4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004458E8 24060005 */  li    $a2, 5
/* 004458EC 0320F809 */  jalr  $t9
/* 004458F0 02401025 */   move  $v0, $s2
/* 004458F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004458F8 3C104600 */  lui   $s0, 0x4600
/* 004458FC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445900 02002825 */  move  $a1, $s0
/* 00445904 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445908 24040064 */  li    $a0, 100
/* 0044590C 24060005 */  li    $a2, 5
/* 00445910 0320F809 */  jalr  $t9
/* 00445914 02401025 */   move  $v0, $s2
/* 00445918 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044591C 24040065 */  li    $a0, 101
/* 00445920 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445924 3C054A00 */  lui   $a1, 0x4a00
/* 00445928 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044592C 24060005 */  li    $a2, 5
/* 00445930 0320F809 */  jalr  $t9
/* 00445934 02401025 */   move  $v0, $s2
/* 00445938 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044593C 24040012 */  li    $a0, 18
/* 00445940 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445944 2405001A */  li    $a1, 26
/* 00445948 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044594C 24060003 */  li    $a2, 3
/* 00445950 0320F809 */  jalr  $t9
/* 00445954 02401025 */   move  $v0, $s2
/* 00445958 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044595C 24040013 */  li    $a0, 19
/* 00445960 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445964 2405001B */  li    $a1, 27
/* 00445968 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044596C 24060003 */  li    $a2, 3
/* 00445970 0320F809 */  jalr  $t9
/* 00445974 02401025 */   move  $v0, $s2
/* 00445978 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044597C 2404004A */  li    $a0, 74
/* 00445980 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445984 3C050C00 */  lui   $a1, 0xc00
/* 00445988 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044598C 24060004 */  li    $a2, 4
/* 00445990 0320F809 */  jalr  $t9
/* 00445994 02401025 */   move  $v0, $s2
/* 00445998 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044599C 24040009 */  li    $a0, 9
/* 004459A0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004459A4 24050009 */  li    $a1, 9
/* 004459A8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004459AC 24060003 */  li    $a2, 3
/* 004459B0 0320F809 */  jalr  $t9
/* 004459B4 02401025 */   move  $v0, $s2
/* 004459B8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004459BC 24040049 */  li    $a0, 73
/* 004459C0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004459C4 3C050800 */  lui   $a1, 0x800
/* 004459C8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004459CC 24060004 */  li    $a2, 4
/* 004459D0 0320F809 */  jalr  $t9
/* 004459D4 02401025 */   move  $v0, $s2
/* 004459D8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004459DC 24040008 */  li    $a0, 8
/* 004459E0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004459E4 24050008 */  li    $a1, 8
/* 004459E8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004459EC 24060003 */  li    $a2, 3
/* 004459F0 0320F809 */  jalr  $t9
/* 004459F4 02401025 */   move  $v0, $s2
/* 004459F8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004459FC 24040066 */  li    $a0, 102
/* 00445A00 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445A04 3C058000 */  lui   $a1, 0x8000
/* 00445A08 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445A0C 24060006 */  li    $a2, 6
/* 00445A10 0320F809 */  jalr  $t9
/* 00445A14 02401025 */   move  $v0, $s2
/* 00445A18 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445A1C 2404006A */  li    $a0, 106
/* 00445A20 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445A24 3C059000 */  lui   $a1, 0x9000
/* 00445A28 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445A2C 24060006 */  li    $a2, 6
/* 00445A30 0320F809 */  jalr  $t9
/* 00445A34 02401025 */   move  $v0, $s2
/* 00445A38 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445A3C 24040067 */  li    $a0, 103
/* 00445A40 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445A44 3C058400 */  lui   $a1, 0x8400
/* 00445A48 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445A4C 24060006 */  li    $a2, 6
/* 00445A50 0320F809 */  jalr  $t9
/* 00445A54 02401025 */   move  $v0, $s2
/* 00445A58 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445A5C 2404006B */  li    $a0, 107
/* 00445A60 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445A64 3C059400 */  lui   $a1, 0x9400
/* 00445A68 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445A6C 24060006 */  li    $a2, 6
/* 00445A70 0320F809 */  jalr  $t9
/* 00445A74 02401025 */   move  $v0, $s2
/* 00445A78 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445A7C 2404005A */  li    $a0, 90
/* 00445A80 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445A84 3C053C00 */  lui   $a1, 0x3c00
/* 00445A88 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445A8C 00003025 */  move  $a2, $zero
/* 00445A90 0320F809 */  jalr  $t9
/* 00445A94 02401025 */   move  $v0, $s2
/* 00445A98 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445A9C 24040069 */  li    $a0, 105
/* 00445AA0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445AA4 3C058C00 */  lui   $a1, 0x8c00
/* 00445AA8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445AAC 24060006 */  li    $a2, 6
/* 00445AB0 0320F809 */  jalr  $t9
/* 00445AB4 02401025 */   move  $v0, $s2
/* 00445AB8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445ABC 24040079 */  li    $a0, 121
/* 00445AC0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445AC4 3C05DC00 */  lui   $a1, 0xdc00
/* 00445AC8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445ACC 24060006 */  li    $a2, 6
/* 00445AD0 0320F809 */  jalr  $t9
/* 00445AD4 02401025 */   move  $v0, $s2
/* 00445AD8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445ADC 24040072 */  li    $a0, 114
/* 00445AE0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445AE4 3C05C000 */  lui   $a1, 0xc000
/* 00445AE8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445AEC 24060006 */  li    $a2, 6
/* 00445AF0 0320F809 */  jalr  $t9
/* 00445AF4 02401025 */   move  $v0, $s2
/* 00445AF8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445AFC 24040073 */  li    $a0, 115
/* 00445B00 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445B04 3C05C400 */  lui   $a1, 0xc400
/* 00445B08 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445B0C 24060006 */  li    $a2, 6
/* 00445B10 0320F809 */  jalr  $t9
/* 00445B14 02401025 */   move  $v0, $s2
/* 00445B18 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445B1C 24040074 */  li    $a0, 116
/* 00445B20 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445B24 3C05C800 */  lui   $a1, 0xc800
/* 00445B28 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445B2C 24060006 */  li    $a2, 6
/* 00445B30 0320F809 */  jalr  $t9
/* 00445B34 02401025 */   move  $v0, $s2
/* 00445B38 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445B3C 24040068 */  li    $a0, 104
/* 00445B40 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445B44 3C058800 */  lui   $a1, 0x8800
/* 00445B48 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445B4C 24060006 */  li    $a2, 6
/* 00445B50 0320F809 */  jalr  $t9
/* 00445B54 02401025 */   move  $v0, $s2
/* 00445B58 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445B5C 2404006C */  li    $a0, 108
/* 00445B60 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445B64 3C059800 */  lui   $a1, 0x9800
/* 00445B68 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445B6C 24060006 */  li    $a2, 6
/* 00445B70 0320F809 */  jalr  $t9
/* 00445B74 02401025 */   move  $v0, $s2
/* 00445B78 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445B7C 2404000C */  li    $a0, 12
/* 00445B80 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445B84 24050010 */  li    $a1, 16
/* 00445B88 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445B8C 24060003 */  li    $a2, 3
/* 00445B90 0320F809 */  jalr  $t9
/* 00445B94 02401025 */   move  $v0, $s2
/* 00445B98 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445B9C 2404000E */  li    $a0, 14
/* 00445BA0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445BA4 24050012 */  li    $a1, 18
/* 00445BA8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445BAC 24060003 */  li    $a2, 3
/* 00445BB0 0320F809 */  jalr  $t9
/* 00445BB4 02401025 */   move  $v0, $s2
/* 00445BB8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445BBC 2404007B */  li    $a0, 123
/* 00445BC0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445BC4 3C05D400 */  lui   $a1, 0xd400
/* 00445BC8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445BCC 24060006 */  li    $a2, 6
/* 00445BD0 0320F809 */  jalr  $t9
/* 00445BD4 02401025 */   move  $v0, $s2
/* 00445BD8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445BDC 2404007C */  li    $a0, 124
/* 00445BE0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445BE4 3C05D800 */  lui   $a1, 0xd800
/* 00445BE8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445BEC 24060006 */  li    $a2, 6
/* 00445BF0 0320F809 */  jalr  $t9
/* 00445BF4 02401025 */   move  $v0, $s2
/* 00445BF8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445BFC 2404007D */  li    $a0, 125
/* 00445C00 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445C04 3C05F400 */  lui   $a1, 0xf400
/* 00445C08 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445C0C 24060006 */  li    $a2, 6
/* 00445C10 0320F809 */  jalr  $t9
/* 00445C14 02401025 */   move  $v0, $s2
/* 00445C18 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445C1C 2404007E */  li    $a0, 126
/* 00445C20 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445C24 3C05F800 */  lui   $a1, 0xf800
/* 00445C28 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445C2C 24060006 */  li    $a2, 6
/* 00445C30 0320F809 */  jalr  $t9
/* 00445C34 02401025 */   move  $v0, $s2
/* 00445C38 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445C3C 2404008B */  li    $a0, 139
/* 00445C40 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445C44 3C054000 */  lui   $a1, 0x4000
/* 00445C48 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445C4C 24060005 */  li    $a2, 5
/* 00445C50 0320F809 */  jalr  $t9
/* 00445C54 02401025 */   move  $v0, $s2
/* 00445C58 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445C5C 2404008C */  li    $a0, 140
/* 00445C60 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445C64 3C054400 */  lui   $a1, 0x4400
/* 00445C68 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445C6C 24060005 */  li    $a2, 5
/* 00445C70 0320F809 */  jalr  $t9
/* 00445C74 02401025 */   move  $v0, $s2
/* 00445C78 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445C7C 2404008D */  li    $a0, 141
/* 00445C80 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445C84 3C054800 */  lui   $a1, 0x4800
/* 00445C88 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445C8C 24060005 */  li    $a2, 5
/* 00445C90 0320F809 */  jalr  $t9
/* 00445C94 02401025 */   move  $v0, $s2
/* 00445C98 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445C9C 240400F4 */  li    $a0, 244
/* 00445CA0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445CA4 3C054040 */  lui   $a1, 0x4040
/* 00445CA8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445CAC 24060005 */  li    $a2, 5
/* 00445CB0 0320F809 */  jalr  $t9
/* 00445CB4 02401025 */   move  $v0, $s2
/* 00445CB8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445CBC 2404008E */  li    $a0, 142
/* 00445CC0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445CC4 3C054440 */  lui   $a1, 0x4440
/* 00445CC8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445CCC 24060005 */  li    $a2, 5
/* 00445CD0 0320F809 */  jalr  $t9
/* 00445CD4 02401025 */   move  $v0, $s2
/* 00445CD8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445CDC 240400F5 */  li    $a0, 245
/* 00445CE0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445CE4 3C054840 */  lui   $a1, 0x4840
/* 00445CE8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445CEC 24060005 */  li    $a2, 5
/* 00445CF0 0320F809 */  jalr  $t9
/* 00445CF4 02401025 */   move  $v0, $s2
/* 00445CF8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445CFC 2404008F */  li    $a0, 143
/* 00445D00 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445D04 3C054080 */  lui   $a1, 0x4080
/* 00445D08 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445D0C 24060005 */  li    $a2, 5
/* 00445D10 0320F809 */  jalr  $t9
/* 00445D14 02401025 */   move  $v0, $s2
/* 00445D18 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445D1C 24040090 */  li    $a0, 144
/* 00445D20 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445D24 3C054480 */  lui   $a1, 0x4480
/* 00445D28 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445D2C 24060005 */  li    $a2, 5
/* 00445D30 0320F809 */  jalr  $t9
/* 00445D34 02401025 */   move  $v0, $s2
/* 00445D38 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445D3C 24040091 */  li    $a0, 145
/* 00445D40 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445D44 3C054880 */  lui   $a1, 0x4880
/* 00445D48 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445D4C 24060005 */  li    $a2, 5
/* 00445D50 0320F809 */  jalr  $t9
/* 00445D54 02401025 */   move  $v0, $s2
/* 00445D58 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445D5C 240400F6 */  li    $a0, 246
/* 00445D60 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445D64 3C0540C0 */  lui   $a1, 0x40c0
/* 00445D68 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445D6C 24060005 */  li    $a2, 5
/* 00445D70 0320F809 */  jalr  $t9
/* 00445D74 02401025 */   move  $v0, $s2
/* 00445D78 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445D7C 24040092 */  li    $a0, 146
/* 00445D80 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445D84 3C0544C0 */  lui   $a1, 0x44c0
/* 00445D88 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445D8C 24060005 */  li    $a2, 5
/* 00445D90 0320F809 */  jalr  $t9
/* 00445D94 02401025 */   move  $v0, $s2
/* 00445D98 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445D9C 240400F7 */  li    $a0, 247
/* 00445DA0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445DA4 3C0548C0 */  lui   $a1, 0x48c0
/* 00445DA8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445DAC 24060005 */  li    $a2, 5
/* 00445DB0 0320F809 */  jalr  $t9
/* 00445DB4 02401025 */   move  $v0, $s2
/* 00445DB8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445DBC 2404000D */  li    $a0, 13
/* 00445DC0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445DC4 24050011 */  li    $a1, 17
/* 00445DC8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445DCC 24060003 */  li    $a2, 3
/* 00445DD0 0320F809 */  jalr  $t9
/* 00445DD4 02401025 */   move  $v0, $s2
/* 00445DD8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445DDC 2404000F */  li    $a0, 15
/* 00445DE0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445DE4 24050013 */  li    $a1, 19
/* 00445DE8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445DEC 24060003 */  li    $a2, 3
/* 00445DF0 0320F809 */  jalr  $t9
/* 00445DF4 02401025 */   move  $v0, $s2
/* 00445DF8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445DFC 24040010 */  li    $a0, 16
/* 00445E00 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445E04 24050018 */  li    $a1, 24
/* 00445E08 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445E0C 24060003 */  li    $a2, 3
/* 00445E10 0320F809 */  jalr  $t9
/* 00445E14 02401025 */   move  $v0, $s2
/* 00445E18 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445E1C 24040011 */  li    $a0, 17
/* 00445E20 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445E24 24050019 */  li    $a1, 25
/* 00445E28 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445E2C 24060003 */  li    $a2, 3
/* 00445E30 0320F809 */  jalr  $t9
/* 00445E34 02401025 */   move  $v0, $s2
/* 00445E38 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445E3C 2404001B */  li    $a0, 27
/* 00445E40 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445E44 24050027 */  li    $a1, 39
/* 00445E48 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445E4C 24060003 */  li    $a2, 3
/* 00445E50 0320F809 */  jalr  $t9
/* 00445E54 02401025 */   move  $v0, $s2
/* 00445E58 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445E5C 24040019 */  li    $a0, 25
/* 00445E60 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445E64 24050025 */  li    $a1, 37
/* 00445E68 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445E6C 24060003 */  li    $a2, 3
/* 00445E70 0320F809 */  jalr  $t9
/* 00445E74 02401025 */   move  $v0, $s2
/* 00445E78 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445E7C 24040058 */  li    $a0, 88
/* 00445E80 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445E84 3C053400 */  lui   $a1, 0x3400
/* 00445E88 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445E8C 00003025 */  move  $a2, $zero
/* 00445E90 0320F809 */  jalr  $t9
/* 00445E94 02401025 */   move  $v0, $s2
/* 00445E98 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445E9C 3C054200 */  lui   $a1, 0x4200
/* 00445EA0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445EA4 34A50010 */  ori   $a1, $a1, 0x10
/* 00445EA8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445EAC 24040093 */  li    $a0, 147
/* 00445EB0 24060005 */  li    $a2, 5
/* 00445EB4 0320F809 */  jalr  $t9
/* 00445EB8 02401025 */   move  $v0, $s2
/* 00445EBC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445EC0 3C054200 */  lui   $a1, 0x4200
/* 00445EC4 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445EC8 34A50001 */  ori   $a1, $a1, 1
/* 00445ECC 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445ED0 24040094 */  li    $a0, 148
/* 00445ED4 24060005 */  li    $a2, 5
/* 00445ED8 0320F809 */  jalr  $t9
/* 00445EDC 02401025 */   move  $v0, $s2
/* 00445EE0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445EE4 3C054200 */  lui   $a1, 0x4200
/* 00445EE8 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445EEC 34A50002 */  ori   $a1, $a1, 2
/* 00445EF0 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445EF4 24040095 */  li    $a0, 149
/* 00445EF8 24060005 */  li    $a2, 5
/* 00445EFC 0320F809 */  jalr  $t9
/* 00445F00 02401025 */   move  $v0, $s2
/* 00445F04 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445F08 3C054200 */  lui   $a1, 0x4200
/* 00445F0C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445F10 34A50006 */  ori   $a1, $a1, 6
/* 00445F14 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445F18 24040096 */  li    $a0, 150
/* 00445F1C 24060005 */  li    $a2, 5
/* 00445F20 0320F809 */  jalr  $t9
/* 00445F24 02401025 */   move  $v0, $s2
/* 00445F28 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445F2C 3C054200 */  lui   $a1, 0x4200
/* 00445F30 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445F34 34A50008 */  ori   $a1, $a1, 8
/* 00445F38 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445F3C 24040097 */  li    $a0, 151
/* 00445F40 24060005 */  li    $a2, 5
/* 00445F44 0320F809 */  jalr  $t9
/* 00445F48 02401025 */   move  $v0, $s2
/* 00445F4C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445F50 3C054300 */  lui   $a1, 0x4300
/* 00445F54 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445F58 34A50001 */  ori   $a1, $a1, 1
/* 00445F5C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445F60 2404013D */  li    $a0, 317
/* 00445F64 24060005 */  li    $a2, 5
/* 00445F68 0320F809 */  jalr  $t9
/* 00445F6C 02401025 */   move  $v0, $s2
/* 00445F70 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445F74 3C054300 */  lui   $a1, 0x4300
/* 00445F78 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445F7C 34A50008 */  ori   $a1, $a1, 8
/* 00445F80 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445F84 2404013E */  li    $a0, 318
/* 00445F88 24060005 */  li    $a2, 5
/* 00445F8C 0320F809 */  jalr  $t9
/* 00445F90 02401025 */   move  $v0, $s2
/* 00445F94 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445F98 24040098 */  li    $a0, 152
/* 00445F9C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445FA0 2405000F */  li    $a1, 15
/* 00445FA4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445FA8 24060003 */  li    $a2, 3
/* 00445FAC 0320F809 */  jalr  $t9
/* 00445FB0 02401025 */   move  $v0, $s2
/* 00445FB4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445FB8 2404006D */  li    $a0, 109
/* 00445FBC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445FC0 3C05A000 */  lui   $a1, 0xa000
/* 00445FC4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445FC8 24060006 */  li    $a2, 6
/* 00445FCC 0320F809 */  jalr  $t9
/* 00445FD0 02401025 */   move  $v0, $s2
/* 00445FD4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445FD8 2404006E */  li    $a0, 110
/* 00445FDC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00445FE0 3C05A400 */  lui   $a1, 0xa400
/* 00445FE4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00445FE8 24060006 */  li    $a2, 6
/* 00445FEC 0320F809 */  jalr  $t9
/* 00445FF0 02401025 */   move  $v0, $s2
/* 00445FF4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00445FF8 24040002 */  li    $a0, 2
/* 00445FFC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00446000 00002825 */  move  $a1, $zero
/* 00446004 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00446008 24060003 */  li    $a2, 3
/* 0044600C 0320F809 */  jalr  $t9
/* 00446010 02401025 */   move  $v0, $s2
/* 00446014 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446018 24040005 */  li    $a0, 5
/* 0044601C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00446020 24050004 */  li    $a1, 4
/* 00446024 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00446028 24060003 */  li    $a2, 3
/* 0044602C 0320F809 */  jalr  $t9
/* 00446030 02401025 */   move  $v0, $s2
/* 00446034 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446038 24040016 */  li    $a0, 22
/* 0044603C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00446040 24050022 */  li    $a1, 34
/* 00446044 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00446048 24060003 */  li    $a2, 3
/* 0044604C 0320F809 */  jalr  $t9
/* 00446050 02401025 */   move  $v0, $s2
/* 00446054 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446058 24040017 */  li    $a0, 23
/* 0044605C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00446060 24050023 */  li    $a1, 35
/* 00446064 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00446068 24060003 */  li    $a2, 3
/* 0044606C 0320F809 */  jalr  $t9
/* 00446070 02401025 */   move  $v0, $s2
/* 00446074 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446078 2404001C */  li    $a0, 28
/* 0044607C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00446080 2405002A */  li    $a1, 42
/* 00446084 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00446088 24060003 */  li    $a2, 3
/* 0044608C 0320F809 */  jalr  $t9
/* 00446090 02401025 */   move  $v0, $s2
/* 00446094 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446098 2404001D */  li    $a0, 29
/* 0044609C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004460A0 2405002B */  li    $a1, 43
/* 004460A4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004460A8 24060003 */  li    $a2, 3
/* 004460AC 0320F809 */  jalr  $t9
/* 004460B0 02401025 */   move  $v0, $s2
/* 004460B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004460B8 24040020 */  li    $a0, 32
/* 004460BC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004460C0 24050030 */  li    $a1, 48
/* 004460C4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004460C8 24060003 */  li    $a2, 3
/* 004460CC 0320F809 */  jalr  $t9
/* 004460D0 02401025 */   move  $v0, $s2
/* 004460D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004460D8 24040021 */  li    $a0, 33
/* 004460DC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004460E0 24050031 */  li    $a1, 49
/* 004460E4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004460E8 24060003 */  li    $a2, 3
/* 004460EC 0320F809 */  jalr  $t9
/* 004460F0 02401025 */   move  $v0, $s2
/* 004460F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004460F8 2404001E */  li    $a0, 30
/* 004460FC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00446100 24050032 */  li    $a1, 50
/* 00446104 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00446108 24060003 */  li    $a2, 3
/* 0044610C 0320F809 */  jalr  $t9
/* 00446110 02401025 */   move  $v0, $s2
/* 00446114 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446118 2404001F */  li    $a0, 31
/* 0044611C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00446120 24050033 */  li    $a1, 51
/* 00446124 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00446128 24060003 */  li    $a2, 3
/* 0044612C 0320F809 */  jalr  $t9
/* 00446130 02401025 */   move  $v0, $s2
/* 00446134 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446138 24040022 */  li    $a0, 34
/* 0044613C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00446140 24050034 */  li    $a1, 52
/* 00446144 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00446148 24060003 */  li    $a2, 3
/* 0044614C 0320F809 */  jalr  $t9
/* 00446150 02401025 */   move  $v0, $s2
/* 00446154 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446158 24040023 */  li    $a0, 35
/* 0044615C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00446160 24050036 */  li    $a1, 54
/* 00446164 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00446168 24060003 */  li    $a2, 3
/* 0044616C 0320F809 */  jalr  $t9
/* 00446170 02401025 */   move  $v0, $s2
/* 00446174 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446178 2404005D */  li    $a0, 93
/* 0044617C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00446180 3C050408 */  lui   $a1, 0x408
/* 00446184 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00446188 24060009 */  li    $a2, 9
/* 0044618C 0320F809 */  jalr  $t9
/* 00446190 02401025 */   move  $v0, $s2
/* 00446194 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446198 2404005E */  li    $a0, 94
/* 0044619C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004461A0 3C050409 */  lui   $a1, 0x409
/* 004461A4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004461A8 24060009 */  li    $a2, 9
/* 004461AC 0320F809 */  jalr  $t9
/* 004461B0 02401025 */   move  $v0, $s2
/* 004461B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004461B8 2404005B */  li    $a0, 91
/* 004461BC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004461C0 3C05040A */  lui   $a1, 0x40a
/* 004461C4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004461C8 24060009 */  li    $a2, 9
/* 004461CC 0320F809 */  jalr  $t9
/* 004461D0 02401025 */   move  $v0, $s2
/* 004461D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004461D8 2404005C */  li    $a0, 92
/* 004461DC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004461E0 3C05040B */  lui   $a1, 0x40b
/* 004461E4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004461E8 24060009 */  li    $a2, 9
/* 004461EC 0320F809 */  jalr  $t9
/* 004461F0 02401025 */   move  $v0, $s2
/* 004461F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004461F8 2404005F */  li    $a0, 95
/* 004461FC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00446200 3C05040C */  lui   $a1, 0x40c
/* 00446204 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00446208 24060009 */  li    $a2, 9
/* 0044620C 0320F809 */  jalr  $t9
/* 00446210 02401025 */   move  $v0, $s2
/* 00446214 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446218 24040060 */  li    $a0, 96
/* 0044621C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00446220 3C05040E */  lui   $a1, 0x40e
/* 00446224 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00446228 24060009 */  li    $a2, 9
/* 0044622C 0320F809 */  jalr  $t9
/* 00446230 02401025 */   move  $v0, $s2
/* 00446234 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446238 24040055 */  li    $a0, 85
/* 0044623C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00446240 3C052800 */  lui   $a1, 0x2800
/* 00446244 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00446248 00003025 */  move  $a2, $zero
/* 0044624C 0320F809 */  jalr  $t9
/* 00446250 02401025 */   move  $v0, $s2
/* 00446254 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446258 24040056 */  li    $a0, 86
/* 0044625C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00446260 3C052C00 */  lui   $a1, 0x2c00
/* 00446264 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00446268 00003025 */  move  $a2, $zero
/* 0044626C 0320F809 */  jalr  $t9
/* 00446270 02401025 */   move  $v0, $s2
/* 00446274 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446278 24040004 */  li    $a0, 4
/* 0044627C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00446280 24050003 */  li    $a1, 3
/* 00446284 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00446288 24060003 */  li    $a2, 3
/* 0044628C 0320F809 */  jalr  $t9
/* 00446290 02401025 */   move  $v0, $s2
/* 00446294 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446298 24040007 */  li    $a0, 7
/* 0044629C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004462A0 24050007 */  li    $a1, 7
/* 004462A4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004462A8 24060003 */  li    $a2, 3
/* 004462AC 0320F809 */  jalr  $t9
/* 004462B0 02401025 */   move  $v0, $s2
/* 004462B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004462B8 24040003 */  li    $a0, 3
/* 004462BC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004462C0 24050002 */  li    $a1, 2
/* 004462C4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004462C8 24060003 */  li    $a2, 3
/* 004462CC 0320F809 */  jalr  $t9
/* 004462D0 02401025 */   move  $v0, $s2
/* 004462D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004462D8 24040006 */  li    $a0, 6
/* 004462DC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004462E0 24050006 */  li    $a1, 6
/* 004462E4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004462E8 24060003 */  li    $a2, 3
/* 004462EC 0320F809 */  jalr  $t9
/* 004462F0 02401025 */   move  $v0, $s2
/* 004462F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004462F8 24040070 */  li    $a0, 112
/* 004462FC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00446300 3C05AC00 */  lui   $a1, 0xac00
/* 00446304 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00446308 24060006 */  li    $a2, 6
/* 0044630C 0320F809 */  jalr  $t9
/* 00446310 02401025 */   move  $v0, $s2
/* 00446314 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446318 2404007A */  li    $a0, 122
/* 0044631C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00446320 3C05FC00 */  lui   $a1, 0xfc00
/* 00446324 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00446328 24060006 */  li    $a2, 6
/* 0044632C 0320F809 */  jalr  $t9
/* 00446330 02401025 */   move  $v0, $s2
/* 00446334 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446338 24040075 */  li    $a0, 117
/* 0044633C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00446340 3C05E000 */  lui   $a1, 0xe000
/* 00446344 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00446348 24060006 */  li    $a2, 6
/* 0044634C 0320F809 */  jalr  $t9
/* 00446350 02401025 */   move  $v0, $s2
/* 00446354 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446358 24040076 */  li    $a0, 118
/* 0044635C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00446360 3C05E400 */  lui   $a1, 0xe400
/* 00446364 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00446368 24060006 */  li    $a2, 6
/* 0044636C 0320F809 */  jalr  $t9
/* 00446370 02401025 */   move  $v0, $s2
/* 00446374 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446378 24040077 */  li    $a0, 119
/* 0044637C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00446380 3C05E800 */  lui   $a1, 0xe800
/* 00446384 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00446388 24060006 */  li    $a2, 6
/* 0044638C 0320F809 */  jalr  $t9
/* 00446390 02401025 */   move  $v0, $s2
/* 00446394 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446398 2404006F */  li    $a0, 111
/* 0044639C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004463A0 3C05A800 */  lui   $a1, 0xa800
/* 004463A4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004463A8 24060006 */  li    $a2, 6
/* 004463AC 0320F809 */  jalr  $t9
/* 004463B0 02401025 */   move  $v0, $s2
/* 004463B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004463B8 24040071 */  li    $a0, 113
/* 004463BC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004463C0 3C05B800 */  lui   $a1, 0xb800
/* 004463C4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004463C8 24060006 */  li    $a2, 6
/* 004463CC 0320F809 */  jalr  $t9
/* 004463D0 02401025 */   move  $v0, $s2
/* 004463D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004463D8 2404000A */  li    $a0, 10
/* 004463DC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004463E0 2405000C */  li    $a1, 12
/* 004463E4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004463E8 24060003 */  li    $a2, 3
/* 004463EC 0320F809 */  jalr  $t9
/* 004463F0 02401025 */   move  $v0, $s2
/* 004463F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004463F8 2404001A */  li    $a0, 26
/* 004463FC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00446400 24050026 */  li    $a1, 38
/* 00446404 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00446408 24060003 */  li    $a2, 3
/* 0044640C 0320F809 */  jalr  $t9
/* 00446410 02401025 */   move  $v0, $s2
/* 00446414 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446418 24040059 */  li    $a0, 89
/* 0044641C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00446420 3C053800 */  lui   $a1, 0x3800
/* 00446424 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00446428 00003025 */  move  $a2, $zero
/* 0044642C 0320F809 */  jalr  $t9
/* 00446430 02401025 */   move  $v0, $s2
/* 00446434 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446438 240400FC */  li    $a0, 252
/* 0044643C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446440 2405000B */  li    $a1, 11
/* 00446444 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446448 240600F8 */  li    $a2, 248
/* 0044644C 0320F809 */  jalr  $t9
/* 00446450 02401025 */   move  $v0, $s2
/* 00446454 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446458 240400FD */  li    $a0, 253
/* 0044645C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446460 2405000B */  li    $a1, 11
/* 00446464 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446468 240600F9 */  li    $a2, 249
/* 0044646C 0320F809 */  jalr  $t9
/* 00446470 02401025 */   move  $v0, $s2
/* 00446474 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446478 240400FE */  li    $a0, 254
/* 0044647C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446480 2405000B */  li    $a1, 11
/* 00446484 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446488 240600FA */  li    $a2, 250
/* 0044648C 0320F809 */  jalr  $t9
/* 00446490 02401025 */   move  $v0, $s2
/* 00446494 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446498 24040076 */  li    $a0, 118
/* 0044649C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004464A0 24050001 */  li    $a1, 1
/* 004464A4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004464A8 00003025 */  move  $a2, $zero
/* 004464AC 0320F809 */  jalr  $t9
/* 004464B0 02401025 */   move  $v0, $s2
/* 004464B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004464B8 24040077 */  li    $a0, 119
/* 004464BC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004464C0 24050001 */  li    $a1, 1
/* 004464C4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004464C8 00003025 */  move  $a2, $zero
/* 004464CC 0320F809 */  jalr  $t9
/* 004464D0 02401025 */   move  $v0, $s2
/* 004464D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004464D8 24040078 */  li    $a0, 120
/* 004464DC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004464E0 24050001 */  li    $a1, 1
/* 004464E4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004464E8 00003025 */  move  $a2, $zero
/* 004464EC 0320F809 */  jalr  $t9
/* 004464F0 02401025 */   move  $v0, $s2
/* 004464F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004464F8 24040079 */  li    $a0, 121
/* 004464FC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446500 24050001 */  li    $a1, 1
/* 00446504 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446508 00003025 */  move  $a2, $zero
/* 0044650C 0320F809 */  jalr  $t9
/* 00446510 02401025 */   move  $v0, $s2
/* 00446514 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446518 2404007A */  li    $a0, 122
/* 0044651C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446520 24050001 */  li    $a1, 1
/* 00446524 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446528 00003025 */  move  $a2, $zero
/* 0044652C 0320F809 */  jalr  $t9
/* 00446530 02401025 */   move  $v0, $s2
/* 00446534 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446538 2404007B */  li    $a0, 123
/* 0044653C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446540 24050001 */  li    $a1, 1
/* 00446544 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446548 00003025 */  move  $a2, $zero
/* 0044654C 0320F809 */  jalr  $t9
/* 00446550 02401025 */   move  $v0, $s2
/* 00446554 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446558 2404007C */  li    $a0, 124
/* 0044655C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446560 24050003 */  li    $a1, 3
/* 00446564 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446568 240600A0 */  li    $a2, 160
/* 0044656C 0320F809 */  jalr  $t9
/* 00446570 02401025 */   move  $v0, $s2
/* 00446574 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446578 2404007D */  li    $a0, 125
/* 0044657C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446580 24050003 */  li    $a1, 3
/* 00446584 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446588 240600A1 */  li    $a2, 161
/* 0044658C 0320F809 */  jalr  $t9
/* 00446590 02401025 */   move  $v0, $s2
/* 00446594 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446598 2404007E */  li    $a0, 126
/* 0044659C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004465A0 24050003 */  li    $a1, 3
/* 004465A4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004465A8 240600A2 */  li    $a2, 162
/* 004465AC 0320F809 */  jalr  $t9
/* 004465B0 02401025 */   move  $v0, $s2
/* 004465B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004465B8 2404007F */  li    $a0, 127
/* 004465BC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004465C0 24050003 */  li    $a1, 3
/* 004465C4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004465C8 240600A3 */  li    $a2, 163
/* 004465CC 0320F809 */  jalr  $t9
/* 004465D0 02401025 */   move  $v0, $s2
/* 004465D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004465D8 24040080 */  li    $a0, 128
/* 004465DC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004465E0 24050003 */  li    $a1, 3
/* 004465E4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004465E8 240600A4 */  li    $a2, 164
/* 004465EC 0320F809 */  jalr  $t9
/* 004465F0 02401025 */   move  $v0, $s2
/* 004465F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004465F8 24040081 */  li    $a0, 129
/* 004465FC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446600 24050003 */  li    $a1, 3
/* 00446604 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446608 240600A5 */  li    $a2, 165
/* 0044660C 0320F809 */  jalr  $t9
/* 00446610 02401025 */   move  $v0, $s2
/* 00446614 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446618 24040082 */  li    $a0, 130
/* 0044661C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446620 24050003 */  li    $a1, 3
/* 00446624 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446628 240600A6 */  li    $a2, 166
/* 0044662C 0320F809 */  jalr  $t9
/* 00446630 02401025 */   move  $v0, $s2
/* 00446634 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446638 24040083 */  li    $a0, 131
/* 0044663C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446640 24050003 */  li    $a1, 3
/* 00446644 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446648 240600A7 */  li    $a2, 167
/* 0044664C 0320F809 */  jalr  $t9
/* 00446650 02401025 */   move  $v0, $s2
/* 00446654 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446658 24040084 */  li    $a0, 132
/* 0044665C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446660 24050003 */  li    $a1, 3
/* 00446664 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446668 240600A8 */  li    $a2, 168
/* 0044666C 0320F809 */  jalr  $t9
/* 00446670 02401025 */   move  $v0, $s2
/* 00446674 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446678 24040085 */  li    $a0, 133
/* 0044667C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446680 24050003 */  li    $a1, 3
/* 00446684 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446688 240600A9 */  li    $a2, 169
/* 0044668C 0320F809 */  jalr  $t9
/* 00446690 02401025 */   move  $v0, $s2
/* 00446694 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446698 24040086 */  li    $a0, 134
/* 0044669C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004466A0 24050003 */  li    $a1, 3
/* 004466A4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004466A8 240600AA */  li    $a2, 170
/* 004466AC 0320F809 */  jalr  $t9
/* 004466B0 02401025 */   move  $v0, $s2
/* 004466B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004466B8 24040087 */  li    $a0, 135
/* 004466BC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004466C0 24050003 */  li    $a1, 3
/* 004466C4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004466C8 240600AB */  li    $a2, 171
/* 004466CC 0320F809 */  jalr  $t9
/* 004466D0 02401025 */   move  $v0, $s2
/* 004466D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004466D8 24040088 */  li    $a0, 136
/* 004466DC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004466E0 24050003 */  li    $a1, 3
/* 004466E4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004466E8 240600AC */  li    $a2, 172
/* 004466EC 0320F809 */  jalr  $t9
/* 004466F0 02401025 */   move  $v0, $s2
/* 004466F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004466F8 24040089 */  li    $a0, 137
/* 004466FC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446700 24050003 */  li    $a1, 3
/* 00446704 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446708 240600AD */  li    $a2, 173
/* 0044670C 0320F809 */  jalr  $t9
/* 00446710 02401025 */   move  $v0, $s2
/* 00446714 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446718 2404008A */  li    $a0, 138
/* 0044671C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446720 24050003 */  li    $a1, 3
/* 00446724 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446728 240600AE */  li    $a2, 174
/* 0044672C 0320F809 */  jalr  $t9
/* 00446730 02401025 */   move  $v0, $s2
/* 00446734 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446738 2404008B */  li    $a0, 139
/* 0044673C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446740 24050003 */  li    $a1, 3
/* 00446744 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446748 240600B2 */  li    $a2, 178
/* 0044674C 0320F809 */  jalr  $t9
/* 00446750 02401025 */   move  $v0, $s2
/* 00446754 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446758 2404008C */  li    $a0, 140
/* 0044675C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446760 24050003 */  li    $a1, 3
/* 00446764 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446768 240600B3 */  li    $a2, 179
/* 0044676C 0320F809 */  jalr  $t9
/* 00446770 02401025 */   move  $v0, $s2
/* 00446774 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446778 2404008D */  li    $a0, 141
/* 0044677C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446780 24050003 */  li    $a1, 3
/* 00446784 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446788 240600B4 */  li    $a2, 180
/* 0044678C 0320F809 */  jalr  $t9
/* 00446790 02401025 */   move  $v0, $s2
/* 00446794 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446798 2404008E */  li    $a0, 142
/* 0044679C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004467A0 24050003 */  li    $a1, 3
/* 004467A4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004467A8 240600AF */  li    $a2, 175
/* 004467AC 0320F809 */  jalr  $t9
/* 004467B0 02401025 */   move  $v0, $s2
/* 004467B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004467B8 2404008F */  li    $a0, 143
/* 004467BC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004467C0 24050003 */  li    $a1, 3
/* 004467C4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004467C8 240600B0 */  li    $a2, 176
/* 004467CC 0320F809 */  jalr  $t9
/* 004467D0 02401025 */   move  $v0, $s2
/* 004467D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004467D8 24040090 */  li    $a0, 144
/* 004467DC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004467E0 24050003 */  li    $a1, 3
/* 004467E4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004467E8 240600B1 */  li    $a2, 177
/* 004467EC 0320F809 */  jalr  $t9
/* 004467F0 02401025 */   move  $v0, $s2
/* 004467F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004467F8 240400DE */  li    $a0, 222
/* 004467FC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446800 24050003 */  li    $a1, 3
/* 00446804 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446808 240600B5 */  li    $a2, 181
/* 0044680C 0320F809 */  jalr  $t9
/* 00446810 02401025 */   move  $v0, $s2
/* 00446814 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446818 240400DF */  li    $a0, 223
/* 0044681C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446820 24050003 */  li    $a1, 3
/* 00446824 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446828 240600B6 */  li    $a2, 182
/* 0044682C 0320F809 */  jalr  $t9
/* 00446830 02401025 */   move  $v0, $s2
/* 00446834 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446838 240400E0 */  li    $a0, 224
/* 0044683C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446840 24050003 */  li    $a1, 3
/* 00446844 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446848 240600B7 */  li    $a2, 183
/* 0044684C 0320F809 */  jalr  $t9
/* 00446850 02401025 */   move  $v0, $s2
/* 00446854 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446858 24040091 */  li    $a0, 145
/* 0044685C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446860 24050003 */  li    $a1, 3
/* 00446864 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446868 240600B8 */  li    $a2, 184
/* 0044686C 0320F809 */  jalr  $t9
/* 00446870 02401025 */   move  $v0, $s2
/* 00446874 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446878 24040092 */  li    $a0, 146
/* 0044687C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446880 24050003 */  li    $a1, 3
/* 00446884 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446888 240600B9 */  li    $a2, 185
/* 0044688C 0320F809 */  jalr  $t9
/* 00446890 02401025 */   move  $v0, $s2
/* 00446894 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446898 24040093 */  li    $a0, 147
/* 0044689C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004468A0 24050003 */  li    $a1, 3
/* 004468A4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004468A8 240600BA */  li    $a2, 186
/* 004468AC 0320F809 */  jalr  $t9
/* 004468B0 02401025 */   move  $v0, $s2
/* 004468B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004468B8 24040094 */  li    $a0, 148
/* 004468BC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004468C0 24050003 */  li    $a1, 3
/* 004468C4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004468C8 240600BB */  li    $a2, 187
/* 004468CC 0320F809 */  jalr  $t9
/* 004468D0 02401025 */   move  $v0, $s2
/* 004468D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004468D8 24040095 */  li    $a0, 149
/* 004468DC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004468E0 24050003 */  li    $a1, 3
/* 004468E4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004468E8 240600BC */  li    $a2, 188
/* 004468EC 0320F809 */  jalr  $t9
/* 004468F0 02401025 */   move  $v0, $s2
/* 004468F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004468F8 24040096 */  li    $a0, 150
/* 004468FC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446900 24050003 */  li    $a1, 3
/* 00446904 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446908 240600BD */  li    $a2, 189
/* 0044690C 0320F809 */  jalr  $t9
/* 00446910 02401025 */   move  $v0, $s2
/* 00446914 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446918 24040097 */  li    $a0, 151
/* 0044691C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446920 24050003 */  li    $a1, 3
/* 00446924 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446928 240600BE */  li    $a2, 190
/* 0044692C 0320F809 */  jalr  $t9
/* 00446930 02401025 */   move  $v0, $s2
/* 00446934 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446938 24040098 */  li    $a0, 152
/* 0044693C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446940 24050003 */  li    $a1, 3
/* 00446944 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446948 240600BF */  li    $a2, 191
/* 0044694C 0320F809 */  jalr  $t9
/* 00446950 02401025 */   move  $v0, $s2
/* 00446954 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446958 24040099 */  li    $a0, 153
/* 0044695C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446960 24050003 */  li    $a1, 3
/* 00446964 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446968 240600C0 */  li    $a2, 192
/* 0044696C 0320F809 */  jalr  $t9
/* 00446970 02401025 */   move  $v0, $s2
/* 00446974 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446978 2404009A */  li    $a0, 154
/* 0044697C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446980 24050003 */  li    $a1, 3
/* 00446984 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446988 240600C1 */  li    $a2, 193
/* 0044698C 0320F809 */  jalr  $t9
/* 00446990 02401025 */   move  $v0, $s2
/* 00446994 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446998 2404009B */  li    $a0, 155
/* 0044699C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004469A0 24050003 */  li    $a1, 3
/* 004469A4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004469A8 240600C2 */  li    $a2, 194
/* 004469AC 0320F809 */  jalr  $t9
/* 004469B0 02401025 */   move  $v0, $s2
/* 004469B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004469B8 2404009C */  li    $a0, 156
/* 004469BC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004469C0 24050003 */  li    $a1, 3
/* 004469C4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004469C8 240600C3 */  li    $a2, 195
/* 004469CC 0320F809 */  jalr  $t9
/* 004469D0 02401025 */   move  $v0, $s2
/* 004469D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004469D8 2404009D */  li    $a0, 157
/* 004469DC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004469E0 24050003 */  li    $a1, 3
/* 004469E4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004469E8 240600C4 */  li    $a2, 196
/* 004469EC 0320F809 */  jalr  $t9
/* 004469F0 02401025 */   move  $v0, $s2
/* 004469F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004469F8 2404009E */  li    $a0, 158
/* 004469FC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446A00 24050003 */  li    $a1, 3
/* 00446A04 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446A08 240600C5 */  li    $a2, 197
/* 00446A0C 0320F809 */  jalr  $t9
/* 00446A10 02401025 */   move  $v0, $s2
/* 00446A14 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446A18 2404009F */  li    $a0, 159
/* 00446A1C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446A20 24050003 */  li    $a1, 3
/* 00446A24 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446A28 240600C6 */  li    $a2, 198
/* 00446A2C 0320F809 */  jalr  $t9
/* 00446A30 02401025 */   move  $v0, $s2
/* 00446A34 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446A38 240400A0 */  li    $a0, 160
/* 00446A3C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446A40 24050003 */  li    $a1, 3
/* 00446A44 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446A48 240600C7 */  li    $a2, 199
/* 00446A4C 0320F809 */  jalr  $t9
/* 00446A50 02401025 */   move  $v0, $s2
/* 00446A54 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446A58 240400A1 */  li    $a0, 161
/* 00446A5C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446A60 24050003 */  li    $a1, 3
/* 00446A64 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446A68 240600C8 */  li    $a2, 200
/* 00446A6C 0320F809 */  jalr  $t9
/* 00446A70 02401025 */   move  $v0, $s2
/* 00446A74 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446A78 240400A2 */  li    $a0, 162
/* 00446A7C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446A80 24050003 */  li    $a1, 3
/* 00446A84 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446A88 240600C9 */  li    $a2, 201
/* 00446A8C 0320F809 */  jalr  $t9
/* 00446A90 02401025 */   move  $v0, $s2
/* 00446A94 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446A98 240400A3 */  li    $a0, 163
/* 00446A9C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446AA0 24050003 */  li    $a1, 3
/* 00446AA4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446AA8 240600CA */  li    $a2, 202
/* 00446AAC 0320F809 */  jalr  $t9
/* 00446AB0 02401025 */   move  $v0, $s2
/* 00446AB4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446AB8 240400A4 */  li    $a0, 164
/* 00446ABC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446AC0 24050003 */  li    $a1, 3
/* 00446AC4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446AC8 240600CB */  li    $a2, 203
/* 00446ACC 0320F809 */  jalr  $t9
/* 00446AD0 02401025 */   move  $v0, $s2
/* 00446AD4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446AD8 240400A5 */  li    $a0, 165
/* 00446ADC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446AE0 24050003 */  li    $a1, 3
/* 00446AE4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446AE8 240600CC */  li    $a2, 204
/* 00446AEC 0320F809 */  jalr  $t9
/* 00446AF0 02401025 */   move  $v0, $s2
/* 00446AF4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446AF8 240400A6 */  li    $a0, 166
/* 00446AFC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446B00 24050003 */  li    $a1, 3
/* 00446B04 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446B08 240600CD */  li    $a2, 205
/* 00446B0C 0320F809 */  jalr  $t9
/* 00446B10 02401025 */   move  $v0, $s2
/* 00446B14 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446B18 240400A7 */  li    $a0, 167
/* 00446B1C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446B20 24050003 */  li    $a1, 3
/* 00446B24 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446B28 240600CE */  li    $a2, 206
/* 00446B2C 0320F809 */  jalr  $t9
/* 00446B30 02401025 */   move  $v0, $s2
/* 00446B34 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446B38 240400A8 */  li    $a0, 168
/* 00446B3C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446B40 24050003 */  li    $a1, 3
/* 00446B44 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446B48 240600CF */  li    $a2, 207
/* 00446B4C 0320F809 */  jalr  $t9
/* 00446B50 02401025 */   move  $v0, $s2
/* 00446B54 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446B58 240400A9 */  li    $a0, 169
/* 00446B5C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446B60 24050003 */  li    $a1, 3
/* 00446B64 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446B68 240600D0 */  li    $a2, 208
/* 00446B6C 0320F809 */  jalr  $t9
/* 00446B70 02401025 */   move  $v0, $s2
/* 00446B74 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446B78 240400AA */  li    $a0, 170
/* 00446B7C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446B80 24050003 */  li    $a1, 3
/* 00446B84 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446B88 240600D1 */  li    $a2, 209
/* 00446B8C 0320F809 */  jalr  $t9
/* 00446B90 02401025 */   move  $v0, $s2
/* 00446B94 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446B98 240400AB */  li    $a0, 171
/* 00446B9C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446BA0 24050003 */  li    $a1, 3
/* 00446BA4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446BA8 240600D2 */  li    $a2, 210
/* 00446BAC 0320F809 */  jalr  $t9
/* 00446BB0 02401025 */   move  $v0, $s2
/* 00446BB4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446BB8 240400AC */  li    $a0, 172
/* 00446BBC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446BC0 24050003 */  li    $a1, 3
/* 00446BC4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446BC8 240600D3 */  li    $a2, 211
/* 00446BCC 0320F809 */  jalr  $t9
/* 00446BD0 02401025 */   move  $v0, $s2
/* 00446BD4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446BD8 240400AD */  li    $a0, 173
/* 00446BDC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446BE0 24050003 */  li    $a1, 3
/* 00446BE4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446BE8 240600D4 */  li    $a2, 212
/* 00446BEC 0320F809 */  jalr  $t9
/* 00446BF0 02401025 */   move  $v0, $s2
/* 00446BF4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446BF8 240400AE */  li    $a0, 174
/* 00446BFC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446C00 24050003 */  li    $a1, 3
/* 00446C04 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446C08 240600D5 */  li    $a2, 213
/* 00446C0C 0320F809 */  jalr  $t9
/* 00446C10 02401025 */   move  $v0, $s2
/* 00446C14 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446C18 240400AF */  li    $a0, 175
/* 00446C1C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446C20 24050003 */  li    $a1, 3
/* 00446C24 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446C28 240600D6 */  li    $a2, 214
/* 00446C2C 0320F809 */  jalr  $t9
/* 00446C30 02401025 */   move  $v0, $s2
/* 00446C34 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446C38 240400B0 */  li    $a0, 176
/* 00446C3C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446C40 24050003 */  li    $a1, 3
/* 00446C44 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446C48 240600D7 */  li    $a2, 215
/* 00446C4C 0320F809 */  jalr  $t9
/* 00446C50 02401025 */   move  $v0, $s2
/* 00446C54 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446C58 240400B1 */  li    $a0, 177
/* 00446C5C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446C60 24050003 */  li    $a1, 3
/* 00446C64 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446C68 240600D8 */  li    $a2, 216
/* 00446C6C 0320F809 */  jalr  $t9
/* 00446C70 02401025 */   move  $v0, $s2
/* 00446C74 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446C78 240400B2 */  li    $a0, 178
/* 00446C7C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446C80 24050003 */  li    $a1, 3
/* 00446C84 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446C88 240600D9 */  li    $a2, 217
/* 00446C8C 0320F809 */  jalr  $t9
/* 00446C90 02401025 */   move  $v0, $s2
/* 00446C94 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446C98 240400B3 */  li    $a0, 179
/* 00446C9C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446CA0 24050003 */  li    $a1, 3
/* 00446CA4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446CA8 240600DA */  li    $a2, 218
/* 00446CAC 0320F809 */  jalr  $t9
/* 00446CB0 02401025 */   move  $v0, $s2
/* 00446CB4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446CB8 240400B4 */  li    $a0, 180
/* 00446CBC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446CC0 24050003 */  li    $a1, 3
/* 00446CC4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446CC8 240600DB */  li    $a2, 219
/* 00446CCC 0320F809 */  jalr  $t9
/* 00446CD0 02401025 */   move  $v0, $s2
/* 00446CD4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446CD8 240400B5 */  li    $a0, 181
/* 00446CDC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446CE0 24050003 */  li    $a1, 3
/* 00446CE4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446CE8 240600DC */  li    $a2, 220
/* 00446CEC 0320F809 */  jalr  $t9
/* 00446CF0 02401025 */   move  $v0, $s2
/* 00446CF4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446CF8 240400B6 */  li    $a0, 182
/* 00446CFC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446D00 24050003 */  li    $a1, 3
/* 00446D04 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446D08 240600DD */  li    $a2, 221
/* 00446D0C 0320F809 */  jalr  $t9
/* 00446D10 02401025 */   move  $v0, $s2
/* 00446D14 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446D18 240400B7 */  li    $a0, 183
/* 00446D1C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446D20 24050003 */  li    $a1, 3
/* 00446D24 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446D28 240600DE */  li    $a2, 222
/* 00446D2C 0320F809 */  jalr  $t9
/* 00446D30 02401025 */   move  $v0, $s2
/* 00446D34 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446D38 240400B8 */  li    $a0, 184
/* 00446D3C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446D40 24050003 */  li    $a1, 3
/* 00446D44 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446D48 240600DF */  li    $a2, 223
/* 00446D4C 0320F809 */  jalr  $t9
/* 00446D50 02401025 */   move  $v0, $s2
/* 00446D54 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446D58 240400B9 */  li    $a0, 185
/* 00446D5C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446D60 24050003 */  li    $a1, 3
/* 00446D64 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446D68 240600E0 */  li    $a2, 224
/* 00446D6C 0320F809 */  jalr  $t9
/* 00446D70 02401025 */   move  $v0, $s2
/* 00446D74 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446D78 240400BA */  li    $a0, 186
/* 00446D7C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446D80 24050003 */  li    $a1, 3
/* 00446D84 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446D88 240600E1 */  li    $a2, 225
/* 00446D8C 0320F809 */  jalr  $t9
/* 00446D90 02401025 */   move  $v0, $s2
/* 00446D94 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446D98 240400BB */  li    $a0, 187
/* 00446D9C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446DA0 24050003 */  li    $a1, 3
/* 00446DA4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446DA8 240600E2 */  li    $a2, 226
/* 00446DAC 0320F809 */  jalr  $t9
/* 00446DB0 02401025 */   move  $v0, $s2
/* 00446DB4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446DB8 240400BC */  li    $a0, 188
/* 00446DBC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446DC0 24050003 */  li    $a1, 3
/* 00446DC4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446DC8 240600E3 */  li    $a2, 227
/* 00446DCC 0320F809 */  jalr  $t9
/* 00446DD0 02401025 */   move  $v0, $s2
/* 00446DD4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446DD8 240400BD */  li    $a0, 189
/* 00446DDC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446DE0 24050003 */  li    $a1, 3
/* 00446DE4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446DE8 240600E4 */  li    $a2, 228
/* 00446DEC 0320F809 */  jalr  $t9
/* 00446DF0 02401025 */   move  $v0, $s2
/* 00446DF4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446DF8 240400BE */  li    $a0, 190
/* 00446DFC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446E00 24050003 */  li    $a1, 3
/* 00446E04 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446E08 240600E5 */  li    $a2, 229
/* 00446E0C 0320F809 */  jalr  $t9
/* 00446E10 02401025 */   move  $v0, $s2
/* 00446E14 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446E18 240400BF */  li    $a0, 191
/* 00446E1C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446E20 24050003 */  li    $a1, 3
/* 00446E24 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446E28 240600E6 */  li    $a2, 230
/* 00446E2C 0320F809 */  jalr  $t9
/* 00446E30 02401025 */   move  $v0, $s2
/* 00446E34 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446E38 240400C0 */  li    $a0, 192
/* 00446E3C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446E40 24050003 */  li    $a1, 3
/* 00446E44 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446E48 240600E7 */  li    $a2, 231
/* 00446E4C 0320F809 */  jalr  $t9
/* 00446E50 02401025 */   move  $v0, $s2
/* 00446E54 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446E58 240400C1 */  li    $a0, 193
/* 00446E5C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446E60 24050003 */  li    $a1, 3
/* 00446E64 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446E68 240600E8 */  li    $a2, 232
/* 00446E6C 0320F809 */  jalr  $t9
/* 00446E70 02401025 */   move  $v0, $s2
/* 00446E74 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446E78 240400C2 */  li    $a0, 194
/* 00446E7C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446E80 24050003 */  li    $a1, 3
/* 00446E84 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446E88 240600E9 */  li    $a2, 233
/* 00446E8C 0320F809 */  jalr  $t9
/* 00446E90 02401025 */   move  $v0, $s2
/* 00446E94 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446E98 240400C3 */  li    $a0, 195
/* 00446E9C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446EA0 24050003 */  li    $a1, 3
/* 00446EA4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446EA8 240600EA */  li    $a2, 234
/* 00446EAC 0320F809 */  jalr  $t9
/* 00446EB0 02401025 */   move  $v0, $s2
/* 00446EB4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446EB8 240400C4 */  li    $a0, 196
/* 00446EBC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446EC0 24050003 */  li    $a1, 3
/* 00446EC4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446EC8 240600EB */  li    $a2, 235
/* 00446ECC 0320F809 */  jalr  $t9
/* 00446ED0 02401025 */   move  $v0, $s2
/* 00446ED4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446ED8 240400C5 */  li    $a0, 197
/* 00446EDC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446EE0 24050003 */  li    $a1, 3
/* 00446EE4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446EE8 240600EC */  li    $a2, 236
/* 00446EEC 0320F809 */  jalr  $t9
/* 00446EF0 02401025 */   move  $v0, $s2
/* 00446EF4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446EF8 240400C6 */  li    $a0, 198
/* 00446EFC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446F00 24050003 */  li    $a1, 3
/* 00446F04 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446F08 240600ED */  li    $a2, 237
/* 00446F0C 0320F809 */  jalr  $t9
/* 00446F10 02401025 */   move  $v0, $s2
/* 00446F14 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446F18 240400C7 */  li    $a0, 199
/* 00446F1C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446F20 24050003 */  li    $a1, 3
/* 00446F24 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446F28 240600EE */  li    $a2, 238
/* 00446F2C 0320F809 */  jalr  $t9
/* 00446F30 02401025 */   move  $v0, $s2
/* 00446F34 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446F38 240400C8 */  li    $a0, 200
/* 00446F3C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446F40 24050003 */  li    $a1, 3
/* 00446F44 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446F48 240600EF */  li    $a2, 239
/* 00446F4C 0320F809 */  jalr  $t9
/* 00446F50 02401025 */   move  $v0, $s2
/* 00446F54 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446F58 240400C9 */  li    $a0, 201
/* 00446F5C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446F60 24050003 */  li    $a1, 3
/* 00446F64 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446F68 240600F0 */  li    $a2, 240
/* 00446F6C 0320F809 */  jalr  $t9
/* 00446F70 02401025 */   move  $v0, $s2
/* 00446F74 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446F78 240400CA */  li    $a0, 202
/* 00446F7C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446F80 24050003 */  li    $a1, 3
/* 00446F84 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446F88 240600F1 */  li    $a2, 241
/* 00446F8C 0320F809 */  jalr  $t9
/* 00446F90 02401025 */   move  $v0, $s2
/* 00446F94 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446F98 240400CB */  li    $a0, 203
/* 00446F9C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446FA0 24050003 */  li    $a1, 3
/* 00446FA4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446FA8 240600F2 */  li    $a2, 242
/* 00446FAC 0320F809 */  jalr  $t9
/* 00446FB0 02401025 */   move  $v0, $s2
/* 00446FB4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446FB8 240400CC */  li    $a0, 204
/* 00446FBC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446FC0 24050003 */  li    $a1, 3
/* 00446FC4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00446FC8 240600F3 */  li    $a2, 243
/* 00446FCC 0320F809 */  jalr  $t9
/* 00446FD0 02401025 */   move  $v0, $s2
/* 00446FD4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00446FD8 00000000 */  nop   
/* 00446FDC 8F998B04 */  lw     $t9, %got(isa)($gp)
/* 00446FE0 00000000 */  nop   
/* 00446FE4 93390000 */  lbu   $t9, ($t9)
/* 00446FE8 00000000 */  nop   
/* 00446FEC 2F210002 */  sltiu $at, $t9, 2
/* 00446FF0 142000C3 */  bnez  $at, .L00447300
/* 00446FF4 00000000 */   nop   
/* 00446FF8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00446FFC 240400EB */  li    $a0, 235
/* 00447000 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447004 24050003 */  li    $a1, 3
/* 00447008 240600FB */  li    $a2, 251
/* 0044700C 0320F809 */  jalr  $t9
/* 00447010 02401025 */   move  $v0, $s2
/* 00447014 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447018 240400EC */  li    $a0, 236
/* 0044701C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447020 24050003 */  li    $a1, 3
/* 00447024 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447028 240600FC */  li    $a2, 252
/* 0044702C 0320F809 */  jalr  $t9
/* 00447030 02401025 */   move  $v0, $s2
/* 00447034 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447038 240400ED */  li    $a0, 237
/* 0044703C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447040 24050003 */  li    $a1, 3
/* 00447044 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447048 240600FD */  li    $a2, 253
/* 0044704C 0320F809 */  jalr  $t9
/* 00447050 02401025 */   move  $v0, $s2
/* 00447054 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447058 240400F3 */  li    $a0, 243
/* 0044705C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447060 24050003 */  li    $a1, 3
/* 00447064 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447068 240600FB */  li    $a2, 251
/* 0044706C 0320F809 */  jalr  $t9
/* 00447070 02401025 */   move  $v0, $s2
/* 00447074 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447078 240400F4 */  li    $a0, 244
/* 0044707C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447080 24050003 */  li    $a1, 3
/* 00447084 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447088 240600FC */  li    $a2, 252
/* 0044708C 0320F809 */  jalr  $t9
/* 00447090 02401025 */   move  $v0, $s2
/* 00447094 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447098 240400F5 */  li    $a0, 245
/* 0044709C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004470A0 24050003 */  li    $a1, 3
/* 004470A4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004470A8 240600FD */  li    $a2, 253
/* 004470AC 0320F809 */  jalr  $t9
/* 004470B0 02401025 */   move  $v0, $s2
/* 004470B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004470B8 240400E8 */  li    $a0, 232
/* 004470BC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004470C0 24050003 */  li    $a1, 3
/* 004470C4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004470C8 240600FE */  li    $a2, 254
/* 004470CC 0320F809 */  jalr  $t9
/* 004470D0 02401025 */   move  $v0, $s2
/* 004470D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004470D8 240400E9 */  li    $a0, 233
/* 004470DC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004470E0 24050003 */  li    $a1, 3
/* 004470E4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004470E8 240600FF */  li    $a2, 255
/* 004470EC 0320F809 */  jalr  $t9
/* 004470F0 02401025 */   move  $v0, $s2
/* 004470F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004470F8 240400EA */  li    $a0, 234
/* 004470FC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447100 24050003 */  li    $a1, 3
/* 00447104 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447108 24060100 */  li    $a2, 256
/* 0044710C 0320F809 */  jalr  $t9
/* 00447110 02401025 */   move  $v0, $s2
/* 00447114 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447118 240400F0 */  li    $a0, 240
/* 0044711C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447120 24050003 */  li    $a1, 3
/* 00447124 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447128 240600FE */  li    $a2, 254
/* 0044712C 0320F809 */  jalr  $t9
/* 00447130 02401025 */   move  $v0, $s2
/* 00447134 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447138 240400F1 */  li    $a0, 241
/* 0044713C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447140 24050003 */  li    $a1, 3
/* 00447144 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447148 240600FF */  li    $a2, 255
/* 0044714C 0320F809 */  jalr  $t9
/* 00447150 02401025 */   move  $v0, $s2
/* 00447154 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447158 240400F2 */  li    $a0, 242
/* 0044715C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447160 24050003 */  li    $a1, 3
/* 00447164 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447168 24060100 */  li    $a2, 256
/* 0044716C 0320F809 */  jalr  $t9
/* 00447170 02401025 */   move  $v0, $s2
/* 00447174 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447178 24040107 */  li    $a0, 263
/* 0044717C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447180 24050003 */  li    $a1, 3
/* 00447184 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447188 24060101 */  li    $a2, 257
/* 0044718C 0320F809 */  jalr  $t9
/* 00447190 02401025 */   move  $v0, $s2
/* 00447194 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447198 24040108 */  li    $a0, 264
/* 0044719C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004471A0 24050003 */  li    $a1, 3
/* 004471A4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004471A8 24060102 */  li    $a2, 258
/* 004471AC 0320F809 */  jalr  $t9
/* 004471B0 02401025 */   move  $v0, $s2
/* 004471B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004471B8 24040109 */  li    $a0, 265
/* 004471BC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004471C0 24050003 */  li    $a1, 3
/* 004471C4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004471C8 24060103 */  li    $a2, 259
/* 004471CC 0320F809 */  jalr  $t9
/* 004471D0 02401025 */   move  $v0, $s2
/* 004471D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004471D8 2404010A */  li    $a0, 266
/* 004471DC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004471E0 24050003 */  li    $a1, 3
/* 004471E4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004471E8 24060101 */  li    $a2, 257
/* 004471EC 0320F809 */  jalr  $t9
/* 004471F0 02401025 */   move  $v0, $s2
/* 004471F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004471F8 2404010B */  li    $a0, 267
/* 004471FC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447200 24050003 */  li    $a1, 3
/* 00447204 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447208 24060102 */  li    $a2, 258
/* 0044720C 0320F809 */  jalr  $t9
/* 00447210 02401025 */   move  $v0, $s2
/* 00447214 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447218 2404010C */  li    $a0, 268
/* 0044721C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447220 24050003 */  li    $a1, 3
/* 00447224 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447228 24060103 */  li    $a2, 259
/* 0044722C 0320F809 */  jalr  $t9
/* 00447230 02401025 */   move  $v0, $s2
/* 00447234 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447238 2404010D */  li    $a0, 269
/* 0044723C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447240 24050003 */  li    $a1, 3
/* 00447244 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447248 24060104 */  li    $a2, 260
/* 0044724C 0320F809 */  jalr  $t9
/* 00447250 02401025 */   move  $v0, $s2
/* 00447254 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447258 2404010E */  li    $a0, 270
/* 0044725C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447260 24050003 */  li    $a1, 3
/* 00447264 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447268 24060105 */  li    $a2, 261
/* 0044726C 0320F809 */  jalr  $t9
/* 00447270 02401025 */   move  $v0, $s2
/* 00447274 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447278 2404010F */  li    $a0, 271
/* 0044727C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447280 24050003 */  li    $a1, 3
/* 00447284 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447288 24060106 */  li    $a2, 262
/* 0044728C 0320F809 */  jalr  $t9
/* 00447290 02401025 */   move  $v0, $s2
/* 00447294 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447298 24040110 */  li    $a0, 272
/* 0044729C 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004472A0 24050003 */  li    $a1, 3
/* 004472A4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004472A8 24060104 */  li    $a2, 260
/* 004472AC 0320F809 */  jalr  $t9
/* 004472B0 02401025 */   move  $v0, $s2
/* 004472B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004472B8 24040111 */  li    $a0, 273
/* 004472BC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004472C0 24050003 */  li    $a1, 3
/* 004472C4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004472C8 24060105 */  li    $a2, 261
/* 004472CC 0320F809 */  jalr  $t9
/* 004472D0 02401025 */   move  $v0, $s2
/* 004472D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004472D8 24040112 */  li    $a0, 274
/* 004472DC 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004472E0 24050003 */  li    $a1, 3
/* 004472E4 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004472E8 24060106 */  li    $a2, 262
/* 004472EC 0320F809 */  jalr  $t9
/* 004472F0 02401025 */   move  $v0, $s2
/* 004472F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004472F8 100000C2 */  b     .L00447604
/* 004472FC 00000000 */   nop   
.L00447300:
/* 00447300 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447304 240400EB */  li    $a0, 235
/* 00447308 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 0044730C 24050003 */  li    $a1, 3
/* 00447310 240600C1 */  li    $a2, 193
/* 00447314 0320F809 */  jalr  $t9
/* 00447318 02401025 */   move  $v0, $s2
/* 0044731C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447320 240400EC */  li    $a0, 236
/* 00447324 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447328 24050003 */  li    $a1, 3
/* 0044732C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447330 240600C2 */  li    $a2, 194
/* 00447334 0320F809 */  jalr  $t9
/* 00447338 02401025 */   move  $v0, $s2
/* 0044733C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447340 240400ED */  li    $a0, 237
/* 00447344 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447348 24050003 */  li    $a1, 3
/* 0044734C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447350 240600C3 */  li    $a2, 195
/* 00447354 0320F809 */  jalr  $t9
/* 00447358 02401025 */   move  $v0, $s2
/* 0044735C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447360 240400F3 */  li    $a0, 243
/* 00447364 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447368 24050003 */  li    $a1, 3
/* 0044736C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447370 240600C1 */  li    $a2, 193
/* 00447374 0320F809 */  jalr  $t9
/* 00447378 02401025 */   move  $v0, $s2
/* 0044737C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447380 240400F4 */  li    $a0, 244
/* 00447384 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447388 24050003 */  li    $a1, 3
/* 0044738C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447390 240600C2 */  li    $a2, 194
/* 00447394 0320F809 */  jalr  $t9
/* 00447398 02401025 */   move  $v0, $s2
/* 0044739C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004473A0 240400F5 */  li    $a0, 245
/* 004473A4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004473A8 24050003 */  li    $a1, 3
/* 004473AC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004473B0 240600C3 */  li    $a2, 195
/* 004473B4 0320F809 */  jalr  $t9
/* 004473B8 02401025 */   move  $v0, $s2
/* 004473BC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004473C0 240400E8 */  li    $a0, 232
/* 004473C4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004473C8 24050003 */  li    $a1, 3
/* 004473CC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004473D0 240600C1 */  li    $a2, 193
/* 004473D4 0320F809 */  jalr  $t9
/* 004473D8 02401025 */   move  $v0, $s2
/* 004473DC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004473E0 240400E9 */  li    $a0, 233
/* 004473E4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004473E8 24050003 */  li    $a1, 3
/* 004473EC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004473F0 240600C2 */  li    $a2, 194
/* 004473F4 0320F809 */  jalr  $t9
/* 004473F8 02401025 */   move  $v0, $s2
/* 004473FC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447400 240400EA */  li    $a0, 234
/* 00447404 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447408 24050003 */  li    $a1, 3
/* 0044740C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447410 240600C3 */  li    $a2, 195
/* 00447414 0320F809 */  jalr  $t9
/* 00447418 02401025 */   move  $v0, $s2
/* 0044741C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447420 240400F0 */  li    $a0, 240
/* 00447424 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447428 24050003 */  li    $a1, 3
/* 0044742C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447430 240600C1 */  li    $a2, 193
/* 00447434 0320F809 */  jalr  $t9
/* 00447438 02401025 */   move  $v0, $s2
/* 0044743C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447440 240400F1 */  li    $a0, 241
/* 00447444 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447448 24050003 */  li    $a1, 3
/* 0044744C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447450 240600C2 */  li    $a2, 194
/* 00447454 0320F809 */  jalr  $t9
/* 00447458 02401025 */   move  $v0, $s2
/* 0044745C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447460 240400F2 */  li    $a0, 242
/* 00447464 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447468 24050003 */  li    $a1, 3
/* 0044746C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447470 240600C3 */  li    $a2, 195
/* 00447474 0320F809 */  jalr  $t9
/* 00447478 02401025 */   move  $v0, $s2
/* 0044747C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447480 24040107 */  li    $a0, 263
/* 00447484 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447488 24050003 */  li    $a1, 3
/* 0044748C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447490 240600C1 */  li    $a2, 193
/* 00447494 0320F809 */  jalr  $t9
/* 00447498 02401025 */   move  $v0, $s2
/* 0044749C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004474A0 24040108 */  li    $a0, 264
/* 004474A4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004474A8 24050003 */  li    $a1, 3
/* 004474AC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004474B0 240600C2 */  li    $a2, 194
/* 004474B4 0320F809 */  jalr  $t9
/* 004474B8 02401025 */   move  $v0, $s2
/* 004474BC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004474C0 24040109 */  li    $a0, 265
/* 004474C4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004474C8 24050003 */  li    $a1, 3
/* 004474CC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004474D0 240600C3 */  li    $a2, 195
/* 004474D4 0320F809 */  jalr  $t9
/* 004474D8 02401025 */   move  $v0, $s2
/* 004474DC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004474E0 2404010A */  li    $a0, 266
/* 004474E4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004474E8 24050003 */  li    $a1, 3
/* 004474EC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004474F0 240600C1 */  li    $a2, 193
/* 004474F4 0320F809 */  jalr  $t9
/* 004474F8 02401025 */   move  $v0, $s2
/* 004474FC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447500 2404010B */  li    $a0, 267
/* 00447504 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447508 24050003 */  li    $a1, 3
/* 0044750C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447510 240600C2 */  li    $a2, 194
/* 00447514 0320F809 */  jalr  $t9
/* 00447518 02401025 */   move  $v0, $s2
/* 0044751C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447520 2404010C */  li    $a0, 268
/* 00447524 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447528 24050003 */  li    $a1, 3
/* 0044752C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447530 240600C3 */  li    $a2, 195
/* 00447534 0320F809 */  jalr  $t9
/* 00447538 02401025 */   move  $v0, $s2
/* 0044753C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447540 2404010D */  li    $a0, 269
/* 00447544 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447548 24050003 */  li    $a1, 3
/* 0044754C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447550 240600C1 */  li    $a2, 193
/* 00447554 0320F809 */  jalr  $t9
/* 00447558 02401025 */   move  $v0, $s2
/* 0044755C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447560 2404010E */  li    $a0, 270
/* 00447564 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447568 24050003 */  li    $a1, 3
/* 0044756C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447570 240600C2 */  li    $a2, 194
/* 00447574 0320F809 */  jalr  $t9
/* 00447578 02401025 */   move  $v0, $s2
/* 0044757C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447580 2404010F */  li    $a0, 271
/* 00447584 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447588 24050003 */  li    $a1, 3
/* 0044758C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447590 240600C3 */  li    $a2, 195
/* 00447594 0320F809 */  jalr  $t9
/* 00447598 02401025 */   move  $v0, $s2
/* 0044759C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004475A0 24040110 */  li    $a0, 272
/* 004475A4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004475A8 24050003 */  li    $a1, 3
/* 004475AC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004475B0 240600C1 */  li    $a2, 193
/* 004475B4 0320F809 */  jalr  $t9
/* 004475B8 02401025 */   move  $v0, $s2
/* 004475BC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004475C0 24040111 */  li    $a0, 273
/* 004475C4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004475C8 24050003 */  li    $a1, 3
/* 004475CC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004475D0 240600C2 */  li    $a2, 194
/* 004475D4 0320F809 */  jalr  $t9
/* 004475D8 02401025 */   move  $v0, $s2
/* 004475DC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004475E0 24040112 */  li    $a0, 274
/* 004475E4 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004475E8 24050003 */  li    $a1, 3
/* 004475EC 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004475F0 240600C3 */  li    $a2, 195
/* 004475F4 0320F809 */  jalr  $t9
/* 004475F8 02401025 */   move  $v0, $s2
/* 004475FC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447600 00000000 */  nop   
.L00447604:
/* 00447604 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00447608 240400FF */  li    $a0, 255
/* 0044760C 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447610 24050003 */  li    $a1, 3
/* 00447614 2406001E */  li    $a2, 30
/* 00447618 0320F809 */  jalr  $t9
/* 0044761C 02401025 */   move  $v0, $s2
/* 00447620 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447624 24040100 */  li    $a0, 256
/* 00447628 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044762C 24050003 */  li    $a1, 3
/* 00447630 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447634 2406001F */  li    $a2, 31
/* 00447638 0320F809 */  jalr  $t9
/* 0044763C 02401025 */   move  $v0, $s2
/* 00447640 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447644 24040101 */  li    $a0, 257
/* 00447648 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044764C 24050003 */  li    $a1, 3
/* 00447650 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447654 24060020 */  li    $a2, 32
/* 00447658 0320F809 */  jalr  $t9
/* 0044765C 02401025 */   move  $v0, $s2
/* 00447660 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447664 24040102 */  li    $a0, 258
/* 00447668 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044766C 24050003 */  li    $a1, 3
/* 00447670 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447674 24060021 */  li    $a2, 33
/* 00447678 0320F809 */  jalr  $t9
/* 0044767C 02401025 */   move  $v0, $s2
/* 00447680 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447684 24040103 */  li    $a0, 259
/* 00447688 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044768C 24050003 */  li    $a1, 3
/* 00447690 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00447694 24060022 */  li    $a2, 34
/* 00447698 0320F809 */  jalr  $t9
/* 0044769C 02401025 */   move  $v0, $s2
/* 004476A0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004476A4 24040104 */  li    $a0, 260
/* 004476A8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004476AC 24050003 */  li    $a1, 3
/* 004476B0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004476B4 24060023 */  li    $a2, 35
/* 004476B8 0320F809 */  jalr  $t9
/* 004476BC 02401025 */   move  $v0, $s2
/* 004476C0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004476C4 240400A0 */  li    $a0, 160
/* 004476C8 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004476CC 02002825 */  move  $a1, $s0
/* 004476D0 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004476D4 24060008 */  li    $a2, 8
/* 004476D8 0320F809 */  jalr  $t9
/* 004476DC 02401025 */   move  $v0, $s2
/* 004476E0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004476E4 240400A1 */  li    $a0, 161
/* 004476E8 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004476EC 3C054620 */  lui   $a1, 0x4620
/* 004476F0 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004476F4 24060008 */  li    $a2, 8
/* 004476F8 0320F809 */  jalr  $t9
/* 004476FC 02401025 */   move  $v0, $s2
/* 00447700 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447704 240400A2 */  li    $a0, 162
/* 00447708 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044770C 3C054640 */  lui   $a1, 0x4640
/* 00447710 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447714 24060008 */  li    $a2, 8
/* 00447718 0320F809 */  jalr  $t9
/* 0044771C 02401025 */   move  $v0, $s2
/* 00447720 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447724 3C054600 */  lui   $a1, 0x4600
/* 00447728 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044772C 34A50001 */  ori   $a1, $a1, 1
/* 00447730 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447734 240400A3 */  li    $a0, 163
/* 00447738 24060008 */  li    $a2, 8
/* 0044773C 0320F809 */  jalr  $t9
/* 00447740 02401025 */   move  $v0, $s2
/* 00447744 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447748 3C054620 */  lui   $a1, 0x4620
/* 0044774C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447750 34A50001 */  ori   $a1, $a1, 1
/* 00447754 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447758 240400A4 */  li    $a0, 164
/* 0044775C 24060008 */  li    $a2, 8
/* 00447760 0320F809 */  jalr  $t9
/* 00447764 02401025 */   move  $v0, $s2
/* 00447768 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044776C 3C054640 */  lui   $a1, 0x4640
/* 00447770 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447774 34A50001 */  ori   $a1, $a1, 1
/* 00447778 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044777C 240400A5 */  li    $a0, 165
/* 00447780 24060008 */  li    $a2, 8
/* 00447784 0320F809 */  jalr  $t9
/* 00447788 02401025 */   move  $v0, $s2
/* 0044778C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447790 3C054600 */  lui   $a1, 0x4600
/* 00447794 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447798 34A50002 */  ori   $a1, $a1, 2
/* 0044779C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004477A0 240400A6 */  li    $a0, 166
/* 004477A4 24060008 */  li    $a2, 8
/* 004477A8 0320F809 */  jalr  $t9
/* 004477AC 02401025 */   move  $v0, $s2
/* 004477B0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004477B4 3C054620 */  lui   $a1, 0x4620
/* 004477B8 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004477BC 34A50002 */  ori   $a1, $a1, 2
/* 004477C0 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004477C4 240400A7 */  li    $a0, 167
/* 004477C8 24060008 */  li    $a2, 8
/* 004477CC 0320F809 */  jalr  $t9
/* 004477D0 02401025 */   move  $v0, $s2
/* 004477D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004477D8 3C054640 */  lui   $a1, 0x4640
/* 004477DC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004477E0 34A50002 */  ori   $a1, $a1, 2
/* 004477E4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004477E8 240400A8 */  li    $a0, 168
/* 004477EC 24060008 */  li    $a2, 8
/* 004477F0 0320F809 */  jalr  $t9
/* 004477F4 02401025 */   move  $v0, $s2
/* 004477F8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004477FC 3C054600 */  lui   $a1, 0x4600
/* 00447800 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447804 34A50003 */  ori   $a1, $a1, 3
/* 00447808 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044780C 240400A9 */  li    $a0, 169
/* 00447810 24060008 */  li    $a2, 8
/* 00447814 0320F809 */  jalr  $t9
/* 00447818 02401025 */   move  $v0, $s2
/* 0044781C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447820 3C054620 */  lui   $a1, 0x4620
/* 00447824 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447828 34A50003 */  ori   $a1, $a1, 3
/* 0044782C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447830 240400AA */  li    $a0, 170
/* 00447834 24060008 */  li    $a2, 8
/* 00447838 0320F809 */  jalr  $t9
/* 0044783C 02401025 */   move  $v0, $s2
/* 00447840 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447844 3C054640 */  lui   $a1, 0x4640
/* 00447848 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044784C 34A50003 */  ori   $a1, $a1, 3
/* 00447850 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447854 240400AB */  li    $a0, 171
/* 00447858 24060008 */  li    $a2, 8
/* 0044785C 0320F809 */  jalr  $t9
/* 00447860 02401025 */   move  $v0, $s2
/* 00447864 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447868 3C054600 */  lui   $a1, 0x4600
/* 0044786C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447870 34A50004 */  ori   $a1, $a1, 4
/* 00447874 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447878 240400AC */  li    $a0, 172
/* 0044787C 24060008 */  li    $a2, 8
/* 00447880 0320F809 */  jalr  $t9
/* 00447884 02401025 */   move  $v0, $s2
/* 00447888 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044788C 3C054620 */  lui   $a1, 0x4620
/* 00447890 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447894 34A50004 */  ori   $a1, $a1, 4
/* 00447898 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044789C 240400AD */  li    $a0, 173
/* 004478A0 24060008 */  li    $a2, 8
/* 004478A4 0320F809 */  jalr  $t9
/* 004478A8 02401025 */   move  $v0, $s2
/* 004478AC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004478B0 3C054640 */  lui   $a1, 0x4640
/* 004478B4 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004478B8 34A50004 */  ori   $a1, $a1, 4
/* 004478BC 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004478C0 240400AE */  li    $a0, 174
/* 004478C4 24060008 */  li    $a2, 8
/* 004478C8 0320F809 */  jalr  $t9
/* 004478CC 02401025 */   move  $v0, $s2
/* 004478D0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004478D4 3C054600 */  lui   $a1, 0x4600
/* 004478D8 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004478DC 34A50005 */  ori   $a1, $a1, 5
/* 004478E0 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004478E4 240400AF */  li    $a0, 175
/* 004478E8 24060008 */  li    $a2, 8
/* 004478EC 0320F809 */  jalr  $t9
/* 004478F0 02401025 */   move  $v0, $s2
/* 004478F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004478F8 3C054620 */  lui   $a1, 0x4620
/* 004478FC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447900 34A50005 */  ori   $a1, $a1, 5
/* 00447904 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447908 240400B0 */  li    $a0, 176
/* 0044790C 24060008 */  li    $a2, 8
/* 00447910 0320F809 */  jalr  $t9
/* 00447914 02401025 */   move  $v0, $s2
/* 00447918 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044791C 3C054640 */  lui   $a1, 0x4640
/* 00447920 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447924 34A50005 */  ori   $a1, $a1, 5
/* 00447928 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044792C 240400B1 */  li    $a0, 177
/* 00447930 24060008 */  li    $a2, 8
/* 00447934 0320F809 */  jalr  $t9
/* 00447938 02401025 */   move  $v0, $s2
/* 0044793C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447940 3C054600 */  lui   $a1, 0x4600
/* 00447944 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447948 34A50007 */  ori   $a1, $a1, 7
/* 0044794C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447950 240400B5 */  li    $a0, 181
/* 00447954 24060008 */  li    $a2, 8
/* 00447958 0320F809 */  jalr  $t9
/* 0044795C 02401025 */   move  $v0, $s2
/* 00447960 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447964 3C054620 */  lui   $a1, 0x4620
/* 00447968 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044796C 34A50007 */  ori   $a1, $a1, 7
/* 00447970 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447974 240400B6 */  li    $a0, 182
/* 00447978 24060008 */  li    $a2, 8
/* 0044797C 0320F809 */  jalr  $t9
/* 00447980 02401025 */   move  $v0, $s2
/* 00447984 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447988 3C054640 */  lui   $a1, 0x4640
/* 0044798C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447990 34A50007 */  ori   $a1, $a1, 7
/* 00447994 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447998 240400B7 */  li    $a0, 183
/* 0044799C 24060008 */  li    $a2, 8
/* 004479A0 0320F809 */  jalr  $t9
/* 004479A4 02401025 */   move  $v0, $s2
/* 004479A8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004479AC 3C054600 */  lui   $a1, 0x4600
/* 004479B0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004479B4 34A50006 */  ori   $a1, $a1, 6
/* 004479B8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004479BC 240400B2 */  li    $a0, 178
/* 004479C0 24060008 */  li    $a2, 8
/* 004479C4 0320F809 */  jalr  $t9
/* 004479C8 02401025 */   move  $v0, $s2
/* 004479CC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004479D0 3C054620 */  lui   $a1, 0x4620
/* 004479D4 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004479D8 34A50006 */  ori   $a1, $a1, 6
/* 004479DC 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004479E0 240400B3 */  li    $a0, 179
/* 004479E4 24060008 */  li    $a2, 8
/* 004479E8 0320F809 */  jalr  $t9
/* 004479EC 02401025 */   move  $v0, $s2
/* 004479F0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004479F4 3C054640 */  lui   $a1, 0x4640
/* 004479F8 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004479FC 34A50006 */  ori   $a1, $a1, 6
/* 00447A00 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447A04 240400B4 */  li    $a0, 180
/* 00447A08 24060008 */  li    $a2, 8
/* 00447A0C 0320F809 */  jalr  $t9
/* 00447A10 02401025 */   move  $v0, $s2
/* 00447A14 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447A18 3C054620 */  lui   $a1, 0x4620
/* 00447A1C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447A20 34A50020 */  ori   $a1, $a1, 0x20
/* 00447A24 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447A28 240400B8 */  li    $a0, 184
/* 00447A2C 24060008 */  li    $a2, 8
/* 00447A30 0320F809 */  jalr  $t9
/* 00447A34 02401025 */   move  $v0, $s2
/* 00447A38 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447A3C 3C054640 */  lui   $a1, 0x4640
/* 00447A40 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447A44 34A50020 */  ori   $a1, $a1, 0x20
/* 00447A48 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447A4C 240400B9 */  li    $a0, 185
/* 00447A50 24060008 */  li    $a2, 8
/* 00447A54 0320F809 */  jalr  $t9
/* 00447A58 02401025 */   move  $v0, $s2
/* 00447A5C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447A60 3C054680 */  lui   $a1, 0x4680
/* 00447A64 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447A68 34A50020 */  ori   $a1, $a1, 0x20
/* 00447A6C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447A70 240400BA */  li    $a0, 186
/* 00447A74 24060008 */  li    $a2, 8
/* 00447A78 0320F809 */  jalr  $t9
/* 00447A7C 02401025 */   move  $v0, $s2
/* 00447A80 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447A84 3C054600 */  lui   $a1, 0x4600
/* 00447A88 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447A8C 34A50021 */  ori   $a1, $a1, 0x21
/* 00447A90 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447A94 240400BB */  li    $a0, 187
/* 00447A98 24060008 */  li    $a2, 8
/* 00447A9C 0320F809 */  jalr  $t9
/* 00447AA0 02401025 */   move  $v0, $s2
/* 00447AA4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447AA8 3C054640 */  lui   $a1, 0x4640
/* 00447AAC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447AB0 34A50021 */  ori   $a1, $a1, 0x21
/* 00447AB4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447AB8 240400BC */  li    $a0, 188
/* 00447ABC 24060008 */  li    $a2, 8
/* 00447AC0 0320F809 */  jalr  $t9
/* 00447AC4 02401025 */   move  $v0, $s2
/* 00447AC8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447ACC 3C054680 */  lui   $a1, 0x4680
/* 00447AD0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447AD4 34A50021 */  ori   $a1, $a1, 0x21
/* 00447AD8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447ADC 240400BD */  li    $a0, 189
/* 00447AE0 24060008 */  li    $a2, 8
/* 00447AE4 0320F809 */  jalr  $t9
/* 00447AE8 02401025 */   move  $v0, $s2
/* 00447AEC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447AF0 3C054600 */  lui   $a1, 0x4600
/* 00447AF4 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447AF8 34A50022 */  ori   $a1, $a1, 0x22
/* 00447AFC 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447B00 240400BE */  li    $a0, 190
/* 00447B04 24060008 */  li    $a2, 8
/* 00447B08 0320F809 */  jalr  $t9
/* 00447B0C 02401025 */   move  $v0, $s2
/* 00447B10 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447B14 3C054620 */  lui   $a1, 0x4620
/* 00447B18 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447B1C 34A50022 */  ori   $a1, $a1, 0x22
/* 00447B20 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447B24 240400BF */  li    $a0, 191
/* 00447B28 24060008 */  li    $a2, 8
/* 00447B2C 0320F809 */  jalr  $t9
/* 00447B30 02401025 */   move  $v0, $s2
/* 00447B34 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447B38 3C054680 */  lui   $a1, 0x4680
/* 00447B3C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447B40 34A50022 */  ori   $a1, $a1, 0x22
/* 00447B44 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447B48 240400C0 */  li    $a0, 192
/* 00447B4C 24060008 */  li    $a2, 8
/* 00447B50 0320F809 */  jalr  $t9
/* 00447B54 02401025 */   move  $v0, $s2
/* 00447B58 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447B5C 3C054600 */  lui   $a1, 0x4600
/* 00447B60 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447B64 34A50024 */  ori   $a1, $a1, 0x24
/* 00447B68 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447B6C 240400C1 */  li    $a0, 193
/* 00447B70 24060008 */  li    $a2, 8
/* 00447B74 0320F809 */  jalr  $t9
/* 00447B78 02401025 */   move  $v0, $s2
/* 00447B7C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447B80 3C054620 */  lui   $a1, 0x4620
/* 00447B84 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447B88 34A50024 */  ori   $a1, $a1, 0x24
/* 00447B8C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447B90 240400C2 */  li    $a0, 194
/* 00447B94 24060008 */  li    $a2, 8
/* 00447B98 0320F809 */  jalr  $t9
/* 00447B9C 02401025 */   move  $v0, $s2
/* 00447BA0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447BA4 3C054640 */  lui   $a1, 0x4640
/* 00447BA8 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447BAC 34A50024 */  ori   $a1, $a1, 0x24
/* 00447BB0 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447BB4 240400C3 */  li    $a0, 195
/* 00447BB8 24060008 */  li    $a2, 8
/* 00447BBC 0320F809 */  jalr  $t9
/* 00447BC0 02401025 */   move  $v0, $s2
/* 00447BC4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447BC8 3C054600 */  lui   $a1, 0x4600
/* 00447BCC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447BD0 34A50030 */  ori   $a1, $a1, 0x30
/* 00447BD4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447BD8 240400C4 */  li    $a0, 196
/* 00447BDC 24060008 */  li    $a2, 8
/* 00447BE0 0320F809 */  jalr  $t9
/* 00447BE4 02401025 */   move  $v0, $s2
/* 00447BE8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447BEC 3C054620 */  lui   $a1, 0x4620
/* 00447BF0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447BF4 34A50030 */  ori   $a1, $a1, 0x30
/* 00447BF8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447BFC 240400C5 */  li    $a0, 197
/* 00447C00 24060008 */  li    $a2, 8
/* 00447C04 0320F809 */  jalr  $t9
/* 00447C08 02401025 */   move  $v0, $s2
/* 00447C0C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447C10 3C054640 */  lui   $a1, 0x4640
/* 00447C14 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447C18 34A50030 */  ori   $a1, $a1, 0x30
/* 00447C1C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447C20 240400C6 */  li    $a0, 198
/* 00447C24 24060008 */  li    $a2, 8
/* 00447C28 0320F809 */  jalr  $t9
/* 00447C2C 02401025 */   move  $v0, $s2
/* 00447C30 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447C34 3C054600 */  lui   $a1, 0x4600
/* 00447C38 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447C3C 34A50031 */  ori   $a1, $a1, 0x31
/* 00447C40 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447C44 240400C7 */  li    $a0, 199
/* 00447C48 24060008 */  li    $a2, 8
/* 00447C4C 0320F809 */  jalr  $t9
/* 00447C50 02401025 */   move  $v0, $s2
/* 00447C54 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447C58 3C054620 */  lui   $a1, 0x4620
/* 00447C5C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447C60 34A50031 */  ori   $a1, $a1, 0x31
/* 00447C64 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447C68 240400C8 */  li    $a0, 200
/* 00447C6C 24060008 */  li    $a2, 8
/* 00447C70 0320F809 */  jalr  $t9
/* 00447C74 02401025 */   move  $v0, $s2
/* 00447C78 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447C7C 3C054640 */  lui   $a1, 0x4640
/* 00447C80 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447C84 34A50031 */  ori   $a1, $a1, 0x31
/* 00447C88 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447C8C 240400C9 */  li    $a0, 201
/* 00447C90 24060008 */  li    $a2, 8
/* 00447C94 0320F809 */  jalr  $t9
/* 00447C98 02401025 */   move  $v0, $s2
/* 00447C9C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447CA0 3C054600 */  lui   $a1, 0x4600
/* 00447CA4 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447CA8 34A50032 */  ori   $a1, $a1, 0x32
/* 00447CAC 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447CB0 240400CA */  li    $a0, 202
/* 00447CB4 24060008 */  li    $a2, 8
/* 00447CB8 0320F809 */  jalr  $t9
/* 00447CBC 02401025 */   move  $v0, $s2
/* 00447CC0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447CC4 3C054620 */  lui   $a1, 0x4620
/* 00447CC8 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447CCC 34A50032 */  ori   $a1, $a1, 0x32
/* 00447CD0 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447CD4 240400CB */  li    $a0, 203
/* 00447CD8 24060008 */  li    $a2, 8
/* 00447CDC 0320F809 */  jalr  $t9
/* 00447CE0 02401025 */   move  $v0, $s2
/* 00447CE4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447CE8 3C054640 */  lui   $a1, 0x4640
/* 00447CEC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447CF0 34A50032 */  ori   $a1, $a1, 0x32
/* 00447CF4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447CF8 240400CC */  li    $a0, 204
/* 00447CFC 24060008 */  li    $a2, 8
/* 00447D00 0320F809 */  jalr  $t9
/* 00447D04 02401025 */   move  $v0, $s2
/* 00447D08 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447D0C 3C054600 */  lui   $a1, 0x4600
/* 00447D10 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447D14 34A50033 */  ori   $a1, $a1, 0x33
/* 00447D18 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447D1C 240400CD */  li    $a0, 205
/* 00447D20 24060008 */  li    $a2, 8
/* 00447D24 0320F809 */  jalr  $t9
/* 00447D28 02401025 */   move  $v0, $s2
/* 00447D2C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447D30 3C054620 */  lui   $a1, 0x4620
/* 00447D34 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447D38 34A50033 */  ori   $a1, $a1, 0x33
/* 00447D3C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447D40 240400CE */  li    $a0, 206
/* 00447D44 24060008 */  li    $a2, 8
/* 00447D48 0320F809 */  jalr  $t9
/* 00447D4C 02401025 */   move  $v0, $s2
/* 00447D50 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447D54 3C054640 */  lui   $a1, 0x4640
/* 00447D58 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447D5C 34A50033 */  ori   $a1, $a1, 0x33
/* 00447D60 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447D64 240400CF */  li    $a0, 207
/* 00447D68 24060008 */  li    $a2, 8
/* 00447D6C 0320F809 */  jalr  $t9
/* 00447D70 02401025 */   move  $v0, $s2
/* 00447D74 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447D78 3C054600 */  lui   $a1, 0x4600
/* 00447D7C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447D80 34A50034 */  ori   $a1, $a1, 0x34
/* 00447D84 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447D88 240400D0 */  li    $a0, 208
/* 00447D8C 24060008 */  li    $a2, 8
/* 00447D90 0320F809 */  jalr  $t9
/* 00447D94 02401025 */   move  $v0, $s2
/* 00447D98 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447D9C 3C054620 */  lui   $a1, 0x4620
/* 00447DA0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447DA4 34A50034 */  ori   $a1, $a1, 0x34
/* 00447DA8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447DAC 240400D1 */  li    $a0, 209
/* 00447DB0 24060008 */  li    $a2, 8
/* 00447DB4 0320F809 */  jalr  $t9
/* 00447DB8 02401025 */   move  $v0, $s2
/* 00447DBC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447DC0 3C054640 */  lui   $a1, 0x4640
/* 00447DC4 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447DC8 34A50034 */  ori   $a1, $a1, 0x34
/* 00447DCC 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447DD0 240400D2 */  li    $a0, 210
/* 00447DD4 24060008 */  li    $a2, 8
/* 00447DD8 0320F809 */  jalr  $t9
/* 00447DDC 02401025 */   move  $v0, $s2
/* 00447DE0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447DE4 3C054600 */  lui   $a1, 0x4600
/* 00447DE8 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447DEC 34A50035 */  ori   $a1, $a1, 0x35
/* 00447DF0 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447DF4 240400D3 */  li    $a0, 211
/* 00447DF8 24060008 */  li    $a2, 8
/* 00447DFC 0320F809 */  jalr  $t9
/* 00447E00 02401025 */   move  $v0, $s2
/* 00447E04 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447E08 3C054620 */  lui   $a1, 0x4620
/* 00447E0C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447E10 34A50035 */  ori   $a1, $a1, 0x35
/* 00447E14 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447E18 240400D4 */  li    $a0, 212
/* 00447E1C 24060008 */  li    $a2, 8
/* 00447E20 0320F809 */  jalr  $t9
/* 00447E24 02401025 */   move  $v0, $s2
/* 00447E28 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447E2C 3C054640 */  lui   $a1, 0x4640
/* 00447E30 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447E34 34A50035 */  ori   $a1, $a1, 0x35
/* 00447E38 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447E3C 240400D5 */  li    $a0, 213
/* 00447E40 24060008 */  li    $a2, 8
/* 00447E44 0320F809 */  jalr  $t9
/* 00447E48 02401025 */   move  $v0, $s2
/* 00447E4C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447E50 3C054600 */  lui   $a1, 0x4600
/* 00447E54 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447E58 34A50036 */  ori   $a1, $a1, 0x36
/* 00447E5C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447E60 240400D6 */  li    $a0, 214
/* 00447E64 24060008 */  li    $a2, 8
/* 00447E68 0320F809 */  jalr  $t9
/* 00447E6C 02401025 */   move  $v0, $s2
/* 00447E70 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447E74 3C054620 */  lui   $a1, 0x4620
/* 00447E78 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447E7C 34A50036 */  ori   $a1, $a1, 0x36
/* 00447E80 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447E84 240400D7 */  li    $a0, 215
/* 00447E88 24060008 */  li    $a2, 8
/* 00447E8C 0320F809 */  jalr  $t9
/* 00447E90 02401025 */   move  $v0, $s2
/* 00447E94 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447E98 3C054640 */  lui   $a1, 0x4640
/* 00447E9C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447EA0 34A50036 */  ori   $a1, $a1, 0x36
/* 00447EA4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447EA8 240400D8 */  li    $a0, 216
/* 00447EAC 24060008 */  li    $a2, 8
/* 00447EB0 0320F809 */  jalr  $t9
/* 00447EB4 02401025 */   move  $v0, $s2
/* 00447EB8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447EBC 3C054600 */  lui   $a1, 0x4600
/* 00447EC0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447EC4 34A50037 */  ori   $a1, $a1, 0x37
/* 00447EC8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447ECC 240400D9 */  li    $a0, 217
/* 00447ED0 24060008 */  li    $a2, 8
/* 00447ED4 0320F809 */  jalr  $t9
/* 00447ED8 02401025 */   move  $v0, $s2
/* 00447EDC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447EE0 3C054620 */  lui   $a1, 0x4620
/* 00447EE4 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447EE8 34A50037 */  ori   $a1, $a1, 0x37
/* 00447EEC 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447EF0 240400DA */  li    $a0, 218
/* 00447EF4 24060008 */  li    $a2, 8
/* 00447EF8 0320F809 */  jalr  $t9
/* 00447EFC 02401025 */   move  $v0, $s2
/* 00447F00 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447F04 3C054640 */  lui   $a1, 0x4640
/* 00447F08 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447F0C 34A50037 */  ori   $a1, $a1, 0x37
/* 00447F10 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447F14 240400DB */  li    $a0, 219
/* 00447F18 24060008 */  li    $a2, 8
/* 00447F1C 0320F809 */  jalr  $t9
/* 00447F20 02401025 */   move  $v0, $s2
/* 00447F24 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447F28 3C054600 */  lui   $a1, 0x4600
/* 00447F2C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447F30 34A50038 */  ori   $a1, $a1, 0x38
/* 00447F34 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447F38 240400DC */  li    $a0, 220
/* 00447F3C 24060008 */  li    $a2, 8
/* 00447F40 0320F809 */  jalr  $t9
/* 00447F44 02401025 */   move  $v0, $s2
/* 00447F48 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447F4C 3C054620 */  lui   $a1, 0x4620
/* 00447F50 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447F54 34A50038 */  ori   $a1, $a1, 0x38
/* 00447F58 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447F5C 240400DD */  li    $a0, 221
/* 00447F60 24060008 */  li    $a2, 8
/* 00447F64 0320F809 */  jalr  $t9
/* 00447F68 02401025 */   move  $v0, $s2
/* 00447F6C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447F70 3C054640 */  lui   $a1, 0x4640
/* 00447F74 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447F78 34A50038 */  ori   $a1, $a1, 0x38
/* 00447F7C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447F80 240400DE */  li    $a0, 222
/* 00447F84 24060008 */  li    $a2, 8
/* 00447F88 0320F809 */  jalr  $t9
/* 00447F8C 02401025 */   move  $v0, $s2
/* 00447F90 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447F94 3C054600 */  lui   $a1, 0x4600
/* 00447F98 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447F9C 34A50039 */  ori   $a1, $a1, 0x39
/* 00447FA0 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447FA4 240400DF */  li    $a0, 223
/* 00447FA8 24060008 */  li    $a2, 8
/* 00447FAC 0320F809 */  jalr  $t9
/* 00447FB0 02401025 */   move  $v0, $s2
/* 00447FB4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447FB8 3C054620 */  lui   $a1, 0x4620
/* 00447FBC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447FC0 34A50039 */  ori   $a1, $a1, 0x39
/* 00447FC4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447FC8 240400E0 */  li    $a0, 224
/* 00447FCC 24060008 */  li    $a2, 8
/* 00447FD0 0320F809 */  jalr  $t9
/* 00447FD4 02401025 */   move  $v0, $s2
/* 00447FD8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00447FDC 3C054640 */  lui   $a1, 0x4640
/* 00447FE0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00447FE4 34A50039 */  ori   $a1, $a1, 0x39
/* 00447FE8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00447FEC 240400E1 */  li    $a0, 225
/* 00447FF0 24060008 */  li    $a2, 8
/* 00447FF4 0320F809 */  jalr  $t9
/* 00447FF8 02401025 */   move  $v0, $s2
/* 00447FFC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448000 3C054600 */  lui   $a1, 0x4600
/* 00448004 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00448008 34A5003A */  ori   $a1, $a1, 0x3a
/* 0044800C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00448010 240400E2 */  li    $a0, 226
/* 00448014 24060008 */  li    $a2, 8
/* 00448018 0320F809 */  jalr  $t9
/* 0044801C 02401025 */   move  $v0, $s2
/* 00448020 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448024 3C054620 */  lui   $a1, 0x4620
/* 00448028 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044802C 34A5003A */  ori   $a1, $a1, 0x3a
/* 00448030 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00448034 240400E3 */  li    $a0, 227
/* 00448038 24060008 */  li    $a2, 8
/* 0044803C 0320F809 */  jalr  $t9
/* 00448040 02401025 */   move  $v0, $s2
/* 00448044 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448048 3C054640 */  lui   $a1, 0x4640
/* 0044804C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00448050 34A5003A */  ori   $a1, $a1, 0x3a
/* 00448054 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00448058 240400E4 */  li    $a0, 228
/* 0044805C 24060008 */  li    $a2, 8
/* 00448060 0320F809 */  jalr  $t9
/* 00448064 02401025 */   move  $v0, $s2
/* 00448068 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044806C 3C054600 */  lui   $a1, 0x4600
/* 00448070 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00448074 34A5003B */  ori   $a1, $a1, 0x3b
/* 00448078 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044807C 240400E5 */  li    $a0, 229
/* 00448080 24060008 */  li    $a2, 8
/* 00448084 0320F809 */  jalr  $t9
/* 00448088 02401025 */   move  $v0, $s2
/* 0044808C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448090 3C054620 */  lui   $a1, 0x4620
/* 00448094 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00448098 34A5003B */  ori   $a1, $a1, 0x3b
/* 0044809C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004480A0 240400E6 */  li    $a0, 230
/* 004480A4 24060008 */  li    $a2, 8
/* 004480A8 0320F809 */  jalr  $t9
/* 004480AC 02401025 */   move  $v0, $s2
/* 004480B0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004480B4 3C054640 */  lui   $a1, 0x4640
/* 004480B8 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004480BC 34A5003B */  ori   $a1, $a1, 0x3b
/* 004480C0 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004480C4 240400E7 */  li    $a0, 231
/* 004480C8 24060008 */  li    $a2, 8
/* 004480CC 0320F809 */  jalr  $t9
/* 004480D0 02401025 */   move  $v0, $s2
/* 004480D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004480D8 3C054600 */  lui   $a1, 0x4600
/* 004480DC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004480E0 34A5003C */  ori   $a1, $a1, 0x3c
/* 004480E4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004480E8 240400E8 */  li    $a0, 232
/* 004480EC 24060008 */  li    $a2, 8
/* 004480F0 0320F809 */  jalr  $t9
/* 004480F4 02401025 */   move  $v0, $s2
/* 004480F8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004480FC 3C054620 */  lui   $a1, 0x4620
/* 00448100 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00448104 34A5003C */  ori   $a1, $a1, 0x3c
/* 00448108 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044810C 240400E9 */  li    $a0, 233
/* 00448110 24060008 */  li    $a2, 8
/* 00448114 0320F809 */  jalr  $t9
/* 00448118 02401025 */   move  $v0, $s2
/* 0044811C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448120 3C054640 */  lui   $a1, 0x4640
/* 00448124 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00448128 34A5003C */  ori   $a1, $a1, 0x3c
/* 0044812C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00448130 240400EA */  li    $a0, 234
/* 00448134 24060008 */  li    $a2, 8
/* 00448138 0320F809 */  jalr  $t9
/* 0044813C 02401025 */   move  $v0, $s2
/* 00448140 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448144 3C054600 */  lui   $a1, 0x4600
/* 00448148 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044814C 34A5003D */  ori   $a1, $a1, 0x3d
/* 00448150 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00448154 240400EB */  li    $a0, 235
/* 00448158 24060008 */  li    $a2, 8
/* 0044815C 0320F809 */  jalr  $t9
/* 00448160 02401025 */   move  $v0, $s2
/* 00448164 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448168 3C054620 */  lui   $a1, 0x4620
/* 0044816C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00448170 34A5003D */  ori   $a1, $a1, 0x3d
/* 00448174 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00448178 240400EC */  li    $a0, 236
/* 0044817C 24060008 */  li    $a2, 8
/* 00448180 0320F809 */  jalr  $t9
/* 00448184 02401025 */   move  $v0, $s2
/* 00448188 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044818C 3C054640 */  lui   $a1, 0x4640
/* 00448190 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00448194 34A5003D */  ori   $a1, $a1, 0x3d
/* 00448198 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044819C 240400ED */  li    $a0, 237
/* 004481A0 24060008 */  li    $a2, 8
/* 004481A4 0320F809 */  jalr  $t9
/* 004481A8 02401025 */   move  $v0, $s2
/* 004481AC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004481B0 3C054600 */  lui   $a1, 0x4600
/* 004481B4 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004481B8 34A5003E */  ori   $a1, $a1, 0x3e
/* 004481BC 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004481C0 240400EE */  li    $a0, 238
/* 004481C4 24060008 */  li    $a2, 8
/* 004481C8 0320F809 */  jalr  $t9
/* 004481CC 02401025 */   move  $v0, $s2
/* 004481D0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004481D4 3C054620 */  lui   $a1, 0x4620
/* 004481D8 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004481DC 34A5003E */  ori   $a1, $a1, 0x3e
/* 004481E0 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004481E4 240400EF */  li    $a0, 239
/* 004481E8 24060008 */  li    $a2, 8
/* 004481EC 0320F809 */  jalr  $t9
/* 004481F0 02401025 */   move  $v0, $s2
/* 004481F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004481F8 3C054640 */  lui   $a1, 0x4640
/* 004481FC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00448200 34A5003E */  ori   $a1, $a1, 0x3e
/* 00448204 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00448208 240400F0 */  li    $a0, 240
/* 0044820C 24060008 */  li    $a2, 8
/* 00448210 0320F809 */  jalr  $t9
/* 00448214 02401025 */   move  $v0, $s2
/* 00448218 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044821C 3C054600 */  lui   $a1, 0x4600
/* 00448220 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00448224 34A5003F */  ori   $a1, $a1, 0x3f
/* 00448228 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044822C 240400F1 */  li    $a0, 241
/* 00448230 24060008 */  li    $a2, 8
/* 00448234 0320F809 */  jalr  $t9
/* 00448238 02401025 */   move  $v0, $s2
/* 0044823C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448240 3C054620 */  lui   $a1, 0x4620
/* 00448244 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00448248 34A5003F */  ori   $a1, $a1, 0x3f
/* 0044824C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00448250 240400F2 */  li    $a0, 242
/* 00448254 24060008 */  li    $a2, 8
/* 00448258 0320F809 */  jalr  $t9
/* 0044825C 02401025 */   move  $v0, $s2
/* 00448260 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448264 3C054640 */  lui   $a1, 0x4640
/* 00448268 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044826C 34A5003F */  ori   $a1, $a1, 0x3f
/* 00448270 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00448274 240400F3 */  li    $a0, 243
/* 00448278 24060008 */  li    $a2, 8
/* 0044827C 0320F809 */  jalr  $t9
/* 00448280 02401025 */   move  $v0, $s2
/* 00448284 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448288 3C054600 */  lui   $a1, 0x4600
/* 0044828C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00448290 34A5000C */  ori   $a1, $a1, 0xc
/* 00448294 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00448298 240400FB */  li    $a0, 251
/* 0044829C 24060008 */  li    $a2, 8
/* 004482A0 0320F809 */  jalr  $t9
/* 004482A4 02401025 */   move  $v0, $s2
/* 004482A8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004482AC 3C054620 */  lui   $a1, 0x4620
/* 004482B0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004482B4 34A5000C */  ori   $a1, $a1, 0xc
/* 004482B8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004482BC 240400FC */  li    $a0, 252
/* 004482C0 24060008 */  li    $a2, 8
/* 004482C4 0320F809 */  jalr  $t9
/* 004482C8 02401025 */   move  $v0, $s2
/* 004482CC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004482D0 3C054640 */  lui   $a1, 0x4640
/* 004482D4 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004482D8 34A5000C */  ori   $a1, $a1, 0xc
/* 004482DC 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004482E0 240400FD */  li    $a0, 253
/* 004482E4 24060008 */  li    $a2, 8
/* 004482E8 0320F809 */  jalr  $t9
/* 004482EC 02401025 */   move  $v0, $s2
/* 004482F0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004482F4 3C054600 */  lui   $a1, 0x4600
/* 004482F8 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004482FC 34A5000D */  ori   $a1, $a1, 0xd
/* 00448300 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00448304 240400FE */  li    $a0, 254
/* 00448308 24060008 */  li    $a2, 8
/* 0044830C 0320F809 */  jalr  $t9
/* 00448310 02401025 */   move  $v0, $s2
/* 00448314 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448318 3C054620 */  lui   $a1, 0x4620
/* 0044831C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00448320 34A5000D */  ori   $a1, $a1, 0xd
/* 00448324 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00448328 240400FF */  li    $a0, 255
/* 0044832C 24060008 */  li    $a2, 8
/* 00448330 0320F809 */  jalr  $t9
/* 00448334 02401025 */   move  $v0, $s2
/* 00448338 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044833C 3C054640 */  lui   $a1, 0x4640
/* 00448340 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00448344 34A5000D */  ori   $a1, $a1, 0xd
/* 00448348 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044834C 24040100 */  li    $a0, 256
/* 00448350 24060008 */  li    $a2, 8
/* 00448354 0320F809 */  jalr  $t9
/* 00448358 02401025 */   move  $v0, $s2
/* 0044835C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448360 3C054600 */  lui   $a1, 0x4600
/* 00448364 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00448368 34A5000E */  ori   $a1, $a1, 0xe
/* 0044836C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00448370 24040101 */  li    $a0, 257
/* 00448374 24060008 */  li    $a2, 8
/* 00448378 0320F809 */  jalr  $t9
/* 0044837C 02401025 */   move  $v0, $s2
/* 00448380 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448384 3C054620 */  lui   $a1, 0x4620
/* 00448388 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044838C 34A5000E */  ori   $a1, $a1, 0xe
/* 00448390 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00448394 24040102 */  li    $a0, 258
/* 00448398 24060008 */  li    $a2, 8
/* 0044839C 0320F809 */  jalr  $t9
/* 004483A0 02401025 */   move  $v0, $s2
/* 004483A4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004483A8 3C054640 */  lui   $a1, 0x4640
/* 004483AC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004483B0 34A5000E */  ori   $a1, $a1, 0xe
/* 004483B4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004483B8 24040103 */  li    $a0, 259
/* 004483BC 24060008 */  li    $a2, 8
/* 004483C0 0320F809 */  jalr  $t9
/* 004483C4 02401025 */   move  $v0, $s2
/* 004483C8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004483CC 3C054600 */  lui   $a1, 0x4600
/* 004483D0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004483D4 34A5000F */  ori   $a1, $a1, 0xf
/* 004483D8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004483DC 24040104 */  li    $a0, 260
/* 004483E0 24060008 */  li    $a2, 8
/* 004483E4 0320F809 */  jalr  $t9
/* 004483E8 02401025 */   move  $v0, $s2
/* 004483EC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004483F0 3C054620 */  lui   $a1, 0x4620
/* 004483F4 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004483F8 34A5000F */  ori   $a1, $a1, 0xf
/* 004483FC 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00448400 24040105 */  li    $a0, 261
/* 00448404 24060008 */  li    $a2, 8
/* 00448408 0320F809 */  jalr  $t9
/* 0044840C 02401025 */   move  $v0, $s2
/* 00448410 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448414 3C054640 */  lui   $a1, 0x4640
/* 00448418 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044841C 34A5000F */  ori   $a1, $a1, 0xf
/* 00448420 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00448424 24040106 */  li    $a0, 262
/* 00448428 24060008 */  li    $a2, 8
/* 0044842C 0320F809 */  jalr  $t9
/* 00448430 02401025 */   move  $v0, $s2
/* 00448434 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448438 3C054600 */  lui   $a1, 0x4600
/* 0044843C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00448440 34A50026 */  ori   $a1, $a1, 0x26
/* 00448444 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00448448 240400F8 */  li    $a0, 248
/* 0044844C 24060008 */  li    $a2, 8
/* 00448450 0320F809 */  jalr  $t9
/* 00448454 02401025 */   move  $v0, $s2
/* 00448458 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044845C 3C054620 */  lui   $a1, 0x4620
/* 00448460 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00448464 34A50026 */  ori   $a1, $a1, 0x26
/* 00448468 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044846C 240400F9 */  li    $a0, 249
/* 00448470 24060008 */  li    $a2, 8
/* 00448474 0320F809 */  jalr  $t9
/* 00448478 02401025 */   move  $v0, $s2
/* 0044847C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448480 3C054640 */  lui   $a1, 0x4640
/* 00448484 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00448488 34A50026 */  ori   $a1, $a1, 0x26
/* 0044848C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00448490 240400FA */  li    $a0, 250
/* 00448494 24060008 */  li    $a2, 8
/* 00448498 0320F809 */  jalr  $t9
/* 0044849C 02401025 */   move  $v0, $s2
/* 004484A0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004484A4 2404012D */  li    $a0, 301
/* 004484A8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004484AC 24050001 */  li    $a1, 1
/* 004484B0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004484B4 2406007F */  li    $a2, 127
/* 004484B8 0320F809 */  jalr  $t9
/* 004484BC 02401025 */   move  $v0, $s2
/* 004484C0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004484C4 2404012E */  li    $a0, 302
/* 004484C8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004484CC 24050001 */  li    $a1, 1
/* 004484D0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004484D4 24060080 */  li    $a2, 128
/* 004484D8 0320F809 */  jalr  $t9
/* 004484DC 02401025 */   move  $v0, $s2
/* 004484E0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004484E4 2404012F */  li    $a0, 303
/* 004484E8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004484EC 24050001 */  li    $a1, 1
/* 004484F0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004484F4 24060081 */  li    $a2, 129
/* 004484F8 0320F809 */  jalr  $t9
/* 004484FC 02401025 */   move  $v0, $s2
/* 00448500 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448504 24040131 */  li    $a0, 305
/* 00448508 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044850C 24050001 */  li    $a1, 1
/* 00448510 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448514 24060082 */  li    $a2, 130
/* 00448518 0320F809 */  jalr  $t9
/* 0044851C 02401025 */   move  $v0, $s2
/* 00448520 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448524 24040132 */  li    $a0, 306
/* 00448528 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044852C 24050001 */  li    $a1, 1
/* 00448530 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448534 24060083 */  li    $a2, 131
/* 00448538 0320F809 */  jalr  $t9
/* 0044853C 02401025 */   move  $v0, $s2
/* 00448540 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448544 24040133 */  li    $a0, 307
/* 00448548 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044854C 24050001 */  li    $a1, 1
/* 00448550 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448554 24060084 */  li    $a2, 132
/* 00448558 0320F809 */  jalr  $t9
/* 0044855C 02401025 */   move  $v0, $s2
/* 00448560 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448564 24040134 */  li    $a0, 308
/* 00448568 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044856C 24050003 */  li    $a1, 3
/* 00448570 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448574 24060061 */  li    $a2, 97
/* 00448578 0320F809 */  jalr  $t9
/* 0044857C 02401025 */   move  $v0, $s2
/* 00448580 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448584 24040135 */  li    $a0, 309
/* 00448588 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044858C 24050003 */  li    $a1, 3
/* 00448590 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448594 24060062 */  li    $a2, 98
/* 00448598 0320F809 */  jalr  $t9
/* 0044859C 02401025 */   move  $v0, $s2
/* 004485A0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004485A4 24040136 */  li    $a0, 310
/* 004485A8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004485AC 24050003 */  li    $a1, 3
/* 004485B0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004485B4 24060024 */  li    $a2, 36
/* 004485B8 0320F809 */  jalr  $t9
/* 004485BC 02401025 */   move  $v0, $s2
/* 004485C0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004485C4 24040137 */  li    $a0, 311
/* 004485C8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004485CC 24050003 */  li    $a1, 3
/* 004485D0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004485D4 24060025 */  li    $a2, 37
/* 004485D8 0320F809 */  jalr  $t9
/* 004485DC 02401025 */   move  $v0, $s2
/* 004485E0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004485E4 24040138 */  li    $a0, 312
/* 004485E8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004485EC 24050003 */  li    $a1, 3
/* 004485F0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004485F4 24060026 */  li    $a2, 38
/* 004485F8 0320F809 */  jalr  $t9
/* 004485FC 02401025 */   move  $v0, $s2
/* 00448600 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448604 24040139 */  li    $a0, 313
/* 00448608 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044860C 24050003 */  li    $a1, 3
/* 00448610 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448614 24060027 */  li    $a2, 39
/* 00448618 0320F809 */  jalr  $t9
/* 0044861C 02401025 */   move  $v0, $s2
/* 00448620 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448624 2404013A */  li    $a0, 314
/* 00448628 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044862C 24050003 */  li    $a1, 3
/* 00448630 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448634 24060028 */  li    $a2, 40
/* 00448638 0320F809 */  jalr  $t9
/* 0044863C 02401025 */   move  $v0, $s2
/* 00448640 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448644 2404013B */  li    $a0, 315
/* 00448648 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044864C 24050003 */  li    $a1, 3
/* 00448650 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448654 24060029 */  li    $a2, 41
/* 00448658 0320F809 */  jalr  $t9
/* 0044865C 02401025 */   move  $v0, $s2
/* 00448660 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448664 2404013C */  li    $a0, 316
/* 00448668 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044866C 24050003 */  li    $a1, 3
/* 00448670 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448674 2406002A */  li    $a2, 42
/* 00448678 0320F809 */  jalr  $t9
/* 0044867C 02401025 */   move  $v0, $s2
/* 00448680 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448684 2404013D */  li    $a0, 317
/* 00448688 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044868C 24050003 */  li    $a1, 3
/* 00448690 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448694 2406002E */  li    $a2, 46
/* 00448698 0320F809 */  jalr  $t9
/* 0044869C 02401025 */   move  $v0, $s2
/* 004486A0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004486A4 2404013E */  li    $a0, 318
/* 004486A8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004486AC 24050003 */  li    $a1, 3
/* 004486B0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004486B4 2406002F */  li    $a2, 47
/* 004486B8 0320F809 */  jalr  $t9
/* 004486BC 02401025 */   move  $v0, $s2
/* 004486C0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004486C4 2404013F */  li    $a0, 319
/* 004486C8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004486CC 24050003 */  li    $a1, 3
/* 004486D0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004486D4 24060030 */  li    $a2, 48
/* 004486D8 0320F809 */  jalr  $t9
/* 004486DC 02401025 */   move  $v0, $s2
/* 004486E0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004486E4 24040140 */  li    $a0, 320
/* 004486E8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004486EC 24050004 */  li    $a1, 4
/* 004486F0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004486F4 24060031 */  li    $a2, 49
/* 004486F8 0320F809 */  jalr  $t9
/* 004486FC 02401025 */   move  $v0, $s2
/* 00448700 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448704 24040141 */  li    $a0, 321
/* 00448708 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044870C 24050004 */  li    $a1, 4
/* 00448710 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448714 24060032 */  li    $a2, 50
/* 00448718 0320F809 */  jalr  $t9
/* 0044871C 02401025 */   move  $v0, $s2
/* 00448720 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448724 24040142 */  li    $a0, 322
/* 00448728 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044872C 24050003 */  li    $a1, 3
/* 00448730 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448734 24060033 */  li    $a2, 51
/* 00448738 0320F809 */  jalr  $t9
/* 0044873C 02401025 */   move  $v0, $s2
/* 00448740 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448744 24040143 */  li    $a0, 323
/* 00448748 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044874C 24050003 */  li    $a1, 3
/* 00448750 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448754 24060034 */  li    $a2, 52
/* 00448758 0320F809 */  jalr  $t9
/* 0044875C 02401025 */   move  $v0, $s2
/* 00448760 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448764 24040144 */  li    $a0, 324
/* 00448768 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044876C 24050001 */  li    $a1, 1
/* 00448770 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448774 24060085 */  li    $a2, 133
/* 00448778 0320F809 */  jalr  $t9
/* 0044877C 02401025 */   move  $v0, $s2
/* 00448780 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448784 24040145 */  li    $a0, 325
/* 00448788 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044878C 24050001 */  li    $a1, 1
/* 00448790 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448794 24060086 */  li    $a2, 134
/* 00448798 0320F809 */  jalr  $t9
/* 0044879C 02401025 */   move  $v0, $s2
/* 004487A0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004487A4 24040146 */  li    $a0, 326
/* 004487A8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004487AC 24050004 */  li    $a1, 4
/* 004487B0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004487B4 24060099 */  li    $a2, 153
/* 004487B8 0320F809 */  jalr  $t9
/* 004487BC 02401025 */   move  $v0, $s2
/* 004487C0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004487C4 24040147 */  li    $a0, 327
/* 004487C8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004487CC 24050004 */  li    $a1, 4
/* 004487D0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004487D4 2406009A */  li    $a2, 154
/* 004487D8 0320F809 */  jalr  $t9
/* 004487DC 02401025 */   move  $v0, $s2
/* 004487E0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004487E4 24040148 */  li    $a0, 328
/* 004487E8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004487EC 24050004 */  li    $a1, 4
/* 004487F0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004487F4 2406009B */  li    $a2, 155
/* 004487F8 0320F809 */  jalr  $t9
/* 004487FC 02401025 */   move  $v0, $s2
/* 00448800 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448804 24040149 */  li    $a0, 329
/* 00448808 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044880C 24050004 */  li    $a1, 4
/* 00448810 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448814 2406009C */  li    $a2, 156
/* 00448818 0320F809 */  jalr  $t9
/* 0044881C 02401025 */   move  $v0, $s2
/* 00448820 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448824 2404014A */  li    $a0, 330
/* 00448828 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044882C 24050004 */  li    $a1, 4
/* 00448830 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448834 2406009D */  li    $a2, 157
/* 00448838 0320F809 */  jalr  $t9
/* 0044883C 02401025 */   move  $v0, $s2
/* 00448840 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448844 2404014B */  li    $a0, 331
/* 00448848 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044884C 24050004 */  li    $a1, 4
/* 00448850 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448854 2406009E */  li    $a2, 158
/* 00448858 0320F809 */  jalr  $t9
/* 0044885C 02401025 */   move  $v0, $s2
/* 00448860 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448864 24040130 */  li    $a0, 304
/* 00448868 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044886C 24050001 */  li    $a1, 1
/* 00448870 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448874 24060078 */  li    $a2, 120
/* 00448878 0320F809 */  jalr  $t9
/* 0044887C 02401025 */   move  $v0, $s2
/* 00448880 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448884 2404014E */  li    $a0, 334
/* 00448888 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044888C 00002825 */  move  $a1, $zero
/* 00448890 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448894 2406011B */  li    $a2, 283
/* 00448898 0320F809 */  jalr  $t9
/* 0044889C 02401025 */   move  $v0, $s2
/* 004488A0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004488A4 2404015B */  li    $a0, 347
/* 004488A8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004488AC 24050003 */  li    $a1, 3
/* 004488B0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004488B4 24060113 */  li    $a2, 275
/* 004488B8 0320F809 */  jalr  $t9
/* 004488BC 02401025 */   move  $v0, $s2
/* 004488C0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004488C4 2404015C */  li    $a0, 348
/* 004488C8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004488CC 24050003 */  li    $a1, 3
/* 004488D0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004488D4 24060114 */  li    $a2, 276
/* 004488D8 0320F809 */  jalr  $t9
/* 004488DC 02401025 */   move  $v0, $s2
/* 004488E0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004488E4 2404015D */  li    $a0, 349
/* 004488E8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004488EC 24050003 */  li    $a1, 3
/* 004488F0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004488F4 24060115 */  li    $a2, 277
/* 004488F8 0320F809 */  jalr  $t9
/* 004488FC 02401025 */   move  $v0, $s2
/* 00448900 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448904 2404015E */  li    $a0, 350
/* 00448908 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044890C 24050003 */  li    $a1, 3
/* 00448910 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448914 24060116 */  li    $a2, 278
/* 00448918 0320F809 */  jalr  $t9
/* 0044891C 02401025 */   move  $v0, $s2
/* 00448920 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448924 2404015F */  li    $a0, 351
/* 00448928 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044892C 24050003 */  li    $a1, 3
/* 00448930 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448934 24060117 */  li    $a2, 279
/* 00448938 0320F809 */  jalr  $t9
/* 0044893C 02401025 */   move  $v0, $s2
/* 00448940 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448944 24040160 */  li    $a0, 352
/* 00448948 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044894C 24050003 */  li    $a1, 3
/* 00448950 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448954 24060118 */  li    $a2, 280
/* 00448958 0320F809 */  jalr  $t9
/* 0044895C 02401025 */   move  $v0, $s2
/* 00448960 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448964 24040161 */  li    $a0, 353
/* 00448968 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044896C 24050003 */  li    $a1, 3
/* 00448970 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448974 24060119 */  li    $a2, 281
/* 00448978 0320F809 */  jalr  $t9
/* 0044897C 02401025 */   move  $v0, $s2
/* 00448980 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448984 24040162 */  li    $a0, 354
/* 00448988 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044898C 24050003 */  li    $a1, 3
/* 00448990 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448994 2406011A */  li    $a2, 282
/* 00448998 0320F809 */  jalr  $t9
/* 0044899C 02401025 */   move  $v0, $s2
/* 004489A0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004489A4 24040150 */  li    $a0, 336
/* 004489A8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004489AC 24050003 */  li    $a1, 3
/* 004489B0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004489B4 24060107 */  li    $a2, 263
/* 004489B8 0320F809 */  jalr  $t9
/* 004489BC 02401025 */   move  $v0, $s2
/* 004489C0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004489C4 2404014F */  li    $a0, 335
/* 004489C8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004489CC 24050003 */  li    $a1, 3
/* 004489D0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004489D4 24060108 */  li    $a2, 264
/* 004489D8 0320F809 */  jalr  $t9
/* 004489DC 02401025 */   move  $v0, $s2
/* 004489E0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004489E4 24040151 */  li    $a0, 337
/* 004489E8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004489EC 24050003 */  li    $a1, 3
/* 004489F0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004489F4 24060109 */  li    $a2, 265
/* 004489F8 0320F809 */  jalr  $t9
/* 004489FC 02401025 */   move  $v0, $s2
/* 00448A00 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448A04 24040152 */  li    $a0, 338
/* 00448A08 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448A0C 24050003 */  li    $a1, 3
/* 00448A10 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448A14 2406010A */  li    $a2, 266
/* 00448A18 0320F809 */  jalr  $t9
/* 00448A1C 02401025 */   move  $v0, $s2
/* 00448A20 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448A24 24040154 */  li    $a0, 340
/* 00448A28 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448A2C 24050003 */  li    $a1, 3
/* 00448A30 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448A34 2406010B */  li    $a2, 267
/* 00448A38 0320F809 */  jalr  $t9
/* 00448A3C 02401025 */   move  $v0, $s2
/* 00448A40 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448A44 24040153 */  li    $a0, 339
/* 00448A48 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448A4C 24050003 */  li    $a1, 3
/* 00448A50 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448A54 2406010C */  li    $a2, 268
/* 00448A58 0320F809 */  jalr  $t9
/* 00448A5C 02401025 */   move  $v0, $s2
/* 00448A60 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448A64 24040155 */  li    $a0, 341
/* 00448A68 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448A6C 24050003 */  li    $a1, 3
/* 00448A70 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448A74 2406010D */  li    $a2, 269
/* 00448A78 0320F809 */  jalr  $t9
/* 00448A7C 02401025 */   move  $v0, $s2
/* 00448A80 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448A84 24040156 */  li    $a0, 342
/* 00448A88 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448A8C 24050003 */  li    $a1, 3
/* 00448A90 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448A94 2406010E */  li    $a2, 270
/* 00448A98 0320F809 */  jalr  $t9
/* 00448A9C 02401025 */   move  $v0, $s2
/* 00448AA0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448AA4 24040158 */  li    $a0, 344
/* 00448AA8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448AAC 24050003 */  li    $a1, 3
/* 00448AB0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448AB4 2406010F */  li    $a2, 271
/* 00448AB8 0320F809 */  jalr  $t9
/* 00448ABC 02401025 */   move  $v0, $s2
/* 00448AC0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448AC4 24040157 */  li    $a0, 343
/* 00448AC8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448ACC 24050003 */  li    $a1, 3
/* 00448AD0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448AD4 24060110 */  li    $a2, 272
/* 00448AD8 0320F809 */  jalr  $t9
/* 00448ADC 02401025 */   move  $v0, $s2
/* 00448AE0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448AE4 24040159 */  li    $a0, 345
/* 00448AE8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448AEC 24050003 */  li    $a1, 3
/* 00448AF0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448AF4 24060111 */  li    $a2, 273
/* 00448AF8 0320F809 */  jalr  $t9
/* 00448AFC 02401025 */   move  $v0, $s2
/* 00448B00 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448B04 2404015A */  li    $a0, 346
/* 00448B08 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448B0C 24050003 */  li    $a1, 3
/* 00448B10 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448B14 24060112 */  li    $a2, 274
/* 00448B18 0320F809 */  jalr  $t9
/* 00448B1C 02401025 */   move  $v0, $s2
/* 00448B20 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448B24 24040163 */  li    $a0, 355
/* 00448B28 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448B2C 24050001 */  li    $a1, 1
/* 00448B30 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448B34 2406009F */  li    $a2, 159
/* 00448B38 0320F809 */  jalr  $t9
/* 00448B3C 02401025 */   move  $v0, $s2
/* 00448B40 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448B44 24040165 */  li    $a0, 357
/* 00448B48 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448B4C 24050001 */  li    $a1, 1
/* 00448B50 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448B54 00003025 */  move  $a2, $zero
/* 00448B58 0320F809 */  jalr  $t9
/* 00448B5C 02401025 */   move  $v0, $s2
/* 00448B60 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448B64 24040166 */  li    $a0, 358
/* 00448B68 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448B6C 24050001 */  li    $a1, 1
/* 00448B70 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448B74 00003025 */  move  $a2, $zero
/* 00448B78 0320F809 */  jalr  $t9
/* 00448B7C 02401025 */   move  $v0, $s2
/* 00448B80 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448B84 24040167 */  li    $a0, 359
/* 00448B88 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448B8C 24050004 */  li    $a1, 4
/* 00448B90 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448B94 00003025 */  move  $a2, $zero
/* 00448B98 0320F809 */  jalr  $t9
/* 00448B9C 02401025 */   move  $v0, $s2
/* 00448BA0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448BA4 24040168 */  li    $a0, 360
/* 00448BA8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448BAC 24050004 */  li    $a1, 4
/* 00448BB0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448BB4 00003025 */  move  $a2, $zero
/* 00448BB8 0320F809 */  jalr  $t9
/* 00448BBC 02401025 */   move  $v0, $s2
/* 00448BC0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448BC4 24040169 */  li    $a0, 361
/* 00448BC8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448BCC 24050004 */  li    $a1, 4
/* 00448BD0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448BD4 00003025 */  move  $a2, $zero
/* 00448BD8 0320F809 */  jalr  $t9
/* 00448BDC 02401025 */   move  $v0, $s2
/* 00448BE0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448BE4 2404016A */  li    $a0, 362
/* 00448BE8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448BEC 24050003 */  li    $a1, 3
/* 00448BF0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448BF4 00003025 */  move  $a2, $zero
/* 00448BF8 0320F809 */  jalr  $t9
/* 00448BFC 02401025 */   move  $v0, $s2
/* 00448C00 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448C04 2404016B */  li    $a0, 363
/* 00448C08 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448C0C 24050003 */  li    $a1, 3
/* 00448C10 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448C14 00003025 */  move  $a2, $zero
/* 00448C18 0320F809 */  jalr  $t9
/* 00448C1C 02401025 */   move  $v0, $s2
/* 00448C20 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448C24 2404016C */  li    $a0, 364
/* 00448C28 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448C2C 24050003 */  li    $a1, 3
/* 00448C30 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448C34 00003025 */  move  $a2, $zero
/* 00448C38 0320F809 */  jalr  $t9
/* 00448C3C 02401025 */   move  $v0, $s2
/* 00448C40 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448C44 2404016D */  li    $a0, 365
/* 00448C48 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448C4C 24050003 */  li    $a1, 3
/* 00448C50 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448C54 24060033 */  li    $a2, 51
/* 00448C58 0320F809 */  jalr  $t9
/* 00448C5C 02401025 */   move  $v0, $s2
/* 00448C60 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448C64 2404016E */  li    $a0, 366
/* 00448C68 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448C6C 24050003 */  li    $a1, 3
/* 00448C70 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448C74 24060034 */  li    $a2, 52
/* 00448C78 0320F809 */  jalr  $t9
/* 00448C7C 02401025 */   move  $v0, $s2
/* 00448C80 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448C84 2404016F */  li    $a0, 367
/* 00448C88 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448C8C 24050003 */  li    $a1, 3
/* 00448C90 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448C94 00003025 */  move  $a2, $zero
/* 00448C98 0320F809 */  jalr  $t9
/* 00448C9C 02401025 */   move  $v0, $s2
/* 00448CA0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448CA4 24040170 */  li    $a0, 368
/* 00448CA8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448CAC 24050003 */  li    $a1, 3
/* 00448CB0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448CB4 00003025 */  move  $a2, $zero
/* 00448CB8 0320F809 */  jalr  $t9
/* 00448CBC 02401025 */   move  $v0, $s2
/* 00448CC0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448CC4 24040171 */  li    $a0, 369
/* 00448CC8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448CCC 24050003 */  li    $a1, 3
/* 00448CD0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448CD4 24060025 */  li    $a2, 37
/* 00448CD8 0320F809 */  jalr  $t9
/* 00448CDC 02401025 */   move  $v0, $s2
/* 00448CE0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448CE4 24040172 */  li    $a0, 370
/* 00448CE8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448CEC 24050003 */  li    $a1, 3
/* 00448CF0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448CF4 24060027 */  li    $a2, 39
/* 00448CF8 0320F809 */  jalr  $t9
/* 00448CFC 02401025 */   move  $v0, $s2
/* 00448D00 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448D04 24040173 */  li    $a0, 371
/* 00448D08 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448D0C 24050001 */  li    $a1, 1
/* 00448D10 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448D14 00003025 */  move  $a2, $zero
/* 00448D18 0320F809 */  jalr  $t9
/* 00448D1C 02401025 */   move  $v0, $s2
/* 00448D20 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448D24 24040175 */  li    $a0, 373
/* 00448D28 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448D2C 24050003 */  li    $a1, 3
/* 00448D30 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448D34 24060087 */  li    $a2, 135
/* 00448D38 0320F809 */  jalr  $t9
/* 00448D3C 02401025 */   move  $v0, $s2
/* 00448D40 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448D44 24040174 */  li    $a0, 372
/* 00448D48 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448D4C 24050003 */  li    $a1, 3
/* 00448D50 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448D54 24060088 */  li    $a2, 136
/* 00448D58 0320F809 */  jalr  $t9
/* 00448D5C 02401025 */   move  $v0, $s2
/* 00448D60 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448D64 24040176 */  li    $a0, 374
/* 00448D68 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448D6C 24050003 */  li    $a1, 3
/* 00448D70 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448D74 24060089 */  li    $a2, 137
/* 00448D78 0320F809 */  jalr  $t9
/* 00448D7C 02401025 */   move  $v0, $s2
/* 00448D80 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448D84 24040177 */  li    $a0, 375
/* 00448D88 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448D8C 24050003 */  li    $a1, 3
/* 00448D90 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448D94 2406008A */  li    $a2, 138
/* 00448D98 0320F809 */  jalr  $t9
/* 00448D9C 02401025 */   move  $v0, $s2
/* 00448DA0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448DA4 24040178 */  li    $a0, 376
/* 00448DA8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448DAC 24050010 */  li    $a1, 16
/* 00448DB0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448DB4 2406011C */  li    $a2, 284
/* 00448DB8 0320F809 */  jalr  $t9
/* 00448DBC 02401025 */   move  $v0, $s2
/* 00448DC0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448DC4 24040179 */  li    $a0, 377
/* 00448DC8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448DCC 24050010 */  li    $a1, 16
/* 00448DD0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448DD4 2406011D */  li    $a2, 285
/* 00448DD8 0320F809 */  jalr  $t9
/* 00448DDC 02401025 */   move  $v0, $s2
/* 00448DE0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448DE4 2404017A */  li    $a0, 378
/* 00448DE8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448DEC 24050010 */  li    $a1, 16
/* 00448DF0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448DF4 2406011E */  li    $a2, 286
/* 00448DF8 0320F809 */  jalr  $t9
/* 00448DFC 02401025 */   move  $v0, $s2
/* 00448E00 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448E04 2404017B */  li    $a0, 379
/* 00448E08 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448E0C 24050010 */  li    $a1, 16
/* 00448E10 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448E14 2406011F */  li    $a2, 287
/* 00448E18 0320F809 */  jalr  $t9
/* 00448E1C 02401025 */   move  $v0, $s2
/* 00448E20 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448E24 2404017C */  li    $a0, 380
/* 00448E28 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448E2C 24050010 */  li    $a1, 16
/* 00448E30 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448E34 24060120 */  li    $a2, 288
/* 00448E38 0320F809 */  jalr  $t9
/* 00448E3C 02401025 */   move  $v0, $s2
/* 00448E40 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448E44 2404017D */  li    $a0, 381
/* 00448E48 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448E4C 24050010 */  li    $a1, 16
/* 00448E50 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448E54 24060121 */  li    $a2, 289
/* 00448E58 0320F809 */  jalr  $t9
/* 00448E5C 02401025 */   move  $v0, $s2
/* 00448E60 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448E64 2404017E */  li    $a0, 382
/* 00448E68 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448E6C 24050010 */  li    $a1, 16
/* 00448E70 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448E74 24060122 */  li    $a2, 290
/* 00448E78 0320F809 */  jalr  $t9
/* 00448E7C 02401025 */   move  $v0, $s2
/* 00448E80 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448E84 2404017F */  li    $a0, 383
/* 00448E88 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448E8C 24050010 */  li    $a1, 16
/* 00448E90 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448E94 24060123 */  li    $a2, 291
/* 00448E98 0320F809 */  jalr  $t9
/* 00448E9C 02401025 */   move  $v0, $s2
/* 00448EA0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448EA4 24040180 */  li    $a0, 384
/* 00448EA8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448EAC 24050010 */  li    $a1, 16
/* 00448EB0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448EB4 24060124 */  li    $a2, 292
/* 00448EB8 0320F809 */  jalr  $t9
/* 00448EBC 02401025 */   move  $v0, $s2
/* 00448EC0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448EC4 24040181 */  li    $a0, 385
/* 00448EC8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448ECC 24050010 */  li    $a1, 16
/* 00448ED0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448ED4 24060125 */  li    $a2, 293
/* 00448ED8 0320F809 */  jalr  $t9
/* 00448EDC 02401025 */   move  $v0, $s2
/* 00448EE0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448EE4 24040182 */  li    $a0, 386
/* 00448EE8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448EEC 24050010 */  li    $a1, 16
/* 00448EF0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448EF4 24060126 */  li    $a2, 294
/* 00448EF8 0320F809 */  jalr  $t9
/* 00448EFC 02401025 */   move  $v0, $s2
/* 00448F00 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448F04 24040183 */  li    $a0, 387
/* 00448F08 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448F0C 24050010 */  li    $a1, 16
/* 00448F10 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448F14 24060127 */  li    $a2, 295
/* 00448F18 0320F809 */  jalr  $t9
/* 00448F1C 02401025 */   move  $v0, $s2
/* 00448F20 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448F24 24040184 */  li    $a0, 388
/* 00448F28 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448F2C 24050003 */  li    $a1, 3
/* 00448F30 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448F34 24060128 */  li    $a2, 296
/* 00448F38 0320F809 */  jalr  $t9
/* 00448F3C 02401025 */   move  $v0, $s2
/* 00448F40 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448F44 24040185 */  li    $a0, 389
/* 00448F48 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448F4C 24050003 */  li    $a1, 3
/* 00448F50 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448F54 24060129 */  li    $a2, 297
/* 00448F58 0320F809 */  jalr  $t9
/* 00448F5C 02401025 */   move  $v0, $s2
/* 00448F60 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448F64 24040186 */  li    $a0, 390
/* 00448F68 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448F6C 24050003 */  li    $a1, 3
/* 00448F70 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448F74 2406012A */  li    $a2, 298
/* 00448F78 0320F809 */  jalr  $t9
/* 00448F7C 02401025 */   move  $v0, $s2
/* 00448F80 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448F84 24040187 */  li    $a0, 391
/* 00448F88 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448F8C 24050003 */  li    $a1, 3
/* 00448F90 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448F94 2406012B */  li    $a2, 299
/* 00448F98 0320F809 */  jalr  $t9
/* 00448F9C 02401025 */   move  $v0, $s2
/* 00448FA0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448FA4 2404018A */  li    $a0, 394
/* 00448FA8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448FAC 24050003 */  li    $a1, 3
/* 00448FB0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448FB4 2406012C */  li    $a2, 300
/* 00448FB8 0320F809 */  jalr  $t9
/* 00448FBC 02401025 */   move  $v0, $s2
/* 00448FC0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448FC4 2404018B */  li    $a0, 395
/* 00448FC8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448FCC 24050003 */  li    $a1, 3
/* 00448FD0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448FD4 2406012D */  li    $a2, 301
/* 00448FD8 0320F809 */  jalr  $t9
/* 00448FDC 02401025 */   move  $v0, $s2
/* 00448FE0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00448FE4 24040188 */  li    $a0, 392
/* 00448FE8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00448FEC 24050003 */  li    $a1, 3
/* 00448FF0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00448FF4 2406012E */  li    $a2, 302
/* 00448FF8 0320F809 */  jalr  $t9
/* 00448FFC 02401025 */   move  $v0, $s2
/* 00449000 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449004 24040189 */  li    $a0, 393
/* 00449008 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044900C 24050003 */  li    $a1, 3
/* 00449010 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00449014 2406012F */  li    $a2, 303
/* 00449018 0320F809 */  jalr  $t9
/* 0044901C 02401025 */   move  $v0, $s2
/* 00449020 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449024 2404018C */  li    $a0, 396
/* 00449028 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044902C 24050003 */  li    $a1, 3
/* 00449030 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00449034 24060130 */  li    $a2, 304
/* 00449038 0320F809 */  jalr  $t9
/* 0044903C 02401025 */   move  $v0, $s2
/* 00449040 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449044 2404018D */  li    $a0, 397
/* 00449048 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044904C 24050003 */  li    $a1, 3
/* 00449050 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00449054 24060131 */  li    $a2, 305
/* 00449058 0320F809 */  jalr  $t9
/* 0044905C 02401025 */   move  $v0, $s2
/* 00449060 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449064 2404018E */  li    $a0, 398
/* 00449068 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044906C 24050003 */  li    $a1, 3
/* 00449070 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00449074 24060132 */  li    $a2, 306
/* 00449078 0320F809 */  jalr  $t9
/* 0044907C 02401025 */   move  $v0, $s2
/* 00449080 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449084 2404018F */  li    $a0, 399
/* 00449088 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044908C 24050003 */  li    $a1, 3
/* 00449090 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00449094 24060133 */  li    $a2, 307
/* 00449098 0320F809 */  jalr  $t9
/* 0044909C 02401025 */   move  $v0, $s2
/* 004490A0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004490A4 24040190 */  li    $a0, 400
/* 004490A8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004490AC 24050003 */  li    $a1, 3
/* 004490B0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004490B4 24060134 */  li    $a2, 308
/* 004490B8 0320F809 */  jalr  $t9
/* 004490BC 02401025 */   move  $v0, $s2
/* 004490C0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004490C4 24040191 */  li    $a0, 401
/* 004490C8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004490CC 24050003 */  li    $a1, 3
/* 004490D0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004490D4 24060135 */  li    $a2, 309
/* 004490D8 0320F809 */  jalr  $t9
/* 004490DC 02401025 */   move  $v0, $s2
/* 004490E0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004490E4 24040192 */  li    $a0, 402
/* 004490E8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004490EC 24050003 */  li    $a1, 3
/* 004490F0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004490F4 24060136 */  li    $a2, 310
/* 004490F8 0320F809 */  jalr  $t9
/* 004490FC 02401025 */   move  $v0, $s2
/* 00449100 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449104 24040193 */  li    $a0, 403
/* 00449108 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044910C 24050003 */  li    $a1, 3
/* 00449110 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00449114 24060137 */  li    $a2, 311
/* 00449118 0320F809 */  jalr  $t9
/* 0044911C 02401025 */   move  $v0, $s2
/* 00449120 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449124 24040194 */  li    $a0, 404
/* 00449128 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044912C 24050003 */  li    $a1, 3
/* 00449130 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00449134 24060138 */  li    $a2, 312
/* 00449138 0320F809 */  jalr  $t9
/* 0044913C 02401025 */   move  $v0, $s2
/* 00449140 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449144 2404002E */  li    $a0, 46
/* 00449148 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044914C 24050001 */  li    $a1, 1
/* 00449150 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00449154 2406013C */  li    $a2, 316
/* 00449158 0320F809 */  jalr  $t9
/* 0044915C 02401025 */   move  $v0, $s2
/* 00449160 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449164 24040195 */  li    $a0, 405
/* 00449168 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044916C 00002825 */  move  $a1, $zero
/* 00449170 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00449174 24060139 */  li    $a2, 313
/* 00449178 0320F809 */  jalr  $t9
/* 0044917C 02401025 */   move  $v0, $s2
/* 00449180 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449184 24040196 */  li    $a0, 406
/* 00449188 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044918C 00002825 */  move  $a1, $zero
/* 00449190 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00449194 2406013A */  li    $a2, 314
/* 00449198 0320F809 */  jalr  $t9
/* 0044919C 02401025 */   move  $v0, $s2
/* 004491A0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004491A4 24040197 */  li    $a0, 407
/* 004491A8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 004491AC 00002825 */  move  $a1, $zero
/* 004491B0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 004491B4 2406013B */  li    $a2, 315
/* 004491B8 0320F809 */  jalr  $t9
/* 004491BC 02401025 */   move  $v0, $s2
/* 004491C0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004491C4 3C054200 */  lui   $a1, 0x4200
/* 004491C8 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004491CC 34A50018 */  ori   $a1, $a1, 0x18
/* 004491D0 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004491D4 2404011B */  li    $a0, 283
/* 004491D8 24060005 */  li    $a2, 5
/* 004491DC 0320F809 */  jalr  $t9
/* 004491E0 02401025 */   move  $v0, $s2
/* 004491E4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004491E8 3C054600 */  lui   $a1, 0x4600
/* 004491EC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004491F0 34A50025 */  ori   $a1, $a1, 0x25
/* 004491F4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004491F8 24040113 */  li    $a0, 275
/* 004491FC 24060008 */  li    $a2, 8
/* 00449200 0320F809 */  jalr  $t9
/* 00449204 02401025 */   move  $v0, $s2
/* 00449208 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044920C 3C054620 */  lui   $a1, 0x4620
/* 00449210 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449214 34A50025 */  ori   $a1, $a1, 0x25
/* 00449218 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044921C 24040114 */  li    $a0, 276
/* 00449220 24060008 */  li    $a2, 8
/* 00449224 0320F809 */  jalr  $t9
/* 00449228 02401025 */   move  $v0, $s2
/* 0044922C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449230 3C054640 */  lui   $a1, 0x4640
/* 00449234 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449238 34A50025 */  ori   $a1, $a1, 0x25
/* 0044923C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449240 24040115 */  li    $a0, 277
/* 00449244 24060008 */  li    $a2, 8
/* 00449248 0320F809 */  jalr  $t9
/* 0044924C 02401025 */   move  $v0, $s2
/* 00449250 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449254 3C054680 */  lui   $a1, 0x4680
/* 00449258 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044925C 34A50025 */  ori   $a1, $a1, 0x25
/* 00449260 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449264 24040116 */  li    $a0, 278
/* 00449268 24060008 */  li    $a2, 8
/* 0044926C 0320F809 */  jalr  $t9
/* 00449270 02401025 */   move  $v0, $s2
/* 00449274 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449278 3C0546A0 */  lui   $a1, 0x46a0
/* 0044927C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449280 34A50020 */  ori   $a1, $a1, 0x20
/* 00449284 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449288 24040117 */  li    $a0, 279
/* 0044928C 24060008 */  li    $a2, 8
/* 00449290 0320F809 */  jalr  $t9
/* 00449294 02401025 */   move  $v0, $s2
/* 00449298 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044929C 3C0546A0 */  lui   $a1, 0x46a0
/* 004492A0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004492A4 34A50021 */  ori   $a1, $a1, 0x21
/* 004492A8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004492AC 24040118 */  li    $a0, 280
/* 004492B0 24060008 */  li    $a2, 8
/* 004492B4 0320F809 */  jalr  $t9
/* 004492B8 02401025 */   move  $v0, $s2
/* 004492BC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004492C0 3C0546A0 */  lui   $a1, 0x46a0
/* 004492C4 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004492C8 34A50022 */  ori   $a1, $a1, 0x22
/* 004492CC 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004492D0 24040119 */  li    $a0, 281
/* 004492D4 24060008 */  li    $a2, 8
/* 004492D8 0320F809 */  jalr  $t9
/* 004492DC 02401025 */   move  $v0, $s2
/* 004492E0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004492E4 3C0546A0 */  lui   $a1, 0x46a0
/* 004492E8 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004492EC 34A50024 */  ori   $a1, $a1, 0x24
/* 004492F0 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004492F4 2404011A */  li    $a0, 282
/* 004492F8 24060008 */  li    $a2, 8
/* 004492FC 0320F809 */  jalr  $t9
/* 00449300 02401025 */   move  $v0, $s2
/* 00449304 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449308 3C054600 */  lui   $a1, 0x4600
/* 0044930C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449310 34A50008 */  ori   $a1, $a1, 8
/* 00449314 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449318 24040107 */  li    $a0, 263
/* 0044931C 24060008 */  li    $a2, 8
/* 00449320 0320F809 */  jalr  $t9
/* 00449324 02401025 */   move  $v0, $s2
/* 00449328 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044932C 3C054600 */  lui   $a1, 0x4600
/* 00449330 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449334 34A50009 */  ori   $a1, $a1, 9
/* 00449338 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044933C 24040108 */  li    $a0, 264
/* 00449340 24060008 */  li    $a2, 8
/* 00449344 0320F809 */  jalr  $t9
/* 00449348 02401025 */   move  $v0, $s2
/* 0044934C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449350 3C054600 */  lui   $a1, 0x4600
/* 00449354 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449358 34A5000A */  ori   $a1, $a1, 0xa
/* 0044935C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449360 24040109 */  li    $a0, 265
/* 00449364 24060008 */  li    $a2, 8
/* 00449368 0320F809 */  jalr  $t9
/* 0044936C 02401025 */   move  $v0, $s2
/* 00449370 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449374 3C054600 */  lui   $a1, 0x4600
/* 00449378 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044937C 34A5000B */  ori   $a1, $a1, 0xb
/* 00449380 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449384 2404010A */  li    $a0, 266
/* 00449388 24060008 */  li    $a2, 8
/* 0044938C 0320F809 */  jalr  $t9
/* 00449390 02401025 */   move  $v0, $s2
/* 00449394 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449398 3C054620 */  lui   $a1, 0x4620
/* 0044939C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004493A0 34A50008 */  ori   $a1, $a1, 8
/* 004493A4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004493A8 2404010B */  li    $a0, 267
/* 004493AC 24060008 */  li    $a2, 8
/* 004493B0 0320F809 */  jalr  $t9
/* 004493B4 02401025 */   move  $v0, $s2
/* 004493B8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004493BC 3C054620 */  lui   $a1, 0x4620
/* 004493C0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004493C4 34A50009 */  ori   $a1, $a1, 9
/* 004493C8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004493CC 2404010C */  li    $a0, 268
/* 004493D0 24060008 */  li    $a2, 8
/* 004493D4 0320F809 */  jalr  $t9
/* 004493D8 02401025 */   move  $v0, $s2
/* 004493DC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004493E0 3C054620 */  lui   $a1, 0x4620
/* 004493E4 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004493E8 34A5000A */  ori   $a1, $a1, 0xa
/* 004493EC 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004493F0 2404010D */  li    $a0, 269
/* 004493F4 24060008 */  li    $a2, 8
/* 004493F8 0320F809 */  jalr  $t9
/* 004493FC 02401025 */   move  $v0, $s2
/* 00449400 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449404 3C054620 */  lui   $a1, 0x4620
/* 00449408 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044940C 34A5000B */  ori   $a1, $a1, 0xb
/* 00449410 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449414 2404010E */  li    $a0, 270
/* 00449418 24060008 */  li    $a2, 8
/* 0044941C 0320F809 */  jalr  $t9
/* 00449420 02401025 */   move  $v0, $s2
/* 00449424 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449428 3C054640 */  lui   $a1, 0x4640
/* 0044942C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449430 34A50008 */  ori   $a1, $a1, 8
/* 00449434 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449438 2404010F */  li    $a0, 271
/* 0044943C 24060008 */  li    $a2, 8
/* 00449440 0320F809 */  jalr  $t9
/* 00449444 02401025 */   move  $v0, $s2
/* 00449448 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044944C 3C054640 */  lui   $a1, 0x4640
/* 00449450 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449454 34A50009 */  ori   $a1, $a1, 9
/* 00449458 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044945C 24040110 */  li    $a0, 272
/* 00449460 24060008 */  li    $a2, 8
/* 00449464 0320F809 */  jalr  $t9
/* 00449468 02401025 */   move  $v0, $s2
/* 0044946C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449470 3C054640 */  lui   $a1, 0x4640
/* 00449474 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449478 34A5000A */  ori   $a1, $a1, 0xa
/* 0044947C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449480 24040111 */  li    $a0, 273
/* 00449484 24060008 */  li    $a2, 8
/* 00449488 0320F809 */  jalr  $t9
/* 0044948C 02401025 */   move  $v0, $s2
/* 00449490 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449494 3C054640 */  lui   $a1, 0x4640
/* 00449498 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044949C 34A5000B */  ori   $a1, $a1, 0xb
/* 004494A0 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004494A4 24040112 */  li    $a0, 274
/* 004494A8 24060008 */  li    $a2, 8
/* 004494AC 0320F809 */  jalr  $t9
/* 004494B0 02401025 */   move  $v0, $s2
/* 004494B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004494B8 2404007F */  li    $a0, 127
/* 004494BC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004494C0 3C056800 */  lui   $a1, 0x6800
/* 004494C4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004494C8 24060006 */  li    $a2, 6
/* 004494CC 0320F809 */  jalr  $t9
/* 004494D0 02401025 */   move  $v0, $s2
/* 004494D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004494D8 24040080 */  li    $a0, 128
/* 004494DC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004494E0 3C056C00 */  lui   $a1, 0x6c00
/* 004494E4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004494E8 24060006 */  li    $a2, 6
/* 004494EC 0320F809 */  jalr  $t9
/* 004494F0 02401025 */   move  $v0, $s2
/* 004494F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004494F8 24040081 */  li    $a0, 129
/* 004494FC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449500 3C05D000 */  lui   $a1, 0xd000
/* 00449504 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449508 24060006 */  li    $a2, 6
/* 0044950C 0320F809 */  jalr  $t9
/* 00449510 02401025 */   move  $v0, $s2
/* 00449514 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449518 24040082 */  li    $a0, 130
/* 0044951C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449520 3C05B000 */  lui   $a1, 0xb000
/* 00449524 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449528 24060006 */  li    $a2, 6
/* 0044952C 0320F809 */  jalr  $t9
/* 00449530 02401025 */   move  $v0, $s2
/* 00449534 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449538 24040083 */  li    $a0, 131
/* 0044953C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449540 3C05B400 */  lui   $a1, 0xb400
/* 00449544 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449548 24060006 */  li    $a2, 6
/* 0044954C 0320F809 */  jalr  $t9
/* 00449550 02401025 */   move  $v0, $s2
/* 00449554 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449558 24040084 */  li    $a0, 132
/* 0044955C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449560 3C05F000 */  lui   $a1, 0xf000
/* 00449564 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449568 24060006 */  li    $a2, 6
/* 0044956C 0320F809 */  jalr  $t9
/* 00449570 02401025 */   move  $v0, $s2
/* 00449574 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449578 24040061 */  li    $a0, 97
/* 0044957C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449580 3C056000 */  lui   $a1, 0x6000
/* 00449584 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449588 00003025 */  move  $a2, $zero
/* 0044958C 0320F809 */  jalr  $t9
/* 00449590 02401025 */   move  $v0, $s2
/* 00449594 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449598 24040062 */  li    $a0, 98
/* 0044959C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004495A0 3C056400 */  lui   $a1, 0x6400
/* 004495A4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004495A8 00003025 */  move  $a2, $zero
/* 004495AC 0320F809 */  jalr  $t9
/* 004495B0 02401025 */   move  $v0, $s2
/* 004495B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004495B8 24040024 */  li    $a0, 36
/* 004495BC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004495C0 2405002C */  li    $a1, 44
/* 004495C4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004495C8 24060003 */  li    $a2, 3
/* 004495CC 0320F809 */  jalr  $t9
/* 004495D0 02401025 */   move  $v0, $s2
/* 004495D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004495D8 24040025 */  li    $a0, 37
/* 004495DC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004495E0 2405002D */  li    $a1, 45
/* 004495E4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004495E8 24060003 */  li    $a2, 3
/* 004495EC 0320F809 */  jalr  $t9
/* 004495F0 02401025 */   move  $v0, $s2
/* 004495F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004495F8 24040026 */  li    $a0, 38
/* 004495FC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449600 2405002E */  li    $a1, 46
/* 00449604 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449608 24060003 */  li    $a2, 3
/* 0044960C 0320F809 */  jalr  $t9
/* 00449610 02401025 */   move  $v0, $s2
/* 00449614 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449618 24040027 */  li    $a0, 39
/* 0044961C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449620 2405002F */  li    $a1, 47
/* 00449624 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449628 24060003 */  li    $a2, 3
/* 0044962C 0320F809 */  jalr  $t9
/* 00449630 02401025 */   move  $v0, $s2
/* 00449634 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449638 24040028 */  li    $a0, 40
/* 0044963C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449640 24050038 */  li    $a1, 56
/* 00449644 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449648 24060003 */  li    $a2, 3
/* 0044964C 0320F809 */  jalr  $t9
/* 00449650 02401025 */   move  $v0, $s2
/* 00449654 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449658 24040029 */  li    $a0, 41
/* 0044965C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449660 2405003A */  li    $a1, 58
/* 00449664 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449668 24060003 */  li    $a2, 3
/* 0044966C 0320F809 */  jalr  $t9
/* 00449670 02401025 */   move  $v0, $s2
/* 00449674 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449678 2404002A */  li    $a0, 42
/* 0044967C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449680 2405003B */  li    $a1, 59
/* 00449684 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449688 24060003 */  li    $a2, 3
/* 0044968C 0320F809 */  jalr  $t9
/* 00449690 02401025 */   move  $v0, $s2
/* 00449694 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449698 2404002B */  li    $a0, 43
/* 0044969C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004496A0 2405003C */  li    $a1, 60
/* 004496A4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004496A8 24060003 */  li    $a2, 3
/* 004496AC 0320F809 */  jalr  $t9
/* 004496B0 02401025 */   move  $v0, $s2
/* 004496B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004496B8 2404002C */  li    $a0, 44
/* 004496BC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004496C0 2405003E */  li    $a1, 62
/* 004496C4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004496C8 24060003 */  li    $a2, 3
/* 004496CC 0320F809 */  jalr  $t9
/* 004496D0 02401025 */   move  $v0, $s2
/* 004496D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004496D8 2404002D */  li    $a0, 45
/* 004496DC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004496E0 2405003F */  li    $a1, 63
/* 004496E4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004496E8 24060003 */  li    $a2, 3
/* 004496EC 0320F809 */  jalr  $t9
/* 004496F0 02401025 */   move  $v0, $s2
/* 004496F4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004496F8 2404002E */  li    $a0, 46
/* 004496FC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449700 24050014 */  li    $a1, 20
/* 00449704 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449708 24060003 */  li    $a2, 3
/* 0044970C 0320F809 */  jalr  $t9
/* 00449710 02401025 */   move  $v0, $s2
/* 00449714 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449718 2404002F */  li    $a0, 47
/* 0044971C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449720 24050016 */  li    $a1, 22
/* 00449724 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449728 24060003 */  li    $a2, 3
/* 0044972C 0320F809 */  jalr  $t9
/* 00449730 02401025 */   move  $v0, $s2
/* 00449734 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449738 24040030 */  li    $a0, 48
/* 0044973C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449740 24050017 */  li    $a1, 23
/* 00449744 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449748 24060003 */  li    $a2, 3
/* 0044974C 0320F809 */  jalr  $t9
/* 00449750 02401025 */   move  $v0, $s2
/* 00449754 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449758 24040031 */  li    $a0, 49
/* 0044975C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449760 2405001C */  li    $a1, 28
/* 00449764 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449768 24060003 */  li    $a2, 3
/* 0044976C 0320F809 */  jalr  $t9
/* 00449770 02401025 */   move  $v0, $s2
/* 00449774 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449778 24040032 */  li    $a0, 50
/* 0044977C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449780 2405001D */  li    $a1, 29
/* 00449784 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449788 24060003 */  li    $a2, 3
/* 0044978C 0320F809 */  jalr  $t9
/* 00449790 02401025 */   move  $v0, $s2
/* 00449794 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449798 24040033 */  li    $a0, 51
/* 0044979C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004497A0 2405001E */  li    $a1, 30
/* 004497A4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004497A8 24060003 */  li    $a2, 3
/* 004497AC 0320F809 */  jalr  $t9
/* 004497B0 02401025 */   move  $v0, $s2
/* 004497B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004497B8 24040034 */  li    $a0, 52
/* 004497BC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004497C0 2405001F */  li    $a1, 31
/* 004497C4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004497C8 24060003 */  li    $a2, 3
/* 004497CC 0320F809 */  jalr  $t9
/* 004497D0 02401025 */   move  $v0, $s2
/* 004497D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004497D8 3C11CC00 */  lui   $s1, 0xcc00
/* 004497DC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004497E0 02202825 */  move  $a1, $s1
/* 004497E4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004497E8 24040085 */  li    $a0, 133
/* 004497EC 24060006 */  li    $a2, 6
/* 004497F0 0320F809 */  jalr  $t9
/* 004497F4 02401025 */   move  $v0, $s2
/* 004497F8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004497FC 3C13EC00 */  lui   $s3, 0xec00
/* 00449800 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449804 02602825 */  move  $a1, $s3
/* 00449808 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044980C 24040086 */  li    $a0, 134
/* 00449810 24060006 */  li    $a2, 6
/* 00449814 0320F809 */  jalr  $t9
/* 00449818 02401025 */   move  $v0, $s2
/* 0044981C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449820 24040099 */  li    $a0, 153
/* 00449824 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449828 3C0544A0 */  lui   $a1, 0x44a0
/* 0044982C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449830 24060005 */  li    $a2, 5
/* 00449834 0320F809 */  jalr  $t9
/* 00449838 02401025 */   move  $v0, $s2
/* 0044983C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449840 2404009A */  li    $a0, 154
/* 00449844 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449848 3C054420 */  lui   $a1, 0x4420
/* 0044984C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449850 24060005 */  li    $a2, 5
/* 00449854 0320F809 */  jalr  $t9
/* 00449858 02401025 */   move  $v0, $s2
/* 0044985C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449860 2404009B */  li    $a0, 155
/* 00449864 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449868 3C0540A0 */  lui   $a1, 0x40a0
/* 0044986C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449870 24060005 */  li    $a2, 5
/* 00449874 0320F809 */  jalr  $t9
/* 00449878 02401025 */   move  $v0, $s2
/* 0044987C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449880 2404009C */  li    $a0, 156
/* 00449884 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449888 3C054020 */  lui   $a1, 0x4020
/* 0044988C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449890 24060005 */  li    $a2, 5
/* 00449894 0320F809 */  jalr  $t9
/* 00449898 02401025 */   move  $v0, $s2
/* 0044989C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004498A0 2404009D */  li    $a0, 157
/* 004498A4 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004498A8 3C0548A0 */  lui   $a1, 0x48a0
/* 004498AC 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004498B0 24060005 */  li    $a2, 5
/* 004498B4 0320F809 */  jalr  $t9
/* 004498B8 02401025 */   move  $v0, $s2
/* 004498BC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004498C0 2404009E */  li    $a0, 158
/* 004498C4 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004498C8 3C054820 */  lui   $a1, 0x4820
/* 004498CC 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004498D0 24060005 */  li    $a2, 5
/* 004498D4 0320F809 */  jalr  $t9
/* 004498D8 02401025 */   move  $v0, $s2
/* 004498DC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004498E0 24040078 */  li    $a0, 120
/* 004498E4 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004498E8 3C059C00 */  lui   $a1, 0x9c00
/* 004498EC 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004498F0 24060006 */  li    $a2, 6
/* 004498F4 0320F809 */  jalr  $t9
/* 004498F8 02401025 */   move  $v0, $s2
/* 004498FC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449900 2404009F */  li    $a0, 159
/* 00449904 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449908 3C05BC00 */  lui   $a1, 0xbc00
/* 0044990C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449910 2406000A */  li    $a2, 10
/* 00449914 0320F809 */  jalr  $t9
/* 00449918 02401025 */   move  $v0, $s2
/* 0044991C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449920 24040087 */  li    $a0, 135
/* 00449924 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449928 24050001 */  li    $a1, 1
/* 0044992C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449930 24060005 */  li    $a2, 5
/* 00449934 0320F809 */  jalr  $t9
/* 00449938 02401025 */   move  $v0, $s2
/* 0044993C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449940 3C050001 */  lui   $a1, 1
/* 00449944 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449948 34A50001 */  ori   $a1, $a1, 1
/* 0044994C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449950 24040088 */  li    $a0, 136
/* 00449954 24060005 */  li    $a2, 5
/* 00449958 0320F809 */  jalr  $t9
/* 0044995C 02401025 */   move  $v0, $s2
/* 00449960 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449964 2404008A */  li    $a0, 138
/* 00449968 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044996C 2405000A */  li    $a1, 10
/* 00449970 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449974 24060005 */  li    $a2, 5
/* 00449978 0320F809 */  jalr  $t9
/* 0044997C 02401025 */   move  $v0, $s2
/* 00449980 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449984 24040089 */  li    $a0, 137
/* 00449988 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044998C 2405000B */  li    $a1, 11
/* 00449990 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449994 24060005 */  li    $a2, 5
/* 00449998 0320F809 */  jalr  $t9
/* 0044999C 02401025 */   move  $v0, $s2
/* 004499A0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004499A4 3C054C00 */  lui   $a1, 0x4c00
/* 004499A8 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004499AC 34A50020 */  ori   $a1, $a1, 0x20
/* 004499B0 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004499B4 2404011C */  li    $a0, 284
/* 004499B8 24060008 */  li    $a2, 8
/* 004499BC 0320F809 */  jalr  $t9
/* 004499C0 02401025 */   move  $v0, $s2
/* 004499C4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004499C8 3C054C00 */  lui   $a1, 0x4c00
/* 004499CC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004499D0 34A50021 */  ori   $a1, $a1, 0x21
/* 004499D4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004499D8 2404011D */  li    $a0, 285
/* 004499DC 24060008 */  li    $a2, 8
/* 004499E0 0320F809 */  jalr  $t9
/* 004499E4 02401025 */   move  $v0, $s2
/* 004499E8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004499EC 3C054C00 */  lui   $a1, 0x4c00
/* 004499F0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 004499F4 34A50022 */  ori   $a1, $a1, 0x22
/* 004499F8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 004499FC 2404011E */  li    $a0, 286
/* 00449A00 24060008 */  li    $a2, 8
/* 00449A04 0320F809 */  jalr  $t9
/* 00449A08 02401025 */   move  $v0, $s2
/* 00449A0C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449A10 3C054C00 */  lui   $a1, 0x4c00
/* 00449A14 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449A18 34A50028 */  ori   $a1, $a1, 0x28
/* 00449A1C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449A20 2404011F */  li    $a0, 287
/* 00449A24 24060008 */  li    $a2, 8
/* 00449A28 0320F809 */  jalr  $t9
/* 00449A2C 02401025 */   move  $v0, $s2
/* 00449A30 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449A34 3C054C00 */  lui   $a1, 0x4c00
/* 00449A38 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449A3C 34A50029 */  ori   $a1, $a1, 0x29
/* 00449A40 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449A44 24040120 */  li    $a0, 288
/* 00449A48 24060008 */  li    $a2, 8
/* 00449A4C 0320F809 */  jalr  $t9
/* 00449A50 02401025 */   move  $v0, $s2
/* 00449A54 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449A58 3C054C00 */  lui   $a1, 0x4c00
/* 00449A5C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449A60 34A5002A */  ori   $a1, $a1, 0x2a
/* 00449A64 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449A68 24040121 */  li    $a0, 289
/* 00449A6C 24060008 */  li    $a2, 8
/* 00449A70 0320F809 */  jalr  $t9
/* 00449A74 02401025 */   move  $v0, $s2
/* 00449A78 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449A7C 3C054C00 */  lui   $a1, 0x4c00
/* 00449A80 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449A84 34A50030 */  ori   $a1, $a1, 0x30
/* 00449A88 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449A8C 24040122 */  li    $a0, 290
/* 00449A90 24060008 */  li    $a2, 8
/* 00449A94 0320F809 */  jalr  $t9
/* 00449A98 02401025 */   move  $v0, $s2
/* 00449A9C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449AA0 3C054C00 */  lui   $a1, 0x4c00
/* 00449AA4 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449AA8 34A50031 */  ori   $a1, $a1, 0x31
/* 00449AAC 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449AB0 24040123 */  li    $a0, 291
/* 00449AB4 24060008 */  li    $a2, 8
/* 00449AB8 0320F809 */  jalr  $t9
/* 00449ABC 02401025 */   move  $v0, $s2
/* 00449AC0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449AC4 3C054C00 */  lui   $a1, 0x4c00
/* 00449AC8 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449ACC 34A50032 */  ori   $a1, $a1, 0x32
/* 00449AD0 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449AD4 24040124 */  li    $a0, 292
/* 00449AD8 24060008 */  li    $a2, 8
/* 00449ADC 0320F809 */  jalr  $t9
/* 00449AE0 02401025 */   move  $v0, $s2
/* 00449AE4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449AE8 3C054C00 */  lui   $a1, 0x4c00
/* 00449AEC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449AF0 34A50038 */  ori   $a1, $a1, 0x38
/* 00449AF4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449AF8 24040125 */  li    $a0, 293
/* 00449AFC 24060008 */  li    $a2, 8
/* 00449B00 0320F809 */  jalr  $t9
/* 00449B04 02401025 */   move  $v0, $s2
/* 00449B08 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449B0C 3C054C00 */  lui   $a1, 0x4c00
/* 00449B10 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449B14 34A50039 */  ori   $a1, $a1, 0x39
/* 00449B18 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449B1C 24040126 */  li    $a0, 294
/* 00449B20 24060008 */  li    $a2, 8
/* 00449B24 0320F809 */  jalr  $t9
/* 00449B28 02401025 */   move  $v0, $s2
/* 00449B2C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449B30 3C054C00 */  lui   $a1, 0x4c00
/* 00449B34 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449B38 34A5003A */  ori   $a1, $a1, 0x3a
/* 00449B3C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449B40 24040127 */  li    $a0, 295
/* 00449B44 24060008 */  li    $a2, 8
/* 00449B48 0320F809 */  jalr  $t9
/* 00449B4C 02401025 */   move  $v0, $s2
/* 00449B50 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449B54 3C054600 */  lui   $a1, 0x4600
/* 00449B58 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449B5C 34A50015 */  ori   $a1, $a1, 0x15
/* 00449B60 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449B64 24040128 */  li    $a0, 296
/* 00449B68 24060008 */  li    $a2, 8
/* 00449B6C 0320F809 */  jalr  $t9
/* 00449B70 02401025 */   move  $v0, $s2
/* 00449B74 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449B78 3C054620 */  lui   $a1, 0x4620
/* 00449B7C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449B80 34A50015 */  ori   $a1, $a1, 0x15
/* 00449B84 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449B88 24040129 */  li    $a0, 297
/* 00449B8C 24060008 */  li    $a2, 8
/* 00449B90 0320F809 */  jalr  $t9
/* 00449B94 02401025 */   move  $v0, $s2
/* 00449B98 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449B9C 3C054600 */  lui   $a1, 0x4600
/* 00449BA0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449BA4 34A50016 */  ori   $a1, $a1, 0x16
/* 00449BA8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449BAC 2404012A */  li    $a0, 298
/* 00449BB0 24060008 */  li    $a2, 8
/* 00449BB4 0320F809 */  jalr  $t9
/* 00449BB8 02401025 */   move  $v0, $s2
/* 00449BBC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449BC0 3C054620 */  lui   $a1, 0x4620
/* 00449BC4 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449BC8 34A50016 */  ori   $a1, $a1, 0x16
/* 00449BCC 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449BD0 2404012B */  li    $a0, 299
/* 00449BD4 24060008 */  li    $a2, 8
/* 00449BD8 0320F809 */  jalr  $t9
/* 00449BDC 02401025 */   move  $v0, $s2
/* 00449BE0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449BE4 3C054600 */  lui   $a1, 0x4600
/* 00449BE8 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449BEC 34A50011 */  ori   $a1, $a1, 0x11
/* 00449BF0 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449BF4 2404012C */  li    $a0, 300
/* 00449BF8 24060008 */  li    $a2, 8
/* 00449BFC 0320F809 */  jalr  $t9
/* 00449C00 02401025 */   move  $v0, $s2
/* 00449C04 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449C08 3C054620 */  lui   $a1, 0x4620
/* 00449C0C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449C10 34A50011 */  ori   $a1, $a1, 0x11
/* 00449C14 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449C18 2404012D */  li    $a0, 301
/* 00449C1C 24060008 */  li    $a2, 8
/* 00449C20 0320F809 */  jalr  $t9
/* 00449C24 02401025 */   move  $v0, $s2
/* 00449C28 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449C2C 3C054601 */  lui   $a1, 0x4601
/* 00449C30 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449C34 34A50011 */  ori   $a1, $a1, 0x11
/* 00449C38 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449C3C 2404012E */  li    $a0, 302
/* 00449C40 24060008 */  li    $a2, 8
/* 00449C44 0320F809 */  jalr  $t9
/* 00449C48 02401025 */   move  $v0, $s2
/* 00449C4C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449C50 3C054621 */  lui   $a1, 0x4621
/* 00449C54 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449C58 34A50011 */  ori   $a1, $a1, 0x11
/* 00449C5C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449C60 2404012F */  li    $a0, 303
/* 00449C64 24060008 */  li    $a2, 8
/* 00449C68 0320F809 */  jalr  $t9
/* 00449C6C 02401025 */   move  $v0, $s2
/* 00449C70 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449C74 3C054600 */  lui   $a1, 0x4600
/* 00449C78 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449C7C 34A50012 */  ori   $a1, $a1, 0x12
/* 00449C80 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449C84 24040132 */  li    $a0, 306
/* 00449C88 24060008 */  li    $a2, 8
/* 00449C8C 0320F809 */  jalr  $t9
/* 00449C90 02401025 */   move  $v0, $s2
/* 00449C94 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449C98 3C054620 */  lui   $a1, 0x4620
/* 00449C9C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449CA0 34A50012 */  ori   $a1, $a1, 0x12
/* 00449CA4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449CA8 24040133 */  li    $a0, 307
/* 00449CAC 24060008 */  li    $a2, 8
/* 00449CB0 0320F809 */  jalr  $t9
/* 00449CB4 02401025 */   move  $v0, $s2
/* 00449CB8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449CBC 3C054600 */  lui   $a1, 0x4600
/* 00449CC0 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449CC4 34A50013 */  ori   $a1, $a1, 0x13
/* 00449CC8 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449CCC 24040130 */  li    $a0, 304
/* 00449CD0 24060008 */  li    $a2, 8
/* 00449CD4 0320F809 */  jalr  $t9
/* 00449CD8 02401025 */   move  $v0, $s2
/* 00449CDC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449CE0 3C054620 */  lui   $a1, 0x4620
/* 00449CE4 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449CE8 34A50013 */  ori   $a1, $a1, 0x13
/* 00449CEC 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449CF0 24040131 */  li    $a0, 305
/* 00449CF4 24060008 */  li    $a2, 8
/* 00449CF8 0320F809 */  jalr  $t9
/* 00449CFC 02401025 */   move  $v0, $s2
/* 00449D00 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449D04 3C104C00 */  lui   $s0, 0x4c00
/* 00449D08 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449D0C 02002825 */  move  $a1, $s0
/* 00449D10 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449D14 24040134 */  li    $a0, 308
/* 00449D18 24060005 */  li    $a2, 5
/* 00449D1C 0320F809 */  jalr  $t9
/* 00449D20 02401025 */   move  $v0, $s2
/* 00449D24 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449D28 3C054C00 */  lui   $a1, 0x4c00
/* 00449D2C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449D30 34A50001 */  ori   $a1, $a1, 1
/* 00449D34 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449D38 24040135 */  li    $a0, 309
/* 00449D3C 24060005 */  li    $a2, 5
/* 00449D40 0320F809 */  jalr  $t9
/* 00449D44 02401025 */   move  $v0, $s2
/* 00449D48 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449D4C 3C054C00 */  lui   $a1, 0x4c00
/* 00449D50 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449D54 34A50008 */  ori   $a1, $a1, 8
/* 00449D58 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449D5C 24040136 */  li    $a0, 310
/* 00449D60 24060005 */  li    $a2, 5
/* 00449D64 0320F809 */  jalr  $t9
/* 00449D68 02401025 */   move  $v0, $s2
/* 00449D6C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449D70 3C054C00 */  lui   $a1, 0x4c00
/* 00449D74 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449D78 34A50009 */  ori   $a1, $a1, 9
/* 00449D7C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449D80 24040137 */  li    $a0, 311
/* 00449D84 24060005 */  li    $a2, 5
/* 00449D88 0320F809 */  jalr  $t9
/* 00449D8C 02401025 */   move  $v0, $s2
/* 00449D90 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449D94 3C054C00 */  lui   $a1, 0x4c00
/* 00449D98 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449D9C 34A5000F */  ori   $a1, $a1, 0xf
/* 00449DA0 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449DA4 24040138 */  li    $a0, 312
/* 00449DA8 24060005 */  li    $a2, 5
/* 00449DAC 0320F809 */  jalr  $t9
/* 00449DB0 02401025 */   move  $v0, $s2
/* 00449DB4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449DB8 2404013C */  li    $a0, 316
/* 00449DBC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449DC0 02202825 */  move  $a1, $s1
/* 00449DC4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449DC8 24060006 */  li    $a2, 6
/* 00449DCC 0320F809 */  jalr  $t9
/* 00449DD0 02401025 */   move  $v0, $s2
/* 00449DD4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449DD8 3C054300 */  lui   $a1, 0x4300
/* 00449DDC 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449DE0 34A50009 */  ori   $a1, $a1, 9
/* 00449DE4 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449DE8 24040139 */  li    $a0, 313
/* 00449DEC 24060005 */  li    $a2, 5
/* 00449DF0 0320F809 */  jalr  $t9
/* 00449DF4 02401025 */   move  $v0, $s2
/* 00449DF8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449DFC 3C054300 */  lui   $a1, 0x4300
/* 00449E00 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449E04 34A5000A */  ori   $a1, $a1, 0xa
/* 00449E08 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449E0C 2404013A */  li    $a0, 314
/* 00449E10 24060005 */  li    $a2, 5
/* 00449E14 0320F809 */  jalr  $t9
/* 00449E18 02401025 */   move  $v0, $s2
/* 00449E1C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449E20 3C054300 */  lui   $a1, 0x4300
/* 00449E24 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449E28 34A50002 */  ori   $a1, $a1, 2
/* 00449E2C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449E30 2404013B */  li    $a0, 315
/* 00449E34 24060005 */  li    $a2, 5
/* 00449E38 0320F809 */  jalr  $t9
/* 00449E3C 02401025 */   move  $v0, $s2
/* 00449E40 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449E44 2404019D */  li    $a0, 413
/* 00449E48 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00449E4C 24050008 */  li    $a1, 8
/* 00449E50 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00449E54 2406013F */  li    $a2, 319
/* 00449E58 0320F809 */  jalr  $t9
/* 00449E5C 02401025 */   move  $v0, $s2
/* 00449E60 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449E64 2404019E */  li    $a0, 414
/* 00449E68 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00449E6C 24050008 */  li    $a1, 8
/* 00449E70 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00449E74 24060140 */  li    $a2, 320
/* 00449E78 0320F809 */  jalr  $t9
/* 00449E7C 02401025 */   move  $v0, $s2
/* 00449E80 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449E84 2404019F */  li    $a0, 415
/* 00449E88 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00449E8C 24050009 */  li    $a1, 9
/* 00449E90 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00449E94 24060141 */  li    $a2, 321
/* 00449E98 0320F809 */  jalr  $t9
/* 00449E9C 02401025 */   move  $v0, $s2
/* 00449EA0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449EA4 240401A0 */  li    $a0, 416
/* 00449EA8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00449EAC 24050001 */  li    $a1, 1
/* 00449EB0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00449EB4 24060142 */  li    $a2, 322
/* 00449EB8 0320F809 */  jalr  $t9
/* 00449EBC 02401025 */   move  $v0, $s2
/* 00449EC0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449EC4 240401A1 */  li    $a0, 417
/* 00449EC8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00449ECC 24050001 */  li    $a1, 1
/* 00449ED0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00449ED4 24060143 */  li    $a2, 323
/* 00449ED8 0320F809 */  jalr  $t9
/* 00449EDC 02401025 */   move  $v0, $s2
/* 00449EE0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449EE4 240401A2 */  li    $a0, 418
/* 00449EE8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00449EEC 24050004 */  li    $a1, 4
/* 00449EF0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00449EF4 24060144 */  li    $a2, 324
/* 00449EF8 0320F809 */  jalr  $t9
/* 00449EFC 02401025 */   move  $v0, $s2
/* 00449F00 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449F04 240401A3 */  li    $a0, 419
/* 00449F08 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00449F0C 24050004 */  li    $a1, 4
/* 00449F10 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00449F14 24060145 */  li    $a2, 325
/* 00449F18 0320F809 */  jalr  $t9
/* 00449F1C 02401025 */   move  $v0, $s2
/* 00449F20 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449F24 240401A4 */  li    $a0, 420
/* 00449F28 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00449F2C 24050004 */  li    $a1, 4
/* 00449F30 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00449F34 24060146 */  li    $a2, 326
/* 00449F38 0320F809 */  jalr  $t9
/* 00449F3C 02401025 */   move  $v0, $s2
/* 00449F40 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449F44 240401A5 */  li    $a0, 421
/* 00449F48 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 00449F4C 24050004 */  li    $a1, 4
/* 00449F50 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 00449F54 24060147 */  li    $a2, 327
/* 00449F58 0320F809 */  jalr  $t9
/* 00449F5C 02401025 */   move  $v0, $s2
/* 00449F60 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449F64 2404013F */  li    $a0, 319
/* 00449F68 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449F6C 3C054D00 */  lui   $a1, 0x4d00
/* 00449F70 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449F74 24060002 */  li    $a2, 2
/* 00449F78 0320F809 */  jalr  $t9
/* 00449F7C 02401025 */   move  $v0, $s2
/* 00449F80 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449F84 24040140 */  li    $a0, 320
/* 00449F88 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449F8C 3C054D01 */  lui   $a1, 0x4d01
/* 00449F90 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449F94 24060002 */  li    $a2, 2
/* 00449F98 0320F809 */  jalr  $t9
/* 00449F9C 02401025 */   move  $v0, $s2
/* 00449FA0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449FA4 24040141 */  li    $a0, 321
/* 00449FA8 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449FAC 3C054E00 */  lui   $a1, 0x4e00
/* 00449FB0 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449FB4 24060005 */  li    $a2, 5
/* 00449FB8 0320F809 */  jalr  $t9
/* 00449FBC 02401025 */   move  $v0, $s2
/* 00449FC0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449FC4 24040142 */  li    $a0, 322
/* 00449FC8 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449FCC 02202825 */  move  $a1, $s1
/* 00449FD0 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449FD4 24060006 */  li    $a2, 6
/* 00449FD8 0320F809 */  jalr  $t9
/* 00449FDC 02401025 */   move  $v0, $s2
/* 00449FE0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00449FE4 24040143 */  li    $a0, 323
/* 00449FE8 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 00449FEC 02602825 */  move  $a1, $s3
/* 00449FF0 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 00449FF4 24060006 */  li    $a2, 6
/* 00449FF8 0320F809 */  jalr  $t9
/* 00449FFC 02401025 */   move  $v0, $s2
/* 0044A000 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044A004 24040144 */  li    $a0, 324
/* 0044A008 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044A00C 02002825 */  move  $a1, $s0
/* 0044A010 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044A014 24060005 */  li    $a2, 5
/* 0044A018 0320F809 */  jalr  $t9
/* 0044A01C 02401025 */   move  $v0, $s2
/* 0044A020 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044A024 24040145 */  li    $a0, 325
/* 0044A028 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044A02C 3C054C80 */  lui   $a1, 0x4c80
/* 0044A030 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044A034 24060005 */  li    $a2, 5
/* 0044A038 0320F809 */  jalr  $t9
/* 0044A03C 02401025 */   move  $v0, $s2
/* 0044A040 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044A044 24040146 */  li    $a0, 326
/* 0044A048 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044A04C 3C054C40 */  lui   $a1, 0x4c40
/* 0044A050 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044A054 24060005 */  li    $a2, 5
/* 0044A058 0320F809 */  jalr  $t9
/* 0044A05C 02401025 */   move  $v0, $s2
/* 0044A060 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044A064 24040147 */  li    $a0, 327
/* 0044A068 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044A06C 3C054CC0 */  lui   $a1, 0x4cc0
/* 0044A070 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044A074 24060005 */  li    $a2, 5
/* 0044A078 0320F809 */  jalr  $t9
/* 0044A07C 02401025 */   move  $v0, $s2
/* 0044A080 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044A084 240401A9 */  li    $a0, 425
/* 0044A088 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044A08C 24050004 */  li    $a1, 4
/* 0044A090 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 0044A094 24060148 */  li    $a2, 328
/* 0044A098 0320F809 */  jalr  $t9
/* 0044A09C 02401025 */   move  $v0, $s2
/* 0044A0A0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044A0A4 240401AA */  li    $a0, 426
/* 0044A0A8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044A0AC 24050004 */  li    $a1, 4
/* 0044A0B0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 0044A0B4 24060149 */  li    $a2, 329
/* 0044A0B8 0320F809 */  jalr  $t9
/* 0044A0BC 02401025 */   move  $v0, $s2
/* 0044A0C0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044A0C4 240401AB */  li    $a0, 427
/* 0044A0C8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044A0CC 24050004 */  li    $a1, 4
/* 0044A0D0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 0044A0D4 2406014A */  li    $a2, 330
/* 0044A0D8 0320F809 */  jalr  $t9
/* 0044A0DC 02401025 */   move  $v0, $s2
/* 0044A0E0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044A0E4 240401AC */  li    $a0, 428
/* 0044A0E8 8F998024 */  lw    $t9, %got(func_00442224)($gp)
/* 0044A0EC 24050004 */  li    $a1, 4
/* 0044A0F0 27392224 */  addiu $t9, %lo(func_00442224) # addiu $t9, $t9, 0x2224
/* 0044A0F4 2406014B */  li    $a2, 331
/* 0044A0F8 0320F809 */  jalr  $t9
/* 0044A0FC 02401025 */   move  $v0, $s2
/* 0044A100 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044A104 3C054000 */  lui   $a1, 0x4000
/* 0044A108 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044A10C 34A5C801 */  ori   $a1, $a1, 0xc801
/* 0044A110 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044A114 24040148 */  li    $a0, 328
/* 0044A118 24060005 */  li    $a2, 5
/* 0044A11C 0320F809 */  jalr  $t9
/* 0044A120 02401025 */   move  $v0, $s2
/* 0044A124 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044A128 3C054080 */  lui   $a1, 0x4080
/* 0044A12C 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044A130 34A5C801 */  ori   $a1, $a1, 0xc801
/* 0044A134 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044A138 24040149 */  li    $a0, 329
/* 0044A13C 24060005 */  li    $a2, 5
/* 0044A140 0320F809 */  jalr  $t9
/* 0044A144 02401025 */   move  $v0, $s2
/* 0044A148 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044A14C 3C054000 */  lui   $a1, 0x4000
/* 0044A150 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044A154 34A5C800 */  ori   $a1, $a1, 0xc800
/* 0044A158 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044A15C 2404014A */  li    $a0, 330
/* 0044A160 24060005 */  li    $a2, 5
/* 0044A164 0320F809 */  jalr  $t9
/* 0044A168 02401025 */   move  $v0, $s2
/* 0044A16C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044A170 3C054080 */  lui   $a1, 0x4080
/* 0044A174 8F998024 */  lw    $t9, %got(func_004421F0)($gp)
/* 0044A178 34A5C800 */  ori   $a1, $a1, 0xc800
/* 0044A17C 273921F0 */  addiu $t9, %lo(func_004421F0) # addiu $t9, $t9, 0x21f0
/* 0044A180 2404014B */  li    $a0, 331
/* 0044A184 24060005 */  li    $a2, 5
/* 0044A188 0320F809 */  jalr  $t9
/* 0044A18C 02401025 */   move  $v0, $s2
/* 0044A190 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044A194 00001825 */  move  $v1, $zero
/* 0044A198 8F818D24 */  lw     $at, %got(regnum)($gp)
/* 0044A19C 8F828D24 */  lw     $v0, %got(regnum)($gp)
/* 0044A1A0 24040020 */  li    $a0, 32
/* 0044A1A4 AC200120 */  sw    $zero, 0x120($at)
.L0044A1A8:
/* 0044A1A8 AC430000 */  sw    $v1, ($v0)
/* 0044A1AC 24630001 */  addiu $v1, $v1, 1
/* 0044A1B0 1464FFFD */  bne   $v1, $a0, .L0044A1A8
/* 0044A1B4 24420004 */   addiu $v0, $v0, 4
/* 0044A1B8 8F828D24 */  lw     $v0, %got(regnum)($gp)
/* 0044A1BC 24030020 */  li    $v1, 32
/* 0044A1C0 24040040 */  li    $a0, 64
/* 0044A1C4 24420080 */  addiu $v0, $v0, 0x80
.L0044A1C8:
/* 0044A1C8 2478FFE0 */  addiu $t8, $v1, -0x20
/* 0044A1CC 246EFFE1 */  addiu $t6, $v1, -0x1f
/* 0044A1D0 246AFFE2 */  addiu $t2, $v1, -0x1e
/* 0044A1D4 246CFFE3 */  addiu $t4, $v1, -0x1d
/* 0044A1D8 24630004 */  addiu $v1, $v1, 4
/* 0044A1DC AC4C000C */  sw    $t4, 0xc($v0)
/* 0044A1E0 AC4A0008 */  sw    $t2, 8($v0)
/* 0044A1E4 AC4E0004 */  sw    $t6, 4($v0)
/* 0044A1E8 AC580000 */  sw    $t8, ($v0)
/* 0044A1EC 1464FFF6 */  bne   $v1, $a0, .L0044A1C8
/* 0044A1F0 24420010 */   addiu $v0, $v0, 0x10
/* 0044A1F4 8F818BF8 */  lw     $at, %got(gpreg)($gp)
/* 0044A1F8 240D001C */  li    $t5, 28
/* 0044A1FC A02D0000 */  sb    $t5, ($at)
/* 0044A200 8F818D5C */  lw     $at, %got(knownregs)($gp)
/* 0044A204 3C0B8000 */  lui   $t3, 0x8000
/* 0044A208 356B000C */  ori   $t3, $t3, 0xc
/* 0044A20C AC2B0000 */  sw    $t3, ($at)
/* 0044A210 8F818D5C */  lw     $at, %got(knownregs)($gp)
/* 0044A214 8F998024 */  lw    $t9, %got(func_0044225C)($gp)
/* 0044A218 AC200004 */  sw    $zero, 4($at)
/* 0044A21C 8F818D5C */  lw     $at, %got(knownregs)($gp)
/* 0044A220 2739225C */  addiu $t9, %lo(func_0044225C) # addiu $t9, $t9, 0x225c
/* 0044A224 AC200008 */  sw    $zero, 8($at)
/* 0044A228 8F818BB0 */  lw     $at, %got(bbindex)($gp)
/* 0044A22C 02401025 */  move  $v0, $s2
/* 0044A230 AC200000 */  sw    $zero, ($at)
/* 0044A234 8F818B60 */  lw     $at, %got(shftaddr)($gp)
/* 0044A238 0320F809 */  jalr  $t9
/* 0044A23C AC200000 */   sw    $zero, ($at)
/* 0044A240 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044A244 1440002A */  bnez  $v0, .L0044A2F0
/* 0044A248 00000000 */   nop   
/* 0044A24C 8F8F8070 */  lw    $t7, %got(RO_10018CC0)($gp)
/* 0044A250 03A07025 */  move  $t6, $sp
/* 0044A254 25EF8CC0 */  addiu $t7, %lo(RO_10018CC0) # addiu $t7, $t7, -0x7340
/* 0044A258 25F80048 */  addiu $t8, $t7, 0x48
.L0044A25C:
/* 0044A25C 89E10000 */  lwl   $at, ($t7)
/* 0044A260 99E10003 */  lwr   $at, 3($t7)
/* 0044A264 25EF000C */  addiu $t7, $t7, 0xc
/* 0044A268 A9C10000 */  swl   $at, ($t6)
/* 0044A26C B9C10003 */  swr   $at, 3($t6)
/* 0044A270 89E1FFF8 */  lwl   $at, -8($t7)
/* 0044A274 99E1FFFB */  lwr   $at, -5($t7)
/* 0044A278 25CE000C */  addiu $t6, $t6, 0xc
/* 0044A27C A9C1FFF8 */  swl   $at, -8($t6)
/* 0044A280 B9C1FFFB */  swr   $at, -5($t6)
/* 0044A284 89E1FFFC */  lwl   $at, -4($t7)
/* 0044A288 99E1FFFF */  lwr   $at, -1($t7)
/* 0044A28C 00000000 */  nop   
/* 0044A290 A9C1FFFC */  swl   $at, -4($t6)
/* 0044A294 15F8FFF1 */  bne   $t7, $t8, .L0044A25C
/* 0044A298 B9C1FFFF */   swr   $at, -1($t6)
/* 0044A29C 89E10000 */  lwl   $at, ($t7)
/* 0044A2A0 99E10003 */  lwr   $at, 3($t7)
/* 0044A2A4 8F8A8C68 */  lw     $t2, %got(emptystring)($gp)
/* 0044A2A8 A9C10000 */  swl   $at, ($t6)
/* 0044A2AC B9C10003 */  swr   $at, 3($t6)
/* 0044A2B0 89F80004 */  lwl   $t8, 4($t7)
/* 0044A2B4 99F80007 */  lwr   $t8, 7($t7)
/* 0044A2B8 00000000 */  nop   
/* 0044A2BC A9D80004 */  swl   $t8, 4($t6)
/* 0044A2C0 B9D80007 */  swr   $t8, 7($t6)
/* 0044A2C4 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0044A2C8 8D4A0000 */  lw    $t2, ($t2)
/* 0044A2CC 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044A2D0 8FA60008 */  lw    $a2, 8($sp)
/* 0044A2D4 8FA50004 */  lw    $a1, 4($sp)
/* 0044A2D8 8FA40000 */  lw    $a0, ($sp)
/* 0044A2DC AFA00054 */  sw    $zero, 0x54($sp)
/* 0044A2E0 0320F809 */  jalr  $t9
/* 0044A2E4 AFAA0050 */   sw    $t2, 0x50($sp)
/* 0044A2E8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044A2EC 00000000 */  nop   
.L0044A2F0:
/* 0044A2F0 8F9982C8 */  lw    $t9, %call16(init_j_def_live)($gp)
/* 0044A2F4 00000000 */  nop   
/* 0044A2F8 0320F809 */  jalr  $t9
/* 0044A2FC 00000000 */   nop   
/* 0044A300 8FBF007C */  lw    $ra, 0x7c($sp)
/* 0044A304 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044A308 8FB00060 */  lw    $s0, 0x60($sp)
/* 0044A30C 8FB10064 */  lw    $s1, 0x64($sp)
/* 0044A310 8FB20068 */  lw    $s2, 0x68($sp)
/* 0044A314 8FB3006C */  lw    $s3, 0x6c($sp)
/* 0044A318 8FB40070 */  lw    $s4, 0x70($sp)
/* 0044A31C 8FB50074 */  lw    $s5, 0x74($sp)
/* 0044A320 03E00008 */  jr    $ra
/* 0044A324 27BD00D0 */   addiu $sp, $sp, 0xd0

    .type func_0044A328, @function
func_0044A328:
    # 0044AF18 main
/* 0044A328 3C1C0FBE */  .cpload $t9
/* 0044A32C 279CFF38 */  
/* 0044A330 0399E021 */  
/* 0044A334 8F818BB0 */  lw     $at, %got(bbindex)($gp)
/* 0044A338 8F9982D4 */  lw    $t9, %call16(init_inst_heap)($gp)
/* 0044A33C 27BDFF48 */  addiu $sp, $sp, -0xb8
/* 0044A340 AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 0044A344 AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 0044A348 0320F809 */  jalr  $t9
/* 0044A34C AC200000 */   sw    $zero, ($at)
/* 0044A350 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0044A354 00000000 */  nop   
/* 0044A358 8F828BE8 */  lw     $v0, %got(currsegment)($gp)
/* 0044A35C 8F8E8D84 */  lw     $t6, %got(realsegments)($gp)
/* 0044A360 90420000 */  lbu   $v0, ($v0)
/* 0044A364 8DCE0000 */  lw    $t6, ($t6)
/* 0044A368 2C4F0020 */  sltiu $t7, $v0, 0x20
/* 0044A36C 000FC023 */  negu  $t8, $t7
/* 0044A370 8F818CE4 */  lw     $at, %got(lastsegment)($gp)
/* 0044A374 01D8C824 */  and   $t9, $t6, $t8
/* 0044A378 00594004 */  sllv  $t0, $t9, $v0
/* 0044A37C 05000045 */  bltz  $t0, .L0044A494
/* 0044A380 A0220000 */   sb    $v0, ($at)
/* 0044A384 8F898070 */  lw    $t1, %got(RO_1001903C)($gp)
/* 0044A388 03A06025 */  move  $t4, $sp
/* 0044A38C 2529903C */  addiu $t1, %lo(RO_1001903C) # addiu $t1, $t1, -0x6fc4
/* 0044A390 252B0048 */  addiu $t3, $t1, 0x48
.L0044A394:
/* 0044A394 89210000 */  lwl   $at, ($t1)
/* 0044A398 99210003 */  lwr   $at, 3($t1)
/* 0044A39C 2529000C */  addiu $t1, $t1, 0xc
/* 0044A3A0 A9810000 */  swl   $at, ($t4)
/* 0044A3A4 B9810003 */  swr   $at, 3($t4)
/* 0044A3A8 8921FFF8 */  lwl   $at, -8($t1)
/* 0044A3AC 9921FFFB */  lwr   $at, -5($t1)
/* 0044A3B0 258C000C */  addiu $t4, $t4, 0xc
/* 0044A3B4 A981FFF8 */  swl   $at, -8($t4)
/* 0044A3B8 B981FFFB */  swr   $at, -5($t4)
/* 0044A3BC 8921FFFC */  lwl   $at, -4($t1)
/* 0044A3C0 9921FFFF */  lwr   $at, -1($t1)
/* 0044A3C4 00000000 */  nop   
/* 0044A3C8 A981FFFC */  swl   $at, -4($t4)
/* 0044A3CC 152BFFF1 */  bne   $t1, $t3, .L0044A394
/* 0044A3D0 B981FFFF */   swr   $at, -1($t4)
/* 0044A3D4 89210000 */  lwl   $at, ($t1)
/* 0044A3D8 99210003 */  lwr   $at, 3($t1)
/* 0044A3DC 8F8D8070 */  lw    $t5, %got(RO_10018FEC)($gp)
/* 0044A3E0 A9810000 */  swl   $at, ($t4)
/* 0044A3E4 B9810003 */  swr   $at, 3($t4)
/* 0044A3E8 892B0004 */  lwl   $t3, 4($t1)
/* 0044A3EC 992B0007 */  lwr   $t3, 7($t1)
/* 0044A3F0 25AD8FEC */  addiu $t5, %lo(RO_10018FEC) # addiu $t5, $t5, -0x7014
/* 0044A3F4 A98B0004 */  swl   $t3, 4($t4)
/* 0044A3F8 25AE0048 */  addiu $t6, $t5, 0x48
/* 0044A3FC 03A0C025 */  move  $t8, $sp
/* 0044A400 B98B0007 */  swr   $t3, 7($t4)
.L0044A404:
/* 0044A404 89A10000 */  lwl   $at, ($t5)
/* 0044A408 99A10003 */  lwr   $at, 3($t5)
/* 0044A40C 25AD000C */  addiu $t5, $t5, 0xc
/* 0044A410 AB010050 */  swl   $at, 0x50($t8)
/* 0044A414 BB010053 */  swr   $at, 0x53($t8)
/* 0044A418 89A1FFF8 */  lwl   $at, -8($t5)
/* 0044A41C 99A1FFFB */  lwr   $at, -5($t5)
/* 0044A420 2718000C */  addiu $t8, $t8, 0xc
/* 0044A424 AB010048 */  swl   $at, 0x48($t8)
/* 0044A428 BB01004B */  swr   $at, 0x4b($t8)
/* 0044A42C 89A1FFFC */  lwl   $at, -4($t5)
/* 0044A430 99A1FFFF */  lwr   $at, -1($t5)
/* 0044A434 00000000 */  nop   
/* 0044A438 AB01004C */  swl   $at, 0x4c($t8)
/* 0044A43C 15AEFFF1 */  bne   $t5, $t6, .L0044A404
/* 0044A440 BB01004F */   swr   $at, 0x4f($t8)
/* 0044A444 89A10000 */  lwl   $at, ($t5)
/* 0044A448 99A10003 */  lwr   $at, 3($t5)
/* 0044A44C 24190644 */  li    $t9, 1604
/* 0044A450 AB010050 */  swl   $at, 0x50($t8)
/* 0044A454 BB010053 */  swr   $at, 0x53($t8)
/* 0044A458 89AE0004 */  lwl   $t6, 4($t5)
/* 0044A45C 99AE0007 */  lwr   $t6, 7($t5)
/* 0044A460 00000000 */  nop   
/* 0044A464 AB0E0054 */  swl   $t6, 0x54($t8)
/* 0044A468 BB0E0057 */  swr   $t6, 0x57($t8)
/* 0044A46C AFB900A0 */  sw    $t9, 0xa0($sp)
/* 0044A470 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0044A474 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044A478 8FA60008 */  lw    $a2, 8($sp)
/* 0044A47C 8FA50004 */  lw    $a1, 4($sp)
/* 0044A480 8FA40000 */  lw    $a0, ($sp)
/* 0044A484 0320F809 */  jalr  $t9
/* 0044A488 00000000 */   nop   
/* 0044A48C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0044A490 00000000 */  nop   
.L0044A494:
/* 0044A494 8F8A8B64 */  lw     $t2, %got(currsegmentindex)($gp)
/* 0044A498 8F888AEC */  lw     $t0, %got(seg_ic)($gp)
/* 0044A49C 8D4A0000 */  lw    $t2, ($t2)
/* 0044A4A0 8D080000 */  lw    $t0, ($t0)
/* 0044A4A4 000A5880 */  sll   $t3, $t2, 2
/* 0044A4A8 010B4821 */  addu  $t1, $t0, $t3
/* 0044A4AC 8D2C0000 */  lw    $t4, ($t1)
/* 0044A4B0 8F818CE0 */  lw     $at, %got(lastic)($gp)
/* 0044A4B4 8F848C24 */  lw     $a0, %got(pre_reorder_peepholes)($gp)
/* 0044A4B8 8F828C24 */  lw     $v0, %got(pre_reorder_peepholes)($gp)
/* 0044A4BC 8F838C24 */  lw     $v1, %got(pre_reorder_peepholes)($gp)
/* 0044A4C0 2405FFFF */  li    $a1, -1
/* 0044A4C4 AC2C0000 */  sw    $t4, ($at)
/* 0044A4C8 AC850000 */  sw    $a1, ($a0)
/* 0044A4CC AC850010 */  sw    $a1, 0x10($a0)
/* 0044A4D0 24420014 */  addiu $v0, $v0, 0x14
/* 0044A4D4 24630034 */  addiu $v1, $v1, 0x34
.L0044A4D8:
/* 0044A4D8 24420004 */  addiu $v0, $v0, 4
/* 0044A4DC A040FFFC */  sb    $zero, -4($v0)
/* 0044A4E0 A040FFFD */  sb    $zero, -3($v0)
/* 0044A4E4 A040FFFE */  sb    $zero, -2($v0)
/* 0044A4E8 1443FFFB */  bne   $v0, $v1, .L0044A4D8
/* 0044A4EC A040FFFF */   sb    $zero, -1($v0)
/* 0044A4F0 8F818C8C */  lw     $at, %got(endofbasicb)($gp)
/* 0044A4F4 8FBF00B4 */  lw    $ra, 0xb4($sp)
/* 0044A4F8 27BD00B8 */  addiu $sp, $sp, 0xb8
/* 0044A4FC 03E00008 */  jr    $ra
/* 0044A500 A0200000 */   sb    $zero, ($at)

    .type func_0044A504, @function
func_0044A504:
    # 0044A7DC func_0044A7DC
/* 0044A504 3C1C0FBE */  .cpload $t9
/* 0044A508 279CFD5C */  
/* 0044A50C 0399E021 */  
/* 0044A510 27BDFF78 */  addiu $sp, $sp, -0x88
/* 0044A514 AFBE0080 */  sw    $fp, 0x80($sp)
/* 0044A518 AFB0005C */  sw    $s0, 0x5c($sp)
/* 0044A51C 00A08025 */  move  $s0, $a1
/* 0044A520 0080F025 */  move  $fp, $a0
/* 0044A524 AFBF0084 */  sw    $ra, 0x84($sp)
/* 0044A528 AFBC007C */  sw    $gp, 0x7c($sp)
/* 0044A52C AFB70078 */  sw    $s7, 0x78($sp)
/* 0044A530 AFB60074 */  sw    $s6, 0x74($sp)
/* 0044A534 AFB50070 */  sw    $s5, 0x70($sp)
/* 0044A538 AFB4006C */  sw    $s4, 0x6c($sp)
/* 0044A53C AFB30068 */  sw    $s3, 0x68($sp)
/* 0044A540 AFB20064 */  sw    $s2, 0x64($sp)
/* 0044A544 10800099 */  beqz  $a0, .L0044A7AC
/* 0044A548 AFB10060 */   sw    $s1, 0x60($sp)
/* 0044A54C 908E0037 */  lbu   $t6, 0x37($a0)
/* 0044A550 00000000 */  nop   
/* 0044A554 15C00096 */  bnez  $t6, .L0044A7B0
/* 0044A558 8FBF0084 */   lw    $ra, 0x84($sp)
/* 0044A55C 8C83002C */  lw    $v1, 0x2c($a0)
/* 0044A560 00000000 */  nop   
/* 0044A564 10600092 */  beqz  $v1, .L0044A7B0
/* 0044A568 8FBF0084 */   lw    $ra, 0x84($sp)
/* 0044A56C 8C8F0060 */  lw    $t7, 0x60($a0)
/* 0044A570 8F818BB8 */  lw     $at, %got(currentline)($gp)
/* 0044A574 00000000 */  nop   
/* 0044A578 AC2F0000 */  sw    $t7, ($at)
/* 0044A57C 8C98005C */  lw    $t8, 0x5c($a0)
/* 0044A580 8F818BBC */  lw     $at, %got(currentfile)($gp)
/* 0044A584 00000000 */  nop   
/* 0044A588 AC380000 */  sw    $t8, ($at)
/* 0044A58C 8C84000C */  lw    $a0, 0xc($a0)
/* 0044A590 00000000 */  nop   
/* 0044A594 90820000 */  lbu   $v0, ($a0)
/* 0044A598 00000000 */  nop   
/* 0044A59C 1040004E */  beqz  $v0, .L0044A6D8
/* 0044A5A0 2C410030 */   sltiu $at, $v0, 0x30
/* 0044A5A4 14200016 */  bnez  $at, .L0044A600
/* 0044A5A8 2C41003A */   sltiu $at, $v0, 0x3a
/* 0044A5AC 10200014 */  beqz  $at, .L0044A600
/* 0044A5B0 00000000 */   nop   
/* 0044A5B4 90990000 */  lbu   $t9, ($a0)
/* 0044A5B8 24030024 */  li    $v1, 36
/* 0044A5BC 10790009 */  beq   $v1, $t9, .L0044A5E4
/* 0044A5C0 24020001 */   li    $v0, 1
.L0044A5C4:
/* 0044A5C4 24420001 */  addiu $v0, $v0, 1
/* 0044A5C8 28410401 */  slti  $at, $v0, 0x401
/* 0044A5CC 10200005 */  beqz  $at, .L0044A5E4
/* 0044A5D0 00824021 */   addu  $t0, $a0, $v0
/* 0044A5D4 9109FFFF */  lbu   $t1, -1($t0)
/* 0044A5D8 00000000 */  nop   
/* 0044A5DC 1469FFF9 */  bne   $v1, $t1, .L0044A5C4
/* 0044A5E0 00000000 */   nop   
.L0044A5E4:
/* 0044A5E4 00822821 */  addu  $a1, $a0, $v0
/* 0044A5E8 90AAFFFF */  lbu   $t2, -1($a1)
/* 0044A5EC 00000000 */  nop   
/* 0044A5F0 146A0045 */  bne   $v1, $t2, .L0044A708
/* 0044A5F4 00000000 */   nop   
/* 0044A5F8 10000043 */  b     .L0044A708
/* 0044A5FC A0A0FFFF */   sb    $zero, -1($a1)
.L0044A600:
/* 0044A600 8F828AFC */  lw     $v0, %got(fixup_count)($gp)
/* 0044A604 00608825 */  move  $s1, $v1
/* 0044A608 8C4B0000 */  lw    $t3, ($v0)
/* 0044A60C 24170011 */  li    $s7, 17
/* 0044A610 256CFFFF */  addiu $t4, $t3, -1
/* 0044A614 1060003C */  beqz  $v1, .L0044A708
/* 0044A618 AC4C0000 */   sw    $t4, ($v0)
/* 0044A61C 8F928AF4 */  lw     $s2, %got(rld_list)($gp)
/* 0044A620 8F958AF4 */  lw     $s5, %got(rld_list)($gp)
/* 0044A624 8F948AF4 */  lw     $s4, %got(rld_list)($gp)
/* 0044A628 8F938AF0 */  lw     $s3, %got(nextrld)($gp)
/* 0044A62C 8E520000 */  lw    $s2, ($s2)
/* 0044A630 24160018 */  li    $s6, 24
/* 0044A634 26B50004 */  addiu $s5, $s5, 4
.L0044A638:
/* 0044A638 8E700000 */  lw    $s0, ($s3)
/* 0044A63C 8E8D0004 */  lw    $t5, 4($s4)
/* 0044A640 02A02025 */  move  $a0, $s5
/* 0044A644 020D082A */  slt   $at, $s0, $t5
/* 0044A648 1420000A */  bnez  $at, .L0044A674
/* 0044A64C 02002825 */   move  $a1, $s0
/* 0044A650 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 0044A654 24060018 */  li    $a2, 24
/* 0044A658 02403825 */  move  $a3, $s2
/* 0044A65C 0320F809 */  jalr  $t9
/* 0044A660 AFA00010 */   sw    $zero, 0x10($sp)
/* 0044A664 8FBC007C */  lw    $gp, 0x7c($sp)
/* 0044A668 8E700000 */  lw    $s0, ($s3)
/* 0044A66C AE820000 */  sw    $v0, ($s4)
/* 0044A670 00409025 */  move  $s2, $v0
.L0044A674:
/* 0044A674 02160019 */  multu $s0, $s6
/* 0044A678 26180001 */  addiu $t8, $s0, 1
/* 0044A67C AE780000 */  sw    $t8, ($s3)
/* 0044A680 02202025 */  move  $a0, $s1
/* 0044A684 24050008 */  li    $a1, 8
/* 0044A688 00007012 */  mflo  $t6
/* 0044A68C 024E1021 */  addu  $v0, $s2, $t6
/* 0044A690 AC400000 */  sw    $zero, ($v0)
/* 0044A694 8E2F0000 */  lw    $t7, ($s1)
/* 0044A698 A0570010 */  sb    $s7, 0x10($v0)
/* 0044A69C AC5E0008 */  sw    $fp, 8($v0)
/* 0044A6A0 AC4F0004 */  sw    $t7, 4($v0)
/* 0044A6A4 8FD90020 */  lw    $t9, 0x20($fp)
/* 0044A6A8 00000000 */  nop   
/* 0044A6AC 27280001 */  addiu $t0, $t9, 1
/* 0044A6B0 8F998694 */  lw    $t9, %call16(dispose)($gp)
/* 0044A6B4 AFC80020 */  sw    $t0, 0x20($fp)
/* 0044A6B8 8E310004 */  lw    $s1, 4($s1)
/* 0044A6BC 0320F809 */  jalr  $t9
/* 0044A6C0 00000000 */   nop   
/* 0044A6C4 8FBC007C */  lw    $gp, 0x7c($sp)
/* 0044A6C8 1620FFDB */  bnez  $s1, .L0044A638
/* 0044A6CC 00000000 */   nop   
/* 0044A6D0 1000000D */  b     .L0044A708
/* 0044A6D4 00000000 */   nop   
.L0044A6D8:
/* 0044A6D8 8F998690 */  lw    $t9, %call16(new)($gp)
/* 0044A6DC 24040020 */  li    $a0, 32
/* 0044A6E0 0320F809 */  jalr  $t9
/* 0044A6E4 00002825 */   move  $a1, $zero
/* 0044A6E8 8FBC007C */  lw    $gp, 0x7c($sp)
/* 0044A6EC AFC2000C */  sw    $v0, 0xc($fp)
/* 0044A6F0 8F998334 */  lw    $t9, %call16(ltoa)($gp)
/* 0044A6F4 02002025 */  move  $a0, $s0
/* 0044A6F8 0320F809 */  jalr  $t9
/* 0044A6FC 00402825 */   move  $a1, $v0
/* 0044A700 8FBC007C */  lw    $gp, 0x7c($sp)
/* 0044A704 00000000 */  nop   
.L0044A708:
/* 0044A708 8F898070 */  lw    $t1, %got(RO_1001908C)($gp)
/* 0044A70C 03A06025 */  move  $t4, $sp
/* 0044A710 2529908C */  addiu $t1, %lo(RO_1001908C) # addiu $t1, $t1, -0x6f74
/* 0044A714 252B0048 */  addiu $t3, $t1, 0x48
.L0044A718:
/* 0044A718 89210000 */  lwl   $at, ($t1)
/* 0044A71C 99210003 */  lwr   $at, 3($t1)
/* 0044A720 2529000C */  addiu $t1, $t1, 0xc
/* 0044A724 A9810000 */  swl   $at, ($t4)
/* 0044A728 B9810003 */  swr   $at, 3($t4)
/* 0044A72C 8921FFF8 */  lwl   $at, -8($t1)
/* 0044A730 9921FFFB */  lwr   $at, -5($t1)
/* 0044A734 258C000C */  addiu $t4, $t4, 0xc
/* 0044A738 A981FFF8 */  swl   $at, -8($t4)
/* 0044A73C B981FFFB */  swr   $at, -5($t4)
/* 0044A740 8921FFFC */  lwl   $at, -4($t1)
/* 0044A744 9921FFFF */  lwr   $at, -1($t1)
/* 0044A748 00000000 */  nop   
/* 0044A74C A981FFFC */  swl   $at, -4($t4)
/* 0044A750 152BFFF1 */  bne   $t1, $t3, .L0044A718
/* 0044A754 B981FFFF */   swr   $at, -1($t4)
/* 0044A758 89210000 */  lwl   $at, ($t1)
/* 0044A75C 99210003 */  lwr   $at, 3($t1)
/* 0044A760 240F0001 */  li    $t7, 1
/* 0044A764 A9810000 */  swl   $at, ($t4)
/* 0044A768 B9810003 */  swr   $at, 3($t4)
/* 0044A76C 892B0004 */  lwl   $t3, 4($t1)
/* 0044A770 992B0007 */  lwr   $t3, 7($t1)
/* 0044A774 00000000 */  nop   
/* 0044A778 A98B0004 */  swl   $t3, 4($t4)
/* 0044A77C B98B0007 */  swr   $t3, 7($t4)
/* 0044A780 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0044A784 8FC1000C */  lw    $at, 0xc($fp)
/* 0044A788 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044A78C 8FA60008 */  lw    $a2, 8($sp)
/* 0044A790 8FA50004 */  lw    $a1, 4($sp)
/* 0044A794 8FA40000 */  lw    $a0, ($sp)
/* 0044A798 AFAF0054 */  sw    $t7, 0x54($sp)
/* 0044A79C 0320F809 */  jalr  $t9
/* 0044A7A0 AFA10050 */   sw    $at, 0x50($sp)
/* 0044A7A4 8FBC007C */  lw    $gp, 0x7c($sp)
/* 0044A7A8 00000000 */  nop   
.L0044A7AC:
/* 0044A7AC 8FBF0084 */  lw    $ra, 0x84($sp)
.L0044A7B0:
/* 0044A7B0 8FB0005C */  lw    $s0, 0x5c($sp)
/* 0044A7B4 8FB10060 */  lw    $s1, 0x60($sp)
/* 0044A7B8 8FB20064 */  lw    $s2, 0x64($sp)
/* 0044A7BC 8FB30068 */  lw    $s3, 0x68($sp)
/* 0044A7C0 8FB4006C */  lw    $s4, 0x6c($sp)
/* 0044A7C4 8FB50070 */  lw    $s5, 0x70($sp)
/* 0044A7C8 8FB60074 */  lw    $s6, 0x74($sp)
/* 0044A7CC 8FB70078 */  lw    $s7, 0x78($sp)
/* 0044A7D0 8FBE0080 */  lw    $fp, 0x80($sp)
/* 0044A7D4 03E00008 */  jr    $ra
/* 0044A7D8 27BD0088 */   addiu $sp, $sp, 0x88

    .type func_0044A7DC, @function
func_0044A7DC:
    # 0044AF18 main
/* 0044A7DC 3C1C0FBE */  .cpload $t9
/* 0044A7E0 279CFA84 */  
/* 0044A7E4 0399E021 */  
/* 0044A7E8 27BDFF78 */  addiu $sp, $sp, -0x88
/* 0044A7EC 8F8E8070 */  lw    $t6, %got(RO_1001912C)($gp)
/* 0044A7F0 AFBF0074 */  sw    $ra, 0x74($sp)
/* 0044A7F4 25CE912C */  addiu $t6, %lo(RO_1001912C) # addiu $t6, $t6, -0x6ed4
/* 0044A7F8 AFBC0070 */  sw    $gp, 0x70($sp)
/* 0044A7FC AFB4006C */  sw    $s4, 0x6c($sp)
/* 0044A800 AFB30068 */  sw    $s3, 0x68($sp)
/* 0044A804 AFB20064 */  sw    $s2, 0x64($sp)
/* 0044A808 AFB10060 */  sw    $s1, 0x60($sp)
/* 0044A80C AFB0005C */  sw    $s0, 0x5c($sp)
/* 0044A810 25D80048 */  addiu $t8, $t6, 0x48
/* 0044A814 03A0C825 */  move  $t9, $sp
.L0044A818:
/* 0044A818 89C10000 */  lwl   $at, ($t6)
/* 0044A81C 99C10003 */  lwr   $at, 3($t6)
/* 0044A820 25CE000C */  addiu $t6, $t6, 0xc
/* 0044A824 AB210000 */  swl   $at, ($t9)
/* 0044A828 BB210003 */  swr   $at, 3($t9)
/* 0044A82C 89C1FFF8 */  lwl   $at, -8($t6)
/* 0044A830 99C1FFFB */  lwr   $at, -5($t6)
/* 0044A834 2739000C */  addiu $t9, $t9, 0xc
/* 0044A838 AB21FFF8 */  swl   $at, -8($t9)
/* 0044A83C BB21FFFB */  swr   $at, -5($t9)
/* 0044A840 89C1FFFC */  lwl   $at, -4($t6)
/* 0044A844 99C1FFFF */  lwr   $at, -1($t6)
/* 0044A848 00000000 */  nop   
/* 0044A84C AB21FFFC */  swl   $at, -4($t9)
/* 0044A850 15D8FFF1 */  bne   $t6, $t8, .L0044A818
/* 0044A854 BB21FFFF */   swr   $at, -1($t9)
/* 0044A858 89C10000 */  lwl   $at, ($t6)
/* 0044A85C 99C10003 */  lwr   $at, 3($t6)
/* 0044A860 8F888C68 */  lw     $t0, %got(emptystring)($gp)
/* 0044A864 AB210000 */  swl   $at, ($t9)
/* 0044A868 BB210003 */  swr   $at, 3($t9)
/* 0044A86C 89D80004 */  lwl   $t8, 4($t6)
/* 0044A870 99D80007 */  lwr   $t8, 7($t6)
/* 0044A874 24090001 */  li    $t1, 1
/* 0044A878 AB380004 */  swl   $t8, 4($t9)
/* 0044A87C BB380007 */  swr   $t8, 7($t9)
/* 0044A880 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0044A884 8D080000 */  lw    $t0, ($t0)
/* 0044A888 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044A88C 8FA60008 */  lw    $a2, 8($sp)
/* 0044A890 8FA50004 */  lw    $a1, 4($sp)
/* 0044A894 8FA40000 */  lw    $a0, ($sp)
/* 0044A898 AFA90054 */  sw    $t1, 0x54($sp)
/* 0044A89C 0320F809 */  jalr  $t9
/* 0044A8A0 AFA80050 */   sw    $t0, 0x50($sp)
/* 0044A8A4 8FBC0070 */  lw    $gp, 0x70($sp)
/* 0044A8A8 00008025 */  move  $s0, $zero
/* 0044A8AC 8F948D04 */  lw     $s4, %got(sym_tab)($gp)
/* 0044A8B0 00008825 */  move  $s1, $zero
/* 0044A8B4 8E920004 */  lw    $s2, 4($s4)
/* 0044A8B8 27B30088 */  addiu $s3, $sp, 0x88
/* 0044A8BC 2652FFFF */  addiu $s2, $s2, -1
/* 0044A8C0 0640000D */  bltz  $s2, .L0044A8F8
/* 0044A8C4 26520001 */   addiu $s2, $s2, 1
.L0044A8C8:
/* 0044A8C8 8E8A0000 */  lw    $t2, ($s4)
/* 0044A8CC 8F998028 */  lw    $t9, %got(func_0044A504)($gp)
/* 0044A8D0 01515821 */  addu  $t3, $t2, $s1
/* 0044A8D4 8D640000 */  lw    $a0, ($t3)
/* 0044A8D8 2739A504 */  addiu $t9, %lo(func_0044A504) # addiu $t9, $t9, -0x5afc
/* 0044A8DC 02002825 */  move  $a1, $s0
/* 0044A8E0 0320F809 */  jalr  $t9
/* 0044A8E4 02601025 */   move  $v0, $s3
/* 0044A8E8 8FBC0070 */  lw    $gp, 0x70($sp)
/* 0044A8EC 26100001 */  addiu $s0, $s0, 1
/* 0044A8F0 1612FFF5 */  bne   $s0, $s2, .L0044A8C8
/* 0044A8F4 26310004 */   addiu $s1, $s1, 4
.L0044A8F8:
/* 0044A8F8 8F948D08 */  lw     $s4, %got(neg_sym_tab)($gp)
/* 0044A8FC 27B30088 */  addiu $s3, $sp, 0x88
/* 0044A900 8E920004 */  lw    $s2, 4($s4)
/* 0044A904 00008025 */  move  $s0, $zero
/* 0044A908 2652FFFF */  addiu $s2, $s2, -1
/* 0044A90C 0640000E */  bltz  $s2, .L0044A948
/* 0044A910 00008825 */   move  $s1, $zero
/* 0044A914 26520001 */  addiu $s2, $s2, 1
.L0044A918:
/* 0044A918 8E8C0000 */  lw    $t4, ($s4)
/* 0044A91C 8F998028 */  lw    $t9, %got(func_0044A504)($gp)
/* 0044A920 01916821 */  addu  $t5, $t4, $s1
/* 0044A924 8DA40000 */  lw    $a0, ($t5)
/* 0044A928 2739A504 */  addiu $t9, %lo(func_0044A504) # addiu $t9, $t9, -0x5afc
/* 0044A92C 00102823 */  negu  $a1, $s0
/* 0044A930 0320F809 */  jalr  $t9
/* 0044A934 02601025 */   move  $v0, $s3
/* 0044A938 8FBC0070 */  lw    $gp, 0x70($sp)
/* 0044A93C 26100001 */  addiu $s0, $s0, 1
/* 0044A940 1612FFF5 */  bne   $s0, $s2, .L0044A918
/* 0044A944 26310004 */   addiu $s1, $s1, 4
.L0044A948:
/* 0044A948 8F8F8AFC */  lw     $t7, %got(fixup_count)($gp)
/* 0044A94C 00000000 */  nop   
/* 0044A950 8DEF0000 */  lw    $t7, ($t7)
/* 0044A954 00000000 */  nop   
/* 0044A958 11E0002B */  beqz  $t7, .L0044AA08
/* 0044A95C 8FBF0074 */   lw    $ra, 0x74($sp)
/* 0044A960 8F988070 */  lw    $t8, %got(RO_100190DC)($gp)
/* 0044A964 03A04025 */  move  $t0, $sp
/* 0044A968 271890DC */  addiu $t8, %lo(RO_100190DC) # addiu $t8, $t8, -0x6f24
/* 0044A96C 27190048 */  addiu $t9, $t8, 0x48
.L0044A970:
/* 0044A970 8B010000 */  lwl   $at, ($t8)
/* 0044A974 9B010003 */  lwr   $at, 3($t8)
/* 0044A978 2718000C */  addiu $t8, $t8, 0xc
/* 0044A97C A9010000 */  swl   $at, ($t0)
/* 0044A980 B9010003 */  swr   $at, 3($t0)
/* 0044A984 8B01FFF8 */  lwl   $at, -8($t8)
/* 0044A988 9B01FFFB */  lwr   $at, -5($t8)
/* 0044A98C 2508000C */  addiu $t0, $t0, 0xc
/* 0044A990 A901FFF8 */  swl   $at, -8($t0)
/* 0044A994 B901FFFB */  swr   $at, -5($t0)
/* 0044A998 8B01FFFC */  lwl   $at, -4($t8)
/* 0044A99C 9B01FFFF */  lwr   $at, -1($t8)
/* 0044A9A0 00000000 */  nop   
/* 0044A9A4 A901FFFC */  swl   $at, -4($t0)
/* 0044A9A8 1719FFF1 */  bne   $t8, $t9, .L0044A970
/* 0044A9AC B901FFFF */   swr   $at, -1($t0)
/* 0044A9B0 8B010000 */  lwl   $at, ($t8)
/* 0044A9B4 9B010003 */  lwr   $at, 3($t8)
/* 0044A9B8 8F898C68 */  lw     $t1, %got(emptystring)($gp)
/* 0044A9BC A9010000 */  swl   $at, ($t0)
/* 0044A9C0 B9010003 */  swr   $at, 3($t0)
/* 0044A9C4 8B190004 */  lwl   $t9, 4($t8)
/* 0044A9C8 9B190007 */  lwr   $t9, 7($t8)
/* 0044A9CC 240A0001 */  li    $t2, 1
/* 0044A9D0 A9190004 */  swl   $t9, 4($t0)
/* 0044A9D4 B9190007 */  swr   $t9, 7($t0)
/* 0044A9D8 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0044A9DC 8D290000 */  lw    $t1, ($t1)
/* 0044A9E0 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044A9E4 8FA60008 */  lw    $a2, 8($sp)
/* 0044A9E8 8FA50004 */  lw    $a1, 4($sp)
/* 0044A9EC 8FA40000 */  lw    $a0, ($sp)
/* 0044A9F0 AFAA0054 */  sw    $t2, 0x54($sp)
/* 0044A9F4 0320F809 */  jalr  $t9
/* 0044A9F8 AFA90050 */   sw    $t1, 0x50($sp)
/* 0044A9FC 8FBC0070 */  lw    $gp, 0x70($sp)
/* 0044AA00 00000000 */  nop   
/* 0044AA04 8FBF0074 */  lw    $ra, 0x74($sp)
.L0044AA08:
/* 0044AA08 8FB0005C */  lw    $s0, 0x5c($sp)
/* 0044AA0C 8FB10060 */  lw    $s1, 0x60($sp)
/* 0044AA10 8FB20064 */  lw    $s2, 0x64($sp)
/* 0044AA14 8FB30068 */  lw    $s3, 0x68($sp)
/* 0044AA18 8FB4006C */  lw    $s4, 0x6c($sp)
/* 0044AA1C 03E00008 */  jr    $ra
/* 0044AA20 27BD0088 */   addiu $sp, $sp, 0x88

    .type func_0044AA24, @function
func_0044AA24:
    # 0044AF18 main
/* 0044AA24 3C1C0FBE */  .cpload $t9
/* 0044AA28 279CF83C */  
/* 0044AA2C 0399E021 */  
/* 0044AA30 8F838C64 */  lw     $v1, %got(mscoff)($gp)
/* 0044AA34 27BDFF88 */  addiu $sp, $sp, -0x78
/* 0044AA38 90630000 */  lbu   $v1, ($v1)
/* 0044AA3C AFBF0064 */  sw    $ra, 0x64($sp)
/* 0044AA40 AFBC0060 */  sw    $gp, 0x60($sp)
/* 0044AA44 10600004 */  beqz  $v1, .L0044AA58
/* 0044AA48 00404825 */   move  $t1, $v0
/* 0044AA4C 240A0053 */  li    $t2, 83
/* 0044AA50 10000003 */  b     .L0044AA60
/* 0044AA54 240B0059 */   li    $t3, 89
.L0044AA58:
/* 0044AA58 240A002E */  li    $t2, 46
/* 0044AA5C 240B0054 */  li    $t3, 84
.L0044AA60:
/* 0044AA60 8D24FFF4 */  lw    $a0, -0xc($t1)
/* 0044AA64 00000000 */  nop   
/* 0044AA68 908E0000 */  lbu   $t6, ($a0)
/* 0044AA6C 00000000 */  nop   
/* 0044AA70 15C00084 */  bnez  $t6, .L0044AC84
/* 0044AA74 00000000 */   nop   
/* 0044AA78 8D24FFF8 */  lw    $a0, -8($t1)
/* 0044AA7C 8F99818C */  lw    $t9, %call16(strlen)($gp)
/* 0044AA80 A3AB006A */  sb    $t3, 0x6a($sp)
/* 0044AA84 A3AA006B */  sb    $t2, 0x6b($sp)
/* 0044AA88 0320F809 */  jalr  $t9
/* 0044AA8C AFA90074 */   sw    $t1, 0x74($sp)
/* 0044AA90 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0044AA94 8FA90074 */  lw    $t1, 0x74($sp)
/* 0044AA98 93AA006B */  lbu   $t2, 0x6b($sp)
/* 0044AA9C 93AB006A */  lbu   $t3, 0x6a($sp)
/* 0044AAA0 284103FE */  slti  $at, $v0, 0x3fe
/* 0044AAA4 14200038 */  bnez  $at, .L0044AB88
/* 0044AAA8 00404025 */   move  $t0, $v0
/* 0044AAAC 8F8F8070 */  lw    $t7, %got(RO_1001917C)($gp)
/* 0044AAB0 03A06025 */  move  $t4, $sp
/* 0044AAB4 25EF917C */  addiu $t7, %lo(RO_1001917C) # addiu $t7, $t7, -0x6e84
/* 0044AAB8 25F90048 */  addiu $t9, $t7, 0x48
.L0044AABC:
/* 0044AABC 89E10000 */  lwl   $at, ($t7)
/* 0044AAC0 99E10003 */  lwr   $at, 3($t7)
/* 0044AAC4 25EF000C */  addiu $t7, $t7, 0xc
/* 0044AAC8 A9810000 */  swl   $at, ($t4)
/* 0044AACC B9810003 */  swr   $at, 3($t4)
/* 0044AAD0 89E1FFF8 */  lwl   $at, -8($t7)
/* 0044AAD4 99E1FFFB */  lwr   $at, -5($t7)
/* 0044AAD8 258C000C */  addiu $t4, $t4, 0xc
/* 0044AADC A981FFF8 */  swl   $at, -8($t4)
/* 0044AAE0 B981FFFB */  swr   $at, -5($t4)
/* 0044AAE4 89E1FFFC */  lwl   $at, -4($t7)
/* 0044AAE8 99E1FFFF */  lwr   $at, -1($t7)
/* 0044AAEC 00000000 */  nop   
/* 0044AAF0 A981FFFC */  swl   $at, -4($t4)
/* 0044AAF4 15F9FFF1 */  bne   $t7, $t9, .L0044AABC
/* 0044AAF8 B981FFFF */   swr   $at, -1($t4)
/* 0044AAFC 89E10000 */  lwl   $at, ($t7)
/* 0044AB00 99E10003 */  lwr   $at, 3($t7)
/* 0044AB04 24180001 */  li    $t8, 1
/* 0044AB08 A9810000 */  swl   $at, ($t4)
/* 0044AB0C B9810003 */  swr   $at, 3($t4)
/* 0044AB10 89F90004 */  lwl   $t9, 4($t7)
/* 0044AB14 99F90007 */  lwr   $t9, 7($t7)
/* 0044AB18 00000000 */  nop   
/* 0044AB1C A9990004 */  swl   $t9, 4($t4)
/* 0044AB20 B9990007 */  swr   $t9, 7($t4)
/* 0044AB24 8D21FFF8 */  lw    $at, -8($t1)
/* 0044AB28 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0044AB2C 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044AB30 8FA60008 */  lw    $a2, 8($sp)
/* 0044AB34 8FA50004 */  lw    $a1, 4($sp)
/* 0044AB38 8FA40000 */  lw    $a0, ($sp)
/* 0044AB3C A3AB006A */  sb    $t3, 0x6a($sp)
/* 0044AB40 A3AA006B */  sb    $t2, 0x6b($sp)
/* 0044AB44 AFA90074 */  sw    $t1, 0x74($sp)
/* 0044AB48 AFA80070 */  sw    $t0, 0x70($sp)
/* 0044AB4C AFB80054 */  sw    $t8, 0x54($sp)
/* 0044AB50 0320F809 */  jalr  $t9
/* 0044AB54 AFA10050 */   sw    $at, 0x50($sp)
/* 0044AB58 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0044AB5C 24040001 */  li    $a0, 1
/* 0044AB60 8F998688 */  lw    $t9, %call16(exit)($gp)
/* 0044AB64 00000000 */  nop   
/* 0044AB68 0320F809 */  jalr  $t9
/* 0044AB6C 00000000 */   nop   
/* 0044AB70 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0044AB74 8FA80070 */  lw    $t0, 0x70($sp)
/* 0044AB78 8FA90074 */  lw    $t1, 0x74($sp)
/* 0044AB7C 93AA006B */  lbu   $t2, 0x6b($sp)
/* 0044AB80 93AB006A */  lbu   $t3, 0x6a($sp)
/* 0044AB84 00000000 */  nop   
.L0044AB88:
/* 0044AB88 19000023 */  blez  $t0, .L0044AC18
/* 0044AB8C 29010003 */   slti  $at, $t0, 3
/* 0044AB90 25060001 */  addiu $a2, $t0, 1
/* 0044AB94 24C7FFFF */  addiu $a3, $a2, -1
/* 0044AB98 30F90003 */  andi  $t9, $a3, 3
/* 0044AB9C 1320000E */  beqz  $t9, .L0044ABD8
/* 0044ABA0 24040001 */   li    $a0, 1
/* 0044ABA4 8D2FFFF4 */  lw    $t7, -0xc($t1)
/* 0044ABA8 8D2CFFF8 */  lw    $t4, -8($t1)
/* 0044ABAC 27250001 */  addiu $a1, $t9, 1
/* 0044ABB0 01E41021 */  addu  $v0, $t7, $a0
/* 0044ABB4 01841821 */  addu  $v1, $t4, $a0
.L0044ABB8:
/* 0044ABB8 906DFFFF */  lbu   $t5, -1($v1)
/* 0044ABBC 24840001 */  addiu $a0, $a0, 1
/* 0044ABC0 24420001 */  addiu $v0, $v0, 1
/* 0044ABC4 24630001 */  addiu $v1, $v1, 1
/* 0044ABC8 14A4FFFB */  bne   $a1, $a0, .L0044ABB8
/* 0044ABCC A04DFFFE */   sb    $t5, -2($v0)
/* 0044ABD0 10860011 */  beq   $a0, $a2, .L0044AC18
/* 0044ABD4 00000000 */   nop   
.L0044ABD8:
/* 0044ABD8 8D2EFFF4 */  lw    $t6, -0xc($t1)
/* 0044ABDC 8D38FFF8 */  lw    $t8, -8($t1)
/* 0044ABE0 01C41021 */  addu  $v0, $t6, $a0
/* 0044ABE4 03041821 */  addu  $v1, $t8, $a0
.L0044ABE8:
/* 0044ABE8 9079FFFF */  lbu   $t9, -1($v1)
/* 0044ABEC 24840004 */  addiu $a0, $a0, 4
/* 0044ABF0 A059FFFF */  sb    $t9, -1($v0)
/* 0044ABF4 906F0000 */  lbu   $t7, ($v1)
/* 0044ABF8 24420004 */  addiu $v0, $v0, 4
/* 0044ABFC A04FFFFC */  sb    $t7, -4($v0)
/* 0044AC00 906C0001 */  lbu   $t4, 1($v1)
/* 0044AC04 24630004 */  addiu $v1, $v1, 4
/* 0044AC08 A04CFFFD */  sb    $t4, -3($v0)
/* 0044AC0C 906DFFFE */  lbu   $t5, -2($v1)
/* 0044AC10 1486FFF5 */  bne   $a0, $a2, .L0044ABE8
/* 0044AC14 A04DFFFE */   sb    $t5, -2($v0)
.L0044AC18:
/* 0044AC18 8D24FFF4 */  lw    $a0, -0xc($t1)
/* 0044AC1C 1420000F */  bnez  $at, .L0044AC5C
/* 0044AC20 00000000 */   nop   
/* 0044AC24 8D2EFFF8 */  lw    $t6, -8($t1)
/* 0044AC28 24010047 */  li    $at, 71
/* 0044AC2C 01C81021 */  addu  $v0, $t6, $t0
/* 0044AC30 9058FFFF */  lbu   $t8, -1($v0)
/* 0044AC34 00000000 */  nop   
/* 0044AC38 17010008 */  bne   $t8, $at, .L0044AC5C
/* 0044AC3C 00000000 */   nop   
/* 0044AC40 9059FFFE */  lbu   $t9, -2($v0)
/* 0044AC44 2401002E */  li    $at, 46
/* 0044AC48 17210004 */  bne   $t9, $at, .L0044AC5C
/* 0044AC4C 00881021 */   addu  $v0, $a0, $t0
/* 0044AC50 A04AFFFE */  sb    $t2, -2($v0)
/* 0044AC54 10000007 */  b     .L0044AC74
/* 0044AC58 A04BFFFF */   sb    $t3, -1($v0)
.L0044AC5C:
/* 0044AC5C 25080001 */  addiu $t0, $t0, 1
/* 0044AC60 00881021 */  addu  $v0, $a0, $t0
/* 0044AC64 A04AFFFF */  sb    $t2, -1($v0)
/* 0044AC68 25080001 */  addiu $t0, $t0, 1
/* 0044AC6C 00881021 */  addu  $v0, $a0, $t0
/* 0044AC70 A04BFFFF */  sb    $t3, -1($v0)
.L0044AC74:
/* 0044AC74 8F838C64 */  lw     $v1, %got(mscoff)($gp)
/* 0044AC78 A0400000 */  sb    $zero, ($v0)
/* 0044AC7C 90630000 */  lbu   $v1, ($v1)
/* 0044AC80 00000000 */  nop   
.L0044AC84:
/* 0044AC84 1460001C */  bnez  $v1, .L0044ACF8
/* 0044AC88 00000000 */   nop   
/* 0044AC8C 8F998868 */  lw    $t9, %call16(st_readbinary)($gp)
/* 0044AC90 24050061 */  li    $a1, 97
/* 0044AC94 0320F809 */  jalr  $t9
/* 0044AC98 AFA90074 */   sw    $t1, 0x74($sp)
/* 0044AC9C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0044ACA0 8FA90074 */  lw    $t1, 0x74($sp)
/* 0044ACA4 2401FFFE */  li    $at, -2
/* 0044ACA8 14410009 */  bne   $v0, $at, .L0044ACD0
/* 0044ACAC 00000000 */   nop   
/* 0044ACB0 8D25FFF4 */  lw    $a1, -0xc($t1)
/* 0044ACB4 8F998660 */  lw    $t9, %call16(call_perror)($gp)
/* 0044ACB8 24040001 */  li    $a0, 1
/* 0044ACBC 0320F809 */  jalr  $t9
/* 0044ACC0 AFA50004 */   sw    $a1, 4($sp)
/* 0044ACC4 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0044ACC8 1000001C */  b     .L0044AD3C
/* 0044ACCC 8FBF0064 */   lw    $ra, 0x64($sp)
.L0044ACD0:
/* 0044ACD0 8D24FFF4 */  lw    $a0, -0xc($t1)
/* 0044ACD4 8F858B18 */  lw     $a1, %got(debugflag)($gp)
/* 0044ACD8 A0800000 */  sb    $zero, ($a0)
/* 0044ACDC 8F9983E0 */  lw    $t9, %call16(st_asinit)($gp)
/* 0044ACE0 8CA50000 */  lw    $a1, ($a1)
/* 0044ACE4 0320F809 */  jalr  $t9
/* 0044ACE8 00000000 */   nop   
/* 0044ACEC 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0044ACF0 10000012 */  b     .L0044AD3C
/* 0044ACF4 8FBF0064 */   lw    $ra, 0x64($sp)
.L0044ACF8:
/* 0044ACF8 8F9983DC */  lw    $t9, %call16(ms_readsym)($gp)
/* 0044ACFC AFA90074 */  sw    $t1, 0x74($sp)
/* 0044AD00 0320F809 */  jalr  $t9
/* 0044AD04 00000000 */   nop   
/* 0044AD08 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0044AD0C 8FA90074 */  lw    $t1, 0x74($sp)
/* 0044AD10 2401FFFF */  li    $at, -1
/* 0044AD14 14410009 */  bne   $v0, $at, .L0044AD3C
/* 0044AD18 8FBF0064 */   lw    $ra, 0x64($sp)
/* 0044AD1C 8D25FFF4 */  lw    $a1, -0xc($t1)
/* 0044AD20 8F998660 */  lw    $t9, %call16(call_perror)($gp)
/* 0044AD24 24040001 */  li    $a0, 1
/* 0044AD28 0320F809 */  jalr  $t9
/* 0044AD2C AFA50004 */   sw    $a1, 4($sp)
/* 0044AD30 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0044AD34 00000000 */  nop   
/* 0044AD38 8FBF0064 */  lw    $ra, 0x64($sp)
.L0044AD3C:
/* 0044AD3C 27BD0078 */  addiu $sp, $sp, 0x78
/* 0044AD40 03E00008 */  jr    $ra
/* 0044AD44 00000000 */   nop   

    .type func_0044AD48, @function
func_0044AD48:
    # 0044AF18 main
/* 0044AD48 3C1C0FBE */  .cpload $t9
/* 0044AD4C 279CF518 */  
/* 0044AD50 0399E021 */  
/* 0044AD54 27BDFF90 */  addiu $sp, $sp, -0x70
/* 0044AD58 AFBF0064 */  sw    $ra, 0x64($sp)
/* 0044AD5C AFBC0060 */  sw    $gp, 0x60($sp)
/* 0044AD60 8C4EFFF4 */  lw    $t6, -0xc($v0)
/* 0044AD64 00404025 */  move  $t0, $v0
/* 0044AD68 91CF0000 */  lbu   $t7, ($t6)
/* 0044AD6C 00000000 */  nop   
/* 0044AD70 11E0002C */  beqz  $t7, .L0044AE24
/* 0044AD74 00000000 */   nop   
/* 0044AD78 8F988070 */  lw    $t8, %got(RO_100191CC)($gp)
/* 0044AD7C 03A05025 */  move  $t2, $sp
/* 0044AD80 271891CC */  addiu $t8, %lo(RO_100191CC) # addiu $t8, $t8, -0x6e34
/* 0044AD84 27090048 */  addiu $t1, $t8, 0x48
.L0044AD88:
/* 0044AD88 8B010000 */  lwl   $at, ($t8)
/* 0044AD8C 9B010003 */  lwr   $at, 3($t8)
/* 0044AD90 2718000C */  addiu $t8, $t8, 0xc
/* 0044AD94 A9410000 */  swl   $at, ($t2)
/* 0044AD98 B9410003 */  swr   $at, 3($t2)
/* 0044AD9C 8B01FFF8 */  lwl   $at, -8($t8)
/* 0044ADA0 9B01FFFB */  lwr   $at, -5($t8)
/* 0044ADA4 254A000C */  addiu $t2, $t2, 0xc
/* 0044ADA8 A941FFF8 */  swl   $at, -8($t2)
/* 0044ADAC B941FFFB */  swr   $at, -5($t2)
/* 0044ADB0 8B01FFFC */  lwl   $at, -4($t8)
/* 0044ADB4 9B01FFFF */  lwr   $at, -1($t8)
/* 0044ADB8 00000000 */  nop   
/* 0044ADBC A941FFFC */  swl   $at, -4($t2)
/* 0044ADC0 1709FFF1 */  bne   $t8, $t1, .L0044AD88
/* 0044ADC4 B941FFFF */   swr   $at, -1($t2)
/* 0044ADC8 8B010000 */  lwl   $at, ($t8)
/* 0044ADCC 9B010003 */  lwr   $at, 3($t8)
/* 0044ADD0 240D0002 */  li    $t5, 2
/* 0044ADD4 A9410000 */  swl   $at, ($t2)
/* 0044ADD8 B9410003 */  swr   $at, 3($t2)
/* 0044ADDC 8B090004 */  lwl   $t1, 4($t8)
/* 0044ADE0 9B090007 */  lwr   $t1, 7($t8)
/* 0044ADE4 00000000 */  nop   
/* 0044ADE8 A9490004 */  swl   $t1, 4($t2)
/* 0044ADEC B9490007 */  swr   $t1, 7($t2)
/* 0044ADF0 8D01FFF8 */  lw    $at, -8($t0)
/* 0044ADF4 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0044ADF8 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044ADFC 8FA60008 */  lw    $a2, 8($sp)
/* 0044AE00 8FA50004 */  lw    $a1, 4($sp)
/* 0044AE04 8FA40000 */  lw    $a0, ($sp)
/* 0044AE08 AFA8006C */  sw    $t0, 0x6c($sp)
/* 0044AE0C AFAD0054 */  sw    $t5, 0x54($sp)
/* 0044AE10 0320F809 */  jalr  $t9
/* 0044AE14 AFA10050 */   sw    $at, 0x50($sp)
/* 0044AE18 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0044AE1C 8FA8006C */  lw    $t0, 0x6c($sp)
/* 0044AE20 00000000 */  nop   
.L0044AE24:
/* 0044AE24 8F9986D0 */  lw    $t9, %call16(st_cuinit)($gp)
/* 0044AE28 AFA8006C */  sw    $t0, 0x6c($sp)
/* 0044AE2C 0320F809 */  jalr  $t9
/* 0044AE30 00000000 */   nop   
/* 0044AE34 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0044AE38 00000000 */  nop   
/* 0044AE3C 8F848D60 */  lw     $a0, %got(outname)($gp)
/* 0044AE40 8F99818C */  lw    $t9, %call16(strlen)($gp)
/* 0044AE44 8C840000 */  lw    $a0, ($a0)
/* 0044AE48 0320F809 */  jalr  $t9
/* 0044AE4C 00000000 */   nop   
/* 0044AE50 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0044AE54 8FA8006C */  lw    $t0, 0x6c($sp)
/* 0044AE58 24430001 */  addiu $v1, $v0, 1
/* 0044AE5C 18600024 */  blez  $v1, .L0044AEF0
/* 0044AE60 24660001 */   addiu $a2, $v1, 1
/* 0044AE64 24C7FFFF */  addiu $a3, $a2, -1
/* 0044AE68 30EE0003 */  andi  $t6, $a3, 3
/* 0044AE6C 11C0000F */  beqz  $t6, .L0044AEAC
/* 0044AE70 24040001 */   li    $a0, 1
/* 0044AE74 8F998D60 */  lw     $t9, %got(outname)($gp)
/* 0044AE78 8D0FFFF4 */  lw    $t7, -0xc($t0)
/* 0044AE7C 8F390000 */  lw    $t9, ($t9)
/* 0044AE80 25C50001 */  addiu $a1, $t6, 1
/* 0044AE84 01E41021 */  addu  $v0, $t7, $a0
/* 0044AE88 03241821 */  addu  $v1, $t9, $a0
.L0044AE8C:
/* 0044AE8C 9069FFFF */  lbu   $t1, -1($v1)
/* 0044AE90 24840001 */  addiu $a0, $a0, 1
/* 0044AE94 24420001 */  addiu $v0, $v0, 1
/* 0044AE98 24630001 */  addiu $v1, $v1, 1
/* 0044AE9C 14A4FFFB */  bne   $a1, $a0, .L0044AE8C
/* 0044AEA0 A049FFFE */   sb    $t1, -2($v0)
/* 0044AEA4 10860012 */  beq   $a0, $a2, .L0044AEF0
/* 0044AEA8 00000000 */   nop   
.L0044AEAC:
/* 0044AEAC 8F8A8D60 */  lw     $t2, %got(outname)($gp)
/* 0044AEB0 8D18FFF4 */  lw    $t8, -0xc($t0)
/* 0044AEB4 8D4A0000 */  lw    $t2, ($t2)
/* 0044AEB8 03041021 */  addu  $v0, $t8, $a0
/* 0044AEBC 01441821 */  addu  $v1, $t2, $a0
.L0044AEC0:
/* 0044AEC0 906BFFFF */  lbu   $t3, -1($v1)
/* 0044AEC4 24840004 */  addiu $a0, $a0, 4
/* 0044AEC8 A04BFFFF */  sb    $t3, -1($v0)
/* 0044AECC 906C0000 */  lbu   $t4, ($v1)
/* 0044AED0 24420004 */  addiu $v0, $v0, 4
/* 0044AED4 A04CFFFC */  sb    $t4, -4($v0)
/* 0044AED8 906D0001 */  lbu   $t5, 1($v1)
/* 0044AEDC 24630004 */  addiu $v1, $v1, 4
/* 0044AEE0 A04DFFFD */  sb    $t5, -3($v0)
/* 0044AEE4 906EFFFE */  lbu   $t6, -2($v1)
/* 0044AEE8 1486FFF5 */  bne   $a0, $a2, .L0044AEC0
/* 0044AEEC A04EFFFE */   sb    $t6, -2($v0)
.L0044AEF0:
/* 0044AEF0 8F858B18 */  lw     $a1, %got(debugflag)($gp)
/* 0044AEF4 8F9983E0 */  lw    $t9, %call16(st_asinit)($gp)
/* 0044AEF8 8D04FFF4 */  lw    $a0, -0xc($t0)
/* 0044AEFC 8CA50000 */  lw    $a1, ($a1)
/* 0044AF00 0320F809 */  jalr  $t9
/* 0044AF04 00000000 */   nop   
/* 0044AF08 8FBF0064 */  lw    $ra, 0x64($sp)
/* 0044AF0C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0044AF10 03E00008 */  jr    $ra
/* 0044AF14 27BD0070 */   addiu $sp, $sp, 0x70

glabel main
    .ent main
/* 0044AF18 3C1C0FBE */  .cpload $t9
/* 0044AF1C 279CF348 */  
/* 0044AF20 0399E021 */  
/* 0044AF24 27BDFEF8 */  addiu $sp, $sp, -0x108
/* 0044AF28 8F998024 */  lw    $t9, %got(func_004423F4)($gp)
/* 0044AF2C AFBF00D4 */  sw    $ra, 0xd4($sp)
/* 0044AF30 273923F4 */  addiu $t9, %lo(func_004423F4) # addiu $t9, $t9, 0x23f4
/* 0044AF34 AFBE00D0 */  sw    $fp, 0xd0($sp)
/* 0044AF38 AFBC00CC */  sw    $gp, 0xcc($sp)
/* 0044AF3C AFB700C8 */  sw    $s7, 0xc8($sp)
/* 0044AF40 AFB600C4 */  sw    $s6, 0xc4($sp)
/* 0044AF44 AFB500C0 */  sw    $s5, 0xc0($sp)
/* 0044AF48 AFB400BC */  sw    $s4, 0xbc($sp)
/* 0044AF4C AFB300B8 */  sw    $s3, 0xb8($sp)
/* 0044AF50 AFB200B4 */  sw    $s2, 0xb4($sp)
/* 0044AF54 AFB100B0 */  sw    $s1, 0xb0($sp)
/* 0044AF58 AFB000AC */  sw    $s0, 0xac($sp)
/* 0044AF5C 0320F809 */  jalr  $t9
/* 0044AF60 27A20108 */   addiu $v0, $sp, 0x108
/* 0044AF64 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044AF68 8FA50100 */  lw    $a1, 0x100($sp)
/* 0044AF6C 8F9986BC */  lw    $t9, %call16(reset)($gp)
/* 0044AF70 8F848C6C */  lw     $a0, %got(binasm_file)($gp)
/* 0044AF74 24060400 */  li    $a2, 1024
/* 0044AF78 0320F809 */  jalr  $t9
/* 0044AF7C 24070010 */   li    $a3, 16
/* 0044AF80 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044AF84 00000000 */  nop   
/* 0044AF88 8F848C6C */  lw     $a0, %got(binasm_file)($gp)
/* 0044AF8C 8F9986AC */  lw    $t9, %call16(eof)($gp)
/* 0044AF90 8C840000 */  lw    $a0, ($a0)
/* 0044AF94 0320F809 */  jalr  $t9
/* 0044AF98 00000000 */   nop   
/* 0044AF9C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044AFA0 10400010 */  beqz  $v0, .L0044AFE4
/* 0044AFA4 00000000 */   nop   
/* 0044AFA8 8F998330 */  lw    $t9, %call16(filesize)($gp)
/* 0044AFAC 8F848C6C */  lw     $a0, %got(binasm_file)($gp)
/* 0044AFB0 0320F809 */  jalr  $t9
/* 0044AFB4 00000000 */   nop   
/* 0044AFB8 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044AFBC 10400009 */  beqz  $v0, .L0044AFE4
/* 0044AFC0 00000000 */   nop   
/* 0044AFC4 8FA50100 */  lw    $a1, 0x100($sp)
/* 0044AFC8 8F998660 */  lw    $t9, %call16(call_perror)($gp)
/* 0044AFCC 24040001 */  li    $a0, 1
/* 0044AFD0 0320F809 */  jalr  $t9
/* 0044AFD4 AFA50004 */   sw    $a1, 4($sp)
/* 0044AFD8 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044AFDC 1000029A */  b     .L0044BA48
/* 0044AFE0 00001025 */   move  $v0, $zero
.L0044AFE4:
/* 0044AFE4 8F9985EC */  lw    $t9, %call16(init_binasm)($gp)
/* 0044AFE8 00000000 */  nop   
/* 0044AFEC 0320F809 */  jalr  $t9
/* 0044AFF0 00000000 */   nop   
/* 0044AFF4 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044AFF8 2401001F */  li    $at, 31
/* 0044AFFC 8F8F8D64 */  lw     $t7, %got(binasmfyle)($gp)
/* 0044B000 00000000 */  nop   
/* 0044B004 8DEF0000 */  lw    $t7, ($t7)
/* 0044B008 00000000 */  nop   
/* 0044B00C 91E20005 */  lbu   $v0, 5($t7)
/* 0044B010 00000000 */  nop   
/* 0044B014 3058003F */  andi  $t8, $v0, 0x3f
/* 0044B018 17010009 */  bne   $t8, $at, .L0044B040
/* 0044B01C 03001025 */   move  $v0, $t8
/* 0044B020 8F998028 */  lw    $t9, %got(func_0044AD48)($gp)
/* 0044B024 27A20108 */  addiu $v0, $sp, 0x108
/* 0044B028 2739AD48 */  addiu $t9, %lo(func_0044AD48) # addiu $t9, $t9, -0x52b8
/* 0044B02C 0320F809 */  jalr  $t9
/* 0044B030 00000000 */   nop   
/* 0044B034 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B038 10000035 */  b     .L0044B110
/* 0044B03C 00000000 */   nop   
.L0044B040:
/* 0044B040 2401002A */  li    $at, 42
/* 0044B044 14410009 */  bne   $v0, $at, .L0044B06C
/* 0044B048 00000000 */   nop   
/* 0044B04C 8F998028 */  lw    $t9, %got(func_0044AA24)($gp)
/* 0044B050 27A20108 */  addiu $v0, $sp, 0x108
/* 0044B054 2739AA24 */  addiu $t9, %lo(func_0044AA24) # addiu $t9, $t9, -0x55dc
/* 0044B058 0320F809 */  jalr  $t9
/* 0044B05C 00000000 */   nop   
/* 0044B060 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B064 1000002A */  b     .L0044B110
/* 0044B068 00000000 */   nop   
.L0044B06C:
/* 0044B06C 8F998070 */  lw    $t9, %got(RO_100193FC)($gp)
/* 0044B070 03A05025 */  move  $t2, $sp
/* 0044B074 273993FC */  addiu $t9, %lo(RO_100193FC) # addiu $t9, $t9, -0x6c04
/* 0044B078 27290048 */  addiu $t1, $t9, 0x48
.L0044B07C:
/* 0044B07C 8B210000 */  lwl   $at, ($t9)
/* 0044B080 9B210003 */  lwr   $at, 3($t9)
/* 0044B084 2739000C */  addiu $t9, $t9, 0xc
/* 0044B088 A9410000 */  swl   $at, ($t2)
/* 0044B08C B9410003 */  swr   $at, 3($t2)
/* 0044B090 8B21FFF8 */  lwl   $at, -8($t9)
/* 0044B094 9B21FFFB */  lwr   $at, -5($t9)
/* 0044B098 254A000C */  addiu $t2, $t2, 0xc
/* 0044B09C A941FFF8 */  swl   $at, -8($t2)
/* 0044B0A0 B941FFFB */  swr   $at, -5($t2)
/* 0044B0A4 8B21FFFC */  lwl   $at, -4($t9)
/* 0044B0A8 9B21FFFF */  lwr   $at, -1($t9)
/* 0044B0AC 00000000 */  nop   
/* 0044B0B0 A941FFFC */  swl   $at, -4($t2)
/* 0044B0B4 1729FFF1 */  bne   $t9, $t1, .L0044B07C
/* 0044B0B8 B941FFFF */   swr   $at, -1($t2)
/* 0044B0BC 8B210000 */  lwl   $at, ($t9)
/* 0044B0C0 9B210003 */  lwr   $at, 3($t9)
/* 0044B0C4 240C0001 */  li    $t4, 1
/* 0044B0C8 A9410000 */  swl   $at, ($t2)
/* 0044B0CC B9410003 */  swr   $at, 3($t2)
/* 0044B0D0 8B290004 */  lwl   $t1, 4($t9)
/* 0044B0D4 9B290007 */  lwr   $t1, 7($t9)
/* 0044B0D8 00000000 */  nop   
/* 0044B0DC A9490004 */  swl   $t1, 4($t2)
/* 0044B0E0 B9490007 */  swr   $t1, 7($t2)
/* 0044B0E4 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0044B0E8 8FAB0100 */  lw    $t3, 0x100($sp)
/* 0044B0EC 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044B0F0 8FA60008 */  lw    $a2, 8($sp)
/* 0044B0F4 8FA50004 */  lw    $a1, 4($sp)
/* 0044B0F8 8FA40000 */  lw    $a0, ($sp)
/* 0044B0FC AFAC0054 */  sw    $t4, 0x54($sp)
/* 0044B100 0320F809 */  jalr  $t9
/* 0044B104 AFAB0050 */   sw    $t3, 0x50($sp)
/* 0044B108 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B10C 00000000 */  nop   
.L0044B110:
/* 0044B110 8F8D8D00 */  lw     $t5, %got(severity)($gp)
/* 0044B114 00000000 */  nop   
/* 0044B118 91AD0000 */  lbu   $t5, ($t5)
/* 0044B11C 00000000 */  nop   
/* 0044B120 2DA10002 */  sltiu $at, $t5, 2
/* 0044B124 14200174 */  bnez  $at, .L0044B6F8
/* 0044B128 00000000 */   nop   
/* 0044B12C 8F848C6C */  lw     $a0, %got(binasm_file)($gp)
/* 0044B130 8F9986AC */  lw    $t9, %call16(eof)($gp)
/* 0044B134 8C840000 */  lw    $a0, ($a0)
/* 0044B138 0320F809 */  jalr  $t9
/* 0044B13C 00000000 */   nop   
/* 0044B140 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B144 1440016C */  bnez  $v0, .L0044B6F8
/* 0044B148 00000000 */   nop   
/* 0044B14C 8F8E8C08 */  lw     $t6, %got(profileflag)($gp)
/* 0044B150 00000000 */  nop   
/* 0044B154 8DCE0000 */  lw    $t6, ($t6)
/* 0044B158 00000000 */  nop   
/* 0044B15C 29C10002 */  slti  $at, $t6, 2
/* 0044B160 14200011 */  bnez  $at, .L0044B1A8
/* 0044B164 3C157FFF */   lui   $s5, 0x7fff
/* 0044B168 8F998344 */  lw    $t9, %call16(l_addr)($gp)
/* 0044B16C 8F8489B0 */  lw     $a0, %got(mcount_sym)($gp)
/* 0044B170 0320F809 */  jalr  $t9
/* 0044B174 00000000 */   nop   
/* 0044B178 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B17C 00402025 */  move  $a0, $v0
/* 0044B180 8F9985B8 */  lw    $t9, %call16(enter_undef_sym)($gp)
/* 0044B184 00000000 */  nop   
/* 0044B188 0320F809 */  jalr  $t9
/* 0044B18C 00000000 */   nop   
/* 0044B190 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B194 00000000 */  nop   
/* 0044B198 8F818C0C */  lw     $at, %got(mcount_address)($gp)
/* 0044B19C 00000000 */  nop   
/* 0044B1A0 AC220000 */  sw    $v0, ($at)
/* 0044B1A4 3C157FFF */  lui   $s5, 0x7fff
.L0044B1A8:
/* 0044B1A8 8F9E8D48 */  lw     $fp, %got(mark3ops)($gp)
/* 0044B1AC 8F978D44 */  lw     $s7, %got(mark2ops)($gp)
/* 0044B1B0 8F968B04 */  lw     $s6, %got(isa)($gp)
/* 0044B1B4 8F928C68 */  lw     $s2, %got(emptystring)($gp)
/* 0044B1B8 8F918B40 */  lw     $s1, %got(pinstruction)($gp)
/* 0044B1BC 36B5FFFF */  ori   $s5, $s5, 0xffff
.L0044B1C0:
/* 0044B1C0 8F998028 */  lw    $t9, %got(func_0044A328)($gp)
/* 0044B1C4 27A20108 */  addiu $v0, $sp, 0x108
/* 0044B1C8 2739A328 */  addiu $t9, %lo(func_0044A328) # addiu $t9, $t9, -0x5cd8
/* 0044B1CC 0320F809 */  jalr  $t9
/* 0044B1D0 00000000 */   nop   
/* 0044B1D4 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B1D8 00000000 */  nop   
/* 0044B1DC 8F9984D0 */  lw    $t9, %call16(restore_gp)($gp)
/* 0044B1E0 00000000 */  nop   
/* 0044B1E4 0320F809 */  jalr  $t9
/* 0044B1E8 00000000 */   nop   
/* 0044B1EC 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B1F0 00000000 */  nop   
/* 0044B1F4 8F99857C */  lw    $t9, %call16(parsestmt)($gp)
/* 0044B1F8 00000000 */  nop   
/* 0044B1FC 0320F809 */  jalr  $t9
/* 0044B200 00000000 */   nop   
/* 0044B204 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B208 24100028 */  li    $s0, 40
/* 0044B20C 8F938BB0 */  lw     $s3, %got(bbindex)($gp)
/* 0044B210 00000000 */  nop   
/* 0044B214 8E730000 */  lw    $s3, ($s3)
/* 0044B218 00000000 */  nop   
/* 0044B21C 1A600102 */  blez  $s3, .L0044B628
/* 0044B220 26730001 */   addiu $s3, $s3, 1
/* 0044B224 0013A080 */  sll   $s4, $s3, 2
/* 0044B228 0293A021 */  addu  $s4, $s4, $s3
/* 0044B22C 0014A0C0 */  sll   $s4, $s4, 3
.L0044B230:
/* 0044B230 8E2F0000 */  lw    $t7, ($s1)
/* 0044B234 00000000 */  nop   
/* 0044B238 01F01821 */  addu  $v1, $t7, $s0
/* 0044B23C 8C780000 */  lw    $t8, ($v1)
/* 0044B240 00000000 */  nop   
/* 0044B244 12B800F5 */  beq   $s5, $t8, .L0044B61C
/* 0044B248 00000000 */   nop   
/* 0044B24C 92C20000 */  lbu   $v0, ($s6)
/* 0044B250 00000000 */  nop   
/* 0044B254 2C410002 */  sltiu $at, $v0, 2
/* 0044B258 10200039 */  beqz  $at, .L0044B340
/* 0044B25C 2C410003 */   sltiu $at, $v0, 3
/* 0044B260 94680024 */  lhu   $t0, 0x24($v1)
/* 0044B264 00000000 */  nop   
/* 0044B268 2D090160 */  sltiu $t1, $t0, 0x160
/* 0044B26C 11200007 */  beqz  $t1, .L0044B28C
/* 0044B270 0008C943 */   sra   $t9, $t0, 5
/* 0044B274 00195080 */  sll   $t2, $t9, 2
/* 0044B278 02EA5821 */  addu  $t3, $s7, $t2
/* 0044B27C 8D6C0000 */  lw    $t4, ($t3)
/* 0044B280 00000000 */  nop   
/* 0044B284 010C6804 */  sllv  $t5, $t4, $t0
/* 0044B288 29A90000 */  slti  $t1, $t5, 0
.L0044B28C:
/* 0044B28C 1120002C */  beqz  $t1, .L0044B340
/* 0044B290 2C410003 */   sltiu $at, $v0, 3
/* 0044B294 8F8F8070 */  lw    $t7, %got(RO_100193AC)($gp)
/* 0044B298 03A05025 */  move  $t2, $sp
/* 0044B29C 25EF93AC */  addiu $t7, %lo(RO_100193AC) # addiu $t7, $t7, -0x6c54
/* 0044B2A0 25F90048 */  addiu $t9, $t7, 0x48
.L0044B2A4:
/* 0044B2A4 89E10000 */  lwl   $at, ($t7)
/* 0044B2A8 99E10003 */  lwr   $at, 3($t7)
/* 0044B2AC 25EF000C */  addiu $t7, $t7, 0xc
/* 0044B2B0 A9410000 */  swl   $at, ($t2)
/* 0044B2B4 B9410003 */  swr   $at, 3($t2)
/* 0044B2B8 89E1FFF8 */  lwl   $at, -8($t7)
/* 0044B2BC 99E1FFFB */  lwr   $at, -5($t7)
/* 0044B2C0 254A000C */  addiu $t2, $t2, 0xc
/* 0044B2C4 A941FFF8 */  swl   $at, -8($t2)
/* 0044B2C8 B941FFFB */  swr   $at, -5($t2)
/* 0044B2CC 89E1FFFC */  lwl   $at, -4($t7)
/* 0044B2D0 99E1FFFF */  lwr   $at, -1($t7)
/* 0044B2D4 00000000 */  nop   
/* 0044B2D8 A941FFFC */  swl   $at, -4($t2)
/* 0044B2DC 15F9FFF1 */  bne   $t7, $t9, .L0044B2A4
/* 0044B2E0 B941FFFF */   swr   $at, -1($t2)
/* 0044B2E4 89E10000 */  lwl   $at, ($t7)
/* 0044B2E8 99E10003 */  lwr   $at, 3($t7)
/* 0044B2EC 24080002 */  li    $t0, 2
/* 0044B2F0 A9410000 */  swl   $at, ($t2)
/* 0044B2F4 B9410003 */  swr   $at, 3($t2)
/* 0044B2F8 89F90004 */  lwl   $t9, 4($t7)
/* 0044B2FC 99F90007 */  lwr   $t9, 7($t7)
/* 0044B300 00000000 */  nop   
/* 0044B304 A9590004 */  swl   $t9, 4($t2)
/* 0044B308 B9590007 */  swr   $t9, 7($t2)
/* 0044B30C 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0044B310 8E410000 */  lw    $at, ($s2)
/* 0044B314 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044B318 8FA60008 */  lw    $a2, 8($sp)
/* 0044B31C 8FA50004 */  lw    $a1, 4($sp)
/* 0044B320 8FA40000 */  lw    $a0, ($sp)
/* 0044B324 AFA80054 */  sw    $t0, 0x54($sp)
/* 0044B328 0320F809 */  jalr  $t9
/* 0044B32C AFA10050 */   sw    $at, 0x50($sp)
/* 0044B330 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B334 92C20000 */  lbu   $v0, ($s6)
/* 0044B338 00000000 */  nop   
/* 0044B33C 2C410003 */  sltiu $at, $v0, 3
.L0044B340:
/* 0044B340 1020003C */  beqz  $at, .L0044B434
/* 0044B344 2C410004 */   sltiu $at, $v0, 4
/* 0044B348 8E2D0000 */  lw    $t5, ($s1)
/* 0044B34C 00000000 */  nop   
/* 0044B350 01B07021 */  addu  $t6, $t5, $s0
/* 0044B354 95C90024 */  lhu   $t1, 0x24($t6)
/* 0044B358 00000000 */  nop   
/* 0044B35C 2D380160 */  sltiu $t8, $t1, 0x160
/* 0044B360 13000007 */  beqz  $t8, .L0044B380
/* 0044B364 0009C943 */   sra   $t9, $t1, 5
/* 0044B368 00197880 */  sll   $t7, $t9, 2
/* 0044B36C 03CF5021 */  addu  $t2, $fp, $t7
/* 0044B370 8D4B0000 */  lw    $t3, ($t2)
/* 0044B374 00000000 */  nop   
/* 0044B378 012B6004 */  sllv  $t4, $t3, $t1
/* 0044B37C 29980000 */  slti  $t8, $t4, 0
.L0044B380:
/* 0044B380 1300002C */  beqz  $t8, .L0044B434
/* 0044B384 2C410004 */   sltiu $at, $v0, 4
/* 0044B388 8F8D8070 */  lw    $t5, %got(RO_1001935C)($gp)
/* 0044B38C 03A07825 */  move  $t7, $sp
/* 0044B390 25AD935C */  addiu $t5, %lo(RO_1001935C) # addiu $t5, $t5, -0x6ca4
/* 0044B394 25B90048 */  addiu $t9, $t5, 0x48
.L0044B398:
/* 0044B398 89A10000 */  lwl   $at, ($t5)
/* 0044B39C 99A10003 */  lwr   $at, 3($t5)
/* 0044B3A0 25AD000C */  addiu $t5, $t5, 0xc
/* 0044B3A4 A9E10000 */  swl   $at, ($t7)
/* 0044B3A8 B9E10003 */  swr   $at, 3($t7)
/* 0044B3AC 89A1FFF8 */  lwl   $at, -8($t5)
/* 0044B3B0 99A1FFFB */  lwr   $at, -5($t5)
/* 0044B3B4 25EF000C */  addiu $t7, $t7, 0xc
/* 0044B3B8 A9E1FFF8 */  swl   $at, -8($t7)
/* 0044B3BC B9E1FFFB */  swr   $at, -5($t7)
/* 0044B3C0 89A1FFFC */  lwl   $at, -4($t5)
/* 0044B3C4 99A1FFFF */  lwr   $at, -1($t5)
/* 0044B3C8 00000000 */  nop   
/* 0044B3CC A9E1FFFC */  swl   $at, -4($t7)
/* 0044B3D0 15B9FFF1 */  bne   $t5, $t9, .L0044B398
/* 0044B3D4 B9E1FFFF */   swr   $at, -1($t7)
/* 0044B3D8 89A10000 */  lwl   $at, ($t5)
/* 0044B3DC 99A10003 */  lwr   $at, 3($t5)
/* 0044B3E0 24090002 */  li    $t1, 2
/* 0044B3E4 A9E10000 */  swl   $at, ($t7)
/* 0044B3E8 B9E10003 */  swr   $at, 3($t7)
/* 0044B3EC 89B90004 */  lwl   $t9, 4($t5)
/* 0044B3F0 99B90007 */  lwr   $t9, 7($t5)
/* 0044B3F4 00000000 */  nop   
/* 0044B3F8 A9F90004 */  swl   $t9, 4($t7)
/* 0044B3FC B9F90007 */  swr   $t9, 7($t7)
/* 0044B400 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0044B404 8E410000 */  lw    $at, ($s2)
/* 0044B408 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044B40C 8FA60008 */  lw    $a2, 8($sp)
/* 0044B410 8FA50004 */  lw    $a1, 4($sp)
/* 0044B414 8FA40000 */  lw    $a0, ($sp)
/* 0044B418 AFA90054 */  sw    $t1, 0x54($sp)
/* 0044B41C 0320F809 */  jalr  $t9
/* 0044B420 AFA10050 */   sw    $at, 0x50($sp)
/* 0044B424 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B428 92C20000 */  lbu   $v0, ($s6)
/* 0044B42C 00000000 */  nop   
/* 0044B430 2C410004 */  sltiu $at, $v0, 4
.L0044B434:
/* 0044B434 1020003D */  beqz  $at, .L0044B52C
/* 0044B438 24010001 */   li    $at, 1
/* 0044B43C 8E2C0000 */  lw    $t4, ($s1)
/* 0044B440 00000000 */  nop   
/* 0044B444 01904021 */  addu  $t0, $t4, $s0
/* 0044B448 95180024 */  lhu   $t8, 0x24($t0)
/* 0044B44C 00000000 */  nop   
/* 0044B450 2F0E0160 */  sltiu $t6, $t8, 0x160
/* 0044B454 11C00008 */  beqz  $t6, .L0044B478
/* 0044B458 0018C943 */   sra   $t9, $t8, 5
/* 0044B45C 8F8F8D4C */  lw     $t7, %got(mark4ops)($gp)
/* 0044B460 00196880 */  sll   $t5, $t9, 2
/* 0044B464 01AF5021 */  addu  $t2, $t5, $t7
/* 0044B468 8D4B0000 */  lw    $t3, ($t2)
/* 0044B46C 00000000 */  nop   
/* 0044B470 030B4804 */  sllv  $t1, $t3, $t8
/* 0044B474 292E0000 */  slti  $t6, $t1, 0
.L0044B478:
/* 0044B478 11C0002C */  beqz  $t6, .L0044B52C
/* 0044B47C 24010001 */   li    $at, 1
/* 0044B480 8F888070 */  lw    $t0, %got(RO_1001930C)($gp)
/* 0044B484 03A07825 */  move  $t7, $sp
/* 0044B488 2508930C */  addiu $t0, %lo(RO_1001930C) # addiu $t0, $t0, -0x6cf4
/* 0044B48C 250D0048 */  addiu $t5, $t0, 0x48
.L0044B490:
/* 0044B490 89010000 */  lwl   $at, ($t0)
/* 0044B494 99010003 */  lwr   $at, 3($t0)
/* 0044B498 2508000C */  addiu $t0, $t0, 0xc
/* 0044B49C A9E10000 */  swl   $at, ($t7)
/* 0044B4A0 B9E10003 */  swr   $at, 3($t7)
/* 0044B4A4 8901FFF8 */  lwl   $at, -8($t0)
/* 0044B4A8 9901FFFB */  lwr   $at, -5($t0)
/* 0044B4AC 25EF000C */  addiu $t7, $t7, 0xc
/* 0044B4B0 A9E1FFF8 */  swl   $at, -8($t7)
/* 0044B4B4 B9E1FFFB */  swr   $at, -5($t7)
/* 0044B4B8 8901FFFC */  lwl   $at, -4($t0)
/* 0044B4BC 9901FFFF */  lwr   $at, -1($t0)
/* 0044B4C0 00000000 */  nop   
/* 0044B4C4 A9E1FFFC */  swl   $at, -4($t7)
/* 0044B4C8 150DFFF1 */  bne   $t0, $t5, .L0044B490
/* 0044B4CC B9E1FFFF */   swr   $at, -1($t7)
/* 0044B4D0 89010000 */  lwl   $at, ($t0)
/* 0044B4D4 99010003 */  lwr   $at, 3($t0)
/* 0044B4D8 24180002 */  li    $t8, 2
/* 0044B4DC A9E10000 */  swl   $at, ($t7)
/* 0044B4E0 B9E10003 */  swr   $at, 3($t7)
/* 0044B4E4 890D0004 */  lwl   $t5, 4($t0)
/* 0044B4E8 990D0007 */  lwr   $t5, 7($t0)
/* 0044B4EC 00000000 */  nop   
/* 0044B4F0 A9ED0004 */  swl   $t5, 4($t7)
/* 0044B4F4 B9ED0007 */  swr   $t5, 7($t7)
/* 0044B4F8 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0044B4FC 8E410000 */  lw    $at, ($s2)
/* 0044B500 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044B504 8FA60008 */  lw    $a2, 8($sp)
/* 0044B508 8FA50004 */  lw    $a1, 4($sp)
/* 0044B50C 8FA40000 */  lw    $a0, ($sp)
/* 0044B510 AFB80054 */  sw    $t8, 0x54($sp)
/* 0044B514 0320F809 */  jalr  $t9
/* 0044B518 AFA10050 */   sw    $at, 0x50($sp)
/* 0044B51C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B520 92C20000 */  lbu   $v0, ($s6)
/* 0044B524 00000000 */  nop   
/* 0044B528 24010001 */  li    $at, 1
.L0044B52C:
/* 0044B52C 1041003B */  beq   $v0, $at, .L0044B61C
/* 0044B530 00000000 */   nop   
/* 0044B534 8E290000 */  lw    $t1, ($s1)
/* 0044B538 00000000 */  nop   
/* 0044B53C 01306021 */  addu  $t4, $t1, $s0
/* 0044B540 958E0024 */  lhu   $t6, 0x24($t4)
/* 0044B544 00000000 */  nop   
/* 0044B548 2DD90160 */  sltiu $t9, $t6, 0x160
/* 0044B54C 13200008 */  beqz  $t9, .L0044B570
/* 0044B550 000E6943 */   sra   $t5, $t6, 5
/* 0044B554 8F8F8DC0 */  lw     $t7, %got(c3_ops)($gp)
/* 0044B558 000D4080 */  sll   $t0, $t5, 2
/* 0044B55C 010F5021 */  addu  $t2, $t0, $t7
/* 0044B560 8D4B0000 */  lw    $t3, ($t2)
/* 0044B564 00000000 */  nop   
/* 0044B568 01CBC004 */  sllv  $t8, $t3, $t6
/* 0044B56C 2B190000 */  slti  $t9, $t8, 0
.L0044B570:
/* 0044B570 1320002A */  beqz  $t9, .L0044B61C
/* 0044B574 00000000 */   nop   
/* 0044B578 8F8C8070 */  lw    $t4, %got(RO_100192BC)($gp)
/* 0044B57C 03A07825 */  move  $t7, $sp
/* 0044B580 258C92BC */  addiu $t4, %lo(RO_100192BC) # addiu $t4, $t4, -0x6d44
/* 0044B584 25880048 */  addiu $t0, $t4, 0x48
.L0044B588:
/* 0044B588 89810000 */  lwl   $at, ($t4)
/* 0044B58C 99810003 */  lwr   $at, 3($t4)
/* 0044B590 258C000C */  addiu $t4, $t4, 0xc
/* 0044B594 A9E10000 */  swl   $at, ($t7)
/* 0044B598 B9E10003 */  swr   $at, 3($t7)
/* 0044B59C 8981FFF8 */  lwl   $at, -8($t4)
/* 0044B5A0 9981FFFB */  lwr   $at, -5($t4)
/* 0044B5A4 25EF000C */  addiu $t7, $t7, 0xc
/* 0044B5A8 A9E1FFF8 */  swl   $at, -8($t7)
/* 0044B5AC B9E1FFFB */  swr   $at, -5($t7)
/* 0044B5B0 8981FFFC */  lwl   $at, -4($t4)
/* 0044B5B4 9981FFFF */  lwr   $at, -1($t4)
/* 0044B5B8 00000000 */  nop   
/* 0044B5BC A9E1FFFC */  swl   $at, -4($t7)
/* 0044B5C0 1588FFF1 */  bne   $t4, $t0, .L0044B588
/* 0044B5C4 B9E1FFFF */   swr   $at, -1($t7)
/* 0044B5C8 89810000 */  lwl   $at, ($t4)
/* 0044B5CC 99810003 */  lwr   $at, 3($t4)
/* 0044B5D0 240E0002 */  li    $t6, 2
/* 0044B5D4 A9E10000 */  swl   $at, ($t7)
/* 0044B5D8 B9E10003 */  swr   $at, 3($t7)
/* 0044B5DC 89880004 */  lwl   $t0, 4($t4)
/* 0044B5E0 99880007 */  lwr   $t0, 7($t4)
/* 0044B5E4 00000000 */  nop   
/* 0044B5E8 A9E80004 */  swl   $t0, 4($t7)
/* 0044B5EC B9E80007 */  swr   $t0, 7($t7)
/* 0044B5F0 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0044B5F4 8E410000 */  lw    $at, ($s2)
/* 0044B5F8 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044B5FC 8FA60008 */  lw    $a2, 8($sp)
/* 0044B600 8FA50004 */  lw    $a1, 4($sp)
/* 0044B604 8FA40000 */  lw    $a0, ($sp)
/* 0044B608 AFAE0054 */  sw    $t6, 0x54($sp)
/* 0044B60C 0320F809 */  jalr  $t9
/* 0044B610 AFA10050 */   sw    $at, 0x50($sp)
/* 0044B614 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B618 00000000 */  nop   
.L0044B61C:
/* 0044B61C 26100028 */  addiu $s0, $s0, 0x28
/* 0044B620 1614FF03 */  bne   $s0, $s4, .L0044B230
/* 0044B624 00000000 */   nop   
.L0044B628:
/* 0044B628 8F848C6C */  lw     $a0, %got(binasm_file)($gp)
/* 0044B62C 8F9986AC */  lw    $t9, %call16(eof)($gp)
/* 0044B630 8C840000 */  lw    $a0, ($a0)
/* 0044B634 0320F809 */  jalr  $t9
/* 0044B638 00000000 */   nop   
/* 0044B63C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B640 1440000D */  bnez  $v0, .L0044B678
/* 0044B644 00000000 */   nop   
/* 0044B648 8F988CF0 */  lw     $t8, %got(lastinstr)($gp)
/* 0044B64C 24010018 */  li    $at, 24
/* 0044B650 93180000 */  lbu   $t8, ($t8)
/* 0044B654 00000000 */  nop   
/* 0044B658 1701000D */  bne   $t8, $at, .L0044B690
/* 0044B65C 00000000 */   nop   
/* 0044B660 8F898CFC */  lw     $t1, %got(pendinginstr)($gp)
/* 0044B664 00000000 */  nop   
/* 0044B668 91290000 */  lbu   $t1, ($t1)
/* 0044B66C 00000000 */  nop   
/* 0044B670 15200007 */  bnez  $t1, .L0044B690
/* 0044B674 00000000 */   nop   
.L0044B678:
/* 0044B678 8F9982D0 */  lw    $t9, %call16(traverse_bb)($gp)
/* 0044B67C 00000000 */  nop   
/* 0044B680 0320F809 */  jalr  $t9
/* 0044B684 00000000 */   nop   
/* 0044B688 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B68C 00000000 */  nop   
.L0044B690:
/* 0044B690 8F848C6C */  lw     $a0, %got(binasm_file)($gp)
/* 0044B694 8F9986AC */  lw    $t9, %call16(eof)($gp)
/* 0044B698 8C840000 */  lw    $a0, ($a0)
/* 0044B69C 0320F809 */  jalr  $t9
/* 0044B6A0 00000000 */   nop   
/* 0044B6A4 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B6A8 1040FEC5 */  beqz  $v0, .L0044B1C0
/* 0044B6AC 00000000 */   nop   
/* 0044B6B0 8F998CFC */  lw     $t9, %got(pendinginstr)($gp)
/* 0044B6B4 00000000 */  nop   
/* 0044B6B8 93390000 */  lbu   $t9, ($t9)
/* 0044B6BC 00000000 */  nop   
/* 0044B6C0 1720FEBF */  bnez  $t9, .L0044B1C0
/* 0044B6C4 00000000 */   nop   
/* 0044B6C8 8F8D8B74 */  lw     $t5, %got(is_nonleaf)($gp)
/* 0044B6CC 00000000 */  nop   
/* 0044B6D0 91AD0000 */  lbu   $t5, ($t5)
/* 0044B6D4 00000000 */  nop   
/* 0044B6D8 11A00007 */  beqz  $t5, .L0044B6F8
/* 0044B6DC 00000000 */   nop   
/* 0044B6E0 8F99851C */  lw    $t9, %call16(create_function_table)($gp)
/* 0044B6E4 00000000 */  nop   
/* 0044B6E8 0320F809 */  jalr  $t9
/* 0044B6EC 00000000 */   nop   
/* 0044B6F0 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B6F4 00000000 */  nop   
.L0044B6F8:
/* 0044B6F8 8F9982FC */  lw    $t9, %call16(flush_line_no)($gp)
/* 0044B6FC 00000000 */  nop   
/* 0044B700 0320F809 */  jalr  $t9
/* 0044B704 00000000 */   nop   
/* 0044B708 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B70C 00002025 */  move  $a0, $zero
/* 0044B710 8F9985C4 */  lw    $t9, %call16(definealabel)($gp)
/* 0044B714 24050001 */  li    $a1, 1
/* 0044B718 0320F809 */  jalr  $t9
/* 0044B71C 24060001 */   li    $a2, 1
/* 0044B720 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B724 24040001 */  li    $a0, 1
/* 0044B728 8F9985C4 */  lw    $t9, %call16(definealabel)($gp)
/* 0044B72C 24050001 */  li    $a1, 1
/* 0044B730 0320F809 */  jalr  $t9
/* 0044B734 24060001 */   li    $a2, 1
/* 0044B738 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B73C 24040002 */  li    $a0, 2
/* 0044B740 8F9985C4 */  lw    $t9, %call16(definealabel)($gp)
/* 0044B744 24050001 */  li    $a1, 1
/* 0044B748 0320F809 */  jalr  $t9
/* 0044B74C 24060001 */   li    $a2, 1
/* 0044B750 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B754 24040009 */  li    $a0, 9
/* 0044B758 8F9985C4 */  lw    $t9, %call16(definealabel)($gp)
/* 0044B75C 24050001 */  li    $a1, 1
/* 0044B760 0320F809 */  jalr  $t9
/* 0044B764 24060001 */   li    $a2, 1
/* 0044B768 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B76C 2401FFFF */  li    $at, -1
/* 0044B770 8F828CD8 */  lw     $v0, %got(lastusertextseg)($gp)
/* 0044B774 00000000 */  nop   
/* 0044B778 8C420000 */  lw    $v0, ($v0)
/* 0044B77C 00000000 */  nop   
/* 0044B780 10410012 */  beq   $v0, $at, .L0044B7CC
/* 0044B784 00000000 */   nop   
/* 0044B788 8F938CD4 */  lw     $s3, %got(firstusertextseg)($gp)
/* 0044B78C 24500001 */  addiu $s0, $v0, 1
/* 0044B790 8E730000 */  lw    $s3, ($s3)
/* 0044B794 00000000 */  nop   
/* 0044B798 0053082A */  slt   $at, $v0, $s3
/* 0044B79C 1420000B */  bnez  $at, .L0044B7CC
/* 0044B7A0 02602025 */   move  $a0, $s3
.L0044B7A4:
/* 0044B7A4 8F9985C4 */  lw    $t9, %call16(definealabel)($gp)
/* 0044B7A8 24050001 */  li    $a1, 1
/* 0044B7AC 24060001 */  li    $a2, 1
/* 0044B7B0 0320F809 */  jalr  $t9
/* 0044B7B4 AFA40104 */   sw    $a0, 0x104($sp)
/* 0044B7B8 8FA40104 */  lw    $a0, 0x104($sp)
/* 0044B7BC 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B7C0 24840001 */  addiu $a0, $a0, 1
/* 0044B7C4 1490FFF7 */  bne   $a0, $s0, .L0044B7A4
/* 0044B7C8 00000000 */   nop   
.L0044B7CC:
/* 0044B7CC 8F888D00 */  lw     $t0, %got(severity)($gp)
/* 0044B7D0 00000000 */  nop   
/* 0044B7D4 91080000 */  lbu   $t0, ($t0)
/* 0044B7D8 00000000 */  nop   
/* 0044B7DC 2D010002 */  sltiu $at, $t0, 2
/* 0044B7E0 14200054 */  bnez  $at, .L0044B934
/* 0044B7E4 00000000 */   nop   
/* 0044B7E8 8F828AFC */  lw     $v0, %got(fixup_count)($gp)
/* 0044B7EC 00000000 */  nop   
/* 0044B7F0 8C420000 */  lw    $v0, ($v0)
/* 0044B7F4 00000000 */  nop   
/* 0044B7F8 18400009 */  blez  $v0, .L0044B820
/* 0044B7FC 00000000 */   nop   
/* 0044B800 8F998028 */  lw    $t9, %got(func_0044A7DC)($gp)
/* 0044B804 27A20108 */  addiu $v0, $sp, 0x108
/* 0044B808 2739A7DC */  addiu $t9, %lo(func_0044A7DC) # addiu $t9, $t9, -0x5824
/* 0044B80C 0320F809 */  jalr  $t9
/* 0044B810 00000000 */   nop   
/* 0044B814 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B818 10000046 */  b     .L0044B934
/* 0044B81C 00000000 */   nop   
.L0044B820:
/* 0044B820 10400044 */  beqz  $v0, .L0044B934
/* 0044B824 00000000 */   nop   
/* 0044B828 8F8C8070 */  lw    $t4, %got(RO_1001926C)($gp)
/* 0044B82C 03A05825 */  move  $t3, $sp
/* 0044B830 258C926C */  addiu $t4, %lo(RO_1001926C) # addiu $t4, $t4, -0x6d94
/* 0044B834 258A0048 */  addiu $t2, $t4, 0x48
.L0044B838:
/* 0044B838 89810000 */  lwl   $at, ($t4)
/* 0044B83C 99810003 */  lwr   $at, 3($t4)
/* 0044B840 258C000C */  addiu $t4, $t4, 0xc
/* 0044B844 A9610000 */  swl   $at, ($t3)
/* 0044B848 B9610003 */  swr   $at, 3($t3)
/* 0044B84C 8981FFF8 */  lwl   $at, -8($t4)
/* 0044B850 9981FFFB */  lwr   $at, -5($t4)
/* 0044B854 256B000C */  addiu $t3, $t3, 0xc
/* 0044B858 A961FFF8 */  swl   $at, -8($t3)
/* 0044B85C B961FFFB */  swr   $at, -5($t3)
/* 0044B860 8981FFFC */  lwl   $at, -4($t4)
/* 0044B864 9981FFFF */  lwr   $at, -1($t4)
/* 0044B868 00000000 */  nop   
/* 0044B86C A961FFFC */  swl   $at, -4($t3)
/* 0044B870 158AFFF1 */  bne   $t4, $t2, .L0044B838
/* 0044B874 B961FFFF */   swr   $at, -1($t3)
/* 0044B878 89810000 */  lwl   $at, ($t4)
/* 0044B87C 99810003 */  lwr   $at, 3($t4)
/* 0044B880 8F8E8070 */  lw    $t6, %got(RO_1001921C)($gp)
/* 0044B884 A9610000 */  swl   $at, ($t3)
/* 0044B888 B9610003 */  swr   $at, 3($t3)
/* 0044B88C 898A0004 */  lwl   $t2, 4($t4)
/* 0044B890 998A0007 */  lwr   $t2, 7($t4)
/* 0044B894 25CE921C */  addiu $t6, %lo(RO_1001921C) # addiu $t6, $t6, -0x6de4
/* 0044B898 A96A0004 */  swl   $t2, 4($t3)
/* 0044B89C 25C90048 */  addiu $t1, $t6, 0x48
/* 0044B8A0 03A0C825 */  move  $t9, $sp
/* 0044B8A4 B96A0007 */  swr   $t2, 7($t3)
.L0044B8A8:
/* 0044B8A8 89C10000 */  lwl   $at, ($t6)
/* 0044B8AC 99C10003 */  lwr   $at, 3($t6)
/* 0044B8B0 25CE000C */  addiu $t6, $t6, 0xc
/* 0044B8B4 AB210050 */  swl   $at, 0x50($t9)
/* 0044B8B8 BB210053 */  swr   $at, 0x53($t9)
/* 0044B8BC 89C1FFF8 */  lwl   $at, -8($t6)
/* 0044B8C0 99C1FFFB */  lwr   $at, -5($t6)
/* 0044B8C4 2739000C */  addiu $t9, $t9, 0xc
/* 0044B8C8 AB210048 */  swl   $at, 0x48($t9)
/* 0044B8CC BB21004B */  swr   $at, 0x4b($t9)
/* 0044B8D0 89C1FFFC */  lwl   $at, -4($t6)
/* 0044B8D4 99C1FFFF */  lwr   $at, -1($t6)
/* 0044B8D8 00000000 */  nop   
/* 0044B8DC AB21004C */  swl   $at, 0x4c($t9)
/* 0044B8E0 15C9FFF1 */  bne   $t6, $t1, .L0044B8A8
/* 0044B8E4 BB21004F */   swr   $at, 0x4f($t9)
/* 0044B8E8 89C10000 */  lwl   $at, ($t6)
/* 0044B8EC 99C10003 */  lwr   $at, 3($t6)
/* 0044B8F0 240D0755 */  li    $t5, 1877
/* 0044B8F4 AB210050 */  swl   $at, 0x50($t9)
/* 0044B8F8 BB210053 */  swr   $at, 0x53($t9)
/* 0044B8FC 89C90004 */  lwl   $t1, 4($t6)
/* 0044B900 99C90007 */  lwr   $t1, 7($t6)
/* 0044B904 00000000 */  nop   
/* 0044B908 AB290054 */  swl   $t1, 0x54($t9)
/* 0044B90C BB290057 */  swr   $t1, 0x57($t9)
/* 0044B910 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0044B914 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044B918 8FA60008 */  lw    $a2, 8($sp)
/* 0044B91C 8FA50004 */  lw    $a1, 4($sp)
/* 0044B920 8FA40000 */  lw    $a0, ($sp)
/* 0044B924 0320F809 */  jalr  $t9
/* 0044B928 AFAD00A0 */   sw    $t5, 0xa0($sp)
/* 0044B92C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B930 00000000 */  nop   
.L0044B934:
/* 0044B934 8F888C54 */  lw     $t0, %got(use_ddopt_info)($gp)
/* 0044B938 00000000 */  nop   
/* 0044B93C 91080000 */  lbu   $t0, ($t0)
/* 0044B940 00000000 */  nop   
/* 0044B944 11000007 */  beqz  $t0, .L0044B964
/* 0044B948 00000000 */   nop   
/* 0044B94C 8F9987F0 */  lw    $t9, %call16(dd_close)($gp)
/* 0044B950 00000000 */  nop   
/* 0044B954 0320F809 */  jalr  $t9
/* 0044B958 00000000 */   nop   
/* 0044B95C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B960 00000000 */  nop   
.L0044B964:
/* 0044B964 8F8F8D00 */  lw     $t7, %got(severity)($gp)
/* 0044B968 00000000 */  nop   
/* 0044B96C 91EF0000 */  lbu   $t7, ($t7)
/* 0044B970 00000000 */  nop   
/* 0044B974 2DE10002 */  sltiu $at, $t7, 2
/* 0044B978 14200010 */  bnez  $at, .L0044B9BC
/* 0044B97C 00000000 */   nop   
/* 0044B980 8F8A8CC8 */  lw     $t2, %got(elf_flag)($gp)
/* 0044B984 00000000 */  nop   
/* 0044B988 914A0000 */  lbu   $t2, ($t2)
/* 0044B98C 00000000 */  nop   
/* 0044B990 15400004 */  bnez  $t2, .L0044B9A4
/* 0044B994 00000000 */   nop   
/* 0044B998 8F818CD0 */  lw     $at, %got(nonzero_scnbase)($gp)
/* 0044B99C 240C0001 */  li    $t4, 1
/* 0044B9A0 A02C0000 */  sb    $t4, ($at)
.L0044B9A4:
/* 0044B9A4 8F9984C4 */  lw    $t9, %call16(wrobj)($gp)
/* 0044B9A8 00000000 */  nop   
/* 0044B9AC 0320F809 */  jalr  $t9
/* 0044B9B0 00000000 */   nop   
/* 0044B9B4 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B9B8 00000000 */  nop   
.L0044B9BC:
/* 0044B9BC 8F8B8B08 */  lw     $t3, %got(verbose)($gp)
/* 0044B9C0 00000000 */  nop   
/* 0044B9C4 916B0000 */  lbu   $t3, ($t3)
/* 0044B9C8 00000000 */  nop   
/* 0044B9CC 11600008 */  beqz  $t3, .L0044B9F0
/* 0044B9D0 00000000 */   nop   
/* 0044B9D4 8F848A10 */  lw     $a0, %got(err)($gp)
/* 0044B9D8 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 0044B9DC 8C840000 */  lw    $a0, ($a0)
/* 0044B9E0 0320F809 */  jalr  $t9
/* 0044B9E4 00000000 */   nop   
/* 0044B9E8 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044B9EC 00000000 */  nop   
.L0044B9F0:
/* 0044B9F0 8F828D00 */  lw     $v0, %got(severity)($gp)
/* 0044B9F4 00000000 */  nop   
/* 0044B9F8 90420000 */  lbu   $v0, ($v0)
/* 0044B9FC 00000000 */  nop   
/* 0044BA00 2C410002 */  sltiu $at, $v0, 2
/* 0044BA04 14200009 */  bnez  $at, .L0044BA2C
/* 0044BA08 00000000 */   nop   
/* 0044BA0C 8F988C70 */  lw     $t8, %got(warnexitflag)($gp)
/* 0044BA10 2C410003 */  sltiu $at, $v0, 3
/* 0044BA14 93180000 */  lbu   $t8, ($t8)
/* 0044BA18 00000000 */  nop   
/* 0044BA1C 13000009 */  beqz  $t8, .L0044BA44
/* 0044BA20 00000000 */   nop   
/* 0044BA24 10200008 */  beqz  $at, .L0044BA48
/* 0044BA28 00001025 */   move  $v0, $zero
.L0044BA2C:
/* 0044BA2C 8F998688 */  lw    $t9, %call16(exit)($gp)
/* 0044BA30 24040001 */  li    $a0, 1
/* 0044BA34 0320F809 */  jalr  $t9
/* 0044BA38 00000000 */   nop   
/* 0044BA3C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044BA40 00000000 */  nop   
.L0044BA44:
/* 0044BA44 00001025 */  move  $v0, $zero
.L0044BA48:
/* 0044BA48 8FBF00D4 */  lw    $ra, 0xd4($sp)
/* 0044BA4C 8FB000AC */  lw    $s0, 0xac($sp)
/* 0044BA50 8FB100B0 */  lw    $s1, 0xb0($sp)
/* 0044BA54 8FB200B4 */  lw    $s2, 0xb4($sp)
/* 0044BA58 8FB300B8 */  lw    $s3, 0xb8($sp)
/* 0044BA5C 8FB400BC */  lw    $s4, 0xbc($sp)
/* 0044BA60 8FB500C0 */  lw    $s5, 0xc0($sp)
/* 0044BA64 8FB600C4 */  lw    $s6, 0xc4($sp)
/* 0044BA68 8FB700C8 */  lw    $s7, 0xc8($sp)
/* 0044BA6C 8FBE00D0 */  lw    $fp, 0xd0($sp)
/* 0044BA70 03E00008 */  jr    $ra
/* 0044BA74 27BD0108 */   addiu $sp, $sp, 0x108
    .type main, @function
    .size main, .-main
    .end main
)"");
