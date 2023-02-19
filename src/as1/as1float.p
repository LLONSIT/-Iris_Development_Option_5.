__asm__(R""(
.macro glabel label
    .global \label
    .balign 4
    \label:
.endm




.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.text
glabel emitnop
    .ent emitnop
    # 0041E40C func_0041E40C
    # 00450BEC parseaf
    # 00452968 parseafrr
    # 004531B8 parseafa
    # 004594BC parsestmt
    # 0045E218 setup_tempreg
    # 004604C0 do_parseafra
    # 00465E20 genmul
    # 00466908 gendmul
    # 0046743C func_0046743C
    # 00467C5C gendiv
    # 00468320 func_00468320
    # 00468AAC genddiv
    # 00469164 func_00469164
    # 00469314 func_00469314
/* 0043A9C0 3C1C0FBF */  .cpload $t9
/* 0043A9C4 279CF8A0 */  
/* 0043A9C8 0399E021 */  
/* 0043A9CC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0043A9D0 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0043A9D4 AFBC0038 */  sw    $gp, 0x38($sp)
/* 0043A9D8 AFB50034 */  sw    $s5, 0x34($sp)
/* 0043A9DC AFB40030 */  sw    $s4, 0x30($sp)
/* 0043A9E0 AFB3002C */  sw    $s3, 0x2c($sp)
/* 0043A9E4 AFB20028 */  sw    $s2, 0x28($sp)
/* 0043A9E8 AFB10024 */  sw    $s1, 0x24($sp)
/* 0043A9EC 18800024 */  blez  $a0, .L0043AA80
/* 0043A9F0 AFB00020 */   sw    $s0, 0x20($sp)
/* 0043A9F4 8F948B40 */  lw     $s4, %got(pinstruction)($gp)
/* 0043A9F8 8F928C74 */  lw     $s2, %got(nopinserted)($gp)
/* 0043A9FC 8F908BB0 */  lw     $s0, %got(bbindex)($gp)
/* 0043AA00 24110001 */  li    $s1, 1
/* 0043AA04 24930001 */  addiu $s3, $a0, 1
/* 0043AA08 24150028 */  li    $s5, 40
.L0043AA0C:
/* 0043AA0C 8E0E0000 */  lw    $t6, ($s0)
/* 0043AA10 02002025 */  move  $a0, $s0
/* 0043AA14 25CF0001 */  addiu $t7, $t6, 1
/* 0043AA18 AE0F0000 */  sw    $t7, ($s0)
/* 0043AA1C 8F9982DC */  lw    $t9, %call16(initbb)($gp)
/* 0043AA20 00000000 */  nop   
/* 0043AA24 0320F809 */  jalr  $t9
/* 0043AA28 00000000 */   nop   
/* 0043AA2C 8E090000 */  lw    $t1, ($s0)
/* 0043AA30 8E580000 */  lw    $t8, ($s2)
/* 0043AA34 01350019 */  multu $t1, $s5
/* 0043AA38 8FBC0038 */  lw    $gp, 0x38($sp)
/* 0043AA3C 27190001 */  addiu $t9, $t8, 1
/* 0043AA40 8E880000 */  lw    $t0, ($s4)
/* 0043AA44 AE590000 */  sw    $t9, ($s2)
/* 0043AA48 8F9982EC */  lw    $t9, %call16(fill_inst)($gp)
/* 0043AA4C 24040048 */  li    $a0, 72
/* 0043AA50 24050048 */  li    $a1, 72
/* 0043AA54 24060048 */  li    $a2, 72
/* 0043AA58 24070001 */  li    $a3, 1
/* 0043AA5C AFA00014 */  sw    $zero, 0x14($sp)
/* 0043AA60 00005012 */  mflo  $t2
/* 0043AA64 010A5821 */  addu  $t3, $t0, $t2
/* 0043AA68 0320F809 */  jalr  $t9
/* 0043AA6C AFAB0010 */   sw    $t3, 0x10($sp)
/* 0043AA70 8FBC0038 */  lw    $gp, 0x38($sp)
/* 0043AA74 26310001 */  addiu $s1, $s1, 1
/* 0043AA78 1633FFE4 */  bne   $s1, $s3, .L0043AA0C
/* 0043AA7C 00000000 */   nop   
.L0043AA80:
/* 0043AA80 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0043AA84 8FB00020 */  lw    $s0, 0x20($sp)
/* 0043AA88 8FB10024 */  lw    $s1, 0x24($sp)
/* 0043AA8C 8FB20028 */  lw    $s2, 0x28($sp)
/* 0043AA90 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0043AA94 8FB40030 */  lw    $s4, 0x30($sp)
/* 0043AA98 8FB50034 */  lw    $s5, 0x34($sp)
/* 0043AA9C 03E00008 */  jr    $ra
/* 0043AAA0 27BD0040 */   addiu $sp, $sp, 0x40

    .type emitnop, @function
    .size emitnop, .-emitnop
    .end emitnop

glabel emitalu3
    .ent emitalu3
    # 00421544 func_00421544
    # 0043E3CC loadimmed
    # 004509B4 restore_gp
    # 00450B48 init_cpalias
    # 00451814 parseafrrl
    # 00452968 parseafrr
    # 004531B8 parseafa
    # 0045862C parsecpload
    # 00458880 parsecpadd
    # 00458930 parsecprestore
    # 004591BC parse_dli_dla
    # 0045E218 setup_tempreg
    # 0045F020 is_gp_relative
    # 0045F110 genfpmultiple
    # 004604C0 do_parseafra
    # 0046159C gendouble
    # 00462320 func_00462320
    # 004638F8 func_004638F8
    # 00464528 parseafra
    # 00465CB4 smul
    # 00465E20 genmul
    # 0046679C sdmul
    # 00466908 gendmul
    # 0046743C func_0046743C
    # 00467C5C gendiv
    # 00468320 func_00468320
    # 00468AAC genddiv
    # 00469314 func_00469314
    # 00469650 func_00469650
    # 00469970 func_00469970
    # 00469CF8 parseafrrr
/* 0043AAA4 3C1C0FBF */  .cpload $t9
/* 0043AAA8 279CF7BC */  
/* 0043AAAC 0399E021 */  
/* 0043AAB0 27BDFF48 */  addiu $sp, $sp, -0xb8
/* 0043AAB4 AFA400B8 */  sw    $a0, 0xb8($sp)
/* 0043AAB8 97AE00BA */  lhu   $t6, 0xba($sp)
/* 0043AABC AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 0043AAC0 2DCF0160 */  sltiu $t7, $t6, 0x160
/* 0043AAC4 AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 0043AAC8 AFA500BC */  sw    $a1, 0xbc($sp)
/* 0043AACC AFA600C0 */  sw    $a2, 0xc0($sp)
/* 0043AAD0 11E00009 */  beqz  $t7, .L0043AAF8
/* 0043AAD4 AFA700C4 */   sw    $a3, 0xc4($sp)
/* 0043AAD8 8F888D34 */  lw     $t0, %got(alu3ops)($gp)
/* 0043AADC 000EC143 */  sra   $t8, $t6, 5
/* 0043AAE0 0018C880 */  sll   $t9, $t8, 2
/* 0043AAE4 03284821 */  addu  $t1, $t9, $t0
/* 0043AAE8 8D2A0000 */  lw    $t2, ($t1)
/* 0043AAEC 00000000 */  nop   
/* 0043AAF0 01CA5804 */  sllv  $t3, $t2, $t6
/* 0043AAF4 296F0000 */  slti  $t7, $t3, 0
.L0043AAF8:
/* 0043AAF8 15E00043 */  bnez  $t7, .L0043AC08
/* 0043AAFC 03A05825 */   move  $t3, $sp
/* 0043AB00 8F8D806C */  lw    $t5, %got(RO_10017220)($gp)
/* 0043AB04 03A04025 */  move  $t0, $sp
/* 0043AB08 25AD7220 */  addiu $t5, %lo(RO_10017220) # addiu $t5, $t5, 0x7220
/* 0043AB0C 25B90048 */  addiu $t9, $t5, 0x48
.L0043AB10:
/* 0043AB10 89A10000 */  lwl   $at, ($t5)
/* 0043AB14 99A10003 */  lwr   $at, 3($t5)
/* 0043AB18 25AD000C */  addiu $t5, $t5, 0xc
/* 0043AB1C A9010000 */  swl   $at, ($t0)
/* 0043AB20 B9010003 */  swr   $at, 3($t0)
/* 0043AB24 89A1FFF8 */  lwl   $at, -8($t5)
/* 0043AB28 99A1FFFB */  lwr   $at, -5($t5)
/* 0043AB2C 2508000C */  addiu $t0, $t0, 0xc
/* 0043AB30 A901FFF8 */  swl   $at, -8($t0)
/* 0043AB34 B901FFFB */  swr   $at, -5($t0)
/* 0043AB38 89A1FFFC */  lwl   $at, -4($t5)
/* 0043AB3C 99A1FFFF */  lwr   $at, -1($t5)
/* 0043AB40 00000000 */  nop   
/* 0043AB44 A901FFFC */  swl   $at, -4($t0)
/* 0043AB48 15B9FFF1 */  bne   $t5, $t9, .L0043AB10
/* 0043AB4C B901FFFF */   swr   $at, -1($t0)
/* 0043AB50 89A10000 */  lwl   $at, ($t5)
/* 0043AB54 99A10003 */  lwr   $at, 3($t5)
/* 0043AB58 8F89806C */  lw    $t1, %got(RO_100171D0)($gp)
/* 0043AB5C A9010000 */  swl   $at, ($t0)
/* 0043AB60 B9010003 */  swr   $at, 3($t0)
/* 0043AB64 89B90004 */  lwl   $t9, 4($t5)
/* 0043AB68 99B90007 */  lwr   $t9, 7($t5)
/* 0043AB6C 252971D0 */  addiu $t1, %lo(RO_100171D0) # addiu $t1, $t1, 0x71d0
/* 0043AB70 A9190004 */  swl   $t9, 4($t0)
/* 0043AB74 252E0048 */  addiu $t6, $t1, 0x48
/* 0043AB78 B9190007 */  swr   $t9, 7($t0)
.L0043AB7C:
/* 0043AB7C 89210000 */  lwl   $at, ($t1)
/* 0043AB80 99210003 */  lwr   $at, 3($t1)
/* 0043AB84 2529000C */  addiu $t1, $t1, 0xc
/* 0043AB88 A9610050 */  swl   $at, 0x50($t3)
/* 0043AB8C B9610053 */  swr   $at, 0x53($t3)
/* 0043AB90 8921FFF8 */  lwl   $at, -8($t1)
/* 0043AB94 9921FFFB */  lwr   $at, -5($t1)
/* 0043AB98 256B000C */  addiu $t3, $t3, 0xc
/* 0043AB9C A9610048 */  swl   $at, 0x48($t3)
/* 0043ABA0 B961004B */  swr   $at, 0x4b($t3)
/* 0043ABA4 8921FFFC */  lwl   $at, -4($t1)
/* 0043ABA8 9921FFFF */  lwr   $at, -1($t1)
/* 0043ABAC 00000000 */  nop   
/* 0043ABB0 A961004C */  swl   $at, 0x4c($t3)
/* 0043ABB4 152EFFF1 */  bne   $t1, $t6, .L0043AB7C
/* 0043ABB8 B961004F */   swr   $at, 0x4f($t3)
/* 0043ABBC 89210000 */  lwl   $at, ($t1)
/* 0043ABC0 99210003 */  lwr   $at, 3($t1)
/* 0043ABC4 240C00B8 */  li    $t4, 184
/* 0043ABC8 A9610050 */  swl   $at, 0x50($t3)
/* 0043ABCC B9610053 */  swr   $at, 0x53($t3)
/* 0043ABD0 892E0004 */  lwl   $t6, 4($t1)
/* 0043ABD4 992E0007 */  lwr   $t6, 7($t1)
/* 0043ABD8 00000000 */  nop   
/* 0043ABDC A96E0054 */  swl   $t6, 0x54($t3)
/* 0043ABE0 B96E0057 */  swr   $t6, 0x57($t3)
/* 0043ABE4 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043ABE8 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043ABEC 8FA60008 */  lw    $a2, 8($sp)
/* 0043ABF0 8FA50004 */  lw    $a1, 4($sp)
/* 0043ABF4 8FA40000 */  lw    $a0, ($sp)
/* 0043ABF8 0320F809 */  jalr  $t9
/* 0043ABFC AFAC00A0 */   sw    $t4, 0xa0($sp)
/* 0043AC00 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043AC04 00000000 */  nop   
.L0043AC08:
/* 0043AC08 8F848BB0 */  lw     $a0, %got(bbindex)($gp)
/* 0043AC0C 00000000 */  nop   
/* 0043AC10 8C8F0000 */  lw    $t7, ($a0)
/* 0043AC14 00000000 */  nop   
/* 0043AC18 25F80001 */  addiu $t8, $t7, 1
/* 0043AC1C AC980000 */  sw    $t8, ($a0)
/* 0043AC20 8F9982DC */  lw    $t9, %call16(initbb)($gp)
/* 0043AC24 00000000 */  nop   
/* 0043AC28 0320F809 */  jalr  $t9
/* 0043AC2C 00000000 */   nop   
/* 0043AC30 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043AC34 93A400BF */  lbu   $a0, 0xbf($sp)
/* 0043AC38 8F8D8BB0 */  lw     $t5, %got(bbindex)($gp)
/* 0043AC3C 8F998B40 */  lw     $t9, %got(pinstruction)($gp)
/* 0043AC40 8DAD0000 */  lw    $t5, ($t5)
/* 0043AC44 8F390000 */  lw    $t9, ($t9)
/* 0043AC48 000D4080 */  sll   $t0, $t5, 2
/* 0043AC4C 010D4021 */  addu  $t0, $t0, $t5
/* 0043AC50 000840C0 */  sll   $t0, $t0, 3
/* 0043AC54 03285021 */  addu  $t2, $t9, $t0
/* 0043AC58 8F9982EC */  lw    $t9, %call16(fill_inst)($gp)
/* 0043AC5C 93A500C3 */  lbu   $a1, 0xc3($sp)
/* 0043AC60 93A600C7 */  lbu   $a2, 0xc7($sp)
/* 0043AC64 97A700BA */  lhu   $a3, 0xba($sp)
/* 0043AC68 AFAA0010 */  sw    $t2, 0x10($sp)
/* 0043AC6C 0320F809 */  jalr  $t9
/* 0043AC70 AFA00014 */   sw    $zero, 0x14($sp)
/* 0043AC74 97AE00BA */  lhu   $t6, 0xba($sp)
/* 0043AC78 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043AC7C 2DC90160 */  sltiu $t1, $t6, 0x160
/* 0043AC80 11200008 */  beqz  $t1, .L0043ACA4
/* 0043AC84 000E5943 */   sra   $t3, $t6, 5
/* 0043AC88 8F8F8D54 */  lw     $t7, %got(hilo_defs)($gp)
/* 0043AC8C 000B6080 */  sll   $t4, $t3, 2
/* 0043AC90 018FC021 */  addu  $t8, $t4, $t7
/* 0043AC94 8F0D0000 */  lw    $t5, ($t8)
/* 0043AC98 00000000 */  nop   
/* 0043AC9C 01CDC804 */  sllv  $t9, $t5, $t6
/* 0043ACA0 2B290000 */  slti  $t1, $t9, 0
.L0043ACA4:
/* 0043ACA4 11200007 */  beqz  $t1, .L0043ACC4
/* 0043ACA8 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 0043ACAC 8F8A8BB0 */  lw     $t2, %got(bbindex)($gp)
/* 0043ACB0 8F818C24 */  lw     $at, %got(pre_reorder_peepholes)($gp)
/* 0043ACB4 8D4A0000 */  lw    $t2, ($t2)
/* 0043ACB8 00000000 */  nop   
/* 0043ACBC AC2A0010 */  sw    $t2, 0x10($at)
/* 0043ACC0 8FBF00B4 */  lw    $ra, 0xb4($sp)
.L0043ACC4:
/* 0043ACC4 27BD00B8 */  addiu $sp, $sp, 0xb8
/* 0043ACC8 03E00008 */  jr    $ra
/* 0043ACCC 00000000 */   nop   

    .type emitalu3, @function
    .size emitalu3, .-emitalu3
    .end emitalu3

glabel emitalui
    .ent emitalui
    # 00421544 func_00421544
    # 004228B8 ll_load_immed
    # 0043B6C4 func_0043B6C4
    # 0043CB04 emitloadstore
    # 0043E3CC loadimmed
    # 004509B4 restore_gp
    # 0045102C parseafri
    # 00451814 parseafrrl
    # 004531B8 parseafa
    # 0045862C parsecpload
    # 00458930 parsecprestore
    # 004591BC parse_dli_dla
    # 0045E218 setup_tempreg
    # 0045F110 genfpmultiple
    # 004604C0 do_parseafra
    # 0046159C gendouble
    # 00462320 func_00462320
    # 004638F8 func_004638F8
    # 00464528 parseafra
    # 0046743C func_0046743C
    # 00468320 func_00468320
    # 00468AAC genddiv
    # 00469314 func_00469314
    # 00469650 func_00469650
    # 00469970 func_00469970
    # 00469CF8 parseafrrr
/* 0043ACD0 3C1C0FBF */  .cpload $t9
/* 0043ACD4 279CF590 */  
/* 0043ACD8 0399E021 */  
/* 0043ACDC 27BDFF48 */  addiu $sp, $sp, -0xb8
/* 0043ACE0 AFA400B8 */  sw    $a0, 0xb8($sp)
/* 0043ACE4 97AE00BA */  lhu   $t6, 0xba($sp)
/* 0043ACE8 8F8F8D18 */  lw     $t7, %got(opcodeformat)($gp)
/* 0043ACEC AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 0043ACF0 AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 0043ACF4 AFB000AC */  sw    $s0, 0xac($sp)
/* 0043ACF8 AFA500BC */  sw    $a1, 0xbc($sp)
/* 0043ACFC AFA600C0 */  sw    $a2, 0xc0($sp)
/* 0043AD00 01CFC021 */  addu  $t8, $t6, $t7
/* 0043AD04 93190000 */  lbu   $t9, ($t8)
/* 0043AD08 00E08025 */  move  $s0, $a3
/* 0043AD0C 13200043 */  beqz  $t9, .L0043AE1C
/* 0043AD10 03A07825 */   move  $t7, $sp
/* 0043AD14 8F88806C */  lw    $t0, %got(RO_10017400)($gp)
/* 0043AD18 03A05825 */  move  $t3, $sp
/* 0043AD1C 25087400 */  addiu $t0, %lo(RO_10017400) # addiu $t0, $t0, 0x7400
/* 0043AD20 250A0048 */  addiu $t2, $t0, 0x48
.L0043AD24:
/* 0043AD24 89010000 */  lwl   $at, ($t0)
/* 0043AD28 99010003 */  lwr   $at, 3($t0)
/* 0043AD2C 2508000C */  addiu $t0, $t0, 0xc
/* 0043AD30 A9610000 */  swl   $at, ($t3)
/* 0043AD34 B9610003 */  swr   $at, 3($t3)
/* 0043AD38 8901FFF8 */  lwl   $at, -8($t0)
/* 0043AD3C 9901FFFB */  lwr   $at, -5($t0)
/* 0043AD40 256B000C */  addiu $t3, $t3, 0xc
/* 0043AD44 A961FFF8 */  swl   $at, -8($t3)
/* 0043AD48 B961FFFB */  swr   $at, -5($t3)
/* 0043AD4C 8901FFFC */  lwl   $at, -4($t0)
/* 0043AD50 9901FFFF */  lwr   $at, -1($t0)
/* 0043AD54 00000000 */  nop   
/* 0043AD58 A961FFFC */  swl   $at, -4($t3)
/* 0043AD5C 150AFFF1 */  bne   $t0, $t2, .L0043AD24
/* 0043AD60 B961FFFF */   swr   $at, -1($t3)
/* 0043AD64 89010000 */  lwl   $at, ($t0)
/* 0043AD68 99010003 */  lwr   $at, 3($t0)
/* 0043AD6C 8F8C806C */  lw    $t4, %got(RO_100173B0)($gp)
/* 0043AD70 A9610000 */  swl   $at, ($t3)
/* 0043AD74 B9610003 */  swr   $at, 3($t3)
/* 0043AD78 890A0004 */  lwl   $t2, 4($t0)
/* 0043AD7C 990A0007 */  lwr   $t2, 7($t0)
/* 0043AD80 258C73B0 */  addiu $t4, %lo(RO_100173B0) # addiu $t4, $t4, 0x73b0
/* 0043AD84 A96A0004 */  swl   $t2, 4($t3)
/* 0043AD88 258E0048 */  addiu $t6, $t4, 0x48
/* 0043AD8C B96A0007 */  swr   $t2, 7($t3)
.L0043AD90:
/* 0043AD90 89810000 */  lwl   $at, ($t4)
/* 0043AD94 99810003 */  lwr   $at, 3($t4)
/* 0043AD98 258C000C */  addiu $t4, $t4, 0xc
/* 0043AD9C A9E10050 */  swl   $at, 0x50($t7)
/* 0043ADA0 B9E10053 */  swr   $at, 0x53($t7)
/* 0043ADA4 8981FFF8 */  lwl   $at, -8($t4)
/* 0043ADA8 9981FFFB */  lwr   $at, -5($t4)
/* 0043ADAC 25EF000C */  addiu $t7, $t7, 0xc
/* 0043ADB0 A9E10048 */  swl   $at, 0x48($t7)
/* 0043ADB4 B9E1004B */  swr   $at, 0x4b($t7)
/* 0043ADB8 8981FFFC */  lwl   $at, -4($t4)
/* 0043ADBC 9981FFFF */  lwr   $at, -1($t4)
/* 0043ADC0 00000000 */  nop   
/* 0043ADC4 A9E1004C */  swl   $at, 0x4c($t7)
/* 0043ADC8 158EFFF1 */  bne   $t4, $t6, .L0043AD90
/* 0043ADCC B9E1004F */   swr   $at, 0x4f($t7)
/* 0043ADD0 89810000 */  lwl   $at, ($t4)
/* 0043ADD4 99810003 */  lwr   $at, 3($t4)
/* 0043ADD8 241800D5 */  li    $t8, 213
/* 0043ADDC A9E10050 */  swl   $at, 0x50($t7)
/* 0043ADE0 B9E10053 */  swr   $at, 0x53($t7)
/* 0043ADE4 898E0004 */  lwl   $t6, 4($t4)
/* 0043ADE8 998E0007 */  lwr   $t6, 7($t4)
/* 0043ADEC 00000000 */  nop   
/* 0043ADF0 A9EE0054 */  swl   $t6, 0x54($t7)
/* 0043ADF4 B9EE0057 */  swr   $t6, 0x57($t7)
/* 0043ADF8 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043ADFC 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043AE00 8FA60008 */  lw    $a2, 8($sp)
/* 0043AE04 8FA50004 */  lw    $a1, 4($sp)
/* 0043AE08 8FA40000 */  lw    $a0, ($sp)
/* 0043AE0C 0320F809 */  jalr  $t9
/* 0043AE10 AFB800A0 */   sw    $t8, 0xa0($sp)
/* 0043AE14 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043AE18 00000000 */  nop   
.L0043AE1C:
/* 0043AE1C 97B900BA */  lhu   $t9, 0xba($sp)
/* 0043AE20 34018000 */  li    $at, 32768
/* 0043AE24 2729FFC0 */  addiu $t1, $t9, -0x40
/* 0043AE28 2D2A0020 */  sltiu $t2, $t1, 0x20
/* 0043AE2C 000A4023 */  negu  $t0, $t2
/* 0043AE30 310B01E0 */  andi  $t3, $t0, 0x1e0
/* 0043AE34 012B6804 */  sllv  $t5, $t3, $t1
/* 0043AE38 05A1004A */  bgez  $t5, .L0043AF64
/* 0043AE3C 0201082A */   slt   $at, $s0, $at
/* 0043AE40 3C010001 */  lui   $at, 1
/* 0043AE44 0201082A */  slt   $at, $s0, $at
/* 0043AE48 10200003 */  beqz  $at, .L0043AE58
/* 0043AE4C 03A05825 */   move  $t3, $sp
/* 0043AE50 0601008E */  bgez  $s0, .L0043B08C
/* 0043AE54 00000000 */   nop   
.L0043AE58:
/* 0043AE58 8F8E806C */  lw    $t6, %got(RO_10017360)($gp)
/* 0043AE5C 03A0C025 */  move  $t8, $sp
/* 0043AE60 25CE7360 */  addiu $t6, %lo(RO_10017360) # addiu $t6, $t6, 0x7360
/* 0043AE64 25CF0048 */  addiu $t7, $t6, 0x48
.L0043AE68:
/* 0043AE68 89C10000 */  lwl   $at, ($t6)
/* 0043AE6C 99C10003 */  lwr   $at, 3($t6)
/* 0043AE70 25CE000C */  addiu $t6, $t6, 0xc
/* 0043AE74 AB010000 */  swl   $at, ($t8)
/* 0043AE78 BB010003 */  swr   $at, 3($t8)
/* 0043AE7C 89C1FFF8 */  lwl   $at, -8($t6)
/* 0043AE80 99C1FFFB */  lwr   $at, -5($t6)
/* 0043AE84 2718000C */  addiu $t8, $t8, 0xc
/* 0043AE88 AB01FFF8 */  swl   $at, -8($t8)
/* 0043AE8C BB01FFFB */  swr   $at, -5($t8)
/* 0043AE90 89C1FFFC */  lwl   $at, -4($t6)
/* 0043AE94 99C1FFFF */  lwr   $at, -1($t6)
/* 0043AE98 00000000 */  nop   
/* 0043AE9C AB01FFFC */  swl   $at, -4($t8)
/* 0043AEA0 15CFFFF1 */  bne   $t6, $t7, .L0043AE68
/* 0043AEA4 BB01FFFF */   swr   $at, -1($t8)
/* 0043AEA8 89C10000 */  lwl   $at, ($t6)
/* 0043AEAC 99C10003 */  lwr   $at, 3($t6)
/* 0043AEB0 8F99806C */  lw    $t9, %got(RO_10017310)($gp)
/* 0043AEB4 AB010000 */  swl   $at, ($t8)
/* 0043AEB8 BB010003 */  swr   $at, 3($t8)
/* 0043AEBC 89CF0004 */  lwl   $t7, 4($t6)
/* 0043AEC0 99CF0007 */  lwr   $t7, 7($t6)
/* 0043AEC4 27397310 */  addiu $t9, %lo(RO_10017310) # addiu $t9, $t9, 0x7310
/* 0043AEC8 AB0F0004 */  swl   $t7, 4($t8)
/* 0043AECC 27280048 */  addiu $t0, $t9, 0x48
/* 0043AED0 BB0F0007 */  swr   $t7, 7($t8)
.L0043AED4:
/* 0043AED4 8B210000 */  lwl   $at, ($t9)
/* 0043AED8 9B210003 */  lwr   $at, 3($t9)
/* 0043AEDC 2739000C */  addiu $t9, $t9, 0xc
/* 0043AEE0 A9610050 */  swl   $at, 0x50($t3)
/* 0043AEE4 B9610053 */  swr   $at, 0x53($t3)
/* 0043AEE8 8B21FFF8 */  lwl   $at, -8($t9)
/* 0043AEEC 9B21FFFB */  lwr   $at, -5($t9)
/* 0043AEF0 256B000C */  addiu $t3, $t3, 0xc
/* 0043AEF4 A9610048 */  swl   $at, 0x48($t3)
/* 0043AEF8 B961004B */  swr   $at, 0x4b($t3)
/* 0043AEFC 8B21FFFC */  lwl   $at, -4($t9)
/* 0043AF00 9B21FFFF */  lwr   $at, -1($t9)
/* 0043AF04 00000000 */  nop   
/* 0043AF08 A961004C */  swl   $at, 0x4c($t3)
/* 0043AF0C 1728FFF1 */  bne   $t9, $t0, .L0043AED4
/* 0043AF10 B961004F */   swr   $at, 0x4f($t3)
/* 0043AF14 8B210000 */  lwl   $at, ($t9)
/* 0043AF18 9B210003 */  lwr   $at, 3($t9)
/* 0043AF1C 240900D7 */  li    $t1, 215
/* 0043AF20 A9610050 */  swl   $at, 0x50($t3)
/* 0043AF24 B9610053 */  swr   $at, 0x53($t3)
/* 0043AF28 8B280004 */  lwl   $t0, 4($t9)
/* 0043AF2C 9B280007 */  lwr   $t0, 7($t9)
/* 0043AF30 00000000 */  nop   
/* 0043AF34 A9680054 */  swl   $t0, 0x54($t3)
/* 0043AF38 B9680057 */  swr   $t0, 0x57($t3)
/* 0043AF3C 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043AF40 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043AF44 8FA60008 */  lw    $a2, 8($sp)
/* 0043AF48 8FA50004 */  lw    $a1, 4($sp)
/* 0043AF4C 8FA40000 */  lw    $a0, ($sp)
/* 0043AF50 0320F809 */  jalr  $t9
/* 0043AF54 AFA900A0 */   sw    $t1, 0xa0($sp)
/* 0043AF58 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043AF5C 1000004B */  b     .L0043B08C
/* 0043AF60 00000000 */   nop   
.L0043AF64:
/* 0043AF64 10200004 */  beqz  $at, .L0043AF78
/* 0043AF68 03A0C825 */   move  $t9, $sp
/* 0043AF6C 2A018000 */  slti  $at, $s0, -0x8000
/* 0043AF70 10200043 */  beqz  $at, .L0043B080
/* 0043AF74 00000000 */   nop   
.L0043AF78:
/* 0043AF78 8F8D806C */  lw    $t5, %got(RO_100172C0)($gp)
/* 0043AF7C 03A07025 */  move  $t6, $sp
/* 0043AF80 25AD72C0 */  addiu $t5, %lo(RO_100172C0) # addiu $t5, $t5, 0x72c0
/* 0043AF84 25AF0048 */  addiu $t7, $t5, 0x48
.L0043AF88:
/* 0043AF88 89A10000 */  lwl   $at, ($t5)
/* 0043AF8C 99A10003 */  lwr   $at, 3($t5)
/* 0043AF90 25AD000C */  addiu $t5, $t5, 0xc
/* 0043AF94 A9C10000 */  swl   $at, ($t6)
/* 0043AF98 B9C10003 */  swr   $at, 3($t6)
/* 0043AF9C 89A1FFF8 */  lwl   $at, -8($t5)
/* 0043AFA0 99A1FFFB */  lwr   $at, -5($t5)
/* 0043AFA4 25CE000C */  addiu $t6, $t6, 0xc
/* 0043AFA8 A9C1FFF8 */  swl   $at, -8($t6)
/* 0043AFAC B9C1FFFB */  swr   $at, -5($t6)
/* 0043AFB0 89A1FFFC */  lwl   $at, -4($t5)
/* 0043AFB4 99A1FFFF */  lwr   $at, -1($t5)
/* 0043AFB8 00000000 */  nop   
/* 0043AFBC A9C1FFFC */  swl   $at, -4($t6)
/* 0043AFC0 15AFFFF1 */  bne   $t5, $t7, .L0043AF88
/* 0043AFC4 B9C1FFFF */   swr   $at, -1($t6)
/* 0043AFC8 89A10000 */  lwl   $at, ($t5)
/* 0043AFCC 99A10003 */  lwr   $at, 3($t5)
/* 0043AFD0 8F98806C */  lw    $t8, %got(RO_10017270)($gp)
/* 0043AFD4 A9C10000 */  swl   $at, ($t6)
/* 0043AFD8 B9C10003 */  swr   $at, 3($t6)
/* 0043AFDC 89AF0004 */  lwl   $t7, 4($t5)
/* 0043AFE0 99AF0007 */  lwr   $t7, 7($t5)
/* 0043AFE4 27187270 */  addiu $t8, %lo(RO_10017270) # addiu $t8, $t8, 0x7270
/* 0043AFE8 A9CF0004 */  swl   $t7, 4($t6)
/* 0043AFEC 27080048 */  addiu $t0, $t8, 0x48
/* 0043AFF0 B9CF0007 */  swr   $t7, 7($t6)
.L0043AFF4:
/* 0043AFF4 8B010000 */  lwl   $at, ($t8)
/* 0043AFF8 9B010003 */  lwr   $at, 3($t8)
/* 0043AFFC 2718000C */  addiu $t8, $t8, 0xc
/* 0043B000 AB210050 */  swl   $at, 0x50($t9)
/* 0043B004 BB210053 */  swr   $at, 0x53($t9)
/* 0043B008 8B01FFF8 */  lwl   $at, -8($t8)
/* 0043B00C 9B01FFFB */  lwr   $at, -5($t8)
/* 0043B010 2739000C */  addiu $t9, $t9, 0xc
/* 0043B014 AB210048 */  swl   $at, 0x48($t9)
/* 0043B018 BB21004B */  swr   $at, 0x4b($t9)
/* 0043B01C 8B01FFFC */  lwl   $at, -4($t8)
/* 0043B020 9B01FFFF */  lwr   $at, -1($t8)
/* 0043B024 00000000 */  nop   
/* 0043B028 AB21004C */  swl   $at, 0x4c($t9)
/* 0043B02C 1708FFF1 */  bne   $t8, $t0, .L0043AFF4
/* 0043B030 BB21004F */   swr   $at, 0x4f($t9)
/* 0043B034 8B010000 */  lwl   $at, ($t8)
/* 0043B038 9B010003 */  lwr   $at, 3($t8)
/* 0043B03C 240B00D9 */  li    $t3, 217
/* 0043B040 AB210050 */  swl   $at, 0x50($t9)
/* 0043B044 BB210053 */  swr   $at, 0x53($t9)
/* 0043B048 8B080004 */  lwl   $t0, 4($t8)
/* 0043B04C 9B080007 */  lwr   $t0, 7($t8)
/* 0043B050 00000000 */  nop   
/* 0043B054 AB280054 */  swl   $t0, 0x54($t9)
/* 0043B058 BB280057 */  swr   $t0, 0x57($t9)
/* 0043B05C 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043B060 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043B064 8FA60008 */  lw    $a2, 8($sp)
/* 0043B068 8FA50004 */  lw    $a1, 4($sp)
/* 0043B06C 8FA40000 */  lw    $a0, ($sp)
/* 0043B070 0320F809 */  jalr  $t9
/* 0043B074 AFAB00A0 */   sw    $t3, 0xa0($sp)
/* 0043B078 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043B07C 00000000 */  nop   
.L0043B080:
/* 0043B080 06010002 */  bgez  $s0, .L0043B08C
/* 0043B084 3209FFFF */   andi  $t1, $s0, 0xffff
/* 0043B088 01208025 */  move  $s0, $t1
.L0043B08C:
/* 0043B08C 8F848BB0 */  lw     $a0, %got(bbindex)($gp)
/* 0043B090 00000000 */  nop   
/* 0043B094 8C8C0000 */  lw    $t4, ($a0)
/* 0043B098 00000000 */  nop   
/* 0043B09C 258F0001 */  addiu $t7, $t4, 1
/* 0043B0A0 AC8F0000 */  sw    $t7, ($a0)
/* 0043B0A4 8F9982DC */  lw    $t9, %call16(initbb)($gp)
/* 0043B0A8 00000000 */  nop   
/* 0043B0AC 0320F809 */  jalr  $t9
/* 0043B0B0 00000000 */   nop   
/* 0043B0B4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043B0B8 93A400BF */  lbu   $a0, 0xbf($sp)
/* 0043B0BC 8F8E8BB0 */  lw     $t6, %got(bbindex)($gp)
/* 0043B0C0 8F8D8B40 */  lw     $t5, %got(pinstruction)($gp)
/* 0043B0C4 8DCE0000 */  lw    $t6, ($t6)
/* 0043B0C8 8DAD0000 */  lw    $t5, ($t5)
/* 0043B0CC 000E5080 */  sll   $t2, $t6, 2
/* 0043B0D0 014E5021 */  addu  $t2, $t2, $t6
/* 0043B0D4 8F9982EC */  lw    $t9, %call16(fill_inst)($gp)
/* 0043B0D8 000A50C0 */  sll   $t2, $t2, 3
/* 0043B0DC 93A500C3 */  lbu   $a1, 0xc3($sp)
/* 0043B0E0 97A700BA */  lhu   $a3, 0xba($sp)
/* 0043B0E4 01AA4021 */  addu  $t0, $t5, $t2
/* 0043B0E8 AFA80010 */  sw    $t0, 0x10($sp)
/* 0043B0EC 24060048 */  li    $a2, 72
/* 0043B0F0 0320F809 */  jalr  $t9
/* 0043B0F4 AFB00014 */   sw    $s0, 0x14($sp)
/* 0043B0F8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043B0FC 00000000 */  nop   
/* 0043B100 8F998BB0 */  lw     $t9, %got(bbindex)($gp)
/* 0043B104 8F988B40 */  lw     $t8, %got(pinstruction)($gp)
/* 0043B108 8F390000 */  lw    $t9, ($t9)
/* 0043B10C 8F180000 */  lw    $t8, ($t8)
/* 0043B110 00195880 */  sll   $t3, $t9, 2
/* 0043B114 01795821 */  addu  $t3, $t3, $t9
/* 0043B118 000B58C0 */  sll   $t3, $t3, 3
/* 0043B11C 030B4821 */  addu  $t1, $t8, $t3
/* 0043B120 AD300008 */  sw    $s0, 8($t1)
/* 0043B124 8FBF00B4 */  lw    $ra, 0xb4($sp)
/* 0043B128 8FB000AC */  lw    $s0, 0xac($sp)
/* 0043B12C 03E00008 */  jr    $ra
/* 0043B130 27BD00B8 */   addiu $sp, $sp, 0xb8

    .type emitalui, @function
    .size emitalui, .-emitalui
    .end emitalui

glabel emittrap
    .ent emittrap
    # 00469CF8 parseafrrr
/* 0043B134 3C1C0FBF */  .cpload $t9
/* 0043B138 279CF12C */  
/* 0043B13C 0399E021 */  
/* 0043B140 27BDFF48 */  addiu $sp, $sp, -0xb8
/* 0043B144 AFA400B8 */  sw    $a0, 0xb8($sp)
/* 0043B148 97AE00BA */  lhu   $t6, 0xba($sp)
/* 0043B14C AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 0043B150 2DCF0160 */  sltiu $t7, $t6, 0x160
/* 0043B154 AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 0043B158 AFA500BC */  sw    $a1, 0xbc($sp)
/* 0043B15C AFA600C0 */  sw    $a2, 0xc0($sp)
/* 0043B160 11E00009 */  beqz  $t7, .L0043B188
/* 0043B164 AFA700C4 */   sw    $a3, 0xc4($sp)
/* 0043B168 8F888D38 */  lw     $t0, %got(trapops)($gp)
/* 0043B16C 000EC143 */  sra   $t8, $t6, 5
/* 0043B170 0018C880 */  sll   $t9, $t8, 2
/* 0043B174 03284821 */  addu  $t1, $t9, $t0
/* 0043B178 8D2A0000 */  lw    $t2, ($t1)
/* 0043B17C 00000000 */  nop   
/* 0043B180 01CA5804 */  sllv  $t3, $t2, $t6
/* 0043B184 296F0000 */  slti  $t7, $t3, 0
.L0043B188:
/* 0043B188 15E00043 */  bnez  $t7, .L0043B298
/* 0043B18C 03A05825 */   move  $t3, $sp
/* 0043B190 8F8D806C */  lw    $t5, %got(RO_100174A0)($gp)
/* 0043B194 03A04025 */  move  $t0, $sp
/* 0043B198 25AD74A0 */  addiu $t5, %lo(RO_100174A0) # addiu $t5, $t5, 0x74a0
/* 0043B19C 25B90048 */  addiu $t9, $t5, 0x48
.L0043B1A0:
/* 0043B1A0 89A10000 */  lwl   $at, ($t5)
/* 0043B1A4 99A10003 */  lwr   $at, 3($t5)
/* 0043B1A8 25AD000C */  addiu $t5, $t5, 0xc
/* 0043B1AC A9010000 */  swl   $at, ($t0)
/* 0043B1B0 B9010003 */  swr   $at, 3($t0)
/* 0043B1B4 89A1FFF8 */  lwl   $at, -8($t5)
/* 0043B1B8 99A1FFFB */  lwr   $at, -5($t5)
/* 0043B1BC 2508000C */  addiu $t0, $t0, 0xc
/* 0043B1C0 A901FFF8 */  swl   $at, -8($t0)
/* 0043B1C4 B901FFFB */  swr   $at, -5($t0)
/* 0043B1C8 89A1FFFC */  lwl   $at, -4($t5)
/* 0043B1CC 99A1FFFF */  lwr   $at, -1($t5)
/* 0043B1D0 00000000 */  nop   
/* 0043B1D4 A901FFFC */  swl   $at, -4($t0)
/* 0043B1D8 15B9FFF1 */  bne   $t5, $t9, .L0043B1A0
/* 0043B1DC B901FFFF */   swr   $at, -1($t0)
/* 0043B1E0 89A10000 */  lwl   $at, ($t5)
/* 0043B1E4 99A10003 */  lwr   $at, 3($t5)
/* 0043B1E8 8F89806C */  lw    $t1, %got(RO_10017450)($gp)
/* 0043B1EC A9010000 */  swl   $at, ($t0)
/* 0043B1F0 B9010003 */  swr   $at, 3($t0)
/* 0043B1F4 89B90004 */  lwl   $t9, 4($t5)
/* 0043B1F8 99B90007 */  lwr   $t9, 7($t5)
/* 0043B1FC 25297450 */  addiu $t1, %lo(RO_10017450) # addiu $t1, $t1, 0x7450
/* 0043B200 A9190004 */  swl   $t9, 4($t0)
/* 0043B204 252E0048 */  addiu $t6, $t1, 0x48
/* 0043B208 B9190007 */  swr   $t9, 7($t0)
.L0043B20C:
/* 0043B20C 89210000 */  lwl   $at, ($t1)
/* 0043B210 99210003 */  lwr   $at, 3($t1)
/* 0043B214 2529000C */  addiu $t1, $t1, 0xc
/* 0043B218 A9610050 */  swl   $at, 0x50($t3)
/* 0043B21C B9610053 */  swr   $at, 0x53($t3)
/* 0043B220 8921FFF8 */  lwl   $at, -8($t1)
/* 0043B224 9921FFFB */  lwr   $at, -5($t1)
/* 0043B228 256B000C */  addiu $t3, $t3, 0xc
/* 0043B22C A9610048 */  swl   $at, 0x48($t3)
/* 0043B230 B961004B */  swr   $at, 0x4b($t3)
/* 0043B234 8921FFFC */  lwl   $at, -4($t1)
/* 0043B238 9921FFFF */  lwr   $at, -1($t1)
/* 0043B23C 00000000 */  nop   
/* 0043B240 A961004C */  swl   $at, 0x4c($t3)
/* 0043B244 152EFFF1 */  bne   $t1, $t6, .L0043B20C
/* 0043B248 B961004F */   swr   $at, 0x4f($t3)
/* 0043B24C 89210000 */  lwl   $at, ($t1)
/* 0043B250 99210003 */  lwr   $at, 3($t1)
/* 0043B254 240C00EC */  li    $t4, 236
/* 0043B258 A9610050 */  swl   $at, 0x50($t3)
/* 0043B25C B9610053 */  swr   $at, 0x53($t3)
/* 0043B260 892E0004 */  lwl   $t6, 4($t1)
/* 0043B264 992E0007 */  lwr   $t6, 7($t1)
/* 0043B268 00000000 */  nop   
/* 0043B26C A96E0054 */  swl   $t6, 0x54($t3)
/* 0043B270 B96E0057 */  swr   $t6, 0x57($t3)
/* 0043B274 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043B278 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043B27C 8FA60008 */  lw    $a2, 8($sp)
/* 0043B280 8FA50004 */  lw    $a1, 4($sp)
/* 0043B284 8FA40000 */  lw    $a0, ($sp)
/* 0043B288 0320F809 */  jalr  $t9
/* 0043B28C AFAC00A0 */   sw    $t4, 0xa0($sp)
/* 0043B290 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043B294 00000000 */  nop   
.L0043B298:
/* 0043B298 8F848BB0 */  lw     $a0, %got(bbindex)($gp)
/* 0043B29C 00000000 */  nop   
/* 0043B2A0 8C8F0000 */  lw    $t7, ($a0)
/* 0043B2A4 00000000 */  nop   
/* 0043B2A8 25F80001 */  addiu $t8, $t7, 1
/* 0043B2AC AC980000 */  sw    $t8, ($a0)
/* 0043B2B0 8F9982DC */  lw    $t9, %call16(initbb)($gp)
/* 0043B2B4 00000000 */  nop   
/* 0043B2B8 0320F809 */  jalr  $t9
/* 0043B2BC 00000000 */   nop   
/* 0043B2C0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043B2C4 8FAE00C4 */  lw    $t6, 0xc4($sp)
/* 0043B2C8 8F8D8BB0 */  lw     $t5, %got(bbindex)($gp)
/* 0043B2CC 8F998B40 */  lw     $t9, %got(pinstruction)($gp)
/* 0043B2D0 8DAD0000 */  lw    $t5, ($t5)
/* 0043B2D4 8F390000 */  lw    $t9, ($t9)
/* 0043B2D8 000D4080 */  sll   $t0, $t5, 2
/* 0043B2DC 010D4021 */  addu  $t0, $t0, $t5
/* 0043B2E0 000840C0 */  sll   $t0, $t0, 3
/* 0043B2E4 03285021 */  addu  $t2, $t9, $t0
/* 0043B2E8 8F9982EC */  lw    $t9, %call16(fill_inst)($gp)
/* 0043B2EC 93A500BF */  lbu   $a1, 0xbf($sp)
/* 0043B2F0 93A600C3 */  lbu   $a2, 0xc3($sp)
/* 0043B2F4 97A700BA */  lhu   $a3, 0xba($sp)
/* 0043B2F8 AFAA0010 */  sw    $t2, 0x10($sp)
/* 0043B2FC 24040048 */  li    $a0, 72
/* 0043B300 0320F809 */  jalr  $t9
/* 0043B304 AFAE0014 */   sw    $t6, 0x14($sp)
/* 0043B308 8FBF00B4 */  lw    $ra, 0xb4($sp)
/* 0043B30C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043B310 03E00008 */  jr    $ra
/* 0043B314 27BD00B8 */   addiu $sp, $sp, 0xb8

    .type emittrap, @function
    .size emittrap, .-emittrap
    .end emittrap

glabel emittrapi
    .ent emittrapi
    # 00469CF8 parseafrrr
/* 0043B318 3C1C0FBF */  .cpload $t9
/* 0043B31C 279CEF48 */  
/* 0043B320 0399E021 */  
/* 0043B324 27BDFF48 */  addiu $sp, $sp, -0xb8
/* 0043B328 AFA400B8 */  sw    $a0, 0xb8($sp)
/* 0043B32C 97AE00BA */  lhu   $t6, 0xba($sp)
/* 0043B330 8F8F8D18 */  lw     $t7, %got(opcodeformat)($gp)
/* 0043B334 AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 0043B338 AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 0043B33C AFB000AC */  sw    $s0, 0xac($sp)
/* 0043B340 AFA500BC */  sw    $a1, 0xbc($sp)
/* 0043B344 01CFC021 */  addu  $t8, $t6, $t7
/* 0043B348 93190000 */  lbu   $t9, ($t8)
/* 0043B34C 24010009 */  li    $at, 9
/* 0043B350 13210044 */  beq   $t9, $at, .L0043B464
/* 0043B354 00C08025 */   move  $s0, $a2
/* 0043B358 8F88806C */  lw    $t0, %got(RO_100175E0)($gp)
/* 0043B35C 03A05825 */  move  $t3, $sp
/* 0043B360 250875E0 */  addiu $t0, %lo(RO_100175E0) # addiu $t0, $t0, 0x75e0
/* 0043B364 250A0048 */  addiu $t2, $t0, 0x48
.L0043B368:
/* 0043B368 89010000 */  lwl   $at, ($t0)
/* 0043B36C 99010003 */  lwr   $at, 3($t0)
/* 0043B370 2508000C */  addiu $t0, $t0, 0xc
/* 0043B374 A9610000 */  swl   $at, ($t3)
/* 0043B378 B9610003 */  swr   $at, 3($t3)
/* 0043B37C 8901FFF8 */  lwl   $at, -8($t0)
/* 0043B380 9901FFFB */  lwr   $at, -5($t0)
/* 0043B384 256B000C */  addiu $t3, $t3, 0xc
/* 0043B388 A961FFF8 */  swl   $at, -8($t3)
/* 0043B38C B961FFFB */  swr   $at, -5($t3)
/* 0043B390 8901FFFC */  lwl   $at, -4($t0)
/* 0043B394 9901FFFF */  lwr   $at, -1($t0)
/* 0043B398 00000000 */  nop   
/* 0043B39C A961FFFC */  swl   $at, -4($t3)
/* 0043B3A0 150AFFF1 */  bne   $t0, $t2, .L0043B368
/* 0043B3A4 B961FFFF */   swr   $at, -1($t3)
/* 0043B3A8 89010000 */  lwl   $at, ($t0)
/* 0043B3AC 99010003 */  lwr   $at, 3($t0)
/* 0043B3B0 8F8C806C */  lw    $t4, %got(RO_10017590)($gp)
/* 0043B3B4 A9610000 */  swl   $at, ($t3)
/* 0043B3B8 B9610003 */  swr   $at, 3($t3)
/* 0043B3BC 890A0004 */  lwl   $t2, 4($t0)
/* 0043B3C0 990A0007 */  lwr   $t2, 7($t0)
/* 0043B3C4 258C7590 */  addiu $t4, %lo(RO_10017590) # addiu $t4, $t4, 0x7590
/* 0043B3C8 A96A0004 */  swl   $t2, 4($t3)
/* 0043B3CC 258E0048 */  addiu $t6, $t4, 0x48
/* 0043B3D0 03A07825 */  move  $t7, $sp
/* 0043B3D4 B96A0007 */  swr   $t2, 7($t3)
.L0043B3D8:
/* 0043B3D8 89810000 */  lwl   $at, ($t4)
/* 0043B3DC 99810003 */  lwr   $at, 3($t4)
/* 0043B3E0 258C000C */  addiu $t4, $t4, 0xc
/* 0043B3E4 A9E10050 */  swl   $at, 0x50($t7)
/* 0043B3E8 B9E10053 */  swr   $at, 0x53($t7)
/* 0043B3EC 8981FFF8 */  lwl   $at, -8($t4)
/* 0043B3F0 9981FFFB */  lwr   $at, -5($t4)
/* 0043B3F4 25EF000C */  addiu $t7, $t7, 0xc
/* 0043B3F8 A9E10048 */  swl   $at, 0x48($t7)
/* 0043B3FC B9E1004B */  swr   $at, 0x4b($t7)
/* 0043B400 8981FFFC */  lwl   $at, -4($t4)
/* 0043B404 9981FFFF */  lwr   $at, -1($t4)
/* 0043B408 00000000 */  nop   
/* 0043B40C A9E1004C */  swl   $at, 0x4c($t7)
/* 0043B410 158EFFF1 */  bne   $t4, $t6, .L0043B3D8
/* 0043B414 B9E1004F */   swr   $at, 0x4f($t7)
/* 0043B418 89810000 */  lwl   $at, ($t4)
/* 0043B41C 99810003 */  lwr   $at, 3($t4)
/* 0043B420 24180101 */  li    $t8, 257
/* 0043B424 A9E10050 */  swl   $at, 0x50($t7)
/* 0043B428 B9E10053 */  swr   $at, 0x53($t7)
/* 0043B42C 898E0004 */  lwl   $t6, 4($t4)
/* 0043B430 998E0007 */  lwr   $t6, 7($t4)
/* 0043B434 00000000 */  nop   
/* 0043B438 A9EE0054 */  swl   $t6, 0x54($t7)
/* 0043B43C B9EE0057 */  swr   $t6, 0x57($t7)
/* 0043B440 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043B444 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043B448 8FA60008 */  lw    $a2, 8($sp)
/* 0043B44C 8FA50004 */  lw    $a1, 4($sp)
/* 0043B450 8FA40000 */  lw    $a0, ($sp)
/* 0043B454 0320F809 */  jalr  $t9
/* 0043B458 AFB800A0 */   sw    $t8, 0xa0($sp)
/* 0043B45C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043B460 00000000 */  nop   
.L0043B464:
/* 0043B464 34018000 */  li    $at, 32768
/* 0043B468 0201082A */  slt   $at, $s0, $at
/* 0043B46C 10200004 */  beqz  $at, .L0043B480
/* 0043B470 03A06025 */   move  $t4, $sp
/* 0043B474 2A018000 */  slti  $at, $s0, -0x8000
/* 0043B478 10200043 */  beqz  $at, .L0043B588
/* 0043B47C 00000000 */   nop   
.L0043B480:
/* 0043B480 8F99806C */  lw    $t9, %got(RO_10017540)($gp)
/* 0043B484 03A04025 */  move  $t0, $sp
/* 0043B488 27397540 */  addiu $t9, %lo(RO_10017540) # addiu $t9, $t9, 0x7540
/* 0043B48C 272A0048 */  addiu $t2, $t9, 0x48
.L0043B490:
/* 0043B490 8B210000 */  lwl   $at, ($t9)
/* 0043B494 9B210003 */  lwr   $at, 3($t9)
/* 0043B498 2739000C */  addiu $t9, $t9, 0xc
/* 0043B49C A9010000 */  swl   $at, ($t0)
/* 0043B4A0 B9010003 */  swr   $at, 3($t0)
/* 0043B4A4 8B21FFF8 */  lwl   $at, -8($t9)
/* 0043B4A8 9B21FFFB */  lwr   $at, -5($t9)
/* 0043B4AC 2508000C */  addiu $t0, $t0, 0xc
/* 0043B4B0 A901FFF8 */  swl   $at, -8($t0)
/* 0043B4B4 B901FFFB */  swr   $at, -5($t0)
/* 0043B4B8 8B21FFFC */  lwl   $at, -4($t9)
/* 0043B4BC 9B21FFFF */  lwr   $at, -1($t9)
/* 0043B4C0 00000000 */  nop   
/* 0043B4C4 A901FFFC */  swl   $at, -4($t0)
/* 0043B4C8 172AFFF1 */  bne   $t9, $t2, .L0043B490
/* 0043B4CC B901FFFF */   swr   $at, -1($t0)
/* 0043B4D0 8B210000 */  lwl   $at, ($t9)
/* 0043B4D4 9B210003 */  lwr   $at, 3($t9)
/* 0043B4D8 8F8B806C */  lw    $t3, %got(RO_100174F0)($gp)
/* 0043B4DC A9010000 */  swl   $at, ($t0)
/* 0043B4E0 B9010003 */  swr   $at, 3($t0)
/* 0043B4E4 8B2A0004 */  lwl   $t2, 4($t9)
/* 0043B4E8 9B2A0007 */  lwr   $t2, 7($t9)
/* 0043B4EC 256B74F0 */  addiu $t3, %lo(RO_100174F0) # addiu $t3, $t3, 0x74f0
/* 0043B4F0 A90A0004 */  swl   $t2, 4($t0)
/* 0043B4F4 256E0048 */  addiu $t6, $t3, 0x48
/* 0043B4F8 B90A0007 */  swr   $t2, 7($t0)
.L0043B4FC:
/* 0043B4FC 89610000 */  lwl   $at, ($t3)
/* 0043B500 99610003 */  lwr   $at, 3($t3)
/* 0043B504 256B000C */  addiu $t3, $t3, 0xc
/* 0043B508 A9810050 */  swl   $at, 0x50($t4)
/* 0043B50C B9810053 */  swr   $at, 0x53($t4)
/* 0043B510 8961FFF8 */  lwl   $at, -8($t3)
/* 0043B514 9961FFFB */  lwr   $at, -5($t3)
/* 0043B518 258C000C */  addiu $t4, $t4, 0xc
/* 0043B51C A9810048 */  swl   $at, 0x48($t4)
/* 0043B520 B981004B */  swr   $at, 0x4b($t4)
/* 0043B524 8961FFFC */  lwl   $at, -4($t3)
/* 0043B528 9961FFFF */  lwr   $at, -1($t3)
/* 0043B52C 00000000 */  nop   
/* 0043B530 A981004C */  swl   $at, 0x4c($t4)
/* 0043B534 156EFFF1 */  bne   $t3, $t6, .L0043B4FC
/* 0043B538 B981004F */   swr   $at, 0x4f($t4)
/* 0043B53C 89610000 */  lwl   $at, ($t3)
/* 0043B540 99610003 */  lwr   $at, 3($t3)
/* 0043B544 240F0102 */  li    $t7, 258
/* 0043B548 A9810050 */  swl   $at, 0x50($t4)
/* 0043B54C B9810053 */  swr   $at, 0x53($t4)
/* 0043B550 896E0004 */  lwl   $t6, 4($t3)
/* 0043B554 996E0007 */  lwr   $t6, 7($t3)
/* 0043B558 00000000 */  nop   
/* 0043B55C A98E0054 */  swl   $t6, 0x54($t4)
/* 0043B560 B98E0057 */  swr   $t6, 0x57($t4)
/* 0043B564 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043B568 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043B56C 8FA60008 */  lw    $a2, 8($sp)
/* 0043B570 8FA50004 */  lw    $a1, 4($sp)
/* 0043B574 8FA40000 */  lw    $a0, ($sp)
/* 0043B578 0320F809 */  jalr  $t9
/* 0043B57C AFAF00A0 */   sw    $t7, 0xa0($sp)
/* 0043B580 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043B584 00000000 */  nop   
.L0043B588:
/* 0043B588 8F848BB0 */  lw     $a0, %got(bbindex)($gp)
/* 0043B58C 3218FFFF */  andi  $t8, $s0, 0xffff
/* 0043B590 8C890000 */  lw    $t1, ($a0)
/* 0043B594 03008025 */  move  $s0, $t8
/* 0043B598 252A0001 */  addiu $t2, $t1, 1
/* 0043B59C AC8A0000 */  sw    $t2, ($a0)
/* 0043B5A0 8F9982DC */  lw    $t9, %call16(initbb)($gp)
/* 0043B5A4 00000000 */  nop   
/* 0043B5A8 0320F809 */  jalr  $t9
/* 0043B5AC 00000000 */   nop   
/* 0043B5B0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043B5B4 93A500BF */  lbu   $a1, 0xbf($sp)
/* 0043B5B8 8F888BB0 */  lw     $t0, %got(bbindex)($gp)
/* 0043B5BC 8F998B40 */  lw     $t9, %got(pinstruction)($gp)
/* 0043B5C0 8D080000 */  lw    $t0, ($t0)
/* 0043B5C4 8F390000 */  lw    $t9, ($t9)
/* 0043B5C8 00086880 */  sll   $t5, $t0, 2
/* 0043B5CC 01A86821 */  addu  $t5, $t5, $t0
/* 0043B5D0 000D68C0 */  sll   $t5, $t5, 3
/* 0043B5D4 032D7021 */  addu  $t6, $t9, $t5
/* 0043B5D8 8F9982EC */  lw    $t9, %call16(fill_inst)($gp)
/* 0043B5DC 97A700BA */  lhu   $a3, 0xba($sp)
/* 0043B5E0 AFAE0010 */  sw    $t6, 0x10($sp)
/* 0043B5E4 24040048 */  li    $a0, 72
/* 0043B5E8 24060048 */  li    $a2, 72
/* 0043B5EC 0320F809 */  jalr  $t9
/* 0043B5F0 AFB00014 */   sw    $s0, 0x14($sp)
/* 0043B5F4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043B5F8 00000000 */  nop   
/* 0043B5FC 8F8C8BB0 */  lw     $t4, %got(bbindex)($gp)
/* 0043B600 8F8B8B40 */  lw     $t3, %got(pinstruction)($gp)
/* 0043B604 8D8C0000 */  lw    $t4, ($t4)
/* 0043B608 8D6B0000 */  lw    $t3, ($t3)
/* 0043B60C 000C7880 */  sll   $t7, $t4, 2
/* 0043B610 01EC7821 */  addu  $t7, $t7, $t4
/* 0043B614 000F78C0 */  sll   $t7, $t7, 3
/* 0043B618 016FC021 */  addu  $t8, $t3, $t7
/* 0043B61C AF100008 */  sw    $s0, 8($t8)
/* 0043B620 8FBF00B4 */  lw    $ra, 0xb4($sp)
/* 0043B624 8FB000AC */  lw    $s0, 0xac($sp)
/* 0043B628 03E00008 */  jr    $ra
/* 0043B62C 27BD00B8 */   addiu $sp, $sp, 0xb8

    .type emittrapi, @function
    .size emittrapi, .-emittrapi
    .end emittrapi

glabel emitfli
    .ent emitfli
    # 004656D4 parseafri_fp
/* 0043B630 3C1C0FBF */  .cpload $t9
/* 0043B634 279CEC30 */  
/* 0043B638 0399E021 */  
/* 0043B63C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0043B640 AFA40028 */  sw    $a0, 0x28($sp)
/* 0043B644 8F848BB0 */  lw     $a0, %got(bbindex)($gp)
/* 0043B648 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0043B64C 8C8E0000 */  lw    $t6, ($a0)
/* 0043B650 AFBC0020 */  sw    $gp, 0x20($sp)
/* 0043B654 25CF0001 */  addiu $t7, $t6, 1
/* 0043B658 AC8F0000 */  sw    $t7, ($a0)
/* 0043B65C 8F9982DC */  lw    $t9, %call16(initbb)($gp)
/* 0043B660 AFA5002C */  sw    $a1, 0x2c($sp)
/* 0043B664 0320F809 */  jalr  $t9
/* 0043B668 AFA60030 */   sw    $a2, 0x30($sp)
/* 0043B66C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0043B670 8FAA0030 */  lw    $t2, 0x30($sp)
/* 0043B674 8F998BB0 */  lw     $t9, %got(bbindex)($gp)
/* 0043B678 8F988B40 */  lw     $t8, %got(pinstruction)($gp)
/* 0043B67C 8F390000 */  lw    $t9, ($t9)
/* 0043B680 8F180000 */  lw    $t8, ($t8)
/* 0043B684 00194080 */  sll   $t0, $t9, 2
/* 0043B688 01194021 */  addu  $t0, $t0, $t9
/* 0043B68C 8F9982EC */  lw    $t9, %call16(fill_inst)($gp)
/* 0043B690 000840C0 */  sll   $t0, $t0, 3
/* 0043B694 93A4002F */  lbu   $a0, 0x2f($sp)
/* 0043B698 97A7002A */  lhu   $a3, 0x2a($sp)
/* 0043B69C 03084821 */  addu  $t1, $t8, $t0
/* 0043B6A0 AFA90010 */  sw    $t1, 0x10($sp)
/* 0043B6A4 24050048 */  li    $a1, 72
/* 0043B6A8 24060048 */  li    $a2, 72
/* 0043B6AC 0320F809 */  jalr  $t9
/* 0043B6B0 AFAA0014 */   sw    $t2, 0x14($sp)
/* 0043B6B4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0043B6B8 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0043B6BC 03E00008 */  jr    $ra
/* 0043B6C0 27BD0028 */   addiu $sp, $sp, 0x28

    .type emitfli, @function
    .size emitfli, .-emitfli
    .end emitfli

    .type func_0043B6C4, @function
func_0043B6C4:
    # 0043B770 emitfpop
/* 0043B6C4 3C1C0FBF */  .cpload $t9
/* 0043B6C8 279CEB9C */  
/* 0043B6CC 0399E021 */  
/* 0043B6D0 8F8E8BB0 */  lw     $t6, %got(bbindex)($gp)
/* 0043B6D4 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 0043B6D8 8DCE0000 */  lw    $t6, ($t6)
/* 0043B6DC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0043B6E0 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0043B6E4 00803825 */  move  $a3, $a0
/* 0043B6E8 25CF0001 */  addiu $t7, $t6, 1
/* 0043B6EC AFBC0020 */  sw    $gp, 0x20($sp)
/* 0043B6F0 AFAF0028 */  sw    $t7, 0x28($sp)
/* 0043B6F4 24040054 */  li    $a0, 84
/* 0043B6F8 24050001 */  li    $a1, 1
/* 0043B6FC 0320F809 */  jalr  $t9
/* 0043B700 00003025 */   move  $a2, $zero
/* 0043B704 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0043B708 2418FFFF */  li    $t8, -1
/* 0043B70C 8F998468 */  lw    $t9, %call16(emitbene)($gp)
/* 0043B710 AFB80010 */  sw    $t8, 0x10($sp)
/* 0043B714 2404004C */  li    $a0, 76
/* 0043B718 24050001 */  li    $a1, 1
/* 0043B71C 00003025 */  move  $a2, $zero
/* 0043B720 0320F809 */  jalr  $t9
/* 0043B724 00003825 */   move  $a3, $zero
/* 0043B728 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0043B72C 24040054 */  li    $a0, 84
/* 0043B730 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 0043B734 24050001 */  li    $a1, 1
/* 0043B738 24060001 */  li    $a2, 1
/* 0043B73C 0320F809 */  jalr  $t9
/* 0043B740 2407FFFF */   li    $a3, -1
/* 0043B744 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0043B748 8FA40028 */  lw    $a0, 0x28($sp)
/* 0043B74C 8F858BB0 */  lw     $a1, %got(bbindex)($gp)
/* 0043B750 8F99858C */  lw    $t9, %call16(mark_unmovable)($gp)
/* 0043B754 8CA50000 */  lw    $a1, ($a1)
/* 0043B758 0320F809 */  jalr  $t9
/* 0043B75C 00000000 */   nop   
/* 0043B760 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0043B764 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0043B768 03E00008 */  jr    $ra
/* 0043B76C 27BD0030 */   addiu $sp, $sp, 0x30

glabel emitfpop
    .ent emitfpop
    # 00454580 parseafrrrr
    # 00469314 func_00469314
    # 00469CF8 parseafrrr
/* 0043B770 3C1C0FBF */  .cpload $t9
/* 0043B774 279CEAF0 */  
/* 0043B778 0399E021 */  
/* 0043B77C 27BDFF48 */  addiu $sp, $sp, -0xb8
/* 0043B780 AFA400B8 */  sw    $a0, 0xb8($sp)
/* 0043B784 97AE00BA */  lhu   $t6, 0xba($sp)
/* 0043B788 AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 0043B78C 2DCF0160 */  sltiu $t7, $t6, 0x160
/* 0043B790 AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 0043B794 AFA500BC */  sw    $a1, 0xbc($sp)
/* 0043B798 AFA600C0 */  sw    $a2, 0xc0($sp)
/* 0043B79C 11E00009 */  beqz  $t7, .L0043B7C4
/* 0043B7A0 AFA700C4 */   sw    $a3, 0xc4($sp)
/* 0043B7A4 8F888D3C */  lw     $t0, %got(fpops)($gp)
/* 0043B7A8 000EC143 */  sra   $t8, $t6, 5
/* 0043B7AC 0018C880 */  sll   $t9, $t8, 2
/* 0043B7B0 03284821 */  addu  $t1, $t9, $t0
/* 0043B7B4 8D2A0000 */  lw    $t2, ($t1)
/* 0043B7B8 00000000 */  nop   
/* 0043B7BC 01CA5804 */  sllv  $t3, $t2, $t6
/* 0043B7C0 296F0000 */  slti  $t7, $t3, 0
.L0043B7C4:
/* 0043B7C4 15E00043 */  bnez  $t7, .L0043B8D4
/* 0043B7C8 03A05825 */   move  $t3, $sp
/* 0043B7CC 8F8D806C */  lw    $t5, %got(RO_10017680)($gp)
/* 0043B7D0 03A04025 */  move  $t0, $sp
/* 0043B7D4 25AD7680 */  addiu $t5, %lo(RO_10017680) # addiu $t5, $t5, 0x7680
/* 0043B7D8 25B90048 */  addiu $t9, $t5, 0x48
.L0043B7DC:
/* 0043B7DC 89A10000 */  lwl   $at, ($t5)
/* 0043B7E0 99A10003 */  lwr   $at, 3($t5)
/* 0043B7E4 25AD000C */  addiu $t5, $t5, 0xc
/* 0043B7E8 A9010000 */  swl   $at, ($t0)
/* 0043B7EC B9010003 */  swr   $at, 3($t0)
/* 0043B7F0 89A1FFF8 */  lwl   $at, -8($t5)
/* 0043B7F4 99A1FFFB */  lwr   $at, -5($t5)
/* 0043B7F8 2508000C */  addiu $t0, $t0, 0xc
/* 0043B7FC A901FFF8 */  swl   $at, -8($t0)
/* 0043B800 B901FFFB */  swr   $at, -5($t0)
/* 0043B804 89A1FFFC */  lwl   $at, -4($t5)
/* 0043B808 99A1FFFF */  lwr   $at, -1($t5)
/* 0043B80C 00000000 */  nop   
/* 0043B810 A901FFFC */  swl   $at, -4($t0)
/* 0043B814 15B9FFF1 */  bne   $t5, $t9, .L0043B7DC
/* 0043B818 B901FFFF */   swr   $at, -1($t0)
/* 0043B81C 89A10000 */  lwl   $at, ($t5)
/* 0043B820 99A10003 */  lwr   $at, 3($t5)
/* 0043B824 8F89806C */  lw    $t1, %got(RO_10017630)($gp)
/* 0043B828 A9010000 */  swl   $at, ($t0)
/* 0043B82C B9010003 */  swr   $at, 3($t0)
/* 0043B830 89B90004 */  lwl   $t9, 4($t5)
/* 0043B834 99B90007 */  lwr   $t9, 7($t5)
/* 0043B838 25297630 */  addiu $t1, %lo(RO_10017630) # addiu $t1, $t1, 0x7630
/* 0043B83C A9190004 */  swl   $t9, 4($t0)
/* 0043B840 252E0048 */  addiu $t6, $t1, 0x48
/* 0043B844 B9190007 */  swr   $t9, 7($t0)
.L0043B848:
/* 0043B848 89210000 */  lwl   $at, ($t1)
/* 0043B84C 99210003 */  lwr   $at, 3($t1)
/* 0043B850 2529000C */  addiu $t1, $t1, 0xc
/* 0043B854 A9610050 */  swl   $at, 0x50($t3)
/* 0043B858 B9610053 */  swr   $at, 0x53($t3)
/* 0043B85C 8921FFF8 */  lwl   $at, -8($t1)
/* 0043B860 9921FFFB */  lwr   $at, -5($t1)
/* 0043B864 256B000C */  addiu $t3, $t3, 0xc
/* 0043B868 A9610048 */  swl   $at, 0x48($t3)
/* 0043B86C B961004B */  swr   $at, 0x4b($t3)
/* 0043B870 8921FFFC */  lwl   $at, -4($t1)
/* 0043B874 9921FFFF */  lwr   $at, -1($t1)
/* 0043B878 00000000 */  nop   
/* 0043B87C A961004C */  swl   $at, 0x4c($t3)
/* 0043B880 152EFFF1 */  bne   $t1, $t6, .L0043B848
/* 0043B884 B961004F */   swr   $at, 0x4f($t3)
/* 0043B888 89210000 */  lwl   $at, ($t1)
/* 0043B88C 99210003 */  lwr   $at, 3($t1)
/* 0043B890 240C0131 */  li    $t4, 305
/* 0043B894 A9610050 */  swl   $at, 0x50($t3)
/* 0043B898 B9610053 */  swr   $at, 0x53($t3)
/* 0043B89C 892E0004 */  lwl   $t6, 4($t1)
/* 0043B8A0 992E0007 */  lwr   $t6, 7($t1)
/* 0043B8A4 00000000 */  nop   
/* 0043B8A8 A96E0054 */  swl   $t6, 0x54($t3)
/* 0043B8AC B96E0057 */  swr   $t6, 0x57($t3)
/* 0043B8B0 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043B8B4 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043B8B8 8FA60008 */  lw    $a2, 8($sp)
/* 0043B8BC 8FA50004 */  lw    $a1, 4($sp)
/* 0043B8C0 8FA40000 */  lw    $a0, ($sp)
/* 0043B8C4 0320F809 */  jalr  $t9
/* 0043B8C8 AFAC00A0 */   sw    $t4, 0xa0($sp)
/* 0043B8CC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043B8D0 00000000 */  nop   
.L0043B8D4:
/* 0043B8D4 8F848BB0 */  lw     $a0, %got(bbindex)($gp)
/* 0043B8D8 00000000 */  nop   
/* 0043B8DC 8C8F0000 */  lw    $t7, ($a0)
/* 0043B8E0 00000000 */  nop   
/* 0043B8E4 25F80001 */  addiu $t8, $t7, 1
/* 0043B8E8 AC980000 */  sw    $t8, ($a0)
/* 0043B8EC 8F9982DC */  lw    $t9, %call16(initbb)($gp)
/* 0043B8F0 00000000 */  nop   
/* 0043B8F4 0320F809 */  jalr  $t9
/* 0043B8F8 00000000 */   nop   
/* 0043B8FC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043B900 93A400BF */  lbu   $a0, 0xbf($sp)
/* 0043B904 8F8D8BB0 */  lw     $t5, %got(bbindex)($gp)
/* 0043B908 8F998B40 */  lw     $t9, %got(pinstruction)($gp)
/* 0043B90C 8DAD0000 */  lw    $t5, ($t5)
/* 0043B910 8F390000 */  lw    $t9, ($t9)
/* 0043B914 000D4080 */  sll   $t0, $t5, 2
/* 0043B918 010D4021 */  addu  $t0, $t0, $t5
/* 0043B91C 000840C0 */  sll   $t0, $t0, 3
/* 0043B920 03285021 */  addu  $t2, $t9, $t0
/* 0043B924 8F9982EC */  lw    $t9, %call16(fill_inst)($gp)
/* 0043B928 93A500C3 */  lbu   $a1, 0xc3($sp)
/* 0043B92C 93A600C7 */  lbu   $a2, 0xc7($sp)
/* 0043B930 97A700BA */  lhu   $a3, 0xba($sp)
/* 0043B934 AFAA0010 */  sw    $t2, 0x10($sp)
/* 0043B938 0320F809 */  jalr  $t9
/* 0043B93C AFA00014 */   sw    $zero, 0x14($sp)
/* 0043B940 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043B944 97A900BA */  lhu   $t1, 0xba($sp)
/* 0043B948 8F8E8C4C */  lw     $t6, %got(fp_hack_flag)($gp)
/* 0043B94C 24010003 */  li    $at, 3
/* 0043B950 91CE0000 */  lbu   $t6, ($t6)
/* 0043B954 27A200B8 */  addiu $v0, $sp, 0xb8
/* 0043B958 15C10010 */  bne   $t6, $at, .L0043B99C
/* 0043B95C 00095880 */   sll   $t3, $t1, 2
/* 0043B960 8F8C89A8 */  lw     $t4, %got(fp_spin_times)($gp)
/* 0043B964 8F998024 */  lw    $t9, %got(func_0043B6C4)($gp)
/* 0043B968 258CFD80 */  addiu $t4, $t4, -0x280
/* 0043B96C 016C7821 */  addu  $t7, $t3, $t4
/* 0043B970 8DE40000 */  lw    $a0, ($t7)
/* 0043B974 2739B6C4 */  addiu $t9, %lo(func_0043B6C4) # addiu $t9, $t9, -0x493c
/* 0043B978 24840001 */  addiu $a0, $a0, 1
/* 0043B97C 04810003 */  bgez  $a0, .L0043B98C
/* 0043B980 0004C043 */   sra   $t8, $a0, 1
/* 0043B984 24810001 */  addiu $at, $a0, 1
/* 0043B988 0001C043 */  sra   $t8, $at, 1
.L0043B98C:
/* 0043B98C 0320F809 */  jalr  $t9
/* 0043B990 03002025 */   move  $a0, $t8
/* 0043B994 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043B998 00000000 */  nop   
.L0043B99C:
/* 0043B99C 8FBF00B4 */  lw    $ra, 0xb4($sp)
/* 0043B9A0 27BD00B8 */  addiu $sp, $sp, 0xb8
/* 0043B9A4 03E00008 */  jr    $ra
/* 0043B9A8 00000000 */   nop   

    .type emitfpop, @function
    .size emitfpop, .-emitfpop
    .end emitfpop

glabel emitbcond
    .ent emitbcond
    # 00451814 parseafrrl
    # 00452968 parseafrr
    # 00453C94 parseafrl
    # 004541F0 parseafl
    # 0046743C func_0046743C
    # 00468320 func_00468320
/* 0043B9AC 3C1C0FBF */  .cpload $t9
/* 0043B9B0 279CE8B4 */  
/* 0043B9B4 0399E021 */  
/* 0043B9B8 27BDFF48 */  addiu $sp, $sp, -0xb8
/* 0043B9BC AFA400B8 */  sw    $a0, 0xb8($sp)
/* 0043B9C0 97AE00BA */  lhu   $t6, 0xba($sp)
/* 0043B9C4 8F8F8D18 */  lw     $t7, %got(opcodeformat)($gp)
/* 0043B9C8 AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 0043B9CC AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 0043B9D0 AFB000AC */  sw    $s0, 0xac($sp)
/* 0043B9D4 AFA500BC */  sw    $a1, 0xbc($sp)
/* 0043B9D8 AFA600C0 */  sw    $a2, 0xc0($sp)
/* 0043B9DC 01CFC021 */  addu  $t8, $t6, $t7
/* 0043B9E0 93190000 */  lbu   $t9, ($t8)
/* 0043B9E4 24010002 */  li    $at, 2
/* 0043B9E8 13210044 */  beq   $t9, $at, .L0043BAFC
/* 0043B9EC 00E08025 */   move  $s0, $a3
/* 0043B9F0 8F88806C */  lw    $t0, %got(RO_10017860)($gp)
/* 0043B9F4 03A05825 */  move  $t3, $sp
/* 0043B9F8 25087860 */  addiu $t0, %lo(RO_10017860) # addiu $t0, $t0, 0x7860
/* 0043B9FC 250A0048 */  addiu $t2, $t0, 0x48
.L0043BA00:
/* 0043BA00 89010000 */  lwl   $at, ($t0)
/* 0043BA04 99010003 */  lwr   $at, 3($t0)
/* 0043BA08 2508000C */  addiu $t0, $t0, 0xc
/* 0043BA0C A9610000 */  swl   $at, ($t3)
/* 0043BA10 B9610003 */  swr   $at, 3($t3)
/* 0043BA14 8901FFF8 */  lwl   $at, -8($t0)
/* 0043BA18 9901FFFB */  lwr   $at, -5($t0)
/* 0043BA1C 256B000C */  addiu $t3, $t3, 0xc
/* 0043BA20 A961FFF8 */  swl   $at, -8($t3)
/* 0043BA24 B961FFFB */  swr   $at, -5($t3)
/* 0043BA28 8901FFFC */  lwl   $at, -4($t0)
/* 0043BA2C 9901FFFF */  lwr   $at, -1($t0)
/* 0043BA30 00000000 */  nop   
/* 0043BA34 A961FFFC */  swl   $at, -4($t3)
/* 0043BA38 150AFFF1 */  bne   $t0, $t2, .L0043BA00
/* 0043BA3C B961FFFF */   swr   $at, -1($t3)
/* 0043BA40 89010000 */  lwl   $at, ($t0)
/* 0043BA44 99010003 */  lwr   $at, 3($t0)
/* 0043BA48 8F8C806C */  lw    $t4, %got(RO_10017810)($gp)
/* 0043BA4C A9610000 */  swl   $at, ($t3)
/* 0043BA50 B9610003 */  swr   $at, 3($t3)
/* 0043BA54 890A0004 */  lwl   $t2, 4($t0)
/* 0043BA58 990A0007 */  lwr   $t2, 7($t0)
/* 0043BA5C 258C7810 */  addiu $t4, %lo(RO_10017810) # addiu $t4, $t4, 0x7810
/* 0043BA60 A96A0004 */  swl   $t2, 4($t3)
/* 0043BA64 258E0048 */  addiu $t6, $t4, 0x48
/* 0043BA68 03A07825 */  move  $t7, $sp
/* 0043BA6C B96A0007 */  swr   $t2, 7($t3)
.L0043BA70:
/* 0043BA70 89810000 */  lwl   $at, ($t4)
/* 0043BA74 99810003 */  lwr   $at, 3($t4)
/* 0043BA78 258C000C */  addiu $t4, $t4, 0xc
/* 0043BA7C A9E10050 */  swl   $at, 0x50($t7)
/* 0043BA80 B9E10053 */  swr   $at, 0x53($t7)
/* 0043BA84 8981FFF8 */  lwl   $at, -8($t4)
/* 0043BA88 9981FFFB */  lwr   $at, -5($t4)
/* 0043BA8C 25EF000C */  addiu $t7, $t7, 0xc
/* 0043BA90 A9E10048 */  swl   $at, 0x48($t7)
/* 0043BA94 B9E1004B */  swr   $at, 0x4b($t7)
/* 0043BA98 8981FFFC */  lwl   $at, -4($t4)
/* 0043BA9C 9981FFFF */  lwr   $at, -1($t4)
/* 0043BAA0 00000000 */  nop   
/* 0043BAA4 A9E1004C */  swl   $at, 0x4c($t7)
/* 0043BAA8 158EFFF1 */  bne   $t4, $t6, .L0043BA70
/* 0043BAAC B9E1004F */   swr   $at, 0x4f($t7)
/* 0043BAB0 89810000 */  lwl   $at, ($t4)
/* 0043BAB4 99810003 */  lwr   $at, 3($t4)
/* 0043BAB8 2418015F */  li    $t8, 351
/* 0043BABC A9E10050 */  swl   $at, 0x50($t7)
/* 0043BAC0 B9E10053 */  swr   $at, 0x53($t7)
/* 0043BAC4 898E0004 */  lwl   $t6, 4($t4)
/* 0043BAC8 998E0007 */  lwr   $t6, 7($t4)
/* 0043BACC 00000000 */  nop   
/* 0043BAD0 A9EE0054 */  swl   $t6, 0x54($t7)
/* 0043BAD4 B9EE0057 */  swr   $t6, 0x57($t7)
/* 0043BAD8 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043BADC 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043BAE0 8FA60008 */  lw    $a2, 8($sp)
/* 0043BAE4 8FA50004 */  lw    $a1, 4($sp)
/* 0043BAE8 8FA40000 */  lw    $a0, ($sp)
/* 0043BAEC 0320F809 */  jalr  $t9
/* 0043BAF0 AFB800A0 */   sw    $t8, 0xa0($sp)
/* 0043BAF4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043BAF8 00000000 */  nop   
.L0043BAFC:
/* 0043BAFC 8FB900C0 */  lw    $t9, 0xc0($sp)
/* 0043BB00 2A018000 */  slti  $at, $s0, -0x8000
/* 0043BB04 13200046 */  beqz  $t9, .L0043BC20
/* 0043BB08 00000000 */   nop   
/* 0043BB0C 1200008F */  beqz  $s0, .L0043BD4C
/* 0043BB10 03A07825 */   move  $t7, $sp
/* 0043BB14 8F89806C */  lw    $t1, %got(RO_100177C0)($gp)
/* 0043BB18 03A05825 */  move  $t3, $sp
/* 0043BB1C 252977C0 */  addiu $t1, %lo(RO_100177C0) # addiu $t1, $t1, 0x77c0
/* 0043BB20 25280048 */  addiu $t0, $t1, 0x48
.L0043BB24:
/* 0043BB24 89210000 */  lwl   $at, ($t1)
/* 0043BB28 99210003 */  lwr   $at, 3($t1)
/* 0043BB2C 2529000C */  addiu $t1, $t1, 0xc
/* 0043BB30 A9610000 */  swl   $at, ($t3)
/* 0043BB34 B9610003 */  swr   $at, 3($t3)
/* 0043BB38 8921FFF8 */  lwl   $at, -8($t1)
/* 0043BB3C 9921FFFB */  lwr   $at, -5($t1)
/* 0043BB40 256B000C */  addiu $t3, $t3, 0xc
/* 0043BB44 A961FFF8 */  swl   $at, -8($t3)
/* 0043BB48 B961FFFB */  swr   $at, -5($t3)
/* 0043BB4C 8921FFFC */  lwl   $at, -4($t1)
/* 0043BB50 9921FFFF */  lwr   $at, -1($t1)
/* 0043BB54 00000000 */  nop   
/* 0043BB58 A961FFFC */  swl   $at, -4($t3)
/* 0043BB5C 1528FFF1 */  bne   $t1, $t0, .L0043BB24
/* 0043BB60 B961FFFF */   swr   $at, -1($t3)
/* 0043BB64 89210000 */  lwl   $at, ($t1)
/* 0043BB68 99210003 */  lwr   $at, 3($t1)
/* 0043BB6C 8F8D806C */  lw    $t5, %got(RO_10017770)($gp)
/* 0043BB70 A9610000 */  swl   $at, ($t3)
/* 0043BB74 B9610003 */  swr   $at, 3($t3)
/* 0043BB78 89280004 */  lwl   $t0, 4($t1)
/* 0043BB7C 99280007 */  lwr   $t0, 7($t1)
/* 0043BB80 25AD7770 */  addiu $t5, %lo(RO_10017770) # addiu $t5, $t5, 0x7770
/* 0043BB84 A9680004 */  swl   $t0, 4($t3)
/* 0043BB88 25AC0048 */  addiu $t4, $t5, 0x48
/* 0043BB8C B9680007 */  swr   $t0, 7($t3)
.L0043BB90:
/* 0043BB90 89A10000 */  lwl   $at, ($t5)
/* 0043BB94 99A10003 */  lwr   $at, 3($t5)
/* 0043BB98 25AD000C */  addiu $t5, $t5, 0xc
/* 0043BB9C A9E10050 */  swl   $at, 0x50($t7)
/* 0043BBA0 B9E10053 */  swr   $at, 0x53($t7)
/* 0043BBA4 89A1FFF8 */  lwl   $at, -8($t5)
/* 0043BBA8 99A1FFFB */  lwr   $at, -5($t5)
/* 0043BBAC 25EF000C */  addiu $t7, $t7, 0xc
/* 0043BBB0 A9E10048 */  swl   $at, 0x48($t7)
/* 0043BBB4 B9E1004B */  swr   $at, 0x4b($t7)
/* 0043BBB8 89A1FFFC */  lwl   $at, -4($t5)
/* 0043BBBC 99A1FFFF */  lwr   $at, -1($t5)
/* 0043BBC0 00000000 */  nop   
/* 0043BBC4 A9E1004C */  swl   $at, 0x4c($t7)
/* 0043BBC8 15ACFFF1 */  bne   $t5, $t4, .L0043BB90
/* 0043BBCC B9E1004F */   swr   $at, 0x4f($t7)
/* 0043BBD0 89A10000 */  lwl   $at, ($t5)
/* 0043BBD4 99A10003 */  lwr   $at, 3($t5)
/* 0043BBD8 24180162 */  li    $t8, 354
/* 0043BBDC A9E10050 */  swl   $at, 0x50($t7)
/* 0043BBE0 B9E10053 */  swr   $at, 0x53($t7)
/* 0043BBE4 89AC0004 */  lwl   $t4, 4($t5)
/* 0043BBE8 99AC0007 */  lwr   $t4, 7($t5)
/* 0043BBEC 00000000 */  nop   
/* 0043BBF0 A9EC0054 */  swl   $t4, 0x54($t7)
/* 0043BBF4 B9EC0057 */  swr   $t4, 0x57($t7)
/* 0043BBF8 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043BBFC 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043BC00 8FA60008 */  lw    $a2, 8($sp)
/* 0043BC04 8FA50004 */  lw    $a1, 4($sp)
/* 0043BC08 8FA40000 */  lw    $a0, ($sp)
/* 0043BC0C 0320F809 */  jalr  $t9
/* 0043BC10 AFB800A0 */   sw    $t8, 0xa0($sp)
/* 0043BC14 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043BC18 1000004C */  b     .L0043BD4C
/* 0043BC1C 00000000 */   nop   
.L0043BC20:
/* 0043BC20 14200005 */  bnez  $at, .L0043BC38
/* 0043BC24 03A06825 */   move  $t5, $sp
/* 0043BC28 34018000 */  li    $at, 32768
/* 0043BC2C 0201082A */  slt   $at, $s0, $at
/* 0043BC30 14200043 */  bnez  $at, .L0043BD40
/* 0043BC34 00000000 */   nop   
.L0043BC38:
/* 0043BC38 8F99806C */  lw    $t9, %got(RO_10017720)($gp)
/* 0043BC3C 03A04825 */  move  $t1, $sp
/* 0043BC40 27397720 */  addiu $t9, %lo(RO_10017720) # addiu $t9, $t9, 0x7720
/* 0043BC44 27280048 */  addiu $t0, $t9, 0x48
.L0043BC48:
/* 0043BC48 8B210000 */  lwl   $at, ($t9)
/* 0043BC4C 9B210003 */  lwr   $at, 3($t9)
/* 0043BC50 2739000C */  addiu $t9, $t9, 0xc
/* 0043BC54 A9210000 */  swl   $at, ($t1)
/* 0043BC58 B9210003 */  swr   $at, 3($t1)
/* 0043BC5C 8B21FFF8 */  lwl   $at, -8($t9)
/* 0043BC60 9B21FFFB */  lwr   $at, -5($t9)
/* 0043BC64 2529000C */  addiu $t1, $t1, 0xc
/* 0043BC68 A921FFF8 */  swl   $at, -8($t1)
/* 0043BC6C B921FFFB */  swr   $at, -5($t1)
/* 0043BC70 8B21FFFC */  lwl   $at, -4($t9)
/* 0043BC74 9B21FFFF */  lwr   $at, -1($t9)
/* 0043BC78 00000000 */  nop   
/* 0043BC7C A921FFFC */  swl   $at, -4($t1)
/* 0043BC80 1728FFF1 */  bne   $t9, $t0, .L0043BC48
/* 0043BC84 B921FFFF */   swr   $at, -1($t1)
/* 0043BC88 8B210000 */  lwl   $at, ($t9)
/* 0043BC8C 9B210003 */  lwr   $at, 3($t9)
/* 0043BC90 8F8B806C */  lw    $t3, %got(RO_100176D0)($gp)
/* 0043BC94 A9210000 */  swl   $at, ($t1)
/* 0043BC98 B9210003 */  swr   $at, 3($t1)
/* 0043BC9C 8B280004 */  lwl   $t0, 4($t9)
/* 0043BCA0 9B280007 */  lwr   $t0, 7($t9)
/* 0043BCA4 256B76D0 */  addiu $t3, %lo(RO_100176D0) # addiu $t3, $t3, 0x76d0
/* 0043BCA8 A9280004 */  swl   $t0, 4($t1)
/* 0043BCAC 256C0048 */  addiu $t4, $t3, 0x48
/* 0043BCB0 B9280007 */  swr   $t0, 7($t1)
.L0043BCB4:
/* 0043BCB4 89610000 */  lwl   $at, ($t3)
/* 0043BCB8 99610003 */  lwr   $at, 3($t3)
/* 0043BCBC 256B000C */  addiu $t3, $t3, 0xc
/* 0043BCC0 A9A10050 */  swl   $at, 0x50($t5)
/* 0043BCC4 B9A10053 */  swr   $at, 0x53($t5)
/* 0043BCC8 8961FFF8 */  lwl   $at, -8($t3)
/* 0043BCCC 9961FFFB */  lwr   $at, -5($t3)
/* 0043BCD0 25AD000C */  addiu $t5, $t5, 0xc
/* 0043BCD4 A9A10048 */  swl   $at, 0x48($t5)
/* 0043BCD8 B9A1004B */  swr   $at, 0x4b($t5)
/* 0043BCDC 8961FFFC */  lwl   $at, -4($t3)
/* 0043BCE0 9961FFFF */  lwr   $at, -1($t3)
/* 0043BCE4 00000000 */  nop   
/* 0043BCE8 A9A1004C */  swl   $at, 0x4c($t5)
/* 0043BCEC 156CFFF1 */  bne   $t3, $t4, .L0043BCB4
/* 0043BCF0 B9A1004F */   swr   $at, 0x4f($t5)
/* 0043BCF4 89610000 */  lwl   $at, ($t3)
/* 0043BCF8 99610003 */  lwr   $at, 3($t3)
/* 0043BCFC 240F0164 */  li    $t7, 356
/* 0043BD00 A9A10050 */  swl   $at, 0x50($t5)
/* 0043BD04 B9A10053 */  swr   $at, 0x53($t5)
/* 0043BD08 896C0004 */  lwl   $t4, 4($t3)
/* 0043BD0C 996C0007 */  lwr   $t4, 7($t3)
/* 0043BD10 00000000 */  nop   
/* 0043BD14 A9AC0054 */  swl   $t4, 0x54($t5)
/* 0043BD18 B9AC0057 */  swr   $t4, 0x57($t5)
/* 0043BD1C 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043BD20 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043BD24 8FA60008 */  lw    $a2, 8($sp)
/* 0043BD28 8FA50004 */  lw    $a1, 4($sp)
/* 0043BD2C 8FA40000 */  lw    $a0, ($sp)
/* 0043BD30 0320F809 */  jalr  $t9
/* 0043BD34 AFAF00A0 */   sw    $t7, 0xa0($sp)
/* 0043BD38 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043BD3C 00000000 */  nop   
.L0043BD40:
/* 0043BD40 06010002 */  bgez  $s0, .L0043BD4C
/* 0043BD44 3218FFFF */   andi  $t8, $s0, 0xffff
/* 0043BD48 03008025 */  move  $s0, $t8
.L0043BD4C:
/* 0043BD4C 8F848BB0 */  lw     $a0, %got(bbindex)($gp)
/* 0043BD50 00000000 */  nop   
/* 0043BD54 8C8A0000 */  lw    $t2, ($a0)
/* 0043BD58 00000000 */  nop   
/* 0043BD5C 25480001 */  addiu $t0, $t2, 1
/* 0043BD60 AC880000 */  sw    $t0, ($a0)
/* 0043BD64 8F9982DC */  lw    $t9, %call16(initbb)($gp)
/* 0043BD68 00000000 */  nop   
/* 0043BD6C 0320F809 */  jalr  $t9
/* 0043BD70 00000000 */   nop   
/* 0043BD74 97B900BA */  lhu   $t9, 0xba($sp)
/* 0043BD78 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043BD7C 2729FFE0 */  addiu $t1, $t9, -0x20
/* 0043BD80 2D2E0040 */  sltiu $t6, $t1, 0x40
/* 0043BD84 11C0000A */  beqz  $t6, .L0043BDB0
/* 0043BD88 24040048 */   li    $a0, 72
/* 0043BD8C 8F8D8080 */  lw    $t5, %got(D_10004AD0)($gp)
/* 0043BD90 00096143 */  sra   $t4, $t1, 5
/* 0043BD94 000C5880 */  sll   $t3, $t4, 2
/* 0043BD98 25AD4AD0 */  addiu $t5, %lo(D_10004AD0) # addiu $t5, $t5, 0x4ad0
/* 0043BD9C 01AB7821 */  addu  $t7, $t5, $t3
/* 0043BDA0 8DF80000 */  lw    $t8, ($t7)
/* 0043BDA4 00000000 */  nop   
/* 0043BDA8 01385004 */  sllv  $t2, $t8, $t1
/* 0043BDAC 294E0000 */  slti  $t6, $t2, 0
.L0043BDB0:
/* 0043BDB0 11C00002 */  beqz  $t6, .L0043BDBC
/* 0043BDB4 24060048 */   li    $a2, 72
/* 0043BDB8 2404001F */  li    $a0, 31
.L0043BDBC:
/* 0043BDBC 8F8C8BB0 */  lw     $t4, %got(bbindex)($gp)
/* 0043BDC0 8F998B40 */  lw     $t9, %got(pinstruction)($gp)
/* 0043BDC4 8D8C0000 */  lw    $t4, ($t4)
/* 0043BDC8 8F390000 */  lw    $t9, ($t9)
/* 0043BDCC 000C6880 */  sll   $t5, $t4, 2
/* 0043BDD0 01AC6821 */  addu  $t5, $t5, $t4
/* 0043BDD4 000D68C0 */  sll   $t5, $t5, 3
/* 0043BDD8 032D5821 */  addu  $t3, $t9, $t5
/* 0043BDDC 8F9982EC */  lw    $t9, %call16(fill_inst)($gp)
/* 0043BDE0 93A500BF */  lbu   $a1, 0xbf($sp)
/* 0043BDE4 97A700BA */  lhu   $a3, 0xba($sp)
/* 0043BDE8 AFAB0010 */  sw    $t3, 0x10($sp)
/* 0043BDEC 0320F809 */  jalr  $t9
/* 0043BDF0 AFB00014 */   sw    $s0, 0x14($sp)
/* 0043BDF4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043BDF8 8FAF00C0 */  lw    $t7, 0xc0($sp)
/* 0043BDFC 8F898BB0 */  lw     $t1, %got(bbindex)($gp)
/* 0043BE00 8F988B40 */  lw     $t8, %got(pinstruction)($gp)
/* 0043BE04 8D290000 */  lw    $t1, ($t1)
/* 0043BE08 8F180000 */  lw    $t8, ($t8)
/* 0043BE0C 00095080 */  sll   $t2, $t1, 2
/* 0043BE10 01495021 */  addu  $t2, $t2, $t1
/* 0043BE14 000A50C0 */  sll   $t2, $t2, 3
/* 0043BE18 030A4021 */  addu  $t0, $t8, $t2
/* 0043BE1C AD0F0014 */  sw    $t7, 0x14($t0)
/* 0043BE20 8FBF00B4 */  lw    $ra, 0xb4($sp)
/* 0043BE24 8FB000AC */  lw    $s0, 0xac($sp)
/* 0043BE28 03E00008 */  jr    $ra
/* 0043BE2C 27BD00B8 */   addiu $sp, $sp, 0xb8

    .type emitbcond, @function
    .size emitbcond, .-emitbcond
    .end emitbcond

glabel emitbene
    .ent emitbene
    # 0043B6C4 func_0043B6C4
    # 00451814 parseafrrl
    # 004531B8 parseafa
    # 00453C94 parseafrl
    # 004541F0 parseafl
    # 00465E20 genmul
    # 00466908 gendmul
    # 0046743C func_0046743C
    # 00467C5C gendiv
    # 00468320 func_00468320
    # 00468AAC genddiv
    # 00469650 func_00469650
    # 00469970 func_00469970
/* 0043BE30 3C1C0FBF */  .cpload $t9
/* 0043BE34 279CE430 */  
/* 0043BE38 0399E021 */  
/* 0043BE3C 27BDFF48 */  addiu $sp, $sp, -0xb8
/* 0043BE40 AFA400B8 */  sw    $a0, 0xb8($sp)
/* 0043BE44 97AE00BA */  lhu   $t6, 0xba($sp)
/* 0043BE48 8F8F8D18 */  lw     $t7, %got(opcodeformat)($gp)
/* 0043BE4C AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 0043BE50 AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 0043BE54 AFA500BC */  sw    $a1, 0xbc($sp)
/* 0043BE58 AFA600C0 */  sw    $a2, 0xc0($sp)
/* 0043BE5C AFA700C4 */  sw    $a3, 0xc4($sp)
/* 0043BE60 01CFC021 */  addu  $t8, $t6, $t7
/* 0043BE64 93190000 */  lbu   $t9, ($t8)
/* 0043BE68 24010001 */  li    $at, 1
/* 0043BE6C 13210043 */  beq   $t9, $at, .L0043BF7C
/* 0043BE70 03A07825 */   move  $t7, $sp
/* 0043BE74 8F88806C */  lw    $t0, %got(RO_10017A40)($gp)
/* 0043BE78 03A05825 */  move  $t3, $sp
/* 0043BE7C 25087A40 */  addiu $t0, %lo(RO_10017A40) # addiu $t0, $t0, 0x7a40
/* 0043BE80 250A0048 */  addiu $t2, $t0, 0x48
.L0043BE84:
/* 0043BE84 89010000 */  lwl   $at, ($t0)
/* 0043BE88 99010003 */  lwr   $at, 3($t0)
/* 0043BE8C 2508000C */  addiu $t0, $t0, 0xc
/* 0043BE90 A9610000 */  swl   $at, ($t3)
/* 0043BE94 B9610003 */  swr   $at, 3($t3)
/* 0043BE98 8901FFF8 */  lwl   $at, -8($t0)
/* 0043BE9C 9901FFFB */  lwr   $at, -5($t0)
/* 0043BEA0 256B000C */  addiu $t3, $t3, 0xc
/* 0043BEA4 A961FFF8 */  swl   $at, -8($t3)
/* 0043BEA8 B961FFFB */  swr   $at, -5($t3)
/* 0043BEAC 8901FFFC */  lwl   $at, -4($t0)
/* 0043BEB0 9901FFFF */  lwr   $at, -1($t0)
/* 0043BEB4 00000000 */  nop   
/* 0043BEB8 A961FFFC */  swl   $at, -4($t3)
/* 0043BEBC 150AFFF1 */  bne   $t0, $t2, .L0043BE84
/* 0043BEC0 B961FFFF */   swr   $at, -1($t3)
/* 0043BEC4 89010000 */  lwl   $at, ($t0)
/* 0043BEC8 99010003 */  lwr   $at, 3($t0)
/* 0043BECC 8F8C806C */  lw    $t4, %got(RO_100179F0)($gp)
/* 0043BED0 A9610000 */  swl   $at, ($t3)
/* 0043BED4 B9610003 */  swr   $at, 3($t3)
/* 0043BED8 890A0004 */  lwl   $t2, 4($t0)
/* 0043BEDC 990A0007 */  lwr   $t2, 7($t0)
/* 0043BEE0 258C79F0 */  addiu $t4, %lo(RO_100179F0) # addiu $t4, $t4, 0x79f0
/* 0043BEE4 A96A0004 */  swl   $t2, 4($t3)
/* 0043BEE8 258E0048 */  addiu $t6, $t4, 0x48
/* 0043BEEC B96A0007 */  swr   $t2, 7($t3)
.L0043BEF0:
/* 0043BEF0 89810000 */  lwl   $at, ($t4)
/* 0043BEF4 99810003 */  lwr   $at, 3($t4)
/* 0043BEF8 258C000C */  addiu $t4, $t4, 0xc
/* 0043BEFC A9E10050 */  swl   $at, 0x50($t7)
/* 0043BF00 B9E10053 */  swr   $at, 0x53($t7)
/* 0043BF04 8981FFF8 */  lwl   $at, -8($t4)
/* 0043BF08 9981FFFB */  lwr   $at, -5($t4)
/* 0043BF0C 25EF000C */  addiu $t7, $t7, 0xc
/* 0043BF10 A9E10048 */  swl   $at, 0x48($t7)
/* 0043BF14 B9E1004B */  swr   $at, 0x4b($t7)
/* 0043BF18 8981FFFC */  lwl   $at, -4($t4)
/* 0043BF1C 9981FFFF */  lwr   $at, -1($t4)
/* 0043BF20 00000000 */  nop   
/* 0043BF24 A9E1004C */  swl   $at, 0x4c($t7)
/* 0043BF28 158EFFF1 */  bne   $t4, $t6, .L0043BEF0
/* 0043BF2C B9E1004F */   swr   $at, 0x4f($t7)
/* 0043BF30 89810000 */  lwl   $at, ($t4)
/* 0043BF34 99810003 */  lwr   $at, 3($t4)
/* 0043BF38 24180181 */  li    $t8, 385
/* 0043BF3C A9E10050 */  swl   $at, 0x50($t7)
/* 0043BF40 B9E10053 */  swr   $at, 0x53($t7)
/* 0043BF44 898E0004 */  lwl   $t6, 4($t4)
/* 0043BF48 998E0007 */  lwr   $t6, 7($t4)
/* 0043BF4C 00000000 */  nop   
/* 0043BF50 A9EE0054 */  swl   $t6, 0x54($t7)
/* 0043BF54 B9EE0057 */  swr   $t6, 0x57($t7)
/* 0043BF58 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043BF5C 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043BF60 8FA60008 */  lw    $a2, 8($sp)
/* 0043BF64 8FA50004 */  lw    $a1, 4($sp)
/* 0043BF68 8FA40000 */  lw    $a0, ($sp)
/* 0043BF6C 0320F809 */  jalr  $t9
/* 0043BF70 AFB800A0 */   sw    $t8, 0xa0($sp)
/* 0043BF74 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043BF78 00000000 */  nop   
.L0043BF7C:
/* 0043BF7C 8FB900C4 */  lw    $t9, 0xc4($sp)
/* 0043BF80 8FA200C8 */  lw    $v0, 0xc8($sp)
/* 0043BF84 1320004A */  beqz  $t9, .L0043C0B0
/* 0043BF88 28418000 */   slti  $at, $v0, -0x8000
/* 0043BF8C 8FA200C8 */  lw    $v0, 0xc8($sp)
/* 0043BF90 03A07825 */  move  $t7, $sp
/* 0043BF94 10400093 */  beqz  $v0, .L0043C1E4
/* 0043BF98 00000000 */   nop   
/* 0043BF9C 8F89806C */  lw    $t1, %got(RO_100179A0)($gp)
/* 0043BFA0 03A05825 */  move  $t3, $sp
/* 0043BFA4 252979A0 */  addiu $t1, %lo(RO_100179A0) # addiu $t1, $t1, 0x79a0
/* 0043BFA8 25280048 */  addiu $t0, $t1, 0x48
.L0043BFAC:
/* 0043BFAC 89210000 */  lwl   $at, ($t1)
/* 0043BFB0 99210003 */  lwr   $at, 3($t1)
/* 0043BFB4 2529000C */  addiu $t1, $t1, 0xc
/* 0043BFB8 A9610000 */  swl   $at, ($t3)
/* 0043BFBC B9610003 */  swr   $at, 3($t3)
/* 0043BFC0 8921FFF8 */  lwl   $at, -8($t1)
/* 0043BFC4 9921FFFB */  lwr   $at, -5($t1)
/* 0043BFC8 256B000C */  addiu $t3, $t3, 0xc
/* 0043BFCC A961FFF8 */  swl   $at, -8($t3)
/* 0043BFD0 B961FFFB */  swr   $at, -5($t3)
/* 0043BFD4 8921FFFC */  lwl   $at, -4($t1)
/* 0043BFD8 9921FFFF */  lwr   $at, -1($t1)
/* 0043BFDC 00000000 */  nop   
/* 0043BFE0 A961FFFC */  swl   $at, -4($t3)
/* 0043BFE4 1528FFF1 */  bne   $t1, $t0, .L0043BFAC
/* 0043BFE8 B961FFFF */   swr   $at, -1($t3)
/* 0043BFEC 89210000 */  lwl   $at, ($t1)
/* 0043BFF0 99210003 */  lwr   $at, 3($t1)
/* 0043BFF4 8F8D806C */  lw    $t5, %got(RO_10017950)($gp)
/* 0043BFF8 A9610000 */  swl   $at, ($t3)
/* 0043BFFC B9610003 */  swr   $at, 3($t3)
/* 0043C000 89280004 */  lwl   $t0, 4($t1)
/* 0043C004 99280007 */  lwr   $t0, 7($t1)
/* 0043C008 25AD7950 */  addiu $t5, %lo(RO_10017950) # addiu $t5, $t5, 0x7950
/* 0043C00C A9680004 */  swl   $t0, 4($t3)
/* 0043C010 25AC0048 */  addiu $t4, $t5, 0x48
/* 0043C014 B9680007 */  swr   $t0, 7($t3)
.L0043C018:
/* 0043C018 89A10000 */  lwl   $at, ($t5)
/* 0043C01C 99A10003 */  lwr   $at, 3($t5)
/* 0043C020 25AD000C */  addiu $t5, $t5, 0xc
/* 0043C024 A9E10050 */  swl   $at, 0x50($t7)
/* 0043C028 B9E10053 */  swr   $at, 0x53($t7)
/* 0043C02C 89A1FFF8 */  lwl   $at, -8($t5)
/* 0043C030 99A1FFFB */  lwr   $at, -5($t5)
/* 0043C034 25EF000C */  addiu $t7, $t7, 0xc
/* 0043C038 A9E10048 */  swl   $at, 0x48($t7)
/* 0043C03C B9E1004B */  swr   $at, 0x4b($t7)
/* 0043C040 89A1FFFC */  lwl   $at, -4($t5)
/* 0043C044 99A1FFFF */  lwr   $at, -1($t5)
/* 0043C048 00000000 */  nop   
/* 0043C04C A9E1004C */  swl   $at, 0x4c($t7)
/* 0043C050 15ACFFF1 */  bne   $t5, $t4, .L0043C018
/* 0043C054 B9E1004F */   swr   $at, 0x4f($t7)
/* 0043C058 89A10000 */  lwl   $at, ($t5)
/* 0043C05C 99A10003 */  lwr   $at, 3($t5)
/* 0043C060 24180184 */  li    $t8, 388
/* 0043C064 A9E10050 */  swl   $at, 0x50($t7)
/* 0043C068 B9E10053 */  swr   $at, 0x53($t7)
/* 0043C06C 89AC0004 */  lwl   $t4, 4($t5)
/* 0043C070 99AC0007 */  lwr   $t4, 7($t5)
/* 0043C074 00000000 */  nop   
/* 0043C078 A9EC0054 */  swl   $t4, 0x54($t7)
/* 0043C07C B9EC0057 */  swr   $t4, 0x57($t7)
/* 0043C080 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043C084 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043C088 8FA60008 */  lw    $a2, 8($sp)
/* 0043C08C 8FA50004 */  lw    $a1, 4($sp)
/* 0043C090 8FA40000 */  lw    $a0, ($sp)
/* 0043C094 AFA200C8 */  sw    $v0, 0xc8($sp)
/* 0043C098 0320F809 */  jalr  $t9
/* 0043C09C AFB800A0 */   sw    $t8, 0xa0($sp)
/* 0043C0A0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043C0A4 8FA200C8 */  lw    $v0, 0xc8($sp)
/* 0043C0A8 1000004E */  b     .L0043C1E4
/* 0043C0AC 00000000 */   nop   
.L0043C0B0:
/* 0043C0B0 14200005 */  bnez  $at, .L0043C0C8
/* 0043C0B4 03A06825 */   move  $t5, $sp
/* 0043C0B8 34018000 */  li    $at, 32768
/* 0043C0BC 0041082A */  slt   $at, $v0, $at
/* 0043C0C0 14200045 */  bnez  $at, .L0043C1D8
/* 0043C0C4 00000000 */   nop   
.L0043C0C8:
/* 0043C0C8 8F99806C */  lw    $t9, %got(RO_10017900)($gp)
/* 0043C0CC 03A04825 */  move  $t1, $sp
/* 0043C0D0 27397900 */  addiu $t9, %lo(RO_10017900) # addiu $t9, $t9, 0x7900
/* 0043C0D4 27280048 */  addiu $t0, $t9, 0x48
.L0043C0D8:
/* 0043C0D8 8B210000 */  lwl   $at, ($t9)
/* 0043C0DC 9B210003 */  lwr   $at, 3($t9)
/* 0043C0E0 2739000C */  addiu $t9, $t9, 0xc
/* 0043C0E4 A9210000 */  swl   $at, ($t1)
/* 0043C0E8 B9210003 */  swr   $at, 3($t1)
/* 0043C0EC 8B21FFF8 */  lwl   $at, -8($t9)
/* 0043C0F0 9B21FFFB */  lwr   $at, -5($t9)
/* 0043C0F4 2529000C */  addiu $t1, $t1, 0xc
/* 0043C0F8 A921FFF8 */  swl   $at, -8($t1)
/* 0043C0FC B921FFFB */  swr   $at, -5($t1)
/* 0043C100 8B21FFFC */  lwl   $at, -4($t9)
/* 0043C104 9B21FFFF */  lwr   $at, -1($t9)
/* 0043C108 00000000 */  nop   
/* 0043C10C A921FFFC */  swl   $at, -4($t1)
/* 0043C110 1728FFF1 */  bne   $t9, $t0, .L0043C0D8
/* 0043C114 B921FFFF */   swr   $at, -1($t1)
/* 0043C118 8B210000 */  lwl   $at, ($t9)
/* 0043C11C 9B210003 */  lwr   $at, 3($t9)
/* 0043C120 8F8B806C */  lw    $t3, %got(RO_100178B0)($gp)
/* 0043C124 A9210000 */  swl   $at, ($t1)
/* 0043C128 B9210003 */  swr   $at, 3($t1)
/* 0043C12C 8B280004 */  lwl   $t0, 4($t9)
/* 0043C130 9B280007 */  lwr   $t0, 7($t9)
/* 0043C134 256B78B0 */  addiu $t3, %lo(RO_100178B0) # addiu $t3, $t3, 0x78b0
/* 0043C138 A9280004 */  swl   $t0, 4($t1)
/* 0043C13C 256C0048 */  addiu $t4, $t3, 0x48
/* 0043C140 B9280007 */  swr   $t0, 7($t1)
.L0043C144:
/* 0043C144 89610000 */  lwl   $at, ($t3)
/* 0043C148 99610003 */  lwr   $at, 3($t3)
/* 0043C14C 256B000C */  addiu $t3, $t3, 0xc
/* 0043C150 A9A10050 */  swl   $at, 0x50($t5)
/* 0043C154 B9A10053 */  swr   $at, 0x53($t5)
/* 0043C158 8961FFF8 */  lwl   $at, -8($t3)
/* 0043C15C 9961FFFB */  lwr   $at, -5($t3)
/* 0043C160 25AD000C */  addiu $t5, $t5, 0xc
/* 0043C164 A9A10048 */  swl   $at, 0x48($t5)
/* 0043C168 B9A1004B */  swr   $at, 0x4b($t5)
/* 0043C16C 8961FFFC */  lwl   $at, -4($t3)
/* 0043C170 9961FFFF */  lwr   $at, -1($t3)
/* 0043C174 00000000 */  nop   
/* 0043C178 A9A1004C */  swl   $at, 0x4c($t5)
/* 0043C17C 156CFFF1 */  bne   $t3, $t4, .L0043C144
/* 0043C180 B9A1004F */   swr   $at, 0x4f($t5)
/* 0043C184 89610000 */  lwl   $at, ($t3)
/* 0043C188 99610003 */  lwr   $at, 3($t3)
/* 0043C18C 240F0186 */  li    $t7, 390
/* 0043C190 A9A10050 */  swl   $at, 0x50($t5)
/* 0043C194 B9A10053 */  swr   $at, 0x53($t5)
/* 0043C198 896C0004 */  lwl   $t4, 4($t3)
/* 0043C19C 996C0007 */  lwr   $t4, 7($t3)
/* 0043C1A0 00000000 */  nop   
/* 0043C1A4 A9AC0054 */  swl   $t4, 0x54($t5)
/* 0043C1A8 B9AC0057 */  swr   $t4, 0x57($t5)
/* 0043C1AC 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043C1B0 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043C1B4 8FA60008 */  lw    $a2, 8($sp)
/* 0043C1B8 8FA50004 */  lw    $a1, 4($sp)
/* 0043C1BC 8FA40000 */  lw    $a0, ($sp)
/* 0043C1C0 AFA200C8 */  sw    $v0, 0xc8($sp)
/* 0043C1C4 0320F809 */  jalr  $t9
/* 0043C1C8 AFAF00A0 */   sw    $t7, 0xa0($sp)
/* 0043C1CC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043C1D0 8FA200C8 */  lw    $v0, 0xc8($sp)
/* 0043C1D4 00000000 */  nop   
.L0043C1D8:
/* 0043C1D8 04410002 */  bgez  $v0, .L0043C1E4
/* 0043C1DC 3058FFFF */   andi  $t8, $v0, 0xffff
/* 0043C1E0 03001025 */  move  $v0, $t8
.L0043C1E4:
/* 0043C1E4 8F848BB0 */  lw     $a0, %got(bbindex)($gp)
/* 0043C1E8 AFA200C8 */  sw    $v0, 0xc8($sp)
/* 0043C1EC 8C8A0000 */  lw    $t2, ($a0)
/* 0043C1F0 00000000 */  nop   
/* 0043C1F4 25480001 */  addiu $t0, $t2, 1
/* 0043C1F8 AC880000 */  sw    $t0, ($a0)
/* 0043C1FC 8F9982DC */  lw    $t9, %call16(initbb)($gp)
/* 0043C200 00000000 */  nop   
/* 0043C204 0320F809 */  jalr  $t9
/* 0043C208 00000000 */   nop   
/* 0043C20C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043C210 8FA200C8 */  lw    $v0, 0xc8($sp)
/* 0043C214 8F898BB0 */  lw     $t1, %got(bbindex)($gp)
/* 0043C218 8F998B40 */  lw     $t9, %got(pinstruction)($gp)
/* 0043C21C 8D290000 */  lw    $t1, ($t1)
/* 0043C220 8F390000 */  lw    $t9, ($t9)
/* 0043C224 00097080 */  sll   $t6, $t1, 2
/* 0043C228 01C97021 */  addu  $t6, $t6, $t1
/* 0043C22C 000E70C0 */  sll   $t6, $t6, 3
/* 0043C230 032E6021 */  addu  $t4, $t9, $t6
/* 0043C234 8F9982EC */  lw    $t9, %call16(fill_inst)($gp)
/* 0043C238 93A500BF */  lbu   $a1, 0xbf($sp)
/* 0043C23C 93A600C3 */  lbu   $a2, 0xc3($sp)
/* 0043C240 97A700BA */  lhu   $a3, 0xba($sp)
/* 0043C244 AFAC0010 */  sw    $t4, 0x10($sp)
/* 0043C248 24040048 */  li    $a0, 72
/* 0043C24C 0320F809 */  jalr  $t9
/* 0043C250 AFA20014 */   sw    $v0, 0x14($sp)
/* 0043C254 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043C258 8FAB00C4 */  lw    $t3, 0xc4($sp)
/* 0043C25C 8F8F8BB0 */  lw     $t7, %got(bbindex)($gp)
/* 0043C260 8F8D8B40 */  lw     $t5, %got(pinstruction)($gp)
/* 0043C264 8DEF0000 */  lw    $t7, ($t7)
/* 0043C268 8DAD0000 */  lw    $t5, ($t5)
/* 0043C26C 000FC080 */  sll   $t8, $t7, 2
/* 0043C270 030FC021 */  addu  $t8, $t8, $t7
/* 0043C274 0018C0C0 */  sll   $t8, $t8, 3
/* 0043C278 01B85021 */  addu  $t2, $t5, $t8
/* 0043C27C AD4B0014 */  sw    $t3, 0x14($t2)
/* 0043C280 8FBF00B4 */  lw    $ra, 0xb4($sp)
/* 0043C284 27BD00B8 */  addiu $sp, $sp, 0xb8
/* 0043C288 03E00008 */  jr    $ra
/* 0043C28C 00000000 */   nop   

    .type emitbene, @function
    .size emitbene, .-emitbene
    .end emitbene

glabel emitcoproc
    .ent emitcoproc
    # 0045438C parseaforrr
/* 0043C290 3C1C0FBF */  .cpload $t9
/* 0043C294 279CDFD0 */  
/* 0043C298 0399E021 */  
/* 0043C29C 27BDFF48 */  addiu $sp, $sp, -0xb8
/* 0043C2A0 AFA400B8 */  sw    $a0, 0xb8($sp)
/* 0043C2A4 97AE00BA */  lhu   $t6, 0xba($sp)
/* 0043C2A8 8F8F8D18 */  lw     $t7, %got(opcodeformat)($gp)
/* 0043C2AC AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 0043C2B0 AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 0043C2B4 AFA500BC */  sw    $a1, 0xbc($sp)
/* 0043C2B8 01CFC021 */  addu  $t8, $t6, $t7
/* 0043C2BC 93190000 */  lbu   $t9, ($t8)
/* 0043C2C0 24010005 */  li    $at, 5
/* 0043C2C4 13210043 */  beq   $t9, $at, .L0043C3D4
/* 0043C2C8 03A07825 */   move  $t7, $sp
/* 0043C2CC 8F88806C */  lw    $t0, %got(RO_10017BD0)($gp)
/* 0043C2D0 03A05825 */  move  $t3, $sp
/* 0043C2D4 25087BD0 */  addiu $t0, %lo(RO_10017BD0) # addiu $t0, $t0, 0x7bd0
/* 0043C2D8 250A0048 */  addiu $t2, $t0, 0x48
.L0043C2DC:
/* 0043C2DC 89010000 */  lwl   $at, ($t0)
/* 0043C2E0 99010003 */  lwr   $at, 3($t0)
/* 0043C2E4 2508000C */  addiu $t0, $t0, 0xc
/* 0043C2E8 A9610000 */  swl   $at, ($t3)
/* 0043C2EC B9610003 */  swr   $at, 3($t3)
/* 0043C2F0 8901FFF8 */  lwl   $at, -8($t0)
/* 0043C2F4 9901FFFB */  lwr   $at, -5($t0)
/* 0043C2F8 256B000C */  addiu $t3, $t3, 0xc
/* 0043C2FC A961FFF8 */  swl   $at, -8($t3)
/* 0043C300 B961FFFB */  swr   $at, -5($t3)
/* 0043C304 8901FFFC */  lwl   $at, -4($t0)
/* 0043C308 9901FFFF */  lwr   $at, -1($t0)
/* 0043C30C 00000000 */  nop   
/* 0043C310 A961FFFC */  swl   $at, -4($t3)
/* 0043C314 150AFFF1 */  bne   $t0, $t2, .L0043C2DC
/* 0043C318 B961FFFF */   swr   $at, -1($t3)
/* 0043C31C 89010000 */  lwl   $at, ($t0)
/* 0043C320 99010003 */  lwr   $at, 3($t0)
/* 0043C324 8F8C806C */  lw    $t4, %got(RO_10017B80)($gp)
/* 0043C328 A9610000 */  swl   $at, ($t3)
/* 0043C32C B9610003 */  swr   $at, 3($t3)
/* 0043C330 890A0004 */  lwl   $t2, 4($t0)
/* 0043C334 990A0007 */  lwr   $t2, 7($t0)
/* 0043C338 258C7B80 */  addiu $t4, %lo(RO_10017B80) # addiu $t4, $t4, 0x7b80
/* 0043C33C A96A0004 */  swl   $t2, 4($t3)
/* 0043C340 258E0048 */  addiu $t6, $t4, 0x48
/* 0043C344 B96A0007 */  swr   $t2, 7($t3)
.L0043C348:
/* 0043C348 89810000 */  lwl   $at, ($t4)
/* 0043C34C 99810003 */  lwr   $at, 3($t4)
/* 0043C350 258C000C */  addiu $t4, $t4, 0xc
/* 0043C354 A9E10050 */  swl   $at, 0x50($t7)
/* 0043C358 B9E10053 */  swr   $at, 0x53($t7)
/* 0043C35C 8981FFF8 */  lwl   $at, -8($t4)
/* 0043C360 9981FFFB */  lwr   $at, -5($t4)
/* 0043C364 25EF000C */  addiu $t7, $t7, 0xc
/* 0043C368 A9E10048 */  swl   $at, 0x48($t7)
/* 0043C36C B9E1004B */  swr   $at, 0x4b($t7)
/* 0043C370 8981FFFC */  lwl   $at, -4($t4)
/* 0043C374 9981FFFF */  lwr   $at, -1($t4)
/* 0043C378 00000000 */  nop   
/* 0043C37C A9E1004C */  swl   $at, 0x4c($t7)
/* 0043C380 158EFFF1 */  bne   $t4, $t6, .L0043C348
/* 0043C384 B9E1004F */   swr   $at, 0x4f($t7)
/* 0043C388 89810000 */  lwl   $at, ($t4)
/* 0043C38C 99810003 */  lwr   $at, 3($t4)
/* 0043C390 2418019C */  li    $t8, 412
/* 0043C394 A9E10050 */  swl   $at, 0x50($t7)
/* 0043C398 B9E10053 */  swr   $at, 0x53($t7)
/* 0043C39C 898E0004 */  lwl   $t6, 4($t4)
/* 0043C3A0 998E0007 */  lwr   $t6, 7($t4)
/* 0043C3A4 00000000 */  nop   
/* 0043C3A8 A9EE0054 */  swl   $t6, 0x54($t7)
/* 0043C3AC B9EE0057 */  swr   $t6, 0x57($t7)
/* 0043C3B0 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043C3B4 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043C3B8 8FA60008 */  lw    $a2, 8($sp)
/* 0043C3BC 8FA50004 */  lw    $a1, 4($sp)
/* 0043C3C0 8FA40000 */  lw    $a0, ($sp)
/* 0043C3C4 0320F809 */  jalr  $t9
/* 0043C3C8 AFB800A0 */   sw    $t8, 0xa0($sp)
/* 0043C3CC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043C3D0 00000000 */  nop   
.L0043C3D4:
/* 0043C3D4 8FB900BC */  lw    $t9, 0xbc($sp)
/* 0043C3D8 3C010200 */  lui   $at, 0x200
/* 0043C3DC 07200003 */  bltz  $t9, .L0043C3EC
/* 0043C3E0 0321082A */   slt   $at, $t9, $at
/* 0043C3E4 14200045 */  bnez  $at, .L0043C4FC
/* 0043C3E8 97B900BA */   lhu   $t9, 0xba($sp)
.L0043C3EC:
/* 0043C3EC 8F89806C */  lw    $t1, %got(RO_10017B30)($gp)
/* 0043C3F0 03A05825 */  move  $t3, $sp
/* 0043C3F4 25297B30 */  addiu $t1, %lo(RO_10017B30) # addiu $t1, $t1, 0x7b30
/* 0043C3F8 25280048 */  addiu $t0, $t1, 0x48
.L0043C3FC:
/* 0043C3FC 89210000 */  lwl   $at, ($t1)
/* 0043C400 99210003 */  lwr   $at, 3($t1)
/* 0043C404 2529000C */  addiu $t1, $t1, 0xc
/* 0043C408 A9610000 */  swl   $at, ($t3)
/* 0043C40C B9610003 */  swr   $at, 3($t3)
/* 0043C410 8921FFF8 */  lwl   $at, -8($t1)
/* 0043C414 9921FFFB */  lwr   $at, -5($t1)
/* 0043C418 256B000C */  addiu $t3, $t3, 0xc
/* 0043C41C A961FFF8 */  swl   $at, -8($t3)
/* 0043C420 B961FFFB */  swr   $at, -5($t3)
/* 0043C424 8921FFFC */  lwl   $at, -4($t1)
/* 0043C428 9921FFFF */  lwr   $at, -1($t1)
/* 0043C42C 00000000 */  nop   
/* 0043C430 A961FFFC */  swl   $at, -4($t3)
/* 0043C434 1528FFF1 */  bne   $t1, $t0, .L0043C3FC
/* 0043C438 B961FFFF */   swr   $at, -1($t3)
/* 0043C43C 89210000 */  lwl   $at, ($t1)
/* 0043C440 99210003 */  lwr   $at, 3($t1)
/* 0043C444 8F8D806C */  lw    $t5, %got(RO_10017AE0)($gp)
/* 0043C448 A9610000 */  swl   $at, ($t3)
/* 0043C44C B9610003 */  swr   $at, 3($t3)
/* 0043C450 89280004 */  lwl   $t0, 4($t1)
/* 0043C454 99280007 */  lwr   $t0, 7($t1)
/* 0043C458 25AD7AE0 */  addiu $t5, %lo(RO_10017AE0) # addiu $t5, $t5, 0x7ae0
/* 0043C45C A9680004 */  swl   $t0, 4($t3)
/* 0043C460 25AC0048 */  addiu $t4, $t5, 0x48
/* 0043C464 03A07825 */  move  $t7, $sp
/* 0043C468 B9680007 */  swr   $t0, 7($t3)
.L0043C46C:
/* 0043C46C 89A10000 */  lwl   $at, ($t5)
/* 0043C470 99A10003 */  lwr   $at, 3($t5)
/* 0043C474 25AD000C */  addiu $t5, $t5, 0xc
/* 0043C478 A9E10050 */  swl   $at, 0x50($t7)
/* 0043C47C B9E10053 */  swr   $at, 0x53($t7)
/* 0043C480 89A1FFF8 */  lwl   $at, -8($t5)
/* 0043C484 99A1FFFB */  lwr   $at, -5($t5)
/* 0043C488 25EF000C */  addiu $t7, $t7, 0xc
/* 0043C48C A9E10048 */  swl   $at, 0x48($t7)
/* 0043C490 B9E1004B */  swr   $at, 0x4b($t7)
/* 0043C494 89A1FFFC */  lwl   $at, -4($t5)
/* 0043C498 99A1FFFF */  lwr   $at, -1($t5)
/* 0043C49C 00000000 */  nop   
/* 0043C4A0 A9E1004C */  swl   $at, 0x4c($t7)
/* 0043C4A4 15ACFFF1 */  bne   $t5, $t4, .L0043C46C
/* 0043C4A8 B9E1004F */   swr   $at, 0x4f($t7)
/* 0043C4AC 89A10000 */  lwl   $at, ($t5)
/* 0043C4B0 99A10003 */  lwr   $at, 3($t5)
/* 0043C4B4 2418019D */  li    $t8, 413
/* 0043C4B8 A9E10050 */  swl   $at, 0x50($t7)
/* 0043C4BC B9E10053 */  swr   $at, 0x53($t7)
/* 0043C4C0 89AC0004 */  lwl   $t4, 4($t5)
/* 0043C4C4 99AC0007 */  lwr   $t4, 7($t5)
/* 0043C4C8 00000000 */  nop   
/* 0043C4CC A9EC0054 */  swl   $t4, 0x54($t7)
/* 0043C4D0 B9EC0057 */  swr   $t4, 0x57($t7)
/* 0043C4D4 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043C4D8 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043C4DC 8FA60008 */  lw    $a2, 8($sp)
/* 0043C4E0 8FA50004 */  lw    $a1, 4($sp)
/* 0043C4E4 8FA40000 */  lw    $a0, ($sp)
/* 0043C4E8 0320F809 */  jalr  $t9
/* 0043C4EC AFB800A0 */   sw    $t8, 0xa0($sp)
/* 0043C4F0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043C4F4 00000000 */  nop   
/* 0043C4F8 97B900BA */  lhu   $t9, 0xba($sp)
.L0043C4FC:
/* 0043C4FC 24010063 */  li    $at, 99
/* 0043C500 17210030 */  bne   $t9, $at, .L0043C5C4
/* 0043C504 00000000 */   nop   
/* 0043C508 8F8A8B8C */  lw     $t2, %got(reorderflag)($gp)
/* 0043C50C 00000000 */  nop   
/* 0043C510 914A0000 */  lbu   $t2, ($t2)
/* 0043C514 00000000 */  nop   
/* 0043C518 1140002A */  beqz  $t2, .L0043C5C4
/* 0043C51C 00000000 */   nop   
/* 0043C520 8F88806C */  lw    $t0, %got(RO_10017A90)($gp)
/* 0043C524 03A07025 */  move  $t6, $sp
/* 0043C528 25087A90 */  addiu $t0, %lo(RO_10017A90) # addiu $t0, $t0, 0x7a90
/* 0043C52C 250B0048 */  addiu $t3, $t0, 0x48
.L0043C530:
/* 0043C530 89010000 */  lwl   $at, ($t0)
/* 0043C534 99010003 */  lwr   $at, 3($t0)
/* 0043C538 2508000C */  addiu $t0, $t0, 0xc
/* 0043C53C A9C10000 */  swl   $at, ($t6)
/* 0043C540 B9C10003 */  swr   $at, 3($t6)
/* 0043C544 8901FFF8 */  lwl   $at, -8($t0)
/* 0043C548 9901FFFB */  lwr   $at, -5($t0)
/* 0043C54C 25CE000C */  addiu $t6, $t6, 0xc
/* 0043C550 A9C1FFF8 */  swl   $at, -8($t6)
/* 0043C554 B9C1FFFB */  swr   $at, -5($t6)
/* 0043C558 8901FFFC */  lwl   $at, -4($t0)
/* 0043C55C 9901FFFF */  lwr   $at, -1($t0)
/* 0043C560 00000000 */  nop   
/* 0043C564 A9C1FFFC */  swl   $at, -4($t6)
/* 0043C568 150BFFF1 */  bne   $t0, $t3, .L0043C530
/* 0043C56C B9C1FFFF */   swr   $at, -1($t6)
/* 0043C570 89010000 */  lwl   $at, ($t0)
/* 0043C574 99010003 */  lwr   $at, 3($t0)
/* 0043C578 8F8C8C68 */  lw     $t4, %got(emptystring)($gp)
/* 0043C57C A9C10000 */  swl   $at, ($t6)
/* 0043C580 B9C10003 */  swr   $at, 3($t6)
/* 0043C584 890B0004 */  lwl   $t3, 4($t0)
/* 0043C588 990B0007 */  lwr   $t3, 7($t0)
/* 0043C58C 240D0001 */  li    $t5, 1
/* 0043C590 A9CB0004 */  swl   $t3, 4($t6)
/* 0043C594 B9CB0007 */  swr   $t3, 7($t6)
/* 0043C598 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0043C59C 8D8C0000 */  lw    $t4, ($t4)
/* 0043C5A0 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043C5A4 8FA60008 */  lw    $a2, 8($sp)
/* 0043C5A8 8FA50004 */  lw    $a1, 4($sp)
/* 0043C5AC 8FA40000 */  lw    $a0, ($sp)
/* 0043C5B0 AFAD0054 */  sw    $t5, 0x54($sp)
/* 0043C5B4 0320F809 */  jalr  $t9
/* 0043C5B8 AFAC0050 */   sw    $t4, 0x50($sp)
/* 0043C5BC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043C5C0 00000000 */  nop   
.L0043C5C4:
/* 0043C5C4 8F848BB0 */  lw     $a0, %got(bbindex)($gp)
/* 0043C5C8 00000000 */  nop   
/* 0043C5CC 8C8F0000 */  lw    $t7, ($a0)
/* 0043C5D0 00000000 */  nop   
/* 0043C5D4 25F80001 */  addiu $t8, $t7, 1
/* 0043C5D8 AC980000 */  sw    $t8, ($a0)
/* 0043C5DC 8F9982DC */  lw    $t9, %call16(initbb)($gp)
/* 0043C5E0 00000000 */  nop   
/* 0043C5E4 0320F809 */  jalr  $t9
/* 0043C5E8 00000000 */   nop   
/* 0043C5EC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043C5F0 8FA800BC */  lw    $t0, 0xbc($sp)
/* 0043C5F4 8F8A8BB0 */  lw     $t2, %got(bbindex)($gp)
/* 0043C5F8 8F998B40 */  lw     $t9, %got(pinstruction)($gp)
/* 0043C5FC 8D4A0000 */  lw    $t2, ($t2)
/* 0043C600 8F390000 */  lw    $t9, ($t9)
/* 0043C604 000A4880 */  sll   $t1, $t2, 2
/* 0043C608 012A4821 */  addu  $t1, $t1, $t2
/* 0043C60C 000948C0 */  sll   $t1, $t1, 3
/* 0043C610 03295821 */  addu  $t3, $t9, $t1
/* 0043C614 8F9982EC */  lw    $t9, %call16(fill_inst)($gp)
/* 0043C618 97A700BA */  lhu   $a3, 0xba($sp)
/* 0043C61C AFAB0010 */  sw    $t3, 0x10($sp)
/* 0043C620 24040048 */  li    $a0, 72
/* 0043C624 24050048 */  li    $a1, 72
/* 0043C628 24060048 */  li    $a2, 72
/* 0043C62C 0320F809 */  jalr  $t9
/* 0043C630 AFA80014 */   sw    $t0, 0x14($sp)
/* 0043C634 8FBF00B4 */  lw    $ra, 0xb4($sp)
/* 0043C638 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043C63C 03E00008 */  jr    $ra
/* 0043C640 27BD00B8 */   addiu $sp, $sp, 0xb8

    .type emitcoproc, @function
    .size emitcoproc, .-emitcoproc
    .end emitcoproc

glabel emitjump
    .ent emitjump
    # 0041E40C func_0041E40C
    # 00421544 func_00421544
    # 004531B8 parseafa
/* 0043C644 3C1C0FBF */  .cpload $t9
/* 0043C648 279CDC1C */  
/* 0043C64C 0399E021 */  
/* 0043C650 27BDFF40 */  addiu $sp, $sp, -0xc0
/* 0043C654 AFA400C0 */  sw    $a0, 0xc0($sp)
/* 0043C658 97AE00C2 */  lhu   $t6, 0xc2($sp)
/* 0043C65C 8F8F8D18 */  lw     $t7, %got(opcodeformat)($gp)
/* 0043C660 AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 0043C664 01CFC021 */  addu  $t8, $t6, $t7
/* 0043C668 AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 0043C66C AFA500C4 */  sw    $a1, 0xc4($sp)
/* 0043C670 AFA600C8 */  sw    $a2, 0xc8($sp)
/* 0043C674 AFB800B8 */  sw    $t8, 0xb8($sp)
/* 0043C678 93190000 */  lbu   $t9, ($t8)
/* 0043C67C 24010004 */  li    $at, 4
/* 0043C680 13210043 */  beq   $t9, $at, .L0043C790
/* 0043C684 03A07825 */   move  $t7, $sp
/* 0043C688 8F88806C */  lw    $t0, %got(RO_10017DB0)($gp)
/* 0043C68C 03A05825 */  move  $t3, $sp
/* 0043C690 25087DB0 */  addiu $t0, %lo(RO_10017DB0) # addiu $t0, $t0, 0x7db0
/* 0043C694 250A0048 */  addiu $t2, $t0, 0x48
.L0043C698:
/* 0043C698 89010000 */  lwl   $at, ($t0)
/* 0043C69C 99010003 */  lwr   $at, 3($t0)
/* 0043C6A0 2508000C */  addiu $t0, $t0, 0xc
/* 0043C6A4 A9610000 */  swl   $at, ($t3)
/* 0043C6A8 B9610003 */  swr   $at, 3($t3)
/* 0043C6AC 8901FFF8 */  lwl   $at, -8($t0)
/* 0043C6B0 9901FFFB */  lwr   $at, -5($t0)
/* 0043C6B4 256B000C */  addiu $t3, $t3, 0xc
/* 0043C6B8 A961FFF8 */  swl   $at, -8($t3)
/* 0043C6BC B961FFFB */  swr   $at, -5($t3)
/* 0043C6C0 8901FFFC */  lwl   $at, -4($t0)
/* 0043C6C4 9901FFFF */  lwr   $at, -1($t0)
/* 0043C6C8 00000000 */  nop   
/* 0043C6CC A961FFFC */  swl   $at, -4($t3)
/* 0043C6D0 150AFFF1 */  bne   $t0, $t2, .L0043C698
/* 0043C6D4 B961FFFF */   swr   $at, -1($t3)
/* 0043C6D8 89010000 */  lwl   $at, ($t0)
/* 0043C6DC 99010003 */  lwr   $at, 3($t0)
/* 0043C6E0 8F8C806C */  lw    $t4, %got(RO_10017D60)($gp)
/* 0043C6E4 A9610000 */  swl   $at, ($t3)
/* 0043C6E8 B9610003 */  swr   $at, 3($t3)
/* 0043C6EC 890A0004 */  lwl   $t2, 4($t0)
/* 0043C6F0 990A0007 */  lwr   $t2, 7($t0)
/* 0043C6F4 258C7D60 */  addiu $t4, %lo(RO_10017D60) # addiu $t4, $t4, 0x7d60
/* 0043C6F8 A96A0004 */  swl   $t2, 4($t3)
/* 0043C6FC 258E0048 */  addiu $t6, $t4, 0x48
/* 0043C700 B96A0007 */  swr   $t2, 7($t3)
.L0043C704:
/* 0043C704 89810000 */  lwl   $at, ($t4)
/* 0043C708 99810003 */  lwr   $at, 3($t4)
/* 0043C70C 258C000C */  addiu $t4, $t4, 0xc
/* 0043C710 A9E10050 */  swl   $at, 0x50($t7)
/* 0043C714 B9E10053 */  swr   $at, 0x53($t7)
/* 0043C718 8981FFF8 */  lwl   $at, -8($t4)
/* 0043C71C 9981FFFB */  lwr   $at, -5($t4)
/* 0043C720 25EF000C */  addiu $t7, $t7, 0xc
/* 0043C724 A9E10048 */  swl   $at, 0x48($t7)
/* 0043C728 B9E1004B */  swr   $at, 0x4b($t7)
/* 0043C72C 8981FFFC */  lwl   $at, -4($t4)
/* 0043C730 9981FFFF */  lwr   $at, -1($t4)
/* 0043C734 00000000 */  nop   
/* 0043C738 A9E1004C */  swl   $at, 0x4c($t7)
/* 0043C73C 158EFFF1 */  bne   $t4, $t6, .L0043C704
/* 0043C740 B9E1004F */   swr   $at, 0x4f($t7)
/* 0043C744 89810000 */  lwl   $at, ($t4)
/* 0043C748 99810003 */  lwr   $at, 3($t4)
/* 0043C74C 241801B5 */  li    $t8, 437
/* 0043C750 A9E10050 */  swl   $at, 0x50($t7)
/* 0043C754 B9E10053 */  swr   $at, 0x53($t7)
/* 0043C758 898E0004 */  lwl   $t6, 4($t4)
/* 0043C75C 998E0007 */  lwr   $t6, 7($t4)
/* 0043C760 00000000 */  nop   
/* 0043C764 A9EE0054 */  swl   $t6, 0x54($t7)
/* 0043C768 B9EE0057 */  swr   $t6, 0x57($t7)
/* 0043C76C 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043C770 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043C774 8FA60008 */  lw    $a2, 8($sp)
/* 0043C778 8FA50004 */  lw    $a1, 4($sp)
/* 0043C77C 8FA40000 */  lw    $a0, ($sp)
/* 0043C780 0320F809 */  jalr  $t9
/* 0043C784 AFB800A0 */   sw    $t8, 0xa0($sp)
/* 0043C788 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043C78C 00000000 */  nop   
.L0043C790:
/* 0043C790 8FB900C4 */  lw    $t9, 0xc4($sp)
/* 0043C794 8FA900C8 */  lw    $t1, 0xc8($sp)
/* 0043C798 13200049 */  beqz  $t9, .L0043C8C0
/* 0043C79C 00094702 */   srl   $t0, $t1, 0x1c
/* 0043C7A0 8FA900C8 */  lw    $t1, 0xc8($sp)
/* 0043C7A4 03A0C025 */  move  $t8, $sp
/* 0043C7A8 1120009F */  beqz  $t1, .L0043CA28
/* 0043C7AC 00000000 */   nop   
/* 0043C7B0 8F8A806C */  lw    $t2, %got(RO_10017D10)($gp)
/* 0043C7B4 03A06825 */  move  $t5, $sp
/* 0043C7B8 254A7D10 */  addiu $t2, %lo(RO_10017D10) # addiu $t2, $t2, 0x7d10
/* 0043C7BC 254B0048 */  addiu $t3, $t2, 0x48
.L0043C7C0:
/* 0043C7C0 89410000 */  lwl   $at, ($t2)
/* 0043C7C4 99410003 */  lwr   $at, 3($t2)
/* 0043C7C8 254A000C */  addiu $t2, $t2, 0xc
/* 0043C7CC A9A10000 */  swl   $at, ($t5)
/* 0043C7D0 B9A10003 */  swr   $at, 3($t5)
/* 0043C7D4 8941FFF8 */  lwl   $at, -8($t2)
/* 0043C7D8 9941FFFB */  lwr   $at, -5($t2)
/* 0043C7DC 25AD000C */  addiu $t5, $t5, 0xc
/* 0043C7E0 A9A1FFF8 */  swl   $at, -8($t5)
/* 0043C7E4 B9A1FFFB */  swr   $at, -5($t5)
/* 0043C7E8 8941FFFC */  lwl   $at, -4($t2)
/* 0043C7EC 9941FFFF */  lwr   $at, -1($t2)
/* 0043C7F0 00000000 */  nop   
/* 0043C7F4 A9A1FFFC */  swl   $at, -4($t5)
/* 0043C7F8 154BFFF1 */  bne   $t2, $t3, .L0043C7C0
/* 0043C7FC B9A1FFFF */   swr   $at, -1($t5)
/* 0043C800 89410000 */  lwl   $at, ($t2)
/* 0043C804 99410003 */  lwr   $at, 3($t2)
/* 0043C808 8F8E806C */  lw    $t6, %got(RO_10017CC0)($gp)
/* 0043C80C A9A10000 */  swl   $at, ($t5)
/* 0043C810 B9A10003 */  swr   $at, 3($t5)
/* 0043C814 894B0004 */  lwl   $t3, 4($t2)
/* 0043C818 994B0007 */  lwr   $t3, 7($t2)
/* 0043C81C 25CE7CC0 */  addiu $t6, %lo(RO_10017CC0) # addiu $t6, $t6, 0x7cc0
/* 0043C820 A9AB0004 */  swl   $t3, 4($t5)
/* 0043C824 25CF0048 */  addiu $t7, $t6, 0x48
/* 0043C828 B9AB0007 */  swr   $t3, 7($t5)
.L0043C82C:
/* 0043C82C 89C10000 */  lwl   $at, ($t6)
/* 0043C830 99C10003 */  lwr   $at, 3($t6)
/* 0043C834 25CE000C */  addiu $t6, $t6, 0xc
/* 0043C838 AB010050 */  swl   $at, 0x50($t8)
/* 0043C83C BB010053 */  swr   $at, 0x53($t8)
/* 0043C840 89C1FFF8 */  lwl   $at, -8($t6)
/* 0043C844 99C1FFFB */  lwr   $at, -5($t6)
/* 0043C848 2718000C */  addiu $t8, $t8, 0xc
/* 0043C84C AB010048 */  swl   $at, 0x48($t8)
/* 0043C850 BB01004B */  swr   $at, 0x4b($t8)
/* 0043C854 89C1FFFC */  lwl   $at, -4($t6)
/* 0043C858 99C1FFFF */  lwr   $at, -1($t6)
/* 0043C85C 00000000 */  nop   
/* 0043C860 AB01004C */  swl   $at, 0x4c($t8)
/* 0043C864 15CFFFF1 */  bne   $t6, $t7, .L0043C82C
/* 0043C868 BB01004F */   swr   $at, 0x4f($t8)
/* 0043C86C 89C10000 */  lwl   $at, ($t6)
/* 0043C870 99C10003 */  lwr   $at, 3($t6)
/* 0043C874 241901B7 */  li    $t9, 439
/* 0043C878 AB010050 */  swl   $at, 0x50($t8)
/* 0043C87C BB010053 */  swr   $at, 0x53($t8)
/* 0043C880 89CF0004 */  lwl   $t7, 4($t6)
/* 0043C884 99CF0007 */  lwr   $t7, 7($t6)
/* 0043C888 00000000 */  nop   
/* 0043C88C AB0F0054 */  swl   $t7, 0x54($t8)
/* 0043C890 BB0F0057 */  swr   $t7, 0x57($t8)
/* 0043C894 AFB900A0 */  sw    $t9, 0xa0($sp)
/* 0043C898 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043C89C 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043C8A0 8FA60008 */  lw    $a2, 8($sp)
/* 0043C8A4 8FA50004 */  lw    $a1, 4($sp)
/* 0043C8A8 8FA40000 */  lw    $a0, ($sp)
/* 0043C8AC 0320F809 */  jalr  $t9
/* 0043C8B0 00000000 */   nop   
/* 0043C8B4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043C8B8 1000005B */  b     .L0043CA28
/* 0043C8BC 00000000 */   nop   
.L0043C8C0:
/* 0043C8C0 1100002C */  beqz  $t0, .L0043C974
/* 0043C8C4 8FB800C8 */   lw    $t8, 0xc8($sp)
/* 0043C8C8 8F8B806C */  lw    $t3, %got(RO_10017C70)($gp)
/* 0043C8CC 03A06025 */  move  $t4, $sp
/* 0043C8D0 256B7C70 */  addiu $t3, %lo(RO_10017C70) # addiu $t3, $t3, 0x7c70
/* 0043C8D4 256D0048 */  addiu $t5, $t3, 0x48
.L0043C8D8:
/* 0043C8D8 89610000 */  lwl   $at, ($t3)
/* 0043C8DC 99610003 */  lwr   $at, 3($t3)
/* 0043C8E0 256B000C */  addiu $t3, $t3, 0xc
/* 0043C8E4 A9810000 */  swl   $at, ($t4)
/* 0043C8E8 B9810003 */  swr   $at, 3($t4)
/* 0043C8EC 8961FFF8 */  lwl   $at, -8($t3)
/* 0043C8F0 9961FFFB */  lwr   $at, -5($t3)
/* 0043C8F4 258C000C */  addiu $t4, $t4, 0xc
/* 0043C8F8 A981FFF8 */  swl   $at, -8($t4)
/* 0043C8FC B981FFFB */  swr   $at, -5($t4)
/* 0043C900 8961FFFC */  lwl   $at, -4($t3)
/* 0043C904 9961FFFF */  lwr   $at, -1($t3)
/* 0043C908 00000000 */  nop   
/* 0043C90C A981FFFC */  swl   $at, -4($t4)
/* 0043C910 156DFFF1 */  bne   $t3, $t5, .L0043C8D8
/* 0043C914 B981FFFF */   swr   $at, -1($t4)
/* 0043C918 89610000 */  lwl   $at, ($t3)
/* 0043C91C 99610003 */  lwr   $at, 3($t3)
/* 0043C920 8F8F8C68 */  lw     $t7, %got(emptystring)($gp)
/* 0043C924 A9810000 */  swl   $at, ($t4)
/* 0043C928 B9810003 */  swr   $at, 3($t4)
/* 0043C92C 896D0004 */  lwl   $t5, 4($t3)
/* 0043C930 996D0007 */  lwr   $t5, 7($t3)
/* 0043C934 240E0001 */  li    $t6, 1
/* 0043C938 A98D0004 */  swl   $t5, 4($t4)
/* 0043C93C B98D0007 */  swr   $t5, 7($t4)
/* 0043C940 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0043C944 8DEF0000 */  lw    $t7, ($t7)
/* 0043C948 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043C94C 8FA60008 */  lw    $a2, 8($sp)
/* 0043C950 8FA50004 */  lw    $a1, 4($sp)
/* 0043C954 8FA40000 */  lw    $a0, ($sp)
/* 0043C958 AFAE0054 */  sw    $t6, 0x54($sp)
/* 0043C95C 0320F809 */  jalr  $t9
/* 0043C960 AFAF0050 */   sw    $t7, 0x50($sp)
/* 0043C964 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043C968 1000002F */  b     .L0043CA28
/* 0043C96C 00000000 */   nop   
/* 0043C970 8FB800C8 */  lw    $t8, 0xc8($sp)
.L0043C974:
/* 0043C974 00000000 */  nop   
/* 0043C978 33190003 */  andi  $t9, $t8, 3
/* 0043C97C 1320002A */  beqz  $t9, .L0043CA28
/* 0043C980 00000000 */   nop   
/* 0043C984 8F89806C */  lw    $t1, %got(RO_10017C20)($gp)
/* 0043C988 03A06825 */  move  $t5, $sp
/* 0043C98C 25297C20 */  addiu $t1, %lo(RO_10017C20) # addiu $t1, $t1, 0x7c20
/* 0043C990 252A0048 */  addiu $t2, $t1, 0x48
.L0043C994:
/* 0043C994 89210000 */  lwl   $at, ($t1)
/* 0043C998 99210003 */  lwr   $at, 3($t1)
/* 0043C99C 2529000C */  addiu $t1, $t1, 0xc
/* 0043C9A0 A9A10000 */  swl   $at, ($t5)
/* 0043C9A4 B9A10003 */  swr   $at, 3($t5)
/* 0043C9A8 8921FFF8 */  lwl   $at, -8($t1)
/* 0043C9AC 9921FFFB */  lwr   $at, -5($t1)
/* 0043C9B0 25AD000C */  addiu $t5, $t5, 0xc
/* 0043C9B4 A9A1FFF8 */  swl   $at, -8($t5)
/* 0043C9B8 B9A1FFFB */  swr   $at, -5($t5)
/* 0043C9BC 8921FFFC */  lwl   $at, -4($t1)
/* 0043C9C0 9921FFFF */  lwr   $at, -1($t1)
/* 0043C9C4 00000000 */  nop   
/* 0043C9C8 A9A1FFFC */  swl   $at, -4($t5)
/* 0043C9CC 152AFFF1 */  bne   $t1, $t2, .L0043C994
/* 0043C9D0 B9A1FFFF */   swr   $at, -1($t5)
/* 0043C9D4 89210000 */  lwl   $at, ($t1)
/* 0043C9D8 99210003 */  lwr   $at, 3($t1)
/* 0043C9DC 8F8B8C68 */  lw     $t3, %got(emptystring)($gp)
/* 0043C9E0 A9A10000 */  swl   $at, ($t5)
/* 0043C9E4 B9A10003 */  swr   $at, 3($t5)
/* 0043C9E8 892A0004 */  lwl   $t2, 4($t1)
/* 0043C9EC 992A0007 */  lwr   $t2, 7($t1)
/* 0043C9F0 240C0001 */  li    $t4, 1
/* 0043C9F4 A9AA0004 */  swl   $t2, 4($t5)
/* 0043C9F8 B9AA0007 */  swr   $t2, 7($t5)
/* 0043C9FC 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0043CA00 8D6B0000 */  lw    $t3, ($t3)
/* 0043CA04 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043CA08 8FA60008 */  lw    $a2, 8($sp)
/* 0043CA0C 8FA50004 */  lw    $a1, 4($sp)
/* 0043CA10 8FA40000 */  lw    $a0, ($sp)
/* 0043CA14 AFAC0054 */  sw    $t4, 0x54($sp)
/* 0043CA18 0320F809 */  jalr  $t9
/* 0043CA1C AFAB0050 */   sw    $t3, 0x50($sp)
/* 0043CA20 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043CA24 00000000 */  nop   
.L0043CA28:
/* 0043CA28 8F848BB0 */  lw     $a0, %got(bbindex)($gp)
/* 0043CA2C 00000000 */  nop   
/* 0043CA30 8C8F0000 */  lw    $t7, ($a0)
/* 0043CA34 00000000 */  nop   
/* 0043CA38 25EE0001 */  addiu $t6, $t7, 1
/* 0043CA3C AC8E0000 */  sw    $t6, ($a0)
/* 0043CA40 8F9982DC */  lw    $t9, %call16(initbb)($gp)
/* 0043CA44 00000000 */  nop   
/* 0043CA48 0320F809 */  jalr  $t9
/* 0043CA4C 00000000 */   nop   
/* 0043CA50 97B800C2 */  lhu   $t8, 0xc2($sp)
/* 0043CA54 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043CA58 2401004A */  li    $at, 74
/* 0043CA5C 17010002 */  bne   $t8, $at, .L0043CA68
/* 0043CA60 24040048 */   li    $a0, 72
/* 0043CA64 2404001F */  li    $a0, 31
.L0043CA68:
/* 0043CA68 8F888BB0 */  lw     $t0, %got(bbindex)($gp)
/* 0043CA6C 8F998B40 */  lw     $t9, %got(pinstruction)($gp)
/* 0043CA70 8D080000 */  lw    $t0, ($t0)
/* 0043CA74 8F390000 */  lw    $t9, ($t9)
/* 0043CA78 00085080 */  sll   $t2, $t0, 2
/* 0043CA7C 01485021 */  addu  $t2, $t2, $t0
/* 0043CA80 000A50C0 */  sll   $t2, $t2, 3
/* 0043CA84 032A4821 */  addu  $t1, $t9, $t2
/* 0043CA88 8F9982EC */  lw    $t9, %call16(fill_inst)($gp)
/* 0043CA8C 8FAD00C8 */  lw    $t5, 0xc8($sp)
/* 0043CA90 97A700C2 */  lhu   $a3, 0xc2($sp)
/* 0043CA94 AFA90010 */  sw    $t1, 0x10($sp)
/* 0043CA98 24050048 */  li    $a1, 72
/* 0043CA9C 24060048 */  li    $a2, 72
/* 0043CAA0 0320F809 */  jalr  $t9
/* 0043CAA4 AFAD0014 */   sw    $t5, 0x14($sp)
/* 0043CAA8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043CAAC 8FAB00C4 */  lw    $t3, 0xc4($sp)
/* 0043CAB0 8F8F8BB0 */  lw     $t7, %got(bbindex)($gp)
/* 0043CAB4 8F8C8B40 */  lw     $t4, %got(pinstruction)($gp)
/* 0043CAB8 8DEF0000 */  lw    $t7, ($t7)
/* 0043CABC 8D8C0000 */  lw    $t4, ($t4)
/* 0043CAC0 000F7080 */  sll   $t6, $t7, 2
/* 0043CAC4 01CF7021 */  addu  $t6, $t6, $t7
/* 0043CAC8 000E70C0 */  sll   $t6, $t6, 3
/* 0043CACC 018EC021 */  addu  $t8, $t4, $t6
/* 0043CAD0 8F998D18 */  lw     $t9, %got(opcodeformat)($gp)
/* 0043CAD4 AF0B0014 */  sw    $t3, 0x14($t8)
/* 0043CAD8 8FA800B8 */  lw    $t0, 0xb8($sp)
/* 0043CADC 2739004A */  addiu $t9, $t9, 0x4a
/* 0043CAE0 15190005 */  bne   $t0, $t9, .L0043CAF8
/* 0043CAE4 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 0043CAE8 8F818B5C */  lw     $at, %got(last_bb)($gp)
/* 0043CAEC 240A0001 */  li    $t2, 1
/* 0043CAF0 A02A0002 */  sb    $t2, 2($at)
/* 0043CAF4 8FBF00B4 */  lw    $ra, 0xb4($sp)
.L0043CAF8:
/* 0043CAF8 27BD00C0 */  addiu $sp, $sp, 0xc0
/* 0043CAFC 03E00008 */  jr    $ra
/* 0043CB00 00000000 */   nop   

    .type emitjump, @function
    .size emitjump, .-emitjump
    .end emitjump

glabel emitloadstore
    .ent emitloadstore
    # 004509B4 restore_gp
    # 004531B8 parseafa
    # 00458930 parsecprestore
    # 0045E218 setup_tempreg
    # 0045F110 genfpmultiple
    # 004604C0 do_parseafra
    # 0046159C gendouble
    # 00461DE4 func_00461DE4
    # 00462320 func_00462320
    # 004638F8 func_004638F8
/* 0043CB04 3C1C0FBF */  .cpload $t9
/* 0043CB08 279CD75C */  
/* 0043CB0C 0399E021 */  
/* 0043CB10 27BDFF40 */  addiu $sp, $sp, -0xc0
/* 0043CB14 AFA400C0 */  sw    $a0, 0xc0($sp)
/* 0043CB18 97AE00C2 */  lhu   $t6, 0xc2($sp)
/* 0043CB1C 8F8F8D18 */  lw     $t7, %got(opcodeformat)($gp)
/* 0043CB20 AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 0043CB24 01CFC021 */  addu  $t8, $t6, $t7
/* 0043CB28 AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 0043CB2C AFB000AC */  sw    $s0, 0xac($sp)
/* 0043CB30 AFA500C4 */  sw    $a1, 0xc4($sp)
/* 0043CB34 AFA700CC */  sw    $a3, 0xcc($sp)
/* 0043CB38 AFB800BC */  sw    $t8, 0xbc($sp)
/* 0043CB3C 93190000 */  lbu   $t9, ($t8)
/* 0043CB40 24010006 */  li    $at, 6
/* 0043CB44 13210044 */  beq   $t9, $at, .L0043CC58
/* 0043CB48 00C08025 */   move  $s0, $a2
/* 0043CB4C 8F88806C */  lw    $t0, %got(RO_10017F90)($gp)
/* 0043CB50 03A05825 */  move  $t3, $sp
/* 0043CB54 25087F90 */  addiu $t0, %lo(RO_10017F90) # addiu $t0, $t0, 0x7f90
/* 0043CB58 250A0048 */  addiu $t2, $t0, 0x48
.L0043CB5C:
/* 0043CB5C 89010000 */  lwl   $at, ($t0)
/* 0043CB60 99010003 */  lwr   $at, 3($t0)
/* 0043CB64 2508000C */  addiu $t0, $t0, 0xc
/* 0043CB68 A9610000 */  swl   $at, ($t3)
/* 0043CB6C B9610003 */  swr   $at, 3($t3)
/* 0043CB70 8901FFF8 */  lwl   $at, -8($t0)
/* 0043CB74 9901FFFB */  lwr   $at, -5($t0)
/* 0043CB78 256B000C */  addiu $t3, $t3, 0xc
/* 0043CB7C A961FFF8 */  swl   $at, -8($t3)
/* 0043CB80 B961FFFB */  swr   $at, -5($t3)
/* 0043CB84 8901FFFC */  lwl   $at, -4($t0)
/* 0043CB88 9901FFFF */  lwr   $at, -1($t0)
/* 0043CB8C 00000000 */  nop   
/* 0043CB90 A961FFFC */  swl   $at, -4($t3)
/* 0043CB94 150AFFF1 */  bne   $t0, $t2, .L0043CB5C
/* 0043CB98 B961FFFF */   swr   $at, -1($t3)
/* 0043CB9C 89010000 */  lwl   $at, ($t0)
/* 0043CBA0 99010003 */  lwr   $at, 3($t0)
/* 0043CBA4 8F8C806C */  lw    $t4, %got(RO_10017F40)($gp)
/* 0043CBA8 A9610000 */  swl   $at, ($t3)
/* 0043CBAC B9610003 */  swr   $at, 3($t3)
/* 0043CBB0 890A0004 */  lwl   $t2, 4($t0)
/* 0043CBB4 990A0007 */  lwr   $t2, 7($t0)
/* 0043CBB8 258C7F40 */  addiu $t4, %lo(RO_10017F40) # addiu $t4, $t4, 0x7f40
/* 0043CBBC A96A0004 */  swl   $t2, 4($t3)
/* 0043CBC0 258E0048 */  addiu $t6, $t4, 0x48
/* 0043CBC4 03A07825 */  move  $t7, $sp
/* 0043CBC8 B96A0007 */  swr   $t2, 7($t3)
.L0043CBCC:
/* 0043CBCC 89810000 */  lwl   $at, ($t4)
/* 0043CBD0 99810003 */  lwr   $at, 3($t4)
/* 0043CBD4 258C000C */  addiu $t4, $t4, 0xc
/* 0043CBD8 A9E10050 */  swl   $at, 0x50($t7)
/* 0043CBDC B9E10053 */  swr   $at, 0x53($t7)
/* 0043CBE0 8981FFF8 */  lwl   $at, -8($t4)
/* 0043CBE4 9981FFFB */  lwr   $at, -5($t4)
/* 0043CBE8 25EF000C */  addiu $t7, $t7, 0xc
/* 0043CBEC A9E10048 */  swl   $at, 0x48($t7)
/* 0043CBF0 B9E1004B */  swr   $at, 0x4b($t7)
/* 0043CBF4 8981FFFC */  lwl   $at, -4($t4)
/* 0043CBF8 9981FFFF */  lwr   $at, -1($t4)
/* 0043CBFC 00000000 */  nop   
/* 0043CC00 A9E1004C */  swl   $at, 0x4c($t7)
/* 0043CC04 158EFFF1 */  bne   $t4, $t6, .L0043CBCC
/* 0043CC08 B9E1004F */   swr   $at, 0x4f($t7)
/* 0043CC0C 89810000 */  lwl   $at, ($t4)
/* 0043CC10 99810003 */  lwr   $at, 3($t4)
/* 0043CC14 241801F4 */  li    $t8, 500
/* 0043CC18 A9E10050 */  swl   $at, 0x50($t7)
/* 0043CC1C B9E10053 */  swr   $at, 0x53($t7)
/* 0043CC20 898E0004 */  lwl   $t6, 4($t4)
/* 0043CC24 998E0007 */  lwr   $t6, 7($t4)
/* 0043CC28 00000000 */  nop   
/* 0043CC2C A9EE0054 */  swl   $t6, 0x54($t7)
/* 0043CC30 B9EE0057 */  swr   $t6, 0x57($t7)
/* 0043CC34 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043CC38 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043CC3C 8FA60008 */  lw    $a2, 8($sp)
/* 0043CC40 8FA50004 */  lw    $a1, 4($sp)
/* 0043CC44 8FA40000 */  lw    $a0, ($sp)
/* 0043CC48 0320F809 */  jalr  $t9
/* 0043CC4C AFB800A0 */   sw    $t8, 0xa0($sp)
/* 0043CC50 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043CC54 00000000 */  nop   
.L0043CC58:
/* 0043CC58 2A018000 */  slti  $at, $s0, -0x8000
/* 0043CC5C 14200005 */  bnez  $at, .L0043CC74
/* 0043CC60 03A06025 */   move  $t4, $sp
/* 0043CC64 34018000 */  li    $at, 32768
/* 0043CC68 0201082A */  slt   $at, $s0, $at
/* 0043CC6C 14200044 */  bnez  $at, .L0043CD80
/* 0043CC70 97B800C2 */   lhu   $t8, 0xc2($sp)
.L0043CC74:
/* 0043CC74 8F99806C */  lw    $t9, %got(RO_10017EF0)($gp)
/* 0043CC78 03A04025 */  move  $t0, $sp
/* 0043CC7C 27397EF0 */  addiu $t9, %lo(RO_10017EF0) # addiu $t9, $t9, 0x7ef0
/* 0043CC80 272A0048 */  addiu $t2, $t9, 0x48
.L0043CC84:
/* 0043CC84 8B210000 */  lwl   $at, ($t9)
/* 0043CC88 9B210003 */  lwr   $at, 3($t9)
/* 0043CC8C 2739000C */  addiu $t9, $t9, 0xc
/* 0043CC90 A9010000 */  swl   $at, ($t0)
/* 0043CC94 B9010003 */  swr   $at, 3($t0)
/* 0043CC98 8B21FFF8 */  lwl   $at, -8($t9)
/* 0043CC9C 9B21FFFB */  lwr   $at, -5($t9)
/* 0043CCA0 2508000C */  addiu $t0, $t0, 0xc
/* 0043CCA4 A901FFF8 */  swl   $at, -8($t0)
/* 0043CCA8 B901FFFB */  swr   $at, -5($t0)
/* 0043CCAC 8B21FFFC */  lwl   $at, -4($t9)
/* 0043CCB0 9B21FFFF */  lwr   $at, -1($t9)
/* 0043CCB4 00000000 */  nop   
/* 0043CCB8 A901FFFC */  swl   $at, -4($t0)
/* 0043CCBC 172AFFF1 */  bne   $t9, $t2, .L0043CC84
/* 0043CCC0 B901FFFF */   swr   $at, -1($t0)
/* 0043CCC4 8B210000 */  lwl   $at, ($t9)
/* 0043CCC8 9B210003 */  lwr   $at, 3($t9)
/* 0043CCCC 8F8B806C */  lw    $t3, %got(RO_10017EA0)($gp)
/* 0043CCD0 A9010000 */  swl   $at, ($t0)
/* 0043CCD4 B9010003 */  swr   $at, 3($t0)
/* 0043CCD8 8B2A0004 */  lwl   $t2, 4($t9)
/* 0043CCDC 9B2A0007 */  lwr   $t2, 7($t9)
/* 0043CCE0 256B7EA0 */  addiu $t3, %lo(RO_10017EA0) # addiu $t3, $t3, 0x7ea0
/* 0043CCE4 A90A0004 */  swl   $t2, 4($t0)
/* 0043CCE8 256E0048 */  addiu $t6, $t3, 0x48
/* 0043CCEC B90A0007 */  swr   $t2, 7($t0)
.L0043CCF0:
/* 0043CCF0 89610000 */  lwl   $at, ($t3)
/* 0043CCF4 99610003 */  lwr   $at, 3($t3)
/* 0043CCF8 256B000C */  addiu $t3, $t3, 0xc
/* 0043CCFC A9810050 */  swl   $at, 0x50($t4)
/* 0043CD00 B9810053 */  swr   $at, 0x53($t4)
/* 0043CD04 8961FFF8 */  lwl   $at, -8($t3)
/* 0043CD08 9961FFFB */  lwr   $at, -5($t3)
/* 0043CD0C 258C000C */  addiu $t4, $t4, 0xc
/* 0043CD10 A9810048 */  swl   $at, 0x48($t4)
/* 0043CD14 B981004B */  swr   $at, 0x4b($t4)
/* 0043CD18 8961FFFC */  lwl   $at, -4($t3)
/* 0043CD1C 9961FFFF */  lwr   $at, -1($t3)
/* 0043CD20 00000000 */  nop   
/* 0043CD24 A981004C */  swl   $at, 0x4c($t4)
/* 0043CD28 156EFFF1 */  bne   $t3, $t6, .L0043CCF0
/* 0043CD2C B981004F */   swr   $at, 0x4f($t4)
/* 0043CD30 89610000 */  lwl   $at, ($t3)
/* 0043CD34 99610003 */  lwr   $at, 3($t3)
/* 0043CD38 240F01F5 */  li    $t7, 501
/* 0043CD3C A9810050 */  swl   $at, 0x50($t4)
/* 0043CD40 B9810053 */  swr   $at, 0x53($t4)
/* 0043CD44 896E0004 */  lwl   $t6, 4($t3)
/* 0043CD48 996E0007 */  lwr   $t6, 7($t3)
/* 0043CD4C 00000000 */  nop   
/* 0043CD50 A98E0054 */  swl   $t6, 0x54($t4)
/* 0043CD54 B98E0057 */  swr   $t6, 0x57($t4)
/* 0043CD58 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043CD5C 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043CD60 8FA60008 */  lw    $a2, 8($sp)
/* 0043CD64 8FA50004 */  lw    $a1, 4($sp)
/* 0043CD68 8FA40000 */  lw    $a0, ($sp)
/* 0043CD6C 0320F809 */  jalr  $t9
/* 0043CD70 AFAF00A0 */   sw    $t7, 0xa0($sp)
/* 0043CD74 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043CD78 00000000 */  nop   
/* 0043CD7C 97B800C2 */  lhu   $t8, 0xc2($sp)
.L0043CD80:
/* 0043CD80 00000000 */  nop   
/* 0043CD84 2F090160 */  sltiu $t1, $t8, 0x160
/* 0043CD88 11200008 */  beqz  $t1, .L0043CDAC
/* 0043CD8C 00185143 */   sra   $t2, $t8, 5
/* 0043CD90 8F888D58 */  lw     $t0, %got(c0_ops)($gp)
/* 0043CD94 000AC880 */  sll   $t9, $t2, 2
/* 0043CD98 03286821 */  addu  $t5, $t9, $t0
/* 0043CD9C 8DAE0000 */  lw    $t6, ($t5)
/* 0043CDA0 00000000 */  nop   
/* 0043CDA4 030E5804 */  sllv  $t3, $t6, $t8
/* 0043CDA8 29690000 */  slti  $t1, $t3, 0
.L0043CDAC:
/* 0043CDAC 11200030 */  beqz  $t1, .L0043CE70
/* 0043CDB0 00000000 */   nop   
/* 0043CDB4 8F8F8B8C */  lw     $t7, %got(reorderflag)($gp)
/* 0043CDB8 00000000 */  nop   
/* 0043CDBC 91EF0000 */  lbu   $t7, ($t7)
/* 0043CDC0 00000000 */  nop   
/* 0043CDC4 11E0002A */  beqz  $t7, .L0043CE70
/* 0043CDC8 00000000 */   nop   
/* 0043CDCC 8F8A806C */  lw    $t2, %got(RO_10017E50)($gp)
/* 0043CDD0 03A06825 */  move  $t5, $sp
/* 0043CDD4 254A7E50 */  addiu $t2, %lo(RO_10017E50) # addiu $t2, $t2, 0x7e50
/* 0043CDD8 25480048 */  addiu $t0, $t2, 0x48
.L0043CDDC:
/* 0043CDDC 89410000 */  lwl   $at, ($t2)
/* 0043CDE0 99410003 */  lwr   $at, 3($t2)
/* 0043CDE4 254A000C */  addiu $t2, $t2, 0xc
/* 0043CDE8 A9A10000 */  swl   $at, ($t5)
/* 0043CDEC B9A10003 */  swr   $at, 3($t5)
/* 0043CDF0 8941FFF8 */  lwl   $at, -8($t2)
/* 0043CDF4 9941FFFB */  lwr   $at, -5($t2)
/* 0043CDF8 25AD000C */  addiu $t5, $t5, 0xc
/* 0043CDFC A9A1FFF8 */  swl   $at, -8($t5)
/* 0043CE00 B9A1FFFB */  swr   $at, -5($t5)
/* 0043CE04 8941FFFC */  lwl   $at, -4($t2)
/* 0043CE08 9941FFFF */  lwr   $at, -1($t2)
/* 0043CE0C 00000000 */  nop   
/* 0043CE10 A9A1FFFC */  swl   $at, -4($t5)
/* 0043CE14 1548FFF1 */  bne   $t2, $t0, .L0043CDDC
/* 0043CE18 B9A1FFFF */   swr   $at, -1($t5)
/* 0043CE1C 89410000 */  lwl   $at, ($t2)
/* 0043CE20 99410003 */  lwr   $at, 3($t2)
/* 0043CE24 8F8E8C68 */  lw     $t6, %got(emptystring)($gp)
/* 0043CE28 A9A10000 */  swl   $at, ($t5)
/* 0043CE2C B9A10003 */  swr   $at, 3($t5)
/* 0043CE30 89480004 */  lwl   $t0, 4($t2)
/* 0043CE34 99480007 */  lwr   $t0, 7($t2)
/* 0043CE38 24180001 */  li    $t8, 1
/* 0043CE3C A9A80004 */  swl   $t0, 4($t5)
/* 0043CE40 B9A80007 */  swr   $t0, 7($t5)
/* 0043CE44 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0043CE48 8DCE0000 */  lw    $t6, ($t6)
/* 0043CE4C 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043CE50 8FA60008 */  lw    $a2, 8($sp)
/* 0043CE54 8FA50004 */  lw    $a1, 4($sp)
/* 0043CE58 8FA40000 */  lw    $a0, ($sp)
/* 0043CE5C AFB80054 */  sw    $t8, 0x54($sp)
/* 0043CE60 0320F809 */  jalr  $t9
/* 0043CE64 AFAE0050 */   sw    $t6, 0x50($sp)
/* 0043CE68 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043CE6C 00000000 */  nop   
.L0043CE70:
/* 0043CE70 8F848BB0 */  lw     $a0, %got(bbindex)($gp)
/* 0043CE74 00000000 */  nop   
/* 0043CE78 8C8B0000 */  lw    $t3, ($a0)
/* 0043CE7C 00000000 */  nop   
/* 0043CE80 256C0001 */  addiu $t4, $t3, 1
/* 0043CE84 AC8C0000 */  sw    $t4, ($a0)
/* 0043CE88 8F9982DC */  lw    $t9, %call16(initbb)($gp)
/* 0043CE8C 00000000 */  nop   
/* 0043CE90 0320F809 */  jalr  $t9
/* 0043CE94 00000000 */   nop   
/* 0043CE98 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043CE9C 06010002 */  bgez  $s0, .L0043CEA8
/* 0043CEA0 3209FFFF */   andi  $t1, $s0, 0xffff
/* 0043CEA4 01208025 */  move  $s0, $t1
.L0043CEA8:
/* 0043CEA8 8F998BB0 */  lw     $t9, %got(bbindex)($gp)
/* 0043CEAC 8F8F8B40 */  lw     $t7, %got(pinstruction)($gp)
/* 0043CEB0 8F390000 */  lw    $t9, ($t9)
/* 0043CEB4 8DEF0000 */  lw    $t7, ($t7)
/* 0043CEB8 00194080 */  sll   $t0, $t9, 2
/* 0043CEBC 01194021 */  addu  $t0, $t0, $t9
/* 0043CEC0 93A400C7 */  lbu   $a0, 0xc7($sp)
/* 0043CEC4 8F9982EC */  lw    $t9, %call16(fill_inst)($gp)
/* 0043CEC8 000840C0 */  sll   $t0, $t0, 3
/* 0043CECC 93A600CF */  lbu   $a2, 0xcf($sp)
/* 0043CED0 97A700C2 */  lhu   $a3, 0xc2($sp)
/* 0043CED4 01E85021 */  addu  $t2, $t7, $t0
/* 0043CED8 AFAA0010 */  sw    $t2, 0x10($sp)
/* 0043CEDC AFB00014 */  sw    $s0, 0x14($sp)
/* 0043CEE0 0320F809 */  jalr  $t9
/* 0043CEE4 00802825 */   move  $a1, $a0
/* 0043CEE8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043CEEC 93AC00CF */  lbu   $t4, 0xcf($sp)
/* 0043CEF0 8F8E8BB0 */  lw     $t6, %got(bbindex)($gp)
/* 0043CEF4 8F8D8B40 */  lw     $t5, %got(pinstruction)($gp)
/* 0043CEF8 8DCE0000 */  lw    $t6, ($t6)
/* 0043CEFC 8F8B8D98 */  lw     $t3, %got(current_mem_tag)($gp)
/* 0043CF00 000EC080 */  sll   $t8, $t6, 2
/* 0043CF04 8DAD0000 */  lw    $t5, ($t5)
/* 0043CF08 030EC021 */  addu  $t8, $t8, $t6
/* 0043CF0C 956B0000 */  lhu   $t3, ($t3)
/* 0043CF10 0018C0C0 */  sll   $t8, $t8, 3
/* 0043CF14 34018000 */  li    $at, 32768
/* 0043CF18 0201082A */  slt   $at, $s0, $at
/* 0043CF1C 01B81021 */  addu  $v0, $t5, $t8
/* 0043CF20 A04C0020 */  sb    $t4, 0x20($v0)
/* 0043CF24 14200005 */  bnez  $at, .L0043CF3C
/* 0043CF28 A44B0026 */   sh    $t3, 0x26($v0)
/* 0043CF2C 3C01FFFF */  lui   $at, 0xffff
/* 0043CF30 02014825 */  or    $t1, $s0, $at
/* 0043CF34 10000002 */  b     .L0043CF40
/* 0043CF38 AC490008 */   sw    $t1, 8($v0)
.L0043CF3C:
/* 0043CF3C AC500008 */  sw    $s0, 8($v0)
.L0043CF40:
/* 0043CF40 97B900C2 */  lhu   $t9, 0xc2($sp)
/* 0043CF44 3C010030 */  lui   $at, 0x30
/* 0043CF48 272FFFA0 */  addiu $t7, $t9, -0x60
/* 0043CF4C 2DE80020 */  sltiu $t0, $t7, 0x20
/* 0043CF50 00085023 */  negu  $t2, $t0
/* 0043CF54 01417024 */  and   $t6, $t2, $at
/* 0043CF58 01EE6804 */  sllv  $t5, $t6, $t7
/* 0043CF5C 05A10060 */  bgez  $t5, .L0043D0E0
/* 0043CF60 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 0043CF64 8F988CAC */  lw     $t8, %got(r6000_lhu_flag)($gp)
/* 0043CF68 00000000 */  nop   
/* 0043CF6C 93180000 */  lbu   $t8, ($t8)
/* 0043CF70 00000000 */  nop   
/* 0043CF74 1300005A */  beqz  $t8, .L0043D0E0
/* 0043CF78 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 0043CF7C 8F8B8B04 */  lw     $t3, %got(isa)($gp)
/* 0043CF80 24010002 */  li    $at, 2
/* 0043CF84 916B0000 */  lbu   $t3, ($t3)
/* 0043CF88 00000000 */  nop   
/* 0043CF8C 1161002B */  beq   $t3, $at, .L0043D03C
/* 0043CF90 00000000 */   nop   
/* 0043CF94 8F8C806C */  lw    $t4, %got(RO_10017E00)($gp)
/* 0043CF98 03A04025 */  move  $t0, $sp
/* 0043CF9C 258C7E00 */  addiu $t4, %lo(RO_10017E00) # addiu $t4, $t4, 0x7e00
/* 0043CFA0 25990048 */  addiu $t9, $t4, 0x48
.L0043CFA4:
/* 0043CFA4 89810000 */  lwl   $at, ($t4)
/* 0043CFA8 99810003 */  lwr   $at, 3($t4)
/* 0043CFAC 258C000C */  addiu $t4, $t4, 0xc
/* 0043CFB0 A9010000 */  swl   $at, ($t0)
/* 0043CFB4 B9010003 */  swr   $at, 3($t0)
/* 0043CFB8 8981FFF8 */  lwl   $at, -8($t4)
/* 0043CFBC 9981FFFB */  lwr   $at, -5($t4)
/* 0043CFC0 2508000C */  addiu $t0, $t0, 0xc
/* 0043CFC4 A901FFF8 */  swl   $at, -8($t0)
/* 0043CFC8 B901FFFB */  swr   $at, -5($t0)
/* 0043CFCC 8981FFFC */  lwl   $at, -4($t4)
/* 0043CFD0 9981FFFF */  lwr   $at, -1($t4)
/* 0043CFD4 00000000 */  nop   
/* 0043CFD8 A901FFFC */  swl   $at, -4($t0)
/* 0043CFDC 1599FFF1 */  bne   $t4, $t9, .L0043CFA4
/* 0043CFE0 B901FFFF */   swr   $at, -1($t0)
/* 0043CFE4 89810000 */  lwl   $at, ($t4)
/* 0043CFE8 99810003 */  lwr   $at, 3($t4)
/* 0043CFEC 8F8A8C68 */  lw     $t2, %got(emptystring)($gp)
/* 0043CFF0 A9010000 */  swl   $at, ($t0)
/* 0043CFF4 B9010003 */  swr   $at, 3($t0)
/* 0043CFF8 89990004 */  lwl   $t9, 4($t4)
/* 0043CFFC 99990007 */  lwr   $t9, 7($t4)
/* 0043D000 240E0001 */  li    $t6, 1
/* 0043D004 A9190004 */  swl   $t9, 4($t0)
/* 0043D008 B9190007 */  swr   $t9, 7($t0)
/* 0043D00C 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0043D010 8D4A0000 */  lw    $t2, ($t2)
/* 0043D014 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043D018 8FA60008 */  lw    $a2, 8($sp)
/* 0043D01C 8FA50004 */  lw    $a1, 4($sp)
/* 0043D020 8FA40000 */  lw    $a0, ($sp)
/* 0043D024 AFAE0054 */  sw    $t6, 0x54($sp)
/* 0043D028 0320F809 */  jalr  $t9
/* 0043D02C AFAA0050 */   sw    $t2, 0x50($sp)
/* 0043D030 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043D034 1000002A */  b     .L0043D0E0
/* 0043D038 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L0043D03C:
/* 0043D03C 8C4F0000 */  lw    $t7, ($v0)
/* 0043D040 8F8B8D18 */  lw     $t3, %got(opcodeformat)($gp)
/* 0043D044 3C01EFFF */  lui   $at, 0xefff
/* 0043D048 8FB800BC */  lw    $t8, 0xbc($sp)
/* 0043D04C 3421FFFF */  ori   $at, $at, 0xffff
/* 0043D050 01E16824 */  and   $t5, $t7, $at
/* 0043D054 256B006B */  addiu $t3, $t3, 0x6b
/* 0043D058 170B000C */  bne   $t8, $t3, .L0043D08C
/* 0043D05C AC4D0000 */   sw    $t5, ($v0)
/* 0043D060 93A600C7 */  lbu   $a2, 0xc7($sp)
/* 0043D064 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 0043D068 24090067 */  li    $t1, 103
/* 0043D06C A4490024 */  sh    $t1, 0x24($v0)
/* 0043D070 24040057 */  li    $a0, 87
/* 0043D074 3407FFFF */  li    $a3, 65535
/* 0043D078 0320F809 */  jalr  $t9
/* 0043D07C 00C02825 */   move  $a1, $a2
/* 0043D080 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043D084 1000000B */  b     .L0043D0B4
/* 0043D088 00000000 */   nop   
.L0043D08C:
/* 0043D08C 93A600C7 */  lbu   $a2, 0xc7($sp)
/* 0043D090 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 0043D094 240C0066 */  li    $t4, 102
/* 0043D098 A44C0024 */  sh    $t4, 0x24($v0)
/* 0043D09C 24040057 */  li    $a0, 87
/* 0043D0A0 240700FF */  li    $a3, 255
/* 0043D0A4 0320F809 */  jalr  $t9
/* 0043D0A8 00C02825 */   move  $a1, $a2
/* 0043D0AC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043D0B0 00000000 */  nop   
.L0043D0B4:
/* 0043D0B4 8F8F8BB0 */  lw     $t7, %got(bbindex)($gp)
/* 0043D0B8 8F8E8B40 */  lw     $t6, %got(pinstruction)($gp)
/* 0043D0BC 8DEF0000 */  lw    $t7, ($t7)
/* 0043D0C0 8DCE0000 */  lw    $t6, ($t6)
/* 0043D0C4 000F6880 */  sll   $t5, $t7, 2
/* 0043D0C8 01AF6821 */  addu  $t5, $t5, $t7
/* 0043D0CC 000D68C0 */  sll   $t5, $t5, 3
/* 0043D0D0 240A0057 */  li    $t2, 87
/* 0043D0D4 01CDC021 */  addu  $t8, $t6, $t5
/* 0043D0D8 AF0A0014 */  sw    $t2, 0x14($t8)
/* 0043D0DC 8FBF00B4 */  lw    $ra, 0xb4($sp)
.L0043D0E0:
/* 0043D0E0 8FB000AC */  lw    $s0, 0xac($sp)
/* 0043D0E4 03E00008 */  jr    $ra
/* 0043D0E8 27BD00C0 */   addiu $sp, $sp, 0xc0

    .type emitloadstore, @function
    .size emitloadstore, .-emitloadstore
    .end emitloadstore

glabel emitcache
    .ent emitcache
    # 004604C0 do_parseafra
/* 0043D0EC 3C1C0FBF */  .cpload $t9
/* 0043D0F0 279CD174 */  
/* 0043D0F4 0399E021 */  
/* 0043D0F8 27BDFF98 */  addiu $sp, $sp, -0x68
/* 0043D0FC 8F8E8B8C */  lw     $t6, %got(reorderflag)($gp)
/* 0043D100 AFB0005C */  sw    $s0, 0x5c($sp)
/* 0043D104 91CE0000 */  lbu   $t6, ($t6)
/* 0043D108 00C08025 */  move  $s0, $a2
/* 0043D10C AFBF0064 */  sw    $ra, 0x64($sp)
/* 0043D110 AFBC0060 */  sw    $gp, 0x60($sp)
/* 0043D114 AFA40068 */  sw    $a0, 0x68($sp)
/* 0043D118 AFA5006C */  sw    $a1, 0x6c($sp)
/* 0043D11C 11C0002E */  beqz  $t6, .L0043D1D8
/* 0043D120 AFA70074 */   sw    $a3, 0x74($sp)
/* 0043D124 97AF006A */  lhu   $t7, 0x6a($sp)
/* 0043D128 2401009F */  li    $at, 159
/* 0043D12C 15E1002A */  bne   $t7, $at, .L0043D1D8
/* 0043D130 00000000 */   nop   
/* 0043D134 8F98806C */  lw    $t8, %got(RO_10017FE0)($gp)
/* 0043D138 03A04825 */  move  $t1, $sp
/* 0043D13C 27187FE0 */  addiu $t8, %lo(RO_10017FE0) # addiu $t8, $t8, 0x7fe0
/* 0043D140 27080048 */  addiu $t0, $t8, 0x48
.L0043D144:
/* 0043D144 8B010000 */  lwl   $at, ($t8)
/* 0043D148 9B010003 */  lwr   $at, 3($t8)
/* 0043D14C 2718000C */  addiu $t8, $t8, 0xc
/* 0043D150 A9210000 */  swl   $at, ($t1)
/* 0043D154 B9210003 */  swr   $at, 3($t1)
/* 0043D158 8B01FFF8 */  lwl   $at, -8($t8)
/* 0043D15C 9B01FFFB */  lwr   $at, -5($t8)
/* 0043D160 2529000C */  addiu $t1, $t1, 0xc
/* 0043D164 A921FFF8 */  swl   $at, -8($t1)
/* 0043D168 B921FFFB */  swr   $at, -5($t1)
/* 0043D16C 8B01FFFC */  lwl   $at, -4($t8)
/* 0043D170 9B01FFFF */  lwr   $at, -1($t8)
/* 0043D174 00000000 */  nop   
/* 0043D178 A921FFFC */  swl   $at, -4($t1)
/* 0043D17C 1708FFF1 */  bne   $t8, $t0, .L0043D144
/* 0043D180 B921FFFF */   swr   $at, -1($t1)
/* 0043D184 8B010000 */  lwl   $at, ($t8)
/* 0043D188 9B010003 */  lwr   $at, 3($t8)
/* 0043D18C 8F8A8C68 */  lw     $t2, %got(emptystring)($gp)
/* 0043D190 A9210000 */  swl   $at, ($t1)
/* 0043D194 B9210003 */  swr   $at, 3($t1)
/* 0043D198 8B080004 */  lwl   $t0, 4($t8)
/* 0043D19C 9B080007 */  lwr   $t0, 7($t8)
/* 0043D1A0 240B0001 */  li    $t3, 1
/* 0043D1A4 A9280004 */  swl   $t0, 4($t1)
/* 0043D1A8 B9280007 */  swr   $t0, 7($t1)
/* 0043D1AC 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0043D1B0 8D4A0000 */  lw    $t2, ($t2)
/* 0043D1B4 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043D1B8 8FA60008 */  lw    $a2, 8($sp)
/* 0043D1BC 8FA50004 */  lw    $a1, 4($sp)
/* 0043D1C0 8FA40000 */  lw    $a0, ($sp)
/* 0043D1C4 AFAB0054 */  sw    $t3, 0x54($sp)
/* 0043D1C8 0320F809 */  jalr  $t9
/* 0043D1CC AFAA0050 */   sw    $t2, 0x50($sp)
/* 0043D1D0 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0043D1D4 00000000 */  nop   
.L0043D1D8:
/* 0043D1D8 8F848BB0 */  lw     $a0, %got(bbindex)($gp)
/* 0043D1DC 00000000 */  nop   
/* 0043D1E0 8C8C0000 */  lw    $t4, ($a0)
/* 0043D1E4 00000000 */  nop   
/* 0043D1E8 258D0001 */  addiu $t5, $t4, 1
/* 0043D1EC AC8D0000 */  sw    $t5, ($a0)
/* 0043D1F0 8F9982DC */  lw    $t9, %call16(initbb)($gp)
/* 0043D1F4 00000000 */  nop   
/* 0043D1F8 0320F809 */  jalr  $t9
/* 0043D1FC 00000000 */   nop   
/* 0043D200 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0043D204 06010003 */  bgez  $s0, .L0043D214
/* 0043D208 24040048 */   li    $a0, 72
/* 0043D20C 320EFFFF */  andi  $t6, $s0, 0xffff
/* 0043D210 01C08025 */  move  $s0, $t6
.L0043D214:
/* 0043D214 8F998BB0 */  lw     $t9, %got(bbindex)($gp)
/* 0043D218 8F8F8B40 */  lw     $t7, %got(pinstruction)($gp)
/* 0043D21C 8F390000 */  lw    $t9, ($t9)
/* 0043D220 8DEF0000 */  lw    $t7, ($t7)
/* 0043D224 00194080 */  sll   $t0, $t9, 2
/* 0043D228 01194021 */  addu  $t0, $t0, $t9
/* 0043D22C 8F9982EC */  lw    $t9, %call16(fill_inst)($gp)
/* 0043D230 000840C0 */  sll   $t0, $t0, 3
/* 0043D234 93A50077 */  lbu   $a1, 0x77($sp)
/* 0043D238 93A6006F */  lbu   $a2, 0x6f($sp)
/* 0043D23C 97A7006A */  lhu   $a3, 0x6a($sp)
/* 0043D240 3209FFFF */  andi  $t1, $s0, 0xffff
/* 0043D244 01E8C021 */  addu  $t8, $t7, $t0
/* 0043D248 AFB80010 */  sw    $t8, 0x10($sp)
/* 0043D24C 0320F809 */  jalr  $t9
/* 0043D250 AFA90014 */   sw    $t1, 0x14($sp)
/* 0043D254 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0043D258 93AD006F */  lbu   $t5, 0x6f($sp)
/* 0043D25C 8F8B8BB0 */  lw     $t3, %got(bbindex)($gp)
/* 0043D260 8F8A8B40 */  lw     $t2, %got(pinstruction)($gp)
/* 0043D264 8D6B0000 */  lw    $t3, ($t3)
/* 0043D268 8D4A0000 */  lw    $t2, ($t2)
/* 0043D26C 000B6080 */  sll   $t4, $t3, 2
/* 0043D270 018B6021 */  addu  $t4, $t4, $t3
/* 0043D274 000C60C0 */  sll   $t4, $t4, 3
/* 0043D278 34018000 */  li    $at, 32768
/* 0043D27C 0201082A */  slt   $at, $s0, $at
/* 0043D280 014C1021 */  addu  $v0, $t2, $t4
/* 0043D284 14200005 */  bnez  $at, .L0043D29C
/* 0043D288 A04D0020 */   sb    $t5, 0x20($v0)
/* 0043D28C 3C01FFFF */  lui   $at, 0xffff
/* 0043D290 02017025 */  or    $t6, $s0, $at
/* 0043D294 10000002 */  b     .L0043D2A0
/* 0043D298 AC4E0008 */   sw    $t6, 8($v0)
.L0043D29C:
/* 0043D29C AC500008 */  sw    $s0, 8($v0)
.L0043D2A0:
/* 0043D2A0 8FBF0064 */  lw    $ra, 0x64($sp)
/* 0043D2A4 8FB0005C */  lw    $s0, 0x5c($sp)
/* 0043D2A8 03E00008 */  jr    $ra
/* 0043D2AC 27BD0068 */   addiu $sp, $sp, 0x68

    .type emitcache, @function
    .size emitcache, .-emitcache
    .end emitcache

glabel emitshift
    .ent emitshift
    # 004228B8 ll_load_immed
    # 00461EE0 func_00461EE0
    # 00462320 func_00462320
    # 00464528 parseafra
    # 00465CB4 smul
    # 00465E20 genmul
    # 0046679C sdmul
    # 00466908 gendmul
    # 0046743C func_0046743C
    # 00468320 func_00468320
    # 00468AAC genddiv
    # 00469CF8 parseafrrr
/* 0043D2B0 3C1C0FBF */  .cpload $t9
/* 0043D2B4 279CCFB0 */  
/* 0043D2B8 0399E021 */  
/* 0043D2BC 27BDFF40 */  addiu $sp, $sp, -0xc0
/* 0043D2C0 AFA400C0 */  sw    $a0, 0xc0($sp)
/* 0043D2C4 97AF00C2 */  lhu   $t7, 0xc2($sp)
/* 0043D2C8 97AE00C2 */  lhu   $t6, 0xc2($sp)
/* 0043D2CC AFB000AC */  sw    $s0, 0xac($sp)
/* 0043D2D0 2DF80040 */  sltiu $t8, $t7, 0x40
/* 0043D2D4 00E08025 */  move  $s0, $a3
/* 0043D2D8 AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 0043D2DC AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 0043D2E0 AFA500C4 */  sw    $a1, 0xc4($sp)
/* 0043D2E4 AFA600C8 */  sw    $a2, 0xc8($sp)
/* 0043D2E8 AFA700BC */  sw    $a3, 0xbc($sp)
/* 0043D2EC 1300000A */  beqz  $t8, .L0043D318
/* 0043D2F0 A7AE00BA */   sh    $t6, 0xba($sp)
/* 0043D2F4 8F898080 */  lw    $t1, %got(D_10004AD8)($gp)
/* 0043D2F8 000FC943 */  sra   $t9, $t7, 5
/* 0043D2FC 00194080 */  sll   $t0, $t9, 2
/* 0043D300 25294AD8 */  addiu $t1, %lo(D_10004AD8) # addiu $t1, $t1, 0x4ad8
/* 0043D304 01285021 */  addu  $t2, $t1, $t0
/* 0043D308 8D4B0000 */  lw    $t3, ($t2)
/* 0043D30C 00000000 */  nop   
/* 0043D310 01EB6004 */  sllv  $t4, $t3, $t7
/* 0043D314 29980000 */  slti  $t8, $t4, 0
.L0043D318:
/* 0043D318 17000043 */  bnez  $t8, .L0043D428
/* 0043D31C 03A06025 */   move  $t4, $sp
/* 0043D320 8F8E8070 */  lw    $t6, %got(RO_100181C9)($gp)
/* 0043D324 03A04025 */  move  $t0, $sp
/* 0043D328 25CE81C9 */  addiu $t6, %lo(RO_100181C9) # addiu $t6, $t6, -0x7e37
/* 0043D32C 25C90048 */  addiu $t1, $t6, 0x48
.L0043D330:
/* 0043D330 89C10000 */  lwl   $at, ($t6)
/* 0043D334 99C10003 */  lwr   $at, 3($t6)
/* 0043D338 25CE000C */  addiu $t6, $t6, 0xc
/* 0043D33C A9010000 */  swl   $at, ($t0)
/* 0043D340 B9010003 */  swr   $at, 3($t0)
/* 0043D344 89C1FFF8 */  lwl   $at, -8($t6)
/* 0043D348 99C1FFFB */  lwr   $at, -5($t6)
/* 0043D34C 2508000C */  addiu $t0, $t0, 0xc
/* 0043D350 A901FFF8 */  swl   $at, -8($t0)
/* 0043D354 B901FFFB */  swr   $at, -5($t0)
/* 0043D358 89C1FFFC */  lwl   $at, -4($t6)
/* 0043D35C 99C1FFFF */  lwr   $at, -1($t6)
/* 0043D360 00000000 */  nop   
/* 0043D364 A901FFFC */  swl   $at, -4($t0)
/* 0043D368 15C9FFF1 */  bne   $t6, $t1, .L0043D330
/* 0043D36C B901FFFF */   swr   $at, -1($t0)
/* 0043D370 89C10000 */  lwl   $at, ($t6)
/* 0043D374 99C10003 */  lwr   $at, 3($t6)
/* 0043D378 8F8A8070 */  lw    $t2, %got(RO_10018179)($gp)
/* 0043D37C A9010000 */  swl   $at, ($t0)
/* 0043D380 B9010003 */  swr   $at, 3($t0)
/* 0043D384 89C90004 */  lwl   $t1, 4($t6)
/* 0043D388 99C90007 */  lwr   $t1, 7($t6)
/* 0043D38C 254A8179 */  addiu $t2, %lo(RO_10018179) # addiu $t2, $t2, -0x7e87
/* 0043D390 A9090004 */  swl   $t1, 4($t0)
/* 0043D394 254F0048 */  addiu $t7, $t2, 0x48
/* 0043D398 B9090007 */  swr   $t1, 7($t0)
.L0043D39C:
/* 0043D39C 89410000 */  lwl   $at, ($t2)
/* 0043D3A0 99410003 */  lwr   $at, 3($t2)
/* 0043D3A4 254A000C */  addiu $t2, $t2, 0xc
/* 0043D3A8 A9810050 */  swl   $at, 0x50($t4)
/* 0043D3AC B9810053 */  swr   $at, 0x53($t4)
/* 0043D3B0 8941FFF8 */  lwl   $at, -8($t2)
/* 0043D3B4 9941FFFB */  lwr   $at, -5($t2)
/* 0043D3B8 258C000C */  addiu $t4, $t4, 0xc
/* 0043D3BC A9810048 */  swl   $at, 0x48($t4)
/* 0043D3C0 B981004B */  swr   $at, 0x4b($t4)
/* 0043D3C4 8941FFFC */  lwl   $at, -4($t2)
/* 0043D3C8 9941FFFF */  lwr   $at, -1($t2)
/* 0043D3CC 00000000 */  nop   
/* 0043D3D0 A981004C */  swl   $at, 0x4c($t4)
/* 0043D3D4 154FFFF1 */  bne   $t2, $t7, .L0043D39C
/* 0043D3D8 B981004F */   swr   $at, 0x4f($t4)
/* 0043D3DC 89410000 */  lwl   $at, ($t2)
/* 0043D3E0 99410003 */  lwr   $at, 3($t2)
/* 0043D3E4 240D024D */  li    $t5, 589
/* 0043D3E8 A9810050 */  swl   $at, 0x50($t4)
/* 0043D3EC B9810053 */  swr   $at, 0x53($t4)
/* 0043D3F0 894F0004 */  lwl   $t7, 4($t2)
/* 0043D3F4 994F0007 */  lwr   $t7, 7($t2)
/* 0043D3F8 00000000 */  nop   
/* 0043D3FC A98F0054 */  swl   $t7, 0x54($t4)
/* 0043D400 B98F0057 */  swr   $t7, 0x57($t4)
/* 0043D404 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043D408 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043D40C 8FA60008 */  lw    $a2, 8($sp)
/* 0043D410 8FA50004 */  lw    $a1, 4($sp)
/* 0043D414 8FA40000 */  lw    $a0, ($sp)
/* 0043D418 0320F809 */  jalr  $t9
/* 0043D41C AFAD00A0 */   sw    $t5, 0xa0($sp)
/* 0043D420 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043D424 00000000 */  nop   
.L0043D428:
/* 0043D428 97B800C2 */  lhu   $t8, 0xc2($sp)
/* 0043D42C 3C013800 */  lui   $at, 0x3800
/* 0043D430 2F190020 */  sltiu $t9, $t8, 0x20
/* 0043D434 00194823 */  negu  $t1, $t9
/* 0043D438 01217024 */  and   $t6, $t1, $at
/* 0043D43C 030E4004 */  sllv  $t0, $t6, $t8
/* 0043D440 05010049 */  bgez  $t0, .L0043D568
/* 0043D444 97A800C2 */   lhu   $t0, 0xc2($sp)
/* 0043D448 06000003 */  bltz  $s0, .L0043D458
/* 0043D44C 2A010020 */   slti  $at, $s0, 0x20
/* 0043D450 14200045 */  bnez  $at, .L0043D568
/* 0043D454 97A800C2 */   lhu   $t0, 0xc2($sp)
.L0043D458:
/* 0043D458 8F8B8070 */  lw    $t3, %got(RO_10018129)($gp)
/* 0043D45C 03A06025 */  move  $t4, $sp
/* 0043D460 256B8129 */  addiu $t3, %lo(RO_10018129) # addiu $t3, $t3, -0x7ed7
/* 0043D464 256A0048 */  addiu $t2, $t3, 0x48
.L0043D468:
/* 0043D468 89610000 */  lwl   $at, ($t3)
/* 0043D46C 99610003 */  lwr   $at, 3($t3)
/* 0043D470 256B000C */  addiu $t3, $t3, 0xc
/* 0043D474 A9810000 */  swl   $at, ($t4)
/* 0043D478 B9810003 */  swr   $at, 3($t4)
/* 0043D47C 8961FFF8 */  lwl   $at, -8($t3)
/* 0043D480 9961FFFB */  lwr   $at, -5($t3)
/* 0043D484 258C000C */  addiu $t4, $t4, 0xc
/* 0043D488 A981FFF8 */  swl   $at, -8($t4)
/* 0043D48C B981FFFB */  swr   $at, -5($t4)
/* 0043D490 8961FFFC */  lwl   $at, -4($t3)
/* 0043D494 9961FFFF */  lwr   $at, -1($t3)
/* 0043D498 00000000 */  nop   
/* 0043D49C A981FFFC */  swl   $at, -4($t4)
/* 0043D4A0 156AFFF1 */  bne   $t3, $t2, .L0043D468
/* 0043D4A4 B981FFFF */   swr   $at, -1($t4)
/* 0043D4A8 89610000 */  lwl   $at, ($t3)
/* 0043D4AC 99610003 */  lwr   $at, 3($t3)
/* 0043D4B0 8F8D8070 */  lw    $t5, %got(RO_100180D9)($gp)
/* 0043D4B4 A9810000 */  swl   $at, ($t4)
/* 0043D4B8 B9810003 */  swr   $at, 3($t4)
/* 0043D4BC 896A0004 */  lwl   $t2, 4($t3)
/* 0043D4C0 996A0007 */  lwr   $t2, 7($t3)
/* 0043D4C4 25AD80D9 */  addiu $t5, %lo(RO_100180D9) # addiu $t5, $t5, -0x7f27
/* 0043D4C8 A98A0004 */  swl   $t2, 4($t4)
/* 0043D4CC 25A90048 */  addiu $t1, $t5, 0x48
/* 0043D4D0 03A07025 */  move  $t6, $sp
/* 0043D4D4 B98A0007 */  swr   $t2, 7($t4)
.L0043D4D8:
/* 0043D4D8 89A10000 */  lwl   $at, ($t5)
/* 0043D4DC 99A10003 */  lwr   $at, 3($t5)
/* 0043D4E0 25AD000C */  addiu $t5, $t5, 0xc
/* 0043D4E4 A9C10050 */  swl   $at, 0x50($t6)
/* 0043D4E8 B9C10053 */  swr   $at, 0x53($t6)
/* 0043D4EC 89A1FFF8 */  lwl   $at, -8($t5)
/* 0043D4F0 99A1FFFB */  lwr   $at, -5($t5)
/* 0043D4F4 25CE000C */  addiu $t6, $t6, 0xc
/* 0043D4F8 A9C10048 */  swl   $at, 0x48($t6)
/* 0043D4FC B9C1004B */  swr   $at, 0x4b($t6)
/* 0043D500 89A1FFFC */  lwl   $at, -4($t5)
/* 0043D504 99A1FFFF */  lwr   $at, -1($t5)
/* 0043D508 00000000 */  nop   
/* 0043D50C A9C1004C */  swl   $at, 0x4c($t6)
/* 0043D510 15A9FFF1 */  bne   $t5, $t1, .L0043D4D8
/* 0043D514 B9C1004F */   swr   $at, 0x4f($t6)
/* 0043D518 89A10000 */  lwl   $at, ($t5)
/* 0043D51C 99A10003 */  lwr   $at, 3($t5)
/* 0043D520 2418024F */  li    $t8, 591
/* 0043D524 A9C10050 */  swl   $at, 0x50($t6)
/* 0043D528 B9C10053 */  swr   $at, 0x53($t6)
/* 0043D52C 89A90004 */  lwl   $t1, 4($t5)
/* 0043D530 99A90007 */  lwr   $t1, 7($t5)
/* 0043D534 00000000 */  nop   
/* 0043D538 A9C90054 */  swl   $t1, 0x54($t6)
/* 0043D53C B9C90057 */  swr   $t1, 0x57($t6)
/* 0043D540 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043D544 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043D548 8FA60008 */  lw    $a2, 8($sp)
/* 0043D54C 8FA50004 */  lw    $a1, 4($sp)
/* 0043D550 8FA40000 */  lw    $a0, ($sp)
/* 0043D554 0320F809 */  jalr  $t9
/* 0043D558 AFB800A0 */   sw    $t8, 0xa0($sp)
/* 0043D55C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043D560 00000000 */  nop   
/* 0043D564 97A800C2 */  lhu   $t0, 0xc2($sp)
.L0043D568:
/* 0043D568 3C0100E0 */  lui   $at, 0xe0
/* 0043D56C 250FFFE0 */  addiu $t7, $t0, -0x20
/* 0043D570 2DEA0020 */  sltiu $t2, $t7, 0x20
/* 0043D574 000A5823 */  negu  $t3, $t2
/* 0043D578 01616024 */  and   $t4, $t3, $at
/* 0043D57C 01ECC804 */  sllv  $t9, $t4, $t7
/* 0043D580 0721006B */  bgez  $t9, .L0043D730
/* 0043D584 00000000 */   nop   
/* 0043D588 06000003 */  bltz  $s0, .L0043D598
/* 0043D58C 2A010040 */   slti  $at, $s0, 0x40
/* 0043D590 14200045 */  bnez  $at, .L0043D6A8
/* 0043D594 2A010020 */   slti  $at, $s0, 0x20
.L0043D598:
/* 0043D598 8F898070 */  lw    $t1, %got(RO_10018089)($gp)
/* 0043D59C 03A0C025 */  move  $t8, $sp
/* 0043D5A0 25298089 */  addiu $t1, %lo(RO_10018089) # addiu $t1, $t1, -0x7f77
/* 0043D5A4 252E0048 */  addiu $t6, $t1, 0x48
.L0043D5A8:
/* 0043D5A8 89210000 */  lwl   $at, ($t1)
/* 0043D5AC 99210003 */  lwr   $at, 3($t1)
/* 0043D5B0 2529000C */  addiu $t1, $t1, 0xc
/* 0043D5B4 AB010000 */  swl   $at, ($t8)
/* 0043D5B8 BB010003 */  swr   $at, 3($t8)
/* 0043D5BC 8921FFF8 */  lwl   $at, -8($t1)
/* 0043D5C0 9921FFFB */  lwr   $at, -5($t1)
/* 0043D5C4 2718000C */  addiu $t8, $t8, 0xc
/* 0043D5C8 AB01FFF8 */  swl   $at, -8($t8)
/* 0043D5CC BB01FFFB */  swr   $at, -5($t8)
/* 0043D5D0 8921FFFC */  lwl   $at, -4($t1)
/* 0043D5D4 9921FFFF */  lwr   $at, -1($t1)
/* 0043D5D8 00000000 */  nop   
/* 0043D5DC AB01FFFC */  swl   $at, -4($t8)
/* 0043D5E0 152EFFF1 */  bne   $t1, $t6, .L0043D5A8
/* 0043D5E4 BB01FFFF */   swr   $at, -1($t8)
/* 0043D5E8 89210000 */  lwl   $at, ($t1)
/* 0043D5EC 99210003 */  lwr   $at, 3($t1)
/* 0043D5F0 8F888070 */  lw    $t0, %got(RO_10018039)($gp)
/* 0043D5F4 AB010000 */  swl   $at, ($t8)
/* 0043D5F8 BB010003 */  swr   $at, 3($t8)
/* 0043D5FC 892E0004 */  lwl   $t6, 4($t1)
/* 0043D600 992E0007 */  lwr   $t6, 7($t1)
/* 0043D604 25088039 */  addiu $t0, %lo(RO_10018039) # addiu $t0, $t0, -0x7fc7
/* 0043D608 AB0E0004 */  swl   $t6, 4($t8)
/* 0043D60C 250B0048 */  addiu $t3, $t0, 0x48
/* 0043D610 03A06025 */  move  $t4, $sp
/* 0043D614 BB0E0007 */  swr   $t6, 7($t8)
.L0043D618:
/* 0043D618 89010000 */  lwl   $at, ($t0)
/* 0043D61C 99010003 */  lwr   $at, 3($t0)
/* 0043D620 2508000C */  addiu $t0, $t0, 0xc
/* 0043D624 A9810050 */  swl   $at, 0x50($t4)
/* 0043D628 B9810053 */  swr   $at, 0x53($t4)
/* 0043D62C 8901FFF8 */  lwl   $at, -8($t0)
/* 0043D630 9901FFFB */  lwr   $at, -5($t0)
/* 0043D634 258C000C */  addiu $t4, $t4, 0xc
/* 0043D638 A9810048 */  swl   $at, 0x48($t4)
/* 0043D63C B981004B */  swr   $at, 0x4b($t4)
/* 0043D640 8901FFFC */  lwl   $at, -4($t0)
/* 0043D644 9901FFFF */  lwr   $at, -1($t0)
/* 0043D648 00000000 */  nop   
/* 0043D64C A981004C */  swl   $at, 0x4c($t4)
/* 0043D650 150BFFF1 */  bne   $t0, $t3, .L0043D618
/* 0043D654 B981004F */   swr   $at, 0x4f($t4)
/* 0043D658 89010000 */  lwl   $at, ($t0)
/* 0043D65C 99010003 */  lwr   $at, 3($t0)
/* 0043D660 240F0251 */  li    $t7, 593
/* 0043D664 A9810050 */  swl   $at, 0x50($t4)
/* 0043D668 B9810053 */  swr   $at, 0x53($t4)
/* 0043D66C 890B0004 */  lwl   $t3, 4($t0)
/* 0043D670 990B0007 */  lwr   $t3, 7($t0)
/* 0043D674 00000000 */  nop   
/* 0043D678 A98B0054 */  swl   $t3, 0x54($t4)
/* 0043D67C B98B0057 */  swr   $t3, 0x57($t4)
/* 0043D680 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043D684 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043D688 8FA60008 */  lw    $a2, 8($sp)
/* 0043D68C 8FA50004 */  lw    $a1, 4($sp)
/* 0043D690 8FA40000 */  lw    $a0, ($sp)
/* 0043D694 0320F809 */  jalr  $t9
/* 0043D698 AFAF00A0 */   sw    $t7, 0xa0($sp)
/* 0043D69C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043D6A0 00000000 */  nop   
/* 0043D6A4 2A010020 */  slti  $at, $s0, 0x20
.L0043D6A8:
/* 0043D6A8 14200021 */  bnez  $at, .L0043D730
/* 0043D6AC 00000000 */   nop   
/* 0043D6B0 97A200C2 */  lhu   $v0, 0xc2($sp)
/* 0043D6B4 24040001 */  li    $a0, 1
/* 0043D6B8 2459FFD8 */  addiu $t9, $v0, -0x28
/* 0043D6BC 2F210003 */  sltiu $at, $t9, 3
/* 0043D6C0 10200012 */  beqz  $at, .L0043D70C
/* 0043D6C4 24050254 */   li    $a1, 596
/* 0043D6C8 8F818070 */  lw    $at, %got(jtbl_1001821C)($gp)
/* 0043D6CC 0019C880 */  sll   $t9, $t9, 2
/* 0043D6D0 00390821 */  addu  $at, $at, $t9
/* 0043D6D4 8C39821C */  lw    $t9, %lo(jtbl_1001821C)($at)
/* 0043D6D8 00000000 */  nop   
/* 0043D6DC 033CC821 */  addu  $t9, $t9, $gp
/* 0043D6E0 03200008 */  jr    $t9
/* 0043D6E4 00000000 */   nop   
.L0043D6E8:
/* 0043D6E8 240D002B */  li    $t5, 43
/* 0043D6EC 1000000E */  b     .L0043D728
/* 0043D6F0 A7AD00BA */   sh    $t5, 0xba($sp)
.L0043D6F4:
/* 0043D6F4 240E002C */  li    $t6, 44
/* 0043D6F8 1000000B */  b     .L0043D728
/* 0043D6FC A7AE00BA */   sh    $t6, 0xba($sp)
.L0043D700:
/* 0043D700 2409002D */  li    $t1, 45
/* 0043D704 10000008 */  b     .L0043D728
/* 0043D708 A7A900BA */   sh    $t1, 0xba($sp)
.L0043D70C:
/* 0043D70C 8F868070 */  lw    $a2, %got(RO_10018030)($gp)
/* 0043D710 8F99868C */  lw    $t9, %call16(caseerror)($gp)
/* 0043D714 24070009 */  li    $a3, 9
/* 0043D718 0320F809 */  jalr  $t9
/* 0043D71C 24C68030 */   addiu $a2, %lo(RO_10018030) # addiu $a2, $a2, -0x7fd0
/* 0043D720 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043D724 00000000 */  nop   
.L0043D728:
/* 0043D728 2618FFE0 */  addiu $t8, $s0, -0x20
/* 0043D72C AFB800BC */  sw    $t8, 0xbc($sp)
.L0043D730:
/* 0043D730 8F848BB0 */  lw     $a0, %got(bbindex)($gp)
/* 0043D734 00000000 */  nop   
/* 0043D738 8C8A0000 */  lw    $t2, ($a0)
/* 0043D73C 00000000 */  nop   
/* 0043D740 254B0001 */  addiu $t3, $t2, 1
/* 0043D744 AC8B0000 */  sw    $t3, ($a0)
/* 0043D748 8F9982DC */  lw    $t9, %call16(initbb)($gp)
/* 0043D74C 00000000 */  nop   
/* 0043D750 0320F809 */  jalr  $t9
/* 0043D754 00000000 */   nop   
/* 0043D758 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043D75C 8FAD00BC */  lw    $t5, 0xbc($sp)
/* 0043D760 8F8C8BB0 */  lw     $t4, %got(bbindex)($gp)
/* 0043D764 8F888B40 */  lw     $t0, %got(pinstruction)($gp)
/* 0043D768 8D8C0000 */  lw    $t4, ($t4)
/* 0043D76C 8D080000 */  lw    $t0, ($t0)
/* 0043D770 000C7880 */  sll   $t7, $t4, 2
/* 0043D774 01EC7821 */  addu  $t7, $t7, $t4
/* 0043D778 000F78C0 */  sll   $t7, $t7, 3
/* 0043D77C 010FC821 */  addu  $t9, $t0, $t7
/* 0043D780 AFB90010 */  sw    $t9, 0x10($sp)
/* 0043D784 8F9982EC */  lw    $t9, %call16(fill_inst)($gp)
/* 0043D788 93A400C7 */  lbu   $a0, 0xc7($sp)
/* 0043D78C 93A500CB */  lbu   $a1, 0xcb($sp)
/* 0043D790 97A700BA */  lhu   $a3, 0xba($sp)
/* 0043D794 00003025 */  move  $a2, $zero
/* 0043D798 0320F809 */  jalr  $t9
/* 0043D79C AFAD0014 */   sw    $t5, 0x14($sp)
/* 0043D7A0 8FBF00B4 */  lw    $ra, 0xb4($sp)
/* 0043D7A4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043D7A8 8FB000AC */  lw    $s0, 0xac($sp)
/* 0043D7AC 03E00008 */  jr    $ra
/* 0043D7B0 27BD00C0 */   addiu $sp, $sp, 0xc0

    .type emitshift, @function
    .size emitshift, .-emitshift
    .end emitshift

glabel emitreg2
    .ent emitreg2
    # 0041E40C func_0041E40C
    # 004531B8 parseafa
    # 004543E4 parseafr
    # 00465E20 genmul
    # 00466908 gendmul
    # 00467C5C gendiv
    # 00468AAC genddiv
/* 0043D7B4 3C1C0FBF */  .cpload $t9
/* 0043D7B8 279CCAAC */  
/* 0043D7BC 0399E021 */  
/* 0043D7C0 27BDFF48 */  addiu $sp, $sp, -0xb8
/* 0043D7C4 AFA400B8 */  sw    $a0, 0xb8($sp)
/* 0043D7C8 97AE00BA */  lhu   $t6, 0xba($sp)
/* 0043D7CC 3C0100CF */  lui   $at, 0xcf
/* 0043D7D0 2DCF0020 */  sltiu $t7, $t6, 0x20
/* 0043D7D4 000FC023 */  negu  $t8, $t7
/* 0043D7D8 0301C824 */  and   $t9, $t8, $at
/* 0043D7DC 01D94004 */  sllv  $t0, $t9, $t6
/* 0043D7E0 AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 0043D7E4 AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 0043D7E8 AFA500BC */  sw    $a1, 0xbc($sp)
/* 0043D7EC 05000044 */  bltz  $t0, .L0043D900
/* 0043D7F0 AFA600C0 */   sw    $a2, 0xc0($sp)
/* 0043D7F4 8F898070 */  lw    $t1, %got(RO_10018278)($gp)
/* 0043D7F8 03A06025 */  move  $t4, $sp
/* 0043D7FC 25298278 */  addiu $t1, %lo(RO_10018278) # addiu $t1, $t1, -0x7d88
/* 0043D800 252B0048 */  addiu $t3, $t1, 0x48
.L0043D804:
/* 0043D804 89210000 */  lwl   $at, ($t1)
/* 0043D808 99210003 */  lwr   $at, 3($t1)
/* 0043D80C 2529000C */  addiu $t1, $t1, 0xc
/* 0043D810 A9810000 */  swl   $at, ($t4)
/* 0043D814 B9810003 */  swr   $at, 3($t4)
/* 0043D818 8921FFF8 */  lwl   $at, -8($t1)
/* 0043D81C 9921FFFB */  lwr   $at, -5($t1)
/* 0043D820 258C000C */  addiu $t4, $t4, 0xc
/* 0043D824 A981FFF8 */  swl   $at, -8($t4)
/* 0043D828 B981FFFB */  swr   $at, -5($t4)
/* 0043D82C 8921FFFC */  lwl   $at, -4($t1)
/* 0043D830 9921FFFF */  lwr   $at, -1($t1)
/* 0043D834 00000000 */  nop   
/* 0043D838 A981FFFC */  swl   $at, -4($t4)
/* 0043D83C 152BFFF1 */  bne   $t1, $t3, .L0043D804
/* 0043D840 B981FFFF */   swr   $at, -1($t4)
/* 0043D844 89210000 */  lwl   $at, ($t1)
/* 0043D848 99210003 */  lwr   $at, 3($t1)
/* 0043D84C 8F8D8070 */  lw    $t5, %got(RO_10018228)($gp)
/* 0043D850 A9810000 */  swl   $at, ($t4)
/* 0043D854 B9810003 */  swr   $at, 3($t4)
/* 0043D858 892B0004 */  lwl   $t3, 4($t1)
/* 0043D85C 992B0007 */  lwr   $t3, 7($t1)
/* 0043D860 25AD8228 */  addiu $t5, %lo(RO_10018228) # addiu $t5, $t5, -0x7dd8
/* 0043D864 A98B0004 */  swl   $t3, 4($t4)
/* 0043D868 25B80048 */  addiu $t8, $t5, 0x48
/* 0043D86C 03A0C825 */  move  $t9, $sp
/* 0043D870 B98B0007 */  swr   $t3, 7($t4)
.L0043D874:
/* 0043D874 89A10000 */  lwl   $at, ($t5)
/* 0043D878 99A10003 */  lwr   $at, 3($t5)
/* 0043D87C 25AD000C */  addiu $t5, $t5, 0xc
/* 0043D880 AB210050 */  swl   $at, 0x50($t9)
/* 0043D884 BB210053 */  swr   $at, 0x53($t9)
/* 0043D888 89A1FFF8 */  lwl   $at, -8($t5)
/* 0043D88C 99A1FFFB */  lwr   $at, -5($t5)
/* 0043D890 2739000C */  addiu $t9, $t9, 0xc
/* 0043D894 AB210048 */  swl   $at, 0x48($t9)
/* 0043D898 BB21004B */  swr   $at, 0x4b($t9)
/* 0043D89C 89A1FFFC */  lwl   $at, -4($t5)
/* 0043D8A0 99A1FFFF */  lwr   $at, -1($t5)
/* 0043D8A4 00000000 */  nop   
/* 0043D8A8 AB21004C */  swl   $at, 0x4c($t9)
/* 0043D8AC 15B8FFF1 */  bne   $t5, $t8, .L0043D874
/* 0043D8B0 BB21004F */   swr   $at, 0x4f($t9)
/* 0043D8B4 89A10000 */  lwl   $at, ($t5)
/* 0043D8B8 99A10003 */  lwr   $at, 3($t5)
/* 0043D8BC 240E0270 */  li    $t6, 624
/* 0043D8C0 AB210050 */  swl   $at, 0x50($t9)
/* 0043D8C4 BB210053 */  swr   $at, 0x53($t9)
/* 0043D8C8 89B80004 */  lwl   $t8, 4($t5)
/* 0043D8CC 99B80007 */  lwr   $t8, 7($t5)
/* 0043D8D0 00000000 */  nop   
/* 0043D8D4 AB380054 */  swl   $t8, 0x54($t9)
/* 0043D8D8 BB380057 */  swr   $t8, 0x57($t9)
/* 0043D8DC 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043D8E0 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043D8E4 8FA60008 */  lw    $a2, 8($sp)
/* 0043D8E8 8FA50004 */  lw    $a1, 4($sp)
/* 0043D8EC 8FA40000 */  lw    $a0, ($sp)
/* 0043D8F0 0320F809 */  jalr  $t9
/* 0043D8F4 AFAE00A0 */   sw    $t6, 0xa0($sp)
/* 0043D8F8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043D8FC 00000000 */  nop   
.L0043D900:
/* 0043D900 8F848BB0 */  lw     $a0, %got(bbindex)($gp)
/* 0043D904 00000000 */  nop   
/* 0043D908 8C880000 */  lw    $t0, ($a0)
/* 0043D90C 00000000 */  nop   
/* 0043D910 250A0001 */  addiu $t2, $t0, 1
/* 0043D914 AC8A0000 */  sw    $t2, ($a0)
/* 0043D918 8F9982DC */  lw    $t9, %call16(initbb)($gp)
/* 0043D91C 00000000 */  nop   
/* 0043D920 0320F809 */  jalr  $t9
/* 0043D924 00000000 */   nop   
/* 0043D928 97AB00BA */  lhu   $t3, 0xba($sp)
/* 0043D92C 3C01000A */  lui   $at, 0xa
/* 0043D930 2D690020 */  sltiu $t1, $t3, 0x20
/* 0043D934 00096023 */  negu  $t4, $t1
/* 0043D938 01817824 */  and   $t7, $t4, $at
/* 0043D93C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043D940 016FC004 */  sllv  $t8, $t7, $t3
/* 0043D944 07010004 */  bgez  $t8, .L0043D958
/* 0043D948 24060048 */   li    $a2, 72
/* 0043D94C 93AD00BF */  lbu   $t5, 0xbf($sp)
/* 0043D950 00000000 */  nop   
/* 0043D954 A3AD00C3 */  sb    $t5, 0xc3($sp)
.L0043D958:
/* 0043D958 8F8E8BB0 */  lw     $t6, %got(bbindex)($gp)
/* 0043D95C 8F998B40 */  lw     $t9, %got(pinstruction)($gp)
/* 0043D960 8DCE0000 */  lw    $t6, ($t6)
/* 0043D964 8F390000 */  lw    $t9, ($t9)
/* 0043D968 000E4080 */  sll   $t0, $t6, 2
/* 0043D96C 010E4021 */  addu  $t0, $t0, $t6
/* 0043D970 000840C0 */  sll   $t0, $t0, 3
/* 0043D974 03285021 */  addu  $t2, $t9, $t0
/* 0043D978 8F9982EC */  lw    $t9, %call16(fill_inst)($gp)
/* 0043D97C 93A400C3 */  lbu   $a0, 0xc3($sp)
/* 0043D980 93A500BF */  lbu   $a1, 0xbf($sp)
/* 0043D984 97A700BA */  lhu   $a3, 0xba($sp)
/* 0043D988 AFAA0010 */  sw    $t2, 0x10($sp)
/* 0043D98C 0320F809 */  jalr  $t9
/* 0043D990 AFA00014 */   sw    $zero, 0x14($sp)
/* 0043D994 8FBF00B4 */  lw    $ra, 0xb4($sp)
/* 0043D998 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043D99C 03E00008 */  jr    $ra
/* 0043D9A0 27BD00B8 */   addiu $sp, $sp, 0xb8

    .type emitreg2, @function
    .size emitreg2, .-emitreg2
    .end emitreg2

glabel emitspec
    .ent emitspec
    # 00450BEC parseaf
    # 00465E20 genmul
    # 00466908 gendmul
    # 00467C5C gendiv
    # 00468AAC genddiv
    # 00469164 func_00469164
    # 00469650 func_00469650
    # 00469970 func_00469970
/* 0043D9A4 3C1C0FBF */  .cpload $t9
/* 0043D9A8 279CC8BC */  
/* 0043D9AC 0399E021 */  
/* 0043D9B0 27BDFF18 */  addiu $sp, $sp, -0xe8
/* 0043D9B4 AFA400E8 */  sw    $a0, 0xe8($sp)
/* 0043D9B8 97A800EA */  lhu   $t0, 0xea($sp)
/* 0043D9BC 3C0E0030 */  lui   $t6, 0x30
/* 0043D9C0 240F1F80 */  li    $t7, 8064
/* 0043D9C4 24180010 */  li    $t8, 16
/* 0043D9C8 24190076 */  li    $t9, 118
/* 0043D9CC 2D090160 */  sltiu $t1, $t0, 0x160
/* 0043D9D0 AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 0043D9D4 AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 0043D9D8 AFA500EC */  sw    $a1, 0xec($sp)
/* 0043D9DC AFB900E0 */  sw    $t9, 0xe0($sp)
/* 0043D9E0 AFB800DC */  sw    $t8, 0xdc($sp)
/* 0043D9E4 AFAF00CC */  sw    $t7, 0xcc($sp)
/* 0043D9E8 AFAE00BC */  sw    $t6, 0xbc($sp)
/* 0043D9EC AFA000C0 */  sw    $zero, 0xc0($sp)
/* 0043D9F0 AFA000C4 */  sw    $zero, 0xc4($sp)
/* 0043D9F4 AFA000C8 */  sw    $zero, 0xc8($sp)
/* 0043D9F8 AFA000D0 */  sw    $zero, 0xd0($sp)
/* 0043D9FC AFA000D4 */  sw    $zero, 0xd4($sp)
/* 0043DA00 AFA000D8 */  sw    $zero, 0xd8($sp)
/* 0043DA04 11200009 */  beqz  $t1, .L0043DA2C
/* 0043DA08 AFA000E4 */   sw    $zero, 0xe4($sp)
/* 0043DA0C 00085143 */  sra   $t2, $t0, 5
/* 0043DA10 000A5880 */  sll   $t3, $t2, 2
/* 0043DA14 27AC00BC */  addiu $t4, $sp, 0xbc
/* 0043DA18 016C6821 */  addu  $t5, $t3, $t4
/* 0043DA1C 8DAE0000 */  lw    $t6, ($t5)
/* 0043DA20 00000000 */  nop   
/* 0043DA24 010E7804 */  sllv  $t7, $t6, $t0
/* 0043DA28 29E90000 */  slti  $t1, $t7, 0
.L0043DA2C:
/* 0043DA2C 15200043 */  bnez  $t1, .L0043DB3C
/* 0043DA30 03A07825 */   move  $t7, $sp
/* 0043DA34 8F998070 */  lw    $t9, %got(RO_100184A8)($gp)
/* 0043DA38 03A06025 */  move  $t4, $sp
/* 0043DA3C 273984A8 */  addiu $t9, %lo(RO_100184A8) # addiu $t9, $t9, -0x7b58
/* 0043DA40 272B0048 */  addiu $t3, $t9, 0x48
.L0043DA44:
/* 0043DA44 8B210000 */  lwl   $at, ($t9)
/* 0043DA48 9B210003 */  lwr   $at, 3($t9)
/* 0043DA4C 2739000C */  addiu $t9, $t9, 0xc
/* 0043DA50 A9810000 */  swl   $at, ($t4)
/* 0043DA54 B9810003 */  swr   $at, 3($t4)
/* 0043DA58 8B21FFF8 */  lwl   $at, -8($t9)
/* 0043DA5C 9B21FFFB */  lwr   $at, -5($t9)
/* 0043DA60 258C000C */  addiu $t4, $t4, 0xc
/* 0043DA64 A981FFF8 */  swl   $at, -8($t4)
/* 0043DA68 B981FFFB */  swr   $at, -5($t4)
/* 0043DA6C 8B21FFFC */  lwl   $at, -4($t9)
/* 0043DA70 9B21FFFF */  lwr   $at, -1($t9)
/* 0043DA74 00000000 */  nop   
/* 0043DA78 A981FFFC */  swl   $at, -4($t4)
/* 0043DA7C 172BFFF1 */  bne   $t9, $t3, .L0043DA44
/* 0043DA80 B981FFFF */   swr   $at, -1($t4)
/* 0043DA84 8B210000 */  lwl   $at, ($t9)
/* 0043DA88 9B210003 */  lwr   $at, 3($t9)
/* 0043DA8C 8F8D8070 */  lw    $t5, %got(RO_10018458)($gp)
/* 0043DA90 A9810000 */  swl   $at, ($t4)
/* 0043DA94 B9810003 */  swr   $at, 3($t4)
/* 0043DA98 8B2B0004 */  lwl   $t3, 4($t9)
/* 0043DA9C 9B2B0007 */  lwr   $t3, 7($t9)
/* 0043DAA0 25AD8458 */  addiu $t5, %lo(RO_10018458) # addiu $t5, $t5, -0x7ba8
/* 0043DAA4 A98B0004 */  swl   $t3, 4($t4)
/* 0043DAA8 25A80048 */  addiu $t0, $t5, 0x48
/* 0043DAAC B98B0007 */  swr   $t3, 7($t4)
.L0043DAB0:
/* 0043DAB0 89A10000 */  lwl   $at, ($t5)
/* 0043DAB4 99A10003 */  lwr   $at, 3($t5)
/* 0043DAB8 25AD000C */  addiu $t5, $t5, 0xc
/* 0043DABC A9E10050 */  swl   $at, 0x50($t7)
/* 0043DAC0 B9E10053 */  swr   $at, 0x53($t7)
/* 0043DAC4 89A1FFF8 */  lwl   $at, -8($t5)
/* 0043DAC8 99A1FFFB */  lwr   $at, -5($t5)
/* 0043DACC 25EF000C */  addiu $t7, $t7, 0xc
/* 0043DAD0 A9E10048 */  swl   $at, 0x48($t7)
/* 0043DAD4 B9E1004B */  swr   $at, 0x4b($t7)
/* 0043DAD8 89A1FFFC */  lwl   $at, -4($t5)
/* 0043DADC 99A1FFFF */  lwr   $at, -1($t5)
/* 0043DAE0 00000000 */  nop   
/* 0043DAE4 A9E1004C */  swl   $at, 0x4c($t7)
/* 0043DAE8 15A8FFF1 */  bne   $t5, $t0, .L0043DAB0
/* 0043DAEC B9E1004F */   swr   $at, 0x4f($t7)
/* 0043DAF0 89A10000 */  lwl   $at, ($t5)
/* 0043DAF4 99A10003 */  lwr   $at, 3($t5)
/* 0043DAF8 24180291 */  li    $t8, 657
/* 0043DAFC A9E10050 */  swl   $at, 0x50($t7)
/* 0043DB00 B9E10053 */  swr   $at, 0x53($t7)
/* 0043DB04 89A80004 */  lwl   $t0, 4($t5)
/* 0043DB08 99A80007 */  lwr   $t0, 7($t5)
/* 0043DB0C 00000000 */  nop   
/* 0043DB10 A9E80054 */  swl   $t0, 0x54($t7)
/* 0043DB14 B9E80057 */  swr   $t0, 0x57($t7)
/* 0043DB18 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043DB1C 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043DB20 8FA60008 */  lw    $a2, 8($sp)
/* 0043DB24 8FA50004 */  lw    $a1, 4($sp)
/* 0043DB28 8FA40000 */  lw    $a0, ($sp)
/* 0043DB2C 0320F809 */  jalr  $t9
/* 0043DB30 AFB800A0 */   sw    $t8, 0xa0($sp)
/* 0043DB34 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043DB38 00000000 */  nop   
.L0043DB3C:
/* 0043DB3C 97A900EA */  lhu   $t1, 0xea($sp)
/* 0043DB40 2401000B */  li    $at, 11
/* 0043DB44 1521004C */  bne   $t1, $at, .L0043DC78
/* 0043DB48 8FAA00EC */   lw    $t2, 0xec($sp)
/* 0043DB4C 8FAA00EC */  lw    $t2, 0xec($sp)
/* 0043DB50 3C010010 */  lui   $at, 0x10
/* 0043DB54 05400003 */  bltz  $t2, .L0043DB64
/* 0043DB58 0141082A */   slt   $at, $t2, $at
/* 0043DB5C 1420008C */  bnez  $at, .L0043DD90
/* 0043DB60 97AA00EA */   lhu   $t2, 0xea($sp)
.L0043DB64:
/* 0043DB64 8F8B8070 */  lw    $t3, %got(RO_10018408)($gp)
/* 0043DB68 03A07025 */  move  $t6, $sp
/* 0043DB6C 256B8408 */  addiu $t3, %lo(RO_10018408) # addiu $t3, $t3, -0x7bf8
/* 0043DB70 256C0048 */  addiu $t4, $t3, 0x48
.L0043DB74:
/* 0043DB74 89610000 */  lwl   $at, ($t3)
/* 0043DB78 99610003 */  lwr   $at, 3($t3)
/* 0043DB7C 256B000C */  addiu $t3, $t3, 0xc
/* 0043DB80 A9C10000 */  swl   $at, ($t6)
/* 0043DB84 B9C10003 */  swr   $at, 3($t6)
/* 0043DB88 8961FFF8 */  lwl   $at, -8($t3)
/* 0043DB8C 9961FFFB */  lwr   $at, -5($t3)
/* 0043DB90 25CE000C */  addiu $t6, $t6, 0xc
/* 0043DB94 A9C1FFF8 */  swl   $at, -8($t6)
/* 0043DB98 B9C1FFFB */  swr   $at, -5($t6)
/* 0043DB9C 8961FFFC */  lwl   $at, -4($t3)
/* 0043DBA0 9961FFFF */  lwr   $at, -1($t3)
/* 0043DBA4 00000000 */  nop   
/* 0043DBA8 A9C1FFFC */  swl   $at, -4($t6)
/* 0043DBAC 156CFFF1 */  bne   $t3, $t4, .L0043DB74
/* 0043DBB0 B9C1FFFF */   swr   $at, -1($t6)
/* 0043DBB4 89610000 */  lwl   $at, ($t3)
/* 0043DBB8 99610003 */  lwr   $at, 3($t3)
/* 0043DBBC 8F888070 */  lw    $t0, %got(RO_100183B8)($gp)
/* 0043DBC0 A9C10000 */  swl   $at, ($t6)
/* 0043DBC4 B9C10003 */  swr   $at, 3($t6)
/* 0043DBC8 896C0004 */  lwl   $t4, 4($t3)
/* 0043DBCC 996C0007 */  lwr   $t4, 7($t3)
/* 0043DBD0 250883B8 */  addiu $t0, %lo(RO_100183B8) # addiu $t0, $t0, -0x7c48
/* 0043DBD4 A9CC0004 */  swl   $t4, 4($t6)
/* 0043DBD8 250F0048 */  addiu $t7, $t0, 0x48
/* 0043DBDC 03A0C025 */  move  $t8, $sp
/* 0043DBE0 B9CC0007 */  swr   $t4, 7($t6)
.L0043DBE4:
/* 0043DBE4 89010000 */  lwl   $at, ($t0)
/* 0043DBE8 99010003 */  lwr   $at, 3($t0)
/* 0043DBEC 2508000C */  addiu $t0, $t0, 0xc
/* 0043DBF0 AB010050 */  swl   $at, 0x50($t8)
/* 0043DBF4 BB010053 */  swr   $at, 0x53($t8)
/* 0043DBF8 8901FFF8 */  lwl   $at, -8($t0)
/* 0043DBFC 9901FFFB */  lwr   $at, -5($t0)
/* 0043DC00 2718000C */  addiu $t8, $t8, 0xc
/* 0043DC04 AB010048 */  swl   $at, 0x48($t8)
/* 0043DC08 BB01004B */  swr   $at, 0x4b($t8)
/* 0043DC0C 8901FFFC */  lwl   $at, -4($t0)
/* 0043DC10 9901FFFF */  lwr   $at, -1($t0)
/* 0043DC14 00000000 */  nop   
/* 0043DC18 AB01004C */  swl   $at, 0x4c($t8)
/* 0043DC1C 150FFFF1 */  bne   $t0, $t7, .L0043DBE4
/* 0043DC20 BB01004F */   swr   $at, 0x4f($t8)
/* 0043DC24 89010000 */  lwl   $at, ($t0)
/* 0043DC28 99010003 */  lwr   $at, 3($t0)
/* 0043DC2C 24090294 */  li    $t1, 660
/* 0043DC30 AB010050 */  swl   $at, 0x50($t8)
/* 0043DC34 BB010053 */  swr   $at, 0x53($t8)
/* 0043DC38 890F0004 */  lwl   $t7, 4($t0)
/* 0043DC3C 990F0007 */  lwr   $t7, 7($t0)
/* 0043DC40 00000000 */  nop   
/* 0043DC44 AB0F0054 */  swl   $t7, 0x54($t8)
/* 0043DC48 BB0F0057 */  swr   $t7, 0x57($t8)
/* 0043DC4C 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043DC50 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043DC54 8FA60008 */  lw    $a2, 8($sp)
/* 0043DC58 8FA50004 */  lw    $a1, 4($sp)
/* 0043DC5C 8FA40000 */  lw    $a0, ($sp)
/* 0043DC60 0320F809 */  jalr  $t9
/* 0043DC64 AFA900A0 */   sw    $t1, 0xa0($sp)
/* 0043DC68 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043DC6C 10000048 */  b     .L0043DD90
/* 0043DC70 97AA00EA */   lhu   $t2, 0xea($sp)
/* 0043DC74 8FAA00EC */  lw    $t2, 0xec($sp)
.L0043DC78:
/* 0043DC78 03A0C025 */  move  $t8, $sp
/* 0043DC7C 11400044 */  beqz  $t2, .L0043DD90
/* 0043DC80 97AA00EA */   lhu   $t2, 0xea($sp)
/* 0043DC84 8F998070 */  lw    $t9, %got(RO_10018368)($gp)
/* 0043DC88 03A07025 */  move  $t6, $sp
/* 0043DC8C 27398368 */  addiu $t9, %lo(RO_10018368) # addiu $t9, $t9, -0x7c98
/* 0043DC90 272B0048 */  addiu $t3, $t9, 0x48
.L0043DC94:
/* 0043DC94 8B210000 */  lwl   $at, ($t9)
/* 0043DC98 9B210003 */  lwr   $at, 3($t9)
/* 0043DC9C 2739000C */  addiu $t9, $t9, 0xc
/* 0043DCA0 A9C10000 */  swl   $at, ($t6)
/* 0043DCA4 B9C10003 */  swr   $at, 3($t6)
/* 0043DCA8 8B21FFF8 */  lwl   $at, -8($t9)
/* 0043DCAC 9B21FFFB */  lwr   $at, -5($t9)
/* 0043DCB0 25CE000C */  addiu $t6, $t6, 0xc
/* 0043DCB4 A9C1FFF8 */  swl   $at, -8($t6)
/* 0043DCB8 B9C1FFFB */  swr   $at, -5($t6)
/* 0043DCBC 8B21FFFC */  lwl   $at, -4($t9)
/* 0043DCC0 9B21FFFF */  lwr   $at, -1($t9)
/* 0043DCC4 00000000 */  nop   
/* 0043DCC8 A9C1FFFC */  swl   $at, -4($t6)
/* 0043DCCC 172BFFF1 */  bne   $t9, $t3, .L0043DC94
/* 0043DCD0 B9C1FFFF */   swr   $at, -1($t6)
/* 0043DCD4 8B210000 */  lwl   $at, ($t9)
/* 0043DCD8 9B210003 */  lwr   $at, 3($t9)
/* 0043DCDC 8F8D8070 */  lw    $t5, %got(RO_10018318)($gp)
/* 0043DCE0 A9C10000 */  swl   $at, ($t6)
/* 0043DCE4 B9C10003 */  swr   $at, 3($t6)
/* 0043DCE8 8B2B0004 */  lwl   $t3, 4($t9)
/* 0043DCEC 9B2B0007 */  lwr   $t3, 7($t9)
/* 0043DCF0 25AD8318 */  addiu $t5, %lo(RO_10018318) # addiu $t5, $t5, -0x7ce8
/* 0043DCF4 A9CB0004 */  swl   $t3, 4($t6)
/* 0043DCF8 25A80048 */  addiu $t0, $t5, 0x48
/* 0043DCFC B9CB0007 */  swr   $t3, 7($t6)
.L0043DD00:
/* 0043DD00 89A10000 */  lwl   $at, ($t5)
/* 0043DD04 99A10003 */  lwr   $at, 3($t5)
/* 0043DD08 25AD000C */  addiu $t5, $t5, 0xc
/* 0043DD0C AB010050 */  swl   $at, 0x50($t8)
/* 0043DD10 BB010053 */  swr   $at, 0x53($t8)
/* 0043DD14 89A1FFF8 */  lwl   $at, -8($t5)
/* 0043DD18 99A1FFFB */  lwr   $at, -5($t5)
/* 0043DD1C 2718000C */  addiu $t8, $t8, 0xc
/* 0043DD20 AB010048 */  swl   $at, 0x48($t8)
/* 0043DD24 BB01004B */  swr   $at, 0x4b($t8)
/* 0043DD28 89A1FFFC */  lwl   $at, -4($t5)
/* 0043DD2C 99A1FFFF */  lwr   $at, -1($t5)
/* 0043DD30 00000000 */  nop   
/* 0043DD34 AB01004C */  swl   $at, 0x4c($t8)
/* 0043DD38 15A8FFF1 */  bne   $t5, $t0, .L0043DD00
/* 0043DD3C BB01004F */   swr   $at, 0x4f($t8)
/* 0043DD40 89A10000 */  lwl   $at, ($t5)
/* 0043DD44 99A10003 */  lwr   $at, 3($t5)
/* 0043DD48 24090296 */  li    $t1, 662
/* 0043DD4C AB010050 */  swl   $at, 0x50($t8)
/* 0043DD50 BB010053 */  swr   $at, 0x53($t8)
/* 0043DD54 89A80004 */  lwl   $t0, 4($t5)
/* 0043DD58 99A80007 */  lwr   $t0, 7($t5)
/* 0043DD5C 00000000 */  nop   
/* 0043DD60 AB080054 */  swl   $t0, 0x54($t8)
/* 0043DD64 BB080057 */  swr   $t0, 0x57($t8)
/* 0043DD68 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043DD6C 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043DD70 8FA60008 */  lw    $a2, 8($sp)
/* 0043DD74 8FA50004 */  lw    $a1, 4($sp)
/* 0043DD78 8FA40000 */  lw    $a0, ($sp)
/* 0043DD7C 0320F809 */  jalr  $t9
/* 0043DD80 AFA900A0 */   sw    $t1, 0xa0($sp)
/* 0043DD84 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043DD88 00000000 */  nop   
/* 0043DD8C 97AA00EA */  lhu   $t2, 0xea($sp)
.L0043DD90:
/* 0043DD90 00000000 */  nop   
/* 0043DD94 254CFF80 */  addiu $t4, $t2, -0x80
/* 0043DD98 2D8B00C0 */  sltiu $t3, $t4, 0xc0
/* 0043DD9C 11600009 */  beqz  $t3, .L0043DDC4
/* 0043DDA0 000CC943 */   sra   $t9, $t4, 5
/* 0043DDA4 8F8F8080 */  lw    $t7, %got(D_10004AE0)($gp)
/* 0043DDA8 00197080 */  sll   $t6, $t9, 2
/* 0043DDAC 25EF4AE0 */  addiu $t7, %lo(D_10004AE0) # addiu $t7, $t7, 0x4ae0
/* 0043DDB0 01EE4021 */  addu  $t0, $t7, $t6
/* 0043DDB4 8D0D0000 */  lw    $t5, ($t0)
/* 0043DDB8 00000000 */  nop   
/* 0043DDBC 018DC004 */  sllv  $t8, $t5, $t4
/* 0043DDC0 2B0B0000 */  slti  $t3, $t8, 0
.L0043DDC4:
/* 0043DDC4 11600030 */  beqz  $t3, .L0043DE88
/* 0043DDC8 00000000 */   nop   
/* 0043DDCC 8F8A8B8C */  lw     $t2, %got(reorderflag)($gp)
/* 0043DDD0 00000000 */  nop   
/* 0043DDD4 914A0000 */  lbu   $t2, ($t2)
/* 0043DDD8 00000000 */  nop   
/* 0043DDDC 1140002A */  beqz  $t2, .L0043DE88
/* 0043DDE0 00000000 */   nop   
/* 0043DDE4 8F998070 */  lw    $t9, %got(RO_100182C8)($gp)
/* 0043DDE8 03A04025 */  move  $t0, $sp
/* 0043DDEC 273982C8 */  addiu $t9, %lo(RO_100182C8) # addiu $t9, $t9, -0x7d38
/* 0043DDF0 272E0048 */  addiu $t6, $t9, 0x48
.L0043DDF4:
/* 0043DDF4 8B210000 */  lwl   $at, ($t9)
/* 0043DDF8 9B210003 */  lwr   $at, 3($t9)
/* 0043DDFC 2739000C */  addiu $t9, $t9, 0xc
/* 0043DE00 A9010000 */  swl   $at, ($t0)
/* 0043DE04 B9010003 */  swr   $at, 3($t0)
/* 0043DE08 8B21FFF8 */  lwl   $at, -8($t9)
/* 0043DE0C 9B21FFFB */  lwr   $at, -5($t9)
/* 0043DE10 2508000C */  addiu $t0, $t0, 0xc
/* 0043DE14 A901FFF8 */  swl   $at, -8($t0)
/* 0043DE18 B901FFFB */  swr   $at, -5($t0)
/* 0043DE1C 8B21FFFC */  lwl   $at, -4($t9)
/* 0043DE20 9B21FFFF */  lwr   $at, -1($t9)
/* 0043DE24 00000000 */  nop   
/* 0043DE28 A901FFFC */  swl   $at, -4($t0)
/* 0043DE2C 172EFFF1 */  bne   $t9, $t6, .L0043DDF4
/* 0043DE30 B901FFFF */   swr   $at, -1($t0)
/* 0043DE34 8B210000 */  lwl   $at, ($t9)
/* 0043DE38 9B210003 */  lwr   $at, 3($t9)
/* 0043DE3C 8F8D8C68 */  lw     $t5, %got(emptystring)($gp)
/* 0043DE40 A9010000 */  swl   $at, ($t0)
/* 0043DE44 B9010003 */  swr   $at, 3($t0)
/* 0043DE48 8B2E0004 */  lwl   $t6, 4($t9)
/* 0043DE4C 9B2E0007 */  lwr   $t6, 7($t9)
/* 0043DE50 240C0001 */  li    $t4, 1
/* 0043DE54 A90E0004 */  swl   $t6, 4($t0)
/* 0043DE58 B90E0007 */  swr   $t6, 7($t0)
/* 0043DE5C 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0043DE60 8DAD0000 */  lw    $t5, ($t5)
/* 0043DE64 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043DE68 8FA60008 */  lw    $a2, 8($sp)
/* 0043DE6C 8FA50004 */  lw    $a1, 4($sp)
/* 0043DE70 8FA40000 */  lw    $a0, ($sp)
/* 0043DE74 AFAC0054 */  sw    $t4, 0x54($sp)
/* 0043DE78 0320F809 */  jalr  $t9
/* 0043DE7C AFAD0050 */   sw    $t5, 0x50($sp)
/* 0043DE80 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043DE84 00000000 */  nop   
.L0043DE88:
/* 0043DE88 8F848BB0 */  lw     $a0, %got(bbindex)($gp)
/* 0043DE8C 00000000 */  nop   
/* 0043DE90 8C980000 */  lw    $t8, ($a0)
/* 0043DE94 00000000 */  nop   
/* 0043DE98 27090001 */  addiu $t1, $t8, 1
/* 0043DE9C AC890000 */  sw    $t1, ($a0)
/* 0043DEA0 8F9982DC */  lw    $t9, %call16(initbb)($gp)
/* 0043DEA4 00000000 */  nop   
/* 0043DEA8 0320F809 */  jalr  $t9
/* 0043DEAC 00000000 */   nop   
/* 0043DEB0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043DEB4 8FB900EC */  lw    $t9, 0xec($sp)
/* 0043DEB8 8F8A8BB0 */  lw     $t2, %got(bbindex)($gp)
/* 0043DEBC 8F8B8B40 */  lw     $t3, %got(pinstruction)($gp)
/* 0043DEC0 8D4A0000 */  lw    $t2, ($t2)
/* 0043DEC4 8D6B0000 */  lw    $t3, ($t3)
/* 0043DEC8 000A7880 */  sll   $t7, $t2, 2
/* 0043DECC AFB90014 */  sw    $t9, 0x14($sp)
/* 0043DED0 01EA7821 */  addu  $t7, $t7, $t2
/* 0043DED4 8F9982EC */  lw    $t9, %call16(fill_inst)($gp)
/* 0043DED8 000F78C0 */  sll   $t7, $t7, 3
/* 0043DEDC 97A700EA */  lhu   $a3, 0xea($sp)
/* 0043DEE0 016F7021 */  addu  $t6, $t3, $t7
/* 0043DEE4 AFAE0010 */  sw    $t6, 0x10($sp)
/* 0043DEE8 24040048 */  li    $a0, 72
/* 0043DEEC 24050048 */  li    $a1, 72
/* 0043DEF0 0320F809 */  jalr  $t9
/* 0043DEF4 24060048 */   li    $a2, 72
/* 0043DEF8 8FBF00B4 */  lw    $ra, 0xb4($sp)
/* 0043DEFC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0043DF00 03E00008 */  jr    $ra
/* 0043DF04 27BD00E8 */   addiu $sp, $sp, 0xe8

    .type emitspec, @function
    .size emitspec, .-emitspec
    .end emitspec

glabel emitmvcoproc
    .ent emitmvcoproc
    # 0042C14C generate_as_immediate
    # 0045289C func_0045289C
    # 00452968 parseafrr
    # 00461EE0 func_00461EE0
    # 004653BC func_004653BC
    # 00469314 func_00469314
/* 0043DF08 3C1C0FBF */  .cpload $t9
/* 0043DF0C 279CC358 */  
/* 0043DF10 0399E021 */  
/* 0043DF14 27BDFF30 */  addiu $sp, $sp, -0xd0
/* 0043DF18 AFB400BC */  sw    $s4, 0xbc($sp)
/* 0043DF1C 3094FFFF */  andi  $s4, $a0, 0xffff
/* 0043DF20 AFB600C4 */  sw    $s6, 0xc4($sp)
/* 0043DF24 AFB500C0 */  sw    $s5, 0xc0($sp)
/* 0043DF28 2E8E0160 */  sltiu $t6, $s4, 0x160
/* 0043DF2C 30D500FF */  andi  $s5, $a2, 0xff
/* 0043DF30 30B600FF */  andi  $s6, $a1, 0xff
/* 0043DF34 AFBF00CC */  sw    $ra, 0xcc($sp)
/* 0043DF38 AFBC00C8 */  sw    $gp, 0xc8($sp)
/* 0043DF3C AFB300B8 */  sw    $s3, 0xb8($sp)
/* 0043DF40 AFB200B4 */  sw    $s2, 0xb4($sp)
/* 0043DF44 AFB100B0 */  sw    $s1, 0xb0($sp)
/* 0043DF48 AFB000AC */  sw    $s0, 0xac($sp)
/* 0043DF4C AFA400D0 */  sw    $a0, 0xd0($sp)
/* 0043DF50 AFA500D4 */  sw    $a1, 0xd4($sp)
/* 0043DF54 11C00009 */  beqz  $t6, .L0043DF7C
/* 0043DF58 AFA600D8 */   sw    $a2, 0xd8($sp)
/* 0043DF5C 8F998D40 */  lw     $t9, %got(c0123_moves)($gp)
/* 0043DF60 00147943 */  sra   $t7, $s4, 5
/* 0043DF64 000FC080 */  sll   $t8, $t7, 2
/* 0043DF68 03194021 */  addu  $t0, $t8, $t9
/* 0043DF6C 8D090000 */  lw    $t1, ($t0)
/* 0043DF70 00000000 */  nop   
/* 0043DF74 02895004 */  sllv  $t2, $t1, $s4
/* 0043DF78 294E0000 */  slti  $t6, $t2, 0
.L0043DF7C:
/* 0043DF7C 15C00043 */  bnez  $t6, .L0043E08C
/* 0043DF80 03A05025 */   move  $t2, $sp
/* 0043DF84 8F8C8070 */  lw    $t4, %got(RO_10018598)($gp)
/* 0043DF88 03A0C025 */  move  $t8, $sp
/* 0043DF8C 258C8598 */  addiu $t4, %lo(RO_10018598) # addiu $t4, $t4, -0x7a68
/* 0043DF90 258F0048 */  addiu $t7, $t4, 0x48
.L0043DF94:
/* 0043DF94 89810000 */  lwl   $at, ($t4)
/* 0043DF98 99810003 */  lwr   $at, 3($t4)
/* 0043DF9C 258C000C */  addiu $t4, $t4, 0xc
/* 0043DFA0 AB010000 */  swl   $at, ($t8)
/* 0043DFA4 BB010003 */  swr   $at, 3($t8)
/* 0043DFA8 8981FFF8 */  lwl   $at, -8($t4)
/* 0043DFAC 9981FFFB */  lwr   $at, -5($t4)
/* 0043DFB0 2718000C */  addiu $t8, $t8, 0xc
/* 0043DFB4 AB01FFF8 */  swl   $at, -8($t8)
/* 0043DFB8 BB01FFFB */  swr   $at, -5($t8)
/* 0043DFBC 8981FFFC */  lwl   $at, -4($t4)
/* 0043DFC0 9981FFFF */  lwr   $at, -1($t4)
/* 0043DFC4 00000000 */  nop   
/* 0043DFC8 AB01FFFC */  swl   $at, -4($t8)
/* 0043DFCC 158FFFF1 */  bne   $t4, $t7, .L0043DF94
/* 0043DFD0 BB01FFFF */   swr   $at, -1($t8)
/* 0043DFD4 89810000 */  lwl   $at, ($t4)
/* 0043DFD8 99810003 */  lwr   $at, 3($t4)
/* 0043DFDC 8F998070 */  lw    $t9, %got(RO_10018548)($gp)
/* 0043DFE0 AB010000 */  swl   $at, ($t8)
/* 0043DFE4 BB010003 */  swr   $at, 3($t8)
/* 0043DFE8 898F0004 */  lwl   $t7, 4($t4)
/* 0043DFEC 998F0007 */  lwr   $t7, 7($t4)
/* 0043DFF0 27398548 */  addiu $t9, %lo(RO_10018548) # addiu $t9, $t9, -0x7ab8
/* 0043DFF4 AB0F0004 */  swl   $t7, 4($t8)
/* 0043DFF8 27290048 */  addiu $t1, $t9, 0x48
/* 0043DFFC BB0F0007 */  swr   $t7, 7($t8)
.L0043E000:
/* 0043E000 8B210000 */  lwl   $at, ($t9)
/* 0043E004 9B210003 */  lwr   $at, 3($t9)
/* 0043E008 2739000C */  addiu $t9, $t9, 0xc
/* 0043E00C A9410050 */  swl   $at, 0x50($t2)
/* 0043E010 B9410053 */  swr   $at, 0x53($t2)
/* 0043E014 8B21FFF8 */  lwl   $at, -8($t9)
/* 0043E018 9B21FFFB */  lwr   $at, -5($t9)
/* 0043E01C 254A000C */  addiu $t2, $t2, 0xc
/* 0043E020 A9410048 */  swl   $at, 0x48($t2)
/* 0043E024 B941004B */  swr   $at, 0x4b($t2)
/* 0043E028 8B21FFFC */  lwl   $at, -4($t9)
/* 0043E02C 9B21FFFF */  lwr   $at, -1($t9)
/* 0043E030 00000000 */  nop   
/* 0043E034 A941004C */  swl   $at, 0x4c($t2)
/* 0043E038 1729FFF1 */  bne   $t9, $t1, .L0043E000
/* 0043E03C B941004F */   swr   $at, 0x4f($t2)
/* 0043E040 8B210000 */  lwl   $at, ($t9)
/* 0043E044 9B210003 */  lwr   $at, 3($t9)
/* 0043E048 240B02DA */  li    $t3, 730
/* 0043E04C A9410050 */  swl   $at, 0x50($t2)
/* 0043E050 B9410053 */  swr   $at, 0x53($t2)
/* 0043E054 8B290004 */  lwl   $t1, 4($t9)
/* 0043E058 9B290007 */  lwr   $t1, 7($t9)
/* 0043E05C 00000000 */  nop   
/* 0043E060 A9490054 */  swl   $t1, 0x54($t2)
/* 0043E064 B9490057 */  swr   $t1, 0x57($t2)
/* 0043E068 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0043E06C 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043E070 8FA60008 */  lw    $a2, 8($sp)
/* 0043E074 8FA50004 */  lw    $a1, 4($sp)
/* 0043E078 8FA40000 */  lw    $a0, ($sp)
/* 0043E07C 0320F809 */  jalr  $t9
/* 0043E080 AFAB00A0 */   sw    $t3, 0xa0($sp)
/* 0043E084 8FBC00C8 */  lw    $gp, 0xc8($sp)
/* 0043E088 00000000 */  nop   
.L0043E08C:
/* 0043E08C 2E8E0160 */  sltiu $t6, $s4, 0x160
/* 0043E090 11C00009 */  beqz  $t6, .L0043E0B8
/* 0043E094 00146943 */   sra   $t5, $s4, 5
/* 0043E098 8F8C8D58 */  lw     $t4, %got(c0_ops)($gp)
/* 0043E09C 000D7880 */  sll   $t7, $t5, 2
/* 0043E0A0 01ECC021 */  addu  $t8, $t7, $t4
/* 0043E0A4 8F080000 */  lw    $t0, ($t8)
/* 0043E0A8 00000000 */  nop   
/* 0043E0AC 02884804 */  sllv  $t1, $t0, $s4
/* 0043E0B0 29390000 */  slti  $t9, $t1, 0
/* 0043E0B4 03207025 */  move  $t6, $t9
.L0043E0B8:
/* 0043E0B8 11C00030 */  beqz  $t6, .L0043E17C
/* 0043E0BC 00000000 */   nop   
/* 0043E0C0 8F8A8B8C */  lw     $t2, %got(reorderflag)($gp)
/* 0043E0C4 00000000 */  nop   
/* 0043E0C8 914A0000 */  lbu   $t2, ($t2)
/* 0043E0CC 00000000 */  nop   
/* 0043E0D0 1140002A */  beqz  $t2, .L0043E17C
/* 0043E0D4 00000000 */   nop   
/* 0043E0D8 8F8B8070 */  lw    $t3, %got(RO_100184F8)($gp)
/* 0043E0DC 03A06025 */  move  $t4, $sp
/* 0043E0E0 256B84F8 */  addiu $t3, %lo(RO_100184F8) # addiu $t3, $t3, -0x7b08
/* 0043E0E4 256F0048 */  addiu $t7, $t3, 0x48
.L0043E0E8:
/* 0043E0E8 89610000 */  lwl   $at, ($t3)
/* 0043E0EC 99610003 */  lwr   $at, 3($t3)
/* 0043E0F0 256B000C */  addiu $t3, $t3, 0xc
/* 0043E0F4 A9810000 */  swl   $at, ($t4)
/* 0043E0F8 B9810003 */  swr   $at, 3($t4)
/* 0043E0FC 8961FFF8 */  lwl   $at, -8($t3)
/* 0043E100 9961FFFB */  lwr   $at, -5($t3)
/* 0043E104 258C000C */  addiu $t4, $t4, 0xc
/* 0043E108 A981FFF8 */  swl   $at, -8($t4)
/* 0043E10C B981FFFB */  swr   $at, -5($t4)
/* 0043E110 8961FFFC */  lwl   $at, -4($t3)
/* 0043E114 9961FFFF */  lwr   $at, -1($t3)
/* 0043E118 00000000 */  nop   
/* 0043E11C A981FFFC */  swl   $at, -4($t4)
/* 0043E120 156FFFF1 */  bne   $t3, $t7, .L0043E0E8
/* 0043E124 B981FFFF */   swr   $at, -1($t4)
/* 0043E128 89610000 */  lwl   $at, ($t3)
/* 0043E12C 99610003 */  lwr   $at, 3($t3)
/* 0043E130 8F988C68 */  lw     $t8, %got(emptystring)($gp)
/* 0043E134 A9810000 */  swl   $at, ($t4)
/* 0043E138 B9810003 */  swr   $at, 3($t4)
/* 0043E13C 896F0004 */  lwl   $t7, 4($t3)
/* 0043E140 996F0007 */  lwr   $t7, 7($t3)
/* 0043E144 24080001 */  li    $t0, 1
/* 0043E148 A98F0004 */  swl   $t7, 4($t4)
/* 0043E14C B98F0007 */  swr   $t7, 7($t4)
/* 0043E150 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0043E154 8F180000 */  lw    $t8, ($t8)
/* 0043E158 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043E15C 8FA60008 */  lw    $a2, 8($sp)
/* 0043E160 8FA50004 */  lw    $a1, 4($sp)
/* 0043E164 8FA40000 */  lw    $a0, ($sp)
/* 0043E168 AFA80054 */  sw    $t0, 0x54($sp)
/* 0043E16C 0320F809 */  jalr  $t9
/* 0043E170 AFB80050 */   sw    $t8, 0x50($sp)
/* 0043E174 8FBC00C8 */  lw    $gp, 0xc8($sp)
/* 0043E178 00000000 */  nop   
.L0043E17C:
/* 0043E17C 8F828C4C */  lw     $v0, %got(fp_hack_flag)($gp)
/* 0043E180 24130028 */  li    $s3, 40
/* 0043E184 90420000 */  lbu   $v0, ($v0)
/* 0043E188 00000000 */  nop   
/* 0043E18C 38430001 */  xori  $v1, $v0, 1
/* 0043E190 2C630001 */  sltiu $v1, $v1, 1
/* 0043E194 14600003 */  bnez  $v1, .L0043E1A4
/* 0043E198 00000000 */   nop   
/* 0043E19C 38430004 */  xori  $v1, $v0, 4
/* 0043E1A0 2C630001 */  sltiu $v1, $v1, 1
.L0043E1A4:
/* 0043E1A4 10600008 */  beqz  $v1, .L0043E1C8
/* 0043E1A8 3A82008E */   xori  $v0, $s4, 0x8e
/* 0043E1AC 2C430001 */  sltiu $v1, $v0, 1
/* 0043E1B0 10600005 */  beqz  $v1, .L0043E1C8
/* 0043E1B4 3AA2001F */   xori  $v0, $s5, 0x1f
/* 0043E1B8 2C430001 */  sltiu $v1, $v0, 1
/* 0043E1BC 10600003 */  beqz  $v1, .L0043E1CC
/* 0043E1C0 24620001 */   addiu $v0, $v1, 1
/* 0043E1C4 00001825 */  move  $v1, $zero
.L0043E1C8:
/* 0043E1C8 24620001 */  addiu $v0, $v1, 1
.L0043E1CC:
/* 0043E1CC 1840001F */  blez  $v0, .L0043E24C
/* 0043E1D0 8FBF00CC */   lw    $ra, 0xcc($sp)
/* 0043E1D4 8F928B40 */  lw     $s2, %got(pinstruction)($gp)
/* 0043E1D8 8F908BB0 */  lw     $s0, %got(bbindex)($gp)
/* 0043E1DC 00408825 */  move  $s1, $v0
.L0043E1E0:
/* 0043E1E0 8E090000 */  lw    $t1, ($s0)
/* 0043E1E4 02002025 */  move  $a0, $s0
/* 0043E1E8 25390001 */  addiu $t9, $t1, 1
/* 0043E1EC AE190000 */  sw    $t9, ($s0)
/* 0043E1F0 8F9982DC */  lw    $t9, %call16(initbb)($gp)
/* 0043E1F4 00000000 */  nop   
/* 0043E1F8 0320F809 */  jalr  $t9
/* 0043E1FC 00000000 */   nop   
/* 0043E200 8E0A0000 */  lw    $t2, ($s0)
/* 0043E204 8FBC00C8 */  lw    $gp, 0xc8($sp)
/* 0043E208 01530019 */  multu $t2, $s3
/* 0043E20C 8E4E0000 */  lw    $t6, ($s2)
/* 0043E210 8F9982EC */  lw    $t9, %call16(fill_inst)($gp)
/* 0043E214 02C02025 */  move  $a0, $s6
/* 0043E218 02A02825 */  move  $a1, $s5
/* 0043E21C 24060048 */  li    $a2, 72
/* 0043E220 02803825 */  move  $a3, $s4
/* 0043E224 AFA00014 */  sw    $zero, 0x14($sp)
/* 0043E228 00006812 */  mflo  $t5
/* 0043E22C 01CD7821 */  addu  $t7, $t6, $t5
/* 0043E230 0320F809 */  jalr  $t9
/* 0043E234 AFAF0010 */   sw    $t7, 0x10($sp)
/* 0043E238 8FBC00C8 */  lw    $gp, 0xc8($sp)
/* 0043E23C 2631FFFF */  addiu $s1, $s1, -1
/* 0043E240 1620FFE7 */  bnez  $s1, .L0043E1E0
/* 0043E244 00000000 */   nop   
/* 0043E248 8FBF00CC */  lw    $ra, 0xcc($sp)
.L0043E24C:
/* 0043E24C 8FB000AC */  lw    $s0, 0xac($sp)
/* 0043E250 8FB100B0 */  lw    $s1, 0xb0($sp)
/* 0043E254 8FB200B4 */  lw    $s2, 0xb4($sp)
/* 0043E258 8FB300B8 */  lw    $s3, 0xb8($sp)
/* 0043E25C 8FB400BC */  lw    $s4, 0xbc($sp)
/* 0043E260 8FB500C0 */  lw    $s5, 0xc0($sp)
/* 0043E264 8FB600C4 */  lw    $s6, 0xc4($sp)
/* 0043E268 03E00008 */  jr    $ra
/* 0043E26C 27BD00D0 */   addiu $sp, $sp, 0xd0

    .type emitmvcoproc, @function
    .size emitmvcoproc, .-emitmvcoproc
    .end emitmvcoproc

    .type func_0043E270, @function
func_0043E270:
    # 0043E3CC loadimmed
/* 0043E270 3C1C0FBF */  .cpload $t9
/* 0043E274 279CBFF0 */  
/* 0043E278 0399E021 */  
/* 0043E27C 8F858C24 */  lw     $a1, %got(pre_reorder_peepholes)($gp)
/* 0043E280 8F888C24 */  lw     $t0, %got(pre_reorder_peepholes)($gp)
/* 0043E284 8F878C24 */  lw     $a3, %got(pre_reorder_peepholes)($gp)
/* 0043E288 00803025 */  move  $a2, $a0
/* 0043E28C 00001825 */  move  $v1, $zero
/* 0043E290 24090020 */  li    $t1, 32
/* 0043E294 24A50014 */  addiu $a1, $a1, 0x14
/* 0043E298 250800B4 */  addiu $t0, $t0, 0xb4
/* 0043E29C 24E70034 */  addiu $a3, $a3, 0x34
.L0043E2A0:
/* 0043E2A0 90AE0000 */  lbu   $t6, ($a1)
/* 0043E2A4 00032080 */  sll   $a0, $v1, 2
/* 0043E2A8 11C0000E */  beqz  $t6, .L0043E2E4
/* 0043E2AC 00E4C021 */   addu  $t8, $a3, $a0
/* 0043E2B0 8C4F0000 */  lw    $t7, ($v0)
/* 0043E2B4 8F190000 */  lw    $t9, ($t8)
/* 0043E2B8 01045821 */  addu  $t3, $t0, $a0
/* 0043E2BC 15F90009 */  bne   $t7, $t9, .L0043E2E4
/* 0043E2C0 00000000 */   nop   
/* 0043E2C4 8C4A0008 */  lw    $t2, 8($v0)
/* 0043E2C8 8D6C0000 */  lw    $t4, ($t3)
/* 0043E2CC 00000000 */  nop   
/* 0043E2D0 154C0004 */  bne   $t2, $t4, .L0043E2E4
/* 0043E2D4 00000000 */   nop   
/* 0043E2D8 A0C30000 */  sb    $v1, ($a2)
/* 0043E2DC 03E00008 */  jr    $ra
/* 0043E2E0 24020001 */   li    $v0, 1

.L0043E2E4:
/* 0043E2E4 90AD0001 */  lbu   $t5, 1($a1)
/* 0043E2E8 00032080 */  sll   $a0, $v1, 2
/* 0043E2EC 11A0000E */  beqz  $t5, .L0043E328
/* 0043E2F0 00E4C021 */   addu  $t8, $a3, $a0
/* 0043E2F4 8C4E0000 */  lw    $t6, ($v0)
/* 0043E2F8 8F0F0004 */  lw    $t7, 4($t8)
/* 0043E2FC 01045821 */  addu  $t3, $t0, $a0
/* 0043E300 15CF0009 */  bne   $t6, $t7, .L0043E328
/* 0043E304 00000000 */   nop   
/* 0043E308 8C590008 */  lw    $t9, 8($v0)
/* 0043E30C 8D6A0004 */  lw    $t2, 4($t3)
/* 0043E310 00000000 */  nop   
/* 0043E314 172A0004 */  bne   $t9, $t2, .L0043E328
/* 0043E318 246C0001 */   addiu $t4, $v1, 1
/* 0043E31C A0CC0000 */  sb    $t4, ($a2)
/* 0043E320 03E00008 */  jr    $ra
/* 0043E324 24020001 */   li    $v0, 1

.L0043E328:
/* 0043E328 90AD0002 */  lbu   $t5, 2($a1)
/* 0043E32C 00032080 */  sll   $a0, $v1, 2
/* 0043E330 11A0000F */  beqz  $t5, .L0043E370
/* 0043E334 00E47021 */   addu  $t6, $a3, $a0
/* 0043E338 8C580000 */  lw    $t8, ($v0)
/* 0043E33C 8DCF0008 */  lw    $t7, 8($t6)
/* 0043E340 00000000 */  nop   
/* 0043E344 170F000A */  bne   $t8, $t7, .L0043E370
/* 0043E348 00000000 */   nop   
/* 0043E34C 0104C821 */  addu  $t9, $t0, $a0
/* 0043E350 8F2A0008 */  lw    $t2, 8($t9)
/* 0043E354 8C4B0008 */  lw    $t3, 8($v0)
/* 0043E358 00000000 */  nop   
/* 0043E35C 156A0004 */  bne   $t3, $t2, .L0043E370
/* 0043E360 246C0002 */   addiu $t4, $v1, 2
/* 0043E364 A0CC0000 */  sb    $t4, ($a2)
/* 0043E368 03E00008 */  jr    $ra
/* 0043E36C 24020001 */   li    $v0, 1

.L0043E370:
/* 0043E370 90AD0003 */  lbu   $t5, 3($a1)
/* 0043E374 00032080 */  sll   $a0, $v1, 2
/* 0043E378 11A0000E */  beqz  $t5, .L0043E3B4
/* 0043E37C 00E4C021 */   addu  $t8, $a3, $a0
/* 0043E380 8C4E0000 */  lw    $t6, ($v0)
/* 0043E384 8F0F000C */  lw    $t7, 0xc($t8)
/* 0043E388 01045821 */  addu  $t3, $t0, $a0
/* 0043E38C 15CF0009 */  bne   $t6, $t7, .L0043E3B4
/* 0043E390 00000000 */   nop   
/* 0043E394 8C590008 */  lw    $t9, 8($v0)
/* 0043E398 8D6A000C */  lw    $t2, 0xc($t3)
/* 0043E39C 00000000 */  nop   
/* 0043E3A0 172A0004 */  bne   $t9, $t2, .L0043E3B4
/* 0043E3A4 246C0003 */   addiu $t4, $v1, 3
/* 0043E3A8 A0CC0000 */  sb    $t4, ($a2)
/* 0043E3AC 03E00008 */  jr    $ra
/* 0043E3B0 24020001 */   li    $v0, 1

.L0043E3B4:
/* 0043E3B4 24630004 */  addiu $v1, $v1, 4
/* 0043E3B8 1469FFB9 */  bne   $v1, $t1, .L0043E2A0
/* 0043E3BC 24A50004 */   addiu $a1, $a1, 4
/* 0043E3C0 00001025 */  move  $v0, $zero
/* 0043E3C4 03E00008 */  jr    $ra
/* 0043E3C8 00000000 */   nop   

glabel loadimmed
    .ent loadimmed
    # 004228B8 ll_load_immed
    # 0042C14C generate_as_immediate
    # 0045102C parseafri
    # 00451814 parseafrrl
    # 0045F110 genfpmultiple
    # 0046159C gendouble
    # 00465E20 genmul
    # 00466908 gendmul
    # 00467C5C gendiv
    # 00468AAC genddiv
    # 00469650 func_00469650
    # 00469970 func_00469970
    # 00469CF8 parseafrrr
/* 0043E3CC 3C1C0FBF */  .cpload $t9
/* 0043E3D0 279CBE94 */  
/* 0043E3D4 0399E021 */  
/* 0043E3D8 8F878B8C */  lw     $a3, %got(reorderflag)($gp)
/* 0043E3DC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0043E3E0 90E70000 */  lbu   $a3, ($a3)
/* 0043E3E4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0043E3E8 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0043E3EC AFA40040 */  sw    $a0, 0x40($sp)
/* 0043E3F0 AFA50044 */  sw    $a1, 0x44($sp)
/* 0043E3F4 10E0002A */  beqz  $a3, .L0043E4A0
/* 0043E3F8 AFA60048 */   sw    $a2, 0x48($sp)
/* 0043E3FC 8F8E8B1C */  lw     $t6, %got(optflag)($gp)
/* 0043E400 00000000 */  nop   
/* 0043E404 8DCE0000 */  lw    $t6, ($t6)
/* 0043E408 00000000 */  nop   
/* 0043E40C 19C00024 */  blez  $t6, .L0043E4A0
/* 0043E410 00000000 */   nop   
/* 0043E414 8F8F8C24 */  lw     $t7, %got(pre_reorder_peepholes)($gp)
/* 0043E418 00000000 */  nop   
/* 0043E41C 25EF0014 */  addiu $t7, $t7, 0x14
/* 0043E420 00AFC021 */  addu  $t8, $a1, $t7
/* 0043E424 93190000 */  lbu   $t9, ($t8)
/* 0043E428 00000000 */  nop   
/* 0043E42C 1320001C */  beqz  $t9, .L0043E4A0
/* 0043E430 00000000 */   nop   
/* 0043E434 8F898C24 */  lw     $t1, %got(pre_reorder_peepholes)($gp)
/* 0043E438 00051080 */  sll   $v0, $a1, 2
/* 0043E43C 25290034 */  addiu $t1, $t1, 0x34
/* 0043E440 00495021 */  addu  $t2, $v0, $t1
/* 0043E444 8D4B0000 */  lw    $t3, ($t2)
/* 0043E448 00000000 */  nop   
/* 0043E44C 148B0014 */  bne   $a0, $t3, .L0043E4A0
/* 0043E450 00000000 */   nop   
/* 0043E454 8F8D8C24 */  lw     $t5, %got(pre_reorder_peepholes)($gp)
/* 0043E458 00000000 */  nop   
/* 0043E45C 25AD00B4 */  addiu $t5, $t5, 0xb4
/* 0043E460 004D7021 */  addu  $t6, $v0, $t5
/* 0043E464 8DCF0000 */  lw    $t7, ($t6)
/* 0043E468 00000000 */  nop   
/* 0043E46C 14CF000C */  bne   $a2, $t7, .L0043E4A0
/* 0043E470 00000000 */   nop   
/* 0043E474 8F838B94 */  lw     $v1, %got(opts)($gp)
/* 0043E478 00000000 */  nop   
/* 0043E47C 90780000 */  lbu   $t8, ($v1)
/* 0043E480 00000000 */  nop   
/* 0043E484 13000006 */  beqz  $t8, .L0043E4A0
/* 0043E488 00000000 */   nop   
/* 0043E48C 8C790008 */  lw    $t9, 8($v1)
/* 0043E490 00000000 */  nop   
/* 0043E494 27290001 */  addiu $t1, $t9, 1
/* 0043E498 1000009F */  b     .L0043E718
/* 0043E49C AC690008 */   sw    $t1, 8($v1)
.L0043E4A0:
/* 0043E4A0 8F8A8C24 */  lw     $t2, %got(pre_reorder_peepholes)($gp)
/* 0043E4A4 8F8B8C24 */  lw     $t3, %got(pre_reorder_peepholes)($gp)
/* 0043E4A8 8F8E8C24 */  lw     $t6, %got(pre_reorder_peepholes)($gp)
/* 0043E4AC 8FAF0040 */  lw    $t7, 0x40($sp)
/* 0043E4B0 00051080 */  sll   $v0, $a1, 2
/* 0043E4B4 254A0014 */  addiu $t2, $t2, 0x14
/* 0043E4B8 256B0034 */  addiu $t3, $t3, 0x34
/* 0043E4BC 25CE00B4 */  addiu $t6, $t6, 0xb4
/* 0043E4C0 8F838B94 */  lw     $v1, %got(opts)($gp)
/* 0043E4C4 004E6021 */  addu  $t4, $v0, $t6
/* 0043E4C8 004B6821 */  addu  $t5, $v0, $t3
/* 0043E4CC 00AA4021 */  addu  $t0, $a1, $t2
/* 0043E4D0 29E18010 */  slti  $at, $t7, -0x7ff0
/* 0043E4D4 AFA80030 */  sw    $t0, 0x30($sp)
/* 0043E4D8 AFAD0028 */  sw    $t5, 0x28($sp)
/* 0043E4DC 14200004 */  bnez  $at, .L0043E4F0
/* 0043E4E0 AFAC0024 */   sw    $t4, 0x24($sp)
/* 0043E4E4 29E17FF0 */  slti  $at, $t7, 0x7ff0
/* 0043E4E8 1420000C */  bnez  $at, .L0043E51C
/* 0043E4EC 00000000 */   nop   
.L0043E4F0:
/* 0043E4F0 8F828DA4 */  lw     $v0, %got(sp_addu)($gp)
/* 0043E4F4 8FB80040 */  lw    $t8, 0x40($sp)
/* 0043E4F8 90420000 */  lbu   $v0, ($v0)
/* 0043E4FC 8FB90040 */  lw    $t9, 0x40($sp)
/* 0043E500 1440000E */  bnez  $v0, .L0043E53C
/* 0043E504 2B018000 */   slti  $at, $t8, -0x8000
/* 0043E508 1420000C */  bnez  $at, .L0043E53C
/* 0043E50C 34018000 */   li    $at, 32768
/* 0043E510 0301082A */  slt   $at, $t8, $at
/* 0043E514 1020000A */  beqz  $at, .L0043E540
/* 0043E518 2B217FF0 */   slti  $at, $t9, 0x7ff0
.L0043E51C:
/* 0043E51C 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 0043E520 8FA70040 */  lw    $a3, 0x40($sp)
/* 0043E524 24040054 */  li    $a0, 84
/* 0043E528 0320F809 */  jalr  $t9
/* 0043E52C 00003025 */   move  $a2, $zero
/* 0043E530 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043E534 10000055 */  b     .L0043E68C
/* 0043E538 8FB80048 */   lw    $t8, 0x48($sp)
.L0043E53C:
/* 0043E53C 2B217FF0 */  slti  $at, $t9, 0x7ff0
.L0043E540:
/* 0043E540 14200004 */  bnez  $at, .L0043E554
/* 0043E544 3401FFF0 */   li    $at, 65520
/* 0043E548 0321082A */  slt   $at, $t9, $at
/* 0043E54C 1420000B */  bnez  $at, .L0043E57C
/* 0043E550 00000000 */   nop   
.L0043E554:
/* 0043E554 14400012 */  bnez  $v0, .L0043E5A0
/* 0043E558 8FA20040 */   lw    $v0, 0x40($sp)
/* 0043E55C 8FA90040 */  lw    $t1, 0x40($sp)
/* 0043E560 34018000 */  li    $at, 32768
/* 0043E564 0121082A */  slt   $at, $t1, $at
/* 0043E568 1420000C */  bnez  $at, .L0043E59C
/* 0043E56C 3C010001 */   lui   $at, 1
/* 0043E570 0121082A */  slt   $at, $t1, $at
/* 0043E574 1020000A */  beqz  $at, .L0043E5A0
/* 0043E578 8FA20040 */   lw    $v0, 0x40($sp)
.L0043E57C:
/* 0043E57C 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 0043E580 8FA70040 */  lw    $a3, 0x40($sp)
/* 0043E584 24040058 */  li    $a0, 88
/* 0043E588 0320F809 */  jalr  $t9
/* 0043E58C 00003025 */   move  $a2, $zero
/* 0043E590 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043E594 1000003D */  b     .L0043E68C
/* 0043E598 8FB80048 */   lw    $t8, 0x48($sp)
.L0043E59C:
/* 0043E59C 8FA20040 */  lw    $v0, 0x40($sp)
.L0043E5A0:
/* 0043E5A0 00000000 */  nop   
/* 0043E5A4 304AFFFF */  andi  $t2, $v0, 0xffff
/* 0043E5A8 10E00023 */  beqz  $a3, .L0043E638
/* 0043E5AC AFAA003C */   sw    $t2, 0x3c($sp)
/* 0043E5B0 8F888B1C */  lw     $t0, %got(optflag)($gp)
/* 0043E5B4 00000000 */  nop   
/* 0043E5B8 8D080000 */  lw    $t0, ($t0)
/* 0043E5BC 00000000 */  nop   
/* 0043E5C0 1900001E */  blez  $t0, .L0043E63C
/* 0043E5C4 8FA70040 */   lw    $a3, 0x40($sp)
/* 0043E5C8 906B0000 */  lbu   $t3, ($v1)
/* 0043E5CC 00000000 */  nop   
/* 0043E5D0 1160001A */  beqz  $t3, .L0043E63C
/* 0043E5D4 8FA70040 */   lw    $a3, 0x40($sp)
/* 0043E5D8 11400017 */  beqz  $t2, .L0043E638
/* 0043E5DC 27A4003B */   addiu $a0, $sp, 0x3b
/* 0043E5E0 8F998024 */  lw    $t9, %got(func_0043E270)($gp)
/* 0043E5E4 27A20040 */  addiu $v0, $sp, 0x40
/* 0043E5E8 2739E270 */  addiu $t9, %lo(func_0043E270) # addiu $t9, $t9, -0x1d90
/* 0043E5EC 0320F809 */  jalr  $t9
/* 0043E5F0 A3A50047 */   sb    $a1, 0x47($sp)
/* 0043E5F4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043E5F8 93A50047 */  lbu   $a1, 0x47($sp)
/* 0043E5FC 1040000E */  beqz  $v0, .L0043E638
/* 0043E600 24040015 */   li    $a0, 21
/* 0043E604 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 0043E608 93A6003B */  lbu   $a2, 0x3b($sp)
/* 0043E60C 0320F809 */  jalr  $t9
/* 0043E610 00003825 */   move  $a3, $zero
/* 0043E614 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043E618 00000000 */  nop   
/* 0043E61C 8F838B94 */  lw     $v1, %got(opts)($gp)
/* 0043E620 00000000 */  nop   
/* 0043E624 8C6D0008 */  lw    $t5, 8($v1)
/* 0043E628 00000000 */  nop   
/* 0043E62C 25AE0001 */  addiu $t6, $t5, 1
/* 0043E630 10000015 */  b     .L0043E688
/* 0043E634 AC6E0008 */   sw    $t6, 8($v1)
.L0043E638:
/* 0043E638 8FA70040 */  lw    $a3, 0x40($sp)
.L0043E63C:
/* 0043E63C 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 0043E640 00076402 */  srl   $t4, $a3, 0x10
/* 0043E644 01803825 */  move  $a3, $t4
/* 0043E648 2404005A */  li    $a0, 90
/* 0043E64C 00003025 */  move  $a2, $zero
/* 0043E650 0320F809 */  jalr  $t9
/* 0043E654 A3A50047 */   sb    $a1, 0x47($sp)
/* 0043E658 8FAF003C */  lw    $t7, 0x3c($sp)
/* 0043E65C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043E660 93A50047 */  lbu   $a1, 0x47($sp)
/* 0043E664 11E00009 */  beqz  $t7, .L0043E68C
/* 0043E668 8FB80048 */   lw    $t8, 0x48($sp)
/* 0043E66C 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 0043E670 24040058 */  li    $a0, 88
/* 0043E674 00A03025 */  move  $a2, $a1
/* 0043E678 0320F809 */  jalr  $t9
/* 0043E67C 01E03825 */   move  $a3, $t7
/* 0043E680 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043E684 00000000 */  nop   
.L0043E688:
/* 0043E688 8FB80048 */  lw    $t8, 0x48($sp)
.L0043E68C:
/* 0043E68C 00000000 */  nop   
/* 0043E690 13000017 */  beqz  $t8, .L0043E6F0
/* 0043E694 8FAF0030 */   lw    $t7, 0x30($sp)
/* 0043E698 8F998BB0 */  lw     $t9, %got(bbindex)($gp)
/* 0043E69C 8F898B88 */  lw     $t1, %got(proc_instr_base)($gp)
/* 0043E6A0 8F390000 */  lw    $t9, ($t9)
/* 0043E6A4 8D290000 */  lw    $t1, ($t1)
/* 0043E6A8 03002025 */  move  $a0, $t8
/* 0043E6AC 03293021 */  addu  $a2, $t9, $t1
/* 0043E6B0 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0043E6B4 24050009 */  li    $a1, 9
/* 0043E6B8 0320F809 */  jalr  $t9
/* 0043E6BC 00000000 */   nop   
/* 0043E6C0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043E6C4 8FAA0048 */  lw    $t2, 0x48($sp)
/* 0043E6C8 8F8B8AF0 */  lw     $t3, %got(nextrld)($gp)
/* 0043E6CC 8F888AF4 */  lw     $t0, %got(rld_list)($gp)
/* 0043E6D0 8D6B0000 */  lw    $t3, ($t3)
/* 0043E6D4 8D080000 */  lw    $t0, ($t0)
/* 0043E6D8 000B6880 */  sll   $t5, $t3, 2
/* 0043E6DC 01AB6823 */  subu  $t5, $t5, $t3
/* 0043E6E0 000D68C0 */  sll   $t5, $t5, 3
/* 0043E6E4 010D7021 */  addu  $t6, $t0, $t5
/* 0043E6E8 ADCAFFF0 */  sw    $t2, -0x10($t6)
/* 0043E6EC 8FAF0030 */  lw    $t7, 0x30($sp)
.L0043E6F0:
/* 0043E6F0 240C0001 */  li    $t4, 1
/* 0043E6F4 A1EC0000 */  sb    $t4, ($t7)
/* 0043E6F8 8FB90028 */  lw    $t9, 0x28($sp)
/* 0043E6FC 8FB80040 */  lw    $t8, 0x40($sp)
/* 0043E700 00000000 */  nop   
/* 0043E704 AF380000 */  sw    $t8, ($t9)
/* 0043E708 8FAB0024 */  lw    $t3, 0x24($sp)
/* 0043E70C 8FA90048 */  lw    $t1, 0x48($sp)
/* 0043E710 00000000 */  nop   
/* 0043E714 AD690000 */  sw    $t1, ($t3)
.L0043E718:
/* 0043E718 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0043E71C 27BD0040 */  addiu $sp, $sp, 0x40
/* 0043E720 03E00008 */  jr    $ra
/* 0043E724 00000000 */   nop   

/* 0043E728 00000000 */  nop   
/* 0043E72C 00000000 */  nop   
    .type loadimmed, @function
    .size loadimmed, .-loadimmed
    .end loadimmed

glabel prepare_for_c
    .ent prepare_for_c
    # 0043ECB8 wrelfobj
/* 0043E730 3C1C0FBF */  .cpload $t9
/* 0043E734 279CBB30 */  
/* 0043E738 0399E021 */  
/* 0043E73C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0043E740 8F998690 */  lw    $t9, %call16(new)($gp)
/* 0043E744 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0043E748 AFA40020 */  sw    $a0, 0x20($sp)
/* 0043E74C AFA50024 */  sw    $a1, 0x24($sp)
/* 0043E750 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0043E754 AFA60028 */  sw    $a2, 0x28($sp)
/* 0043E758 AFA7002C */  sw    $a3, 0x2c($sp)
/* 0043E75C 00002825 */  move  $a1, $zero
/* 0043E760 0320F809 */  jalr  $t9
/* 0043E764 24040020 */   li    $a0, 32
/* 0043E768 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043E76C 00403025 */  move  $a2, $v0
/* 0043E770 27A30020 */  addiu $v1, $sp, 0x20
/* 0043E774 24440001 */  addiu $a0, $v0, 1
/* 0043E778 27A50040 */  addiu $a1, $sp, 0x40
.L0043E77C:
/* 0043E77C 906E0000 */  lbu   $t6, ($v1)
/* 0043E780 906F0001 */  lbu   $t7, 1($v1)
/* 0043E784 90780002 */  lbu   $t8, 2($v1)
/* 0043E788 90790003 */  lbu   $t9, 3($v1)
/* 0043E78C 24630004 */  addiu $v1, $v1, 4
/* 0043E790 24840004 */  addiu $a0, $a0, 4
/* 0043E794 A08EFFFB */  sb    $t6, -5($a0)
/* 0043E798 A08FFFFC */  sb    $t7, -4($a0)
/* 0043E79C A098FFFD */  sb    $t8, -3($a0)
/* 0043E7A0 1465FFF6 */  bne   $v1, $a1, .L0043E77C
/* 0043E7A4 A099FFFE */   sb    $t9, -2($a0)
/* 0043E7A8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0043E7AC 27BD0020 */  addiu $sp, $sp, 0x20
/* 0043E7B0 03E00008 */  jr    $ra
/* 0043E7B4 00C01025 */   move  $v0, $a2

    .type prepare_for_c, @function
    .size prepare_for_c, .-prepare_for_c
    .end prepare_for_c

    .type func_0043E7B8, @function
func_0043E7B8:
    # 0043ECB8 wrelfobj
/* 0043E7B8 3C1C0FBF */  .cpload $t9
/* 0043E7BC 279CBAA8 */  
/* 0043E7C0 0399E021 */  
/* 0043E7C4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0043E7C8 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0043E7CC AFB70030 */  sw    $s7, 0x30($sp)
/* 0043E7D0 AFB6002C */  sw    $s6, 0x2c($sp)
/* 0043E7D4 AFB50028 */  sw    $s5, 0x28($sp)
/* 0043E7D8 AFB40024 */  sw    $s4, 0x24($sp)
/* 0043E7DC AFB30020 */  sw    $s3, 0x20($sp)
/* 0043E7E0 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0043E7E4 AFB10018 */  sw    $s1, 0x18($sp)
/* 0043E7E8 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0043E7EC AFBC0034 */  sw    $gp, 0x34($sp)
/* 0043E7F0 AFB00014 */  sw    $s0, 0x14($sp)
/* 0043E7F4 8F938D88 */  lw     $s3, %got(gp_tables)($gp)
/* 0043E7F8 00409025 */  move  $s2, $v0
/* 0043E7FC 24140001 */  li    $s4, 1
/* 0043E800 24150001 */  li    $s5, 1
/* 0043E804 24160001 */  li    $s6, 1
/* 0043E808 24170001 */  li    $s7, 1
/* 0043E80C AC40FFE8 */  sw    $zero, -0x18($v0)
/* 0043E810 00008825 */  move  $s1, $zero
/* 0043E814 241E0001 */  li    $fp, 1
.L0043E818:
/* 0043E818 163E001C */  bne   $s1, $fp, .L0043E88C
/* 0043E81C 24010003 */   li    $at, 3
/* 0043E820 1280001A */  beqz  $s4, .L0043E88C
/* 0043E824 00111080 */   sll   $v0, $s1, 2
/* 0043E828 02628021 */  addu  $s0, $s3, $v0
/* 0043E82C 8E0E0000 */  lw    $t6, ($s0)
/* 0043E830 0000A025 */  move  $s4, $zero
/* 0043E834 11C0006D */  beqz  $t6, .L0043E9EC
/* 0043E838 00000000 */   nop   
/* 0043E83C 8E4F0008 */  lw    $t7, 8($s2)
/* 0043E840 00000000 */  nop   
/* 0043E844 01E2C021 */  addu  $t8, $t7, $v0
/* 0043E848 8F190000 */  lw    $t9, ($t8)
/* 0043E84C 00000000 */  nop   
/* 0043E850 13200066 */  beqz  $t9, .L0043E9EC
/* 0043E854 00000000 */   nop   
/* 0043E858 8F998288 */  lw    $t9, %call16(aself_scnhdr_wrgptable)($gp)
/* 0043E85C 9645FFF8 */  lhu   $a1, -8($s2)
/* 0043E860 0320F809 */  jalr  $t9
/* 0043E864 02202025 */   move  $a0, $s1
/* 0043E868 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0043E86C 8E040000 */  lw    $a0, ($s0)
/* 0043E870 8F99828C */  lw    $t9, %call16(aself_write_gp_table)($gp)
/* 0043E874 00000000 */  nop   
/* 0043E878 0320F809 */  jalr  $t9
/* 0043E87C 00000000 */   nop   
/* 0043E880 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0043E884 1000005A */  b     .L0043E9F0
/* 0043E888 8E4AFFE8 */   lw    $t2, -0x18($s2)
.L0043E88C:
/* 0043E88C 1621001D */  bne   $s1, $at, .L0043E904
/* 0043E890 24010002 */   li    $at, 2
/* 0043E894 12A0001A */  beqz  $s5, .L0043E900
/* 0043E898 00111080 */   sll   $v0, $s1, 2
/* 0043E89C 02628021 */  addu  $s0, $s3, $v0
/* 0043E8A0 8E080000 */  lw    $t0, ($s0)
/* 0043E8A4 0000A825 */  move  $s5, $zero
/* 0043E8A8 11000050 */  beqz  $t0, .L0043E9EC
/* 0043E8AC 00000000 */   nop   
/* 0043E8B0 8E490008 */  lw    $t1, 8($s2)
/* 0043E8B4 00000000 */  nop   
/* 0043E8B8 01225021 */  addu  $t2, $t1, $v0
/* 0043E8BC 8D4B0000 */  lw    $t3, ($t2)
/* 0043E8C0 00000000 */  nop   
/* 0043E8C4 11600049 */  beqz  $t3, .L0043E9EC
/* 0043E8C8 00000000 */   nop   
/* 0043E8CC 8F998288 */  lw    $t9, %call16(aself_scnhdr_wrgptable)($gp)
/* 0043E8D0 9645FFF8 */  lhu   $a1, -8($s2)
/* 0043E8D4 0320F809 */  jalr  $t9
/* 0043E8D8 02202025 */   move  $a0, $s1
/* 0043E8DC 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0043E8E0 8E040000 */  lw    $a0, ($s0)
/* 0043E8E4 8F99828C */  lw    $t9, %call16(aself_write_gp_table)($gp)
/* 0043E8E8 00000000 */  nop   
/* 0043E8EC 0320F809 */  jalr  $t9
/* 0043E8F0 00000000 */   nop   
/* 0043E8F4 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0043E8F8 1000003D */  b     .L0043E9F0
/* 0043E8FC 8E4AFFE8 */   lw    $t2, -0x18($s2)
.L0043E900:
/* 0043E900 24010002 */  li    $at, 2
.L0043E904:
/* 0043E904 1621001D */  bne   $s1, $at, .L0043E97C
/* 0043E908 24010004 */   li    $at, 4
/* 0043E90C 12C0001A */  beqz  $s6, .L0043E978
/* 0043E910 00111080 */   sll   $v0, $s1, 2
/* 0043E914 02628021 */  addu  $s0, $s3, $v0
/* 0043E918 8E0C0000 */  lw    $t4, ($s0)
/* 0043E91C 0000B025 */  move  $s6, $zero
/* 0043E920 11800032 */  beqz  $t4, .L0043E9EC
/* 0043E924 00000000 */   nop   
/* 0043E928 8E4D0008 */  lw    $t5, 8($s2)
/* 0043E92C 00000000 */  nop   
/* 0043E930 01A27021 */  addu  $t6, $t5, $v0
/* 0043E934 8DCF0000 */  lw    $t7, ($t6)
/* 0043E938 00000000 */  nop   
/* 0043E93C 11E0002B */  beqz  $t7, .L0043E9EC
/* 0043E940 00000000 */   nop   
/* 0043E944 8F998288 */  lw    $t9, %call16(aself_scnhdr_wrgptable)($gp)
/* 0043E948 9645FFF8 */  lhu   $a1, -8($s2)
/* 0043E94C 0320F809 */  jalr  $t9
/* 0043E950 02202025 */   move  $a0, $s1
/* 0043E954 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0043E958 8E040000 */  lw    $a0, ($s0)
/* 0043E95C 8F99828C */  lw    $t9, %call16(aself_write_gp_table)($gp)
/* 0043E960 00000000 */  nop   
/* 0043E964 0320F809 */  jalr  $t9
/* 0043E968 00000000 */   nop   
/* 0043E96C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0043E970 1000001F */  b     .L0043E9F0
/* 0043E974 8E4AFFE8 */   lw    $t2, -0x18($s2)
.L0043E978:
/* 0043E978 24010004 */  li    $at, 4
.L0043E97C:
/* 0043E97C 1621001B */  bne   $s1, $at, .L0043E9EC
/* 0043E980 00000000 */   nop   
/* 0043E984 12E00019 */  beqz  $s7, .L0043E9EC
/* 0043E988 00111080 */   sll   $v0, $s1, 2
/* 0043E98C 02628021 */  addu  $s0, $s3, $v0
/* 0043E990 8E180000 */  lw    $t8, ($s0)
/* 0043E994 0000B825 */  move  $s7, $zero
/* 0043E998 13000014 */  beqz  $t8, .L0043E9EC
/* 0043E99C 00000000 */   nop   
/* 0043E9A0 8E590008 */  lw    $t9, 8($s2)
/* 0043E9A4 00000000 */  nop   
/* 0043E9A8 03224021 */  addu  $t0, $t9, $v0
/* 0043E9AC 8D090000 */  lw    $t1, ($t0)
/* 0043E9B0 00000000 */  nop   
/* 0043E9B4 1120000D */  beqz  $t1, .L0043E9EC
/* 0043E9B8 00000000 */   nop   
/* 0043E9BC 8F998288 */  lw    $t9, %call16(aself_scnhdr_wrgptable)($gp)
/* 0043E9C0 9645FFF8 */  lhu   $a1, -8($s2)
/* 0043E9C4 0320F809 */  jalr  $t9
/* 0043E9C8 02202025 */   move  $a0, $s1
/* 0043E9CC 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0043E9D0 8E040000 */  lw    $a0, ($s0)
/* 0043E9D4 8F99828C */  lw    $t9, %call16(aself_write_gp_table)($gp)
/* 0043E9D8 00000000 */  nop   
/* 0043E9DC 0320F809 */  jalr  $t9
/* 0043E9E0 00000000 */   nop   
/* 0043E9E4 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0043E9E8 00000000 */  nop   
.L0043E9EC:
/* 0043E9EC 8E4AFFE8 */  lw    $t2, -0x18($s2)
.L0043E9F0:
/* 0043E9F0 26310001 */  addiu $s1, $s1, 1
/* 0043E9F4 24010010 */  li    $at, 16
/* 0043E9F8 1621FF87 */  bne   $s1, $at, .L0043E818
/* 0043E9FC AE4AFFE8 */   sw    $t2, -0x18($s2)
/* 0043EA00 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0043EA04 8FB00014 */  lw    $s0, 0x14($sp)
/* 0043EA08 8FB10018 */  lw    $s1, 0x18($sp)
/* 0043EA0C 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0043EA10 8FB30020 */  lw    $s3, 0x20($sp)
/* 0043EA14 8FB40024 */  lw    $s4, 0x24($sp)
/* 0043EA18 8FB50028 */  lw    $s5, 0x28($sp)
/* 0043EA1C 8FB6002C */  lw    $s6, 0x2c($sp)
/* 0043EA20 8FB70030 */  lw    $s7, 0x30($sp)
/* 0043EA24 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0043EA28 03E00008 */  jr    $ra
/* 0043EA2C 27BD0040 */   addiu $sp, $sp, 0x40

    .type func_0043EA30, @function
func_0043EA30:
    # 0043ECB8 wrelfobj
/* 0043EA30 3C1C0FBF */  .cpload $t9
/* 0043EA34 279CB830 */  
/* 0043EA38 0399E021 */  
/* 0043EA3C 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0043EA40 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0043EA44 AFBC0038 */  sw    $gp, 0x38($sp)
/* 0043EA48 AFA40058 */  sw    $a0, 0x58($sp)
/* 0043EA4C 8C4A0008 */  lw    $t2, 8($v0)
/* 0043EA50 00041880 */  sll   $v1, $a0, 2
/* 0043EA54 01434021 */  addu  $t0, $t2, $v1
/* 0043EA58 8D0E0000 */  lw    $t6, ($t0)
/* 0043EA5C 00000000 */  nop   
/* 0043EA60 11C00051 */  beqz  $t6, .L0043EBA8
/* 0043EA64 8FBF003C */   lw    $ra, 0x3c($sp)
/* 0043EA68 8C4B000C */  lw    $t3, 0xc($v0)
/* 0043EA6C 00046080 */  sll   $t4, $a0, 2
/* 0043EA70 01637821 */  addu  $t7, $t3, $v1
/* 0043EA74 8DF80000 */  lw    $t8, ($t7)
/* 0043EA78 01846023 */  subu  $t4, $t4, $a0
/* 0043EA7C 13000049 */  beqz  $t8, .L0043EBA4
/* 0043EA80 000C6080 */   sll   $t4, $t4, 2
/* 0043EA84 8F998AE0 */  lw     $t9, %got(memory)($gp)
/* 0043EA88 01846023 */  subu  $t4, $t4, $a0
/* 0043EA8C 8F390000 */  lw    $t9, ($t9)
/* 0043EA90 000C6080 */  sll   $t4, $t4, 2
/* 0043EA94 032C6821 */  addu  $t5, $t9, $t4
/* 0043EA98 89A10009 */  lwl   $at, 9($t5)
/* 0043EA9C 99A1000C */  lwr   $at, 0xc($t5)
/* 0043EAA0 9445FFF8 */  lhu   $a1, -8($v0)
/* 0043EAA4 ABA1000C */  swl   $at, 0xc($sp)
/* 0043EAA8 BBA1000F */  swr   $at, 0xf($sp)
/* 0043EAAC 89AF000D */  lwl   $t7, 0xd($t5)
/* 0043EAB0 99AF0010 */  lwr   $t7, 0x10($t5)
/* 0043EAB4 8F868AF0 */  lw     $a2, %got(nextrld)($gp)
/* 0043EAB8 ABAF0010 */  swl   $t7, 0x10($sp)
/* 0043EABC BBAF0013 */  swr   $t7, 0x13($sp)
/* 0043EAC0 89A10011 */  lwl   $at, 0x11($t5)
/* 0043EAC4 99A10014 */  lwr   $at, 0x14($t5)
/* 0043EAC8 8F99827C */  lw    $t9, %call16(aself_scnhdr_wrreloc)($gp)
/* 0043EACC ABA10014 */  swl   $at, 0x14($sp)
/* 0043EAD0 BBA10017 */  swr   $at, 0x17($sp)
/* 0043EAD4 89AF0015 */  lwl   $t7, 0x15($t5)
/* 0043EAD8 99AF0018 */  lwr   $t7, 0x18($t5)
/* 0043EADC 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043EAE0 ABAF0018 */  swl   $t7, 0x18($sp)
/* 0043EAE4 BBAF001B */  swr   $t7, 0x1b($sp)
/* 0043EAE8 89A10019 */  lwl   $at, 0x19($t5)
/* 0043EAEC 99A1001C */  lwr   $at, 0x1c($t5)
/* 0043EAF0 8CC60000 */  lw    $a2, ($a2)
/* 0043EAF4 ABA1001C */  swl   $at, 0x1c($sp)
/* 0043EAF8 BBA1001F */  swr   $at, 0x1f($sp)
/* 0043EAFC 89AF001D */  lwl   $t7, 0x1d($t5)
/* 0043EB00 99AF0020 */  lwr   $t7, 0x20($t5)
/* 0043EB04 00000000 */  nop   
/* 0043EB08 ABAF0020 */  swl   $t7, 0x20($sp)
/* 0043EB0C BBAF0023 */  swr   $t7, 0x23($sp)
/* 0043EB10 89A10021 */  lwl   $at, 0x21($t5)
/* 0043EB14 99A10024 */  lwr   $at, 0x24($t5)
/* 0043EB18 00000000 */  nop   
/* 0043EB1C ABA10024 */  swl   $at, 0x24($sp)
/* 0043EB20 BBA10027 */  swr   $at, 0x27($sp)
/* 0043EB24 89AF0025 */  lwl   $t7, 0x25($t5)
/* 0043EB28 99AF0028 */  lwr   $t7, 0x28($t5)
/* 0043EB2C AFAB0040 */  sw    $t3, 0x40($sp)
/* 0043EB30 ABAF0028 */  swl   $t7, 0x28($sp)
/* 0043EB34 AFAA0050 */  sw    $t2, 0x50($sp)
/* 0043EB38 AFA4004C */  sw    $a0, 0x4c($sp)
/* 0043EB3C AFA80044 */  sw    $t0, 0x44($sp)
/* 0043EB40 AFA20054 */  sw    $v0, 0x54($sp)
/* 0043EB44 0320F809 */  jalr  $t9
/* 0043EB48 BBAF002B */   swr   $t7, 0x2b($sp)
/* 0043EB4C 8FA80044 */  lw    $t0, 0x44($sp)
/* 0043EB50 8FBC0038 */  lw    $gp, 0x38($sp)
/* 0043EB54 8D180000 */  lw    $t8, ($t0)
/* 0043EB58 8FA20054 */  lw    $v0, 0x54($sp)
/* 0043EB5C 1300000B */  beqz  $t8, .L0043EB8C
/* 0043EB60 00000000 */   nop   
/* 0043EB64 8C590014 */  lw    $t9, 0x14($v0)
/* 0043EB68 8FA5004C */  lw    $a1, 0x4c($sp)
/* 0043EB6C 8F240000 */  lw    $a0, ($t9)
/* 0043EB70 8F9984BC */  lw    $t9, %call16(wrreloc)($gp)
/* 0043EB74 8FA60050 */  lw    $a2, 0x50($sp)
/* 0043EB78 8FA70040 */  lw    $a3, 0x40($sp)
/* 0043EB7C 0320F809 */  jalr  $t9
/* 0043EB80 00000000 */   nop   
/* 0043EB84 8FBC0038 */  lw    $gp, 0x38($sp)
/* 0043EB88 00000000 */  nop   
.L0043EB8C:
/* 0043EB8C 8F998284 */  lw    $t9, %call16(aself_close_wrreloc)($gp)
/* 0043EB90 00000000 */  nop   
/* 0043EB94 0320F809 */  jalr  $t9
/* 0043EB98 00000000 */   nop   
/* 0043EB9C 8FBC0038 */  lw    $gp, 0x38($sp)
/* 0043EBA0 00000000 */  nop   
.L0043EBA4:
/* 0043EBA4 8FBF003C */  lw    $ra, 0x3c($sp)
.L0043EBA8:
/* 0043EBA8 27BD0058 */  addiu $sp, $sp, 0x58
/* 0043EBAC 03E00008 */  jr    $ra
/* 0043EBB0 00000000 */   nop   

    .type func_0043EBB4, @function
func_0043EBB4:
    # 0043ECB8 wrelfobj
/* 0043EBB4 3C1C0FBF */  .cpload $t9
/* 0043EBB8 279CB6AC */  
/* 0043EBBC 0399E021 */  
/* 0043EBC0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0043EBC4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0043EBC8 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0043EBCC AFA40038 */  sw    $a0, 0x38($sp)
/* 0043EBD0 8C4E0008 */  lw    $t6, 8($v0)
/* 0043EBD4 00047880 */  sll   $t7, $a0, 2
/* 0043EBD8 01CFC021 */  addu  $t8, $t6, $t7
/* 0043EBDC 8F080000 */  lw    $t0, ($t8)
/* 0043EBE0 00A03825 */  move  $a3, $a1
/* 0043EBE4 11000030 */  beqz  $t0, .L0043ECA8
/* 0043EBE8 00801825 */   move  $v1, $a0
/* 0043EBEC 24010004 */  li    $at, 4
/* 0043EBF0 10810004 */  beq   $a0, $at, .L0043EC04
/* 0043EBF4 27A50030 */   addiu $a1, $sp, 0x30
/* 0043EBF8 24010003 */  li    $at, 3
/* 0043EBFC 14810013 */  bne   $a0, $at, .L0043EC4C
/* 0043EC00 00035080 */   sll   $t2, $v1, 2
.L0043EC04:
/* 0043EC04 8F998270 */  lw    $t9, %call16(aself_st_wrsection)($gp)
/* 0043EC08 24040001 */  li    $a0, 1
/* 0043EC0C 0320F809 */  jalr  $t9
/* 0043EC10 01003025 */   move  $a2, $t0
/* 0043EC14 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043EC18 24010001 */  li    $at, 1
/* 0043EC1C 10410023 */  beq   $v0, $at, .L0043ECAC
/* 0043EC20 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0043EC24 8F998C68 */  lw     $t9, %got(emptystring)($gp)
/* 0043EC28 24040001 */  li    $a0, 1
/* 0043EC2C 8F250000 */  lw    $a1, ($t9)
/* 0043EC30 8F998660 */  lw    $t9, %call16(call_perror)($gp)
/* 0043EC34 AFA50004 */  sw    $a1, 4($sp)
/* 0043EC38 0320F809 */  jalr  $t9
/* 0043EC3C 00000000 */   nop   
/* 0043EC40 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043EC44 10000019 */  b     .L0043ECAC
/* 0043EC48 8FBF001C */   lw    $ra, 0x1c($sp)
.L0043EC4C:
/* 0043EC4C 8F898AE0 */  lw     $t1, %got(memory)($gp)
/* 0043EC50 01435023 */  subu  $t2, $t2, $v1
/* 0043EC54 000A5080 */  sll   $t2, $t2, 2
/* 0043EC58 8D290000 */  lw    $t1, ($t1)
/* 0043EC5C 01435023 */  subu  $t2, $t2, $v1
/* 0043EC60 000A5080 */  sll   $t2, $t2, 2
/* 0043EC64 8F998270 */  lw    $t9, %call16(aself_st_wrsection)($gp)
/* 0043EC68 012A5821 */  addu  $t3, $t1, $t2
/* 0043EC6C 8D650000 */  lw    $a1, ($t3)
/* 0043EC70 00002025 */  move  $a0, $zero
/* 0043EC74 0320F809 */  jalr  $t9
/* 0043EC78 01003025 */   move  $a2, $t0
/* 0043EC7C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043EC80 24010001 */  li    $at, 1
/* 0043EC84 10410008 */  beq   $v0, $at, .L0043ECA8
/* 0043EC88 24040001 */   li    $a0, 1
/* 0043EC8C 8F8C8C68 */  lw     $t4, %got(emptystring)($gp)
/* 0043EC90 8F998660 */  lw    $t9, %call16(call_perror)($gp)
/* 0043EC94 8D850000 */  lw    $a1, ($t4)
/* 0043EC98 0320F809 */  jalr  $t9
/* 0043EC9C AFA50004 */   sw    $a1, 4($sp)
/* 0043ECA0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0043ECA4 00000000 */  nop   
.L0043ECA8:
/* 0043ECA8 8FBF001C */  lw    $ra, 0x1c($sp)
.L0043ECAC:
/* 0043ECAC 27BD0038 */  addiu $sp, $sp, 0x38
/* 0043ECB0 03E00008 */  jr    $ra
/* 0043ECB4 00000000 */   nop   

glabel wrelfobj
    .ent wrelfobj
    # 0044D35C wrobj
/* 0043ECB8 3C1C0FBF */  .cpload $t9
/* 0043ECBC 279CB5A8 */  
/* 0043ECC0 0399E021 */  
/* 0043ECC4 27BDFF18 */  addiu $sp, $sp, -0xe8
/* 0043ECC8 AFB20060 */  sw    $s2, 0x60($sp)
/* 0043ECCC 8FB20100 */  lw    $s2, 0x100($sp)
/* 0043ECD0 8FAE00DC */  lw    $t6, 0xdc($sp)
/* 0043ECD4 AFBF007C */  sw    $ra, 0x7c($sp)
/* 0043ECD8 AFBC0078 */  sw    $gp, 0x78($sp)
/* 0043ECDC AFB70074 */  sw    $s7, 0x74($sp)
/* 0043ECE0 AFB60070 */  sw    $s6, 0x70($sp)
/* 0043ECE4 AFB5006C */  sw    $s5, 0x6c($sp)
/* 0043ECE8 AFB40068 */  sw    $s4, 0x68($sp)
/* 0043ECEC AFB30064 */  sw    $s3, 0x64($sp)
/* 0043ECF0 AFB1005C */  sw    $s1, 0x5c($sp)
/* 0043ECF4 AFB00058 */  sw    $s0, 0x58($sp)
/* 0043ECF8 AFA400E8 */  sw    $a0, 0xe8($sp)
/* 0043ECFC AFA500EC */  sw    $a1, 0xec($sp)
/* 0043ED00 AFA600F0 */  sw    $a2, 0xf0($sp)
/* 0043ED04 A64E0000 */  sh    $t6, ($s2)
/* 0043ED08 8F998100 */  lw    $t9, %call16(time)($gp)
/* 0043ED0C 00E0B025 */  move  $s6, $a3
/* 0043ED10 0320F809 */  jalr  $t9
/* 0043ED14 00002025 */   move  $a0, $zero
/* 0043ED18 8FB500F8 */  lw    $s5, 0xf8($sp)
/* 0043ED1C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043ED20 8FBF00F0 */  lw    $ra, 0xf0($sp)
/* 0043ED24 AE420004 */  sw    $v0, 4($s2)
/* 0043ED28 A6400002 */  sh    $zero, 2($s2)
/* 0043ED2C 8EAA0000 */  lw    $t2, ($s5)
/* 0043ED30 2404004C */  li    $a0, 76
/* 0043ED34 0540007C */  bltz  $t2, .L0043EF28
/* 0043ED38 00004825 */   move  $t1, $zero
/* 0043ED3C 254A0001 */  addiu $t2, $t2, 1
/* 0043ED40 31420001 */  andi  $v0, $t2, 1
/* 0043ED44 10400026 */  beqz  $v0, .L0043EDE0
/* 0043ED48 00008025 */   move  $s0, $zero
/* 0043ED4C 8F948AE0 */  lw     $s4, %got(memory)($gp)
/* 0043ED50 8F8B8D84 */  lw     $t3, %got(realsegments)($gp)
/* 0043ED54 8E8F0000 */  lw    $t7, ($s4)
/* 0043ED58 8D780000 */  lw    $t8, ($t3)
/* 0043ED5C 91E30008 */  lbu   $v1, 8($t7)
/* 0043ED60 240C0003 */  li    $t4, 3
/* 0043ED64 2C790020 */  sltiu $t9, $v1, 0x20
/* 0043ED68 00197023 */  negu  $t6, $t9
/* 0043ED6C 030E7824 */  and   $t7, $t8, $t6
/* 0043ED70 006FC804 */  sllv  $t9, $t7, $v1
/* 0043ED74 07210003 */  bgez  $t9, .L0043ED84
/* 0043ED78 24100001 */   li    $s0, 1
/* 0043ED7C 8FE90000 */  lw    $t1, ($ra)
/* 0043ED80 00000000 */  nop   
.L0043ED84:
/* 0043ED84 8EC40000 */  lw    $a0, ($s6)
/* 0043ED88 8FE20000 */  lw    $v0, ($ra)
/* 0043ED8C 106C0005 */  beq   $v1, $t4, .L0043EDA4
/* 0043ED90 2484004C */   addiu $a0, $a0, 0x4c
/* 0043ED94 24130004 */  li    $s3, 4
/* 0043ED98 10730002 */  beq   $v1, $s3, .L0043EDA4
/* 0043ED9C 00000000 */   nop   
/* 0043EDA0 00822021 */  addu  $a0, $a0, $v0
.L0043EDA4:
/* 0043EDA4 10400008 */  beqz  $v0, .L0043EDC8
/* 0043EDA8 00000000 */   nop   
/* 0043EDAC 8FB80104 */  lw    $t8, 0x104($sp)
/* 0043EDB0 00037080 */  sll   $t6, $v1, 2
/* 0043EDB4 030E7821 */  addu  $t7, $t8, $t6
/* 0043EDB8 8DF90000 */  lw    $t9, ($t7)
/* 0043EDBC 00000000 */  nop   
/* 0043EDC0 0019C0C0 */  sll   $t8, $t9, 3
/* 0043EDC4 00982021 */  addu  $a0, $a0, $t8
.L0043EDC8:
/* 0043EDC8 964E0002 */  lhu   $t6, 2($s2)
/* 0043EDCC 0002782B */  sltu  $t7, $zero, $v0
/* 0043EDD0 01CF1821 */  addu  $v1, $t6, $t7
/* 0043EDD4 A6430002 */  sh    $v1, 2($s2)
/* 0043EDD8 120A0053 */  beq   $s0, $t2, .L0043EF28
/* 0043EDDC A7A300E0 */   sh    $v1, 0xe0($sp)
.L0043EDE0:
/* 0043EDE0 00108880 */  sll   $s1, $s0, 2
/* 0043EDE4 02308823 */  subu  $s1, $s1, $s0
/* 0043EDE8 00118880 */  sll   $s1, $s1, 2
/* 0043EDEC 00101080 */  sll   $v0, $s0, 2
/* 0043EDF0 02308823 */  subu  $s1, $s1, $s0
/* 0043EDF4 000AC080 */  sll   $t8, $t2, 2
/* 0043EDF8 8F8B8D84 */  lw     $t3, %got(realsegments)($gp)
/* 0043EDFC 8F948AE0 */  lw     $s4, %got(memory)($gp)
/* 0043EE00 8FB70104 */  lw    $s7, 0x104($sp)
/* 0043EE04 96480002 */  lhu   $t0, 2($s2)
/* 0043EE08 03166821 */  addu  $t5, $t8, $s6
/* 0043EE0C 00118880 */  sll   $s1, $s1, 2
/* 0043EE10 03E23821 */  addu  $a3, $ra, $v0
/* 0043EE14 02C21821 */  addu  $v1, $s6, $v0
/* 0043EE18 240C0003 */  li    $t4, 3
/* 0043EE1C 24130004 */  li    $s3, 4
.L0043EE20:
/* 0043EE20 8E8E0000 */  lw    $t6, ($s4)
/* 0043EE24 8D790000 */  lw    $t9, ($t3)
/* 0043EE28 01D17821 */  addu  $t7, $t6, $s1
/* 0043EE2C 91E50008 */  lbu   $a1, 8($t7)
/* 0043EE30 00000000 */  nop   
/* 0043EE34 2CB80020 */  sltiu $t8, $a1, 0x20
/* 0043EE38 00187023 */  negu  $t6, $t8
/* 0043EE3C 032E7824 */  and   $t7, $t9, $t6
/* 0043EE40 00AFC004 */  sllv  $t8, $t7, $a1
/* 0043EE44 07010004 */  bgez  $t8, .L0043EE58
/* 0043EE48 00057880 */   sll   $t7, $a1, 2
/* 0043EE4C 8CF90000 */  lw    $t9, ($a3)
/* 0043EE50 00000000 */  nop   
/* 0043EE54 01394821 */  addu  $t1, $t1, $t9
.L0043EE58:
/* 0043EE58 8C6E0000 */  lw    $t6, ($v1)
/* 0043EE5C 8CE60000 */  lw    $a2, ($a3)
/* 0043EE60 10AC0004 */  beq   $a1, $t4, .L0043EE74
/* 0043EE64 008E2021 */   addu  $a0, $a0, $t6
/* 0043EE68 10B30002 */  beq   $a1, $s3, .L0043EE74
/* 0043EE6C 00000000 */   nop   
/* 0043EE70 00862021 */  addu  $a0, $a0, $a2
.L0043EE74:
/* 0043EE74 10C00005 */  beqz  $a2, .L0043EE8C
/* 0043EE78 02EFC021 */   addu  $t8, $s7, $t7
/* 0043EE7C 8F190000 */  lw    $t9, ($t8)
/* 0043EE80 00000000 */  nop   
/* 0043EE84 001970C0 */  sll   $t6, $t9, 3
/* 0043EE88 008E2021 */  addu  $a0, $a0, $t6
.L0043EE8C:
/* 0043EE8C 0006782B */  sltu  $t7, $zero, $a2
/* 0043EE90 010FC021 */  addu  $t8, $t0, $t7
/* 0043EE94 A6580002 */  sh    $t8, 2($s2)
/* 0043EE98 8E990000 */  lw    $t9, ($s4)
/* 0043EE9C 8D6F0000 */  lw    $t7, ($t3)
/* 0043EEA0 03317021 */  addu  $t6, $t9, $s1
/* 0043EEA4 91C20034 */  lbu   $v0, 0x34($t6)
/* 0043EEA8 26310058 */  addiu $s1, $s1, 0x58
/* 0043EEAC 2C580020 */  sltiu $t8, $v0, 0x20
/* 0043EEB0 0018C823 */  negu  $t9, $t8
/* 0043EEB4 01F97024 */  and   $t6, $t7, $t9
/* 0043EEB8 004EC004 */  sllv  $t8, $t6, $v0
/* 0043EEBC 07010004 */  bgez  $t8, .L0043EED0
/* 0043EEC0 00027080 */   sll   $t6, $v0, 2
/* 0043EEC4 8CEF0004 */  lw    $t7, 4($a3)
/* 0043EEC8 00000000 */  nop   
/* 0043EECC 012F4821 */  addu  $t1, $t1, $t7
.L0043EED0:
/* 0043EED0 8C790004 */  lw    $t9, 4($v1)
/* 0043EED4 8CE50004 */  lw    $a1, 4($a3)
/* 0043EED8 104C0004 */  beq   $v0, $t4, .L0043EEEC
/* 0043EEDC 00992021 */   addu  $a0, $a0, $t9
/* 0043EEE0 10530002 */  beq   $v0, $s3, .L0043EEEC
/* 0043EEE4 00000000 */   nop   
/* 0043EEE8 00852021 */  addu  $a0, $a0, $a1
.L0043EEEC:
/* 0043EEEC 10A00006 */  beqz  $a1, .L0043EF08
/* 0043EEF0 24E70008 */   addiu $a3, $a3, 8
/* 0043EEF4 02EEC021 */  addu  $t8, $s7, $t6
/* 0043EEF8 8F0F0000 */  lw    $t7, ($t8)
/* 0043EEFC 00000000 */  nop   
/* 0043EF00 000FC8C0 */  sll   $t9, $t7, 3
/* 0043EF04 00992021 */  addu  $a0, $a0, $t9
.L0043EF08:
/* 0043EF08 964E0002 */  lhu   $t6, 2($s2)
/* 0043EF0C 0005C02B */  sltu  $t8, $zero, $a1
/* 0043EF10 01D87821 */  addu  $t7, $t6, $t8
/* 0043EF14 A64F0002 */  sh    $t7, 2($s2)
/* 0043EF18 31E8FFFF */  andi  $t0, $t7, 0xffff
/* 0043EF1C 24630008 */  addiu $v1, $v1, 8
/* 0043EF20 146DFFBF */  bne   $v1, $t5, .L0043EE20
/* 0043EF24 A7A800E0 */   sh    $t0, 0xe0($sp)
.L0043EF28:
/* 0043EF28 96590002 */  lhu   $t9, 2($s2)
/* 0043EF2C 24100028 */  li    $s0, 40
/* 0043EF30 03300019 */  multu $t9, $s0
/* 0043EF34 8F948AE0 */  lw     $s4, %got(memory)($gp)
/* 0043EF38 00007012 */  mflo  $t6
/* 0043EF3C 008E2021 */  addu  $a0, $a0, $t6
/* 0043EF40 AE440008 */  sw    $a0, 8($s2)
/* 0043EF44 8F9983F8 */  lw    $t9, %call16(st_sizeofsymhdr)($gp)
/* 0043EF48 AFA900C4 */  sw    $t1, 0xc4($sp)
/* 0043EF4C 0320F809 */  jalr  $t9
/* 0043EF50 00000000 */   nop   
/* 0043EF54 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043EF58 8FB70104 */  lw    $s7, 0x104($sp)
/* 0043EF5C 24180038 */  li    $t8, 56
/* 0043EF60 8F918D60 */  lw     $s1, %got(outname)($gp)
/* 0043EF64 AE42000C */  sw    $v0, 0xc($s2)
/* 0043EF68 A6580010 */  sh    $t8, 0x10($s2)
/* 0043EF6C 8F998254 */  lw    $t9, %call16(elf_st_openobj)($gp)
/* 0043EF70 8E240000 */  lw    $a0, ($s1)
/* 0043EF74 0320F809 */  jalr  $t9
/* 0043EF78 00000000 */   nop   
/* 0043EF7C 8FAF00FC */  lw    $t7, 0xfc($sp)
/* 0043EF80 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043EF84 8FA900C4 */  lw    $t1, 0xc4($sp)
/* 0043EF88 04410009 */  bgez  $v0, .L0043EFB0
/* 0043EF8C ADE20000 */   sw    $v0, ($t7)
/* 0043EF90 8E250000 */  lw    $a1, ($s1)
/* 0043EF94 8F998660 */  lw    $t9, %call16(call_perror)($gp)
/* 0043EF98 24040001 */  li    $a0, 1
/* 0043EF9C 0320F809 */  jalr  $t9
/* 0043EFA0 AFA50004 */   sw    $a1, 4($sp)
/* 0043EFA4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043EFA8 10000450 */  b     .L004400EC
/* 0043EFAC 8FBF007C */   lw    $ra, 0x7c($sp)
.L0043EFB0:
/* 0043EFB0 96580002 */  lhu   $t8, 2($s2)
/* 0043EFB4 00000000 */  nop   
/* 0043EFB8 03100019 */  multu $t8, $s0
/* 0043EFBC 00007812 */  mflo  $t7
/* 0043EFC0 25F9004C */  addiu $t9, $t7, 0x4c
/* 0043EFC4 03299821 */  addu  $s3, $t9, $t1
/* 0043EFC8 AFB900DC */  sw    $t9, 0xdc($sp)
/* 0043EFCC AFB300D8 */  sw    $s3, 0xd8($sp)
/* 0043EFD0 8EAA0000 */  lw    $t2, ($s5)
/* 0043EFD4 00000000 */  nop   
/* 0043EFD8 0540001B */  bltz  $t2, .L0043F048
/* 0043EFDC 254A0001 */   addiu $t2, $t2, 1
/* 0043EFE0 31440003 */  andi  $a0, $t2, 3
/* 0043EFE4 1080000A */  beqz  $a0, .L0043F010
/* 0043EFE8 00008025 */   move  $s0, $zero
/* 0043EFEC 00007080 */  sll   $t6, $zero, 2
/* 0043EFF0 02CE1821 */  addu  $v1, $s6, $t6
/* 0043EFF4 00801025 */  move  $v0, $a0
.L0043EFF8:
/* 0043EFF8 8C780000 */  lw    $t8, ($v1)
/* 0043EFFC 26100001 */  addiu $s0, $s0, 1
/* 0043F000 24630004 */  addiu $v1, $v1, 4
/* 0043F004 1450FFFC */  bne   $v0, $s0, .L0043EFF8
/* 0043F008 02789821 */   addu  $s3, $s3, $t8
/* 0043F00C 120A000E */  beq   $s0, $t2, .L0043F048
.L0043F010:
/* 0043F010 00107880 */   sll   $t7, $s0, 2
/* 0043F014 000AC880 */  sll   $t9, $t2, 2
/* 0043F018 03361021 */  addu  $v0, $t9, $s6
/* 0043F01C 02CF1821 */  addu  $v1, $s6, $t7
.L0043F020:
/* 0043F020 8C6E0000 */  lw    $t6, ($v1)
/* 0043F024 8C780004 */  lw    $t8, 4($v1)
/* 0043F028 8C6F0008 */  lw    $t7, 8($v1)
/* 0043F02C 026E9821 */  addu  $s3, $s3, $t6
/* 0043F030 8C79000C */  lw    $t9, 0xc($v1)
/* 0043F034 02789821 */  addu  $s3, $s3, $t8
/* 0043F038 24630010 */  addiu $v1, $v1, 0x10
/* 0043F03C 026F9821 */  addu  $s3, $s3, $t7
/* 0043F040 1462FFF7 */  bne   $v1, $v0, .L0043F020
/* 0043F044 02799821 */   addu  $s3, $s3, $t9
.L0043F048:
/* 0043F048 8F998264 */  lw    $t9, %call16(elf_st_sechdr)($gp)
/* 0043F04C 97A400E0 */  lhu   $a0, 0xe0($sp)
/* 0043F050 0320F809 */  jalr  $t9
/* 0043F054 00000000 */   nop   
/* 0043F058 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043F05C 8FBF00F0 */  lw    $ra, 0xf0($sp)
/* 0043F060 8F8E8CC4 */  lw     $t6, %got(restext)($gp)
/* 0043F064 AFA200DC */  sw    $v0, 0xdc($sp)
/* 0043F068 91CE0000 */  lbu   $t6, ($t6)
/* 0043F06C 00000000 */  nop   
/* 0043F070 11C00047 */  beqz  $t6, .L0043F190
/* 0043F074 00000000 */   nop   
/* 0043F078 8F988070 */  lw    $t8, %got(RO_1001874D)($gp)
/* 0043F07C 240E0020 */  li    $t6, 32
/* 0043F080 2718874D */  addiu $t8, %lo(RO_1001874D) # addiu $t8, $t8, -0x78b3
/* 0043F084 8B010000 */  lwl   $at, ($t8)
/* 0043F088 9B010003 */  lwr   $at, 3($t8)
/* 0043F08C 97A200E0 */  lhu   $v0, 0xe0($sp)
/* 0043F090 ABA10004 */  swl   $at, 4($sp)
/* 0043F094 BBA10007 */  swr   $at, 7($sp)
/* 0043F098 8B190004 */  lwl   $t9, 4($t8)
/* 0043F09C 9B190007 */  lwr   $t9, 7($t8)
/* 0043F0A0 8FA50004 */  lw    $a1, 4($sp)
/* 0043F0A4 ABB90008 */  swl   $t9, 8($sp)
/* 0043F0A8 BBB9000B */  swr   $t9, 0xb($sp)
/* 0043F0AC 8B010008 */  lwl   $at, 8($t8)
/* 0043F0B0 9B01000B */  lwr   $at, 0xb($t8)
/* 0043F0B4 8FA60008 */  lw    $a2, 8($sp)
/* 0043F0B8 ABA1000C */  swl   $at, 0xc($sp)
/* 0043F0BC BBA1000F */  swr   $at, 0xf($sp)
/* 0043F0C0 8B19000C */  lwl   $t9, 0xc($t8)
/* 0043F0C4 9B19000F */  lwr   $t9, 0xf($t8)
/* 0043F0C8 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043F0CC ABB90010 */  swl   $t9, 0x10($sp)
/* 0043F0D0 BBB90013 */  swr   $t9, 0x13($sp)
/* 0043F0D4 8B010010 */  lwl   $at, 0x10($t8)
/* 0043F0D8 9B010013 */  lwr   $at, 0x13($t8)
/* 0043F0DC 27AF00D8 */  addiu $t7, $sp, 0xd8
/* 0043F0E0 ABA10014 */  swl   $at, 0x14($sp)
/* 0043F0E4 BBA10017 */  swr   $at, 0x17($sp)
/* 0043F0E8 8B190014 */  lwl   $t9, 0x14($t8)
/* 0043F0EC 9B190017 */  lwr   $t9, 0x17($t8)
/* 0043F0F0 00002025 */  move  $a0, $zero
/* 0043F0F4 ABB90018 */  swl   $t9, 0x18($sp)
/* 0043F0F8 BBB9001B */  swr   $t9, 0x1b($sp)
/* 0043F0FC 8B010018 */  lwl   $at, 0x18($t8)
/* 0043F100 9B01001B */  lwr   $at, 0x1b($t8)
/* 0043F104 00000000 */  nop   
/* 0043F108 ABA1001C */  swl   $at, 0x1c($sp)
/* 0043F10C BBA1001F */  swr   $at, 0x1f($sp)
/* 0043F110 8B19001C */  lwl   $t9, 0x1c($t8)
/* 0043F114 9B19001F */  lwr   $t9, 0x1f($t8)
/* 0043F118 AFAE0024 */  sw    $t6, 0x24($sp)
/* 0043F11C ABB90020 */  swl   $t9, 0x20($sp)
/* 0043F120 BBB90023 */  swr   $t9, 0x23($sp)
/* 0043F124 27B900DC */  addiu $t9, $sp, 0xdc
/* 0043F128 AFB90040 */  sw    $t9, 0x40($sp)
/* 0043F12C 8F9984C0 */  lw    $t9, %call16(do_wrscnhdr)($gp)
/* 0043F130 8FAE00FC */  lw    $t6, 0xfc($sp)
/* 0043F134 8FB800EC */  lw    $t8, 0xec($sp)
/* 0043F138 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0043F13C AFB7003C */  sw    $s7, 0x3c($sp)
/* 0043F140 AFB60038 */  sw    $s6, 0x38($sp)
/* 0043F144 AFAF002C */  sw    $t7, 0x2c($sp)
/* 0043F148 AFB30028 */  sw    $s3, 0x28($sp)
/* 0043F14C AFA20098 */  sw    $v0, 0x98($sp)
/* 0043F150 AFA20048 */  sw    $v0, 0x48($sp)
/* 0043F154 AFAE0044 */  sw    $t6, 0x44($sp)
/* 0043F158 0320F809 */  jalr  $t9
/* 0043F15C AFB80030 */   sw    $t8, 0x30($sp)
/* 0043F160 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043F164 27B500E8 */  addiu $s5, $sp, 0xe8
/* 0043F168 8F858D90 */  lw     $a1, %got(prev_align)($gp)
/* 0043F16C 8F998024 */  lw    $t9, %got(func_0043EBB4)($gp)
/* 0043F170 8CA50008 */  lw    $a1, 8($a1)
/* 0043F174 2739EBB4 */  addiu $t9, %lo(func_0043EBB4) # addiu $t9, $t9, -0x144c
/* 0043F178 02A01025 */  move  $v0, $s5
/* 0043F17C 0320F809 */  jalr  $t9
/* 0043F180 00002025 */   move  $a0, $zero
/* 0043F184 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043F188 10000046 */  b     .L0043F2A4
/* 0043F18C 00000000 */   nop   
.L0043F190:
/* 0043F190 8F8F8070 */  lw    $t7, %got(RO_1001872D)($gp)
/* 0043F194 240E0020 */  li    $t6, 32
/* 0043F198 25EF872D */  addiu $t7, %lo(RO_1001872D) # addiu $t7, $t7, -0x78d3
/* 0043F19C 89E10000 */  lwl   $at, ($t7)
/* 0043F1A0 99E10003 */  lwr   $at, 3($t7)
/* 0043F1A4 97A200E0 */  lhu   $v0, 0xe0($sp)
/* 0043F1A8 ABA10004 */  swl   $at, 4($sp)
/* 0043F1AC BBA10007 */  swr   $at, 7($sp)
/* 0043F1B0 89F90004 */  lwl   $t9, 4($t7)
/* 0043F1B4 99F90007 */  lwr   $t9, 7($t7)
/* 0043F1B8 8FA50004 */  lw    $a1, 4($sp)
/* 0043F1BC ABB90008 */  swl   $t9, 8($sp)
/* 0043F1C0 BBB9000B */  swr   $t9, 0xb($sp)
/* 0043F1C4 89E10008 */  lwl   $at, 8($t7)
/* 0043F1C8 99E1000B */  lwr   $at, 0xb($t7)
/* 0043F1CC 8FA60008 */  lw    $a2, 8($sp)
/* 0043F1D0 ABA1000C */  swl   $at, 0xc($sp)
/* 0043F1D4 BBA1000F */  swr   $at, 0xf($sp)
/* 0043F1D8 89F9000C */  lwl   $t9, 0xc($t7)
/* 0043F1DC 99F9000F */  lwr   $t9, 0xf($t7)
/* 0043F1E0 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043F1E4 ABB90010 */  swl   $t9, 0x10($sp)
/* 0043F1E8 BBB90013 */  swr   $t9, 0x13($sp)
/* 0043F1EC 89E10010 */  lwl   $at, 0x10($t7)
/* 0043F1F0 99E10013 */  lwr   $at, 0x13($t7)
/* 0043F1F4 27B800D8 */  addiu $t8, $sp, 0xd8
/* 0043F1F8 ABA10014 */  swl   $at, 0x14($sp)
/* 0043F1FC BBA10017 */  swr   $at, 0x17($sp)
/* 0043F200 89F90014 */  lwl   $t9, 0x14($t7)
/* 0043F204 99F90017 */  lwr   $t9, 0x17($t7)
/* 0043F208 00002025 */  move  $a0, $zero
/* 0043F20C ABB90018 */  swl   $t9, 0x18($sp)
/* 0043F210 BBB9001B */  swr   $t9, 0x1b($sp)
/* 0043F214 89E10018 */  lwl   $at, 0x18($t7)
/* 0043F218 99E1001B */  lwr   $at, 0x1b($t7)
/* 0043F21C 00000000 */  nop   
/* 0043F220 ABA1001C */  swl   $at, 0x1c($sp)
/* 0043F224 BBA1001F */  swr   $at, 0x1f($sp)
/* 0043F228 89F9001C */  lwl   $t9, 0x1c($t7)
/* 0043F22C 99F9001F */  lwr   $t9, 0x1f($t7)
/* 0043F230 AFAE0024 */  sw    $t6, 0x24($sp)
/* 0043F234 ABB90020 */  swl   $t9, 0x20($sp)
/* 0043F238 BBB90023 */  swr   $t9, 0x23($sp)
/* 0043F23C 27B900DC */  addiu $t9, $sp, 0xdc
/* 0043F240 AFB90040 */  sw    $t9, 0x40($sp)
/* 0043F244 8F9984C0 */  lw    $t9, %call16(do_wrscnhdr)($gp)
/* 0043F248 8FAE00FC */  lw    $t6, 0xfc($sp)
/* 0043F24C 8FAF00EC */  lw    $t7, 0xec($sp)
/* 0043F250 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0043F254 AFB7003C */  sw    $s7, 0x3c($sp)
/* 0043F258 AFB60038 */  sw    $s6, 0x38($sp)
/* 0043F25C AFB8002C */  sw    $t8, 0x2c($sp)
/* 0043F260 AFB30028 */  sw    $s3, 0x28($sp)
/* 0043F264 AFA20098 */  sw    $v0, 0x98($sp)
/* 0043F268 AFA20048 */  sw    $v0, 0x48($sp)
/* 0043F26C AFAE0044 */  sw    $t6, 0x44($sp)
/* 0043F270 0320F809 */  jalr  $t9
/* 0043F274 AFAF0030 */   sw    $t7, 0x30($sp)
/* 0043F278 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043F27C 27B500E8 */  addiu $s5, $sp, 0xe8
/* 0043F280 8F858D90 */  lw     $a1, %got(prev_align)($gp)
/* 0043F284 8F998024 */  lw    $t9, %got(func_0043EBB4)($gp)
/* 0043F288 8CA50008 */  lw    $a1, 8($a1)
/* 0043F28C 2739EBB4 */  addiu $t9, %lo(func_0043EBB4) # addiu $t9, $t9, -0x144c
/* 0043F290 02A01025 */  move  $v0, $s5
/* 0043F294 0320F809 */  jalr  $t9
/* 0043F298 00002025 */   move  $a0, $zero
/* 0043F29C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043F2A0 00000000 */  nop   
.L0043F2A4:
/* 0043F2A4 8F828CD8 */  lw     $v0, %got(lastusertextseg)($gp)
/* 0043F2A8 2401FFFF */  li    $at, -1
/* 0043F2AC 8C420000 */  lw    $v0, ($v0)
/* 0043F2B0 00000000 */  nop   
/* 0043F2B4 1041008C */  beq   $v0, $at, .L0043F4E8
/* 0043F2B8 00000000 */   nop   
/* 0043F2BC 8F8A8CD4 */  lw     $t2, %got(firstusertextseg)($gp)
/* 0043F2C0 24430001 */  addiu $v1, $v0, 1
/* 0043F2C4 8D4A0000 */  lw    $t2, ($t2)
/* 0043F2C8 00000000 */  nop   
/* 0043F2CC 004A082A */  slt   $at, $v0, $t2
/* 0043F2D0 14200085 */  bnez  $at, .L0043F4E8
/* 0043F2D4 01408025 */   move  $s0, $t2
/* 0043F2D8 000A8880 */  sll   $s1, $t2, 2
/* 0043F2DC 022A8823 */  subu  $s1, $s1, $t2
/* 0043F2E0 000AC080 */  sll   $t8, $t2, 2
/* 0043F2E4 8F8F8D90 */  lw     $t7, %got(prev_align)($gp)
/* 0043F2E8 030AC021 */  addu  $t8, $t8, $t2
/* 0043F2EC 00118880 */  sll   $s1, $s1, 2
/* 0043F2F0 022A8823 */  subu  $s1, $s1, $t2
/* 0043F2F4 0018C080 */  sll   $t8, $t8, 2
/* 0043F2F8 00118880 */  sll   $s1, $s1, 2
/* 0043F2FC AFA300B0 */  sw    $v1, 0xb0($sp)
/* 0043F300 030F9021 */  addu  $s2, $t8, $t7
.L0043F304:
/* 0043F304 8E990000 */  lw    $t9, ($s4)
/* 0043F308 00000000 */  nop   
/* 0043F30C 03317021 */  addu  $t6, $t9, $s1
/* 0043F310 89C10009 */  lwl   $at, 9($t6)
/* 0043F314 99C1000C */  lwr   $at, 0xc($t6)
/* 0043F318 8F998490 */  lw    $t9, %call16(prepare_for_c)($gp)
/* 0043F31C ABA10000 */  swl   $at, ($sp)
/* 0043F320 BBA10003 */  swr   $at, 3($sp)
/* 0043F324 89CF000D */  lwl   $t7, 0xd($t6)
/* 0043F328 99CF0010 */  lwr   $t7, 0x10($t6)
/* 0043F32C 8FA40000 */  lw    $a0, ($sp)
/* 0043F330 ABAF0004 */  swl   $t7, 4($sp)
/* 0043F334 BBAF0007 */  swr   $t7, 7($sp)
/* 0043F338 89C10011 */  lwl   $at, 0x11($t6)
/* 0043F33C 99C10014 */  lwr   $at, 0x14($t6)
/* 0043F340 8FA50004 */  lw    $a1, 4($sp)
/* 0043F344 ABA10008 */  swl   $at, 8($sp)
/* 0043F348 BBA1000B */  swr   $at, 0xb($sp)
/* 0043F34C 89CF0015 */  lwl   $t7, 0x15($t6)
/* 0043F350 99CF0018 */  lwr   $t7, 0x18($t6)
/* 0043F354 8FA60008 */  lw    $a2, 8($sp)
/* 0043F358 ABAF000C */  swl   $t7, 0xc($sp)
/* 0043F35C BBAF000F */  swr   $t7, 0xf($sp)
/* 0043F360 89C10019 */  lwl   $at, 0x19($t6)
/* 0043F364 99C1001C */  lwr   $at, 0x1c($t6)
/* 0043F368 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043F36C ABA10010 */  swl   $at, 0x10($sp)
/* 0043F370 BBA10013 */  swr   $at, 0x13($sp)
/* 0043F374 89CF001D */  lwl   $t7, 0x1d($t6)
/* 0043F378 99CF0020 */  lwr   $t7, 0x20($t6)
/* 0043F37C 00000000 */  nop   
/* 0043F380 ABAF0014 */  swl   $t7, 0x14($sp)
/* 0043F384 BBAF0017 */  swr   $t7, 0x17($sp)
/* 0043F388 89C10021 */  lwl   $at, 0x21($t6)
/* 0043F38C 99C10024 */  lwr   $at, 0x24($t6)
/* 0043F390 00000000 */  nop   
/* 0043F394 ABA10018 */  swl   $at, 0x18($sp)
/* 0043F398 BBA1001B */  swr   $at, 0x1b($sp)
/* 0043F39C 89CF0025 */  lwl   $t7, 0x25($t6)
/* 0043F3A0 99CF0028 */  lwr   $t7, 0x28($t6)
/* 0043F3A4 00000000 */  nop   
/* 0043F3A8 ABAF001C */  swl   $t7, 0x1c($sp)
/* 0043F3AC 0320F809 */  jalr  $t9
/* 0043F3B0 BBAF001F */   swr   $t7, 0x1f($sp)
/* 0043F3B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043F3B8 00402025 */  move  $a0, $v0
/* 0043F3BC 8F998250 */  lw    $t9, %call16(put_as_table)($gp)
/* 0043F3C0 00000000 */  nop   
/* 0043F3C4 0320F809 */  jalr  $t9
/* 0043F3C8 00000000 */   nop   
/* 0043F3CC 8E990000 */  lw    $t9, ($s4)
/* 0043F3D0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043F3D4 0331C021 */  addu  $t8, $t9, $s1
/* 0043F3D8 8B010009 */  lwl   $at, 9($t8)
/* 0043F3DC 9B01000C */  lwr   $at, 0xc($t8)
/* 0043F3E0 24190020 */  li    $t9, 32
/* 0043F3E4 ABA10004 */  swl   $at, 4($sp)
/* 0043F3E8 BBA10007 */  swr   $at, 7($sp)
/* 0043F3EC 8B0F000D */  lwl   $t7, 0xd($t8)
/* 0043F3F0 9B0F0010 */  lwr   $t7, 0x10($t8)
/* 0043F3F4 27AE00D8 */  addiu $t6, $sp, 0xd8
/* 0043F3F8 ABAF0008 */  swl   $t7, 8($sp)
/* 0043F3FC BBAF000B */  swr   $t7, 0xb($sp)
/* 0043F400 8B010011 */  lwl   $at, 0x11($t8)
/* 0043F404 9B010014 */  lwr   $at, 0x14($t8)
/* 0043F408 8FBF00F0 */  lw    $ra, 0xf0($sp)
/* 0043F40C ABA1000C */  swl   $at, 0xc($sp)
/* 0043F410 BBA1000F */  swr   $at, 0xf($sp)
/* 0043F414 8B0F0015 */  lwl   $t7, 0x15($t8)
/* 0043F418 9B0F0018 */  lwr   $t7, 0x18($t8)
/* 0043F41C 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043F420 ABAF0010 */  swl   $t7, 0x10($sp)
/* 0043F424 BBAF0013 */  swr   $t7, 0x13($sp)
/* 0043F428 8B010019 */  lwl   $at, 0x19($t8)
/* 0043F42C 9B01001C */  lwr   $at, 0x1c($t8)
/* 0043F430 8FA60008 */  lw    $a2, 8($sp)
/* 0043F434 ABA10014 */  swl   $at, 0x14($sp)
/* 0043F438 BBA10017 */  swr   $at, 0x17($sp)
/* 0043F43C 8B0F001D */  lwl   $t7, 0x1d($t8)
/* 0043F440 9B0F0020 */  lwr   $t7, 0x20($t8)
/* 0043F444 8FA50004 */  lw    $a1, 4($sp)
/* 0043F448 ABAF0018 */  swl   $t7, 0x18($sp)
/* 0043F44C BBAF001B */  swr   $t7, 0x1b($sp)
/* 0043F450 8B010021 */  lwl   $at, 0x21($t8)
/* 0043F454 9B010024 */  lwr   $at, 0x24($t8)
/* 0043F458 02002025 */  move  $a0, $s0
/* 0043F45C ABA1001C */  swl   $at, 0x1c($sp)
/* 0043F460 BBA1001F */  swr   $at, 0x1f($sp)
/* 0043F464 8B0F0025 */  lwl   $t7, 0x25($t8)
/* 0043F468 9B0F0028 */  lwr   $t7, 0x28($t8)
/* 0043F46C AFB90024 */  sw    $t9, 0x24($sp)
/* 0043F470 8FB900FC */  lw    $t9, 0xfc($sp)
/* 0043F474 AFAE002C */  sw    $t6, 0x2c($sp)
/* 0043F478 ABAF0020 */  swl   $t7, 0x20($sp)
/* 0043F47C AFB90044 */  sw    $t9, 0x44($sp)
/* 0043F480 8FAE0098 */  lw    $t6, 0x98($sp)
/* 0043F484 8FB800EC */  lw    $t8, 0xec($sp)
/* 0043F488 8F9984C0 */  lw    $t9, %call16(do_wrscnhdr)($gp)
/* 0043F48C BBAF0023 */  swr   $t7, 0x23($sp)
/* 0043F490 27AF00DC */  addiu $t7, $sp, 0xdc
/* 0043F494 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0043F498 AFAF0040 */  sw    $t7, 0x40($sp)
/* 0043F49C AFB7003C */  sw    $s7, 0x3c($sp)
/* 0043F4A0 AFB60038 */  sw    $s6, 0x38($sp)
/* 0043F4A4 AFB30028 */  sw    $s3, 0x28($sp)
/* 0043F4A8 AFAE0048 */  sw    $t6, 0x48($sp)
/* 0043F4AC 0320F809 */  jalr  $t9
/* 0043F4B0 AFB80030 */   sw    $t8, 0x30($sp)
/* 0043F4B4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043F4B8 8E450008 */  lw    $a1, 8($s2)
/* 0043F4BC 8F998024 */  lw    $t9, %got(func_0043EBB4)($gp)
/* 0043F4C0 02002025 */  move  $a0, $s0
/* 0043F4C4 2739EBB4 */  addiu $t9, %lo(func_0043EBB4) # addiu $t9, $t9, -0x144c
/* 0043F4C8 0320F809 */  jalr  $t9
/* 0043F4CC 02A01025 */   move  $v0, $s5
/* 0043F4D0 8FB800B0 */  lw    $t8, 0xb0($sp)
/* 0043F4D4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043F4D8 26100001 */  addiu $s0, $s0, 1
/* 0043F4DC 2631002C */  addiu $s1, $s1, 0x2c
/* 0043F4E0 1618FF88 */  bne   $s0, $t8, .L0043F304
/* 0043F4E4 26520014 */   addiu $s2, $s2, 0x14
.L0043F4E8:
/* 0043F4E8 8F8F8070 */  lw    $t7, %got(RO_1001870D)($gp)
/* 0043F4EC 27B900D8 */  addiu $t9, $sp, 0xd8
/* 0043F4F0 25EF870D */  addiu $t7, %lo(RO_1001870D) # addiu $t7, $t7, -0x78f3
/* 0043F4F4 89E10000 */  lwl   $at, ($t7)
/* 0043F4F8 99E10003 */  lwr   $at, 3($t7)
/* 0043F4FC 24180100 */  li    $t8, 256
/* 0043F500 ABA10004 */  swl   $at, 4($sp)
/* 0043F504 BBA10007 */  swr   $at, 7($sp)
/* 0043F508 89EE0004 */  lwl   $t6, 4($t7)
/* 0043F50C 99EE0007 */  lwr   $t6, 7($t7)
/* 0043F510 8FBF00F0 */  lw    $ra, 0xf0($sp)
/* 0043F514 ABAE0008 */  swl   $t6, 8($sp)
/* 0043F518 BBAE000B */  swr   $t6, 0xb($sp)
/* 0043F51C 89E10008 */  lwl   $at, 8($t7)
/* 0043F520 99E1000B */  lwr   $at, 0xb($t7)
/* 0043F524 8FA60008 */  lw    $a2, 8($sp)
/* 0043F528 ABA1000C */  swl   $at, 0xc($sp)
/* 0043F52C BBA1000F */  swr   $at, 0xf($sp)
/* 0043F530 89EE000C */  lwl   $t6, 0xc($t7)
/* 0043F534 99EE000F */  lwr   $t6, 0xf($t7)
/* 0043F538 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043F53C ABAE0010 */  swl   $t6, 0x10($sp)
/* 0043F540 BBAE0013 */  swr   $t6, 0x13($sp)
/* 0043F544 89E10010 */  lwl   $at, 0x10($t7)
/* 0043F548 99E10013 */  lwr   $at, 0x13($t7)
/* 0043F54C 8FA50004 */  lw    $a1, 4($sp)
/* 0043F550 ABA10014 */  swl   $at, 0x14($sp)
/* 0043F554 BBA10017 */  swr   $at, 0x17($sp)
/* 0043F558 89EE0014 */  lwl   $t6, 0x14($t7)
/* 0043F55C 99EE0017 */  lwr   $t6, 0x17($t7)
/* 0043F560 24040009 */  li    $a0, 9
/* 0043F564 ABAE0018 */  swl   $t6, 0x18($sp)
/* 0043F568 BBAE001B */  swr   $t6, 0x1b($sp)
/* 0043F56C 89E10018 */  lwl   $at, 0x18($t7)
/* 0043F570 99E1001B */  lwr   $at, 0x1b($t7)
/* 0043F574 00000000 */  nop   
/* 0043F578 ABA1001C */  swl   $at, 0x1c($sp)
/* 0043F57C BBA1001F */  swr   $at, 0x1f($sp)
/* 0043F580 89EE001C */  lwl   $t6, 0x1c($t7)
/* 0043F584 99EE001F */  lwr   $t6, 0x1f($t7)
/* 0043F588 AFB9002C */  sw    $t9, 0x2c($sp)
/* 0043F58C 8FB90098 */  lw    $t9, 0x98($sp)
/* 0043F590 AFB80024 */  sw    $t8, 0x24($sp)
/* 0043F594 ABAE0020 */  swl   $t6, 0x20($sp)
/* 0043F598 AFB90048 */  sw    $t9, 0x48($sp)
/* 0043F59C 8F9984C0 */  lw    $t9, %call16(do_wrscnhdr)($gp)
/* 0043F5A0 8FB800FC */  lw    $t8, 0xfc($sp)
/* 0043F5A4 8FAF00EC */  lw    $t7, 0xec($sp)
/* 0043F5A8 BBAE0023 */  swr   $t6, 0x23($sp)
/* 0043F5AC 27AE00DC */  addiu $t6, $sp, 0xdc
/* 0043F5B0 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0043F5B4 AFAE0040 */  sw    $t6, 0x40($sp)
/* 0043F5B8 AFB7003C */  sw    $s7, 0x3c($sp)
/* 0043F5BC AFB60038 */  sw    $s6, 0x38($sp)
/* 0043F5C0 AFB30028 */  sw    $s3, 0x28($sp)
/* 0043F5C4 AFB80044 */  sw    $t8, 0x44($sp)
/* 0043F5C8 0320F809 */  jalr  $t9
/* 0043F5CC AFAF0030 */   sw    $t7, 0x30($sp)
/* 0043F5D0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043F5D4 24040009 */  li    $a0, 9
/* 0043F5D8 8F858D90 */  lw     $a1, %got(prev_align)($gp)
/* 0043F5DC 8F998024 */  lw    $t9, %got(func_0043EBB4)($gp)
/* 0043F5E0 8CA500BC */  lw    $a1, 0xbc($a1)
/* 0043F5E4 2739EBB4 */  addiu $t9, %lo(func_0043EBB4) # addiu $t9, $t9, -0x144c
/* 0043F5E8 0320F809 */  jalr  $t9
/* 0043F5EC 02A01025 */   move  $v0, $s5
/* 0043F5F0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043F5F4 00000000 */  nop   
/* 0043F5F8 8F928CB4 */  lw     $s2, %got(excpt_opt)($gp)
/* 0043F5FC 00000000 */  nop   
/* 0043F600 924F0000 */  lbu   $t7, ($s2)
/* 0043F604 00000000 */  nop   
/* 0043F608 11E00089 */  beqz  $t7, .L0043F830
/* 0043F60C 00000000 */   nop   
/* 0043F610 8F8E8070 */  lw    $t6, %got(RO_100186ED)($gp)
/* 0043F614 3C0F0240 */  lui   $t7, 0x240
/* 0043F618 25CE86ED */  addiu $t6, %lo(RO_100186ED) # addiu $t6, $t6, -0x7913
/* 0043F61C 89C10000 */  lwl   $at, ($t6)
/* 0043F620 99C10003 */  lwr   $at, 3($t6)
/* 0043F624 27B800D8 */  addiu $t8, $sp, 0xd8
/* 0043F628 ABA10004 */  swl   $at, 4($sp)
/* 0043F62C BBA10007 */  swr   $at, 7($sp)
/* 0043F630 89D90004 */  lwl   $t9, 4($t6)
/* 0043F634 99D90007 */  lwr   $t9, 7($t6)
/* 0043F638 8FBF00F0 */  lw    $ra, 0xf0($sp)
/* 0043F63C ABB90008 */  swl   $t9, 8($sp)
/* 0043F640 BBB9000B */  swr   $t9, 0xb($sp)
/* 0043F644 89C10008 */  lwl   $at, 8($t6)
/* 0043F648 99C1000B */  lwr   $at, 0xb($t6)
/* 0043F64C 8FA60008 */  lw    $a2, 8($sp)
/* 0043F650 ABA1000C */  swl   $at, 0xc($sp)
/* 0043F654 BBA1000F */  swr   $at, 0xf($sp)
/* 0043F658 89D9000C */  lwl   $t9, 0xc($t6)
/* 0043F65C 99D9000F */  lwr   $t9, 0xf($t6)
/* 0043F660 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043F664 ABB90010 */  swl   $t9, 0x10($sp)
/* 0043F668 BBB90013 */  swr   $t9, 0x13($sp)
/* 0043F66C 89C10010 */  lwl   $at, 0x10($t6)
/* 0043F670 99C10013 */  lwr   $at, 0x13($t6)
/* 0043F674 8FA50004 */  lw    $a1, 4($sp)
/* 0043F678 ABA10014 */  swl   $at, 0x14($sp)
/* 0043F67C BBA10017 */  swr   $at, 0x17($sp)
/* 0043F680 89D90014 */  lwl   $t9, 0x14($t6)
/* 0043F684 99D90017 */  lwr   $t9, 0x17($t6)
/* 0043F688 24040007 */  li    $a0, 7
/* 0043F68C ABB90018 */  swl   $t9, 0x18($sp)
/* 0043F690 BBB9001B */  swr   $t9, 0x1b($sp)
/* 0043F694 89C10018 */  lwl   $at, 0x18($t6)
/* 0043F698 99C1001B */  lwr   $at, 0x1b($t6)
/* 0043F69C 00000000 */  nop   
/* 0043F6A0 ABA1001C */  swl   $at, 0x1c($sp)
/* 0043F6A4 BBA1001F */  swr   $at, 0x1f($sp)
/* 0043F6A8 89D9001C */  lwl   $t9, 0x1c($t6)
/* 0043F6AC 99D9001F */  lwr   $t9, 0x1f($t6)
/* 0043F6B0 AFB8002C */  sw    $t8, 0x2c($sp)
/* 0043F6B4 ABB90020 */  swl   $t9, 0x20($sp)
/* 0043F6B8 BBB90023 */  swr   $t9, 0x23($sp)
/* 0043F6BC 27B900DC */  addiu $t9, $sp, 0xdc
/* 0043F6C0 AFB90040 */  sw    $t9, 0x40($sp)
/* 0043F6C4 AFAF0024 */  sw    $t7, 0x24($sp)
/* 0043F6C8 8FAF00FC */  lw    $t7, 0xfc($sp)
/* 0043F6CC 8F9984C0 */  lw    $t9, %call16(do_wrscnhdr)($gp)
/* 0043F6D0 8FB80098 */  lw    $t8, 0x98($sp)
/* 0043F6D4 8FAE00EC */  lw    $t6, 0xec($sp)
/* 0043F6D8 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0043F6DC AFB7003C */  sw    $s7, 0x3c($sp)
/* 0043F6E0 AFB60038 */  sw    $s6, 0x38($sp)
/* 0043F6E4 AFB30028 */  sw    $s3, 0x28($sp)
/* 0043F6E8 AFAF0044 */  sw    $t7, 0x44($sp)
/* 0043F6EC AFB80048 */  sw    $t8, 0x48($sp)
/* 0043F6F0 0320F809 */  jalr  $t9
/* 0043F6F4 AFAE0030 */   sw    $t6, 0x30($sp)
/* 0043F6F8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043F6FC 24040007 */  li    $a0, 7
/* 0043F700 8F858D90 */  lw     $a1, %got(prev_align)($gp)
/* 0043F704 8F998024 */  lw    $t9, %got(func_0043EBB4)($gp)
/* 0043F708 8CA50094 */  lw    $a1, 0x94($a1)
/* 0043F70C 2739EBB4 */  addiu $t9, %lo(func_0043EBB4) # addiu $t9, $t9, -0x144c
/* 0043F710 0320F809 */  jalr  $t9
/* 0043F714 02A01025 */   move  $v0, $s5
/* 0043F718 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043F71C 27B900D8 */  addiu $t9, $sp, 0xd8
/* 0043F720 8F8E8070 */  lw    $t6, %got(RO_100186CD)($gp)
/* 0043F724 3C180280 */  lui   $t8, 0x280
/* 0043F728 25CE86CD */  addiu $t6, %lo(RO_100186CD) # addiu $t6, $t6, -0x7933
/* 0043F72C 89C10000 */  lwl   $at, ($t6)
/* 0043F730 99C10003 */  lwr   $at, 3($t6)
/* 0043F734 8FBF00F0 */  lw    $ra, 0xf0($sp)
/* 0043F738 ABA10004 */  swl   $at, 4($sp)
/* 0043F73C BBA10007 */  swr   $at, 7($sp)
/* 0043F740 89CF0004 */  lwl   $t7, 4($t6)
/* 0043F744 99CF0007 */  lwr   $t7, 7($t6)
/* 0043F748 8FA50004 */  lw    $a1, 4($sp)
/* 0043F74C ABAF0008 */  swl   $t7, 8($sp)
/* 0043F750 BBAF000B */  swr   $t7, 0xb($sp)
/* 0043F754 89C10008 */  lwl   $at, 8($t6)
/* 0043F758 99C1000B */  lwr   $at, 0xb($t6)
/* 0043F75C 8FA60008 */  lw    $a2, 8($sp)
/* 0043F760 ABA1000C */  swl   $at, 0xc($sp)
/* 0043F764 BBA1000F */  swr   $at, 0xf($sp)
/* 0043F768 89CF000C */  lwl   $t7, 0xc($t6)
/* 0043F76C 99CF000F */  lwr   $t7, 0xf($t6)
/* 0043F770 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043F774 ABAF0010 */  swl   $t7, 0x10($sp)
/* 0043F778 BBAF0013 */  swr   $t7, 0x13($sp)
/* 0043F77C 89C10010 */  lwl   $at, 0x10($t6)
/* 0043F780 99C10013 */  lwr   $at, 0x13($t6)
/* 0043F784 24040008 */  li    $a0, 8
/* 0043F788 ABA10014 */  swl   $at, 0x14($sp)
/* 0043F78C BBA10017 */  swr   $at, 0x17($sp)
/* 0043F790 89CF0014 */  lwl   $t7, 0x14($t6)
/* 0043F794 99CF0017 */  lwr   $t7, 0x17($t6)
/* 0043F798 00000000 */  nop   
/* 0043F79C ABAF0018 */  swl   $t7, 0x18($sp)
/* 0043F7A0 BBAF001B */  swr   $t7, 0x1b($sp)
/* 0043F7A4 89C10018 */  lwl   $at, 0x18($t6)
/* 0043F7A8 99C1001B */  lwr   $at, 0x1b($t6)
/* 0043F7AC 00000000 */  nop   
/* 0043F7B0 ABA1001C */  swl   $at, 0x1c($sp)
/* 0043F7B4 BBA1001F */  swr   $at, 0x1f($sp)
/* 0043F7B8 89CF001C */  lwl   $t7, 0x1c($t6)
/* 0043F7BC 99CF001F */  lwr   $t7, 0x1f($t6)
/* 0043F7C0 AFB9002C */  sw    $t9, 0x2c($sp)
/* 0043F7C4 8FB90098 */  lw    $t9, 0x98($sp)
/* 0043F7C8 AFB80024 */  sw    $t8, 0x24($sp)
/* 0043F7CC ABAF0020 */  swl   $t7, 0x20($sp)
/* 0043F7D0 AFB90048 */  sw    $t9, 0x48($sp)
/* 0043F7D4 8FB800FC */  lw    $t8, 0xfc($sp)
/* 0043F7D8 8FAE00EC */  lw    $t6, 0xec($sp)
/* 0043F7DC 8F9984C0 */  lw    $t9, %call16(do_wrscnhdr)($gp)
/* 0043F7E0 BBAF0023 */  swr   $t7, 0x23($sp)
/* 0043F7E4 27AF00DC */  addiu $t7, $sp, 0xdc
/* 0043F7E8 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0043F7EC AFAF0040 */  sw    $t7, 0x40($sp)
/* 0043F7F0 AFB7003C */  sw    $s7, 0x3c($sp)
/* 0043F7F4 AFB60038 */  sw    $s6, 0x38($sp)
/* 0043F7F8 AFB30028 */  sw    $s3, 0x28($sp)
/* 0043F7FC AFB80044 */  sw    $t8, 0x44($sp)
/* 0043F800 0320F809 */  jalr  $t9
/* 0043F804 AFAE0030 */   sw    $t6, 0x30($sp)
/* 0043F808 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043F80C 24040008 */  li    $a0, 8
/* 0043F810 8F858D90 */  lw     $a1, %got(prev_align)($gp)
/* 0043F814 8F998024 */  lw    $t9, %got(func_0043EBB4)($gp)
/* 0043F818 8CA500A8 */  lw    $a1, 0xa8($a1)
/* 0043F81C 2739EBB4 */  addiu $t9, %lo(func_0043EBB4) # addiu $t9, $t9, -0x144c
/* 0043F820 0320F809 */  jalr  $t9
/* 0043F824 02A01025 */   move  $v0, $s5
/* 0043F828 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043F82C 00000000 */  nop   
.L0043F830:
/* 0043F830 8F8E8070 */  lw    $t6, %got(RO_100186AD)($gp)
/* 0043F834 24190040 */  li    $t9, 64
/* 0043F838 25CE86AD */  addiu $t6, %lo(RO_100186AD) # addiu $t6, $t6, -0x7953
/* 0043F83C 89C10000 */  lwl   $at, ($t6)
/* 0043F840 99C10003 */  lwr   $at, 3($t6)
/* 0043F844 27AF00D8 */  addiu $t7, $sp, 0xd8
/* 0043F848 ABA10004 */  swl   $at, 4($sp)
/* 0043F84C BBA10007 */  swr   $at, 7($sp)
/* 0043F850 89D80004 */  lwl   $t8, 4($t6)
/* 0043F854 99D80007 */  lwr   $t8, 7($t6)
/* 0043F858 8FBF00F0 */  lw    $ra, 0xf0($sp)
/* 0043F85C ABB80008 */  swl   $t8, 8($sp)
/* 0043F860 BBB8000B */  swr   $t8, 0xb($sp)
/* 0043F864 89C10008 */  lwl   $at, 8($t6)
/* 0043F868 99C1000B */  lwr   $at, 0xb($t6)
/* 0043F86C 8FA60008 */  lw    $a2, 8($sp)
/* 0043F870 ABA1000C */  swl   $at, 0xc($sp)
/* 0043F874 BBA1000F */  swr   $at, 0xf($sp)
/* 0043F878 89D8000C */  lwl   $t8, 0xc($t6)
/* 0043F87C 99D8000F */  lwr   $t8, 0xf($t6)
/* 0043F880 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043F884 ABB80010 */  swl   $t8, 0x10($sp)
/* 0043F888 BBB80013 */  swr   $t8, 0x13($sp)
/* 0043F88C 89C10010 */  lwl   $at, 0x10($t6)
/* 0043F890 99C10013 */  lwr   $at, 0x13($t6)
/* 0043F894 8FA50004 */  lw    $a1, 4($sp)
/* 0043F898 ABA10014 */  swl   $at, 0x14($sp)
/* 0043F89C BBA10017 */  swr   $at, 0x17($sp)
/* 0043F8A0 89D80014 */  lwl   $t8, 0x14($t6)
/* 0043F8A4 99D80017 */  lwr   $t8, 0x17($t6)
/* 0043F8A8 24040002 */  li    $a0, 2
/* 0043F8AC ABB80018 */  swl   $t8, 0x18($sp)
/* 0043F8B0 BBB8001B */  swr   $t8, 0x1b($sp)
/* 0043F8B4 89C10018 */  lwl   $at, 0x18($t6)
/* 0043F8B8 99C1001B */  lwr   $at, 0x1b($t6)
/* 0043F8BC 00000000 */  nop   
/* 0043F8C0 ABA1001C */  swl   $at, 0x1c($sp)
/* 0043F8C4 BBA1001F */  swr   $at, 0x1f($sp)
/* 0043F8C8 89D8001C */  lwl   $t8, 0x1c($t6)
/* 0043F8CC 99D8001F */  lwr   $t8, 0x1f($t6)
/* 0043F8D0 AFB90024 */  sw    $t9, 0x24($sp)
/* 0043F8D4 8FB900FC */  lw    $t9, 0xfc($sp)
/* 0043F8D8 AFAF002C */  sw    $t7, 0x2c($sp)
/* 0043F8DC ABB80020 */  swl   $t8, 0x20($sp)
/* 0043F8E0 AFB90044 */  sw    $t9, 0x44($sp)
/* 0043F8E4 8F9984C0 */  lw    $t9, %call16(do_wrscnhdr)($gp)
/* 0043F8E8 8FAF0098 */  lw    $t7, 0x98($sp)
/* 0043F8EC 8FAE00EC */  lw    $t6, 0xec($sp)
/* 0043F8F0 BBB80023 */  swr   $t8, 0x23($sp)
/* 0043F8F4 27B800DC */  addiu $t8, $sp, 0xdc
/* 0043F8F8 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0043F8FC AFB80040 */  sw    $t8, 0x40($sp)
/* 0043F900 AFB7003C */  sw    $s7, 0x3c($sp)
/* 0043F904 AFB60038 */  sw    $s6, 0x38($sp)
/* 0043F908 AFB30028 */  sw    $s3, 0x28($sp)
/* 0043F90C AFAF0048 */  sw    $t7, 0x48($sp)
/* 0043F910 0320F809 */  jalr  $t9
/* 0043F914 AFAE0030 */   sw    $t6, 0x30($sp)
/* 0043F918 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043F91C 24040002 */  li    $a0, 2
/* 0043F920 8F858D90 */  lw     $a1, %got(prev_align)($gp)
/* 0043F924 8F998024 */  lw    $t9, %got(func_0043EBB4)($gp)
/* 0043F928 8CA50030 */  lw    $a1, 0x30($a1)
/* 0043F92C 2739EBB4 */  addiu $t9, %lo(func_0043EBB4) # addiu $t9, $t9, -0x144c
/* 0043F930 0320F809 */  jalr  $t9
/* 0043F934 02A01025 */   move  $v0, $s5
/* 0043F938 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043F93C 3C0F0800 */  lui   $t7, 0x800
/* 0043F940 8F8E8070 */  lw    $t6, %got(RO_1001868D)($gp)
/* 0043F944 27B800D8 */  addiu $t8, $sp, 0xd8
/* 0043F948 25CE868D */  addiu $t6, %lo(RO_1001868D) # addiu $t6, $t6, -0x7973
/* 0043F94C 89C10000 */  lwl   $at, ($t6)
/* 0043F950 99C10003 */  lwr   $at, 3($t6)
/* 0043F954 8FBF00F0 */  lw    $ra, 0xf0($sp)
/* 0043F958 ABA10004 */  swl   $at, 4($sp)
/* 0043F95C BBA10007 */  swr   $at, 7($sp)
/* 0043F960 89D90004 */  lwl   $t9, 4($t6)
/* 0043F964 99D90007 */  lwr   $t9, 7($t6)
/* 0043F968 8FA50004 */  lw    $a1, 4($sp)
/* 0043F96C ABB90008 */  swl   $t9, 8($sp)
/* 0043F970 BBB9000B */  swr   $t9, 0xb($sp)
/* 0043F974 89C10008 */  lwl   $at, 8($t6)
/* 0043F978 99C1000B */  lwr   $at, 0xb($t6)
/* 0043F97C 8FA60008 */  lw    $a2, 8($sp)
/* 0043F980 ABA1000C */  swl   $at, 0xc($sp)
/* 0043F984 BBA1000F */  swr   $at, 0xf($sp)
/* 0043F988 89D9000C */  lwl   $t9, 0xc($t6)
/* 0043F98C 99D9000F */  lwr   $t9, 0xf($t6)
/* 0043F990 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043F994 ABB90010 */  swl   $t9, 0x10($sp)
/* 0043F998 BBB90013 */  swr   $t9, 0x13($sp)
/* 0043F99C 89C10010 */  lwl   $at, 0x10($t6)
/* 0043F9A0 99C10013 */  lwr   $at, 0x13($t6)
/* 0043F9A4 24040006 */  li    $a0, 6
/* 0043F9A8 ABA10014 */  swl   $at, 0x14($sp)
/* 0043F9AC BBA10017 */  swr   $at, 0x17($sp)
/* 0043F9B0 89D90014 */  lwl   $t9, 0x14($t6)
/* 0043F9B4 99D90017 */  lwr   $t9, 0x17($t6)
/* 0043F9B8 00000000 */  nop   
/* 0043F9BC ABB90018 */  swl   $t9, 0x18($sp)
/* 0043F9C0 BBB9001B */  swr   $t9, 0x1b($sp)
/* 0043F9C4 89C10018 */  lwl   $at, 0x18($t6)
/* 0043F9C8 99C1001B */  lwr   $at, 0x1b($t6)
/* 0043F9CC 00000000 */  nop   
/* 0043F9D0 ABA1001C */  swl   $at, 0x1c($sp)
/* 0043F9D4 BBA1001F */  swr   $at, 0x1f($sp)
/* 0043F9D8 89D9001C */  lwl   $t9, 0x1c($t6)
/* 0043F9DC 99D9001F */  lwr   $t9, 0x1f($t6)
/* 0043F9E0 AFB8002C */  sw    $t8, 0x2c($sp)
/* 0043F9E4 ABB90020 */  swl   $t9, 0x20($sp)
/* 0043F9E8 BBB90023 */  swr   $t9, 0x23($sp)
/* 0043F9EC 27B900DC */  addiu $t9, $sp, 0xdc
/* 0043F9F0 AFB90040 */  sw    $t9, 0x40($sp)
/* 0043F9F4 AFAF0024 */  sw    $t7, 0x24($sp)
/* 0043F9F8 8FAF00FC */  lw    $t7, 0xfc($sp)
/* 0043F9FC 8FB80098 */  lw    $t8, 0x98($sp)
/* 0043FA00 8FAE00EC */  lw    $t6, 0xec($sp)
/* 0043FA04 8F9984C0 */  lw    $t9, %call16(do_wrscnhdr)($gp)
/* 0043FA08 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0043FA0C AFB7003C */  sw    $s7, 0x3c($sp)
/* 0043FA10 AFB60038 */  sw    $s6, 0x38($sp)
/* 0043FA14 AFB30028 */  sw    $s3, 0x28($sp)
/* 0043FA18 AFAF0044 */  sw    $t7, 0x44($sp)
/* 0043FA1C AFB80048 */  sw    $t8, 0x48($sp)
/* 0043FA20 0320F809 */  jalr  $t9
/* 0043FA24 AFAE0030 */   sw    $t6, 0x30($sp)
/* 0043FA28 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043FA2C 24040006 */  li    $a0, 6
/* 0043FA30 8F998024 */  lw    $t9, %got(func_0043EBB4)($gp)
/* 0043FA34 24050008 */  li    $a1, 8
/* 0043FA38 2739EBB4 */  addiu $t9, %lo(func_0043EBB4) # addiu $t9, $t9, -0x144c
/* 0043FA3C 0320F809 */  jalr  $t9
/* 0043FA40 02A01025 */   move  $v0, $s5
/* 0043FA44 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043FA48 27B900D8 */  addiu $t9, $sp, 0xd8
/* 0043FA4C 8F8E8070 */  lw    $t6, %got(RO_1001866D)($gp)
/* 0043FA50 3C181000 */  lui   $t8, 0x1000
/* 0043FA54 25CE866D */  addiu $t6, %lo(RO_1001866D) # addiu $t6, $t6, -0x7993
/* 0043FA58 89C10000 */  lwl   $at, ($t6)
/* 0043FA5C 99C10003 */  lwr   $at, 3($t6)
/* 0043FA60 8FBF00F0 */  lw    $ra, 0xf0($sp)
/* 0043FA64 ABA10004 */  swl   $at, 4($sp)
/* 0043FA68 BBA10007 */  swr   $at, 7($sp)
/* 0043FA6C 89CF0004 */  lwl   $t7, 4($t6)
/* 0043FA70 99CF0007 */  lwr   $t7, 7($t6)
/* 0043FA74 8FA50004 */  lw    $a1, 4($sp)
/* 0043FA78 ABAF0008 */  swl   $t7, 8($sp)
/* 0043FA7C BBAF000B */  swr   $t7, 0xb($sp)
/* 0043FA80 89C10008 */  lwl   $at, 8($t6)
/* 0043FA84 99C1000B */  lwr   $at, 0xb($t6)
/* 0043FA88 8FA60008 */  lw    $a2, 8($sp)
/* 0043FA8C ABA1000C */  swl   $at, 0xc($sp)
/* 0043FA90 BBA1000F */  swr   $at, 0xf($sp)
/* 0043FA94 89CF000C */  lwl   $t7, 0xc($t6)
/* 0043FA98 99CF000F */  lwr   $t7, 0xf($t6)
/* 0043FA9C 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043FAA0 ABAF0010 */  swl   $t7, 0x10($sp)
/* 0043FAA4 BBAF0013 */  swr   $t7, 0x13($sp)
/* 0043FAA8 89C10010 */  lwl   $at, 0x10($t6)
/* 0043FAAC 99C10013 */  lwr   $at, 0x13($t6)
/* 0043FAB0 24040005 */  li    $a0, 5
/* 0043FAB4 ABA10014 */  swl   $at, 0x14($sp)
/* 0043FAB8 BBA10017 */  swr   $at, 0x17($sp)
/* 0043FABC 89CF0014 */  lwl   $t7, 0x14($t6)
/* 0043FAC0 99CF0017 */  lwr   $t7, 0x17($t6)
/* 0043FAC4 00000000 */  nop   
/* 0043FAC8 ABAF0018 */  swl   $t7, 0x18($sp)
/* 0043FACC BBAF001B */  swr   $t7, 0x1b($sp)
/* 0043FAD0 89C10018 */  lwl   $at, 0x18($t6)
/* 0043FAD4 99C1001B */  lwr   $at, 0x1b($t6)
/* 0043FAD8 00000000 */  nop   
/* 0043FADC ABA1001C */  swl   $at, 0x1c($sp)
/* 0043FAE0 BBA1001F */  swr   $at, 0x1f($sp)
/* 0043FAE4 89CF001C */  lwl   $t7, 0x1c($t6)
/* 0043FAE8 99CF001F */  lwr   $t7, 0x1f($t6)
/* 0043FAEC AFB9002C */  sw    $t9, 0x2c($sp)
/* 0043FAF0 8FB90098 */  lw    $t9, 0x98($sp)
/* 0043FAF4 AFB80024 */  sw    $t8, 0x24($sp)
/* 0043FAF8 ABAF0020 */  swl   $t7, 0x20($sp)
/* 0043FAFC AFB90048 */  sw    $t9, 0x48($sp)
/* 0043FB00 8FB800FC */  lw    $t8, 0xfc($sp)
/* 0043FB04 8FAE00EC */  lw    $t6, 0xec($sp)
/* 0043FB08 8F9984C0 */  lw    $t9, %call16(do_wrscnhdr)($gp)
/* 0043FB0C BBAF0023 */  swr   $t7, 0x23($sp)
/* 0043FB10 27AF00DC */  addiu $t7, $sp, 0xdc
/* 0043FB14 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0043FB18 AFAF0040 */  sw    $t7, 0x40($sp)
/* 0043FB1C AFB7003C */  sw    $s7, 0x3c($sp)
/* 0043FB20 AFB60038 */  sw    $s6, 0x38($sp)
/* 0043FB24 AFB30028 */  sw    $s3, 0x28($sp)
/* 0043FB28 AFB80044 */  sw    $t8, 0x44($sp)
/* 0043FB2C 0320F809 */  jalr  $t9
/* 0043FB30 AFAE0030 */   sw    $t6, 0x30($sp)
/* 0043FB34 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043FB38 24040005 */  li    $a0, 5
/* 0043FB3C 8F998024 */  lw    $t9, %got(func_0043EBB4)($gp)
/* 0043FB40 24050004 */  li    $a1, 4
/* 0043FB44 2739EBB4 */  addiu $t9, %lo(func_0043EBB4) # addiu $t9, $t9, -0x144c
/* 0043FB48 0320F809 */  jalr  $t9
/* 0043FB4C 02A01025 */   move  $v0, $s5
/* 0043FB50 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043FB54 24190200 */  li    $t9, 512
/* 0043FB58 8F8E8070 */  lw    $t6, %got(RO_1001864D)($gp)
/* 0043FB5C 27AF00D8 */  addiu $t7, $sp, 0xd8
/* 0043FB60 25CE864D */  addiu $t6, %lo(RO_1001864D) # addiu $t6, $t6, -0x79b3
/* 0043FB64 89C10000 */  lwl   $at, ($t6)
/* 0043FB68 99C10003 */  lwr   $at, 3($t6)
/* 0043FB6C 8FBF00F0 */  lw    $ra, 0xf0($sp)
/* 0043FB70 ABA10004 */  swl   $at, 4($sp)
/* 0043FB74 BBA10007 */  swr   $at, 7($sp)
/* 0043FB78 89D80004 */  lwl   $t8, 4($t6)
/* 0043FB7C 99D80007 */  lwr   $t8, 7($t6)
/* 0043FB80 8FA50004 */  lw    $a1, 4($sp)
/* 0043FB84 ABB80008 */  swl   $t8, 8($sp)
/* 0043FB88 BBB8000B */  swr   $t8, 0xb($sp)
/* 0043FB8C 89C10008 */  lwl   $at, 8($t6)
/* 0043FB90 99C1000B */  lwr   $at, 0xb($t6)
/* 0043FB94 8FA60008 */  lw    $a2, 8($sp)
/* 0043FB98 ABA1000C */  swl   $at, 0xc($sp)
/* 0043FB9C BBA1000F */  swr   $at, 0xf($sp)
/* 0043FBA0 89D8000C */  lwl   $t8, 0xc($t6)
/* 0043FBA4 99D8000F */  lwr   $t8, 0xf($t6)
/* 0043FBA8 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043FBAC ABB80010 */  swl   $t8, 0x10($sp)
/* 0043FBB0 BBB80013 */  swr   $t8, 0x13($sp)
/* 0043FBB4 89C10010 */  lwl   $at, 0x10($t6)
/* 0043FBB8 99C10013 */  lwr   $at, 0x13($t6)
/* 0043FBBC 24040001 */  li    $a0, 1
/* 0043FBC0 ABA10014 */  swl   $at, 0x14($sp)
/* 0043FBC4 BBA10017 */  swr   $at, 0x17($sp)
/* 0043FBC8 89D80014 */  lwl   $t8, 0x14($t6)
/* 0043FBCC 99D80017 */  lwr   $t8, 0x17($t6)
/* 0043FBD0 00000000 */  nop   
/* 0043FBD4 ABB80018 */  swl   $t8, 0x18($sp)
/* 0043FBD8 BBB8001B */  swr   $t8, 0x1b($sp)
/* 0043FBDC 89C10018 */  lwl   $at, 0x18($t6)
/* 0043FBE0 99C1001B */  lwr   $at, 0x1b($t6)
/* 0043FBE4 00000000 */  nop   
/* 0043FBE8 ABA1001C */  swl   $at, 0x1c($sp)
/* 0043FBEC BBA1001F */  swr   $at, 0x1f($sp)
/* 0043FBF0 89D8001C */  lwl   $t8, 0x1c($t6)
/* 0043FBF4 99D8001F */  lwr   $t8, 0x1f($t6)
/* 0043FBF8 AFB90024 */  sw    $t9, 0x24($sp)
/* 0043FBFC 8FB900FC */  lw    $t9, 0xfc($sp)
/* 0043FC00 AFAF002C */  sw    $t7, 0x2c($sp)
/* 0043FC04 ABB80020 */  swl   $t8, 0x20($sp)
/* 0043FC08 AFB90044 */  sw    $t9, 0x44($sp)
/* 0043FC0C 8FAF0098 */  lw    $t7, 0x98($sp)
/* 0043FC10 8FAE00EC */  lw    $t6, 0xec($sp)
/* 0043FC14 8F9984C0 */  lw    $t9, %call16(do_wrscnhdr)($gp)
/* 0043FC18 BBB80023 */  swr   $t8, 0x23($sp)
/* 0043FC1C 27B800DC */  addiu $t8, $sp, 0xdc
/* 0043FC20 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0043FC24 AFB80040 */  sw    $t8, 0x40($sp)
/* 0043FC28 AFB7003C */  sw    $s7, 0x3c($sp)
/* 0043FC2C AFB60038 */  sw    $s6, 0x38($sp)
/* 0043FC30 AFB30028 */  sw    $s3, 0x28($sp)
/* 0043FC34 AFAF0048 */  sw    $t7, 0x48($sp)
/* 0043FC38 0320F809 */  jalr  $t9
/* 0043FC3C AFAE0030 */   sw    $t6, 0x30($sp)
/* 0043FC40 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043FC44 24040001 */  li    $a0, 1
/* 0043FC48 8F858D90 */  lw     $a1, %got(prev_align)($gp)
/* 0043FC4C 8F998024 */  lw    $t9, %got(func_0043EBB4)($gp)
/* 0043FC50 8CA5001C */  lw    $a1, 0x1c($a1)
/* 0043FC54 2739EBB4 */  addiu $t9, %lo(func_0043EBB4) # addiu $t9, $t9, -0x144c
/* 0043FC58 0320F809 */  jalr  $t9
/* 0043FC5C 02A01025 */   move  $v0, $s5
/* 0043FC60 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043FC64 240F0400 */  li    $t7, 1024
/* 0043FC68 8F8E8070 */  lw    $t6, %got(RO_1001862D)($gp)
/* 0043FC6C 27B800D8 */  addiu $t8, $sp, 0xd8
/* 0043FC70 25CE862D */  addiu $t6, %lo(RO_1001862D) # addiu $t6, $t6, -0x79d3
/* 0043FC74 89C10000 */  lwl   $at, ($t6)
/* 0043FC78 99C10003 */  lwr   $at, 3($t6)
/* 0043FC7C 8FBF00F0 */  lw    $ra, 0xf0($sp)
/* 0043FC80 ABA10004 */  swl   $at, 4($sp)
/* 0043FC84 BBA10007 */  swr   $at, 7($sp)
/* 0043FC88 89D90004 */  lwl   $t9, 4($t6)
/* 0043FC8C 99D90007 */  lwr   $t9, 7($t6)
/* 0043FC90 8FA50004 */  lw    $a1, 4($sp)
/* 0043FC94 ABB90008 */  swl   $t9, 8($sp)
/* 0043FC98 BBB9000B */  swr   $t9, 0xb($sp)
/* 0043FC9C 89C10008 */  lwl   $at, 8($t6)
/* 0043FCA0 99C1000B */  lwr   $at, 0xb($t6)
/* 0043FCA4 8FA60008 */  lw    $a2, 8($sp)
/* 0043FCA8 ABA1000C */  swl   $at, 0xc($sp)
/* 0043FCAC BBA1000F */  swr   $at, 0xf($sp)
/* 0043FCB0 89D9000C */  lwl   $t9, 0xc($t6)
/* 0043FCB4 99D9000F */  lwr   $t9, 0xf($t6)
/* 0043FCB8 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043FCBC ABB90010 */  swl   $t9, 0x10($sp)
/* 0043FCC0 BBB90013 */  swr   $t9, 0x13($sp)
/* 0043FCC4 89C10010 */  lwl   $at, 0x10($t6)
/* 0043FCC8 99C10013 */  lwr   $at, 0x13($t6)
/* 0043FCCC 24040003 */  li    $a0, 3
/* 0043FCD0 ABA10014 */  swl   $at, 0x14($sp)
/* 0043FCD4 BBA10017 */  swr   $at, 0x17($sp)
/* 0043FCD8 89D90014 */  lwl   $t9, 0x14($t6)
/* 0043FCDC 99D90017 */  lwr   $t9, 0x17($t6)
/* 0043FCE0 00000000 */  nop   
/* 0043FCE4 ABB90018 */  swl   $t9, 0x18($sp)
/* 0043FCE8 BBB9001B */  swr   $t9, 0x1b($sp)
/* 0043FCEC 89C10018 */  lwl   $at, 0x18($t6)
/* 0043FCF0 99C1001B */  lwr   $at, 0x1b($t6)
/* 0043FCF4 00000000 */  nop   
/* 0043FCF8 ABA1001C */  swl   $at, 0x1c($sp)
/* 0043FCFC BBA1001F */  swr   $at, 0x1f($sp)
/* 0043FD00 89D9001C */  lwl   $t9, 0x1c($t6)
/* 0043FD04 99D9001F */  lwr   $t9, 0x1f($t6)
/* 0043FD08 AFB8002C */  sw    $t8, 0x2c($sp)
/* 0043FD0C ABB90020 */  swl   $t9, 0x20($sp)
/* 0043FD10 BBB90023 */  swr   $t9, 0x23($sp)
/* 0043FD14 27B900DC */  addiu $t9, $sp, 0xdc
/* 0043FD18 AFB90040 */  sw    $t9, 0x40($sp)
/* 0043FD1C AFAF0024 */  sw    $t7, 0x24($sp)
/* 0043FD20 8FAF00FC */  lw    $t7, 0xfc($sp)
/* 0043FD24 8FB80098 */  lw    $t8, 0x98($sp)
/* 0043FD28 8FAE00EC */  lw    $t6, 0xec($sp)
/* 0043FD2C 8F9984C0 */  lw    $t9, %call16(do_wrscnhdr)($gp)
/* 0043FD30 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0043FD34 AFB7003C */  sw    $s7, 0x3c($sp)
/* 0043FD38 AFB60038 */  sw    $s6, 0x38($sp)
/* 0043FD3C AFB30028 */  sw    $s3, 0x28($sp)
/* 0043FD40 AFAF0044 */  sw    $t7, 0x44($sp)
/* 0043FD44 AFB80048 */  sw    $t8, 0x48($sp)
/* 0043FD48 0320F809 */  jalr  $t9
/* 0043FD4C AFAE0030 */   sw    $t6, 0x30($sp)
/* 0043FD50 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043FD54 24040003 */  li    $a0, 3
/* 0043FD58 8F908DBC */  lw     $s0, %got(bss_align)($gp)
/* 0043FD5C 8F998024 */  lw    $t9, %got(func_0043EBB4)($gp)
/* 0043FD60 8E050000 */  lw    $a1, ($s0)
/* 0043FD64 2739EBB4 */  addiu $t9, %lo(func_0043EBB4) # addiu $t9, $t9, -0x144c
/* 0043FD68 0320F809 */  jalr  $t9
/* 0043FD6C 02A01025 */   move  $v0, $s5
/* 0043FD70 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043FD74 27B900D8 */  addiu $t9, $sp, 0xd8
/* 0043FD78 8F8E8070 */  lw    $t6, %got(RO_1001860D)($gp)
/* 0043FD7C 24180080 */  li    $t8, 128
/* 0043FD80 25CE860D */  addiu $t6, %lo(RO_1001860D) # addiu $t6, $t6, -0x79f3
/* 0043FD84 89C10000 */  lwl   $at, ($t6)
/* 0043FD88 99C10003 */  lwr   $at, 3($t6)
/* 0043FD8C 8FBF00F0 */  lw    $ra, 0xf0($sp)
/* 0043FD90 ABA10004 */  swl   $at, 4($sp)
/* 0043FD94 BBA10007 */  swr   $at, 7($sp)
/* 0043FD98 89CF0004 */  lwl   $t7, 4($t6)
/* 0043FD9C 99CF0007 */  lwr   $t7, 7($t6)
/* 0043FDA0 8FA50004 */  lw    $a1, 4($sp)
/* 0043FDA4 ABAF0008 */  swl   $t7, 8($sp)
/* 0043FDA8 BBAF000B */  swr   $t7, 0xb($sp)
/* 0043FDAC 89C10008 */  lwl   $at, 8($t6)
/* 0043FDB0 99C1000B */  lwr   $at, 0xb($t6)
/* 0043FDB4 8FA60008 */  lw    $a2, 8($sp)
/* 0043FDB8 ABA1000C */  swl   $at, 0xc($sp)
/* 0043FDBC BBA1000F */  swr   $at, 0xf($sp)
/* 0043FDC0 89CF000C */  lwl   $t7, 0xc($t6)
/* 0043FDC4 99CF000F */  lwr   $t7, 0xf($t6)
/* 0043FDC8 8FA7000C */  lw    $a3, 0xc($sp)
/* 0043FDCC ABAF0010 */  swl   $t7, 0x10($sp)
/* 0043FDD0 BBAF0013 */  swr   $t7, 0x13($sp)
/* 0043FDD4 89C10010 */  lwl   $at, 0x10($t6)
/* 0043FDD8 99C10013 */  lwr   $at, 0x13($t6)
/* 0043FDDC 24040004 */  li    $a0, 4
/* 0043FDE0 ABA10014 */  swl   $at, 0x14($sp)
/* 0043FDE4 BBA10017 */  swr   $at, 0x17($sp)
/* 0043FDE8 89CF0014 */  lwl   $t7, 0x14($t6)
/* 0043FDEC 99CF0017 */  lwr   $t7, 0x17($t6)
/* 0043FDF0 00000000 */  nop   
/* 0043FDF4 ABAF0018 */  swl   $t7, 0x18($sp)
/* 0043FDF8 BBAF001B */  swr   $t7, 0x1b($sp)
/* 0043FDFC 89C10018 */  lwl   $at, 0x18($t6)
/* 0043FE00 99C1001B */  lwr   $at, 0x1b($t6)
/* 0043FE04 00000000 */  nop   
/* 0043FE08 ABA1001C */  swl   $at, 0x1c($sp)
/* 0043FE0C BBA1001F */  swr   $at, 0x1f($sp)
/* 0043FE10 89CF001C */  lwl   $t7, 0x1c($t6)
/* 0043FE14 99CF001F */  lwr   $t7, 0x1f($t6)
/* 0043FE18 AFB9002C */  sw    $t9, 0x2c($sp)
/* 0043FE1C 8FB90098 */  lw    $t9, 0x98($sp)
/* 0043FE20 AFB80024 */  sw    $t8, 0x24($sp)
/* 0043FE24 ABAF0020 */  swl   $t7, 0x20($sp)
/* 0043FE28 AFB90048 */  sw    $t9, 0x48($sp)
/* 0043FE2C 8FB800FC */  lw    $t8, 0xfc($sp)
/* 0043FE30 8FAE00EC */  lw    $t6, 0xec($sp)
/* 0043FE34 8F9984C0 */  lw    $t9, %call16(do_wrscnhdr)($gp)
/* 0043FE38 BBAF0023 */  swr   $t7, 0x23($sp)
/* 0043FE3C 27AF00DC */  addiu $t7, $sp, 0xdc
/* 0043FE40 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0043FE44 AFAF0040 */  sw    $t7, 0x40($sp)
/* 0043FE48 AFB600F4 */  sw    $s6, 0xf4($sp)
/* 0043FE4C AFB7003C */  sw    $s7, 0x3c($sp)
/* 0043FE50 AFB60038 */  sw    $s6, 0x38($sp)
/* 0043FE54 AFB30028 */  sw    $s3, 0x28($sp)
/* 0043FE58 AFB80044 */  sw    $t8, 0x44($sp)
/* 0043FE5C 0320F809 */  jalr  $t9
/* 0043FE60 AFAE0030 */   sw    $t6, 0x30($sp)
/* 0043FE64 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043FE68 8E050004 */  lw    $a1, 4($s0)
/* 0043FE6C 8F998024 */  lw    $t9, %got(func_0043EBB4)($gp)
/* 0043FE70 24040004 */  li    $a0, 4
/* 0043FE74 2739EBB4 */  addiu $t9, %lo(func_0043EBB4) # addiu $t9, $t9, -0x144c
/* 0043FE78 0320F809 */  jalr  $t9
/* 0043FE7C 02A01025 */   move  $v0, $s5
/* 0043FE80 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043FE84 00000000 */  nop   
/* 0043FE88 8F908BE4 */  lw     $s0, %got(fprmask)($gp)
/* 0043FE8C 8F9982F8 */  lw    $t9, %call16(flip_bits)($gp)
/* 0043FE90 8E040000 */  lw    $a0, ($s0)
/* 0043FE94 0320F809 */  jalr  $t9
/* 0043FE98 00000000 */   nop   
/* 0043FE9C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043FEA0 AE020000 */  sw    $v0, ($s0)
/* 0043FEA4 8F918BE0 */  lw     $s1, %got(gprmask)($gp)
/* 0043FEA8 8F9982F8 */  lw    $t9, %call16(flip_bits)($gp)
/* 0043FEAC 8E240000 */  lw    $a0, ($s1)
/* 0043FEB0 0320F809 */  jalr  $t9
/* 0043FEB4 00000000 */   nop   
/* 0043FEB8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043FEBC 8FAE00E8 */  lw    $t6, 0xe8($sp)
/* 0043FEC0 AE220000 */  sw    $v0, ($s1)
/* 0043FEC4 8F998274 */  lw    $t9, %call16(aself_st_wrreginfo)($gp)
/* 0043FEC8 8E050000 */  lw    $a1, ($s0)
/* 0043FECC 8DC60000 */  lw    $a2, ($t6)
/* 0043FED0 0320F809 */  jalr  $t9
/* 0043FED4 00402025 */   move  $a0, $v0
/* 0043FED8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043FEDC 97A400E0 */  lhu   $a0, 0xe0($sp)
/* 0043FEE0 8F998260 */  lw    $t9, %call16(elf_write_symtable)($gp)
/* 0043FEE4 AFA200DC */  sw    $v0, 0xdc($sp)
/* 0043FEE8 0320F809 */  jalr  $t9
/* 0043FEEC 00000000 */   nop   
/* 0043FEF0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043FEF4 00002025 */  move  $a0, $zero
/* 0043FEF8 8F998024 */  lw    $t9, %got(func_0043EA30)($gp)
/* 0043FEFC 02A01025 */  move  $v0, $s5
/* 0043FF00 2739EA30 */  addiu $t9, %lo(func_0043EA30) # addiu $t9, $t9, -0x15d0
/* 0043FF04 0320F809 */  jalr  $t9
/* 0043FF08 00000000 */   nop   
/* 0043FF0C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043FF10 2401FFFF */  li    $at, -1
/* 0043FF14 8F828CD8 */  lw     $v0, %got(lastusertextseg)($gp)
/* 0043FF18 00000000 */  nop   
/* 0043FF1C 8C420000 */  lw    $v0, ($v0)
/* 0043FF20 00000000 */  nop   
/* 0043FF24 10410013 */  beq   $v0, $at, .L0043FF74
/* 0043FF28 00000000 */   nop   
/* 0043FF2C 8F8A8CD4 */  lw     $t2, %got(firstusertextseg)($gp)
/* 0043FF30 24430001 */  addiu $v1, $v0, 1
/* 0043FF34 8D4A0000 */  lw    $t2, ($t2)
/* 0043FF38 00000000 */  nop   
/* 0043FF3C 004A082A */  slt   $at, $v0, $t2
/* 0043FF40 1420000C */  bnez  $at, .L0043FF74
/* 0043FF44 01408025 */   move  $s0, $t2
/* 0043FF48 AFA300B0 */  sw    $v1, 0xb0($sp)
.L0043FF4C:
/* 0043FF4C 8F998024 */  lw    $t9, %got(func_0043EA30)($gp)
/* 0043FF50 02002025 */  move  $a0, $s0
/* 0043FF54 2739EA30 */  addiu $t9, %lo(func_0043EA30) # addiu $t9, $t9, -0x15d0
/* 0043FF58 0320F809 */  jalr  $t9
/* 0043FF5C 02A01025 */   move  $v0, $s5
/* 0043FF60 8FAF00B0 */  lw    $t7, 0xb0($sp)
/* 0043FF64 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043FF68 26100001 */  addiu $s0, $s0, 1
/* 0043FF6C 160FFFF7 */  bne   $s0, $t7, .L0043FF4C
/* 0043FF70 00000000 */   nop   
.L0043FF74:
/* 0043FF74 8F998024 */  lw    $t9, %got(func_0043EA30)($gp)
/* 0043FF78 24040009 */  li    $a0, 9
/* 0043FF7C 2739EA30 */  addiu $t9, %lo(func_0043EA30) # addiu $t9, $t9, -0x15d0
/* 0043FF80 0320F809 */  jalr  $t9
/* 0043FF84 02A01025 */   move  $v0, $s5
/* 0043FF88 92580000 */  lbu   $t8, ($s2)
/* 0043FF8C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043FF90 1300000F */  beqz  $t8, .L0043FFD0
/* 0043FF94 00000000 */   nop   
/* 0043FF98 8F998024 */  lw    $t9, %got(func_0043EA30)($gp)
/* 0043FF9C 24040007 */  li    $a0, 7
/* 0043FFA0 2739EA30 */  addiu $t9, %lo(func_0043EA30) # addiu $t9, $t9, -0x15d0
/* 0043FFA4 0320F809 */  jalr  $t9
/* 0043FFA8 02A01025 */   move  $v0, $s5
/* 0043FFAC 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043FFB0 24040008 */  li    $a0, 8
/* 0043FFB4 8F998024 */  lw    $t9, %got(func_0043EA30)($gp)
/* 0043FFB8 02A01025 */  move  $v0, $s5
/* 0043FFBC 2739EA30 */  addiu $t9, %lo(func_0043EA30) # addiu $t9, $t9, -0x15d0
/* 0043FFC0 0320F809 */  jalr  $t9
/* 0043FFC4 00000000 */   nop   
/* 0043FFC8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043FFCC 00000000 */  nop   
.L0043FFD0:
/* 0043FFD0 8F998024 */  lw    $t9, %got(func_0043EA30)($gp)
/* 0043FFD4 24040002 */  li    $a0, 2
/* 0043FFD8 2739EA30 */  addiu $t9, %lo(func_0043EA30) # addiu $t9, $t9, -0x15d0
/* 0043FFDC 0320F809 */  jalr  $t9
/* 0043FFE0 02A01025 */   move  $v0, $s5
/* 0043FFE4 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0043FFE8 24040006 */  li    $a0, 6
/* 0043FFEC 8F998024 */  lw    $t9, %got(func_0043EA30)($gp)
/* 0043FFF0 02A01025 */  move  $v0, $s5
/* 0043FFF4 2739EA30 */  addiu $t9, %lo(func_0043EA30) # addiu $t9, $t9, -0x15d0
/* 0043FFF8 0320F809 */  jalr  $t9
/* 0043FFFC 00000000 */   nop   
/* 00440000 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00440004 24040005 */  li    $a0, 5
/* 00440008 8F998024 */  lw    $t9, %got(func_0043EA30)($gp)
/* 0044000C 02A01025 */  move  $v0, $s5
/* 00440010 2739EA30 */  addiu $t9, %lo(func_0043EA30) # addiu $t9, $t9, -0x15d0
/* 00440014 0320F809 */  jalr  $t9
/* 00440018 00000000 */   nop   
/* 0044001C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00440020 24040001 */  li    $a0, 1
/* 00440024 8F998024 */  lw    $t9, %got(func_0043EA30)($gp)
/* 00440028 02A01025 */  move  $v0, $s5
/* 0044002C 2739EA30 */  addiu $t9, %lo(func_0043EA30) # addiu $t9, $t9, -0x15d0
/* 00440030 0320F809 */  jalr  $t9
/* 00440034 00000000 */   nop   
/* 00440038 8FBC0078 */  lw    $gp, 0x78($sp)
/* 0044003C 02A01025 */  move  $v0, $s5
/* 00440040 8F998024 */  lw    $t9, %got(func_0043E7B8)($gp)
/* 00440044 00000000 */  nop   
/* 00440048 2739E7B8 */  addiu $t9, %lo(func_0043E7B8) # addiu $t9, $t9, -0x1848
/* 0044004C 0320F809 */  jalr  $t9
/* 00440050 00000000 */   nop   
/* 00440054 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00440058 00000000 */  nop   
/* 0044005C 8F99829C */  lw    $t9, %call16(create_content_section)($gp)
/* 00440060 00000000 */  nop   
/* 00440064 0320F809 */  jalr  $t9
/* 00440068 00000000 */   nop   
/* 0044006C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00440070 2404FFFF */  li    $a0, -1
/* 00440074 8F998298 */  lw    $t9, %call16(elf_mdebug)($gp)
/* 00440078 00000000 */  nop   
/* 0044007C 0320F809 */  jalr  $t9
/* 00440080 00000000 */   nop   
/* 00440084 8FBC0078 */  lw    $gp, 0x78($sp)
/* 00440088 00000000 */  nop   
/* 0044008C 8F998268 */  lw    $t9, %call16(elf_st_update)($gp)
/* 00440090 00000000 */  nop   
/* 00440094 0320F809 */  jalr  $t9
/* 00440098 00000000 */   nop   
/* 0044009C 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004400A0 24010001 */  li    $at, 1
/* 004400A4 14410010 */  bne   $v0, $at, .L004400E8
/* 004400A8 2406001D */   li    $a2, 29
/* 004400AC 8F908A0C */  lw     $s0, %got(output)($gp)
/* 004400B0 8F858070 */  lw    $a1, %got(RO_100185F0)($gp)
/* 004400B4 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 004400B8 8E040000 */  lw    $a0, ($s0)
/* 004400BC 2407001D */  li    $a3, 29
/* 004400C0 0320F809 */  jalr  $t9
/* 004400C4 24A585F0 */   addiu $a1, %lo(RO_100185F0) # addiu $a1, $a1, -0x7a10
/* 004400C8 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004400CC 8E040000 */  lw    $a0, ($s0)
/* 004400D0 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 004400D4 00000000 */  nop   
/* 004400D8 0320F809 */  jalr  $t9
/* 004400DC 00000000 */   nop   
/* 004400E0 8FBC0078 */  lw    $gp, 0x78($sp)
/* 004400E4 00000000 */  nop   
.L004400E8:
/* 004400E8 8FBF007C */  lw    $ra, 0x7c($sp)
.L004400EC:
/* 004400EC 8FB00058 */  lw    $s0, 0x58($sp)
/* 004400F0 8FB1005C */  lw    $s1, 0x5c($sp)
/* 004400F4 8FB20060 */  lw    $s2, 0x60($sp)
/* 004400F8 8FB30064 */  lw    $s3, 0x64($sp)
/* 004400FC 8FB40068 */  lw    $s4, 0x68($sp)
/* 00440100 8FB5006C */  lw    $s5, 0x6c($sp)
/* 00440104 8FB60070 */  lw    $s6, 0x70($sp)
/* 00440108 8FB70074 */  lw    $s7, 0x74($sp)
/* 0044010C 03E00008 */  jr    $ra
/* 00440110 27BD00E8 */   addiu $sp, $sp, 0xe8

/* 00440114 00000000 */  nop   
/* 00440118 00000000 */  nop   
/* 0044011C 00000000 */  nop   
    .type wrelfobj, @function
    .size wrelfobj, .-wrelfobj
    .end wrelfobj

glabel atoe
    .ent atoe
    # 00441670 func_00441670
/* 00440120 3C1C0FBF */  .cpload $t9
/* 00440124 279CA140 */  
/* 00440128 0399E021 */  
/* 0044012C 8F998110 */  lw    $t9, %call16(atof)($gp)
/* 00440130 27BDFF98 */  addiu $sp, $sp, -0x68
/* 00440134 AFBF0064 */  sw    $ra, 0x64($sp)
/* 00440138 AFBC0060 */  sw    $gp, 0x60($sp)
/* 0044013C 0320F809 */  jalr  $t9
/* 00440140 AFA5006C */   sw    $a1, 0x6c($sp)
/* 00440144 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00440148 8FAE006C */  lw    $t6, 0x6c($sp)
/* 0044014C 8F8F8070 */  lw    $t7, %got(RO_10018770)($gp)
/* 00440150 03A04025 */  move  $t0, $sp
/* 00440154 25EF8770 */  addiu $t7, %lo(RO_10018770) # addiu $t7, $t7, -0x7890
/* 00440158 25F90048 */  addiu $t9, $t7, 0x48
/* 0044015C E5C10000 */  swc1  $f1, ($t6)
/* 00440160 E5C00004 */  swc1  $f0, 4($t6)
.L00440164:
/* 00440164 89E10000 */  lwl   $at, ($t7)
/* 00440168 99E10003 */  lwr   $at, 3($t7)
/* 0044016C 25EF000C */  addiu $t7, $t7, 0xc
/* 00440170 A9010000 */  swl   $at, ($t0)
/* 00440174 B9010003 */  swr   $at, 3($t0)
/* 00440178 89E1FFF8 */  lwl   $at, -8($t7)
/* 0044017C 99E1FFFB */  lwr   $at, -5($t7)
/* 00440180 2508000C */  addiu $t0, $t0, 0xc
/* 00440184 A901FFF8 */  swl   $at, -8($t0)
/* 00440188 B901FFFB */  swr   $at, -5($t0)
/* 0044018C 89E1FFFC */  lwl   $at, -4($t7)
/* 00440190 99E1FFFF */  lwr   $at, -1($t7)
/* 00440194 00000000 */  nop   
/* 00440198 A901FFFC */  swl   $at, -4($t0)
/* 0044019C 15F9FFF1 */  bne   $t7, $t9, .L00440164
/* 004401A0 B901FFFF */   swr   $at, -1($t0)
/* 004401A4 89E10000 */  lwl   $at, ($t7)
/* 004401A8 99E10003 */  lwr   $at, 3($t7)
/* 004401AC 8F898C68 */  lw     $t1, %got(emptystring)($gp)
/* 004401B0 A9010000 */  swl   $at, ($t0)
/* 004401B4 B9010003 */  swr   $at, 3($t0)
/* 004401B8 89F90004 */  lwl   $t9, 4($t7)
/* 004401BC 99F90007 */  lwr   $t9, 7($t7)
/* 004401C0 240A0001 */  li    $t2, 1
/* 004401C4 A9190004 */  swl   $t9, 4($t0)
/* 004401C8 B9190007 */  swr   $t9, 7($t0)
/* 004401CC 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 004401D0 8D290000 */  lw    $t1, ($t1)
/* 004401D4 8FA7000C */  lw    $a3, 0xc($sp)
/* 004401D8 8FA60008 */  lw    $a2, 8($sp)
/* 004401DC 8FA50004 */  lw    $a1, 4($sp)
/* 004401E0 8FA40000 */  lw    $a0, ($sp)
/* 004401E4 AFAA0054 */  sw    $t2, 0x54($sp)
/* 004401E8 0320F809 */  jalr  $t9
/* 004401EC AFA90050 */   sw    $t1, 0x50($sp)
/* 004401F0 8FBF0064 */  lw    $ra, 0x64($sp)
/* 004401F4 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004401F8 03E00008 */  jr    $ra
/* 004401FC 27BD0068 */   addiu $sp, $sp, 0x68

    .type atoe, @function
    .size atoe, .-atoe
    .end atoe

glabel get_fp_string
    .ent get_fp_string
    # 00441E3C parsefpconst
    # 004656D4 parseafri_fp
/* 00440200 3C1C0FBF */  .cpload $t9
/* 00440204 279CA060 */  
/* 00440208 0399E021 */  
/* 0044020C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 00440210 8F9988C0 */  lw    $t9, %call16(xmalloc)($gp)
/* 00440214 AFB2001C */  sw    $s2, 0x1c($sp)
/* 00440218 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0044021C 24920001 */  addiu $s2, $a0, 1
/* 00440220 AFBC0030 */  sw    $gp, 0x30($sp)
/* 00440224 AFB6002C */  sw    $s6, 0x2c($sp)
/* 00440228 AFB50028 */  sw    $s5, 0x28($sp)
/* 0044022C AFB40024 */  sw    $s4, 0x24($sp)
/* 00440230 AFB30020 */  sw    $s3, 0x20($sp)
/* 00440234 AFB10018 */  sw    $s1, 0x18($sp)
/* 00440238 AFB00014 */  sw    $s0, 0x14($sp)
/* 0044023C 0320F809 */  jalr  $t9
/* 00440240 02402025 */   move  $a0, $s2
/* 00440244 8FBC0030 */  lw    $gp, 0x30($sp)
/* 00440248 14400007 */  bnez  $v0, .L00440268
/* 0044024C 0040B025 */   move  $s6, $v0
/* 00440250 8F998664 */  lw    $t9, %call16(new_error)($gp)
/* 00440254 00000000 */  nop   
/* 00440258 0320F809 */  jalr  $t9
/* 0044025C 00000000 */   nop   
/* 00440260 8FBC0030 */  lw    $gp, 0x30($sp)
/* 00440264 00000000 */  nop   
.L00440268:
/* 00440268 2E410002 */  sltiu $at, $s2, 2
/* 0044026C 24020011 */  li    $v0, 17
/* 00440270 14200019 */  bnez  $at, .L004402D8
/* 00440274 24110001 */   li    $s1, 1
/* 00440278 02409825 */  move  $s3, $s2
/* 0044027C 8F928D64 */  lw     $s2, %got(binasmfyle)($gp)
/* 00440280 24100001 */  li    $s0, 1
/* 00440284 24150020 */  li    $s5, 32
/* 00440288 24140011 */  li    $s4, 17
.L0044028C:
/* 0044028C 14540007 */  bne   $v0, $s4, .L004402AC
/* 00440290 00000000 */   nop   
/* 00440294 8F9985E8 */  lw    $t9, %call16(get_binasm)($gp)
/* 00440298 02402025 */  move  $a0, $s2
/* 0044029C 0320F809 */  jalr  $t9
/* 004402A0 00000000 */   nop   
/* 004402A4 8FBC0030 */  lw    $gp, 0x30($sp)
/* 004402A8 24020001 */  li    $v0, 1
.L004402AC:
/* 004402AC 8E4E0000 */  lw    $t6, ($s2)
/* 004402B0 02D1C021 */  addu  $t8, $s6, $s1
/* 004402B4 01C27821 */  addu  $t7, $t6, $v0
/* 004402B8 91E3FFFF */  lbu   $v1, -1($t7)
/* 004402BC 26100001 */  addiu $s0, $s0, 1
/* 004402C0 12A30003 */  beq   $s5, $v1, .L004402D0
/* 004402C4 00000000 */   nop   
/* 004402C8 A303FFFF */  sb    $v1, -1($t8)
/* 004402CC 26310001 */  addiu $s1, $s1, 1
.L004402D0:
/* 004402D0 1613FFEE */  bne   $s0, $s3, .L0044028C
/* 004402D4 24420001 */   addiu $v0, $v0, 1
.L004402D8:
/* 004402D8 02D1C821 */  addu  $t9, $s6, $s1
/* 004402DC A320FFFF */  sb    $zero, -1($t9)
/* 004402E0 8FBF0034 */  lw    $ra, 0x34($sp)
/* 004402E4 02C01025 */  move  $v0, $s6
/* 004402E8 8FB6002C */  lw    $s6, 0x2c($sp)
/* 004402EC 8FB50028 */  lw    $s5, 0x28($sp)
/* 004402F0 8FB40024 */  lw    $s4, 0x24($sp)
/* 004402F4 8FB30020 */  lw    $s3, 0x20($sp)
/* 004402F8 8FB2001C */  lw    $s2, 0x1c($sp)
/* 004402FC 8FB10018 */  lw    $s1, 0x18($sp)
/* 00440300 8FB00014 */  lw    $s0, 0x14($sp)
/* 00440304 03E00008 */  jr    $ra
/* 00440308 27BD0038 */   addiu $sp, $sp, 0x38

    .type get_fp_string, @function
    .size get_fp_string, .-get_fp_string
    .end get_fp_string

glabel emit_const
    .ent emit_const
    # 00441D54 fpstring_to_memory
    # 00441EF0 emit_fp_const
    # 0044200C emit_pool_const
/* 0044030C 3C1C0FBF */  .cpload $t9
/* 00440310 279C9F54 */  
/* 00440314 0399E021 */  
/* 00440318 27BDFF18 */  addiu $sp, $sp, -0xe8
/* 0044031C AFA400E8 */  sw    $a0, 0xe8($sp)
/* 00440320 93AE00EB */  lbu   $t6, 0xeb($sp)
/* 00440324 2401000B */  li    $at, 11
/* 00440328 AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 0044032C AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 00440330 AFA500EC */  sw    $a1, 0xec($sp)
/* 00440334 11C10004 */  beq   $t6, $at, .L00440348
/* 00440338 AFA600F0 */   sw    $a2, 0xf0($sp)
/* 0044033C 2401002C */  li    $at, 44
/* 00440340 15C10019 */  bne   $t6, $at, .L004403A8
/* 00440344 93AD00EB */   lbu   $t5, 0xeb($sp)
.L00440348:
/* 00440348 8F8F8B04 */  lw     $t7, %got(isa)($gp)
/* 0044034C 24050008 */  li    $a1, 8
/* 00440350 91EF0000 */  lbu   $t7, ($t7)
/* 00440354 00000000 */  nop   
/* 00440358 2DE10002 */  sltiu $at, $t7, 2
/* 0044035C 1420000F */  bnez  $at, .L0044039C
/* 00440360 00000000 */   nop   
/* 00440364 8F988B94 */  lw     $t8, %got(opts)($gp)
/* 00440368 24010002 */  li    $at, 2
/* 0044036C 9318001C */  lbu   $t8, 0x1c($t8)
/* 00440370 00000000 */  nop   
/* 00440374 17010009 */  bne   $t8, $at, .L0044039C
/* 00440378 00000000 */   nop   
/* 0044037C 8F998B64 */  lw     $t9, %got(currsegmentindex)($gp)
/* 00440380 24010009 */  li    $at, 9
/* 00440384 8F390000 */  lw    $t9, ($t9)
/* 00440388 00000000 */  nop   
/* 0044038C 13210003 */  beq   $t9, $at, .L0044039C
/* 00440390 00000000 */   nop   
/* 00440394 10000001 */  b     .L0044039C
/* 00440398 24050004 */   li    $a1, 4
.L0044039C:
/* 0044039C 1000004E */  b     .L004404D8
/* 004403A0 AFA500D0 */   sw    $a1, 0xd0($sp)
/* 004403A4 93AD00EB */  lbu   $t5, 0xeb($sp)
.L004403A8:
/* 004403A8 2401000D */  li    $at, 13
/* 004403AC 15A10003 */  bne   $t5, $at, .L004403BC
/* 004403B0 24050004 */   li    $a1, 4
/* 004403B4 10000048 */  b     .L004404D8
/* 004403B8 AFA500D0 */   sw    $a1, 0xd0($sp)
.L004403BC:
/* 004403BC 93AE00EB */  lbu   $t6, 0xeb($sp)
/* 004403C0 2401000D */  li    $at, 13
/* 004403C4 11C10044 */  beq   $t6, $at, .L004404D8
/* 004403C8 00000000 */   nop   
/* 004403CC 8F8F8070 */  lw    $t7, %got(RO_100189A0)($gp)
/* 004403D0 03A06825 */  move  $t5, $sp
/* 004403D4 25EF89A0 */  addiu $t7, %lo(RO_100189A0) # addiu $t7, $t7, -0x7660
/* 004403D8 25F90048 */  addiu $t9, $t7, 0x48
.L004403DC:
/* 004403DC 89E10000 */  lwl   $at, ($t7)
/* 004403E0 99E10003 */  lwr   $at, 3($t7)
/* 004403E4 25EF000C */  addiu $t7, $t7, 0xc
/* 004403E8 A9A10000 */  swl   $at, ($t5)
/* 004403EC B9A10003 */  swr   $at, 3($t5)
/* 004403F0 89E1FFF8 */  lwl   $at, -8($t7)
/* 004403F4 99E1FFFB */  lwr   $at, -5($t7)
/* 004403F8 25AD000C */  addiu $t5, $t5, 0xc
/* 004403FC A9A1FFF8 */  swl   $at, -8($t5)
/* 00440400 B9A1FFFB */  swr   $at, -5($t5)
/* 00440404 89E1FFFC */  lwl   $at, -4($t7)
/* 00440408 99E1FFFF */  lwr   $at, -1($t7)
/* 0044040C 00000000 */  nop   
/* 00440410 A9A1FFFC */  swl   $at, -4($t5)
/* 00440414 15F9FFF1 */  bne   $t7, $t9, .L004403DC
/* 00440418 B9A1FFFF */   swr   $at, -1($t5)
/* 0044041C 89E10000 */  lwl   $at, ($t7)
/* 00440420 99E10003 */  lwr   $at, 3($t7)
/* 00440424 8F8E8070 */  lw    $t6, %got(RO_10018950)($gp)
/* 00440428 A9A10000 */  swl   $at, ($t5)
/* 0044042C B9A10003 */  swr   $at, 3($t5)
/* 00440430 89F90004 */  lwl   $t9, 4($t7)
/* 00440434 99F90007 */  lwr   $t9, 7($t7)
/* 00440438 25CE8950 */  addiu $t6, %lo(RO_10018950) # addiu $t6, $t6, -0x76b0
/* 0044043C A9B90004 */  swl   $t9, 4($t5)
/* 00440440 B9B90007 */  swr   $t9, 7($t5)
/* 00440444 25D90048 */  addiu $t9, $t6, 0x48
/* 00440448 03A07825 */  move  $t7, $sp
.L0044044C:
/* 0044044C 89C10000 */  lwl   $at, ($t6)
/* 00440450 99C10003 */  lwr   $at, 3($t6)
/* 00440454 25CE000C */  addiu $t6, $t6, 0xc
/* 00440458 A9E10050 */  swl   $at, 0x50($t7)
/* 0044045C B9E10053 */  swr   $at, 0x53($t7)
/* 00440460 89C1FFF8 */  lwl   $at, -8($t6)
/* 00440464 99C1FFFB */  lwr   $at, -5($t6)
/* 00440468 25EF000C */  addiu $t7, $t7, 0xc
/* 0044046C A9E10048 */  swl   $at, 0x48($t7)
/* 00440470 B9E1004B */  swr   $at, 0x4b($t7)
/* 00440474 89C1FFFC */  lwl   $at, -4($t6)
/* 00440478 99C1FFFF */  lwr   $at, -1($t6)
/* 0044047C 00000000 */  nop   
/* 00440480 A9E1004C */  swl   $at, 0x4c($t7)
/* 00440484 15D9FFF1 */  bne   $t6, $t9, .L0044044C
/* 00440488 B9E1004F */   swr   $at, 0x4f($t7)
/* 0044048C 89C10000 */  lwl   $at, ($t6)
/* 00440490 99C10003 */  lwr   $at, 3($t6)
/* 00440494 240D009B */  li    $t5, 155
/* 00440498 A9E10050 */  swl   $at, 0x50($t7)
/* 0044049C B9E10053 */  swr   $at, 0x53($t7)
/* 004404A0 89D90004 */  lwl   $t9, 4($t6)
/* 004404A4 99D90007 */  lwr   $t9, 7($t6)
/* 004404A8 00000000 */  nop   
/* 004404AC A9F90054 */  swl   $t9, 0x54($t7)
/* 004404B0 B9F90057 */  swr   $t9, 0x57($t7)
/* 004404B4 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 004404B8 8FA7000C */  lw    $a3, 0xc($sp)
/* 004404BC 8FA60008 */  lw    $a2, 8($sp)
/* 004404C0 8FA50004 */  lw    $a1, 4($sp)
/* 004404C4 8FA40000 */  lw    $a0, ($sp)
/* 004404C8 0320F809 */  jalr  $t9
/* 004404CC AFAD00A0 */   sw    $t5, 0xa0($sp)
/* 004404D0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004404D4 00000000 */  nop   
.L004404D8:
/* 004404D8 8F848B64 */  lw     $a0, %got(currsegmentindex)($gp)
/* 004404DC 8F9985C4 */  lw    $t9, %call16(definealabel)($gp)
/* 004404E0 8FA500D0 */  lw    $a1, 0xd0($sp)
/* 004404E4 8C840000 */  lw    $a0, ($a0)
/* 004404E8 0320F809 */  jalr  $t9
/* 004404EC 00003025 */   move  $a2, $zero
/* 004404F0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004404F4 93AC00EB */  lbu   $t4, 0xeb($sp)
/* 004404F8 8F998BE8 */  lw     $t9, %got(currsegment)($gp)
/* 004404FC 8F988D84 */  lw     $t8, %got(realsegments)($gp)
/* 00440500 93390000 */  lbu   $t9, ($t9)
/* 00440504 8F180000 */  lw    $t8, ($t8)
/* 00440508 2F2E0020 */  sltiu $t6, $t9, 0x20
/* 0044050C 000E7823 */  negu  $t7, $t6
/* 00440510 030F6824 */  and   $t5, $t8, $t7
/* 00440514 032D7004 */  sllv  $t6, $t5, $t9
/* 00440518 05C00046 */  bltz  $t6, .L00440634
/* 0044051C 00000000 */   nop   
/* 00440520 8F988070 */  lw    $t8, %got(RO_10018900)($gp)
/* 00440524 03A0C825 */  move  $t9, $sp
/* 00440528 27188900 */  addiu $t8, %lo(RO_10018900) # addiu $t8, $t8, -0x7700
/* 0044052C 270D0048 */  addiu $t5, $t8, 0x48
.L00440530:
/* 00440530 8B010000 */  lwl   $at, ($t8)
/* 00440534 9B010003 */  lwr   $at, 3($t8)
/* 00440538 2718000C */  addiu $t8, $t8, 0xc
/* 0044053C AB210000 */  swl   $at, ($t9)
/* 00440540 BB210003 */  swr   $at, 3($t9)
/* 00440544 8B01FFF8 */  lwl   $at, -8($t8)
/* 00440548 9B01FFFB */  lwr   $at, -5($t8)
/* 0044054C 2739000C */  addiu $t9, $t9, 0xc
/* 00440550 AB21FFF8 */  swl   $at, -8($t9)
/* 00440554 BB21FFFB */  swr   $at, -5($t9)
/* 00440558 8B01FFFC */  lwl   $at, -4($t8)
/* 0044055C 9B01FFFF */  lwr   $at, -1($t8)
/* 00440560 00000000 */  nop   
/* 00440564 AB21FFFC */  swl   $at, -4($t9)
/* 00440568 170DFFF1 */  bne   $t8, $t5, .L00440530
/* 0044056C BB21FFFF */   swr   $at, -1($t9)
/* 00440570 8B010000 */  lwl   $at, ($t8)
/* 00440574 9B010003 */  lwr   $at, 3($t8)
/* 00440578 8F8E8070 */  lw    $t6, %got(RO_100188B0)($gp)
/* 0044057C AB210000 */  swl   $at, ($t9)
/* 00440580 BB210003 */  swr   $at, 3($t9)
/* 00440584 8B0D0004 */  lwl   $t5, 4($t8)
/* 00440588 9B0D0007 */  lwr   $t5, 7($t8)
/* 0044058C 25CE88B0 */  addiu $t6, %lo(RO_100188B0) # addiu $t6, $t6, -0x7750
/* 00440590 AB2D0004 */  swl   $t5, 4($t9)
/* 00440594 BB2D0007 */  swr   $t5, 7($t9)
/* 00440598 25CD0048 */  addiu $t5, $t6, 0x48
/* 0044059C 03A0C025 */  move  $t8, $sp
.L004405A0:
/* 004405A0 89C10000 */  lwl   $at, ($t6)
/* 004405A4 99C10003 */  lwr   $at, 3($t6)
/* 004405A8 25CE000C */  addiu $t6, $t6, 0xc
/* 004405AC AB010050 */  swl   $at, 0x50($t8)
/* 004405B0 BB010053 */  swr   $at, 0x53($t8)
/* 004405B4 89C1FFF8 */  lwl   $at, -8($t6)
/* 004405B8 99C1FFFB */  lwr   $at, -5($t6)
/* 004405BC 2718000C */  addiu $t8, $t8, 0xc
/* 004405C0 AB010048 */  swl   $at, 0x48($t8)
/* 004405C4 BB01004B */  swr   $at, 0x4b($t8)
/* 004405C8 89C1FFFC */  lwl   $at, -4($t6)
/* 004405CC 99C1FFFF */  lwr   $at, -1($t6)
/* 004405D0 00000000 */  nop   
/* 004405D4 AB01004C */  swl   $at, 0x4c($t8)
/* 004405D8 15CDFFF1 */  bne   $t6, $t5, .L004405A0
/* 004405DC BB01004F */   swr   $at, 0x4f($t8)
/* 004405E0 89C10000 */  lwl   $at, ($t6)
/* 004405E4 99C10003 */  lwr   $at, 3($t6)
/* 004405E8 2419009F */  li    $t9, 159
/* 004405EC AB010050 */  swl   $at, 0x50($t8)
/* 004405F0 BB010053 */  swr   $at, 0x53($t8)
/* 004405F4 89CD0004 */  lwl   $t5, 4($t6)
/* 004405F8 99CD0007 */  lwr   $t5, 7($t6)
/* 004405FC 00000000 */  nop   
/* 00440600 AB0D0054 */  swl   $t5, 0x54($t8)
/* 00440604 BB0D0057 */  swr   $t5, 0x57($t8)
/* 00440608 AFB900A0 */  sw    $t9, 0xa0($sp)
/* 0044060C 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 00440610 8FA7000C */  lw    $a3, 0xc($sp)
/* 00440614 8FA60008 */  lw    $a2, 8($sp)
/* 00440618 8FA50004 */  lw    $a1, 4($sp)
/* 0044061C 8FA40000 */  lw    $a0, ($sp)
/* 00440620 0320F809 */  jalr  $t9
/* 00440624 00000000 */   nop   
/* 00440628 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0044062C 93AC00EB */  lbu   $t4, 0xeb($sp)
/* 00440630 00000000 */  nop   
.L00440634:
/* 00440634 8F848B64 */  lw     $a0, %got(currsegmentindex)($gp)
/* 00440638 8F8F8AEC */  lw     $t7, %got(seg_ic)($gp)
/* 0044063C 8C840000 */  lw    $a0, ($a0)
/* 00440640 8DEF0000 */  lw    $t7, ($t7)
/* 00440644 00046880 */  sll   $t5, $a0, 2
/* 00440648 01ED1021 */  addu  $v0, $t7, $t5
/* 0044064C 8C430000 */  lw    $v1, ($v0)
/* 00440650 00000000 */  nop   
/* 00440654 306E0003 */  andi  $t6, $v1, 3
/* 00440658 11C00042 */  beqz  $t6, .L00440764
/* 0044065C 00000000 */   nop   
/* 00440660 8F988B58 */  lw     $t8, %got(aligning)($gp)
/* 00440664 24090001 */  li    $t1, 1
/* 00440668 93180000 */  lbu   $t8, ($t8)
/* 0044066C 00000000 */  nop   
/* 00440670 1300004F */  beqz  $t8, .L004407B0
/* 00440674 00000000 */   nop   
/* 00440678 8F998B94 */  lw     $t9, %got(opts)($gp)
/* 0044067C 00000000 */  nop   
/* 00440680 9339001C */  lbu   $t9, 0x1c($t9)
/* 00440684 00000000 */  nop   
/* 00440688 2F210002 */  sltiu $at, $t9, 2
/* 0044068C 14200048 */  bnez  $at, .L004407B0
/* 00440690 00000000 */   nop   
/* 00440694 8F8F8070 */  lw    $t7, %got(RO_10018860)($gp)
/* 00440698 03A0C025 */  move  $t8, $sp
/* 0044069C 25EF8860 */  addiu $t7, %lo(RO_10018860) # addiu $t7, $t7, -0x77a0
/* 004406A0 25EE0048 */  addiu $t6, $t7, 0x48
.L004406A4:
/* 004406A4 89E10000 */  lwl   $at, ($t7)
/* 004406A8 99E10003 */  lwr   $at, 3($t7)
/* 004406AC 25EF000C */  addiu $t7, $t7, 0xc
/* 004406B0 AB010000 */  swl   $at, ($t8)
/* 004406B4 BB010003 */  swr   $at, 3($t8)
/* 004406B8 89E1FFF8 */  lwl   $at, -8($t7)
/* 004406BC 99E1FFFB */  lwr   $at, -5($t7)
/* 004406C0 2718000C */  addiu $t8, $t8, 0xc
/* 004406C4 AB01FFF8 */  swl   $at, -8($t8)
/* 004406C8 BB01FFFB */  swr   $at, -5($t8)
/* 004406CC 89E1FFFC */  lwl   $at, -4($t7)
/* 004406D0 99E1FFFF */  lwr   $at, -1($t7)
/* 004406D4 00000000 */  nop   
/* 004406D8 AB01FFFC */  swl   $at, -4($t8)
/* 004406DC 15EEFFF1 */  bne   $t7, $t6, .L004406A4
/* 004406E0 BB01FFFF */   swr   $at, -1($t8)
/* 004406E4 89E10000 */  lwl   $at, ($t7)
/* 004406E8 99E10003 */  lwr   $at, 3($t7)
/* 004406EC 8F998C68 */  lw     $t9, %got(emptystring)($gp)
/* 004406F0 AB010000 */  swl   $at, ($t8)
/* 004406F4 BB010003 */  swr   $at, 3($t8)
/* 004406F8 89EE0004 */  lwl   $t6, 4($t7)
/* 004406FC 99EE0007 */  lwr   $t6, 7($t7)
/* 00440700 240D0001 */  li    $t5, 1
/* 00440704 AB0E0004 */  swl   $t6, 4($t8)
/* 00440708 BB0E0007 */  swr   $t6, 7($t8)
/* 0044070C 8F390000 */  lw    $t9, ($t9)
/* 00440710 8FA7000C */  lw    $a3, 0xc($sp)
/* 00440714 AFB90050 */  sw    $t9, 0x50($sp)
/* 00440718 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0044071C 8FA60008 */  lw    $a2, 8($sp)
/* 00440720 8FA50004 */  lw    $a1, 4($sp)
/* 00440724 8FA40000 */  lw    $a0, ($sp)
/* 00440728 A3A900D7 */  sb    $t1, 0xd7($sp)
/* 0044072C 0320F809 */  jalr  $t9
/* 00440730 AFAD0054 */   sw    $t5, 0x54($sp)
/* 00440734 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00440738 93A900D7 */  lbu   $t1, 0xd7($sp)
/* 0044073C 8F848B64 */  lw     $a0, %got(currsegmentindex)($gp)
/* 00440740 8F8E8AEC */  lw     $t6, %got(seg_ic)($gp)
/* 00440744 8C840000 */  lw    $a0, ($a0)
/* 00440748 8DCE0000 */  lw    $t6, ($t6)
/* 0044074C 00047880 */  sll   $t7, $a0, 2
/* 00440750 01CF1021 */  addu  $v0, $t6, $t7
/* 00440754 8C480000 */  lw    $t0, ($v0)
/* 00440758 93AC00EB */  lbu   $t4, 0xeb($sp)
/* 0044075C 1000006D */  b     .L00440914
/* 00440760 2D81000E */   sltiu $at, $t4, 0xe
.L00440764:
/* 00440764 8F988B04 */  lw     $t8, %got(isa)($gp)
/* 00440768 00004825 */  move  $t1, $zero
/* 0044076C 93180000 */  lbu   $t8, ($t8)
/* 00440770 00000000 */  nop   
/* 00440774 2F010002 */  sltiu $at, $t8, 2
/* 00440778 1420000D */  bnez  $at, .L004407B0
/* 0044077C 2401000B */   li    $at, 11
/* 00440780 11810004 */  beq   $t4, $at, .L00440794
/* 00440784 30790007 */   andi  $t9, $v1, 7
/* 00440788 2401002C */  li    $at, 44
/* 0044078C 15810008 */  bne   $t4, $at, .L004407B0
/* 00440790 00000000 */   nop   
.L00440794:
/* 00440794 13200004 */  beqz  $t9, .L004407A8
/* 00440798 00004825 */   move  $t1, $zero
/* 0044079C 24090001 */  li    $t1, 1
/* 004407A0 1000005B */  b     .L00440910
/* 004407A4 00604025 */   move  $t0, $v1
.L004407A8:
/* 004407A8 10000059 */  b     .L00440910
/* 004407AC 00604025 */   move  $t0, $v1
.L004407B0:
/* 004407B0 10000057 */  b     .L00440910
/* 004407B4 00604025 */   move  $t0, $v1
.L004407B8:
/* 004407B8 250D0004 */  addiu $t5, $t0, 4
/* 004407BC 10000067 */  b     .L0044095C
/* 004407C0 AC4D0000 */   sw    $t5, ($v0)
.L004407C4:
/* 004407C4 250E0008 */  addiu $t6, $t0, 8
/* 004407C8 10000064 */  b     .L0044095C
/* 004407CC AC4E0000 */   sw    $t6, ($v0)
.L004407D0:
/* 004407D0 10000062 */  b     .L0044095C
/* 004407D4 AC4F0000 */   sw    $t7, ($v0)
.L004407D8:
/* 004407D8 2401000D */  li    $at, 13
.L004407DC:
/* 004407DC 11810060 */  beq   $t4, $at, .L00440960
/* 004407E0 93AD00F3 */   lbu   $t5, 0xf3($sp)
/* 004407E4 8F988070 */  lw    $t8, %got(RO_10018810)($gp)
/* 004407E8 03A07025 */  move  $t6, $sp
/* 004407EC 27188810 */  addiu $t8, %lo(RO_10018810) # addiu $t8, $t8, -0x77f0
/* 004407F0 270D0048 */  addiu $t5, $t8, 0x48
.L004407F4:
/* 004407F4 8B010000 */  lwl   $at, ($t8)
/* 004407F8 9B010003 */  lwr   $at, 3($t8)
/* 004407FC 2718000C */  addiu $t8, $t8, 0xc
/* 00440800 A9C10000 */  swl   $at, ($t6)
/* 00440804 B9C10003 */  swr   $at, 3($t6)
/* 00440808 8B01FFF8 */  lwl   $at, -8($t8)
/* 0044080C 9B01FFFB */  lwr   $at, -5($t8)
/* 00440810 25CE000C */  addiu $t6, $t6, 0xc
/* 00440814 A9C1FFF8 */  swl   $at, -8($t6)
/* 00440818 B9C1FFFB */  swr   $at, -5($t6)
/* 0044081C 8B01FFFC */  lwl   $at, -4($t8)
/* 00440820 9B01FFFF */  lwr   $at, -1($t8)
/* 00440824 00000000 */  nop   
/* 00440828 A9C1FFFC */  swl   $at, -4($t6)
/* 0044082C 170DFFF1 */  bne   $t8, $t5, .L004407F4
/* 00440830 B9C1FFFF */   swr   $at, -1($t6)
/* 00440834 8B010000 */  lwl   $at, ($t8)
/* 00440838 9B010003 */  lwr   $at, 3($t8)
/* 0044083C 8F8F8070 */  lw    $t7, %got(RO_100187C0)($gp)
/* 00440840 A9C10000 */  swl   $at, ($t6)
/* 00440844 B9C10003 */  swr   $at, 3($t6)
/* 00440848 8B0D0004 */  lwl   $t5, 4($t8)
/* 0044084C 9B0D0007 */  lwr   $t5, 7($t8)
/* 00440850 25EF87C0 */  addiu $t7, %lo(RO_100187C0) # addiu $t7, $t7, -0x7840
/* 00440854 A9CD0004 */  swl   $t5, 4($t6)
/* 00440858 B9CD0007 */  swr   $t5, 7($t6)
/* 0044085C 25ED0048 */  addiu $t5, $t7, 0x48
/* 00440860 03A0C025 */  move  $t8, $sp
.L00440864:
/* 00440864 89E10000 */  lwl   $at, ($t7)
/* 00440868 99E10003 */  lwr   $at, 3($t7)
/* 0044086C 25EF000C */  addiu $t7, $t7, 0xc
/* 00440870 AB010050 */  swl   $at, 0x50($t8)
/* 00440874 BB010053 */  swr   $at, 0x53($t8)
/* 00440878 89E1FFF8 */  lwl   $at, -8($t7)
/* 0044087C 99E1FFFB */  lwr   $at, -5($t7)
/* 00440880 2718000C */  addiu $t8, $t8, 0xc
/* 00440884 AB010048 */  swl   $at, 0x48($t8)
/* 00440888 BB01004B */  swr   $at, 0x4b($t8)
/* 0044088C 89E1FFFC */  lwl   $at, -4($t7)
/* 00440890 99E1FFFF */  lwr   $at, -1($t7)
/* 00440894 00000000 */  nop   
/* 00440898 AB01004C */  swl   $at, 0x4c($t8)
/* 0044089C 15EDFFF1 */  bne   $t7, $t5, .L00440864
/* 004408A0 BB01004F */   swr   $at, 0x4f($t8)
/* 004408A4 89E10000 */  lwl   $at, ($t7)
/* 004408A8 99E10003 */  lwr   $at, 3($t7)
/* 004408AC 240E00BB */  li    $t6, 187
/* 004408B0 AB010050 */  swl   $at, 0x50($t8)
/* 004408B4 BB010053 */  swr   $at, 0x53($t8)
/* 004408B8 89ED0004 */  lwl   $t5, 4($t7)
/* 004408BC 99ED0007 */  lwr   $t5, 7($t7)
/* 004408C0 00000000 */  nop   
/* 004408C4 AB0D0054 */  swl   $t5, 0x54($t8)
/* 004408C8 BB0D0057 */  swr   $t5, 0x57($t8)
/* 004408CC 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 004408D0 8FA7000C */  lw    $a3, 0xc($sp)
/* 004408D4 8FA60008 */  lw    $a2, 8($sp)
/* 004408D8 8FA50004 */  lw    $a1, 4($sp)
/* 004408DC 8FA40000 */  lw    $a0, ($sp)
/* 004408E0 A3A900D7 */  sb    $t1, 0xd7($sp)
/* 004408E4 AFA800E0 */  sw    $t0, 0xe0($sp)
/* 004408E8 0320F809 */  jalr  $t9
/* 004408EC AFAE00A0 */   sw    $t6, 0xa0($sp)
/* 004408F0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004408F4 8FA800E0 */  lw    $t0, 0xe0($sp)
/* 004408F8 8F848B64 */  lw     $a0, %got(currsegmentindex)($gp)
/* 004408FC 93A900D7 */  lbu   $t1, 0xd7($sp)
/* 00440900 93AC00EB */  lbu   $t4, 0xeb($sp)
/* 00440904 8C840000 */  lw    $a0, ($a0)
/* 00440908 10000015 */  b     .L00440960
/* 0044090C 93AD00F3 */   lbu   $t5, 0xf3($sp)
.L00440910:
/* 00440910 2D81000E */  sltiu $at, $t4, 0xe
.L00440914:
/* 00440914 14200006 */  bnez  $at, .L00440930
/* 00440918 2599FFF5 */   addiu $t9, $t4, -0xb
/* 0044091C 2401002C */  li    $at, 44
/* 00440920 1181FFAB */  beq   $t4, $at, .L004407D0
/* 00440924 250F0010 */   addiu $t7, $t0, 0x10
/* 00440928 1000FFAC */  b     .L004407DC
/* 0044092C 2401000D */   li    $at, 13
.L00440930:
/* 00440930 2F210003 */  sltiu $at, $t9, 3
/* 00440934 1020FFA9 */  beqz  $at, .L004407DC
/* 00440938 2401000D */   li    $at, 13
/* 0044093C 8F818070 */  lw    $at, %got(jtbl_100189F0)($gp)
/* 00440940 0019C880 */  sll   $t9, $t9, 2
/* 00440944 00390821 */  addu  $at, $at, $t9
/* 00440948 8C3989F0 */  lw    $t9, %lo(jtbl_100189F0)($at)
/* 0044094C 00000000 */  nop   
/* 00440950 033CC821 */  addu  $t9, $t9, $gp
/* 00440954 03200008 */  jr    $t9
/* 00440958 00000000 */   nop   
.L0044095C:
/* 0044095C 93AD00F3 */  lbu   $t5, 0xf3($sp)
.L00440960:
/* 00440960 00000000 */  nop   
/* 00440964 11A0003A */  beqz  $t5, .L00440A50
/* 00440968 93AE00EF */   lbu   $t6, 0xef($sp)
/* 0044096C 8FB900F8 */  lw    $t9, 0xf8($sp)
/* 00440970 3C02FF00 */  lui   $v0, 0xff00
/* 00440974 0019C600 */  sll   $t8, $t9, 0x18
/* 00440978 03027024 */  and   $t6, $t8, $v0
/* 0044097C 00196E02 */  srl   $t5, $t9, 0x18
/* 00440980 31B800FF */  andi  $t8, $t5, 0xff
/* 00440984 01D86821 */  addu  $t5, $t6, $t8
/* 00440988 3C0300FF */  lui   $v1, 0xff
/* 0044098C 00197200 */  sll   $t6, $t9, 8
/* 00440990 01C3C024 */  and   $t8, $t6, $v1
/* 00440994 01B87821 */  addu  $t7, $t5, $t8
/* 00440998 00197202 */  srl   $t6, $t9, 8
/* 0044099C 31CDFF00 */  andi  $t5, $t6, 0xff00
/* 004409A0 01EDC021 */  addu  $t8, $t7, $t5
/* 004409A4 8FB900FC */  lw    $t9, 0xfc($sp)
/* 004409A8 8FAD00FC */  lw    $t5, 0xfc($sp)
/* 004409AC AFB800F8 */  sw    $t8, 0xf8($sp)
/* 004409B0 00197600 */  sll   $t6, $t9, 0x18
/* 004409B4 01C27824 */  and   $t7, $t6, $v0
/* 004409B8 000DC602 */  srl   $t8, $t5, 0x18
/* 004409BC 330E00FF */  andi  $t6, $t8, 0xff
/* 004409C0 01EEC021 */  addu  $t8, $t7, $t6
/* 004409C4 00197A00 */  sll   $t7, $t9, 8
/* 004409C8 01E37024 */  and   $t6, $t7, $v1
/* 004409CC 030EC821 */  addu  $t9, $t8, $t6
/* 004409D0 000D7A02 */  srl   $t7, $t5, 8
/* 004409D4 31F8FF00 */  andi  $t8, $t7, 0xff00
/* 004409D8 03387021 */  addu  $t6, $t9, $t8
/* 004409DC 8FAD0100 */  lw    $t5, 0x100($sp)
/* 004409E0 8FB80100 */  lw    $t8, 0x100($sp)
/* 004409E4 AFAE00FC */  sw    $t6, 0xfc($sp)
/* 004409E8 000D7E00 */  sll   $t7, $t5, 0x18
/* 004409EC 01E2C824 */  and   $t9, $t7, $v0
/* 004409F0 00187602 */  srl   $t6, $t8, 0x18
/* 004409F4 31CF00FF */  andi  $t7, $t6, 0xff
/* 004409F8 032F7021 */  addu  $t6, $t9, $t7
/* 004409FC 000DCA00 */  sll   $t9, $t5, 8
/* 00440A00 03237824 */  and   $t7, $t9, $v1
/* 00440A04 01CF6821 */  addu  $t5, $t6, $t7
/* 00440A08 0018CA02 */  srl   $t9, $t8, 8
/* 00440A0C 332EFF00 */  andi  $t6, $t9, 0xff00
/* 00440A10 01AE7821 */  addu  $t7, $t5, $t6
/* 00440A14 8FAE0104 */  lw    $t6, 0x104($sp)
/* 00440A18 AFAF0100 */  sw    $t7, 0x100($sp)
/* 00440A1C 000ECE00 */  sll   $t9, $t6, 0x18
/* 00440A20 03226824 */  and   $t5, $t9, $v0
/* 00440A24 000E7E02 */  srl   $t7, $t6, 0x18
/* 00440A28 31F900FF */  andi  $t9, $t7, 0xff
/* 00440A2C 01B97821 */  addu  $t7, $t5, $t9
/* 00440A30 000E6A00 */  sll   $t5, $t6, 8
/* 00440A34 01A3C824 */  and   $t9, $t5, $v1
/* 00440A38 01F9C021 */  addu  $t8, $t7, $t9
/* 00440A3C 000E6A02 */  srl   $t5, $t6, 8
/* 00440A40 31AFFF00 */  andi  $t7, $t5, 0xff00
/* 00440A44 030FC821 */  addu  $t9, $t8, $t7
/* 00440A48 AFB90104 */  sw    $t9, 0x104($sp)
/* 00440A4C 93AE00EF */  lbu   $t6, 0xef($sp)
.L00440A50:
/* 00440A50 00000000 */  nop   
/* 00440A54 15C00003 */  bnez  $t6, .L00440A64
/* 00440A58 01003025 */   move  $a2, $t0
/* 00440A5C 10000009 */  b     .L00440A84
/* 00440A60 240B0001 */   li    $t3, 1
.L00440A64:
/* 00440A64 8F8D8AEC */  lw     $t5, %got(seg_ic)($gp)
/* 00440A68 0004C080 */  sll   $t8, $a0, 2
/* 00440A6C 8DAD0000 */  lw    $t5, ($t5)
/* 00440A70 240BFFFF */  li    $t3, -1
/* 00440A74 01B87821 */  addu  $t7, $t5, $t8
/* 00440A78 8DE60000 */  lw    $a2, ($t7)
/* 00440A7C 00000000 */  nop   
/* 00440A80 24C6FFFC */  addiu $a2, $a2, -4
.L00440A84:
/* 00440A84 11200034 */  beqz  $t1, .L00440B58
/* 00440A88 00047080 */   sll   $t6, $a0, 2
/* 00440A8C 8F998588 */  lw    $t9, %call16(byte_at_a_time)($gp)
/* 00440A90 8FA500F8 */  lw    $a1, 0xf8($sp)
/* 00440A94 24070004 */  li    $a3, 4
/* 00440A98 AFA600E4 */  sw    $a2, 0xe4($sp)
/* 00440A9C 0320F809 */  jalr  $t9
/* 00440AA0 AFAB00D8 */   sw    $t3, 0xd8($sp)
/* 00440AA4 8FAB00D8 */  lw    $t3, 0xd8($sp)
/* 00440AA8 8FA600E4 */  lw    $a2, 0xe4($sp)
/* 00440AAC 93AC00EB */  lbu   $t4, 0xeb($sp)
/* 00440AB0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00440AB4 2401000D */  li    $at, 13
/* 00440AB8 000B1080 */  sll   $v0, $t3, 2
/* 00440ABC 118100BA */  beq   $t4, $at, .L00440DA8
/* 00440AC0 00C23021 */   addu  $a2, $a2, $v0
/* 00440AC4 8F848B64 */  lw     $a0, %got(currsegmentindex)($gp)
/* 00440AC8 8F998588 */  lw    $t9, %call16(byte_at_a_time)($gp)
/* 00440ACC 8FA500FC */  lw    $a1, 0xfc($sp)
/* 00440AD0 8C840000 */  lw    $a0, ($a0)
/* 00440AD4 24070004 */  li    $a3, 4
/* 00440AD8 AFA200C4 */  sw    $v0, 0xc4($sp)
/* 00440ADC 0320F809 */  jalr  $t9
/* 00440AE0 AFA600E4 */   sw    $a2, 0xe4($sp)
/* 00440AE4 8FA200C4 */  lw    $v0, 0xc4($sp)
/* 00440AE8 8FA600E4 */  lw    $a2, 0xe4($sp)
/* 00440AEC 93AC00EB */  lbu   $t4, 0xeb($sp)
/* 00440AF0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00440AF4 2401000B */  li    $at, 11
/* 00440AF8 118100AB */  beq   $t4, $at, .L00440DA8
/* 00440AFC 00C23021 */   addu  $a2, $a2, $v0
/* 00440B00 8F848B64 */  lw     $a0, %got(currsegmentindex)($gp)
/* 00440B04 8F998588 */  lw    $t9, %call16(byte_at_a_time)($gp)
/* 00440B08 8FA50100 */  lw    $a1, 0x100($sp)
/* 00440B0C 8C840000 */  lw    $a0, ($a0)
/* 00440B10 24070004 */  li    $a3, 4
/* 00440B14 AFA200C4 */  sw    $v0, 0xc4($sp)
/* 00440B18 0320F809 */  jalr  $t9
/* 00440B1C AFA600E4 */   sw    $a2, 0xe4($sp)
/* 00440B20 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00440B24 8FA200C4 */  lw    $v0, 0xc4($sp)
/* 00440B28 8F848B64 */  lw     $a0, %got(currsegmentindex)($gp)
/* 00440B2C 8FA600E4 */  lw    $a2, 0xe4($sp)
/* 00440B30 8F998588 */  lw    $t9, %call16(byte_at_a_time)($gp)
/* 00440B34 8FA50104 */  lw    $a1, 0x104($sp)
/* 00440B38 8C840000 */  lw    $a0, ($a0)
/* 00440B3C 24070004 */  li    $a3, 4
/* 00440B40 0320F809 */  jalr  $t9
/* 00440B44 00C23021 */   addu  $a2, $a2, $v0
/* 00440B48 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00440B4C 10000097 */  b     .L00440DAC
/* 00440B50 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 00440B54 00047080 */  sll   $t6, $a0, 2
.L00440B58:
/* 00440B58 8F998AE0 */  lw     $t9, %got(memory)($gp)
/* 00440B5C 01C47023 */  subu  $t6, $t6, $a0
/* 00440B60 000E7080 */  sll   $t6, $t6, 2
/* 00440B64 8F390000 */  lw    $t9, ($t9)
/* 00440B68 01C47023 */  subu  $t6, $t6, $a0
/* 00440B6C 000E7080 */  sll   $t6, $t6, 2
/* 00440B70 04C10003 */  bgez  $a2, .L00440B80
/* 00440B74 00065083 */   sra   $t2, $a2, 2
/* 00440B78 24C10003 */  addiu $at, $a2, 3
/* 00440B7C 00015083 */  sra   $t2, $at, 2
.L00440B80:
/* 00440B80 032E1821 */  addu  $v1, $t9, $t6
/* 00440B84 8C6D0004 */  lw    $t5, 4($v1)
/* 00440B88 000A4080 */  sll   $t0, $t2, 2
/* 00440B8C 010D082A */  slt   $at, $t0, $t5
/* 00440B90 1420001A */  bnez  $at, .L00440BFC
/* 00440B94 24640004 */   addiu $a0, $v1, 4
/* 00440B98 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 00440B9C 8C670000 */  lw    $a3, ($v1)
/* 00440BA0 01002825 */  move  $a1, $t0
/* 00440BA4 24060001 */  li    $a2, 1
/* 00440BA8 AFA00010 */  sw    $zero, 0x10($sp)
/* 00440BAC AFA800BC */  sw    $t0, 0xbc($sp)
/* 00440BB0 AFAA00C0 */  sw    $t2, 0xc0($sp)
/* 00440BB4 0320F809 */  jalr  $t9
/* 00440BB8 AFAB00D8 */   sw    $t3, 0xd8($sp)
/* 00440BBC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00440BC0 8FA800BC */  lw    $t0, 0xbc($sp)
/* 00440BC4 8F8F8B64 */  lw     $t7, %got(currsegmentindex)($gp)
/* 00440BC8 8F988AE0 */  lw     $t8, %got(memory)($gp)
/* 00440BCC 8DEF0000 */  lw    $t7, ($t7)
/* 00440BD0 8F180000 */  lw    $t8, ($t8)
/* 00440BD4 000FC880 */  sll   $t9, $t7, 2
/* 00440BD8 032FC823 */  subu  $t9, $t9, $t7
/* 00440BDC 0019C880 */  sll   $t9, $t9, 2
/* 00440BE0 032FC823 */  subu  $t9, $t9, $t7
/* 00440BE4 0019C880 */  sll   $t9, $t9, 2
/* 00440BE8 03191821 */  addu  $v1, $t8, $t9
/* 00440BEC 8FAA00C0 */  lw    $t2, 0xc0($sp)
/* 00440BF0 8FAB00D8 */  lw    $t3, 0xd8($sp)
/* 00440BF4 93AC00EB */  lbu   $t4, 0xeb($sp)
/* 00440BF8 AC620000 */  sw    $v0, ($v1)
.L00440BFC:
/* 00440BFC 8C6D0000 */  lw    $t5, ($v1)
/* 00440C00 8FAE00F8 */  lw    $t6, 0xf8($sp)
/* 00440C04 2401000D */  li    $at, 13
/* 00440C08 01A87821 */  addu  $t7, $t5, $t0
/* 00440C0C 014B4821 */  addu  $t1, $t2, $t3
/* 00440C10 11810065 */  beq   $t4, $at, .L00440DA8
/* 00440C14 ADEE0000 */   sw    $t6, ($t7)
/* 00440C18 8C780004 */  lw    $t8, 4($v1)
/* 00440C1C 00094080 */  sll   $t0, $t1, 2
/* 00440C20 0118082A */  slt   $at, $t0, $t8
/* 00440C24 1420001A */  bnez  $at, .L00440C90
/* 00440C28 24640004 */   addiu $a0, $v1, 4
/* 00440C2C 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 00440C30 8C670000 */  lw    $a3, ($v1)
/* 00440C34 01002825 */  move  $a1, $t0
/* 00440C38 24060001 */  li    $a2, 1
/* 00440C3C AFA00010 */  sw    $zero, 0x10($sp)
/* 00440C40 AFA800C4 */  sw    $t0, 0xc4($sp)
/* 00440C44 AFA900DC */  sw    $t1, 0xdc($sp)
/* 00440C48 0320F809 */  jalr  $t9
/* 00440C4C AFAB00D8 */   sw    $t3, 0xd8($sp)
/* 00440C50 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00440C54 8FA800C4 */  lw    $t0, 0xc4($sp)
/* 00440C58 8F8D8B64 */  lw     $t5, %got(currsegmentindex)($gp)
/* 00440C5C 8F998AE0 */  lw     $t9, %got(memory)($gp)
/* 00440C60 8DAD0000 */  lw    $t5, ($t5)
/* 00440C64 8F390000 */  lw    $t9, ($t9)
/* 00440C68 000D7080 */  sll   $t6, $t5, 2
/* 00440C6C 01CD7023 */  subu  $t6, $t6, $t5
/* 00440C70 000E7080 */  sll   $t6, $t6, 2
/* 00440C74 01CD7023 */  subu  $t6, $t6, $t5
/* 00440C78 000E7080 */  sll   $t6, $t6, 2
/* 00440C7C 032E1821 */  addu  $v1, $t9, $t6
/* 00440C80 8FA900DC */  lw    $t1, 0xdc($sp)
/* 00440C84 8FAB00D8 */  lw    $t3, 0xd8($sp)
/* 00440C88 93AC00EB */  lbu   $t4, 0xeb($sp)
/* 00440C8C AC620000 */  sw    $v0, ($v1)
.L00440C90:
/* 00440C90 8C780000 */  lw    $t8, ($v1)
/* 00440C94 8FAF00FC */  lw    $t7, 0xfc($sp)
/* 00440C98 2401000B */  li    $at, 11
/* 00440C9C 03086821 */  addu  $t5, $t8, $t0
/* 00440CA0 012B4821 */  addu  $t1, $t1, $t3
/* 00440CA4 11810040 */  beq   $t4, $at, .L00440DA8
/* 00440CA8 ADAF0000 */   sw    $t7, ($t5)
/* 00440CAC 8C790004 */  lw    $t9, 4($v1)
/* 00440CB0 00094080 */  sll   $t0, $t1, 2
/* 00440CB4 0119082A */  slt   $at, $t0, $t9
/* 00440CB8 14200019 */  bnez  $at, .L00440D20
/* 00440CBC 24640004 */   addiu $a0, $v1, 4
/* 00440CC0 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 00440CC4 8C670000 */  lw    $a3, ($v1)
/* 00440CC8 01002825 */  move  $a1, $t0
/* 00440CCC 24060001 */  li    $a2, 1
/* 00440CD0 AFA00010 */  sw    $zero, 0x10($sp)
/* 00440CD4 AFA800C4 */  sw    $t0, 0xc4($sp)
/* 00440CD8 AFA900DC */  sw    $t1, 0xdc($sp)
/* 00440CDC 0320F809 */  jalr  $t9
/* 00440CE0 AFAB00D8 */   sw    $t3, 0xd8($sp)
/* 00440CE4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00440CE8 8FA800C4 */  lw    $t0, 0xc4($sp)
/* 00440CEC 8F988B64 */  lw     $t8, %got(currsegmentindex)($gp)
/* 00440CF0 8F8E8AE0 */  lw     $t6, %got(memory)($gp)
/* 00440CF4 8F180000 */  lw    $t8, ($t8)
/* 00440CF8 8DCE0000 */  lw    $t6, ($t6)
/* 00440CFC 00187880 */  sll   $t7, $t8, 2
/* 00440D00 01F87823 */  subu  $t7, $t7, $t8
/* 00440D04 000F7880 */  sll   $t7, $t7, 2
/* 00440D08 01F87823 */  subu  $t7, $t7, $t8
/* 00440D0C 000F7880 */  sll   $t7, $t7, 2
/* 00440D10 01CF1821 */  addu  $v1, $t6, $t7
/* 00440D14 8FA900DC */  lw    $t1, 0xdc($sp)
/* 00440D18 8FAB00D8 */  lw    $t3, 0xd8($sp)
/* 00440D1C AC620000 */  sw    $v0, ($v1)
.L00440D20:
/* 00440D20 8C790000 */  lw    $t9, ($v1)
/* 00440D24 8FAD0100 */  lw    $t5, 0x100($sp)
/* 00440D28 0328C021 */  addu  $t8, $t9, $t0
/* 00440D2C AF0D0000 */  sw    $t5, ($t8)
/* 00440D30 8C6E0004 */  lw    $t6, 4($v1)
/* 00440D34 012B4821 */  addu  $t1, $t1, $t3
/* 00440D38 00094080 */  sll   $t0, $t1, 2
/* 00440D3C 010E082A */  slt   $at, $t0, $t6
/* 00440D40 14200015 */  bnez  $at, .L00440D98
/* 00440D44 24640004 */   addiu $a0, $v1, 4
/* 00440D48 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 00440D4C 8C670000 */  lw    $a3, ($v1)
/* 00440D50 01002825 */  move  $a1, $t0
/* 00440D54 24060001 */  li    $a2, 1
/* 00440D58 AFA00010 */  sw    $zero, 0x10($sp)
/* 00440D5C 0320F809 */  jalr  $t9
/* 00440D60 AFA800C4 */   sw    $t0, 0xc4($sp)
/* 00440D64 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00440D68 8FA800C4 */  lw    $t0, 0xc4($sp)
/* 00440D6C 8F998B64 */  lw     $t9, %got(currsegmentindex)($gp)
/* 00440D70 8F8F8AE0 */  lw     $t7, %got(memory)($gp)
/* 00440D74 8F390000 */  lw    $t9, ($t9)
/* 00440D78 8DEF0000 */  lw    $t7, ($t7)
/* 00440D7C 00196880 */  sll   $t5, $t9, 2
/* 00440D80 01B96823 */  subu  $t5, $t5, $t9
/* 00440D84 000D6880 */  sll   $t5, $t5, 2
/* 00440D88 01B96823 */  subu  $t5, $t5, $t9
/* 00440D8C 000D6880 */  sll   $t5, $t5, 2
/* 00440D90 01ED1821 */  addu  $v1, $t7, $t5
/* 00440D94 AC620000 */  sw    $v0, ($v1)
.L00440D98:
/* 00440D98 8C6E0000 */  lw    $t6, ($v1)
/* 00440D9C 8FB80104 */  lw    $t8, 0x104($sp)
/* 00440DA0 01C8C821 */  addu  $t9, $t6, $t0
/* 00440DA4 AF380000 */  sw    $t8, ($t9)
.L00440DA8:
/* 00440DA8 8FBF00B4 */  lw    $ra, 0xb4($sp)
.L00440DAC:
/* 00440DAC 27BD00E8 */  addiu $sp, $sp, 0xe8
/* 00440DB0 03E00008 */  jr    $ra
/* 00440DB4 00000000 */   nop   

    .type emit_const, @function
    .size emit_const, .-emit_const
    .end emit_const

    .type func_00440DB8, @function
func_00440DB8:
    # 00440F24 func_00440F24
    # 00441218 func_00441218
/* 00440DB8 8C44FFF8 */  lw    $a0, -8($v0)
/* 00440DBC 8C4E0004 */  lw    $t6, 4($v0)
/* 00440DC0 2401002B */  li    $at, 43
/* 00440DC4 01C47821 */  addu  $t7, $t6, $a0
/* 00440DC8 91E5FFFF */  lbu   $a1, -1($t7)
/* 00440DCC 00401825 */  move  $v1, $v0
/* 00440DD0 14A10003 */  bne   $a1, $at, .L00440DE0
/* 00440DD4 24980001 */   addiu $t8, $a0, 1
/* 00440DD8 10000007 */  b     .L00440DF8
/* 00440DDC AC58FFF8 */   sw    $t8, -8($v0)
.L00440DE0:
/* 00440DE0 2401002D */  li    $at, 45
/* 00440DE4 14A10004 */  bne   $a1, $at, .L00440DF8
/* 00440DE8 24020001 */   li    $v0, 1
/* 00440DEC 24990001 */  addiu $t9, $a0, 1
/* 00440DF0 03E00008 */  jr    $ra
/* 00440DF4 AC79FFF8 */   sw    $t9, -8($v1)

.L00440DF8:
/* 00440DF8 00001025 */  move  $v0, $zero
/* 00440DFC 03E00008 */  jr    $ra
/* 00440E00 00000000 */   nop   

    .type func_00440E04, @function
func_00440E04:
    # 00440E30 func_00440E30
    # 00440F24 func_00440F24
/* 00440E04 2C810061 */  sltiu $at, $a0, 0x61
/* 00440E08 14200006 */  bnez  $at, .L00440E24
/* 00440E0C AFA40000 */   sw    $a0, ($sp)
/* 00440E10 2C810067 */  sltiu $at, $a0, 0x67
/* 00440E14 10200004 */  beqz  $at, .L00440E28
/* 00440E18 2483FFD0 */   addiu $v1, $a0, -0x30
/* 00440E1C 03E00008 */  jr    $ra
/* 00440E20 2482FFA9 */   addiu $v0, $a0, -0x57

.L00440E24:
/* 00440E24 2483FFD0 */  addiu $v1, $a0, -0x30
.L00440E28:
/* 00440E28 03E00008 */  jr    $ra
/* 00440E2C 00601025 */   move  $v0, $v1

    .type func_00440E30, @function
func_00440E30:
    # 00441218 func_00441218
/* 00440E30 3C1C0FBF */  .cpload $t9
/* 00440E34 279C9430 */  
/* 00440E38 0399E021 */  
/* 00440E3C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00440E40 8F998024 */  lw    $t9, %got(func_00440E04)($gp)
/* 00440E44 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00440E48 27390E04 */  addiu $t9, %lo(func_00440E04) # addiu $t9, $t9, 0xe04
/* 00440E4C AFBC0018 */  sw    $gp, 0x18($sp)
/* 00440E50 AFA40028 */  sw    $a0, 0x28($sp)
/* 00440E54 AFA5002C */  sw    $a1, 0x2c($sp)
/* 00440E58 0320F809 */  jalr  $t9
/* 00440E5C AFA20024 */   sw    $v0, 0x24($sp)
/* 00440E60 8FA4002C */  lw    $a0, 0x2c($sp)
/* 00440E64 8FAE0024 */  lw    $t6, 0x24($sp)
/* 00440E68 30890007 */  andi  $t1, $a0, 7
/* 00440E6C 00095023 */  negu  $t2, $t1
/* 00440E70 25CFFFD8 */  addiu $t7, $t6, -0x28
/* 00440E74 000A5880 */  sll   $t3, $t2, 2
/* 00440E78 256C001C */  addiu $t4, $t3, 0x1c
/* 00440E7C 01826804 */  sllv  $t5, $v0, $t4
/* 00440E80 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00440E84 04810003 */  bgez  $a0, .L00440E94
/* 00440E88 0004C0C3 */   sra   $t8, $a0, 3
/* 00440E8C 24810007 */  addiu $at, $a0, 7
/* 00440E90 0001C0C3 */  sra   $t8, $at, 3
.L00440E94:
/* 00440E94 0018C880 */  sll   $t9, $t8, 2
/* 00440E98 01F91821 */  addu  $v1, $t7, $t9
/* 00440E9C 8C680000 */  lw    $t0, ($v1)
/* 00440EA0 00000000 */  nop   
/* 00440EA4 010D7025 */  or    $t6, $t0, $t5
/* 00440EA8 AC6E0000 */  sw    $t6, ($v1)
/* 00440EAC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00440EB0 27BD0028 */  addiu $sp, $sp, 0x28
/* 00440EB4 03E00008 */  jr    $ra
/* 00440EB8 00000000 */   nop   

    .type func_00440EBC, @function
func_00440EBC:
    # 00441218 func_00441218
/* 00440EBC AFA40000 */  sw    $a0, ($sp)
/* 00440EC0 8C45FFD8 */  lw    $a1, -0x28($v0)
/* 00440EC4 3C011000 */  lui   $at, 0x1000
/* 00440EC8 00A17024 */  and   $t6, $a1, $at
/* 00440ECC 2DCF0001 */  sltiu $t7, $t6, 1
/* 00440ED0 2401000D */  li    $at, 13
/* 00440ED4 24030003 */  li    $v1, 3
/* 00440ED8 10810004 */  beq   $a0, $at, .L00440EEC
/* 00440EDC A04FFFD7 */   sb    $t7, -0x29($v0)
/* 00440EE0 2401000B */  li    $at, 11
/* 00440EE4 14810002 */  bne   $a0, $at, .L00440EF0
/* 00440EE8 00000000 */   nop   
.L00440EEC:
/* 00440EEC 24030004 */  li    $v1, 4
.L00440EF0:
/* 00440EF0 8C44FFDC */  lw    $a0, -0x24($v0)
/* 00440EF4 24180020 */  li    $t8, 32
/* 00440EF8 8C4BFFE0 */  lw    $t3, -0x20($v0)
/* 00440EFC 03033023 */  subu  $a2, $t8, $v1
/* 00440F00 0065C804 */  sllv  $t9, $a1, $v1
/* 00440F04 00C44006 */  srlv  $t0, $a0, $a2
/* 00440F08 00645004 */  sllv  $t2, $a0, $v1
/* 00440F0C 00CB6006 */  srlv  $t4, $t3, $a2
/* 00440F10 03284825 */  or    $t1, $t9, $t0
/* 00440F14 014C6825 */  or    $t5, $t2, $t4
/* 00440F18 AC49FFD8 */  sw    $t1, -0x28($v0)
/* 00440F1C 03E00008 */  jr    $ra
/* 00440F20 AC4DFFDC */   sw    $t5, -0x24($v0)

    .type func_00440F24, @function
func_00440F24:
    # 00441218 func_00441218
/* 00440F24 3C1C0FBF */  .cpload $t9
/* 00440F28 279C933C */  
/* 00440F2C 0399E021 */  
/* 00440F30 27BDFF78 */  addiu $sp, $sp, -0x88
/* 00440F34 AFBF0074 */  sw    $ra, 0x74($sp)
/* 00440F38 AFBC0070 */  sw    $gp, 0x70($sp)
/* 00440F3C AFB4006C */  sw    $s4, 0x6c($sp)
/* 00440F40 AFB30068 */  sw    $s3, 0x68($sp)
/* 00440F44 AFB20064 */  sw    $s2, 0x64($sp)
/* 00440F48 AFB10060 */  sw    $s1, 0x60($sp)
/* 00440F4C AFB0005C */  sw    $s0, 0x5c($sp)
/* 00440F50 AFA40088 */  sw    $a0, 0x88($sp)
/* 00440F54 ACA00000 */  sw    $zero, ($a1)
/* 00440F58 8C4E0004 */  lw    $t6, 4($v0)
/* 00440F5C 8C50FFF8 */  lw    $s0, -8($v0)
/* 00440F60 24010068 */  li    $at, 104
/* 00440F64 01D01821 */  addu  $v1, $t6, $s0
/* 00440F68 906FFFFF */  lbu   $t7, -1($v1)
/* 00440F6C 00409025 */  move  $s2, $v0
/* 00440F70 00A09825 */  move  $s3, $a1
/* 00440F74 15E1004B */  bne   $t7, $at, .L004410A4
/* 00440F78 2414000A */   li    $s4, 10
/* 00440F7C 26180001 */  addiu $t8, $s0, 1
/* 00440F80 AC58FFF8 */  sw    $t8, -8($v0)
/* 00440F84 90790000 */  lbu   $t9, ($v1)
/* 00440F88 24010030 */  li    $at, 48
/* 00440F8C 26100001 */  addiu $s0, $s0, 1
/* 00440F90 1721000A */  bne   $t9, $at, .L00440FBC
/* 00440F94 24630001 */   addiu $v1, $v1, 1
/* 00440F98 90680000 */  lbu   $t0, ($v1)
/* 00440F9C 24010078 */  li    $at, 120
/* 00440FA0 15010006 */  bne   $t0, $at, .L00440FBC
/* 00440FA4 26090002 */   addiu $t1, $s0, 2
/* 00440FA8 24140010 */  li    $s4, 16
/* 00440FAC AC49FFF8 */  sw    $t1, -8($v0)
/* 00440FB0 26100002 */  addiu $s0, $s0, 2
/* 00440FB4 1000000B */  b     .L00440FE4
/* 00440FB8 24630002 */   addiu $v1, $v1, 2
.L00440FBC:
/* 00440FBC 8F998024 */  lw    $t9, %got(func_00440DB8)($gp)
/* 00440FC0 02401025 */  move  $v0, $s2
/* 00440FC4 27390DB8 */  addiu $t9, %lo(func_00440DB8) # addiu $t9, $t9, 0xdb8
/* 00440FC8 0320F809 */  jalr  $t9
/* 00440FCC 00000000 */   nop   
/* 00440FD0 8E50FFF8 */  lw    $s0, -8($s2)
/* 00440FD4 8E4A0004 */  lw    $t2, 4($s2)
/* 00440FD8 8FBC0070 */  lw    $gp, 0x70($sp)
/* 00440FDC AE42FFE8 */  sw    $v0, -0x18($s2)
/* 00440FE0 01501821 */  addu  $v1, $t2, $s0
.L00440FE4:
/* 00440FE4 9071FFFF */  lbu   $s1, -1($v1)
/* 00440FE8 00000000 */  nop   
/* 00440FEC 1220002E */  beqz  $s1, .L004410A8
/* 00440FF0 93AA008B */   lbu   $t2, 0x8b($sp)
.L00440FF4:
/* 00440FF4 8F998024 */  lw    $t9, %got(func_00440E04)($gp)
/* 00440FF8 02202025 */  move  $a0, $s1
/* 00440FFC 27390E04 */  addiu $t9, %lo(func_00440E04) # addiu $t9, $t9, 0xe04
/* 00441000 0320F809 */  jalr  $t9
/* 00441004 02401025 */   move  $v0, $s2
/* 00441008 8E6B0000 */  lw    $t3, ($s3)
/* 0044100C 8FBC0070 */  lw    $gp, 0x70($sp)
/* 00441010 01740019 */  multu $t3, $s4
/* 00441014 260E0001 */  addiu $t6, $s0, 1
/* 00441018 26100001 */  addiu $s0, $s0, 1
/* 0044101C 00006012 */  mflo  $t4
/* 00441020 01826821 */  addu  $t5, $t4, $v0
/* 00441024 AE6D0000 */  sw    $t5, ($s3)
/* 00441028 8E4F0004 */  lw    $t7, 4($s2)
/* 0044102C AE4EFFF8 */  sw    $t6, -8($s2)
/* 00441030 01F0C021 */  addu  $t8, $t7, $s0
/* 00441034 9311FFFF */  lbu   $s1, -1($t8)
/* 00441038 00000000 */  nop   
/* 0044103C 1620FFED */  bnez  $s1, .L00440FF4
/* 00441040 00000000 */   nop   
/* 00441044 10000018 */  b     .L004410A8
/* 00441048 93AA008B */   lbu   $t2, 0x8b($sp)
.L0044104C:
/* 0044104C 241900FF */  li    $t9, 255
/* 00441050 AFB90078 */  sw    $t9, 0x78($sp)
/* 00441054 1000002A */  b     .L00441100
/* 00441058 2403FF81 */   li    $v1, -127
.L0044105C:
/* 0044105C 240807FF */  li    $t0, 2047
/* 00441060 AFA80078 */  sw    $t0, 0x78($sp)
/* 00441064 10000026 */  b     .L00441100
/* 00441068 2403FC01 */   li    $v1, -1023
.L0044106C:
/* 0044106C AFA90078 */  sw    $t1, 0x78($sp)
/* 00441070 10000023 */  b     .L00441100
/* 00441074 2403C001 */   li    $v1, -16383
.L00441078:
/* 00441078 8F868070 */  lw    $a2, %got(RO_10018A4C)($gp)
/* 0044107C 8F99868C */  lw    $t9, %call16(caseerror)($gp)
/* 00441080 24040001 */  li    $a0, 1
/* 00441084 24050171 */  li    $a1, 369
/* 00441088 2407000A */  li    $a3, 10
/* 0044108C 0320F809 */  jalr  $t9
/* 00441090 24C68A4C */   addiu $a2, %lo(RO_10018A4C) # addiu $a2, $a2, -0x75b4
/* 00441094 8FBC0070 */  lw    $gp, 0x70($sp)
/* 00441098 8FA3007C */  lw    $v1, 0x7c($sp)
/* 0044109C 10000019 */  b     .L00441104
/* 004410A0 8E4DFFE8 */   lw    $t5, -0x18($s2)
.L004410A4:
/* 004410A4 93AA008B */  lbu   $t2, 0x8b($sp)
.L004410A8:
/* 004410A8 00000000 */  nop   
/* 004410AC 2D41000E */  sltiu $at, $t2, 0xe
/* 004410B0 14200005 */  bnez  $at, .L004410C8
/* 004410B4 2401002C */   li    $at, 44
/* 004410B8 1141FFEC */  beq   $t2, $at, .L0044106C
/* 004410BC 24097FFF */   li    $t1, 32767
/* 004410C0 1000FFED */  b     .L00441078
/* 004410C4 00000000 */   nop   
.L004410C8:
/* 004410C8 93AB008B */  lbu   $t3, 0x8b($sp)
/* 004410CC 00000000 */  nop   
/* 004410D0 256CFFF5 */  addiu $t4, $t3, -0xb
/* 004410D4 2D810003 */  sltiu $at, $t4, 3
/* 004410D8 1020FFE7 */  beqz  $at, .L00441078
/* 004410DC 00000000 */   nop   
/* 004410E0 8F818070 */  lw    $at, %got(jtbl_10018A58)($gp)
/* 004410E4 000C6080 */  sll   $t4, $t4, 2
/* 004410E8 002C0821 */  addu  $at, $at, $t4
/* 004410EC 8C2C8A58 */  lw    $t4, %lo(jtbl_10018A58)($at)
/* 004410F0 00000000 */  nop   
/* 004410F4 019C6021 */  addu  $t4, $t4, $gp
/* 004410F8 01800008 */  jr    $t4
/* 004410FC 00000000 */   nop   
.L00441100:
/* 00441100 8E4DFFE8 */  lw    $t5, -0x18($s2)
.L00441104:
/* 00441104 24010010 */  li    $at, 16
/* 00441108 11A00005 */  beqz  $t5, .L00441120
/* 0044110C 00000000 */   nop   
/* 00441110 8E6E0000 */  lw    $t6, ($s3)
/* 00441114 00000000 */  nop   
/* 00441118 000E7823 */  negu  $t7, $t6
/* 0044111C AE6F0000 */  sw    $t7, ($s3)
.L00441120:
/* 00441120 16810002 */  bne   $s4, $at, .L0044112C
/* 00441124 00000000 */   nop   
/* 00441128 00001825 */  move  $v1, $zero
.L0044112C:
/* 0044112C 8E780000 */  lw    $t8, ($s3)
/* 00441130 00000000 */  nop   
/* 00441134 0303C823 */  subu  $t9, $t8, $v1
/* 00441138 07200006 */  bltz  $t9, .L00441154
/* 0044113C AE790000 */   sw    $t9, ($s3)
/* 00441140 8FA80078 */  lw    $t0, 0x78($sp)
/* 00441144 00000000 */  nop   
/* 00441148 0119082A */  slt   $at, $t0, $t9
/* 0044114C 1020002B */  beqz  $at, .L004411FC
/* 00441150 8FBF0074 */   lw    $ra, 0x74($sp)
.L00441154:
/* 00441154 8F898070 */  lw    $t1, %got(RO_100189FC)($gp)
/* 00441158 03A06025 */  move  $t4, $sp
/* 0044115C 252989FC */  addiu $t1, %lo(RO_100189FC) # addiu $t1, $t1, -0x7604
/* 00441160 252B0048 */  addiu $t3, $t1, 0x48
.L00441164:
/* 00441164 89210000 */  lwl   $at, ($t1)
/* 00441168 99210003 */  lwr   $at, 3($t1)
/* 0044116C 2529000C */  addiu $t1, $t1, 0xc
/* 00441170 A9810000 */  swl   $at, ($t4)
/* 00441174 B9810003 */  swr   $at, 3($t4)
/* 00441178 8921FFF8 */  lwl   $at, -8($t1)
/* 0044117C 9921FFFB */  lwr   $at, -5($t1)
/* 00441180 258C000C */  addiu $t4, $t4, 0xc
/* 00441184 A981FFF8 */  swl   $at, -8($t4)
/* 00441188 B981FFFB */  swr   $at, -5($t4)
/* 0044118C 8921FFFC */  lwl   $at, -4($t1)
/* 00441190 9921FFFF */  lwr   $at, -1($t1)
/* 00441194 00000000 */  nop   
/* 00441198 A981FFFC */  swl   $at, -4($t4)
/* 0044119C 152BFFF1 */  bne   $t1, $t3, .L00441164
/* 004411A0 B981FFFF */   swr   $at, -1($t4)
/* 004411A4 89210000 */  lwl   $at, ($t1)
/* 004411A8 99210003 */  lwr   $at, 3($t1)
/* 004411AC 240F0001 */  li    $t7, 1
/* 004411B0 A9810000 */  swl   $at, ($t4)
/* 004411B4 B9810003 */  swr   $at, 3($t4)
/* 004411B8 892B0004 */  lwl   $t3, 4($t1)
/* 004411BC 992B0007 */  lwr   $t3, 7($t1)
/* 004411C0 00000000 */  nop   
/* 004411C4 A98B0004 */  swl   $t3, 4($t4)
/* 004411C8 B98B0007 */  swr   $t3, 7($t4)
/* 004411CC 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 004411D0 8E410004 */  lw    $at, 4($s2)
/* 004411D4 8FA7000C */  lw    $a3, 0xc($sp)
/* 004411D8 8FA60008 */  lw    $a2, 8($sp)
/* 004411DC 8FA50004 */  lw    $a1, 4($sp)
/* 004411E0 8FA40000 */  lw    $a0, ($sp)
/* 004411E4 AFAF0054 */  sw    $t7, 0x54($sp)
/* 004411E8 0320F809 */  jalr  $t9
/* 004411EC AFA10050 */   sw    $at, 0x50($sp)
/* 004411F0 8FBC0070 */  lw    $gp, 0x70($sp)
/* 004411F4 00000000 */  nop   
/* 004411F8 8FBF0074 */  lw    $ra, 0x74($sp)
.L004411FC:
/* 004411FC 8FB0005C */  lw    $s0, 0x5c($sp)
/* 00441200 8FB10060 */  lw    $s1, 0x60($sp)
/* 00441204 8FB20064 */  lw    $s2, 0x64($sp)
/* 00441208 8FB30068 */  lw    $s3, 0x68($sp)
/* 0044120C 8FB4006C */  lw    $s4, 0x6c($sp)
/* 00441210 03E00008 */  jr    $ra
/* 00441214 27BD0088 */   addiu $sp, $sp, 0x88

    .type func_00441218, @function
func_00441218:
    # 00441BC8 string_to_fpoverlay
/* 00441218 3C1C0FBF */  .cpload $t9
/* 0044121C 279C9048 */  
/* 00441220 0399E021 */  
/* 00441224 27BDFF50 */  addiu $sp, $sp, -0xb0
/* 00441228 AFBF0074 */  sw    $ra, 0x74($sp)
/* 0044122C AFBC0070 */  sw    $gp, 0x70($sp)
/* 00441230 AFB4006C */  sw    $s4, 0x6c($sp)
/* 00441234 AFB30068 */  sw    $s3, 0x68($sp)
/* 00441238 AFB20064 */  sw    $s2, 0x64($sp)
/* 0044123C AFB10060 */  sw    $s1, 0x60($sp)
/* 00441240 AFB0005C */  sw    $s0, 0x5c($sp)
/* 00441244 AFA400B0 */  sw    $a0, 0xb0($sp)
/* 00441248 AFA500B4 */  sw    $a1, 0xb4($sp)
/* 0044124C AFA600B8 */  sw    $a2, 0xb8($sp)
/* 00441250 27A20088 */  addiu $v0, $sp, 0x88
/* 00441254 27A30094 */  addiu $v1, $sp, 0x94
.L00441258:
/* 00441258 24420004 */  addiu $v0, $v0, 4
/* 0044125C 1443FFFE */  bne   $v0, $v1, .L00441258
/* 00441260 AC40FFFC */   sw    $zero, -4($v0)
/* 00441264 8F998024 */  lw    $t9, %got(func_00440DB8)($gp)
/* 00441268 27B400B0 */  addiu $s4, $sp, 0xb0
/* 0044126C 24110001 */  li    $s1, 1
/* 00441270 27390DB8 */  addiu $t9, %lo(func_00440DB8) # addiu $t9, $t9, 0xdb8
/* 00441274 AFA00098 */  sw    $zero, 0x98($sp)
/* 00441278 AFA000A0 */  sw    $zero, 0xa0($sp)
/* 0044127C 00009025 */  move  $s2, $zero
/* 00441280 00008025 */  move  $s0, $zero
/* 00441284 AFB100A8 */  sw    $s1, 0xa8($sp)
/* 00441288 0320F809 */  jalr  $t9
/* 0044128C 02801025 */   move  $v0, $s4
/* 00441290 8FB100A8 */  lw    $s1, 0xa8($sp)
/* 00441294 8FAE00B4 */  lw    $t6, 0xb4($sp)
/* 00441298 26310002 */  addiu $s1, $s1, 2
/* 0044129C 01D11821 */  addu  $v1, $t6, $s1
/* 004412A0 9064FFFF */  lbu   $a0, -1($v1)
/* 004412A4 8FBC0070 */  lw    $gp, 0x70($sp)
/* 004412A8 2401002E */  li    $at, 46
/* 004412AC 1081001D */  beq   $a0, $at, .L00441324
/* 004412B0 AFA2009C */   sw    $v0, 0x9c($sp)
/* 004412B4 24130068 */  li    $s3, 104
/* 004412B8 1264001B */  beq   $s3, $a0, .L00441328
/* 004412BC 2A410005 */   slti  $at, $s2, 5
/* 004412C0 10800018 */  beqz  $a0, .L00441324
/* 004412C4 24010030 */   li    $at, 48
.L004412C8:
/* 004412C8 1081000D */  beq   $a0, $at, .L00441300
/* 004412CC 2A010018 */   slti  $at, $s0, 0x18
/* 004412D0 10200009 */  beqz  $at, .L004412F8
/* 004412D4 00000000 */   nop   
/* 004412D8 8F998024 */  lw    $t9, %got(func_00440E30)($gp)
/* 004412DC 02002825 */  move  $a1, $s0
/* 004412E0 27390E30 */  addiu $t9, %lo(func_00440E30) # addiu $t9, $t9, 0xe30
/* 004412E4 0320F809 */  jalr  $t9
/* 004412E8 02801025 */   move  $v0, $s4
/* 004412EC 8FAF00B4 */  lw    $t7, 0xb4($sp)
/* 004412F0 8FBC0070 */  lw    $gp, 0x70($sp)
/* 004412F4 01F11821 */  addu  $v1, $t7, $s1
.L004412F8:
/* 004412F8 26100001 */  addiu $s0, $s0, 1
/* 004412FC 26520004 */  addiu $s2, $s2, 4
.L00441300:
/* 00441300 90640000 */  lbu   $a0, ($v1)
/* 00441304 2401002E */  li    $at, 46
/* 00441308 26310001 */  addiu $s1, $s1, 1
/* 0044130C 10810005 */  beq   $a0, $at, .L00441324
/* 00441310 24630001 */   addiu $v1, $v1, 1
/* 00441314 12640004 */  beq   $s3, $a0, .L00441328
/* 00441318 2A410005 */   slti  $at, $s2, 5
/* 0044131C 1480FFEA */  bnez  $a0, .L004412C8
/* 00441320 24010030 */   li    $at, 48
.L00441324:
/* 00441324 2A410005 */  slti  $at, $s2, 5
.L00441328:
/* 00441328 10200008 */  beqz  $at, .L0044134C
/* 0044132C 24130068 */   li    $s3, 104
/* 00441330 24010004 */  li    $at, 4
/* 00441334 16410031 */  bne   $s2, $at, .L004413FC
/* 00441338 00000000 */   nop   
/* 0044133C 9078FFFE */  lbu   $t8, -2($v1)
/* 00441340 24010031 */  li    $at, 49
/* 00441344 1301002D */  beq   $t8, $at, .L004413FC
/* 00441348 00000000 */   nop   
.L0044134C:
/* 0044134C 8F998070 */  lw    $t9, %got(RO_10018AB4)($gp)
/* 00441350 03A05025 */  move  $t2, $sp
/* 00441354 27398AB4 */  addiu $t9, %lo(RO_10018AB4) # addiu $t9, $t9, -0x754c
/* 00441358 27290048 */  addiu $t1, $t9, 0x48
.L0044135C:
/* 0044135C 8B210000 */  lwl   $at, ($t9)
/* 00441360 9B210003 */  lwr   $at, 3($t9)
/* 00441364 2739000C */  addiu $t9, $t9, 0xc
/* 00441368 A9410000 */  swl   $at, ($t2)
/* 0044136C B9410003 */  swr   $at, 3($t2)
/* 00441370 8B21FFF8 */  lwl   $at, -8($t9)
/* 00441374 9B21FFFB */  lwr   $at, -5($t9)
/* 00441378 254A000C */  addiu $t2, $t2, 0xc
/* 0044137C A941FFF8 */  swl   $at, -8($t2)
/* 00441380 B941FFFB */  swr   $at, -5($t2)
/* 00441384 8B21FFFC */  lwl   $at, -4($t9)
/* 00441388 9B21FFFF */  lwr   $at, -1($t9)
/* 0044138C 00000000 */  nop   
/* 00441390 A941FFFC */  swl   $at, -4($t2)
/* 00441394 1729FFF1 */  bne   $t9, $t1, .L0044135C
/* 00441398 B941FFFF */   swr   $at, -1($t2)
/* 0044139C 8B210000 */  lwl   $at, ($t9)
/* 004413A0 9B210003 */  lwr   $at, 3($t9)
/* 004413A4 240C0001 */  li    $t4, 1
/* 004413A8 A9410000 */  swl   $at, ($t2)
/* 004413AC B9410003 */  swr   $at, 3($t2)
/* 004413B0 8B290004 */  lwl   $t1, 4($t9)
/* 004413B4 9B290007 */  lwr   $t1, 7($t9)
/* 004413B8 00000000 */  nop   
/* 004413BC A9490004 */  swl   $t1, 4($t2)
/* 004413C0 B9490007 */  swr   $t1, 7($t2)
/* 004413C4 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 004413C8 8FAB00B4 */  lw    $t3, 0xb4($sp)
/* 004413CC 8FA7000C */  lw    $a3, 0xc($sp)
/* 004413D0 8FA60008 */  lw    $a2, 8($sp)
/* 004413D4 8FA50004 */  lw    $a1, 4($sp)
/* 004413D8 8FA40000 */  lw    $a0, ($sp)
/* 004413DC AFA30080 */  sw    $v1, 0x80($sp)
/* 004413E0 AFAC0054 */  sw    $t4, 0x54($sp)
/* 004413E4 0320F809 */  jalr  $t9
/* 004413E8 AFAB0050 */   sw    $t3, 0x50($sp)
/* 004413EC 8FA30080 */  lw    $v1, 0x80($sp)
/* 004413F0 8FBC0070 */  lw    $gp, 0x70($sp)
/* 004413F4 9064FFFF */  lbu   $a0, -1($v1)
/* 004413F8 00000000 */  nop   
.L004413FC:
/* 004413FC 16400002 */  bnez  $s2, .L00441408
/* 00441400 2401002E */   li    $at, 46
/* 00441404 26100001 */  addiu $s0, $s0, 1
.L00441408:
/* 00441408 1481001C */  bne   $a0, $at, .L0044147C
/* 0044140C AFB100A8 */   sw    $s1, 0xa8($sp)
/* 00441410 90640000 */  lbu   $a0, ($v1)
/* 00441414 26310001 */  addiu $s1, $s1, 1
/* 00441418 24630001 */  addiu $v1, $v1, 1
/* 0044141C 12640017 */  beq   $s3, $a0, .L0044147C
/* 00441420 AFB100A8 */   sw    $s1, 0xa8($sp)
/* 00441424 10800015 */  beqz  $a0, .L0044147C
/* 00441428 AFB100A8 */   sw    $s1, 0xa8($sp)
/* 0044142C 2A010018 */  slti  $at, $s0, 0x18
.L00441430:
/* 00441430 10200009 */  beqz  $at, .L00441458
/* 00441434 00000000 */   nop   
/* 00441438 8F998024 */  lw    $t9, %got(func_00440E30)($gp)
/* 0044143C 02002825 */  move  $a1, $s0
/* 00441440 27390E30 */  addiu $t9, %lo(func_00440E30) # addiu $t9, $t9, 0xe30
/* 00441444 0320F809 */  jalr  $t9
/* 00441448 02801025 */   move  $v0, $s4
/* 0044144C 8FAD00B4 */  lw    $t5, 0xb4($sp)
/* 00441450 8FBC0070 */  lw    $gp, 0x70($sp)
/* 00441454 01B11821 */  addu  $v1, $t5, $s1
.L00441458:
/* 00441458 90640000 */  lbu   $a0, ($v1)
/* 0044145C 26310001 */  addiu $s1, $s1, 1
/* 00441460 26100001 */  addiu $s0, $s0, 1
/* 00441464 AFB100A8 */  sw    $s1, 0xa8($sp)
/* 00441468 12640004 */  beq   $s3, $a0, .L0044147C
/* 0044146C 24630001 */   addiu $v1, $v1, 1
/* 00441470 1480FFEF */  bnez  $a0, .L00441430
/* 00441474 2A010018 */   slti  $at, $s0, 0x18
/* 00441478 AFB100A8 */  sw    $s1, 0xa8($sp)
.L0044147C:
/* 0044147C 8F998024 */  lw    $t9, %got(func_00440EBC)($gp)
/* 00441480 93A400B3 */  lbu   $a0, 0xb3($sp)
/* 00441484 27390EBC */  addiu $t9, %lo(func_00440EBC) # addiu $t9, $t9, 0xebc
/* 00441488 0320F809 */  jalr  $t9
/* 0044148C 02801025 */   move  $v0, $s4
/* 00441490 8FBC0070 */  lw    $gp, 0x70($sp)
/* 00441494 93A400B3 */  lbu   $a0, 0xb3($sp)
/* 00441498 8F998024 */  lw    $t9, %got(func_00440F24)($gp)
/* 0044149C 27A500A0 */  addiu $a1, $sp, 0xa0
/* 004414A0 27390F24 */  addiu $t9, %lo(func_00440F24) # addiu $t9, $t9, 0xf24
/* 004414A4 0320F809 */  jalr  $t9
/* 004414A8 02801025 */   move  $v0, $s4
/* 004414AC 93AE0087 */  lbu   $t6, 0x87($sp)
/* 004414B0 8FBC0070 */  lw    $gp, 0x70($sp)
/* 004414B4 11C00033 */  beqz  $t6, .L00441584
/* 004414B8 93A200B3 */   lbu   $v0, 0xb3($sp)
/* 004414BC 93A200B3 */  lbu   $v0, 0xb3($sp)
/* 004414C0 2401002C */  li    $at, 44
/* 004414C4 1041002F */  beq   $v0, $at, .L00441584
/* 004414C8 93A200B3 */   lbu   $v0, 0xb3($sp)
/* 004414CC 8FAF00A0 */  lw    $t7, 0xa0($sp)
/* 004414D0 00000000 */  nop   
/* 004414D4 11E0002B */  beqz  $t7, .L00441584
/* 004414D8 93A200B3 */   lbu   $v0, 0xb3($sp)
/* 004414DC 8F988070 */  lw    $t8, %got(RO_10018A64)($gp)
/* 004414E0 03A0C825 */  move  $t9, $sp
/* 004414E4 27188A64 */  addiu $t8, %lo(RO_10018A64) # addiu $t8, $t8, -0x759c
/* 004414E8 27090048 */  addiu $t1, $t8, 0x48
.L004414EC:
/* 004414EC 8B010000 */  lwl   $at, ($t8)
/* 004414F0 9B010003 */  lwr   $at, 3($t8)
/* 004414F4 2718000C */  addiu $t8, $t8, 0xc
/* 004414F8 AB210000 */  swl   $at, ($t9)
/* 004414FC BB210003 */  swr   $at, 3($t9)
/* 00441500 8B01FFF8 */  lwl   $at, -8($t8)
/* 00441504 9B01FFFB */  lwr   $at, -5($t8)
/* 00441508 2739000C */  addiu $t9, $t9, 0xc
/* 0044150C AB21FFF8 */  swl   $at, -8($t9)
/* 00441510 BB21FFFB */  swr   $at, -5($t9)
/* 00441514 8B01FFFC */  lwl   $at, -4($t8)
/* 00441518 9B01FFFF */  lwr   $at, -1($t8)
/* 0044151C 00000000 */  nop   
/* 00441520 AB21FFFC */  swl   $at, -4($t9)
/* 00441524 1709FFF1 */  bne   $t8, $t1, .L004414EC
/* 00441528 BB21FFFF */   swr   $at, -1($t9)
/* 0044152C 8B010000 */  lwl   $at, ($t8)
/* 00441530 9B010003 */  lwr   $at, 3($t8)
/* 00441534 240B0001 */  li    $t3, 1
/* 00441538 AB210000 */  swl   $at, ($t9)
/* 0044153C BB210003 */  swr   $at, 3($t9)
/* 00441540 8B090004 */  lwl   $t1, 4($t8)
/* 00441544 9B090007 */  lwr   $t1, 7($t8)
/* 00441548 00000000 */  nop   
/* 0044154C AB290004 */  swl   $t1, 4($t9)
/* 00441550 BB290007 */  swr   $t1, 7($t9)
/* 00441554 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00441558 8FAA00B4 */  lw    $t2, 0xb4($sp)
/* 0044155C 8FA7000C */  lw    $a3, 0xc($sp)
/* 00441560 8FA60008 */  lw    $a2, 8($sp)
/* 00441564 8FA50004 */  lw    $a1, 4($sp)
/* 00441568 8FA40000 */  lw    $a0, ($sp)
/* 0044156C AFAB0054 */  sw    $t3, 0x54($sp)
/* 00441570 0320F809 */  jalr  $t9
/* 00441574 AFAA0050 */   sw    $t2, 0x50($sp)
/* 00441578 8FBC0070 */  lw    $gp, 0x70($sp)
/* 0044157C 00000000 */  nop   
/* 00441580 93A200B3 */  lbu   $v0, 0xb3($sp)
.L00441584:
/* 00441584 2401000D */  li    $at, 13
/* 00441588 1441000D */  bne   $v0, $at, .L004415C0
/* 0044158C 2401000B */   li    $at, 11
/* 00441590 8FAC009C */  lw    $t4, 0x9c($sp)
/* 00441594 8FAE00A0 */  lw    $t6, 0xa0($sp)
/* 00441598 8FA90088 */  lw    $t1, 0x88($sp)
/* 0044159C 000C6FC0 */  sll   $t5, $t4, 0x1f
/* 004415A0 000E7DC0 */  sll   $t7, $t6, 0x17
/* 004415A4 8FAA00B8 */  lw    $t2, 0xb8($sp)
/* 004415A8 01AF4025 */  or    $t0, $t5, $t7
/* 004415AC 0009C242 */  srl   $t8, $t1, 9
/* 004415B0 0118C825 */  or    $t9, $t0, $t8
/* 004415B4 10000026 */  b     .L00441650
/* 004415B8 AD590000 */   sw    $t9, ($t2)
/* 004415BC 2401000B */  li    $at, 11
.L004415C0:
/* 004415C0 14410013 */  bne   $v0, $at, .L00441610
/* 004415C4 2401002C */   li    $at, 44
/* 004415C8 8FAB009C */  lw    $t3, 0x9c($sp)
/* 004415CC 8FAE00A0 */  lw    $t6, 0xa0($sp)
/* 004415D0 8FA90088 */  lw    $t1, 0x88($sp)
/* 004415D4 000B67C0 */  sll   $t4, $t3, 0x1f
/* 004415D8 000E6D00 */  sll   $t5, $t6, 0x14
/* 004415DC 8FA200B8 */  lw    $v0, 0xb8($sp)
/* 004415E0 018D7825 */  or    $t7, $t4, $t5
/* 004415E4 00094302 */  srl   $t0, $t1, 0xc
/* 004415E8 01E8C025 */  or    $t8, $t7, $t0
/* 004415EC AC580004 */  sw    $t8, 4($v0)
/* 004415F0 8FAB008C */  lw    $t3, 0x8c($sp)
/* 004415F4 8FB90088 */  lw    $t9, 0x88($sp)
/* 004415F8 000B7302 */  srl   $t6, $t3, 0xc
/* 004415FC 00195500 */  sll   $t2, $t9, 0x14
/* 00441600 014E6025 */  or    $t4, $t2, $t6
/* 00441604 10000012 */  b     .L00441650
/* 00441608 AC4C0000 */   sw    $t4, ($v0)
/* 0044160C 2401002C */  li    $at, 44
.L00441610:
/* 00441610 14410010 */  bne   $v0, $at, .L00441654
/* 00441614 8FBF0074 */   lw    $ra, 0x74($sp)
/* 00441618 8FAD009C */  lw    $t5, 0x9c($sp)
/* 0044161C 8FAF00A0 */  lw    $t7, 0xa0($sp)
/* 00441620 8FA200B8 */  lw    $v0, 0xb8($sp)
/* 00441624 000D4FC0 */  sll   $t1, $t5, 0x1f
/* 00441628 000F4400 */  sll   $t0, $t7, 0x10
/* 0044162C 0128C025 */  or    $t8, $t1, $t0
/* 00441630 AC58000C */  sw    $t8, 0xc($v0)
/* 00441634 AC400008 */  sw    $zero, 8($v0)
/* 00441638 8FB90088 */  lw    $t9, 0x88($sp)
/* 0044163C 00000000 */  nop   
/* 00441640 AC590004 */  sw    $t9, 4($v0)
/* 00441644 8FAB008C */  lw    $t3, 0x8c($sp)
/* 00441648 00000000 */  nop   
/* 0044164C AC4B0000 */  sw    $t3, ($v0)
.L00441650:
/* 00441650 8FBF0074 */  lw    $ra, 0x74($sp)
.L00441654:
/* 00441654 8FB0005C */  lw    $s0, 0x5c($sp)
/* 00441658 8FB10060 */  lw    $s1, 0x60($sp)
/* 0044165C 8FB20064 */  lw    $s2, 0x64($sp)
/* 00441660 8FB30068 */  lw    $s3, 0x68($sp)
/* 00441664 8FB4006C */  lw    $s4, 0x6c($sp)
/* 00441668 03E00008 */  jr    $ra
/* 0044166C 27BD00B0 */   addiu $sp, $sp, 0xb0

    .type func_00441670, @function
func_00441670:
    # 00441BC8 string_to_fpoverlay
/* 00441670 3C1C0FBF */  .cpload $t9
/* 00441674 279C8BF0 */  
/* 00441678 0399E021 */  
/* 0044167C 27BDFF78 */  addiu $sp, $sp, -0x88
/* 00441680 8F8E8C90 */  lw     $t6, %got(moxieflag)($gp)
/* 00441684 AFBF0064 */  sw    $ra, 0x64($sp)
/* 00441688 91CE0000 */  lbu   $t6, ($t6)
/* 0044168C AFBC0060 */  sw    $gp, 0x60($sp)
/* 00441690 AFA40088 */  sw    $a0, 0x88($sp)
/* 00441694 AFA5008C */  sw    $a1, 0x8c($sp)
/* 00441698 AFA60090 */  sw    $a2, 0x90($sp)
/* 0044169C 11C0002B */  beqz  $t6, .L0044174C
/* 004416A0 AFA70094 */   sw    $a3, 0x94($sp)
/* 004416A4 8F8F8070 */  lw    $t7, %got(RO_10018BAE)($gp)
/* 004416A8 03A04025 */  move  $t0, $sp
/* 004416AC 25EF8BAE */  addiu $t7, %lo(RO_10018BAE) # addiu $t7, $t7, -0x7452
/* 004416B0 25F90048 */  addiu $t9, $t7, 0x48
.L004416B4:
/* 004416B4 89E10000 */  lwl   $at, ($t7)
/* 004416B8 99E10003 */  lwr   $at, 3($t7)
/* 004416BC 25EF000C */  addiu $t7, $t7, 0xc
/* 004416C0 A9010000 */  swl   $at, ($t0)
/* 004416C4 B9010003 */  swr   $at, 3($t0)
/* 004416C8 89E1FFF8 */  lwl   $at, -8($t7)
/* 004416CC 99E1FFFB */  lwr   $at, -5($t7)
/* 004416D0 2508000C */  addiu $t0, $t0, 0xc
/* 004416D4 A901FFF8 */  swl   $at, -8($t0)
/* 004416D8 B901FFFB */  swr   $at, -5($t0)
/* 004416DC 89E1FFFC */  lwl   $at, -4($t7)
/* 004416E0 99E1FFFF */  lwr   $at, -1($t7)
/* 004416E4 00000000 */  nop   
/* 004416E8 A901FFFC */  swl   $at, -4($t0)
/* 004416EC 15F9FFF1 */  bne   $t7, $t9, .L004416B4
/* 004416F0 B901FFFF */   swr   $at, -1($t0)
/* 004416F4 89E10000 */  lwl   $at, ($t7)
/* 004416F8 99E10003 */  lwr   $at, 3($t7)
/* 004416FC 8F898C68 */  lw     $t1, %got(emptystring)($gp)
/* 00441700 A9010000 */  swl   $at, ($t0)
/* 00441704 B9010003 */  swr   $at, 3($t0)
/* 00441708 89F90004 */  lwl   $t9, 4($t7)
/* 0044170C 99F90007 */  lwr   $t9, 7($t7)
/* 00441710 240A0001 */  li    $t2, 1
/* 00441714 A9190004 */  swl   $t9, 4($t0)
/* 00441718 B9190007 */  swr   $t9, 7($t0)
/* 0044171C 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00441720 8D290000 */  lw    $t1, ($t1)
/* 00441724 8FA7000C */  lw    $a3, 0xc($sp)
/* 00441728 8FA60008 */  lw    $a2, 8($sp)
/* 0044172C 8FA50004 */  lw    $a1, 4($sp)
/* 00441730 8FA40000 */  lw    $a0, ($sp)
/* 00441734 AFAA0054 */  sw    $t2, 0x54($sp)
/* 00441738 0320F809 */  jalr  $t9
/* 0044173C AFA90050 */   sw    $t1, 0x50($sp)
/* 00441740 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00441744 1000011D */  b     .L00441BBC
/* 00441748 8FBF0064 */   lw    $ra, 0x64($sp)
.L0044174C:
/* 0044174C 8FA6008C */  lw    $a2, 0x8c($sp)
/* 00441750 2401002D */  li    $at, 45
/* 00441754 90CB0000 */  lbu   $t3, ($a2)
/* 00441758 A3A0006B */  sb    $zero, 0x6b($sp)
/* 0044175C 156100FA */  bne   $t3, $at, .L00441B48
/* 00441760 240C0001 */   li    $t4, 1
/* 00441764 240D0020 */  li    $t5, 32
/* 00441768 A3AC006B */  sb    $t4, 0x6b($sp)
/* 0044176C 100000F6 */  b     .L00441B48
/* 00441770 A0CD0000 */   sb    $t5, ($a2)
.L00441774:
/* 00441774 8F998208 */  lw    $t9, %call16(set_fpc_csr)($gp)
/* 00441778 00002025 */  move  $a0, $zero
/* 0044177C 0320F809 */  jalr  $t9
/* 00441780 00000000 */   nop   
/* 00441784 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00441788 8FA4008C */  lw    $a0, 0x8c($sp)
/* 0044178C 8F998194 */  lw    $t9, %call16(strtod)($gp)
/* 00441790 00002825 */  move  $a1, $zero
/* 00441794 0320F809 */  jalr  $t9
/* 00441798 00000000 */   nop   
/* 0044179C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004417A0 46200120 */  cvt.s.d $f4, $f0
/* 004417A4 8FAE0090 */  lw    $t6, 0x90($sp)
/* 004417A8 00000000 */  nop   
/* 004417AC E5C40000 */  swc1  $f4, ($t6)
/* 004417B0 8F9981F8 */  lw    $t9, %call16(get_fpc_csr)($gp)
/* 004417B4 E7A00074 */  swc1  $f0, 0x74($sp)
/* 004417B8 0320F809 */  jalr  $t9
/* 004417BC E7A10070 */   swc1  $f1, 0x70($sp)
/* 004417C0 93B8006B */  lbu   $t8, 0x6b($sp)
/* 004417C4 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004417C8 C7A30070 */  lwc1  $f3, 0x70($sp)
/* 004417CC C7A20074 */  lwc1  $f2, 0x74($sp)
/* 004417D0 13000004 */  beqz  $t8, .L004417E4
/* 004417D4 30480018 */   andi  $t0, $v0, 0x18
/* 004417D8 8FAF008C */  lw    $t7, 0x8c($sp)
/* 004417DC 2419002D */  li    $t9, 45
/* 004417E0 A1F90000 */  sb    $t9, ($t7)
.L004417E4:
/* 004417E4 15000020 */  bnez  $t0, .L00441868
/* 004417E8 00000000 */   nop   
/* 004417EC 8F8980B8 */  lw     $t1, %got(errno)($gp)
/* 004417F0 24010022 */  li    $at, 34
/* 004417F4 8D290000 */  lw    $t1, ($t1)
/* 004417F8 00000000 */  nop   
/* 004417FC 1121001A */  beq   $t1, $at, .L00441868
/* 00441800 00000000 */   nop   
/* 00441804 8F818070 */  lw    $at, %got(RO_10018C04)($gp)
/* 00441808 00000000 */  nop   
/* 0044180C C4278C00 */  lwc1  $f7, %lo(RO_10018C00)($at)
/* 00441810 C4268C04 */  lwc1  $f6, %lo(RO_10018C04)($at)
/* 00441814 00000000 */  nop   
/* 00441818 4622303C */  c.lt.d $f6, $f2
/* 0044181C 00000000 */  nop   
/* 00441820 45010011 */  bc1t  .L00441868
/* 00441824 00000000 */   nop   
/* 00441828 44804800 */  mtc1  $zero, $f9
/* 0044182C 44804000 */  mtc1  $zero, $f8
/* 00441830 00000000 */  nop   
/* 00441834 46281032 */  c.eq.d $f2, $f8
/* 00441838 00000000 */  nop   
/* 0044183C 45010034 */  bc1t  .L00441910
/* 00441840 93B9006B */   lbu   $t9, 0x6b($sp)
/* 00441844 8F818070 */  lw    $at, %got(RO_10018C0C)($gp)
/* 00441848 00000000 */  nop   
/* 0044184C C42B8C08 */  lwc1  $f11, %lo(RO_10018C08)($at)
/* 00441850 C42A8C0C */  lwc1  $f10, %lo(RO_10018C0C)($at)
/* 00441854 00000000 */  nop   
/* 00441858 462A103C */  c.lt.d $f2, $f10
/* 0044185C 00000000 */  nop   
/* 00441860 4500002B */  bc1f  .L00441910
/* 00441864 93B9006B */   lbu   $t9, 0x6b($sp)
.L00441868:
/* 00441868 8F8A8070 */  lw    $t2, %got(RO_10018B5E)($gp)
/* 0044186C 03A06825 */  move  $t5, $sp
/* 00441870 254A8B5E */  addiu $t2, %lo(RO_10018B5E) # addiu $t2, $t2, -0x74a2
/* 00441874 254C0048 */  addiu $t4, $t2, 0x48
.L00441878:
/* 00441878 89410000 */  lwl   $at, ($t2)
/* 0044187C 99410003 */  lwr   $at, 3($t2)
/* 00441880 254A000C */  addiu $t2, $t2, 0xc
/* 00441884 A9A10000 */  swl   $at, ($t5)
/* 00441888 B9A10003 */  swr   $at, 3($t5)
/* 0044188C 8941FFF8 */  lwl   $at, -8($t2)
/* 00441890 9941FFFB */  lwr   $at, -5($t2)
/* 00441894 25AD000C */  addiu $t5, $t5, 0xc
/* 00441898 A9A1FFF8 */  swl   $at, -8($t5)
/* 0044189C B9A1FFFB */  swr   $at, -5($t5)
/* 004418A0 8941FFFC */  lwl   $at, -4($t2)
/* 004418A4 9941FFFF */  lwr   $at, -1($t2)
/* 004418A8 00000000 */  nop   
/* 004418AC A9A1FFFC */  swl   $at, -4($t5)
/* 004418B0 154CFFF1 */  bne   $t2, $t4, .L00441878
/* 004418B4 B9A1FFFF */   swr   $at, -1($t5)
/* 004418B8 89410000 */  lwl   $at, ($t2)
/* 004418BC 99410003 */  lwr   $at, 3($t2)
/* 004418C0 8F8E8C68 */  lw     $t6, %got(emptystring)($gp)
/* 004418C4 A9A10000 */  swl   $at, ($t5)
/* 004418C8 B9A10003 */  swr   $at, 3($t5)
/* 004418CC 894C0004 */  lwl   $t4, 4($t2)
/* 004418D0 994C0007 */  lwr   $t4, 7($t2)
/* 004418D4 24180002 */  li    $t8, 2
/* 004418D8 A9AC0004 */  swl   $t4, 4($t5)
/* 004418DC B9AC0007 */  swr   $t4, 7($t5)
/* 004418E0 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 004418E4 8DCE0000 */  lw    $t6, ($t6)
/* 004418E8 8FA7000C */  lw    $a3, 0xc($sp)
/* 004418EC 8FA60008 */  lw    $a2, 8($sp)
/* 004418F0 8FA50004 */  lw    $a1, 4($sp)
/* 004418F4 8FA40000 */  lw    $a0, ($sp)
/* 004418F8 AFB80054 */  sw    $t8, 0x54($sp)
/* 004418FC 0320F809 */  jalr  $t9
/* 00441900 AFAE0050 */   sw    $t6, 0x50($sp)
/* 00441904 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00441908 00000000 */  nop   
/* 0044190C 93B9006B */  lbu   $t9, 0x6b($sp)
.L00441910:
/* 00441910 8FA20090 */  lw    $v0, 0x90($sp)
/* 00441914 1320009F */  beqz  $t9, .L00441B94
/* 00441918 00000000 */   nop   
/* 0044191C C4500000 */  lwc1  $f16, ($v0)
/* 00441920 00000000 */  nop   
/* 00441924 46008487 */  neg.s $f18, $f16
/* 00441928 1000009A */  b     .L00441B94
/* 0044192C E4520000 */   swc1  $f18, ($v0)
.L00441930:
/* 00441930 8F998208 */  lw    $t9, %call16(set_fpc_csr)($gp)
/* 00441934 00002025 */  move  $a0, $zero
/* 00441938 0320F809 */  jalr  $t9
/* 0044193C 00000000 */   nop   
/* 00441940 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00441944 8FA4008C */  lw    $a0, 0x8c($sp)
/* 00441948 8F8180B8 */  lw     $at, %got(errno)($gp)
/* 0044194C 8F998194 */  lw    $t9, %call16(strtod)($gp)
/* 00441950 00002825 */  move  $a1, $zero
/* 00441954 0320F809 */  jalr  $t9
/* 00441958 AC200000 */   sw    $zero, ($at)
/* 0044195C 8FAF0090 */  lw    $t7, 0x90($sp)
/* 00441960 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00441964 E5E00004 */  swc1  $f0, 4($t7)
/* 00441968 E5E10000 */  swc1  $f1, ($t7)
/* 0044196C 93A8006B */  lbu   $t0, 0x6b($sp)
/* 00441970 8FAB008C */  lw    $t3, 0x8c($sp)
/* 00441974 11000002 */  beqz  $t0, .L00441980
/* 00441978 2409002D */   li    $t1, 45
/* 0044197C A1690000 */  sb    $t1, ($t3)
.L00441980:
/* 00441980 8F8C80B8 */  lw     $t4, %got(errno)($gp)
/* 00441984 24010022 */  li    $at, 34
/* 00441988 8D8C0000 */  lw    $t4, ($t4)
/* 0044198C 8FAA0090 */  lw    $t2, 0x90($sp)
/* 00441990 11810028 */  beq   $t4, $at, .L00441A34
/* 00441994 00000000 */   nop   
/* 00441998 8F9981E4 */  lw    $t9, %call16(fp_class_d)($gp)
/* 0044199C C54D0000 */  lwc1  $f13, ($t2)
/* 004419A0 C54C0004 */  lwc1  $f12, 4($t2)
/* 004419A4 0320F809 */  jalr  $t9
/* 004419A8 00000000 */   nop   
/* 004419AC 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004419B0 24010002 */  li    $at, 2
/* 004419B4 1041001F */  beq   $v0, $at, .L00441A34
/* 004419B8 00000000 */   nop   
/* 004419BC 8FAD0090 */  lw    $t5, 0x90($sp)
/* 004419C0 8F9981E4 */  lw    $t9, %call16(fp_class_d)($gp)
/* 004419C4 C5AD0000 */  lwc1  $f13, ($t5)
/* 004419C8 C5AC0004 */  lwc1  $f12, 4($t5)
/* 004419CC 0320F809 */  jalr  $t9
/* 004419D0 00000000 */   nop   
/* 004419D4 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004419D8 24010003 */  li    $at, 3
/* 004419DC 10410015 */  beq   $v0, $at, .L00441A34
/* 004419E0 00000000 */   nop   
/* 004419E4 8FAE0090 */  lw    $t6, 0x90($sp)
/* 004419E8 8F9981E4 */  lw    $t9, %call16(fp_class_d)($gp)
/* 004419EC C5CD0000 */  lwc1  $f13, ($t6)
/* 004419F0 C5CC0004 */  lwc1  $f12, 4($t6)
/* 004419F4 0320F809 */  jalr  $t9
/* 004419F8 00000000 */   nop   
/* 004419FC 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00441A00 24010006 */  li    $at, 6
/* 00441A04 1041000B */  beq   $v0, $at, .L00441A34
/* 00441A08 00000000 */   nop   
/* 00441A0C 8FB80090 */  lw    $t8, 0x90($sp)
/* 00441A10 8F9981E4 */  lw    $t9, %call16(fp_class_d)($gp)
/* 00441A14 C70D0000 */  lwc1  $f13, ($t8)
/* 00441A18 C70C0004 */  lwc1  $f12, 4($t8)
/* 00441A1C 0320F809 */  jalr  $t9
/* 00441A20 00000000 */   nop   
/* 00441A24 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00441A28 24010007 */  li    $at, 7
/* 00441A2C 1441002B */  bne   $v0, $at, .L00441ADC
/* 00441A30 93AA006B */   lbu   $t2, 0x6b($sp)
.L00441A34:
/* 00441A34 8F998070 */  lw    $t9, %got(RO_10018B0E)($gp)
/* 00441A38 03A04825 */  move  $t1, $sp
/* 00441A3C 27398B0E */  addiu $t9, %lo(RO_10018B0E) # addiu $t9, $t9, -0x74f2
/* 00441A40 27280048 */  addiu $t0, $t9, 0x48
.L00441A44:
/* 00441A44 8B210000 */  lwl   $at, ($t9)
/* 00441A48 9B210003 */  lwr   $at, 3($t9)
/* 00441A4C 2739000C */  addiu $t9, $t9, 0xc
/* 00441A50 A9210000 */  swl   $at, ($t1)
/* 00441A54 B9210003 */  swr   $at, 3($t1)
/* 00441A58 8B21FFF8 */  lwl   $at, -8($t9)
/* 00441A5C 9B21FFFB */  lwr   $at, -5($t9)
/* 00441A60 2529000C */  addiu $t1, $t1, 0xc
/* 00441A64 A921FFF8 */  swl   $at, -8($t1)
/* 00441A68 B921FFFB */  swr   $at, -5($t1)
/* 00441A6C 8B21FFFC */  lwl   $at, -4($t9)
/* 00441A70 9B21FFFF */  lwr   $at, -1($t9)
/* 00441A74 00000000 */  nop   
/* 00441A78 A921FFFC */  swl   $at, -4($t1)
/* 00441A7C 1728FFF1 */  bne   $t9, $t0, .L00441A44
/* 00441A80 B921FFFF */   swr   $at, -1($t1)
/* 00441A84 8B210000 */  lwl   $at, ($t9)
/* 00441A88 9B210003 */  lwr   $at, 3($t9)
/* 00441A8C 8F8B8C68 */  lw     $t3, %got(emptystring)($gp)
/* 00441A90 A9210000 */  swl   $at, ($t1)
/* 00441A94 B9210003 */  swr   $at, 3($t1)
/* 00441A98 8B280004 */  lwl   $t0, 4($t9)
/* 00441A9C 9B280007 */  lwr   $t0, 7($t9)
/* 00441AA0 240C0002 */  li    $t4, 2
/* 00441AA4 A9280004 */  swl   $t0, 4($t1)
/* 00441AA8 B9280007 */  swr   $t0, 7($t1)
/* 00441AAC 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00441AB0 8D6B0000 */  lw    $t3, ($t3)
/* 00441AB4 8FA7000C */  lw    $a3, 0xc($sp)
/* 00441AB8 8FA60008 */  lw    $a2, 8($sp)
/* 00441ABC 8FA50004 */  lw    $a1, 4($sp)
/* 00441AC0 8FA40000 */  lw    $a0, ($sp)
/* 00441AC4 AFAC0054 */  sw    $t4, 0x54($sp)
/* 00441AC8 0320F809 */  jalr  $t9
/* 00441ACC AFAB0050 */   sw    $t3, 0x50($sp)
/* 00441AD0 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00441AD4 00000000 */  nop   
/* 00441AD8 93AA006B */  lbu   $t2, 0x6b($sp)
.L00441ADC:
/* 00441ADC 8FAD0090 */  lw    $t5, 0x90($sp)
/* 00441AE0 1140002C */  beqz  $t2, .L00441B94
/* 00441AE4 00000000 */   nop   
/* 00441AE8 C5A50000 */  lwc1  $f5, ($t5)
/* 00441AEC C5A40004 */  lwc1  $f4, 4($t5)
/* 00441AF0 00000000 */  nop   
/* 00441AF4 46202187 */  neg.d $f6, $f4
/* 00441AF8 E5A60004 */  swc1  $f6, 4($t5)
/* 00441AFC 10000025 */  b     .L00441B94
/* 00441B00 E5A70000 */   swc1  $f7, ($t5)
.L00441B04:
/* 00441B04 8F998498 */  lw    $t9, %call16(atoe)($gp)
/* 00441B08 8FA50090 */  lw    $a1, 0x90($sp)
/* 00441B0C 0320F809 */  jalr  $t9
/* 00441B10 00C02025 */   move  $a0, $a2
/* 00441B14 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00441B18 1000001E */  b     .L00441B94
/* 00441B1C 00000000 */   nop   
.L00441B20:
/* 00441B20 8F868070 */  lw    $a2, %got(RO_10018B04)($gp)
/* 00441B24 8F99868C */  lw    $t9, %call16(caseerror)($gp)
/* 00441B28 24040001 */  li    $a0, 1
/* 00441B2C 24050263 */  li    $a1, 611
/* 00441B30 2407000A */  li    $a3, 10
/* 00441B34 0320F809 */  jalr  $t9
/* 00441B38 24C68B04 */   addiu $a2, %lo(RO_10018B04) # addiu $a2, $a2, -0x74fc
/* 00441B3C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00441B40 10000014 */  b     .L00441B94
/* 00441B44 00000000 */   nop   
.L00441B48:
/* 00441B48 2C81000E */  sltiu $at, $a0, 0xe
/* 00441B4C 14200006 */  bnez  $at, .L00441B68
/* 00441B50 248EFFF5 */   addiu $t6, $a0, -0xb
/* 00441B54 2401002C */  li    $at, 44
/* 00441B58 1081FFEA */  beq   $a0, $at, .L00441B04
/* 00441B5C 00000000 */   nop   
/* 00441B60 1000FFEF */  b     .L00441B20
/* 00441B64 00000000 */   nop   
.L00441B68:
/* 00441B68 2DC10003 */  sltiu $at, $t6, 3
/* 00441B6C 1020FFEC */  beqz  $at, .L00441B20
/* 00441B70 00000000 */   nop   
/* 00441B74 8F818070 */  lw    $at, %got(jtbl_10018C10)($gp)
/* 00441B78 000E7080 */  sll   $t6, $t6, 2
/* 00441B7C 002E0821 */  addu  $at, $at, $t6
/* 00441B80 8C2E8C10 */  lw    $t6, %lo(jtbl_10018C10)($at)
/* 00441B84 00000000 */  nop   
/* 00441B88 01DC7021 */  addu  $t6, $t6, $gp
/* 00441B8C 01C00008 */  jr    $t6
/* 00441B90 00000000 */   nop   
.L00441B94:
/* 00441B94 8F828AE8 */  lw     $v0, %got(sexchange)($gp)
/* 00441B98 8FAF0094 */  lw    $t7, 0x94($sp)
/* 00441B9C 90580000 */  lbu   $t8, ($v0)
/* 00441BA0 00000000 */  nop   
/* 00441BA4 A1F80000 */  sb    $t8, ($t7)
/* 00441BA8 8FB90098 */  lw    $t9, 0x98($sp)
/* 00441BAC 90480000 */  lbu   $t0, ($v0)
/* 00441BB0 00000000 */  nop   
/* 00441BB4 A3280000 */  sb    $t0, ($t9)
/* 00441BB8 8FBF0064 */  lw    $ra, 0x64($sp)
.L00441BBC:
/* 00441BBC 27BD0088 */  addiu $sp, $sp, 0x88
/* 00441BC0 03E00008 */  jr    $ra
/* 00441BC4 00000000 */   nop   

glabel string_to_fpoverlay
    .ent string_to_fpoverlay
    # 00441D54 fpstring_to_memory
    # 004656D4 parseafri_fp
/* 00441BC8 3C1C0FBF */  .cpload $t9
/* 00441BCC 279C8698 */  
/* 00441BD0 0399E021 */  
/* 00441BD4 27BDFF98 */  addiu $sp, $sp, -0x68
/* 00441BD8 908E0001 */  lbu   $t6, 1($a0)
/* 00441BDC 24020078 */  li    $v0, 120
/* 00441BE0 AFBF0064 */  sw    $ra, 0x64($sp)
/* 00441BE4 AFBC0060 */  sw    $gp, 0x60($sp)
/* 00441BE8 AFA40068 */  sw    $a0, 0x68($sp)
/* 00441BEC AFA5006C */  sw    $a1, 0x6c($sp)
/* 00441BF0 AFA60070 */  sw    $a2, 0x70($sp)
/* 00441BF4 104E0005 */  beq   $v0, $t6, .L00441C0C
/* 00441BF8 AFA70074 */   sw    $a3, 0x74($sp)
/* 00441BFC 908F0002 */  lbu   $t7, 2($a0)
/* 00441C00 93A4006F */  lbu   $a0, 0x6f($sp)
/* 00441C04 144F0044 */  bne   $v0, $t7, .L00441D18
/* 00441C08 8FB90078 */   lw    $t9, 0x78($sp)
.L00441C0C:
/* 00441C0C 8F988C90 */  lw     $t8, %got(moxieflag)($gp)
/* 00441C10 00000000 */  nop   
/* 00441C14 93180000 */  lbu   $t8, ($t8)
/* 00441C18 00000000 */  nop   
/* 00441C1C 1300002A */  beqz  $t8, .L00441CC8
/* 00441C20 00000000 */   nop   
/* 00441C24 8F998070 */  lw    $t9, %got(RO_10018C1C)($gp)
/* 00441C28 03A05025 */  move  $t2, $sp
/* 00441C2C 27398C1C */  addiu $t9, %lo(RO_10018C1C) # addiu $t9, $t9, -0x73e4
/* 00441C30 27290048 */  addiu $t1, $t9, 0x48
.L00441C34:
/* 00441C34 8B210000 */  lwl   $at, ($t9)
/* 00441C38 9B210003 */  lwr   $at, 3($t9)
/* 00441C3C 2739000C */  addiu $t9, $t9, 0xc
/* 00441C40 A9410000 */  swl   $at, ($t2)
/* 00441C44 B9410003 */  swr   $at, 3($t2)
/* 00441C48 8B21FFF8 */  lwl   $at, -8($t9)
/* 00441C4C 9B21FFFB */  lwr   $at, -5($t9)
/* 00441C50 254A000C */  addiu $t2, $t2, 0xc
/* 00441C54 A941FFF8 */  swl   $at, -8($t2)
/* 00441C58 B941FFFB */  swr   $at, -5($t2)
/* 00441C5C 8B21FFFC */  lwl   $at, -4($t9)
/* 00441C60 9B21FFFF */  lwr   $at, -1($t9)
/* 00441C64 00000000 */  nop   
/* 00441C68 A941FFFC */  swl   $at, -4($t2)
/* 00441C6C 1729FFF1 */  bne   $t9, $t1, .L00441C34
/* 00441C70 B941FFFF */   swr   $at, -1($t2)
/* 00441C74 8B210000 */  lwl   $at, ($t9)
/* 00441C78 9B210003 */  lwr   $at, 3($t9)
/* 00441C7C 8F8B8C68 */  lw     $t3, %got(emptystring)($gp)
/* 00441C80 A9410000 */  swl   $at, ($t2)
/* 00441C84 B9410003 */  swr   $at, 3($t2)
/* 00441C88 8B290004 */  lwl   $t1, 4($t9)
/* 00441C8C 9B290007 */  lwr   $t1, 7($t9)
/* 00441C90 240C0001 */  li    $t4, 1
/* 00441C94 A9490004 */  swl   $t1, 4($t2)
/* 00441C98 B9490007 */  swr   $t1, 7($t2)
/* 00441C9C 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00441CA0 8D6B0000 */  lw    $t3, ($t3)
/* 00441CA4 8FA7000C */  lw    $a3, 0xc($sp)
/* 00441CA8 8FA60008 */  lw    $a2, 8($sp)
/* 00441CAC 8FA50004 */  lw    $a1, 4($sp)
/* 00441CB0 8FA40000 */  lw    $a0, ($sp)
/* 00441CB4 AFAC0054 */  sw    $t4, 0x54($sp)
/* 00441CB8 0320F809 */  jalr  $t9
/* 00441CBC AFAB0050 */   sw    $t3, 0x50($sp)
/* 00441CC0 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00441CC4 00000000 */  nop   
.L00441CC8:
/* 00441CC8 8F998024 */  lw    $t9, %got(func_00441218)($gp)
/* 00441CCC 8FA50068 */  lw    $a1, 0x68($sp)
/* 00441CD0 93A4006F */  lbu   $a0, 0x6f($sp)
/* 00441CD4 8FA60070 */  lw    $a2, 0x70($sp)
/* 00441CD8 27391218 */  addiu $t9, %lo(func_00441218) # addiu $t9, $t9, 0x1218
/* 00441CDC 27A20068 */  addiu $v0, $sp, 0x68
/* 00441CE0 0320F809 */  jalr  $t9
/* 00441CE4 AFA50004 */   sw    $a1, 4($sp)
/* 00441CE8 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00441CEC 8FAF0074 */  lw    $t7, 0x74($sp)
/* 00441CF0 8F8E8B14 */  lw     $t6, %got(bigendian)($gp)
/* 00441CF4 8F988AE8 */  lw     $t8, %got(sexchange)($gp)
/* 00441CF8 91CE0000 */  lbu   $t6, ($t6)
/* 00441CFC 00000000 */  nop   
/* 00441D00 A1EE0000 */  sb    $t6, ($t7)
/* 00441D04 8FA80078 */  lw    $t0, 0x78($sp)
/* 00441D08 93180000 */  lbu   $t8, ($t8)
/* 00441D0C 1000000D */  b     .L00441D44
/* 00441D10 A1180000 */   sb    $t8, ($t0)
/* 00441D14 8FB90078 */  lw    $t9, 0x78($sp)
.L00441D18:
/* 00441D18 8FA50068 */  lw    $a1, 0x68($sp)
/* 00441D1C AFB90010 */  sw    $t9, 0x10($sp)
/* 00441D20 8F998024 */  lw    $t9, %got(func_00441670)($gp)
/* 00441D24 8FA60070 */  lw    $a2, 0x70($sp)
/* 00441D28 8FA70074 */  lw    $a3, 0x74($sp)
/* 00441D2C 27391670 */  addiu $t9, %lo(func_00441670) # addiu $t9, $t9, 0x1670
/* 00441D30 27A20068 */  addiu $v0, $sp, 0x68
/* 00441D34 0320F809 */  jalr  $t9
/* 00441D38 AFA50004 */   sw    $a1, 4($sp)
/* 00441D3C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00441D40 00000000 */  nop   
.L00441D44:
/* 00441D44 8FBF0064 */  lw    $ra, 0x64($sp)
/* 00441D48 27BD0068 */  addiu $sp, $sp, 0x68
/* 00441D4C 03E00008 */  jr    $ra
/* 00441D50 00000000 */   nop   

    .type string_to_fpoverlay, @function
    .size string_to_fpoverlay, .-string_to_fpoverlay
    .end string_to_fpoverlay

glabel fpstring_to_memory
    .ent fpstring_to_memory
    # 0041C3FC func_0041C3FC
    # 00441E3C parsefpconst
/* 00441D54 3C1C0FBF */  .cpload $t9
/* 00441D58 279C850C */  
/* 00441D5C 0399E021 */  
/* 00441D60 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 00441D64 8F9984A4 */  lw    $t9, %call16(string_to_fpoverlay)($gp)
/* 00441D68 AFB40034 */  sw    $s4, 0x34($sp)
/* 00441D6C AFB10028 */  sw    $s1, 0x28($sp)
/* 00441D70 AFB00024 */  sw    $s0, 0x24($sp)
/* 00441D74 00C08025 */  move  $s0, $a2
/* 00441D78 30B100FF */  andi  $s1, $a1, 0xff
/* 00441D7C 27B40048 */  addiu $s4, $sp, 0x48
/* 00441D80 AFBF003C */  sw    $ra, 0x3c($sp)
/* 00441D84 AFA5005C */  sw    $a1, 0x5c($sp)
/* 00441D88 27AF0046 */  addiu $t7, $sp, 0x46
/* 00441D8C AFBC0038 */  sw    $gp, 0x38($sp)
/* 00441D90 AFB30030 */  sw    $s3, 0x30($sp)
/* 00441D94 AFB2002C */  sw    $s2, 0x2c($sp)
/* 00441D98 AFA40058 */  sw    $a0, 0x58($sp)
/* 00441D9C AFAF0010 */  sw    $t7, 0x10($sp)
/* 00441DA0 02202825 */  move  $a1, $s1
/* 00441DA4 02803025 */  move  $a2, $s4
/* 00441DA8 AFA40000 */  sw    $a0, ($sp)
/* 00441DAC 0320F809 */  jalr  $t9
/* 00441DB0 27A70047 */   addiu $a3, $sp, 0x47
/* 00441DB4 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00441DB8 12000019 */  beqz  $s0, .L00441E20
/* 00441DBC 8FBF003C */   lw    $ra, 0x3c($sp)
/* 00441DC0 93B30046 */  lbu   $s3, 0x46($sp)
/* 00441DC4 93B20047 */  lbu   $s2, 0x47($sp)
/* 00441DC8 00000000 */  nop   
.L00441DCC:
/* 00441DCC 8E810000 */  lw    $at, ($s4)
/* 00441DD0 02202025 */  move  $a0, $s1
/* 00441DD4 AFA10010 */  sw    $at, 0x10($sp)
/* 00441DD8 8E990004 */  lw    $t9, 4($s4)
/* 00441DDC 02402825 */  move  $a1, $s2
/* 00441DE0 AFB90014 */  sw    $t9, 0x14($sp)
/* 00441DE4 8E810008 */  lw    $at, 8($s4)
/* 00441DE8 02603025 */  move  $a2, $s3
/* 00441DEC AFA10018 */  sw    $at, 0x18($sp)
/* 00441DF0 8E99000C */  lw    $t9, 0xc($s4)
/* 00441DF4 00000000 */  nop   
/* 00441DF8 AFB9001C */  sw    $t9, 0x1c($sp)
/* 00441DFC 8F9984A0 */  lw    $t9, %call16(emit_const)($gp)
/* 00441E00 00000000 */  nop   
/* 00441E04 0320F809 */  jalr  $t9
/* 00441E08 00000000 */   nop   
/* 00441E0C 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00441E10 2610FFFF */  addiu $s0, $s0, -1
/* 00441E14 1600FFED */  bnez  $s0, .L00441DCC
/* 00441E18 00000000 */   nop   
/* 00441E1C 8FBF003C */  lw    $ra, 0x3c($sp)
.L00441E20:
/* 00441E20 8FB00024 */  lw    $s0, 0x24($sp)
/* 00441E24 8FB10028 */  lw    $s1, 0x28($sp)
/* 00441E28 8FB2002C */  lw    $s2, 0x2c($sp)
/* 00441E2C 8FB30030 */  lw    $s3, 0x30($sp)
/* 00441E30 8FB40034 */  lw    $s4, 0x34($sp)
/* 00441E34 03E00008 */  jr    $ra
/* 00441E38 27BD0058 */   addiu $sp, $sp, 0x58

    .type fpstring_to_memory, @function
    .size fpstring_to_memory, .-fpstring_to_memory
    .end fpstring_to_memory

glabel parsefpconst
    .ent parsefpconst
    # 004594BC parsestmt
/* 00441E3C 3C1C0FBF */  .cpload $t9
/* 00441E40 279C8424 */  
/* 00441E44 0399E021 */  
/* 00441E48 8F828D64 */  lw     $v0, %got(binasmfyle)($gp)
/* 00441E4C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 00441E50 8C420000 */  lw    $v0, ($v0)
/* 00441E54 8F99849C */  lw    $t9, %call16(get_fp_string)($gp)
/* 00441E58 8C46000C */  lw    $a2, 0xc($v0)
/* 00441E5C AFA40040 */  sw    $a0, 0x40($sp)
/* 00441E60 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00441E64 8C440008 */  lw    $a0, 8($v0)
/* 00441E68 AFBC0020 */  sw    $gp, 0x20($sp)
/* 00441E6C 0320F809 */  jalr  $t9
/* 00441E70 AFA60038 */   sw    $a2, 0x38($sp)
/* 00441E74 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00441E78 8FA60038 */  lw    $a2, 0x38($sp)
/* 00441E7C 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00441E80 00404025 */  move  $t0, $v0
/* 00441E84 90630000 */  lbu   $v1, ($v1)
/* 00441E88 2401000F */  li    $at, 15
/* 00441E8C 1060000C */  beqz  $v1, .L00441EC0
/* 00441E90 2404000E */   li    $a0, 14
/* 00441E94 1061000A */  beq   $v1, $at, .L00441EC0
/* 00441E98 00000000 */   nop   
/* 00441E9C 8F9984A8 */  lw    $t9, %call16(fpstring_to_memory)($gp)
/* 00441EA0 93A50043 */  lbu   $a1, 0x43($sp)
/* 00441EA4 AFA20034 */  sw    $v0, 0x34($sp)
/* 00441EA8 AFA20000 */  sw    $v0, ($sp)
/* 00441EAC 0320F809 */  jalr  $t9
/* 00441EB0 00402025 */   move  $a0, $v0
/* 00441EB4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00441EB8 1000000A */  b     .L00441EE4
/* 00441EBC 8FBF0024 */   lw    $ra, 0x24($sp)
.L00441EC0:
/* 00441EC0 8F9982E4 */  lw    $t9, %call16(fill_pseudo)($gp)
/* 00441EC4 93A50043 */  lbu   $a1, 0x43($sp)
/* 00441EC8 00003825 */  move  $a3, $zero
/* 00441ECC AFA80010 */  sw    $t0, 0x10($sp)
/* 00441ED0 0320F809 */  jalr  $t9
/* 00441ED4 AFA00014 */   sw    $zero, 0x14($sp)
/* 00441ED8 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00441EDC 00000000 */  nop   
/* 00441EE0 8FBF0024 */  lw    $ra, 0x24($sp)
.L00441EE4:
/* 00441EE4 27BD0040 */  addiu $sp, $sp, 0x40
/* 00441EE8 03E00008 */  jr    $ra
/* 00441EEC 00000000 */   nop   

    .type parsefpconst, @function
    .size parsefpconst, .-parsefpconst
    .end parsefpconst

glabel emit_fp_const
    .ent emit_fp_const
    # 004656D4 parseafri_fp
/* 00441EF0 3C1C0FBF */  .cpload $t9
/* 00441EF4 279C8370 */  
/* 00441EF8 0399E021 */  
/* 00441EFC 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 00441F00 8F828B64 */  lw     $v0, %got(currsegmentindex)($gp)
/* 00441F04 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00441F08 8C4F0000 */  lw    $t7, ($v0)
/* 00441F0C 906E0000 */  lbu   $t6, ($v1)
/* 00441F10 24180009 */  li    $t8, 9
/* 00441F14 24190009 */  li    $t9, 9
/* 00441F18 AC590000 */  sw    $t9, ($v0)
/* 00441F1C A0780000 */  sb    $t8, ($v1)
/* 00441F20 8F998404 */  lw    $t9, %call16(idn_for_data)($gp)
/* 00441F24 AFBF002C */  sw    $ra, 0x2c($sp)
/* 00441F28 AFBC0028 */  sw    $gp, 0x28($sp)
/* 00441F2C AFA40048 */  sw    $a0, 0x48($sp)
/* 00441F30 AFA5004C */  sw    $a1, 0x4c($sp)
/* 00441F34 AFA60050 */  sw    $a2, 0x50($sp)
/* 00441F38 AFA70054 */  sw    $a3, 0x54($sp)
/* 00441F3C AFAF0038 */  sw    $t7, 0x38($sp)
/* 00441F40 0320F809 */  jalr  $t9
/* 00441F44 A3AE0043 */   sb    $t6, 0x43($sp)
/* 00441F48 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00441F4C 8FA80064 */  lw    $t0, 0x64($sp)
/* 00441F50 00402025 */  move  $a0, $v0
/* 00441F54 AD020000 */  sw    $v0, ($t0)
/* 00441F58 8F9985AC */  lw    $t9, %call16(enterstp)($gp)
/* 00441F5C 00000000 */  nop   
/* 00441F60 0320F809 */  jalr  $t9
/* 00441F64 00000000 */   nop   
/* 00441F68 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00441F6C 8FA90064 */  lw    $t1, 0x64($sp)
/* 00441F70 8F9985B0 */  lw    $t9, %call16(enterlabel)($gp)
/* 00441F74 8D240000 */  lw    $a0, ($t1)
/* 00441F78 0320F809 */  jalr  $t9
/* 00441F7C 27A5003C */   addiu $a1, $sp, 0x3c
/* 00441F80 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00441F84 8FAA0064 */  lw    $t2, 0x64($sp)
/* 00441F88 8F868B64 */  lw     $a2, %got(currsegmentindex)($gp)
/* 00441F8C 8F9985C8 */  lw    $t9, %call16(defineasym)($gp)
/* 00441F90 8FA5003C */  lw    $a1, 0x3c($sp)
/* 00441F94 8D440000 */  lw    $a0, ($t2)
/* 00441F98 8CC60000 */  lw    $a2, ($a2)
/* 00441F9C 0320F809 */  jalr  $t9
/* 00441FA0 00000000 */   nop   
/* 00441FA4 27AB0048 */  addiu $t3, $sp, 0x48
/* 00441FA8 8D610000 */  lw    $at, ($t3)
/* 00441FAC 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00441FB0 AFA10010 */  sw    $at, 0x10($sp)
/* 00441FB4 8D6D0004 */  lw    $t5, 4($t3)
/* 00441FB8 8F9984A0 */  lw    $t9, %call16(emit_const)($gp)
/* 00441FBC AFAD0014 */  sw    $t5, 0x14($sp)
/* 00441FC0 8D610008 */  lw    $at, 8($t3)
/* 00441FC4 93A40063 */  lbu   $a0, 0x63($sp)
/* 00441FC8 AFA10018 */  sw    $at, 0x18($sp)
/* 00441FCC 8D6D000C */  lw    $t5, 0xc($t3)
/* 00441FD0 93A5005B */  lbu   $a1, 0x5b($sp)
/* 00441FD4 93A6005F */  lbu   $a2, 0x5f($sp)
/* 00441FD8 0320F809 */  jalr  $t9
/* 00441FDC AFAD001C */   sw    $t5, 0x1c($sp)
/* 00441FE0 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00441FE4 93AE0043 */  lbu   $t6, 0x43($sp)
/* 00441FE8 8F818BE8 */  lw     $at, %got(currsegment)($gp)
/* 00441FEC 8FAF0038 */  lw    $t7, 0x38($sp)
/* 00441FF0 A02E0000 */  sb    $t6, ($at)
/* 00441FF4 8FBF002C */  lw    $ra, 0x2c($sp)
/* 00441FF8 8F818B64 */  lw     $at, %got(currsegmentindex)($gp)
/* 00441FFC 8FA2003C */  lw    $v0, 0x3c($sp)
/* 00442000 27BD0048 */  addiu $sp, $sp, 0x48
/* 00442004 03E00008 */  jr    $ra
/* 00442008 AC2F0000 */   sw    $t7, ($at)

    .type emit_fp_const, @function
    .size emit_fp_const, .-emit_fp_const
    .end emit_fp_const

glabel emit_pool_const
    .ent emit_pool_const
    # 004653BC func_004653BC
/* 0044200C 3C1C0FBF */  .cpload $t9
/* 00442010 279C8254 */  
/* 00442014 0399E021 */  
/* 00442018 27BDFF88 */  addiu $sp, $sp, -0x78
/* 0044201C 8F8E8BE8 */  lw     $t6, %got(currsegment)($gp)
/* 00442020 93B80093 */  lbu   $t8, 0x93($sp)
/* 00442024 8F818BE8 */  lw     $at, %got(currsegment)($gp)
/* 00442028 8F8F8B64 */  lw     $t7, %got(currsegmentindex)($gp)
/* 0044202C 8F998AEC */  lw     $t9, %got(seg_ic)($gp)
/* 00442030 91CE0000 */  lbu   $t6, ($t6)
/* 00442034 A0380000 */  sb    $t8, ($at)
/* 00442038 8F818B64 */  lw     $at, %got(currsegmentindex)($gp)
/* 0044203C 8DEF0000 */  lw    $t7, ($t7)
/* 00442040 8F390000 */  lw    $t9, ($t9)
/* 00442044 00184080 */  sll   $t0, $t8, 2
/* 00442048 AFBF0064 */  sw    $ra, 0x64($sp)
/* 0044204C AFBC0060 */  sw    $gp, 0x60($sp)
/* 00442050 AFA40078 */  sw    $a0, 0x78($sp)
/* 00442054 AFA5007C */  sw    $a1, 0x7c($sp)
/* 00442058 AFA60080 */  sw    $a2, 0x80($sp)
/* 0044205C AFA70084 */  sw    $a3, 0x84($sp)
/* 00442060 A3AE0073 */  sb    $t6, 0x73($sp)
/* 00442064 AC380000 */  sw    $t8, ($at)
/* 00442068 AFAF0068 */  sw    $t7, 0x68($sp)
/* 0044206C 03284821 */  addu  $t1, $t9, $t0
/* 00442070 8D230000 */  lw    $v1, ($t1)
/* 00442074 3C010001 */  lui   $at, 1
/* 00442078 0061082A */  slt   $at, $v1, $at
/* 0044207C 14200035 */  bnez  $at, .L00442154
/* 00442080 34018000 */   li    $at, 32768
/* 00442084 8F8A89AC */  lw     $t2, %got(pool_too_big)($gp)
/* 00442088 00000000 */  nop   
/* 0044208C 914A0000 */  lbu   $t2, ($t2)
/* 00442090 00000000 */  nop   
/* 00442094 1540002E */  bnez  $t2, .L00442150
/* 00442098 00001825 */   move  $v1, $zero
/* 0044209C 8F8B8070 */  lw    $t3, %got(RO_10018C6C)($gp)
/* 004420A0 03A07025 */  move  $t6, $sp
/* 004420A4 256B8C6C */  addiu $t3, %lo(RO_10018C6C) # addiu $t3, $t3, -0x7394
/* 004420A8 256D0048 */  addiu $t5, $t3, 0x48
.L004420AC:
/* 004420AC 89610000 */  lwl   $at, ($t3)
/* 004420B0 99610003 */  lwr   $at, 3($t3)
/* 004420B4 256B000C */  addiu $t3, $t3, 0xc
/* 004420B8 A9C10000 */  swl   $at, ($t6)
/* 004420BC B9C10003 */  swr   $at, 3($t6)
/* 004420C0 8961FFF8 */  lwl   $at, -8($t3)
/* 004420C4 9961FFFB */  lwr   $at, -5($t3)
/* 004420C8 25CE000C */  addiu $t6, $t6, 0xc
/* 004420CC A9C1FFF8 */  swl   $at, -8($t6)
/* 004420D0 B9C1FFFB */  swr   $at, -5($t6)
/* 004420D4 8961FFFC */  lwl   $at, -4($t3)
/* 004420D8 9961FFFF */  lwr   $at, -1($t3)
/* 004420DC 00000000 */  nop   
/* 004420E0 A9C1FFFC */  swl   $at, -4($t6)
/* 004420E4 156DFFF1 */  bne   $t3, $t5, .L004420AC
/* 004420E8 B9C1FFFF */   swr   $at, -1($t6)
/* 004420EC 89610000 */  lwl   $at, ($t3)
/* 004420F0 99610003 */  lwr   $at, 3($t3)
/* 004420F4 8F8F8C68 */  lw     $t7, %got(emptystring)($gp)
/* 004420F8 A9C10000 */  swl   $at, ($t6)
/* 004420FC B9C10003 */  swr   $at, 3($t6)
/* 00442100 896D0004 */  lwl   $t5, 4($t3)
/* 00442104 996D0007 */  lwr   $t5, 7($t3)
/* 00442108 24180001 */  li    $t8, 1
/* 0044210C A9CD0004 */  swl   $t5, 4($t6)
/* 00442110 B9CD0007 */  swr   $t5, 7($t6)
/* 00442114 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00442118 8DEF0000 */  lw    $t7, ($t7)
/* 0044211C 8FA7000C */  lw    $a3, 0xc($sp)
/* 00442120 8FA60008 */  lw    $a2, 8($sp)
/* 00442124 8FA50004 */  lw    $a1, 4($sp)
/* 00442128 8FA40000 */  lw    $a0, ($sp)
/* 0044212C AFB80054 */  sw    $t8, 0x54($sp)
/* 00442130 0320F809 */  jalr  $t9
/* 00442134 AFAF0050 */   sw    $t7, 0x50($sp)
/* 00442138 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0044213C 24190001 */  li    $t9, 1
/* 00442140 8F8189AC */  lw     $at, %got(pool_too_big)($gp)
/* 00442144 00000000 */  nop   
/* 00442148 A0390000 */  sb    $t9, ($at)
/* 0044214C 00001825 */  move  $v1, $zero
.L00442150:
/* 00442150 34018000 */  li    $at, 32768
.L00442154:
/* 00442154 0061082A */  slt   $at, $v1, $at
/* 00442158 14200004 */  bnez  $at, .L0044216C
/* 0044215C 27AA0078 */   addiu $t2, $sp, 0x78
/* 00442160 3C01FFFF */  lui   $at, 0xffff
/* 00442164 00614025 */  or    $t0, $v1, $at
/* 00442168 01001825 */  move  $v1, $t0
.L0044216C:
/* 0044216C 93A90093 */  lbu   $t1, 0x93($sp)
/* 00442170 24010005 */  li    $at, 5
/* 00442174 15210003 */  bne   $t1, $at, .L00442184
/* 00442178 2404000B */   li    $a0, 11
/* 0044217C 10000001 */  b     .L00442184
/* 00442180 2404000D */   li    $a0, 13
.L00442184:
/* 00442184 8D410000 */  lw    $at, ($t2)
/* 00442188 8F9984A0 */  lw    $t9, %call16(emit_const)($gp)
/* 0044218C AFA10010 */  sw    $at, 0x10($sp)
/* 00442190 8D4D0004 */  lw    $t5, 4($t2)
/* 00442194 93A5008B */  lbu   $a1, 0x8b($sp)
/* 00442198 AFAD0014 */  sw    $t5, 0x14($sp)
/* 0044219C 8D410008 */  lw    $at, 8($t2)
/* 004421A0 93A6008F */  lbu   $a2, 0x8f($sp)
/* 004421A4 AFA10018 */  sw    $at, 0x18($sp)
/* 004421A8 8D4D000C */  lw    $t5, 0xc($t2)
/* 004421AC AFA3006C */  sw    $v1, 0x6c($sp)
/* 004421B0 0320F809 */  jalr  $t9
/* 004421B4 AFAD001C */   sw    $t5, 0x1c($sp)
/* 004421B8 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004421BC 93AB0073 */  lbu   $t3, 0x73($sp)
/* 004421C0 8F818BE8 */  lw     $at, %got(currsegment)($gp)
/* 004421C4 8FAE0068 */  lw    $t6, 0x68($sp)
/* 004421C8 A02B0000 */  sb    $t3, ($at)
/* 004421CC 8FBF0064 */  lw    $ra, 0x64($sp)
/* 004421D0 8F818B64 */  lw     $at, %got(currsegmentindex)($gp)
/* 004421D4 8FA2006C */  lw    $v0, 0x6c($sp)
/* 004421D8 27BD0078 */  addiu $sp, $sp, 0x78
/* 004421DC 03E00008 */  jr    $ra
/* 004421E0 AC2E0000 */   sw    $t6, ($at)
    .type emit_pool_const, @function
    .size emit_pool_const, .-emit_pool_const
    .end emit_pool_const
)"");
