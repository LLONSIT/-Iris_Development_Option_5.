__asm__(R""(
.macro glabel label
    .global \label
    .balign 4
    \label:
.endm




.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.text
glabel basereg_error
    .ent basereg_error
    # 0045F110 genfpmultiple
    # 0046159C gendouble
    # 00462320 func_00462320
/* 0045DE40 3C1C0FBD */  .cpload $t9
/* 0045DE44 279CC420 */  
/* 0045DE48 0399E021 */  
/* 0045DE4C 8F8E8070 */  lw    $t6, %got(RO_1001C1D0)($gp)
/* 0045DE50 27BDFF98 */  addiu $sp, $sp, -0x68
/* 0045DE54 25CEC1D0 */  addiu $t6, %lo(RO_1001C1D0) # addiu $t6, $t6, -0x3e30
/* 0045DE58 AFBF0064 */  sw    $ra, 0x64($sp)
/* 0045DE5C AFBC0060 */  sw    $gp, 0x60($sp)
/* 0045DE60 25D80048 */  addiu $t8, $t6, 0x48
/* 0045DE64 03A0C825 */  move  $t9, $sp
.L0045DE68:
/* 0045DE68 89C10000 */  lwl   $at, ($t6)
/* 0045DE6C 99C10003 */  lwr   $at, 3($t6)
/* 0045DE70 25CE000C */  addiu $t6, $t6, 0xc
/* 0045DE74 AB210000 */  swl   $at, ($t9)
/* 0045DE78 BB210003 */  swr   $at, 3($t9)
/* 0045DE7C 89C1FFF8 */  lwl   $at, -8($t6)
/* 0045DE80 99C1FFFB */  lwr   $at, -5($t6)
/* 0045DE84 2739000C */  addiu $t9, $t9, 0xc
/* 0045DE88 AB21FFF8 */  swl   $at, -8($t9)
/* 0045DE8C BB21FFFB */  swr   $at, -5($t9)
/* 0045DE90 89C1FFFC */  lwl   $at, -4($t6)
/* 0045DE94 99C1FFFF */  lwr   $at, -1($t6)
/* 0045DE98 00000000 */  nop   
/* 0045DE9C AB21FFFC */  swl   $at, -4($t9)
/* 0045DEA0 15D8FFF1 */  bne   $t6, $t8, .L0045DE68
/* 0045DEA4 BB21FFFF */   swr   $at, -1($t9)
/* 0045DEA8 89C10000 */  lwl   $at, ($t6)
/* 0045DEAC 99C10003 */  lwr   $at, 3($t6)
/* 0045DEB0 8F888C68 */  lw     $t0, %got(emptystring)($gp)
/* 0045DEB4 AB210000 */  swl   $at, ($t9)
/* 0045DEB8 BB210003 */  swr   $at, 3($t9)
/* 0045DEBC 89D80004 */  lwl   $t8, 4($t6)
/* 0045DEC0 99D80007 */  lwr   $t8, 7($t6)
/* 0045DEC4 24090001 */  li    $t1, 1
/* 0045DEC8 AB380004 */  swl   $t8, 4($t9)
/* 0045DECC BB380007 */  swr   $t8, 7($t9)
/* 0045DED0 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0045DED4 8D080000 */  lw    $t0, ($t0)
/* 0045DED8 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045DEDC 8FA60008 */  lw    $a2, 8($sp)
/* 0045DEE0 8FA50004 */  lw    $a1, 4($sp)
/* 0045DEE4 8FA40000 */  lw    $a0, ($sp)
/* 0045DEE8 AFA90054 */  sw    $t1, 0x54($sp)
/* 0045DEEC 0320F809 */  jalr  $t9
/* 0045DEF0 AFA80050 */   sw    $t0, 0x50($sp)
/* 0045DEF4 8FBF0064 */  lw    $ra, 0x64($sp)
/* 0045DEF8 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045DEFC 03E00008 */  jr    $ra
/* 0045DF00 27BD0068 */   addiu $sp, $sp, 0x68

    .type basereg_error, @function
    .size basereg_error, .-basereg_error
    .end basereg_error

    .type func_0045DF04, @function
func_0045DF04:
    # 0045DF28 func_0045DF28
/* 0045DF04 00852821 */  addu  $a1, $a0, $a1
/* 0045DF08 04A10005 */  bgez  $a1, .L0045DF20
/* 0045DF0C 00000000 */   nop   
/* 0045DF10 8C4EFFF4 */  lw    $t6, -0xc($v0)
/* 0045DF14 00000000 */  nop   
/* 0045DF18 00AE2823 */  subu  $a1, $a1, $t6
/* 0045DF1C 24A50001 */  addiu $a1, $a1, 1
.L0045DF20:
/* 0045DF20 03E00008 */  jr    $ra
/* 0045DF24 00A01025 */   move  $v0, $a1

    .type func_0045DF28, @function
func_0045DF28:
    # 0045E090 func_0045E090
/* 0045DF28 3C1C0FBD */  .cpload $t9
/* 0045DF2C 279CC338 */  
/* 0045DF30 0399E021 */  
/* 0045DF34 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0045DF38 93AE0043 */  lbu   $t6, 0x43($sp)
/* 0045DF3C 24010004 */  li    $at, 4
/* 0045DF40 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0045DF44 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0045DF48 AFA40030 */  sw    $a0, 0x30($sp)
/* 0045DF4C 11C10004 */  beq   $t6, $at, .L0045DF60
/* 0045DF50 AFA50034 */   sw    $a1, 0x34($sp)
/* 0045DF54 24010003 */  li    $at, 3
/* 0045DF58 15C1000F */  bne   $t6, $at, .L0045DF98
/* 0045DF5C 93A80043 */   lbu   $t0, 0x43($sp)
.L0045DF60:
/* 0045DF60 14E00003 */  bnez  $a3, .L0045DF70
/* 0045DF64 28E10009 */   slti  $at, $a3, 9
/* 0045DF68 10000045 */  b     .L0045E080
/* 0045DF6C 00001025 */   move  $v0, $zero
.L0045DF70:
/* 0045DF70 14200002 */  bnez  $at, .L0045DF7C
/* 0045DF74 00E07825 */   move  $t7, $a3
/* 0045DF78 240F0008 */  li    $t7, 8
.L0045DF7C:
/* 0045DF7C 8F9889EC */  lw     $t8, %got(size_to_alignment)($gp)
/* 0045DF80 00003025 */  move  $a2, $zero
/* 0045DF84 01F8C821 */  addu  $t9, $t7, $t8
/* 0045DF88 93230000 */  lbu   $v1, ($t9)
/* 0045DF8C 10000010 */  b     .L0045DFD0
/* 0045DF90 AFA30024 */   sw    $v1, 0x24($sp)
/* 0045DF94 93A80043 */  lbu   $t0, 0x43($sp)
.L0045DF98:
/* 0045DF98 24010002 */  li    $at, 2
/* 0045DF9C 11010004 */  beq   $t0, $at, .L0045DFB0
/* 0045DFA0 24030010 */   li    $v1, 16
/* 0045DFA4 24010001 */  li    $at, 1
/* 0045DFA8 15010004 */  bne   $t0, $at, .L0045DFBC
/* 0045DFAC 8FA90030 */   lw    $t1, 0x30($sp)
.L0045DFB0:
/* 0045DFB0 10000007 */  b     .L0045DFD0
/* 0045DFB4 AFA30024 */   sw    $v1, 0x24($sp)
/* 0045DFB8 8FA90030 */  lw    $t1, 0x30($sp)
.L0045DFBC:
/* 0045DFBC 8FAA0034 */  lw    $t2, 0x34($sp)
/* 0045DFC0 00000000 */  nop   
/* 0045DFC4 012A1026 */  xor   $v0, $t1, $t2
/* 0045DFC8 1000002D */  b     .L0045E080
/* 0045DFCC 2C420001 */   sltiu $v0, $v0, 1
.L0045DFD0:
/* 0045DFD0 8F99802C */  lw    $t9, %got(func_0045DF04)($gp)
/* 0045DFD4 8FA50030 */  lw    $a1, 0x30($sp)
/* 0045DFD8 2739DF04 */  addiu $t9, %lo(func_0045DF04) # addiu $t9, $t9, -0x20fc
/* 0045DFDC 00C02025 */  move  $a0, $a2
/* 0045DFE0 27A20030 */  addiu $v0, $sp, 0x30
/* 0045DFE4 0320F809 */  jalr  $t9
/* 0045DFE8 AFA60038 */   sw    $a2, 0x38($sp)
/* 0045DFEC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0045DFF0 8FA40038 */  lw    $a0, 0x38($sp)
/* 0045DFF4 8F99802C */  lw    $t9, %got(func_0045DF04)($gp)
/* 0045DFF8 AFA20030 */  sw    $v0, 0x30($sp)
/* 0045DFFC 8FA50034 */  lw    $a1, 0x34($sp)
/* 0045E000 2739DF04 */  addiu $t9, %lo(func_0045DF04) # addiu $t9, $t9, -0x20fc
/* 0045E004 0320F809 */  jalr  $t9
/* 0045E008 27A20030 */   addiu $v0, $sp, 0x30
/* 0045E00C 8FA30024 */  lw    $v1, 0x24($sp)
/* 0045E010 8FAC0030 */  lw    $t4, 0x30($sp)
/* 0045E014 0043001A */  div   $zero, $v0, $v1
/* 0045E018 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0045E01C 14600002 */  bnez  $v1, .L0045E028
/* 0045E020 00000000 */   nop   
/* 0045E024 0007000D */  break 7
.L0045E028:
/* 0045E028 2401FFFF */  li    $at, -1
/* 0045E02C 14610004 */  bne   $v1, $at, .L0045E040
/* 0045E030 3C018000 */   lui   $at, 0x8000
/* 0045E034 14410002 */  bne   $v0, $at, .L0045E040
/* 0045E038 00000000 */   nop   
/* 0045E03C 0006000D */  break 6
.L0045E040:
/* 0045E040 00005812 */  mflo  $t3
/* 0045E044 00000000 */  nop   
/* 0045E048 00000000 */  nop   
/* 0045E04C 0183001A */  div   $zero, $t4, $v1
/* 0045E050 14600002 */  bnez  $v1, .L0045E05C
/* 0045E054 00000000 */   nop   
/* 0045E058 0007000D */  break 7
.L0045E05C:
/* 0045E05C 2401FFFF */  li    $at, -1
/* 0045E060 14610004 */  bne   $v1, $at, .L0045E074
/* 0045E064 3C018000 */   lui   $at, 0x8000
/* 0045E068 15810002 */  bne   $t4, $at, .L0045E074
/* 0045E06C 00000000 */   nop   
/* 0045E070 0006000D */  break 6
.L0045E074:
/* 0045E074 00006812 */  mflo  $t5
/* 0045E078 016D1026 */  xor   $v0, $t3, $t5
/* 0045E07C 2C420001 */  sltiu $v0, $v0, 1
.L0045E080:
/* 0045E080 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0045E084 27BD0030 */  addiu $sp, $sp, 0x30
/* 0045E088 03E00008 */  jr    $ra
/* 0045E08C 00000000 */   nop   

    .type func_0045E090, @function
func_0045E090:
    # 0045E218 setup_tempreg
/* 0045E090 3C1C0FBD */  .cpload $t9
/* 0045E094 279CC1D0 */  
/* 0045E098 0399E021 */  
/* 0045E09C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0045E0A0 8F8E8B1C */  lw     $t6, %got(optflag)($gp)
/* 0045E0A4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0045E0A8 8DCE0000 */  lw    $t6, ($t6)
/* 0045E0AC AFBC0020 */  sw    $gp, 0x20($sp)
/* 0045E0B0 AFA40030 */  sw    $a0, 0x30($sp)
/* 0045E0B4 AFA50034 */  sw    $a1, 0x34($sp)
/* 0045E0B8 AFA60038 */  sw    $a2, 0x38($sp)
/* 0045E0BC 19C00030 */  blez  $t6, .L0045E180
/* 0045E0C0 AFA7003C */   sw    $a3, 0x3c($sp)
/* 0045E0C4 8F8F8B94 */  lw     $t7, %got(opts)($gp)
/* 0045E0C8 00000000 */  nop   
/* 0045E0CC 91EF0001 */  lbu   $t7, 1($t7)
/* 0045E0D0 00000000 */  nop   
/* 0045E0D4 11E0002A */  beqz  $t7, .L0045E180
/* 0045E0D8 00000000 */   nop   
/* 0045E0DC 8F838C24 */  lw     $v1, %got(pre_reorder_peepholes)($gp)
/* 0045E0E0 00000000 */  nop   
/* 0045E0E4 8C780000 */  lw    $t8, ($v1)
/* 0045E0E8 00000000 */  nop   
/* 0045E0EC 07000024 */  bltz  $t8, .L0045E180
/* 0045E0F0 00000000 */   nop   
/* 0045E0F4 9079000D */  lbu   $t9, 0xd($v1)
/* 0045E0F8 93A80037 */  lbu   $t0, 0x37($sp)
/* 0045E0FC 14990020 */  bne   $a0, $t9, .L0045E180
/* 0045E100 00000000 */   nop   
/* 0045E104 9069000C */  lbu   $t1, 0xc($v1)
/* 0045E108 00000000 */  nop   
/* 0045E10C 1509001C */  bne   $t0, $t1, .L0045E180
/* 0045E110 00000000 */   nop   
/* 0045E114 8C6B0004 */  lw    $t3, 4($v1)
/* 0045E118 00C05025 */  move  $t2, $a2
/* 0045E11C 14CB0018 */  bne   $a2, $t3, .L0045E180
/* 0045E120 00E02025 */   move  $a0, $a3
/* 0045E124 8D4D0030 */  lw    $t5, 0x30($t2)
/* 0045E128 8F8C8AE0 */  lw     $t4, %got(memory)($gp)
/* 0045E12C 000D7080 */  sll   $t6, $t5, 2
/* 0045E130 01CD7023 */  subu  $t6, $t6, $t5
/* 0045E134 000E7080 */  sll   $t6, $t6, 2
/* 0045E138 8D8C0000 */  lw    $t4, ($t4)
/* 0045E13C 01CD7023 */  subu  $t6, $t6, $t5
/* 0045E140 000E7080 */  sll   $t6, $t6, 2
/* 0045E144 8F99802C */  lw    $t9, %got(func_0045DF28)($gp)
/* 0045E148 018E7821 */  addu  $t7, $t4, $t6
/* 0045E14C 91F80008 */  lbu   $t8, 8($t7)
/* 0045E150 8C650008 */  lw    $a1, 8($v1)
/* 0045E154 8CC60010 */  lw    $a2, 0x10($a2)
/* 0045E158 8D470028 */  lw    $a3, 0x28($t2)
/* 0045E15C 2739DF28 */  addiu $t9, %lo(func_0045DF28) # addiu $t9, $t9, -0x20d8
/* 0045E160 27A20030 */  addiu $v0, $sp, 0x30
/* 0045E164 0320F809 */  jalr  $t9
/* 0045E168 AFB80010 */   sw    $t8, 0x10($sp)
/* 0045E16C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0045E170 00000000 */  nop   
/* 0045E174 8F838C24 */  lw     $v1, %got(pre_reorder_peepholes)($gp)
/* 0045E178 14400003 */  bnez  $v0, .L0045E188
/* 0045E17C 00000000 */   nop   
.L0045E180:
/* 0045E180 10000021 */  b     .L0045E208
/* 0045E184 00001025 */   move  $v0, $zero
.L0045E188:
/* 0045E188 8F858BB0 */  lw     $a1, %got(bbindex)($gp)
/* 0045E18C 8F9982AC */  lw    $t9, %call16(defined_in_between)($gp)
/* 0045E190 8C660000 */  lw    $a2, ($v1)
/* 0045E194 8CA50000 */  lw    $a1, ($a1)
/* 0045E198 0320F809 */  jalr  $t9
/* 0045E19C 24040001 */   li    $a0, 1
/* 0045E1A0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0045E1A4 93A40037 */  lbu   $a0, 0x37($sp)
/* 0045E1A8 8F838C24 */  lw     $v1, %got(pre_reorder_peepholes)($gp)
/* 0045E1AC 10400003 */  beqz  $v0, .L0045E1BC
/* 0045E1B0 24010048 */   li    $at, 72
/* 0045E1B4 10000014 */  b     .L0045E208
/* 0045E1B8 00001025 */   move  $v0, $zero
.L0045E1BC:
/* 0045E1BC 1081000C */  beq   $a0, $at, .L0045E1F0
/* 0045E1C0 00000000 */   nop   
/* 0045E1C4 8F858BB0 */  lw     $a1, %got(bbindex)($gp)
/* 0045E1C8 8F9982AC */  lw    $t9, %call16(defined_in_between)($gp)
/* 0045E1CC 8C660000 */  lw    $a2, ($v1)
/* 0045E1D0 8CA50000 */  lw    $a1, ($a1)
/* 0045E1D4 0320F809 */  jalr  $t9
/* 0045E1D8 00000000 */   nop   
/* 0045E1DC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0045E1E0 10400003 */  beqz  $v0, .L0045E1F0
/* 0045E1E4 00000000 */   nop   
/* 0045E1E8 10000007 */  b     .L0045E208
/* 0045E1EC 00001025 */   move  $v0, $zero
.L0045E1F0:
/* 0045E1F0 8F838B94 */  lw     $v1, %got(opts)($gp)
/* 0045E1F4 24020001 */  li    $v0, 1
/* 0045E1F8 8C79000C */  lw    $t9, 0xc($v1)
/* 0045E1FC 00000000 */  nop   
/* 0045E200 27280001 */  addiu $t0, $t9, 1
/* 0045E204 AC68000C */  sw    $t0, 0xc($v1)
.L0045E208:
/* 0045E208 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0045E20C 27BD0030 */  addiu $sp, $sp, 0x30
/* 0045E210 03E00008 */  jr    $ra
/* 0045E214 00000000 */   nop   

glabel setup_tempreg
    .ent setup_tempreg
    # 0045F110 genfpmultiple
    # 004604C0 do_parseafra
    # 0046159C gendouble
    # 00462320 func_00462320
/* 0045E218 3C1C0FBD */  .cpload $t9
/* 0045E21C 279CC048 */  
/* 0045E220 0399E021 */  
/* 0045E224 27BDFF88 */  addiu $sp, $sp, -0x78
/* 0045E228 8FAF008C */  lw    $t7, 0x8c($sp)
/* 0045E22C AFBF0064 */  sw    $ra, 0x64($sp)
/* 0045E230 AFBC0060 */  sw    $gp, 0x60($sp)
/* 0045E234 AFA40078 */  sw    $a0, 0x78($sp)
/* 0045E238 AFA5007C */  sw    $a1, 0x7c($sp)
/* 0045E23C AFA60080 */  sw    $a2, 0x80($sp)
/* 0045E240 AFA70084 */  sw    $a3, 0x84($sp)
/* 0045E244 240E0003 */  li    $t6, 3
/* 0045E248 A1EE0000 */  sb    $t6, ($t7)
/* 0045E24C 93B8007F */  lbu   $t8, 0x7f($sp)
/* 0045E250 24010001 */  li    $at, 1
/* 0045E254 17010058 */  bne   $t8, $at, .L0045E3B8
/* 0045E258 00000000 */   nop   
/* 0045E25C 8F828AF8 */  lw     $v0, %got(picflag)($gp)
/* 0045E260 24010001 */  li    $at, 1
/* 0045E264 8C420000 */  lw    $v0, ($v0)
/* 0045E268 00000000 */  nop   
/* 0045E26C 10400011 */  beqz  $v0, .L0045E2B4
/* 0045E270 00000000 */   nop   
/* 0045E274 14410050 */  bne   $v0, $at, .L0045E3B8
/* 0045E278 00000000 */   nop   
/* 0045E27C 8FB90084 */  lw    $t9, 0x84($sp)
/* 0045E280 00000000 */  nop   
/* 0045E284 8F220000 */  lw    $v0, ($t9)
/* 0045E288 00000000 */  nop   
/* 0045E28C 1040004A */  beqz  $v0, .L0045E3B8
/* 0045E290 00000000 */   nop   
/* 0045E294 8F998428 */  lw    $t9, %call16(is_dso_static)($gp)
/* 0045E298 8C440018 */  lw    $a0, 0x18($v0)
/* 0045E29C 0320F809 */  jalr  $t9
/* 0045E2A0 00000000 */   nop   
/* 0045E2A4 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E2A8 24010001 */  li    $at, 1
/* 0045E2AC 14410042 */  bne   $v0, $at, .L0045E3B8
/* 0045E2B0 00000000 */   nop   
.L0045E2B4:
/* 0045E2B4 8F898BB4 */  lw     $t1, %got(atflag)($gp)
/* 0045E2B8 00000000 */  nop   
/* 0045E2BC 91290000 */  lbu   $t1, ($t1)
/* 0045E2C0 00000000 */  nop   
/* 0045E2C4 15200008 */  bnez  $t1, .L0045E2E8
/* 0045E2C8 93AA0093 */   lbu   $t2, 0x93($sp)
/* 0045E2CC 8F9984C8 */  lw    $t9, %call16(macro_error)($gp)
/* 0045E2D0 00000000 */  nop   
/* 0045E2D4 0320F809 */  jalr  $t9
/* 0045E2D8 00000000 */   nop   
/* 0045E2DC 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E2E0 00000000 */  nop   
/* 0045E2E4 93AA0093 */  lbu   $t2, 0x93($sp)
.L0045E2E8:
/* 0045E2E8 8FA30078 */  lw    $v1, 0x78($sp)
/* 0045E2EC 15400032 */  bnez  $t2, .L0045E3B8
/* 0045E2F0 286B0002 */   slti  $t3, $v1, 2
/* 0045E2F4 8FAC0084 */  lw    $t4, 0x84($sp)
/* 0045E2F8 8FAD0088 */  lw    $t5, 0x88($sp)
/* 0045E2FC 8F99802C */  lw    $t9, %got(func_0045E090)($gp)
/* 0045E300 39640001 */  xori  $a0, $t3, 1
/* 0045E304 93A50083 */  lbu   $a1, 0x83($sp)
/* 0045E308 8D860000 */  lw    $a2, ($t4)
/* 0045E30C 8DA70000 */  lw    $a3, ($t5)
/* 0045E310 2739E090 */  addiu $t9, %lo(func_0045E090) # addiu $t9, $t9, -0x1f70
/* 0045E314 AFA40070 */  sw    $a0, 0x70($sp)
/* 0045E318 00801825 */  move  $v1, $a0
/* 0045E31C 0320F809 */  jalr  $t9
/* 0045E320 27A20078 */   addiu $v0, $sp, 0x78
/* 0045E324 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E328 8FA30070 */  lw    $v1, 0x70($sp)
/* 0045E32C 10400022 */  beqz  $v0, .L0045E3B8
/* 0045E330 00000000 */   nop   
/* 0045E334 93AE0093 */  lbu   $t6, 0x93($sp)
/* 0045E338 00000000 */  nop   
/* 0045E33C 15C0000C */  bnez  $t6, .L0045E370
/* 0045E340 8FA20088 */   lw    $v0, 0x88($sp)
/* 0045E344 10600014 */  beqz  $v1, .L0045E398
/* 0045E348 8FA20088 */   lw    $v0, 0x88($sp)
/* 0045E34C 8FA20088 */  lw    $v0, 0x88($sp)
/* 0045E350 8FB80078 */  lw    $t8, 0x78($sp)
/* 0045E354 8C4F0000 */  lw    $t7, ($v0)
/* 0045E358 0018C880 */  sll   $t9, $t8, 2
/* 0045E35C 2729FFFF */  addiu $t1, $t9, -1
/* 0045E360 01E95024 */  and   $t2, $t7, $t1
/* 0045E364 1140000C */  beqz  $t2, .L0045E398
/* 0045E368 8FA20088 */   lw    $v0, 0x88($sp)
/* 0045E36C 8FA20088 */  lw    $v0, 0x88($sp)
.L0045E370:
/* 0045E370 8F8C8C24 */  lw     $t4, %got(pre_reorder_peepholes)($gp)
/* 0045E374 8C4B0000 */  lw    $t3, ($v0)
/* 0045E378 8D8C0008 */  lw    $t4, 8($t4)
/* 0045E37C 00000000 */  nop   
/* 0045E380 016C6823 */  subu  $t5, $t3, $t4
/* 0045E384 AC4D0000 */  sw    $t5, ($v0)
/* 0045E388 8FAE0084 */  lw    $t6, 0x84($sp)
/* 0045E38C 100001FA */  b     .L0045EB78
/* 0045E390 ADC00000 */   sw    $zero, ($t6)
/* 0045E394 8FA20088 */  lw    $v0, 0x88($sp)
.L0045E398:
/* 0045E398 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 0045E39C 8C450000 */  lw    $a1, ($v0)
/* 0045E3A0 0320F809 */  jalr  $t9
/* 0045E3A4 00002025 */   move  $a0, $zero
/* 0045E3A8 8FB80088 */  lw    $t8, 0x88($sp)
/* 0045E3AC 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E3B0 100001F1 */  b     .L0045EB78
/* 0045E3B4 AF020000 */   sw    $v0, ($t8)
.L0045E3B8:
/* 0045E3B8 8F828AF8 */  lw     $v0, %got(picflag)($gp)
/* 0045E3BC 24010002 */  li    $at, 2
/* 0045E3C0 8C420000 */  lw    $v0, ($v0)
/* 0045E3C4 00000000 */  nop   
/* 0045E3C8 10410010 */  beq   $v0, $at, .L0045E40C
/* 0045E3CC 24010001 */   li    $at, 1
/* 0045E3D0 144100DE */  bne   $v0, $at, .L0045E74C
/* 0045E3D4 97AD0096 */   lhu   $t5, 0x96($sp)
/* 0045E3D8 8FB90084 */  lw    $t9, 0x84($sp)
/* 0045E3DC 00000000 */  nop   
/* 0045E3E0 8F220000 */  lw    $v0, ($t9)
/* 0045E3E4 00000000 */  nop   
/* 0045E3E8 10400008 */  beqz  $v0, .L0045E40C
/* 0045E3EC 00000000 */   nop   
/* 0045E3F0 8F998428 */  lw    $t9, %call16(is_dso_static)($gp)
/* 0045E3F4 8C440018 */  lw    $a0, 0x18($v0)
/* 0045E3F8 0320F809 */  jalr  $t9
/* 0045E3FC 00000000 */   nop   
/* 0045E400 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E404 144000D1 */  bnez  $v0, .L0045E74C
/* 0045E408 97AD0096 */   lhu   $t5, 0x96($sp)
.L0045E40C:
/* 0045E40C 8F8F8BB4 */  lw     $t7, %got(atflag)($gp)
/* 0045E410 00000000 */  nop   
/* 0045E414 91EF0000 */  lbu   $t7, ($t7)
/* 0045E418 00000000 */  nop   
/* 0045E41C 15E00008 */  bnez  $t7, .L0045E440
/* 0045E420 8FA90088 */   lw    $t1, 0x88($sp)
/* 0045E424 8F9984C8 */  lw    $t9, %call16(macro_error)($gp)
/* 0045E428 00000000 */  nop   
/* 0045E42C 0320F809 */  jalr  $t9
/* 0045E430 00000000 */   nop   
/* 0045E434 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E438 00000000 */  nop   
/* 0045E43C 8FA90088 */  lw    $t1, 0x88($sp)
.L0045E440:
/* 0045E440 34018000 */  li    $at, 32768
/* 0045E444 8D220000 */  lw    $v0, ($t1)
/* 0045E448 00000000 */  nop   
/* 0045E44C 0041082A */  slt   $at, $v0, $at
/* 0045E450 10200003 */  beqz  $at, .L0045E460
/* 0045E454 28418000 */   slti  $at, $v0, -0x8000
/* 0045E458 1020002A */  beqz  $at, .L0045E504
/* 0045E45C 00000000 */   nop   
.L0045E460:
/* 0045E460 8F8A8070 */  lw    $t2, %got(RO_1001C220)($gp)
/* 0045E464 03A06825 */  move  $t5, $sp
/* 0045E468 254AC220 */  addiu $t2, %lo(RO_1001C220) # addiu $t2, $t2, -0x3de0
/* 0045E46C 254C0048 */  addiu $t4, $t2, 0x48
.L0045E470:
/* 0045E470 89410000 */  lwl   $at, ($t2)
/* 0045E474 99410003 */  lwr   $at, 3($t2)
/* 0045E478 254A000C */  addiu $t2, $t2, 0xc
/* 0045E47C A9A10000 */  swl   $at, ($t5)
/* 0045E480 B9A10003 */  swr   $at, 3($t5)
/* 0045E484 8941FFF8 */  lwl   $at, -8($t2)
/* 0045E488 9941FFFB */  lwr   $at, -5($t2)
/* 0045E48C 25AD000C */  addiu $t5, $t5, 0xc
/* 0045E490 A9A1FFF8 */  swl   $at, -8($t5)
/* 0045E494 B9A1FFFB */  swr   $at, -5($t5)
/* 0045E498 8941FFFC */  lwl   $at, -4($t2)
/* 0045E49C 9941FFFF */  lwr   $at, -1($t2)
/* 0045E4A0 00000000 */  nop   
/* 0045E4A4 A9A1FFFC */  swl   $at, -4($t5)
/* 0045E4A8 154CFFF1 */  bne   $t2, $t4, .L0045E470
/* 0045E4AC B9A1FFFF */   swr   $at, -1($t5)
/* 0045E4B0 89410000 */  lwl   $at, ($t2)
/* 0045E4B4 99410003 */  lwr   $at, 3($t2)
/* 0045E4B8 8F8E8C68 */  lw     $t6, %got(emptystring)($gp)
/* 0045E4BC A9A10000 */  swl   $at, ($t5)
/* 0045E4C0 B9A10003 */  swr   $at, 3($t5)
/* 0045E4C4 894C0004 */  lwl   $t4, 4($t2)
/* 0045E4C8 994C0007 */  lwr   $t4, 7($t2)
/* 0045E4CC 24180001 */  li    $t8, 1
/* 0045E4D0 A9AC0004 */  swl   $t4, 4($t5)
/* 0045E4D4 B9AC0007 */  swr   $t4, 7($t5)
/* 0045E4D8 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0045E4DC 8DCE0000 */  lw    $t6, ($t6)
/* 0045E4E0 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045E4E4 8FA60008 */  lw    $a2, 8($sp)
/* 0045E4E8 8FA50004 */  lw    $a1, 4($sp)
/* 0045E4EC 8FA40000 */  lw    $a0, ($sp)
/* 0045E4F0 AFB80054 */  sw    $t8, 0x54($sp)
/* 0045E4F4 0320F809 */  jalr  $t9
/* 0045E4F8 AFAE0050 */   sw    $t6, 0x50($sp)
/* 0045E4FC 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E500 00000000 */  nop   
.L0045E504:
/* 0045E504 8F9984D0 */  lw    $t9, %call16(restore_gp)($gp)
/* 0045E508 00000000 */  nop   
/* 0045E50C 0320F809 */  jalr  $t9
/* 0045E510 00000000 */   nop   
/* 0045E514 8FB90084 */  lw    $t9, 0x84($sp)
/* 0045E518 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E51C 8F240000 */  lw    $a0, ($t9)
/* 0045E520 8F9985F4 */  lw    $t9, %call16(islocalsym)($gp)
/* 0045E524 00000000 */  nop   
/* 0045E528 0320F809 */  jalr  $t9
/* 0045E52C 00000000 */   nop   
/* 0045E530 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E534 1040001D */  beqz  $v0, .L0045E5AC
/* 0045E538 00000000 */   nop   
/* 0045E53C 8FAF0088 */  lw    $t7, 0x88($sp)
/* 0045E540 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 0045E544 8DE50000 */  lw    $a1, ($t7)
/* 0045E548 0320F809 */  jalr  $t9
/* 0045E54C 24040001 */   li    $a0, 1
/* 0045E550 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E554 93A5007F */  lbu   $a1, 0x7f($sp)
/* 0045E558 8F848D1C */  lw     $a0, %got(asm2op)($gp)
/* 0045E55C 8F878BF8 */  lw     $a3, %got(gpreg)($gp)
/* 0045E560 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045E564 94840054 */  lhu   $a0, 0x54($a0)
/* 0045E568 90E70000 */  lbu   $a3, ($a3)
/* 0045E56C 0320F809 */  jalr  $t9
/* 0045E570 00403025 */   move  $a2, $v0
/* 0045E574 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E578 8FA90084 */  lw    $t1, 0x84($sp)
/* 0045E57C 8F8B8BB0 */  lw     $t3, %got(bbindex)($gp)
/* 0045E580 8F8C8B88 */  lw     $t4, %got(proc_instr_base)($gp)
/* 0045E584 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045E588 8D6B0000 */  lw    $t3, ($t3)
/* 0045E58C 8D8C0000 */  lw    $t4, ($t4)
/* 0045E590 8D240000 */  lw    $a0, ($t1)
/* 0045E594 2405000F */  li    $a1, 15
/* 0045E598 0320F809 */  jalr  $t9
/* 0045E59C 016C3021 */   addu  $a2, $t3, $t4
/* 0045E5A0 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E5A4 1000004B */  b     .L0045E6D4
/* 0045E5A8 00000000 */   nop   
.L0045E5AC:
/* 0045E5AC 8F8A8C94 */  lw     $t2, %got(big_got)($gp)
/* 0045E5B0 93A5007F */  lbu   $a1, 0x7f($sp)
/* 0045E5B4 914A0000 */  lbu   $t2, ($t2)
/* 0045E5B8 2404005A */  li    $a0, 90
/* 0045E5BC 1140002E */  beqz  $t2, .L0045E678
/* 0045E5C0 00003025 */   move  $a2, $zero
/* 0045E5C4 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 0045E5C8 93A5007F */  lbu   $a1, 0x7f($sp)
/* 0045E5CC 0320F809 */  jalr  $t9
/* 0045E5D0 00003825 */   move  $a3, $zero
/* 0045E5D4 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E5D8 8FAD0084 */  lw    $t5, 0x84($sp)
/* 0045E5DC 8F8E8BB0 */  lw     $t6, %got(bbindex)($gp)
/* 0045E5E0 8F988B88 */  lw     $t8, %got(proc_instr_base)($gp)
/* 0045E5E4 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045E5E8 8DCE0000 */  lw    $t6, ($t6)
/* 0045E5EC 8F180000 */  lw    $t8, ($t8)
/* 0045E5F0 8DA40000 */  lw    $a0, ($t5)
/* 0045E5F4 24050016 */  li    $a1, 22
/* 0045E5F8 0320F809 */  jalr  $t9
/* 0045E5FC 01D83021 */   addu  $a2, $t6, $t8
/* 0045E600 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E604 93A6007F */  lbu   $a2, 0x7f($sp)
/* 0045E608 8F878BF8 */  lw     $a3, %got(gpreg)($gp)
/* 0045E60C 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 0045E610 90E70000 */  lbu   $a3, ($a3)
/* 0045E614 24040015 */  li    $a0, 21
/* 0045E618 0320F809 */  jalr  $t9
/* 0045E61C 00C02825 */   move  $a1, $a2
/* 0045E620 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E624 93A7007F */  lbu   $a3, 0x7f($sp)
/* 0045E628 8F848D1C */  lw     $a0, %got(asm2op)($gp)
/* 0045E62C 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045E630 94840054 */  lhu   $a0, 0x54($a0)
/* 0045E634 00003025 */  move  $a2, $zero
/* 0045E638 0320F809 */  jalr  $t9
/* 0045E63C 00E02825 */   move  $a1, $a3
/* 0045E640 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E644 8FA90084 */  lw    $t1, 0x84($sp)
/* 0045E648 8F8B8BB0 */  lw     $t3, %got(bbindex)($gp)
/* 0045E64C 8F8C8B88 */  lw     $t4, %got(proc_instr_base)($gp)
/* 0045E650 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045E654 8D6B0000 */  lw    $t3, ($t3)
/* 0045E658 8D8C0000 */  lw    $t4, ($t4)
/* 0045E65C 8D240000 */  lw    $a0, ($t1)
/* 0045E660 24050017 */  li    $a1, 23
/* 0045E664 0320F809 */  jalr  $t9
/* 0045E668 016C3021 */   addu  $a2, $t3, $t4
/* 0045E66C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E670 10000016 */  b     .L0045E6CC
/* 0045E674 8FB8008C */   lw    $t8, 0x8c($sp)
.L0045E678:
/* 0045E678 8F848D1C */  lw     $a0, %got(asm2op)($gp)
/* 0045E67C 8F878BF8 */  lw     $a3, %got(gpreg)($gp)
/* 0045E680 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045E684 94840054 */  lhu   $a0, 0x54($a0)
/* 0045E688 90E70000 */  lbu   $a3, ($a3)
/* 0045E68C 0320F809 */  jalr  $t9
/* 0045E690 00003025 */   move  $a2, $zero
/* 0045E694 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E698 8FAA0084 */  lw    $t2, 0x84($sp)
/* 0045E69C 8F8D8BB0 */  lw     $t5, %got(bbindex)($gp)
/* 0045E6A0 8F8E8B88 */  lw     $t6, %got(proc_instr_base)($gp)
/* 0045E6A4 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045E6A8 8DAD0000 */  lw    $t5, ($t5)
/* 0045E6AC 8DCE0000 */  lw    $t6, ($t6)
/* 0045E6B0 8D440000 */  lw    $a0, ($t2)
/* 0045E6B4 2405000F */  li    $a1, 15
/* 0045E6B8 0320F809 */  jalr  $t9
/* 0045E6BC 01AE3021 */   addu  $a2, $t5, $t6
/* 0045E6C0 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E6C4 00000000 */  nop   
/* 0045E6C8 8FB8008C */  lw    $t8, 0x8c($sp)
.L0045E6CC:
/* 0045E6CC 00000000 */  nop   
/* 0045E6D0 A3000000 */  sb    $zero, ($t8)
.L0045E6D4:
/* 0045E6D4 8F998B8C */  lw     $t9, %got(reorderflag)($gp)
/* 0045E6D8 00000000 */  nop   
/* 0045E6DC 93390000 */  lbu   $t9, ($t9)
/* 0045E6E0 00000000 */  nop   
/* 0045E6E4 172000C8 */  bnez  $t9, .L0045EA08
/* 0045E6E8 93AC0083 */   lbu   $t4, 0x83($sp)
/* 0045E6EC 8F8F8B04 */  lw     $t7, %got(isa)($gp)
/* 0045E6F0 00000000 */  nop   
/* 0045E6F4 91EF0000 */  lbu   $t7, ($t7)
/* 0045E6F8 00000000 */  nop   
/* 0045E6FC 2DE10002 */  sltiu $at, $t7, 2
/* 0045E700 102000C1 */  beqz  $at, .L0045EA08
/* 0045E704 93AC0083 */   lbu   $t4, 0x83($sp)
/* 0045E708 8F998448 */  lw    $t9, %call16(emitnop)($gp)
/* 0045E70C 24040001 */  li    $a0, 1
/* 0045E710 0320F809 */  jalr  $t9
/* 0045E714 00000000 */   nop   
/* 0045E718 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E71C 00000000 */  nop   
/* 0045E720 8F8B8BB0 */  lw     $t3, %got(bbindex)($gp)
/* 0045E724 8F898B40 */  lw     $t1, %got(pinstruction)($gp)
/* 0045E728 8D6B0000 */  lw    $t3, ($t3)
/* 0045E72C 8D290000 */  lw    $t1, ($t1)
/* 0045E730 000B6080 */  sll   $t4, $t3, 2
/* 0045E734 018B6021 */  addu  $t4, $t4, $t3
/* 0045E738 000C60C0 */  sll   $t4, $t4, 3
/* 0045E73C 012C5021 */  addu  $t2, $t1, $t4
/* 0045E740 100000B0 */  b     .L0045EA04
/* 0045E744 A1400022 */   sb    $zero, 0x22($t2)
/* 0045E748 97AD0096 */  lhu   $t5, 0x96($sp)
.L0045E74C:
/* 0045E74C 2401014D */  li    $at, 333
/* 0045E750 15A1004D */  bne   $t5, $at, .L0045E888
/* 0045E754 8FA90088 */   lw    $t1, 0x88($sp)
/* 0045E758 8FAE0088 */  lw    $t6, 0x88($sp)
/* 0045E75C 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 0045E760 8DC50000 */  lw    $a1, ($t6)
/* 0045E764 0320F809 */  jalr  $t9
/* 0045E768 24040001 */   li    $a0, 1
/* 0045E76C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E770 93A5007F */  lbu   $a1, 0x7f($sp)
/* 0045E774 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 0045E778 2404005A */  li    $a0, 90
/* 0045E77C 00003025 */  move  $a2, $zero
/* 0045E780 0320F809 */  jalr  $t9
/* 0045E784 00403825 */   move  $a3, $v0
/* 0045E788 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E78C 8FB80084 */  lw    $t8, 0x84($sp)
/* 0045E790 8F998BB0 */  lw     $t9, %got(bbindex)($gp)
/* 0045E794 8F8F8B88 */  lw     $t7, %got(proc_instr_base)($gp)
/* 0045E798 8F390000 */  lw    $t9, ($t9)
/* 0045E79C 8DEF0000 */  lw    $t7, ($t7)
/* 0045E7A0 8F040000 */  lw    $a0, ($t8)
/* 0045E7A4 032F3021 */  addu  $a2, $t9, $t7
/* 0045E7A8 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045E7AC 24050004 */  li    $a1, 4
/* 0045E7B0 0320F809 */  jalr  $t9
/* 0045E7B4 00000000 */   nop   
/* 0045E7B8 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E7BC 8FAB0088 */  lw    $t3, 0x88($sp)
/* 0045E7C0 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 0045E7C4 8D650000 */  lw    $a1, ($t3)
/* 0045E7C8 0320F809 */  jalr  $t9
/* 0045E7CC 24040001 */   li    $a0, 1
/* 0045E7D0 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E7D4 93A6007F */  lbu   $a2, 0x7f($sp)
/* 0045E7D8 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 0045E7DC 2404005A */  li    $a0, 90
/* 0045E7E0 00403825 */  move  $a3, $v0
/* 0045E7E4 0320F809 */  jalr  $t9
/* 0045E7E8 00C02825 */   move  $a1, $a2
/* 0045E7EC 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E7F0 8FAC0084 */  lw    $t4, 0x84($sp)
/* 0045E7F4 8F8A8BB0 */  lw     $t2, %got(bbindex)($gp)
/* 0045E7F8 8F8D8B88 */  lw     $t5, %got(proc_instr_base)($gp)
/* 0045E7FC 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045E800 8D4A0000 */  lw    $t2, ($t2)
/* 0045E804 8DAD0000 */  lw    $t5, ($t5)
/* 0045E808 8D840000 */  lw    $a0, ($t4)
/* 0045E80C 24050005 */  li    $a1, 5
/* 0045E810 0320F809 */  jalr  $t9
/* 0045E814 014D3021 */   addu  $a2, $t2, $t5
/* 0045E818 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E81C 8FAE0088 */  lw    $t6, 0x88($sp)
/* 0045E820 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 0045E824 8DC50000 */  lw    $a1, ($t6)
/* 0045E828 0320F809 */  jalr  $t9
/* 0045E82C 24040001 */   li    $a0, 1
/* 0045E830 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E834 93A6007F */  lbu   $a2, 0x7f($sp)
/* 0045E838 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 0045E83C 2404005A */  li    $a0, 90
/* 0045E840 00403825 */  move  $a3, $v0
/* 0045E844 0320F809 */  jalr  $t9
/* 0045E848 00C02825 */   move  $a1, $a2
/* 0045E84C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E850 8FB90084 */  lw    $t9, 0x84($sp)
/* 0045E854 8F8F8BB0 */  lw     $t7, %got(bbindex)($gp)
/* 0045E858 8F8B8B88 */  lw     $t3, %got(proc_instr_base)($gp)
/* 0045E85C 8F240000 */  lw    $a0, ($t9)
/* 0045E860 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045E864 8DEF0000 */  lw    $t7, ($t7)
/* 0045E868 8D6B0000 */  lw    $t3, ($t3)
/* 0045E86C 24050002 */  li    $a1, 2
/* 0045E870 0320F809 */  jalr  $t9
/* 0045E874 01EB3021 */   addu  $a2, $t7, $t3
/* 0045E878 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E87C 10000062 */  b     .L0045EA08
/* 0045E880 93AC0083 */   lbu   $t4, 0x83($sp)
/* 0045E884 8FA90088 */  lw    $t1, 0x88($sp)
.L0045E888:
/* 0045E888 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 0045E88C 8D250000 */  lw    $a1, ($t1)
/* 0045E890 0320F809 */  jalr  $t9
/* 0045E894 24040001 */   li    $a0, 1
/* 0045E898 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E89C 93A5007F */  lbu   $a1, 0x7f($sp)
/* 0045E8A0 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 0045E8A4 2404005A */  li    $a0, 90
/* 0045E8A8 00003025 */  move  $a2, $zero
/* 0045E8AC 0320F809 */  jalr  $t9
/* 0045E8B0 00403825 */   move  $a3, $v0
/* 0045E8B4 93AC0083 */  lbu   $t4, 0x83($sp)
/* 0045E8B8 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E8BC 2401001D */  li    $at, 29
/* 0045E8C0 15810044 */  bne   $t4, $at, .L0045E9D4
/* 0045E8C4 00000000 */   nop   
/* 0045E8C8 8F8A8DA8 */  lw     $t2, %got(adjust_frame_by_ld)($gp)
/* 0045E8CC 8FAD0088 */  lw    $t5, 0x88($sp)
/* 0045E8D0 914A0000 */  lbu   $t2, ($t2)
/* 0045E8D4 00000000 */  nop   
/* 0045E8D8 1140003E */  beqz  $t2, .L0045E9D4
/* 0045E8DC 00000000 */   nop   
/* 0045E8E0 8F838D7C */  lw     $v1, %got(known_framesize)($gp)
/* 0045E8E4 8DA20000 */  lw    $v0, ($t5)
/* 0045E8E8 8C630000 */  lw    $v1, ($v1)
/* 0045E8EC 00000000 */  nop   
/* 0045E8F0 0043082A */  slt   $at, $v0, $v1
/* 0045E8F4 10200004 */  beqz  $at, .L0045E908
/* 0045E8F8 00037023 */   negu  $t6, $v1
/* 0045E8FC 01C2082A */  slt   $at, $t6, $v0
/* 0045E900 14200034 */  bnez  $at, .L0045E9D4
/* 0045E904 00000000 */   nop   
.L0045E908:
/* 0045E908 8F988BB0 */  lw     $t8, %got(bbindex)($gp)
/* 0045E90C 8F998B88 */  lw     $t9, %got(proc_instr_base)($gp)
/* 0045E910 8F180000 */  lw    $t8, ($t8)
/* 0045E914 8F390000 */  lw    $t9, ($t9)
/* 0045E918 00000000 */  nop   
/* 0045E91C 03192021 */  addu  $a0, $t8, $t9
/* 0045E920 8F9985FC */  lw    $t9, %call16(request_multi_relocinst)($gp)
/* 0045E924 00000000 */  nop   
/* 0045E928 0320F809 */  jalr  $t9
/* 0045E92C 00000000 */   nop   
/* 0045E930 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E934 24060010 */  li    $a2, 16
/* 0045E938 8F888D78 */  lw     $t0, %got(multirelocinstr_list)($gp)
/* 0045E93C 8F838D74 */  lw     $v1, %got(nextmultirelocinstr)($gp)
/* 0045E940 8D0F0004 */  lw    $t7, 4($t0)
/* 0045E944 8C630000 */  lw    $v1, ($v1)
/* 0045E948 00000000 */  nop   
/* 0045E94C 006F082A */  slt   $at, $v1, $t7
/* 0045E950 1420000E */  bnez  $at, .L0045E98C
/* 0045E954 00602825 */   move  $a1, $v1
/* 0045E958 8F848D78 */  lw     $a0, %got(multirelocinstr_list)($gp)
/* 0045E95C 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 0045E960 8D070000 */  lw    $a3, ($t0)
/* 0045E964 AFA00010 */  sw    $zero, 0x10($sp)
/* 0045E968 0320F809 */  jalr  $t9
/* 0045E96C 24840004 */   addiu $a0, $a0, 4
/* 0045E970 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045E974 00000000 */  nop   
/* 0045E978 8F888D78 */  lw     $t0, %got(multirelocinstr_list)($gp)
/* 0045E97C 8F838D74 */  lw     $v1, %got(nextmultirelocinstr)($gp)
/* 0045E980 AD020000 */  sw    $v0, ($t0)
/* 0045E984 8C630000 */  lw    $v1, ($v1)
/* 0045E988 00000000 */  nop   
.L0045E98C:
/* 0045E98C 8F8C8BB0 */  lw     $t4, %got(bbindex)($gp)
/* 0045E990 8F8A8B88 */  lw     $t2, %got(proc_instr_base)($gp)
/* 0045E994 8D0B0000 */  lw    $t3, ($t0)
/* 0045E998 8D8C0000 */  lw    $t4, ($t4)
/* 0045E99C 8D4A0000 */  lw    $t2, ($t2)
/* 0045E9A0 00034900 */  sll   $t1, $v1, 4
/* 0045E9A4 8F8E8DAC */  lw     $t6, %got(sp_addu_index)($gp)
/* 0045E9A8 01691021 */  addu  $v0, $t3, $t1
/* 0045E9AC 018A6821 */  addu  $t5, $t4, $t2
/* 0045E9B0 AC4D0008 */  sw    $t5, 8($v0)
/* 0045E9B4 8DCE0000 */  lw    $t6, ($t6)
/* 0045E9B8 8F818D74 */  lw     $at, %got(nextmultirelocinstr)($gp)
/* 0045E9BC 8FB9008C */  lw    $t9, 0x8c($sp)
/* 0045E9C0 24780001 */  addiu $t8, $v1, 1
/* 0045E9C4 AC4E0000 */  sw    $t6, ($v0)
/* 0045E9C8 AC380000 */  sw    $t8, ($at)
/* 0045E9CC 1000000D */  b     .L0045EA04
/* 0045E9D0 A3200000 */   sb    $zero, ($t9)
.L0045E9D4:
/* 0045E9D4 8F8B8BB0 */  lw     $t3, %got(bbindex)($gp)
/* 0045E9D8 8F898B88 */  lw     $t1, %got(proc_instr_base)($gp)
/* 0045E9DC 8FAF0084 */  lw    $t7, 0x84($sp)
/* 0045E9E0 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045E9E4 8D6B0000 */  lw    $t3, ($t3)
/* 0045E9E8 8D290000 */  lw    $t1, ($t1)
/* 0045E9EC 8DE40000 */  lw    $a0, ($t7)
/* 0045E9F0 24050002 */  li    $a1, 2
/* 0045E9F4 0320F809 */  jalr  $t9
/* 0045E9F8 01693021 */   addu  $a2, $t3, $t1
/* 0045E9FC 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045EA00 00000000 */  nop   
.L0045EA04:
/* 0045EA04 93AC0083 */  lbu   $t4, 0x83($sp)
.L0045EA08:
/* 0045EA08 24010048 */  li    $at, 72
/* 0045EA0C 1181000B */  beq   $t4, $at, .L0045EA3C
/* 0045EA10 93AA007F */   lbu   $t2, 0x7f($sp)
/* 0045EA14 11800008 */  beqz  $t4, .L0045EA38
/* 0045EA18 24040015 */   li    $a0, 21
/* 0045EA1C 93A5007F */  lbu   $a1, 0x7f($sp)
/* 0045EA20 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 0045EA24 01803825 */  move  $a3, $t4
/* 0045EA28 0320F809 */  jalr  $t9
/* 0045EA2C 00A03025 */   move  $a2, $a1
/* 0045EA30 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045EA34 00000000 */  nop   
.L0045EA38:
/* 0045EA38 93AA007F */  lbu   $t2, 0x7f($sp)
.L0045EA3C:
/* 0045EA3C 24010001 */  li    $at, 1
/* 0045EA40 1541000F */  bne   $t2, $at, .L0045EA80
/* 0045EA44 93A90093 */   lbu   $t1, 0x93($sp)
/* 0045EA48 8FAD0084 */  lw    $t5, 0x84($sp)
/* 0045EA4C 8F828C24 */  lw     $v0, %got(pre_reorder_peepholes)($gp)
/* 0045EA50 8DAE0000 */  lw    $t6, ($t5)
/* 0045EA54 8FA30088 */  lw    $v1, 0x88($sp)
/* 0045EA58 8FAF0078 */  lw    $t7, 0x78($sp)
/* 0045EA5C AC4E0004 */  sw    $t6, 4($v0)
/* 0045EA60 8C780000 */  lw    $t8, ($v1)
/* 0045EA64 93B90083 */  lbu   $t9, 0x83($sp)
/* 0045EA68 29EB0002 */  slti  $t3, $t7, 2
/* 0045EA6C 396B0001 */  xori  $t3, $t3, 1
/* 0045EA70 A04B000D */  sb    $t3, 0xd($v0)
/* 0045EA74 AC580008 */  sw    $t8, 8($v0)
/* 0045EA78 A059000C */  sb    $t9, 0xc($v0)
/* 0045EA7C 93A90093 */  lbu   $t1, 0x93($sp)
.L0045EA80:
/* 0045EA80 8FA30088 */  lw    $v1, 0x88($sp)
/* 0045EA84 1520000B */  bnez  $t1, .L0045EAB4
/* 0045EA88 00000000 */   nop   
/* 0045EA8C 8FAC0078 */  lw    $t4, 0x78($sp)
/* 0045EA90 00000000 */  nop   
/* 0045EA94 29810002 */  slti  $at, $t4, 2
/* 0045EA98 14200027 */  bnez  $at, .L0045EB38
/* 0045EA9C 000C6880 */   sll   $t5, $t4, 2
/* 0045EAA0 8C6A0000 */  lw    $t2, ($v1)
/* 0045EAA4 25AEFFFF */  addiu $t6, $t5, -1
/* 0045EAA8 014EC024 */  and   $t8, $t2, $t6
/* 0045EAAC 13000022 */  beqz  $t8, .L0045EB38
/* 0045EAB0 00000000 */   nop   
.L0045EAB4:
/* 0045EAB4 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 0045EAB8 8C650000 */  lw    $a1, ($v1)
/* 0045EABC 0320F809 */  jalr  $t9
/* 0045EAC0 00002025 */   move  $a0, $zero
/* 0045EAC4 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045EAC8 93A5007F */  lbu   $a1, 0x7f($sp)
/* 0045EACC 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 0045EAD0 24040054 */  li    $a0, 84
/* 0045EAD4 00403825 */  move  $a3, $v0
/* 0045EAD8 0320F809 */  jalr  $t9
/* 0045EADC 00A03025 */   move  $a2, $a1
/* 0045EAE0 8FB9008C */  lw    $t9, 0x8c($sp)
/* 0045EAE4 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045EAE8 932F0000 */  lbu   $t7, ($t9)
/* 0045EAEC 8FAB0084 */  lw    $t3, 0x84($sp)
/* 0045EAF0 11E0000B */  beqz  $t7, .L0045EB20
/* 0045EAF4 24050003 */   li    $a1, 3
/* 0045EAF8 8F898BB0 */  lw     $t1, %got(bbindex)($gp)
/* 0045EAFC 8F8C8B88 */  lw     $t4, %got(proc_instr_base)($gp)
/* 0045EB00 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045EB04 8D290000 */  lw    $t1, ($t1)
/* 0045EB08 8D8C0000 */  lw    $t4, ($t4)
/* 0045EB0C 8D640000 */  lw    $a0, ($t3)
/* 0045EB10 0320F809 */  jalr  $t9
/* 0045EB14 012C3021 */   addu  $a2, $t1, $t4
/* 0045EB18 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045EB1C 00000000 */  nop   
.L0045EB20:
/* 0045EB20 8FAD0088 */  lw    $t5, 0x88($sp)
/* 0045EB24 00000000 */  nop   
/* 0045EB28 ADA00000 */  sw    $zero, ($t5)
/* 0045EB2C 8FAA0084 */  lw    $t2, 0x84($sp)
/* 0045EB30 10000008 */  b     .L0045EB54
/* 0045EB34 AD400000 */   sw    $zero, ($t2)
.L0045EB38:
/* 0045EB38 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 0045EB3C 8C650000 */  lw    $a1, ($v1)
/* 0045EB40 0320F809 */  jalr  $t9
/* 0045EB44 00002025 */   move  $a0, $zero
/* 0045EB48 8FAE0088 */  lw    $t6, 0x88($sp)
/* 0045EB4C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045EB50 ADC20000 */  sw    $v0, ($t6)
.L0045EB54:
/* 0045EB54 93B8007F */  lbu   $t8, 0x7f($sp)
/* 0045EB58 24010001 */  li    $at, 1
/* 0045EB5C 17010007 */  bne   $t8, $at, .L0045EB7C
/* 0045EB60 8FBF0064 */   lw    $ra, 0x64($sp)
/* 0045EB64 8F998BB0 */  lw     $t9, %got(bbindex)($gp)
/* 0045EB68 8F818C24 */  lw     $at, %got(pre_reorder_peepholes)($gp)
/* 0045EB6C 8F390000 */  lw    $t9, ($t9)
/* 0045EB70 00000000 */  nop   
/* 0045EB74 AC390000 */  sw    $t9, ($at)
.L0045EB78:
/* 0045EB78 8FBF0064 */  lw    $ra, 0x64($sp)
.L0045EB7C:
/* 0045EB7C 27BD0078 */  addiu $sp, $sp, 0x78
/* 0045EB80 03E00008 */  jr    $ra
/* 0045EB84 00000000 */   nop   

    .type setup_tempreg, @function
    .size setup_tempreg, .-setup_tempreg
    .end setup_tempreg

    .type func_0045EB88, @function
func_0045EB88:
    # 0045EC18 check_if_gp_relative
/* 0045EB88 3C1C0FBD */  .cpload $t9
/* 0045EB8C 279CB6D8 */  
/* 0045EB90 0399E021 */  
/* 0045EB94 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0045EB98 AFB00014 */  sw    $s0, 0x14($sp)
/* 0045EB9C 8F9089F4 */  lw     $s0, %got(emagic_names)($gp)
/* 0045EBA0 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0045EBA4 AFB10018 */  sw    $s1, 0x18($sp)
/* 0045EBA8 00808825 */  move  $s1, $a0
/* 0045EBAC AFBF0024 */  sw    $ra, 0x24($sp)
/* 0045EBB0 AFBC0020 */  sw    $gp, 0x20($sp)
/* 0045EBB4 26120180 */  addiu $s2, $s0, 0x180
.L0045EBB8:
/* 0045EBB8 8F998344 */  lw    $t9, %call16(l_addr)($gp)
/* 0045EBBC 02002025 */  move  $a0, $s0
/* 0045EBC0 0320F809 */  jalr  $t9
/* 0045EBC4 00000000 */   nop   
/* 0045EBC8 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0045EBCC 8E24000C */  lw    $a0, 0xc($s1)
/* 0045EBD0 8F998118 */  lw    $t9, %call16(strcmp)($gp)
/* 0045EBD4 00402825 */  move  $a1, $v0
/* 0045EBD8 0320F809 */  jalr  $t9
/* 0045EBDC 00000000 */   nop   
/* 0045EBE0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0045EBE4 14400003 */  bnez  $v0, .L0045EBF4
/* 0045EBE8 26100020 */   addiu $s0, $s0, 0x20
/* 0045EBEC 10000004 */  b     .L0045EC00
/* 0045EBF0 24020001 */   li    $v0, 1
.L0045EBF4:
/* 0045EBF4 1612FFF0 */  bne   $s0, $s2, .L0045EBB8
/* 0045EBF8 00000000 */   nop   
/* 0045EBFC 00001025 */  move  $v0, $zero
.L0045EC00:
/* 0045EC00 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0045EC04 8FB00014 */  lw    $s0, 0x14($sp)
/* 0045EC08 8FB10018 */  lw    $s1, 0x18($sp)
/* 0045EC0C 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0045EC10 03E00008 */  jr    $ra
/* 0045EC14 27BD0028 */   addiu $sp, $sp, 0x28

glabel check_if_gp_relative
    .ent check_if_gp_relative
    # 0045F020 is_gp_relative
    # 00464528 parseafra
/* 0045EC18 3C1C0FBD */  .cpload $t9
/* 0045EC1C 279CB648 */  
/* 0045EC20 0399E021 */  
/* 0045EC24 8F8E8D10 */  lw     $t6, %got(s_pool_symbol)($gp)
/* 0045EC28 27BDFF88 */  addiu $sp, $sp, -0x78
/* 0045EC2C 8DCE0000 */  lw    $t6, ($t6)
/* 0045EC30 AFBF0064 */  sw    $ra, 0x64($sp)
/* 0045EC34 AFBC0060 */  sw    $gp, 0x60($sp)
/* 0045EC38 108E0007 */  beq   $a0, $t6, .L0045EC58
/* 0045EC3C 00A03025 */   move  $a2, $a1
/* 0045EC40 8F8F8D14 */  lw     $t7, %got(d_pool_symbol)($gp)
/* 0045EC44 00000000 */  nop   
/* 0045EC48 8DEF0000 */  lw    $t7, ($t7)
/* 0045EC4C 00000000 */  nop   
/* 0045EC50 148F0003 */  bne   $a0, $t7, .L0045EC60
/* 0045EC54 00000000 */   nop   
.L0045EC58:
/* 0045EC58 100000ED */  b     .L0045F010
/* 0045EC5C 24020001 */   li    $v0, 1
.L0045EC60:
/* 0045EC60 8F828AF8 */  lw     $v0, %got(picflag)($gp)
/* 0045EC64 00000000 */  nop   
/* 0045EC68 8C420000 */  lw    $v0, ($v0)
/* 0045EC6C 00000000 */  nop   
/* 0045EC70 28410002 */  slti  $at, $v0, 2
/* 0045EC74 14200004 */  bnez  $at, .L0045EC88
/* 0045EC78 24010001 */   li    $at, 1
/* 0045EC7C 100000E4 */  b     .L0045F010
/* 0045EC80 00001025 */   move  $v0, $zero
/* 0045EC84 24010001 */  li    $at, 1
.L0045EC88:
/* 0045EC88 14410016 */  bne   $v0, $at, .L0045ECE4
/* 0045EC8C 00000000 */   nop   
/* 0045EC90 9098003C */  lbu   $t8, 0x3c($a0)
/* 0045EC94 00000000 */  nop   
/* 0045EC98 13000003 */  beqz  $t8, .L0045ECA8
/* 0045EC9C 00000000 */   nop   
/* 0045ECA0 100000DB */  b     .L0045F010
/* 0045ECA4 00001025 */   move  $v0, $zero
.L0045ECA8:
/* 0045ECA8 90820034 */  lbu   $v0, 0x34($a0)
/* 0045ECAC 24010043 */  li    $at, 67
/* 0045ECB0 14410004 */  bne   $v0, $at, .L0045ECC4
/* 0045ECB4 24010056 */   li    $at, 86
/* 0045ECB8 100000D5 */  b     .L0045F010
/* 0045ECBC 00001025 */   move  $v0, $zero
/* 0045ECC0 24010056 */  li    $at, 86
.L0045ECC4:
/* 0045ECC4 14410007 */  bne   $v0, $at, .L0045ECE4
/* 0045ECC8 00000000 */   nop   
/* 0045ECCC 90990037 */  lbu   $t9, 0x37($a0)
/* 0045ECD0 24090055 */  li    $t1, 85
/* 0045ECD4 17200003 */  bnez  $t9, .L0045ECE4
/* 0045ECD8 00001025 */   move  $v0, $zero
/* 0045ECDC 100000CC */  b     .L0045F010
/* 0045ECE0 A0890034 */   sb    $t1, 0x34($a0)
.L0045ECE4:
/* 0045ECE4 8F99802C */  lw    $t9, %got(func_0045EB88)($gp)
/* 0045ECE8 27A20078 */  addiu $v0, $sp, 0x78
/* 0045ECEC 2739EB88 */  addiu $t9, %lo(func_0045EB88) # addiu $t9, $t9, -0x1478
/* 0045ECF0 AFA40078 */  sw    $a0, 0x78($sp)
/* 0045ECF4 0320F809 */  jalr  $t9
/* 0045ECF8 AFA6007C */   sw    $a2, 0x7c($sp)
/* 0045ECFC 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045ED00 8FA40078 */  lw    $a0, 0x78($sp)
/* 0045ED04 8FA6007C */  lw    $a2, 0x7c($sp)
/* 0045ED08 10400003 */  beqz  $v0, .L0045ED18
/* 0045ED0C 24080056 */   li    $t0, 86
/* 0045ED10 100000BF */  b     .L0045F010
/* 0045ED14 00001025 */   move  $v0, $zero
.L0045ED18:
/* 0045ED18 28C18000 */  slti  $at, $a2, -0x8000
/* 0045ED1C 14200004 */  bnez  $at, .L0045ED30
/* 0045ED20 34018000 */   li    $at, 32768
/* 0045ED24 00C1082A */  slt   $at, $a2, $at
/* 0045ED28 14200003 */  bnez  $at, .L0045ED38
/* 0045ED2C 00000000 */   nop   
.L0045ED30:
/* 0045ED30 100000B7 */  b     .L0045F010
/* 0045ED34 00001025 */   move  $v0, $zero
.L0045ED38:
/* 0045ED38 8C8B0030 */  lw    $t3, 0x30($a0)
/* 0045ED3C 8F8A8AE0 */  lw     $t2, %got(memory)($gp)
/* 0045ED40 000B6080 */  sll   $t4, $t3, 2
/* 0045ED44 018B6023 */  subu  $t4, $t4, $t3
/* 0045ED48 000C6080 */  sll   $t4, $t4, 2
/* 0045ED4C 8D4A0000 */  lw    $t2, ($t2)
/* 0045ED50 018B6023 */  subu  $t4, $t4, $t3
/* 0045ED54 000C6080 */  sll   $t4, $t4, 2
/* 0045ED58 014C6821 */  addu  $t5, $t2, $t4
/* 0045ED5C 91A50008 */  lbu   $a1, 8($t5)
/* 0045ED60 24070001 */  li    $a3, 1
/* 0045ED64 10E5001E */  beq   $a3, $a1, .L0045EDE0
/* 0045ED68 24010003 */   li    $at, 3
/* 0045ED6C 10A1001D */  beq   $a1, $at, .L0045EDE4
/* 0045ED70 28C1FFF0 */   slti  $at, $a2, -0x10
/* 0045ED74 90820034 */  lbu   $v0, 0x34($a0)
/* 0045ED78 3C011000 */  lui   $at, 0x1000
/* 0045ED7C 244EFFC0 */  addiu $t6, $v0, -0x40
/* 0045ED80 2DCF0020 */  sltiu $t7, $t6, 0x20
/* 0045ED84 000FC023 */  negu  $t8, $t7
/* 0045ED88 34210200 */  ori   $at, $at, 0x200
/* 0045ED8C 0301C824 */  and   $t9, $t8, $at
/* 0045ED90 01D94804 */  sllv  $t1, $t9, $t6
/* 0045ED94 0521000A */  bgez  $t1, .L0045EDC0
/* 0045ED98 00000000 */   nop   
/* 0045ED9C 8F8B8B10 */  lw     $t3, %got(gprelsize)($gp)
/* 0045EDA0 8C830028 */  lw    $v1, 0x28($a0)
/* 0045EDA4 8D6B0000 */  lw    $t3, ($t3)
/* 0045EDA8 00000000 */  nop   
/* 0045EDAC 0163082A */  slt   $at, $t3, $v1
/* 0045EDB0 14200003 */  bnez  $at, .L0045EDC0
/* 0045EDB4 00000000 */   nop   
/* 0045EDB8 1C60000A */  bgtz  $v1, .L0045EDE4
/* 0045EDBC 28C1FFF0 */   slti  $at, $a2, -0x10
.L0045EDC0:
/* 0045EDC0 15020002 */  bne   $t0, $v0, .L0045EDCC
/* 0045EDC4 2401000D */   li    $at, 13
/* 0045EDC8 10A10005 */  beq   $a1, $at, .L0045EDE0
.L0045EDCC:
/* 0045EDCC 24010045 */   li    $at, 69
/* 0045EDD0 10410004 */  beq   $v0, $at, .L0045EDE4
/* 0045EDD4 28C1FFF0 */   slti  $at, $a2, -0x10
/* 0045EDD8 1000008D */  b     .L0045F010
/* 0045EDDC 00001025 */   move  $v0, $zero
.L0045EDE0:
/* 0045EDE0 28C1FFF0 */  slti  $at, $a2, -0x10
.L0045EDE4:
/* 0045EDE4 14200007 */  bnez  $at, .L0045EE04
/* 0045EDE8 00000000 */   nop   
/* 0045EDEC 8C8A0028 */  lw    $t2, 0x28($a0)
/* 0045EDF0 00000000 */  nop   
/* 0045EDF4 254C0010 */  addiu $t4, $t2, 0x10
/* 0045EDF8 0186082A */  slt   $at, $t4, $a2
/* 0045EDFC 10200082 */  beqz  $at, .L0045F008
/* 0045EE00 00000000 */   nop   
.L0045EE04:
/* 0045EE04 14E5000F */  bne   $a3, $a1, .L0045EE44
/* 0045EE08 24010003 */   li    $at, 3
/* 0045EE0C 8C8D0010 */  lw    $t5, 0x10($a0)
/* 0045EE10 00000000 */  nop   
/* 0045EE14 01A61021 */  addu  $v0, $t5, $a2
/* 0045EE18 0440000A */  bltz  $v0, .L0045EE44
/* 0045EE1C 24010003 */   li    $at, 3
/* 0045EE20 8F8F8AEC */  lw     $t7, %got(seg_ic)($gp)
/* 0045EE24 00000000 */  nop   
/* 0045EE28 8DEF0000 */  lw    $t7, ($t7)
/* 0045EE2C 00000000 */  nop   
/* 0045EE30 8DF80004 */  lw    $t8, 4($t7)
/* 0045EE34 00000000 */  nop   
/* 0045EE38 0058082A */  slt   $at, $v0, $t8
/* 0045EE3C 14200072 */  bnez  $at, .L0045F008
/* 0045EE40 24010003 */   li    $at, 3
.L0045EE44:
/* 0045EE44 14A1000F */  bne   $a1, $at, .L0045EE84
/* 0045EE48 00000000 */   nop   
/* 0045EE4C 8C990010 */  lw    $t9, 0x10($a0)
/* 0045EE50 00000000 */  nop   
/* 0045EE54 03261021 */  addu  $v0, $t9, $a2
/* 0045EE58 0440000A */  bltz  $v0, .L0045EE84
/* 0045EE5C 00000000 */   nop   
/* 0045EE60 8F8E8AEC */  lw     $t6, %got(seg_ic)($gp)
/* 0045EE64 00000000 */  nop   
/* 0045EE68 8DCE0000 */  lw    $t6, ($t6)
/* 0045EE6C 00000000 */  nop   
/* 0045EE70 8DC9000C */  lw    $t1, 0xc($t6)
/* 0045EE74 00000000 */  nop   
/* 0045EE78 0049082A */  slt   $at, $v0, $t1
/* 0045EE7C 14200062 */  bnez  $at, .L0045F008
/* 0045EE80 00000000 */   nop   
.L0045EE84:
/* 0045EE84 8F8B8B94 */  lw     $t3, %got(opts)($gp)
/* 0045EE88 00000000 */  nop   
/* 0045EE8C 916B001E */  lbu   $t3, 0x1e($t3)
/* 0045EE90 00000000 */  nop   
/* 0045EE94 1160005A */  beqz  $t3, .L0045F000
/* 0045EE98 00000000 */   nop   
/* 0045EE9C 90820034 */  lbu   $v0, 0x34($a0)
/* 0045EEA0 24010043 */  li    $at, 67
/* 0045EEA4 1441002B */  bne   $v0, $at, .L0045EF54
/* 0045EEA8 00000000 */   nop   
/* 0045EEAC 8F8A8070 */  lw    $t2, %got(RO_1001C2C0)($gp)
/* 0045EEB0 03A07825 */  move  $t7, $sp
/* 0045EEB4 254AC2C0 */  addiu $t2, %lo(RO_1001C2C0) # addiu $t2, $t2, -0x3d40
/* 0045EEB8 254D0048 */  addiu $t5, $t2, 0x48
.L0045EEBC:
/* 0045EEBC 89410000 */  lwl   $at, ($t2)
/* 0045EEC0 99410003 */  lwr   $at, 3($t2)
/* 0045EEC4 254A000C */  addiu $t2, $t2, 0xc
/* 0045EEC8 A9E10000 */  swl   $at, ($t7)
/* 0045EECC B9E10003 */  swr   $at, 3($t7)
/* 0045EED0 8941FFF8 */  lwl   $at, -8($t2)
/* 0045EED4 9941FFFB */  lwr   $at, -5($t2)
/* 0045EED8 25EF000C */  addiu $t7, $t7, 0xc
/* 0045EEDC A9E1FFF8 */  swl   $at, -8($t7)
/* 0045EEE0 B9E1FFFB */  swr   $at, -5($t7)
/* 0045EEE4 8941FFFC */  lwl   $at, -4($t2)
/* 0045EEE8 9941FFFF */  lwr   $at, -1($t2)
/* 0045EEEC 00000000 */  nop   
/* 0045EEF0 A9E1FFFC */  swl   $at, -4($t7)
/* 0045EEF4 154DFFF1 */  bne   $t2, $t5, .L0045EEBC
/* 0045EEF8 B9E1FFFF */   swr   $at, -1($t7)
/* 0045EEFC 89410000 */  lwl   $at, ($t2)
/* 0045EF00 99410003 */  lwr   $at, 3($t2)
/* 0045EF04 8F988C68 */  lw     $t8, %got(emptystring)($gp)
/* 0045EF08 A9E10000 */  swl   $at, ($t7)
/* 0045EF0C B9E10003 */  swr   $at, 3($t7)
/* 0045EF10 894D0004 */  lwl   $t5, 4($t2)
/* 0045EF14 994D0007 */  lwr   $t5, 7($t2)
/* 0045EF18 24190002 */  li    $t9, 2
/* 0045EF1C A9ED0004 */  swl   $t5, 4($t7)
/* 0045EF20 B9ED0007 */  swr   $t5, 7($t7)
/* 0045EF24 AFB90054 */  sw    $t9, 0x54($sp)
/* 0045EF28 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0045EF2C 8F180000 */  lw    $t8, ($t8)
/* 0045EF30 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045EF34 8FA60008 */  lw    $a2, 8($sp)
/* 0045EF38 8FA50004 */  lw    $a1, 4($sp)
/* 0045EF3C 8FA40000 */  lw    $a0, ($sp)
/* 0045EF40 0320F809 */  jalr  $t9
/* 0045EF44 AFB80050 */   sw    $t8, 0x50($sp)
/* 0045EF48 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045EF4C 10000030 */  b     .L0045F010
/* 0045EF50 00001025 */   move  $v0, $zero
.L0045EF54:
/* 0045EF54 1502002A */  bne   $t0, $v0, .L0045F000
/* 0045EF58 00000000 */   nop   
/* 0045EF5C 8F8E8070 */  lw    $t6, %got(RO_1001C270)($gp)
/* 0045EF60 03A06025 */  move  $t4, $sp
/* 0045EF64 25CEC270 */  addiu $t6, %lo(RO_1001C270) # addiu $t6, $t6, -0x3d90
/* 0045EF68 25CB0048 */  addiu $t3, $t6, 0x48
.L0045EF6C:
/* 0045EF6C 89C10000 */  lwl   $at, ($t6)
/* 0045EF70 99C10003 */  lwr   $at, 3($t6)
/* 0045EF74 25CE000C */  addiu $t6, $t6, 0xc
/* 0045EF78 A9810000 */  swl   $at, ($t4)
/* 0045EF7C B9810003 */  swr   $at, 3($t4)
/* 0045EF80 89C1FFF8 */  lwl   $at, -8($t6)
/* 0045EF84 99C1FFFB */  lwr   $at, -5($t6)
/* 0045EF88 258C000C */  addiu $t4, $t4, 0xc
/* 0045EF8C A981FFF8 */  swl   $at, -8($t4)
/* 0045EF90 B981FFFB */  swr   $at, -5($t4)
/* 0045EF94 89C1FFFC */  lwl   $at, -4($t6)
/* 0045EF98 99C1FFFF */  lwr   $at, -1($t6)
/* 0045EF9C 00000000 */  nop   
/* 0045EFA0 A981FFFC */  swl   $at, -4($t4)
/* 0045EFA4 15CBFFF1 */  bne   $t6, $t3, .L0045EF6C
/* 0045EFA8 B981FFFF */   swr   $at, -1($t4)
/* 0045EFAC 89C10000 */  lwl   $at, ($t6)
/* 0045EFB0 99C10003 */  lwr   $at, 3($t6)
/* 0045EFB4 8F8D8C68 */  lw     $t5, %got(emptystring)($gp)
/* 0045EFB8 A9810000 */  swl   $at, ($t4)
/* 0045EFBC B9810003 */  swr   $at, 3($t4)
/* 0045EFC0 89CB0004 */  lwl   $t3, 4($t6)
/* 0045EFC4 99CB0007 */  lwr   $t3, 7($t6)
/* 0045EFC8 240A0002 */  li    $t2, 2
/* 0045EFCC A98B0004 */  swl   $t3, 4($t4)
/* 0045EFD0 B98B0007 */  swr   $t3, 7($t4)
/* 0045EFD4 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0045EFD8 8DAD0000 */  lw    $t5, ($t5)
/* 0045EFDC 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045EFE0 8FA60008 */  lw    $a2, 8($sp)
/* 0045EFE4 8FA50004 */  lw    $a1, 4($sp)
/* 0045EFE8 8FA40000 */  lw    $a0, ($sp)
/* 0045EFEC AFAA0054 */  sw    $t2, 0x54($sp)
/* 0045EFF0 0320F809 */  jalr  $t9
/* 0045EFF4 AFAD0050 */   sw    $t5, 0x50($sp)
/* 0045EFF8 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045EFFC 00000000 */  nop   
.L0045F000:
/* 0045F000 10000003 */  b     .L0045F010
/* 0045F004 00001025 */   move  $v0, $zero
.L0045F008:
/* 0045F008 A0870036 */  sb    $a3, 0x36($a0)
/* 0045F00C 00E01025 */  move  $v0, $a3
.L0045F010:
/* 0045F010 8FBF0064 */  lw    $ra, 0x64($sp)
/* 0045F014 27BD0078 */  addiu $sp, $sp, 0x78
/* 0045F018 03E00008 */  jr    $ra
/* 0045F01C 00000000 */   nop   

    .type check_if_gp_relative, @function
    .size check_if_gp_relative, .-check_if_gp_relative
    .end check_if_gp_relative

glabel is_gp_relative
    .ent is_gp_relative
    # 0045F110 genfpmultiple
    # 004604C0 do_parseafra
    # 0046159C gendouble
    # 00462320 func_00462320
    # 00463428 func_00463428
/* 0045F020 3C1C0FBD */  .cpload $t9
/* 0045F024 279CB240 */  
/* 0045F028 0399E021 */  
/* 0045F02C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0045F030 8F99860C */  lw    $t9, %call16(check_if_gp_relative)($gp)
/* 0045F034 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0045F038 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0045F03C AFA60028 */  sw    $a2, 0x28($sp)
/* 0045F040 0320F809 */  jalr  $t9
/* 0045F044 AFA7002C */   sw    $a3, 0x2c($sp)
/* 0045F048 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0045F04C 14400003 */  bnez  $v0, .L0045F05C
/* 0045F050 00000000 */   nop   
/* 0045F054 1000002A */  b     .L0045F100
/* 0045F058 00001025 */   move  $v0, $zero
.L0045F05C:
/* 0045F05C 8F9984D0 */  lw    $t9, %call16(restore_gp)($gp)
/* 0045F060 00000000 */  nop   
/* 0045F064 0320F809 */  jalr  $t9
/* 0045F068 00000000 */   nop   
/* 0045F06C 93A6002B */  lbu   $a2, 0x2b($sp)
/* 0045F070 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0045F074 24010048 */  li    $at, 72
/* 0045F078 10C1001B */  beq   $a2, $at, .L0045F0E8
/* 0045F07C 00000000 */   nop   
/* 0045F080 10C00019 */  beqz  $a2, .L0045F0E8
/* 0045F084 00000000 */   nop   
/* 0045F088 8F8E8BB4 */  lw     $t6, %got(atflag)($gp)
/* 0045F08C 00000000 */  nop   
/* 0045F090 91CE0000 */  lbu   $t6, ($t6)
/* 0045F094 00000000 */  nop   
/* 0045F098 15C00008 */  bnez  $t6, .L0045F0BC
/* 0045F09C 00000000 */   nop   
/* 0045F0A0 8F9984C8 */  lw    $t9, %call16(macro_error)($gp)
/* 0045F0A4 00000000 */  nop   
/* 0045F0A8 0320F809 */  jalr  $t9
/* 0045F0AC 00000000 */   nop   
/* 0045F0B0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0045F0B4 93A6002B */  lbu   $a2, 0x2b($sp)
/* 0045F0B8 00000000 */  nop   
.L0045F0BC:
/* 0045F0BC 8F878BF8 */  lw     $a3, %got(gpreg)($gp)
/* 0045F0C0 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 0045F0C4 90E70000 */  lbu   $a3, ($a3)
/* 0045F0C8 24040015 */  li    $a0, 21
/* 0045F0CC 0320F809 */  jalr  $t9
/* 0045F0D0 24050001 */   li    $a1, 1
/* 0045F0D4 8FB8002C */  lw    $t8, 0x2c($sp)
/* 0045F0D8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0045F0DC 240F0001 */  li    $t7, 1
/* 0045F0E0 10000006 */  b     .L0045F0FC
/* 0045F0E4 A30F0000 */   sb    $t7, ($t8)
.L0045F0E8:
/* 0045F0E8 8F998BF8 */  lw     $t9, %got(gpreg)($gp)
/* 0045F0EC 8FA8002C */  lw    $t0, 0x2c($sp)
/* 0045F0F0 93390000 */  lbu   $t9, ($t9)
/* 0045F0F4 00000000 */  nop   
/* 0045F0F8 A1190000 */  sb    $t9, ($t0)
.L0045F0FC:
/* 0045F0FC 24020001 */  li    $v0, 1
.L0045F100:
/* 0045F100 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0045F104 27BD0020 */  addiu $sp, $sp, 0x20
/* 0045F108 03E00008 */  jr    $ra
/* 0045F10C 00000000 */   nop   

    .type is_gp_relative, @function
    .size is_gp_relative, .-is_gp_relative
    .end is_gp_relative

glabel genfpmultiple
    .ent genfpmultiple
    # 004638F8 func_004638F8
    # 00464528 parseafra
    # 004653BC func_004653BC
    # 004656D4 parseafri_fp
/* 0045F110 3C1C0FBD */  .cpload $t9
/* 0045F114 279CB150 */  
/* 0045F118 0399E021 */  
/* 0045F11C 27BDFF28 */  addiu $sp, $sp, -0xd8
/* 0045F120 24AFFFE0 */  addiu $t7, $a1, -0x20
/* 0045F124 2DF80020 */  sltiu $t8, $t7, 0x20
/* 0045F128 0018C823 */  negu  $t9, $t8
/* 0045F12C 01F94804 */  sllv  $t1, $t9, $t7
/* 0045F130 AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 0045F134 AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 0045F138 AFA400D8 */  sw    $a0, 0xd8($sp)
/* 0045F13C AFA500DC */  sw    $a1, 0xdc($sp)
/* 0045F140 AFA600E0 */  sw    $a2, 0xe0($sp)
/* 0045F144 AFA700E4 */  sw    $a3, 0xe4($sp)
/* 0045F148 AFA700D4 */  sw    $a3, 0xd4($sp)
/* 0045F14C 0520002B */  bltz  $t1, .L0045F1FC
/* 0045F150 A3A500D3 */   sb    $a1, 0xd3($sp)
/* 0045F154 8F8A8070 */  lw    $t2, %got(RO_1001C3B0)($gp)
/* 0045F158 03A06825 */  move  $t5, $sp
/* 0045F15C 254AC3B0 */  addiu $t2, %lo(RO_1001C3B0) # addiu $t2, $t2, -0x3c50
/* 0045F160 254C0048 */  addiu $t4, $t2, 0x48
.L0045F164:
/* 0045F164 89410000 */  lwl   $at, ($t2)
/* 0045F168 99410003 */  lwr   $at, 3($t2)
/* 0045F16C 254A000C */  addiu $t2, $t2, 0xc
/* 0045F170 A9A10000 */  swl   $at, ($t5)
/* 0045F174 B9A10003 */  swr   $at, 3($t5)
/* 0045F178 8941FFF8 */  lwl   $at, -8($t2)
/* 0045F17C 9941FFFB */  lwr   $at, -5($t2)
/* 0045F180 25AD000C */  addiu $t5, $t5, 0xc
/* 0045F184 A9A1FFF8 */  swl   $at, -8($t5)
/* 0045F188 B9A1FFFB */  swr   $at, -5($t5)
/* 0045F18C 8941FFFC */  lwl   $at, -4($t2)
/* 0045F190 9941FFFF */  lwr   $at, -1($t2)
/* 0045F194 00000000 */  nop   
/* 0045F198 A9A1FFFC */  swl   $at, -4($t5)
/* 0045F19C 154CFFF1 */  bne   $t2, $t4, .L0045F164
/* 0045F1A0 B9A1FFFF */   swr   $at, -1($t5)
/* 0045F1A4 89410000 */  lwl   $at, ($t2)
/* 0045F1A8 99410003 */  lwr   $at, 3($t2)
/* 0045F1AC 8F8E8C68 */  lw     $t6, %got(emptystring)($gp)
/* 0045F1B0 A9A10000 */  swl   $at, ($t5)
/* 0045F1B4 B9A10003 */  swr   $at, 3($t5)
/* 0045F1B8 894C0004 */  lwl   $t4, 4($t2)
/* 0045F1BC 994C0007 */  lwr   $t4, 7($t2)
/* 0045F1C0 24180001 */  li    $t8, 1
/* 0045F1C4 A9AC0004 */  swl   $t4, 4($t5)
/* 0045F1C8 B9AC0007 */  swr   $t4, 7($t5)
/* 0045F1CC 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0045F1D0 8DCE0000 */  lw    $t6, ($t6)
/* 0045F1D4 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045F1D8 8FA60008 */  lw    $a2, 8($sp)
/* 0045F1DC 8FA50004 */  lw    $a1, 4($sp)
/* 0045F1E0 8FA40000 */  lw    $a0, ($sp)
/* 0045F1E4 AFB80054 */  sw    $t8, 0x54($sp)
/* 0045F1E8 0320F809 */  jalr  $t9
/* 0045F1EC AFAE0050 */   sw    $t6, 0x50($sp)
/* 0045F1F0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F1F4 1000043D */  b     .L004602EC
/* 0045F1F8 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L0045F1FC:
/* 0045F1FC 8FA800EC */  lw    $t0, 0xec($sp)
/* 0045F200 24010002 */  li    $at, 2
/* 0045F204 15010015 */  bne   $t0, $at, .L0045F25C
/* 0045F208 24010004 */   li    $at, 4
/* 0045F20C 8F998B14 */  lw     $t9, %got(bigendian)($gp)
/* 0045F210 24AC0001 */  addiu $t4, $a1, 1
/* 0045F214 93390000 */  lbu   $t9, ($t9)
/* 0045F218 00000000 */  nop   
/* 0045F21C 1320000C */  beqz  $t9, .L0045F250
/* 0045F220 00000000 */   nop   
/* 0045F224 8F8F8C90 */  lw     $t7, %got(moxieflag)($gp)
/* 0045F228 93A900F3 */  lbu   $t1, 0xf3($sp)
/* 0045F22C 91EF0000 */  lbu   $t7, ($t7)
/* 0045F230 00000000 */  nop   
/* 0045F234 15E00006 */  bnez  $t7, .L0045F250
/* 0045F238 00000000 */   nop   
/* 0045F23C 15200004 */  bnez  $t1, .L0045F250
/* 0045F240 24AB0001 */   addiu $t3, $a1, 1
/* 0045F244 A3A500D2 */  sb    $a1, 0xd2($sp)
/* 0045F248 10000064 */  b     .L0045F3DC
/* 0045F24C A3AB00D3 */   sb    $t3, 0xd3($sp)
.L0045F250:
/* 0045F250 10000062 */  b     .L0045F3DC
/* 0045F254 A3AC00D2 */   sb    $t4, 0xd2($sp)
/* 0045F258 24010004 */  li    $at, 4
.L0045F25C:
/* 0045F25C 1501001A */  bne   $t0, $at, .L0045F2C8
/* 0045F260 24010001 */   li    $at, 1
/* 0045F264 8F8A8B14 */  lw     $t2, %got(bigendian)($gp)
/* 0045F268 24A30001 */  addiu $v1, $a1, 1
/* 0045F26C 914A0000 */  lbu   $t2, ($t2)
/* 0045F270 24790001 */  addiu $t9, $v1, 1
/* 0045F274 1140000F */  beqz  $t2, .L0045F2B4
/* 0045F278 272F0001 */   addiu $t7, $t9, 1
/* 0045F27C 8F8D8C90 */  lw     $t5, %got(moxieflag)($gp)
/* 0045F280 00000000 */  nop   
/* 0045F284 91AD0000 */  lbu   $t5, ($t5)
/* 0045F288 00000000 */  nop   
/* 0045F28C 15A00009 */  bnez  $t5, .L0045F2B4
/* 0045F290 00000000 */   nop   
/* 0045F294 24A30001 */  addiu $v1, $a1, 1
/* 0045F298 246E0001 */  addiu $t6, $v1, 1
/* 0045F29C 25D80001 */  addiu $t8, $t6, 1
/* 0045F2A0 A3A500D0 */  sb    $a1, 0xd0($sp)
/* 0045F2A4 A3A300D1 */  sb    $v1, 0xd1($sp)
/* 0045F2A8 A3AE00D2 */  sb    $t6, 0xd2($sp)
/* 0045F2AC 1000004B */  b     .L0045F3DC
/* 0045F2B0 A3B800D3 */   sb    $t8, 0xd3($sp)
.L0045F2B4:
/* 0045F2B4 A3A300D2 */  sb    $v1, 0xd2($sp)
/* 0045F2B8 A3B900D1 */  sb    $t9, 0xd1($sp)
/* 0045F2BC 10000047 */  b     .L0045F3DC
/* 0045F2C0 A3AF00D0 */   sb    $t7, 0xd0($sp)
/* 0045F2C4 24010001 */  li    $at, 1
.L0045F2C8:
/* 0045F2C8 11010044 */  beq   $t0, $at, .L0045F3DC
/* 0045F2CC 03A0C825 */   move  $t9, $sp
/* 0045F2D0 8F898070 */  lw    $t1, %got(RO_1001C360)($gp)
/* 0045F2D4 03A05025 */  move  $t2, $sp
/* 0045F2D8 2529C360 */  addiu $t1, %lo(RO_1001C360) # addiu $t1, $t1, -0x3ca0
/* 0045F2DC 252C0048 */  addiu $t4, $t1, 0x48
.L0045F2E0:
/* 0045F2E0 89210000 */  lwl   $at, ($t1)
/* 0045F2E4 99210003 */  lwr   $at, 3($t1)
/* 0045F2E8 2529000C */  addiu $t1, $t1, 0xc
/* 0045F2EC A9410000 */  swl   $at, ($t2)
/* 0045F2F0 B9410003 */  swr   $at, 3($t2)
/* 0045F2F4 8921FFF8 */  lwl   $at, -8($t1)
/* 0045F2F8 9921FFFB */  lwr   $at, -5($t1)
/* 0045F2FC 254A000C */  addiu $t2, $t2, 0xc
/* 0045F300 A941FFF8 */  swl   $at, -8($t2)
/* 0045F304 B941FFFB */  swr   $at, -5($t2)
/* 0045F308 8921FFFC */  lwl   $at, -4($t1)
/* 0045F30C 9921FFFF */  lwr   $at, -1($t1)
/* 0045F310 00000000 */  nop   
/* 0045F314 A941FFFC */  swl   $at, -4($t2)
/* 0045F318 152CFFF1 */  bne   $t1, $t4, .L0045F2E0
/* 0045F31C B941FFFF */   swr   $at, -1($t2)
/* 0045F320 89210000 */  lwl   $at, ($t1)
/* 0045F324 99210003 */  lwr   $at, 3($t1)
/* 0045F328 8F8D8070 */  lw    $t5, %got(RO_1001C310)($gp)
/* 0045F32C A9410000 */  swl   $at, ($t2)
/* 0045F330 B9410003 */  swr   $at, 3($t2)
/* 0045F334 892C0004 */  lwl   $t4, 4($t1)
/* 0045F338 992C0007 */  lwr   $t4, 7($t1)
/* 0045F33C 25ADC310 */  addiu $t5, %lo(RO_1001C310) # addiu $t5, $t5, -0x3cf0
/* 0045F340 A94C0004 */  swl   $t4, 4($t2)
/* 0045F344 25B80048 */  addiu $t8, $t5, 0x48
/* 0045F348 B94C0007 */  swr   $t4, 7($t2)
.L0045F34C:
/* 0045F34C 89A10000 */  lwl   $at, ($t5)
/* 0045F350 99A10003 */  lwr   $at, 3($t5)
/* 0045F354 25AD000C */  addiu $t5, $t5, 0xc
/* 0045F358 AB210050 */  swl   $at, 0x50($t9)
/* 0045F35C BB210053 */  swr   $at, 0x53($t9)
/* 0045F360 89A1FFF8 */  lwl   $at, -8($t5)
/* 0045F364 99A1FFFB */  lwr   $at, -5($t5)
/* 0045F368 2739000C */  addiu $t9, $t9, 0xc
/* 0045F36C AB210048 */  swl   $at, 0x48($t9)
/* 0045F370 BB21004B */  swr   $at, 0x4b($t9)
/* 0045F374 89A1FFFC */  lwl   $at, -4($t5)
/* 0045F378 99A1FFFF */  lwr   $at, -1($t5)
/* 0045F37C 00000000 */  nop   
/* 0045F380 AB21004C */  swl   $at, 0x4c($t9)
/* 0045F384 15B8FFF1 */  bne   $t5, $t8, .L0045F34C
/* 0045F388 BB21004F */   swr   $at, 0x4f($t9)
/* 0045F38C 89A10000 */  lwl   $at, ($t5)
/* 0045F390 99A10003 */  lwr   $at, 3($t5)
/* 0045F394 240F0250 */  li    $t7, 592
/* 0045F398 AB210050 */  swl   $at, 0x50($t9)
/* 0045F39C BB210053 */  swr   $at, 0x53($t9)
/* 0045F3A0 89B80004 */  lwl   $t8, 4($t5)
/* 0045F3A4 99B80007 */  lwr   $t8, 7($t5)
/* 0045F3A8 00000000 */  nop   
/* 0045F3AC AB380054 */  swl   $t8, 0x54($t9)
/* 0045F3B0 BB380057 */  swr   $t8, 0x57($t9)
/* 0045F3B4 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0045F3B8 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045F3BC 8FA60008 */  lw    $a2, 8($sp)
/* 0045F3C0 8FA50004 */  lw    $a1, 4($sp)
/* 0045F3C4 8FA40000 */  lw    $a0, ($sp)
/* 0045F3C8 0320F809 */  jalr  $t9
/* 0045F3CC AFAF00A0 */   sw    $t7, 0xa0($sp)
/* 0045F3D0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F3D4 8FA800EC */  lw    $t0, 0xec($sp)
/* 0045F3D8 00000000 */  nop   
.L0045F3DC:
/* 0045F3DC 93AB00F3 */  lbu   $t3, 0xf3($sp)
/* 0045F3E0 97B800DA */  lhu   $t8, 0xda($sp)
/* 0045F3E4 1160000D */  beqz  $t3, .L0045F41C
/* 0045F3E8 24010002 */   li    $at, 2
/* 0045F3EC 1501000B */  bne   $t0, $at, .L0045F41C
/* 0045F3F0 240E0001 */   li    $t6, 1
/* 0045F3F4 97AC00DA */  lhu   $t4, 0xda($sp)
/* 0045F3F8 24010077 */  li    $at, 119
/* 0045F3FC 15810004 */  bne   $t4, $at, .L0045F410
/* 0045F400 240A007D */   li    $t2, 125
/* 0045F404 2409007B */  li    $t1, 123
/* 0045F408 10000002 */  b     .L0045F414
/* 0045F40C A7A900CC */   sh    $t1, 0xcc($sp)
.L0045F410:
/* 0045F410 A7AA00CC */  sh    $t2, 0xcc($sp)
.L0045F414:
/* 0045F414 1000000C */  b     .L0045F448
/* 0045F418 AFAE00EC */   sw    $t6, 0xec($sp)
.L0045F41C:
/* 0045F41C 270DFFA0 */  addiu $t5, $t8, -0x60
/* 0045F420 2DB90020 */  sltiu $t9, $t5, 0x20
/* 0045F424 00197823 */  negu  $t7, $t9
/* 0045F428 31EB0380 */  andi  $t3, $t7, 0x380
/* 0045F42C 01AB6004 */  sllv  $t4, $t3, $t5
/* 0045F430 05810004 */  bgez  $t4, .L0045F444
/* 0045F434 240A0076 */   li    $t2, 118
/* 0045F438 24090073 */  li    $t1, 115
/* 0045F43C 10000002 */  b     .L0045F448
/* 0045F440 A7A900CC */   sh    $t1, 0xcc($sp)
.L0045F444:
/* 0045F444 A7AA00CC */  sh    $t2, 0xcc($sp)
.L0045F448:
/* 0045F448 93A600EB */  lbu   $a2, 0xeb($sp)
/* 0045F44C 2401001D */  li    $at, 29
/* 0045F450 14C1011F */  bne   $a2, $at, .L0045F8D0
/* 0045F454 8FA900E0 */   lw    $t1, 0xe0($sp)
/* 0045F458 8F8E8DA8 */  lw     $t6, %got(adjust_frame_by_ld)($gp)
/* 0045F45C 00000000 */  nop   
/* 0045F460 91CE0000 */  lbu   $t6, ($t6)
/* 0045F464 00000000 */  nop   
/* 0045F468 11C00119 */  beqz  $t6, .L0045F8D0
/* 0045F46C 8FA900E0 */   lw    $t1, 0xe0($sp)
/* 0045F470 8F828D7C */  lw     $v0, %got(known_framesize)($gp)
/* 0045F474 8FB800E4 */  lw    $t8, 0xe4($sp)
/* 0045F478 8C420000 */  lw    $v0, ($v0)
/* 0045F47C 8FA400EC */  lw    $a0, 0xec($sp)
/* 0045F480 0302082A */  slt   $at, $t8, $v0
/* 0045F484 10200004 */  beqz  $at, .L0045F498
/* 0045F488 0002C823 */   negu  $t9, $v0
/* 0045F48C 0338082A */  slt   $at, $t9, $t8
/* 0045F490 1420010F */  bnez  $at, .L0045F8D0
/* 0045F494 8FA900E0 */   lw    $t1, 0xe0($sp)
.L0045F498:
/* 0045F498 97AD00DA */  lhu   $t5, 0xda($sp)
/* 0045F49C 8F998608 */  lw    $t9, %call16(setup_tempreg)($gp)
/* 0045F4A0 27AF00D4 */  addiu $t7, $sp, 0xd4
/* 0045F4A4 27AB00CB */  addiu $t3, $sp, 0xcb
/* 0045F4A8 AFAB0014 */  sw    $t3, 0x14($sp)
/* 0045F4AC AFAF0010 */  sw    $t7, 0x10($sp)
/* 0045F4B0 24050001 */  li    $a1, 1
/* 0045F4B4 27A700E0 */  addiu $a3, $sp, 0xe0
/* 0045F4B8 AFA00018 */  sw    $zero, 0x18($sp)
/* 0045F4BC 0320F809 */  jalr  $t9
/* 0045F4C0 AFAD001C */   sw    $t5, 0x1c($sp)
/* 0045F4C4 8FAC00EC */  lw    $t4, 0xec($sp)
/* 0045F4C8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F4CC 29810002 */  slti  $at, $t4, 2
/* 0045F4D0 10200029 */  beqz  $at, .L0045F578
/* 0045F4D4 00000000 */   nop   
/* 0045F4D8 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 0045F4DC 8FA500D4 */  lw    $a1, 0xd4($sp)
/* 0045F4E0 0320F809 */  jalr  $t9
/* 0045F4E4 00002025 */   move  $a0, $zero
/* 0045F4E8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F4EC 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0045F4F0 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045F4F4 93A500D3 */  lbu   $a1, 0xd3($sp)
/* 0045F4F8 00403025 */  move  $a2, $v0
/* 0045F4FC 0320F809 */  jalr  $t9
/* 0045F500 24070001 */   li    $a3, 1
/* 0045F504 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F508 00000000 */  nop   
/* 0045F50C 8F898BB0 */  lw     $t1, %got(bbindex)($gp)
/* 0045F510 8F8A8B88 */  lw     $t2, %got(proc_instr_base)($gp)
/* 0045F514 8F9985FC */  lw    $t9, %call16(request_multi_relocinst)($gp)
/* 0045F518 8D290000 */  lw    $t1, ($t1)
/* 0045F51C 8D4A0000 */  lw    $t2, ($t2)
/* 0045F520 0320F809 */  jalr  $t9
/* 0045F524 012A2021 */   addu  $a0, $t1, $t2
/* 0045F528 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F52C 00000000 */  nop   
/* 0045F530 8F998D74 */  lw     $t9, %got(nextmultirelocinstr)($gp)
/* 0045F534 8F8E8D78 */  lw     $t6, %got(multirelocinstr_list)($gp)
/* 0045F538 8F8F8BB0 */  lw     $t7, %got(bbindex)($gp)
/* 0045F53C 8F8B8B88 */  lw     $t3, %got(proc_instr_base)($gp)
/* 0045F540 8F390000 */  lw    $t9, ($t9)
/* 0045F544 8DCE0000 */  lw    $t6, ($t6)
/* 0045F548 8DEF0000 */  lw    $t7, ($t7)
/* 0045F54C 8D6B0000 */  lw    $t3, ($t3)
/* 0045F550 0019C100 */  sll   $t8, $t9, 4
/* 0045F554 8F8C8DAC */  lw     $t4, %got(sp_addu_index)($gp)
/* 0045F558 01D81021 */  addu  $v0, $t6, $t8
/* 0045F55C 01EB6821 */  addu  $t5, $t7, $t3
/* 0045F560 AC4DFFFC */  sw    $t5, -4($v0)
/* 0045F564 8D8C0000 */  lw    $t4, ($t4)
/* 0045F568 00000000 */  nop   
/* 0045F56C 25890001 */  addiu $t1, $t4, 1
/* 0045F570 1000035D */  b     .L004602E8
/* 0045F574 AC49FFF4 */   sw    $t1, -0xc($v0)
.L0045F578:
/* 0045F578 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045F57C 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0045F580 93A500D3 */  lbu   $a1, 0xd3($sp)
/* 0045F584 8FA600D4 */  lw    $a2, 0xd4($sp)
/* 0045F588 0320F809 */  jalr  $t9
/* 0045F58C 24070001 */   li    $a3, 1
/* 0045F590 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F594 00000000 */  nop   
/* 0045F598 8F8A8BB0 */  lw     $t2, %got(bbindex)($gp)
/* 0045F59C 8F998B88 */  lw     $t9, %got(proc_instr_base)($gp)
/* 0045F5A0 8D4A0000 */  lw    $t2, ($t2)
/* 0045F5A4 8F390000 */  lw    $t9, ($t9)
/* 0045F5A8 00000000 */  nop   
/* 0045F5AC 01592021 */  addu  $a0, $t2, $t9
/* 0045F5B0 8F9985FC */  lw    $t9, %call16(request_multi_relocinst)($gp)
/* 0045F5B4 00000000 */  nop   
/* 0045F5B8 0320F809 */  jalr  $t9
/* 0045F5BC 00000000 */   nop   
/* 0045F5C0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F5C4 8FA600D4 */  lw    $a2, 0xd4($sp)
/* 0045F5C8 8F988D74 */  lw     $t8, %got(nextmultirelocinstr)($gp)
/* 0045F5CC 8F8E8D78 */  lw     $t6, %got(multirelocinstr_list)($gp)
/* 0045F5D0 8F8B8BB0 */  lw     $t3, %got(bbindex)($gp)
/* 0045F5D4 8F8D8B88 */  lw     $t5, %got(proc_instr_base)($gp)
/* 0045F5D8 8F180000 */  lw    $t8, ($t8)
/* 0045F5DC 8DCE0000 */  lw    $t6, ($t6)
/* 0045F5E0 8D6B0000 */  lw    $t3, ($t3)
/* 0045F5E4 8DAD0000 */  lw    $t5, ($t5)
/* 0045F5E8 00187900 */  sll   $t7, $t8, 4
/* 0045F5EC 8F898DAC */  lw     $t1, %got(sp_addu_index)($gp)
/* 0045F5F0 01CF1021 */  addu  $v0, $t6, $t7
/* 0045F5F4 016D6021 */  addu  $t4, $t3, $t5
/* 0045F5F8 AC4CFFFC */  sw    $t4, -4($v0)
/* 0045F5FC 8D290000 */  lw    $t1, ($t1)
/* 0045F600 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045F604 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0045F608 93A500D2 */  lbu   $a1, 0xd2($sp)
/* 0045F60C 252A0001 */  addiu $t2, $t1, 1
/* 0045F610 AC4AFFF4 */  sw    $t2, -0xc($v0)
/* 0045F614 24070001 */  li    $a3, 1
/* 0045F618 0320F809 */  jalr  $t9
/* 0045F61C 24C60004 */   addiu $a2, $a2, 4
/* 0045F620 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F624 00000000 */  nop   
/* 0045F628 8F998BB0 */  lw     $t9, %got(bbindex)($gp)
/* 0045F62C 8F988B88 */  lw     $t8, %got(proc_instr_base)($gp)
/* 0045F630 8F390000 */  lw    $t9, ($t9)
/* 0045F634 8F180000 */  lw    $t8, ($t8)
/* 0045F638 00000000 */  nop   
/* 0045F63C 03382021 */  addu  $a0, $t9, $t8
/* 0045F640 8F9985FC */  lw    $t9, %call16(request_multi_relocinst)($gp)
/* 0045F644 00000000 */  nop   
/* 0045F648 0320F809 */  jalr  $t9
/* 0045F64C 00000000 */   nop   
/* 0045F650 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F654 00000000 */  nop   
/* 0045F658 8F888D78 */  lw     $t0, %got(multirelocinstr_list)($gp)
/* 0045F65C 8F838D74 */  lw     $v1, %got(nextmultirelocinstr)($gp)
/* 0045F660 8D0E0004 */  lw    $t6, 4($t0)
/* 0045F664 8C630000 */  lw    $v1, ($v1)
/* 0045F668 00000000 */  nop   
/* 0045F66C 006E082A */  slt   $at, $v1, $t6
/* 0045F670 14200010 */  bnez  $at, .L0045F6B4
/* 0045F674 00000000 */   nop   
/* 0045F678 8F848D78 */  lw     $a0, %got(multirelocinstr_list)($gp)
/* 0045F67C 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 0045F680 8D070000 */  lw    $a3, ($t0)
/* 0045F684 00602825 */  move  $a1, $v1
/* 0045F688 24060010 */  li    $a2, 16
/* 0045F68C AFA00010 */  sw    $zero, 0x10($sp)
/* 0045F690 0320F809 */  jalr  $t9
/* 0045F694 24840004 */   addiu $a0, $a0, 4
/* 0045F698 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F69C 00000000 */  nop   
/* 0045F6A0 8F838D74 */  lw     $v1, %got(nextmultirelocinstr)($gp)
/* 0045F6A4 8F818D78 */  lw     $at, %got(multirelocinstr_list)($gp)
/* 0045F6A8 8F888D78 */  lw     $t0, %got(multirelocinstr_list)($gp)
/* 0045F6AC 8C630000 */  lw    $v1, ($v1)
/* 0045F6B0 AC220000 */  sw    $v0, ($at)
.L0045F6B4:
/* 0045F6B4 8F8D8BB0 */  lw     $t5, %got(bbindex)($gp)
/* 0045F6B8 8F8C8B88 */  lw     $t4, %got(proc_instr_base)($gp)
/* 0045F6BC 8D0F0000 */  lw    $t7, ($t0)
/* 0045F6C0 8DAD0000 */  lw    $t5, ($t5)
/* 0045F6C4 8D8C0000 */  lw    $t4, ($t4)
/* 0045F6C8 00035900 */  sll   $t3, $v1, 4
/* 0045F6CC 01EB1021 */  addu  $v0, $t7, $t3
/* 0045F6D0 8F8A8DAC */  lw     $t2, %got(sp_addu_index)($gp)
/* 0045F6D4 01AC4821 */  addu  $t1, $t5, $t4
/* 0045F6D8 AC49000C */  sw    $t1, 0xc($v0)
/* 0045F6DC AC400000 */  sw    $zero, ($v0)
/* 0045F6E0 8D4A0000 */  lw    $t2, ($t2)
/* 0045F6E4 8F818D74 */  lw     $at, %got(nextmultirelocinstr)($gp)
/* 0045F6E8 25590001 */  addiu $t9, $t2, 1
/* 0045F6EC AC590004 */  sw    $t9, 4($v0)
/* 0045F6F0 24780001 */  addiu $t8, $v1, 1
/* 0045F6F4 8FAE00EC */  lw    $t6, 0xec($sp)
/* 0045F6F8 AC380000 */  sw    $t8, ($at)
/* 0045F6FC 24010004 */  li    $at, 4
/* 0045F700 15C102FA */  bne   $t6, $at, .L004602EC
/* 0045F704 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 0045F708 8FA600D4 */  lw    $a2, 0xd4($sp)
/* 0045F70C 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045F710 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0045F714 93A500D1 */  lbu   $a1, 0xd1($sp)
/* 0045F718 24070001 */  li    $a3, 1
/* 0045F71C 0320F809 */  jalr  $t9
/* 0045F720 24C60008 */   addiu $a2, $a2, 8
/* 0045F724 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F728 00000000 */  nop   
/* 0045F72C 8F8F8BB0 */  lw     $t7, %got(bbindex)($gp)
/* 0045F730 8F8B8B88 */  lw     $t3, %got(proc_instr_base)($gp)
/* 0045F734 8F9985FC */  lw    $t9, %call16(request_multi_relocinst)($gp)
/* 0045F738 8DEF0000 */  lw    $t7, ($t7)
/* 0045F73C 8D6B0000 */  lw    $t3, ($t3)
/* 0045F740 0320F809 */  jalr  $t9
/* 0045F744 01EB2021 */   addu  $a0, $t7, $t3
/* 0045F748 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F74C 24060010 */  li    $a2, 16
/* 0045F750 8F888D78 */  lw     $t0, %got(multirelocinstr_list)($gp)
/* 0045F754 8F838D74 */  lw     $v1, %got(nextmultirelocinstr)($gp)
/* 0045F758 8D0D0004 */  lw    $t5, 4($t0)
/* 0045F75C 8C630000 */  lw    $v1, ($v1)
/* 0045F760 00000000 */  nop   
/* 0045F764 006D082A */  slt   $at, $v1, $t5
/* 0045F768 1420000E */  bnez  $at, .L0045F7A4
/* 0045F76C 00602825 */   move  $a1, $v1
/* 0045F770 8F848D78 */  lw     $a0, %got(multirelocinstr_list)($gp)
/* 0045F774 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 0045F778 8D070000 */  lw    $a3, ($t0)
/* 0045F77C AFA00010 */  sw    $zero, 0x10($sp)
/* 0045F780 0320F809 */  jalr  $t9
/* 0045F784 24840004 */   addiu $a0, $a0, 4
/* 0045F788 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F78C 00000000 */  nop   
/* 0045F790 8F838D74 */  lw     $v1, %got(nextmultirelocinstr)($gp)
/* 0045F794 8F818D78 */  lw     $at, %got(multirelocinstr_list)($gp)
/* 0045F798 8F888D78 */  lw     $t0, %got(multirelocinstr_list)($gp)
/* 0045F79C 8C630000 */  lw    $v1, ($v1)
/* 0045F7A0 AC220000 */  sw    $v0, ($at)
.L0045F7A4:
/* 0045F7A4 8F8A8BB0 */  lw     $t2, %got(bbindex)($gp)
/* 0045F7A8 8F998B88 */  lw     $t9, %got(proc_instr_base)($gp)
/* 0045F7AC 8D0C0000 */  lw    $t4, ($t0)
/* 0045F7B0 8D4A0000 */  lw    $t2, ($t2)
/* 0045F7B4 8F390000 */  lw    $t9, ($t9)
/* 0045F7B8 00034900 */  sll   $t1, $v1, 4
/* 0045F7BC 01891021 */  addu  $v0, $t4, $t1
/* 0045F7C0 8F8E8DAC */  lw     $t6, %got(sp_addu_index)($gp)
/* 0045F7C4 0159C021 */  addu  $t8, $t2, $t9
/* 0045F7C8 AC58000C */  sw    $t8, 0xc($v0)
/* 0045F7CC AC400000 */  sw    $zero, ($v0)
/* 0045F7D0 8DCE0000 */  lw    $t6, ($t6)
/* 0045F7D4 8F818D74 */  lw     $at, %got(nextmultirelocinstr)($gp)
/* 0045F7D8 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045F7DC 8FA600D4 */  lw    $a2, 0xd4($sp)
/* 0045F7E0 25CF0001 */  addiu $t7, $t6, 1
/* 0045F7E4 AC4F0004 */  sw    $t7, 4($v0)
/* 0045F7E8 246B0001 */  addiu $t3, $v1, 1
/* 0045F7EC 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0045F7F0 93A500D0 */  lbu   $a1, 0xd0($sp)
/* 0045F7F4 24070001 */  li    $a3, 1
/* 0045F7F8 AC2B0000 */  sw    $t3, ($at)
/* 0045F7FC 0320F809 */  jalr  $t9
/* 0045F800 24C6000C */   addiu $a2, $a2, 0xc
/* 0045F804 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F808 00000000 */  nop   
/* 0045F80C 8F8D8BB0 */  lw     $t5, %got(bbindex)($gp)
/* 0045F810 8F8C8B88 */  lw     $t4, %got(proc_instr_base)($gp)
/* 0045F814 8F9985FC */  lw    $t9, %call16(request_multi_relocinst)($gp)
/* 0045F818 8DAD0000 */  lw    $t5, ($t5)
/* 0045F81C 8D8C0000 */  lw    $t4, ($t4)
/* 0045F820 0320F809 */  jalr  $t9
/* 0045F824 01AC2021 */   addu  $a0, $t5, $t4
/* 0045F828 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F82C 24060010 */  li    $a2, 16
/* 0045F830 8F888D78 */  lw     $t0, %got(multirelocinstr_list)($gp)
/* 0045F834 8F838D74 */  lw     $v1, %got(nextmultirelocinstr)($gp)
/* 0045F838 8D090004 */  lw    $t1, 4($t0)
/* 0045F83C 8C630000 */  lw    $v1, ($v1)
/* 0045F840 00000000 */  nop   
/* 0045F844 0069082A */  slt   $at, $v1, $t1
/* 0045F848 1420000E */  bnez  $at, .L0045F884
/* 0045F84C 00602825 */   move  $a1, $v1
/* 0045F850 8F848D78 */  lw     $a0, %got(multirelocinstr_list)($gp)
/* 0045F854 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 0045F858 8D070000 */  lw    $a3, ($t0)
/* 0045F85C AFA00010 */  sw    $zero, 0x10($sp)
/* 0045F860 0320F809 */  jalr  $t9
/* 0045F864 24840004 */   addiu $a0, $a0, 4
/* 0045F868 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F86C 00000000 */  nop   
/* 0045F870 8F838D74 */  lw     $v1, %got(nextmultirelocinstr)($gp)
/* 0045F874 8F818D78 */  lw     $at, %got(multirelocinstr_list)($gp)
/* 0045F878 8F888D78 */  lw     $t0, %got(multirelocinstr_list)($gp)
/* 0045F87C 8C630000 */  lw    $v1, ($v1)
/* 0045F880 AC220000 */  sw    $v0, ($at)
.L0045F884:
/* 0045F884 8F988BB0 */  lw     $t8, %got(bbindex)($gp)
/* 0045F888 8F8E8B88 */  lw     $t6, %got(proc_instr_base)($gp)
/* 0045F88C 8D0A0000 */  lw    $t2, ($t0)
/* 0045F890 8F180000 */  lw    $t8, ($t8)
/* 0045F894 8DCE0000 */  lw    $t6, ($t6)
/* 0045F898 0003C900 */  sll   $t9, $v1, 4
/* 0045F89C 01591021 */  addu  $v0, $t2, $t9
/* 0045F8A0 8F8B8DAC */  lw     $t3, %got(sp_addu_index)($gp)
/* 0045F8A4 030E7821 */  addu  $t7, $t8, $t6
/* 0045F8A8 AC4F000C */  sw    $t7, 0xc($v0)
/* 0045F8AC AC400000 */  sw    $zero, ($v0)
/* 0045F8B0 8D6B0000 */  lw    $t3, ($t3)
/* 0045F8B4 8F818D74 */  lw     $at, %got(nextmultirelocinstr)($gp)
/* 0045F8B8 256D0001 */  addiu $t5, $t3, 1
/* 0045F8BC AC4D0004 */  sw    $t5, 4($v0)
/* 0045F8C0 246C0001 */  addiu $t4, $v1, 1
/* 0045F8C4 10000288 */  b     .L004602E8
/* 0045F8C8 AC2C0000 */   sw    $t4, ($at)
/* 0045F8CC 8FA900E0 */  lw    $t1, 0xe0($sp)
.L0045F8D0:
/* 0045F8D0 93AA00F7 */  lbu   $t2, 0xf7($sp)
/* 0045F8D4 112000F9 */  beqz  $t1, .L0045FCBC
/* 0045F8D8 8FAC00E4 */   lw    $t4, 0xe4($sp)
/* 0045F8DC 154000F6 */  bnez  $t2, .L0045FCB8
/* 0045F8E0 01202025 */   move  $a0, $t1
/* 0045F8E4 8F998610 */  lw    $t9, %call16(is_gp_relative)($gp)
/* 0045F8E8 8FA500E4 */  lw    $a1, 0xe4($sp)
/* 0045F8EC 0320F809 */  jalr  $t9
/* 0045F8F0 27A700CF */   addiu $a3, $sp, 0xcf
/* 0045F8F4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F8F8 1040006D */  beqz  $v0, .L0045FAB0
/* 0045F8FC 24050001 */   li    $a1, 1
/* 0045F900 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045F904 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0045F908 93A500D3 */  lbu   $a1, 0xd3($sp)
/* 0045F90C 8FA600E4 */  lw    $a2, 0xe4($sp)
/* 0045F910 93A700CF */  lbu   $a3, 0xcf($sp)
/* 0045F914 0320F809 */  jalr  $t9
/* 0045F918 00000000 */   nop   
/* 0045F91C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F920 8FA400E0 */  lw    $a0, 0xe0($sp)
/* 0045F924 8F998BB0 */  lw     $t9, %got(bbindex)($gp)
/* 0045F928 8F988B88 */  lw     $t8, %got(proc_instr_base)($gp)
/* 0045F92C 8F390000 */  lw    $t9, ($t9)
/* 0045F930 8F180000 */  lw    $t8, ($t8)
/* 0045F934 24050001 */  li    $a1, 1
/* 0045F938 03383021 */  addu  $a2, $t9, $t8
/* 0045F93C 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045F940 00000000 */  nop   
/* 0045F944 0320F809 */  jalr  $t9
/* 0045F948 00000000 */   nop   
/* 0045F94C 8FAE00EC */  lw    $t6, 0xec($sp)
/* 0045F950 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F954 29C10002 */  slti  $at, $t6, 2
/* 0045F958 14200264 */  bnez  $at, .L004602EC
/* 0045F95C 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 0045F960 93AF00D3 */  lbu   $t7, 0xd3($sp)
/* 0045F964 93AB00CF */  lbu   $t3, 0xcf($sp)
/* 0045F968 00000000 */  nop   
/* 0045F96C 15EB0008 */  bne   $t7, $t3, .L0045F990
/* 0045F970 8FA600E4 */   lw    $a2, 0xe4($sp)
/* 0045F974 8F998604 */  lw    $t9, %call16(basereg_error)($gp)
/* 0045F978 00000000 */  nop   
/* 0045F97C 0320F809 */  jalr  $t9
/* 0045F980 00000000 */   nop   
/* 0045F984 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F988 00000000 */  nop   
/* 0045F98C 8FA600E4 */  lw    $a2, 0xe4($sp)
.L0045F990:
/* 0045F990 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045F994 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0045F998 93A500D2 */  lbu   $a1, 0xd2($sp)
/* 0045F99C 93A700CF */  lbu   $a3, 0xcf($sp)
/* 0045F9A0 0320F809 */  jalr  $t9
/* 0045F9A4 24C60004 */   addiu $a2, $a2, 4
/* 0045F9A8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F9AC 8FA400E0 */  lw    $a0, 0xe0($sp)
/* 0045F9B0 8F8D8BB0 */  lw     $t5, %got(bbindex)($gp)
/* 0045F9B4 8F8C8B88 */  lw     $t4, %got(proc_instr_base)($gp)
/* 0045F9B8 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045F9BC 8DAD0000 */  lw    $t5, ($t5)
/* 0045F9C0 8D8C0000 */  lw    $t4, ($t4)
/* 0045F9C4 24050001 */  li    $a1, 1
/* 0045F9C8 0320F809 */  jalr  $t9
/* 0045F9CC 01AC3021 */   addu  $a2, $t5, $t4
/* 0045F9D0 8FAA00EC */  lw    $t2, 0xec($sp)
/* 0045F9D4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045F9D8 24010004 */  li    $at, 4
/* 0045F9DC 15410243 */  bne   $t2, $at, .L004602EC
/* 0045F9E0 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 0045F9E4 93A700CF */  lbu   $a3, 0xcf($sp)
/* 0045F9E8 93A900D2 */  lbu   $t1, 0xd2($sp)
/* 0045F9EC 93B900D1 */  lbu   $t9, 0xd1($sp)
/* 0045F9F0 11270003 */  beq   $t1, $a3, .L0045FA00
/* 0045F9F4 00000000 */   nop   
/* 0045F9F8 17270009 */  bne   $t9, $a3, .L0045FA20
/* 0045F9FC 8FA600E4 */   lw    $a2, 0xe4($sp)
.L0045FA00:
/* 0045FA00 8F998604 */  lw    $t9, %call16(basereg_error)($gp)
/* 0045FA04 00000000 */  nop   
/* 0045FA08 0320F809 */  jalr  $t9
/* 0045FA0C 00000000 */   nop   
/* 0045FA10 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FA14 93A700CF */  lbu   $a3, 0xcf($sp)
/* 0045FA18 00000000 */  nop   
/* 0045FA1C 8FA600E4 */  lw    $a2, 0xe4($sp)
.L0045FA20:
/* 0045FA20 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045FA24 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0045FA28 93A500D1 */  lbu   $a1, 0xd1($sp)
/* 0045FA2C 0320F809 */  jalr  $t9
/* 0045FA30 24C60008 */   addiu $a2, $a2, 8
/* 0045FA34 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FA38 8FA400E0 */  lw    $a0, 0xe0($sp)
/* 0045FA3C 8F988BB0 */  lw     $t8, %got(bbindex)($gp)
/* 0045FA40 8F8E8B88 */  lw     $t6, %got(proc_instr_base)($gp)
/* 0045FA44 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045FA48 8F180000 */  lw    $t8, ($t8)
/* 0045FA4C 8DCE0000 */  lw    $t6, ($t6)
/* 0045FA50 24050001 */  li    $a1, 1
/* 0045FA54 0320F809 */  jalr  $t9
/* 0045FA58 030E3021 */   addu  $a2, $t8, $t6
/* 0045FA5C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FA60 8FA600E4 */  lw    $a2, 0xe4($sp)
/* 0045FA64 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045FA68 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0045FA6C 93A500D0 */  lbu   $a1, 0xd0($sp)
/* 0045FA70 93A700CF */  lbu   $a3, 0xcf($sp)
/* 0045FA74 0320F809 */  jalr  $t9
/* 0045FA78 24C6000C */   addiu $a2, $a2, 0xc
/* 0045FA7C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FA80 8FA400E0 */  lw    $a0, 0xe0($sp)
/* 0045FA84 8F8F8BB0 */  lw     $t7, %got(bbindex)($gp)
/* 0045FA88 8F8B8B88 */  lw     $t3, %got(proc_instr_base)($gp)
/* 0045FA8C 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045FA90 8DEF0000 */  lw    $t7, ($t7)
/* 0045FA94 8D6B0000 */  lw    $t3, ($t3)
/* 0045FA98 24050001 */  li    $a1, 1
/* 0045FA9C 0320F809 */  jalr  $t9
/* 0045FAA0 01EB3021 */   addu  $a2, $t7, $t3
/* 0045FAA4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FAA8 10000210 */  b     .L004602EC
/* 0045FAAC 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L0045FAB0:
/* 0045FAB0 97AA00DA */  lhu   $t2, 0xda($sp)
/* 0045FAB4 8F998608 */  lw    $t9, %call16(setup_tempreg)($gp)
/* 0045FAB8 8FA400EC */  lw    $a0, 0xec($sp)
/* 0045FABC 93A600EB */  lbu   $a2, 0xeb($sp)
/* 0045FAC0 27AD00D4 */  addiu $t5, $sp, 0xd4
/* 0045FAC4 27AC00CB */  addiu $t4, $sp, 0xcb
/* 0045FAC8 AFAC0014 */  sw    $t4, 0x14($sp)
/* 0045FACC AFAD0010 */  sw    $t5, 0x10($sp)
/* 0045FAD0 27A700E0 */  addiu $a3, $sp, 0xe0
/* 0045FAD4 AFA00018 */  sw    $zero, 0x18($sp)
/* 0045FAD8 0320F809 */  jalr  $t9
/* 0045FADC AFAA001C */   sw    $t2, 0x1c($sp)
/* 0045FAE0 8FA900EC */  lw    $t1, 0xec($sp)
/* 0045FAE4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FAE8 29210002 */  slti  $at, $t1, 2
/* 0045FAEC 1020001B */  beqz  $at, .L0045FB5C
/* 0045FAF0 00000000 */   nop   
/* 0045FAF4 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 0045FAF8 8FA500D4 */  lw    $a1, 0xd4($sp)
/* 0045FAFC 0320F809 */  jalr  $t9
/* 0045FB00 00002025 */   move  $a0, $zero
/* 0045FB04 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FB08 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0045FB0C 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045FB10 93A500D3 */  lbu   $a1, 0xd3($sp)
/* 0045FB14 00403025 */  move  $a2, $v0
/* 0045FB18 0320F809 */  jalr  $t9
/* 0045FB1C 24070001 */   li    $a3, 1
/* 0045FB20 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FB24 8FA400E0 */  lw    $a0, 0xe0($sp)
/* 0045FB28 8F998BB0 */  lw     $t9, %got(bbindex)($gp)
/* 0045FB2C 8F988B88 */  lw     $t8, %got(proc_instr_base)($gp)
/* 0045FB30 8F390000 */  lw    $t9, ($t9)
/* 0045FB34 8F180000 */  lw    $t8, ($t8)
/* 0045FB38 93A500CB */  lbu   $a1, 0xcb($sp)
/* 0045FB3C 03383021 */  addu  $a2, $t9, $t8
/* 0045FB40 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045FB44 00000000 */  nop   
/* 0045FB48 0320F809 */  jalr  $t9
/* 0045FB4C 00000000 */   nop   
/* 0045FB50 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FB54 100001E5 */  b     .L004602EC
/* 0045FB58 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L0045FB5C:
/* 0045FB5C 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045FB60 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0045FB64 93A500D3 */  lbu   $a1, 0xd3($sp)
/* 0045FB68 8FA600D4 */  lw    $a2, 0xd4($sp)
/* 0045FB6C 0320F809 */  jalr  $t9
/* 0045FB70 24070001 */   li    $a3, 1
/* 0045FB74 8FAE00E0 */  lw    $t6, 0xe0($sp)
/* 0045FB78 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FB7C 11C0000B */  beqz  $t6, .L0045FBAC
/* 0045FB80 01C02025 */   move  $a0, $t6
/* 0045FB84 8F8F8BB0 */  lw     $t7, %got(bbindex)($gp)
/* 0045FB88 8F8B8B88 */  lw     $t3, %got(proc_instr_base)($gp)
/* 0045FB8C 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045FB90 8DEF0000 */  lw    $t7, ($t7)
/* 0045FB94 8D6B0000 */  lw    $t3, ($t3)
/* 0045FB98 93A500CB */  lbu   $a1, 0xcb($sp)
/* 0045FB9C 0320F809 */  jalr  $t9
/* 0045FBA0 01EB3021 */   addu  $a2, $t7, $t3
/* 0045FBA4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FBA8 00000000 */  nop   
.L0045FBAC:
/* 0045FBAC 8FA600D4 */  lw    $a2, 0xd4($sp)
/* 0045FBB0 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045FBB4 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0045FBB8 93A500D2 */  lbu   $a1, 0xd2($sp)
/* 0045FBBC 24070001 */  li    $a3, 1
/* 0045FBC0 0320F809 */  jalr  $t9
/* 0045FBC4 24C60004 */   addiu $a2, $a2, 4
/* 0045FBC8 8FAD00E0 */  lw    $t5, 0xe0($sp)
/* 0045FBCC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FBD0 11A0000B */  beqz  $t5, .L0045FC00
/* 0045FBD4 01A02025 */   move  $a0, $t5
/* 0045FBD8 8F8C8BB0 */  lw     $t4, %got(bbindex)($gp)
/* 0045FBDC 8F8A8B88 */  lw     $t2, %got(proc_instr_base)($gp)
/* 0045FBE0 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045FBE4 8D8C0000 */  lw    $t4, ($t4)
/* 0045FBE8 8D4A0000 */  lw    $t2, ($t2)
/* 0045FBEC 93A500CB */  lbu   $a1, 0xcb($sp)
/* 0045FBF0 0320F809 */  jalr  $t9
/* 0045FBF4 018A3021 */   addu  $a2, $t4, $t2
/* 0045FBF8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FBFC 00000000 */  nop   
.L0045FC00:
/* 0045FC00 8FA900EC */  lw    $t1, 0xec($sp)
/* 0045FC04 24010004 */  li    $at, 4
/* 0045FC08 152101B7 */  bne   $t1, $at, .L004602E8
/* 0045FC0C 24070001 */   li    $a3, 1
/* 0045FC10 8FA600D4 */  lw    $a2, 0xd4($sp)
/* 0045FC14 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045FC18 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0045FC1C 93A500D1 */  lbu   $a1, 0xd1($sp)
/* 0045FC20 0320F809 */  jalr  $t9
/* 0045FC24 24C60008 */   addiu $a2, $a2, 8
/* 0045FC28 8FB900E0 */  lw    $t9, 0xe0($sp)
/* 0045FC2C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FC30 1320000B */  beqz  $t9, .L0045FC60
/* 0045FC34 03202025 */   move  $a0, $t9
/* 0045FC38 8F988BB0 */  lw     $t8, %got(bbindex)($gp)
/* 0045FC3C 8F8E8B88 */  lw     $t6, %got(proc_instr_base)($gp)
/* 0045FC40 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045FC44 8F180000 */  lw    $t8, ($t8)
/* 0045FC48 8DCE0000 */  lw    $t6, ($t6)
/* 0045FC4C 93A500CB */  lbu   $a1, 0xcb($sp)
/* 0045FC50 0320F809 */  jalr  $t9
/* 0045FC54 030E3021 */   addu  $a2, $t8, $t6
/* 0045FC58 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FC5C 00000000 */  nop   
.L0045FC60:
/* 0045FC60 8FA600D4 */  lw    $a2, 0xd4($sp)
/* 0045FC64 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045FC68 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0045FC6C 93A500D0 */  lbu   $a1, 0xd0($sp)
/* 0045FC70 24070001 */  li    $a3, 1
/* 0045FC74 0320F809 */  jalr  $t9
/* 0045FC78 24C6000C */   addiu $a2, $a2, 0xc
/* 0045FC7C 8FAF00E0 */  lw    $t7, 0xe0($sp)
/* 0045FC80 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FC84 11E00198 */  beqz  $t7, .L004602E8
/* 0045FC88 01E02025 */   move  $a0, $t7
/* 0045FC8C 8F8B8BB0 */  lw     $t3, %got(bbindex)($gp)
/* 0045FC90 8F8D8B88 */  lw     $t5, %got(proc_instr_base)($gp)
/* 0045FC94 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045FC98 8D6B0000 */  lw    $t3, ($t3)
/* 0045FC9C 8DAD0000 */  lw    $t5, ($t5)
/* 0045FCA0 93A500CB */  lbu   $a1, 0xcb($sp)
/* 0045FCA4 0320F809 */  jalr  $t9
/* 0045FCA8 016D3021 */   addu  $a2, $t3, $t5
/* 0045FCAC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FCB0 1000018E */  b     .L004602EC
/* 0045FCB4 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L0045FCB8:
/* 0045FCB8 8FAC00E4 */  lw    $t4, 0xe4($sp)
.L0045FCBC:
/* 0045FCBC 00000000 */  nop   
/* 0045FCC0 29818000 */  slti  $at, $t4, -0x8000
/* 0045FCC4 14200003 */  bnez  $at, .L0045FCD4
/* 0045FCC8 29817FFC */   slti  $at, $t4, 0x7ffc
/* 0045FCCC 14200110 */  bnez  $at, .L00460110
/* 0045FCD0 24010048 */   li    $at, 72
.L0045FCD4:
/* 0045FCD4 8F8A8BB4 */  lw     $t2, %got(atflag)($gp)
/* 0045FCD8 00000000 */  nop   
/* 0045FCDC 914A0000 */  lbu   $t2, ($t2)
/* 0045FCE0 00000000 */  nop   
/* 0045FCE4 15400007 */  bnez  $t2, .L0045FD04
/* 0045FCE8 00000000 */   nop   
/* 0045FCEC 8F9984C8 */  lw    $t9, %call16(macro_error)($gp)
/* 0045FCF0 00000000 */  nop   
/* 0045FCF4 0320F809 */  jalr  $t9
/* 0045FCF8 00000000 */   nop   
/* 0045FCFC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FD00 00000000 */  nop   
.L0045FD04:
/* 0045FD04 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 0045FD08 8FA500E4 */  lw    $a1, 0xe4($sp)
/* 0045FD0C 0320F809 */  jalr  $t9
/* 0045FD10 24040001 */   li    $a0, 1
/* 0045FD14 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FD18 2404005A */  li    $a0, 90
/* 0045FD1C 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 0045FD20 24050001 */  li    $a1, 1
/* 0045FD24 00003025 */  move  $a2, $zero
/* 0045FD28 0320F809 */  jalr  $t9
/* 0045FD2C 00403825 */   move  $a3, $v0
/* 0045FD30 93A700EB */  lbu   $a3, 0xeb($sp)
/* 0045FD34 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FD38 24010048 */  li    $at, 72
/* 0045FD3C 10E10009 */  beq   $a3, $at, .L0045FD64
/* 0045FD40 00000000 */   nop   
/* 0045FD44 10E00007 */  beqz  $a3, .L0045FD64
/* 0045FD48 24040015 */   li    $a0, 21
/* 0045FD4C 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 0045FD50 24050001 */  li    $a1, 1
/* 0045FD54 0320F809 */  jalr  $t9
/* 0045FD58 24060001 */   li    $a2, 1
/* 0045FD5C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FD60 00000000 */  nop   
.L0045FD64:
/* 0045FD64 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 0045FD68 8FA500E4 */  lw    $a1, 0xe4($sp)
/* 0045FD6C 0320F809 */  jalr  $t9
/* 0045FD70 00002025 */   move  $a0, $zero
/* 0045FD74 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FD78 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0045FD7C 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045FD80 93A500D3 */  lbu   $a1, 0xd3($sp)
/* 0045FD84 00403025 */  move  $a2, $v0
/* 0045FD88 0320F809 */  jalr  $t9
/* 0045FD8C 24070001 */   li    $a3, 1
/* 0045FD90 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FD94 8FA400E0 */  lw    $a0, 0xe0($sp)
/* 0045FD98 8F898BB0 */  lw     $t1, %got(bbindex)($gp)
/* 0045FD9C 8F998B88 */  lw     $t9, %got(proc_instr_base)($gp)
/* 0045FDA0 8D290000 */  lw    $t1, ($t1)
/* 0045FDA4 8F390000 */  lw    $t9, ($t9)
/* 0045FDA8 24050003 */  li    $a1, 3
/* 0045FDAC 01393021 */  addu  $a2, $t1, $t9
/* 0045FDB0 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045FDB4 00000000 */  nop   
/* 0045FDB8 0320F809 */  jalr  $t9
/* 0045FDBC 00000000 */   nop   
/* 0045FDC0 8FB800EC */  lw    $t8, 0xec($sp)
/* 0045FDC4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FDC8 2B010002 */  slti  $at, $t8, 2
/* 0045FDCC 14200147 */  bnez  $at, .L004602EC
/* 0045FDD0 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 0045FDD4 8FA200E4 */  lw    $v0, 0xe4($sp)
/* 0045FDD8 24017FFC */  li    $at, 32764
/* 0045FDDC 1441001C */  bne   $v0, $at, .L0045FE50
/* 0045FDE0 00000000 */   nop   
/* 0045FDE4 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 0045FDE8 00002025 */  move  $a0, $zero
/* 0045FDEC 0320F809 */  jalr  $t9
/* 0045FDF0 24050004 */   li    $a1, 4
/* 0045FDF4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FDF8 24040054 */  li    $a0, 84
/* 0045FDFC 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 0045FE00 24050001 */  li    $a1, 1
/* 0045FE04 24060001 */  li    $a2, 1
/* 0045FE08 0320F809 */  jalr  $t9
/* 0045FE0C 00403825 */   move  $a3, $v0
/* 0045FE10 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FE14 8FA500E4 */  lw    $a1, 0xe4($sp)
/* 0045FE18 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 0045FE1C 00002025 */  move  $a0, $zero
/* 0045FE20 0320F809 */  jalr  $t9
/* 0045FE24 00000000 */   nop   
/* 0045FE28 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FE2C 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0045FE30 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045FE34 93A500D2 */  lbu   $a1, 0xd2($sp)
/* 0045FE38 00403025 */  move  $a2, $v0
/* 0045FE3C 0320F809 */  jalr  $t9
/* 0045FE40 24070001 */   li    $a3, 1
/* 0045FE44 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FE48 1000000E */  b     .L0045FE84
/* 0045FE4C 00000000 */   nop   
.L0045FE50:
/* 0045FE50 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 0045FE54 00002025 */  move  $a0, $zero
/* 0045FE58 0320F809 */  jalr  $t9
/* 0045FE5C 24450004 */   addiu $a1, $v0, 4
/* 0045FE60 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FE64 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0045FE68 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045FE6C 93A500D2 */  lbu   $a1, 0xd2($sp)
/* 0045FE70 00403025 */  move  $a2, $v0
/* 0045FE74 0320F809 */  jalr  $t9
/* 0045FE78 24070001 */   li    $a3, 1
/* 0045FE7C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FE80 00000000 */  nop   
.L0045FE84:
/* 0045FE84 8F8E8BB0 */  lw     $t6, %got(bbindex)($gp)
/* 0045FE88 8F8F8B88 */  lw     $t7, %got(proc_instr_base)($gp)
/* 0045FE8C 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045FE90 8DCE0000 */  lw    $t6, ($t6)
/* 0045FE94 8DEF0000 */  lw    $t7, ($t7)
/* 0045FE98 8FA400E0 */  lw    $a0, 0xe0($sp)
/* 0045FE9C 24050003 */  li    $a1, 3
/* 0045FEA0 0320F809 */  jalr  $t9
/* 0045FEA4 01CF3021 */   addu  $a2, $t6, $t7
/* 0045FEA8 8FAB00EC */  lw    $t3, 0xec($sp)
/* 0045FEAC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FEB0 24010004 */  li    $at, 4
/* 0045FEB4 1561010D */  bne   $t3, $at, .L004602EC
/* 0045FEB8 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 0045FEBC 8FAD00E4 */  lw    $t5, 0xe4($sp)
/* 0045FEC0 24017FF8 */  li    $at, 32760
/* 0045FEC4 15A10041 */  bne   $t5, $at, .L0045FFCC
/* 0045FEC8 00002025 */   move  $a0, $zero
/* 0045FECC 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 0045FED0 25AC0004 */  addiu $t4, $t5, 4
/* 0045FED4 AFAC00BC */  sw    $t4, 0xbc($sp)
/* 0045FED8 00002025 */  move  $a0, $zero
/* 0045FEDC 0320F809 */  jalr  $t9
/* 0045FEE0 24050008 */   li    $a1, 8
/* 0045FEE4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FEE8 24040054 */  li    $a0, 84
/* 0045FEEC 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 0045FEF0 24050001 */  li    $a1, 1
/* 0045FEF4 24060001 */  li    $a2, 1
/* 0045FEF8 0320F809 */  jalr  $t9
/* 0045FEFC 00403825 */   move  $a3, $v0
/* 0045FF00 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FF04 8FA500E4 */  lw    $a1, 0xe4($sp)
/* 0045FF08 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 0045FF0C 00002025 */  move  $a0, $zero
/* 0045FF10 0320F809 */  jalr  $t9
/* 0045FF14 00000000 */   nop   
/* 0045FF18 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FF1C 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0045FF20 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045FF24 93A500D1 */  lbu   $a1, 0xd1($sp)
/* 0045FF28 00403025 */  move  $a2, $v0
/* 0045FF2C 0320F809 */  jalr  $t9
/* 0045FF30 24070001 */   li    $a3, 1
/* 0045FF34 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FF38 8FA400E0 */  lw    $a0, 0xe0($sp)
/* 0045FF3C 8F8A8BB0 */  lw     $t2, %got(bbindex)($gp)
/* 0045FF40 8F898B88 */  lw     $t1, %got(proc_instr_base)($gp)
/* 0045FF44 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045FF48 8D4A0000 */  lw    $t2, ($t2)
/* 0045FF4C 8D290000 */  lw    $t1, ($t1)
/* 0045FF50 24050003 */  li    $a1, 3
/* 0045FF54 0320F809 */  jalr  $t9
/* 0045FF58 01493021 */   addu  $a2, $t2, $t1
/* 0045FF5C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FF60 8FA500BC */  lw    $a1, 0xbc($sp)
/* 0045FF64 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 0045FF68 00002025 */  move  $a0, $zero
/* 0045FF6C 0320F809 */  jalr  $t9
/* 0045FF70 00000000 */   nop   
/* 0045FF74 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FF78 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0045FF7C 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045FF80 93A500D0 */  lbu   $a1, 0xd0($sp)
/* 0045FF84 00403025 */  move  $a2, $v0
/* 0045FF88 0320F809 */  jalr  $t9
/* 0045FF8C 24070001 */   li    $a3, 1
/* 0045FF90 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FF94 8FA400E0 */  lw    $a0, 0xe0($sp)
/* 0045FF98 8F998BB0 */  lw     $t9, %got(bbindex)($gp)
/* 0045FF9C 8F988B88 */  lw     $t8, %got(proc_instr_base)($gp)
/* 0045FFA0 8F390000 */  lw    $t9, ($t9)
/* 0045FFA4 8F180000 */  lw    $t8, ($t8)
/* 0045FFA8 24050003 */  li    $a1, 3
/* 0045FFAC 03383021 */  addu  $a2, $t9, $t8
/* 0045FFB0 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045FFB4 00000000 */  nop   
/* 0045FFB8 0320F809 */  jalr  $t9
/* 0045FFBC 00000000 */   nop   
/* 0045FFC0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FFC4 100000C9 */  b     .L004602EC
/* 0045FFC8 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L0045FFCC:
/* 0045FFCC 8FA500E4 */  lw    $a1, 0xe4($sp)
/* 0045FFD0 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 0045FFD4 24A50008 */  addiu $a1, $a1, 8
/* 0045FFD8 0320F809 */  jalr  $t9
/* 0045FFDC AFA500BC */   sw    $a1, 0xbc($sp)
/* 0045FFE0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045FFE4 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0045FFE8 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045FFEC 93A500D1 */  lbu   $a1, 0xd1($sp)
/* 0045FFF0 00403025 */  move  $a2, $v0
/* 0045FFF4 0320F809 */  jalr  $t9
/* 0045FFF8 24070001 */   li    $a3, 1
/* 0045FFFC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00460000 8FA400E0 */  lw    $a0, 0xe0($sp)
/* 00460004 8F8E8BB0 */  lw     $t6, %got(bbindex)($gp)
/* 00460008 8F8F8B88 */  lw     $t7, %got(proc_instr_base)($gp)
/* 0046000C 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00460010 8DCE0000 */  lw    $t6, ($t6)
/* 00460014 8DEF0000 */  lw    $t7, ($t7)
/* 00460018 24050003 */  li    $a1, 3
/* 0046001C 0320F809 */  jalr  $t9
/* 00460020 01CF3021 */   addu  $a2, $t6, $t7
/* 00460024 8FAB00E4 */  lw    $t3, 0xe4($sp)
/* 00460028 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046002C 24017FF4 */  li    $at, 32756
/* 00460030 1561001D */  bne   $t3, $at, .L004600A8
/* 00460034 8FA500E4 */   lw    $a1, 0xe4($sp)
/* 00460038 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 0046003C 00002025 */  move  $a0, $zero
/* 00460040 0320F809 */  jalr  $t9
/* 00460044 24050004 */   li    $a1, 4
/* 00460048 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046004C 24040054 */  li    $a0, 84
/* 00460050 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00460054 24050001 */  li    $a1, 1
/* 00460058 24060001 */  li    $a2, 1
/* 0046005C 0320F809 */  jalr  $t9
/* 00460060 00403825 */   move  $a3, $v0
/* 00460064 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00460068 8FA500BC */  lw    $a1, 0xbc($sp)
/* 0046006C 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00460070 00002025 */  move  $a0, $zero
/* 00460074 0320F809 */  jalr  $t9
/* 00460078 00000000 */   nop   
/* 0046007C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00460080 97A400CC */  lhu   $a0, 0xcc($sp)
/* 00460084 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00460088 93A500D0 */  lbu   $a1, 0xd0($sp)
/* 0046008C 00403025 */  move  $a2, $v0
/* 00460090 0320F809 */  jalr  $t9
/* 00460094 24070001 */   li    $a3, 1
/* 00460098 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046009C 1000000F */  b     .L004600DC
/* 004600A0 00000000 */   nop   
/* 004600A4 8FA500E4 */  lw    $a1, 0xe4($sp)
.L004600A8:
/* 004600A8 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 004600AC 00002025 */  move  $a0, $zero
/* 004600B0 0320F809 */  jalr  $t9
/* 004600B4 24A5000C */   addiu $a1, $a1, 0xc
/* 004600B8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004600BC 97A400CC */  lhu   $a0, 0xcc($sp)
/* 004600C0 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 004600C4 93A500D0 */  lbu   $a1, 0xd0($sp)
/* 004600C8 00403025 */  move  $a2, $v0
/* 004600CC 0320F809 */  jalr  $t9
/* 004600D0 24070001 */   li    $a3, 1
/* 004600D4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004600D8 00000000 */  nop   
.L004600DC:
/* 004600DC 8F8D8BB0 */  lw     $t5, %got(bbindex)($gp)
/* 004600E0 8F8C8B88 */  lw     $t4, %got(proc_instr_base)($gp)
/* 004600E4 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 004600E8 8DAD0000 */  lw    $t5, ($t5)
/* 004600EC 8D8C0000 */  lw    $t4, ($t4)
/* 004600F0 8FA400E0 */  lw    $a0, 0xe0($sp)
/* 004600F4 24050003 */  li    $a1, 3
/* 004600F8 0320F809 */  jalr  $t9
/* 004600FC 01AC3021 */   addu  $a2, $t5, $t4
/* 00460100 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00460104 10000079 */  b     .L004602EC
/* 00460108 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 0046010C 24010048 */  li    $at, 72
.L00460110:
/* 00460110 14C10003 */  bne   $a2, $at, .L00460120
/* 00460114 93AA00F7 */   lbu   $t2, 0xf7($sp)
/* 00460118 A3A000EB */  sb    $zero, 0xeb($sp)
/* 0046011C 93AA00F7 */  lbu   $t2, 0xf7($sp)
.L00460120:
/* 00460120 8FA900E0 */  lw    $t1, 0xe0($sp)
/* 00460124 11400047 */  beqz  $t2, .L00460244
/* 00460128 00000000 */   nop   
/* 0046012C 11200045 */  beqz  $t1, .L00460244
/* 00460130 00000000 */   nop   
/* 00460134 8FB900EC */  lw    $t9, 0xec($sp)
/* 00460138 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0046013C 2B210002 */  slti  $at, $t9, 2
/* 00460140 1420002E */  bnez  $at, .L004601FC
/* 00460144 24050001 */   li    $a1, 1
/* 00460148 8F99848C */  lw    $t9, %call16(loadimmed)($gp)
/* 0046014C 00002025 */  move  $a0, $zero
/* 00460150 0320F809 */  jalr  $t9
/* 00460154 01203025 */   move  $a2, $t1
/* 00460158 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046015C 93A700EB */  lbu   $a3, 0xeb($sp)
/* 00460160 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00460164 24040015 */  li    $a0, 21
/* 00460168 24050001 */  li    $a1, 1
/* 0046016C 0320F809 */  jalr  $t9
/* 00460170 24060001 */   li    $a2, 1
/* 00460174 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00460178 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0046017C 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00460180 93A500D3 */  lbu   $a1, 0xd3($sp)
/* 00460184 00003025 */  move  $a2, $zero
/* 00460188 0320F809 */  jalr  $t9
/* 0046018C 24070001 */   li    $a3, 1
/* 00460190 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00460194 97A400CC */  lhu   $a0, 0xcc($sp)
/* 00460198 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0046019C 93A500D2 */  lbu   $a1, 0xd2($sp)
/* 004601A0 24060004 */  li    $a2, 4
/* 004601A4 0320F809 */  jalr  $t9
/* 004601A8 24070001 */   li    $a3, 1
/* 004601AC 8FB800EC */  lw    $t8, 0xec($sp)
/* 004601B0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004601B4 24010004 */  li    $at, 4
/* 004601B8 1701004B */  bne   $t8, $at, .L004602E8
/* 004601BC 24060008 */   li    $a2, 8
/* 004601C0 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 004601C4 97A400CC */  lhu   $a0, 0xcc($sp)
/* 004601C8 93A500D1 */  lbu   $a1, 0xd1($sp)
/* 004601CC 0320F809 */  jalr  $t9
/* 004601D0 24070001 */   li    $a3, 1
/* 004601D4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004601D8 97A400CC */  lhu   $a0, 0xcc($sp)
/* 004601DC 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 004601E0 93A500D0 */  lbu   $a1, 0xd0($sp)
/* 004601E4 2406000C */  li    $a2, 12
/* 004601E8 0320F809 */  jalr  $t9
/* 004601EC 24070001 */   li    $a3, 1
/* 004601F0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004601F4 1000003D */  b     .L004602EC
/* 004601F8 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L004601FC:
/* 004601FC 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00460200 93A500D3 */  lbu   $a1, 0xd3($sp)
/* 00460204 93A700EB */  lbu   $a3, 0xeb($sp)
/* 00460208 0320F809 */  jalr  $t9
/* 0046020C 00003025 */   move  $a2, $zero
/* 00460210 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00460214 8FA400E0 */  lw    $a0, 0xe0($sp)
/* 00460218 8F8E8BB0 */  lw     $t6, %got(bbindex)($gp)
/* 0046021C 8F8F8B88 */  lw     $t7, %got(proc_instr_base)($gp)
/* 00460220 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00460224 8DCE0000 */  lw    $t6, ($t6)
/* 00460228 8DEF0000 */  lw    $t7, ($t7)
/* 0046022C 24050009 */  li    $a1, 9
/* 00460230 0320F809 */  jalr  $t9
/* 00460234 01CF3021 */   addu  $a2, $t6, $t7
/* 00460238 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046023C 1000002B */  b     .L004602EC
/* 00460240 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00460244:
/* 00460244 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00460248 97A400CC */  lhu   $a0, 0xcc($sp)
/* 0046024C 93A500D3 */  lbu   $a1, 0xd3($sp)
/* 00460250 8FA600E4 */  lw    $a2, 0xe4($sp)
/* 00460254 93A700EB */  lbu   $a3, 0xeb($sp)
/* 00460258 0320F809 */  jalr  $t9
/* 0046025C 00000000 */   nop   
/* 00460260 8FAB00EC */  lw    $t3, 0xec($sp)
/* 00460264 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00460268 29610002 */  slti  $at, $t3, 2
/* 0046026C 1420001F */  bnez  $at, .L004602EC
/* 00460270 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 00460274 8FA600E4 */  lw    $a2, 0xe4($sp)
/* 00460278 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0046027C 97A400CC */  lhu   $a0, 0xcc($sp)
/* 00460280 93A500D2 */  lbu   $a1, 0xd2($sp)
/* 00460284 93A700EB */  lbu   $a3, 0xeb($sp)
/* 00460288 0320F809 */  jalr  $t9
/* 0046028C 24C60004 */   addiu $a2, $a2, 4
/* 00460290 8FAD00EC */  lw    $t5, 0xec($sp)
/* 00460294 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00460298 24010004 */  li    $at, 4
/* 0046029C 15A10013 */  bne   $t5, $at, .L004602EC
/* 004602A0 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 004602A4 8FA600E4 */  lw    $a2, 0xe4($sp)
/* 004602A8 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 004602AC 97A400CC */  lhu   $a0, 0xcc($sp)
/* 004602B0 93A500D1 */  lbu   $a1, 0xd1($sp)
/* 004602B4 93A700EB */  lbu   $a3, 0xeb($sp)
/* 004602B8 0320F809 */  jalr  $t9
/* 004602BC 24C60008 */   addiu $a2, $a2, 8
/* 004602C0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004602C4 8FA600E4 */  lw    $a2, 0xe4($sp)
/* 004602C8 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 004602CC 97A400CC */  lhu   $a0, 0xcc($sp)
/* 004602D0 93A500D0 */  lbu   $a1, 0xd0($sp)
/* 004602D4 93A700EB */  lbu   $a3, 0xeb($sp)
/* 004602D8 0320F809 */  jalr  $t9
/* 004602DC 24C6000C */   addiu $a2, $a2, 0xc
/* 004602E0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004602E4 00000000 */  nop   
.L004602E8:
/* 004602E8 8FBF00B4 */  lw    $ra, 0xb4($sp)
.L004602EC:
/* 004602EC 27BD00D8 */  addiu $sp, $sp, 0xd8
/* 004602F0 03E00008 */  jr    $ra
/* 004602F4 00000000 */   nop   

    .type genfpmultiple, @function
    .size genfpmultiple, .-genfpmultiple
    .end genfpmultiple

glabel enforce_destreg
    .ent enforce_destreg
    # 004638F8 func_004638F8
    # 00464528 parseafra
    # 004656D4 parseafri_fp
/* 004602F8 3C1C0FBD */  .cpload $t9
/* 004602FC 279C9F68 */  
/* 00460300 0399E021 */  
/* 00460304 27BDFF98 */  addiu $sp, $sp, -0x68
/* 00460308 24AEFFFF */  addiu $t6, $a1, -1
/* 0046030C 008E7824 */  and   $t7, $a0, $t6
/* 00460310 AFBF0064 */  sw    $ra, 0x64($sp)
/* 00460314 AFBC0060 */  sw    $gp, 0x60($sp)
/* 00460318 11E0002A */  beqz  $t7, .L004603C4
/* 0046031C AFA40068 */   sw    $a0, 0x68($sp)
/* 00460320 8F988070 */  lw    $t8, %got(RO_1001C400)($gp)
/* 00460324 03A04825 */  move  $t1, $sp
/* 00460328 2718C400 */  addiu $t8, %lo(RO_1001C400) # addiu $t8, $t8, -0x3c00
/* 0046032C 27080048 */  addiu $t0, $t8, 0x48
.L00460330:
/* 00460330 8B010000 */  lwl   $at, ($t8)
/* 00460334 9B010003 */  lwr   $at, 3($t8)
/* 00460338 2718000C */  addiu $t8, $t8, 0xc
/* 0046033C A9210000 */  swl   $at, ($t1)
/* 00460340 B9210003 */  swr   $at, 3($t1)
/* 00460344 8B01FFF8 */  lwl   $at, -8($t8)
/* 00460348 9B01FFFB */  lwr   $at, -5($t8)
/* 0046034C 2529000C */  addiu $t1, $t1, 0xc
/* 00460350 A921FFF8 */  swl   $at, -8($t1)
/* 00460354 B921FFFB */  swr   $at, -5($t1)
/* 00460358 8B01FFFC */  lwl   $at, -4($t8)
/* 0046035C 9B01FFFF */  lwr   $at, -1($t8)
/* 00460360 00000000 */  nop   
/* 00460364 A921FFFC */  swl   $at, -4($t1)
/* 00460368 1708FFF1 */  bne   $t8, $t0, .L00460330
/* 0046036C B921FFFF */   swr   $at, -1($t1)
/* 00460370 8B010000 */  lwl   $at, ($t8)
/* 00460374 9B010003 */  lwr   $at, 3($t8)
/* 00460378 8F8A8C68 */  lw     $t2, %got(emptystring)($gp)
/* 0046037C A9210000 */  swl   $at, ($t1)
/* 00460380 B9210003 */  swr   $at, 3($t1)
/* 00460384 8B080004 */  lwl   $t0, 4($t8)
/* 00460388 9B080007 */  lwr   $t0, 7($t8)
/* 0046038C 240B0002 */  li    $t3, 2
/* 00460390 A9280004 */  swl   $t0, 4($t1)
/* 00460394 B9280007 */  swr   $t0, 7($t1)
/* 00460398 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0046039C 8D4A0000 */  lw    $t2, ($t2)
/* 004603A0 8FA7000C */  lw    $a3, 0xc($sp)
/* 004603A4 8FA60008 */  lw    $a2, 8($sp)
/* 004603A8 8FA50004 */  lw    $a1, 4($sp)
/* 004603AC 8FA40000 */  lw    $a0, ($sp)
/* 004603B0 AFAB0054 */  sw    $t3, 0x54($sp)
/* 004603B4 0320F809 */  jalr  $t9
/* 004603B8 AFAA0050 */   sw    $t2, 0x50($sp)
/* 004603BC 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004603C0 00000000 */  nop   
.L004603C4:
/* 004603C4 8FBF0064 */  lw    $ra, 0x64($sp)
/* 004603C8 27BD0068 */  addiu $sp, $sp, 0x68
/* 004603CC 03E00008 */  jr    $ra
/* 004603D0 00000000 */   nop   

    .type enforce_destreg, @function
    .size enforce_destreg, .-enforce_destreg
    .end enforce_destreg

    .type func_004603D4, @function
func_004603D4:
    # 004604C0 do_parseafra
/* 004603D4 3C1C0FBD */  .cpload $t9
/* 004603D8 279C9E8C */  
/* 004603DC 0399E021 */  
/* 004603E0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 004603E4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 004603E8 AFBC0018 */  sw    $gp, 0x18($sp)
/* 004603EC 90430007 */  lbu   $v1, 7($v0)
/* 004603F0 904E0013 */  lbu   $t6, 0x13($v0)
/* 004603F4 2C6F0020 */  sltiu $t7, $v1, 0x20
/* 004603F8 106E0020 */  beq   $v1, $t6, .L0046047C
/* 004603FC 000FC023 */   negu  $t8, $t7
/* 00460400 3C017FFF */  lui   $at, 0x7fff
/* 00460404 3421FFFF */  ori   $at, $at, 0xffff
/* 00460408 0301C824 */  and   $t9, $t8, $at
/* 0046040C 00794004 */  sllv  $t0, $t9, $v1
/* 00460410 0501001A */  bgez  $t0, .L0046047C
/* 00460414 00000000 */   nop   
/* 00460418 94490002 */  lhu   $t1, 2($v0)
/* 0046041C 8F8B8D1C */  lw     $t3, %got(asm2op)($gp)
/* 00460420 00095040 */  sll   $t2, $t1, 1
/* 00460424 014B6021 */  addu  $t4, $t2, $t3
/* 00460428 958D0000 */  lhu   $t5, ($t4)
/* 0046042C 00000000 */  nop   
/* 00460430 2DAE0160 */  sltiu $t6, $t5, 0x160
/* 00460434 11C0000D */  beqz  $t6, .L0046046C
/* 00460438 000D7943 */   sra   $t7, $t5, 5
/* 0046043C 8F8A8080 */  lw    $t2, %got(D_10004E24)($gp)
/* 00460440 8F998D50 */  lw     $t9, %got(storeops)($gp)
/* 00460444 000FC080 */  sll   $t8, $t7, 2
/* 00460448 254A4E24 */  addiu $t2, %lo(D_10004E24) # addiu $t2, $t2, 0x4e24
/* 0046044C 01585821 */  addu  $t3, $t2, $t8
/* 00460450 03194021 */  addu  $t0, $t8, $t9
/* 00460454 8D090000 */  lw    $t1, ($t0)
/* 00460458 8D6C0000 */  lw    $t4, ($t3)
/* 0046045C 00000000 */  nop   
/* 00460460 012C7825 */  or    $t7, $t1, $t4
/* 00460464 01AFC804 */  sllv  $t9, $t7, $t5
/* 00460468 2B2E0000 */  slti  $t6, $t9, 0
.L0046046C:
/* 0046046C 15C00003 */  bnez  $t6, .L0046047C
/* 00460470 00000000 */   nop   
/* 00460474 1000000E */  b     .L004604B0
/* 00460478 306400FF */   andi  $a0, $v1, 0xff
.L0046047C:
/* 0046047C 8F8A8BB4 */  lw     $t2, %got(atflag)($gp)
/* 00460480 24040001 */  li    $a0, 1
/* 00460484 914A0000 */  lbu   $t2, ($t2)
/* 00460488 00000000 */  nop   
/* 0046048C 15400009 */  bnez  $t2, .L004604B4
/* 00460490 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00460494 8F9984C8 */  lw    $t9, %call16(macro_error)($gp)
/* 00460498 A3A40023 */  sb    $a0, 0x23($sp)
/* 0046049C 0320F809 */  jalr  $t9
/* 004604A0 00000000 */   nop   
/* 004604A4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004604A8 93A40023 */  lbu   $a0, 0x23($sp)
/* 004604AC 00000000 */  nop   
.L004604B0:
/* 004604B0 8FBF001C */  lw    $ra, 0x1c($sp)
.L004604B4:
/* 004604B4 27BD0028 */  addiu $sp, $sp, 0x28
/* 004604B8 03E00008 */  jr    $ra
/* 004604BC 00801025 */   move  $v0, $a0

glabel do_parseafra
    .ent do_parseafra
    # 0041E40C func_0041E40C
    # 004591BC parse_dli_dla
    # 00463428 func_00463428
    # 0046383C func_0046383C
    # 00464528 parseafra
    # 004656D4 parseafri_fp
/* 004604C0 3C1C0FBD */  .cpload $t9
/* 004604C4 279C9DA0 */  
/* 004604C8 0399E021 */  
/* 004604CC 27BDFF88 */  addiu $sp, $sp, -0x78
/* 004604D0 AFA40078 */  sw    $a0, 0x78($sp)
/* 004604D4 97AE007A */  lhu   $t6, 0x7a($sp)
/* 004604D8 24020163 */  li    $v0, 355
/* 004604DC AFBF0064 */  sw    $ra, 0x64($sp)
/* 004604E0 AFBC0060 */  sw    $gp, 0x60($sp)
/* 004604E4 AFA5007C */  sw    $a1, 0x7c($sp)
/* 004604E8 AFA60080 */  sw    $a2, 0x80($sp)
/* 004604EC 11C20004 */  beq   $t6, $v0, .L00460500
/* 004604F0 AFA70084 */   sw    $a3, 0x84($sp)
/* 004604F4 2403002E */  li    $v1, 46
/* 004604F8 15C30005 */  bne   $t6, $v1, .L00460510
/* 004604FC 97B8007A */   lhu   $t8, 0x7a($sp)
.L00460500:
/* 00460500 93AF007F */  lbu   $t7, 0x7f($sp)
/* 00460504 2403002E */  li    $v1, 46
/* 00460508 A3AF0075 */  sb    $t7, 0x75($sp)
/* 0046050C 97B8007A */  lhu   $t8, 0x7a($sp)
.L00460510:
/* 00460510 2401000B */  li    $at, 11
/* 00460514 170100B0 */  bne   $t8, $at, .L004607D8
/* 00460518 8FAB0080 */   lw    $t3, 0x80($sp)
/* 0046051C 8F998AF8 */  lw     $t9, %got(picflag)($gp)
/* 00460520 8FAE0080 */  lw    $t6, 0x80($sp)
/* 00460524 8F390000 */  lw    $t9, ($t9)
/* 00460528 00000000 */  nop   
/* 0046052C 1720002B */  bnez  $t9, .L004605DC
/* 00460530 00000000 */   nop   
/* 00460534 8F888070 */  lw    $t0, %got(RO_1001C4F0)($gp)
/* 00460538 03A05825 */  move  $t3, $sp
/* 0046053C 2508C4F0 */  addiu $t0, %lo(RO_1001C4F0) # addiu $t0, $t0, -0x3b10
/* 00460540 250A0048 */  addiu $t2, $t0, 0x48
.L00460544:
/* 00460544 89010000 */  lwl   $at, ($t0)
/* 00460548 99010003 */  lwr   $at, 3($t0)
/* 0046054C 2508000C */  addiu $t0, $t0, 0xc
/* 00460550 A9610000 */  swl   $at, ($t3)
/* 00460554 B9610003 */  swr   $at, 3($t3)
/* 00460558 8901FFF8 */  lwl   $at, -8($t0)
/* 0046055C 9901FFFB */  lwr   $at, -5($t0)
/* 00460560 256B000C */  addiu $t3, $t3, 0xc
/* 00460564 A961FFF8 */  swl   $at, -8($t3)
/* 00460568 B961FFFB */  swr   $at, -5($t3)
/* 0046056C 8901FFFC */  lwl   $at, -4($t0)
/* 00460570 9901FFFF */  lwr   $at, -1($t0)
/* 00460574 00000000 */  nop   
/* 00460578 A961FFFC */  swl   $at, -4($t3)
/* 0046057C 150AFFF1 */  bne   $t0, $t2, .L00460544
/* 00460580 B961FFFF */   swr   $at, -1($t3)
/* 00460584 89010000 */  lwl   $at, ($t0)
/* 00460588 99010003 */  lwr   $at, 3($t0)
/* 0046058C 8F8C8C68 */  lw     $t4, %got(emptystring)($gp)
/* 00460590 A9610000 */  swl   $at, ($t3)
/* 00460594 B9610003 */  swr   $at, 3($t3)
/* 00460598 890A0004 */  lwl   $t2, 4($t0)
/* 0046059C 990A0007 */  lwr   $t2, 7($t0)
/* 004605A0 240D0001 */  li    $t5, 1
/* 004605A4 A96A0004 */  swl   $t2, 4($t3)
/* 004605A8 B96A0007 */  swr   $t2, 7($t3)
/* 004605AC 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 004605B0 8D8C0000 */  lw    $t4, ($t4)
/* 004605B4 8FA7000C */  lw    $a3, 0xc($sp)
/* 004605B8 8FA60008 */  lw    $a2, 8($sp)
/* 004605BC 8FA50004 */  lw    $a1, 4($sp)
/* 004605C0 8FA40000 */  lw    $a0, ($sp)
/* 004605C4 AFAD0054 */  sw    $t5, 0x54($sp)
/* 004605C8 0320F809 */  jalr  $t9
/* 004605CC AFAC0050 */   sw    $t4, 0x50($sp)
/* 004605D0 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004605D4 100003C5 */  b     .L004614EC
/* 004605D8 8FBF0064 */   lw    $ra, 0x64($sp)
.L004605DC:
/* 004605DC 11C00007 */  beqz  $t6, .L004605FC
/* 004605E0 00000000 */   nop   
/* 004605E4 8FAF0084 */  lw    $t7, 0x84($sp)
/* 004605E8 93B8008B */  lbu   $t8, 0x8b($sp)
/* 004605EC 15E00003 */  bnez  $t7, .L004605FC
/* 004605F0 24010048 */   li    $at, 72
/* 004605F4 1301002B */  beq   $t8, $at, .L004606A4
/* 004605F8 00000000 */   nop   
.L004605FC:
/* 004605FC 8F998070 */  lw    $t9, %got(RO_1001C4A0)($gp)
/* 00460600 03A04025 */  move  $t0, $sp
/* 00460604 2739C4A0 */  addiu $t9, %lo(RO_1001C4A0) # addiu $t9, $t9, -0x3b60
/* 00460608 272A0048 */  addiu $t2, $t9, 0x48
.L0046060C:
/* 0046060C 8B210000 */  lwl   $at, ($t9)
/* 00460610 9B210003 */  lwr   $at, 3($t9)
/* 00460614 2739000C */  addiu $t9, $t9, 0xc
/* 00460618 A9010000 */  swl   $at, ($t0)
/* 0046061C B9010003 */  swr   $at, 3($t0)
/* 00460620 8B21FFF8 */  lwl   $at, -8($t9)
/* 00460624 9B21FFFB */  lwr   $at, -5($t9)
/* 00460628 2508000C */  addiu $t0, $t0, 0xc
/* 0046062C A901FFF8 */  swl   $at, -8($t0)
/* 00460630 B901FFFB */  swr   $at, -5($t0)
/* 00460634 8B21FFFC */  lwl   $at, -4($t9)
/* 00460638 9B21FFFF */  lwr   $at, -1($t9)
/* 0046063C 00000000 */  nop   
/* 00460640 A901FFFC */  swl   $at, -4($t0)
/* 00460644 172AFFF1 */  bne   $t9, $t2, .L0046060C
/* 00460648 B901FFFF */   swr   $at, -1($t0)
/* 0046064C 8B210000 */  lwl   $at, ($t9)
/* 00460650 9B210003 */  lwr   $at, 3($t9)
/* 00460654 8F8B8C68 */  lw     $t3, %got(emptystring)($gp)
/* 00460658 A9010000 */  swl   $at, ($t0)
/* 0046065C B9010003 */  swr   $at, 3($t0)
/* 00460660 8B2A0004 */  lwl   $t2, 4($t9)
/* 00460664 9B2A0007 */  lwr   $t2, 7($t9)
/* 00460668 240C0001 */  li    $t4, 1
/* 0046066C A90A0004 */  swl   $t2, 4($t0)
/* 00460670 B90A0007 */  swr   $t2, 7($t0)
/* 00460674 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00460678 8D6B0000 */  lw    $t3, ($t3)
/* 0046067C 8FA7000C */  lw    $a3, 0xc($sp)
/* 00460680 8FA60008 */  lw    $a2, 8($sp)
/* 00460684 8FA50004 */  lw    $a1, 4($sp)
/* 00460688 8FA40000 */  lw    $a0, ($sp)
/* 0046068C AFAC0054 */  sw    $t4, 0x54($sp)
/* 00460690 0320F809 */  jalr  $t9
/* 00460694 AFAB0050 */   sw    $t3, 0x50($sp)
/* 00460698 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0046069C 10000393 */  b     .L004614EC
/* 004606A0 8FBF0064 */   lw    $ra, 0x64($sp)
.L004606A4:
/* 004606A4 8F9985F4 */  lw    $t9, %call16(islocalsym)($gp)
/* 004606A8 8FA40080 */  lw    $a0, 0x80($sp)
/* 004606AC 0320F809 */  jalr  $t9
/* 004606B0 00000000 */   nop   
/* 004606B4 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004606B8 1040002B */  beqz  $v0, .L00460768
/* 004606BC 00000000 */   nop   
/* 004606C0 8F8D8070 */  lw    $t5, %got(RO_1001C450)($gp)
/* 004606C4 03A0C025 */  move  $t8, $sp
/* 004606C8 25ADC450 */  addiu $t5, %lo(RO_1001C450) # addiu $t5, $t5, -0x3bb0
/* 004606CC 25AF0048 */  addiu $t7, $t5, 0x48
.L004606D0:
/* 004606D0 89A10000 */  lwl   $at, ($t5)
/* 004606D4 99A10003 */  lwr   $at, 3($t5)
/* 004606D8 25AD000C */  addiu $t5, $t5, 0xc
/* 004606DC AB010000 */  swl   $at, ($t8)
/* 004606E0 BB010003 */  swr   $at, 3($t8)
/* 004606E4 89A1FFF8 */  lwl   $at, -8($t5)
/* 004606E8 99A1FFFB */  lwr   $at, -5($t5)
/* 004606EC 2718000C */  addiu $t8, $t8, 0xc
/* 004606F0 AB01FFF8 */  swl   $at, -8($t8)
/* 004606F4 BB01FFFB */  swr   $at, -5($t8)
/* 004606F8 89A1FFFC */  lwl   $at, -4($t5)
/* 004606FC 99A1FFFF */  lwr   $at, -1($t5)
/* 00460700 00000000 */  nop   
/* 00460704 AB01FFFC */  swl   $at, -4($t8)
/* 00460708 15AFFFF1 */  bne   $t5, $t7, .L004606D0
/* 0046070C BB01FFFF */   swr   $at, -1($t8)
/* 00460710 89A10000 */  lwl   $at, ($t5)
/* 00460714 99A10003 */  lwr   $at, 3($t5)
/* 00460718 8F898C68 */  lw     $t1, %got(emptystring)($gp)
/* 0046071C AB010000 */  swl   $at, ($t8)
/* 00460720 BB010003 */  swr   $at, 3($t8)
/* 00460724 89AF0004 */  lwl   $t7, 4($t5)
/* 00460728 99AF0007 */  lwr   $t7, 7($t5)
/* 0046072C 240A0001 */  li    $t2, 1
/* 00460730 AB0F0004 */  swl   $t7, 4($t8)
/* 00460734 BB0F0007 */  swr   $t7, 7($t8)
/* 00460738 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0046073C 8D290000 */  lw    $t1, ($t1)
/* 00460740 8FA7000C */  lw    $a3, 0xc($sp)
/* 00460744 8FA60008 */  lw    $a2, 8($sp)
/* 00460748 8FA50004 */  lw    $a1, 4($sp)
/* 0046074C 8FA40000 */  lw    $a0, ($sp)
/* 00460750 AFAA0054 */  sw    $t2, 0x54($sp)
/* 00460754 0320F809 */  jalr  $t9
/* 00460758 AFA90050 */   sw    $t1, 0x50($sp)
/* 0046075C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460760 10000362 */  b     .L004614EC
/* 00460764 8FBF0064 */   lw    $ra, 0x64($sp)
.L00460768:
/* 00460768 8F9984D0 */  lw    $t9, %call16(restore_gp)($gp)
/* 0046076C 00000000 */  nop   
/* 00460770 0320F809 */  jalr  $t9
/* 00460774 00000000 */   nop   
/* 00460778 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0046077C 93A5007F */  lbu   $a1, 0x7f($sp)
/* 00460780 8F868BF8 */  lw     $a2, %got(gpreg)($gp)
/* 00460784 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00460788 90C60000 */  lbu   $a2, ($a2)
/* 0046078C 24040054 */  li    $a0, 84
/* 00460790 0320F809 */  jalr  $t9
/* 00460794 00003825 */   move  $a3, $zero
/* 00460798 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0046079C 8FA40080 */  lw    $a0, 0x80($sp)
/* 004607A0 8F998BB0 */  lw     $t9, %got(bbindex)($gp)
/* 004607A4 8F888B88 */  lw     $t0, %got(proc_instr_base)($gp)
/* 004607A8 8F390000 */  lw    $t9, ($t9)
/* 004607AC 8D080000 */  lw    $t0, ($t0)
/* 004607B0 2405000F */  li    $a1, 15
/* 004607B4 03283021 */  addu  $a2, $t9, $t0
/* 004607B8 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 004607BC 00000000 */  nop   
/* 004607C0 0320F809 */  jalr  $t9
/* 004607C4 00000000 */   nop   
/* 004607C8 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004607CC 10000347 */  b     .L004614EC
/* 004607D0 8FBF0064 */   lw    $ra, 0x64($sp)
/* 004607D4 8FAB0080 */  lw    $t3, 0x80($sp)
.L004607D8:
/* 004607D8 97AF007A */  lhu   $t7, 0x7a($sp)
/* 004607DC 1160029B */  beqz  $t3, .L0046124C
/* 004607E0 01602025 */   move  $a0, $t3
/* 004607E4 8F998610 */  lw    $t9, %call16(is_gp_relative)($gp)
/* 004607E8 8FA50084 */  lw    $a1, 0x84($sp)
/* 004607EC 93A6008B */  lbu   $a2, 0x8b($sp)
/* 004607F0 0320F809 */  jalr  $t9
/* 004607F4 27A70077 */   addiu $a3, $sp, 0x77
/* 004607F8 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004607FC 97A3007A */  lhu   $v1, 0x7a($sp)
/* 00460800 10400043 */  beqz  $v0, .L00460910
/* 00460804 24010024 */   li    $at, 36
/* 00460808 2401014D */  li    $at, 333
/* 0046080C 1461000B */  bne   $v1, $at, .L0046083C
/* 00460810 24010024 */   li    $at, 36
/* 00460814 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00460818 93A5007F */  lbu   $a1, 0x7f($sp)
/* 0046081C 93A60077 */  lbu   $a2, 0x77($sp)
/* 00460820 8FA70084 */  lw    $a3, 0x84($sp)
/* 00460824 0320F809 */  jalr  $t9
/* 00460828 24040062 */   li    $a0, 98
/* 0046082C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460830 1000002A */  b     .L004608DC
/* 00460834 00000000 */   nop   
/* 00460838 24010024 */  li    $at, 36
.L0046083C:
/* 0046083C 1461000B */  bne   $v1, $at, .L0046086C
/* 00460840 24010163 */   li    $at, 355
/* 00460844 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00460848 93A5007F */  lbu   $a1, 0x7f($sp)
/* 0046084C 93A60077 */  lbu   $a2, 0x77($sp)
/* 00460850 8FA70084 */  lw    $a3, 0x84($sp)
/* 00460854 0320F809 */  jalr  $t9
/* 00460858 24040054 */   li    $a0, 84
/* 0046085C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460860 1000001E */  b     .L004608DC
/* 00460864 00000000 */   nop   
/* 00460868 24010163 */  li    $at, 355
.L0046086C:
/* 0046086C 10610004 */  beq   $v1, $at, .L00460880
/* 00460870 00036040 */   sll   $t4, $v1, 1
/* 00460874 2401002E */  li    $at, 46
/* 00460878 1461000D */  bne   $v1, $at, .L004608B0
/* 0046087C 00036840 */   sll   $t5, $v1, 1
.L00460880:
/* 00460880 8F8E8D1C */  lw     $t6, %got(asm2op)($gp)
/* 00460884 8F998478 */  lw    $t9, %call16(emitcache)($gp)
/* 00460888 018E7821 */  addu  $t7, $t4, $t6
/* 0046088C 95E40000 */  lhu   $a0, ($t7)
/* 00460890 93A50077 */  lbu   $a1, 0x77($sp)
/* 00460894 8FA60084 */  lw    $a2, 0x84($sp)
/* 00460898 93A70075 */  lbu   $a3, 0x75($sp)
/* 0046089C 0320F809 */  jalr  $t9
/* 004608A0 00000000 */   nop   
/* 004608A4 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004608A8 1000000C */  b     .L004608DC
/* 004608AC 00000000 */   nop   
.L004608B0:
/* 004608B0 8F988D1C */  lw     $t8, %got(asm2op)($gp)
/* 004608B4 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 004608B8 01B84821 */  addu  $t1, $t5, $t8
/* 004608BC 95240000 */  lhu   $a0, ($t1)
/* 004608C0 93A5007F */  lbu   $a1, 0x7f($sp)
/* 004608C4 8FA60084 */  lw    $a2, 0x84($sp)
/* 004608C8 93A70077 */  lbu   $a3, 0x77($sp)
/* 004608CC 0320F809 */  jalr  $t9
/* 004608D0 00000000 */   nop   
/* 004608D4 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004608D8 00000000 */  nop   
.L004608DC:
/* 004608DC 8F8A8BB0 */  lw     $t2, %got(bbindex)($gp)
/* 004608E0 8F998B88 */  lw     $t9, %got(proc_instr_base)($gp)
/* 004608E4 8D4A0000 */  lw    $t2, ($t2)
/* 004608E8 8F390000 */  lw    $t9, ($t9)
/* 004608EC 8FA40080 */  lw    $a0, 0x80($sp)
/* 004608F0 01593021 */  addu  $a2, $t2, $t9
/* 004608F4 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 004608F8 24050001 */  li    $a1, 1
/* 004608FC 0320F809 */  jalr  $t9
/* 00460900 00000000 */   nop   
/* 00460904 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460908 100002F8 */  b     .L004614EC
/* 0046090C 8FBF0064 */   lw    $ra, 0x64($sp)
.L00460910:
/* 00460910 146101E2 */  bne   $v1, $at, .L0046109C
/* 00460914 00000000 */   nop   
/* 00460918 8F828AF8 */  lw     $v0, %got(picflag)($gp)
/* 0046091C 24010002 */  li    $at, 2
/* 00460920 8C420000 */  lw    $v0, ($v0)
/* 00460924 00000000 */  nop   
/* 00460928 1041000E */  beq   $v0, $at, .L00460964
/* 0046092C 24010001 */   li    $at, 1
/* 00460930 144101DA */  bne   $v0, $at, .L0046109C
/* 00460934 00000000 */   nop   
/* 00460938 8FA80080 */  lw    $t0, 0x80($sp)
/* 0046093C 00000000 */  nop   
/* 00460940 11000008 */  beqz  $t0, .L00460964
/* 00460944 00000000 */   nop   
/* 00460948 8F998428 */  lw    $t9, %call16(is_dso_static)($gp)
/* 0046094C 8D040018 */  lw    $a0, 0x18($t0)
/* 00460950 0320F809 */  jalr  $t9
/* 00460954 00000000 */   nop   
/* 00460958 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0046095C 144001CF */  bnez  $v0, .L0046109C
/* 00460960 00000000 */   nop   
.L00460964:
/* 00460964 8F9984D0 */  lw    $t9, %call16(restore_gp)($gp)
/* 00460968 00000000 */  nop   
/* 0046096C 0320F809 */  jalr  $t9
/* 00460970 00000000 */   nop   
/* 00460974 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460978 8FA40080 */  lw    $a0, 0x80($sp)
/* 0046097C 8F9985F4 */  lw    $t9, %call16(islocalsym)($gp)
/* 00460980 00000000 */  nop   
/* 00460984 0320F809 */  jalr  $t9
/* 00460988 00000000 */   nop   
/* 0046098C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460990 104000F8 */  beqz  $v0, .L00460D74
/* 00460994 00000000 */   nop   
/* 00460998 8F8B8BB4 */  lw     $t3, %got(atflag)($gp)
/* 0046099C 00000000 */  nop   
/* 004609A0 916B0000 */  lbu   $t3, ($t3)
/* 004609A4 00000000 */  nop   
/* 004609A8 15600008 */  bnez  $t3, .L004609CC
/* 004609AC 8FA50084 */   lw    $a1, 0x84($sp)
/* 004609B0 8F9984C8 */  lw    $t9, %call16(macro_error)($gp)
/* 004609B4 00000000 */  nop   
/* 004609B8 0320F809 */  jalr  $t9
/* 004609BC 00000000 */   nop   
/* 004609C0 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004609C4 00000000 */  nop   
/* 004609C8 8FA50084 */  lw    $a1, 0x84($sp)
.L004609CC:
/* 004609CC 00000000 */  nop   
/* 004609D0 28A18000 */  slti  $at, $a1, -0x8000
/* 004609D4 14200004 */  bnez  $at, .L004609E8
/* 004609D8 34018000 */   li    $at, 32768
/* 004609DC 00A1082A */  slt   $at, $a1, $at
/* 004609E0 1420007D */  bnez  $at, .L00460BD8
/* 004609E4 00000000 */   nop   
.L004609E8:
/* 004609E8 8F99802C */  lw    $t9, %got(func_004603D4)($gp)
/* 004609EC 27A20078 */  addiu $v0, $sp, 0x78
/* 004609F0 273903D4 */  addiu $t9, %lo(func_004603D4) # addiu $t9, $t9, 0x3d4
/* 004609F4 0320F809 */  jalr  $t9
/* 004609F8 00000000 */   nop   
/* 004609FC 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460A00 A3A20076 */  sb    $v0, 0x76($sp)
/* 00460A04 8F848D1C */  lw     $a0, %got(asm2op)($gp)
/* 00460A08 8F878BF8 */  lw     $a3, %got(gpreg)($gp)
/* 00460A0C 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00460A10 94840054 */  lhu   $a0, 0x54($a0)
/* 00460A14 90E70000 */  lbu   $a3, ($a3)
/* 00460A18 304500FF */  andi  $a1, $v0, 0xff
/* 00460A1C 0320F809 */  jalr  $t9
/* 00460A20 00003025 */   move  $a2, $zero
/* 00460A24 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460A28 8FA40080 */  lw    $a0, 0x80($sp)
/* 00460A2C 8F8C8BB0 */  lw     $t4, %got(bbindex)($gp)
/* 00460A30 8F8E8B88 */  lw     $t6, %got(proc_instr_base)($gp)
/* 00460A34 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00460A38 8D8C0000 */  lw    $t4, ($t4)
/* 00460A3C 8DCE0000 */  lw    $t6, ($t6)
/* 00460A40 2405000F */  li    $a1, 15
/* 00460A44 0320F809 */  jalr  $t9
/* 00460A48 018E3021 */   addu  $a2, $t4, $t6
/* 00460A4C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460A50 00000000 */  nop   
/* 00460A54 8F8F8B8C */  lw     $t7, %got(reorderflag)($gp)
/* 00460A58 00000000 */  nop   
/* 00460A5C 91EF0000 */  lbu   $t7, ($t7)
/* 00460A60 00000000 */  nop   
/* 00460A64 15E00018 */  bnez  $t7, .L00460AC8
/* 00460A68 93A7008B */   lbu   $a3, 0x8b($sp)
/* 00460A6C 8F8D8B04 */  lw     $t5, %got(isa)($gp)
/* 00460A70 00000000 */  nop   
/* 00460A74 91AD0000 */  lbu   $t5, ($t5)
/* 00460A78 00000000 */  nop   
/* 00460A7C 2DA10002 */  sltiu $at, $t5, 2
/* 00460A80 10200011 */  beqz  $at, .L00460AC8
/* 00460A84 93A7008B */   lbu   $a3, 0x8b($sp)
/* 00460A88 8F998448 */  lw    $t9, %call16(emitnop)($gp)
/* 00460A8C 24040001 */  li    $a0, 1
/* 00460A90 0320F809 */  jalr  $t9
/* 00460A94 00000000 */   nop   
/* 00460A98 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460A9C 00000000 */  nop   
/* 00460AA0 8F898BB0 */  lw     $t1, %got(bbindex)($gp)
/* 00460AA4 8F988B40 */  lw     $t8, %got(pinstruction)($gp)
/* 00460AA8 8D290000 */  lw    $t1, ($t1)
/* 00460AAC 8F180000 */  lw    $t8, ($t8)
/* 00460AB0 00095080 */  sll   $t2, $t1, 2
/* 00460AB4 01495021 */  addu  $t2, $t2, $t1
/* 00460AB8 000A50C0 */  sll   $t2, $t2, 3
/* 00460ABC 030AC821 */  addu  $t9, $t8, $t2
/* 00460AC0 A3200022 */  sb    $zero, 0x22($t9)
/* 00460AC4 93A7008B */  lbu   $a3, 0x8b($sp)
.L00460AC8:
/* 00460AC8 24010048 */  li    $at, 72
/* 00460ACC 10E1000C */  beq   $a3, $at, .L00460B00
/* 00460AD0 93A60076 */   lbu   $a2, 0x76($sp)
/* 00460AD4 10E0000A */  beqz  $a3, .L00460B00
/* 00460AD8 93A60076 */   lbu   $a2, 0x76($sp)
/* 00460ADC 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00460AE0 93A5007F */  lbu   $a1, 0x7f($sp)
/* 00460AE4 93A60076 */  lbu   $a2, 0x76($sp)
/* 00460AE8 0320F809 */  jalr  $t9
/* 00460AEC 24040015 */   li    $a0, 21
/* 00460AF0 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460AF4 1000000C */  b     .L00460B28
/* 00460AF8 00000000 */   nop   
/* 00460AFC 93A60076 */  lbu   $a2, 0x76($sp)
.L00460B00:
/* 00460B00 93A8007F */  lbu   $t0, 0x7f($sp)
/* 00460B04 24040019 */  li    $a0, 25
/* 00460B08 11060007 */  beq   $t0, $a2, .L00460B28
/* 00460B0C 00000000 */   nop   
/* 00460B10 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00460B14 01002825 */  move  $a1, $t0
/* 00460B18 0320F809 */  jalr  $t9
/* 00460B1C 00003825 */   move  $a3, $zero
/* 00460B20 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460B24 00000000 */  nop   
.L00460B28:
/* 00460B28 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00460B2C 8FA50084 */  lw    $a1, 0x84($sp)
/* 00460B30 0320F809 */  jalr  $t9
/* 00460B34 00002025 */   move  $a0, $zero
/* 00460B38 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460B3C 93A5007F */  lbu   $a1, 0x7f($sp)
/* 00460B40 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00460B44 24040054 */  li    $a0, 84
/* 00460B48 00403825 */  move  $a3, $v0
/* 00460B4C 0320F809 */  jalr  $t9
/* 00460B50 00A03025 */   move  $a2, $a1
/* 00460B54 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460B58 8FA40080 */  lw    $a0, 0x80($sp)
/* 00460B5C 8F8B8BB0 */  lw     $t3, %got(bbindex)($gp)
/* 00460B60 8F8C8B88 */  lw     $t4, %got(proc_instr_base)($gp)
/* 00460B64 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00460B68 8D6B0000 */  lw    $t3, ($t3)
/* 00460B6C 8D8C0000 */  lw    $t4, ($t4)
/* 00460B70 24050003 */  li    $a1, 3
/* 00460B74 0320F809 */  jalr  $t9
/* 00460B78 016C3021 */   addu  $a2, $t3, $t4
/* 00460B7C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460B80 8FA50084 */  lw    $a1, 0x84($sp)
/* 00460B84 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00460B88 24040001 */  li    $a0, 1
/* 00460B8C 0320F809 */  jalr  $t9
/* 00460B90 00000000 */   nop   
/* 00460B94 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460B98 2404005A */  li    $a0, 90
/* 00460B9C 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00460BA0 24050001 */  li    $a1, 1
/* 00460BA4 00003025 */  move  $a2, $zero
/* 00460BA8 0320F809 */  jalr  $t9
/* 00460BAC 00403825 */   move  $a3, $v0
/* 00460BB0 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460BB4 93A5007F */  lbu   $a1, 0x7f($sp)
/* 00460BB8 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00460BBC 24040015 */  li    $a0, 21
/* 00460BC0 24060001 */  li    $a2, 1
/* 00460BC4 0320F809 */  jalr  $t9
/* 00460BC8 00A03825 */   move  $a3, $a1
/* 00460BCC 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460BD0 10000246 */  b     .L004614EC
/* 00460BD4 8FBF0064 */   lw    $ra, 0x64($sp)
.L00460BD8:
/* 00460BD8 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00460BDC 24040001 */  li    $a0, 1
/* 00460BE0 0320F809 */  jalr  $t9
/* 00460BE4 00000000 */   nop   
/* 00460BE8 34018013 */  li    $at, 32787
/* 00460BEC 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460BF0 0041082A */  slt   $at, $v0, $at
/* 00460BF4 14200003 */  bnez  $at, .L00460C04
/* 00460BF8 00403025 */   move  $a2, $v0
/* 00460BFC 3C01FFFF */  lui   $at, 0xffff
/* 00460C00 00413021 */  addu  $a2, $v0, $at
.L00460C04:
/* 00460C04 8F99802C */  lw    $t9, %got(func_004603D4)($gp)
/* 00460C08 27A20078 */  addiu $v0, $sp, 0x78
/* 00460C0C 273903D4 */  addiu $t9, %lo(func_004603D4) # addiu $t9, $t9, 0x3d4
/* 00460C10 0320F809 */  jalr  $t9
/* 00460C14 AFA60070 */   sw    $a2, 0x70($sp)
/* 00460C18 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460C1C 8FA60070 */  lw    $a2, 0x70($sp)
/* 00460C20 8F848D1C */  lw     $a0, %got(asm2op)($gp)
/* 00460C24 8F878BF8 */  lw     $a3, %got(gpreg)($gp)
/* 00460C28 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00460C2C 94840054 */  lhu   $a0, 0x54($a0)
/* 00460C30 90E70000 */  lbu   $a3, ($a3)
/* 00460C34 A3A20076 */  sb    $v0, 0x76($sp)
/* 00460C38 0320F809 */  jalr  $t9
/* 00460C3C 304500FF */   andi  $a1, $v0, 0xff
/* 00460C40 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460C44 8FA40080 */  lw    $a0, 0x80($sp)
/* 00460C48 8F8E8BB0 */  lw     $t6, %got(bbindex)($gp)
/* 00460C4C 8F8F8B88 */  lw     $t7, %got(proc_instr_base)($gp)
/* 00460C50 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00460C54 8DCE0000 */  lw    $t6, ($t6)
/* 00460C58 8DEF0000 */  lw    $t7, ($t7)
/* 00460C5C 2405000F */  li    $a1, 15
/* 00460C60 0320F809 */  jalr  $t9
/* 00460C64 01CF3021 */   addu  $a2, $t6, $t7
/* 00460C68 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460C6C 00000000 */  nop   
/* 00460C70 8F8D8B8C */  lw     $t5, %got(reorderflag)($gp)
/* 00460C74 00000000 */  nop   
/* 00460C78 91AD0000 */  lbu   $t5, ($t5)
/* 00460C7C 00000000 */  nop   
/* 00460C80 15A00018 */  bnez  $t5, .L00460CE4
/* 00460C84 93A7008B */   lbu   $a3, 0x8b($sp)
/* 00460C88 8F898B04 */  lw     $t1, %got(isa)($gp)
/* 00460C8C 00000000 */  nop   
/* 00460C90 91290000 */  lbu   $t1, ($t1)
/* 00460C94 00000000 */  nop   
/* 00460C98 2D210002 */  sltiu $at, $t1, 2
/* 00460C9C 10200011 */  beqz  $at, .L00460CE4
/* 00460CA0 93A7008B */   lbu   $a3, 0x8b($sp)
/* 00460CA4 8F998448 */  lw    $t9, %call16(emitnop)($gp)
/* 00460CA8 24040001 */  li    $a0, 1
/* 00460CAC 0320F809 */  jalr  $t9
/* 00460CB0 00000000 */   nop   
/* 00460CB4 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460CB8 00000000 */  nop   
/* 00460CBC 8F8A8BB0 */  lw     $t2, %got(bbindex)($gp)
/* 00460CC0 8F988B40 */  lw     $t8, %got(pinstruction)($gp)
/* 00460CC4 8D4A0000 */  lw    $t2, ($t2)
/* 00460CC8 8F180000 */  lw    $t8, ($t8)
/* 00460CCC 000AC880 */  sll   $t9, $t2, 2
/* 00460CD0 032AC821 */  addu  $t9, $t9, $t2
/* 00460CD4 0019C8C0 */  sll   $t9, $t9, 3
/* 00460CD8 03194021 */  addu  $t0, $t8, $t9
/* 00460CDC A1000022 */  sb    $zero, 0x22($t0)
/* 00460CE0 93A7008B */  lbu   $a3, 0x8b($sp)
.L00460CE4:
/* 00460CE4 24010048 */  li    $at, 72
/* 00460CE8 10E1000A */  beq   $a3, $at, .L00460D14
/* 00460CEC 00000000 */   nop   
/* 00460CF0 10E00008 */  beqz  $a3, .L00460D14
/* 00460CF4 00000000 */   nop   
/* 00460CF8 93A50076 */  lbu   $a1, 0x76($sp)
/* 00460CFC 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00460D00 24040015 */  li    $a0, 21
/* 00460D04 0320F809 */  jalr  $t9
/* 00460D08 00A03025 */   move  $a2, $a1
/* 00460D0C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460D10 00000000 */  nop   
.L00460D14:
/* 00460D14 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00460D18 8FA50084 */  lw    $a1, 0x84($sp)
/* 00460D1C 0320F809 */  jalr  $t9
/* 00460D20 00002025 */   move  $a0, $zero
/* 00460D24 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460D28 93A5007F */  lbu   $a1, 0x7f($sp)
/* 00460D2C 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00460D30 93A60076 */  lbu   $a2, 0x76($sp)
/* 00460D34 24040054 */  li    $a0, 84
/* 00460D38 0320F809 */  jalr  $t9
/* 00460D3C 00403825 */   move  $a3, $v0
/* 00460D40 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460D44 8FA40080 */  lw    $a0, 0x80($sp)
/* 00460D48 8F8B8BB0 */  lw     $t3, %got(bbindex)($gp)
/* 00460D4C 8F8C8B88 */  lw     $t4, %got(proc_instr_base)($gp)
/* 00460D50 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00460D54 8D6B0000 */  lw    $t3, ($t3)
/* 00460D58 8D8C0000 */  lw    $t4, ($t4)
/* 00460D5C 24050003 */  li    $a1, 3
/* 00460D60 0320F809 */  jalr  $t9
/* 00460D64 016C3021 */   addu  $a2, $t3, $t4
/* 00460D68 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460D6C 100001DF */  b     .L004614EC
/* 00460D70 8FBF0064 */   lw    $ra, 0x64($sp)
.L00460D74:
/* 00460D74 8F99802C */  lw    $t9, %got(func_004603D4)($gp)
/* 00460D78 27A20078 */  addiu $v0, $sp, 0x78
/* 00460D7C 273903D4 */  addiu $t9, %lo(func_004603D4) # addiu $t9, $t9, 0x3d4
/* 00460D80 0320F809 */  jalr  $t9
/* 00460D84 00000000 */   nop   
/* 00460D88 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460D8C 304500FF */  andi  $a1, $v0, 0xff
/* 00460D90 8F8E8C94 */  lw     $t6, %got(big_got)($gp)
/* 00460D94 2404005A */  li    $a0, 90
/* 00460D98 91CE0000 */  lbu   $t6, ($t6)
/* 00460D9C 00003825 */  move  $a3, $zero
/* 00460DA0 11C0002B */  beqz  $t6, .L00460E50
/* 00460DA4 00003025 */   move  $a2, $zero
/* 00460DA8 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00460DAC 00003025 */  move  $a2, $zero
/* 00460DB0 0320F809 */  jalr  $t9
/* 00460DB4 A3A50076 */   sb    $a1, 0x76($sp)
/* 00460DB8 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460DBC 8FA40080 */  lw    $a0, 0x80($sp)
/* 00460DC0 8F8F8BB0 */  lw     $t7, %got(bbindex)($gp)
/* 00460DC4 8F8D8B88 */  lw     $t5, %got(proc_instr_base)($gp)
/* 00460DC8 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00460DCC 8DEF0000 */  lw    $t7, ($t7)
/* 00460DD0 8DAD0000 */  lw    $t5, ($t5)
/* 00460DD4 24050016 */  li    $a1, 22
/* 00460DD8 0320F809 */  jalr  $t9
/* 00460DDC 01ED3021 */   addu  $a2, $t7, $t5
/* 00460DE0 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460DE4 93A50076 */  lbu   $a1, 0x76($sp)
/* 00460DE8 8F878BF8 */  lw     $a3, %got(gpreg)($gp)
/* 00460DEC 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00460DF0 90E70000 */  lbu   $a3, ($a3)
/* 00460DF4 24040015 */  li    $a0, 21
/* 00460DF8 0320F809 */  jalr  $t9
/* 00460DFC 00A03025 */   move  $a2, $a1
/* 00460E00 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460E04 93A50076 */  lbu   $a1, 0x76($sp)
/* 00460E08 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00460E0C 24040069 */  li    $a0, 105
/* 00460E10 00003025 */  move  $a2, $zero
/* 00460E14 0320F809 */  jalr  $t9
/* 00460E18 00A03825 */   move  $a3, $a1
/* 00460E1C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460E20 8FA40080 */  lw    $a0, 0x80($sp)
/* 00460E24 8F898BB0 */  lw     $t1, %got(bbindex)($gp)
/* 00460E28 8F8A8B88 */  lw     $t2, %got(proc_instr_base)($gp)
/* 00460E2C 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00460E30 8D290000 */  lw    $t1, ($t1)
/* 00460E34 8D4A0000 */  lw    $t2, ($t2)
/* 00460E38 24050017 */  li    $a1, 23
/* 00460E3C 0320F809 */  jalr  $t9
/* 00460E40 012A3021 */   addu  $a2, $t1, $t2
/* 00460E44 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460E48 10000016 */  b     .L00460EA4
/* 00460E4C 00000000 */   nop   
.L00460E50:
/* 00460E50 8F848D1C */  lw     $a0, %got(asm2op)($gp)
/* 00460E54 8F878BF8 */  lw     $a3, %got(gpreg)($gp)
/* 00460E58 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00460E5C 94840054 */  lhu   $a0, 0x54($a0)
/* 00460E60 90E70000 */  lbu   $a3, ($a3)
/* 00460E64 0320F809 */  jalr  $t9
/* 00460E68 A3A50076 */   sb    $a1, 0x76($sp)
/* 00460E6C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460E70 8FA40080 */  lw    $a0, 0x80($sp)
/* 00460E74 8F988BB0 */  lw     $t8, %got(bbindex)($gp)
/* 00460E78 8F998B88 */  lw     $t9, %got(proc_instr_base)($gp)
/* 00460E7C 8F180000 */  lw    $t8, ($t8)
/* 00460E80 8F390000 */  lw    $t9, ($t9)
/* 00460E84 2405000F */  li    $a1, 15
/* 00460E88 03193021 */  addu  $a2, $t8, $t9
/* 00460E8C 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00460E90 00000000 */  nop   
/* 00460E94 0320F809 */  jalr  $t9
/* 00460E98 00000000 */   nop   
/* 00460E9C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460EA0 00000000 */  nop   
.L00460EA4:
/* 00460EA4 8F888B8C */  lw     $t0, %got(reorderflag)($gp)
/* 00460EA8 00000000 */  nop   
/* 00460EAC 91080000 */  lbu   $t0, ($t0)
/* 00460EB0 00000000 */  nop   
/* 00460EB4 15000020 */  bnez  $t0, .L00460F38
/* 00460EB8 93A7008B */   lbu   $a3, 0x8b($sp)
/* 00460EBC 8F8B8B04 */  lw     $t3, %got(isa)($gp)
/* 00460EC0 93A7008B */  lbu   $a3, 0x8b($sp)
/* 00460EC4 916B0000 */  lbu   $t3, ($t3)
/* 00460EC8 00000000 */  nop   
/* 00460ECC 2D610002 */  sltiu $at, $t3, 2
/* 00460ED0 10200018 */  beqz  $at, .L00460F34
/* 00460ED4 24010048 */   li    $at, 72
/* 00460ED8 10E10004 */  beq   $a3, $at, .L00460EEC
/* 00460EDC 8FAC0084 */   lw    $t4, 0x84($sp)
/* 00460EE0 14E00005 */  bnez  $a3, .L00460EF8
/* 00460EE4 00000000 */   nop   
/* 00460EE8 8FAC0084 */  lw    $t4, 0x84($sp)
.L00460EEC:
/* 00460EEC 00000000 */  nop   
/* 00460EF0 11800011 */  beqz  $t4, .L00460F38
/* 00460EF4 93A7008B */   lbu   $a3, 0x8b($sp)
.L00460EF8:
/* 00460EF8 8F998448 */  lw    $t9, %call16(emitnop)($gp)
/* 00460EFC 24040001 */  li    $a0, 1
/* 00460F00 0320F809 */  jalr  $t9
/* 00460F04 00000000 */   nop   
/* 00460F08 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460F0C 00000000 */  nop   
/* 00460F10 8F8F8BB0 */  lw     $t7, %got(bbindex)($gp)
/* 00460F14 8F8E8B40 */  lw     $t6, %got(pinstruction)($gp)
/* 00460F18 8DEF0000 */  lw    $t7, ($t7)
/* 00460F1C 8DCE0000 */  lw    $t6, ($t6)
/* 00460F20 000F6880 */  sll   $t5, $t7, 2
/* 00460F24 01AF6821 */  addu  $t5, $t5, $t7
/* 00460F28 000D68C0 */  sll   $t5, $t5, 3
/* 00460F2C 01CD4821 */  addu  $t1, $t6, $t5
/* 00460F30 A1200022 */  sb    $zero, 0x22($t1)
.L00460F34:
/* 00460F34 93A7008B */  lbu   $a3, 0x8b($sp)
.L00460F38:
/* 00460F38 24010048 */  li    $at, 72
/* 00460F3C 10E1000C */  beq   $a3, $at, .L00460F70
/* 00460F40 93A60076 */   lbu   $a2, 0x76($sp)
/* 00460F44 10E0000A */  beqz  $a3, .L00460F70
/* 00460F48 93A60076 */   lbu   $a2, 0x76($sp)
/* 00460F4C 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00460F50 93A5007F */  lbu   $a1, 0x7f($sp)
/* 00460F54 93A60076 */  lbu   $a2, 0x76($sp)
/* 00460F58 0320F809 */  jalr  $t9
/* 00460F5C 24040015 */   li    $a0, 21
/* 00460F60 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460F64 1000000D */  b     .L00460F9C
/* 00460F68 8FB80084 */   lw    $t8, 0x84($sp)
/* 00460F6C 93A60076 */  lbu   $a2, 0x76($sp)
.L00460F70:
/* 00460F70 93AA007F */  lbu   $t2, 0x7f($sp)
/* 00460F74 24040019 */  li    $a0, 25
/* 00460F78 11460008 */  beq   $t2, $a2, .L00460F9C
/* 00460F7C 8FB80084 */   lw    $t8, 0x84($sp)
/* 00460F80 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00460F84 01402825 */  move  $a1, $t2
/* 00460F88 0320F809 */  jalr  $t9
/* 00460F8C 00003825 */   move  $a3, $zero
/* 00460F90 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460F94 00000000 */  nop   
/* 00460F98 8FB80084 */  lw    $t8, 0x84($sp)
.L00460F9C:
/* 00460F9C 00000000 */  nop   
/* 00460FA0 2B018000 */  slti  $at, $t8, -0x8000
/* 00460FA4 14200004 */  bnez  $at, .L00460FB8
/* 00460FA8 34018000 */   li    $at, 32768
/* 00460FAC 0301082A */  slt   $at, $t8, $at
/* 00460FB0 14200030 */  bnez  $at, .L00461074
/* 00460FB4 8FAB0084 */   lw    $t3, 0x84($sp)
.L00460FB8:
/* 00460FB8 8F998BB4 */  lw     $t9, %got(atflag)($gp)
/* 00460FBC 00000000 */  nop   
/* 00460FC0 93390000 */  lbu   $t9, ($t9)
/* 00460FC4 00000000 */  nop   
/* 00460FC8 17200007 */  bnez  $t9, .L00460FE8
/* 00460FCC 00000000 */   nop   
/* 00460FD0 8F9984C8 */  lw    $t9, %call16(macro_error)($gp)
/* 00460FD4 00000000 */  nop   
/* 00460FD8 0320F809 */  jalr  $t9
/* 00460FDC 00000000 */   nop   
/* 00460FE0 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460FE4 00000000 */  nop   
.L00460FE8:
/* 00460FE8 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00460FEC 8FA50084 */  lw    $a1, 0x84($sp)
/* 00460FF0 0320F809 */  jalr  $t9
/* 00460FF4 24040001 */   li    $a0, 1
/* 00460FF8 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00460FFC 2404005A */  li    $a0, 90
/* 00461000 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00461004 24050001 */  li    $a1, 1
/* 00461008 00003025 */  move  $a2, $zero
/* 0046100C 0320F809 */  jalr  $t9
/* 00461010 00403825 */   move  $a3, $v0
/* 00461014 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00461018 8FA50084 */  lw    $a1, 0x84($sp)
/* 0046101C 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00461020 00002025 */  move  $a0, $zero
/* 00461024 0320F809 */  jalr  $t9
/* 00461028 00000000 */   nop   
/* 0046102C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00461030 24040054 */  li    $a0, 84
/* 00461034 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00461038 24050001 */  li    $a1, 1
/* 0046103C 24060001 */  li    $a2, 1
/* 00461040 0320F809 */  jalr  $t9
/* 00461044 00403825 */   move  $a3, $v0
/* 00461048 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0046104C 93A7007F */  lbu   $a3, 0x7f($sp)
/* 00461050 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00461054 24040015 */  li    $a0, 21
/* 00461058 24060001 */  li    $a2, 1
/* 0046105C 0320F809 */  jalr  $t9
/* 00461060 00E02825 */   move  $a1, $a3
/* 00461064 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00461068 10000120 */  b     .L004614EC
/* 0046106C 8FBF0064 */   lw    $ra, 0x64($sp)
/* 00461070 8FAB0084 */  lw    $t3, 0x84($sp)
.L00461074:
/* 00461074 93A6007F */  lbu   $a2, 0x7f($sp)
/* 00461078 1160011B */  beqz  $t3, .L004614E8
/* 0046107C 24040054 */   li    $a0, 84
/* 00461080 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00461084 00C02825 */  move  $a1, $a2
/* 00461088 0320F809 */  jalr  $t9
/* 0046108C 01603825 */   move  $a3, $t3
/* 00461090 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00461094 10000115 */  b     .L004614EC
/* 00461098 8FBF0064 */   lw    $ra, 0x64($sp)
.L0046109C:
/* 0046109C 8F99802C */  lw    $t9, %got(func_004603D4)($gp)
/* 004610A0 27A20078 */  addiu $v0, $sp, 0x78
/* 004610A4 273903D4 */  addiu $t9, %lo(func_004603D4) # addiu $t9, $t9, 0x3d4
/* 004610A8 0320F809 */  jalr  $t9
/* 004610AC 00000000 */   nop   
/* 004610B0 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004610B4 97A3007A */  lhu   $v1, 0x7a($sp)
/* 004610B8 8F998608 */  lw    $t9, %call16(setup_tempreg)($gp)
/* 004610BC 93A6008B */  lbu   $a2, 0x8b($sp)
/* 004610C0 27AF0084 */  addiu $t7, $sp, 0x84
/* 004610C4 27AE0074 */  addiu $t6, $sp, 0x74
/* 004610C8 A3A20076 */  sb    $v0, 0x76($sp)
/* 004610CC AFAE0014 */  sw    $t6, 0x14($sp)
/* 004610D0 AFAF0010 */  sw    $t7, 0x10($sp)
/* 004610D4 24040001 */  li    $a0, 1
/* 004610D8 304500FF */  andi  $a1, $v0, 0xff
/* 004610DC 27A70080 */  addiu $a3, $sp, 0x80
/* 004610E0 AFA00018 */  sw    $zero, 0x18($sp)
/* 004610E4 0320F809 */  jalr  $t9
/* 004610E8 AFA3001C */   sw    $v1, 0x1c($sp)
/* 004610EC 97A3007A */  lhu   $v1, 0x7a($sp)
/* 004610F0 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004610F4 2401014D */  li    $at, 333
/* 004610F8 14610010 */  bne   $v1, $at, .L0046113C
/* 004610FC 24010024 */   li    $at, 36
/* 00461100 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00461104 8FA50084 */  lw    $a1, 0x84($sp)
/* 00461108 0320F809 */  jalr  $t9
/* 0046110C 00002025 */   move  $a0, $zero
/* 00461110 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00461114 93A5007F */  lbu   $a1, 0x7f($sp)
/* 00461118 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 0046111C 93A60076 */  lbu   $a2, 0x76($sp)
/* 00461120 24040062 */  li    $a0, 98
/* 00461124 0320F809 */  jalr  $t9
/* 00461128 00403825 */   move  $a3, $v0
/* 0046112C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00461130 1000003A */  b     .L0046121C
/* 00461134 00000000 */   nop   
/* 00461138 24010024 */  li    $at, 36
.L0046113C:
/* 0046113C 14610010 */  bne   $v1, $at, .L00461180
/* 00461140 24010163 */   li    $at, 355
/* 00461144 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00461148 8FA50084 */  lw    $a1, 0x84($sp)
/* 0046114C 0320F809 */  jalr  $t9
/* 00461150 00002025 */   move  $a0, $zero
/* 00461154 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00461158 93A5007F */  lbu   $a1, 0x7f($sp)
/* 0046115C 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00461160 93A60076 */  lbu   $a2, 0x76($sp)
/* 00461164 24040054 */  li    $a0, 84
/* 00461168 0320F809 */  jalr  $t9
/* 0046116C 00403825 */   move  $a3, $v0
/* 00461170 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00461174 10000029 */  b     .L0046121C
/* 00461178 00000000 */   nop   
/* 0046117C 24010163 */  li    $at, 355
.L00461180:
/* 00461180 10610003 */  beq   $v1, $at, .L00461190
/* 00461184 2401002E */   li    $at, 46
/* 00461188 14610013 */  bne   $v1, $at, .L004611D8
/* 0046118C 00000000 */   nop   
.L00461190:
/* 00461190 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00461194 8FA50084 */  lw    $a1, 0x84($sp)
/* 00461198 0320F809 */  jalr  $t9
/* 0046119C 00002025 */   move  $a0, $zero
/* 004611A0 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004611A4 97A3007A */  lhu   $v1, 0x7a($sp)
/* 004611A8 8F898D1C */  lw     $t1, %got(asm2op)($gp)
/* 004611AC 00036840 */  sll   $t5, $v1, 1
/* 004611B0 8F998478 */  lw    $t9, %call16(emitcache)($gp)
/* 004611B4 01A95021 */  addu  $t2, $t5, $t1
/* 004611B8 95440000 */  lhu   $a0, ($t2)
/* 004611BC 93A50076 */  lbu   $a1, 0x76($sp)
/* 004611C0 93A70075 */  lbu   $a3, 0x75($sp)
/* 004611C4 0320F809 */  jalr  $t9
/* 004611C8 00403025 */   move  $a2, $v0
/* 004611CC 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004611D0 10000012 */  b     .L0046121C
/* 004611D4 00000000 */   nop   
.L004611D8:
/* 004611D8 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 004611DC 8FA50084 */  lw    $a1, 0x84($sp)
/* 004611E0 0320F809 */  jalr  $t9
/* 004611E4 00002025 */   move  $a0, $zero
/* 004611E8 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004611EC 97A3007A */  lhu   $v1, 0x7a($sp)
/* 004611F0 8F998D1C */  lw     $t9, %got(asm2op)($gp)
/* 004611F4 0003C040 */  sll   $t8, $v1, 1
/* 004611F8 03194021 */  addu  $t0, $t8, $t9
/* 004611FC 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00461200 95040000 */  lhu   $a0, ($t0)
/* 00461204 93A5007F */  lbu   $a1, 0x7f($sp)
/* 00461208 93A70076 */  lbu   $a3, 0x76($sp)
/* 0046120C 0320F809 */  jalr  $t9
/* 00461210 00403025 */   move  $a2, $v0
/* 00461214 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00461218 00000000 */  nop   
.L0046121C:
/* 0046121C 8F8C8BB0 */  lw     $t4, %got(bbindex)($gp)
/* 00461220 8F8B8B88 */  lw     $t3, %got(proc_instr_base)($gp)
/* 00461224 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00461228 8D8C0000 */  lw    $t4, ($t4)
/* 0046122C 8D6B0000 */  lw    $t3, ($t3)
/* 00461230 8FA40080 */  lw    $a0, 0x80($sp)
/* 00461234 93A50074 */  lbu   $a1, 0x74($sp)
/* 00461238 0320F809 */  jalr  $t9
/* 0046123C 018B3021 */   addu  $a2, $t4, $t3
/* 00461240 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00461244 100000A9 */  b     .L004614EC
/* 00461248 8FBF0064 */   lw    $ra, 0x64($sp)
.L0046124C:
/* 0046124C 11E2007A */  beq   $t7, $v0, .L00461438
/* 00461250 00000000 */   nop   
/* 00461254 11E30079 */  beq   $t7, $v1, .L0046143C
/* 00461258 97AF007A */   lhu   $t7, 0x7a($sp)
/* 0046125C 8FAE0084 */  lw    $t6, 0x84($sp)
/* 00461260 00000000 */  nop   
/* 00461264 29C18000 */  slti  $at, $t6, -0x8000
/* 00461268 14200004 */  bnez  $at, .L0046127C
/* 0046126C 34018000 */   li    $at, 32768
/* 00461270 01C1082A */  slt   $at, $t6, $at
/* 00461274 14200071 */  bnez  $at, .L0046143C
/* 00461278 97AF007A */   lhu   $t7, 0x7a($sp)
.L0046127C:
/* 0046127C 8F99802C */  lw    $t9, %got(func_004603D4)($gp)
/* 00461280 27A20078 */  addiu $v0, $sp, 0x78
/* 00461284 273903D4 */  addiu $t9, %lo(func_004603D4) # addiu $t9, $t9, 0x3d4
/* 00461288 0320F809 */  jalr  $t9
/* 0046128C 00000000 */   nop   
/* 00461290 93A6008B */  lbu   $a2, 0x8b($sp)
/* 00461294 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00461298 24010048 */  li    $at, 72
/* 0046129C 10C10029 */  beq   $a2, $at, .L00461344
/* 004612A0 A3A20076 */   sb    $v0, 0x76($sp)
/* 004612A4 10C00027 */  beqz  $a2, .L00461344
/* 004612A8 00000000 */   nop   
/* 004612AC 8FAD0084 */  lw    $t5, 0x84($sp)
/* 004612B0 3401FFFF */  li    $at, 65535
/* 004612B4 01A1082A */  slt   $at, $t5, $at
/* 004612B8 10200022 */  beqz  $at, .L00461344
/* 004612BC 00000000 */   nop   
/* 004612C0 19A00020 */  blez  $t5, .L00461344
/* 004612C4 24040054 */   li    $a0, 84
/* 004612C8 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 004612CC 304500FF */  andi  $a1, $v0, 0xff
/* 004612D0 0320F809 */  jalr  $t9
/* 004612D4 24077FFF */   li    $a3, 32767
/* 004612D8 97A3007A */  lhu   $v1, 0x7a($sp)
/* 004612DC 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004612E0 24010024 */  li    $at, 36
/* 004612E4 1461000B */  bne   $v1, $at, .L00461314
/* 004612E8 00034840 */   sll   $t1, $v1, 1
/* 004612EC 8FA70084 */  lw    $a3, 0x84($sp)
/* 004612F0 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 004612F4 93A5007F */  lbu   $a1, 0x7f($sp)
/* 004612F8 93A60076 */  lbu   $a2, 0x76($sp)
/* 004612FC 24040054 */  li    $a0, 84
/* 00461300 0320F809 */  jalr  $t9
/* 00461304 24E78001 */   addiu $a3, $a3, -0x7fff
/* 00461308 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0046130C 10000077 */  b     .L004614EC
/* 00461310 8FBF0064 */   lw    $ra, 0x64($sp)
.L00461314:
/* 00461314 8F8A8D1C */  lw     $t2, %got(asm2op)($gp)
/* 00461318 8FA60084 */  lw    $a2, 0x84($sp)
/* 0046131C 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00461320 012AC021 */  addu  $t8, $t1, $t2
/* 00461324 97040000 */  lhu   $a0, ($t8)
/* 00461328 93A5007F */  lbu   $a1, 0x7f($sp)
/* 0046132C 93A70076 */  lbu   $a3, 0x76($sp)
/* 00461330 0320F809 */  jalr  $t9
/* 00461334 24C68001 */   addiu $a2, $a2, -0x7fff
/* 00461338 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0046133C 1000006B */  b     .L004614EC
/* 00461340 8FBF0064 */   lw    $ra, 0x64($sp)
.L00461344:
/* 00461344 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00461348 8FA50084 */  lw    $a1, 0x84($sp)
/* 0046134C 0320F809 */  jalr  $t9
/* 00461350 24040001 */   li    $a0, 1
/* 00461354 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00461358 93A50076 */  lbu   $a1, 0x76($sp)
/* 0046135C 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00461360 2404005A */  li    $a0, 90
/* 00461364 00003025 */  move  $a2, $zero
/* 00461368 0320F809 */  jalr  $t9
/* 0046136C 00403825 */   move  $a3, $v0
/* 00461370 93A7008B */  lbu   $a3, 0x8b($sp)
/* 00461374 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00461378 24010048 */  li    $at, 72
/* 0046137C 10E1000B */  beq   $a3, $at, .L004613AC
/* 00461380 97A3007A */   lhu   $v1, 0x7a($sp)
/* 00461384 10E00009 */  beqz  $a3, .L004613AC
/* 00461388 97A3007A */   lhu   $v1, 0x7a($sp)
/* 0046138C 93A60076 */  lbu   $a2, 0x76($sp)
/* 00461390 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00461394 24040015 */  li    $a0, 21
/* 00461398 0320F809 */  jalr  $t9
/* 0046139C 00C02825 */   move  $a1, $a2
/* 004613A0 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004613A4 00000000 */  nop   
/* 004613A8 97A3007A */  lhu   $v1, 0x7a($sp)
.L004613AC:
/* 004613AC 24010024 */  li    $at, 36
/* 004613B0 1461000F */  bne   $v1, $at, .L004613F0
/* 004613B4 00000000 */   nop   
/* 004613B8 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 004613BC 8FA50084 */  lw    $a1, 0x84($sp)
/* 004613C0 0320F809 */  jalr  $t9
/* 004613C4 00002025 */   move  $a0, $zero
/* 004613C8 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004613CC 93A5007F */  lbu   $a1, 0x7f($sp)
/* 004613D0 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 004613D4 93A60076 */  lbu   $a2, 0x76($sp)
/* 004613D8 24040054 */  li    $a0, 84
/* 004613DC 0320F809 */  jalr  $t9
/* 004613E0 00403825 */   move  $a3, $v0
/* 004613E4 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004613E8 10000040 */  b     .L004614EC
/* 004613EC 8FBF0064 */   lw    $ra, 0x64($sp)
.L004613F0:
/* 004613F0 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 004613F4 8FA50084 */  lw    $a1, 0x84($sp)
/* 004613F8 0320F809 */  jalr  $t9
/* 004613FC 00002025 */   move  $a0, $zero
/* 00461400 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00461404 97A3007A */  lhu   $v1, 0x7a($sp)
/* 00461408 8F8C8D1C */  lw     $t4, %got(asm2op)($gp)
/* 0046140C 00034040 */  sll   $t0, $v1, 1
/* 00461410 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00461414 010C5821 */  addu  $t3, $t0, $t4
/* 00461418 95640000 */  lhu   $a0, ($t3)
/* 0046141C 93A5007F */  lbu   $a1, 0x7f($sp)
/* 00461420 93A70076 */  lbu   $a3, 0x76($sp)
/* 00461424 0320F809 */  jalr  $t9
/* 00461428 00403025 */   move  $a2, $v0
/* 0046142C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00461430 1000002E */  b     .L004614EC
/* 00461434 8FBF0064 */   lw    $ra, 0x64($sp)
.L00461438:
/* 00461438 97AF007A */  lhu   $t7, 0x7a($sp)
.L0046143C:
/* 0046143C 24010024 */  li    $at, 36
/* 00461440 15E1000B */  bne   $t7, $at, .L00461470
/* 00461444 97AE007A */   lhu   $t6, 0x7a($sp)
/* 00461448 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 0046144C 93A5007F */  lbu   $a1, 0x7f($sp)
/* 00461450 93A6008B */  lbu   $a2, 0x8b($sp)
/* 00461454 8FA70084 */  lw    $a3, 0x84($sp)
/* 00461458 0320F809 */  jalr  $t9
/* 0046145C 24040054 */   li    $a0, 84
/* 00461460 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00461464 10000021 */  b     .L004614EC
/* 00461468 8FBF0064 */   lw    $ra, 0x64($sp)
/* 0046146C 97AE007A */  lhu   $t6, 0x7a($sp)
.L00461470:
/* 00461470 97AD007A */  lhu   $t5, 0x7a($sp)
/* 00461474 11C20003 */  beq   $t6, $v0, .L00461484
/* 00461478 000D4840 */   sll   $t1, $t5, 1
/* 0046147C 15C3000E */  bne   $t6, $v1, .L004614B8
/* 00461480 97B9007A */   lhu   $t9, 0x7a($sp)
.L00461484:
/* 00461484 8F8A8D1C */  lw     $t2, %got(asm2op)($gp)
/* 00461488 8F998478 */  lw    $t9, %call16(emitcache)($gp)
/* 0046148C 012AC021 */  addu  $t8, $t1, $t2
/* 00461490 97040000 */  lhu   $a0, ($t8)
/* 00461494 93A5008B */  lbu   $a1, 0x8b($sp)
/* 00461498 8FA60084 */  lw    $a2, 0x84($sp)
/* 0046149C 93A70075 */  lbu   $a3, 0x75($sp)
/* 004614A0 0320F809 */  jalr  $t9
/* 004614A4 00000000 */   nop   
/* 004614A8 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004614AC 1000000F */  b     .L004614EC
/* 004614B0 8FBF0064 */   lw    $ra, 0x64($sp)
/* 004614B4 97B9007A */  lhu   $t9, 0x7a($sp)
.L004614B8:
/* 004614B8 8F8C8D1C */  lw     $t4, %got(asm2op)($gp)
/* 004614BC 00194040 */  sll   $t0, $t9, 1
/* 004614C0 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 004614C4 010C5821 */  addu  $t3, $t0, $t4
/* 004614C8 95640000 */  lhu   $a0, ($t3)
/* 004614CC 93A5007F */  lbu   $a1, 0x7f($sp)
/* 004614D0 8FA60084 */  lw    $a2, 0x84($sp)
/* 004614D4 93A7008B */  lbu   $a3, 0x8b($sp)
/* 004614D8 0320F809 */  jalr  $t9
/* 004614DC 00000000 */   nop   
/* 004614E0 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004614E4 00000000 */  nop   
.L004614E8:
/* 004614E8 8FBF0064 */  lw    $ra, 0x64($sp)
.L004614EC:
/* 004614EC 27BD0078 */  addiu $sp, $sp, 0x78
/* 004614F0 03E00008 */  jr    $ra
/* 004614F4 00000000 */   nop   

    .type do_parseafra, @function
    .size do_parseafra, .-do_parseafra
    .end do_parseafra

    .type func_004614F8, @function
func_004614F8:
    # 0046159C gendouble
/* 004614F8 3C1C0FBD */  .cpload $t9
/* 004614FC 279C8D68 */  
/* 00461500 0399E021 */  
/* 00461504 24070001 */  li    $a3, 1
/* 00461508 A0870000 */  sb    $a3, ($a0)
/* 0046150C A0A00000 */  sb    $zero, ($a1)
/* 00461510 944EFFEC */  lhu   $t6, -0x14($v0)
/* 00461514 00000000 */  nop   
/* 00461518 2DCF0160 */  sltiu $t7, $t6, 0x160
/* 0046151C 11E00008 */  beqz  $t7, .L00461540
/* 00461520 000EC143 */   sra   $t8, $t6, 5
/* 00461524 8F888D50 */  lw     $t0, %got(storeops)($gp)
/* 00461528 0018C880 */  sll   $t9, $t8, 2
/* 0046152C 03284821 */  addu  $t1, $t9, $t0
/* 00461530 8D2A0000 */  lw    $t2, ($t1)
/* 00461534 00000000 */  nop   
/* 00461538 01CA5804 */  sllv  $t3, $t2, $t6
/* 0046153C 296F0000 */  slti  $t7, $t3, 0
.L00461540:
/* 00461540 15E00014 */  bnez  $t7, .L00461594
/* 00461544 00000000 */   nop   
/* 00461548 8F8D8BB4 */  lw     $t5, %got(atflag)($gp)
/* 0046154C 00000000 */  nop   
/* 00461550 91AD0000 */  lbu   $t5, ($t5)
/* 00461554 00000000 */  nop   
/* 00461558 15A0000E */  bnez  $t5, .L00461594
/* 0046155C 00000000 */   nop   
/* 00461560 9043FFF2 */  lbu   $v1, -0xe($v0)
/* 00461564 90460013 */  lbu   $a2, 0x13($v0)
/* 00461568 00000000 */  nop   
/* 0046156C 10660003 */  beq   $v1, $a2, .L0046157C
/* 00461570 00000000 */   nop   
/* 00461574 03E00008 */  jr    $ra
/* 00461578 A0830000 */   sb    $v1, ($a0)

.L0046157C:
/* 0046157C 9043FFF3 */  lbu   $v1, -0xd($v0)
/* 00461580 00000000 */  nop   
/* 00461584 10660003 */  beq   $v1, $a2, .L00461594
/* 00461588 00000000 */   nop   
/* 0046158C A0830000 */  sb    $v1, ($a0)
/* 00461590 A0A70000 */  sb    $a3, ($a1)
.L00461594:
/* 00461594 03E00008 */  jr    $ra
/* 00461598 00000000 */   nop   

glabel gendouble
    .ent gendouble
    # 004638F8 func_004638F8
    # 00464528 parseafra
    # 004656D4 parseafri_fp
/* 0046159C 3C1C0FBD */  .cpload $t9
/* 004615A0 279C8CC4 */  
/* 004615A4 0399E021 */  
/* 004615A8 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 004615AC AFA50054 */  sw    $a1, 0x54($sp)
/* 004615B0 93AF0057 */  lbu   $t7, 0x57($sp)
/* 004615B4 AFA40050 */  sw    $a0, 0x50($sp)
/* 004615B8 97B90052 */  lhu   $t9, 0x52($sp)
/* 004615BC 2401006C */  li    $at, 108
/* 004615C0 25F80001 */  addiu $t8, $t7, 1
/* 004615C4 AFBF002C */  sw    $ra, 0x2c($sp)
/* 004615C8 AFBC0028 */  sw    $gp, 0x28($sp)
/* 004615CC AFA60058 */  sw    $a2, 0x58($sp)
/* 004615D0 AFA7005C */  sw    $a3, 0x5c($sp)
/* 004615D4 AFA7004C */  sw    $a3, 0x4c($sp)
/* 004615D8 A3B80042 */  sb    $t8, 0x42($sp)
/* 004615DC 17210004 */  bne   $t9, $at, .L004615F0
/* 004615E0 A3AF0043 */   sb    $t7, 0x43($sp)
/* 004615E4 24080069 */  li    $t0, 105
/* 004615E8 10000003 */  b     .L004615F8
/* 004615EC A7A8003C */   sh    $t0, 0x3c($sp)
.L004615F0:
/* 004615F0 24090070 */  li    $t1, 112
/* 004615F4 A7A9003C */  sh    $t1, 0x3c($sp)
.L004615F8:
/* 004615F8 8FAA0058 */  lw    $t2, 0x58($sp)
/* 004615FC 93AB0067 */  lbu   $t3, 0x67($sp)
/* 00461600 1140008D */  beqz  $t2, .L00461838
/* 00461604 00000000 */   nop   
/* 00461608 1560008B */  bnez  $t3, .L00461838
/* 0046160C 01402025 */   move  $a0, $t2
/* 00461610 8F998610 */  lw    $t9, %call16(is_gp_relative)($gp)
/* 00461614 8FA5005C */  lw    $a1, 0x5c($sp)
/* 00461618 93A60063 */  lbu   $a2, 0x63($sp)
/* 0046161C 0320F809 */  jalr  $t9
/* 00461620 27A7003E */   addiu $a3, $sp, 0x3e
/* 00461624 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461628 10400034 */  beqz  $v0, .L004616FC
/* 0046162C 27A40041 */   addiu $a0, $sp, 0x41
/* 00461630 93AC0057 */  lbu   $t4, 0x57($sp)
/* 00461634 93AD003E */  lbu   $t5, 0x3e($sp)
/* 00461638 00000000 */  nop   
/* 0046163C 158D0007 */  bne   $t4, $t5, .L0046165C
/* 00461640 00000000 */   nop   
/* 00461644 8F998604 */  lw    $t9, %call16(basereg_error)($gp)
/* 00461648 00000000 */  nop   
/* 0046164C 0320F809 */  jalr  $t9
/* 00461650 00000000 */   nop   
/* 00461654 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461658 00000000 */  nop   
.L0046165C:
/* 0046165C 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00461660 97A4003C */  lhu   $a0, 0x3c($sp)
/* 00461664 93A50057 */  lbu   $a1, 0x57($sp)
/* 00461668 8FA6005C */  lw    $a2, 0x5c($sp)
/* 0046166C 93A7003E */  lbu   $a3, 0x3e($sp)
/* 00461670 0320F809 */  jalr  $t9
/* 00461674 00000000 */   nop   
/* 00461678 8FBC0028 */  lw    $gp, 0x28($sp)
/* 0046167C 8FA40058 */  lw    $a0, 0x58($sp)
/* 00461680 8F8E8BB0 */  lw     $t6, %got(bbindex)($gp)
/* 00461684 8F8F8B88 */  lw     $t7, %got(proc_instr_base)($gp)
/* 00461688 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0046168C 8DCE0000 */  lw    $t6, ($t6)
/* 00461690 8DEF0000 */  lw    $t7, ($t7)
/* 00461694 24050001 */  li    $a1, 1
/* 00461698 0320F809 */  jalr  $t9
/* 0046169C 01CF3021 */   addu  $a2, $t6, $t7
/* 004616A0 8FBC0028 */  lw    $gp, 0x28($sp)
/* 004616A4 8FA6005C */  lw    $a2, 0x5c($sp)
/* 004616A8 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 004616AC 97A4003C */  lhu   $a0, 0x3c($sp)
/* 004616B0 93A50042 */  lbu   $a1, 0x42($sp)
/* 004616B4 93A7003E */  lbu   $a3, 0x3e($sp)
/* 004616B8 0320F809 */  jalr  $t9
/* 004616BC 24C60004 */   addiu $a2, $a2, 4
/* 004616C0 8FBC0028 */  lw    $gp, 0x28($sp)
/* 004616C4 8FA40058 */  lw    $a0, 0x58($sp)
/* 004616C8 8F988BB0 */  lw     $t8, %got(bbindex)($gp)
/* 004616CC 8F998B88 */  lw     $t9, %got(proc_instr_base)($gp)
/* 004616D0 8F180000 */  lw    $t8, ($t8)
/* 004616D4 8F390000 */  lw    $t9, ($t9)
/* 004616D8 24050001 */  li    $a1, 1
/* 004616DC 03193021 */  addu  $a2, $t8, $t9
/* 004616E0 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 004616E4 00000000 */  nop   
/* 004616E8 0320F809 */  jalr  $t9
/* 004616EC 00000000 */   nop   
/* 004616F0 8FBC0028 */  lw    $gp, 0x28($sp)
/* 004616F4 1000015A */  b     .L00461C60
/* 004616F8 8FBF002C */   lw    $ra, 0x2c($sp)
.L004616FC:
/* 004616FC 8F99802C */  lw    $t9, %got(func_004614F8)($gp)
/* 00461700 27A5003B */  addiu $a1, $sp, 0x3b
/* 00461704 273914F8 */  addiu $t9, %lo(func_004614F8) # addiu $t9, $t9, 0x14f8
/* 00461708 0320F809 */  jalr  $t9
/* 0046170C 27A20050 */   addiu $v0, $sp, 0x50
/* 00461710 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461714 97AB0052 */  lhu   $t3, 0x52($sp)
/* 00461718 8F998608 */  lw    $t9, %call16(setup_tempreg)($gp)
/* 0046171C 93A50041 */  lbu   $a1, 0x41($sp)
/* 00461720 93A60063 */  lbu   $a2, 0x63($sp)
/* 00461724 27A8004C */  addiu $t0, $sp, 0x4c
/* 00461728 27A9003A */  addiu $t1, $sp, 0x3a
/* 0046172C AFA90014 */  sw    $t1, 0x14($sp)
/* 00461730 AFA80010 */  sw    $t0, 0x10($sp)
/* 00461734 24040002 */  li    $a0, 2
/* 00461738 27A70058 */  addiu $a3, $sp, 0x58
/* 0046173C AFA00018 */  sw    $zero, 0x18($sp)
/* 00461740 0320F809 */  jalr  $t9
/* 00461744 AFAB001C */   sw    $t3, 0x1c($sp)
/* 00461748 93AA003B */  lbu   $t2, 0x3b($sp)
/* 0046174C 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461750 11400009 */  beqz  $t2, .L00461778
/* 00461754 8FA6004C */   lw    $a2, 0x4c($sp)
/* 00461758 8FA2004C */  lw    $v0, 0x4c($sp)
/* 0046175C 93AC0043 */  lbu   $t4, 0x43($sp)
/* 00461760 93A50042 */  lbu   $a1, 0x42($sp)
/* 00461764 24460004 */  addiu $a2, $v0, 4
/* 00461768 AFA20044 */  sw    $v0, 0x44($sp)
/* 0046176C 10000007 */  b     .L0046178C
/* 00461770 A3AC003F */   sb    $t4, 0x3f($sp)
/* 00461774 8FA6004C */  lw    $a2, 0x4c($sp)
.L00461778:
/* 00461778 93AE0042 */  lbu   $t6, 0x42($sp)
/* 0046177C 24CD0004 */  addiu $t5, $a2, 4
/* 00461780 93A50043 */  lbu   $a1, 0x43($sp)
/* 00461784 AFAD0044 */  sw    $t5, 0x44($sp)
/* 00461788 A3AE003F */  sb    $t6, 0x3f($sp)
.L0046178C:
/* 0046178C 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00461790 97A4003C */  lhu   $a0, 0x3c($sp)
/* 00461794 93A70041 */  lbu   $a3, 0x41($sp)
/* 00461798 0320F809 */  jalr  $t9
/* 0046179C 00000000 */   nop   
/* 004617A0 8FAF0058 */  lw    $t7, 0x58($sp)
/* 004617A4 8FBC0028 */  lw    $gp, 0x28($sp)
/* 004617A8 11E0000D */  beqz  $t7, .L004617E0
/* 004617AC 00000000 */   nop   
/* 004617B0 8F988BB0 */  lw     $t8, %got(bbindex)($gp)
/* 004617B4 8F998B88 */  lw     $t9, %got(proc_instr_base)($gp)
/* 004617B8 8F180000 */  lw    $t8, ($t8)
/* 004617BC 8F390000 */  lw    $t9, ($t9)
/* 004617C0 93A5003A */  lbu   $a1, 0x3a($sp)
/* 004617C4 03193021 */  addu  $a2, $t8, $t9
/* 004617C8 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 004617CC 01E02025 */  move  $a0, $t7
/* 004617D0 0320F809 */  jalr  $t9
/* 004617D4 00000000 */   nop   
/* 004617D8 8FBC0028 */  lw    $gp, 0x28($sp)
/* 004617DC 00000000 */  nop   
.L004617E0:
/* 004617E0 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 004617E4 97A4003C */  lhu   $a0, 0x3c($sp)
/* 004617E8 93A5003F */  lbu   $a1, 0x3f($sp)
/* 004617EC 8FA60044 */  lw    $a2, 0x44($sp)
/* 004617F0 93A70041 */  lbu   $a3, 0x41($sp)
/* 004617F4 0320F809 */  jalr  $t9
/* 004617F8 00000000 */   nop   
/* 004617FC 8FA80058 */  lw    $t0, 0x58($sp)
/* 00461800 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461804 11000115 */  beqz  $t0, .L00461C5C
/* 00461808 01002025 */   move  $a0, $t0
/* 0046180C 8F898BB0 */  lw     $t1, %got(bbindex)($gp)
/* 00461810 8F8B8B88 */  lw     $t3, %got(proc_instr_base)($gp)
/* 00461814 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00461818 8D290000 */  lw    $t1, ($t1)
/* 0046181C 8D6B0000 */  lw    $t3, ($t3)
/* 00461820 93A5003A */  lbu   $a1, 0x3a($sp)
/* 00461824 0320F809 */  jalr  $t9
/* 00461828 012B3021 */   addu  $a2, $t1, $t3
/* 0046182C 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461830 1000010B */  b     .L00461C60
/* 00461834 8FBF002C */   lw    $ra, 0x2c($sp)
.L00461838:
/* 00461838 8FAA005C */  lw    $t2, 0x5c($sp)
/* 0046183C 27A40041 */  addiu $a0, $sp, 0x41
/* 00461840 29418000 */  slti  $at, $t2, -0x8000
/* 00461844 14200003 */  bnez  $at, .L00461854
/* 00461848 29417FFD */   slti  $at, $t2, 0x7ffd
/* 0046184C 1420008A */  bnez  $at, .L00461A78
/* 00461850 93A70063 */   lbu   $a3, 0x63($sp)
.L00461854:
/* 00461854 8F99802C */  lw    $t9, %got(func_004614F8)($gp)
/* 00461858 27A5003B */  addiu $a1, $sp, 0x3b
/* 0046185C 273914F8 */  addiu $t9, %lo(func_004614F8) # addiu $t9, $t9, 0x14f8
/* 00461860 0320F809 */  jalr  $t9
/* 00461864 27A20050 */   addiu $v0, $sp, 0x50
/* 00461868 93AC0041 */  lbu   $t4, 0x41($sp)
/* 0046186C 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461870 24010001 */  li    $at, 1
/* 00461874 1581000D */  bne   $t4, $at, .L004618AC
/* 00461878 00000000 */   nop   
/* 0046187C 8F8D8BB4 */  lw     $t5, %got(atflag)($gp)
/* 00461880 00000000 */  nop   
/* 00461884 91AD0000 */  lbu   $t5, ($t5)
/* 00461888 00000000 */  nop   
/* 0046188C 15A00007 */  bnez  $t5, .L004618AC
/* 00461890 00000000 */   nop   
/* 00461894 8F9984C8 */  lw    $t9, %call16(macro_error)($gp)
/* 00461898 00000000 */  nop   
/* 0046189C 0320F809 */  jalr  $t9
/* 004618A0 00000000 */   nop   
/* 004618A4 8FBC0028 */  lw    $gp, 0x28($sp)
/* 004618A8 00000000 */  nop   
.L004618AC:
/* 004618AC 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 004618B0 8FA5004C */  lw    $a1, 0x4c($sp)
/* 004618B4 0320F809 */  jalr  $t9
/* 004618B8 24040001 */   li    $a0, 1
/* 004618BC 8FBC0028 */  lw    $gp, 0x28($sp)
/* 004618C0 93A50041 */  lbu   $a1, 0x41($sp)
/* 004618C4 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 004618C8 2404005A */  li    $a0, 90
/* 004618CC 00003025 */  move  $a2, $zero
/* 004618D0 0320F809 */  jalr  $t9
/* 004618D4 00403825 */   move  $a3, $v0
/* 004618D8 93A70063 */  lbu   $a3, 0x63($sp)
/* 004618DC 8FBC0028 */  lw    $gp, 0x28($sp)
/* 004618E0 24010048 */  li    $at, 72
/* 004618E4 10E1000B */  beq   $a3, $at, .L00461914
/* 004618E8 93AE003B */   lbu   $t6, 0x3b($sp)
/* 004618EC 10E00009 */  beqz  $a3, .L00461914
/* 004618F0 93AE003B */   lbu   $t6, 0x3b($sp)
/* 004618F4 93A50041 */  lbu   $a1, 0x41($sp)
/* 004618F8 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 004618FC 24040015 */  li    $a0, 21
/* 00461900 0320F809 */  jalr  $t9
/* 00461904 00A03025 */   move  $a2, $a1
/* 00461908 8FBC0028 */  lw    $gp, 0x28($sp)
/* 0046190C 00000000 */  nop   
/* 00461910 93AE003B */  lbu   $t6, 0x3b($sp)
.L00461914:
/* 00461914 8FA5004C */  lw    $a1, 0x4c($sp)
/* 00461918 11C0001C */  beqz  $t6, .L0046198C
/* 0046191C 00000000 */   nop   
/* 00461920 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00461924 00002025 */  move  $a0, $zero
/* 00461928 0320F809 */  jalr  $t9
/* 0046192C 24A50004 */   addiu $a1, $a1, 4
/* 00461930 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461934 97A4003C */  lhu   $a0, 0x3c($sp)
/* 00461938 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0046193C 93A50042 */  lbu   $a1, 0x42($sp)
/* 00461940 93A70041 */  lbu   $a3, 0x41($sp)
/* 00461944 0320F809 */  jalr  $t9
/* 00461948 00403025 */   move  $a2, $v0
/* 0046194C 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461950 8FA5004C */  lw    $a1, 0x4c($sp)
/* 00461954 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00461958 00002025 */  move  $a0, $zero
/* 0046195C 0320F809 */  jalr  $t9
/* 00461960 00000000 */   nop   
/* 00461964 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461968 97A4003C */  lhu   $a0, 0x3c($sp)
/* 0046196C 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00461970 93A50043 */  lbu   $a1, 0x43($sp)
/* 00461974 93A70041 */  lbu   $a3, 0x41($sp)
/* 00461978 0320F809 */  jalr  $t9
/* 0046197C 00403025 */   move  $a2, $v0
/* 00461980 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461984 100000B6 */  b     .L00461C60
/* 00461988 8FBF002C */   lw    $ra, 0x2c($sp)
.L0046198C:
/* 0046198C 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00461990 8FA5004C */  lw    $a1, 0x4c($sp)
/* 00461994 0320F809 */  jalr  $t9
/* 00461998 00002025 */   move  $a0, $zero
/* 0046199C 8FBC0028 */  lw    $gp, 0x28($sp)
/* 004619A0 97A4003C */  lhu   $a0, 0x3c($sp)
/* 004619A4 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 004619A8 93A50043 */  lbu   $a1, 0x43($sp)
/* 004619AC 93A70041 */  lbu   $a3, 0x41($sp)
/* 004619B0 0320F809 */  jalr  $t9
/* 004619B4 00403025 */   move  $a2, $v0
/* 004619B8 8FAF004C */  lw    $t7, 0x4c($sp)
/* 004619BC 8FBC0028 */  lw    $gp, 0x28($sp)
/* 004619C0 24017FFC */  li    $at, 32764
/* 004619C4 15E1001D */  bne   $t7, $at, .L00461A3C
/* 004619C8 8FA5004C */   lw    $a1, 0x4c($sp)
/* 004619CC 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 004619D0 00002025 */  move  $a0, $zero
/* 004619D4 0320F809 */  jalr  $t9
/* 004619D8 24050004 */   li    $a1, 4
/* 004619DC 8FBC0028 */  lw    $gp, 0x28($sp)
/* 004619E0 93A50041 */  lbu   $a1, 0x41($sp)
/* 004619E4 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 004619E8 24040054 */  li    $a0, 84
/* 004619EC 00403825 */  move  $a3, $v0
/* 004619F0 0320F809 */  jalr  $t9
/* 004619F4 00A03025 */   move  $a2, $a1
/* 004619F8 8FBC0028 */  lw    $gp, 0x28($sp)
/* 004619FC 8FA5004C */  lw    $a1, 0x4c($sp)
/* 00461A00 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00461A04 00002025 */  move  $a0, $zero
/* 00461A08 0320F809 */  jalr  $t9
/* 00461A0C 00000000 */   nop   
/* 00461A10 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461A14 97A4003C */  lhu   $a0, 0x3c($sp)
/* 00461A18 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00461A1C 93A50043 */  lbu   $a1, 0x43($sp)
/* 00461A20 93A70041 */  lbu   $a3, 0x41($sp)
/* 00461A24 0320F809 */  jalr  $t9
/* 00461A28 00403025 */   move  $a2, $v0
/* 00461A2C 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461A30 1000008B */  b     .L00461C60
/* 00461A34 8FBF002C */   lw    $ra, 0x2c($sp)
/* 00461A38 8FA5004C */  lw    $a1, 0x4c($sp)
.L00461A3C:
/* 00461A3C 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00461A40 00002025 */  move  $a0, $zero
/* 00461A44 0320F809 */  jalr  $t9
/* 00461A48 24A50004 */   addiu $a1, $a1, 4
/* 00461A4C 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461A50 97A4003C */  lhu   $a0, 0x3c($sp)
/* 00461A54 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00461A58 93A50042 */  lbu   $a1, 0x42($sp)
/* 00461A5C 93A70041 */  lbu   $a3, 0x41($sp)
/* 00461A60 0320F809 */  jalr  $t9
/* 00461A64 00403025 */   move  $a2, $v0
/* 00461A68 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461A6C 1000007C */  b     .L00461C60
/* 00461A70 8FBF002C */   lw    $ra, 0x2c($sp)
/* 00461A74 93A70063 */  lbu   $a3, 0x63($sp)
.L00461A78:
/* 00461A78 24010048 */  li    $at, 72
/* 00461A7C 10E10003 */  beq   $a3, $at, .L00461A8C
/* 00461A80 00000000 */   nop   
/* 00461A84 14E00003 */  bnez  $a3, .L00461A94
/* 00461A88 93B80067 */   lbu   $t8, 0x67($sp)
.L00461A8C:
/* 00461A8C A3A00063 */  sb    $zero, 0x63($sp)
/* 00461A90 93B80067 */  lbu   $t8, 0x67($sp)
.L00461A94:
/* 00461A94 8FB90058 */  lw    $t9, 0x58($sp)
/* 00461A98 1300004B */  beqz  $t8, .L00461BC8
/* 00461A9C 93AC0057 */   lbu   $t4, 0x57($sp)
/* 00461AA0 13200048 */  beqz  $t9, .L00461BC4
/* 00461AA4 27A40041 */   addiu $a0, $sp, 0x41
/* 00461AA8 8F99802C */  lw    $t9, %got(func_004614F8)($gp)
/* 00461AAC 27A5003B */  addiu $a1, $sp, 0x3b
/* 00461AB0 273914F8 */  addiu $t9, %lo(func_004614F8) # addiu $t9, $t9, 0x14f8
/* 00461AB4 0320F809 */  jalr  $t9
/* 00461AB8 27A20050 */   addiu $v0, $sp, 0x50
/* 00461ABC 93A80041 */  lbu   $t0, 0x41($sp)
/* 00461AC0 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461AC4 24010001 */  li    $at, 1
/* 00461AC8 1501000D */  bne   $t0, $at, .L00461B00
/* 00461ACC 00000000 */   nop   
/* 00461AD0 8F898BB4 */  lw     $t1, %got(atflag)($gp)
/* 00461AD4 00000000 */  nop   
/* 00461AD8 91290000 */  lbu   $t1, ($t1)
/* 00461ADC 00000000 */  nop   
/* 00461AE0 15200007 */  bnez  $t1, .L00461B00
/* 00461AE4 00000000 */   nop   
/* 00461AE8 8F9984C8 */  lw    $t9, %call16(macro_error)($gp)
/* 00461AEC 00000000 */  nop   
/* 00461AF0 0320F809 */  jalr  $t9
/* 00461AF4 00000000 */   nop   
/* 00461AF8 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461AFC 00000000 */  nop   
.L00461B00:
/* 00461B00 8F99848C */  lw    $t9, %call16(loadimmed)($gp)
/* 00461B04 93A50041 */  lbu   $a1, 0x41($sp)
/* 00461B08 8FA60058 */  lw    $a2, 0x58($sp)
/* 00461B0C 0320F809 */  jalr  $t9
/* 00461B10 00002025 */   move  $a0, $zero
/* 00461B14 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461B18 93A60041 */  lbu   $a2, 0x41($sp)
/* 00461B1C 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00461B20 93A70063 */  lbu   $a3, 0x63($sp)
/* 00461B24 24040015 */  li    $a0, 21
/* 00461B28 0320F809 */  jalr  $t9
/* 00461B2C 00C02825 */   move  $a1, $a2
/* 00461B30 93A70063 */  lbu   $a3, 0x63($sp)
/* 00461B34 93AA0043 */  lbu   $t2, 0x43($sp)
/* 00461B38 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461B3C 15470011 */  bne   $t2, $a3, .L00461B84
/* 00461B40 00000000 */   nop   
/* 00461B44 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00461B48 97A4003C */  lhu   $a0, 0x3c($sp)
/* 00461B4C 93A50042 */  lbu   $a1, 0x42($sp)
/* 00461B50 93A70041 */  lbu   $a3, 0x41($sp)
/* 00461B54 0320F809 */  jalr  $t9
/* 00461B58 24060004 */   li    $a2, 4
/* 00461B5C 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461B60 97A4003C */  lhu   $a0, 0x3c($sp)
/* 00461B64 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00461B68 93A50043 */  lbu   $a1, 0x43($sp)
/* 00461B6C 93A70041 */  lbu   $a3, 0x41($sp)
/* 00461B70 0320F809 */  jalr  $t9
/* 00461B74 00003025 */   move  $a2, $zero
/* 00461B78 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461B7C 10000038 */  b     .L00461C60
/* 00461B80 8FBF002C */   lw    $ra, 0x2c($sp)
.L00461B84:
/* 00461B84 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00461B88 97A4003C */  lhu   $a0, 0x3c($sp)
/* 00461B8C 93A50043 */  lbu   $a1, 0x43($sp)
/* 00461B90 93A70041 */  lbu   $a3, 0x41($sp)
/* 00461B94 0320F809 */  jalr  $t9
/* 00461B98 00003025 */   move  $a2, $zero
/* 00461B9C 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461BA0 97A4003C */  lhu   $a0, 0x3c($sp)
/* 00461BA4 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00461BA8 93A50042 */  lbu   $a1, 0x42($sp)
/* 00461BAC 93A70041 */  lbu   $a3, 0x41($sp)
/* 00461BB0 0320F809 */  jalr  $t9
/* 00461BB4 24060004 */   li    $a2, 4
/* 00461BB8 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461BBC 10000028 */  b     .L00461C60
/* 00461BC0 8FBF002C */   lw    $ra, 0x2c($sp)
.L00461BC4:
/* 00461BC4 93AC0057 */  lbu   $t4, 0x57($sp)
.L00461BC8:
/* 00461BC8 93AD0063 */  lbu   $t5, 0x63($sp)
/* 00461BCC 97A4003C */  lhu   $a0, 0x3c($sp)
/* 00461BD0 158D0012 */  bne   $t4, $t5, .L00461C1C
/* 00461BD4 01A03825 */   move  $a3, $t5
/* 00461BD8 8FA6005C */  lw    $a2, 0x5c($sp)
/* 00461BDC 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00461BE0 97A4003C */  lhu   $a0, 0x3c($sp)
/* 00461BE4 93A50042 */  lbu   $a1, 0x42($sp)
/* 00461BE8 0320F809 */  jalr  $t9
/* 00461BEC 24C60004 */   addiu $a2, $a2, 4
/* 00461BF0 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461BF4 93A70063 */  lbu   $a3, 0x63($sp)
/* 00461BF8 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00461BFC 97A4003C */  lhu   $a0, 0x3c($sp)
/* 00461C00 93A50057 */  lbu   $a1, 0x57($sp)
/* 00461C04 8FA6005C */  lw    $a2, 0x5c($sp)
/* 00461C08 0320F809 */  jalr  $t9
/* 00461C0C 00000000 */   nop   
/* 00461C10 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461C14 10000012 */  b     .L00461C60
/* 00461C18 8FBF002C */   lw    $ra, 0x2c($sp)
.L00461C1C:
/* 00461C1C 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00461C20 93A50057 */  lbu   $a1, 0x57($sp)
/* 00461C24 8FA6005C */  lw    $a2, 0x5c($sp)
/* 00461C28 93A70063 */  lbu   $a3, 0x63($sp)
/* 00461C2C 0320F809 */  jalr  $t9
/* 00461C30 00000000 */   nop   
/* 00461C34 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461C38 8FA6005C */  lw    $a2, 0x5c($sp)
/* 00461C3C 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00461C40 93A70063 */  lbu   $a3, 0x63($sp)
/* 00461C44 97A4003C */  lhu   $a0, 0x3c($sp)
/* 00461C48 93A50042 */  lbu   $a1, 0x42($sp)
/* 00461C4C 0320F809 */  jalr  $t9
/* 00461C50 24C60004 */   addiu $a2, $a2, 4
/* 00461C54 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00461C58 00000000 */  nop   
.L00461C5C:
/* 00461C5C 8FBF002C */  lw    $ra, 0x2c($sp)
.L00461C60:
/* 00461C60 27BD0050 */  addiu $sp, $sp, 0x50
/* 00461C64 03E00008 */  jr    $ra
/* 00461C68 00000000 */   nop   

    .type gendouble, @function
    .size gendouble, .-gendouble
    .end gendouble

    .type func_00461C6C, @function
func_00461C6C:
    # 00464528 parseafra
/* 00461C6C 3C1C0FBD */  .cpload $t9
/* 00461C70 279C85F4 */  
/* 00461C74 0399E021 */  
/* 00461C78 24010048 */  li    $at, 72
/* 00461C7C 10810012 */  beq   $a0, $at, .L00461CC8
/* 00461C80 AFA40000 */   sw    $a0, ($sp)
/* 00461C84 2C8E0060 */  sltiu $t6, $a0, 0x60
/* 00461C88 11C00008 */  beqz  $t6, .L00461CAC
/* 00461C8C 00047943 */   sra   $t7, $a0, 5
/* 00461C90 8F998D5C */  lw     $t9, %got(knownregs)($gp)
/* 00461C94 000FC080 */  sll   $t8, $t7, 2
/* 00461C98 03194021 */  addu  $t0, $t8, $t9
/* 00461C9C 8D090000 */  lw    $t1, ($t0)
/* 00461CA0 00000000 */  nop   
/* 00461CA4 00895004 */  sllv  $t2, $t1, $a0
/* 00461CA8 294E0000 */  slti  $t6, $t2, 0
.L00461CAC:
/* 00461CAC 15C00006 */  bnez  $t6, .L00461CC8
/* 00461CB0 00000000 */   nop   
/* 00461CB4 8F828B94 */  lw     $v0, %got(opts)($gp)
/* 00461CB8 00000000 */  nop   
/* 00461CBC 9042001C */  lbu   $v0, 0x1c($v0)
/* 00461CC0 03E00008 */  jr    $ra
/* 00461CC4 00000000 */   nop   

.L00461CC8:
/* 00461CC8 14C00003 */  bnez  $a2, .L00461CD8
/* 00461CCC 00000000 */   nop   
/* 00461CD0 10000037 */  b     .L00461DB0
/* 00461CD4 00A01825 */   move  $v1, $a1
.L00461CD8:
/* 00461CD8 8CCD0030 */  lw    $t5, 0x30($a2)
/* 00461CDC 8F8C8AE0 */  lw     $t4, %got(memory)($gp)
/* 00461CE0 000D7880 */  sll   $t7, $t5, 2
/* 00461CE4 01ED7823 */  subu  $t7, $t7, $t5
/* 00461CE8 000F7880 */  sll   $t7, $t7, 2
/* 00461CEC 8D8C0000 */  lw    $t4, ($t4)
/* 00461CF0 01ED7823 */  subu  $t7, $t7, $t5
/* 00461CF4 000F7880 */  sll   $t7, $t7, 2
/* 00461CF8 018FC021 */  addu  $t8, $t4, $t7
/* 00461CFC 93020008 */  lbu   $v0, 8($t8)
/* 00461D00 24010004 */  li    $at, 4
/* 00461D04 1041000F */  beq   $v0, $at, .L00461D44
/* 00461D08 24010003 */   li    $at, 3
/* 00461D0C 1041000D */  beq   $v0, $at, .L00461D44
/* 00461D10 00000000 */   nop   
/* 00461D14 8F998B94 */  lw     $t9, %got(opts)($gp)
/* 00461D18 00000000 */  nop   
/* 00461D1C 9339001D */  lbu   $t9, 0x1d($t9)
/* 00461D20 00000000 */  nop   
/* 00461D24 13200014 */  beqz  $t9, .L00461D78
/* 00461D28 24010002 */   li    $at, 2
/* 00461D2C 90C30034 */  lbu   $v1, 0x34($a2)
/* 00461D30 24010043 */  li    $at, 67
/* 00461D34 10610003 */  beq   $v1, $at, .L00461D44
/* 00461D38 24010045 */   li    $at, 69
/* 00461D3C 1461000E */  bne   $v1, $at, .L00461D78
/* 00461D40 24010002 */   li    $at, 2
.L00461D44:
/* 00461D44 8CC80010 */  lw    $t0, 0x10($a2)
/* 00461D48 00000000 */  nop   
/* 00461D4C 29010009 */  slti  $at, $t0, 9
/* 00461D50 14200002 */  bnez  $at, .L00461D5C
/* 00461D54 00000000 */   nop   
/* 00461D58 24080008 */  li    $t0, 8
.L00461D5C:
/* 00461D5C 8F8989EC */  lw     $t1, %got(size_to_alignment)($gp)
/* 00461D60 00000000 */  nop   
/* 00461D64 01095021 */  addu  $t2, $t0, $t1
/* 00461D68 914B0000 */  lbu   $t3, ($t2)
/* 00461D6C 10000010 */  b     .L00461DB0
/* 00461D70 01651821 */   addu  $v1, $t3, $a1
/* 00461D74 24010002 */  li    $at, 2
.L00461D78:
/* 00461D78 10410003 */  beq   $v0, $at, .L00461D88
/* 00461D7C 24010001 */   li    $at, 1
/* 00461D80 14410006 */  bne   $v0, $at, .L00461D9C
/* 00461D84 00000000 */   nop   
.L00461D88:
/* 00461D88 8CCE0010 */  lw    $t6, 0x10($a2)
/* 00461D8C 00000000 */  nop   
/* 00461D90 01C51821 */  addu  $v1, $t6, $a1
/* 00461D94 10000006 */  b     .L00461DB0
/* 00461D98 24630010 */   addiu $v1, $v1, 0x10
.L00461D9C:
/* 00461D9C 8F828B94 */  lw     $v0, %got(opts)($gp)
/* 00461DA0 00000000 */  nop   
/* 00461DA4 9042001C */  lbu   $v0, 0x1c($v0)
/* 00461DA8 03E00008 */  jr    $ra
/* 00461DAC 00000000 */   nop   

.L00461DB0:
/* 00461DB0 8F8C89F0 */  lw     $t4, %got(addr_to_alignment)($gp)
/* 00461DB4 8F998B94 */  lw     $t9, %got(opts)($gp)
/* 00461DB8 306D0007 */  andi  $t5, $v1, 7
/* 00461DBC 01AC7821 */  addu  $t7, $t5, $t4
/* 00461DC0 91F80000 */  lbu   $t8, ($t7)
/* 00461DC4 9339001C */  lbu   $t9, 0x1c($t9)
/* 00461DC8 00000000 */  nop   
/* 00461DCC 0338082A */  slt   $at, $t9, $t8
/* 00461DD0 10200002 */  beqz  $at, .L00461DDC
/* 00461DD4 03201025 */   move  $v0, $t9
/* 00461DD8 03001025 */  move  $v0, $t8
.L00461DDC:
/* 00461DDC 03E00008 */  jr    $ra
/* 00461DE0 00000000 */   nop   

    .type func_00461DE4, @function
func_00461DE4:
    # 00461EE0 func_00461EE0
/* 00461DE4 3C1C0FBD */  .cpload $t9
/* 00461DE8 279C847C */  
/* 00461DEC 0399E021 */  
/* 00461DF0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 00461DF4 AFA40038 */  sw    $a0, 0x38($sp)
/* 00461DF8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00461DFC AFBC0020 */  sw    $gp, 0x20($sp)
/* 00461E00 AFB1001C */  sw    $s1, 0x1c($sp)
/* 00461E04 AFB00018 */  sw    $s0, 0x18($sp)
/* 00461E08 8C4EFFFC */  lw    $t6, -4($v0)
/* 00461E0C 8C4FFFF8 */  lw    $t7, -8($v0)
/* 00461E10 90470017 */  lbu   $a3, 0x17($v0)
/* 00461E14 90450007 */  lbu   $a1, 7($v0)
/* 00461E18 8FB80038 */  lw    $t8, 0x38($sp)
/* 00461E1C 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00461E20 95C4FFF2 */  lhu   $a0, -0xe($t6)
/* 00461E24 00408025 */  move  $s0, $v0
/* 00461E28 AFA7002C */  sw    $a3, 0x2c($sp)
/* 00461E2C AFA50030 */  sw    $a1, 0x30($sp)
/* 00461E30 0320F809 */  jalr  $t9
/* 00461E34 01F83021 */   addu  $a2, $t7, $t8
/* 00461E38 8E110008 */  lw    $s1, 8($s0)
/* 00461E3C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00461E40 1220000D */  beqz  $s1, .L00461E78
/* 00461E44 00000000 */   nop   
/* 00461E48 8F998BB0 */  lw     $t9, %got(bbindex)($gp)
/* 00461E4C 8F888B88 */  lw     $t0, %got(proc_instr_base)($gp)
/* 00461E50 8F390000 */  lw    $t9, ($t9)
/* 00461E54 8D080000 */  lw    $t0, ($t0)
/* 00461E58 9205000F */  lbu   $a1, 0xf($s0)
/* 00461E5C 03283021 */  addu  $a2, $t9, $t0
/* 00461E60 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00461E64 02202025 */  move  $a0, $s1
/* 00461E68 0320F809 */  jalr  $t9
/* 00461E6C 00000000 */   nop   
/* 00461E70 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00461E74 00000000 */  nop   
.L00461E78:
/* 00461E78 8E09FFF4 */  lw    $t1, -0xc($s0)
/* 00461E7C 8FAA0038 */  lw    $t2, 0x38($sp)
/* 00461E80 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00461E84 9604FFF0 */  lhu   $a0, -0x10($s0)
/* 00461E88 8FA50030 */  lw    $a1, 0x30($sp)
/* 00461E8C 8FA7002C */  lw    $a3, 0x2c($sp)
/* 00461E90 0320F809 */  jalr  $t9
/* 00461E94 012A3021 */   addu  $a2, $t1, $t2
/* 00461E98 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00461E9C 1220000B */  beqz  $s1, .L00461ECC
/* 00461EA0 02202025 */   move  $a0, $s1
/* 00461EA4 8F8B8BB0 */  lw     $t3, %got(bbindex)($gp)
/* 00461EA8 8F8C8B88 */  lw     $t4, %got(proc_instr_base)($gp)
/* 00461EAC 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00461EB0 8D6B0000 */  lw    $t3, ($t3)
/* 00461EB4 8D8C0000 */  lw    $t4, ($t4)
/* 00461EB8 9205000F */  lbu   $a1, 0xf($s0)
/* 00461EBC 0320F809 */  jalr  $t9
/* 00461EC0 016C3021 */   addu  $a2, $t3, $t4
/* 00461EC4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00461EC8 00000000 */  nop   
.L00461ECC:
/* 00461ECC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 00461ED0 8FB00018 */  lw    $s0, 0x18($sp)
/* 00461ED4 8FB1001C */  lw    $s1, 0x1c($sp)
/* 00461ED8 03E00008 */  jr    $ra
/* 00461EDC 27BD0038 */   addiu $sp, $sp, 0x38

    .type func_00461EE0, @function
func_00461EE0:
    # 00462320 func_00462320
/* 00461EE0 3C1C0FBD */  .cpload $t9
/* 00461EE4 279C8380 */  
/* 00461EE8 0399E021 */  
/* 00461EEC 27BDFF30 */  addiu $sp, $sp, -0xd0
/* 00461EF0 AFA400D0 */  sw    $a0, 0xd0($sp)
/* 00461EF4 AFA700DC */  sw    $a3, 0xdc($sp)
/* 00461EF8 97A700D2 */  lhu   $a3, 0xd2($sp)
/* 00461EFC AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 00461F00 24EEFF40 */  addiu $t6, $a3, -0xc0
/* 00461F04 2DCF00C0 */  sltiu $t7, $t6, 0xc0
/* 00461F08 AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 00461F0C AFA500D4 */  sw    $a1, 0xd4($sp)
/* 00461F10 AFA600D8 */  sw    $a2, 0xd8($sp)
/* 00461F14 11E0000A */  beqz  $t7, .L00461F40
/* 00461F18 AFA200CC */   sw    $v0, 0xcc($sp)
/* 00461F1C 8F888080 */  lw    $t0, %got(D_10004E50)($gp)
/* 00461F20 000EC143 */  sra   $t8, $t6, 5
/* 00461F24 0018C880 */  sll   $t9, $t8, 2
/* 00461F28 25084E50 */  addiu $t0, %lo(D_10004E50) # addiu $t0, $t0, 0x4e50
/* 00461F2C 01194821 */  addu  $t1, $t0, $t9
/* 00461F30 8D2A0000 */  lw    $t2, ($t1)
/* 00461F34 00000000 */  nop   
/* 00461F38 01CA5804 */  sllv  $t3, $t2, $t6
/* 00461F3C 296F0000 */  slti  $t7, $t3, 0
.L00461F40:
/* 00461F40 11E00003 */  beqz  $t7, .L00461F50
/* 00461F44 240100CE */   li    $at, 206
/* 00461F48 10000002 */  b     .L00461F54
/* 00461F4C 24020003 */   li    $v0, 3
.L00461F50:
/* 00461F50 24020007 */  li    $v0, 7
.L00461F54:
/* 00461F54 8F848B14 */  lw     $a0, %got(bigendian)($gp)
/* 00461F58 8FA300E0 */  lw    $v1, 0xe0($sp)
/* 00461F5C 90840000 */  lbu   $a0, ($a0)
/* 00461F60 24080068 */  li    $t0, 104
/* 00461F64 10800007 */  beqz  $a0, .L00461F84
/* 00461F68 0043C021 */   addu  $t8, $v0, $v1
/* 00461F6C 8FA300E0 */  lw    $v1, 0xe0($sp)
/* 00461F70 00000000 */  nop   
/* 00461F74 00436821 */  addu  $t5, $v0, $v1
/* 00461F78 AFAD00C4 */  sw    $t5, 0xc4($sp)
/* 00461F7C 10000003 */  b     .L00461F8C
/* 00461F80 AFA300C8 */   sw    $v1, 0xc8($sp)
.L00461F84:
/* 00461F84 AFA300C4 */  sw    $v1, 0xc4($sp)
/* 00461F88 AFB800C8 */  sw    $t8, 0xc8($sp)
.L00461F8C:
/* 00461F8C 10E10004 */  beq   $a3, $at, .L00461FA0
/* 00461F90 27A200D0 */   addiu $v0, $sp, 0xd0
/* 00461F94 24010173 */  li    $at, 371
/* 00461F98 14E10007 */  bne   $a3, $at, .L00461FB8
/* 00461F9C 240100D1 */   li    $at, 209
.L00461FA0:
/* 00461FA0 8FB900CC */  lw    $t9, 0xcc($sp)
/* 00461FA4 2409006C */  li    $t1, 108
/* 00461FA8 A728FFF2 */  sh    $t0, -0xe($t9)
/* 00461FAC 10000016 */  b     .L00462008
/* 00461FB0 A7A900C0 */   sh    $t1, 0xc0($sp)
/* 00461FB4 240100D1 */  li    $at, 209
.L00461FB8:
/* 00461FB8 14E10006 */  bne   $a3, $at, .L00461FD4
/* 00461FBC 240A006F */   li    $t2, 111
/* 00461FC0 8FAE00CC */  lw    $t6, 0xcc($sp)
/* 00461FC4 240B0071 */  li    $t3, 113
/* 00461FC8 A5CAFFF2 */  sh    $t2, -0xe($t6)
/* 00461FCC 1000000E */  b     .L00462008
/* 00461FD0 A7AB00C0 */   sh    $t3, 0xc0($sp)
.L00461FD4:
/* 00461FD4 24010165 */  li    $at, 357
/* 00461FD8 14E10007 */  bne   $a3, $at, .L00461FF8
/* 00461FDC 24180082 */   li    $t8, 130
/* 00461FE0 8FAF00CC */  lw    $t7, 0xcc($sp)
/* 00461FE4 240C007F */  li    $t4, 127
/* 00461FE8 240D0080 */  li    $t5, 128
/* 00461FEC A5ECFFF2 */  sh    $t4, -0xe($t7)
/* 00461FF0 10000005 */  b     .L00462008
/* 00461FF4 A7AD00C0 */   sh    $t5, 0xc0($sp)
.L00461FF8:
/* 00461FF8 8FA800CC */  lw    $t0, 0xcc($sp)
/* 00461FFC 24190083 */  li    $t9, 131
/* 00462000 A518FFF2 */  sh    $t8, -0xe($t0)
/* 00462004 A7B900C0 */  sh    $t9, 0xc0($sp)
.L00462008:
/* 00462008 93A600EB */  lbu   $a2, 0xeb($sp)
/* 0046200C 24010048 */  li    $at, 72
/* 00462010 10C10053 */  beq   $a2, $at, .L00462160
/* 00462014 00000000 */   nop   
/* 00462018 93A900EF */  lbu   $t1, 0xef($sp)
/* 0046201C 24CB0001 */  addiu $t3, $a2, 1
/* 00462020 1120000E */  beqz  $t1, .L0046205C
/* 00462024 240100CE */   li    $at, 206
/* 00462028 1080000C */  beqz  $a0, .L0046205C
/* 0046202C 00000000 */   nop   
/* 00462030 8F8A8C90 */  lw     $t2, %got(moxieflag)($gp)
/* 00462034 00000000 */  nop   
/* 00462038 914A0000 */  lbu   $t2, ($t2)
/* 0046203C 00000000 */  nop   
/* 00462040 15400006 */  bnez  $t2, .L0046205C
/* 00462044 00000000 */   nop   
/* 00462048 A3A600C3 */  sb    $a2, 0xc3($sp)
/* 0046204C 24C60001 */  addiu $a2, $a2, 1
/* 00462050 30CE00FF */  andi  $t6, $a2, 0xff
/* 00462054 10000002 */  b     .L00462060
/* 00462058 01C03025 */   move  $a2, $t6
.L0046205C:
/* 0046205C A3AB00C3 */  sb    $t3, 0xc3($sp)
.L00462060:
/* 00462060 10E1000A */  beq   $a3, $at, .L0046208C
/* 00462064 2404008C */   li    $a0, 140
/* 00462068 8F998488 */  lw    $t9, %call16(emitmvcoproc)($gp)
/* 0046206C 93A500D7 */  lbu   $a1, 0xd7($sp)
/* 00462070 A3A600EB */  sb    $a2, 0xeb($sp)
/* 00462074 0320F809 */  jalr  $t9
/* 00462078 A7A700D2 */   sh    $a3, 0xd2($sp)
/* 0046207C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462080 93A600EB */  lbu   $a2, 0xeb($sp)
/* 00462084 97A700D2 */  lhu   $a3, 0xd2($sp)
/* 00462088 00000000 */  nop   
.L0046208C:
/* 0046208C 8F99802C */  lw    $t9, %got(func_00461DE4)($gp)
/* 00462090 00002025 */  move  $a0, $zero
/* 00462094 27391DE4 */  addiu $t9, %lo(func_00461DE4) # addiu $t9, $t9, 0x1de4
/* 00462098 27A200D0 */  addiu $v0, $sp, 0xd0
/* 0046209C A3A600EB */  sb    $a2, 0xeb($sp)
/* 004620A0 0320F809 */  jalr  $t9
/* 004620A4 A7A700D2 */   sh    $a3, 0xd2($sp)
/* 004620A8 97A700D2 */  lhu   $a3, 0xd2($sp)
/* 004620AC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004620B0 93A600EB */  lbu   $a2, 0xeb($sp)
/* 004620B4 240100CE */  li    $at, 206
/* 004620B8 14E10008 */  bne   $a3, $at, .L004620DC
/* 004620BC 24040090 */   li    $a0, 144
/* 004620C0 8F998488 */  lw    $t9, %call16(emitmvcoproc)($gp)
/* 004620C4 93A500D7 */  lbu   $a1, 0xd7($sp)
/* 004620C8 0320F809 */  jalr  $t9
/* 004620CC A7A700D2 */   sh    $a3, 0xd2($sp)
/* 004620D0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004620D4 97A700D2 */  lhu   $a3, 0xd2($sp)
/* 004620D8 00000000 */  nop   
.L004620DC:
/* 004620DC 93AC00EF */  lbu   $t4, 0xef($sp)
/* 004620E0 240100CE */  li    $at, 206
/* 004620E4 1180008B */  beqz  $t4, .L00462314
/* 004620E8 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 004620EC 10E10009 */  beq   $a3, $at, .L00462114
/* 004620F0 2404008C */   li    $a0, 140
/* 004620F4 8F998488 */  lw    $t9, %call16(emitmvcoproc)($gp)
/* 004620F8 93A500D7 */  lbu   $a1, 0xd7($sp)
/* 004620FC 93A600C3 */  lbu   $a2, 0xc3($sp)
/* 00462100 0320F809 */  jalr  $t9
/* 00462104 A7A700D2 */   sh    $a3, 0xd2($sp)
/* 00462108 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046210C 97A700D2 */  lhu   $a3, 0xd2($sp)
/* 00462110 00000000 */  nop   
.L00462114:
/* 00462114 8F99802C */  lw    $t9, %got(func_00461DE4)($gp)
/* 00462118 24040004 */  li    $a0, 4
/* 0046211C 27391DE4 */  addiu $t9, %lo(func_00461DE4) # addiu $t9, $t9, 0x1de4
/* 00462120 27A200D0 */  addiu $v0, $sp, 0xd0
/* 00462124 0320F809 */  jalr  $t9
/* 00462128 A7A700D2 */   sh    $a3, 0xd2($sp)
/* 0046212C 97A700D2 */  lhu   $a3, 0xd2($sp)
/* 00462130 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462134 240100CE */  li    $at, 206
/* 00462138 14E10076 */  bne   $a3, $at, .L00462314
/* 0046213C 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 00462140 8F998488 */  lw    $t9, %call16(emitmvcoproc)($gp)
/* 00462144 93A500D7 */  lbu   $a1, 0xd7($sp)
/* 00462148 93A600C3 */  lbu   $a2, 0xc3($sp)
/* 0046214C 0320F809 */  jalr  $t9
/* 00462150 24040090 */   li    $a0, 144
/* 00462154 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462158 1000006E */  b     .L00462314
/* 0046215C 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00462160:
/* 00462160 8F99802C */  lw    $t9, %got(func_00461DE4)($gp)
/* 00462164 00002025 */  move  $a0, $zero
/* 00462168 27391DE4 */  addiu $t9, %lo(func_00461DE4) # addiu $t9, $t9, 0x1de4
/* 0046216C 0320F809 */  jalr  $t9
/* 00462170 A7A700D2 */   sh    $a3, 0xd2($sp)
/* 00462174 97A700D2 */  lhu   $a3, 0xd2($sp)
/* 00462178 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046217C 24010173 */  li    $at, 371
/* 00462180 14E10057 */  bne   $a3, $at, .L004622E0
/* 00462184 93A800EF */   lbu   $t0, 0xef($sp)
/* 00462188 93AF00EF */  lbu   $t7, 0xef($sp)
/* 0046218C 03A05825 */  move  $t3, $sp
/* 00462190 11E00044 */  beqz  $t7, .L004622A4
/* 00462194 93A600D7 */   lbu   $a2, 0xd7($sp)
/* 00462198 8F8D8070 */  lw    $t5, %got(RO_1001C590)($gp)
/* 0046219C 03A0C825 */  move  $t9, $sp
/* 004621A0 25ADC590 */  addiu $t5, %lo(RO_1001C590) # addiu $t5, $t5, -0x3a70
/* 004621A4 25A80048 */  addiu $t0, $t5, 0x48
.L004621A8:
/* 004621A8 89A10000 */  lwl   $at, ($t5)
/* 004621AC 99A10003 */  lwr   $at, 3($t5)
/* 004621B0 25AD000C */  addiu $t5, $t5, 0xc
/* 004621B4 AB210000 */  swl   $at, ($t9)
/* 004621B8 BB210003 */  swr   $at, 3($t9)
/* 004621BC 89A1FFF8 */  lwl   $at, -8($t5)
/* 004621C0 99A1FFFB */  lwr   $at, -5($t5)
/* 004621C4 2739000C */  addiu $t9, $t9, 0xc
/* 004621C8 AB21FFF8 */  swl   $at, -8($t9)
/* 004621CC BB21FFFB */  swr   $at, -5($t9)
/* 004621D0 89A1FFFC */  lwl   $at, -4($t5)
/* 004621D4 99A1FFFF */  lwr   $at, -1($t5)
/* 004621D8 00000000 */  nop   
/* 004621DC AB21FFFC */  swl   $at, -4($t9)
/* 004621E0 15A8FFF1 */  bne   $t5, $t0, .L004621A8
/* 004621E4 BB21FFFF */   swr   $at, -1($t9)
/* 004621E8 89A10000 */  lwl   $at, ($t5)
/* 004621EC 99A10003 */  lwr   $at, 3($t5)
/* 004621F0 8F898070 */  lw    $t1, %got(RO_1001C540)($gp)
/* 004621F4 AB210000 */  swl   $at, ($t9)
/* 004621F8 BB210003 */  swr   $at, 3($t9)
/* 004621FC 89A80004 */  lwl   $t0, 4($t5)
/* 00462200 99A80007 */  lwr   $t0, 7($t5)
/* 00462204 2529C540 */  addiu $t1, %lo(RO_1001C540) # addiu $t1, $t1, -0x3ac0
/* 00462208 AB280004 */  swl   $t0, 4($t9)
/* 0046220C 252E0048 */  addiu $t6, $t1, 0x48
/* 00462210 BB280007 */  swr   $t0, 7($t9)
.L00462214:
/* 00462214 89210000 */  lwl   $at, ($t1)
/* 00462218 99210003 */  lwr   $at, 3($t1)
/* 0046221C 2529000C */  addiu $t1, $t1, 0xc
/* 00462220 A9610050 */  swl   $at, 0x50($t3)
/* 00462224 B9610053 */  swr   $at, 0x53($t3)
/* 00462228 8921FFF8 */  lwl   $at, -8($t1)
/* 0046222C 9921FFFB */  lwr   $at, -5($t1)
/* 00462230 256B000C */  addiu $t3, $t3, 0xc
/* 00462234 A9610048 */  swl   $at, 0x48($t3)
/* 00462238 B961004B */  swr   $at, 0x4b($t3)
/* 0046223C 8921FFFC */  lwl   $at, -4($t1)
/* 00462240 9921FFFF */  lwr   $at, -1($t1)
/* 00462244 00000000 */  nop   
/* 00462248 A961004C */  swl   $at, 0x4c($t3)
/* 0046224C 152EFFF1 */  bne   $t1, $t6, .L00462214
/* 00462250 B961004F */   swr   $at, 0x4f($t3)
/* 00462254 89210000 */  lwl   $at, ($t1)
/* 00462258 99210003 */  lwr   $at, 3($t1)
/* 0046225C 240C0550 */  li    $t4, 1360
/* 00462260 A9610050 */  swl   $at, 0x50($t3)
/* 00462264 B9610053 */  swr   $at, 0x53($t3)
/* 00462268 892E0004 */  lwl   $t6, 4($t1)
/* 0046226C 992E0007 */  lwr   $t6, 7($t1)
/* 00462270 00000000 */  nop   
/* 00462274 A96E0054 */  swl   $t6, 0x54($t3)
/* 00462278 B96E0057 */  swr   $t6, 0x57($t3)
/* 0046227C 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 00462280 8FA7000C */  lw    $a3, 0xc($sp)
/* 00462284 8FA60008 */  lw    $a2, 8($sp)
/* 00462288 8FA50004 */  lw    $a1, 4($sp)
/* 0046228C 8FA40000 */  lw    $a0, ($sp)
/* 00462290 0320F809 */  jalr  $t9
/* 00462294 AFAC00A0 */   sw    $t4, 0xa0($sp)
/* 00462298 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046229C 00000000 */  nop   
/* 004622A0 93A600D7 */  lbu   $a2, 0xd7($sp)
.L004622A4:
/* 004622A4 8F99847C */  lw    $t9, %call16(emitshift)($gp)
/* 004622A8 24040028 */  li    $a0, 40
/* 004622AC 24070020 */  li    $a3, 32
/* 004622B0 0320F809 */  jalr  $t9
/* 004622B4 00C02825 */   move  $a1, $a2
/* 004622B8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004622BC 93A600D7 */  lbu   $a2, 0xd7($sp)
/* 004622C0 8F99847C */  lw    $t9, %call16(emitshift)($gp)
/* 004622C4 24040029 */  li    $a0, 41
/* 004622C8 24070020 */  li    $a3, 32
/* 004622CC 0320F809 */  jalr  $t9
/* 004622D0 00C02825 */   move  $a1, $a2
/* 004622D4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004622D8 00000000 */  nop   
/* 004622DC 93A800EF */  lbu   $t0, 0xef($sp)
.L004622E0:
/* 004622E0 93AD00D7 */  lbu   $t5, 0xd7($sp)
/* 004622E4 1100000B */  beqz  $t0, .L00462314
/* 004622E8 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 004622EC 25B90001 */  addiu $t9, $t5, 1
/* 004622F0 A3B900D7 */  sb    $t9, 0xd7($sp)
/* 004622F4 8F99802C */  lw    $t9, %got(func_00461DE4)($gp)
/* 004622F8 24040004 */  li    $a0, 4
/* 004622FC 27391DE4 */  addiu $t9, %lo(func_00461DE4) # addiu $t9, $t9, 0x1de4
/* 00462300 0320F809 */  jalr  $t9
/* 00462304 27A200D0 */   addiu $v0, $sp, 0xd0
/* 00462308 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046230C 00000000 */  nop   
/* 00462310 8FBF00B4 */  lw    $ra, 0xb4($sp)
.L00462314:
/* 00462314 27BD00D0 */  addiu $sp, $sp, 0xd0
/* 00462318 03E00008 */  jr    $ra
/* 0046231C 00000000 */   nop   

    .type func_00462320, @function
func_00462320:
    # 00463428 func_00463428
    # 0046383C func_0046383C
    # 004638F8 func_004638F8
    # 00464528 parseafra
/* 00462320 3C1C0FBC */  .cpload $t9
/* 00462324 279C7F40 */  
/* 00462328 0399E021 */  
/* 0046232C 27BDFF28 */  addiu $sp, $sp, -0xd8
/* 00462330 AFB000AC */  sw    $s0, 0xac($sp)
/* 00462334 30B000FF */  andi  $s0, $a1, 0xff
/* 00462338 AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 0046233C AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 00462340 AFA400D8 */  sw    $a0, 0xd8($sp)
/* 00462344 AFA500DC */  sw    $a1, 0xdc($sp)
/* 00462348 AFA600E0 */  sw    $a2, 0xe0($sp)
/* 0046234C AFA700E4 */  sw    $a3, 0xe4($sp)
/* 00462350 10C00242 */  beqz  $a2, .L00462C5C
/* 00462354 AFA700D0 */   sw    $a3, 0xd0($sp)
/* 00462358 8F998610 */  lw    $t9, %call16(is_gp_relative)($gp)
/* 0046235C 00C02025 */  move  $a0, $a2
/* 00462360 93A600EB */  lbu   $a2, 0xeb($sp)
/* 00462364 00E02825 */  move  $a1, $a3
/* 00462368 0320F809 */  jalr  $t9
/* 0046236C 27A700C9 */   addiu $a3, $sp, 0xc9
/* 00462370 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462374 1040011F */  beqz  $v0, .L004627F4
/* 00462378 24040002 */   li    $a0, 2
/* 0046237C 8F988BF8 */  lw     $t8, %got(gpreg)($gp)
/* 00462380 00000000 */  nop   
/* 00462384 93180000 */  lbu   $t8, ($t8)
/* 00462388 00000000 */  nop   
/* 0046238C 16180008 */  bne   $s0, $t8, .L004623B0
/* 00462390 97A400DA */   lhu   $a0, 0xda($sp)
/* 00462394 8F998604 */  lw    $t9, %call16(basereg_error)($gp)
/* 00462398 00000000 */  nop   
/* 0046239C 0320F809 */  jalr  $t9
/* 004623A0 00000000 */   nop   
/* 004623A4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004623A8 00000000 */  nop   
/* 004623AC 97A400DA */  lhu   $a0, 0xda($sp)
.L004623B0:
/* 004623B0 02002825 */  move  $a1, $s0
/* 004623B4 2482FF40 */  addiu $v0, $a0, -0xc0
/* 004623B8 2C5900C0 */  sltiu $t9, $v0, 0xc0
/* 004623BC 13200009 */  beqz  $t9, .L004623E4
/* 004623C0 00024143 */   sra   $t0, $v0, 5
/* 004623C4 8F8A8080 */  lw    $t2, %got(D_10004E68)($gp)
/* 004623C8 00084880 */  sll   $t1, $t0, 2
/* 004623CC 254A4E68 */  addiu $t2, %lo(D_10004E68) # addiu $t2, $t2, 0x4e68
/* 004623D0 01495821 */  addu  $t3, $t2, $t1
/* 004623D4 8D6C0000 */  lw    $t4, ($t3)
/* 004623D8 00000000 */  nop   
/* 004623DC 004C6804 */  sllv  $t5, $t4, $v0
/* 004623E0 29B90000 */  slti  $t9, $t5, 0
.L004623E4:
/* 004623E4 13200011 */  beqz  $t9, .L0046242C
/* 004623E8 24070001 */   li    $a3, 1
/* 004623EC 8F99802C */  lw    $t9, %got(func_00461EE0)($gp)
/* 004623F0 8FAE00E4 */  lw    $t6, 0xe4($sp)
/* 004623F4 93B800C9 */  lbu   $t8, 0xc9($sp)
/* 004623F8 93A800EF */  lbu   $t0, 0xef($sp)
/* 004623FC 93AA00F3 */  lbu   $t2, 0xf3($sp)
/* 00462400 8FA600E0 */  lw    $a2, 0xe0($sp)
/* 00462404 27391EE0 */  addiu $t9, %lo(func_00461EE0) # addiu $t9, $t9, 0x1ee0
/* 00462408 27A200D8 */  addiu $v0, $sp, 0xd8
/* 0046240C AFAE0010 */  sw    $t6, 0x10($sp)
/* 00462410 AFB80014 */  sw    $t8, 0x14($sp)
/* 00462414 AFA80018 */  sw    $t0, 0x18($sp)
/* 00462418 0320F809 */  jalr  $t9
/* 0046241C AFAA001C */   sw    $t2, 0x1c($sp)
/* 00462420 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462424 100003FD */  b     .L0046341C
/* 00462428 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L0046242C:
/* 0046242C 8F898B14 */  lw     $t1, %got(bigendian)($gp)
/* 00462430 8FAD00E4 */  lw    $t5, 0xe4($sp)
/* 00462434 91290000 */  lbu   $t1, ($t1)
/* 00462438 8FAB00E4 */  lw    $t3, 0xe4($sp)
/* 0046243C 11200004 */  beqz  $t1, .L00462450
/* 00462440 25AF0001 */   addiu $t7, $t5, 1
/* 00462444 256C0001 */  addiu $t4, $t3, 1
/* 00462448 10000003 */  b     .L00462458
/* 0046244C AFAC00CC */   sw    $t4, 0xcc($sp)
.L00462450:
/* 00462450 AFAD00CC */  sw    $t5, 0xcc($sp)
/* 00462454 AFAF00D0 */  sw    $t7, 0xd0($sp)
.L00462458:
/* 00462458 8F998BB4 */  lw     $t9, %got(atflag)($gp)
/* 0046245C 00000000 */  nop   
/* 00462460 93390000 */  lbu   $t9, ($t9)
/* 00462464 00000000 */  nop   
/* 00462468 1720000A */  bnez  $t9, .L00462494
/* 0046246C 2C4E0020 */   sltiu $t6, $v0, 0x20
/* 00462470 8F9984C8 */  lw    $t9, %call16(macro_error)($gp)
/* 00462474 AFA200BC */  sw    $v0, 0xbc($sp)
/* 00462478 0320F809 */  jalr  $t9
/* 0046247C 00000000 */   nop   
/* 00462480 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462484 8FA200BC */  lw    $v0, 0xbc($sp)
/* 00462488 97A400DA */  lhu   $a0, 0xda($sp)
/* 0046248C 00000000 */  nop   
/* 00462490 2C4E0020 */  sltiu $t6, $v0, 0x20
.L00462494:
/* 00462494 3C010001 */  lui   $at, 1
/* 00462498 34218000 */  ori   $at, $at, 0x8000
/* 0046249C 000EC023 */  negu  $t8, $t6
/* 004624A0 03014024 */  and   $t0, $t8, $at
/* 004624A4 00485004 */  sllv  $t2, $t0, $v0
/* 004624A8 05410038 */  bgez  $t2, .L0046258C
/* 004624AC 240100D2 */   li    $at, 210
/* 004624B0 240100CF */  li    $at, 207
/* 004624B4 14810004 */  bne   $a0, $at, .L004624C8
/* 004624B8 2404006A */   li    $a0, 106
/* 004624BC 10000002 */  b     .L004624C8
/* 004624C0 24040066 */   li    $a0, 102
/* 004624C4 2404006A */  li    $a0, 106
.L004624C8:
/* 004624C8 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 004624CC 8FA600D0 */  lw    $a2, 0xd0($sp)
/* 004624D0 93A700C9 */  lbu   $a3, 0xc9($sp)
/* 004624D4 0320F809 */  jalr  $t9
/* 004624D8 02002825 */   move  $a1, $s0
/* 004624DC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004624E0 8FA400E0 */  lw    $a0, 0xe0($sp)
/* 004624E4 8F898BB0 */  lw     $t1, %got(bbindex)($gp)
/* 004624E8 8F8B8B88 */  lw     $t3, %got(proc_instr_base)($gp)
/* 004624EC 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 004624F0 8D290000 */  lw    $t1, ($t1)
/* 004624F4 8D6B0000 */  lw    $t3, ($t3)
/* 004624F8 24050001 */  li    $a1, 1
/* 004624FC 0320F809 */  jalr  $t9
/* 00462500 012B3021 */   addu  $a2, $t1, $t3
/* 00462504 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462508 8FA600CC */  lw    $a2, 0xcc($sp)
/* 0046250C 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00462510 93A700C9 */  lbu   $a3, 0xc9($sp)
/* 00462514 2404006A */  li    $a0, 106
/* 00462518 0320F809 */  jalr  $t9
/* 0046251C 24050001 */   li    $a1, 1
/* 00462520 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462524 8FA400E0 */  lw    $a0, 0xe0($sp)
/* 00462528 8F8C8BB0 */  lw     $t4, %got(bbindex)($gp)
/* 0046252C 8F8D8B88 */  lw     $t5, %got(proc_instr_base)($gp)
/* 00462530 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00462534 8D8C0000 */  lw    $t4, ($t4)
/* 00462538 8DAD0000 */  lw    $t5, ($t5)
/* 0046253C 24050001 */  li    $a1, 1
/* 00462540 0320F809 */  jalr  $t9
/* 00462544 018D3021 */   addu  $a2, $t4, $t5
/* 00462548 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046254C 24040002 */  li    $a0, 2
/* 00462550 8F99847C */  lw    $t9, %call16(emitshift)($gp)
/* 00462554 02002825 */  move  $a1, $s0
/* 00462558 02003025 */  move  $a2, $s0
/* 0046255C 0320F809 */  jalr  $t9
/* 00462560 24070008 */   li    $a3, 8
/* 00462564 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462568 24040019 */  li    $a0, 25
/* 0046256C 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00462570 02002825 */  move  $a1, $s0
/* 00462574 02003025 */  move  $a2, $s0
/* 00462578 0320F809 */  jalr  $t9
/* 0046257C 24070001 */   li    $a3, 1
/* 00462580 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462584 100003A5 */  b     .L0046341C
/* 00462588 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L0046258C:
/* 0046258C 14810056 */  bne   $a0, $at, .L004626E8
/* 00462590 03A05025 */   move  $t2, $sp
/* 00462594 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00462598 8FA600CC */  lw    $a2, 0xcc($sp)
/* 0046259C 93A700C9 */  lbu   $a3, 0xc9($sp)
/* 004625A0 2404006D */  li    $a0, 109
/* 004625A4 0320F809 */  jalr  $t9
/* 004625A8 02002825 */   move  $a1, $s0
/* 004625AC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004625B0 8FA400E0 */  lw    $a0, 0xe0($sp)
/* 004625B4 8F8F8BB0 */  lw     $t7, %got(bbindex)($gp)
/* 004625B8 8F998B88 */  lw     $t9, %got(proc_instr_base)($gp)
/* 004625BC 8DEF0000 */  lw    $t7, ($t7)
/* 004625C0 8F390000 */  lw    $t9, ($t9)
/* 004625C4 24050001 */  li    $a1, 1
/* 004625C8 01F93021 */  addu  $a2, $t7, $t9
/* 004625CC 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 004625D0 00000000 */  nop   
/* 004625D4 0320F809 */  jalr  $t9
/* 004625D8 00000000 */   nop   
/* 004625DC 93AE00C9 */  lbu   $t6, 0xc9($sp)
/* 004625E0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004625E4 24010001 */  li    $at, 1
/* 004625E8 15C10003 */  bne   $t6, $at, .L004625F8
/* 004625EC 24040003 */   li    $a0, 3
/* 004625F0 10000002 */  b     .L004625FC
/* 004625F4 320500FF */   andi  $a1, $s0, 0xff
.L004625F8:
/* 004625F8 24050001 */  li    $a1, 1
.L004625FC:
/* 004625FC 8F99847C */  lw    $t9, %call16(emitshift)($gp)
/* 00462600 02003025 */  move  $a2, $s0
/* 00462604 24070008 */  li    $a3, 8
/* 00462608 0320F809 */  jalr  $t9
/* 0046260C A3A500C8 */   sb    $a1, 0xc8($sp)
/* 00462610 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462614 93A500C8 */  lbu   $a1, 0xc8($sp)
/* 00462618 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0046261C 8FA600D0 */  lw    $a2, 0xd0($sp)
/* 00462620 93A700C9 */  lbu   $a3, 0xc9($sp)
/* 00462624 0320F809 */  jalr  $t9
/* 00462628 2404006D */   li    $a0, 109
/* 0046262C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462630 8FA400E0 */  lw    $a0, 0xe0($sp)
/* 00462634 8F988BB0 */  lw     $t8, %got(bbindex)($gp)
/* 00462638 8F888B88 */  lw     $t0, %got(proc_instr_base)($gp)
/* 0046263C 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00462640 8F180000 */  lw    $t8, ($t8)
/* 00462644 8D080000 */  lw    $t0, ($t0)
/* 00462648 24050001 */  li    $a1, 1
/* 0046264C 0320F809 */  jalr  $t9
/* 00462650 03083021 */   addu  $a2, $t8, $t0
/* 00462654 93AA00C9 */  lbu   $t2, 0xc9($sp)
/* 00462658 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046265C 24010001 */  li    $at, 1
/* 00462660 1541036D */  bne   $t2, $at, .L00463418
/* 00462664 2404006A */   li    $a0, 106
/* 00462668 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0046266C 8FA600CC */  lw    $a2, 0xcc($sp)
/* 00462670 24050001 */  li    $a1, 1
/* 00462674 0320F809 */  jalr  $t9
/* 00462678 01403825 */   move  $a3, $t2
/* 0046267C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462680 8FA400E0 */  lw    $a0, 0xe0($sp)
/* 00462684 8F898BB0 */  lw     $t1, %got(bbindex)($gp)
/* 00462688 8F8B8B88 */  lw     $t3, %got(proc_instr_base)($gp)
/* 0046268C 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00462690 8D290000 */  lw    $t1, ($t1)
/* 00462694 8D6B0000 */  lw    $t3, ($t3)
/* 00462698 24050001 */  li    $a1, 1
/* 0046269C 0320F809 */  jalr  $t9
/* 004626A0 012B3021 */   addu  $a2, $t1, $t3
/* 004626A4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004626A8 24040002 */  li    $a0, 2
/* 004626AC 8F99847C */  lw    $t9, %call16(emitshift)($gp)
/* 004626B0 02002825 */  move  $a1, $s0
/* 004626B4 02003025 */  move  $a2, $s0
/* 004626B8 0320F809 */  jalr  $t9
/* 004626BC 24070008 */   li    $a3, 8
/* 004626C0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004626C4 24040019 */  li    $a0, 25
/* 004626C8 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 004626CC 02002825 */  move  $a1, $s0
/* 004626D0 02003025 */  move  $a2, $s0
/* 004626D4 0320F809 */  jalr  $t9
/* 004626D8 24070001 */   li    $a3, 1
/* 004626DC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004626E0 1000034E */  b     .L0046341C
/* 004626E4 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L004626E8:
/* 004626E8 8F8C8070 */  lw    $t4, %got(RO_1001C810)($gp)
/* 004626EC 03A0C825 */  move  $t9, $sp
/* 004626F0 258CC810 */  addiu $t4, %lo(RO_1001C810) # addiu $t4, $t4, -0x37f0
/* 004626F4 258F0048 */  addiu $t7, $t4, 0x48
.L004626F8:
/* 004626F8 89810000 */  lwl   $at, ($t4)
/* 004626FC 99810003 */  lwr   $at, 3($t4)
/* 00462700 258C000C */  addiu $t4, $t4, 0xc
/* 00462704 AB210000 */  swl   $at, ($t9)
/* 00462708 BB210003 */  swr   $at, 3($t9)
/* 0046270C 8981FFF8 */  lwl   $at, -8($t4)
/* 00462710 9981FFFB */  lwr   $at, -5($t4)
/* 00462714 2739000C */  addiu $t9, $t9, 0xc
/* 00462718 AB21FFF8 */  swl   $at, -8($t9)
/* 0046271C BB21FFFB */  swr   $at, -5($t9)
/* 00462720 8981FFFC */  lwl   $at, -4($t4)
/* 00462724 9981FFFF */  lwr   $at, -1($t4)
/* 00462728 00000000 */  nop   
/* 0046272C AB21FFFC */  swl   $at, -4($t9)
/* 00462730 158FFFF1 */  bne   $t4, $t7, .L004626F8
/* 00462734 BB21FFFF */   swr   $at, -1($t9)
/* 00462738 89810000 */  lwl   $at, ($t4)
/* 0046273C 99810003 */  lwr   $at, 3($t4)
/* 00462740 8F8E8070 */  lw    $t6, %got(RO_1001C7C0)($gp)
/* 00462744 AB210000 */  swl   $at, ($t9)
/* 00462748 BB210003 */  swr   $at, 3($t9)
/* 0046274C 898F0004 */  lwl   $t7, 4($t4)
/* 00462750 998F0007 */  lwr   $t7, 7($t4)
/* 00462754 25CEC7C0 */  addiu $t6, %lo(RO_1001C7C0) # addiu $t6, $t6, -0x3840
/* 00462758 AB2F0004 */  swl   $t7, 4($t9)
/* 0046275C 25C80048 */  addiu $t0, $t6, 0x48
/* 00462760 BB2F0007 */  swr   $t7, 7($t9)
.L00462764:
/* 00462764 89C10000 */  lwl   $at, ($t6)
/* 00462768 99C10003 */  lwr   $at, 3($t6)
/* 0046276C 25CE000C */  addiu $t6, $t6, 0xc
/* 00462770 A9410050 */  swl   $at, 0x50($t2)
/* 00462774 B9410053 */  swr   $at, 0x53($t2)
/* 00462778 89C1FFF8 */  lwl   $at, -8($t6)
/* 0046277C 99C1FFFB */  lwr   $at, -5($t6)
/* 00462780 254A000C */  addiu $t2, $t2, 0xc
/* 00462784 A9410048 */  swl   $at, 0x48($t2)
/* 00462788 B941004B */  swr   $at, 0x4b($t2)
/* 0046278C 89C1FFFC */  lwl   $at, -4($t6)
/* 00462790 99C1FFFF */  lwr   $at, -1($t6)
/* 00462794 00000000 */  nop   
/* 00462798 A941004C */  swl   $at, 0x4c($t2)
/* 0046279C 15C8FFF1 */  bne   $t6, $t0, .L00462764
/* 004627A0 B941004F */   swr   $at, 0x4f($t2)
/* 004627A4 89C10000 */  lwl   $at, ($t6)
/* 004627A8 99C10003 */  lwr   $at, 3($t6)
/* 004627AC 24090590 */  li    $t1, 1424
/* 004627B0 A9410050 */  swl   $at, 0x50($t2)
/* 004627B4 B9410053 */  swr   $at, 0x53($t2)
/* 004627B8 89C80004 */  lwl   $t0, 4($t6)
/* 004627BC 99C80007 */  lwr   $t0, 7($t6)
/* 004627C0 00000000 */  nop   
/* 004627C4 A9480054 */  swl   $t0, 0x54($t2)
/* 004627C8 B9480057 */  swr   $t0, 0x57($t2)
/* 004627CC 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 004627D0 8FA7000C */  lw    $a3, 0xc($sp)
/* 004627D4 8FA60008 */  lw    $a2, 8($sp)
/* 004627D8 8FA50004 */  lw    $a1, 4($sp)
/* 004627DC 8FA40000 */  lw    $a0, ($sp)
/* 004627E0 0320F809 */  jalr  $t9
/* 004627E4 AFA900A0 */   sw    $t1, 0xa0($sp)
/* 004627E8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004627EC 1000030B */  b     .L0046341C
/* 004627F0 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L004627F4:
/* 004627F4 97AC00DA */  lhu   $t4, 0xda($sp)
/* 004627F8 8F998608 */  lw    $t9, %call16(setup_tempreg)($gp)
/* 004627FC 93A600EB */  lbu   $a2, 0xeb($sp)
/* 00462800 27AB00D0 */  addiu $t3, $sp, 0xd0
/* 00462804 27AD00C7 */  addiu $t5, $sp, 0xc7
/* 00462808 240F0001 */  li    $t7, 1
/* 0046280C AFAF0018 */  sw    $t7, 0x18($sp)
/* 00462810 AFAD0014 */  sw    $t5, 0x14($sp)
/* 00462814 AFAB0010 */  sw    $t3, 0x10($sp)
/* 00462818 24050001 */  li    $a1, 1
/* 0046281C 27A700E0 */  addiu $a3, $sp, 0xe0
/* 00462820 0320F809 */  jalr  $t9
/* 00462824 AFAC001C */   sw    $t4, 0x1c($sp)
/* 00462828 97A200DA */  lhu   $v0, 0xda($sp)
/* 0046282C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462830 2442FF40 */  addiu $v0, $v0, -0xc0
/* 00462834 2C5900C0 */  sltiu $t9, $v0, 0xc0
/* 00462838 13200009 */  beqz  $t9, .L00462860
/* 0046283C 0002C143 */   sra   $t8, $v0, 5
/* 00462840 8F8E8080 */  lw    $t6, %got(D_10004E68)($gp)
/* 00462844 00184080 */  sll   $t0, $t8, 2
/* 00462848 25CE4E68 */  addiu $t6, %lo(D_10004E68) # addiu $t6, $t6, 0x4e68
/* 0046284C 01C85021 */  addu  $t2, $t6, $t0
/* 00462850 8D490000 */  lw    $t1, ($t2)
/* 00462854 00000000 */  nop   
/* 00462858 00495804 */  sllv  $t3, $t1, $v0
/* 0046285C 29790000 */  slti  $t9, $t3, 0
.L00462860:
/* 00462860 13200014 */  beqz  $t9, .L004628B4
/* 00462864 3C010001 */   lui   $at, 1
/* 00462868 8F99802C */  lw    $t9, %got(func_00461EE0)($gp)
/* 0046286C 8FAF00D0 */  lw    $t7, 0xd0($sp)
/* 00462870 93B800EF */  lbu   $t8, 0xef($sp)
/* 00462874 93AE00F3 */  lbu   $t6, 0xf3($sp)
/* 00462878 97A400DA */  lhu   $a0, 0xda($sp)
/* 0046287C 8FA600E0 */  lw    $a2, 0xe0($sp)
/* 00462880 93A700C7 */  lbu   $a3, 0xc7($sp)
/* 00462884 240C0001 */  li    $t4, 1
/* 00462888 27391EE0 */  addiu $t9, %lo(func_00461EE0) # addiu $t9, $t9, 0x1ee0
/* 0046288C AFAC0014 */  sw    $t4, 0x14($sp)
/* 00462890 02002825 */  move  $a1, $s0
/* 00462894 27A200D8 */  addiu $v0, $sp, 0xd8
/* 00462898 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0046289C AFB80018 */  sw    $t8, 0x18($sp)
/* 004628A0 0320F809 */  jalr  $t9
/* 004628A4 AFAE001C */   sw    $t6, 0x1c($sp)
/* 004628A8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004628AC 100002DB */  b     .L0046341C
/* 004628B0 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L004628B4:
/* 004628B4 8F888B14 */  lw     $t0, %got(bigendian)($gp)
/* 004628B8 2C590020 */  sltiu $t9, $v0, 0x20
/* 004628BC 91080000 */  lbu   $t0, ($t0)
/* 004628C0 00197823 */  negu  $t7, $t9
/* 004628C4 11000006 */  beqz  $t0, .L004628E0
/* 004628C8 34218000 */   ori   $at, $at, 0x8000
/* 004628CC 8FAA00D0 */  lw    $t2, 0xd0($sp)
/* 004628D0 00000000 */  nop   
/* 004628D4 25490001 */  addiu $t1, $t2, 1
/* 004628D8 10000006 */  b     .L004628F4
/* 004628DC AFA900CC */   sw    $t1, 0xcc($sp)
.L004628E0:
/* 004628E0 8FAB00D0 */  lw    $t3, 0xd0($sp)
/* 004628E4 00000000 */  nop   
/* 004628E8 256D0001 */  addiu $t5, $t3, 1
/* 004628EC AFAD00D0 */  sw    $t5, 0xd0($sp)
/* 004628F0 AFAB00CC */  sw    $t3, 0xcc($sp)
.L004628F4:
/* 004628F4 01E16024 */  and   $t4, $t7, $at
/* 004628F8 004CC004 */  sllv  $t8, $t4, $v0
/* 004628FC 0701003D */  bgez  $t8, .L004629F4
/* 00462900 02002825 */   move  $a1, $s0
/* 00462904 97AE00DA */  lhu   $t6, 0xda($sp)
/* 00462908 240100CF */  li    $at, 207
/* 0046290C 15C10003 */  bne   $t6, $at, .L0046291C
/* 00462910 2404006A */   li    $a0, 106
/* 00462914 10000001 */  b     .L0046291C
/* 00462918 24040066 */   li    $a0, 102
.L0046291C:
/* 0046291C 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00462920 8FA600D0 */  lw    $a2, 0xd0($sp)
/* 00462924 0320F809 */  jalr  $t9
/* 00462928 24070001 */   li    $a3, 1
/* 0046292C 8FA800E0 */  lw    $t0, 0xe0($sp)
/* 00462930 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462934 1100000B */  beqz  $t0, .L00462964
/* 00462938 01002025 */   move  $a0, $t0
/* 0046293C 8F8A8BB0 */  lw     $t2, %got(bbindex)($gp)
/* 00462940 8F898B88 */  lw     $t1, %got(proc_instr_base)($gp)
/* 00462944 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00462948 8D4A0000 */  lw    $t2, ($t2)
/* 0046294C 8D290000 */  lw    $t1, ($t1)
/* 00462950 93A500C7 */  lbu   $a1, 0xc7($sp)
/* 00462954 0320F809 */  jalr  $t9
/* 00462958 01493021 */   addu  $a2, $t2, $t1
/* 0046295C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462960 00000000 */  nop   
.L00462964:
/* 00462964 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00462968 8FA600CC */  lw    $a2, 0xcc($sp)
/* 0046296C 2404006A */  li    $a0, 106
/* 00462970 24050001 */  li    $a1, 1
/* 00462974 0320F809 */  jalr  $t9
/* 00462978 24070001 */   li    $a3, 1
/* 0046297C 8FA400E0 */  lw    $a0, 0xe0($sp)
/* 00462980 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462984 1080000B */  beqz  $a0, .L004629B4
/* 00462988 00000000 */   nop   
/* 0046298C 8F8B8BB0 */  lw     $t3, %got(bbindex)($gp)
/* 00462990 8F8D8B88 */  lw     $t5, %got(proc_instr_base)($gp)
/* 00462994 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00462998 8D6B0000 */  lw    $t3, ($t3)
/* 0046299C 8DAD0000 */  lw    $t5, ($t5)
/* 004629A0 93A500C7 */  lbu   $a1, 0xc7($sp)
/* 004629A4 0320F809 */  jalr  $t9
/* 004629A8 016D3021 */   addu  $a2, $t3, $t5
/* 004629AC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004629B0 00000000 */  nop   
.L004629B4:
/* 004629B4 8F99847C */  lw    $t9, %call16(emitshift)($gp)
/* 004629B8 24040002 */  li    $a0, 2
/* 004629BC 02002825 */  move  $a1, $s0
/* 004629C0 02003025 */  move  $a2, $s0
/* 004629C4 0320F809 */  jalr  $t9
/* 004629C8 24070008 */   li    $a3, 8
/* 004629CC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004629D0 24040019 */  li    $a0, 25
/* 004629D4 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 004629D8 02002825 */  move  $a1, $s0
/* 004629DC 02003025 */  move  $a2, $s0
/* 004629E0 0320F809 */  jalr  $t9
/* 004629E4 24070001 */   li    $a3, 1
/* 004629E8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004629EC 1000028B */  b     .L0046341C
/* 004629F0 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L004629F4:
/* 004629F4 97B900DA */  lhu   $t9, 0xda($sp)
/* 004629F8 240100D2 */  li    $at, 210
/* 004629FC 17210054 */  bne   $t9, $at, .L00462B50
/* 00462A00 03A04825 */   move  $t1, $sp
/* 00462A04 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00462A08 8FA600CC */  lw    $a2, 0xcc($sp)
/* 00462A0C 2404006D */  li    $a0, 109
/* 00462A10 02002825 */  move  $a1, $s0
/* 00462A14 0320F809 */  jalr  $t9
/* 00462A18 24070001 */   li    $a3, 1
/* 00462A1C 8FAF00E0 */  lw    $t7, 0xe0($sp)
/* 00462A20 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462A24 11E0000B */  beqz  $t7, .L00462A54
/* 00462A28 01E02025 */   move  $a0, $t7
/* 00462A2C 8F8C8BB0 */  lw     $t4, %got(bbindex)($gp)
/* 00462A30 8F988B88 */  lw     $t8, %got(proc_instr_base)($gp)
/* 00462A34 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00462A38 8D8C0000 */  lw    $t4, ($t4)
/* 00462A3C 8F180000 */  lw    $t8, ($t8)
/* 00462A40 93A500C7 */  lbu   $a1, 0xc7($sp)
/* 00462A44 0320F809 */  jalr  $t9
/* 00462A48 01983021 */   addu  $a2, $t4, $t8
/* 00462A4C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462A50 00000000 */  nop   
.L00462A54:
/* 00462A54 8F99847C */  lw    $t9, %call16(emitshift)($gp)
/* 00462A58 24040003 */  li    $a0, 3
/* 00462A5C 02002825 */  move  $a1, $s0
/* 00462A60 02003025 */  move  $a2, $s0
/* 00462A64 0320F809 */  jalr  $t9
/* 00462A68 24070008 */   li    $a3, 8
/* 00462A6C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462A70 8FA600D0 */  lw    $a2, 0xd0($sp)
/* 00462A74 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00462A78 2404006D */  li    $a0, 109
/* 00462A7C 02002825 */  move  $a1, $s0
/* 00462A80 0320F809 */  jalr  $t9
/* 00462A84 24070001 */   li    $a3, 1
/* 00462A88 8FAE00E0 */  lw    $t6, 0xe0($sp)
/* 00462A8C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462A90 11C0000B */  beqz  $t6, .L00462AC0
/* 00462A94 01C02025 */   move  $a0, $t6
/* 00462A98 8F888BB0 */  lw     $t0, %got(bbindex)($gp)
/* 00462A9C 8F8A8B88 */  lw     $t2, %got(proc_instr_base)($gp)
/* 00462AA0 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00462AA4 8D080000 */  lw    $t0, ($t0)
/* 00462AA8 8D4A0000 */  lw    $t2, ($t2)
/* 00462AAC 93A500C7 */  lbu   $a1, 0xc7($sp)
/* 00462AB0 0320F809 */  jalr  $t9
/* 00462AB4 010A3021 */   addu  $a2, $t0, $t2
/* 00462AB8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462ABC 00000000 */  nop   
.L00462AC0:
/* 00462AC0 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00462AC4 8FA600CC */  lw    $a2, 0xcc($sp)
/* 00462AC8 2404006A */  li    $a0, 106
/* 00462ACC 24050001 */  li    $a1, 1
/* 00462AD0 0320F809 */  jalr  $t9
/* 00462AD4 24070001 */   li    $a3, 1
/* 00462AD8 8FA900E0 */  lw    $t1, 0xe0($sp)
/* 00462ADC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462AE0 1120000B */  beqz  $t1, .L00462B10
/* 00462AE4 01202025 */   move  $a0, $t1
/* 00462AE8 8F8B8BB0 */  lw     $t3, %got(bbindex)($gp)
/* 00462AEC 8F8D8B88 */  lw     $t5, %got(proc_instr_base)($gp)
/* 00462AF0 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00462AF4 8D6B0000 */  lw    $t3, ($t3)
/* 00462AF8 8DAD0000 */  lw    $t5, ($t5)
/* 00462AFC 93A500C7 */  lbu   $a1, 0xc7($sp)
/* 00462B00 0320F809 */  jalr  $t9
/* 00462B04 016D3021 */   addu  $a2, $t3, $t5
/* 00462B08 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462B0C 00000000 */  nop   
.L00462B10:
/* 00462B10 8F99847C */  lw    $t9, %call16(emitshift)($gp)
/* 00462B14 24040002 */  li    $a0, 2
/* 00462B18 02002825 */  move  $a1, $s0
/* 00462B1C 02003025 */  move  $a2, $s0
/* 00462B20 0320F809 */  jalr  $t9
/* 00462B24 24070008 */   li    $a3, 8
/* 00462B28 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462B2C 24040019 */  li    $a0, 25
/* 00462B30 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00462B34 02002825 */  move  $a1, $s0
/* 00462B38 02003025 */  move  $a2, $s0
/* 00462B3C 0320F809 */  jalr  $t9
/* 00462B40 24070001 */   li    $a3, 1
/* 00462B44 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462B48 10000234 */  b     .L0046341C
/* 00462B4C 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00462B50:
/* 00462B50 8F998070 */  lw    $t9, %got(RO_1001C770)($gp)
/* 00462B54 03A0C025 */  move  $t8, $sp
/* 00462B58 2739C770 */  addiu $t9, %lo(RO_1001C770) # addiu $t9, $t9, -0x3890
/* 00462B5C 272C0048 */  addiu $t4, $t9, 0x48
.L00462B60:
/* 00462B60 8B210000 */  lwl   $at, ($t9)
/* 00462B64 9B210003 */  lwr   $at, 3($t9)
/* 00462B68 2739000C */  addiu $t9, $t9, 0xc
/* 00462B6C AB010000 */  swl   $at, ($t8)
/* 00462B70 BB010003 */  swr   $at, 3($t8)
/* 00462B74 8B21FFF8 */  lwl   $at, -8($t9)
/* 00462B78 9B21FFFB */  lwr   $at, -5($t9)
/* 00462B7C 2718000C */  addiu $t8, $t8, 0xc
/* 00462B80 AB01FFF8 */  swl   $at, -8($t8)
/* 00462B84 BB01FFFB */  swr   $at, -5($t8)
/* 00462B88 8B21FFFC */  lwl   $at, -4($t9)
/* 00462B8C 9B21FFFF */  lwr   $at, -1($t9)
/* 00462B90 00000000 */  nop   
/* 00462B94 AB01FFFC */  swl   $at, -4($t8)
/* 00462B98 172CFFF1 */  bne   $t9, $t4, .L00462B60
/* 00462B9C BB01FFFF */   swr   $at, -1($t8)
/* 00462BA0 8B210000 */  lwl   $at, ($t9)
/* 00462BA4 9B210003 */  lwr   $at, 3($t9)
/* 00462BA8 8F8E8070 */  lw    $t6, %got(RO_1001C720)($gp)
/* 00462BAC AB010000 */  swl   $at, ($t8)
/* 00462BB0 BB010003 */  swr   $at, 3($t8)
/* 00462BB4 8B2C0004 */  lwl   $t4, 4($t9)
/* 00462BB8 9B2C0007 */  lwr   $t4, 7($t9)
/* 00462BBC 25CEC720 */  addiu $t6, %lo(RO_1001C720) # addiu $t6, $t6, -0x38e0
/* 00462BC0 AB0C0004 */  swl   $t4, 4($t8)
/* 00462BC4 25CA0048 */  addiu $t2, $t6, 0x48
/* 00462BC8 BB0C0007 */  swr   $t4, 7($t8)
.L00462BCC:
/* 00462BCC 89C10000 */  lwl   $at, ($t6)
/* 00462BD0 99C10003 */  lwr   $at, 3($t6)
/* 00462BD4 25CE000C */  addiu $t6, $t6, 0xc
/* 00462BD8 A9210050 */  swl   $at, 0x50($t1)
/* 00462BDC B9210053 */  swr   $at, 0x53($t1)
/* 00462BE0 89C1FFF8 */  lwl   $at, -8($t6)
/* 00462BE4 99C1FFFB */  lwr   $at, -5($t6)
/* 00462BE8 2529000C */  addiu $t1, $t1, 0xc
/* 00462BEC A9210048 */  swl   $at, 0x48($t1)
/* 00462BF0 B921004B */  swr   $at, 0x4b($t1)
/* 00462BF4 89C1FFFC */  lwl   $at, -4($t6)
/* 00462BF8 99C1FFFF */  lwr   $at, -1($t6)
/* 00462BFC 00000000 */  nop   
/* 00462C00 A921004C */  swl   $at, 0x4c($t1)
/* 00462C04 15CAFFF1 */  bne   $t6, $t2, .L00462BCC
/* 00462C08 B921004F */   swr   $at, 0x4f($t1)
/* 00462C0C 89C10000 */  lwl   $at, ($t6)
/* 00462C10 99C10003 */  lwr   $at, 3($t6)
/* 00462C14 240B05BE */  li    $t3, 1470
/* 00462C18 A9210050 */  swl   $at, 0x50($t1)
/* 00462C1C B9210053 */  swr   $at, 0x53($t1)
/* 00462C20 89CA0004 */  lwl   $t2, 4($t6)
/* 00462C24 99CA0007 */  lwr   $t2, 7($t6)
/* 00462C28 00000000 */  nop   
/* 00462C2C A92A0054 */  swl   $t2, 0x54($t1)
/* 00462C30 B92A0057 */  swr   $t2, 0x57($t1)
/* 00462C34 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 00462C38 8FA7000C */  lw    $a3, 0xc($sp)
/* 00462C3C 8FA60008 */  lw    $a2, 8($sp)
/* 00462C40 8FA50004 */  lw    $a1, 4($sp)
/* 00462C44 8FA40000 */  lw    $a0, ($sp)
/* 00462C48 0320F809 */  jalr  $t9
/* 00462C4C AFAB00A0 */   sw    $t3, 0xa0($sp)
/* 00462C50 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462C54 100001F1 */  b     .L0046341C
/* 00462C58 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00462C5C:
/* 00462C5C 8FAD00E4 */  lw    $t5, 0xe4($sp)
/* 00462C60 93A200F3 */  lbu   $v0, 0xf3($sp)
/* 00462C64 29A18000 */  slti  $at, $t5, -0x8000
/* 00462C68 14200012 */  bnez  $at, .L00462CB4
/* 00462C6C 240D7FFC */   li    $t5, 32764
/* 00462C70 1440000B */  bnez  $v0, .L00462CA0
/* 00462C74 8FA900E4 */   lw    $t1, 0xe4($sp)
/* 00462C78 97AC00DA */  lhu   $t4, 0xda($sp)
/* 00462C7C 3C010600 */  lui   $at, 0x600
/* 00462C80 2599FEA0 */  addiu $t9, $t4, -0x160
/* 00462C84 2F380020 */  sltiu $t8, $t9, 0x20
/* 00462C88 00184023 */  negu  $t0, $t8
/* 00462C8C 01015024 */  and   $t2, $t0, $at
/* 00462C90 032A1004 */  sllv  $v0, $t2, $t9
/* 00462C94 284E0000 */  slti  $t6, $v0, 0
/* 00462C98 01C01025 */  move  $v0, $t6
/* 00462C9C 8FA900E4 */  lw    $t1, 0xe4($sp)
.L00462CA0:
/* 00462CA0 00025880 */  sll   $t3, $v0, 2
/* 00462CA4 01AB7823 */  subu  $t7, $t5, $t3
/* 00462CA8 01E9082A */  slt   $at, $t7, $t1
/* 00462CAC 102000FA */  beqz  $at, .L00463098
/* 00462CB0 93B800EB */   lbu   $t8, 0xeb($sp)
.L00462CB4:
/* 00462CB4 8F8C8BB4 */  lw     $t4, %got(atflag)($gp)
/* 00462CB8 00000000 */  nop   
/* 00462CBC 918C0000 */  lbu   $t4, ($t4)
/* 00462CC0 00000000 */  nop   
/* 00462CC4 15800007 */  bnez  $t4, .L00462CE4
/* 00462CC8 00000000 */   nop   
/* 00462CCC 8F9984C8 */  lw    $t9, %call16(macro_error)($gp)
/* 00462CD0 00000000 */  nop   
/* 00462CD4 0320F809 */  jalr  $t9
/* 00462CD8 00000000 */   nop   
/* 00462CDC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462CE0 00000000 */  nop   
.L00462CE4:
/* 00462CE4 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00462CE8 8FA500E4 */  lw    $a1, 0xe4($sp)
/* 00462CEC 0320F809 */  jalr  $t9
/* 00462CF0 24040001 */   li    $a0, 1
/* 00462CF4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462CF8 2404005A */  li    $a0, 90
/* 00462CFC 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00462D00 24050001 */  li    $a1, 1
/* 00462D04 00003025 */  move  $a2, $zero
/* 00462D08 0320F809 */  jalr  $t9
/* 00462D0C 00403825 */   move  $a3, $v0
/* 00462D10 93B800EB */  lbu   $t8, 0xeb($sp)
/* 00462D14 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462D18 24010048 */  li    $at, 72
/* 00462D1C 1301000A */  beq   $t8, $at, .L00462D48
/* 00462D20 00000000 */   nop   
/* 00462D24 13000008 */  beqz  $t8, .L00462D48
/* 00462D28 24040015 */   li    $a0, 21
/* 00462D2C 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00462D30 24050001 */  li    $a1, 1
/* 00462D34 24060001 */  li    $a2, 1
/* 00462D38 0320F809 */  jalr  $t9
/* 00462D3C 03003825 */   move  $a3, $t8
/* 00462D40 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462D44 00000000 */  nop   
.L00462D48:
/* 00462D48 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00462D4C 8FA500E4 */  lw    $a1, 0xe4($sp)
/* 00462D50 0320F809 */  jalr  $t9
/* 00462D54 00002025 */   move  $a0, $zero
/* 00462D58 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462D5C 24040054 */  li    $a0, 84
/* 00462D60 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00462D64 24050001 */  li    $a1, 1
/* 00462D68 24060001 */  li    $a2, 1
/* 00462D6C 0320F809 */  jalr  $t9
/* 00462D70 00403825 */   move  $a3, $v0
/* 00462D74 97A200DA */  lhu   $v0, 0xda($sp)
/* 00462D78 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462D7C 2442FF40 */  addiu $v0, $v0, -0xc0
/* 00462D80 2C4800C0 */  sltiu $t0, $v0, 0xc0
/* 00462D84 11000009 */  beqz  $t0, .L00462DAC
/* 00462D88 00025143 */   sra   $t2, $v0, 5
/* 00462D8C 8F8E8080 */  lw    $t6, %got(D_10004E68)($gp)
/* 00462D90 000AC880 */  sll   $t9, $t2, 2
/* 00462D94 25CE4E68 */  addiu $t6, %lo(D_10004E68) # addiu $t6, $t6, 0x4e68
/* 00462D98 01D96821 */  addu  $t5, $t6, $t9
/* 00462D9C 8DAB0000 */  lw    $t3, ($t5)
/* 00462DA0 00000000 */  nop   
/* 00462DA4 004B4804 */  sllv  $t1, $t3, $v0
/* 00462DA8 29280000 */  slti  $t0, $t1, 0
.L00462DAC:
/* 00462DAC 11000013 */  beqz  $t0, .L00462DFC
/* 00462DB0 2C4B0020 */   sltiu $t3, $v0, 0x20
/* 00462DB4 8F99802C */  lw    $t9, %got(func_00461EE0)($gp)
/* 00462DB8 93B800EF */  lbu   $t8, 0xef($sp)
/* 00462DBC 93AA00F3 */  lbu   $t2, 0xf3($sp)
/* 00462DC0 97A400DA */  lhu   $a0, 0xda($sp)
/* 00462DC4 240C0001 */  li    $t4, 1
/* 00462DC8 27391EE0 */  addiu $t9, %lo(func_00461EE0) # addiu $t9, $t9, 0x1ee0
/* 00462DCC AFAC0014 */  sw    $t4, 0x14($sp)
/* 00462DD0 02002825 */  move  $a1, $s0
/* 00462DD4 00003025 */  move  $a2, $zero
/* 00462DD8 00003825 */  move  $a3, $zero
/* 00462DDC AFA00010 */  sw    $zero, 0x10($sp)
/* 00462DE0 27A200D8 */  addiu $v0, $sp, 0xd8
/* 00462DE4 AFB80018 */  sw    $t8, 0x18($sp)
/* 00462DE8 0320F809 */  jalr  $t9
/* 00462DEC AFAA001C */   sw    $t2, 0x1c($sp)
/* 00462DF0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462DF4 10000189 */  b     .L0046341C
/* 00462DF8 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00462DFC:
/* 00462DFC 8F8E8B14 */  lw     $t6, %got(bigendian)($gp)
/* 00462E00 3C010001 */  lui   $at, 1
/* 00462E04 91CE0000 */  lbu   $t6, ($t6)
/* 00462E08 34218000 */  ori   $at, $at, 0x8000
/* 00462E0C 11C00005 */  beqz  $t6, .L00462E24
/* 00462E10 000B4823 */   negu  $t1, $t3
/* 00462E14 24190001 */  li    $t9, 1
/* 00462E18 AFA000D0 */  sw    $zero, 0xd0($sp)
/* 00462E1C 10000004 */  b     .L00462E30
/* 00462E20 AFB900CC */   sw    $t9, 0xcc($sp)
.L00462E24:
/* 00462E24 240D0001 */  li    $t5, 1
/* 00462E28 AFAD00D0 */  sw    $t5, 0xd0($sp)
/* 00462E2C AFA000CC */  sw    $zero, 0xcc($sp)
.L00462E30:
/* 00462E30 01217824 */  and   $t7, $t1, $at
/* 00462E34 004F4004 */  sllv  $t0, $t7, $v0
/* 00462E38 05010023 */  bgez  $t0, .L00462EC8
/* 00462E3C 02002825 */   move  $a1, $s0
/* 00462E40 97AC00DA */  lhu   $t4, 0xda($sp)
/* 00462E44 240100CF */  li    $at, 207
/* 00462E48 15810003 */  bne   $t4, $at, .L00462E58
/* 00462E4C 2404006A */   li    $a0, 106
/* 00462E50 10000001 */  b     .L00462E58
/* 00462E54 24040066 */   li    $a0, 102
.L00462E58:
/* 00462E58 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00462E5C 8FA600D0 */  lw    $a2, 0xd0($sp)
/* 00462E60 0320F809 */  jalr  $t9
/* 00462E64 24070001 */   li    $a3, 1
/* 00462E68 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462E6C 8FA600CC */  lw    $a2, 0xcc($sp)
/* 00462E70 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00462E74 2404006A */  li    $a0, 106
/* 00462E78 24050001 */  li    $a1, 1
/* 00462E7C 0320F809 */  jalr  $t9
/* 00462E80 24070001 */   li    $a3, 1
/* 00462E84 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462E88 24040002 */  li    $a0, 2
/* 00462E8C 8F99847C */  lw    $t9, %call16(emitshift)($gp)
/* 00462E90 02002825 */  move  $a1, $s0
/* 00462E94 02003025 */  move  $a2, $s0
/* 00462E98 0320F809 */  jalr  $t9
/* 00462E9C 24070008 */   li    $a3, 8
/* 00462EA0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462EA4 24040019 */  li    $a0, 25
/* 00462EA8 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00462EAC 02002825 */  move  $a1, $s0
/* 00462EB0 02003025 */  move  $a2, $s0
/* 00462EB4 0320F809 */  jalr  $t9
/* 00462EB8 24070001 */   li    $a3, 1
/* 00462EBC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462EC0 10000156 */  b     .L0046341C
/* 00462EC4 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00462EC8:
/* 00462EC8 97B800DA */  lhu   $t8, 0xda($sp)
/* 00462ECC 240100D2 */  li    $at, 210
/* 00462ED0 1701002D */  bne   $t8, $at, .L00462F88
/* 00462ED4 03A04025 */   move  $t0, $sp
/* 00462ED8 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00462EDC 8FA600CC */  lw    $a2, 0xcc($sp)
/* 00462EE0 2404006D */  li    $a0, 109
/* 00462EE4 02002825 */  move  $a1, $s0
/* 00462EE8 0320F809 */  jalr  $t9
/* 00462EEC 24070001 */   li    $a3, 1
/* 00462EF0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462EF4 24040003 */  li    $a0, 3
/* 00462EF8 8F99847C */  lw    $t9, %call16(emitshift)($gp)
/* 00462EFC 02002825 */  move  $a1, $s0
/* 00462F00 02003025 */  move  $a2, $s0
/* 00462F04 0320F809 */  jalr  $t9
/* 00462F08 24070008 */   li    $a3, 8
/* 00462F0C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462F10 8FA600D0 */  lw    $a2, 0xd0($sp)
/* 00462F14 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00462F18 2404006D */  li    $a0, 109
/* 00462F1C 02002825 */  move  $a1, $s0
/* 00462F20 0320F809 */  jalr  $t9
/* 00462F24 24070001 */   li    $a3, 1
/* 00462F28 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462F2C 8FA600CC */  lw    $a2, 0xcc($sp)
/* 00462F30 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00462F34 2404006A */  li    $a0, 106
/* 00462F38 24050001 */  li    $a1, 1
/* 00462F3C 0320F809 */  jalr  $t9
/* 00462F40 24070001 */   li    $a3, 1
/* 00462F44 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462F48 24040002 */  li    $a0, 2
/* 00462F4C 8F99847C */  lw    $t9, %call16(emitshift)($gp)
/* 00462F50 02002825 */  move  $a1, $s0
/* 00462F54 02003025 */  move  $a2, $s0
/* 00462F58 0320F809 */  jalr  $t9
/* 00462F5C 24070008 */   li    $a3, 8
/* 00462F60 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462F64 24040019 */  li    $a0, 25
/* 00462F68 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00462F6C 02002825 */  move  $a1, $s0
/* 00462F70 02003025 */  move  $a2, $s0
/* 00462F74 0320F809 */  jalr  $t9
/* 00462F78 24070001 */   li    $a3, 1
/* 00462F7C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00462F80 10000126 */  b     .L0046341C
/* 00462F84 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00462F88:
/* 00462F88 8F8A8070 */  lw    $t2, %got(RO_1001C6D0)($gp)
/* 00462F8C 03A06825 */  move  $t5, $sp
/* 00462F90 254AC6D0 */  addiu $t2, %lo(RO_1001C6D0) # addiu $t2, $t2, -0x3930
/* 00462F94 25590048 */  addiu $t9, $t2, 0x48
.L00462F98:
/* 00462F98 89410000 */  lwl   $at, ($t2)
/* 00462F9C 99410003 */  lwr   $at, 3($t2)
/* 00462FA0 254A000C */  addiu $t2, $t2, 0xc
/* 00462FA4 A9A10000 */  swl   $at, ($t5)
/* 00462FA8 B9A10003 */  swr   $at, 3($t5)
/* 00462FAC 8941FFF8 */  lwl   $at, -8($t2)
/* 00462FB0 9941FFFB */  lwr   $at, -5($t2)
/* 00462FB4 25AD000C */  addiu $t5, $t5, 0xc
/* 00462FB8 A9A1FFF8 */  swl   $at, -8($t5)
/* 00462FBC B9A1FFFB */  swr   $at, -5($t5)
/* 00462FC0 8941FFFC */  lwl   $at, -4($t2)
/* 00462FC4 9941FFFF */  lwr   $at, -1($t2)
/* 00462FC8 00000000 */  nop   
/* 00462FCC A9A1FFFC */  swl   $at, -4($t5)
/* 00462FD0 1559FFF1 */  bne   $t2, $t9, .L00462F98
/* 00462FD4 B9A1FFFF */   swr   $at, -1($t5)
/* 00462FD8 89410000 */  lwl   $at, ($t2)
/* 00462FDC 99410003 */  lwr   $at, 3($t2)
/* 00462FE0 8F8B8070 */  lw    $t3, %got(RO_1001C680)($gp)
/* 00462FE4 A9A10000 */  swl   $at, ($t5)
/* 00462FE8 B9A10003 */  swr   $at, 3($t5)
/* 00462FEC 89590004 */  lwl   $t9, 4($t2)
/* 00462FF0 99590007 */  lwr   $t9, 7($t2)
/* 00462FF4 256BC680 */  addiu $t3, %lo(RO_1001C680) # addiu $t3, $t3, -0x3980
/* 00462FF8 A9B90004 */  swl   $t9, 4($t5)
/* 00462FFC 256F0048 */  addiu $t7, $t3, 0x48
/* 00463000 B9B90007 */  swr   $t9, 7($t5)
.L00463004:
/* 00463004 89610000 */  lwl   $at, ($t3)
/* 00463008 99610003 */  lwr   $at, 3($t3)
/* 0046300C 256B000C */  addiu $t3, $t3, 0xc
/* 00463010 A9010050 */  swl   $at, 0x50($t0)
/* 00463014 B9010053 */  swr   $at, 0x53($t0)
/* 00463018 8961FFF8 */  lwl   $at, -8($t3)
/* 0046301C 9961FFFB */  lwr   $at, -5($t3)
/* 00463020 2508000C */  addiu $t0, $t0, 0xc
/* 00463024 A9010048 */  swl   $at, 0x48($t0)
/* 00463028 B901004B */  swr   $at, 0x4b($t0)
/* 0046302C 8961FFFC */  lwl   $at, -4($t3)
/* 00463030 9961FFFF */  lwr   $at, -1($t3)
/* 00463034 00000000 */  nop   
/* 00463038 A901004C */  swl   $at, 0x4c($t0)
/* 0046303C 156FFFF1 */  bne   $t3, $t7, .L00463004
/* 00463040 B901004F */   swr   $at, 0x4f($t0)
/* 00463044 89610000 */  lwl   $at, ($t3)
/* 00463048 99610003 */  lwr   $at, 3($t3)
/* 0046304C 240C05F0 */  li    $t4, 1520
/* 00463050 A9010050 */  swl   $at, 0x50($t0)
/* 00463054 B9010053 */  swr   $at, 0x53($t0)
/* 00463058 896F0004 */  lwl   $t7, 4($t3)
/* 0046305C 996F0007 */  lwr   $t7, 7($t3)
/* 00463060 00000000 */  nop   
/* 00463064 A90F0054 */  swl   $t7, 0x54($t0)
/* 00463068 B90F0057 */  swr   $t7, 0x57($t0)
/* 0046306C 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 00463070 8FA7000C */  lw    $a3, 0xc($sp)
/* 00463074 8FA60008 */  lw    $a2, 8($sp)
/* 00463078 8FA50004 */  lw    $a1, 4($sp)
/* 0046307C 8FA40000 */  lw    $a0, ($sp)
/* 00463080 0320F809 */  jalr  $t9
/* 00463084 AFAC00A0 */   sw    $t4, 0xa0($sp)
/* 00463088 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046308C 100000E3 */  b     .L0046341C
/* 00463090 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 00463094 93B800EB */  lbu   $t8, 0xeb($sp)
.L00463098:
/* 00463098 24010048 */  li    $at, 72
/* 0046309C 13010003 */  beq   $t8, $at, .L004630AC
/* 004630A0 00000000 */   nop   
/* 004630A4 17000003 */  bnez  $t8, .L004630B4
/* 004630A8 97A200DA */   lhu   $v0, 0xda($sp)
.L004630AC:
/* 004630AC A3A000EB */  sb    $zero, 0xeb($sp)
/* 004630B0 97A200DA */  lhu   $v0, 0xda($sp)
.L004630B4:
/* 004630B4 93AC00EB */  lbu   $t4, 0xeb($sp)
/* 004630B8 2442FF40 */  addiu $v0, $v0, -0xc0
/* 004630BC 2C4E00C0 */  sltiu $t6, $v0, 0xc0
/* 004630C0 11C00009 */  beqz  $t6, .L004630E8
/* 004630C4 0002C943 */   sra   $t9, $v0, 5
/* 004630C8 8F8D8080 */  lw    $t5, %got(D_10004E68)($gp)
/* 004630CC 00195080 */  sll   $t2, $t9, 2
/* 004630D0 25AD4E68 */  addiu $t5, %lo(D_10004E68) # addiu $t5, $t5, 0x4e68
/* 004630D4 01AA4821 */  addu  $t1, $t5, $t2
/* 004630D8 8D2F0000 */  lw    $t7, ($t1)
/* 004630DC 00000000 */  nop   
/* 004630E0 004F5804 */  sllv  $t3, $t7, $v0
/* 004630E4 296E0000 */  slti  $t6, $t3, 0
.L004630E8:
/* 004630E8 11C0002B */  beqz  $t6, .L00463198
/* 004630EC 00000000 */   nop   
/* 004630F0 160C0016 */  bne   $s0, $t4, .L0046314C
/* 004630F4 00000000 */   nop   
/* 004630F8 8F988BB4 */  lw     $t8, %got(atflag)($gp)
/* 004630FC 00000000 */  nop   
/* 00463100 93180000 */  lbu   $t8, ($t8)
/* 00463104 00000000 */  nop   
/* 00463108 17000007 */  bnez  $t8, .L00463128
/* 0046310C 00000000 */   nop   
/* 00463110 8F9984C8 */  lw    $t9, %call16(macro_error)($gp)
/* 00463114 00000000 */  nop   
/* 00463118 0320F809 */  jalr  $t9
/* 0046311C 00000000 */   nop   
/* 00463120 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463124 00000000 */  nop   
.L00463128:
/* 00463128 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 0046312C 93A600EB */  lbu   $a2, 0xeb($sp)
/* 00463130 24040015 */  li    $a0, 21
/* 00463134 24050001 */  li    $a1, 1
/* 00463138 0320F809 */  jalr  $t9
/* 0046313C 00003825 */   move  $a3, $zero
/* 00463140 24190001 */  li    $t9, 1
/* 00463144 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463148 A3B900EB */  sb    $t9, 0xeb($sp)
.L0046314C:
/* 0046314C 8F99802C */  lw    $t9, %got(func_00461EE0)($gp)
/* 00463150 8FAD00E4 */  lw    $t5, 0xe4($sp)
/* 00463154 93AA00EB */  lbu   $t2, 0xeb($sp)
/* 00463158 93A900EF */  lbu   $t1, 0xef($sp)
/* 0046315C 93AF00F3 */  lbu   $t7, 0xf3($sp)
/* 00463160 97A400DA */  lhu   $a0, 0xda($sp)
/* 00463164 27391EE0 */  addiu $t9, %lo(func_00461EE0) # addiu $t9, $t9, 0x1ee0
/* 00463168 02002825 */  move  $a1, $s0
/* 0046316C 00003025 */  move  $a2, $zero
/* 00463170 00003825 */  move  $a3, $zero
/* 00463174 27A200D8 */  addiu $v0, $sp, 0xd8
/* 00463178 AFAD0010 */  sw    $t5, 0x10($sp)
/* 0046317C AFAA0014 */  sw    $t2, 0x14($sp)
/* 00463180 AFA90018 */  sw    $t1, 0x18($sp)
/* 00463184 0320F809 */  jalr  $t9
/* 00463188 AFAF001C */   sw    $t7, 0x1c($sp)
/* 0046318C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463190 100000A2 */  b     .L0046341C
/* 00463194 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00463198:
/* 00463198 8F8B8B14 */  lw     $t3, %got(bigendian)($gp)
/* 0046319C 8FAC00E4 */  lw    $t4, 0xe4($sp)
/* 004631A0 916B0000 */  lbu   $t3, ($t3)
/* 004631A4 8FA800E4 */  lw    $t0, 0xe4($sp)
/* 004631A8 11600004 */  beqz  $t3, .L004631BC
/* 004631AC 25980001 */   addiu $t8, $t4, 1
/* 004631B0 250E0001 */  addiu $t6, $t0, 1
/* 004631B4 10000003 */  b     .L004631C4
/* 004631B8 AFAE00CC */   sw    $t6, 0xcc($sp)
.L004631BC:
/* 004631BC AFAC00CC */  sw    $t4, 0xcc($sp)
/* 004631C0 AFB800D0 */  sw    $t8, 0xd0($sp)
.L004631C4:
/* 004631C4 8F998BB4 */  lw     $t9, %got(atflag)($gp)
/* 004631C8 00000000 */  nop   
/* 004631CC 93390000 */  lbu   $t9, ($t9)
/* 004631D0 00000000 */  nop   
/* 004631D4 17200009 */  bnez  $t9, .L004631FC
/* 004631D8 2C4D0020 */   sltiu $t5, $v0, 0x20
/* 004631DC 8F9984C8 */  lw    $t9, %call16(macro_error)($gp)
/* 004631E0 AFA200BC */  sw    $v0, 0xbc($sp)
/* 004631E4 0320F809 */  jalr  $t9
/* 004631E8 00000000 */   nop   
/* 004631EC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004631F0 8FA200BC */  lw    $v0, 0xbc($sp)
/* 004631F4 00000000 */  nop   
/* 004631F8 2C4D0020 */  sltiu $t5, $v0, 0x20
.L004631FC:
/* 004631FC 3C010001 */  lui   $at, 1
/* 00463200 34218000 */  ori   $at, $at, 0x8000
/* 00463204 000D5023 */  negu  $t2, $t5
/* 00463208 01414824 */  and   $t1, $t2, $at
/* 0046320C 00497804 */  sllv  $t7, $t1, $v0
/* 00463210 05E10025 */  bgez  $t7, .L004632A8
/* 00463214 97A800DA */   lhu   $t0, 0xda($sp)
/* 00463218 97AB00DA */  lhu   $t3, 0xda($sp)
/* 0046321C 240100CF */  li    $at, 207
/* 00463220 15610003 */  bne   $t3, $at, .L00463230
/* 00463224 2404006A */   li    $a0, 106
/* 00463228 10000001 */  b     .L00463230
/* 0046322C 24040066 */   li    $a0, 102
.L00463230:
/* 00463230 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00463234 8FA600D0 */  lw    $a2, 0xd0($sp)
/* 00463238 93A700EB */  lbu   $a3, 0xeb($sp)
/* 0046323C 0320F809 */  jalr  $t9
/* 00463240 24050001 */   li    $a1, 1
/* 00463244 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463248 8FA600CC */  lw    $a2, 0xcc($sp)
/* 0046324C 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00463250 93A700EB */  lbu   $a3, 0xeb($sp)
/* 00463254 2404006A */  li    $a0, 106
/* 00463258 0320F809 */  jalr  $t9
/* 0046325C 02002825 */   move  $a1, $s0
/* 00463260 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463264 24040002 */  li    $a0, 2
/* 00463268 8F99847C */  lw    $t9, %call16(emitshift)($gp)
/* 0046326C 24050001 */  li    $a1, 1
/* 00463270 24060001 */  li    $a2, 1
/* 00463274 0320F809 */  jalr  $t9
/* 00463278 24070008 */   li    $a3, 8
/* 0046327C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463280 24040019 */  li    $a0, 25
/* 00463284 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00463288 02002825 */  move  $a1, $s0
/* 0046328C 02003025 */  move  $a2, $s0
/* 00463290 0320F809 */  jalr  $t9
/* 00463294 24070001 */   li    $a3, 1
/* 00463298 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046329C 1000005F */  b     .L0046341C
/* 004632A0 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 004632A4 97A800DA */  lhu   $t0, 0xda($sp)
.L004632A8:
/* 004632A8 240100D2 */  li    $at, 210
/* 004632AC 15010018 */  bne   $t0, $at, .L00463310
/* 004632B0 03A07825 */   move  $t7, $sp
/* 004632B4 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 004632B8 8FA600CC */  lw    $a2, 0xcc($sp)
/* 004632BC 93A700EB */  lbu   $a3, 0xeb($sp)
/* 004632C0 2404006D */  li    $a0, 109
/* 004632C4 0320F809 */  jalr  $t9
/* 004632C8 02002825 */   move  $a1, $s0
/* 004632CC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004632D0 24040003 */  li    $a0, 3
/* 004632D4 8F99847C */  lw    $t9, %call16(emitshift)($gp)
/* 004632D8 24050001 */  li    $a1, 1
/* 004632DC 02003025 */  move  $a2, $s0
/* 004632E0 0320F809 */  jalr  $t9
/* 004632E4 24070008 */   li    $a3, 8
/* 004632E8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004632EC 8FA600D0 */  lw    $a2, 0xd0($sp)
/* 004632F0 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 004632F4 93A700EB */  lbu   $a3, 0xeb($sp)
/* 004632F8 2404006D */  li    $a0, 109
/* 004632FC 0320F809 */  jalr  $t9
/* 00463300 24050001 */   li    $a1, 1
/* 00463304 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463308 10000044 */  b     .L0046341C
/* 0046330C 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00463310:
/* 00463310 8F8E8070 */  lw    $t6, %got(RO_1001C630)($gp)
/* 00463314 03A0C825 */  move  $t9, $sp
/* 00463318 25CEC630 */  addiu $t6, %lo(RO_1001C630) # addiu $t6, $t6, -0x39d0
/* 0046331C 25D80048 */  addiu $t8, $t6, 0x48
.L00463320:
/* 00463320 89C10000 */  lwl   $at, ($t6)
/* 00463324 99C10003 */  lwr   $at, 3($t6)
/* 00463328 25CE000C */  addiu $t6, $t6, 0xc
/* 0046332C AB210000 */  swl   $at, ($t9)
/* 00463330 BB210003 */  swr   $at, 3($t9)
/* 00463334 89C1FFF8 */  lwl   $at, -8($t6)
/* 00463338 99C1FFFB */  lwr   $at, -5($t6)
/* 0046333C 2739000C */  addiu $t9, $t9, 0xc
/* 00463340 AB21FFF8 */  swl   $at, -8($t9)
/* 00463344 BB21FFFB */  swr   $at, -5($t9)
/* 00463348 89C1FFFC */  lwl   $at, -4($t6)
/* 0046334C 99C1FFFF */  lwr   $at, -1($t6)
/* 00463350 00000000 */  nop   
/* 00463354 AB21FFFC */  swl   $at, -4($t9)
/* 00463358 15D8FFF1 */  bne   $t6, $t8, .L00463320
/* 0046335C BB21FFFF */   swr   $at, -1($t9)
/* 00463360 89C10000 */  lwl   $at, ($t6)
/* 00463364 99C10003 */  lwr   $at, 3($t6)
/* 00463368 8F8D8070 */  lw    $t5, %got(RO_1001C5E0)($gp)
/* 0046336C AB210000 */  swl   $at, ($t9)
/* 00463370 BB210003 */  swr   $at, 3($t9)
/* 00463374 89D80004 */  lwl   $t8, 4($t6)
/* 00463378 99D80007 */  lwr   $t8, 7($t6)
/* 0046337C 25ADC5E0 */  addiu $t5, %lo(RO_1001C5E0) # addiu $t5, $t5, -0x3a20
/* 00463380 AB380004 */  swl   $t8, 4($t9)
/* 00463384 25A90048 */  addiu $t1, $t5, 0x48
/* 00463388 BB380007 */  swr   $t8, 7($t9)
.L0046338C:
/* 0046338C 89A10000 */  lwl   $at, ($t5)
/* 00463390 99A10003 */  lwr   $at, 3($t5)
/* 00463394 25AD000C */  addiu $t5, $t5, 0xc
/* 00463398 A9E10050 */  swl   $at, 0x50($t7)
/* 0046339C B9E10053 */  swr   $at, 0x53($t7)
/* 004633A0 89A1FFF8 */  lwl   $at, -8($t5)
/* 004633A4 99A1FFFB */  lwr   $at, -5($t5)
/* 004633A8 25EF000C */  addiu $t7, $t7, 0xc
/* 004633AC A9E10048 */  swl   $at, 0x48($t7)
/* 004633B0 B9E1004B */  swr   $at, 0x4b($t7)
/* 004633B4 89A1FFFC */  lwl   $at, -4($t5)
/* 004633B8 99A1FFFF */  lwr   $at, -1($t5)
/* 004633BC 00000000 */  nop   
/* 004633C0 A9E1004C */  swl   $at, 0x4c($t7)
/* 004633C4 15A9FFF1 */  bne   $t5, $t1, .L0046338C
/* 004633C8 B9E1004F */   swr   $at, 0x4f($t7)
/* 004633CC 89A10000 */  lwl   $at, ($t5)
/* 004633D0 99A10003 */  lwr   $at, 3($t5)
/* 004633D4 240B0619 */  li    $t3, 1561
/* 004633D8 A9E10050 */  swl   $at, 0x50($t7)
/* 004633DC B9E10053 */  swr   $at, 0x53($t7)
/* 004633E0 89A90004 */  lwl   $t1, 4($t5)
/* 004633E4 99A90007 */  lwr   $t1, 7($t5)
/* 004633E8 00000000 */  nop   
/* 004633EC A9E90054 */  swl   $t1, 0x54($t7)
/* 004633F0 B9E90057 */  swr   $t1, 0x57($t7)
/* 004633F4 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 004633F8 8FA7000C */  lw    $a3, 0xc($sp)
/* 004633FC 8FA60008 */  lw    $a2, 8($sp)
/* 00463400 8FA50004 */  lw    $a1, 4($sp)
/* 00463404 8FA40000 */  lw    $a0, ($sp)
/* 00463408 0320F809 */  jalr  $t9
/* 0046340C AFAB00A0 */   sw    $t3, 0xa0($sp)
/* 00463410 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463414 00000000 */  nop   
.L00463418:
/* 00463418 8FBF00B4 */  lw    $ra, 0xb4($sp)
.L0046341C:
/* 0046341C 8FB000AC */  lw    $s0, 0xac($sp)
/* 00463420 03E00008 */  jr    $ra
/* 00463424 27BD00D8 */   addiu $sp, $sp, 0xd8

    .type func_00463428, @function
func_00463428:
    # 004638F8 func_004638F8
    # 00464528 parseafra
/* 00463428 3C1C0FBC */  .cpload $t9
/* 0046342C 279C6E38 */  
/* 00463430 0399E021 */  
/* 00463434 27BDFF38 */  addiu $sp, $sp, -0xc8
/* 00463438 AFA400C8 */  sw    $a0, 0xc8($sp)
/* 0046343C 97AE00CA */  lhu   $t6, 0xca($sp)
/* 00463440 24010076 */  li    $at, 118
/* 00463444 AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 00463448 AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 0046344C AFA500CC */  sw    $a1, 0xcc($sp)
/* 00463450 AFA600D0 */  sw    $a2, 0xd0($sp)
/* 00463454 AFA700D4 */  sw    $a3, 0xd4($sp)
/* 00463458 11C10004 */  beq   $t6, $at, .L0046346C
/* 0046345C AFA200C4 */   sw    $v0, 0xc4($sp)
/* 00463460 24010077 */  li    $at, 119
/* 00463464 15C10004 */  bne   $t6, $at, .L00463478
/* 00463468 241800D1 */   li    $t8, 209
.L0046346C:
/* 0046346C 240F00CE */  li    $t7, 206
/* 00463470 10000002 */  b     .L0046347C
/* 00463474 A7AF00CA */   sh    $t7, 0xca($sp)
.L00463478:
/* 00463478 A7B800CA */  sh    $t8, 0xca($sp)
.L0046347C:
/* 0046347C 8FB900D0 */  lw    $t9, 0xd0($sp)
/* 00463480 8FA500D4 */  lw    $a1, 0xd4($sp)
/* 00463484 13200008 */  beqz  $t9, .L004634A8
/* 00463488 03202025 */   move  $a0, $t9
/* 0046348C 8F998610 */  lw    $t9, %call16(is_gp_relative)($gp)
/* 00463490 93A600DB */  lbu   $a2, 0xdb($sp)
/* 00463494 0320F809 */  jalr  $t9
/* 00463498 27A700C3 */   addiu $a3, $sp, 0xc3
/* 0046349C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004634A0 1440000A */  bnez  $v0, .L004634CC
/* 004634A4 00000000 */   nop   
.L004634A8:
/* 004634A8 8FA800D0 */  lw    $t0, 0xd0($sp)
/* 004634AC 8FA900D4 */  lw    $t1, 0xd4($sp)
/* 004634B0 1500006D */  bnez  $t0, .L00463668
/* 004634B4 29218000 */   slti  $at, $t1, -0x8000
/* 004634B8 1420006B */  bnez  $at, .L00463668
/* 004634BC 34018000 */   li    $at, 32768
/* 004634C0 0121082A */  slt   $at, $t1, $at
/* 004634C4 10200068 */  beqz  $at, .L00463668
/* 004634C8 00000000 */   nop   
.L004634CC:
/* 004634CC 8F8B8BF8 */  lw     $t3, %got(gpreg)($gp)
/* 004634D0 93AA00DB */  lbu   $t2, 0xdb($sp)
/* 004634D4 916B0000 */  lbu   $t3, ($t3)
/* 004634D8 03A04825 */  move  $t1, $sp
/* 004634DC 154B0043 */  bne   $t2, $t3, .L004635EC
/* 004634E0 00000000 */   nop   
/* 004634E4 8F8C8070 */  lw    $t4, %got(RO_1001C900)($gp)
/* 004634E8 03A07825 */  move  $t7, $sp
/* 004634EC 258CC900 */  addiu $t4, %lo(RO_1001C900) # addiu $t4, $t4, -0x3700
/* 004634F0 258E0048 */  addiu $t6, $t4, 0x48
.L004634F4:
/* 004634F4 89810000 */  lwl   $at, ($t4)
/* 004634F8 99810003 */  lwr   $at, 3($t4)
/* 004634FC 258C000C */  addiu $t4, $t4, 0xc
/* 00463500 A9E10000 */  swl   $at, ($t7)
/* 00463504 B9E10003 */  swr   $at, 3($t7)
/* 00463508 8981FFF8 */  lwl   $at, -8($t4)
/* 0046350C 9981FFFB */  lwr   $at, -5($t4)
/* 00463510 25EF000C */  addiu $t7, $t7, 0xc
/* 00463514 A9E1FFF8 */  swl   $at, -8($t7)
/* 00463518 B9E1FFFB */  swr   $at, -5($t7)
/* 0046351C 8981FFFC */  lwl   $at, -4($t4)
/* 00463520 9981FFFF */  lwr   $at, -1($t4)
/* 00463524 00000000 */  nop   
/* 00463528 A9E1FFFC */  swl   $at, -4($t7)
/* 0046352C 158EFFF1 */  bne   $t4, $t6, .L004634F4
/* 00463530 B9E1FFFF */   swr   $at, -1($t7)
/* 00463534 89810000 */  lwl   $at, ($t4)
/* 00463538 99810003 */  lwr   $at, 3($t4)
/* 0046353C 8F988070 */  lw    $t8, %got(RO_1001C8B0)($gp)
/* 00463540 A9E10000 */  swl   $at, ($t7)
/* 00463544 B9E10003 */  swr   $at, 3($t7)
/* 00463548 898E0004 */  lwl   $t6, 4($t4)
/* 0046354C 998E0007 */  lwr   $t6, 7($t4)
/* 00463550 2718C8B0 */  addiu $t8, %lo(RO_1001C8B0) # addiu $t8, $t8, -0x3750
/* 00463554 A9EE0004 */  swl   $t6, 4($t7)
/* 00463558 27080048 */  addiu $t0, $t8, 0x48
/* 0046355C B9EE0007 */  swr   $t6, 7($t7)
.L00463560:
/* 00463560 8B010000 */  lwl   $at, ($t8)
/* 00463564 9B010003 */  lwr   $at, 3($t8)
/* 00463568 2718000C */  addiu $t8, $t8, 0xc
/* 0046356C A9210050 */  swl   $at, 0x50($t1)
/* 00463570 B9210053 */  swr   $at, 0x53($t1)
/* 00463574 8B01FFF8 */  lwl   $at, -8($t8)
/* 00463578 9B01FFFB */  lwr   $at, -5($t8)
/* 0046357C 2529000C */  addiu $t1, $t1, 0xc
/* 00463580 A9210048 */  swl   $at, 0x48($t1)
/* 00463584 B921004B */  swr   $at, 0x4b($t1)
/* 00463588 8B01FFFC */  lwl   $at, -4($t8)
/* 0046358C 9B01FFFF */  lwr   $at, -1($t8)
/* 00463590 00000000 */  nop   
/* 00463594 A921004C */  swl   $at, 0x4c($t1)
/* 00463598 1708FFF1 */  bne   $t8, $t0, .L00463560
/* 0046359C B921004F */   swr   $at, 0x4f($t1)
/* 004635A0 8B010000 */  lwl   $at, ($t8)
/* 004635A4 9B010003 */  lwr   $at, 3($t8)
/* 004635A8 240A0638 */  li    $t2, 1592
/* 004635AC A9210050 */  swl   $at, 0x50($t1)
/* 004635B0 B9210053 */  swr   $at, 0x53($t1)
/* 004635B4 8B080004 */  lwl   $t0, 4($t8)
/* 004635B8 9B080007 */  lwr   $t0, 7($t8)
/* 004635BC 00000000 */  nop   
/* 004635C0 A9280054 */  swl   $t0, 0x54($t1)
/* 004635C4 B9280057 */  swr   $t0, 0x57($t1)
/* 004635C8 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 004635CC 8FA7000C */  lw    $a3, 0xc($sp)
/* 004635D0 8FA60008 */  lw    $a2, 8($sp)
/* 004635D4 8FA50004 */  lw    $a1, 4($sp)
/* 004635D8 8FA40000 */  lw    $a0, ($sp)
/* 004635DC 0320F809 */  jalr  $t9
/* 004635E0 AFAA00A0 */   sw    $t2, 0xa0($sp)
/* 004635E4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004635E8 00000000 */  nop   
.L004635EC:
/* 004635EC 8F8B8BB4 */  lw     $t3, %got(atflag)($gp)
/* 004635F0 00000000 */  nop   
/* 004635F4 916B0000 */  lbu   $t3, ($t3)
/* 004635F8 00000000 */  nop   
/* 004635FC 15600008 */  bnez  $t3, .L00463620
/* 00463600 8FAC00DC */   lw    $t4, 0xdc($sp)
/* 00463604 8F9984C8 */  lw    $t9, %call16(macro_error)($gp)
/* 00463608 00000000 */  nop   
/* 0046360C 0320F809 */  jalr  $t9
/* 00463610 00000000 */   nop   
/* 00463614 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463618 00000000 */  nop   
/* 0046361C 8FAC00DC */  lw    $t4, 0xdc($sp)
.L00463620:
/* 00463620 8F99802C */  lw    $t9, %got(func_00462320)($gp)
/* 00463624 93AD00DB */  lbu   $t5, 0xdb($sp)
/* 00463628 93AE00CF */  lbu   $t6, 0xcf($sp)
/* 0046362C 298F0002 */  slti  $t7, $t4, 2
/* 00463630 39EF0001 */  xori  $t7, $t7, 1
/* 00463634 97A400CA */  lhu   $a0, 0xca($sp)
/* 00463638 8FA600D0 */  lw    $a2, 0xd0($sp)
/* 0046363C 8FA700D4 */  lw    $a3, 0xd4($sp)
/* 00463640 8FA200C4 */  lw    $v0, 0xc4($sp)
/* 00463644 27392320 */  addiu $t9, %lo(func_00462320) # addiu $t9, $t9, 0x2320
/* 00463648 AFAF0018 */  sw    $t7, 0x18($sp)
/* 0046364C 24050001 */  li    $a1, 1
/* 00463650 AFAD0010 */  sw    $t5, 0x10($sp)
/* 00463654 0320F809 */  jalr  $t9
/* 00463658 AFAE0014 */   sw    $t6, 0x14($sp)
/* 0046365C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463660 10000065 */  b     .L004637F8
/* 00463664 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00463668:
/* 00463668 8F998AF8 */  lw     $t9, %got(picflag)($gp)
/* 0046366C 00000000 */  nop   
/* 00463670 8F390000 */  lw    $t9, ($t9)
/* 00463674 00000000 */  nop   
/* 00463678 1B20002B */  blez  $t9, .L00463728
/* 0046367C 8FAF00DC */   lw    $t7, 0xdc($sp)
/* 00463680 8F888070 */  lw    $t0, %got(RO_1001C860)($gp)
/* 00463684 03A05025 */  move  $t2, $sp
/* 00463688 2508C860 */  addiu $t0, %lo(RO_1001C860) # addiu $t0, $t0, -0x37a0
/* 0046368C 25090048 */  addiu $t1, $t0, 0x48
.L00463690:
/* 00463690 89010000 */  lwl   $at, ($t0)
/* 00463694 99010003 */  lwr   $at, 3($t0)
/* 00463698 2508000C */  addiu $t0, $t0, 0xc
/* 0046369C A9410000 */  swl   $at, ($t2)
/* 004636A0 B9410003 */  swr   $at, 3($t2)
/* 004636A4 8901FFF8 */  lwl   $at, -8($t0)
/* 004636A8 9901FFFB */  lwr   $at, -5($t0)
/* 004636AC 254A000C */  addiu $t2, $t2, 0xc
/* 004636B0 A941FFF8 */  swl   $at, -8($t2)
/* 004636B4 B941FFFB */  swr   $at, -5($t2)
/* 004636B8 8901FFFC */  lwl   $at, -4($t0)
/* 004636BC 9901FFFF */  lwr   $at, -1($t0)
/* 004636C0 00000000 */  nop   
/* 004636C4 A941FFFC */  swl   $at, -4($t2)
/* 004636C8 1509FFF1 */  bne   $t0, $t1, .L00463690
/* 004636CC B941FFFF */   swr   $at, -1($t2)
/* 004636D0 89010000 */  lwl   $at, ($t0)
/* 004636D4 99010003 */  lwr   $at, 3($t0)
/* 004636D8 8F8B8C68 */  lw     $t3, %got(emptystring)($gp)
/* 004636DC A9410000 */  swl   $at, ($t2)
/* 004636E0 B9410003 */  swr   $at, 3($t2)
/* 004636E4 89090004 */  lwl   $t1, 4($t0)
/* 004636E8 99090007 */  lwr   $t1, 7($t0)
/* 004636EC 240D0001 */  li    $t5, 1
/* 004636F0 A9490004 */  swl   $t1, 4($t2)
/* 004636F4 B9490007 */  swr   $t1, 7($t2)
/* 004636F8 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 004636FC 8D6B0000 */  lw    $t3, ($t3)
/* 00463700 8FA7000C */  lw    $a3, 0xc($sp)
/* 00463704 8FA60008 */  lw    $a2, 8($sp)
/* 00463708 8FA50004 */  lw    $a1, 4($sp)
/* 0046370C 8FA40000 */  lw    $a0, ($sp)
/* 00463710 AFAD0054 */  sw    $t5, 0x54($sp)
/* 00463714 0320F809 */  jalr  $t9
/* 00463718 AFAB0050 */   sw    $t3, 0x50($sp)
/* 0046371C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463720 00000000 */  nop   
/* 00463724 8FAF00DC */  lw    $t7, 0xdc($sp)
.L00463728:
/* 00463728 8F858BF8 */  lw     $a1, %got(gpreg)($gp)
/* 0046372C 29F90002 */  slti  $t9, $t7, 2
/* 00463730 3B390001 */  xori  $t9, $t9, 1
/* 00463734 AFB90018 */  sw    $t9, 0x18($sp)
/* 00463738 8F99802C */  lw    $t9, %got(func_00462320)($gp)
/* 0046373C 93AE00DB */  lbu   $t6, 0xdb($sp)
/* 00463740 93AC00CF */  lbu   $t4, 0xcf($sp)
/* 00463744 97A400CA */  lhu   $a0, 0xca($sp)
/* 00463748 8FA600D0 */  lw    $a2, 0xd0($sp)
/* 0046374C 8FA700D4 */  lw    $a3, 0xd4($sp)
/* 00463750 8FA200C4 */  lw    $v0, 0xc4($sp)
/* 00463754 90A50000 */  lbu   $a1, ($a1)
/* 00463758 27392320 */  addiu $t9, %lo(func_00462320) # addiu $t9, $t9, 0x2320
/* 0046375C AFAE0010 */  sw    $t6, 0x10($sp)
/* 00463760 0320F809 */  jalr  $t9
/* 00463764 AFAC0014 */   sw    $t4, 0x14($sp)
/* 00463768 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046376C 00000000 */  nop   
/* 00463770 8F868DD8 */  lw     $a2, %got(gp_symbol)($gp)
/* 00463774 00000000 */  nop   
/* 00463778 8CC60000 */  lw    $a2, ($a2)
/* 0046377C 00000000 */  nop   
/* 00463780 14C00012 */  bnez  $a2, .L004637CC
/* 00463784 00000000 */   nop   
/* 00463788 8F998344 */  lw    $t9, %call16(l_addr)($gp)
/* 0046378C 8F8489E8 */  lw     $a0, %got(gp_symbol_name)($gp)
/* 00463790 0320F809 */  jalr  $t9
/* 00463794 00000000 */   nop   
/* 00463798 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046379C 00402025 */  move  $a0, $v0
/* 004637A0 8F9985B8 */  lw    $t9, %call16(enter_undef_sym)($gp)
/* 004637A4 00000000 */  nop   
/* 004637A8 0320F809 */  jalr  $t9
/* 004637AC 00000000 */   nop   
/* 004637B0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004637B4 00000000 */  nop   
/* 004637B8 8F818DD8 */  lw     $at, %got(gp_symbol)($gp)
/* 004637BC 8F868DD8 */  lw     $a2, %got(gp_symbol)($gp)
/* 004637C0 AC220000 */  sw    $v0, ($at)
/* 004637C4 8CC60000 */  lw    $a2, ($a2)
/* 004637C8 00000000 */  nop   
.L004637CC:
/* 004637CC 8F858BF8 */  lw     $a1, %got(gpreg)($gp)
/* 004637D0 8F99861C */  lw    $t9, %call16(do_parseafra)($gp)
/* 004637D4 24180048 */  li    $t8, 72
/* 004637D8 90A50000 */  lbu   $a1, ($a1)
/* 004637DC AFB80010 */  sw    $t8, 0x10($sp)
/* 004637E0 24040024 */  li    $a0, 36
/* 004637E4 0320F809 */  jalr  $t9
/* 004637E8 00003825 */   move  $a3, $zero
/* 004637EC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004637F0 00000000 */  nop   
/* 004637F4 8FBF00B4 */  lw    $ra, 0xb4($sp)
.L004637F8:
/* 004637F8 27BD00C8 */  addiu $sp, $sp, 0xc8
/* 004637FC 03E00008 */  jr    $ra
/* 00463800 00000000 */   nop   

    .type func_00463804, @function
func_00463804:
    # 0046383C func_0046383C
    # 004638F8 func_004638F8
    # 00464528 parseafra
/* 00463804 3C1C0FBC */  .cpload $t9
/* 00463808 279C6A5C */  
/* 0046380C 0399E021 */  
/* 00463810 8F8E8B94 */  lw     $t6, %got(opts)($gp)
/* 00463814 AFA40000 */  sw    $a0, ($sp)
/* 00463818 91CE001C */  lbu   $t6, 0x1c($t6)
/* 0046381C AFA50004 */  sw    $a1, 4($sp)
/* 00463820 008E182B */  sltu  $v1, $a0, $t6
/* 00463824 38630001 */  xori  $v1, $v1, 1
/* 00463828 10600002 */  beqz  $v1, .L00463834
/* 0046382C 00000000 */   nop   
/* 00463830 0085182B */  sltu  $v1, $a0, $a1
.L00463834:
/* 00463834 03E00008 */  jr    $ra
/* 00463838 00601025 */   move  $v0, $v1

    .type func_0046383C, @function
func_0046383C:
    # 004638F8 func_004638F8
    # 00464528 parseafra
/* 0046383C 3C1C0FBC */  .cpload $t9
/* 00463840 279C6A24 */  
/* 00463844 0399E021 */  
/* 00463848 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0046384C 8F99802C */  lw    $t9, %got(func_00463804)($gp)
/* 00463850 AFA40038 */  sw    $a0, 0x38($sp)
/* 00463854 AFA5003C */  sw    $a1, 0x3c($sp)
/* 00463858 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0046385C AFBC0028 */  sw    $gp, 0x28($sp)
/* 00463860 93A5003B */  lbu   $a1, 0x3b($sp)
/* 00463864 9044FFF3 */  lbu   $a0, -0xd($v0)
/* 00463868 27393804 */  addiu $t9, %lo(func_00463804) # addiu $t9, $t9, 0x3804
/* 0046386C 0320F809 */  jalr  $t9
/* 00463870 AFA20034 */   sw    $v0, 0x34($sp)
/* 00463874 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00463878 8FA30034 */  lw    $v1, 0x34($sp)
/* 0046387C 10400010 */  beqz  $v0, .L004638C0
/* 00463880 240F0048 */   li    $t7, 72
/* 00463884 906EFFFE */  lbu   $t6, -2($v1)
/* 00463888 8F99802C */  lw    $t9, %got(func_00462320)($gp)
/* 0046388C 9065FFFF */  lbu   $a1, -1($v1)
/* 00463890 8C66FFF4 */  lw    $a2, -0xc($v1)
/* 00463894 8C67FFF8 */  lw    $a3, -8($v1)
/* 00463898 97A4003E */  lhu   $a0, 0x3e($sp)
/* 0046389C 27392320 */  addiu $t9, %lo(func_00462320) # addiu $t9, $t9, 0x2320
/* 004638A0 AFA00018 */  sw    $zero, 0x18($sp)
/* 004638A4 AFAF0014 */  sw    $t7, 0x14($sp)
/* 004638A8 00601025 */  move  $v0, $v1
/* 004638AC 0320F809 */  jalr  $t9
/* 004638B0 AFAE0010 */   sw    $t6, 0x10($sp)
/* 004638B4 8FBC0028 */  lw    $gp, 0x28($sp)
/* 004638B8 1000000C */  b     .L004638EC
/* 004638BC 8FBF002C */   lw    $ra, 0x2c($sp)
.L004638C0:
/* 004638C0 9078FFFE */  lbu   $t8, -2($v1)
/* 004638C4 8F99861C */  lw    $t9, %call16(do_parseafra)($gp)
/* 004638C8 94640002 */  lhu   $a0, 2($v1)
/* 004638CC 9065FFFF */  lbu   $a1, -1($v1)
/* 004638D0 8C66FFF4 */  lw    $a2, -0xc($v1)
/* 004638D4 8C67FFF8 */  lw    $a3, -8($v1)
/* 004638D8 0320F809 */  jalr  $t9
/* 004638DC AFB80010 */   sw    $t8, 0x10($sp)
/* 004638E0 8FBC0028 */  lw    $gp, 0x28($sp)
/* 004638E4 00000000 */  nop   
/* 004638E8 8FBF002C */  lw    $ra, 0x2c($sp)
.L004638EC:
/* 004638EC 27BD0038 */  addiu $sp, $sp, 0x38
/* 004638F0 03E00008 */  jr    $ra
/* 004638F4 00000000 */   nop   

    .type func_004638F8, @function
func_004638F8:
    # 00464528 parseafra
/* 004638F8 3C1C0FBC */  .cpload $t9
/* 004638FC 279C6968 */  
/* 00463900 0399E021 */  
/* 00463904 27BDFF30 */  addiu $sp, $sp, -0xd0
/* 00463908 8F8E8D64 */  lw     $t6, %got(binasmfyle)($gp)
/* 0046390C AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 00463910 8DCE0000 */  lw    $t6, ($t6)
/* 00463914 AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 00463918 AFA400D0 */  sw    $a0, 0xd0($sp)
/* 0046391C AFA500D4 */  sw    $a1, 0xd4($sp)
/* 00463920 AFA600D8 */  sw    $a2, 0xd8($sp)
/* 00463924 AFA700DC */  sw    $a3, 0xdc($sp)
/* 00463928 95C30004 */  lhu   $v1, 4($t6)
/* 0046392C 24010006 */  li    $at, 6
/* 00463930 00037DC0 */  sll   $t7, $v1, 0x17
/* 00463934 000F1F42 */  srl   $v1, $t7, 0x1d
/* 00463938 1461023A */  bne   $v1, $at, .L00464224
/* 0046393C 00404025 */   move  $t0, $v0
/* 00463940 97B900D2 */  lhu   $t9, 0xd2($sp)
/* 00463944 93AB00E3 */  lbu   $t3, 0xe3($sp)
/* 00463948 2F21006E */  sltiu $at, $t9, 0x6e
/* 0046394C 1420022E */  bnez  $at, .L00464208
/* 00463950 2729FF8A */   addiu $t1, $t9, -0x76
/* 00463954 2D210006 */  sltiu $at, $t1, 6
/* 00463958 1020018C */  beqz  $at, .L00463F8C
/* 0046395C 2401001D */   li    $at, 29
/* 00463960 8F818070 */  lw    $at, %got(jtbl_1001CB30)($gp)
/* 00463964 00094880 */  sll   $t1, $t1, 2
/* 00463968 00290821 */  addu  $at, $at, $t1
/* 0046396C 8C29CB30 */  lw    $t1, %lo(jtbl_1001CB30)($at)
/* 00463970 00000000 */  nop   
/* 00463974 013C4821 */  addu  $t1, $t1, $gp
/* 00463978 01200008 */  jr    $t1
/* 0046397C 00000000 */   nop   
.L00463980:
/* 00463980 8F8A8B04 */  lw     $t2, %got(isa)($gp)
/* 00463984 93A400D7 */  lbu   $a0, 0xd7($sp)
/* 00463988 914A0000 */  lbu   $t2, ($t2)
/* 0046398C 97AC00D2 */  lhu   $t4, 0xd2($sp)
/* 00463990 2D410003 */  sltiu $at, $t2, 3
/* 00463994 1020003A */  beqz  $at, .L00463A80
/* 00463998 2401006C */   li    $at, 108
/* 0046399C 8F998618 */  lw    $t9, %call16(enforce_destreg)($gp)
/* 004639A0 24050002 */  li    $a1, 2
/* 004639A4 0320F809 */  jalr  $t9
/* 004639A8 AFA800CC */   sw    $t0, 0xcc($sp)
/* 004639AC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004639B0 8FA200CC */  lw    $v0, 0xcc($sp)
/* 004639B4 8F99802C */  lw    $t9, %got(func_00463804)($gp)
/* 004639B8 9044FFF3 */  lbu   $a0, -0xd($v0)
/* 004639BC 27393804 */  addiu $t9, %lo(func_00463804) # addiu $t9, $t9, 0x3804
/* 004639C0 24050003 */  li    $a1, 3
/* 004639C4 0320F809 */  jalr  $t9
/* 004639C8 AFA400BC */   sw    $a0, 0xbc($sp)
/* 004639CC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004639D0 8FA800CC */  lw    $t0, 0xcc($sp)
/* 004639D4 1040001D */  beqz  $v0, .L00463A4C
/* 004639D8 240B0001 */   li    $t3, 1
/* 004639DC 8FAC00BC */  lw    $t4, 0xbc($sp)
/* 004639E0 97AD00D2 */  lhu   $t5, 0xd2($sp)
/* 004639E4 2D810002 */  sltiu $at, $t4, 2
/* 004639E8 10200018 */  beqz  $at, .L00463A4C
/* 004639EC 24190048 */   li    $t9, 72
/* 004639F0 2401006C */  li    $at, 108
/* 004639F4 15A10004 */  bne   $t5, $at, .L00463A08
/* 004639F8 24090001 */   li    $t1, 1
/* 004639FC 240E00CE */  li    $t6, 206
/* 00463A00 10000003 */  b     .L00463A10
/* 00463A04 A7AE00D2 */   sh    $t6, 0xd2($sp)
.L00463A08:
/* 00463A08 240F00D1 */  li    $t7, 209
/* 00463A0C A7AF00D2 */  sh    $t7, 0xd2($sp)
.L00463A10:
/* 00463A10 AFB90014 */  sw    $t9, 0x14($sp)
/* 00463A14 8F99802C */  lw    $t9, %got(func_00462320)($gp)
/* 00463A18 93B800E3 */  lbu   $t8, 0xe3($sp)
/* 00463A1C 97A400D2 */  lhu   $a0, 0xd2($sp)
/* 00463A20 93A500D7 */  lbu   $a1, 0xd7($sp)
/* 00463A24 8FA600D8 */  lw    $a2, 0xd8($sp)
/* 00463A28 8FA700DC */  lw    $a3, 0xdc($sp)
/* 00463A2C 27392320 */  addiu $t9, %lo(func_00462320) # addiu $t9, $t9, 0x2320
/* 00463A30 AFA90018 */  sw    $t1, 0x18($sp)
/* 00463A34 01001025 */  move  $v0, $t0
/* 00463A38 0320F809 */  jalr  $t9
/* 00463A3C AFB80010 */   sw    $t8, 0x10($sp)
/* 00463A40 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463A44 100002B5 */  b     .L0046451C
/* 00463A48 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00463A4C:
/* 00463A4C 93AA00E3 */  lbu   $t2, 0xe3($sp)
/* 00463A50 8F998620 */  lw    $t9, %call16(gendouble)($gp)
/* 00463A54 97A400D2 */  lhu   $a0, 0xd2($sp)
/* 00463A58 93A500D7 */  lbu   $a1, 0xd7($sp)
/* 00463A5C 8FA600D8 */  lw    $a2, 0xd8($sp)
/* 00463A60 8FA700DC */  lw    $a3, 0xdc($sp)
/* 00463A64 AFAB0014 */  sw    $t3, 0x14($sp)
/* 00463A68 0320F809 */  jalr  $t9
/* 00463A6C AFAA0010 */   sw    $t2, 0x10($sp)
/* 00463A70 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463A74 100002A9 */  b     .L0046451C
/* 00463A78 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 00463A7C 2401006C */  li    $at, 108
.L00463A80:
/* 00463A80 1581000A */  bne   $t4, $at, .L00463AAC
/* 00463A84 24040003 */   li    $a0, 3
/* 00463A88 8F99802C */  lw    $t9, %got(func_0046383C)($gp)
/* 00463A8C 24040003 */  li    $a0, 3
/* 00463A90 2739383C */  addiu $t9, %lo(func_0046383C) # addiu $t9, $t9, 0x383c
/* 00463A94 24050165 */  li    $a1, 357
/* 00463A98 0320F809 */  jalr  $t9
/* 00463A9C 01001025 */   move  $v0, $t0
/* 00463AA0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463AA4 1000029D */  b     .L0046451C
/* 00463AA8 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00463AAC:
/* 00463AAC 8F99802C */  lw    $t9, %got(func_0046383C)($gp)
/* 00463AB0 24050166 */  li    $a1, 358
/* 00463AB4 2739383C */  addiu $t9, %lo(func_0046383C) # addiu $t9, $t9, 0x383c
/* 00463AB8 0320F809 */  jalr  $t9
/* 00463ABC 01001025 */   move  $v0, $t0
/* 00463AC0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463AC4 10000295 */  b     .L0046451C
/* 00463AC8 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00463ACC:
/* 00463ACC 910DFFF3 */  lbu   $t5, -0xd($t0)
/* 00463AD0 24010001 */  li    $at, 1
/* 00463AD4 11A10003 */  beq   $t5, $at, .L00463AE4
/* 00463AD8 AFAD00BC */   sw    $t5, 0xbc($sp)
/* 00463ADC 15A0002C */  bnez  $t5, .L00463B90
/* 00463AE0 00000000 */   nop   
.L00463AE4:
/* 00463AE4 8F8F8070 */  lw    $t7, %got(RO_1001CAE0)($gp)
/* 00463AE8 03A04825 */  move  $t1, $sp
/* 00463AEC 25EFCAE0 */  addiu $t7, %lo(RO_1001CAE0) # addiu $t7, $t7, -0x3520
/* 00463AF0 25F90048 */  addiu $t9, $t7, 0x48
.L00463AF4:
/* 00463AF4 89E10000 */  lwl   $at, ($t7)
/* 00463AF8 99E10003 */  lwr   $at, 3($t7)
/* 00463AFC 25EF000C */  addiu $t7, $t7, 0xc
/* 00463B00 A9210000 */  swl   $at, ($t1)
/* 00463B04 B9210003 */  swr   $at, 3($t1)
/* 00463B08 89E1FFF8 */  lwl   $at, -8($t7)
/* 00463B0C 99E1FFFB */  lwr   $at, -5($t7)
/* 00463B10 2529000C */  addiu $t1, $t1, 0xc
/* 00463B14 A921FFF8 */  swl   $at, -8($t1)
/* 00463B18 B921FFFB */  swr   $at, -5($t1)
/* 00463B1C 89E1FFFC */  lwl   $at, -4($t7)
/* 00463B20 99E1FFFF */  lwr   $at, -1($t7)
/* 00463B24 00000000 */  nop   
/* 00463B28 A921FFFC */  swl   $at, -4($t1)
/* 00463B2C 15F9FFF1 */  bne   $t7, $t9, .L00463AF4
/* 00463B30 B921FFFF */   swr   $at, -1($t1)
/* 00463B34 89E10000 */  lwl   $at, ($t7)
/* 00463B38 99E10003 */  lwr   $at, 3($t7)
/* 00463B3C 8F8A8C68 */  lw     $t2, %got(emptystring)($gp)
/* 00463B40 A9210000 */  swl   $at, ($t1)
/* 00463B44 B9210003 */  swr   $at, 3($t1)
/* 00463B48 89F90004 */  lwl   $t9, 4($t7)
/* 00463B4C 99F90007 */  lwr   $t9, 7($t7)
/* 00463B50 240B0002 */  li    $t3, 2
/* 00463B54 A9390004 */  swl   $t9, 4($t1)
/* 00463B58 B9390007 */  swr   $t9, 7($t1)
/* 00463B5C 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00463B60 8D4A0000 */  lw    $t2, ($t2)
/* 00463B64 8FA7000C */  lw    $a3, 0xc($sp)
/* 00463B68 8FA60008 */  lw    $a2, 8($sp)
/* 00463B6C 8FA50004 */  lw    $a1, 4($sp)
/* 00463B70 8FA40000 */  lw    $a0, ($sp)
/* 00463B74 AFA800CC */  sw    $t0, 0xcc($sp)
/* 00463B78 AFAB0054 */  sw    $t3, 0x54($sp)
/* 00463B7C 0320F809 */  jalr  $t9
/* 00463B80 AFAA0050 */   sw    $t2, 0x50($sp)
/* 00463B84 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463B88 8FA800CC */  lw    $t0, 0xcc($sp)
/* 00463B8C 00000000 */  nop   
.L00463B90:
/* 00463B90 8F99802C */  lw    $t9, %got(func_00463804)($gp)
/* 00463B94 8FA400BC */  lw    $a0, 0xbc($sp)
/* 00463B98 27393804 */  addiu $t9, %lo(func_00463804) # addiu $t9, $t9, 0x3804
/* 00463B9C 24050002 */  li    $a1, 2
/* 00463BA0 01001025 */  move  $v0, $t0
/* 00463BA4 0320F809 */  jalr  $t9
/* 00463BA8 AFA800CC */   sw    $t0, 0xcc($sp)
/* 00463BAC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463BB0 8FA800CC */  lw    $t0, 0xcc($sp)
/* 00463BB4 10400010 */  beqz  $v0, .L00463BF8
/* 00463BB8 24180001 */   li    $t8, 1
/* 00463BBC 8F99802C */  lw    $t9, %got(func_00463428)($gp)
/* 00463BC0 93AC00E3 */  lbu   $t4, 0xe3($sp)
/* 00463BC4 97A400D2 */  lhu   $a0, 0xd2($sp)
/* 00463BC8 93A500D7 */  lbu   $a1, 0xd7($sp)
/* 00463BCC 8FA600D8 */  lw    $a2, 0xd8($sp)
/* 00463BD0 8FA700DC */  lw    $a3, 0xdc($sp)
/* 00463BD4 240D0001 */  li    $t5, 1
/* 00463BD8 27393428 */  addiu $t9, %lo(func_00463428) # addiu $t9, $t9, 0x3428
/* 00463BDC AFAD0014 */  sw    $t5, 0x14($sp)
/* 00463BE0 01001025 */  move  $v0, $t0
/* 00463BE4 0320F809 */  jalr  $t9
/* 00463BE8 AFAC0010 */   sw    $t4, 0x10($sp)
/* 00463BEC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463BF0 1000024A */  b     .L0046451C
/* 00463BF4 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00463BF8:
/* 00463BF8 8F998B04 */  lw     $t9, %got(isa)($gp)
/* 00463BFC 93AE00E3 */  lbu   $t6, 0xe3($sp)
/* 00463C00 93390000 */  lbu   $t9, ($t9)
/* 00463C04 97A400D2 */  lhu   $a0, 0xd2($sp)
/* 00463C08 2F2F0002 */  sltiu $t7, $t9, 2
/* 00463C0C 8F998614 */  lw    $t9, %call16(genfpmultiple)($gp)
/* 00463C10 39EF0001 */  xori  $t7, $t7, 1
/* 00463C14 93A500D7 */  lbu   $a1, 0xd7($sp)
/* 00463C18 8FA600D8 */  lw    $a2, 0xd8($sp)
/* 00463C1C 8FA700DC */  lw    $a3, 0xdc($sp)
/* 00463C20 24090001 */  li    $t1, 1
/* 00463C24 AFA9001C */  sw    $t1, 0x1c($sp)
/* 00463C28 AFAF0018 */  sw    $t7, 0x18($sp)
/* 00463C2C AFB80014 */  sw    $t8, 0x14($sp)
/* 00463C30 0320F809 */  jalr  $t9
/* 00463C34 AFAE0010 */   sw    $t6, 0x10($sp)
/* 00463C38 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463C3C 10000237 */  b     .L0046451C
/* 00463C40 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00463C44:
/* 00463C44 910AFFF3 */  lbu   $t2, -0xd($t0)
/* 00463C48 24010001 */  li    $at, 1
/* 00463C4C 11410003 */  beq   $t2, $at, .L00463C5C
/* 00463C50 AFAA00BC */   sw    $t2, 0xbc($sp)
/* 00463C54 1540002C */  bnez  $t2, .L00463D08
/* 00463C58 00000000 */   nop   
.L00463C5C:
/* 00463C5C 8F8C8070 */  lw    $t4, %got(RO_1001CA90)($gp)
/* 00463C60 03A0C025 */  move  $t8, $sp
/* 00463C64 258CCA90 */  addiu $t4, %lo(RO_1001CA90) # addiu $t4, $t4, -0x3570
/* 00463C68 258E0048 */  addiu $t6, $t4, 0x48
.L00463C6C:
/* 00463C6C 89810000 */  lwl   $at, ($t4)
/* 00463C70 99810003 */  lwr   $at, 3($t4)
/* 00463C74 258C000C */  addiu $t4, $t4, 0xc
/* 00463C78 AB010000 */  swl   $at, ($t8)
/* 00463C7C BB010003 */  swr   $at, 3($t8)
/* 00463C80 8981FFF8 */  lwl   $at, -8($t4)
/* 00463C84 9981FFFB */  lwr   $at, -5($t4)
/* 00463C88 2718000C */  addiu $t8, $t8, 0xc
/* 00463C8C AB01FFF8 */  swl   $at, -8($t8)
/* 00463C90 BB01FFFB */  swr   $at, -5($t8)
/* 00463C94 8981FFFC */  lwl   $at, -4($t4)
/* 00463C98 9981FFFF */  lwr   $at, -1($t4)
/* 00463C9C 00000000 */  nop   
/* 00463CA0 AB01FFFC */  swl   $at, -4($t8)
/* 00463CA4 158EFFF1 */  bne   $t4, $t6, .L00463C6C
/* 00463CA8 BB01FFFF */   swr   $at, -1($t8)
/* 00463CAC 89810000 */  lwl   $at, ($t4)
/* 00463CB0 99810003 */  lwr   $at, 3($t4)
/* 00463CB4 8F998C68 */  lw     $t9, %got(emptystring)($gp)
/* 00463CB8 AB010000 */  swl   $at, ($t8)
/* 00463CBC BB010003 */  swr   $at, 3($t8)
/* 00463CC0 898E0004 */  lwl   $t6, 4($t4)
/* 00463CC4 998E0007 */  lwr   $t6, 7($t4)
/* 00463CC8 240F0002 */  li    $t7, 2
/* 00463CCC AB0E0004 */  swl   $t6, 4($t8)
/* 00463CD0 BB0E0007 */  swr   $t6, 7($t8)
/* 00463CD4 8F390000 */  lw    $t9, ($t9)
/* 00463CD8 8FA7000C */  lw    $a3, 0xc($sp)
/* 00463CDC AFB90050 */  sw    $t9, 0x50($sp)
/* 00463CE0 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00463CE4 8FA60008 */  lw    $a2, 8($sp)
/* 00463CE8 8FA50004 */  lw    $a1, 4($sp)
/* 00463CEC 8FA40000 */  lw    $a0, ($sp)
/* 00463CF0 AFA800CC */  sw    $t0, 0xcc($sp)
/* 00463CF4 0320F809 */  jalr  $t9
/* 00463CF8 AFAF0054 */   sw    $t7, 0x54($sp)
/* 00463CFC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463D00 8FA800CC */  lw    $t0, 0xcc($sp)
/* 00463D04 00000000 */  nop   
.L00463D08:
/* 00463D08 8F898B04 */  lw     $t1, %got(isa)($gp)
/* 00463D0C 93A400D7 */  lbu   $a0, 0xd7($sp)
/* 00463D10 91290000 */  lbu   $t1, ($t1)
/* 00463D14 00000000 */  nop   
/* 00463D18 2D210003 */  sltiu $at, $t1, 3
/* 00463D1C 10200008 */  beqz  $at, .L00463D40
/* 00463D20 00000000 */   nop   
/* 00463D24 8F998618 */  lw    $t9, %call16(enforce_destreg)($gp)
/* 00463D28 24050002 */  li    $a1, 2
/* 00463D2C 0320F809 */  jalr  $t9
/* 00463D30 AFA800CC */   sw    $t0, 0xcc($sp)
/* 00463D34 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463D38 8FA800CC */  lw    $t0, 0xcc($sp)
/* 00463D3C 00000000 */  nop   
.L00463D40:
/* 00463D40 8F99802C */  lw    $t9, %got(func_00463804)($gp)
/* 00463D44 8FA400BC */  lw    $a0, 0xbc($sp)
/* 00463D48 27393804 */  addiu $t9, %lo(func_00463804) # addiu $t9, $t9, 0x3804
/* 00463D4C 24050003 */  li    $a1, 3
/* 00463D50 01001025 */  move  $v0, $t0
/* 00463D54 0320F809 */  jalr  $t9
/* 00463D58 AFA800CC */   sw    $t0, 0xcc($sp)
/* 00463D5C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463D60 8FA800CC */  lw    $t0, 0xcc($sp)
/* 00463D64 10400015 */  beqz  $v0, .L00463DBC
/* 00463D68 24190002 */   li    $t9, 2
/* 00463D6C 8FAA00BC */  lw    $t2, 0xbc($sp)
/* 00463D70 97A400D2 */  lhu   $a0, 0xd2($sp)
/* 00463D74 2D410002 */  sltiu $at, $t2, 2
/* 00463D78 1020000E */  beqz  $at, .L00463DB4
/* 00463D7C 240D0002 */   li    $t5, 2
/* 00463D80 8F99802C */  lw    $t9, %got(func_00463428)($gp)
/* 00463D84 93AB00E3 */  lbu   $t3, 0xe3($sp)
/* 00463D88 93A500D7 */  lbu   $a1, 0xd7($sp)
/* 00463D8C 8FA600D8 */  lw    $a2, 0xd8($sp)
/* 00463D90 8FA700DC */  lw    $a3, 0xdc($sp)
/* 00463D94 27393428 */  addiu $t9, %lo(func_00463428) # addiu $t9, $t9, 0x3428
/* 00463D98 AFAD0014 */  sw    $t5, 0x14($sp)
/* 00463D9C 01001025 */  move  $v0, $t0
/* 00463DA0 0320F809 */  jalr  $t9
/* 00463DA4 AFAB0010 */   sw    $t3, 0x10($sp)
/* 00463DA8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463DAC 100001DB */  b     .L0046451C
/* 00463DB0 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00463DB4:
/* 00463DB4 10000008 */  b     .L00463DD8
/* 00463DB8 A100FFF2 */   sb    $zero, -0xe($t0)
.L00463DBC:
/* 00463DBC 8F8E8B04 */  lw     $t6, %got(isa)($gp)
/* 00463DC0 00000000 */  nop   
/* 00463DC4 91CE0000 */  lbu   $t6, ($t6)
/* 00463DC8 00000000 */  nop   
/* 00463DCC 2DCC0002 */  sltiu $t4, $t6, 2
/* 00463DD0 398C0001 */  xori  $t4, $t4, 1
/* 00463DD4 A10CFFF2 */  sb    $t4, -0xe($t0)
.L00463DD8:
/* 00463DD8 93B800E3 */  lbu   $t8, 0xe3($sp)
/* 00463DDC AFB90014 */  sw    $t9, 0x14($sp)
/* 00463DE0 AFB80010 */  sw    $t8, 0x10($sp)
/* 00463DE4 910FFFF2 */  lbu   $t7, -0xe($t0)
/* 00463DE8 8F998614 */  lw    $t9, %call16(genfpmultiple)($gp)
/* 00463DEC 97A400D2 */  lhu   $a0, 0xd2($sp)
/* 00463DF0 93A500D7 */  lbu   $a1, 0xd7($sp)
/* 00463DF4 8FA600D8 */  lw    $a2, 0xd8($sp)
/* 00463DF8 8FA700DC */  lw    $a3, 0xdc($sp)
/* 00463DFC 24090001 */  li    $t1, 1
/* 00463E00 AFA9001C */  sw    $t1, 0x1c($sp)
/* 00463E04 0320F809 */  jalr  $t9
/* 00463E08 AFAF0018 */   sw    $t7, 0x18($sp)
/* 00463E0C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463E10 100001C2 */  b     .L0046451C
/* 00463E14 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00463E18:
/* 00463E18 8F8A8B04 */  lw     $t2, %got(isa)($gp)
/* 00463E1C 93A400D7 */  lbu   $a0, 0xd7($sp)
/* 00463E20 914A0000 */  lbu   $t2, ($t2)
/* 00463E24 24050002 */  li    $a1, 2
/* 00463E28 2D410003 */  sltiu $at, $t2, 3
/* 00463E2C 14200009 */  bnez  $at, .L00463E54
/* 00463E30 00000000 */   nop   
/* 00463E34 8F998618 */  lw    $t9, %call16(enforce_destreg)($gp)
/* 00463E38 93A400D7 */  lbu   $a0, 0xd7($sp)
/* 00463E3C 0320F809 */  jalr  $t9
/* 00463E40 AFA800CC */   sw    $t0, 0xcc($sp)
/* 00463E44 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463E48 8FA800CC */  lw    $t0, 0xcc($sp)
/* 00463E4C 10000008 */  b     .L00463E70
/* 00463E50 00000000 */   nop   
.L00463E54:
/* 00463E54 8F998618 */  lw    $t9, %call16(enforce_destreg)($gp)
/* 00463E58 24050004 */  li    $a1, 4
/* 00463E5C 0320F809 */  jalr  $t9
/* 00463E60 AFA800CC */   sw    $t0, 0xcc($sp)
/* 00463E64 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463E68 8FA800CC */  lw    $t0, 0xcc($sp)
/* 00463E6C 00000000 */  nop   
.L00463E70:
/* 00463E70 8F99802C */  lw    $t9, %got(func_00463804)($gp)
/* 00463E74 9104FFF3 */  lbu   $a0, -0xd($t0)
/* 00463E78 27393804 */  addiu $t9, %lo(func_00463804) # addiu $t9, $t9, 0x3804
/* 00463E7C 24050003 */  li    $a1, 3
/* 00463E80 0320F809 */  jalr  $t9
/* 00463E84 01001025 */   move  $v0, $t0
/* 00463E88 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463E8C 1040002A */  beqz  $v0, .L00463F38
/* 00463E90 00000000 */   nop   
/* 00463E94 8F8B8070 */  lw    $t3, %got(RO_1001CA40)($gp)
/* 00463E98 03A06025 */  move  $t4, $sp
/* 00463E9C 256BCA40 */  addiu $t3, %lo(RO_1001CA40) # addiu $t3, $t3, -0x35c0
/* 00463EA0 256E0048 */  addiu $t6, $t3, 0x48
.L00463EA4:
/* 00463EA4 89610000 */  lwl   $at, ($t3)
/* 00463EA8 99610003 */  lwr   $at, 3($t3)
/* 00463EAC 256B000C */  addiu $t3, $t3, 0xc
/* 00463EB0 A9810000 */  swl   $at, ($t4)
/* 00463EB4 B9810003 */  swr   $at, 3($t4)
/* 00463EB8 8961FFF8 */  lwl   $at, -8($t3)
/* 00463EBC 9961FFFB */  lwr   $at, -5($t3)
/* 00463EC0 258C000C */  addiu $t4, $t4, 0xc
/* 00463EC4 A981FFF8 */  swl   $at, -8($t4)
/* 00463EC8 B981FFFB */  swr   $at, -5($t4)
/* 00463ECC 8961FFFC */  lwl   $at, -4($t3)
/* 00463ED0 9961FFFF */  lwr   $at, -1($t3)
/* 00463ED4 00000000 */  nop   
/* 00463ED8 A981FFFC */  swl   $at, -4($t4)
/* 00463EDC 156EFFF1 */  bne   $t3, $t6, .L00463EA4
/* 00463EE0 B981FFFF */   swr   $at, -1($t4)
/* 00463EE4 89610000 */  lwl   $at, ($t3)
/* 00463EE8 99610003 */  lwr   $at, 3($t3)
/* 00463EEC 8F988C68 */  lw     $t8, %got(emptystring)($gp)
/* 00463EF0 A9810000 */  swl   $at, ($t4)
/* 00463EF4 B9810003 */  swr   $at, 3($t4)
/* 00463EF8 896E0004 */  lwl   $t6, 4($t3)
/* 00463EFC 996E0007 */  lwr   $t6, 7($t3)
/* 00463F00 24190002 */  li    $t9, 2
/* 00463F04 A98E0004 */  swl   $t6, 4($t4)
/* 00463F08 B98E0007 */  swr   $t6, 7($t4)
/* 00463F0C AFB90054 */  sw    $t9, 0x54($sp)
/* 00463F10 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00463F14 8F180000 */  lw    $t8, ($t8)
/* 00463F18 8FA7000C */  lw    $a3, 0xc($sp)
/* 00463F1C 8FA60008 */  lw    $a2, 8($sp)
/* 00463F20 8FA50004 */  lw    $a1, 4($sp)
/* 00463F24 8FA40000 */  lw    $a0, ($sp)
/* 00463F28 0320F809 */  jalr  $t9
/* 00463F2C AFB80050 */   sw    $t8, 0x50($sp)
/* 00463F30 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463F34 00000000 */  nop   
.L00463F38:
/* 00463F38 8F8A8B04 */  lw     $t2, %got(isa)($gp)
/* 00463F3C 93AF00E3 */  lbu   $t7, 0xe3($sp)
/* 00463F40 914A0000 */  lbu   $t2, ($t2)
/* 00463F44 8F998614 */  lw    $t9, %call16(genfpmultiple)($gp)
/* 00463F48 2D4D0002 */  sltiu $t5, $t2, 2
/* 00463F4C 39AD0001 */  xori  $t5, $t5, 1
/* 00463F50 97A400D2 */  lhu   $a0, 0xd2($sp)
/* 00463F54 93A500D7 */  lbu   $a1, 0xd7($sp)
/* 00463F58 8FA600D8 */  lw    $a2, 0xd8($sp)
/* 00463F5C 8FA700DC */  lw    $a3, 0xdc($sp)
/* 00463F60 24090004 */  li    $t1, 4
/* 00463F64 240E0001 */  li    $t6, 1
/* 00463F68 AFAE001C */  sw    $t6, 0x1c($sp)
/* 00463F6C AFA90014 */  sw    $t1, 0x14($sp)
/* 00463F70 AFAD0018 */  sw    $t5, 0x18($sp)
/* 00463F74 0320F809 */  jalr  $t9
/* 00463F78 AFAF0010 */   sw    $t7, 0x10($sp)
/* 00463F7C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463F80 10000166 */  b     .L0046451C
/* 00463F84 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 00463F88 2401001D */  li    $at, 29
.L00463F8C:
/* 00463F8C 15610079 */  bne   $t3, $at, .L00464174
/* 00463F90 00000000 */   nop   
/* 00463F94 8F8C8DA8 */  lw     $t4, %got(adjust_frame_by_ld)($gp)
/* 00463F98 00000000 */  nop   
/* 00463F9C 918C0000 */  lbu   $t4, ($t4)
/* 00463FA0 00000000 */  nop   
/* 00463FA4 11800073 */  beqz  $t4, .L00464174
/* 00463FA8 00000000 */   nop   
/* 00463FAC 8F828D7C */  lw     $v0, %got(known_framesize)($gp)
/* 00463FB0 8FB800DC */  lw    $t8, 0xdc($sp)
/* 00463FB4 8C420000 */  lw    $v0, ($v0)
/* 00463FB8 2404005A */  li    $a0, 90
/* 00463FBC 0302082A */  slt   $at, $t8, $v0
/* 00463FC0 10200004 */  beqz  $at, .L00463FD4
/* 00463FC4 0002C823 */   negu  $t9, $v0
/* 00463FC8 0338082A */  slt   $at, $t9, $t8
/* 00463FCC 14200069 */  bnez  $at, .L00464174
/* 00463FD0 00000000 */   nop   
.L00463FD4:
/* 00463FD4 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00463FD8 24050001 */  li    $a1, 1
/* 00463FDC 00003025 */  move  $a2, $zero
/* 00463FE0 0320F809 */  jalr  $t9
/* 00463FE4 00003825 */   move  $a3, $zero
/* 00463FE8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00463FEC 00000000 */  nop   
/* 00463FF0 8F8F8BB0 */  lw     $t7, %got(bbindex)($gp)
/* 00463FF4 8F898B88 */  lw     $t1, %got(proc_instr_base)($gp)
/* 00463FF8 8F9985FC */  lw    $t9, %call16(request_multi_relocinst)($gp)
/* 00463FFC 8DEF0000 */  lw    $t7, ($t7)
/* 00464000 8D290000 */  lw    $t1, ($t1)
/* 00464004 0320F809 */  jalr  $t9
/* 00464008 01E92021 */   addu  $a0, $t7, $t1
/* 0046400C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464010 24060010 */  li    $a2, 16
/* 00464014 8F888D78 */  lw     $t0, %got(multirelocinstr_list)($gp)
/* 00464018 8F838D74 */  lw     $v1, %got(nextmultirelocinstr)($gp)
/* 0046401C 8D0A0004 */  lw    $t2, 4($t0)
/* 00464020 8C630000 */  lw    $v1, ($v1)
/* 00464024 00000000 */  nop   
/* 00464028 006A082A */  slt   $at, $v1, $t2
/* 0046402C 1420000E */  bnez  $at, .L00464068
/* 00464030 00602825 */   move  $a1, $v1
/* 00464034 8F848D78 */  lw     $a0, %got(multirelocinstr_list)($gp)
/* 00464038 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 0046403C 8D070000 */  lw    $a3, ($t0)
/* 00464040 AFA00010 */  sw    $zero, 0x10($sp)
/* 00464044 0320F809 */  jalr  $t9
/* 00464048 24840004 */   addiu $a0, $a0, 4
/* 0046404C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464050 00000000 */  nop   
/* 00464054 8F838D74 */  lw     $v1, %got(nextmultirelocinstr)($gp)
/* 00464058 8F818D78 */  lw     $at, %got(multirelocinstr_list)($gp)
/* 0046405C 8F888D78 */  lw     $t0, %got(multirelocinstr_list)($gp)
/* 00464060 8C630000 */  lw    $v1, ($v1)
/* 00464064 AC220000 */  sw    $v0, ($at)
.L00464068:
/* 00464068 8F8B8BB0 */  lw     $t3, %got(bbindex)($gp)
/* 0046406C 8F8C8B88 */  lw     $t4, %got(proc_instr_base)($gp)
/* 00464070 8D0D0000 */  lw    $t5, ($t0)
/* 00464074 8D6B0000 */  lw    $t3, ($t3)
/* 00464078 8D8C0000 */  lw    $t4, ($t4)
/* 0046407C 00037100 */  sll   $t6, $v1, 4
/* 00464080 8F988DAC */  lw     $t8, %got(sp_addu_index)($gp)
/* 00464084 01AE1021 */  addu  $v0, $t5, $t6
/* 00464088 016CC821 */  addu  $t9, $t3, $t4
/* 0046408C AC590008 */  sw    $t9, 8($v0)
/* 00464090 8F180000 */  lw    $t8, ($t8)
/* 00464094 8F818D74 */  lw     $at, %got(nextmultirelocinstr)($gp)
/* 00464098 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 0046409C 246F0001 */  addiu $t7, $v1, 1
/* 004640A0 93A700E3 */  lbu   $a3, 0xe3($sp)
/* 004640A4 AC580000 */  sw    $t8, ($v0)
/* 004640A8 24040015 */  li    $a0, 21
/* 004640AC 24050001 */  li    $a1, 1
/* 004640B0 24060001 */  li    $a2, 1
/* 004640B4 0320F809 */  jalr  $t9
/* 004640B8 AC2F0000 */   sw    $t7, ($at)
/* 004640BC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004640C0 8FA500DC */  lw    $a1, 0xdc($sp)
/* 004640C4 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 004640C8 00002025 */  move  $a0, $zero
/* 004640CC 0320F809 */  jalr  $t9
/* 004640D0 00000000 */   nop   
/* 004640D4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004640D8 97A900D2 */  lhu   $t1, 0xd2($sp)
/* 004640DC 8F8D8D1C */  lw     $t5, %got(asm2op)($gp)
/* 004640E0 00095040 */  sll   $t2, $t1, 1
/* 004640E4 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 004640E8 014D7021 */  addu  $t6, $t2, $t5
/* 004640EC 95C40000 */  lhu   $a0, ($t6)
/* 004640F0 93A500D7 */  lbu   $a1, 0xd7($sp)
/* 004640F4 00403025 */  move  $a2, $v0
/* 004640F8 0320F809 */  jalr  $t9
/* 004640FC 24070001 */   li    $a3, 1
/* 00464100 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464104 00000000 */  nop   
/* 00464108 8F8B8BB0 */  lw     $t3, %got(bbindex)($gp)
/* 0046410C 8F8C8B88 */  lw     $t4, %got(proc_instr_base)($gp)
/* 00464110 8F9985FC */  lw    $t9, %call16(request_multi_relocinst)($gp)
/* 00464114 8D6B0000 */  lw    $t3, ($t3)
/* 00464118 8D8C0000 */  lw    $t4, ($t4)
/* 0046411C 0320F809 */  jalr  $t9
/* 00464120 016C2021 */   addu  $a0, $t3, $t4
/* 00464124 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464128 00000000 */  nop   
/* 0046412C 8F988D74 */  lw     $t8, %got(nextmultirelocinstr)($gp)
/* 00464130 8F998D78 */  lw     $t9, %got(multirelocinstr_list)($gp)
/* 00464134 8F898BB0 */  lw     $t1, %got(bbindex)($gp)
/* 00464138 8F8A8B88 */  lw     $t2, %got(proc_instr_base)($gp)
/* 0046413C 8F180000 */  lw    $t8, ($t8)
/* 00464140 8F390000 */  lw    $t9, ($t9)
/* 00464144 8D290000 */  lw    $t1, ($t1)
/* 00464148 8D4A0000 */  lw    $t2, ($t2)
/* 0046414C 00187900 */  sll   $t7, $t8, 4
/* 00464150 8F8E8DAC */  lw     $t6, %got(sp_addu_index)($gp)
/* 00464154 032F1021 */  addu  $v0, $t9, $t7
/* 00464158 012A6821 */  addu  $t5, $t1, $t2
/* 0046415C AC4DFFFC */  sw    $t5, -4($v0)
/* 00464160 8DCE0000 */  lw    $t6, ($t6)
/* 00464164 00000000 */  nop   
/* 00464168 25CB0001 */  addiu $t3, $t6, 1
/* 0046416C 100000EA */  b     .L00464518
/* 00464170 AC4BFFF4 */   sw    $t3, -0xc($v0)
.L00464174:
/* 00464174 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00464178 8FA500DC */  lw    $a1, 0xdc($sp)
/* 0046417C 0320F809 */  jalr  $t9
/* 00464180 00002025 */   move  $a0, $zero
/* 00464184 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464188 97AC00D2 */  lhu   $t4, 0xd2($sp)
/* 0046418C 8F998D1C */  lw     $t9, %got(asm2op)($gp)
/* 00464190 000CC040 */  sll   $t8, $t4, 1
/* 00464194 03197821 */  addu  $t7, $t8, $t9
/* 00464198 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0046419C 95E40000 */  lhu   $a0, ($t7)
/* 004641A0 93A500D7 */  lbu   $a1, 0xd7($sp)
/* 004641A4 93A700E3 */  lbu   $a3, 0xe3($sp)
/* 004641A8 0320F809 */  jalr  $t9
/* 004641AC 00403025 */   move  $a2, $v0
/* 004641B0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004641B4 8FA400D8 */  lw    $a0, 0xd8($sp)
/* 004641B8 8F898BB0 */  lw     $t1, %got(bbindex)($gp)
/* 004641BC 8F8A8B88 */  lw     $t2, %got(proc_instr_base)($gp)
/* 004641C0 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 004641C4 8D290000 */  lw    $t1, ($t1)
/* 004641C8 8D4A0000 */  lw    $t2, ($t2)
/* 004641CC 24050009 */  li    $a1, 9
/* 004641D0 0320F809 */  jalr  $t9
/* 004641D4 012A3021 */   addu  $a2, $t1, $t2
/* 004641D8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004641DC 8FAD00D8 */  lw    $t5, 0xd8($sp)
/* 004641E0 8F8B8AF0 */  lw     $t3, %got(nextrld)($gp)
/* 004641E4 8F8E8AF4 */  lw     $t6, %got(rld_list)($gp)
/* 004641E8 8D6B0000 */  lw    $t3, ($t3)
/* 004641EC 8DCE0000 */  lw    $t6, ($t6)
/* 004641F0 000B6080 */  sll   $t4, $t3, 2
/* 004641F4 018B6023 */  subu  $t4, $t4, $t3
/* 004641F8 000C60C0 */  sll   $t4, $t4, 3
/* 004641FC 01CCC021 */  addu  $t8, $t6, $t4
/* 00464200 100000C5 */  b     .L00464518
/* 00464204 AF0DFFF0 */   sw    $t5, -0x10($t8)
.L00464208:
/* 00464208 97B900D2 */  lhu   $t9, 0xd2($sp)
/* 0046420C 00000000 */  nop   
/* 00464210 2F21006C */  sltiu $at, $t9, 0x6c
/* 00464214 1020FDDA */  beqz  $at, .L00463980
/* 00464218 00000000 */   nop   
/* 0046421C 1000FF5B */  b     .L00463F8C
/* 00464220 2401001D */   li    $at, 29
.L00464224:
/* 00464224 97AF00D2 */  lhu   $t7, 0xd2($sp)
/* 00464228 8F8A8D1C */  lw     $t2, %got(asm2op)($gp)
/* 0046422C 000F4840 */  sll   $t1, $t7, 1
/* 00464230 012A4021 */  addu  $t0, $t1, $t2
/* 00464234 950B0000 */  lhu   $t3, ($t0)
/* 00464238 03A05025 */  move  $t2, $sp
/* 0046423C 1560004D */  bnez  $t3, .L00464374
/* 00464240 24010002 */   li    $at, 2
/* 00464244 8F8E8070 */  lw    $t6, %got(RO_1001C9F0)($gp)
/* 00464248 03A0C025 */  move  $t8, $sp
/* 0046424C 25CEC9F0 */  addiu $t6, %lo(RO_1001C9F0) # addiu $t6, $t6, -0x3610
/* 00464250 25CD0048 */  addiu $t5, $t6, 0x48
.L00464254:
/* 00464254 89C10000 */  lwl   $at, ($t6)
/* 00464258 99C10003 */  lwr   $at, 3($t6)
/* 0046425C 25CE000C */  addiu $t6, $t6, 0xc
/* 00464260 AB010000 */  swl   $at, ($t8)
/* 00464264 BB010003 */  swr   $at, 3($t8)
/* 00464268 89C1FFF8 */  lwl   $at, -8($t6)
/* 0046426C 99C1FFFB */  lwr   $at, -5($t6)
/* 00464270 2718000C */  addiu $t8, $t8, 0xc
/* 00464274 AB01FFF8 */  swl   $at, -8($t8)
/* 00464278 BB01FFFB */  swr   $at, -5($t8)
/* 0046427C 89C1FFFC */  lwl   $at, -4($t6)
/* 00464280 99C1FFFF */  lwr   $at, -1($t6)
/* 00464284 00000000 */  nop   
/* 00464288 AB01FFFC */  swl   $at, -4($t8)
/* 0046428C 15CDFFF1 */  bne   $t6, $t5, .L00464254
/* 00464290 BB01FFFF */   swr   $at, -1($t8)
/* 00464294 89C10000 */  lwl   $at, ($t6)
/* 00464298 99C10003 */  lwr   $at, 3($t6)
/* 0046429C 8F998070 */  lw    $t9, %got(RO_1001C9A0)($gp)
/* 004642A0 AB010000 */  swl   $at, ($t8)
/* 004642A4 BB010003 */  swr   $at, 3($t8)
/* 004642A8 89CD0004 */  lwl   $t5, 4($t6)
/* 004642AC 99CD0007 */  lwr   $t5, 7($t6)
/* 004642B0 2739C9A0 */  addiu $t9, %lo(RO_1001C9A0) # addiu $t9, $t9, -0x3660
/* 004642B4 AB0D0004 */  swl   $t5, 4($t8)
/* 004642B8 27290048 */  addiu $t1, $t9, 0x48
/* 004642BC BB0D0007 */  swr   $t5, 7($t8)
.L004642C0:
/* 004642C0 8B210000 */  lwl   $at, ($t9)
/* 004642C4 9B210003 */  lwr   $at, 3($t9)
/* 004642C8 2739000C */  addiu $t9, $t9, 0xc
/* 004642CC A9410050 */  swl   $at, 0x50($t2)
/* 004642D0 B9410053 */  swr   $at, 0x53($t2)
/* 004642D4 8B21FFF8 */  lwl   $at, -8($t9)
/* 004642D8 9B21FFFB */  lwr   $at, -5($t9)
/* 004642DC 254A000C */  addiu $t2, $t2, 0xc
/* 004642E0 A9410048 */  swl   $at, 0x48($t2)
/* 004642E4 B941004B */  swr   $at, 0x4b($t2)
/* 004642E8 8B21FFFC */  lwl   $at, -4($t9)
/* 004642EC 9B21FFFF */  lwr   $at, -1($t9)
/* 004642F0 00000000 */  nop   
/* 004642F4 A941004C */  swl   $at, 0x4c($t2)
/* 004642F8 1729FFF1 */  bne   $t9, $t1, .L004642C0
/* 004642FC B941004F */   swr   $at, 0x4f($t2)
/* 00464300 8B210000 */  lwl   $at, ($t9)
/* 00464304 9B210003 */  lwr   $at, 3($t9)
/* 00464308 240B06CA */  li    $t3, 1738
/* 0046430C A9410050 */  swl   $at, 0x50($t2)
/* 00464310 B9410053 */  swr   $at, 0x53($t2)
/* 00464314 8B290004 */  lwl   $t1, 4($t9)
/* 00464318 9B290007 */  lwr   $t1, 7($t9)
/* 0046431C 00000000 */  nop   
/* 00464320 A9490054 */  swl   $t1, 0x54($t2)
/* 00464324 B9490057 */  swr   $t1, 0x57($t2)
/* 00464328 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0046432C 8FA7000C */  lw    $a3, 0xc($sp)
/* 00464330 8FA60008 */  lw    $a2, 8($sp)
/* 00464334 8FA50004 */  lw    $a1, 4($sp)
/* 00464338 8FA40000 */  lw    $a0, ($sp)
/* 0046433C AFA800B8 */  sw    $t0, 0xb8($sp)
/* 00464340 0320F809 */  jalr  $t9
/* 00464344 AFAB00A0 */   sw    $t3, 0xa0($sp)
/* 00464348 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046434C 8FA800B8 */  lw    $t0, 0xb8($sp)
/* 00464350 8F8C8D64 */  lw     $t4, %got(binasmfyle)($gp)
/* 00464354 00000000 */  nop   
/* 00464358 8D8C0000 */  lw    $t4, ($t4)
/* 0046435C 00000000 */  nop   
/* 00464360 95830004 */  lhu   $v1, 4($t4)
/* 00464364 00000000 */  nop   
/* 00464368 00036DC0 */  sll   $t5, $v1, 0x17
/* 0046436C 000D1F42 */  srl   $v1, $t5, 0x1d
/* 00464370 24010002 */  li    $at, 2
.L00464374:
/* 00464374 14610028 */  bne   $v1, $at, .L00464418
/* 00464378 00002025 */   move  $a0, $zero
/* 0046437C 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00464380 8FA500DC */  lw    $a1, 0xdc($sp)
/* 00464384 0320F809 */  jalr  $t9
/* 00464388 AFA800B8 */   sw    $t0, 0xb8($sp)
/* 0046438C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464390 8FA800B8 */  lw    $t0, 0xb8($sp)
/* 00464394 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00464398 93A500D7 */  lbu   $a1, 0xd7($sp)
/* 0046439C 93A700E3 */  lbu   $a3, 0xe3($sp)
/* 004643A0 95040000 */  lhu   $a0, ($t0)
/* 004643A4 0320F809 */  jalr  $t9
/* 004643A8 00403025 */   move  $a2, $v0
/* 004643AC 8FB800D8 */  lw    $t8, 0xd8($sp)
/* 004643B0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004643B4 13000058 */  beqz  $t8, .L00464518
/* 004643B8 03002025 */   move  $a0, $t8
/* 004643BC 8F8F8BB0 */  lw     $t7, %got(bbindex)($gp)
/* 004643C0 8F898B88 */  lw     $t1, %got(proc_instr_base)($gp)
/* 004643C4 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 004643C8 8DEF0000 */  lw    $t7, ($t7)
/* 004643CC 8D290000 */  lw    $t1, ($t1)
/* 004643D0 2405000E */  li    $a1, 14
/* 004643D4 0320F809 */  jalr  $t9
/* 004643D8 01E93021 */   addu  $a2, $t7, $t1
/* 004643DC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004643E0 8FAC00DC */  lw    $t4, 0xdc($sp)
/* 004643E4 8F8A8AF0 */  lw     $t2, %got(nextrld)($gp)
/* 004643E8 8F998AF4 */  lw     $t9, %got(rld_list)($gp)
/* 004643EC 8D4A0000 */  lw    $t2, ($t2)
/* 004643F0 8F390000 */  lw    $t9, ($t9)
/* 004643F4 000A5880 */  sll   $t3, $t2, 2
/* 004643F8 016A5823 */  subu  $t3, $t3, $t2
/* 004643FC 000B58C0 */  sll   $t3, $t3, 3
/* 00464400 93AD00E3 */  lbu   $t5, 0xe3($sp)
/* 00464404 032B1021 */  addu  $v0, $t9, $t3
/* 00464408 2442FFE8 */  addiu $v0, $v0, -0x18
/* 0046440C AC4C0014 */  sw    $t4, 0x14($v0)
/* 00464410 10000041 */  b     .L00464518
/* 00464414 A04D0011 */   sb    $t5, 0x11($v0)
.L00464418:
/* 00464418 24010005 */  li    $at, 5
/* 0046441C 14610015 */  bne   $v1, $at, .L00464474
/* 00464420 00000000 */   nop   
/* 00464424 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00464428 95040000 */  lhu   $a0, ($t0)
/* 0046442C 93A500D7 */  lbu   $a1, 0xd7($sp)
/* 00464430 8FA600DC */  lw    $a2, 0xdc($sp)
/* 00464434 93A700E3 */  lbu   $a3, 0xe3($sp)
/* 00464438 0320F809 */  jalr  $t9
/* 0046443C 00000000 */   nop   
/* 00464440 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464444 8FA400D8 */  lw    $a0, 0xd8($sp)
/* 00464448 8F8E8BB0 */  lw     $t6, %got(bbindex)($gp)
/* 0046444C 8F988B88 */  lw     $t8, %got(proc_instr_base)($gp)
/* 00464450 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00464454 8DCE0000 */  lw    $t6, ($t6)
/* 00464458 8F180000 */  lw    $t8, ($t8)
/* 0046445C 24050001 */  li    $a1, 1
/* 00464460 0320F809 */  jalr  $t9
/* 00464464 01D83021 */   addu  $a2, $t6, $t8
/* 00464468 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046446C 1000002B */  b     .L0046451C
/* 00464470 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00464474:
/* 00464474 8F8F8070 */  lw    $t7, %got(RO_1001C950)($gp)
/* 00464478 03A0C825 */  move  $t9, $sp
/* 0046447C 25EFC950 */  addiu $t7, %lo(RO_1001C950) # addiu $t7, $t7, -0x36b0
/* 00464480 25EA0048 */  addiu $t2, $t7, 0x48
.L00464484:
/* 00464484 89E10000 */  lwl   $at, ($t7)
/* 00464488 99E10003 */  lwr   $at, 3($t7)
/* 0046448C 25EF000C */  addiu $t7, $t7, 0xc
/* 00464490 AB210000 */  swl   $at, ($t9)
/* 00464494 BB210003 */  swr   $at, 3($t9)
/* 00464498 89E1FFF8 */  lwl   $at, -8($t7)
/* 0046449C 99E1FFFB */  lwr   $at, -5($t7)
/* 004644A0 2739000C */  addiu $t9, $t9, 0xc
/* 004644A4 AB21FFF8 */  swl   $at, -8($t9)
/* 004644A8 BB21FFFB */  swr   $at, -5($t9)
/* 004644AC 89E1FFFC */  lwl   $at, -4($t7)
/* 004644B0 99E1FFFF */  lwr   $at, -1($t7)
/* 004644B4 00000000 */  nop   
/* 004644B8 AB21FFFC */  swl   $at, -4($t9)
/* 004644BC 15EAFFF1 */  bne   $t7, $t2, .L00464484
/* 004644C0 BB21FFFF */   swr   $at, -1($t9)
/* 004644C4 89E10000 */  lwl   $at, ($t7)
/* 004644C8 99E10003 */  lwr   $at, 3($t7)
/* 004644CC 8F8B8C68 */  lw     $t3, %got(emptystring)($gp)
/* 004644D0 AB210000 */  swl   $at, ($t9)
/* 004644D4 BB210003 */  swr   $at, 3($t9)
/* 004644D8 89EA0004 */  lwl   $t2, 4($t7)
/* 004644DC 99EA0007 */  lwr   $t2, 7($t7)
/* 004644E0 240C0001 */  li    $t4, 1
/* 004644E4 AB2A0004 */  swl   $t2, 4($t9)
/* 004644E8 BB2A0007 */  swr   $t2, 7($t9)
/* 004644EC 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 004644F0 8D6B0000 */  lw    $t3, ($t3)
/* 004644F4 8FA7000C */  lw    $a3, 0xc($sp)
/* 004644F8 8FA60008 */  lw    $a2, 8($sp)
/* 004644FC 8FA50004 */  lw    $a1, 4($sp)
/* 00464500 8FA40000 */  lw    $a0, ($sp)
/* 00464504 AFAC0054 */  sw    $t4, 0x54($sp)
/* 00464508 0320F809 */  jalr  $t9
/* 0046450C AFAB0050 */   sw    $t3, 0x50($sp)
/* 00464510 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464514 00000000 */  nop   
.L00464518:
/* 00464518 8FBF00B4 */  lw    $ra, 0xb4($sp)
.L0046451C:
/* 0046451C 27BD00D0 */  addiu $sp, $sp, 0xd0
/* 00464520 03E00008 */  jr    $ra
/* 00464524 00000000 */   nop   

glabel parseafra
    .ent parseafra
    # 004594BC parsestmt
/* 00464528 3C1C0FBC */  .cpload $t9
/* 0046452C 279C5D38 */  
/* 00464530 0399E021 */  
/* 00464534 8F838D64 */  lw     $v1, %got(binasmfyle)($gp)
/* 00464538 8F818D98 */  lw     $at, %got(current_mem_tag)($gp)
/* 0046453C 8C630000 */  lw    $v1, ($v1)
/* 00464540 27BDFF20 */  addiu $sp, $sp, -0xe0
/* 00464544 9479000A */  lhu   $t9, 0xa($v1)
/* 00464548 906E0008 */  lbu   $t6, 8($v1)
/* 0046454C 33293FFF */  andi  $t1, $t9, 0x3fff
/* 00464550 A4290000 */  sh    $t1, ($at)
/* 00464554 8C6A000C */  lw    $t2, 0xc($v1)
/* 00464558 8C650000 */  lw    $a1, ($v1)
/* 0046455C 000E7E00 */  sll   $t7, $t6, 0x18
/* 00464560 000FC642 */  srl   $t8, $t7, 0x19
/* 00464564 AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 00464568 AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 0046456C AFA400E0 */  sw    $a0, 0xe0($sp)
/* 00464570 AFA000D4 */  sw    $zero, 0xd4($sp)
/* 00464574 A3B800DF */  sb    $t8, 0xdf($sp)
/* 00464578 10A0000C */  beqz  $a1, .L004645AC
/* 0046457C AFAA00D8 */   sw    $t2, 0xd8($sp)
/* 00464580 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 00464584 00A02025 */  move  $a0, $a1
/* 00464588 0320F809 */  jalr  $t9
/* 0046458C 00000000 */   nop   
/* 00464590 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464594 AFA200D4 */  sw    $v0, 0xd4($sp)
/* 00464598 8F838D64 */  lw     $v1, %got(binasmfyle)($gp)
/* 0046459C 240B0001 */  li    $t3, 1
/* 004645A0 A04B003D */  sb    $t3, 0x3d($v0)
/* 004645A4 8C630000 */  lw    $v1, ($v1)
/* 004645A8 00000000 */  nop   
.L004645AC:
/* 004645AC 946C0008 */  lhu   $t4, 8($v1)
/* 004645B0 97AF00E2 */  lhu   $t7, 0xe2($sp)
/* 004645B4 000C6DC0 */  sll   $t5, $t4, 0x17
/* 004645B8 000D7642 */  srl   $t6, $t5, 0x19
/* 004645BC 2401014D */  li    $at, 333
/* 004645C0 15E100AD */  bne   $t7, $at, .L00464878
/* 004645C4 A3AE00DE */   sb    $t6, 0xde($sp)
/* 004645C8 8F988C28 */  lw     $t8, %got(diag_flag)($gp)
/* 004645CC 31D900FF */  andi  $t9, $t6, 0xff
/* 004645D0 93180000 */  lbu   $t8, ($t8)
/* 004645D4 24010048 */  li    $at, 72
/* 004645D8 130000A7 */  beqz  $t8, .L00464878
/* 004645DC 00000000 */   nop   
/* 004645E0 13210045 */  beq   $t9, $at, .L004646F8
/* 004645E4 00000000 */   nop   
/* 004645E8 8F898070 */  lw    $t1, %got(RO_1001CCD8)($gp)
/* 004645EC 03A06025 */  move  $t4, $sp
/* 004645F0 2529CCD8 */  addiu $t1, %lo(RO_1001CCD8) # addiu $t1, $t1, -0x3328
/* 004645F4 252B0048 */  addiu $t3, $t1, 0x48
.L004645F8:
/* 004645F8 89210000 */  lwl   $at, ($t1)
/* 004645FC 99210003 */  lwr   $at, 3($t1)
/* 00464600 2529000C */  addiu $t1, $t1, 0xc
/* 00464604 A9810000 */  swl   $at, ($t4)
/* 00464608 B9810003 */  swr   $at, 3($t4)
/* 0046460C 8921FFF8 */  lwl   $at, -8($t1)
/* 00464610 9921FFFB */  lwr   $at, -5($t1)
/* 00464614 258C000C */  addiu $t4, $t4, 0xc
/* 00464618 A981FFF8 */  swl   $at, -8($t4)
/* 0046461C B981FFFB */  swr   $at, -5($t4)
/* 00464620 8921FFFC */  lwl   $at, -4($t1)
/* 00464624 9921FFFF */  lwr   $at, -1($t1)
/* 00464628 00000000 */  nop   
/* 0046462C A981FFFC */  swl   $at, -4($t4)
/* 00464630 152BFFF1 */  bne   $t1, $t3, .L004645F8
/* 00464634 B981FFFF */   swr   $at, -1($t4)
/* 00464638 89210000 */  lwl   $at, ($t1)
/* 0046463C 99210003 */  lwr   $at, 3($t1)
/* 00464640 8F8D8070 */  lw    $t5, %got(RO_1001CC88)($gp)
/* 00464644 A9810000 */  swl   $at, ($t4)
/* 00464648 B9810003 */  swr   $at, 3($t4)
/* 0046464C 892B0004 */  lwl   $t3, 4($t1)
/* 00464650 992B0007 */  lwr   $t3, 7($t1)
/* 00464654 25ADCC88 */  addiu $t5, %lo(RO_1001CC88) # addiu $t5, $t5, -0x3378
/* 00464658 A98B0004 */  swl   $t3, 4($t4)
/* 0046465C 25B80048 */  addiu $t8, $t5, 0x48
/* 00464660 03A07025 */  move  $t6, $sp
/* 00464664 B98B0007 */  swr   $t3, 7($t4)
.L00464668:
/* 00464668 89A10000 */  lwl   $at, ($t5)
/* 0046466C 99A10003 */  lwr   $at, 3($t5)
/* 00464670 25AD000C */  addiu $t5, $t5, 0xc
/* 00464674 A9C10050 */  swl   $at, 0x50($t6)
/* 00464678 B9C10053 */  swr   $at, 0x53($t6)
/* 0046467C 89A1FFF8 */  lwl   $at, -8($t5)
/* 00464680 99A1FFFB */  lwr   $at, -5($t5)
/* 00464684 25CE000C */  addiu $t6, $t6, 0xc
/* 00464688 A9C10048 */  swl   $at, 0x48($t6)
/* 0046468C B9C1004B */  swr   $at, 0x4b($t6)
/* 00464690 89A1FFFC */  lwl   $at, -4($t5)
/* 00464694 99A1FFFF */  lwr   $at, -1($t5)
/* 00464698 00000000 */  nop   
/* 0046469C A9C1004C */  swl   $at, 0x4c($t6)
/* 004646A0 15B8FFF1 */  bne   $t5, $t8, .L00464668
/* 004646A4 B9C1004F */   swr   $at, 0x4f($t6)
/* 004646A8 89A10000 */  lwl   $at, ($t5)
/* 004646AC 99A10003 */  lwr   $at, 3($t5)
/* 004646B0 241906EB */  li    $t9, 1771
/* 004646B4 A9C10050 */  swl   $at, 0x50($t6)
/* 004646B8 B9C10053 */  swr   $at, 0x53($t6)
/* 004646BC 89B80004 */  lwl   $t8, 4($t5)
/* 004646C0 99B80007 */  lwr   $t8, 7($t5)
/* 004646C4 00000000 */  nop   
/* 004646C8 A9D80054 */  swl   $t8, 0x54($t6)
/* 004646CC B9D80057 */  swr   $t8, 0x57($t6)
/* 004646D0 AFB900A0 */  sw    $t9, 0xa0($sp)
/* 004646D4 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 004646D8 8FA7000C */  lw    $a3, 0xc($sp)
/* 004646DC 8FA60008 */  lw    $a2, 8($sp)
/* 004646E0 8FA50004 */  lw    $a1, 4($sp)
/* 004646E4 8FA40000 */  lw    $a0, ($sp)
/* 004646E8 0320F809 */  jalr  $t9
/* 004646EC 00000000 */   nop   
/* 004646F0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004646F4 00000000 */  nop   
.L004646F8:
/* 004646F8 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 004646FC 93A500DF */  lbu   $a1, 0xdf($sp)
/* 00464700 2404005A */  li    $a0, 90
/* 00464704 00003025 */  move  $a2, $zero
/* 00464708 0320F809 */  jalr  $t9
/* 0046470C 00003825 */   move  $a3, $zero
/* 00464710 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464714 8FA400D4 */  lw    $a0, 0xd4($sp)
/* 00464718 8F8A8BB0 */  lw     $t2, %got(bbindex)($gp)
/* 0046471C 8F8B8B88 */  lw     $t3, %got(proc_instr_base)($gp)
/* 00464720 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00464724 8D4A0000 */  lw    $t2, ($t2)
/* 00464728 8D6B0000 */  lw    $t3, ($t3)
/* 0046472C 24050004 */  li    $a1, 4
/* 00464730 0320F809 */  jalr  $t9
/* 00464734 014B3021 */   addu  $a2, $t2, $t3
/* 00464738 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046473C 93A500DF */  lbu   $a1, 0xdf($sp)
/* 00464740 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00464744 24040058 */  li    $a0, 88
/* 00464748 00003825 */  move  $a3, $zero
/* 0046474C 0320F809 */  jalr  $t9
/* 00464750 00A03025 */   move  $a2, $a1
/* 00464754 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464758 8FA400D4 */  lw    $a0, 0xd4($sp)
/* 0046475C 8F898BB0 */  lw     $t1, %got(bbindex)($gp)
/* 00464760 8F8C8B88 */  lw     $t4, %got(proc_instr_base)($gp)
/* 00464764 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00464768 8D290000 */  lw    $t1, ($t1)
/* 0046476C 8D8C0000 */  lw    $t4, ($t4)
/* 00464770 24050005 */  li    $a1, 5
/* 00464774 0320F809 */  jalr  $t9
/* 00464778 012C3021 */   addu  $a2, $t1, $t4
/* 0046477C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464780 93A500DF */  lbu   $a1, 0xdf($sp)
/* 00464784 8F99847C */  lw    $t9, %call16(emitshift)($gp)
/* 00464788 24040028 */  li    $a0, 40
/* 0046478C 24070010 */  li    $a3, 16
/* 00464790 0320F809 */  jalr  $t9
/* 00464794 00A03025 */   move  $a2, $a1
/* 00464798 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046479C 8FA500D8 */  lw    $a1, 0xd8($sp)
/* 004647A0 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 004647A4 24040001 */  li    $a0, 1
/* 004647A8 0320F809 */  jalr  $t9
/* 004647AC 00000000 */   nop   
/* 004647B0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004647B4 93A500DF */  lbu   $a1, 0xdf($sp)
/* 004647B8 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 004647BC 24040058 */  li    $a0, 88
/* 004647C0 00403825 */  move  $a3, $v0
/* 004647C4 0320F809 */  jalr  $t9
/* 004647C8 00A03025 */   move  $a2, $a1
/* 004647CC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004647D0 8FA400D4 */  lw    $a0, 0xd4($sp)
/* 004647D4 8F8F8BB0 */  lw     $t7, %got(bbindex)($gp)
/* 004647D8 8F988B88 */  lw     $t8, %got(proc_instr_base)($gp)
/* 004647DC 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 004647E0 8DEF0000 */  lw    $t7, ($t7)
/* 004647E4 8F180000 */  lw    $t8, ($t8)
/* 004647E8 24050002 */  li    $a1, 2
/* 004647EC 0320F809 */  jalr  $t9
/* 004647F0 01F83021 */   addu  $a2, $t7, $t8
/* 004647F4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004647F8 93A500DF */  lbu   $a1, 0xdf($sp)
/* 004647FC 8F99847C */  lw    $t9, %call16(emitshift)($gp)
/* 00464800 24040028 */  li    $a0, 40
/* 00464804 24070010 */  li    $a3, 16
/* 00464808 0320F809 */  jalr  $t9
/* 0046480C 00A03025 */   move  $a2, $a1
/* 00464810 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464814 8FA500D8 */  lw    $a1, 0xd8($sp)
/* 00464818 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 0046481C 00002025 */  move  $a0, $zero
/* 00464820 0320F809 */  jalr  $t9
/* 00464824 00000000 */   nop   
/* 00464828 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046482C 93A500DF */  lbu   $a1, 0xdf($sp)
/* 00464830 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00464834 24040062 */  li    $a0, 98
/* 00464838 00403825 */  move  $a3, $v0
/* 0046483C 0320F809 */  jalr  $t9
/* 00464840 00A03025 */   move  $a2, $a1
/* 00464844 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464848 8FA400D4 */  lw    $a0, 0xd4($sp)
/* 0046484C 8F8D8BB0 */  lw     $t5, %got(bbindex)($gp)
/* 00464850 8F8E8B88 */  lw     $t6, %got(proc_instr_base)($gp)
/* 00464854 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00464858 8DAD0000 */  lw    $t5, ($t5)
/* 0046485C 8DCE0000 */  lw    $t6, ($t6)
/* 00464860 24050003 */  li    $a1, 3
/* 00464864 0320F809 */  jalr  $t9
/* 00464868 01AE3021 */   addu  $a2, $t5, $t6
/* 0046486C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464870 100002CF */  b     .L004653B0
/* 00464874 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00464878:
/* 00464878 94790004 */  lhu   $t9, 4($v1)
/* 0046487C 93A400DE */  lbu   $a0, 0xde($sp)
/* 00464880 001955C0 */  sll   $t2, $t9, 0x17
/* 00464884 000A5F42 */  srl   $t3, $t2, 0x1d
/* 00464888 11600017 */  beqz  $t3, .L004648E8
/* 0046488C 00000000 */   nop   
/* 00464890 8F99802C */  lw    $t9, %got(func_00461C6C)($gp)
/* 00464894 8FA500D8 */  lw    $a1, 0xd8($sp)
/* 00464898 8FA600D4 */  lw    $a2, 0xd4($sp)
/* 0046489C 27391C6C */  addiu $t9, %lo(func_00461C6C) # addiu $t9, $t9, 0x1c6c
/* 004648A0 0320F809 */  jalr  $t9
/* 004648A4 27A200E0 */   addiu $v0, $sp, 0xe0
/* 004648A8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004648AC 93A900DE */  lbu   $t1, 0xde($sp)
/* 004648B0 8F99802C */  lw    $t9, %got(func_004638F8)($gp)
/* 004648B4 27A800E0 */  addiu $t0, $sp, 0xe0
/* 004648B8 A3A200D3 */  sb    $v0, 0xd3($sp)
/* 004648BC 97A400E2 */  lhu   $a0, 0xe2($sp)
/* 004648C0 93A500DF */  lbu   $a1, 0xdf($sp)
/* 004648C4 8FA600D4 */  lw    $a2, 0xd4($sp)
/* 004648C8 8FA700D8 */  lw    $a3, 0xd8($sp)
/* 004648CC 273938F8 */  addiu $t9, %lo(func_004638F8) # addiu $t9, $t9, 0x38f8
/* 004648D0 01001025 */  move  $v0, $t0
/* 004648D4 0320F809 */  jalr  $t9
/* 004648D8 AFA90010 */   sw    $t1, 0x10($sp)
/* 004648DC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004648E0 100002B3 */  b     .L004653B0
/* 004648E4 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L004648E8:
/* 004648E8 8F8C8B28 */  lw     $t4, %got(sixtyfour_bit)($gp)
/* 004648EC 8FAF00D4 */  lw    $t7, 0xd4($sp)
/* 004648F0 918C0000 */  lbu   $t4, ($t4)
/* 004648F4 00000000 */  nop   
/* 004648F8 1180005E */  beqz  $t4, .L00464A74
/* 004648FC 00000000 */   nop   
/* 00464900 11E0005C */  beqz  $t7, .L00464A74
/* 00464904 00000000 */   nop   
/* 00464908 8F99860C */  lw    $t9, %call16(check_if_gp_relative)($gp)
/* 0046490C 8FA500D8 */  lw    $a1, 0xd8($sp)
/* 00464910 0320F809 */  jalr  $t9
/* 00464914 01E02025 */   move  $a0, $t7
/* 00464918 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046491C 14400055 */  bnez  $v0, .L00464A74
/* 00464920 00000000 */   nop   
/* 00464924 8F988BB4 */  lw     $t8, %got(atflag)($gp)
/* 00464928 00000000 */  nop   
/* 0046492C 93180000 */  lbu   $t8, ($t8)
/* 00464930 00000000 */  nop   
/* 00464934 17000008 */  bnez  $t8, .L00464958
/* 00464938 8FA500D8 */   lw    $a1, 0xd8($sp)
/* 0046493C 8F9984C8 */  lw    $t9, %call16(macro_error)($gp)
/* 00464940 00000000 */  nop   
/* 00464944 0320F809 */  jalr  $t9
/* 00464948 00000000 */   nop   
/* 0046494C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464950 00000000 */  nop   
/* 00464954 8FA500D8 */  lw    $a1, 0xd8($sp)
.L00464958:
/* 00464958 00002025 */  move  $a0, $zero
/* 0046495C 04A10003 */  bgez  $a1, .L0046496C
/* 00464960 00000000 */   nop   
/* 00464964 10000001 */  b     .L0046496C
/* 00464968 2404FFFF */   li    $a0, -1
.L0046496C:
/* 0046496C 8F998574 */  lw    $t9, %call16(emit_dword_item)($gp)
/* 00464970 8FA600D4 */  lw    $a2, 0xd4($sp)
/* 00464974 0320F809 */  jalr  $t9
/* 00464978 00000000 */   nop   
/* 0046497C 97A300E2 */  lhu   $v1, 0xe2($sp)
/* 00464980 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464984 24010024 */  li    $at, 36
/* 00464988 10610004 */  beq   $v1, $at, .L0046499C
/* 0046498C 00403025 */   move  $a2, $v0
/* 00464990 2401014D */  li    $at, 333
/* 00464994 14610020 */  bne   $v1, $at, .L00464A18
/* 00464998 2404006C */   li    $a0, 108
.L0046499C:
/* 0046499C 93A200DE */  lbu   $v0, 0xde($sp)
/* 004649A0 24010048 */  li    $at, 72
/* 004649A4 10410003 */  beq   $v0, $at, .L004649B4
/* 004649A8 2404006C */   li    $a0, 108
/* 004649AC 1440000A */  bnez  $v0, .L004649D8
/* 004649B0 24050001 */   li    $a1, 1
.L004649B4:
/* 004649B4 8F99861C */  lw    $t9, %call16(do_parseafra)($gp)
/* 004649B8 93A500DF */  lbu   $a1, 0xdf($sp)
/* 004649BC 240D0048 */  li    $t5, 72
/* 004649C0 AFAD0010 */  sw    $t5, 0x10($sp)
/* 004649C4 0320F809 */  jalr  $t9
/* 004649C8 00003825 */   move  $a3, $zero
/* 004649CC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004649D0 10000277 */  b     .L004653B0
/* 004649D4 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L004649D8:
/* 004649D8 8F99861C */  lw    $t9, %call16(do_parseafra)($gp)
/* 004649DC 240E0048 */  li    $t6, 72
/* 004649E0 AFAE0010 */  sw    $t6, 0x10($sp)
/* 004649E4 2404006C */  li    $a0, 108
/* 004649E8 0320F809 */  jalr  $t9
/* 004649EC 00003825 */   move  $a3, $zero
/* 004649F0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004649F4 93A500DF */  lbu   $a1, 0xdf($sp)
/* 004649F8 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 004649FC 93A700DE */  lbu   $a3, 0xde($sp)
/* 00464A00 24040025 */  li    $a0, 37
/* 00464A04 0320F809 */  jalr  $t9
/* 00464A08 24060001 */   li    $a2, 1
/* 00464A0C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464A10 10000267 */  b     .L004653B0
/* 00464A14 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00464A18:
/* 00464A18 24190048 */  li    $t9, 72
/* 00464A1C AFB90010 */  sw    $t9, 0x10($sp)
/* 00464A20 8F99861C */  lw    $t9, %call16(do_parseafra)($gp)
/* 00464A24 24050001 */  li    $a1, 1
/* 00464A28 00003825 */  move  $a3, $zero
/* 00464A2C 0320F809 */  jalr  $t9
/* 00464A30 AFA000D4 */   sw    $zero, 0xd4($sp)
/* 00464A34 93A700DE */  lbu   $a3, 0xde($sp)
/* 00464A38 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464A3C 24010048 */  li    $at, 72
/* 00464A40 10E1000A */  beq   $a3, $at, .L00464A6C
/* 00464A44 240A0001 */   li    $t2, 1
/* 00464A48 10E00007 */  beqz  $a3, .L00464A68
/* 00464A4C 24040025 */   li    $a0, 37
/* 00464A50 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00464A54 24050001 */  li    $a1, 1
/* 00464A58 0320F809 */  jalr  $t9
/* 00464A5C 24060001 */   li    $a2, 1
/* 00464A60 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464A64 00000000 */  nop   
.L00464A68:
/* 00464A68 240A0001 */  li    $t2, 1
.L00464A6C:
/* 00464A6C AFA000D8 */  sw    $zero, 0xd8($sp)
/* 00464A70 A3AA00DE */  sb    $t2, 0xde($sp)
.L00464A74:
/* 00464A74 8F99802C */  lw    $t9, %got(func_00461C6C)($gp)
/* 00464A78 93A400DE */  lbu   $a0, 0xde($sp)
/* 00464A7C 8FA500D8 */  lw    $a1, 0xd8($sp)
/* 00464A80 8FA600D4 */  lw    $a2, 0xd4($sp)
/* 00464A84 27391C6C */  addiu $t9, %lo(func_00461C6C) # addiu $t9, $t9, 0x1c6c
/* 00464A88 0320F809 */  jalr  $t9
/* 00464A8C 27A200E0 */   addiu $v0, $sp, 0xe0
/* 00464A90 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464A94 27A800E0 */  addiu $t0, $sp, 0xe0
/* 00464A98 100001F4 */  b     .L0046526C
/* 00464A9C A3A200D3 */   sb    $v0, 0xd3($sp)
.L00464AA0:
/* 00464AA0 8F99802C */  lw    $t9, %got(func_0046383C)($gp)
/* 00464AA4 24040001 */  li    $a0, 1
/* 00464AA8 2739383C */  addiu $t9, %lo(func_0046383C) # addiu $t9, $t9, 0x383c
/* 00464AAC 240500CF */  li    $a1, 207
/* 00464AB0 0320F809 */  jalr  $t9
/* 00464AB4 01001025 */   move  $v0, $t0
/* 00464AB8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464ABC 1000023C */  b     .L004653B0
/* 00464AC0 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00464AC4:
/* 00464AC4 8F99802C */  lw    $t9, %got(func_0046383C)($gp)
/* 00464AC8 24040001 */  li    $a0, 1
/* 00464ACC 2739383C */  addiu $t9, %lo(func_0046383C) # addiu $t9, $t9, 0x383c
/* 00464AD0 240500D0 */  li    $a1, 208
/* 00464AD4 0320F809 */  jalr  $t9
/* 00464AD8 01001025 */   move  $v0, $t0
/* 00464ADC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464AE0 10000233 */  b     .L004653B0
/* 00464AE4 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00464AE8:
/* 00464AE8 8F99802C */  lw    $t9, %got(func_0046383C)($gp)
/* 00464AEC 24040002 */  li    $a0, 2
/* 00464AF0 2739383C */  addiu $t9, %lo(func_0046383C) # addiu $t9, $t9, 0x383c
/* 00464AF4 240500CE */  li    $a1, 206
/* 00464AF8 0320F809 */  jalr  $t9
/* 00464AFC 01001025 */   move  $v0, $t0
/* 00464B00 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464B04 1000022A */  b     .L004653B0
/* 00464B08 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00464B0C:
/* 00464B0C 8F99802C */  lw    $t9, %got(func_0046383C)($gp)
/* 00464B10 240500D2 */  li    $a1, 210
/* 00464B14 2739383C */  addiu $t9, %lo(func_0046383C) # addiu $t9, $t9, 0x383c
/* 00464B18 0320F809 */  jalr  $t9
/* 00464B1C 01001025 */   move  $v0, $t0
/* 00464B20 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464B24 10000222 */  b     .L004653B0
/* 00464B28 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00464B2C:
/* 00464B2C 8F99802C */  lw    $t9, %got(func_0046383C)($gp)
/* 00464B30 240500D1 */  li    $a1, 209
/* 00464B34 2739383C */  addiu $t9, %lo(func_0046383C) # addiu $t9, $t9, 0x383c
/* 00464B38 0320F809 */  jalr  $t9
/* 00464B3C 01001025 */   move  $v0, $t0
/* 00464B40 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464B44 1000021A */  b     .L004653B0
/* 00464B48 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00464B4C:
/* 00464B4C 8F8B8B04 */  lw     $t3, %got(isa)($gp)
/* 00464B50 93A400DF */  lbu   $a0, 0xdf($sp)
/* 00464B54 916B0000 */  lbu   $t3, ($t3)
/* 00464B58 97AA00E2 */  lhu   $t2, 0xe2($sp)
/* 00464B5C 2D610003 */  sltiu $at, $t3, 3
/* 00464B60 10200038 */  beqz  $at, .L00464C44
/* 00464B64 2401006C */   li    $at, 108
/* 00464B68 8F998618 */  lw    $t9, %call16(enforce_destreg)($gp)
/* 00464B6C 24050002 */  li    $a1, 2
/* 00464B70 0320F809 */  jalr  $t9
/* 00464B74 AFA300BC */   sw    $v1, 0xbc($sp)
/* 00464B78 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464B7C 93A400D3 */  lbu   $a0, 0xd3($sp)
/* 00464B80 8F99802C */  lw    $t9, %got(func_00463804)($gp)
/* 00464B84 27A200E0 */  addiu $v0, $sp, 0xe0
/* 00464B88 27393804 */  addiu $t9, %lo(func_00463804) # addiu $t9, $t9, 0x3804
/* 00464B8C 0320F809 */  jalr  $t9
/* 00464B90 24050003 */   li    $a1, 3
/* 00464B94 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464B98 8FA300BC */  lw    $v1, 0xbc($sp)
/* 00464B9C 1040001C */  beqz  $v0, .L00464C10
/* 00464BA0 27A800E0 */   addiu $t0, $sp, 0xe0
/* 00464BA4 93A900D3 */  lbu   $t1, 0xd3($sp)
/* 00464BA8 240D0048 */  li    $t5, 72
/* 00464BAC 2D210002 */  sltiu $at, $t1, 2
/* 00464BB0 10200017 */  beqz  $at, .L00464C10
/* 00464BB4 240E0001 */   li    $t6, 1
/* 00464BB8 2401006C */  li    $at, 108
/* 00464BBC 14610004 */  bne   $v1, $at, .L00464BD0
/* 00464BC0 01001025 */   move  $v0, $t0
/* 00464BC4 240C00CE */  li    $t4, 206
/* 00464BC8 10000003 */  b     .L00464BD8
/* 00464BCC A7AC00E2 */   sh    $t4, 0xe2($sp)
.L00464BD0:
/* 00464BD0 240F00D1 */  li    $t7, 209
/* 00464BD4 A7AF00E2 */  sh    $t7, 0xe2($sp)
.L00464BD8:
/* 00464BD8 8F99802C */  lw    $t9, %got(func_00462320)($gp)
/* 00464BDC 93B800DE */  lbu   $t8, 0xde($sp)
/* 00464BE0 97A400E2 */  lhu   $a0, 0xe2($sp)
/* 00464BE4 93A500DF */  lbu   $a1, 0xdf($sp)
/* 00464BE8 8FA600D4 */  lw    $a2, 0xd4($sp)
/* 00464BEC 8FA700D8 */  lw    $a3, 0xd8($sp)
/* 00464BF0 27392320 */  addiu $t9, %lo(func_00462320) # addiu $t9, $t9, 0x2320
/* 00464BF4 AFAD0014 */  sw    $t5, 0x14($sp)
/* 00464BF8 AFAE0018 */  sw    $t6, 0x18($sp)
/* 00464BFC 0320F809 */  jalr  $t9
/* 00464C00 AFB80010 */   sw    $t8, 0x10($sp)
/* 00464C04 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464C08 100001E9 */  b     .L004653B0
/* 00464C0C 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00464C10:
/* 00464C10 93B900DE */  lbu   $t9, 0xde($sp)
/* 00464C14 97A400E2 */  lhu   $a0, 0xe2($sp)
/* 00464C18 AFB90010 */  sw    $t9, 0x10($sp)
/* 00464C1C 8F998620 */  lw    $t9, %call16(gendouble)($gp)
/* 00464C20 93A500DF */  lbu   $a1, 0xdf($sp)
/* 00464C24 8FA600D4 */  lw    $a2, 0xd4($sp)
/* 00464C28 8FA700D8 */  lw    $a3, 0xd8($sp)
/* 00464C2C 0320F809 */  jalr  $t9
/* 00464C30 AFA00014 */   sw    $zero, 0x14($sp)
/* 00464C34 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464C38 100001DD */  b     .L004653B0
/* 00464C3C 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 00464C40 2401006C */  li    $at, 108
.L00464C44:
/* 00464C44 1541000A */  bne   $t2, $at, .L00464C70
/* 00464C48 24040003 */   li    $a0, 3
/* 00464C4C 8F99802C */  lw    $t9, %got(func_0046383C)($gp)
/* 00464C50 24040003 */  li    $a0, 3
/* 00464C54 2739383C */  addiu $t9, %lo(func_0046383C) # addiu $t9, $t9, 0x383c
/* 00464C58 24050165 */  li    $a1, 357
/* 00464C5C 0320F809 */  jalr  $t9
/* 00464C60 01001025 */   move  $v0, $t0
/* 00464C64 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464C68 100001D1 */  b     .L004653B0
/* 00464C6C 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00464C70:
/* 00464C70 8F99802C */  lw    $t9, %got(func_0046383C)($gp)
/* 00464C74 24050166 */  li    $a1, 358
/* 00464C78 2739383C */  addiu $t9, %lo(func_0046383C) # addiu $t9, $t9, 0x383c
/* 00464C7C 0320F809 */  jalr  $t9
/* 00464C80 01001025 */   move  $v0, $t0
/* 00464C84 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464C88 100001C9 */  b     .L004653B0
/* 00464C8C 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00464C90:
/* 00464C90 304300FF */  andi  $v1, $v0, 0xff
/* 00464C94 24010001 */  li    $at, 1
/* 00464C98 10610003 */  beq   $v1, $at, .L00464CA8
/* 00464C9C 00000000 */   nop   
/* 00464CA0 1460002A */  bnez  $v1, .L00464D4C
/* 00464CA4 00000000 */   nop   
.L00464CA8:
/* 00464CA8 8F8B8070 */  lw    $t3, %got(RO_1001CC38)($gp)
/* 00464CAC 03A07825 */  move  $t7, $sp
/* 00464CB0 256BCC38 */  addiu $t3, %lo(RO_1001CC38) # addiu $t3, $t3, -0x33c8
/* 00464CB4 256C0048 */  addiu $t4, $t3, 0x48
.L00464CB8:
/* 00464CB8 89610000 */  lwl   $at, ($t3)
/* 00464CBC 99610003 */  lwr   $at, 3($t3)
/* 00464CC0 256B000C */  addiu $t3, $t3, 0xc
/* 00464CC4 A9E10000 */  swl   $at, ($t7)
/* 00464CC8 B9E10003 */  swr   $at, 3($t7)
/* 00464CCC 8961FFF8 */  lwl   $at, -8($t3)
/* 00464CD0 9961FFFB */  lwr   $at, -5($t3)
/* 00464CD4 25EF000C */  addiu $t7, $t7, 0xc
/* 00464CD8 A9E1FFF8 */  swl   $at, -8($t7)
/* 00464CDC B9E1FFFB */  swr   $at, -5($t7)
/* 00464CE0 8961FFFC */  lwl   $at, -4($t3)
/* 00464CE4 9961FFFF */  lwr   $at, -1($t3)
/* 00464CE8 00000000 */  nop   
/* 00464CEC A9E1FFFC */  swl   $at, -4($t7)
/* 00464CF0 156CFFF1 */  bne   $t3, $t4, .L00464CB8
/* 00464CF4 B9E1FFFF */   swr   $at, -1($t7)
/* 00464CF8 89610000 */  lwl   $at, ($t3)
/* 00464CFC 99610003 */  lwr   $at, 3($t3)
/* 00464D00 8F988C68 */  lw     $t8, %got(emptystring)($gp)
/* 00464D04 A9E10000 */  swl   $at, ($t7)
/* 00464D08 B9E10003 */  swr   $at, 3($t7)
/* 00464D0C 896C0004 */  lwl   $t4, 4($t3)
/* 00464D10 996C0007 */  lwr   $t4, 7($t3)
/* 00464D14 240D0002 */  li    $t5, 2
/* 00464D18 A9EC0004 */  swl   $t4, 4($t7)
/* 00464D1C B9EC0007 */  swr   $t4, 7($t7)
/* 00464D20 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00464D24 8F180000 */  lw    $t8, ($t8)
/* 00464D28 8FA7000C */  lw    $a3, 0xc($sp)
/* 00464D2C 8FA60008 */  lw    $a2, 8($sp)
/* 00464D30 8FA50004 */  lw    $a1, 4($sp)
/* 00464D34 8FA40000 */  lw    $a0, ($sp)
/* 00464D38 AFAD0054 */  sw    $t5, 0x54($sp)
/* 00464D3C 0320F809 */  jalr  $t9
/* 00464D40 AFB80050 */   sw    $t8, 0x50($sp)
/* 00464D44 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464D48 27A800E0 */  addiu $t0, $sp, 0xe0
.L00464D4C:
/* 00464D4C 8F99802C */  lw    $t9, %got(func_00463804)($gp)
/* 00464D50 93A400D3 */  lbu   $a0, 0xd3($sp)
/* 00464D54 27393804 */  addiu $t9, %lo(func_00463804) # addiu $t9, $t9, 0x3804
/* 00464D58 24050002 */  li    $a1, 2
/* 00464D5C 0320F809 */  jalr  $t9
/* 00464D60 01001025 */   move  $v0, $t0
/* 00464D64 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464D68 10400010 */  beqz  $v0, .L00464DAC
/* 00464D6C 27A800E0 */   addiu $t0, $sp, 0xe0
/* 00464D70 24190001 */  li    $t9, 1
/* 00464D74 AFB90014 */  sw    $t9, 0x14($sp)
/* 00464D78 8F99802C */  lw    $t9, %got(func_00463428)($gp)
/* 00464D7C 93AE00DE */  lbu   $t6, 0xde($sp)
/* 00464D80 97A400E2 */  lhu   $a0, 0xe2($sp)
/* 00464D84 93A500DF */  lbu   $a1, 0xdf($sp)
/* 00464D88 8FA600D4 */  lw    $a2, 0xd4($sp)
/* 00464D8C 8FA700D8 */  lw    $a3, 0xd8($sp)
/* 00464D90 27393428 */  addiu $t9, %lo(func_00463428) # addiu $t9, $t9, 0x3428
/* 00464D94 01001025 */  move  $v0, $t0
/* 00464D98 0320F809 */  jalr  $t9
/* 00464D9C AFAE0010 */   sw    $t6, 0x10($sp)
/* 00464DA0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464DA4 10000182 */  b     .L004653B0
/* 00464DA8 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00464DAC:
/* 00464DAC 8F8C8B04 */  lw     $t4, %got(isa)($gp)
/* 00464DB0 93AA00DE */  lbu   $t2, 0xde($sp)
/* 00464DB4 918C0000 */  lbu   $t4, ($t4)
/* 00464DB8 8F998614 */  lw    $t9, %call16(genfpmultiple)($gp)
/* 00464DBC 2D8B0002 */  sltiu $t3, $t4, 2
/* 00464DC0 396B0001 */  xori  $t3, $t3, 1
/* 00464DC4 97A400E2 */  lhu   $a0, 0xe2($sp)
/* 00464DC8 93A500DF */  lbu   $a1, 0xdf($sp)
/* 00464DCC 8FA600D4 */  lw    $a2, 0xd4($sp)
/* 00464DD0 8FA700D8 */  lw    $a3, 0xd8($sp)
/* 00464DD4 24090001 */  li    $t1, 1
/* 00464DD8 AFA90014 */  sw    $t1, 0x14($sp)
/* 00464DDC AFAB0018 */  sw    $t3, 0x18($sp)
/* 00464DE0 AFA0001C */  sw    $zero, 0x1c($sp)
/* 00464DE4 0320F809 */  jalr  $t9
/* 00464DE8 AFAA0010 */   sw    $t2, 0x10($sp)
/* 00464DEC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464DF0 1000016F */  b     .L004653B0
/* 00464DF4 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00464DF8:
/* 00464DF8 304300FF */  andi  $v1, $v0, 0xff
/* 00464DFC 24010001 */  li    $at, 1
/* 00464E00 10610003 */  beq   $v1, $at, .L00464E10
/* 00464E04 00000000 */   nop   
/* 00464E08 1460002A */  bnez  $v1, .L00464EB4
/* 00464E0C 00000000 */   nop   
.L00464E10:
/* 00464E10 8F8F8070 */  lw    $t7, %got(RO_1001CBE8)($gp)
/* 00464E14 03A07025 */  move  $t6, $sp
/* 00464E18 25EFCBE8 */  addiu $t7, %lo(RO_1001CBE8) # addiu $t7, $t7, -0x3418
/* 00464E1C 25ED0048 */  addiu $t5, $t7, 0x48
.L00464E20:
/* 00464E20 89E10000 */  lwl   $at, ($t7)
/* 00464E24 99E10003 */  lwr   $at, 3($t7)
/* 00464E28 25EF000C */  addiu $t7, $t7, 0xc
/* 00464E2C A9C10000 */  swl   $at, ($t6)
/* 00464E30 B9C10003 */  swr   $at, 3($t6)
/* 00464E34 89E1FFF8 */  lwl   $at, -8($t7)
/* 00464E38 99E1FFFB */  lwr   $at, -5($t7)
/* 00464E3C 25CE000C */  addiu $t6, $t6, 0xc
/* 00464E40 A9C1FFF8 */  swl   $at, -8($t6)
/* 00464E44 B9C1FFFB */  swr   $at, -5($t6)
/* 00464E48 89E1FFFC */  lwl   $at, -4($t7)
/* 00464E4C 99E1FFFF */  lwr   $at, -1($t7)
/* 00464E50 00000000 */  nop   
/* 00464E54 A9C1FFFC */  swl   $at, -4($t6)
/* 00464E58 15EDFFF1 */  bne   $t7, $t5, .L00464E20
/* 00464E5C B9C1FFFF */   swr   $at, -1($t6)
/* 00464E60 89E10000 */  lwl   $at, ($t7)
/* 00464E64 99E10003 */  lwr   $at, 3($t7)
/* 00464E68 8F998C68 */  lw     $t9, %got(emptystring)($gp)
/* 00464E6C A9C10000 */  swl   $at, ($t6)
/* 00464E70 B9C10003 */  swr   $at, 3($t6)
/* 00464E74 89ED0004 */  lwl   $t5, 4($t7)
/* 00464E78 99ED0007 */  lwr   $t5, 7($t7)
/* 00464E7C 240A0002 */  li    $t2, 2
/* 00464E80 A9CD0004 */  swl   $t5, 4($t6)
/* 00464E84 B9CD0007 */  swr   $t5, 7($t6)
/* 00464E88 8F390000 */  lw    $t9, ($t9)
/* 00464E8C 8FA7000C */  lw    $a3, 0xc($sp)
/* 00464E90 AFB90050 */  sw    $t9, 0x50($sp)
/* 00464E94 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00464E98 8FA60008 */  lw    $a2, 8($sp)
/* 00464E9C 8FA50004 */  lw    $a1, 4($sp)
/* 00464EA0 8FA40000 */  lw    $a0, ($sp)
/* 00464EA4 0320F809 */  jalr  $t9
/* 00464EA8 AFAA0054 */   sw    $t2, 0x54($sp)
/* 00464EAC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464EB0 27A800E0 */  addiu $t0, $sp, 0xe0
.L00464EB4:
/* 00464EB4 8F898B04 */  lw     $t1, %got(isa)($gp)
/* 00464EB8 00000000 */  nop   
/* 00464EBC 91290000 */  lbu   $t1, ($t1)
/* 00464EC0 00000000 */  nop   
/* 00464EC4 2D210003 */  sltiu $at, $t1, 3
/* 00464EC8 10200007 */  beqz  $at, .L00464EE8
/* 00464ECC 00000000 */   nop   
/* 00464ED0 8F998618 */  lw    $t9, %call16(enforce_destreg)($gp)
/* 00464ED4 93A400DF */  lbu   $a0, 0xdf($sp)
/* 00464ED8 0320F809 */  jalr  $t9
/* 00464EDC 24050002 */   li    $a1, 2
/* 00464EE0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464EE4 27A800E0 */  addiu $t0, $sp, 0xe0
.L00464EE8:
/* 00464EE8 8F99802C */  lw    $t9, %got(func_00463804)($gp)
/* 00464EEC 93A400D3 */  lbu   $a0, 0xd3($sp)
/* 00464EF0 27393804 */  addiu $t9, %lo(func_00463804) # addiu $t9, $t9, 0x3804
/* 00464EF4 24050003 */  li    $a1, 3
/* 00464EF8 0320F809 */  jalr  $t9
/* 00464EFC 01001025 */   move  $v0, $t0
/* 00464F00 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464F04 10400015 */  beqz  $v0, .L00464F5C
/* 00464F08 27A800E0 */   addiu $t0, $sp, 0xe0
/* 00464F0C 93AC00D3 */  lbu   $t4, 0xd3($sp)
/* 00464F10 97A400E2 */  lhu   $a0, 0xe2($sp)
/* 00464F14 2D810002 */  sltiu $at, $t4, 2
/* 00464F18 1020000E */  beqz  $at, .L00464F54
/* 00464F1C 24180002 */   li    $t8, 2
/* 00464F20 8F99802C */  lw    $t9, %got(func_00463428)($gp)
/* 00464F24 93AB00DE */  lbu   $t3, 0xde($sp)
/* 00464F28 93A500DF */  lbu   $a1, 0xdf($sp)
/* 00464F2C 8FA600D4 */  lw    $a2, 0xd4($sp)
/* 00464F30 8FA700D8 */  lw    $a3, 0xd8($sp)
/* 00464F34 27393428 */  addiu $t9, %lo(func_00463428) # addiu $t9, $t9, 0x3428
/* 00464F38 AFB80014 */  sw    $t8, 0x14($sp)
/* 00464F3C 01001025 */  move  $v0, $t0
/* 00464F40 0320F809 */  jalr  $t9
/* 00464F44 AFAB0010 */   sw    $t3, 0x10($sp)
/* 00464F48 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464F4C 10000118 */  b     .L004653B0
/* 00464F50 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00464F54:
/* 00464F54 10000008 */  b     .L00464F78
/* 00464F58 00001025 */   move  $v0, $zero
.L00464F5C:
/* 00464F5C 8F828B04 */  lw     $v0, %got(isa)($gp)
/* 00464F60 00000000 */  nop   
/* 00464F64 90420000 */  lbu   $v0, ($v0)
/* 00464F68 00000000 */  nop   
/* 00464F6C 2C4D0002 */  sltiu $t5, $v0, 2
/* 00464F70 39AD0001 */  xori  $t5, $t5, 1
/* 00464F74 31A200FF */  andi  $v0, $t5, 0xff
.L00464F78:
/* 00464F78 24190002 */  li    $t9, 2
/* 00464F7C AFB90014 */  sw    $t9, 0x14($sp)
/* 00464F80 8F998614 */  lw    $t9, %call16(genfpmultiple)($gp)
/* 00464F84 93AE00DE */  lbu   $t6, 0xde($sp)
/* 00464F88 97A400E2 */  lhu   $a0, 0xe2($sp)
/* 00464F8C 93A500DF */  lbu   $a1, 0xdf($sp)
/* 00464F90 8FA600D4 */  lw    $a2, 0xd4($sp)
/* 00464F94 8FA700D8 */  lw    $a3, 0xd8($sp)
/* 00464F98 AFA20018 */  sw    $v0, 0x18($sp)
/* 00464F9C AFA0001C */  sw    $zero, 0x1c($sp)
/* 00464FA0 0320F809 */  jalr  $t9
/* 00464FA4 AFAE0010 */   sw    $t6, 0x10($sp)
/* 00464FA8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464FAC 10000100 */  b     .L004653B0
/* 00464FB0 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00464FB4:
/* 00464FB4 8F8A8B04 */  lw     $t2, %got(isa)($gp)
/* 00464FB8 00000000 */  nop   
/* 00464FBC 914A0000 */  lbu   $t2, ($t2)
/* 00464FC0 00000000 */  nop   
/* 00464FC4 2D410003 */  sltiu $at, $t2, 3
/* 00464FC8 14200008 */  bnez  $at, .L00464FEC
/* 00464FCC 00000000 */   nop   
/* 00464FD0 8F998618 */  lw    $t9, %call16(enforce_destreg)($gp)
/* 00464FD4 93A400DF */  lbu   $a0, 0xdf($sp)
/* 00464FD8 0320F809 */  jalr  $t9
/* 00464FDC 24050002 */   li    $a1, 2
/* 00464FE0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00464FE4 10000007 */  b     .L00465004
/* 00464FE8 27A800E0 */   addiu $t0, $sp, 0xe0
.L00464FEC:
/* 00464FEC 8F998618 */  lw    $t9, %call16(enforce_destreg)($gp)
/* 00464FF0 93A400DF */  lbu   $a0, 0xdf($sp)
/* 00464FF4 0320F809 */  jalr  $t9
/* 00464FF8 24050004 */   li    $a1, 4
/* 00464FFC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00465000 27A800E0 */  addiu $t0, $sp, 0xe0
.L00465004:
/* 00465004 8F99802C */  lw    $t9, %got(func_00463804)($gp)
/* 00465008 93A400D3 */  lbu   $a0, 0xd3($sp)
/* 0046500C 27393804 */  addiu $t9, %lo(func_00463804) # addiu $t9, $t9, 0x3804
/* 00465010 24050003 */  li    $a1, 3
/* 00465014 0320F809 */  jalr  $t9
/* 00465018 01001025 */   move  $v0, $t0
/* 0046501C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00465020 1040002A */  beqz  $v0, .L004650CC
/* 00465024 00000000 */   nop   
/* 00465028 8F898070 */  lw    $t1, %got(RO_1001CB98)($gp)
/* 0046502C 03A0C025 */  move  $t8, $sp
/* 00465030 2529CB98 */  addiu $t1, %lo(RO_1001CB98) # addiu $t1, $t1, -0x3468
/* 00465034 252B0048 */  addiu $t3, $t1, 0x48
.L00465038:
/* 00465038 89210000 */  lwl   $at, ($t1)
/* 0046503C 99210003 */  lwr   $at, 3($t1)
/* 00465040 2529000C */  addiu $t1, $t1, 0xc
/* 00465044 AB010000 */  swl   $at, ($t8)
/* 00465048 BB010003 */  swr   $at, 3($t8)
/* 0046504C 8921FFF8 */  lwl   $at, -8($t1)
/* 00465050 9921FFFB */  lwr   $at, -5($t1)
/* 00465054 2718000C */  addiu $t8, $t8, 0xc
/* 00465058 AB01FFF8 */  swl   $at, -8($t8)
/* 0046505C BB01FFFB */  swr   $at, -5($t8)
/* 00465060 8921FFFC */  lwl   $at, -4($t1)
/* 00465064 9921FFFF */  lwr   $at, -1($t1)
/* 00465068 00000000 */  nop   
/* 0046506C AB01FFFC */  swl   $at, -4($t8)
/* 00465070 152BFFF1 */  bne   $t1, $t3, .L00465038
/* 00465074 BB01FFFF */   swr   $at, -1($t8)
/* 00465078 89210000 */  lwl   $at, ($t1)
/* 0046507C 99210003 */  lwr   $at, 3($t1)
/* 00465080 8F8D8C68 */  lw     $t5, %got(emptystring)($gp)
/* 00465084 AB010000 */  swl   $at, ($t8)
/* 00465088 BB010003 */  swr   $at, 3($t8)
/* 0046508C 892B0004 */  lwl   $t3, 4($t1)
/* 00465090 992B0007 */  lwr   $t3, 7($t1)
/* 00465094 240F0002 */  li    $t7, 2
/* 00465098 AB0B0004 */  swl   $t3, 4($t8)
/* 0046509C BB0B0007 */  swr   $t3, 7($t8)
/* 004650A0 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 004650A4 8DAD0000 */  lw    $t5, ($t5)
/* 004650A8 8FA7000C */  lw    $a3, 0xc($sp)
/* 004650AC 8FA60008 */  lw    $a2, 8($sp)
/* 004650B0 8FA50004 */  lw    $a1, 4($sp)
/* 004650B4 8FA40000 */  lw    $a0, ($sp)
/* 004650B8 AFAF0054 */  sw    $t7, 0x54($sp)
/* 004650BC 0320F809 */  jalr  $t9
/* 004650C0 AFAD0050 */   sw    $t5, 0x50($sp)
/* 004650C4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004650C8 00000000 */  nop   
.L004650CC:
/* 004650CC 8F8A8B04 */  lw     $t2, %got(isa)($gp)
/* 004650D0 24190004 */  li    $t9, 4
/* 004650D4 914A0000 */  lbu   $t2, ($t2)
/* 004650D8 AFB90014 */  sw    $t9, 0x14($sp)
/* 004650DC 8F998614 */  lw    $t9, %call16(genfpmultiple)($gp)
/* 004650E0 93AE00DE */  lbu   $t6, 0xde($sp)
/* 004650E4 2D4C0002 */  sltiu $t4, $t2, 2
/* 004650E8 398C0001 */  xori  $t4, $t4, 1
/* 004650EC 97A400E2 */  lhu   $a0, 0xe2($sp)
/* 004650F0 93A500DF */  lbu   $a1, 0xdf($sp)
/* 004650F4 8FA600D4 */  lw    $a2, 0xd4($sp)
/* 004650F8 8FA700D8 */  lw    $a3, 0xd8($sp)
/* 004650FC AFAC0018 */  sw    $t4, 0x18($sp)
/* 00465100 AFA0001C */  sw    $zero, 0x1c($sp)
/* 00465104 0320F809 */  jalr  $t9
/* 00465108 AFAE0010 */   sw    $t6, 0x10($sp)
/* 0046510C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00465110 100000A7 */  b     .L004653B0
/* 00465114 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00465118:
/* 00465118 8F99802C */  lw    $t9, %got(func_00462320)($gp)
/* 0046511C 93AB00DE */  lbu   $t3, 0xde($sp)
/* 00465120 97A400E2 */  lhu   $a0, 0xe2($sp)
/* 00465124 93A500DF */  lbu   $a1, 0xdf($sp)
/* 00465128 8FA600D4 */  lw    $a2, 0xd4($sp)
/* 0046512C 8FA700D8 */  lw    $a3, 0xd8($sp)
/* 00465130 24090048 */  li    $t1, 72
/* 00465134 27392320 */  addiu $t9, %lo(func_00462320) # addiu $t9, $t9, 0x2320
/* 00465138 AFA90014 */  sw    $t1, 0x14($sp)
/* 0046513C AFA00018 */  sw    $zero, 0x18($sp)
/* 00465140 01001025 */  move  $v0, $t0
/* 00465144 0320F809 */  jalr  $t9
/* 00465148 AFAB0010 */   sw    $t3, 0x10($sp)
/* 0046514C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00465150 10000097 */  b     .L004653B0
/* 00465154 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00465158:
/* 00465158 8F998578 */  lw    $t9, %call16(parse_dli_dla)($gp)
/* 0046515C 00000000 */  nop   
/* 00465160 0320F809 */  jalr  $t9
/* 00465164 00000000 */   nop   
/* 00465168 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046516C 10000090 */  b     .L004653B0
/* 00465170 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00465174:
/* 00465174 8F828B04 */  lw     $v0, %got(isa)($gp)
/* 00465178 00000000 */  nop   
/* 0046517C 90420000 */  lbu   $v0, ($v0)
/* 00465180 00000000 */  nop   
/* 00465184 2C410003 */  sltiu $at, $v0, 3
/* 00465188 1020000C */  beqz  $at, .L004651BC
/* 0046518C 2C410002 */   sltiu $at, $v0, 2
/* 00465190 8F998618 */  lw    $t9, %call16(enforce_destreg)($gp)
/* 00465194 93A400DF */  lbu   $a0, 0xdf($sp)
/* 00465198 0320F809 */  jalr  $t9
/* 0046519C 24050002 */   li    $a1, 2
/* 004651A0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004651A4 00000000 */  nop   
/* 004651A8 8F828B04 */  lw     $v0, %got(isa)($gp)
/* 004651AC 00000000 */  nop   
/* 004651B0 90420000 */  lbu   $v0, ($v0)
/* 004651B4 00000000 */  nop   
/* 004651B8 2C410002 */  sltiu $at, $v0, 2
.L004651BC:
/* 004651BC 10200072 */  beqz  $at, .L00465388
/* 004651C0 93AC00DE */   lbu   $t4, 0xde($sp)
/* 004651C4 8F988070 */  lw    $t8, %got(RO_1001CB48)($gp)
/* 004651C8 03A07025 */  move  $t6, $sp
/* 004651CC 2718CB48 */  addiu $t8, %lo(RO_1001CB48) # addiu $t8, $t8, -0x34b8
/* 004651D0 270F0048 */  addiu $t7, $t8, 0x48
.L004651D4:
/* 004651D4 8B010000 */  lwl   $at, ($t8)
/* 004651D8 9B010003 */  lwr   $at, 3($t8)
/* 004651DC 2718000C */  addiu $t8, $t8, 0xc
/* 004651E0 A9C10000 */  swl   $at, ($t6)
/* 004651E4 B9C10003 */  swr   $at, 3($t6)
/* 004651E8 8B01FFF8 */  lwl   $at, -8($t8)
/* 004651EC 9B01FFFB */  lwr   $at, -5($t8)
/* 004651F0 25CE000C */  addiu $t6, $t6, 0xc
/* 004651F4 A9C1FFF8 */  swl   $at, -8($t6)
/* 004651F8 B9C1FFFB */  swr   $at, -5($t6)
/* 004651FC 8B01FFFC */  lwl   $at, -4($t8)
/* 00465200 9B01FFFF */  lwr   $at, -1($t8)
/* 00465204 00000000 */  nop   
/* 00465208 A9C1FFFC */  swl   $at, -4($t6)
/* 0046520C 170FFFF1 */  bne   $t8, $t7, .L004651D4
/* 00465210 B9C1FFFF */   swr   $at, -1($t6)
/* 00465214 8B010000 */  lwl   $at, ($t8)
/* 00465218 9B010003 */  lwr   $at, 3($t8)
/* 0046521C 8F998C68 */  lw     $t9, %got(emptystring)($gp)
/* 00465220 A9C10000 */  swl   $at, ($t6)
/* 00465224 B9C10003 */  swr   $at, 3($t6)
/* 00465228 8B0F0004 */  lwl   $t7, 4($t8)
/* 0046522C 9B0F0007 */  lwr   $t7, 7($t8)
/* 00465230 240A0001 */  li    $t2, 1
/* 00465234 A9CF0004 */  swl   $t7, 4($t6)
/* 00465238 B9CF0007 */  swr   $t7, 7($t6)
/* 0046523C 8F390000 */  lw    $t9, ($t9)
/* 00465240 8FA7000C */  lw    $a3, 0xc($sp)
/* 00465244 AFB90050 */  sw    $t9, 0x50($sp)
/* 00465248 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0046524C 8FA60008 */  lw    $a2, 8($sp)
/* 00465250 8FA50004 */  lw    $a1, 4($sp)
/* 00465254 8FA40000 */  lw    $a0, ($sp)
/* 00465258 0320F809 */  jalr  $t9
/* 0046525C AFAA0054 */   sw    $t2, 0x54($sp)
/* 00465260 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00465264 10000052 */  b     .L004653B0
/* 00465268 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L0046526C:
/* 0046526C 97AC00E2 */  lhu   $t4, 0xe2($sp)
/* 00465270 97A900E2 */  lhu   $t1, 0xe2($sp)
/* 00465274 2D81007C */  sltiu $at, $t4, 0x7c
/* 00465278 14200012 */  bnez  $at, .L004652C4
/* 0046527C 2D81014E */   sltiu $at, $t4, 0x14e
/* 00465280 14200007 */  bnez  $at, .L004652A0
/* 00465284 2D810167 */   sltiu $at, $t4, 0x167
/* 00465288 14200039 */  bnez  $at, .L00465370
/* 0046528C 24010173 */   li    $at, 371
/* 00465290 1181FFA1 */  beq   $t4, $at, .L00465118
/* 00465294 00000000 */   nop   
/* 00465298 1000003B */  b     .L00465388
/* 0046529C 93AC00DE */   lbu   $t4, 0xde($sp)
.L004652A0:
/* 004652A0 97AB00E2 */  lhu   $t3, 0xe2($sp)
/* 004652A4 97B900E2 */  lhu   $t9, 0xe2($sp)
/* 004652A8 2D6100D3 */  sltiu $at, $t3, 0xd3
/* 004652AC 1020002B */  beqz  $at, .L0046535C
/* 004652B0 2D6100CE */   sltiu $at, $t3, 0xce
/* 004652B4 1020FF98 */  beqz  $at, .L00465118
/* 004652B8 00000000 */   nop   
/* 004652BC 10000032 */  b     .L00465388
/* 004652C0 93AC00DE */   lbu   $t4, 0xde($sp)
.L004652C4:
/* 004652C4 2D21004D */  sltiu $at, $t1, 0x4d
/* 004652C8 1420000F */  bnez  $at, .L00465308
/* 004652CC 24010057 */   li    $at, 87
/* 004652D0 1121FE16 */  beq   $t1, $at, .L00464B2C
/* 004652D4 24040002 */   li    $a0, 2
/* 004652D8 252DFF94 */  addiu $t5, $t1, -0x6c
/* 004652DC 2DA10010 */  sltiu $at, $t5, 0x10
/* 004652E0 10200028 */  beqz  $at, .L00465384
/* 004652E4 01201825 */   move  $v1, $t1
/* 004652E8 8F818070 */  lw    $at, %got(jtbl_1001CD38)($gp)
/* 004652EC 000D6880 */  sll   $t5, $t5, 2
/* 004652F0 002D0821 */  addu  $at, $at, $t5
/* 004652F4 8C2DCD38 */  lw    $t5, %lo(jtbl_1001CD38)($at)
/* 004652F8 00000000 */  nop   
/* 004652FC 01BC6821 */  addu  $t5, $t5, $gp
/* 00465300 01A00008 */  jr    $t5
/* 00465304 00000000 */   nop   
.L00465308:
/* 00465308 97AF00E2 */  lhu   $t7, 0xe2($sp)
/* 0046530C 97AE00E2 */  lhu   $t6, 0xe2($sp)
/* 00465310 2DE1002B */  sltiu $at, $t7, 0x2b
/* 00465314 1020000C */  beqz  $at, .L00465348
/* 00465318 25F8FFD9 */   addiu $t8, $t7, -0x27
/* 0046531C 2F010004 */  sltiu $at, $t8, 4
/* 00465320 10200019 */  beqz  $at, .L00465388
/* 00465324 93AC00DE */   lbu   $t4, 0xde($sp)
/* 00465328 8F818070 */  lw    $at, %got(jtbl_1001CD28)($gp)
/* 0046532C 0018C080 */  sll   $t8, $t8, 2
/* 00465330 00380821 */  addu  $at, $at, $t8
/* 00465334 8C38CD28 */  lw    $t8, %lo(jtbl_1001CD28)($at)
/* 00465338 00000000 */  nop   
/* 0046533C 031CC021 */  addu  $t8, $t8, $gp
/* 00465340 03000008 */  jr    $t8
/* 00465344 00000000 */   nop   
.L00465348:
/* 00465348 2401004C */  li    $at, 76
/* 0046534C 11C1FDEF */  beq   $t6, $at, .L00464B0C
/* 00465350 24040001 */   li    $a0, 1
/* 00465354 1000000C */  b     .L00465388
/* 00465358 93AC00DE */   lbu   $t4, 0xde($sp)
.L0046535C:
/* 0046535C 2401014D */  li    $at, 333
/* 00465360 1321FF7D */  beq   $t9, $at, .L00465158
/* 00465364 00000000 */   nop   
/* 00465368 10000007 */  b     .L00465388
/* 0046536C 93AC00DE */   lbu   $t4, 0xde($sp)
.L00465370:
/* 00465370 97AA00E2 */  lhu   $t2, 0xe2($sp)
/* 00465374 00000000 */  nop   
/* 00465378 2D410165 */  sltiu $at, $t2, 0x165
/* 0046537C 1020FF66 */  beqz  $at, .L00465118
/* 00465380 00000000 */   nop   
.L00465384:
/* 00465384 93AC00DE */  lbu   $t4, 0xde($sp)
.L00465388:
/* 00465388 8F99861C */  lw    $t9, %call16(do_parseafra)($gp)
/* 0046538C 97A400E2 */  lhu   $a0, 0xe2($sp)
/* 00465390 93A500DF */  lbu   $a1, 0xdf($sp)
/* 00465394 8FA600D4 */  lw    $a2, 0xd4($sp)
/* 00465398 8FA700D8 */  lw    $a3, 0xd8($sp)
/* 0046539C 0320F809 */  jalr  $t9
/* 004653A0 AFAC0010 */   sw    $t4, 0x10($sp)
/* 004653A4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004653A8 00000000 */  nop   
/* 004653AC 8FBF00B4 */  lw    $ra, 0xb4($sp)
.L004653B0:
/* 004653B0 27BD00E0 */  addiu $sp, $sp, 0xe0
/* 004653B4 03E00008 */  jr    $ra
/* 004653B8 00000000 */   nop   

    .type parseafra, @function
    .size parseafra, .-parseafra
    .end parseafra

    .type func_004653BC, @function
func_004653BC:
    # 004656D4 parseafri_fp
/* 004653BC 3C1C0FBC */  .cpload $t9
/* 004653C0 279C4EA4 */  
/* 004653C4 0399E021 */  
/* 004653C8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 004653CC AFA40030 */  sw    $a0, 0x30($sp)
/* 004653D0 AFA7003C */  sw    $a3, 0x3c($sp)
/* 004653D4 97A70032 */  lhu   $a3, 0x32($sp)
/* 004653D8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 004653DC AFBC0028 */  sw    $gp, 0x28($sp)
/* 004653E0 14C00061 */  bnez  $a2, .L00465568
/* 004653E4 AFA60038 */   sw    $a2, 0x38($sp)
/* 004653E8 8FAF003C */  lw    $t7, 0x3c($sp)
/* 004653EC 240100FD */  li    $at, 253
/* 004653F0 15E0005D */  bnez  $t7, .L00465568
/* 004653F4 00000000 */   nop   
/* 004653F8 14E10041 */  bne   $a3, $at, .L00465500
/* 004653FC 24040090 */   li    $a0, 144
/* 00465400 8F988B04 */  lw     $t8, %got(isa)($gp)
/* 00465404 00000000 */  nop   
/* 00465408 93180000 */  lbu   $t8, ($t8)
/* 0046540C 00000000 */  nop   
/* 00465410 2F010002 */  sltiu $at, $t8, 2
/* 00465414 1420003B */  bnez  $at, .L00465504
/* 00465418 8FAD0048 */   lw    $t5, 0x48($sp)
/* 0046541C 8F998CC0 */  lw     $t9, %got(dwopcode)($gp)
/* 00465420 8FA80048 */  lw    $t0, 0x48($sp)
/* 00465424 93390000 */  lbu   $t9, ($t9)
/* 00465428 24040099 */  li    $a0, 153
/* 0046542C 1320000A */  beqz  $t9, .L00465458
/* 00465430 27AB0038 */   addiu $t3, $sp, 0x38
/* 00465434 91060008 */  lbu   $a2, 8($t0)
/* 00465438 8F998488 */  lw    $t9, %call16(emitmvcoproc)($gp)
/* 0046543C 00064E00 */  sll   $t1, $a2, 0x18
/* 00465440 00093642 */  srl   $a2, $t1, 0x19
/* 00465444 0320F809 */  jalr  $t9
/* 00465448 00002825 */   move  $a1, $zero
/* 0046544C 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00465450 1000009D */  b     .L004656C8
/* 00465454 8FBF002C */   lw    $ra, 0x2c($sp)
.L00465458:
/* 00465458 8D610000 */  lw    $at, ($t3)
/* 0046545C 8F9984B4 */  lw    $t9, %call16(emit_pool_const)($gp)
/* 00465460 AFA10000 */  sw    $at, ($sp)
/* 00465464 8D6D0004 */  lw    $t5, 4($t3)
/* 00465468 8FA40000 */  lw    $a0, ($sp)
/* 0046546C AFAD0004 */  sw    $t5, 4($sp)
/* 00465470 8D660008 */  lw    $a2, 8($t3)
/* 00465474 8FA50004 */  lw    $a1, 4($sp)
/* 00465478 AFA60008 */  sw    $a2, 8($sp)
/* 0046547C 8D67000C */  lw    $a3, 0xc($t3)
/* 00465480 24180006 */  li    $t8, 6
/* 00465484 AFA7000C */  sw    $a3, 0xc($sp)
/* 00465488 904EFFC3 */  lbu   $t6, -0x3d($v0)
/* 0046548C 00000000 */  nop   
/* 00465490 AFAE0010 */  sw    $t6, 0x10($sp)
/* 00465494 904FFFC2 */  lbu   $t7, -0x3e($v0)
/* 00465498 AFB80018 */  sw    $t8, 0x18($sp)
/* 0046549C 0320F809 */  jalr  $t9
/* 004654A0 AFAF0014 */   sw    $t7, 0x14($sp)
/* 004654A4 8FB90048 */  lw    $t9, 0x48($sp)
/* 004654A8 8FBC0028 */  lw    $gp, 0x28($sp)
/* 004654AC 93250008 */  lbu   $a1, 8($t9)
/* 004654B0 8F8C8B04 */  lw     $t4, %got(isa)($gp)
/* 004654B4 8F868D14 */  lw     $a2, %got(d_pool_symbol)($gp)
/* 004654B8 918C0000 */  lbu   $t4, ($t4)
/* 004654BC 8F998614 */  lw    $t9, %call16(genfpmultiple)($gp)
/* 004654C0 2D8B0002 */  sltiu $t3, $t4, 2
/* 004654C4 396B0001 */  xori  $t3, $t3, 1
/* 004654C8 240A0002 */  li    $t2, 2
/* 004654CC 00054600 */  sll   $t0, $a1, 0x18
/* 004654D0 8CC60000 */  lw    $a2, ($a2)
/* 004654D4 00082E42 */  srl   $a1, $t0, 0x19
/* 004654D8 AFAA0014 */  sw    $t2, 0x14($sp)
/* 004654DC AFAB0018 */  sw    $t3, 0x18($sp)
/* 004654E0 AFA0001C */  sw    $zero, 0x1c($sp)
/* 004654E4 AFA00010 */  sw    $zero, 0x10($sp)
/* 004654E8 24040077 */  li    $a0, 119
/* 004654EC 0320F809 */  jalr  $t9
/* 004654F0 00403825 */   move  $a3, $v0
/* 004654F4 8FBC0028 */  lw    $gp, 0x28($sp)
/* 004654F8 10000073 */  b     .L004656C8
/* 004654FC 8FBF002C */   lw    $ra, 0x2c($sp)
.L00465500:
/* 00465500 8FAD0048 */  lw    $t5, 0x48($sp)
.L00465504:
/* 00465504 8F998488 */  lw    $t9, %call16(emitmvcoproc)($gp)
/* 00465508 91A60008 */  lbu   $a2, 8($t5)
/* 0046550C A7A70032 */  sh    $a3, 0x32($sp)
/* 00465510 00067600 */  sll   $t6, $a2, 0x18
/* 00465514 000E3642 */  srl   $a2, $t6, 0x19
/* 00465518 0320F809 */  jalr  $t9
/* 0046551C 00002825 */   move  $a1, $zero
/* 00465520 97A70032 */  lhu   $a3, 0x32($sp)
/* 00465524 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00465528 240100FD */  li    $at, 253
/* 0046552C 14E10066 */  bne   $a3, $at, .L004656C8
/* 00465530 8FBF002C */   lw    $ra, 0x2c($sp)
/* 00465534 8FB80048 */  lw    $t8, 0x48($sp)
/* 00465538 24040090 */  li    $a0, 144
/* 0046553C 93060008 */  lbu   $a2, 8($t8)
/* 00465540 00002825 */  move  $a1, $zero
/* 00465544 0006CE00 */  sll   $t9, $a2, 0x18
/* 00465548 00194642 */  srl   $t0, $t9, 0x19
/* 0046554C 8F998488 */  lw    $t9, %call16(emitmvcoproc)($gp)
/* 00465550 25060001 */  addiu $a2, $t0, 1
/* 00465554 0320F809 */  jalr  $t9
/* 00465558 00000000 */   nop   
/* 0046555C 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00465560 10000059 */  b     .L004656C8
/* 00465564 8FBF002C */   lw    $ra, 0x2c($sp)
.L00465568:
/* 00465568 240100FC */  li    $at, 252
/* 0046556C 14E1002C */  bne   $a3, $at, .L00465620
/* 00465570 27AC0038 */   addiu $t4, $sp, 0x38
/* 00465574 27A90038 */  addiu $t1, $sp, 0x38
/* 00465578 8D210000 */  lw    $at, ($t1)
/* 0046557C 8F9984B4 */  lw    $t9, %call16(emit_pool_const)($gp)
/* 00465580 AFA10000 */  sw    $at, ($sp)
/* 00465584 8D2C0004 */  lw    $t4, 4($t1)
/* 00465588 8FA40000 */  lw    $a0, ($sp)
/* 0046558C AFAC0004 */  sw    $t4, 4($sp)
/* 00465590 8D260008 */  lw    $a2, 8($t1)
/* 00465594 8FA50004 */  lw    $a1, 4($sp)
/* 00465598 AFA60008 */  sw    $a2, 8($sp)
/* 0046559C 8D27000C */  lw    $a3, 0xc($t1)
/* 004655A0 240E0005 */  li    $t6, 5
/* 004655A4 AFA7000C */  sw    $a3, 0xc($sp)
/* 004655A8 904BFFC3 */  lbu   $t3, -0x3d($v0)
/* 004655AC 00000000 */  nop   
/* 004655B0 AFAB0010 */  sw    $t3, 0x10($sp)
/* 004655B4 904DFFC2 */  lbu   $t5, -0x3e($v0)
/* 004655B8 AFAE0018 */  sw    $t6, 0x18($sp)
/* 004655BC 0320F809 */  jalr  $t9
/* 004655C0 AFAD0014 */   sw    $t5, 0x14($sp)
/* 004655C4 8FBC0028 */  lw    $gp, 0x28($sp)
/* 004655C8 8FAF0048 */  lw    $t7, 0x48($sp)
/* 004655CC 8F8A8B04 */  lw     $t2, %got(isa)($gp)
/* 004655D0 91E50008 */  lbu   $a1, 8($t7)
/* 004655D4 914A0000 */  lbu   $t2, ($t2)
/* 004655D8 8F868D10 */  lw     $a2, %got(s_pool_symbol)($gp)
/* 004655DC 8F998614 */  lw    $t9, %call16(genfpmultiple)($gp)
/* 004655E0 2D490002 */  sltiu $t1, $t2, 2
/* 004655E4 39290001 */  xori  $t1, $t1, 1
/* 004655E8 24080001 */  li    $t0, 1
/* 004655EC 0005C600 */  sll   $t8, $a1, 0x18
/* 004655F0 8CC60000 */  lw    $a2, ($a2)
/* 004655F4 00182E42 */  srl   $a1, $t8, 0x19
/* 004655F8 AFA80014 */  sw    $t0, 0x14($sp)
/* 004655FC AFA90018 */  sw    $t1, 0x18($sp)
/* 00465600 AFA0001C */  sw    $zero, 0x1c($sp)
/* 00465604 AFA00010 */  sw    $zero, 0x10($sp)
/* 00465608 24040076 */  li    $a0, 118
/* 0046560C 0320F809 */  jalr  $t9
/* 00465610 00403825 */   move  $a3, $v0
/* 00465614 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00465618 1000002B */  b     .L004656C8
/* 0046561C 8FBF002C */   lw    $ra, 0x2c($sp)
.L00465620:
/* 00465620 8D810000 */  lw    $at, ($t4)
/* 00465624 8F9984B4 */  lw    $t9, %call16(emit_pool_const)($gp)
/* 00465628 AFA10000 */  sw    $at, ($sp)
/* 0046562C 8D8D0004 */  lw    $t5, 4($t4)
/* 00465630 8FA40000 */  lw    $a0, ($sp)
/* 00465634 AFAD0004 */  sw    $t5, 4($sp)
/* 00465638 8D860008 */  lw    $a2, 8($t4)
/* 0046563C 8FA50004 */  lw    $a1, 4($sp)
/* 00465640 AFA60008 */  sw    $a2, 8($sp)
/* 00465644 8D87000C */  lw    $a3, 0xc($t4)
/* 00465648 24180006 */  li    $t8, 6
/* 0046564C AFA7000C */  sw    $a3, 0xc($sp)
/* 00465650 904EFFC3 */  lbu   $t6, -0x3d($v0)
/* 00465654 00000000 */  nop   
/* 00465658 AFAE0010 */  sw    $t6, 0x10($sp)
/* 0046565C 904FFFC2 */  lbu   $t7, -0x3e($v0)
/* 00465660 AFB80018 */  sw    $t8, 0x18($sp)
/* 00465664 0320F809 */  jalr  $t9
/* 00465668 AFAF0014 */   sw    $t7, 0x14($sp)
/* 0046566C 8FB90048 */  lw    $t9, 0x48($sp)
/* 00465670 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00465674 93250008 */  lbu   $a1, 8($t9)
/* 00465678 8F8B8B04 */  lw     $t3, %got(isa)($gp)
/* 0046567C 8F868D14 */  lw     $a2, %got(d_pool_symbol)($gp)
/* 00465680 916B0000 */  lbu   $t3, ($t3)
/* 00465684 8F998614 */  lw    $t9, %call16(genfpmultiple)($gp)
/* 00465688 2D6C0002 */  sltiu $t4, $t3, 2
/* 0046568C 398C0001 */  xori  $t4, $t4, 1
/* 00465690 24090002 */  li    $t1, 2
/* 00465694 00054600 */  sll   $t0, $a1, 0x18
/* 00465698 8CC60000 */  lw    $a2, ($a2)
/* 0046569C 00082E42 */  srl   $a1, $t0, 0x19
/* 004656A0 AFA90014 */  sw    $t1, 0x14($sp)
/* 004656A4 AFAC0018 */  sw    $t4, 0x18($sp)
/* 004656A8 AFA0001C */  sw    $zero, 0x1c($sp)
/* 004656AC AFA00010 */  sw    $zero, 0x10($sp)
/* 004656B0 24040077 */  li    $a0, 119
/* 004656B4 0320F809 */  jalr  $t9
/* 004656B8 00403825 */   move  $a3, $v0
/* 004656BC 8FBC0028 */  lw    $gp, 0x28($sp)
/* 004656C0 00000000 */  nop   
/* 004656C4 8FBF002C */  lw    $ra, 0x2c($sp)
.L004656C8:
/* 004656C8 27BD0030 */  addiu $sp, $sp, 0x30
/* 004656CC 03E00008 */  jr    $ra
/* 004656D0 00000000 */   nop   

glabel parseafri_fp
    .ent parseafri_fp
    # 004594BC parsestmt
/* 004656D4 3C1C0FBC */  .cpload $t9
/* 004656D8 279C4B8C */  
/* 004656DC 0399E021 */  
/* 004656E0 27BDFEF8 */  addiu $sp, $sp, -0x108
/* 004656E4 AFB000AC */  sw    $s0, 0xac($sp)
/* 004656E8 3090FFFF */  andi  $s0, $a0, 0xffff
/* 004656EC 240100FE */  li    $at, 254
/* 004656F0 AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 004656F4 AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 004656F8 AFA40108 */  sw    $a0, 0x108($sp)
/* 004656FC AFA000EC */  sw    $zero, 0xec($sp)
/* 00465700 AFA000F0 */  sw    $zero, 0xf0($sp)
/* 00465704 AFA000F4 */  sw    $zero, 0xf4($sp)
/* 00465708 AFA000F8 */  sw    $zero, 0xf8($sp)
/* 0046570C AFA000D8 */  sw    $zero, 0xd8($sp)
/* 00465710 1601002A */  bne   $s0, $at, .L004657BC
/* 00465714 AFA000DC */   sw    $zero, 0xdc($sp)
/* 00465718 8F8E8070 */  lw    $t6, %got(RO_1001CE18)($gp)
/* 0046571C 03A0C825 */  move  $t9, $sp
/* 00465720 25CECE18 */  addiu $t6, %lo(RO_1001CE18) # addiu $t6, $t6, -0x31e8
/* 00465724 25D80048 */  addiu $t8, $t6, 0x48
.L00465728:
/* 00465728 89C10000 */  lwl   $at, ($t6)
/* 0046572C 99C10003 */  lwr   $at, 3($t6)
/* 00465730 25CE000C */  addiu $t6, $t6, 0xc
/* 00465734 AB210000 */  swl   $at, ($t9)
/* 00465738 BB210003 */  swr   $at, 3($t9)
/* 0046573C 89C1FFF8 */  lwl   $at, -8($t6)
/* 00465740 99C1FFFB */  lwr   $at, -5($t6)
/* 00465744 2739000C */  addiu $t9, $t9, 0xc
/* 00465748 AB21FFF8 */  swl   $at, -8($t9)
/* 0046574C BB21FFFB */  swr   $at, -5($t9)
/* 00465750 89C1FFFC */  lwl   $at, -4($t6)
/* 00465754 99C1FFFF */  lwr   $at, -1($t6)
/* 00465758 00000000 */  nop   
/* 0046575C AB21FFFC */  swl   $at, -4($t9)
/* 00465760 15D8FFF1 */  bne   $t6, $t8, .L00465728
/* 00465764 BB21FFFF */   swr   $at, -1($t9)
/* 00465768 89C10000 */  lwl   $at, ($t6)
/* 0046576C 99C10003 */  lwr   $at, 3($t6)
/* 00465770 8F888C68 */  lw     $t0, %got(emptystring)($gp)
/* 00465774 AB210000 */  swl   $at, ($t9)
/* 00465778 BB210003 */  swr   $at, 3($t9)
/* 0046577C 89D80004 */  lwl   $t8, 4($t6)
/* 00465780 99D80007 */  lwr   $t8, 7($t6)
/* 00465784 24090001 */  li    $t1, 1
/* 00465788 AB380004 */  swl   $t8, 4($t9)
/* 0046578C BB380007 */  swr   $t8, 7($t9)
/* 00465790 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00465794 8D080000 */  lw    $t0, ($t0)
/* 00465798 8FA7000C */  lw    $a3, 0xc($sp)
/* 0046579C 8FA60008 */  lw    $a2, 8($sp)
/* 004657A0 8FA50004 */  lw    $a1, 4($sp)
/* 004657A4 8FA40000 */  lw    $a0, ($sp)
/* 004657A8 AFA90054 */  sw    $t1, 0x54($sp)
/* 004657AC 0320F809 */  jalr  $t9
/* 004657B0 AFA80050 */   sw    $t0, 0x50($sp)
/* 004657B4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004657B8 241000FD */  li    $s0, 253
.L004657BC:
/* 004657BC 8F8B8D64 */  lw     $t3, %got(binasmfyle)($gp)
/* 004657C0 27AA00EC */  addiu $t2, $sp, 0xec
/* 004657C4 8D6B0000 */  lw    $t3, ($t3)
/* 004657C8 00000000 */  nop   
/* 004657CC 8D610000 */  lw    $at, ($t3)
/* 004657D0 00000000 */  nop   
/* 004657D4 AD410000 */  sw    $at, ($t2)
/* 004657D8 8D6F0004 */  lw    $t7, 4($t3)
/* 004657DC 00000000 */  nop   
/* 004657E0 AD4F0004 */  sw    $t7, 4($t2)
/* 004657E4 8D610008 */  lw    $at, 8($t3)
/* 004657E8 00000000 */  nop   
/* 004657EC AD410008 */  sw    $at, 8($t2)
/* 004657F0 8D6F000C */  lw    $t7, 0xc($t3)
/* 004657F4 00000000 */  nop   
/* 004657F8 AD4F000C */  sw    $t7, 0xc($t2)
/* 004657FC 8F99849C */  lw    $t9, %call16(get_fp_string)($gp)
/* 00465800 8FA400F8 */  lw    $a0, 0xf8($sp)
/* 00465804 0320F809 */  jalr  $t9
/* 00465808 00000000 */   nop   
/* 0046580C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00465810 240100FC */  li    $at, 252
/* 00465814 16010004 */  bne   $s0, $at, .L00465828
/* 00465818 AFA20104 */   sw    $v0, 0x104($sp)
/* 0046581C 2418000D */  li    $t8, 13
/* 00465820 10000003 */  b     .L00465830
/* 00465824 A3B800D3 */   sb    $t8, 0xd3($sp)
.L00465828:
/* 00465828 2402000B */  li    $v0, 11
/* 0046582C A3A200D3 */  sb    $v0, 0xd3($sp)
.L00465830:
/* 00465830 27B900CA */  addiu $t9, $sp, 0xca
/* 00465834 AFB90010 */  sw    $t9, 0x10($sp)
/* 00465838 8F9984A4 */  lw    $t9, %call16(string_to_fpoverlay)($gp)
/* 0046583C 8FA40104 */  lw    $a0, 0x104($sp)
/* 00465840 93A500D3 */  lbu   $a1, 0xd3($sp)
/* 00465844 27A600D8 */  addiu $a2, $sp, 0xd8
/* 00465848 27A700CB */  addiu $a3, $sp, 0xcb
/* 0046584C 0320F809 */  jalr  $t9
/* 00465850 AFA40000 */   sw    $a0, ($sp)
/* 00465854 93A800F4 */  lbu   $t0, 0xf4($sp)
/* 00465858 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0046585C 00084E00 */  sll   $t1, $t0, 0x18
/* 00465860 00096E42 */  srl   $t5, $t1, 0x19
/* 00465864 2DA30020 */  sltiu $v1, $t5, 0x20
/* 00465868 38630001 */  xori  $v1, $v1, 1
/* 0046586C 10600002 */  beqz  $v1, .L00465878
/* 00465870 00000000 */   nop   
/* 00465874 2DA3003F */  sltiu $v1, $t5, 0x3f
.L00465878:
/* 00465878 8F8C8C80 */  lw     $t4, %got(float_li_flag)($gp)
/* 0046587C 306A00FF */  andi  $t2, $v1, 0xff
/* 00465880 918C0000 */  lbu   $t4, ($t4)
/* 00465884 00000000 */  nop   
/* 00465888 11800023 */  beqz  $t4, .L00465918
/* 0046588C 00000000 */   nop   
/* 00465890 11400021 */  beqz  $t2, .L00465918
/* 00465894 240100FC */   li    $at, 252
/* 00465898 16010009 */  bne   $s0, $at, .L004658C0
/* 0046589C 00000000 */   nop   
/* 004658A0 8F99836C */  lw    $t9, %call16(short_s)($gp)
/* 004658A4 8FA400D8 */  lw    $a0, 0xd8($sp)
/* 004658A8 0320F809 */  jalr  $t9
/* 004658AC AFA300C4 */   sw    $v1, 0xc4($sp)
/* 004658B0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004658B4 8FA300C4 */  lw    $v1, 0xc4($sp)
/* 004658B8 10000009 */  b     .L004658E0
/* 004658BC 00403025 */   move  $a2, $v0
.L004658C0:
/* 004658C0 8F998368 */  lw    $t9, %call16(short_d)($gp)
/* 004658C4 8FA400D8 */  lw    $a0, 0xd8($sp)
/* 004658C8 8FA500DC */  lw    $a1, 0xdc($sp)
/* 004658CC 0320F809 */  jalr  $t9
/* 004658D0 AFA300C4 */   sw    $v1, 0xc4($sp)
/* 004658D4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004658D8 8FA300C4 */  lw    $v1, 0xc4($sp)
/* 004658DC 00403025 */  move  $a2, $v0
.L004658E0:
/* 004658E0 24010400 */  li    $at, 1024
/* 004658E4 1041000C */  beq   $v0, $at, .L00465918
/* 004658E8 00105840 */   sll   $t3, $s0, 1
/* 004658EC 8F8F8D1C */  lw     $t7, %got(asm2op)($gp)
/* 004658F0 93A500F4 */  lbu   $a1, 0xf4($sp)
/* 004658F4 8F99845C */  lw    $t9, %call16(emitfli)($gp)
/* 004658F8 016FC021 */  addu  $t8, $t3, $t7
/* 004658FC 97040000 */  lhu   $a0, ($t8)
/* 00465900 00057600 */  sll   $t6, $a1, 0x18
/* 00465904 0320F809 */  jalr  $t9
/* 00465908 000E2E42 */   srl   $a1, $t6, 0x19
/* 0046590C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00465910 100000E1 */  b     .L00465C98
/* 00465914 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00465918:
/* 00465918 8F888C7C */  lw     $t0, %got(fp_pool_flag)($gp)
/* 0046591C 93A500F4 */  lbu   $a1, 0xf4($sp)
/* 00465920 91080000 */  lbu   $t0, ($t0)
/* 00465924 306900FF */  andi  $t1, $v1, 0xff
/* 00465928 1100001F */  beqz  $t0, .L004659A8
/* 0046592C 02002025 */   move  $a0, $s0
/* 00465930 1120001D */  beqz  $t1, .L004659A8
/* 00465934 3A0C00FD */   xori  $t4, $s0, 0xfd
/* 00465938 8F8D8B10 */  lw     $t5, %got(gprelsize)($gp)
/* 0046593C 2D8C0001 */  sltiu $t4, $t4, 1
/* 00465940 8DAD0000 */  lw    $t5, ($t5)
/* 00465944 000C5080 */  sll   $t2, $t4, 2
/* 00465948 254B0004 */  addiu $t3, $t2, 4
/* 0046594C 01AB082A */  slt   $at, $t5, $t3
/* 00465950 14200015 */  bnez  $at, .L004659A8
/* 00465954 27AF00D8 */   addiu $t7, $sp, 0xd8
/* 00465958 8DE10000 */  lw    $at, ($t7)
/* 0046595C 27B900EC */  addiu $t9, $sp, 0xec
/* 00465960 AFA10008 */  sw    $at, 8($sp)
/* 00465964 8DEE0004 */  lw    $t6, 4($t7)
/* 00465968 8FA60008 */  lw    $a2, 8($sp)
/* 0046596C AFAE000C */  sw    $t6, 0xc($sp)
/* 00465970 8DE10008 */  lw    $at, 8($t7)
/* 00465974 8FA7000C */  lw    $a3, 0xc($sp)
/* 00465978 AFA10010 */  sw    $at, 0x10($sp)
/* 0046597C 8DEE000C */  lw    $t6, 0xc($t7)
/* 00465980 AFB90018 */  sw    $t9, 0x18($sp)
/* 00465984 8F99802C */  lw    $t9, %got(func_004653BC)($gp)
/* 00465988 02002025 */  move  $a0, $s0
/* 0046598C 273953BC */  addiu $t9, %lo(func_004653BC) # addiu $t9, $t9, 0x53bc
/* 00465990 27A20108 */  addiu $v0, $sp, 0x108
/* 00465994 0320F809 */  jalr  $t9
/* 00465998 AFAE0014 */   sw    $t6, 0x14($sp)
/* 0046599C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004659A0 100000BD */  b     .L00465C98
/* 004659A4 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L004659A8:
/* 004659A8 8F998370 */  lw    $t9, %call16(generate_as_immediate)($gp)
/* 004659AC 00054600 */  sll   $t0, $a1, 0x18
/* 004659B0 8FA600D8 */  lw    $a2, 0xd8($sp)
/* 004659B4 8FA700DC */  lw    $a3, 0xdc($sp)
/* 004659B8 00082E42 */  srl   $a1, $t0, 0x19
/* 004659BC 0320F809 */  jalr  $t9
/* 004659C0 AFA300C4 */   sw    $v1, 0xc4($sp)
/* 004659C4 8FA300C4 */  lw    $v1, 0xc4($sp)
/* 004659C8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004659CC 144000B1 */  bnez  $v0, .L00465C94
/* 004659D0 306C00FF */   andi  $t4, $v1, 0xff
/* 004659D4 240100FC */  li    $at, 252
/* 004659D8 16010005 */  bne   $s0, $at, .L004659F0
/* 004659DC AFAC00BC */   sw    $t4, 0xbc($sp)
/* 004659E0 24100076 */  li    $s0, 118
/* 004659E4 24030001 */  li    $v1, 1
/* 004659E8 10000014 */  b     .L00465A3C
/* 004659EC 2402000D */   li    $v0, 13
.L004659F0:
/* 004659F0 8F8A8B04 */  lw     $t2, %got(isa)($gp)
/* 004659F4 24100077 */  li    $s0, 119
/* 004659F8 914A0000 */  lbu   $t2, ($t2)
/* 004659FC 24030002 */  li    $v1, 2
/* 00465A00 2D410003 */  sltiu $at, $t2, 3
/* 00465A04 1020000D */  beqz  $at, .L00465A3C
/* 00465A08 2402000B */   li    $v0, 11
/* 00465A0C 93A400F4 */  lbu   $a0, 0xf4($sp)
/* 00465A10 8F998618 */  lw    $t9, %call16(enforce_destreg)($gp)
/* 00465A14 00046E00 */  sll   $t5, $a0, 0x18
/* 00465A18 000D2642 */  srl   $a0, $t5, 0x19
/* 00465A1C 24050002 */  li    $a1, 2
/* 00465A20 A3A200D3 */  sb    $v0, 0xd3($sp)
/* 00465A24 0320F809 */  jalr  $t9
/* 00465A28 AFA300D4 */   sw    $v1, 0xd4($sp)
/* 00465A2C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00465A30 93A200D3 */  lbu   $v0, 0xd3($sp)
/* 00465A34 8FA300D4 */  lw    $v1, 0xd4($sp)
/* 00465A38 00000000 */  nop   
.L00465A3C:
/* 00465A3C 27B800D8 */  addiu $t8, $sp, 0xd8
/* 00465A40 8F010000 */  lw    $at, ($t8)
/* 00465A44 93B900CB */  lbu   $t9, 0xcb($sp)
/* 00465A48 AFA10000 */  sw    $at, ($sp)
/* 00465A4C 8F0E0004 */  lw    $t6, 4($t8)
/* 00465A50 93A800CA */  lbu   $t0, 0xca($sp)
/* 00465A54 AFAE0004 */  sw    $t6, 4($sp)
/* 00465A58 8F060008 */  lw    $a2, 8($t8)
/* 00465A5C 8FA50004 */  lw    $a1, 4($sp)
/* 00465A60 AFA60008 */  sw    $a2, 8($sp)
/* 00465A64 8F07000C */  lw    $a3, 0xc($t8)
/* 00465A68 AFB90010 */  sw    $t9, 0x10($sp)
/* 00465A6C 8F9984B0 */  lw    $t9, %call16(emit_fp_const)($gp)
/* 00465A70 8FA40000 */  lw    $a0, ($sp)
/* 00465A74 27A900CC */  addiu $t1, $sp, 0xcc
/* 00465A78 AFA9001C */  sw    $t1, 0x1c($sp)
/* 00465A7C AFA300D4 */  sw    $v1, 0xd4($sp)
/* 00465A80 AFA20018 */  sw    $v0, 0x18($sp)
/* 00465A84 AFA80014 */  sw    $t0, 0x14($sp)
/* 00465A88 0320F809 */  jalr  $t9
/* 00465A8C AFA7000C */   sw    $a3, 0xc($sp)
/* 00465A90 8FAC00BC */  lw    $t4, 0xbc($sp)
/* 00465A94 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00465A98 8FA300D4 */  lw    $v1, 0xd4($sp)
/* 00465A9C 11800014 */  beqz  $t4, .L00465AF0
/* 00465AA0 AFA200FC */   sw    $v0, 0xfc($sp)
/* 00465AA4 8F8B8B04 */  lw     $t3, %got(isa)($gp)
/* 00465AA8 93A500F4 */  lbu   $a1, 0xf4($sp)
/* 00465AAC 916B0000 */  lbu   $t3, ($t3)
/* 00465AB0 8F998614 */  lw    $t9, %call16(genfpmultiple)($gp)
/* 00465AB4 2D6F0002 */  sltiu $t7, $t3, 2
/* 00465AB8 39EF0001 */  xori  $t7, $t7, 1
/* 00465ABC 00055600 */  sll   $t2, $a1, 0x18
/* 00465AC0 000A2E42 */  srl   $a1, $t2, 0x19
/* 00465AC4 AFAF0018 */  sw    $t7, 0x18($sp)
/* 00465AC8 02002025 */  move  $a0, $s0
/* 00465ACC 00403025 */  move  $a2, $v0
/* 00465AD0 00003825 */  move  $a3, $zero
/* 00465AD4 AFA00010 */  sw    $zero, 0x10($sp)
/* 00465AD8 AFA30014 */  sw    $v1, 0x14($sp)
/* 00465ADC 0320F809 */  jalr  $t9
/* 00465AE0 AFA0001C */   sw    $zero, 0x1c($sp)
/* 00465AE4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00465AE8 10000064 */  b     .L00465C7C
/* 00465AEC 00000000 */   nop   
.L00465AF0:
/* 00465AF0 24010077 */  li    $at, 119
/* 00465AF4 12010043 */  beq   $s0, $at, .L00465C04
/* 00465AF8 03A06825 */   move  $t5, $sp
/* 00465AFC 8F988070 */  lw    $t8, %got(RO_1001CDC8)($gp)
/* 00465B00 03A04025 */  move  $t0, $sp
/* 00465B04 2718CDC8 */  addiu $t8, %lo(RO_1001CDC8) # addiu $t8, $t8, -0x3238
/* 00465B08 27190048 */  addiu $t9, $t8, 0x48
.L00465B0C:
/* 00465B0C 8B010000 */  lwl   $at, ($t8)
/* 00465B10 9B010003 */  lwr   $at, 3($t8)
/* 00465B14 2718000C */  addiu $t8, $t8, 0xc
/* 00465B18 A9010000 */  swl   $at, ($t0)
/* 00465B1C B9010003 */  swr   $at, 3($t0)
/* 00465B20 8B01FFF8 */  lwl   $at, -8($t8)
/* 00465B24 9B01FFFB */  lwr   $at, -5($t8)
/* 00465B28 2508000C */  addiu $t0, $t0, 0xc
/* 00465B2C A901FFF8 */  swl   $at, -8($t0)
/* 00465B30 B901FFFB */  swr   $at, -5($t0)
/* 00465B34 8B01FFFC */  lwl   $at, -4($t8)
/* 00465B38 9B01FFFF */  lwr   $at, -1($t8)
/* 00465B3C 00000000 */  nop   
/* 00465B40 A901FFFC */  swl   $at, -4($t0)
/* 00465B44 1719FFF1 */  bne   $t8, $t9, .L00465B0C
/* 00465B48 B901FFFF */   swr   $at, -1($t0)
/* 00465B4C 8B010000 */  lwl   $at, ($t8)
/* 00465B50 9B010003 */  lwr   $at, 3($t8)
/* 00465B54 8F898070 */  lw    $t1, %got(RO_1001CD78)($gp)
/* 00465B58 A9010000 */  swl   $at, ($t0)
/* 00465B5C B9010003 */  swr   $at, 3($t0)
/* 00465B60 8B190004 */  lwl   $t9, 4($t8)
/* 00465B64 9B190007 */  lwr   $t9, 7($t8)
/* 00465B68 2529CD78 */  addiu $t1, %lo(RO_1001CD78) # addiu $t1, $t1, -0x3288
/* 00465B6C A9190004 */  swl   $t9, 4($t0)
/* 00465B70 252A0048 */  addiu $t2, $t1, 0x48
/* 00465B74 B9190007 */  swr   $t9, 7($t0)
.L00465B78:
/* 00465B78 89210000 */  lwl   $at, ($t1)
/* 00465B7C 99210003 */  lwr   $at, 3($t1)
/* 00465B80 2529000C */  addiu $t1, $t1, 0xc
/* 00465B84 A9A10050 */  swl   $at, 0x50($t5)
/* 00465B88 B9A10053 */  swr   $at, 0x53($t5)
/* 00465B8C 8921FFF8 */  lwl   $at, -8($t1)
/* 00465B90 9921FFFB */  lwr   $at, -5($t1)
/* 00465B94 25AD000C */  addiu $t5, $t5, 0xc
/* 00465B98 A9A10048 */  swl   $at, 0x48($t5)
/* 00465B9C B9A1004B */  swr   $at, 0x4b($t5)
/* 00465BA0 8921FFFC */  lwl   $at, -4($t1)
/* 00465BA4 9921FFFF */  lwr   $at, -1($t1)
/* 00465BA8 00000000 */  nop   
/* 00465BAC A9A1004C */  swl   $at, 0x4c($t5)
/* 00465BB0 152AFFF1 */  bne   $t1, $t2, .L00465B78
/* 00465BB4 B9A1004F */   swr   $at, 0x4f($t5)
/* 00465BB8 89210000 */  lwl   $at, ($t1)
/* 00465BBC 99210003 */  lwr   $at, 3($t1)
/* 00465BC0 240B0860 */  li    $t3, 2144
/* 00465BC4 A9A10050 */  swl   $at, 0x50($t5)
/* 00465BC8 B9A10053 */  swr   $at, 0x53($t5)
/* 00465BCC 892A0004 */  lwl   $t2, 4($t1)
/* 00465BD0 992A0007 */  lwr   $t2, 7($t1)
/* 00465BD4 00000000 */  nop   
/* 00465BD8 A9AA0054 */  swl   $t2, 0x54($t5)
/* 00465BDC B9AA0057 */  swr   $t2, 0x57($t5)
/* 00465BE0 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 00465BE4 8FA7000C */  lw    $a3, 0xc($sp)
/* 00465BE8 8FA60008 */  lw    $a2, 8($sp)
/* 00465BEC 8FA50004 */  lw    $a1, 4($sp)
/* 00465BF0 8FA40000 */  lw    $a0, ($sp)
/* 00465BF4 0320F809 */  jalr  $t9
/* 00465BF8 AFAB00A0 */   sw    $t3, 0xa0($sp)
/* 00465BFC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00465C00 00000000 */  nop   
.L00465C04:
/* 00465C04 8F8F8B04 */  lw     $t7, %got(isa)($gp)
/* 00465C08 93A500F4 */  lbu   $a1, 0xf4($sp)
/* 00465C0C 91EF0000 */  lbu   $t7, ($t7)
/* 00465C10 2404006C */  li    $a0, 108
/* 00465C14 2DE10003 */  sltiu $at, $t7, 3
/* 00465C18 1020000F */  beqz  $at, .L00465C58
/* 00465C1C 00054600 */   sll   $t0, $a1, 0x18
/* 00465C20 93A500F4 */  lbu   $a1, 0xf4($sp)
/* 00465C24 8F998620 */  lw    $t9, %call16(gendouble)($gp)
/* 00465C28 8FA600FC */  lw    $a2, 0xfc($sp)
/* 00465C2C 24180048 */  li    $t8, 72
/* 00465C30 00057600 */  sll   $t6, $a1, 0x18
/* 00465C34 000E2E42 */  srl   $a1, $t6, 0x19
/* 00465C38 AFB80010 */  sw    $t8, 0x10($sp)
/* 00465C3C 2404006C */  li    $a0, 108
/* 00465C40 00003825 */  move  $a3, $zero
/* 00465C44 0320F809 */  jalr  $t9
/* 00465C48 AFA00014 */   sw    $zero, 0x14($sp)
/* 00465C4C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00465C50 1000000A */  b     .L00465C7C
/* 00465C54 00000000 */   nop   
.L00465C58:
/* 00465C58 8F99861C */  lw    $t9, %call16(do_parseafra)($gp)
/* 00465C5C 8FA600FC */  lw    $a2, 0xfc($sp)
/* 00465C60 240A0048 */  li    $t2, 72
/* 00465C64 AFAA0010 */  sw    $t2, 0x10($sp)
/* 00465C68 00082E42 */  srl   $a1, $t0, 0x19
/* 00465C6C 0320F809 */  jalr  $t9
/* 00465C70 00003825 */   move  $a3, $zero
/* 00465C74 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00465C78 00000000 */  nop   
.L00465C7C:
/* 00465C7C 8F998694 */  lw    $t9, %call16(dispose)($gp)
/* 00465C80 8FA40104 */  lw    $a0, 0x104($sp)
/* 00465C84 0320F809 */  jalr  $t9
/* 00465C88 24050004 */   li    $a1, 4
/* 00465C8C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00465C90 00000000 */  nop   
.L00465C94:
/* 00465C94 8FBF00B4 */  lw    $ra, 0xb4($sp)
.L00465C98:
/* 00465C98 8FB000AC */  lw    $s0, 0xac($sp)
/* 00465C9C 03E00008 */  jr    $ra
/* 00465CA0 27BD0108 */   addiu $sp, $sp, 0x108

/* 00465CA4 00000000 */  nop   
/* 00465CA8 00000000 */  nop   
/* 00465CAC 00000000 */  nop   
    .type parseafri_fp, @function
    .size parseafri_fp, .-parseafri_fp
    .end parseafri_fp
)"");
