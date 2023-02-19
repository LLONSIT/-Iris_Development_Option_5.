__asm__(R""(
.macro glabel label
    .global \label
    .balign 4
    \label:
.endm




.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.text
/* 0043753C 00000000 */  nop   
glabel ms_pseudo
    .ent ms_pseudo
    # 00437D6C st_pseudo
/* 00437540 03E00008 */  jr    $ra
/* 00437544 00000000 */   nop   

    .type ms_pseudo, @function
    .size ms_pseudo, .-ms_pseudo
    .end ms_pseudo

glabel ms_readsym
    .ent ms_readsym
    # 0044AA24 func_0044AA24
/* 00437548 AFA40000 */  sw    $a0, ($sp)
/* 0043754C 03E00008 */  jr    $ra
/* 00437550 24020001 */   li    $v0, 1

    .type ms_readsym, @function
    .size ms_readsym, .-ms_readsym
    .end ms_readsym

glabel st_asinit
    .ent st_asinit
    # 0044AA24 func_0044AA24
    # 0044AD48 func_0044AD48
/* 00437554 3C1C0FBF */  .cpload $t9
/* 00437558 279C2D0C */  
/* 0043755C 0399E021 */  
/* 00437560 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00437564 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00437568 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0043756C AFA40028 */  sw    $a0, 0x28($sp)
/* 00437570 AFA5002C */  sw    $a1, 0x2c($sp)
/* 00437574 908F0000 */  lbu   $t7, ($a0)
/* 00437578 24180001 */  li    $t8, 1
/* 0043757C 15E00008 */  bnez  $t7, .L004375A0
/* 00437580 27A40024 */   addiu $a0, $sp, 0x24
/* 00437584 8F99882C */  lw    $t9, %call16(st_setfd)($gp)
/* 00437588 00002025 */  move  $a0, $zero
/* 0043758C 0320F809 */  jalr  $t9
/* 00437590 00000000 */   nop   
/* 00437594 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00437598 10000023 */  b     .L00437628
/* 0043759C 8FBF001C */   lw    $ra, 0x1c($sp)
.L004375A0:
/* 004375A0 8F81808C */  lw    $at, %got(B_1002FE08)($gp)
/* 004375A4 8F998180 */  lw    $t9, %call16(memset)($gp)
/* 004375A8 00002825 */  move  $a1, $zero
/* 004375AC 24060004 */  li    $a2, 4
/* 004375B0 0320F809 */  jalr  $t9
/* 004375B4 AC38FE08 */   sw    $t8, %lo(B_1002FE08)($at)
/* 004375B8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004375BC 8FB9002C */  lw    $t9, 0x2c($sp)
/* 004375C0 8F8988E8 */  lw     $t1, %got(map_glevel)($gp)
/* 004375C4 00194080 */  sll   $t0, $t9, 2
/* 004375C8 8F998854 */  lw    $t9, %call16(st_filebegin)($gp)
/* 004375CC 01095021 */  addu  $t2, $t0, $t1
/* 004375D0 8D470000 */  lw    $a3, ($t2)
/* 004375D4 8FA40028 */  lw    $a0, 0x28($sp)
/* 004375D8 24050003 */  li    $a1, 3
/* 004375DC 0320F809 */  jalr  $t9
/* 004375E0 24060001 */   li    $a2, 1
/* 004375E4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004375E8 2401FFFF */  li    $at, -1
/* 004375EC 8F83808C */  lw    $v1, %got(B_1002FE04)($gp)
/* 004375F0 00000000 */  nop   
/* 004375F4 2463FE04 */  addiu $v1, %lo(B_1002FE04) # addiu $v1, $v1, -0x1fc
/* 004375F8 1041000A */  beq   $v0, $at, .L00437624
/* 004375FC AC620000 */   sw    $v0, ($v1)
/* 00437600 8F998824 */  lw    $t9, %call16(st_currentifd)($gp)
/* 00437604 00000000 */  nop   
/* 00437608 0320F809 */  jalr  $t9
/* 0043760C 00000000 */   nop   
/* 00437610 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00437614 00000000 */  nop   
/* 00437618 8F81808C */  lw    $at, %got(B_1002FE00)($gp)
/* 0043761C 00000000 */  nop   
/* 00437620 AC22FE00 */  sw    $v0, %lo(B_1002FE00)($at)
.L00437624:
/* 00437624 8FBF001C */  lw    $ra, 0x1c($sp)
.L00437628:
/* 00437628 27BD0028 */  addiu $sp, $sp, 0x28
/* 0043762C 03E00008 */  jr    $ra
/* 00437630 00000000 */   nop   

    .type st_asinit, @function
    .size st_asinit, .-st_asinit
    .end st_asinit

glabel st_asend
    .ent st_asend
    # 004392DC wrcoffobj
/* 00437634 3C1C0FBF */  .cpload $t9
/* 00437638 279C2C2C */  
/* 0043763C 0399E021 */  
/* 00437640 8F8E808C */  lw    $t6, %got(B_1002FE08)($gp)
/* 00437644 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00437648 8DCEFE08 */  lw    $t6, %lo(B_1002FE08)($t6)
/* 0043764C AFBF001C */  sw    $ra, 0x1c($sp)
/* 00437650 11C0000D */  beqz  $t6, .L00437688
/* 00437654 AFBC0018 */   sw    $gp, 0x18($sp)
/* 00437658 8F84808C */  lw    $a0, %got(B_1002FE04)($gp)
/* 0043765C 2401FFFF */  li    $at, -1
/* 00437660 8C84FE04 */  lw    $a0, %lo(B_1002FE04)($a0)
/* 00437664 00000000 */  nop   
/* 00437668 10810008 */  beq   $a0, $at, .L0043768C
/* 0043766C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00437670 8F998858 */  lw    $t9, %call16(st_fileend)($gp)
/* 00437674 00000000 */  nop   
/* 00437678 0320F809 */  jalr  $t9
/* 0043767C 00000000 */   nop   
/* 00437680 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00437684 00000000 */  nop   
.L00437688:
/* 00437688 8FBF001C */  lw    $ra, 0x1c($sp)
.L0043768C:
/* 0043768C 27BD0020 */  addiu $sp, $sp, 0x20
/* 00437690 03E00008 */  jr    $ra
/* 00437694 00000000 */   nop   

    .type st_asend, @function
    .size st_asend, .-st_asend
    .end st_asend

glabel st_feinit
    .ent st_feinit
    # 0048CA2C st_filebegin
/* 00437698 03E00008 */  jr    $ra
/* 0043769C 00000000 */   nop   

    .type st_feinit, @function
    .size st_feinit, .-st_feinit
    .end st_feinit

glabel st_fixdef
    .ent st_fixdef
    # 0044D35C wrobj
/* 004376A0 3C1C0FBF */  .cpload $t9
/* 004376A4 279C2BC0 */  
/* 004376A8 0399E021 */  
/* 004376AC 8F8E808C */  lw    $t6, %got(B_1002FE04)($gp)
/* 004376B0 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 004376B4 8DCEFE04 */  lw    $t6, %lo(B_1002FE04)($t6)
/* 004376B8 2401FFFF */  li    $at, -1
/* 004376BC AFBF0024 */  sw    $ra, 0x24($sp)
/* 004376C0 AFBC0020 */  sw    $gp, 0x20($sp)
/* 004376C4 AFA40058 */  sw    $a0, 0x58($sp)
/* 004376C8 AFA5005C */  sw    $a1, 0x5c($sp)
/* 004376CC AFA60060 */  sw    $a2, 0x60($sp)
/* 004376D0 11C1013C */  beq   $t6, $at, .L00437BC4
/* 004376D4 00004025 */   move  $t0, $zero
/* 004376D8 28E20041 */  slti  $v0, $a3, 0x41
/* 004376DC 38430001 */  xori  $v1, $v0, 1
/* 004376E0 10600002 */  beqz  $v1, .L004376EC
/* 004376E4 24F9FFBF */   addiu $t9, $a3, -0x41
/* 004376E8 28E3005B */  slti  $v1, $a3, 0x5b
.L004376EC:
/* 004376EC 10600004 */  beqz  $v1, .L00437700
/* 004376F0 2F210034 */   sltiu $at, $t9, 0x34
/* 004376F4 240F0001 */  li    $t7, 1
/* 004376F8 10000003 */  b     .L00437708
/* 004376FC AFAF0040 */   sw    $t7, 0x40($sp)
.L00437700:
/* 00437700 24180002 */  li    $t8, 2
/* 00437704 AFB80040 */  sw    $t8, 0x40($sp)
.L00437708:
/* 00437708 10200030 */  beqz  $at, .L004377CC
/* 0043770C 00000000 */   nop   
/* 00437710 8F81806C */  lw    $at, %got(jtbl_10016EC8)($gp)
/* 00437714 0019C880 */  sll   $t9, $t9, 2
/* 00437718 00390821 */  addu  $at, $at, $t9
/* 0043771C 8C396EC8 */  lw    $t9, %lo(jtbl_10016EC8)($at)
/* 00437720 00000000 */  nop   
/* 00437724 033CC821 */  addu  $t9, $t9, $gp
/* 00437728 03200008 */  jr    $t9
/* 0043772C 00000000 */   nop   
.L00437730:
/* 00437730 24090005 */  li    $t1, 5
/* 00437734 10000030 */  b     .L004377F8
/* 00437738 AFA90044 */   sw    $t1, 0x44($sp)
.L0043773C:
/* 0043773C 240A0002 */  li    $t2, 2
/* 00437740 1000002D */  b     .L004377F8
/* 00437744 AFAA0044 */   sw    $t2, 0x44($sp)
.L00437748:
/* 00437748 240B0003 */  li    $t3, 3
/* 0043774C 1000002A */  b     .L004377F8
/* 00437750 AFAB0044 */   sw    $t3, 0x44($sp)
.L00437754:
/* 00437754 240C000F */  li    $t4, 15
/* 00437758 10000027 */  b     .L004377F8
/* 0043775C AFAC0044 */   sw    $t4, 0x44($sp)
.L00437760:
/* 00437760 240D000E */  li    $t5, 14
/* 00437764 10000024 */  b     .L004377F8
/* 00437768 AFAD0044 */   sw    $t5, 0x44($sp)
.L0043776C:
/* 0043776C 240E000D */  li    $t6, 13
/* 00437770 10000021 */  b     .L004377F8
/* 00437774 AFAE0044 */   sw    $t6, 0x44($sp)
.L00437778:
/* 00437778 240F0001 */  li    $t7, 1
/* 0043777C 10600004 */  beqz  $v1, .L00437790
/* 00437780 AFAF0044 */   sw    $t7, 0x44($sp)
/* 00437784 24180006 */  li    $t8, 6
/* 00437788 1000001B */  b     .L004377F8
/* 0043778C AFB80040 */   sw    $t8, 0x40($sp)
.L00437790:
/* 00437790 24190005 */  li    $t9, 5
/* 00437794 10000018 */  b     .L004377F8
/* 00437798 AFB90040 */   sw    $t9, 0x40($sp)
.L0043779C:
/* 0043779C 24090011 */  li    $t1, 17
/* 004377A0 10000015 */  b     .L004377F8
/* 004377A4 AFA90044 */   sw    $t1, 0x44($sp)
.L004377A8:
/* 004377A8 240A0012 */  li    $t2, 18
/* 004377AC 10000012 */  b     .L004377F8
/* 004377B0 AFAA0044 */   sw    $t2, 0x44($sp)
.L004377B4:
/* 004377B4 240B0006 */  li    $t3, 6
/* 004377B8 1000000F */  b     .L004377F8
/* 004377BC AFAB0044 */   sw    $t3, 0x44($sp)
.L004377C0:
/* 004377C0 240C0015 */  li    $t4, 21
/* 004377C4 1000000C */  b     .L004377F8
/* 004377C8 AFAC0044 */   sw    $t4, 0x44($sp)
.L004377CC:
/* 004377CC 8F84806C */  lw    $a0, %got(RO_10016CD0)($gp)
/* 004377D0 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 004377D4 00E02825 */  move  $a1, $a3
/* 004377D8 AFA30034 */  sw    $v1, 0x34($sp)
/* 004377DC AFA80048 */  sw    $t0, 0x48($sp)
/* 004377E0 0320F809 */  jalr  $t9
/* 004377E4 24846CD0 */   addiu $a0, %lo(RO_10016CD0) # addiu $a0, $a0, 0x6cd0
/* 004377E8 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004377EC 8FA30034 */  lw    $v1, 0x34($sp)
/* 004377F0 8FA80048 */  lw    $t0, 0x48($sp)
/* 004377F4 00000000 */  nop   
.L004377F8:
/* 004377F8 8FAD0058 */  lw    $t5, 0x58($sp)
/* 004377FC 00000000 */  nop   
/* 00437800 05A0004B */  bltz  $t5, .L00437930
/* 00437804 01A02025 */   move  $a0, $t5
/* 00437808 8F9986E0 */  lw    $t9, %call16(st_pdn_idn)($gp)
/* 0043780C AFA30034 */  sw    $v1, 0x34($sp)
/* 00437810 0320F809 */  jalr  $t9
/* 00437814 AFA80048 */   sw    $t0, 0x48($sp)
/* 00437818 8C410000 */  lw    $at, ($v0)
/* 0043781C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00437820 8FA30034 */  lw    $v1, 0x34($sp)
/* 00437824 8FA80048 */  lw    $t0, 0x48($sp)
/* 00437828 27AE004C */  addiu $t6, $sp, 0x4c
/* 0043782C ADC10000 */  sw    $at, ($t6)
/* 00437830 8C590004 */  lw    $t9, 4($v0)
/* 00437834 3C01000F */  lui   $at, 0xf
/* 00437838 ADD90004 */  sw    $t9, 4($t6)
/* 0043783C 8FA90050 */  lw    $t1, 0x50($sp)
/* 00437840 3421FFFF */  ori   $at, $at, 0xffff
/* 00437844 15210004 */  bne   $t1, $at, .L00437858
/* 00437848 8FAA004C */   lw    $t2, 0x4c($sp)
/* 0043784C 10000038 */  b     .L00437930
/* 00437850 AFA0005C */   sw    $zero, 0x5c($sp)
/* 00437854 8FAA004C */  lw    $t2, 0x4c($sp)
.L00437858:
/* 00437858 3C017FFF */  lui   $at, 0x7fff
/* 0043785C 3421FFFF */  ori   $at, $at, 0xffff
/* 00437860 15410007 */  bne   $t2, $at, .L00437880
/* 00437864 00000000 */   nop   
/* 00437868 8F9986D8 */  lw    $t9, %call16(st_pext_iext)($gp)
/* 0043786C 8FA40050 */  lw    $a0, 0x50($sp)
/* 00437870 0320F809 */  jalr  $t9
/* 00437874 00000000 */   nop   
/* 00437878 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0043787C 00404025 */  move  $t0, $v0
.L00437880:
/* 00437880 8F9986F0 */  lw    $t9, %call16(st_psym_ifd_isym)($gp)
/* 00437884 8FA4004C */  lw    $a0, 0x4c($sp)
/* 00437888 8FA50050 */  lw    $a1, 0x50($sp)
/* 0043788C 0320F809 */  jalr  $t9
/* 00437890 AFA80048 */   sw    $t0, 0x48($sp)
/* 00437894 8C4B0008 */  lw    $t3, 8($v0)
/* 00437898 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0043789C 8FA80048 */  lw    $t0, 0x48($sp)
/* 004378A0 2401001F */  li    $at, 31
/* 004378A4 000B6682 */  srl   $t4, $t3, 0x1a
/* 004378A8 118100C4 */  beq   $t4, $at, .L00437BBC
/* 004378AC 00402025 */   move  $a0, $v0
/* 004378B0 11000007 */  beqz  $t0, .L004378D0
/* 004378B4 8FAE0060 */   lw    $t6, 0x60($sp)
/* 004378B8 8D0D0000 */  lw    $t5, ($t0)
/* 004378BC 00000000 */  nop   
/* 004378C0 000D78C0 */  sll   $t7, $t5, 3
/* 004378C4 05E000BE */  bltz  $t7, .L00437BC0
/* 004378C8 8FA20050 */   lw    $v0, 0x50($sp)
/* 004378CC 8FAE0060 */  lw    $t6, 0x60($sp)
.L004378D0:
/* 004378D0 00000000 */  nop   
/* 004378D4 AC8E0004 */  sw    $t6, 4($a0)
/* 004378D8 8F998844 */  lw    $t9, %call16(st_non_gp)($gp)
/* 004378DC AFA40054 */  sw    $a0, 0x54($sp)
/* 004378E0 0320F809 */  jalr  $t9
/* 004378E4 00000000 */   nop   
/* 004378E8 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004378EC 8FA40054 */  lw    $a0, 0x54($sp)
/* 004378F0 10400008 */  beqz  $v0, .L00437914
/* 004378F4 8FAC0044 */   lw    $t4, 0x44($sp)
/* 004378F8 94990008 */  lhu   $t9, 8($a0)
/* 004378FC 00000000 */  nop   
/* 00437900 3329FC1F */  andi  $t1, $t9, 0xfc1f
/* 00437904 352A0220 */  ori   $t2, $t1, 0x220
/* 00437908 100000AC */  b     .L00437BBC
/* 0043790C A48A0008 */   sh    $t2, 8($a0)
/* 00437910 8FAC0044 */  lw    $t4, 0x44($sp)
.L00437914:
/* 00437914 948F0008 */  lhu   $t7, 8($a0)
/* 00437918 000C6940 */  sll   $t5, $t4, 5
/* 0043791C 31B803E0 */  andi  $t8, $t5, 0x3e0
/* 00437920 31EEFC1F */  andi  $t6, $t7, 0xfc1f
/* 00437924 030EC825 */  or    $t9, $t8, $t6
/* 00437928 100000A4 */  b     .L00437BBC
/* 0043792C A4990008 */   sh    $t9, 8($a0)
.L00437930:
/* 00437930 10600058 */  beqz  $v1, .L00437A94
/* 00437934 3C097FFF */   lui   $t1, 0x7fff
/* 00437938 8FAA0044 */  lw    $t2, 0x44($sp)
/* 0043793C 3529FFFF */  ori   $t1, $t1, 0xffff
/* 00437940 24010001 */  li    $at, 1
/* 00437944 15410047 */  bne   $t2, $at, .L00437A64
/* 00437948 AFA9004C */   sw    $t1, 0x4c($sp)
/* 0043794C 8F82808C */  lw    $v0, %got(B_1002FE1C)($gp)
/* 00437950 8FA50060 */  lw    $a1, 0x60($sp)
/* 00437954 8C42FE1C */  lw    $v0, %lo(B_1002FE1C)($v0)
/* 00437958 00002025 */  move  $a0, $zero
/* 0043795C 1040000A */  beqz  $v0, .L00437988
/* 00437960 24060008 */   li    $a2, 8
/* 00437964 8F9986E4 */  lw    $t9, %call16(st_symadd)($gp)
/* 00437968 24070001 */  li    $a3, 1
/* 0043796C 0320F809 */  jalr  $t9
/* 00437970 AFA20010 */   sw    $v0, 0x10($sp)
/* 00437974 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00437978 00000000 */  nop   
/* 0043797C 8F81808C */  lw    $at, %got(B_1002FE1C)($gp)
/* 00437980 00000000 */  nop   
/* 00437984 AC20FE1C */  sw    $zero, %lo(B_1002FE1C)($at)
.L00437988:
/* 00437988 8F998814 */  lw    $t9, %call16(st_str_extiss)($gp)
/* 0043798C 8FA4005C */  lw    $a0, 0x5c($sp)
/* 00437990 0320F809 */  jalr  $t9
/* 00437994 00000000 */   nop   
/* 00437998 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0043799C 00402025 */  move  $a0, $v0
/* 004379A0 8F998840 */  lw    $t9, %call16(st_stradd)($gp)
/* 004379A4 00000000 */  nop   
/* 004379A8 0320F809 */  jalr  $t9
/* 004379AC 00000000 */   nop   
/* 004379B0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004379B4 3C0B000F */  lui   $t3, 0xf
/* 004379B8 8F9986E4 */  lw    $t9, %call16(st_symadd)($gp)
/* 004379BC 356BFFFF */  ori   $t3, $t3, 0xffff
/* 004379C0 8FA50060 */  lw    $a1, 0x60($sp)
/* 004379C4 8FA60040 */  lw    $a2, 0x40($sp)
/* 004379C8 8FA70044 */  lw    $a3, 0x44($sp)
/* 004379CC AFAB0010 */  sw    $t3, 0x10($sp)
/* 004379D0 0320F809 */  jalr  $t9
/* 004379D4 00402025 */   move  $a0, $v0
/* 004379D8 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004379DC 00402025 */  move  $a0, $v0
/* 004379E0 8F81808C */  lw    $at, %got(B_1002FE1C)($gp)
/* 004379E4 8F998838 */  lw    $t9, %call16(st_pdadd)($gp)
/* 004379E8 AC22FE1C */  sw    $v0, %lo(B_1002FE1C)($at)
/* 004379EC 0320F809 */  jalr  $t9
/* 004379F0 00000000 */   nop   
/* 004379F4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004379F8 8FA4005C */  lw    $a0, 0x5c($sp)
/* 004379FC 8F8C808C */  lw    $t4, %got(B_1002FE1C)($gp)
/* 00437A00 8F9986D4 */  lw    $t9, %call16(st_extadd)($gp)
/* 00437A04 8D8CFE1C */  lw    $t4, %lo(B_1002FE1C)($t4)
/* 00437A08 8FA50060 */  lw    $a1, 0x60($sp)
/* 00437A0C 8FA60040 */  lw    $a2, 0x40($sp)
/* 00437A10 8FA70044 */  lw    $a3, 0x44($sp)
/* 00437A14 0320F809 */  jalr  $t9
/* 00437A18 AFAC0010 */   sw    $t4, 0x10($sp)
/* 00437A1C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00437A20 AFA20050 */  sw    $v0, 0x50($sp)
/* 00437A24 8F9986DC */  lw    $t9, %call16(st_idn_index_fext)($gp)
/* 00437A28 00402025 */  move  $a0, $v0
/* 00437A2C 0320F809 */  jalr  $t9
/* 00437A30 24050001 */   li    $a1, 1
/* 00437A34 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00437A38 8FA60060 */  lw    $a2, 0x60($sp)
/* 00437A3C 8F9983F4 */  lw    $t9, %call16(st_pseudo)($gp)
/* 00437A40 24040001 */  li    $a0, 1
/* 00437A44 00402825 */  move  $a1, $v0
/* 00437A48 00003825 */  move  $a3, $zero
/* 00437A4C AFA00010 */  sw    $zero, 0x10($sp)
/* 00437A50 0320F809 */  jalr  $t9
/* 00437A54 AFA00014 */   sw    $zero, 0x14($sp)
/* 00437A58 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00437A5C 10000058 */  b     .L00437BC0
/* 00437A60 8FA20050 */   lw    $v0, 0x50($sp)
.L00437A64:
/* 00437A64 8F9986D4 */  lw    $t9, %call16(st_extadd)($gp)
/* 00437A68 3C0D000F */  lui   $t5, 0xf
/* 00437A6C 35ADFFFF */  ori   $t5, $t5, 0xffff
/* 00437A70 8FA4005C */  lw    $a0, 0x5c($sp)
/* 00437A74 8FA50060 */  lw    $a1, 0x60($sp)
/* 00437A78 8FA60040 */  lw    $a2, 0x40($sp)
/* 00437A7C 8FA70044 */  lw    $a3, 0x44($sp)
/* 00437A80 0320F809 */  jalr  $t9
/* 00437A84 AFAD0010 */   sw    $t5, 0x10($sp)
/* 00437A88 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00437A8C 1000004B */  b     .L00437BBC
/* 00437A90 AFA20050 */   sw    $v0, 0x50($sp)
.L00437A94:
/* 00437A94 8FAF0058 */  lw    $t7, 0x58($sp)
/* 00437A98 2401FFFE */  li    $at, -2
/* 00437A9C 15E1003A */  bne   $t7, $at, .L00437B88
/* 00437AA0 3C0A000F */   lui   $t2, 0xf
/* 00437AA4 8FB80044 */  lw    $t8, 0x44($sp)
/* 00437AA8 24010001 */  li    $at, 1
/* 00437AAC 17010036 */  bne   $t8, $at, .L00437B88
/* 00437AB0 00000000 */   nop   
/* 00437AB4 8F82808C */  lw    $v0, %got(B_1002FE1C)($gp)
/* 00437AB8 8F8E808C */  lw    $t6, %got(B_1002FE00)($gp)
/* 00437ABC 8C42FE1C */  lw    $v0, %lo(B_1002FE1C)($v0)
/* 00437AC0 8DCEFE00 */  lw    $t6, %lo(B_1002FE00)($t6)
/* 00437AC4 1040000D */  beqz  $v0, .L00437AFC
/* 00437AC8 AFAE004C */   sw    $t6, 0x4c($sp)
/* 00437ACC 8F9986E4 */  lw    $t9, %call16(st_symadd)($gp)
/* 00437AD0 8FA50060 */  lw    $a1, 0x60($sp)
/* 00437AD4 00002025 */  move  $a0, $zero
/* 00437AD8 24060008 */  li    $a2, 8
/* 00437ADC 24070001 */  li    $a3, 1
/* 00437AE0 0320F809 */  jalr  $t9
/* 00437AE4 AFA20010 */   sw    $v0, 0x10($sp)
/* 00437AE8 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00437AEC 00000000 */  nop   
/* 00437AF0 8F81808C */  lw    $at, %got(B_1002FE1C)($gp)
/* 00437AF4 00000000 */  nop   
/* 00437AF8 AC20FE1C */  sw    $zero, %lo(B_1002FE1C)($at)
.L00437AFC:
/* 00437AFC 3C19000F */  lui   $t9, 0xf
/* 00437B00 3739FFFF */  ori   $t9, $t9, 0xffff
/* 00437B04 AFB90010 */  sw    $t9, 0x10($sp)
/* 00437B08 8F9986E4 */  lw    $t9, %call16(st_symadd)($gp)
/* 00437B0C 8FA4005C */  lw    $a0, 0x5c($sp)
/* 00437B10 8FA50060 */  lw    $a1, 0x60($sp)
/* 00437B14 8FA70044 */  lw    $a3, 0x44($sp)
/* 00437B18 0320F809 */  jalr  $t9
/* 00437B1C 2406000E */   li    $a2, 14
/* 00437B20 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00437B24 AFA20050 */  sw    $v0, 0x50($sp)
/* 00437B28 8F81808C */  lw    $at, %got(B_1002FE1C)($gp)
/* 00437B2C 8F998838 */  lw    $t9, %call16(st_pdadd)($gp)
/* 00437B30 00402025 */  move  $a0, $v0
/* 00437B34 0320F809 */  jalr  $t9
/* 00437B38 AC22FE1C */   sw    $v0, %lo(B_1002FE1C)($at)
/* 00437B3C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00437B40 00002825 */  move  $a1, $zero
/* 00437B44 8F84808C */  lw    $a0, %got(B_1002FE1C)($gp)
/* 00437B48 8F9986DC */  lw    $t9, %call16(st_idn_index_fext)($gp)
/* 00437B4C 8C84FE1C */  lw    $a0, %lo(B_1002FE1C)($a0)
/* 00437B50 0320F809 */  jalr  $t9
/* 00437B54 00000000 */   nop   
/* 00437B58 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00437B5C 8FA60060 */  lw    $a2, 0x60($sp)
/* 00437B60 8F9983F4 */  lw    $t9, %call16(st_pseudo)($gp)
/* 00437B64 24040001 */  li    $a0, 1
/* 00437B68 00402825 */  move  $a1, $v0
/* 00437B6C 00003825 */  move  $a3, $zero
/* 00437B70 AFA00010 */  sw    $zero, 0x10($sp)
/* 00437B74 0320F809 */  jalr  $t9
/* 00437B78 AFA00014 */   sw    $zero, 0x14($sp)
/* 00437B7C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00437B80 1000000F */  b     .L00437BC0
/* 00437B84 8FA20050 */   lw    $v0, 0x50($sp)
.L00437B88:
/* 00437B88 8F89808C */  lw    $t1, %got(B_1002FE00)($gp)
/* 00437B8C 8F9986E4 */  lw    $t9, %call16(st_symadd)($gp)
/* 00437B90 8D29FE00 */  lw    $t1, %lo(B_1002FE00)($t1)
/* 00437B94 8FA4005C */  lw    $a0, 0x5c($sp)
/* 00437B98 8FA50060 */  lw    $a1, 0x60($sp)
/* 00437B9C 8FA60040 */  lw    $a2, 0x40($sp)
/* 00437BA0 8FA70044 */  lw    $a3, 0x44($sp)
/* 00437BA4 354AFFFF */  ori   $t2, $t2, 0xffff
/* 00437BA8 AFAA0010 */  sw    $t2, 0x10($sp)
/* 00437BAC 0320F809 */  jalr  $t9
/* 00437BB0 AFA9004C */   sw    $t1, 0x4c($sp)
/* 00437BB4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00437BB8 AFA20050 */  sw    $v0, 0x50($sp)
.L00437BBC:
/* 00437BBC 8FA20050 */  lw    $v0, 0x50($sp)
.L00437BC0:
/* 00437BC0 00000000 */  nop   
.L00437BC4:
/* 00437BC4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 00437BC8 27BD0058 */  addiu $sp, $sp, 0x58
/* 00437BCC 03E00008 */  jr    $ra
/* 00437BD0 00000000 */   nop   

    .type st_fixdef, @function
    .size st_fixdef, .-st_fixdef
    .end st_fixdef

glabel st_fixweakext
    .ent st_fixweakext
    # 0044D35C wrobj
/* 00437BD4 3C1C0FBF */  .cpload $t9
/* 00437BD8 279C268C */  
/* 00437BDC 0399E021 */  
/* 00437BE0 8F9986E0 */  lw    $t9, %call16(st_pdn_idn)($gp)
/* 00437BE4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 00437BE8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00437BEC AFBC0018 */  sw    $gp, 0x18($sp)
/* 00437BF0 0320F809 */  jalr  $t9
/* 00437BF4 AFA50044 */   sw    $a1, 0x44($sp)
/* 00437BF8 8C410000 */  lw    $at, ($v0)
/* 00437BFC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00437C00 27AE0038 */  addiu $t6, $sp, 0x38
/* 00437C04 ADC10000 */  sw    $at, ($t6)
/* 00437C08 8C590004 */  lw    $t9, 4($v0)
/* 00437C0C 00000000 */  nop   
/* 00437C10 ADD90004 */  sw    $t9, 4($t6)
/* 00437C14 8F9986D8 */  lw    $t9, %call16(st_pext_iext)($gp)
/* 00437C18 8FA4003C */  lw    $a0, 0x3c($sp)
/* 00437C1C 0320F809 */  jalr  $t9
/* 00437C20 00000000 */   nop   
/* 00437C24 90490000 */  lbu   $t1, ($v0)
/* 00437C28 8FA40044 */  lw    $a0, 0x44($sp)
/* 00437C2C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00437C30 352A0020 */  ori   $t2, $t1, 0x20
/* 00437C34 00401825 */  move  $v1, $v0
/* 00437C38 10800048 */  beqz  $a0, .L00437D5C
/* 00437C3C A04A0000 */   sb    $t2, ($v0)
/* 00437C40 8F9986E0 */  lw    $t9, %call16(st_pdn_idn)($gp)
/* 00437C44 AFA30034 */  sw    $v1, 0x34($sp)
/* 00437C48 0320F809 */  jalr  $t9
/* 00437C4C 00000000 */   nop   
/* 00437C50 8C410000 */  lw    $at, ($v0)
/* 00437C54 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00437C58 27AB002C */  addiu $t3, $sp, 0x2c
/* 00437C5C AD610000 */  sw    $at, ($t3)
/* 00437C60 8C580004 */  lw    $t8, 4($v0)
/* 00437C64 00000000 */  nop   
/* 00437C68 AD780004 */  sw    $t8, 4($t3)
/* 00437C6C 8F9986D8 */  lw    $t9, %call16(st_pext_iext)($gp)
/* 00437C70 8FA40030 */  lw    $a0, 0x30($sp)
/* 00437C74 0320F809 */  jalr  $t9
/* 00437C78 00000000 */   nop   
/* 00437C7C 8C4F000C */  lw    $t7, 0xc($v0)
/* 00437C80 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00437C84 000F7180 */  sll   $t6, $t7, 6
/* 00437C88 8FA30034 */  lw    $v1, 0x34($sp)
/* 00437C8C 000ECEC2 */  srl   $t9, $t6, 0x1b
/* 00437C90 17200016 */  bnez  $t9, .L00437CEC
/* 00437C94 00402825 */   move  $a1, $v0
/* 00437C98 8F998814 */  lw    $t9, %call16(st_str_extiss)($gp)
/* 00437C9C 8C640004 */  lw    $a0, 4($v1)
/* 00437CA0 0320F809 */  jalr  $t9
/* 00437CA4 AFA50028 */   sw    $a1, 0x28($sp)
/* 00437CA8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00437CAC 8FA50028 */  lw    $a1, 0x28($sp)
/* 00437CB0 8F998814 */  lw    $t9, %call16(st_str_extiss)($gp)
/* 00437CB4 AFA20020 */  sw    $v0, 0x20($sp)
/* 00437CB8 8CA40004 */  lw    $a0, 4($a1)
/* 00437CBC 0320F809 */  jalr  $t9
/* 00437CC0 00000000 */   nop   
/* 00437CC4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00437CC8 8FA50020 */  lw    $a1, 0x20($sp)
/* 00437CCC 8F84806C */  lw    $a0, %got(RO_10016CE8)($gp)
/* 00437CD0 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00437CD4 00403025 */  move  $a2, $v0
/* 00437CD8 0320F809 */  jalr  $t9
/* 00437CDC 24846CE8 */   addiu $a0, %lo(RO_10016CE8) # addiu $a0, $a0, 0x6ce8
/* 00437CE0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00437CE4 1000001E */  b     .L00437D60
/* 00437CE8 8FBF001C */   lw    $ra, 0x1c($sp)
.L00437CEC:
/* 00437CEC 8C480008 */  lw    $t0, 8($v0)
/* 00437CF0 906B000C */  lbu   $t3, 0xc($v1)
/* 00437CF4 AC680008 */  sw    $t0, 8($v1)
/* 00437CF8 8C49000C */  lw    $t1, 0xc($v0)
/* 00437CFC 3178FF03 */  andi  $t8, $t3, 0xff03
/* 00437D00 00095682 */  srl   $t2, $t1, 0x1a
/* 00437D04 000A6080 */  sll   $t4, $t2, 2
/* 00437D08 01987825 */  or    $t7, $t4, $t8
/* 00437D0C A06F000C */  sb    $t7, 0xc($v1)
/* 00437D10 8C4E000C */  lw    $t6, 0xc($v0)
/* 00437D14 946D000C */  lhu   $t5, 0xc($v1)
/* 00437D18 000EC980 */  sll   $t9, $t6, 6
/* 00437D1C 001946C2 */  srl   $t0, $t9, 0x1b
/* 00437D20 00084940 */  sll   $t1, $t0, 5
/* 00437D24 312A03E0 */  andi  $t2, $t1, 0x3e0
/* 00437D28 31ABFC1F */  andi  $t3, $t5, 0xfc1f
/* 00437D2C 014B6025 */  or    $t4, $t2, $t3
/* 00437D30 A46C000C */  sh    $t4, 0xc($v1)
/* 00437D34 8C58000C */  lw    $t8, 0xc($v0)
/* 00437D38 3C01000F */  lui   $at, 0xf
/* 00437D3C 8C64000C */  lw    $a0, 0xc($v1)
/* 00437D40 3421FFFF */  ori   $at, $at, 0xffff
/* 00437D44 03017824 */  and   $t7, $t8, $at
/* 00437D48 01E47026 */  xor   $t6, $t7, $a0
/* 00437D4C 000ECB00 */  sll   $t9, $t6, 0xc
/* 00437D50 00194302 */  srl   $t0, $t9, 0xc
/* 00437D54 01044826 */  xor   $t1, $t0, $a0
/* 00437D58 AC69000C */  sw    $t1, 0xc($v1)
.L00437D5C:
/* 00437D5C 8FBF001C */  lw    $ra, 0x1c($sp)
.L00437D60:
/* 00437D60 27BD0040 */  addiu $sp, $sp, 0x40
/* 00437D64 03E00008 */  jr    $ra
/* 00437D68 00000000 */   nop   

    .type st_fixweakext, @function
    .size st_fixweakext, .-st_fixweakext
    .end st_fixweakext

glabel st_pseudo
    .ent st_pseudo
    # 0041C3FC func_0041C3FC
    # 0041F9F8 appendtextword
    # 0041FE24 func_0041FE24
    # 0042266C flush_line_no
    # 004376A0 st_fixdef
    # 0044D35C wrobj
    # 004594BC parsestmt
/* 00437D6C 3C1C0FBF */  .cpload $t9
/* 00437D70 279C24F4 */  
/* 00437D74 0399E021 */  
/* 00437D78 8F8E808C */  lw    $t6, %got(B_1002FE04)($gp)
/* 00437D7C 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 00437D80 8DCEFE04 */  lw    $t6, %lo(B_1002FE04)($t6)
/* 00437D84 2401FFFF */  li    $at, -1
/* 00437D88 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00437D8C AFBC0020 */  sw    $gp, 0x20($sp)
/* 00437D90 AFA5005C */  sw    $a1, 0x5c($sp)
/* 00437D94 AFA60060 */  sw    $a2, 0x60($sp)
/* 00437D98 11C10267 */  beq   $t6, $at, .L00438738
/* 00437D9C AFA70064 */   sw    $a3, 0x64($sp)
/* 00437DA0 8F8F8C64 */  lw     $t7, %got(mscoff)($gp)
/* 00437DA4 8FB80068 */  lw    $t8, 0x68($sp)
/* 00437DA8 8DEF0000 */  lw    $t7, ($t7)
/* 00437DAC 2499FFFF */  addiu $t9, $a0, -1
/* 00437DB0 11E00009 */  beqz  $t7, .L00437DD8
/* 00437DB4 2F210019 */   sltiu $at, $t9, 0x19
/* 00437DB8 8FA2006C */  lw    $v0, 0x6c($sp)
/* 00437DBC 8F9983D8 */  lw    $t9, %call16(ms_pseudo)($gp)
/* 00437DC0 AFB80010 */  sw    $t8, 0x10($sp)
/* 00437DC4 0320F809 */  jalr  $t9
/* 00437DC8 AFA20014 */   sw    $v0, 0x14($sp)
/* 00437DCC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00437DD0 1000025A */  b     .L0043873C
/* 00437DD4 8FBF0024 */   lw    $ra, 0x24($sp)
.L00437DD8:
/* 00437DD8 10200250 */  beqz  $at, .L0043871C
/* 00437DDC 00000000 */   nop   
/* 00437DE0 8F81806C */  lw    $at, %got(jtbl_10016F98)($gp)
/* 00437DE4 0019C880 */  sll   $t9, $t9, 2
/* 00437DE8 00390821 */  addu  $at, $at, $t9
/* 00437DEC 8C396F98 */  lw    $t9, %lo(jtbl_10016F98)($at)
/* 00437DF0 00000000 */  nop   
/* 00437DF4 033CC821 */  addu  $t9, $t9, $gp
/* 00437DF8 03200008 */  jr    $t9
/* 00437DFC 00000000 */   nop   
.L00437E00:
/* 00437E00 8F88808C */  lw    $t0, %got(B_1002FE18)($gp)
/* 00437E04 00000000 */  nop   
/* 00437E08 2508FE18 */  addiu $t0, %lo(B_1002FE18) # addiu $t0, $t0, -0x1e8
/* 00437E0C 8D030000 */  lw    $v1, ($t0)
/* 00437E10 00000000 */  nop   
/* 00437E14 1460000D */  bnez  $v1, .L00437E4C
/* 00437E18 00000000 */   nop   
/* 00437E1C 8F84806C */  lw    $a0, %got(RO_10016D10)($gp)
/* 00437E20 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00437E24 24846D10 */  addiu $a0, %lo(RO_10016D10) # addiu $a0, $a0, 0x6d10
/* 00437E28 0320F809 */  jalr  $t9
/* 00437E2C 00000000 */   nop   
/* 00437E30 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00437E34 00000000 */  nop   
/* 00437E38 8F88808C */  lw    $t0, %got(B_1002FE18)($gp)
/* 00437E3C 00000000 */  nop   
/* 00437E40 2508FE18 */  addiu $t0, %lo(B_1002FE18) # addiu $t0, $t0, -0x1e8
/* 00437E44 8D030000 */  lw    $v1, ($t0)
/* 00437E48 00000000 */  nop   
.L00437E4C:
/* 00437E4C 84690024 */  lh    $t1, 0x24($v1)
/* 00437E50 2401001D */  li    $at, 29
/* 00437E54 1121000E */  beq   $t1, $at, .L00437E90
/* 00437E58 8FAA0064 */   lw    $t2, 0x64($sp)
/* 00437E5C 8F84806C */  lw    $a0, %got(RO_10016D3C)($gp)
/* 00437E60 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00437E64 24846D3C */  addiu $a0, %lo(RO_10016D3C) # addiu $a0, $a0, 0x6d3c
/* 00437E68 0320F809 */  jalr  $t9
/* 00437E6C 00000000 */   nop   
/* 00437E70 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00437E74 00000000 */  nop   
/* 00437E78 8F88808C */  lw    $t0, %got(B_1002FE18)($gp)
/* 00437E7C 00000000 */  nop   
/* 00437E80 2508FE18 */  addiu $t0, %lo(B_1002FE18) # addiu $t0, $t0, -0x1e8
/* 00437E84 8D030000 */  lw    $v1, ($t0)
/* 00437E88 00000000 */  nop   
/* 00437E8C 8FAA0064 */  lw    $t2, 0x64($sp)
.L00437E90:
/* 00437E90 00000000 */  nop   
/* 00437E94 A46A0024 */  sh    $t2, 0x24($v1)
/* 00437E98 8D0C0000 */  lw    $t4, ($t0)
/* 00437E9C 8FAB0060 */  lw    $t3, 0x60($sp)
/* 00437EA0 00000000 */  nop   
/* 00437EA4 AD8B0020 */  sw    $t3, 0x20($t4)
/* 00437EA8 8D0E0000 */  lw    $t6, ($t0)
/* 00437EAC 8FAD0068 */  lw    $t5, 0x68($sp)
/* 00437EB0 10000221 */  b     .L00438738
/* 00437EB4 A5CD0026 */   sh    $t5, 0x26($t6)
.L00437EB8:
/* 00437EB8 8F88808C */  lw    $t0, %got(B_1002FE18)($gp)
/* 00437EBC 00000000 */  nop   
/* 00437EC0 2508FE18 */  addiu $t0, %lo(B_1002FE18) # addiu $t0, $t0, -0x1e8
/* 00437EC4 8D030000 */  lw    $v1, ($t0)
/* 00437EC8 00000000 */  nop   
/* 00437ECC 1460000D */  bnez  $v1, .L00437F04
/* 00437ED0 00000000 */   nop   
/* 00437ED4 8F84806C */  lw    $a0, %got(RO_10016D60)($gp)
/* 00437ED8 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00437EDC 24846D60 */  addiu $a0, %lo(RO_10016D60) # addiu $a0, $a0, 0x6d60
/* 00437EE0 0320F809 */  jalr  $t9
/* 00437EE4 00000000 */   nop   
/* 00437EE8 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00437EEC 00000000 */  nop   
/* 00437EF0 8F88808C */  lw    $t0, %got(B_1002FE18)($gp)
/* 00437EF4 00000000 */  nop   
/* 00437EF8 2508FE18 */  addiu $t0, %lo(B_1002FE18) # addiu $t0, $t0, -0x1e8
/* 00437EFC 8D030000 */  lw    $v1, ($t0)
/* 00437F00 00000000 */  nop   
.L00437F04:
/* 00437F04 8C6F000C */  lw    $t7, 0xc($v1)
/* 00437F08 00000000 */  nop   
/* 00437F0C 11E0000E */  beqz  $t7, .L00437F48
/* 00437F10 8FB8005C */   lw    $t8, 0x5c($sp)
/* 00437F14 8F84806C */  lw    $a0, %got(RO_10016D8C)($gp)
/* 00437F18 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00437F1C 24846D8C */  addiu $a0, %lo(RO_10016D8C) # addiu $a0, $a0, 0x6d8c
/* 00437F20 0320F809 */  jalr  $t9
/* 00437F24 00000000 */   nop   
/* 00437F28 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00437F2C 00000000 */  nop   
/* 00437F30 8F88808C */  lw    $t0, %got(B_1002FE18)($gp)
/* 00437F34 00000000 */  nop   
/* 00437F38 2508FE18 */  addiu $t0, %lo(B_1002FE18) # addiu $t0, $t0, -0x1e8
/* 00437F3C 8D030000 */  lw    $v1, ($t0)
/* 00437F40 00000000 */  nop   
/* 00437F44 8FB8005C */  lw    $t8, 0x5c($sp)
.L00437F48:
/* 00437F48 00000000 */  nop   
/* 00437F4C AC78000C */  sw    $t8, 0xc($v1)
/* 00437F50 8D090000 */  lw    $t1, ($t0)
/* 00437F54 8FB90060 */  lw    $t9, 0x60($sp)
/* 00437F58 100001F7 */  b     .L00438738
/* 00437F5C AD390010 */   sw    $t9, 0x10($t1)
.L00437F60:
/* 00437F60 8F88808C */  lw    $t0, %got(B_1002FE18)($gp)
/* 00437F64 00000000 */  nop   
/* 00437F68 2508FE18 */  addiu $t0, %lo(B_1002FE18) # addiu $t0, $t0, -0x1e8
/* 00437F6C 8D030000 */  lw    $v1, ($t0)
/* 00437F70 00000000 */  nop   
/* 00437F74 1460000D */  bnez  $v1, .L00437FAC
/* 00437F78 00000000 */   nop   
/* 00437F7C 8F84806C */  lw    $a0, %got(RO_10016DB0)($gp)
/* 00437F80 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00437F84 24846DB0 */  addiu $a0, %lo(RO_10016DB0) # addiu $a0, $a0, 0x6db0
/* 00437F88 0320F809 */  jalr  $t9
/* 00437F8C 00000000 */   nop   
/* 00437F90 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00437F94 00000000 */  nop   
/* 00437F98 8F88808C */  lw    $t0, %got(B_1002FE18)($gp)
/* 00437F9C 00000000 */  nop   
/* 00437FA0 2508FE18 */  addiu $t0, %lo(B_1002FE18) # addiu $t0, $t0, -0x1e8
/* 00437FA4 8D030000 */  lw    $v1, ($t0)
/* 00437FA8 00000000 */  nop   
.L00437FAC:
/* 00437FAC 8C6A0018 */  lw    $t2, 0x18($v1)
/* 00437FB0 00000000 */  nop   
/* 00437FB4 1140000E */  beqz  $t2, .L00437FF0
/* 00437FB8 8FAB005C */   lw    $t3, 0x5c($sp)
/* 00437FBC 8F84806C */  lw    $a0, %got(RO_10016DDC)($gp)
/* 00437FC0 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00437FC4 24846DDC */  addiu $a0, %lo(RO_10016DDC) # addiu $a0, $a0, 0x6ddc
/* 00437FC8 0320F809 */  jalr  $t9
/* 00437FCC 00000000 */   nop   
/* 00437FD0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00437FD4 00000000 */  nop   
/* 00437FD8 8F88808C */  lw    $t0, %got(B_1002FE18)($gp)
/* 00437FDC 00000000 */  nop   
/* 00437FE0 2508FE18 */  addiu $t0, %lo(B_1002FE18) # addiu $t0, $t0, -0x1e8
/* 00437FE4 8D030000 */  lw    $v1, ($t0)
/* 00437FE8 00000000 */  nop   
/* 00437FEC 8FAB005C */  lw    $t3, 0x5c($sp)
.L00437FF0:
/* 00437FF0 00000000 */  nop   
/* 00437FF4 AC6B0018 */  sw    $t3, 0x18($v1)
/* 00437FF8 8D0D0000 */  lw    $t5, ($t0)
/* 00437FFC 8FAC0060 */  lw    $t4, 0x60($sp)
/* 00438000 100001CD */  b     .L00438738
/* 00438004 ADAC001C */   sw    $t4, 0x1c($t5)
.L00438008:
/* 00438008 8F818080 */  lw    $at, %got(D_10004958)($gp)
/* 0043800C 8F9986E0 */  lw    $t9, %call16(st_pdn_idn)($gp)
/* 00438010 2403FFFF */  li    $v1, -1
/* 00438014 8FA4005C */  lw    $a0, 0x5c($sp)
/* 00438018 0320F809 */  jalr  $t9
/* 0043801C AC234958 */   sw    $v1, %lo(D_10004958)($at)
/* 00438020 8C410000 */  lw    $at, ($v0)
/* 00438024 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438028 27AE0048 */  addiu $t6, $sp, 0x48
/* 0043802C ADC10000 */  sw    $at, ($t6)
/* 00438030 8C590004 */  lw    $t9, 4($v0)
/* 00438034 3C017FFF */  lui   $at, 0x7fff
/* 00438038 ADD90004 */  sw    $t9, 4($t6)
/* 0043803C 8FA90048 */  lw    $t1, 0x48($sp)
/* 00438040 3421FFFF */  ori   $at, $at, 0xffff
/* 00438044 1521000D */  bne   $t1, $at, .L0043807C
/* 00438048 00000000 */   nop   
/* 0043804C 8F9986D8 */  lw    $t9, %call16(st_pext_iext)($gp)
/* 00438050 8FA4004C */  lw    $a0, 0x4c($sp)
/* 00438054 0320F809 */  jalr  $t9
/* 00438058 00000000 */   nop   
/* 0043805C 844A0002 */  lh    $t2, 2($v0)
/* 00438060 3C01000F */  lui   $at, 0xf
/* 00438064 AFAA0048 */  sw    $t2, 0x48($sp)
/* 00438068 8C4B000C */  lw    $t3, 0xc($v0)
/* 0043806C 3421FFFF */  ori   $at, $at, 0xffff
/* 00438070 01616024 */  and   $t4, $t3, $at
/* 00438074 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438078 AFAC004C */  sw    $t4, 0x4c($sp)
.L0043807C:
/* 0043807C 8F9986F0 */  lw    $t9, %call16(st_psym_ifd_isym)($gp)
/* 00438080 8FA40048 */  lw    $a0, 0x48($sp)
/* 00438084 8FA5004C */  lw    $a1, 0x4c($sp)
/* 00438088 0320F809 */  jalr  $t9
/* 0043808C 00000000 */   nop   
/* 00438090 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438094 8FA40048 */  lw    $a0, 0x48($sp)
/* 00438098 8F9986FC */  lw    $t9, %call16(st_ppd_ifd_isym)($gp)
/* 0043809C 8FA5004C */  lw    $a1, 0x4c($sp)
/* 004380A0 0320F809 */  jalr  $t9
/* 004380A4 AFA20050 */   sw    $v0, 0x50($sp)
/* 004380A8 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004380AC 8FA70050 */  lw    $a3, 0x50($sp)
/* 004380B0 8F88808C */  lw    $t0, %got(B_1002FE18)($gp)
/* 004380B4 00401825 */  move  $v1, $v0
/* 004380B8 2508FE18 */  addiu $t0, %lo(B_1002FE18) # addiu $t0, $t0, -0x1e8
/* 004380BC 10400004 */  beqz  $v0, .L004380D0
/* 004380C0 AD020000 */   sw    $v0, ($t0)
/* 004380C4 2401FFFF */  li    $at, -1
/* 004380C8 14410010 */  bne   $v0, $at, .L0043810C
/* 004380CC 8FAD0068 */   lw    $t5, 0x68($sp)
.L004380D0:
/* 004380D0 8F84806C */  lw    $a0, %got(RO_10016E00)($gp)
/* 004380D4 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 004380D8 8FA50048 */  lw    $a1, 0x48($sp)
/* 004380DC 8FA6004C */  lw    $a2, 0x4c($sp)
/* 004380E0 AFA70050 */  sw    $a3, 0x50($sp)
/* 004380E4 0320F809 */  jalr  $t9
/* 004380E8 24846E00 */   addiu $a0, %lo(RO_10016E00) # addiu $a0, $a0, 0x6e00
/* 004380EC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004380F0 8FA70050 */  lw    $a3, 0x50($sp)
/* 004380F4 8F88808C */  lw    $t0, %got(B_1002FE18)($gp)
/* 004380F8 00000000 */  nop   
/* 004380FC 2508FE18 */  addiu $t0, %lo(B_1002FE18) # addiu $t0, $t0, -0x1e8
/* 00438100 8D030000 */  lw    $v1, ($t0)
/* 00438104 00000000 */  nop   
/* 00438108 8FAD0068 */  lw    $t5, 0x68($sp)
.L0043810C:
/* 0043810C 2418FFFF */  li    $t8, -1
/* 00438110 AC6D0028 */  sw    $t5, 0x28($v1)
/* 00438114 8D0F0000 */  lw    $t7, ($t0)
/* 00438118 2419001D */  li    $t9, 29
/* 0043811C ADF80014 */  sw    $t8, 0x14($t7)
/* 00438120 8D030000 */  lw    $v1, ($t0)
/* 00438124 240A001F */  li    $t2, 31
/* 00438128 8C620014 */  lw    $v0, 0x14($v1)
/* 0043812C 8F85808C */  lw    $a1, %got(B_1002FE0C)($gp)
/* 00438130 AC620008 */  sw    $v0, 8($v1)
/* 00438134 8D0E0000 */  lw    $t6, ($t0)
/* 00438138 24A5FE0C */  addiu $a1, %lo(B_1002FE0C) # addiu $a1, $a1, -0x1f4
/* 0043813C ADC2002C */  sw    $v0, 0x2c($t6)
/* 00438140 8D090000 */  lw    $t1, ($t0)
/* 00438144 00000000 */  nop   
/* 00438148 A5390024 */  sh    $t9, 0x24($t1)
/* 0043814C 8D0B0000 */  lw    $t3, ($t0)
/* 00438150 00000000 */  nop   
/* 00438154 A56A0026 */  sh    $t2, 0x26($t3)
/* 00438158 8D0C0000 */  lw    $t4, ($t0)
/* 0043815C 00000000 */  nop   
/* 00438160 AD800018 */  sw    $zero, 0x18($t4)
/* 00438164 8D030000 */  lw    $v1, ($t0)
/* 00438168 00000000 */  nop   
/* 0043816C 8C6D0018 */  lw    $t5, 0x18($v1)
/* 00438170 00000000 */  nop   
/* 00438174 AC6D000C */  sw    $t5, 0xc($v1)
/* 00438178 8FB80060 */  lw    $t8, 0x60($sp)
/* 0043817C 00000000 */  nop   
/* 00438180 ACB80000 */  sw    $t8, ($a1)
/* 00438184 ACF80004 */  sw    $t8, 4($a3)
/* 00438188 8D0F0000 */  lw    $t7, ($t0)
/* 0043818C 00000000 */  nop   
/* 00438190 ADF80000 */  sw    $t8, ($t7)
/* 00438194 8F9986EC */  lw    $t9, %call16(st_pcfd_ifd)($gp)
/* 00438198 8FA40048 */  lw    $a0, 0x48($sp)
/* 0043819C 0320F809 */  jalr  $t9
/* 004381A0 00000000 */   nop   
/* 004381A4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004381A8 8C4E0034 */  lw    $t6, 0x34($v0)
/* 004381AC 8F88808C */  lw    $t0, %got(B_1002FE18)($gp)
/* 004381B0 00000000 */  nop   
/* 004381B4 2508FE18 */  addiu $t0, %lo(B_1002FE18) # addiu $t0, $t0, -0x1e8
/* 004381B8 8D030000 */  lw    $v1, ($t0)
/* 004381BC 00000000 */  nop   
/* 004381C0 146E015E */  bne   $v1, $t6, .L0043873C
/* 004381C4 8FBF0024 */   lw    $ra, 0x24($sp)
/* 004381C8 8C790000 */  lw    $t9, ($v1)
/* 004381CC 8C490000 */  lw    $t1, ($v0)
/* 004381D0 10000159 */  b     .L00438738
/* 004381D4 AD390000 */   sw    $t9, ($t1)
.L004381D8:
/* 004381D8 8F9986E0 */  lw    $t9, %call16(st_pdn_idn)($gp)
/* 004381DC 8FA4005C */  lw    $a0, 0x5c($sp)
/* 004381E0 0320F809 */  jalr  $t9
/* 004381E4 00000000 */   nop   
/* 004381E8 8C410000 */  lw    $at, ($v0)
/* 004381EC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004381F0 27AA0048 */  addiu $t2, $sp, 0x48
/* 004381F4 AD410000 */  sw    $at, ($t2)
/* 004381F8 8C4C0004 */  lw    $t4, 4($v0)
/* 004381FC 3C017FFF */  lui   $at, 0x7fff
/* 00438200 AD4C0004 */  sw    $t4, 4($t2)
/* 00438204 8FAD0048 */  lw    $t5, 0x48($sp)
/* 00438208 3421FFFF */  ori   $at, $at, 0xffff
/* 0043820C 15A1000D */  bne   $t5, $at, .L00438244
/* 00438210 00000000 */   nop   
/* 00438214 8F9986D8 */  lw    $t9, %call16(st_pext_iext)($gp)
/* 00438218 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0043821C 0320F809 */  jalr  $t9
/* 00438220 00000000 */   nop   
/* 00438224 84580002 */  lh    $t8, 2($v0)
/* 00438228 3C01000F */  lui   $at, 0xf
/* 0043822C AFB80048 */  sw    $t8, 0x48($sp)
/* 00438230 8C4F000C */  lw    $t7, 0xc($v0)
/* 00438234 3421FFFF */  ori   $at, $at, 0xffff
/* 00438238 01E17024 */  and   $t6, $t7, $at
/* 0043823C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438240 AFAE004C */  sw    $t6, 0x4c($sp)
.L00438244:
/* 00438244 8F9986F0 */  lw    $t9, %call16(st_psym_ifd_isym)($gp)
/* 00438248 8FA40048 */  lw    $a0, 0x48($sp)
/* 0043824C 8FA5004C */  lw    $a1, 0x4c($sp)
/* 00438250 0320F809 */  jalr  $t9
/* 00438254 00000000 */   nop   
/* 00438258 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0043825C 8FA40048 */  lw    $a0, 0x48($sp)
/* 00438260 8F9986FC */  lw    $t9, %call16(st_ppd_ifd_isym)($gp)
/* 00438264 8FA5004C */  lw    $a1, 0x4c($sp)
/* 00438268 0320F809 */  jalr  $t9
/* 0043826C AFA20050 */   sw    $v0, 0x50($sp)
/* 00438270 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438274 8FA70050 */  lw    $a3, 0x50($sp)
/* 00438278 8F818080 */  lw    $at, %got(D_10004958)($gp)
/* 0043827C 10400007 */  beqz  $v0, .L0043829C
/* 00438280 AC224958 */   sw    $v0, %lo(D_10004958)($at)
/* 00438284 8F818080 */  lw    $at, %got(D_10004958)($gp)
/* 00438288 00000000 */  nop   
/* 0043828C AC224958 */  sw    $v0, %lo(D_10004958)($at)
/* 00438290 2401FFFF */  li    $at, -1
/* 00438294 1441000B */  bne   $v0, $at, .L004382C4
/* 00438298 00000000 */   nop   
.L0043829C:
/* 0043829C 8F84806C */  lw    $a0, %got(RO_10016E20)($gp)
/* 004382A0 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 004382A4 8FA50048 */  lw    $a1, 0x48($sp)
/* 004382A8 8FA6004C */  lw    $a2, 0x4c($sp)
/* 004382AC AFA70050 */  sw    $a3, 0x50($sp)
/* 004382B0 0320F809 */  jalr  $t9
/* 004382B4 24846E20 */   addiu $a0, %lo(RO_10016E20) # addiu $a0, $a0, 0x6e20
/* 004382B8 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004382BC 8FA70050 */  lw    $a3, 0x50($sp)
/* 004382C0 00000000 */  nop   
.L004382C4:
/* 004382C4 8F838080 */  lw    $v1, %got(D_10004958)($gp)
/* 004382C8 8FB90068 */  lw    $t9, 0x68($sp)
/* 004382CC 8C634958 */  lw    $v1, %lo(D_10004958)($v1)
/* 004382D0 2402FFFF */  li    $v0, -1
/* 004382D4 8F88808C */  lw    $t0, %got(B_1002FE18)($gp)
/* 004382D8 AC790028 */  sw    $t9, 0x28($v1)
/* 004382DC AC620014 */  sw    $v0, 0x14($v1)
/* 004382E0 AC620008 */  sw    $v0, 8($v1)
/* 004382E4 AC62002C */  sw    $v0, 0x2c($v1)
/* 004382E8 A4600024 */  sh    $zero, 0x24($v1)
/* 004382EC A4600026 */  sh    $zero, 0x26($v1)
/* 004382F0 AC600018 */  sw    $zero, 0x18($v1)
/* 004382F4 AC60000C */  sw    $zero, 0xc($v1)
/* 004382F8 2508FE18 */  addiu $t0, %lo(B_1002FE18) # addiu $t0, $t0, -0x1e8
/* 004382FC 8D0B0000 */  lw    $t3, ($t0)
/* 00438300 8FA90060 */  lw    $t1, 0x60($sp)
/* 00438304 00000000 */  nop   
/* 00438308 AD690000 */  sw    $t1, ($t3)
/* 0043830C 8FAA0060 */  lw    $t2, 0x60($sp)
/* 00438310 00000000 */  nop   
/* 00438314 ACEA0004 */  sw    $t2, 4($a3)
/* 00438318 8F9986EC */  lw    $t9, %call16(st_pcfd_ifd)($gp)
/* 0043831C 8FA40048 */  lw    $a0, 0x48($sp)
/* 00438320 0320F809 */  jalr  $t9
/* 00438324 00000000 */   nop   
/* 00438328 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0043832C 00003025 */  move  $a2, $zero
/* 00438330 8F84808C */  lw    $a0, %got(B_1002FF28)($gp)
/* 00438334 00000000 */  nop   
/* 00438338 8C84FF28 */  lw    $a0, %lo(B_1002FF28)($a0)
/* 0043833C 00000000 */  nop   
/* 00438340 188000FE */  blez  $a0, .L0043873C
/* 00438344 8FBF0024 */   lw    $ra, 0x24($sp)
/* 00438348 8F83808C */  lw    $v1, %got(B_1002FE28)($gp)
/* 0043834C 00000000 */  nop   
/* 00438350 2463FE28 */  addiu $v1, %lo(B_1002FE28) # addiu $v1, $v1, -0x1d8
.L00438354:
/* 00438354 8F998864 */  lw    $t9, %call16(st_psym_idn_offset)($gp)
/* 00438358 8FA4005C */  lw    $a0, 0x5c($sp)
/* 0043835C 8C650000 */  lw    $a1, ($v1)
/* 00438360 AFA3002C */  sw    $v1, 0x2c($sp)
/* 00438364 0320F809 */  jalr  $t9
/* 00438368 AFA60038 */   sw    $a2, 0x38($sp)
/* 0043836C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438370 8FA3002C */  lw    $v1, 0x2c($sp)
/* 00438374 8FA60038 */  lw    $a2, 0x38($sp)
/* 00438378 10400015 */  beqz  $v0, .L004383D0
/* 0043837C 00000000 */   nop   
/* 00438380 8C4C0008 */  lw    $t4, 8($v0)
/* 00438384 24010010 */  li    $at, 16
/* 00438388 000C6980 */  sll   $t5, $t4, 6
/* 0043838C 000DC6C2 */  srl   $t8, $t5, 0x1b
/* 00438390 17010007 */  bne   $t8, $at, .L004383B0
/* 00438394 00000000 */   nop   
/* 00438398 944F0008 */  lhu   $t7, 8($v0)
/* 0043839C 00000000 */  nop   
/* 004383A0 31EEFC1F */  andi  $t6, $t7, 0xfc1f
/* 004383A4 35D90260 */  ori   $t9, $t6, 0x260
/* 004383A8 10000006 */  b     .L004383C4
/* 004383AC A4590008 */   sh    $t9, 8($v0)
.L004383B0:
/* 004383B0 94490008 */  lhu   $t1, 8($v0)
/* 004383B4 00000000 */  nop   
/* 004383B8 312BFC1F */  andi  $t3, $t1, 0xfc1f
/* 004383BC 356A0080 */  ori   $t2, $t3, 0x80
/* 004383C0 A44A0008 */  sh    $t2, 8($v0)
.L004383C4:
/* 004383C4 8C6C0004 */  lw    $t4, 4($v1)
/* 004383C8 00000000 */  nop   
/* 004383CC AC4C0004 */  sw    $t4, 4($v0)
.L004383D0:
/* 004383D0 8F84808C */  lw    $a0, %got(B_1002FF28)($gp)
/* 004383D4 24C60001 */  addiu $a2, $a2, 1
/* 004383D8 8C84FF28 */  lw    $a0, %lo(B_1002FF28)($a0)
/* 004383DC 24630008 */  addiu $v1, $v1, 8
/* 004383E0 00C4082A */  slt   $at, $a2, $a0
/* 004383E4 1420FFDB */  bnez  $at, .L00438354
/* 004383E8 00000000 */   nop   
/* 004383EC 100000D3 */  b     .L0043873C
/* 004383F0 8FBF0024 */   lw    $ra, 0x24($sp)
.L004383F4:
/* 004383F4 8F88808C */  lw    $t0, %got(B_1002FE18)($gp)
/* 004383F8 8F818080 */  lw    $at, %got(D_10004958)($gp)
/* 004383FC 2508FE18 */  addiu $t0, %lo(B_1002FE18) # addiu $t0, $t0, -0x1e8
/* 00438400 2403FFFF */  li    $v1, -1
/* 00438404 AD000000 */  sw    $zero, ($t0)
/* 00438408 AC234958 */  sw    $v1, %lo(D_10004958)($at)
/* 0043840C 8F81808C */  lw    $at, %got(B_1002FF28)($gp)
/* 00438410 00000000 */  nop   
/* 00438414 AC20FF28 */  sw    $zero, %lo(B_1002FF28)($at)
.L00438418:
/* 00438418 8F9986E0 */  lw    $t9, %call16(st_pdn_idn)($gp)
/* 0043841C 8FA4005C */  lw    $a0, 0x5c($sp)
/* 00438420 0320F809 */  jalr  $t9
/* 00438424 00000000 */   nop   
/* 00438428 8C410000 */  lw    $at, ($v0)
/* 0043842C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438430 27AD0048 */  addiu $t5, $sp, 0x48
/* 00438434 ADA10000 */  sw    $at, ($t5)
/* 00438438 8C4E0004 */  lw    $t6, 4($v0)
/* 0043843C 3C01000F */  lui   $at, 0xf
/* 00438440 ADAE0004 */  sw    $t6, 4($t5)
/* 00438444 8FB9004C */  lw    $t9, 0x4c($sp)
/* 00438448 3421FFFF */  ori   $at, $at, 0xffff
/* 0043844C 132100BA */  beq   $t9, $at, .L00438738
/* 00438450 03202825 */   move  $a1, $t9
/* 00438454 8F9986F0 */  lw    $t9, %call16(st_psym_ifd_isym)($gp)
/* 00438458 8FA40048 */  lw    $a0, 0x48($sp)
/* 0043845C 0320F809 */  jalr  $t9
/* 00438460 00000000 */   nop   
/* 00438464 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438468 8FA90060 */  lw    $t1, 0x60($sp)
/* 0043846C 8F85808C */  lw    $a1, %got(B_1002FE0C)($gp)
/* 00438470 00000000 */  nop   
/* 00438474 24A5FE0C */  addiu $a1, %lo(B_1002FE0C) # addiu $a1, $a1, -0x1f4
/* 00438478 8CAB0000 */  lw    $t3, ($a1)
/* 0043847C 00000000 */  nop   
/* 00438480 012B5023 */  subu  $t2, $t1, $t3
/* 00438484 100000AC */  b     .L00438738
/* 00438488 AC4A0004 */   sw    $t2, 4($v0)
.L0043848C:
/* 0043848C 8F88808C */  lw    $t0, %got(B_1002FE18)($gp)
/* 00438490 00000000 */  nop   
/* 00438494 2508FE18 */  addiu $t0, %lo(B_1002FE18) # addiu $t0, $t0, -0x1e8
/* 00438498 8D0C0000 */  lw    $t4, ($t0)
/* 0043849C 00000000 */  nop   
/* 004384A0 118000A6 */  beqz  $t4, .L0043873C
/* 004384A4 8FBF0024 */   lw    $ra, 0x24($sp)
/* 004384A8 8F8F8080 */  lw    $t7, %got(D_1000495C)($gp)
/* 004384AC 8FB80060 */  lw    $t8, 0x60($sp)
/* 004384B0 8DEF495C */  lw    $t7, %lo(D_1000495C)($t7)
/* 004384B4 8FAD0060 */  lw    $t5, 0x60($sp)
/* 004384B8 11F800A0 */  beq   $t7, $t8, .L0043873C
/* 004384BC 8FBF0024 */   lw    $ra, 0x24($sp)
/* 004384C0 8F818080 */  lw    $at, %got(D_1000495C)($gp)
/* 004384C4 8F9986E0 */  lw    $t9, %call16(st_pdn_idn)($gp)
/* 004384C8 8FA4005C */  lw    $a0, 0x5c($sp)
/* 004384CC 0320F809 */  jalr  $t9
/* 004384D0 AC2D495C */   sw    $t5, %lo(D_1000495C)($at)
/* 004384D4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004384D8 8C410000 */  lw    $at, ($v0)
/* 004384DC 27AE0048 */  addiu $t6, $sp, 0x48
/* 004384E0 ADC10000 */  sw    $at, ($t6)
/* 004384E4 8C4B0004 */  lw    $t3, 4($v0)
/* 004384E8 8F88808C */  lw    $t0, %got(B_1002FE18)($gp)
/* 004384EC ADCB0004 */  sw    $t3, 4($t6)
/* 004384F0 2508FE18 */  addiu $t0, %lo(B_1002FE18) # addiu $t0, $t0, -0x1e8
/* 004384F4 8D0A0000 */  lw    $t2, ($t0)
/* 004384F8 2401FFFF */  li    $at, -1
/* 004384FC 8D4C0008 */  lw    $t4, 8($t2)
/* 00438500 00000000 */  nop   
/* 00438504 1581000D */  bne   $t4, $at, .L0043853C
/* 00438508 00000000 */   nop   
/* 0043850C 8F9986EC */  lw    $t9, %call16(st_pcfd_ifd)($gp)
/* 00438510 8FA40048 */  lw    $a0, 0x48($sp)
/* 00438514 0320F809 */  jalr  $t9
/* 00438518 00000000 */   nop   
/* 0043851C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438520 8C4F0000 */  lw    $t7, ($v0)
/* 00438524 8F88808C */  lw    $t0, %got(B_1002FE18)($gp)
/* 00438528 8DF8001C */  lw    $t8, 0x1c($t7)
/* 0043852C 2508FE18 */  addiu $t0, %lo(B_1002FE18) # addiu $t0, $t0, -0x1e8
/* 00438530 8D0D0000 */  lw    $t5, ($t0)
/* 00438534 00000000 */  nop   
/* 00438538 ADB80008 */  sw    $t8, 8($t5)
.L0043853C:
/* 0043853C 8F838080 */  lw    $v1, %got(D_10004958)($gp)
/* 00438540 2401FFFF */  li    $at, -1
/* 00438544 8C634958 */  lw    $v1, %lo(D_10004958)($v1)
/* 00438548 00000000 */  nop   
/* 0043854C 10610011 */  beq   $v1, $at, .L00438594
/* 00438550 00000000 */   nop   
/* 00438554 8C690008 */  lw    $t1, 8($v1)
/* 00438558 2401FFFF */  li    $at, -1
/* 0043855C 1521000D */  bne   $t1, $at, .L00438594
/* 00438560 00000000 */   nop   
/* 00438564 8F9986EC */  lw    $t9, %call16(st_pcfd_ifd)($gp)
/* 00438568 8FA40048 */  lw    $a0, 0x48($sp)
/* 0043856C 0320F809 */  jalr  $t9
/* 00438570 00000000 */   nop   
/* 00438574 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438578 8C590000 */  lw    $t9, ($v0)
/* 0043857C 8F838080 */  lw    $v1, %got(D_10004958)($gp)
/* 00438580 8F88808C */  lw    $t0, %got(B_1002FE18)($gp)
/* 00438584 8F2E001C */  lw    $t6, 0x1c($t9)
/* 00438588 8C634958 */  lw    $v1, %lo(D_10004958)($v1)
/* 0043858C 2508FE18 */  addiu $t0, %lo(B_1002FE18) # addiu $t0, $t0, -0x1e8
/* 00438590 AC6E0008 */  sw    $t6, 8($v1)
.L00438594:
/* 00438594 8D030000 */  lw    $v1, ($t0)
/* 00438598 2401FFFF */  li    $at, -1
/* 0043859C 8C62002C */  lw    $v0, 0x2c($v1)
/* 004385A0 8FA50064 */  lw    $a1, 0x64($sp)
/* 004385A4 14410005 */  bne   $v0, $at, .L004385BC
/* 004385A8 00000000 */   nop   
/* 004385AC 18A00003 */  blez  $a1, .L004385BC
/* 004385B0 00000000 */   nop   
/* 004385B4 10000007 */  b     .L004385D4
/* 004385B8 AC65002C */   sw    $a1, 0x2c($v1)
.L004385BC:
/* 004385BC 8FA50064 */  lw    $a1, 0x64($sp)
/* 004385C0 00000000 */  nop   
/* 004385C4 0045082A */  slt   $at, $v0, $a1
/* 004385C8 10200002 */  beqz  $at, .L004385D4
/* 004385CC 00000000 */   nop   
/* 004385D0 AC65002C */  sw    $a1, 0x2c($v1)
.L004385D4:
/* 004385D4 8F99882C */  lw    $t9, %call16(st_setfd)($gp)
/* 004385D8 8FA40048 */  lw    $a0, 0x48($sp)
/* 004385DC 0320F809 */  jalr  $t9
/* 004385E0 00000000 */   nop   
/* 004385E4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004385E8 8FA40064 */  lw    $a0, 0x64($sp)
/* 004385EC 8F99883C */  lw    $t9, %call16(st_lineadd)($gp)
/* 004385F0 00000000 */  nop   
/* 004385F4 0320F809 */  jalr  $t9
/* 004385F8 00000000 */   nop   
/* 004385FC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438600 00000000 */  nop   
/* 00438604 8F8B808C */  lw    $t3, %got(B_1002FE08)($gp)
/* 00438608 00000000 */  nop   
/* 0043860C 8D6BFE08 */  lw    $t3, %lo(B_1002FE08)($t3)
/* 00438610 00000000 */  nop   
/* 00438614 11600049 */  beqz  $t3, .L0043873C
/* 00438618 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0043861C 8F84808C */  lw    $a0, %got(B_1002FE00)($gp)
/* 00438620 8F99882C */  lw    $t9, %call16(st_setfd)($gp)
/* 00438624 8C84FE00 */  lw    $a0, %lo(B_1002FE00)($a0)
/* 00438628 0320F809 */  jalr  $t9
/* 0043862C 00000000 */   nop   
/* 00438630 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438634 10000041 */  b     .L0043873C
/* 00438638 8FBF0024 */   lw    $ra, 0x24($sp)
.L0043863C:
/* 0043863C 8F998864 */  lw    $t9, %call16(st_psym_idn_offset)($gp)
/* 00438640 8FA4005C */  lw    $a0, 0x5c($sp)
/* 00438644 8FA50060 */  lw    $a1, 0x60($sp)
/* 00438648 0320F809 */  jalr  $t9
/* 0043864C 00000000 */   nop   
/* 00438650 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438654 14400011 */  bnez  $v0, .L0043869C
/* 00438658 00403825 */   move  $a3, $v0
/* 0043865C 8FA2006C */  lw    $v0, 0x6c($sp)
/* 00438660 24010002 */  li    $at, 2
/* 00438664 10410034 */  beq   $v0, $at, .L00438738
/* 00438668 24010001 */   li    $at, 1
/* 0043866C 10410033 */  beq   $v0, $at, .L0043873C
/* 00438670 8FBF0024 */   lw    $ra, 0x24($sp)
/* 00438674 8F84806C */  lw    $a0, %got(RO_10016E40)($gp)
/* 00438678 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 0043867C 8FA5005C */  lw    $a1, 0x5c($sp)
/* 00438680 8FA60060 */  lw    $a2, 0x60($sp)
/* 00438684 AFA70050 */  sw    $a3, 0x50($sp)
/* 00438688 0320F809 */  jalr  $t9
/* 0043868C 24846E40 */   addiu $a0, %lo(RO_10016E40) # addiu $a0, $a0, 0x6e40
/* 00438690 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438694 8FA70050 */  lw    $a3, 0x50($sp)
/* 00438698 00000000 */  nop   
.L0043869C:
/* 0043869C 8CEA0008 */  lw    $t2, 8($a3)
/* 004386A0 24010010 */  li    $at, 16
/* 004386A4 000A6180 */  sll   $t4, $t2, 6
/* 004386A8 000C7EC2 */  srl   $t7, $t4, 0x1b
/* 004386AC 15E10007 */  bne   $t7, $at, .L004386CC
/* 004386B0 00000000 */   nop   
/* 004386B4 94F80008 */  lhu   $t8, 8($a3)
/* 004386B8 00000000 */  nop   
/* 004386BC 330DFC1F */  andi  $t5, $t8, 0xfc1f
/* 004386C0 35A90260 */  ori   $t1, $t5, 0x260
/* 004386C4 10000006 */  b     .L004386E0
/* 004386C8 A4E90008 */   sh    $t1, 8($a3)
.L004386CC:
/* 004386CC 94F90008 */  lhu   $t9, 8($a3)
/* 004386D0 00000000 */  nop   
/* 004386D4 332EFC1F */  andi  $t6, $t9, 0xfc1f
/* 004386D8 35CB0080 */  ori   $t3, $t6, 0x80
/* 004386DC A4EB0008 */  sh    $t3, 8($a3)
.L004386E0:
/* 004386E0 8F84808C */  lw    $a0, %got(B_1002FF28)($gp)
/* 004386E4 8FA30064 */  lw    $v1, 0x64($sp)
/* 004386E8 8F8C808C */  lw    $t4, %got(B_1002FE28)($gp)
/* 004386EC 8C84FF28 */  lw    $a0, %lo(B_1002FF28)($a0)
/* 004386F0 ACE30004 */  sw    $v1, 4($a3)
/* 004386F4 258CFE28 */  addiu $t4, %lo(B_1002FE28) # addiu $t4, $t4, -0x1d8
/* 004386F8 000450C0 */  sll   $t2, $a0, 3
/* 004386FC 8FAF0060 */  lw    $t7, 0x60($sp)
/* 00438700 014C1021 */  addu  $v0, $t2, $t4
/* 00438704 8F81808C */  lw    $at, %got(B_1002FF28)($gp)
/* 00438708 AC430004 */  sw    $v1, 4($v0)
/* 0043870C 24840001 */  addiu $a0, $a0, 1
/* 00438710 AC4F0000 */  sw    $t7, ($v0)
/* 00438714 10000008 */  b     .L00438738
/* 00438718 AC24FF28 */   sw    $a0, %lo(B_1002FF28)($at)
.L0043871C:
/* 0043871C 8F84806C */  lw    $a0, %got(RO_10016E70)($gp)
/* 00438720 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00438724 24846E70 */  addiu $a0, %lo(RO_10016E70) # addiu $a0, $a0, 0x6e70
/* 00438728 0320F809 */  jalr  $t9
/* 0043872C 00000000 */   nop   
/* 00438730 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438734 00000000 */  nop   
.L00438738:
/* 00438738 8FBF0024 */  lw    $ra, 0x24($sp)
.L0043873C:
/* 0043873C 27BD0058 */  addiu $sp, $sp, 0x58
/* 00438740 03E00008 */  jr    $ra
/* 00438744 00000000 */   nop   

    .type st_pseudo, @function
    .size st_pseudo, .-st_pseudo
    .end st_pseudo

glabel st_sizeofsymhdr
    .ent st_sizeofsymhdr
    # 004392DC wrcoffobj
    # 0043ECB8 wrelfobj
/* 00438748 03E00008 */  jr    $ra
/* 0043874C 24020060 */   li    $v0, 96

    .type st_sizeofsymhdr, @function
    .size st_sizeofsymhdr, .-st_sizeofsymhdr
    .end st_sizeofsymhdr

glabel st_openobj
    .ent st_openobj
    # 004392DC wrcoffobj
    # 0044D35C wrobj
/* 00438750 3C1C0FBF */  .cpload $t9
/* 00438754 279C1B10 */  
/* 00438758 0399E021 */  
/* 0043875C 8F998154 */  lw    $t9, %call16(open)($gp)
/* 00438760 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00438764 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00438768 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0043876C AFA40028 */  sw    $a0, 0x28($sp)
/* 00438770 24050302 */  li    $a1, 770
/* 00438774 0320F809 */  jalr  $t9
/* 00438778 240601B6 */   li    $a2, 438
/* 0043877C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00438780 04410017 */  bgez  $v0, .L004387E0
/* 00438784 00401825 */   move  $v1, $v0
/* 00438788 8F8E80B8 */  lw     $t6, %got(errno)($gp)
/* 0043878C 8F9981B4 */  lw    $t9, %call16(unlink)($gp)
/* 00438790 8DCE0000 */  lw    $t6, ($t6)
/* 00438794 8FA40028 */  lw    $a0, 0x28($sp)
/* 00438798 AFA20024 */  sw    $v0, 0x24($sp)
/* 0043879C 0320F809 */  jalr  $t9
/* 004387A0 AFAE0020 */   sw    $t6, 0x20($sp)
/* 004387A4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004387A8 8FA30024 */  lw    $v1, 0x24($sp)
/* 004387AC 14400008 */  bnez  $v0, .L004387D0
/* 004387B0 24050302 */   li    $a1, 770
/* 004387B4 8F998154 */  lw    $t9, %call16(open)($gp)
/* 004387B8 8FA40028 */  lw    $a0, 0x28($sp)
/* 004387BC 0320F809 */  jalr  $t9
/* 004387C0 240601B6 */   li    $a2, 438
/* 004387C4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004387C8 10000005 */  b     .L004387E0
/* 004387CC 00401825 */   move  $v1, $v0
.L004387D0:
/* 004387D0 8FAF0020 */  lw    $t7, 0x20($sp)
/* 004387D4 8F8180B8 */  lw     $at, %got(errno)($gp)
/* 004387D8 00000000 */  nop   
/* 004387DC AC2F0000 */  sw    $t7, ($at)
.L004387E0:
/* 004387E0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 004387E4 27BD0028 */  addiu $sp, $sp, 0x28
/* 004387E8 03E00008 */  jr    $ra
/* 004387EC 00601025 */   move  $v0, $v1

    .type st_openobj, @function
    .size st_openobj, .-st_openobj
    .end st_openobj

glabel idn_for_undef
    .ent idn_for_undef
    # 0045C4C0 enter_undef_sym
/* 004387F0 3C1C0FBF */  .cpload $t9
/* 004387F4 279C1A70 */  
/* 004387F8 0399E021 */  
/* 004387FC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00438800 8F99882C */  lw    $t9, %call16(st_setfd)($gp)
/* 00438804 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00438808 AFA40028 */  sw    $a0, 0x28($sp)
/* 0043880C AFBC0020 */  sw    $gp, 0x20($sp)
/* 00438810 0320F809 */  jalr  $t9
/* 00438814 00002025 */   move  $a0, $zero
/* 00438818 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0043881C 8FA40028 */  lw    $a0, 0x28($sp)
/* 00438820 8F998810 */  lw    $t9, %call16(st_extstradd)($gp)
/* 00438824 00000000 */  nop   
/* 00438828 0320F809 */  jalr  $t9
/* 0043882C 00000000 */   nop   
/* 00438830 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438834 3C0E000F */  lui   $t6, 0xf
/* 00438838 8F9986D4 */  lw    $t9, %call16(st_extadd)($gp)
/* 0043883C 35CEFFFF */  ori   $t6, $t6, 0xffff
/* 00438840 AFAE0010 */  sw    $t6, 0x10($sp)
/* 00438844 00402025 */  move  $a0, $v0
/* 00438848 00002825 */  move  $a1, $zero
/* 0043884C 24060001 */  li    $a2, 1
/* 00438850 0320F809 */  jalr  $t9
/* 00438854 24070006 */   li    $a3, 6
/* 00438858 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0043885C 00402025 */  move  $a0, $v0
/* 00438860 8F9986DC */  lw    $t9, %call16(st_idn_index_fext)($gp)
/* 00438864 24050001 */  li    $a1, 1
/* 00438868 0320F809 */  jalr  $t9
/* 0043886C 00000000 */   nop   
/* 00438870 8FBF0024 */  lw    $ra, 0x24($sp)
/* 00438874 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438878 03E00008 */  jr    $ra
/* 0043887C 27BD0028 */   addiu $sp, $sp, 0x28

    .type idn_for_undef, @function
    .size idn_for_undef, .-idn_for_undef
    .end idn_for_undef

glabel idn_for_data
    .ent idn_for_data
    # 00441EF0 emit_fp_const
    # 004590C0 emit_dword_item
/* 00438880 3C1C0FBF */  .cpload $t9
/* 00438884 279C19E0 */  
/* 00438888 0399E021 */  
/* 0043888C 8F9986DC */  lw    $t9, %call16(st_idn_index_fext)($gp)
/* 00438890 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00438894 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00438898 3C04000F */  lui   $a0, 0xf
/* 0043889C AFBC0018 */  sw    $gp, 0x18($sp)
/* 004388A0 3484FFFF */  ori   $a0, $a0, 0xffff
/* 004388A4 0320F809 */  jalr  $t9
/* 004388A8 24050001 */   li    $a1, 1
/* 004388AC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 004388B0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004388B4 03E00008 */  jr    $ra
/* 004388B8 27BD0020 */   addiu $sp, $sp, 0x20

    .type idn_for_data, @function
    .size idn_for_data, .-idn_for_data
    .end idn_for_data

glabel idn_for_anon_symbol
    .ent idn_for_anon_symbol
    # 0040D940 func_0040D940
/* 004388BC 3C1C0FBF */  .cpload $t9
/* 004388C0 279C19A4 */  
/* 004388C4 0399E021 */  
/* 004388C8 8F9986DC */  lw    $t9, %call16(st_idn_index_fext)($gp)
/* 004388CC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 004388D0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 004388D4 3C04000F */  lui   $a0, 0xf
/* 004388D8 AFBC0018 */  sw    $gp, 0x18($sp)
/* 004388DC 3484FFFF */  ori   $a0, $a0, 0xffff
/* 004388E0 0320F809 */  jalr  $t9
/* 004388E4 00002825 */   move  $a1, $zero
/* 004388E8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 004388EC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004388F0 03E00008 */  jr    $ra
/* 004388F4 27BD0020 */   addiu $sp, $sp, 0x20

    .type idn_for_anon_symbol, @function
    .size idn_for_anon_symbol, .-idn_for_anon_symbol
    .end idn_for_anon_symbol

glabel idn_for_extern_symbol
    .ent idn_for_extern_symbol
    # 0040D940 func_0040D940
/* 004388F8 3C1C0FBF */  .cpload $t9
/* 004388FC 279C1968 */  
/* 00438900 0399E021 */  
/* 00438904 8F998810 */  lw    $t9, %call16(st_extstradd)($gp)
/* 00438908 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0043890C AFBF0024 */  sw    $ra, 0x24($sp)
/* 00438910 0320F809 */  jalr  $t9
/* 00438914 AFBC0020 */   sw    $gp, 0x20($sp)
/* 00438918 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0043891C 3C0E000F */  lui   $t6, 0xf
/* 00438920 8F9986D4 */  lw    $t9, %call16(st_extadd)($gp)
/* 00438924 35CEFFFF */  ori   $t6, $t6, 0xffff
/* 00438928 AFAE0010 */  sw    $t6, 0x10($sp)
/* 0043892C 00402025 */  move  $a0, $v0
/* 00438930 00002825 */  move  $a1, $zero
/* 00438934 24060001 */  li    $a2, 1
/* 00438938 0320F809 */  jalr  $t9
/* 0043893C 24070006 */   li    $a3, 6
/* 00438940 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438944 00402025 */  move  $a0, $v0
/* 00438948 8F9986DC */  lw    $t9, %call16(st_idn_index_fext)($gp)
/* 0043894C 24050001 */  li    $a1, 1
/* 00438950 0320F809 */  jalr  $t9
/* 00438954 00000000 */   nop   
/* 00438958 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0043895C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438960 03E00008 */  jr    $ra
/* 00438964 27BD0028 */   addiu $sp, $sp, 0x28

    .type idn_for_extern_symbol, @function
    .size idn_for_extern_symbol, .-idn_for_extern_symbol
    .end idn_for_extern_symbol

glabel st_wrinteger
    .ent st_wrinteger
    # 00439234 func_00439234
/* 00438968 3C1C0FBF */  .cpload $t9
/* 0043896C 279C18F8 */  
/* 00438970 0399E021 */  
/* 00438974 8F9980FC */  lw    $t9, %call16(write)($gp)
/* 00438978 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0043897C AFBF001C */  sw    $ra, 0x1c($sp)
/* 00438980 0320F809 */  jalr  $t9
/* 00438984 AFBC0018 */   sw    $gp, 0x18($sp)
/* 00438988 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0043898C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00438990 03E00008 */  jr    $ra
/* 00438994 27BD0020 */   addiu $sp, $sp, 0x20

    .type st_wrinteger, @function
    .size st_wrinteger, .-st_wrinteger
    .end st_wrinteger

glabel st_wrfilehdr
    .ent st_wrfilehdr
    # 004392DC wrcoffobj
/* 00438998 3C1C0FBF */  .cpload $t9
/* 0043899C 279C18C8 */  
/* 004389A0 0399E021 */  
/* 004389A4 8F9980FC */  lw    $t9, %call16(write)($gp)
/* 004389A8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 004389AC AFBF001C */  sw    $ra, 0x1c($sp)
/* 004389B0 0320F809 */  jalr  $t9
/* 004389B4 AFBC0018 */   sw    $gp, 0x18($sp)
/* 004389B8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 004389BC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004389C0 03E00008 */  jr    $ra
/* 004389C4 27BD0020 */   addiu $sp, $sp, 0x20

    .type st_wrfilehdr, @function
    .size st_wrfilehdr, .-st_wrfilehdr
    .end st_wrfilehdr

glabel st_wraouthdr
    .ent st_wraouthdr
    # 004392DC wrcoffobj
/* 004389C8 3C1C0FBF */  .cpload $t9
/* 004389CC 279C1898 */  
/* 004389D0 0399E021 */  
/* 004389D4 8F9980FC */  lw    $t9, %call16(write)($gp)
/* 004389D8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 004389DC AFBF001C */  sw    $ra, 0x1c($sp)
/* 004389E0 0320F809 */  jalr  $t9
/* 004389E4 AFBC0018 */   sw    $gp, 0x18($sp)
/* 004389E8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 004389EC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004389F0 03E00008 */  jr    $ra
/* 004389F4 27BD0020 */   addiu $sp, $sp, 0x20

    .type st_wraouthdr, @function
    .size st_wraouthdr, .-st_wraouthdr
    .end st_wraouthdr

glabel st_wrscnhdr
    .ent st_wrscnhdr
    # 0044C7E4 func_0044C7E4
/* 004389F8 3C1C0FBF */  .cpload $t9
/* 004389FC 279C1868 */  
/* 00438A00 0399E021 */  
/* 00438A04 8F9980FC */  lw    $t9, %call16(write)($gp)
/* 00438A08 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00438A0C AFBF001C */  sw    $ra, 0x1c($sp)
/* 00438A10 0320F809 */  jalr  $t9
/* 00438A14 AFBC0018 */   sw    $gp, 0x18($sp)
/* 00438A18 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00438A1C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00438A20 03E00008 */  jr    $ra
/* 00438A24 27BD0020 */   addiu $sp, $sp, 0x20

    .type st_wrscnhdr, @function
    .size st_wrscnhdr, .-st_wrscnhdr
    .end st_wrscnhdr

glabel st_wrreloc
    .ent st_wrreloc
    # 0044BA80 wrreloc
/* 00438A28 3C1C0FBF */  .cpload $t9
/* 00438A2C 279C1838 */  
/* 00438A30 0399E021 */  
/* 00438A34 8F9980FC */  lw    $t9, %call16(write)($gp)
/* 00438A38 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00438A3C AFBF001C */  sw    $ra, 0x1c($sp)
/* 00438A40 0320F809 */  jalr  $t9
/* 00438A44 AFBC0018 */   sw    $gp, 0x18($sp)
/* 00438A48 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00438A4C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00438A50 03E00008 */  jr    $ra
/* 00438A54 27BD0020 */   addiu $sp, $sp, 0x20

    .type st_wrreloc, @function
    .size st_wrreloc, .-st_wrreloc
    .end st_wrreloc

glabel st_check_local
    .ent st_check_local
    # 0045D854 islocalsym
/* 00438A58 3C1C0FBF */  .cpload $t9
/* 00438A5C 279C1808 */  
/* 00438A60 0399E021 */  
/* 00438A64 8F9986E0 */  lw    $t9, %call16(st_pdn_idn)($gp)
/* 00438A68 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 00438A6C AFBF001C */  sw    $ra, 0x1c($sp)
/* 00438A70 0320F809 */  jalr  $t9
/* 00438A74 AFBC0018 */   sw    $gp, 0x18($sp)
/* 00438A78 8C410000 */  lw    $at, ($v0)
/* 00438A7C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00438A80 27AE0030 */  addiu $t6, $sp, 0x30
/* 00438A84 ADC10000 */  sw    $at, ($t6)
/* 00438A88 8C590004 */  lw    $t9, 4($v0)
/* 00438A8C 3C01000F */  lui   $at, 0xf
/* 00438A90 ADD90004 */  sw    $t9, 4($t6)
/* 00438A94 8FA80034 */  lw    $t0, 0x34($sp)
/* 00438A98 3421FFFF */  ori   $at, $at, 0xffff
/* 00438A9C 15010003 */  bne   $t0, $at, .L00438AAC
/* 00438AA0 00000000 */   nop   
/* 00438AA4 10000018 */  b     .L00438B08
/* 00438AA8 00001025 */   move  $v0, $zero
.L00438AAC:
/* 00438AAC 8F9986F0 */  lw    $t9, %call16(st_psym_ifd_isym)($gp)
/* 00438AB0 8FA40030 */  lw    $a0, 0x30($sp)
/* 00438AB4 8FA50034 */  lw    $a1, 0x34($sp)
/* 00438AB8 0320F809 */  jalr  $t9
/* 00438ABC 00000000 */   nop   
/* 00438AC0 8C440008 */  lw    $a0, 8($v0)
/* 00438AC4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00438AC8 00044E82 */  srl   $t1, $a0, 0x1a
/* 00438ACC 39230002 */  xori  $v1, $t1, 2
/* 00438AD0 0003182B */  sltu  $v1, $zero, $v1
/* 00438AD4 1060000C */  beqz  $v1, .L00438B08
/* 00438AD8 00601025 */   move  $v0, $v1
/* 00438ADC 3923000E */  xori  $v1, $t1, 0xe
/* 00438AE0 0003182B */  sltu  $v1, $zero, $v1
/* 00438AE4 10600008 */  beqz  $v1, .L00438B08
/* 00438AE8 00601025 */   move  $v0, $v1
/* 00438AEC 39230005 */  xori  $v1, $t1, 5
/* 00438AF0 0003182B */  sltu  $v1, $zero, $v1
/* 00438AF4 10600004 */  beqz  $v1, .L00438B08
/* 00438AF8 00601025 */   move  $v0, $v1
/* 00438AFC 39230010 */  xori  $v1, $t1, 0x10
/* 00438B00 0003182B */  sltu  $v1, $zero, $v1
/* 00438B04 00601025 */  move  $v0, $v1
.L00438B08:
/* 00438B08 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00438B0C 27BD0038 */  addiu $sp, $sp, 0x38
/* 00438B10 03E00008 */  jr    $ra
/* 00438B14 00000000 */   nop   

    .type st_check_local, @function
    .size st_check_local, .-st_check_local
    .end st_check_local

glabel is_dso_static
    .ent is_dso_static
    # 004531B8 parseafa
    # 0045E218 setup_tempreg
    # 004604C0 do_parseafra
/* 00438B18 3C1C0FBF */  .cpload $t9
/* 00438B1C 279C1748 */  
/* 00438B20 0399E021 */  
/* 00438B24 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 00438B28 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00438B2C 04810003 */  bgez  $a0, .L00438B3C
/* 00438B30 AFBC0018 */   sw    $gp, 0x18($sp)
/* 00438B34 1000002D */  b     .L00438BEC
/* 00438B38 24020001 */   li    $v0, 1
.L00438B3C:
/* 00438B3C 8F9986E0 */  lw    $t9, %call16(st_pdn_idn)($gp)
/* 00438B40 00000000 */  nop   
/* 00438B44 0320F809 */  jalr  $t9
/* 00438B48 00000000 */   nop   
/* 00438B4C 8C410000 */  lw    $at, ($v0)
/* 00438B50 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00438B54 27AE0030 */  addiu $t6, $sp, 0x30
/* 00438B58 ADC10000 */  sw    $at, ($t6)
/* 00438B5C 8C580004 */  lw    $t8, 4($v0)
/* 00438B60 3C01000F */  lui   $at, 0xf
/* 00438B64 ADD80004 */  sw    $t8, 4($t6)
/* 00438B68 8FB90034 */  lw    $t9, 0x34($sp)
/* 00438B6C 3421FFFF */  ori   $at, $at, 0xffff
/* 00438B70 17210003 */  bne   $t9, $at, .L00438B80
/* 00438B74 00000000 */   nop   
/* 00438B78 1000001C */  b     .L00438BEC
/* 00438B7C 24020001 */   li    $v0, 1
.L00438B80:
/* 00438B80 8F9986F0 */  lw    $t9, %call16(st_psym_ifd_isym)($gp)
/* 00438B84 8FA40030 */  lw    $a0, 0x30($sp)
/* 00438B88 8FA50034 */  lw    $a1, 0x34($sp)
/* 00438B8C 0320F809 */  jalr  $t9
/* 00438B90 00000000 */   nop   
/* 00438B94 8C440008 */  lw    $a0, 8($v0)
/* 00438B98 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00438B9C 24010002 */  li    $at, 2
/* 00438BA0 00041E82 */  srl   $v1, $a0, 0x1a
/* 00438BA4 10610005 */  beq   $v1, $at, .L00438BBC
/* 00438BA8 2401000E */   li    $at, 14
/* 00438BAC 10610003 */  beq   $v1, $at, .L00438BBC
/* 00438BB0 24010005 */   li    $at, 5
/* 00438BB4 14610004 */  bne   $v1, $at, .L00438BC8
/* 00438BB8 24010006 */   li    $at, 6
.L00438BBC:
/* 00438BBC 1000000B */  b     .L00438BEC
/* 00438BC0 24020001 */   li    $v0, 1
/* 00438BC4 24010006 */  li    $at, 6
.L00438BC8:
/* 00438BC8 14610007 */  bne   $v1, $at, .L00438BE8
/* 00438BCC 00044180 */   sll   $t0, $a0, 6
/* 00438BD0 00084EC2 */  srl   $t1, $t0, 0x1b
/* 00438BD4 24010001 */  li    $at, 1
/* 00438BD8 15210004 */  bne   $t1, $at, .L00438BEC
/* 00438BDC 00001025 */   move  $v0, $zero
/* 00438BE0 10000002 */  b     .L00438BEC
/* 00438BE4 24020001 */   li    $v0, 1
.L00438BE8:
/* 00438BE8 00001025 */  move  $v0, $zero
.L00438BEC:
/* 00438BEC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00438BF0 27BD0038 */  addiu $sp, $sp, 0x38
/* 00438BF4 03E00008 */  jr    $ra
/* 00438BF8 00000000 */   nop   

    .type is_dso_static, @function
    .size is_dso_static, .-is_dso_static
    .end is_dso_static

glabel st_add_deltasym
    .ent st_add_deltasym
    # 00455D40 parsealloc
    # 00469CF8 parseafrrr
/* 00438BFC 3C1C0FBF */  .cpload $t9
/* 00438C00 279C1664 */  
/* 00438C04 0399E021 */  
/* 00438C08 8F8E8080 */  lw    $t6, %got(D_10004960)($gp)
/* 00438C0C 27BDFAC0 */  addiu $sp, $sp, -0x540
/* 00438C10 8DCE4960 */  lw    $t6, %lo(D_10004960)($t6)
/* 00438C14 8F818080 */  lw    $at, %got(D_10004960)($gp)
/* 00438C18 8F99882C */  lw    $t9, %call16(st_setfd)($gp)
/* 00438C1C AFBF0024 */  sw    $ra, 0x24($sp)
/* 00438C20 AFA40540 */  sw    $a0, 0x540($sp)
/* 00438C24 25CF0001 */  addiu $t7, $t6, 1
/* 00438C28 AFBC0020 */  sw    $gp, 0x20($sp)
/* 00438C2C AFA50544 */  sw    $a1, 0x544($sp)
/* 00438C30 AFA60548 */  sw    $a2, 0x548($sp)
/* 00438C34 00002025 */  move  $a0, $zero
/* 00438C38 0320F809 */  jalr  $t9
/* 00438C3C AC2F4960 */   sw    $t7, %lo(D_10004960)($at)
/* 00438C40 8FA30540 */  lw    $v1, 0x540($sp)
/* 00438C44 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438C48 2401001A */  li    $at, 26
/* 00438C4C 14610013 */  bne   $v1, $at, .L00438C9C
/* 00438C50 27A40030 */   addiu $a0, $sp, 0x30
/* 00438C54 8F99806C */  lw    $t9, %got(RO_10016E90)($gp)
/* 00438C58 8F988080 */  lw    $t8, %got(D_10004960)($gp)
/* 00438C5C 27396E90 */  addiu $t9, %lo(RO_10016E90) # addiu $t9, $t9, 0x6e90
/* 00438C60 8F86808C */  lw    $a2, %got(B_1002FF2C)($gp)
/* 00438C64 8F87808C */  lw    $a3, %got(B_1002FF30)($gp)
/* 00438C68 AFB90014 */  sw    $t9, 0x14($sp)
/* 00438C6C 8F9980CC */  lw    $t9, %call16(sprintf)($gp)
/* 00438C70 8F85806C */  lw    $a1, %got(RO_10016E80)($gp)
/* 00438C74 8F184960 */  lw    $t8, %lo(D_10004960)($t8)
/* 00438C78 8CC6FF2C */  lw    $a2, %lo(B_1002FF2C)($a2)
/* 00438C7C 8CE7FF30 */  lw    $a3, %lo(B_1002FF30)($a3)
/* 00438C80 24A56E80 */  addiu $a1, %lo(RO_10016E80) # addiu $a1, $a1, 0x6e80
/* 00438C84 0320F809 */  jalr  $t9
/* 00438C88 AFB80010 */   sw    $t8, 0x10($sp)
/* 00438C8C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438C90 2408001F */  li    $t0, 31
/* 00438C94 1000002A */  b     .L00438D40
/* 00438C98 AFA8002C */   sw    $t0, 0x2c($sp)
.L00438C9C:
/* 00438C9C 2401001C */  li    $at, 28
/* 00438CA0 14610013 */  bne   $v1, $at, .L00438CF0
/* 00438CA4 27A40030 */   addiu $a0, $sp, 0x30
/* 00438CA8 8F898080 */  lw    $t1, %got(D_10004960)($gp)
/* 00438CAC 8F86808C */  lw    $a2, %got(B_1002FF2C)($gp)
/* 00438CB0 8F87808C */  lw    $a3, %got(B_1002FF30)($gp)
/* 00438CB4 8F8A806C */  lw    $t2, %got(RO_10016EA8)($gp)
/* 00438CB8 8F85806C */  lw    $a1, %got(RO_10016E98)($gp)
/* 00438CBC 8F9980CC */  lw    $t9, %call16(sprintf)($gp)
/* 00438CC0 8D294960 */  lw    $t1, %lo(D_10004960)($t1)
/* 00438CC4 8CC6FF2C */  lw    $a2, %lo(B_1002FF2C)($a2)
/* 00438CC8 8CE7FF30 */  lw    $a3, %lo(B_1002FF30)($a3)
/* 00438CCC 254A6EA8 */  addiu $t2, %lo(RO_10016EA8) # addiu $t2, $t2, 0x6ea8
/* 00438CD0 AFAA0014 */  sw    $t2, 0x14($sp)
/* 00438CD4 24A56E98 */  addiu $a1, %lo(RO_10016E98) # addiu $a1, $a1, 0x6e98
/* 00438CD8 0320F809 */  jalr  $t9
/* 00438CDC AFA90010 */   sw    $t1, 0x10($sp)
/* 00438CE0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438CE4 240B0020 */  li    $t3, 32
/* 00438CE8 10000015 */  b     .L00438D40
/* 00438CEC AFAB002C */   sw    $t3, 0x2c($sp)
.L00438CF0:
/* 00438CF0 2401001B */  li    $at, 27
/* 00438CF4 14610012 */  bne   $v1, $at, .L00438D40
/* 00438CF8 27A40030 */   addiu $a0, $sp, 0x30
/* 00438CFC 8F8C8080 */  lw    $t4, %got(D_10004960)($gp)
/* 00438D00 8F86808C */  lw    $a2, %got(B_1002FF2C)($gp)
/* 00438D04 8F87808C */  lw    $a3, %got(B_1002FF30)($gp)
/* 00438D08 8F8D806C */  lw    $t5, %got(RO_10016EC0)($gp)
/* 00438D0C 8F85806C */  lw    $a1, %got(RO_10016EB0)($gp)
/* 00438D10 8F9980CC */  lw    $t9, %call16(sprintf)($gp)
/* 00438D14 8D8C4960 */  lw    $t4, %lo(D_10004960)($t4)
/* 00438D18 8CC6FF2C */  lw    $a2, %lo(B_1002FF2C)($a2)
/* 00438D1C 8CE7FF30 */  lw    $a3, %lo(B_1002FF30)($a3)
/* 00438D20 25AD6EC0 */  addiu $t5, %lo(RO_10016EC0) # addiu $t5, $t5, 0x6ec0
/* 00438D24 AFAD0014 */  sw    $t5, 0x14($sp)
/* 00438D28 24A56EB0 */  addiu $a1, %lo(RO_10016EB0) # addiu $a1, $a1, 0x6eb0
/* 00438D2C 0320F809 */  jalr  $t9
/* 00438D30 AFAC0010 */   sw    $t4, 0x10($sp)
/* 00438D34 240E0020 */  li    $t6, 32
/* 00438D38 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438D3C AFAE002C */  sw    $t6, 0x2c($sp)
.L00438D40:
/* 00438D40 8F998810 */  lw    $t9, %call16(st_extstradd)($gp)
/* 00438D44 27A40030 */  addiu $a0, $sp, 0x30
/* 00438D48 0320F809 */  jalr  $t9
/* 00438D4C 00000000 */   nop   
/* 00438D50 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438D54 8FAF0548 */  lw    $t7, 0x548($sp)
/* 00438D58 8F9986D4 */  lw    $t9, %call16(st_extadd)($gp)
/* 00438D5C 8FA6002C */  lw    $a2, 0x2c($sp)
/* 00438D60 8FA70540 */  lw    $a3, 0x540($sp)
/* 00438D64 00402025 */  move  $a0, $v0
/* 00438D68 00002825 */  move  $a1, $zero
/* 00438D6C 0320F809 */  jalr  $t9
/* 00438D70 AFAF0010 */   sw    $t7, 0x10($sp)
/* 00438D74 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438D78 AFA20538 */  sw    $v0, 0x538($sp)
/* 00438D7C 8F9986D8 */  lw    $t9, %call16(st_pext_iext)($gp)
/* 00438D80 00402025 */  move  $a0, $v0
/* 00438D84 0320F809 */  jalr  $t9
/* 00438D88 00000000 */   nop   
/* 00438D8C 90590000 */  lbu   $t9, ($v0)
/* 00438D90 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438D94 37280010 */  ori   $t0, $t9, 0x10
/* 00438D98 A0480000 */  sb    $t0, ($v0)
/* 00438D9C 8FA90544 */  lw    $t1, 0x544($sp)
/* 00438DA0 3C057FFF */  lui   $a1, 0x7fff
/* 00438DA4 AC490008 */  sw    $t1, 8($v0)
/* 00438DA8 8F9986DC */  lw    $t9, %call16(st_idn_index_fext)($gp)
/* 00438DAC 8FA40538 */  lw    $a0, 0x538($sp)
/* 00438DB0 0320F809 */  jalr  $t9
/* 00438DB4 34A5FFFF */   ori   $a1, $a1, 0xffff
/* 00438DB8 8FBF0024 */  lw    $ra, 0x24($sp)
/* 00438DBC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00438DC0 03E00008 */  jr    $ra
/* 00438DC4 27BD0540 */   addiu $sp, $sp, 0x540

    .type st_add_deltasym, @function
    .size st_add_deltasym, .-st_add_deltasym
    .end st_add_deltasym

glabel save_cur_proc_id
    .ent save_cur_proc_id
    # 00455F2C parseend
/* 00438DC8 3C1C0FBF */  .cpload $t9
/* 00438DCC 279C1498 */  
/* 00438DD0 0399E021 */  
/* 00438DD4 8F81808C */  lw    $at, %got(B_1002FF2C)($gp)
/* 00438DD8 8F998100 */  lw    $t9, %call16(time)($gp)
/* 00438DDC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00438DE0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00438DE4 AC24FF2C */  sw    $a0, %lo(B_1002FF2C)($at)
/* 00438DE8 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00438DEC 0320F809 */  jalr  $t9
/* 00438DF0 27A40024 */   addiu $a0, $sp, 0x24
/* 00438DF4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00438DF8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00438DFC 8F81808C */  lw    $at, %got(B_1002FF30)($gp)
/* 00438E00 27BD0028 */  addiu $sp, $sp, 0x28
/* 00438E04 03E00008 */  jr    $ra
/* 00438E08 AC22FF30 */   sw    $v0, %lo(B_1002FF30)($at)

/* 00438E0C 00000000 */  nop   
    .type save_cur_proc_id, @function
    .size save_cur_proc_id, .-save_cur_proc_id
    .end save_cur_proc_id

glabel name_compare
    .ent name_compare
    # 00438E4C enter_symbol
    # 00438FCC reenter_symbol
    # 00439064 get_length
/* 00438E10 3C1C0FBF */  .cpload $t9
/* 00438E14 279C1450 */  
/* 00438E18 0399E021 */  
/* 00438E1C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00438E20 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00438E24 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00438E28 8F998118 */  lw    $t9, %call16(strcmp)($gp)
/* 00438E2C 8CA50000 */  lw    $a1, ($a1)
/* 00438E30 8C840000 */  lw    $a0, ($a0)
/* 00438E34 0320F809 */  jalr  $t9
/* 00438E38 00000000 */   nop   
/* 00438E3C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00438E40 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00438E44 03E00008 */  jr    $ra
/* 00438E48 27BD0020 */   addiu $sp, $sp, 0x20

    .type name_compare, @function
    .size name_compare, .-name_compare
    .end name_compare

glabel enter_symbol
    .ent enter_symbol
    # 00438FCC reenter_symbol
    # 00454F8C parsecomm
/* 00438E4C 3C1C0FBF */  .cpload $t9
/* 00438E50 279C1414 */  
/* 00438E54 0399E021 */  
/* 00438E58 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00438E5C AFBF001C */  sw    $ra, 0x1c($sp)
/* 00438E60 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00438E64 10800055 */  beqz  $a0, .L00438FBC
/* 00438E68 AFA5002C */   sw    $a1, 0x2c($sp)
/* 00438E6C 8F99818C */  lw    $t9, %call16(strlen)($gp)
/* 00438E70 AFA40028 */  sw    $a0, 0x28($sp)
/* 00438E74 0320F809 */  jalr  $t9
/* 00438E78 00000000 */   nop   
/* 00438E7C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00438E80 24440001 */  addiu $a0, $v0, 1
/* 00438E84 8F998190 */  lw    $t9, %call16(malloc)($gp)
/* 00438E88 00000000 */  nop   
/* 00438E8C 0320F809 */  jalr  $t9
/* 00438E90 00000000 */   nop   
/* 00438E94 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00438E98 1440000F */  bnez  $v0, .L00438ED8
/* 00438E9C AFA20020 */   sw    $v0, 0x20($sp)
/* 00438EA0 8F8480AC */  lw     $a0, %got(__iob)($gp)
/* 00438EA4 8F85806C */  lw    $a1, %got(RO_10017000)($gp)
/* 00438EA8 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 00438EAC 24840020 */  addiu $a0, $a0, 0x20
/* 00438EB0 0320F809 */  jalr  $t9
/* 00438EB4 24A57000 */   addiu $a1, %lo(RO_10017000) # addiu $a1, $a1, 0x7000
/* 00438EB8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00438EBC 24040001 */  li    $a0, 1
/* 00438EC0 8F998688 */  lw    $t9, %call16(exit)($gp)
/* 00438EC4 00000000 */  nop   
/* 00438EC8 0320F809 */  jalr  $t9
/* 00438ECC 00000000 */   nop   
/* 00438ED0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00438ED4 00000000 */  nop   
.L00438ED8:
/* 00438ED8 8F9981A0 */  lw    $t9, %call16(strcpy)($gp)
/* 00438EDC 8FA40020 */  lw    $a0, 0x20($sp)
/* 00438EE0 8FA50028 */  lw    $a1, 0x28($sp)
/* 00438EE4 0320F809 */  jalr  $t9
/* 00438EE8 00000000 */   nop   
/* 00438EEC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00438EF0 24040008 */  li    $a0, 8
/* 00438EF4 8F998190 */  lw    $t9, %call16(malloc)($gp)
/* 00438EF8 00000000 */  nop   
/* 00438EFC 0320F809 */  jalr  $t9
/* 00438F00 00000000 */   nop   
/* 00438F04 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00438F08 14400011 */  bnez  $v0, .L00438F50
/* 00438F0C 00403825 */   move  $a3, $v0
/* 00438F10 8F8480AC */  lw     $a0, %got(__iob)($gp)
/* 00438F14 8F85806C */  lw    $a1, %got(RO_10017018)($gp)
/* 00438F18 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 00438F1C AFA20024 */  sw    $v0, 0x24($sp)
/* 00438F20 24840020 */  addiu $a0, $a0, 0x20
/* 00438F24 0320F809 */  jalr  $t9
/* 00438F28 24A57018 */   addiu $a1, %lo(RO_10017018) # addiu $a1, $a1, 0x7018
/* 00438F2C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00438F30 24040001 */  li    $a0, 1
/* 00438F34 8F998688 */  lw    $t9, %call16(exit)($gp)
/* 00438F38 00000000 */  nop   
/* 00438F3C 0320F809 */  jalr  $t9
/* 00438F40 00000000 */   nop   
/* 00438F44 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00438F48 8FA70024 */  lw    $a3, 0x24($sp)
/* 00438F4C 00000000 */  nop   
.L00438F50:
/* 00438F50 8FAE0020 */  lw    $t6, 0x20($sp)
/* 00438F54 8F858080 */  lw    $a1, %got(D_10004970)($gp)
/* 00438F58 ACEE0000 */  sw    $t6, ($a3)
/* 00438F5C 8FAF002C */  lw    $t7, 0x2c($sp)
/* 00438F60 8F868434 */  lw     $a2, %got(name_compare)($gp)
/* 00438F64 ACEF0004 */  sw    $t7, 4($a3)
/* 00438F68 8F9980F8 */  lw    $t9, %call16(tsearch)($gp)
/* 00438F6C 00E02025 */  move  $a0, $a3
/* 00438F70 0320F809 */  jalr  $t9
/* 00438F74 24A54970 */   addiu $a1, %lo(D_10004970) # addiu $a1, $a1, 0x4970
/* 00438F78 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00438F7C 14400010 */  bnez  $v0, .L00438FC0
/* 00438F80 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00438F84 8F8480AC */  lw     $a0, %got(__iob)($gp)
/* 00438F88 8F85806C */  lw    $a1, %got(RO_10017034)($gp)
/* 00438F8C 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 00438F90 24840020 */  addiu $a0, $a0, 0x20
/* 00438F94 0320F809 */  jalr  $t9
/* 00438F98 24A57034 */   addiu $a1, %lo(RO_10017034) # addiu $a1, $a1, 0x7034
/* 00438F9C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00438FA0 24040001 */  li    $a0, 1
/* 00438FA4 8F998688 */  lw    $t9, %call16(exit)($gp)
/* 00438FA8 00000000 */  nop   
/* 00438FAC 0320F809 */  jalr  $t9
/* 00438FB0 00000000 */   nop   
/* 00438FB4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00438FB8 00000000 */  nop   
.L00438FBC:
/* 00438FBC 8FBF001C */  lw    $ra, 0x1c($sp)
.L00438FC0:
/* 00438FC0 27BD0028 */  addiu $sp, $sp, 0x28
/* 00438FC4 03E00008 */  jr    $ra
/* 00438FC8 00000000 */   nop   

    .type enter_symbol, @function
    .size enter_symbol, .-enter_symbol
    .end enter_symbol

glabel reenter_symbol
    .ent reenter_symbol
    # 0041FE24 func_0041FE24
    # 00454C38 remember_symbol_size
/* 00438FCC 3C1C0FBF */  .cpload $t9
/* 00438FD0 279C1294 */  
/* 00438FD4 0399E021 */  
/* 00438FD8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 00438FDC AFBF001C */  sw    $ra, 0x1c($sp)
/* 00438FE0 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00438FE4 AFA50034 */  sw    $a1, 0x34($sp)
/* 00438FE8 1080001A */  beqz  $a0, .L00439054
/* 00438FEC 00803825 */   move  $a3, $a0
/* 00438FF0 8F858080 */  lw    $a1, %got(D_10004970)($gp)
/* 00438FF4 8F9980F4 */  lw    $t9, %call16(tfind)($gp)
/* 00438FF8 AFA40028 */  sw    $a0, 0x28($sp)
/* 00438FFC 8F868434 */  lw     $a2, %got(name_compare)($gp)
/* 00439000 27A40028 */  addiu $a0, $sp, 0x28
/* 00439004 AFA70030 */  sw    $a3, 0x30($sp)
/* 00439008 0320F809 */  jalr  $t9
/* 0043900C 24A54970 */   addiu $a1, %lo(D_10004970) # addiu $a1, $a1, 0x4970
/* 00439010 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00439014 8FA50034 */  lw    $a1, 0x34($sp)
/* 00439018 8FA70030 */  lw    $a3, 0x30($sp)
/* 0043901C 10400007 */  beqz  $v0, .L0043903C
/* 00439020 00000000 */   nop   
/* 00439024 8C430000 */  lw    $v1, ($v0)
/* 00439028 00000000 */  nop   
/* 0043902C 10600003 */  beqz  $v1, .L0043903C
/* 00439030 00000000 */   nop   
/* 00439034 10000007 */  b     .L00439054
/* 00439038 AC650004 */   sw    $a1, 4($v1)
.L0043903C:
/* 0043903C 8F998438 */  lw    $t9, %call16(enter_symbol)($gp)
/* 00439040 00E02025 */  move  $a0, $a3
/* 00439044 0320F809 */  jalr  $t9
/* 00439048 00000000 */   nop   
/* 0043904C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00439050 00000000 */  nop   
.L00439054:
/* 00439054 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00439058 27BD0030 */  addiu $sp, $sp, 0x30
/* 0043905C 03E00008 */  jr    $ra
/* 00439060 00000000 */   nop   

    .type reenter_symbol, @function
    .size reenter_symbol, .-reenter_symbol
    .end reenter_symbol

glabel get_length
    .ent get_length
    # 0040EE88 func_0040EE88
/* 00439064 3C1C0FBF */  .cpload $t9
/* 00439068 279C11FC */  
/* 0043906C 0399E021 */  
/* 00439070 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 00439074 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00439078 10800016 */  beqz  $a0, .L004390D4
/* 0043907C AFBC0018 */   sw    $gp, 0x18($sp)
/* 00439080 8F858080 */  lw    $a1, %got(D_10004970)($gp)
/* 00439084 8F9980F4 */  lw    $t9, %call16(tfind)($gp)
/* 00439088 AFA40028 */  sw    $a0, 0x28($sp)
/* 0043908C 8F868434 */  lw     $a2, %got(name_compare)($gp)
/* 00439090 27A40028 */  addiu $a0, $sp, 0x28
/* 00439094 0320F809 */  jalr  $t9
/* 00439098 24A54970 */   addiu $a1, %lo(D_10004970) # addiu $a1, $a1, 0x4970
/* 0043909C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004390A0 1040000A */  beqz  $v0, .L004390CC
/* 004390A4 00000000 */   nop   
/* 004390A8 8C4E0000 */  lw    $t6, ($v0)
/* 004390AC 00000000 */  nop   
/* 004390B0 11C00006 */  beqz  $t6, .L004390CC
/* 004390B4 00000000 */   nop   
/* 004390B8 8C4F0000 */  lw    $t7, ($v0)
/* 004390BC 00000000 */  nop   
/* 004390C0 8DE20004 */  lw    $v0, 4($t7)
/* 004390C4 10000005 */  b     .L004390DC
/* 004390C8 8FBF001C */   lw    $ra, 0x1c($sp)
.L004390CC:
/* 004390CC 10000002 */  b     .L004390D8
/* 004390D0 00001025 */   move  $v0, $zero
.L004390D4:
/* 004390D4 00001025 */  move  $v0, $zero
.L004390D8:
/* 004390D8 8FBF001C */  lw    $ra, 0x1c($sp)
.L004390DC:
/* 004390DC 27BD0030 */  addiu $sp, $sp, 0x30
/* 004390E0 03E00008 */  jr    $ra
/* 004390E4 00000000 */   nop   

/* 004390E8 00000000 */  nop   
    .type get_length, @function
    .size get_length, .-get_length
    .end get_length
)"");
