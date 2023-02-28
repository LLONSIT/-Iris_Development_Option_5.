__asm__(R""(
.macro glabel label
    .global \label
    .balign 4
    \label:
.endm




.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.text
glabel parse_number
    .ent parse_number
    # 0040F3A8 yylex
/* 0040F148 3C1C0FC0 */  .cpload $t9
/* 0040F14C 279CB6D8 */  
/* 0040F150 0399E021 */  
/* 0040F154 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0040F158 AFB00014 */  sw    $s0, 0x14($sp)
/* 0040F15C 8F90805C */  lw    $s0, %got(B_10002CF0)($gp)
/* 0040F160 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0040F164 8E102CF0 */  lw    $s0, %lo(B_10002CF0)($s0)
/* 0040F168 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0040F16C AFA40038 */  sw    $a0, 0x38($sp)
/* 0040F170 00003825 */  move  $a3, $zero
/* 0040F174 2409000A */  li    $t1, 10
/* 0040F178 00804025 */  move  $t0, $a0
/* 0040F17C 18800011 */  blez  $a0, .LABEL_0040F1C4
/* 0040F180 00001025 */   move  $v0, $zero
/* 0040F184 02001825 */  move  $v1, $s0
/* 0040F188 2404002E */  li    $a0, 46
.LABEL_0040F18C:
/* 0040F18C 906F0000 */  lbu   $t7, ($v1)
/* 0040F190 24420001 */  addiu $v0, $v0, 1
/* 0040F194 148F0009 */  bne   $a0, $t7, .LABEL_0040F1BC
/* 0040F198 0048082A */   slt   $at, $v0, $t0
/* 0040F19C 8F84804C */  lw    $a0, %got(RO_100021F0)($gp)
/* 0040F1A0 8F998268 */  lw    $t9, %call16(yyerror)($gp)
/* 0040F1A4 248421F0 */  addiu $a0, %lo(RO_100021F0) # addiu $a0, $a0, 0x21f0
/* 0040F1A8 0320F809 */  jalr  $t9
/* 0040F1AC 00000000 */   nop   
/* 0040F1B0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F1B4 10000078 */  b     .LABEL_0040F398
/* 0040F1B8 24020104 */   li    $v0, 260
.LABEL_0040F1BC:
/* 0040F1BC 1420FFF3 */  bnez  $at, .LABEL_0040F18C
/* 0040F1C0 24630001 */   addiu $v1, $v1, 1
.LABEL_0040F1C4:
/* 0040F1C4 8FB80038 */  lw    $t8, 0x38($sp)
/* 0040F1C8 8F8A8374 */  lw     $t2, %got(yylval)($gp)
/* 0040F1CC 2B010003 */  slti  $at, $t8, 3
/* 0040F1D0 14200025 */  bnez  $at, .LABEL_0040F268
/* 0040F1D4 AD400004 */   sw    $zero, 4($t2)
/* 0040F1D8 8F85804C */  lw    $a1, %got(RO_10002228)($gp)
/* 0040F1DC 8F998090 */  lw    $t9, %call16(strncmp)($gp)
/* 0040F1E0 02002025 */  move  $a0, $s0
/* 0040F1E4 24060002 */  li    $a2, 2
/* 0040F1E8 AFA70030 */  sw    $a3, 0x30($sp)
/* 0040F1EC AFA80024 */  sw    $t0, 0x24($sp)
/* 0040F1F0 AFA90028 */  sw    $t1, 0x28($sp)
/* 0040F1F4 0320F809 */  jalr  $t9
/* 0040F1F8 24A52228 */   addiu $a1, %lo(RO_10002228) # addiu $a1, $a1, 0x2228
/* 0040F1FC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F200 8FA70030 */  lw    $a3, 0x30($sp)
/* 0040F204 8FA80024 */  lw    $t0, 0x24($sp)
/* 0040F208 8FA90028 */  lw    $t1, 0x28($sp)
/* 0040F20C 8F8A8374 */  lw     $t2, %got(yylval)($gp)
/* 0040F210 10400010 */  beqz  $v0, .LABEL_0040F254
/* 0040F214 02002025 */   move  $a0, $s0
/* 0040F218 8F85804C */  lw    $a1, %got(RO_1000222C)($gp)
/* 0040F21C 8F998090 */  lw    $t9, %call16(strncmp)($gp)
/* 0040F220 24060002 */  li    $a2, 2
/* 0040F224 AFA70030 */  sw    $a3, 0x30($sp)
/* 0040F228 AFA80024 */  sw    $t0, 0x24($sp)
/* 0040F22C AFA90028 */  sw    $t1, 0x28($sp)
/* 0040F230 0320F809 */  jalr  $t9
/* 0040F234 24A5222C */   addiu $a1, %lo(RO_1000222C) # addiu $a1, $a1, 0x222c
/* 0040F238 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F23C 8FA70030 */  lw    $a3, 0x30($sp)
/* 0040F240 8FA80024 */  lw    $t0, 0x24($sp)
/* 0040F244 8FA90028 */  lw    $t1, 0x28($sp)
/* 0040F248 8F8A8374 */  lw     $t2, %got(yylval)($gp)
/* 0040F24C 14400006 */  bnez  $v0, .LABEL_0040F268
/* 0040F250 00000000 */   nop   
.LABEL_0040F254:
/* 0040F254 8FA80038 */  lw    $t0, 0x38($sp)
/* 0040F258 26100002 */  addiu $s0, $s0, 2
/* 0040F25C 24090010 */  li    $t1, 16
/* 0040F260 10000006 */  b     .LABEL_0040F27C
/* 0040F264 2508FFFE */   addiu $t0, $t0, -2
.LABEL_0040F268:
/* 0040F268 92190000 */  lbu   $t9, ($s0)
/* 0040F26C 24010030 */  li    $at, 48
/* 0040F270 17210002 */  bne   $t9, $at, .LABEL_0040F27C
/* 0040F274 00000000 */   nop   
/* 0040F278 24090008 */  li    $t1, 8
.LABEL_0040F27C:
/* 0040F27C 19000035 */  blez  $t0, .LABEL_0040F354
/* 0040F280 24030010 */   li    $v1, 16
.LABEL_0040F284:
/* 0040F284 92020000 */  lbu   $v0, ($s0)
/* 0040F288 26100001 */  addiu $s0, $s0, 1
/* 0040F28C 28410041 */  slti  $at, $v0, 0x41
/* 0040F290 14200005 */  bnez  $at, .LABEL_0040F2A8
/* 0040F294 2508FFFF */   addiu $t0, $t0, -1
/* 0040F298 2841005B */  slti  $at, $v0, 0x5b
/* 0040F29C 10200003 */  beqz  $at, .LABEL_0040F2AC
/* 0040F2A0 28410030 */   slti  $at, $v0, 0x30
/* 0040F2A4 24420020 */  addiu $v0, $v0, 0x20
.LABEL_0040F2A8:
/* 0040F2A8 28410030 */  slti  $at, $v0, 0x30
.LABEL_0040F2AC:
/* 0040F2AC 14200008 */  bnez  $at, .LABEL_0040F2D0
/* 0040F2B0 2841003A */   slti  $at, $v0, 0x3a
/* 0040F2B4 10200006 */  beqz  $at, .LABEL_0040F2D0
/* 0040F2B8 00000000 */   nop   
/* 0040F2BC 00E90019 */  multu $a3, $t1
/* 0040F2C0 00003812 */  mflo  $a3
/* 0040F2C4 00E23821 */  addu  $a3, $a3, $v0
/* 0040F2C8 10000020 */  b     .LABEL_0040F34C
/* 0040F2CC 24E7FFD0 */   addiu $a3, $a3, -0x30
.LABEL_0040F2D0:
/* 0040F2D0 1523000A */  bne   $t1, $v1, .LABEL_0040F2FC
/* 0040F2D4 28410061 */   slti  $at, $v0, 0x61
/* 0040F2D8 14200008 */  bnez  $at, .LABEL_0040F2FC
/* 0040F2DC 28410067 */   slti  $at, $v0, 0x67
/* 0040F2E0 10200006 */  beqz  $at, .LABEL_0040F2FC
/* 0040F2E4 00000000 */   nop   
/* 0040F2E8 00E90019 */  multu $a3, $t1
/* 0040F2EC 00003812 */  mflo  $a3
/* 0040F2F0 00E23821 */  addu  $a3, $a3, $v0
/* 0040F2F4 10000015 */  b     .LABEL_0040F34C
/* 0040F2F8 24E7FFA9 */   addiu $a3, $a3, -0x57
.LABEL_0040F2FC:
/* 0040F2FC 24090001 */  li    $t1, 1
/* 0040F300 24060055 */  li    $a2, 85
/* 0040F304 24050075 */  li    $a1, 117
/* 0040F308 2404004C */  li    $a0, 76
/* 0040F30C 2403006C */  li    $v1, 108
.LABEL_0040F310:
/* 0040F310 10430008 */  beq   $v0, $v1, .LABEL_0040F334
/* 0040F314 00000000 */   nop   
/* 0040F318 10440006 */  beq   $v0, $a0, .LABEL_0040F334
/* 0040F31C 00000000 */   nop   
/* 0040F320 10450003 */  beq   $v0, $a1, .LABEL_0040F330
/* 0040F324 00000000 */   nop   
/* 0040F328 1446000A */  bne   $v0, $a2, .LABEL_0040F354
/* 0040F32C 00000000 */   nop   
.LABEL_0040F330:
/* 0040F330 AD490004 */  sw    $t1, 4($t2)
.LABEL_0040F334:
/* 0040F334 11000007 */  beqz  $t0, .LABEL_0040F354
/* 0040F338 00000000 */   nop   
/* 0040F33C 92020000 */  lbu   $v0, ($s0)
/* 0040F340 26100001 */  addiu $s0, $s0, 1
/* 0040F344 1000FFF2 */  b     .LABEL_0040F310
/* 0040F348 2508FFFF */   addiu $t0, $t0, -1
.LABEL_0040F34C:
/* 0040F34C 1D00FFCD */  bgtz  $t0, .LABEL_0040F284
/* 0040F350 00000000 */   nop   
.LABEL_0040F354:
/* 0040F354 11000009 */  beqz  $t0, .LABEL_0040F37C
/* 0040F358 24090001 */   li    $t1, 1
/* 0040F35C 8F84804C */  lw    $a0, %got(RO_10002230)($gp)
/* 0040F360 8F998268 */  lw    $t9, %call16(yyerror)($gp)
/* 0040F364 24842230 */  addiu $a0, %lo(RO_10002230) # addiu $a0, $a0, 0x2230
/* 0040F368 0320F809 */  jalr  $t9
/* 0040F36C 00000000 */   nop   
/* 0040F370 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F374 10000008 */  b     .LABEL_0040F398
/* 0040F378 24020104 */   li    $v0, 260
.LABEL_0040F37C:
/* 0040F37C 04E10002 */  bgez  $a3, .LABEL_0040F388
/* 0040F380 00000000 */   nop   
/* 0040F384 AD490004 */  sw    $t1, 4($t2)
.LABEL_0040F388:
/* 0040F388 8F81805C */  lw    $at, %got(B_10002CF0)($gp)
/* 0040F38C 24020101 */  li    $v0, 257
/* 0040F390 AC302CF0 */  sw    $s0, %lo(B_10002CF0)($at)
/* 0040F394 AD470000 */  sw    $a3, ($t2)
.LABEL_0040F398:
/* 0040F398 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0040F39C 8FB00014 */  lw    $s0, 0x14($sp)
/* 0040F3A0 03E00008 */  jr    $ra
/* 0040F3A4 27BD0038 */   addiu $sp, $sp, 0x38

    .type parse_number, @function
    .size parse_number, .-parse_number
    .end parse_number

glabel yylex
    .ent yylex
    # 0040FB60 yyparse
/* 0040F3A8 3C1C0FC0 */  .cpload $t9
/* 0040F3AC 279CB478 */  
/* 0040F3B0 0399E021 */  
/* 0040F3B4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0040F3B8 8F84805C */  lw    $a0, %got(D_1000020C)($gp)
/* 0040F3BC AFB00014 */  sw    $s0, 0x14($sp)
/* 0040F3C0 8F90805C */  lw    $s0, %got(B_10002CF0)($gp)
/* 0040F3C4 8F83805C */  lw    $v1, %got(D_1000020C)($gp)
/* 0040F3C8 8C84020C */  lw    $a0, %lo(D_1000020C)($a0)
/* 0040F3CC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0040F3D0 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0040F3D4 26102CF0 */  addiu $s0, %lo(B_10002CF0) # addiu $s0, $s0, 0x2cf0
/* 0040F3D8 2463020C */  addiu $v1, %lo(D_1000020C) # addiu $v1, $v1, 0x20c
.LABEL_0040F3DC:
/* 0040F3DC 8E090000 */  lw    $t1, ($s0)
/* 0040F3E0 00000000 */  nop   
/* 0040F3E4 912A0000 */  lbu   $t2, ($t1)
/* 0040F3E8 01202825 */  move  $a1, $t1
/* 0040F3EC 10800017 */  beqz  $a0, .LABEL_0040F44C
/* 0040F3F0 01403825 */   move  $a3, $t2
/* 0040F3F4 8F8E805C */  lw    $t6, %got(D_1000020C)($gp)
/* 0040F3F8 00000000 */  nop   
/* 0040F3FC 25CE020C */  addiu $t6, %lo(D_1000020C) # addiu $t6, $t6, 0x20c
/* 0040F400 8DC20000 */  lw    $v0, ($t6)
/* 0040F404 00000000 */  nop   
.LABEL_0040F408:
/* 0040F408 904F0000 */  lbu   $t7, ($v0)
/* 0040F40C 00000000 */  nop   
/* 0040F410 14EF000A */  bne   $a3, $t7, .LABEL_0040F43C
/* 0040F414 00000000 */   nop   
/* 0040F418 90B80001 */  lbu   $t8, 1($a1)
/* 0040F41C 90590001 */  lbu   $t9, 1($v0)
/* 0040F420 00000000 */  nop   
/* 0040F424 17190005 */  bne   $t8, $t9, .LABEL_0040F43C
/* 0040F428 252B0002 */   addiu $t3, $t1, 2
/* 0040F42C AE0B0000 */  sw    $t3, ($s0)
/* 0040F430 8C620004 */  lw    $v0, 4($v1)
/* 0040F434 100000C4 */  b     .LABEL_0040F748
/* 0040F438 8FBF001C */   lw    $ra, 0x1c($sp)
.LABEL_0040F43C:
/* 0040F43C 8C620008 */  lw    $v0, 8($v1)
/* 0040F440 24630008 */  addiu $v1, $v1, 8
/* 0040F444 1440FFF0 */  bnez  $v0, .LABEL_0040F408
/* 0040F448 00000000 */   nop   
.LABEL_0040F44C:
/* 0040F44C 28E1007D */  slti  $at, $a3, 0x7d
/* 0040F450 14200007 */  bnez  $at, .LABEL_0040F470
/* 0040F454 2401007D */   li    $at, 125
/* 0040F458 10E1006E */  beq   $a3, $at, .LABEL_0040F614
/* 0040F45C 2401007E */   li    $at, 126
/* 0040F460 10E1006D */  beq   $a3, $at, .LABEL_0040F618
/* 0040F464 252B0001 */   addiu $t3, $t1, 1
/* 0040F468 10000077 */  b     .LABEL_0040F648
/* 0040F46C 28E10030 */   slti  $at, $a3, 0x30
.LABEL_0040F470:
/* 0040F470 28E1007C */  slti  $at, $a3, 0x7c
/* 0040F474 14200005 */  bnez  $at, .LABEL_0040F48C
/* 0040F478 2401007C */   li    $at, 124
/* 0040F47C 10E10066 */  beq   $a3, $at, .LABEL_0040F618
/* 0040F480 252B0001 */   addiu $t3, $t1, 1
/* 0040F484 10000070 */  b     .LABEL_0040F648
/* 0040F488 28E10030 */   slti  $at, $a3, 0x30
.LABEL_0040F48C:
/* 0040F48C 28E1005F */  slti  $at, $a3, 0x5f
/* 0040F490 14200005 */  bnez  $at, .LABEL_0040F4A8
/* 0040F494 2401007B */   li    $at, 123
/* 0040F498 10E1005F */  beq   $a3, $at, .LABEL_0040F618
/* 0040F49C 252B0001 */   addiu $t3, $t1, 1
/* 0040F4A0 10000069 */  b     .LABEL_0040F648
/* 0040F4A4 28E10030 */   slti  $at, $a3, 0x30
.LABEL_0040F4A8:
/* 0040F4A8 2CE1005F */  sltiu $at, $a3, 0x5f
/* 0040F4AC 10200066 */  beqz  $at, .LABEL_0040F648
/* 0040F4B0 28E10030 */   slti  $at, $a3, 0x30
/* 0040F4B4 8F81804C */  lw    $at, %got(jtbl_10002404)($gp)
/* 0040F4B8 00076080 */  sll   $t4, $a3, 2
/* 0040F4BC 002C0821 */  addu  $at, $at, $t4
/* 0040F4C0 8C2C2404 */  lw    $t4, %lo(jtbl_10002404)($at)
/* 0040F4C4 00000000 */  nop   
/* 0040F4C8 019C6021 */  addu  $t4, $t4, $gp
/* 0040F4CC 01800008 */  jr    $t4
/* 0040F4D0 00000000 */   nop   
.L0040F4D4:
/* 0040F4D4 1000009B */  b     .LABEL_0040F744
/* 0040F4D8 00001025 */   move  $v0, $zero
.L0040F4DC:
/* 0040F4DC 8F83805C */  lw    $v1, %got(D_1000020C)($gp)
/* 0040F4E0 252D0001 */  addiu $t5, $t1, 1
/* 0040F4E4 AE0D0000 */  sw    $t5, ($s0)
/* 0040F4E8 1000FFBC */  b     .LABEL_0040F3DC
/* 0040F4EC 2463020C */   addiu $v1, %lo(D_1000020C) # addiu $v1, $v1, 0x20c
.L0040F4F0:
/* 0040F4F0 8F888354 */  lw     $t0, %got(is_hor_space)($gp)
/* 0040F4F4 91230001 */  lbu   $v1, 1($t1)
/* 0040F4F8 24060001 */  li    $a2, 1
/* 0040F4FC 01031021 */  addu  $v0, $t0, $v1
/* 0040F500 904E0000 */  lbu   $t6, ($v0)
/* 0040F504 25240001 */  addiu $a0, $t1, 1
/* 0040F508 11C00008 */  beqz  $t6, .LABEL_0040F52C
/* 0040F50C 00000000 */   nop   
.LABEL_0040F510:
/* 0040F510 90830001 */  lbu   $v1, 1($a0)
/* 0040F514 24C60001 */  addiu $a2, $a2, 1
/* 0040F518 01031021 */  addu  $v0, $t0, $v1
/* 0040F51C 904F0000 */  lbu   $t7, ($v0)
/* 0040F520 24840001 */  addiu $a0, $a0, 1
/* 0040F524 15E0FFFA */  bnez  $t7, .LABEL_0040F510
/* 0040F528 00000000 */   nop   
.LABEL_0040F52C:
/* 0040F52C 8F988354 */  lw     $t8, %got(is_hor_space)($gp)
/* 0040F530 0126C821 */  addu  $t9, $t1, $a2
/* 0040F534 27180027 */  addiu $t8, $t8, 0x27
/* 0040F538 14580043 */  bne   $v0, $t8, .LABEL_0040F648
/* 0040F53C 28E10030 */   slti  $at, $a3, 0x30
/* 0040F540 AE190000 */  sw    $t9, ($s0)
/* 0040F544 03204825 */  move  $t1, $t9
.L0040F548:
/* 0040F548 252B0001 */  addiu $t3, $t1, 1
/* 0040F54C AE0B0000 */  sw    $t3, ($s0)
/* 0040F550 91670000 */  lbu   $a3, ($t3)
/* 0040F554 256C0001 */  addiu $t4, $t3, 1
/* 0040F558 2401005C */  li    $at, 92
/* 0040F55C 14E10007 */  bne   $a3, $at, .LABEL_0040F57C
/* 0040F560 AE0C0000 */   sw    $t4, ($s0)
/* 0040F564 8F998264 */  lw    $t9, %call16(parse_escape)($gp)
/* 0040F568 02002025 */  move  $a0, $s0
/* 0040F56C 0320F809 */  jalr  $t9
/* 0040F570 00000000 */   nop   
/* 0040F574 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F578 00403825 */  move  $a3, $v0
.LABEL_0040F57C:
/* 0040F57C 8F84804C */  lw    $a0, %got(RO_10002274)($gp)
/* 0040F580 8F998200 */  lw    $t9, %call16(lookup)($gp)
/* 0040F584 24050011 */  li    $a1, 17
/* 0040F588 2406FFFF */  li    $a2, -1
/* 0040F58C AFA70024 */  sw    $a3, 0x24($sp)
/* 0040F590 0320F809 */  jalr  $t9
/* 0040F594 24842274 */   addiu $a0, %lo(RO_10002274) # addiu $a0, $a0, 0x2274
/* 0040F598 8FA70024 */  lw    $a3, 0x24($sp)
/* 0040F59C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F5A0 14400004 */  bnez  $v0, .LABEL_0040F5B4
/* 0040F5A4 000769C3 */   sra   $t5, $a3, 7
/* 0040F5A8 31AE0001 */  andi  $t6, $t5, 1
/* 0040F5AC 15C00005 */  bnez  $t6, .LABEL_0040F5C4
/* 0040F5B0 2401FF00 */   li    $at, -256
.LABEL_0040F5B4:
/* 0040F5B4 8F828374 */  lw     $v0, %got(yylval)($gp)
/* 0040F5B8 30EF00FF */  andi  $t7, $a3, 0xff
/* 0040F5BC 10000004 */  b     .LABEL_0040F5D0
/* 0040F5C0 AC4F0000 */   sw    $t7, ($v0)
.LABEL_0040F5C4:
/* 0040F5C4 8F828374 */  lw     $v0, %got(yylval)($gp)
/* 0040F5C8 00E1C025 */  or    $t8, $a3, $at
/* 0040F5CC AC580000 */  sw    $t8, ($v0)
.LABEL_0040F5D0:
/* 0040F5D0 8E090000 */  lw    $t1, ($s0)
/* 0040F5D4 AC400004 */  sw    $zero, 4($v0)
/* 0040F5D8 91270000 */  lbu   $a3, ($t1)
/* 0040F5DC 24010027 */  li    $at, 39
/* 0040F5E0 25390001 */  addiu $t9, $t1, 1
/* 0040F5E4 10E10009 */  beq   $a3, $at, .LABEL_0040F60C
/* 0040F5E8 AE190000 */   sw    $t9, ($s0)
/* 0040F5EC 8F84804C */  lw    $a0, %got(RO_10002288)($gp)
/* 0040F5F0 8F998268 */  lw    $t9, %call16(yyerror)($gp)
/* 0040F5F4 24842288 */  addiu $a0, %lo(RO_10002288) # addiu $a0, $a0, 0x2288
/* 0040F5F8 0320F809 */  jalr  $t9
/* 0040F5FC 00000000 */   nop   
/* 0040F600 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F604 1000004F */  b     .LABEL_0040F744
/* 0040F608 24020104 */   li    $v0, 260
.LABEL_0040F60C:
/* 0040F60C 1000004D */  b     .LABEL_0040F744
/* 0040F610 24020102 */   li    $v0, 258
.LABEL_0040F614:
/* 0040F614 252B0001 */  addiu $t3, $t1, 1
.LABEL_0040F618:
/* 0040F618 AE0B0000 */  sw    $t3, ($s0)
/* 0040F61C 10000049 */  b     .LABEL_0040F744
/* 0040F620 00E01025 */   move  $v0, $a3
.L0040F624:
/* 0040F624 8F84804C */  lw    $a0, %got(RO_100022AC)($gp)
/* 0040F628 8F998268 */  lw    $t9, %call16(yyerror)($gp)
/* 0040F62C 248422AC */  addiu $a0, %lo(RO_100022AC) # addiu $a0, $a0, 0x22ac
/* 0040F630 0320F809 */  jalr  $t9
/* 0040F634 00000000 */   nop   
/* 0040F638 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F63C 10000041 */  b     .LABEL_0040F744
/* 0040F640 24020104 */   li    $v0, 260
.L0040F644:
/* 0040F644 28E10030 */  slti  $at, $a3, 0x30
.LABEL_0040F648:
/* 0040F648 1420001E */  bnez  $at, .LABEL_0040F6C4
/* 0040F64C 28E1003A */   slti  $at, $a3, 0x3a
/* 0040F650 1020001C */  beqz  $at, .LABEL_0040F6C4
/* 0040F654 00000000 */   nop   
/* 0040F658 8F83834C */  lw     $v1, %got(is_idchar)($gp)
/* 0040F65C 00002025 */  move  $a0, $zero
/* 0040F660 00671021 */  addu  $v0, $v1, $a3
/* 0040F664 904C0000 */  lbu   $t4, ($v0)
/* 0040F668 246D002E */  addiu $t5, $v1, 0x2e
/* 0040F66C 15800003 */  bnez  $t4, .LABEL_0040F67C
/* 0040F670 00000000 */   nop   
/* 0040F674 144D000C */  bne   $v0, $t5, .LABEL_0040F6A8
/* 0040F678 00000000 */   nop   
.LABEL_0040F67C:
/* 0040F67C 24840001 */  addiu $a0, $a0, 1
/* 0040F680 00A47021 */  addu  $t6, $a1, $a0
/* 0040F684 91C70000 */  lbu   $a3, ($t6)
/* 0040F688 8F86834C */  lw     $a2, %got(is_idchar)($gp)
/* 0040F68C 00671021 */  addu  $v0, $v1, $a3
/* 0040F690 904F0000 */  lbu   $t7, ($v0)
/* 0040F694 24C6002E */  addiu $a2, $a2, 0x2e
/* 0040F698 15E0FFF8 */  bnez  $t7, .LABEL_0040F67C
/* 0040F69C 00000000 */   nop   
/* 0040F6A0 1046FFF6 */  beq   $v0, $a2, .LABEL_0040F67C
/* 0040F6A4 00000000 */   nop   
.LABEL_0040F6A8:
/* 0040F6A8 8F99825C */  lw    $t9, %call16(parse_number)($gp)
/* 0040F6AC 00000000 */  nop   
/* 0040F6B0 0320F809 */  jalr  $t9
/* 0040F6B4 00000000 */   nop   
/* 0040F6B8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F6BC 10000022 */  b     .LABEL_0040F748
/* 0040F6C0 8FBF001C */   lw    $ra, 0x1c($sp)
.LABEL_0040F6C4:
/* 0040F6C4 8F988350 */  lw     $t8, %got(is_idstart)($gp)
/* 0040F6C8 00000000 */  nop   
/* 0040F6CC 00F8C821 */  addu  $t9, $a3, $t8
/* 0040F6D0 932B0000 */  lbu   $t3, ($t9)
/* 0040F6D4 00000000 */  nop   
/* 0040F6D8 15600009 */  bnez  $t3, .LABEL_0040F700
/* 0040F6DC 00000000 */   nop   
/* 0040F6E0 8F84804C */  lw    $a0, %got(RO_100022E4)($gp)
/* 0040F6E4 8F998268 */  lw    $t9, %call16(yyerror)($gp)
/* 0040F6E8 248422E4 */  addiu $a0, %lo(RO_100022E4) # addiu $a0, $a0, 0x22e4
/* 0040F6EC 0320F809 */  jalr  $t9
/* 0040F6F0 00000000 */   nop   
/* 0040F6F4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F6F8 10000012 */  b     .LABEL_0040F744
/* 0040F6FC 24020104 */   li    $v0, 260
.LABEL_0040F700:
/* 0040F700 8F83834C */  lw     $v1, %got(is_idchar)($gp)
/* 0040F704 00002025 */  move  $a0, $zero
/* 0040F708 006A6021 */  addu  $t4, $v1, $t2
/* 0040F70C 918D0000 */  lbu   $t5, ($t4)
/* 0040F710 00A01025 */  move  $v0, $a1
/* 0040F714 11A00009 */  beqz  $t5, .LABEL_0040F73C
/* 0040F718 0124C821 */   addu  $t9, $t1, $a0
.LABEL_0040F71C:
/* 0040F71C 904E0001 */  lbu   $t6, 1($v0)
/* 0040F720 24840001 */  addiu $a0, $a0, 1
/* 0040F724 006E7821 */  addu  $t7, $v1, $t6
/* 0040F728 91F80000 */  lbu   $t8, ($t7)
/* 0040F72C 24420001 */  addiu $v0, $v0, 1
/* 0040F730 1700FFFA */  bnez  $t8, .LABEL_0040F71C
/* 0040F734 00000000 */   nop   
/* 0040F738 0124C821 */  addu  $t9, $t1, $a0
.LABEL_0040F73C:
/* 0040F73C AE190000 */  sw    $t9, ($s0)
/* 0040F740 24020103 */  li    $v0, 259
.LABEL_0040F744:
/* 0040F744 8FBF001C */  lw    $ra, 0x1c($sp)
.LABEL_0040F748:
/* 0040F748 8FB00014 */  lw    $s0, 0x14($sp)
/* 0040F74C 03E00008 */  jr    $ra
/* 0040F750 27BD0028 */   addiu $sp, $sp, 0x28

    .type yylex, @function
    .size yylex, .-yylex
    .end yylex

glabel parse_escape
    .ent parse_escape
    # 0040F3A8 yylex
    # 0040F754 parse_escape
/* 0040F754 3C1C0FC0 */  .cpload $t9
/* 0040F758 279CB0CC */  
/* 0040F75C 0399E021 */  
/* 0040F760 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0040F764 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0040F768 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0040F76C 8C820000 */  lw    $v0, ($a0)
/* 0040F770 00803025 */  move  $a2, $a0
/* 0040F774 90430000 */  lbu   $v1, ($v0)
/* 0040F778 244E0001 */  addiu $t6, $v0, 1
/* 0040F77C 2861000B */  slti  $at, $v1, 0xb
/* 0040F780 1420001B */  bnez  $at, .LABEL_0040F7F0
/* 0040F784 AC8E0000 */   sw    $t6, ($a0)
/* 0040F788 28610038 */  slti  $at, $v1, 0x38
/* 0040F78C 1420000D */  bnez  $at, .LABEL_0040F7C4
/* 0040F790 2478FFD0 */   addiu $t8, $v1, -0x30
/* 0040F794 246FFFA2 */  addiu $t7, $v1, -0x5e
/* 0040F798 2DE1001B */  sltiu $at, $t7, 0x1b
/* 0040F79C 10200099 */  beqz  $at, .LABEL_0040FA04
/* 0040F7A0 00601025 */   move  $v0, $v1
/* 0040F7A4 8F81804C */  lw    $at, %got(jtbl_10002580)($gp)
/* 0040F7A8 000F7880 */  sll   $t7, $t7, 2
/* 0040F7AC 002F0821 */  addu  $at, $at, $t7
/* 0040F7B0 8C2F2580 */  lw    $t7, %lo(jtbl_10002580)($at)
/* 0040F7B4 00000000 */  nop   
/* 0040F7B8 01FC7821 */  addu  $t7, $t7, $gp
/* 0040F7BC 01E00008 */  jr    $t7
/* 0040F7C0 00000000 */   nop   
.LABEL_0040F7C4:
/* 0040F7C4 2F010008 */  sltiu $at, $t8, 8
/* 0040F7C8 1020008E */  beqz  $at, .LABEL_0040FA04
/* 0040F7CC 00601025 */   move  $v0, $v1
/* 0040F7D0 8F81804C */  lw    $at, %got(jtbl_100025EC)($gp)
/* 0040F7D4 0018C080 */  sll   $t8, $t8, 2
/* 0040F7D8 00380821 */  addu  $at, $at, $t8
/* 0040F7DC 8C3825EC */  lw    $t8, %lo(jtbl_100025EC)($at)
/* 0040F7E0 00000000 */  nop   
/* 0040F7E4 031CC021 */  addu  $t8, $t8, $gp
/* 0040F7E8 03000008 */  jr    $t8
/* 0040F7EC 00000000 */   nop   
.LABEL_0040F7F0:
/* 0040F7F0 10600017 */  beqz  $v1, .LABEL_0040F850
/* 0040F7F4 2401000A */   li    $at, 10
/* 0040F7F8 10610013 */  beq   $v1, $at, .LABEL_0040F848
/* 0040F7FC 00000000 */   nop   
/* 0040F800 10000080 */  b     .LABEL_0040FA04
/* 0040F804 00601025 */   move  $v0, $v1
.L0040F808:
/* 0040F808 1000007E */  b     .LABEL_0040FA04
/* 0040F80C 24020007 */   li    $v0, 7
.L0040F810:
/* 0040F810 1000007C */  b     .LABEL_0040FA04
/* 0040F814 24020008 */   li    $v0, 8
.L0040F818:
/* 0040F818 1000007A */  b     .LABEL_0040FA04
/* 0040F81C 2402001B */   li    $v0, 27
.L0040F820:
/* 0040F820 10000078 */  b     .LABEL_0040FA04
/* 0040F824 2402000C */   li    $v0, 12
.L0040F828:
/* 0040F828 10000076 */  b     .LABEL_0040FA04
/* 0040F82C 2402000A */   li    $v0, 10
.L0040F830:
/* 0040F830 10000074 */  b     .LABEL_0040FA04
/* 0040F834 2402000D */   li    $v0, 13
.L0040F838:
/* 0040F838 10000072 */  b     .LABEL_0040FA04
/* 0040F83C 24020009 */   li    $v0, 9
.L0040F840:
/* 0040F840 10000070 */  b     .LABEL_0040FA04
/* 0040F844 2402000B */   li    $v0, 11
.LABEL_0040F848:
/* 0040F848 1000006E */  b     .LABEL_0040FA04
/* 0040F84C 2402FFFE */   li    $v0, -2
.LABEL_0040F850:
/* 0040F850 8CD90000 */  lw    $t9, ($a2)
/* 0040F854 00001025 */  move  $v0, $zero
/* 0040F858 2728FFFF */  addiu $t0, $t9, -1
/* 0040F85C 10000069 */  b     .LABEL_0040FA04
/* 0040F860 ACC80000 */   sw    $t0, ($a2)
.L0040F864:
/* 0040F864 8CC20000 */  lw    $v0, ($a2)
/* 0040F868 2401005C */  li    $at, 92
/* 0040F86C 90430000 */  lbu   $v1, ($v0)
/* 0040F870 24490001 */  addiu $t1, $v0, 1
/* 0040F874 14610007 */  bne   $v1, $at, .LABEL_0040F894
/* 0040F878 ACC90000 */   sw    $t1, ($a2)
/* 0040F87C 8F998264 */  lw    $t9, %call16(parse_escape)($gp)
/* 0040F880 00C02025 */  move  $a0, $a2
/* 0040F884 0320F809 */  jalr  $t9
/* 0040F888 00000000 */   nop   
/* 0040F88C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F890 00401825 */  move  $v1, $v0
.LABEL_0040F894:
/* 0040F894 2401003F */  li    $at, 63
/* 0040F898 14610003 */  bne   $v1, $at, .LABEL_0040F8A8
/* 0040F89C 306A0080 */   andi  $t2, $v1, 0x80
/* 0040F8A0 10000058 */  b     .LABEL_0040FA04
/* 0040F8A4 2402007F */   li    $v0, 127
.LABEL_0040F8A8:
/* 0040F8A8 306B001F */  andi  $t3, $v1, 0x1f
/* 0040F8AC 10000055 */  b     .LABEL_0040FA04
/* 0040F8B0 014B1025 */   or    $v0, $t2, $t3
.L0040F8B4:
/* 0040F8B4 2465FFD0 */  addiu $a1, $v1, -0x30
/* 0040F8B8 24040001 */  li    $a0, 1
/* 0040F8BC 24070003 */  li    $a3, 3
.LABEL_0040F8C0:
/* 0040F8C0 8CC20000 */  lw    $v0, ($a2)
/* 0040F8C4 000568C0 */  sll   $t5, $a1, 3
/* 0040F8C8 90430000 */  lbu   $v1, ($v0)
/* 0040F8CC 244C0001 */  addiu $t4, $v0, 1
/* 0040F8D0 28610030 */  slti  $at, $v1, 0x30
/* 0040F8D4 14200007 */  bnez  $at, .LABEL_0040F8F4
/* 0040F8D8 ACCC0000 */   sw    $t4, ($a2)
/* 0040F8DC 28610038 */  slti  $at, $v1, 0x38
/* 0040F8E0 10200004 */  beqz  $at, .LABEL_0040F8F4
/* 0040F8E4 24840001 */   addiu $a0, $a0, 1
/* 0040F8E8 01A32821 */  addu  $a1, $t5, $v1
/* 0040F8EC 10000006 */  b     .LABEL_0040F908
/* 0040F8F0 24A5FFD0 */   addiu $a1, $a1, -0x30
.LABEL_0040F8F4:
/* 0040F8F4 8CCE0000 */  lw    $t6, ($a2)
/* 0040F8F8 00000000 */  nop   
/* 0040F8FC 25CFFFFF */  addiu $t7, $t6, -1
/* 0040F900 10000003 */  b     .LABEL_0040F910
/* 0040F904 ACCF0000 */   sw    $t7, ($a2)
.LABEL_0040F908:
/* 0040F908 1487FFED */  bne   $a0, $a3, .LABEL_0040F8C0
/* 0040F90C 00000000 */   nop   
.LABEL_0040F910:
/* 0040F910 0005C202 */  srl   $t8, $a1, 8
/* 0040F914 1300000A */  beqz  $t8, .LABEL_0040F940
/* 0040F918 00000000 */   nop   
/* 0040F91C 30B900FF */  andi  $t9, $a1, 0xff
/* 0040F920 AFB90028 */  sw    $t9, 0x28($sp)
/* 0040F924 8F9981EC */  lw    $t9, %call16(warning)($gp)
/* 0040F928 8F84804C */  lw    $a0, %got(RO_10002300)($gp)
/* 0040F92C 0320F809 */  jalr  $t9
/* 0040F930 24842300 */   addiu $a0, %lo(RO_10002300) # addiu $a0, $a0, 0x2300
/* 0040F934 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F938 8FA50028 */  lw    $a1, 0x28($sp)
/* 0040F93C 00000000 */  nop   
.LABEL_0040F940:
/* 0040F940 10000030 */  b     .LABEL_0040FA04
/* 0040F944 00A01025 */   move  $v0, $a1
.L0040F948:
/* 0040F948 00002825 */  move  $a1, $zero
.LABEL_0040F94C:
/* 0040F94C 8CC20000 */  lw    $v0, ($a2)
/* 0040F950 00055900 */  sll   $t3, $a1, 4
/* 0040F954 90430000 */  lbu   $v1, ($v0)
/* 0040F958 24480001 */  addiu $t0, $v0, 1
/* 0040F95C 28610030 */  slti  $at, $v1, 0x30
/* 0040F960 14200007 */  bnez  $at, .LABEL_0040F980
/* 0040F964 ACC80000 */   sw    $t0, ($a2)
/* 0040F968 2861003A */  slti  $at, $v1, 0x3a
/* 0040F96C 10200004 */  beqz  $at, .LABEL_0040F980
/* 0040F970 00054900 */   sll   $t1, $a1, 4
/* 0040F974 01232821 */  addu  $a1, $t1, $v1
/* 0040F978 1000FFF4 */  b     .LABEL_0040F94C
/* 0040F97C 24A5FFD0 */   addiu $a1, $a1, -0x30
.LABEL_0040F980:
/* 0040F980 28610061 */  slti  $at, $v1, 0x61
/* 0040F984 14200006 */  bnez  $at, .LABEL_0040F9A0
/* 0040F988 28610067 */   slti  $at, $v1, 0x67
/* 0040F98C 10200004 */  beqz  $at, .LABEL_0040F9A0
/* 0040F990 00055100 */   sll   $t2, $a1, 4
/* 0040F994 01432821 */  addu  $a1, $t2, $v1
/* 0040F998 1000FFEC */  b     .LABEL_0040F94C
/* 0040F99C 24A5FFA9 */   addiu $a1, $a1, -0x57
.LABEL_0040F9A0:
/* 0040F9A0 28610041 */  slti  $at, $v1, 0x41
/* 0040F9A4 14200006 */  bnez  $at, .LABEL_0040F9C0
/* 0040F9A8 28610047 */   slti  $at, $v1, 0x47
/* 0040F9AC 10200004 */  beqz  $at, .LABEL_0040F9C0
/* 0040F9B0 00000000 */   nop   
/* 0040F9B4 01632821 */  addu  $a1, $t3, $v1
/* 0040F9B8 1000FFE4 */  b     .LABEL_0040F94C
/* 0040F9BC 24A5FFC9 */   addiu $a1, $a1, -0x37
.LABEL_0040F9C0:
/* 0040F9C0 8CCC0000 */  lw    $t4, ($a2)
/* 0040F9C4 00057202 */  srl   $t6, $a1, 8
/* 0040F9C8 258DFFFF */  addiu $t5, $t4, -1
/* 0040F9CC 11C0000A */  beqz  $t6, .LABEL_0040F9F8
/* 0040F9D0 ACCD0000 */   sw    $t5, ($a2)
/* 0040F9D4 8F84804C */  lw    $a0, %got(RO_10002330)($gp)
/* 0040F9D8 8F9981EC */  lw    $t9, %call16(warning)($gp)
/* 0040F9DC 30AF00FF */  andi  $t7, $a1, 0xff
/* 0040F9E0 AFAF0020 */  sw    $t7, 0x20($sp)
/* 0040F9E4 0320F809 */  jalr  $t9
/* 0040F9E8 24842330 */   addiu $a0, %lo(RO_10002330) # addiu $a0, $a0, 0x2330
/* 0040F9EC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F9F0 8FA50020 */  lw    $a1, 0x20($sp)
/* 0040F9F4 00000000 */  nop   
.LABEL_0040F9F8:
/* 0040F9F8 10000002 */  b     .LABEL_0040FA04
/* 0040F9FC 00A01025 */   move  $v0, $a1
.L0040FA00:
/* 0040FA00 00601025 */  move  $v0, $v1
.LABEL_0040FA04:
/* 0040FA04 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0040FA08 27BD0030 */  addiu $sp, $sp, 0x30
/* 0040FA0C 03E00008 */  jr    $ra
/* 0040FA10 00000000 */   nop   

    .type parse_escape, @function
    .size parse_escape, .-parse_escape
    .end parse_escape

glabel yyerror
    .ent yyerror
    # 0040F148 parse_number
    # 0040F3A8 yylex
    # 0040FB60 yyparse
/* 0040FA14 3C1C0FC0 */  .cpload $t9
/* 0040FA18 279CAE0C */  
/* 0040FA1C 0399E021 */  
/* 0040FA20 8F9981E4 */  lw    $t9, %call16(error)($gp)
/* 0040FA24 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0040FA28 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0040FA2C 0320F809 */  jalr  $t9
/* 0040FA30 AFBC0018 */   sw    $gp, 0x18($sp)
/* 0040FA34 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040FA38 24050001 */  li    $a1, 1
/* 0040FA3C 8F84805C */  lw    $a0, %got(B_10002C80)($gp)
/* 0040FA40 8F99813C */  lw    $t9, %call16(longjmp)($gp)
/* 0040FA44 24842C80 */  addiu $a0, %lo(B_10002C80) # addiu $a0, $a0, 0x2c80
/* 0040FA48 0320F809 */  jalr  $t9
/* 0040FA4C 00000000 */   nop   
/* 0040FA50 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0040FA54 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040FA58 03E00008 */  jr    $ra
/* 0040FA5C 27BD0020 */   addiu $sp, $sp, 0x20

    .type yyerror, @function
    .size yyerror, .-yyerror
    .end yyerror

glabel parse_c_expression
    .ent parse_c_expression
    # 0040A540 eval_if_expression
/* 0040FA60 3C1C0FC0 */  .cpload $t9
/* 0040FA64 279CADC0 */  
/* 0040FA68 0399E021 */  
/* 0040FA6C 8F83805C */  lw    $v1, %got(B_10002CF0)($gp)
/* 0040FA70 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0040FA74 24632CF0 */  addiu $v1, %lo(B_10002CF0) # addiu $v1, $v1, 0x2cf0
/* 0040FA78 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0040FA7C AFBC0018 */  sw    $gp, 0x18($sp)
/* 0040FA80 10800005 */  beqz  $a0, .LABEL_0040FA98
/* 0040FA84 AC640000 */   sw    $a0, ($v1)
/* 0040FA88 908E0000 */  lbu   $t6, ($a0)
/* 0040FA8C 00000000 */  nop   
/* 0040FA90 15C00009 */  bnez  $t6, .LABEL_0040FAB8
/* 0040FA94 00000000 */   nop   
.LABEL_0040FA98:
/* 0040FA98 8F84804C */  lw    $a0, %got(RO_10002360)($gp)
/* 0040FA9C 8F9981E4 */  lw    $t9, %call16(error)($gp)
/* 0040FAA0 24842360 */  addiu $a0, %lo(RO_10002360) # addiu $a0, $a0, 0x2360
/* 0040FAA4 0320F809 */  jalr  $t9
/* 0040FAA8 00000000 */   nop   
/* 0040FAAC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040FAB0 10000027 */  b     .LABEL_0040FB50
/* 0040FAB4 00001025 */   move  $v0, $zero
.LABEL_0040FAB8:
/* 0040FAB8 8F84805C */  lw    $a0, %got(B_10002C80)($gp)
/* 0040FABC 8F998138 */  lw    $t9, %call16(setjmp)($gp)
/* 0040FAC0 24842C80 */  addiu $a0, %lo(B_10002C80) # addiu $a0, $a0, 0x2c80
/* 0040FAC4 0320F809 */  jalr  $t9
/* 0040FAC8 00000000 */   nop   
/* 0040FACC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040FAD0 10400003 */  beqz  $v0, .LABEL_0040FAE0
/* 0040FAD4 00000000 */   nop   
/* 0040FAD8 1000001D */  b     .LABEL_0040FB50
/* 0040FADC 00001025 */   move  $v0, $zero
.LABEL_0040FAE0:
/* 0040FAE0 8F998270 */  lw    $t9, %call16(yyparse)($gp)
/* 0040FAE4 00000000 */  nop   
/* 0040FAE8 0320F809 */  jalr  $t9
/* 0040FAEC 00000000 */   nop   
/* 0040FAF0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040FAF4 10400003 */  beqz  $v0, .LABEL_0040FB04
/* 0040FAF8 00000000 */   nop   
/* 0040FAFC 10000014 */  b     .LABEL_0040FB50
/* 0040FB00 00001025 */   move  $v0, $zero
.LABEL_0040FB04:
/* 0040FB04 8F8F805C */  lw    $t7, %got(B_10002CF0)($gp)
/* 0040FB08 00000000 */  nop   
/* 0040FB0C 8DEF2CF0 */  lw    $t7, %lo(B_10002CF0)($t7)
/* 0040FB10 00000000 */  nop   
/* 0040FB14 91F80000 */  lbu   $t8, ($t7)
/* 0040FB18 00000000 */  nop   
/* 0040FB1C 13000008 */  beqz  $t8, .LABEL_0040FB40
/* 0040FB20 00000000 */   nop   
/* 0040FB24 8F84804C */  lw    $a0, %got(RO_10002378)($gp)
/* 0040FB28 8F9981E4 */  lw    $t9, %call16(error)($gp)
/* 0040FB2C 24842378 */  addiu $a0, %lo(RO_10002378) # addiu $a0, $a0, 0x2378
/* 0040FB30 0320F809 */  jalr  $t9
/* 0040FB34 00000000 */   nop   
/* 0040FB38 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040FB3C 00000000 */  nop   
.LABEL_0040FB40:
/* 0040FB40 8F828370 */  lw     $v0, %got(expression_value)($gp)
/* 0040FB44 00000000 */  nop   
/* 0040FB48 8C420000 */  lw    $v0, ($v0)
/* 0040FB4C 00000000 */  nop   
.LABEL_0040FB50:
/* 0040FB50 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0040FB54 27BD0020 */  addiu $sp, $sp, 0x20
/* 0040FB58 03E00008 */  jr    $ra
    .type parse_c_expression, @function
    .size parse_c_expression, .-parse_c_expression
    .end parse_c_expression
)"");
