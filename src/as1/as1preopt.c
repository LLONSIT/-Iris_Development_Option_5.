__asm__(R""(
.macro glabel label
    .global \label
    .balign 4
    \label:
.endm




.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.text
    .type func_0041C134, @function
func_0041C134:
    # 0041FE24 func_0041FE24
/* 0041C134 3C1C0FC1 */  .cpload $t9
/* 0041C138 279CE12C */  
/* 0041C13C 0399E021 */  
/* 0041C140 00047682 */  srl   $t6, $a0, 0x1a
/* 0041C144 2DC10018 */  sltiu $at, $t6, 0x18
/* 0041C148 10200013 */  beqz  $at, .L0041C198
/* 0041C14C AFA40000 */   sw    $a0, ($sp)
/* 0041C150 8F81806C */  lw    $at, %got(jtbl_10013EE0)($gp)
/* 0041C154 000E7080 */  sll   $t6, $t6, 2
/* 0041C158 002E0821 */  addu  $at, $at, $t6
/* 0041C15C 8C2E3EE0 */  lw    $t6, %lo(jtbl_10013EE0)($at)
/* 0041C160 00000000 */  nop   
/* 0041C164 01DC7021 */  addu  $t6, $t6, $gp
/* 0041C168 01C00008 */  jr    $t6
/* 0041C16C 00000000 */   nop   
.L0041C170:
/* 0041C170 03E00008 */  jr    $ra
/* 0041C174 24020001 */   li    $v0, 1

.L0041C178:
/* 0041C178 3082003F */  andi  $v0, $a0, 0x3f
/* 0041C17C 24010008 */  li    $at, 8
/* 0041C180 10410003 */  beq   $v0, $at, .L0041C190
/* 0041C184 24010009 */   li    $at, 9
/* 0041C188 14410004 */  bne   $v0, $at, .L0041C19C
/* 0041C18C 00001025 */   move  $v0, $zero
.L0041C190:
/* 0041C190 03E00008 */  jr    $ra
/* 0041C194 24020001 */   li    $v0, 1

.L0041C198:
/* 0041C198 00001025 */  move  $v0, $zero
.L0041C19C:
/* 0041C19C 03E00008 */  jr    $ra
/* 0041C1A0 00000000 */   nop   

    .type func_0041C1A4, @function
func_0041C1A4:
    # 0041FE24 func_0041FE24
/* 0041C1A4 00041682 */  srl   $v0, $a0, 0x1a
/* 0041C1A8 10400006 */  beqz  $v0, .L0041C1C4
/* 0041C1AC AFA40000 */   sw    $a0, ($sp)
/* 0041C1B0 24010011 */  li    $at, 17
/* 0041C1B4 10410010 */  beq   $v0, $at, .L0041C1F8
/* 0041C1B8 308E003F */   andi  $t6, $a0, 0x3f
/* 0041C1BC 10000014 */  b     .L0041C210
/* 0041C1C0 00001025 */   move  $v0, $zero
.L0041C1C4:
/* 0041C1C4 3082003F */  andi  $v0, $a0, 0x3f
/* 0041C1C8 24010018 */  li    $at, 24
/* 0041C1CC 10410007 */  beq   $v0, $at, .L0041C1EC
/* 0041C1D0 24010019 */   li    $at, 25
/* 0041C1D4 10410005 */  beq   $v0, $at, .L0041C1EC
/* 0041C1D8 2401001C */   li    $at, 28
/* 0041C1DC 10410003 */  beq   $v0, $at, .L0041C1EC
/* 0041C1E0 2401001D */   li    $at, 29
/* 0041C1E4 14410004 */  bne   $v0, $at, .L0041C1F8
/* 0041C1E8 308E003F */   andi  $t6, $a0, 0x3f
.L0041C1EC:
/* 0041C1EC 03E00008 */  jr    $ra
/* 0041C1F0 24020001 */   li    $v0, 1

/* 0041C1F4 308E003F */  andi  $t6, $a0, 0x3f
.L0041C1F8:
/* 0041C1F8 24010002 */  li    $at, 2
/* 0041C1FC 15C10004 */  bne   $t6, $at, .L0041C210
/* 0041C200 00001025 */   move  $v0, $zero
/* 0041C204 03E00008 */  jr    $ra
/* 0041C208 24020001 */   li    $v0, 1

/* 0041C20C 00001025 */  move  $v0, $zero
.L0041C210:
/* 0041C210 03E00008 */  jr    $ra
/* 0041C214 00000000 */   nop   

glabel dump_bb
    .ent dump_bb
    # 0041BCD4 do_passI_opt
    # 0041BFB8 do_passII_opt
    # 0041D2D4 func_0041D2D4
    # 00420E34 traverse_bb
    # 004256D0 func_004256D0
    # 0042AA0C func_0042AA0C
/* 0041C218 3C1C0FC1 */  .cpload $t9
/* 0041C21C 279CE048 */  
/* 0041C220 0399E021 */  
/* 0041C224 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0041C228 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0041C22C 0080F025 */  move  $fp, $a0
/* 0041C230 8F84806C */  lw    $a0, %got(RO_10013BD0)($gp)
/* 0041C234 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0041C238 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0041C23C AFBC0034 */  sw    $gp, 0x34($sp)
/* 0041C240 AFB70030 */  sw    $s7, 0x30($sp)
/* 0041C244 AFB6002C */  sw    $s6, 0x2c($sp)
/* 0041C248 AFB50028 */  sw    $s5, 0x28($sp)
/* 0041C24C AFB40024 */  sw    $s4, 0x24($sp)
/* 0041C250 AFB30020 */  sw    $s3, 0x20($sp)
/* 0041C254 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0041C258 AFB10018 */  sw    $s1, 0x18($sp)
/* 0041C25C AFB00014 */  sw    $s0, 0x14($sp)
/* 0041C260 0320F809 */  jalr  $t9
/* 0041C264 24843BD0 */   addiu $a0, %lo(RO_10013BD0) # addiu $a0, $a0, 0x3bd0
/* 0041C268 97CE003C */  lhu   $t6, 0x3c($fp)
/* 0041C26C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041C270 8FC2000C */  lw    $v0, 0xc($fp)
/* 0041C274 11C00038 */  beqz  $t6, .L0041C358
/* 0041C278 24110001 */   li    $s1, 1
/* 0041C27C 8F97806C */  lw    $s7, %got(RO_10013C04)($gp)
/* 0041C280 8F96806C */  lw    $s6, %got(RO_10013BFC)($gp)
/* 0041C284 8F94806C */  lw    $s4, %got(RO_10013BF8)($gp)
/* 0041C288 8F93806C */  lw    $s3, %got(RO_10013BEC)($gp)
/* 0041C28C 3C157FFF */  lui   $s5, 0x7fff
/* 0041C290 36B5FFFF */  ori   $s5, $s5, 0xffff
/* 0041C294 24500028 */  addiu $s0, $v0, 0x28
/* 0041C298 24520028 */  addiu $s2, $v0, 0x28
/* 0041C29C 26F73C04 */  addiu $s7, %lo(RO_10013C04) # addiu $s7, $s7, 0x3c04
/* 0041C2A0 26D63BFC */  addiu $s6, %lo(RO_10013BFC) # addiu $s6, $s6, 0x3bfc
/* 0041C2A4 26943BF8 */  addiu $s4, %lo(RO_10013BF8) # addiu $s4, $s4, 0x3bf8
/* 0041C2A8 26733BEC */  addiu $s3, %lo(RO_10013BEC) # addiu $s3, $s3, 0x3bec
.L0041C2AC:
/* 0041C2AC 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0041C2B0 02602025 */  move  $a0, $s3
/* 0041C2B4 0320F809 */  jalr  $t9
/* 0041C2B8 02202825 */   move  $a1, $s1
/* 0041C2BC 920F0022 */  lbu   $t7, 0x22($s0)
/* 0041C2C0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041C2C4 15E00007 */  bnez  $t7, .L0041C2E4
/* 0041C2C8 00000000 */   nop   
/* 0041C2CC 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0041C2D0 02802025 */  move  $a0, $s4
/* 0041C2D4 0320F809 */  jalr  $t9
/* 0041C2D8 00000000 */   nop   
/* 0041C2DC 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041C2E0 00000000 */  nop   
.L0041C2E4:
/* 0041C2E4 8E580000 */  lw    $t8, ($s2)
/* 0041C2E8 00000000 */  nop   
/* 0041C2EC 16B80008 */  bne   $s5, $t8, .L0041C310
/* 0041C2F0 00000000 */   nop   
/* 0041C2F4 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0041C2F8 8E450010 */  lw    $a1, 0x10($s2)
/* 0041C2FC 0320F809 */  jalr  $t9
/* 0041C300 02C02025 */   move  $a0, $s6
/* 0041C304 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041C308 1000000E */  b     .L0041C344
/* 0041C30C 97D9003C */   lhu   $t9, 0x3c($fp)
.L0041C310:
/* 0041C310 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0041C314 8E05000C */  lw    $a1, 0xc($s0)
/* 0041C318 0320F809 */  jalr  $t9
/* 0041C31C 02E02025 */   move  $a0, $s7
/* 0041C320 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041C324 8E050000 */  lw    $a1, ($s0)
/* 0041C328 8F9985DC */  lw    $t9, %call16(disasm_text_file)($gp)
/* 0041C32C 2404FFFF */  li    $a0, -1
/* 0041C330 0320F809 */  jalr  $t9
/* 0041C334 00003025 */   move  $a2, $zero
/* 0041C338 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041C33C 00000000 */  nop   
/* 0041C340 97D9003C */  lhu   $t9, 0x3c($fp)
.L0041C344:
/* 0041C344 26310001 */  addiu $s1, $s1, 1
/* 0041C348 0331082B */  sltu  $at, $t9, $s1
/* 0041C34C 26100028 */  addiu $s0, $s0, 0x28
/* 0041C350 1020FFD6 */  beqz  $at, .L0041C2AC
/* 0041C354 26520028 */   addiu $s2, $s2, 0x28
.L0041C358:
/* 0041C358 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0041C35C 8FB00014 */  lw    $s0, 0x14($sp)
/* 0041C360 8FB10018 */  lw    $s1, 0x18($sp)
/* 0041C364 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0041C368 8FB30020 */  lw    $s3, 0x20($sp)
/* 0041C36C 8FB40024 */  lw    $s4, 0x24($sp)
/* 0041C370 8FB50028 */  lw    $s5, 0x28($sp)
/* 0041C374 8FB6002C */  lw    $s6, 0x2c($sp)
/* 0041C378 8FB70030 */  lw    $s7, 0x30($sp)
/* 0041C37C 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0041C380 03E00008 */  jr    $ra
/* 0041C384 27BD0040 */   addiu $sp, $sp, 0x40

    .type dump_bb, @function
    .size dump_bb, .-dump_bb
    .end dump_bb

    .type func_0041C388, @function
func_0041C388:
    # 00420E34 traverse_bb
/* 0041C388 3C1C0FC1 */  .cpload $t9
/* 0041C38C 279CDED8 */  
/* 0041C390 0399E021 */  
/* 0041C394 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0041C398 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0041C39C AFB00018 */  sw    $s0, 0x18($sp)
/* 0041C3A0 0085082A */  slt   $at, $a0, $a1
/* 0041C3A4 00A08825 */  move  $s1, $a1
/* 0041C3A8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0041C3AC AFBC0020 */  sw    $gp, 0x20($sp)
/* 0041C3B0 1020000D */  beqz  $at, .L0041C3E8
/* 0041C3B4 00808025 */   move  $s0, $a0
.L0041C3B8:
/* 0041C3B8 8F9985D8 */  lw    $t9, %call16(disasm_text_acc)($gp)
/* 0041C3BC 06010003 */  bgez  $s0, .L0041C3CC
/* 0041C3C0 00102083 */   sra   $a0, $s0, 2
/* 0041C3C4 26010003 */  addiu $at, $s0, 3
/* 0041C3C8 00012083 */  sra   $a0, $at, 2
.L0041C3CC:
/* 0041C3CC 0320F809 */  jalr  $t9
/* 0041C3D0 00000000 */   nop   
/* 0041C3D4 26100004 */  addiu $s0, $s0, 4
/* 0041C3D8 0211082A */  slt   $at, $s0, $s1
/* 0041C3DC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0041C3E0 1420FFF5 */  bnez  $at, .L0041C3B8
/* 0041C3E4 00000000 */   nop   
.L0041C3E8:
/* 0041C3E8 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0041C3EC 8FB00018 */  lw    $s0, 0x18($sp)
/* 0041C3F0 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0041C3F4 03E00008 */  jr    $ra
/* 0041C3F8 27BD0028 */   addiu $sp, $sp, 0x28

    .type func_0041C3FC, @function
func_0041C3FC:
    # 0041FE24 func_0041FE24
/* 0041C3FC 3C1C0FC1 */  .cpload $t9
/* 0041C400 279CDE64 */  
/* 0041C404 0399E021 */  
/* 0041C408 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0041C40C AFBF0044 */  sw    $ra, 0x44($sp)
/* 0041C410 AFBC0040 */  sw    $gp, 0x40($sp)
/* 0041C414 AFB7003C */  sw    $s7, 0x3c($sp)
/* 0041C418 AFB60038 */  sw    $s6, 0x38($sp)
/* 0041C41C AFB50034 */  sw    $s5, 0x34($sp)
/* 0041C420 AFB40030 */  sw    $s4, 0x30($sp)
/* 0041C424 AFB3002C */  sw    $s3, 0x2c($sp)
/* 0041C428 AFB20028 */  sw    $s2, 0x28($sp)
/* 0041C42C AFB10024 */  sw    $s1, 0x24($sp)
/* 0041C430 AFB00020 */  sw    $s0, 0x20($sp)
/* 0041C434 8C900010 */  lw    $s0, 0x10($a0)
/* 0041C438 0080B825 */  move  $s7, $a0
/* 0041C43C 260EFFF9 */  addiu $t6, $s0, -7
/* 0041C440 2DC10017 */  sltiu $at, $t6, 0x17
/* 0041C444 10200137 */  beqz  $at, .L0041C924
/* 0041C448 00A03825 */   move  $a3, $a1
/* 0041C44C 8F81806C */  lw    $at, %got(jtbl_10013F40)($gp)
/* 0041C450 000E7080 */  sll   $t6, $t6, 2
/* 0041C454 002E0821 */  addu  $at, $at, $t6
/* 0041C458 8C2E3F40 */  lw    $t6, %lo(jtbl_10013F40)($at)
/* 0041C45C 00000000 */  nop   
/* 0041C460 01DC7021 */  addu  $t6, $t6, $gp
/* 0041C464 01C00008 */  jr    $t6
/* 0041C468 00000000 */   nop   
.L0041C46C:
/* 0041C46C 8EEF0004 */  lw    $t7, 4($s7)
/* 0041C470 24030001 */  li    $v1, 1
/* 0041C474 8F818B58 */  lw     $at, %got(aligning)($gp)
/* 0041C478 006FC026 */  xor   $t8, $v1, $t7
/* 0041C47C 0018C02B */  sltu  $t8, $zero, $t8
/* 0041C480 8F948AE4 */  lw     $s4, %got(currtextindex)($gp)
/* 0041C484 A0380000 */  sb    $t8, ($at)
/* 0041C488 8F9985C4 */  lw    $t9, %call16(definealabel)($gp)
/* 0041C48C 8EE50004 */  lw    $a1, 4($s7)
/* 0041C490 8E840000 */  lw    $a0, ($s4)
/* 0041C494 0320F809 */  jalr  $t9
/* 0041C498 00003025 */   move  $a2, $zero
/* 0041C49C 8FBC0040 */  lw    $gp, 0x40($sp)
/* 0041C4A0 10000134 */  b     .L0041C974
/* 0041C4A4 8FBF0044 */   lw    $ra, 0x44($sp)
.L0041C4A8:
/* 0041C4A8 8F948AE4 */  lw     $s4, %got(currtextindex)($gp)
/* 0041C4AC 8F9985C8 */  lw    $t9, %call16(defineasym)($gp)
/* 0041C4B0 8EE40004 */  lw    $a0, 4($s7)
/* 0041C4B4 8EE50014 */  lw    $a1, 0x14($s7)
/* 0041C4B8 8E860000 */  lw    $a2, ($s4)
/* 0041C4BC 0320F809 */  jalr  $t9
/* 0041C4C0 00000000 */   nop   
/* 0041C4C4 8EE30018 */  lw    $v1, 0x18($s7)
/* 0041C4C8 8FBC0040 */  lw    $gp, 0x40($sp)
/* 0041C4CC 14600003 */  bnez  $v1, .L0041C4DC
/* 0041C4D0 00602825 */   move  $a1, $v1
/* 0041C4D4 10000001 */  b     .L0041C4DC
/* 0041C4D8 24050004 */   li    $a1, 4
.L0041C4DC:
/* 0041C4DC 8F9985C4 */  lw    $t9, %call16(definealabel)($gp)
/* 0041C4E0 8E840000 */  lw    $a0, ($s4)
/* 0041C4E4 0320F809 */  jalr  $t9
/* 0041C4E8 24060001 */   li    $a2, 1
/* 0041C4EC 8EF90010 */  lw    $t9, 0x10($s7)
/* 0041C4F0 8FBC0040 */  lw    $gp, 0x40($sp)
/* 0041C4F4 2401001A */  li    $at, 26
/* 0041C4F8 1721011E */  bne   $t9, $at, .L0041C974
/* 0041C4FC 8FBF0044 */   lw    $ra, 0x44($sp)
/* 0041C500 8F818B5C */  lw     $at, %got(last_bb)($gp)
/* 0041C504 1000011A */  b     .L0041C970
/* 0041C508 A0200002 */   sb    $zero, 2($at)
.L0041C50C:
/* 0041C50C 8EE90014 */  lw    $t1, 0x14($s7)
/* 0041C510 8EE60008 */  lw    $a2, 8($s7)
/* 0041C514 8EE70004 */  lw    $a3, 4($s7)
/* 0041C518 AFA90010 */  sw    $t1, 0x10($sp)
/* 0041C51C 8EEA000C */  lw    $t2, 0xc($s7)
/* 0041C520 8F9983F4 */  lw    $t9, %call16(st_pseudo)($gp)
/* 0041C524 24040009 */  li    $a0, 9
/* 0041C528 00002825 */  move  $a1, $zero
/* 0041C52C 0320F809 */  jalr  $t9
/* 0041C530 AFAA0014 */   sw    $t2, 0x14($sp)
/* 0041C534 8FBC0040 */  lw    $gp, 0x40($sp)
/* 0041C538 1000010E */  b     .L0041C974
/* 0041C53C 8FBF0044 */   lw    $ra, 0x44($sp)
.L0041C540:
/* 0041C540 8EE50004 */  lw    $a1, 4($s7)
/* 0041C544 8EE60008 */  lw    $a2, 8($s7)
/* 0041C548 AFA00010 */  sw    $zero, 0x10($sp)
/* 0041C54C 8EEB000C */  lw    $t3, 0xc($s7)
/* 0041C550 8F9983F4 */  lw    $t9, %call16(st_pseudo)($gp)
/* 0041C554 02002025 */  move  $a0, $s0
/* 0041C558 00003825 */  move  $a3, $zero
/* 0041C55C 0320F809 */  jalr  $t9
/* 0041C560 AFAB0014 */   sw    $t3, 0x14($sp)
/* 0041C564 8FBC0040 */  lw    $gp, 0x40($sp)
/* 0041C568 10000102 */  b     .L0041C974
/* 0041C56C 8FBF0044 */   lw    $ra, 0x44($sp)
.L0041C570:
/* 0041C570 8F9983B4 */  lw    $t9, %call16(reorg_noalias)($gp)
/* 0041C574 8EE50004 */  lw    $a1, 4($s7)
/* 0041C578 8EE60008 */  lw    $a2, 8($s7)
/* 0041C57C 0320F809 */  jalr  $t9
/* 0041C580 2604FFE5 */   addiu $a0, $s0, -0x1b
/* 0041C584 8FBC0040 */  lw    $gp, 0x40($sp)
/* 0041C588 100000FA */  b     .L0041C974
/* 0041C58C 8FBF0044 */   lw    $ra, 0x44($sp)
.L0041C590:
/* 0041C590 8EEC0004 */  lw    $t4, 4($s7)
/* 0041C594 8EE20014 */  lw    $v0, 0x14($s7)
/* 0041C598 118000F5 */  beqz  $t4, .L0041C970
/* 0041C59C 00008825 */   move  $s1, $zero
/* 0041C5A0 8F968AEC */  lw     $s6, %got(seg_ic)($gp)
/* 0041C5A4 8F948AE4 */  lw     $s4, %got(currtextindex)($gp)
/* 0041C5A8 8F928AE0 */  lw     $s2, %got(memory)($gp)
/* 0041C5AC 0040A825 */  move  $s5, $v0
/* 0041C5B0 2413002C */  li    $s3, 44
.L0041C5B4:
/* 0041C5B4 8F9985C4 */  lw    $t9, %call16(definealabel)($gp)
/* 0041C5B8 8E840000 */  lw    $a0, ($s4)
/* 0041C5BC 24050001 */  li    $a1, 1
/* 0041C5C0 0320F809 */  jalr  $t9
/* 0041C5C4 00003025 */   move  $a2, $zero
/* 0041C5C8 8E820000 */  lw    $v0, ($s4)
/* 0041C5CC 8ECD0000 */  lw    $t5, ($s6)
/* 0041C5D0 00530019 */  multu $v0, $s3
/* 0041C5D4 8E430000 */  lw    $v1, ($s2)
/* 0041C5D8 00027080 */  sll   $t6, $v0, 2
/* 0041C5DC 01AE7821 */  addu  $t7, $t5, $t6
/* 0041C5E0 8DE40000 */  lw    $a0, ($t7)
/* 0041C5E4 8FBC0040 */  lw    $gp, 0x40($sp)
/* 0041C5E8 24060001 */  li    $a2, 1
/* 0041C5EC 00802825 */  move  $a1, $a0
/* 0041C5F0 00004012 */  mflo  $t0
/* 0041C5F4 00688021 */  addu  $s0, $v1, $t0
/* 0041C5F8 8E180004 */  lw    $t8, 4($s0)
/* 0041C5FC 00000000 */  nop   
/* 0041C600 0098082B */  sltu  $at, $a0, $t8
/* 0041C604 1420001A */  bnez  $at, .L0041C670
/* 0041C608 00000000 */   nop   
/* 0041C60C 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 0041C610 01032021 */  addu  $a0, $t0, $v1
/* 0041C614 8E070000 */  lw    $a3, ($s0)
/* 0041C618 AFA00010 */  sw    $zero, 0x10($sp)
/* 0041C61C 0320F809 */  jalr  $t9
/* 0041C620 24840004 */   addiu $a0, $a0, 4
/* 0041C624 8E890000 */  lw    $t1, ($s4)
/* 0041C628 8E590000 */  lw    $t9, ($s2)
/* 0041C62C 01330019 */  multu $t1, $s3
/* 0041C630 8FBC0040 */  lw    $gp, 0x40($sp)
/* 0041C634 00005012 */  mflo  $t2
/* 0041C638 032A5821 */  addu  $t3, $t9, $t2
/* 0041C63C AD620000 */  sw    $v0, ($t3)
/* 0041C640 8E8D0000 */  lw    $t5, ($s4)
/* 0041C644 8ECC0000 */  lw    $t4, ($s6)
/* 0041C648 000DC880 */  sll   $t9, $t5, 2
/* 0041C64C 032DC823 */  subu  $t9, $t9, $t5
/* 0041C650 0019C880 */  sll   $t9, $t9, 2
/* 0041C654 000D7080 */  sll   $t6, $t5, 2
/* 0041C658 8E580000 */  lw    $t8, ($s2)
/* 0041C65C 032DC823 */  subu  $t9, $t9, $t5
/* 0041C660 018E7821 */  addu  $t7, $t4, $t6
/* 0041C664 0019C880 */  sll   $t9, $t9, 2
/* 0041C668 8DE40000 */  lw    $a0, ($t7)
/* 0041C66C 03198021 */  addu  $s0, $t8, $t9
.L0041C670:
/* 0041C670 8E0B0000 */  lw    $t3, ($s0)
/* 0041C674 92AA0000 */  lbu   $t2, ($s5)
/* 0041C678 01646821 */  addu  $t5, $t3, $a0
/* 0041C67C A1AA0000 */  sb    $t2, ($t5)
/* 0041C680 8E8E0000 */  lw    $t6, ($s4)
/* 0041C684 8ECC0000 */  lw    $t4, ($s6)
/* 0041C688 000E7880 */  sll   $t7, $t6, 2
/* 0041C68C 018F1021 */  addu  $v0, $t4, $t7
/* 0041C690 8C490000 */  lw    $t1, ($v0)
/* 0041C694 26310001 */  addiu $s1, $s1, 1
/* 0041C698 25380001 */  addiu $t8, $t1, 1
/* 0041C69C AC580000 */  sw    $t8, ($v0)
/* 0041C6A0 8EF90004 */  lw    $t9, 4($s7)
/* 0041C6A4 26B50001 */  addiu $s5, $s5, 1
/* 0041C6A8 0239082B */  sltu  $at, $s1, $t9
/* 0041C6AC 1420FFC1 */  bnez  $at, .L0041C5B4
/* 0041C6B0 00000000 */   nop   
/* 0041C6B4 100000AF */  b     .L0041C974
/* 0041C6B8 8FBF0044 */   lw    $ra, 0x44($sp)
.L0041C6BC:
/* 0041C6BC 8F948AE4 */  lw     $s4, %got(currtextindex)($gp)
/* 0041C6C0 8F9985C4 */  lw    $t9, %call16(definealabel)($gp)
/* 0041C6C4 8E840000 */  lw    $a0, ($s4)
/* 0041C6C8 24050001 */  li    $a1, 1
/* 0041C6CC 0320F809 */  jalr  $t9
/* 0041C6D0 00003025 */   move  $a2, $zero
/* 0041C6D4 8EF10004 */  lw    $s1, 4($s7)
/* 0041C6D8 8FBC0040 */  lw    $gp, 0x40($sp)
/* 0041C6DC 1A2000A5 */  blez  $s1, .L0041C974
/* 0041C6E0 8FBF0044 */   lw    $ra, 0x44($sp)
/* 0041C6E4 8F968AEC */  lw     $s6, %got(seg_ic)($gp)
/* 0041C6E8 8F928AE0 */  lw     $s2, %got(memory)($gp)
/* 0041C6EC 2413002C */  li    $s3, 44
.L0041C6F0:
/* 0041C6F0 8E820000 */  lw    $v0, ($s4)
/* 0041C6F4 8ECB0000 */  lw    $t3, ($s6)
/* 0041C6F8 00530019 */  multu $v0, $s3
/* 0041C6FC 8E430000 */  lw    $v1, ($s2)
/* 0041C700 00025080 */  sll   $t2, $v0, 2
/* 0041C704 016A6821 */  addu  $t5, $t3, $t2
/* 0041C708 8DA40000 */  lw    $a0, ($t5)
/* 0041C70C 24060001 */  li    $a2, 1
/* 0041C710 00802825 */  move  $a1, $a0
/* 0041C714 00004012 */  mflo  $t0
/* 0041C718 00688021 */  addu  $s0, $v1, $t0
/* 0041C71C 8E0E0004 */  lw    $t6, 4($s0)
/* 0041C720 00000000 */  nop   
/* 0041C724 008E082B */  sltu  $at, $a0, $t6
/* 0041C728 1420001A */  bnez  $at, .L0041C794
/* 0041C72C 00000000 */   nop   
/* 0041C730 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 0041C734 01032021 */  addu  $a0, $t0, $v1
/* 0041C738 8E070000 */  lw    $a3, ($s0)
/* 0041C73C AFA00010 */  sw    $zero, 0x10($sp)
/* 0041C740 0320F809 */  jalr  $t9
/* 0041C744 24840004 */   addiu $a0, $a0, 4
/* 0041C748 8E8F0000 */  lw    $t7, ($s4)
/* 0041C74C 8E4C0000 */  lw    $t4, ($s2)
/* 0041C750 01F30019 */  multu $t7, $s3
/* 0041C754 8FBC0040 */  lw    $gp, 0x40($sp)
/* 0041C758 00004812 */  mflo  $t1
/* 0041C75C 0189C021 */  addu  $t8, $t4, $t1
/* 0041C760 AF020000 */  sw    $v0, ($t8)
/* 0041C764 8E8B0000 */  lw    $t3, ($s4)
/* 0041C768 8ED90000 */  lw    $t9, ($s6)
/* 0041C76C 000B6080 */  sll   $t4, $t3, 2
/* 0041C770 018B6023 */  subu  $t4, $t4, $t3
/* 0041C774 000C6080 */  sll   $t4, $t4, 2
/* 0041C778 000B5080 */  sll   $t2, $t3, 2
/* 0041C77C 8E4E0000 */  lw    $t6, ($s2)
/* 0041C780 018B6023 */  subu  $t4, $t4, $t3
/* 0041C784 032A6821 */  addu  $t5, $t9, $t2
/* 0041C788 000C6080 */  sll   $t4, $t4, 2
/* 0041C78C 8DA40000 */  lw    $a0, ($t5)
/* 0041C790 01CC8021 */  addu  $s0, $t6, $t4
.L0041C794:
/* 0041C794 8E180000 */  lw    $t8, ($s0)
/* 0041C798 8EE90008 */  lw    $t1, 8($s7)
/* 0041C79C 03045821 */  addu  $t3, $t8, $a0
/* 0041C7A0 A1690000 */  sb    $t1, ($t3)
/* 0041C7A4 8E8A0000 */  lw    $t2, ($s4)
/* 0041C7A8 8ED90000 */  lw    $t9, ($s6)
/* 0041C7AC 000A6880 */  sll   $t5, $t2, 2
/* 0041C7B0 032D1021 */  addu  $v0, $t9, $t5
/* 0041C7B4 8C4F0000 */  lw    $t7, ($v0)
/* 0041C7B8 2631FFFF */  addiu $s1, $s1, -1
/* 0041C7BC 25EE0001 */  addiu $t6, $t7, 1
/* 0041C7C0 1E20FFCB */  bgtz  $s1, .L0041C6F0
/* 0041C7C4 AC4E0000 */   sw    $t6, ($v0)
/* 0041C7C8 1000006A */  b     .L0041C974
/* 0041C7CC 8FBF0044 */   lw    $ra, 0x44($sp)
.L0041C7D0:
/* 0041C7D0 8EEC0008 */  lw    $t4, 8($s7)
/* 0041C7D4 8F818B60 */  lw     $at, %got(shftaddr)($gp)
/* 0041C7D8 10000065 */  b     .L0041C970
/* 0041C7DC AC2C0000 */   sw    $t4, ($at)
.L0041C7E0:
/* 0041C7E0 8F988B64 */  lw     $t8, %got(currsegmentindex)($gp)
/* 0041C7E4 8F99855C */  lw    $t9, %call16(doword)($gp)
/* 0041C7E8 8F180000 */  lw    $t8, ($t8)
/* 0041C7EC 8EE4000C */  lw    $a0, 0xc($s7)
/* 0041C7F0 8EE50004 */  lw    $a1, 4($s7)
/* 0041C7F4 8EE60008 */  lw    $a2, 8($s7)
/* 0041C7F8 8EE70014 */  lw    $a3, 0x14($s7)
/* 0041C7FC 24090001 */  li    $t1, 1
/* 0041C800 AFA90014 */  sw    $t1, 0x14($sp)
/* 0041C804 0320F809 */  jalr  $t9
/* 0041C808 AFB80010 */   sw    $t8, 0x10($sp)
/* 0041C80C 8FBC0040 */  lw    $gp, 0x40($sp)
/* 0041C810 10000058 */  b     .L0041C974
/* 0041C814 8FBF0044 */   lw    $ra, 0x44($sp)
.L0041C818:
/* 0041C818 8F8B8B64 */  lw     $t3, %got(currsegmentindex)($gp)
/* 0041C81C 8F99855C */  lw    $t9, %call16(doword)($gp)
/* 0041C820 8D6B0000 */  lw    $t3, ($t3)
/* 0041C824 8EE4000C */  lw    $a0, 0xc($s7)
/* 0041C828 8EE50004 */  lw    $a1, 4($s7)
/* 0041C82C 8EE60008 */  lw    $a2, 8($s7)
/* 0041C830 8EE70014 */  lw    $a3, 0x14($s7)
/* 0041C834 AFA00014 */  sw    $zero, 0x14($sp)
/* 0041C838 0320F809 */  jalr  $t9
/* 0041C83C AFAB0010 */   sw    $t3, 0x10($sp)
/* 0041C840 8FBC0040 */  lw    $gp, 0x40($sp)
/* 0041C844 1000004B */  b     .L0041C974
/* 0041C848 8FBF0044 */   lw    $ra, 0x44($sp)
.L0041C84C:
/* 0041C84C 8F998B64 */  lw     $t9, %got(currsegmentindex)($gp)
/* 0041C850 8EEA0014 */  lw    $t2, 0x14($s7)
/* 0041C854 8F390000 */  lw    $t9, ($t9)
/* 0041C858 8EE50004 */  lw    $a1, 4($s7)
/* 0041C85C 8EE60008 */  lw    $a2, 8($s7)
/* 0041C860 8EE7000C */  lw    $a3, 0xc($s7)
/* 0041C864 AFB90014 */  sw    $t9, 0x14($sp)
/* 0041C868 8F998560 */  lw    $t9, %call16(dodword)($gp)
/* 0041C86C 24040008 */  li    $a0, 8
/* 0041C870 0320F809 */  jalr  $t9
/* 0041C874 AFAA0010 */   sw    $t2, 0x10($sp)
/* 0041C878 8FBC0040 */  lw    $gp, 0x40($sp)
/* 0041C87C 1000003D */  b     .L0041C974
/* 0041C880 8FBF0044 */   lw    $ra, 0x44($sp)
.L0041C884:
/* 0041C884 8F9984A8 */  lw    $t9, %call16(fpstring_to_memory)($gp)
/* 0041C888 8EE40014 */  lw    $a0, 0x14($s7)
/* 0041C88C 8EE50004 */  lw    $a1, 4($s7)
/* 0041C890 8EE60008 */  lw    $a2, 8($s7)
/* 0041C894 0320F809 */  jalr  $t9
/* 0041C898 00000000 */   nop   
/* 0041C89C 8FBC0040 */  lw    $gp, 0x40($sp)
/* 0041C8A0 10000034 */  b     .L0041C974
/* 0041C8A4 8FBF0044 */   lw    $ra, 0x44($sp)
.L0041C8A8:
/* 0041C8A8 8EED0004 */  lw    $t5, 4($s7)
/* 0041C8AC 8F818B68 */  lw     $at, %got(currfunc_handle)($gp)
/* 0041C8B0 8F828B74 */  lw     $v0, %got(is_nonleaf)($gp)
/* 0041C8B4 AC2D0000 */  sw    $t5, ($at)
/* 0041C8B8 8EEF0008 */  lw    $t7, 8($s7)
/* 0041C8BC 8F818B6C */  lw     $at, %got(currfunc_data)($gp)
/* 0041C8C0 24030001 */  li    $v1, 1
/* 0041C8C4 AC2F0000 */  sw    $t7, ($at)
/* 0041C8C8 8F818B70 */  lw     $at, %got(currfunc_hasedata)($gp)
/* 0041C8CC 00000000 */  nop   
/* 0041C8D0 A0230000 */  sb    $v1, ($at)
/* 0041C8D4 10000026 */  b     .L0041C970
/* 0041C8D8 A0430000 */   sb    $v1, ($v0)
.L0041C8DC:
/* 0041C8DC 8F948AE4 */  lw     $s4, %got(currtextindex)($gp)
/* 0041C8E0 8F968AEC */  lw     $s6, %got(seg_ic)($gp)
/* 0041C8E4 8E8C0000 */  lw    $t4, ($s4)
/* 0041C8E8 8ECE0000 */  lw    $t6, ($s6)
/* 0041C8EC 000CC080 */  sll   $t8, $t4, 2
/* 0041C8F0 01D84821 */  addu  $t1, $t6, $t8
/* 0041C8F4 8D2B0000 */  lw    $t3, ($t1)
/* 0041C8F8 8F818B78 */  lw     $at, %got(currfunc_prolog)($gp)
/* 0041C8FC 8F828B74 */  lw     $v0, %got(is_nonleaf)($gp)
/* 0041C900 AC2B0000 */  sw    $t3, ($at)
/* 0041C904 8EF90004 */  lw    $t9, 4($s7)
/* 0041C908 24030001 */  li    $v1, 1
/* 0041C90C 904A0000 */  lbu   $t2, ($v0)
/* 0041C910 00796826 */  xor   $t5, $v1, $t9
/* 0041C914 2DAD0001 */  sltiu $t5, $t5, 1
/* 0041C918 014D7825 */  or    $t7, $t2, $t5
/* 0041C91C 10000014 */  b     .L0041C970
/* 0041C920 A04F0000 */   sb    $t7, ($v0)
.L0041C924:
/* 0041C924 8F948AE4 */  lw     $s4, %got(currtextindex)($gp)
/* 0041C928 8F968AEC */  lw     $s6, %got(seg_ic)($gp)
/* 0041C92C 8E8E0000 */  lw    $t6, ($s4)
/* 0041C930 8ECC0000 */  lw    $t4, ($s6)
/* 0041C934 000EC080 */  sll   $t8, $t6, 2
/* 0041C938 8EEB0008 */  lw    $t3, 8($s7)
/* 0041C93C 01984821 */  addu  $t1, $t4, $t8
/* 0041C940 8D260000 */  lw    $a2, ($t1)
/* 0041C944 8EE50004 */  lw    $a1, 4($s7)
/* 0041C948 AFAB0010 */  sw    $t3, 0x10($sp)
/* 0041C94C 8EF9000C */  lw    $t9, 0xc($s7)
/* 0041C950 02002025 */  move  $a0, $s0
/* 0041C954 AFB90014 */  sw    $t9, 0x14($sp)
/* 0041C958 8F9983F4 */  lw    $t9, %call16(st_pseudo)($gp)
/* 0041C95C 00003825 */  move  $a3, $zero
/* 0041C960 0320F809 */  jalr  $t9
/* 0041C964 00000000 */   nop   
/* 0041C968 8FBC0040 */  lw    $gp, 0x40($sp)
/* 0041C96C 00000000 */  nop   
.L0041C970:
/* 0041C970 8FBF0044 */  lw    $ra, 0x44($sp)
.L0041C974:
/* 0041C974 8FB00020 */  lw    $s0, 0x20($sp)
/* 0041C978 8FB10024 */  lw    $s1, 0x24($sp)
/* 0041C97C 8FB20028 */  lw    $s2, 0x28($sp)
/* 0041C980 8FB3002C */  lw    $s3, 0x2c($sp)
/* 0041C984 8FB40030 */  lw    $s4, 0x30($sp)
/* 0041C988 8FB50034 */  lw    $s5, 0x34($sp)
/* 0041C98C 8FB60038 */  lw    $s6, 0x38($sp)
/* 0041C990 8FB7003C */  lw    $s7, 0x3c($sp)
/* 0041C994 03E00008 */  jr    $ra
/* 0041C998 27BD0048 */   addiu $sp, $sp, 0x48

    .type func_0041C99C, @function
func_0041C99C:
    # 00420E34 traverse_bb
/* 0041C99C 3C1C0FC1 */  .cpload $t9
/* 0041C9A0 279CD8C4 */  
/* 0041C9A4 0399E021 */  
/* 0041C9A8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0041C9AC AFA40030 */  sw    $a0, 0x30($sp)
/* 0041C9B0 8FAE0030 */  lw    $t6, 0x30($sp)
/* 0041C9B4 8F84806C */  lw    $a0, %got(RO_10013C10)($gp)
/* 0041C9B8 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0041C9BC AFBF002C */  sw    $ra, 0x2c($sp)
/* 0041C9C0 AFBC0028 */  sw    $gp, 0x28($sp)
/* 0041C9C4 AFB40024 */  sw    $s4, 0x24($sp)
/* 0041C9C8 AFB30020 */  sw    $s3, 0x20($sp)
/* 0041C9CC AFB2001C */  sw    $s2, 0x1c($sp)
/* 0041C9D0 AFB10018 */  sw    $s1, 0x18($sp)
/* 0041C9D4 AFB00014 */  sw    $s0, 0x14($sp)
/* 0041C9D8 8DC50040 */  lw    $a1, 0x40($t6)
/* 0041C9DC 0320F809 */  jalr  $t9
/* 0041C9E0 24843C10 */   addiu $a0, %lo(RO_10013C10) # addiu $a0, $a0, 0x3c10
/* 0041C9E4 8FAF0030 */  lw    $t7, 0x30($sp)
/* 0041C9E8 8FBC0028 */  lw    $gp, 0x28($sp)
/* 0041C9EC 8DF10010 */  lw    $s1, 0x10($t7)
/* 0041C9F0 00008025 */  move  $s0, $zero
/* 0041C9F4 12200019 */  beqz  $s1, .L0041CA5C
/* 0041C9F8 2414000F */   li    $s4, 15
/* 0041C9FC 8F93806C */  lw    $s3, %got(RO_10013C38)($gp)
/* 0041CA00 8F92806C */  lw    $s2, %got(RO_10013C30)($gp)
/* 0041CA04 26733C38 */  addiu $s3, %lo(RO_10013C38) # addiu $s3, $s3, 0x3c38
/* 0041CA08 26523C30 */  addiu $s2, %lo(RO_10013C30) # addiu $s2, $s2, 0x3c30
.L0041CA0C:
/* 0041CA0C 8E380000 */  lw    $t8, ($s1)
/* 0041CA10 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0041CA14 8F050040 */  lw    $a1, 0x40($t8)
/* 0041CA18 0320F809 */  jalr  $t9
/* 0041CA1C 02402025 */   move  $a0, $s2
/* 0041CA20 8FBC0028 */  lw    $gp, 0x28($sp)
/* 0041CA24 26100001 */  addiu $s0, $s0, 1
/* 0041CA28 16140007 */  bne   $s0, $s4, .L0041CA48
/* 0041CA2C 00000000 */   nop   
/* 0041CA30 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0041CA34 02602025 */  move  $a0, $s3
/* 0041CA38 0320F809 */  jalr  $t9
/* 0041CA3C 00000000 */   nop   
/* 0041CA40 8FBC0028 */  lw    $gp, 0x28($sp)
/* 0041CA44 00008025 */  move  $s0, $zero
.L0041CA48:
/* 0041CA48 8E310004 */  lw    $s1, 4($s1)
/* 0041CA4C 00000000 */  nop   
/* 0041CA50 1620FFEE */  bnez  $s1, .L0041CA0C
/* 0041CA54 00000000 */   nop   
/* 0041CA58 00008025 */  move  $s0, $zero
.L0041CA5C:
/* 0041CA5C 8F84806C */  lw    $a0, %got(RO_10013C3C)($gp)
/* 0041CA60 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0041CA64 2414000F */  li    $s4, 15
/* 0041CA68 0320F809 */  jalr  $t9
/* 0041CA6C 24843C3C */   addiu $a0, %lo(RO_10013C3C) # addiu $a0, $a0, 0x3c3c
/* 0041CA70 8FB90030 */  lw    $t9, 0x30($sp)
/* 0041CA74 8FBC0028 */  lw    $gp, 0x28($sp)
/* 0041CA78 8F310014 */  lw    $s1, 0x14($t9)
/* 0041CA7C 00000000 */  nop   
/* 0041CA80 12200018 */  beqz  $s1, .L0041CAE4
/* 0041CA84 00000000 */   nop   
/* 0041CA88 8F93806C */  lw    $s3, %got(RO_10013C54)($gp)
/* 0041CA8C 8F92806C */  lw    $s2, %got(RO_10013C4C)($gp)
/* 0041CA90 26733C54 */  addiu $s3, %lo(RO_10013C54) # addiu $s3, $s3, 0x3c54
/* 0041CA94 26523C4C */  addiu $s2, %lo(RO_10013C4C) # addiu $s2, $s2, 0x3c4c
.L0041CA98:
/* 0041CA98 8E280000 */  lw    $t0, ($s1)
/* 0041CA9C 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0041CAA0 8D050040 */  lw    $a1, 0x40($t0)
/* 0041CAA4 0320F809 */  jalr  $t9
/* 0041CAA8 02402025 */   move  $a0, $s2
/* 0041CAAC 8FBC0028 */  lw    $gp, 0x28($sp)
/* 0041CAB0 26100001 */  addiu $s0, $s0, 1
/* 0041CAB4 16140007 */  bne   $s0, $s4, .L0041CAD4
/* 0041CAB8 00000000 */   nop   
/* 0041CABC 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0041CAC0 02602025 */  move  $a0, $s3
/* 0041CAC4 0320F809 */  jalr  $t9
/* 0041CAC8 00000000 */   nop   
/* 0041CACC 8FBC0028 */  lw    $gp, 0x28($sp)
/* 0041CAD0 00008025 */  move  $s0, $zero
.L0041CAD4:
/* 0041CAD4 8E310004 */  lw    $s1, 4($s1)
/* 0041CAD8 00000000 */  nop   
/* 0041CADC 1620FFEE */  bnez  $s1, .L0041CA98
/* 0041CAE0 00000000 */   nop   
.L0041CAE4:
/* 0041CAE4 8F84806C */  lw    $a0, %got(RO_10013C58)($gp)
/* 0041CAE8 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0041CAEC 24843C58 */  addiu $a0, %lo(RO_10013C58) # addiu $a0, $a0, 0x3c58
/* 0041CAF0 0320F809 */  jalr  $t9
/* 0041CAF4 00000000 */   nop   
/* 0041CAF8 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0041CAFC 8FBC0028 */  lw    $gp, 0x28($sp)
/* 0041CB00 8FB00014 */  lw    $s0, 0x14($sp)
/* 0041CB04 8FB10018 */  lw    $s1, 0x18($sp)
/* 0041CB08 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0041CB0C 8FB30020 */  lw    $s3, 0x20($sp)
/* 0041CB10 8FB40024 */  lw    $s4, 0x24($sp)
/* 0041CB14 03E00008 */  jr    $ra
/* 0041CB18 27BD0030 */   addiu $sp, $sp, 0x30

    .type func_0041CB1C, @function
func_0041CB1C:
    # 0041CC00 func_0041CC00
    # 0041E40C func_0041E40C
    # 0041EB84 create_prolog_and_epilog_bbs
/* 0041CB1C 3C1C0FC1 */  .cpload $t9
/* 0041CB20 279CD744 */  
/* 0041CB24 0399E021 */  
/* 0041CB28 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0041CB2C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0041CB30 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0041CB34 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0041CB38 0320F809 */  jalr  $t9
/* 0041CB3C 24040064 */   li    $a0, 100
/* 0041CB40 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0041CB44 904E0046 */  lbu   $t6, 0x46($v0)
/* 0041CB48 90590047 */  lbu   $t9, 0x47($v0)
/* 0041CB4C 31D8FF7F */  andi  $t8, $t6, 0xff7f
/* 0041CB50 330900BF */  andi  $t1, $t8, 0xbf
/* 0041CB54 A0580046 */  sb    $t8, 0x46($v0)
/* 0041CB58 352C0020 */  ori   $t4, $t1, 0x20
/* 0041CB5C A0490046 */  sb    $t1, 0x46($v0)
/* 0041CB60 358F0010 */  ori   $t7, $t4, 0x10
/* 0041CB64 3329FFBF */  andi  $t1, $t9, 0xffbf
/* 0041CB68 A04C0046 */  sb    $t4, 0x46($v0)
/* 0041CB6C 35EB0008 */  ori   $t3, $t7, 8
/* 0041CB70 312D00DF */  andi  $t5, $t1, 0xdf
/* 0041CB74 A04F0046 */  sb    $t7, 0x46($v0)
/* 0041CB78 A0490047 */  sb    $t1, 0x47($v0)
/* 0041CB7C 8F838A9C */  lw     $v1, %got(num_bbs)($gp)
/* 0041CB80 A04B0046 */  sb    $t3, 0x46($v0)
/* 0041CB84 A04D0047 */  sb    $t5, 0x47($v0)
/* 0041CB88 316C00FE */  andi  $t4, $t3, 0xfe
/* 0041CB8C 31AE00EF */  andi  $t6, $t5, 0xef
/* 0041CB90 AC400000 */  sw    $zero, ($v0)
/* 0041CB94 AC400004 */  sw    $zero, 4($v0)
/* 0041CB98 AC400008 */  sw    $zero, 8($v0)
/* 0041CB9C AC40000C */  sw    $zero, 0xc($v0)
/* 0041CBA0 AC400010 */  sw    $zero, 0x10($v0)
/* 0041CBA4 AC400014 */  sw    $zero, 0x14($v0)
/* 0041CBA8 AC400024 */  sw    $zero, 0x24($v0)
/* 0041CBAC AC400028 */  sw    $zero, 0x28($v0)
/* 0041CBB0 AC400030 */  sw    $zero, 0x30($v0)
/* 0041CBB4 AC400034 */  sw    $zero, 0x34($v0)
/* 0041CBB8 A440003C */  sh    $zero, 0x3c($v0)
/* 0041CBBC A440003E */  sh    $zero, 0x3e($v0)
/* 0041CBC0 A4400048 */  sh    $zero, 0x48($v0)
/* 0041CBC4 A4400044 */  sh    $zero, 0x44($v0)
/* 0041CBC8 A04C0046 */  sb    $t4, 0x46($v0)
/* 0041CBCC A04E0047 */  sb    $t6, 0x47($v0)
/* 0041CBD0 A440004E */  sh    $zero, 0x4e($v0)
/* 0041CBD4 AC400050 */  sw    $zero, 0x50($v0)
/* 0041CBD8 AC400058 */  sw    $zero, 0x58($v0)
/* 0041CBDC AC400054 */  sw    $zero, 0x54($v0)
/* 0041CBE0 AC40005C */  sw    $zero, 0x5c($v0)
/* 0041CBE4 AC400060 */  sw    $zero, 0x60($v0)
/* 0041CBE8 8C6F0000 */  lw    $t7, ($v1)
/* 0041CBEC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0041CBF0 25F80001 */  addiu $t8, $t7, 1
/* 0041CBF4 27BD0020 */  addiu $sp, $sp, 0x20
/* 0041CBF8 03E00008 */  jr    $ra
/* 0041CBFC AC780000 */   sw    $t8, ($v1)

    .type func_0041CC00, @function
func_0041CC00:
    # 0041E40C func_0041E40C
    # 00420E34 traverse_bb
    # 00421408 init_inst_heap
/* 0041CC00 3C1C0FC1 */  .cpload $t9
/* 0041CC04 279CD660 */  
/* 0041CC08 0399E021 */  
/* 0041CC0C 8F898088 */  lw    $t1, %got(B_10023308)($gp)
/* 0041CC10 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0041CC14 25293308 */  addiu $t1, %lo(B_10023308) # addiu $t1, $t1, 0x3308
/* 0041CC18 8D250000 */  lw    $a1, ($t1)
/* 0041CC1C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0041CC20 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0041CC24 10A000B7 */  beqz  $a1, .L0041CF04
/* 0041CC28 AFA40020 */   sw    $a0, 0x20($sp)
/* 0041CC2C 8F868B40 */  lw     $a2, %got(pinstruction)($gp)
/* 0041CC30 8F8E8B7C */  lw     $t6, %got(cur_pinst)($gp)
/* 0041CC34 8CCF0000 */  lw    $t7, ($a2)
/* 0041CC38 8DCE0000 */  lw    $t6, ($t6)
/* 0041CC3C 240A0028 */  li    $t2, 40
/* 0041CC40 01CFC023 */  subu  $t8, $t6, $t7
/* 0041CC44 030A001A */  div   $zero, $t8, $t2
/* 0041CC48 15400002 */  bnez  $t2, .L0041CC54
/* 0041CC4C 00000000 */   nop   
/* 0041CC50 0007000D */  break 7
.L0041CC54:
/* 0041CC54 2401FFFF */  li    $at, -1
/* 0041CC58 15410004 */  bne   $t2, $at, .L0041CC6C
/* 0041CC5C 3C018000 */   lui   $at, 0x8000
/* 0041CC60 17010002 */  bne   $t8, $at, .L0041CC6C
/* 0041CC64 00000000 */   nop   
/* 0041CC68 0006000D */  break 6
.L0041CC6C:
/* 0041CC6C 0000C812 */  mflo  $t9
/* 0041CC70 A4B9003C */  sh    $t9, 0x3c($a1)
/* 0041CC74 8D2B0000 */  lw    $t3, ($t1)
/* 0041CC78 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0041CC7C 956C003C */  lhu   $t4, 0x3c($t3)
/* 0041CC80 00000000 */  nop   
/* 0041CC84 258D0001 */  addiu $t5, $t4, 1
/* 0041CC88 01AA0019 */  multu $t5, $t2
/* 0041CC8C 00002012 */  mflo  $a0
/* 0041CC90 0320F809 */  jalr  $t9
/* 0041CC94 00000000 */   nop   
/* 0041CC98 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0041CC9C 240A0028 */  li    $t2, 40
/* 0041CCA0 8F898088 */  lw    $t1, %got(B_10023308)($gp)
/* 0041CCA4 8F868B40 */  lw     $a2, %got(pinstruction)($gp)
/* 0041CCA8 25293308 */  addiu $t1, %lo(B_10023308) # addiu $t1, $t1, 0x3308
/* 0041CCAC 8D2E0000 */  lw    $t6, ($t1)
/* 0041CCB0 24030001 */  li    $v1, 1
/* 0041CCB4 ADC2000C */  sw    $v0, 0xc($t6)
/* 0041CCB8 8D250000 */  lw    $a1, ($t1)
/* 0041CCBC 24020028 */  li    $v0, 40
/* 0041CCC0 94A4003C */  lhu   $a0, 0x3c($a1)
/* 0041CCC4 00000000 */  nop   
/* 0041CCC8 18800019 */  blez  $a0, .L0041CD30
/* 0041CCCC 00000000 */   nop   
.L0041CCD0:
/* 0041CCD0 8CD90000 */  lw    $t9, ($a2)
/* 0041CCD4 8CAF000C */  lw    $t7, 0xc($a1)
/* 0041CCD8 03225821 */  addu  $t3, $t9, $v0
/* 0041CCDC 256D0024 */  addiu $t5, $t3, 0x24
/* 0041CCE0 01E2C021 */  addu  $t8, $t7, $v0
.L0041CCE4:
/* 0041CCE4 8D610000 */  lw    $at, ($t3)
/* 0041CCE8 256B000C */  addiu $t3, $t3, 0xc
/* 0041CCEC AF010000 */  sw    $at, ($t8)
/* 0041CCF0 8D61FFF8 */  lw    $at, -8($t3)
/* 0041CCF4 2718000C */  addiu $t8, $t8, 0xc
/* 0041CCF8 AF01FFF8 */  sw    $at, -8($t8)
/* 0041CCFC 8D61FFFC */  lw    $at, -4($t3)
/* 0041CD00 156DFFF8 */  bne   $t3, $t5, .L0041CCE4
/* 0041CD04 AF01FFFC */   sw    $at, -4($t8)
/* 0041CD08 8D610000 */  lw    $at, ($t3)
/* 0041CD0C 24630001 */  addiu $v1, $v1, 1
/* 0041CD10 AF010000 */  sw    $at, ($t8)
/* 0041CD14 8D250000 */  lw    $a1, ($t1)
/* 0041CD18 24420028 */  addiu $v0, $v0, 0x28
/* 0041CD1C 94A4003C */  lhu   $a0, 0x3c($a1)
/* 0041CD20 00000000 */  nop   
/* 0041CD24 0083082A */  slt   $at, $a0, $v1
/* 0041CD28 1020FFE9 */  beqz  $at, .L0041CCD0
/* 0041CD2C 00000000 */   nop   
.L0041CD30:
/* 0041CD30 8F868B80 */  lw     $a2, %got(nextmultireloc)($gp)
/* 0041CD34 00000000 */  nop   
/* 0041CD38 8CC60000 */  lw    $a2, ($a2)
/* 0041CD3C 00000000 */  nop   
/* 0041CD40 28C10002 */  slti  $at, $a2, 2
/* 0041CD44 1420001E */  bnez  $at, .L0041CDC0
/* 0041CD48 28C10002 */   slti  $at, $a2, 2
/* 0041CD4C 1420001C */  bnez  $at, .L0041CDC0
/* 0041CD50 24030001 */   li    $v1, 1
/* 0041CD54 8F888B84 */  lw     $t0, %got(multireloc_list)($gp)
/* 0041CD58 8F878B88 */  lw     $a3, %got(proc_instr_base)($gp)
/* 0041CD5C 24040008 */  li    $a0, 8
.L0041CD60:
/* 0041CD60 8D0E0000 */  lw    $t6, ($t0)
/* 0041CD64 24630001 */  addiu $v1, $v1, 1
/* 0041CD68 01C41021 */  addu  $v0, $t6, $a0
/* 0041CD6C 8C4F0004 */  lw    $t7, 4($v0)
/* 0041CD70 00000000 */  nop   
/* 0041CD74 15E0000E */  bnez  $t7, .L0041CDB0
/* 0041CD78 0066082A */   slt   $at, $v1, $a2
/* 0041CD7C 8C590000 */  lw    $t9, ($v0)
/* 0041CD80 8CEC0000 */  lw    $t4, ($a3)
/* 0041CD84 8CB8000C */  lw    $t8, 0xc($a1)
/* 0041CD88 032C6823 */  subu  $t5, $t9, $t4
/* 0041CD8C 01AA0019 */  multu $t5, $t2
/* 0041CD90 8F868B80 */  lw     $a2, %got(nextmultireloc)($gp)
/* 0041CD94 00005812 */  mflo  $t3
/* 0041CD98 01787021 */  addu  $t6, $t3, $t8
/* 0041CD9C AC4E0004 */  sw    $t6, 4($v0)
/* 0041CDA0 8D250000 */  lw    $a1, ($t1)
/* 0041CDA4 8CC60000 */  lw    $a2, ($a2)
/* 0041CDA8 00000000 */  nop   
/* 0041CDAC 0066082A */  slt   $at, $v1, $a2
.L0041CDB0:
/* 0041CDB0 1420FFEB */  bnez  $at, .L0041CD60
/* 0041CDB4 24840008 */   addiu $a0, $a0, 8
/* 0041CDB8 94A4003C */  lhu   $a0, 0x3c($a1)
/* 0041CDBC 00000000 */  nop   
.L0041CDC0:
/* 0041CDC0 8F878B88 */  lw     $a3, %got(proc_instr_base)($gp)
/* 0041CDC4 8F8C8088 */  lw    $t4, %got(B_10023314)($gp)
/* 0041CDC8 8CEF0000 */  lw    $t7, ($a3)
/* 0041CDCC 8F8D8088 */  lw    $t5, %got(B_10023318)($gp)
/* 0041CDD0 01E4C821 */  addu  $t9, $t7, $a0
/* 0041CDD4 ACF90000 */  sw    $t9, ($a3)
/* 0041CDD8 8D8C3314 */  lw    $t4, %lo(B_10023314)($t4)
/* 0041CDDC 8F868B98 */  lw     $a2, %got(currentent)($gp)
/* 0041CDE0 A4AC003E */  sh    $t4, 0x3e($a1)
/* 0041CDE4 8D250000 */  lw    $a1, ($t1)
/* 0041CDE8 8DAB3318 */  lw    $t3, %lo(B_10023318)($t5)
/* 0041CDEC 90AF0046 */  lbu   $t7, 0x46($a1)
/* 0041CDF0 000B71C0 */  sll   $t6, $t3, 7
/* 0041CDF4 31F9FF7F */  andi  $t9, $t7, 0xff7f
/* 0041CDF8 01D96025 */  or    $t4, $t6, $t9
/* 0041CDFC 8F8D8B8C */  lw     $t5, %got(reorderflag)($gp)
/* 0041CE00 A0AC0046 */  sb    $t4, 0x46($a1)
/* 0041CE04 8D250000 */  lw    $a1, ($t1)
/* 0041CE08 91AB0000 */  lbu   $t3, ($t5)
/* 0041CE0C 90AE0046 */  lbu   $t6, 0x46($a1)
/* 0041CE10 000BC140 */  sll   $t8, $t3, 5
/* 0041CE14 330F0020 */  andi  $t7, $t8, 0x20
/* 0041CE18 31D9FFDF */  andi  $t9, $t6, 0xffdf
/* 0041CE1C 01F96025 */  or    $t4, $t7, $t9
/* 0041CE20 8F8D8B90 */  lw     $t5, %got(transform_flag)($gp)
/* 0041CE24 A0AC0046 */  sb    $t4, 0x46($a1)
/* 0041CE28 8D250000 */  lw    $a1, ($t1)
/* 0041CE2C 91AB0000 */  lbu   $t3, ($t5)
/* 0041CE30 90AF0046 */  lbu   $t7, 0x46($a1)
/* 0041CE34 000BC100 */  sll   $t8, $t3, 4
/* 0041CE38 330E0010 */  andi  $t6, $t8, 0x10
/* 0041CE3C 31F9FFEF */  andi  $t9, $t7, 0xffef
/* 0041CE40 01D96025 */  or    $t4, $t6, $t9
/* 0041CE44 8F8D8B94 */  lw     $t5, %got(opts)($gp)
/* 0041CE48 A0AC0046 */  sb    $t4, 0x46($a1)
/* 0041CE4C 8D250000 */  lw    $a1, ($t1)
/* 0041CE50 91AB0004 */  lbu   $t3, 4($t5)
/* 0041CE54 90AE0046 */  lbu   $t6, 0x46($a1)
/* 0041CE58 000BC0C0 */  sll   $t8, $t3, 3
/* 0041CE5C 330F0008 */  andi  $t7, $t8, 8
/* 0041CE60 31D9FFF7 */  andi  $t9, $t6, 0xfff7
/* 0041CE64 01F96025 */  or    $t4, $t7, $t9
/* 0041CE68 A0AC0046 */  sb    $t4, 0x46($a1)
/* 0041CE6C 8CC60000 */  lw    $a2, ($a2)
/* 0041CE70 00000000 */  nop   
/* 0041CE74 10C0000D */  beqz  $a2, .L0041CEAC
/* 0041CE78 00000000 */   nop   
/* 0041CE7C 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 0041CE80 00C02025 */  move  $a0, $a2
/* 0041CE84 0320F809 */  jalr  $t9
/* 0041CE88 00000000 */   nop   
/* 0041CE8C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0041CE90 00000000 */  nop   
/* 0041CE94 8F898088 */  lw    $t1, %got(B_10023308)($gp)
/* 0041CE98 00000000 */  nop   
/* 0041CE9C 25293308 */  addiu $t1, %lo(B_10023308) # addiu $t1, $t1, 0x3308
/* 0041CEA0 8D2D0000 */  lw    $t5, ($t1)
/* 0041CEA4 00000000 */  nop   
/* 0041CEA8 ADA2005C */  sw    $v0, 0x5c($t5)
.L0041CEAC:
/* 0041CEAC 8F8B8B9C */  lw     $t3, %got(currentent_name)($gp)
/* 0041CEB0 8D380000 */  lw    $t8, ($t1)
/* 0041CEB4 8D6B0000 */  lw    $t3, ($t3)
/* 0041CEB8 00000000 */  nop   
/* 0041CEBC AF0B0060 */  sw    $t3, 0x60($t8)
/* 0041CEC0 8FAE0020 */  lw    $t6, 0x20($sp)
/* 0041CEC4 00000000 */  nop   
/* 0041CEC8 15C0001E */  bnez  $t6, .L0041CF44
/* 0041CECC 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0041CED0 8F99801C */  lw    $t9, %got(func_0041CB1C)($gp)
/* 0041CED4 00000000 */  nop   
/* 0041CED8 2739CB1C */  addiu $t9, %lo(func_0041CB1C) # addiu $t9, $t9, -0x34e4
/* 0041CEDC 0320F809 */  jalr  $t9
/* 0041CEE0 00000000 */   nop   
/* 0041CEE4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0041CEE8 00000000 */  nop   
/* 0041CEEC 8F898088 */  lw    $t1, %got(B_10023308)($gp)
/* 0041CEF0 00000000 */  nop   
/* 0041CEF4 25293308 */  addiu $t1, %lo(B_10023308) # addiu $t1, $t1, 0x3308
/* 0041CEF8 8D2F0000 */  lw    $t7, ($t1)
/* 0041CEFC 1000000C */  b     .L0041CF30
/* 0041CF00 ADE20008 */   sw    $v0, 8($t7)
.L0041CF04:
/* 0041CF04 8F99801C */  lw    $t9, %got(func_0041CB1C)($gp)
/* 0041CF08 00000000 */  nop   
/* 0041CF0C 2739CB1C */  addiu $t9, %lo(func_0041CB1C) # addiu $t9, $t9, -0x34e4
/* 0041CF10 0320F809 */  jalr  $t9
/* 0041CF14 00000000 */   nop   
/* 0041CF18 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0041CF1C 00000000 */  nop   
/* 0041CF20 8F898088 */  lw    $t1, %got(B_10023308)($gp)
/* 0041CF24 8F818088 */  lw    $at, %got(B_10023304)($gp)
/* 0041CF28 25293308 */  addiu $t1, %lo(B_10023308) # addiu $t1, $t1, 0x3308
/* 0041CF2C AC223304 */  sw    $v0, %lo(B_10023304)($at)
.L0041CF30:
/* 0041CF30 8D390000 */  lw    $t9, ($t1)
/* 0041CF34 8F818088 */  lw    $at, %got(B_10023308)($gp)
/* 0041CF38 AC590000 */  sw    $t9, ($v0)
/* 0041CF3C AC223308 */  sw    $v0, %lo(B_10023308)($at)
/* 0041CF40 8FBF001C */  lw    $ra, 0x1c($sp)
.L0041CF44:
/* 0041CF44 27BD0020 */  addiu $sp, $sp, 0x20
/* 0041CF48 03E00008 */  jr    $ra
/* 0041CF4C 00000000 */   nop   

    .type func_0041CF50, @function
func_0041CF50:
    # 0041DC10 func_0041DC10
    # 0041EB84 create_prolog_and_epilog_bbs
/* 0041CF50 3C1C0FC1 */  .cpload $t9
/* 0041CF54 279CD310 */  
/* 0041CF58 0399E021 */  
/* 0041CF5C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0041CF60 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0041CF64 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0041CF68 10A00025 */  beqz  $a1, .L0041D000
/* 0041CF6C 00803025 */   move  $a2, $a0
/* 0041CF70 8C820010 */  lw    $v0, 0x10($a0)
/* 0041CF74 24040008 */  li    $a0, 8
/* 0041CF78 10400009 */  beqz  $v0, .L0041CFA0
/* 0041CF7C 00000000 */   nop   
.L0041CF80:
/* 0041CF80 8C4E0000 */  lw    $t6, ($v0)
/* 0041CF84 00000000 */  nop   
/* 0041CF88 10AE001E */  beq   $a1, $t6, .L0041D004
/* 0041CF8C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0041CF90 8C420004 */  lw    $v0, 4($v0)
/* 0041CF94 00000000 */  nop   
/* 0041CF98 1440FFF9 */  bnez  $v0, .L0041CF80
/* 0041CF9C 00000000 */   nop   
.L0041CFA0:
/* 0041CFA0 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0041CFA4 AFA50024 */  sw    $a1, 0x24($sp)
/* 0041CFA8 0320F809 */  jalr  $t9
/* 0041CFAC AFA60020 */   sw    $a2, 0x20($sp)
/* 0041CFB0 8FA50024 */  lw    $a1, 0x24($sp)
/* 0041CFB4 8FA60020 */  lw    $a2, 0x20($sp)
/* 0041CFB8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0041CFBC AC450000 */  sw    $a1, ($v0)
/* 0041CFC0 8CCF0010 */  lw    $t7, 0x10($a2)
/* 0041CFC4 24040008 */  li    $a0, 8
/* 0041CFC8 AC4F0004 */  sw    $t7, 4($v0)
/* 0041CFCC ACC20010 */  sw    $v0, 0x10($a2)
/* 0041CFD0 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0041CFD4 00000000 */  nop   
/* 0041CFD8 0320F809 */  jalr  $t9
/* 0041CFDC 00000000 */   nop   
/* 0041CFE0 8FA50024 */  lw    $a1, 0x24($sp)
/* 0041CFE4 8FA60020 */  lw    $a2, 0x20($sp)
/* 0041CFE8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0041CFEC AC460000 */  sw    $a2, ($v0)
/* 0041CFF0 8CB80014 */  lw    $t8, 0x14($a1)
/* 0041CFF4 00000000 */  nop   
/* 0041CFF8 AC580004 */  sw    $t8, 4($v0)
/* 0041CFFC ACA20014 */  sw    $v0, 0x14($a1)
.L0041D000:
/* 0041D000 8FBF001C */  lw    $ra, 0x1c($sp)
.L0041D004:
/* 0041D004 27BD0020 */  addiu $sp, $sp, 0x20
/* 0041D008 03E00008 */  jr    $ra
/* 0041D00C 00000000 */   nop   

/* 0041D010 03E00008 */  jr    $ra
/* 0041D014 00000000 */   nop   

glabel create_label_pinst
    .ent create_label_pinst
    # 0041D5A0 func_0041D5A0
    # 004262C0 func_004262C0
    # 004279B8 schedule
/* 0041D018 3C1C0FC1 */  .cpload $t9
/* 0041D01C 279CD248 */  
/* 0041D020 0399E021 */  
/* 0041D024 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0041D028 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0041D02C AFBC0018 */  sw    $gp, 0x18($sp)
/* 0041D030 3C0E7FFF */  lui   $t6, 0x7fff
/* 0041D034 35CEFFFF */  ori   $t6, $t6, 0xffff
/* 0041D038 240F001A */  li    $t7, 26
/* 0041D03C AC8E0000 */  sw    $t6, ($a0)
/* 0041D040 AC8F0010 */  sw    $t7, 0x10($a0)
/* 0041D044 8F9985F0 */  lw    $t9, %call16(create_local_label)($gp)
/* 0041D048 00802825 */  move  $a1, $a0
/* 0041D04C AFA50030 */  sw    $a1, 0x30($sp)
/* 0041D050 0320F809 */  jalr  $t9
/* 0041D054 27A40028 */   addiu $a0, $sp, 0x28
/* 0041D058 8FA50030 */  lw    $a1, 0x30($sp)
/* 0041D05C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0041D060 ACA20004 */  sw    $v0, 4($a1)
/* 0041D064 8FB80028 */  lw    $t8, 0x28($sp)
/* 0041D068 ACA00018 */  sw    $zero, 0x18($a1)
/* 0041D06C ACB80014 */  sw    $t8, 0x14($a1)
/* 0041D070 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0041D074 8FA20028 */  lw    $v0, 0x28($sp)
/* 0041D078 03E00008 */  jr    $ra
/* 0041D07C 27BD0030 */   addiu $sp, $sp, 0x30

    .type create_label_pinst, @function
    .size create_label_pinst, .-create_label_pinst
    .end create_label_pinst

    .type func_0041D080, @function
func_0041D080:
    # 0041DC10 func_0041DC10
/* 0041D080 3C1C0FC1 */  .cpload $t9
/* 0041D084 279CD1E0 */  
/* 0041D088 0399E021 */  
/* 0041D08C 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0041D090 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0041D094 AFBC0030 */  sw    $gp, 0x30($sp)
/* 0041D098 AFB5002C */  sw    $s5, 0x2c($sp)
/* 0041D09C AFB40028 */  sw    $s4, 0x28($sp)
/* 0041D0A0 AFB30024 */  sw    $s3, 0x24($sp)
/* 0041D0A4 AFB20020 */  sw    $s2, 0x20($sp)
/* 0041D0A8 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0041D0AC AFB00018 */  sw    $s0, 0x18($sp)
/* 0041D0B0 AFA40060 */  sw    $a0, 0x60($sp)
/* 0041D0B4 9495003E */  lhu   $s5, 0x3e($a0)
/* 0041D0B8 8FAF0060 */  lw    $t7, 0x60($sp)
/* 0041D0BC 16A00003 */  bnez  $s5, .L0041D0CC
/* 0041D0C0 0000A025 */   move  $s4, $zero
/* 0041D0C4 1000007A */  b     .L0041D2B0
/* 0041D0C8 00001025 */   move  $v0, $zero
.L0041D0CC:
/* 0041D0CC 8DF8000C */  lw    $t8, 0xc($t7)
/* 0041D0D0 2AA10002 */  slti  $at, $s5, 2
/* 0041D0D4 24110001 */  li    $s1, 1
/* 0041D0D8 14200023 */  bnez  $at, .L0041D168
/* 0041D0DC AFB80058 */   sw    $t8, 0x58($sp)
/* 0041D0E0 3C137FFF */  lui   $s3, 0x7fff
/* 0041D0E4 3673FFFF */  ori   $s3, $s3, 0xffff
/* 0041D0E8 27100028 */  addiu $s0, $t8, 0x28
/* 0041D0EC 27B20054 */  addiu $s2, $sp, 0x54
.L0041D0F0:
/* 0041D0F0 8E020000 */  lw    $v0, ($s0)
/* 0041D0F4 00000000 */  nop   
/* 0041D0F8 12620018 */  beq   $s3, $v0, .L0041D15C
/* 0041D0FC 00000000 */   nop   
/* 0041D100 AFA20054 */  sw    $v0, 0x54($sp)
/* 0041D104 8E440000 */  lw    $a0, ($s2)
/* 0041D108 8F9983AC */  lw    $t9, %call16(loads_from_memory)($gp)
/* 0041D10C AFA40000 */  sw    $a0, ($sp)
/* 0041D110 0320F809 */  jalr  $t9
/* 0041D114 00000000 */   nop   
/* 0041D118 8FBC0030 */  lw    $gp, 0x30($sp)
/* 0041D11C 1440000D */  bnez  $v0, .L0041D154
/* 0041D120 00000000 */   nop   
/* 0041D124 8E440000 */  lw    $a0, ($s2)
/* 0041D128 8F9983A8 */  lw    $t9, %call16(stores_to_memory)($gp)
/* 0041D12C AFA40000 */  sw    $a0, ($sp)
/* 0041D130 0320F809 */  jalr  $t9
/* 0041D134 00000000 */   nop   
/* 0041D138 8FBC0030 */  lw    $gp, 0x30($sp)
/* 0041D13C 14400005 */  bnez  $v0, .L0041D154
/* 0041D140 26940001 */   addiu $s4, $s4, 1
/* 0041D144 920B001C */  lbu   $t3, 0x1c($s0)
/* 0041D148 2401001D */  li    $at, 29
/* 0041D14C 15610003 */  bne   $t3, $at, .L0041D15C
/* 0041D150 00000000 */   nop   
.L0041D154:
/* 0041D154 10000056 */  b     .L0041D2B0
/* 0041D158 00001025 */   move  $v0, $zero
.L0041D15C:
/* 0041D15C 26310001 */  addiu $s1, $s1, 1
/* 0041D160 1635FFE3 */  bne   $s1, $s5, .L0041D0F0
/* 0041D164 26100028 */   addiu $s0, $s0, 0x28
.L0041D168:
/* 0041D168 3C137FFF */  lui   $s3, 0x7fff
/* 0041D16C 2A810004 */  slti  $at, $s4, 4
/* 0041D170 14200003 */  bnez  $at, .L0041D180
/* 0041D174 3673FFFF */   ori   $s3, $s3, 0xffff
/* 0041D178 1000004D */  b     .L0041D2B0
/* 0041D17C 00001025 */   move  $v0, $zero
.L0041D180:
/* 0041D180 8FAC0060 */  lw    $t4, 0x60($sp)
/* 0041D184 26A20001 */  addiu $v0, $s5, 1
/* 0041D188 9584003C */  lhu   $a0, 0x3c($t4)
/* 0041D18C 00021880 */  sll   $v1, $v0, 2
/* 0041D190 0082082A */  slt   $at, $a0, $v0
/* 0041D194 14200016 */  bnez  $at, .L0041D1F0
/* 0041D198 00621821 */   addu  $v1, $v1, $v0
/* 0041D19C 8FAD0058 */  lw    $t5, 0x58($sp)
/* 0041D1A0 000318C0 */  sll   $v1, $v1, 3
/* 0041D1A4 01A38021 */  addu  $s0, $t5, $v1
.L0041D1A8:
/* 0041D1A8 8E020000 */  lw    $v0, ($s0)
/* 0041D1AC 24630028 */  addiu $v1, $v1, 0x28
/* 0041D1B0 16620005 */  bne   $s3, $v0, .L0041D1C8
/* 0041D1B4 00000000 */   nop   
/* 0041D1B8 00041080 */  sll   $v0, $a0, 2
/* 0041D1BC 00441021 */  addu  $v0, $v0, $a0
/* 0041D1C0 10000008 */  b     .L0041D1E4
/* 0041D1C4 000210C0 */   sll   $v0, $v0, 3
.L0041D1C8:
/* 0041D1C8 10400004 */  beqz  $v0, .L0041D1DC
/* 0041D1CC 00041080 */   sll   $v0, $a0, 2
/* 0041D1D0 10000037 */  b     .L0041D2B0
/* 0041D1D4 00001025 */   move  $v0, $zero
/* 0041D1D8 00041080 */  sll   $v0, $a0, 2
.L0041D1DC:
/* 0041D1DC 00441021 */  addu  $v0, $v0, $a0
/* 0041D1E0 000210C0 */  sll   $v0, $v0, 3
.L0041D1E4:
/* 0041D1E4 0043082A */  slt   $at, $v0, $v1
/* 0041D1E8 1020FFEF */  beqz  $at, .L0041D1A8
/* 0041D1EC 26100028 */   addiu $s0, $s0, 0x28
.L0041D1F0:
/* 0041D1F0 00157880 */  sll   $t7, $s5, 2
/* 0041D1F4 8FAE0058 */  lw    $t6, 0x58($sp)
/* 0041D1F8 01F57821 */  addu  $t7, $t7, $s5
/* 0041D1FC 000F78C0 */  sll   $t7, $t7, 3
/* 0041D200 01CF1021 */  addu  $v0, $t6, $t7
/* 0041D204 94440024 */  lhu   $a0, 0x24($v0)
/* 0041D208 8F9988EC */  lw     $t9, %got(mnem)($gp)
/* 0041D20C 0004C080 */  sll   $t8, $a0, 2
/* 0041D210 03194021 */  addu  $t0, $t8, $t9
/* 0041D214 8D030000 */  lw    $v1, ($t0)
/* 0041D218 24010040 */  li    $at, 64
/* 0041D21C 00034A02 */  srl   $t1, $v1, 8
/* 0041D220 312A01C0 */  andi  $t2, $t1, 0x1c0
/* 0041D224 11410008 */  beq   $t2, $at, .L0041D248
/* 0041D228 24010080 */   li    $at, 128
/* 0041D22C 1141001B */  beq   $t2, $at, .L0041D29C
/* 0041D230 00001025 */   move  $v0, $zero
/* 0041D234 240100C0 */  li    $at, 192
/* 0041D238 11410016 */  beq   $t2, $at, .L0041D294
/* 0041D23C 00000000 */   nop   
/* 0041D240 1000001B */  b     .L0041D2B0
/* 0041D244 00000000 */   nop   
.L0041D248:
/* 0041D248 2401004B */  li    $at, 75
/* 0041D24C 1481000F */  bne   $a0, $at, .L0041D28C
/* 0041D250 00000000 */   nop   
/* 0041D254 904B001D */  lbu   $t3, 0x1d($v0)
/* 0041D258 00000000 */  nop   
/* 0041D25C 1560000B */  bnez  $t3, .L0041D28C
/* 0041D260 00000000 */   nop   
/* 0041D264 904C001E */  lbu   $t4, 0x1e($v0)
/* 0041D268 00000000 */  nop   
/* 0041D26C 15800007 */  bnez  $t4, .L0041D28C
/* 0041D270 00000000 */   nop   
/* 0041D274 16800003 */  bnez  $s4, .L0041D284
/* 0041D278 24030003 */   li    $v1, 3
/* 0041D27C 1000000C */  b     .L0041D2B0
/* 0041D280 24020001 */   li    $v0, 1
.L0041D284:
/* 0041D284 1000000A */  b     .L0041D2B0
/* 0041D288 00601025 */   move  $v0, $v1
.L0041D28C:
/* 0041D28C 10000008 */  b     .L0041D2B0
/* 0041D290 24020002 */   li    $v0, 2
.L0041D294:
/* 0041D294 10000006 */  b     .L0041D2B0
/* 0041D298 24020004 */   li    $v0, 4
.L0041D29C:
/* 0041D29C 24010049 */  li    $at, 73
/* 0041D2A0 14810003 */  bne   $a0, $at, .L0041D2B0
/* 0041D2A4 00000000 */   nop   
/* 0041D2A8 10000001 */  b     .L0041D2B0
/* 0041D2AC 24020005 */   li    $v0, 5
.L0041D2B0:
/* 0041D2B0 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0041D2B4 8FB00018 */  lw    $s0, 0x18($sp)
/* 0041D2B8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0041D2BC 8FB20020 */  lw    $s2, 0x20($sp)
/* 0041D2C0 8FB30024 */  lw    $s3, 0x24($sp)
/* 0041D2C4 8FB40028 */  lw    $s4, 0x28($sp)
/* 0041D2C8 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0041D2CC 03E00008 */  jr    $ra
/* 0041D2D0 27BD0060 */   addiu $sp, $sp, 0x60

    .type func_0041D2D4, @function
func_0041D2D4:
    # 0041D854 func_0041D854
    # 0041DC10 func_0041DC10
/* 0041D2D4 3C1C0FC1 */  .cpload $t9
/* 0041D2D8 279CCF8C */  
/* 0041D2DC 0399E021 */  
/* 0041D2E0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0041D2E4 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0041D2E8 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0041D2EC AFBC0034 */  sw    $gp, 0x34($sp)
/* 0041D2F0 AFB70030 */  sw    $s7, 0x30($sp)
/* 0041D2F4 AFB6002C */  sw    $s6, 0x2c($sp)
/* 0041D2F8 AFB50028 */  sw    $s5, 0x28($sp)
/* 0041D2FC AFB40024 */  sw    $s4, 0x24($sp)
/* 0041D300 AFB30020 */  sw    $s3, 0x20($sp)
/* 0041D304 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0041D308 AFB10018 */  sw    $s1, 0x18($sp)
/* 0041D30C AFB00014 */  sw    $s0, 0x14($sp)
/* 0041D310 8C8E000C */  lw    $t6, 0xc($a0)
/* 0041D314 0080B025 */  move  $s6, $a0
/* 0041D318 AFAE0044 */  sw    $t6, 0x44($sp)
/* 0041D31C 94B8003C */  lhu   $t8, 0x3c($a1)
/* 0041D320 948F003C */  lhu   $t7, 0x3c($a0)
/* 0041D324 8CB4000C */  lw    $s4, 0xc($a1)
/* 0041D328 01F82021 */  addu  $a0, $t7, $t8
/* 0041D32C 0004C880 */  sll   $t9, $a0, 2
/* 0041D330 0324C821 */  addu  $t9, $t9, $a0
/* 0041D334 001920C0 */  sll   $a0, $t9, 3
/* 0041D338 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0041D33C 00A09825 */  move  $s3, $a1
/* 0041D340 0320F809 */  jalr  $t9
/* 0041D344 00000000 */   nop   
/* 0041D348 96C8003E */  lhu   $t0, 0x3e($s6)
/* 0041D34C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041D350 29010002 */  slti  $at, $t0, 2
/* 0041D354 0040A825 */  move  $s5, $v0
/* 0041D358 14200018 */  bnez  $at, .L0041D3BC
/* 0041D35C 24100001 */   li    $s0, 1
/* 0041D360 8FA30044 */  lw    $v1, 0x44($sp)
/* 0041D364 24440028 */  addiu $a0, $v0, 0x28
/* 0041D368 24630028 */  addiu $v1, $v1, 0x28
.L0041D36C:
/* 0041D36C 00605825 */  move  $t3, $v1
/* 0041D370 00806025 */  move  $t4, $a0
/* 0041D374 246A0024 */  addiu $t2, $v1, 0x24
.L0041D378:
/* 0041D378 8D610000 */  lw    $at, ($t3)
/* 0041D37C 256B000C */  addiu $t3, $t3, 0xc
/* 0041D380 AD810000 */  sw    $at, ($t4)
/* 0041D384 8D61FFF8 */  lw    $at, -8($t3)
/* 0041D388 258C000C */  addiu $t4, $t4, 0xc
/* 0041D38C AD81FFF8 */  sw    $at, -8($t4)
/* 0041D390 8D61FFFC */  lw    $at, -4($t3)
/* 0041D394 156AFFF8 */  bne   $t3, $t2, .L0041D378
/* 0041D398 AD81FFFC */   sw    $at, -4($t4)
/* 0041D39C 8D610000 */  lw    $at, ($t3)
/* 0041D3A0 26100001 */  addiu $s0, $s0, 1
/* 0041D3A4 AD810000 */  sw    $at, ($t4)
/* 0041D3A8 96CD003E */  lhu   $t5, 0x3e($s6)
/* 0041D3AC 24630028 */  addiu $v1, $v1, 0x28
/* 0041D3B0 020D082A */  slt   $at, $s0, $t5
/* 0041D3B4 1420FFED */  bnez  $at, .L0041D36C
/* 0041D3B8 24840028 */   addiu $a0, $a0, 0x28
.L0041D3BC:
/* 0041D3BC 9662003C */  lhu   $v0, 0x3c($s3)
/* 0041D3C0 24120001 */  li    $s2, 1
/* 0041D3C4 1840004A */  blez  $v0, .L0041D4F0
/* 0041D3C8 26910028 */   addiu $s1, $s4, 0x28
/* 0041D3CC 3C177FFF */  lui   $s7, 0x7fff
/* 0041D3D0 36F7FFFF */  ori   $s7, $s7, 0xffff
/* 0041D3D4 241E001D */  li    $fp, 29
/* 0041D3D8 24140028 */  li    $s4, 40
.L0041D3DC:
/* 0041D3DC 8E2E0000 */  lw    $t6, ($s1)
/* 0041D3E0 00000000 */  nop   
/* 0041D3E4 16EE001A */  bne   $s7, $t6, .L0041D450
/* 0041D3E8 00000000 */   nop   
/* 0041D3EC 8E2F0010 */  lw    $t7, 0x10($s1)
/* 0041D3F0 00000000 */  nop   
/* 0041D3F4 17CF003A */  bne   $fp, $t7, .L0041D4E0
/* 0041D3F8 00000000 */   nop   
/* 0041D3FC 02140019 */  multu $s0, $s4
/* 0041D400 02205025 */  move  $t2, $s1
/* 0041D404 26290024 */  addiu $t1, $s1, 0x24
/* 0041D408 0000C012 */  mflo  $t8
/* 0041D40C 02B8C821 */  addu  $t9, $s5, $t8
/* 0041D410 00000000 */  nop   
.L0041D414:
/* 0041D414 8D410000 */  lw    $at, ($t2)
/* 0041D418 254A000C */  addiu $t2, $t2, 0xc
/* 0041D41C AF210000 */  sw    $at, ($t9)
/* 0041D420 8D41FFF8 */  lw    $at, -8($t2)
/* 0041D424 2739000C */  addiu $t9, $t9, 0xc
/* 0041D428 AF21FFF8 */  sw    $at, -8($t9)
/* 0041D42C 8D41FFFC */  lw    $at, -4($t2)
/* 0041D430 1549FFF8 */  bne   $t2, $t1, .L0041D414
/* 0041D434 AF21FFFC */   sw    $at, -4($t9)
/* 0041D438 8D410000 */  lw    $at, ($t2)
/* 0041D43C 26100001 */  addiu $s0, $s0, 1
/* 0041D440 AF210000 */  sw    $at, ($t9)
/* 0041D444 9662003C */  lhu   $v0, 0x3c($s3)
/* 0041D448 10000026 */  b     .L0041D4E4
/* 0041D44C 26520001 */   addiu $s2, $s2, 1
.L0041D450:
/* 0041D450 02140019 */  multu $s0, $s4
/* 0041D454 02207025 */  move  $t6, $s1
/* 0041D458 262D0024 */  addiu $t5, $s1, 0x24
/* 0041D45C 00005812 */  mflo  $t3
/* 0041D460 02AB1021 */  addu  $v0, $s5, $t3
/* 0041D464 00407825 */  move  $t7, $v0
.L0041D468:
/* 0041D468 8DC10000 */  lw    $at, ($t6)
/* 0041D46C 25CE000C */  addiu $t6, $t6, 0xc
/* 0041D470 ADE10000 */  sw    $at, ($t7)
/* 0041D474 8DC1FFF8 */  lw    $at, -8($t6)
/* 0041D478 25EF000C */  addiu $t7, $t7, 0xc
/* 0041D47C ADE1FFF8 */  sw    $at, -8($t7)
/* 0041D480 8DC1FFFC */  lw    $at, -4($t6)
/* 0041D484 15CDFFF8 */  bne   $t6, $t5, .L0041D468
/* 0041D488 ADE1FFFC */   sw    $at, -4($t7)
/* 0041D48C 8DC10000 */  lw    $at, ($t6)
/* 0041D490 00000000 */  nop   
/* 0041D494 ADE10000 */  sw    $at, ($t7)
/* 0041D498 9678003E */  lhu   $t8, 0x3e($s3)
/* 0041D49C 00000000 */  nop   
/* 0041D4A0 16580002 */  bne   $s2, $t8, .L0041D4AC
/* 0041D4A4 00000000 */   nop   
/* 0041D4A8 A6D0003E */  sh    $s0, 0x3e($s6)
.L0041D4AC:
/* 0041D4AC 8C480004 */  lw    $t0, 4($v0)
/* 0041D4B0 00000000 */  nop   
/* 0041D4B4 11000008 */  beqz  $t0, .L0041D4D8
/* 0041D4B8 00000000 */   nop   
/* 0041D4BC 8F818B40 */  lw     $at, %got(pinstruction)($gp)
/* 0041D4C0 8F9985D4 */  lw    $t9, %call16(duplicate_rld)($gp)
/* 0041D4C4 02002025 */  move  $a0, $s0
/* 0041D4C8 0320F809 */  jalr  $t9
/* 0041D4CC AC350000 */   sw    $s5, ($at)
/* 0041D4D0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041D4D4 00000000 */  nop   
.L0041D4D8:
/* 0041D4D8 9662003C */  lhu   $v0, 0x3c($s3)
/* 0041D4DC 26100001 */  addiu $s0, $s0, 1
.L0041D4E0:
/* 0041D4E0 26520001 */  addiu $s2, $s2, 1
.L0041D4E4:
/* 0041D4E4 0052082A */  slt   $at, $v0, $s2
/* 0041D4E8 1020FFBC */  beqz  $at, .L0041D3DC
/* 0041D4EC 26310028 */   addiu $s1, $s1, 0x28
.L0041D4F0:
/* 0041D4F0 8F918BA0 */  lw     $s1, %got(xbb_debug)($gp)
/* 0041D4F4 00000000 */  nop   
/* 0041D4F8 8E290000 */  lw    $t1, ($s1)
/* 0041D4FC 00000000 */  nop   
/* 0041D500 11200009 */  beqz  $t1, .L0041D528
/* 0041D504 260AFFFF */   addiu $t2, $s0, -1
/* 0041D508 8F85806C */  lw    $a1, %got(RO_10013C5C)($gp)
/* 0041D50C 8F9982B8 */  lw    $t9, %call16(dump_bb)($gp)
/* 0041D510 02C02025 */  move  $a0, $s6
/* 0041D514 0320F809 */  jalr  $t9
/* 0041D518 24A53C5C */   addiu $a1, %lo(RO_10013C5C) # addiu $a1, $a1, 0x3c5c
/* 0041D51C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041D520 00000000 */  nop   
/* 0041D524 260AFFFF */  addiu $t2, $s0, -1
.L0041D528:
/* 0041D528 A6CA003C */  sh    $t2, 0x3c($s6)
/* 0041D52C AED5000C */  sw    $s5, 0xc($s6)
/* 0041D530 8E390000 */  lw    $t9, ($s1)
/* 0041D534 00000000 */  nop   
/* 0041D538 13200008 */  beqz  $t9, .L0041D55C
/* 0041D53C 00000000 */   nop   
/* 0041D540 8F85806C */  lw    $a1, %got(RO_10013C78)($gp)
/* 0041D544 8F9982B8 */  lw    $t9, %call16(dump_bb)($gp)
/* 0041D548 02C02025 */  move  $a0, $s6
/* 0041D54C 0320F809 */  jalr  $t9
/* 0041D550 24A53C78 */   addiu $a1, %lo(RO_10013C78) # addiu $a1, $a1, 0x3c78
/* 0041D554 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041D558 00000000 */  nop   
.L0041D55C:
/* 0041D55C 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 0041D560 8FA40044 */  lw    $a0, 0x44($sp)
/* 0041D564 0320F809 */  jalr  $t9
/* 0041D568 00000000 */   nop   
/* 0041D56C 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0041D570 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041D574 8FB00014 */  lw    $s0, 0x14($sp)
/* 0041D578 8FB10018 */  lw    $s1, 0x18($sp)
/* 0041D57C 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0041D580 8FB30020 */  lw    $s3, 0x20($sp)
/* 0041D584 8FB40024 */  lw    $s4, 0x24($sp)
/* 0041D588 8FB50028 */  lw    $s5, 0x28($sp)
/* 0041D58C 8FB6002C */  lw    $s6, 0x2c($sp)
/* 0041D590 8FB70030 */  lw    $s7, 0x30($sp)
/* 0041D594 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0041D598 03E00008 */  jr    $ra
/* 0041D59C 27BD0048 */   addiu $sp, $sp, 0x48

    .type func_0041D5A0, @function
func_0041D5A0:
    # 0041D854 func_0041D854
    # 0041E40C func_0041E40C
/* 0041D5A0 3C1C0FC1 */  .cpload $t9
/* 0041D5A4 279CCCC0 */  
/* 0041D5A8 0399E021 */  
/* 0041D5AC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0041D5B0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0041D5B4 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0041D5B8 948E003C */  lhu   $t6, 0x3c($a0)
/* 0041D5BC 8C8C000C */  lw    $t4, 0xc($a0)
/* 0041D5C0 00803825 */  move  $a3, $a0
/* 0041D5C4 00005825 */  move  $t3, $zero
/* 0041D5C8 19C0001A */  blez  $t6, .L0041D634
/* 0041D5CC 24030001 */   li    $v1, 1
/* 0041D5D0 3C087FFF */  lui   $t0, 0x7fff
/* 0041D5D4 8F868BA4 */  lw     $a2, %got(ppseudo)($gp)
/* 0041D5D8 3508FFFF */  ori   $t0, $t0, 0xffff
/* 0041D5DC 25850028 */  addiu $a1, $t4, 0x28
/* 0041D5E0 240A001A */  li    $t2, 26
/* 0041D5E4 24090019 */  li    $t1, 25
.L0041D5E8:
/* 0041D5E8 ACC50000 */  sw    $a1, ($a2)
/* 0041D5EC 8CAF0000 */  lw    $t7, ($a1)
/* 0041D5F0 00A01025 */  move  $v0, $a1
/* 0041D5F4 150F000F */  bne   $t0, $t7, .L0041D634
/* 0041D5F8 00000000 */   nop   
/* 0041D5FC 8CA40010 */  lw    $a0, 0x10($a1)
/* 0041D600 00000000 */  nop   
/* 0041D604 11240003 */  beq   $t1, $a0, .L0041D614
/* 0041D608 00000000 */   nop   
/* 0041D60C 15440004 */  bne   $t2, $a0, .L0041D620
/* 0041D610 00000000 */   nop   
.L0041D614:
/* 0041D614 8C4B0014 */  lw    $t3, 0x14($v0)
/* 0041D618 10000006 */  b     .L0041D634
/* 0041D61C 00000000 */   nop   
.L0041D620:
/* 0041D620 94F8003C */  lhu   $t8, 0x3c($a3)
/* 0041D624 24630001 */  addiu $v1, $v1, 1
/* 0041D628 0303082A */  slt   $at, $t8, $v1
/* 0041D62C 1020FFEE */  beqz  $at, .L0041D5E8
/* 0041D630 24A50028 */   addiu $a1, $a1, 0x28
.L0041D634:
/* 0041D634 15600043 */  bnez  $t3, .L0041D744
/* 0041D638 24030001 */   li    $v1, 1
/* 0041D63C 94E4003C */  lhu   $a0, 0x3c($a3)
/* 0041D640 AFAC002C */  sw    $t4, 0x2c($sp)
/* 0041D644 0004C880 */  sll   $t9, $a0, 2
/* 0041D648 0324C821 */  addu  $t9, $t9, $a0
/* 0041D64C 0019C8C0 */  sll   $t9, $t9, 3
/* 0041D650 27240050 */  addiu $a0, $t9, 0x50
/* 0041D654 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0041D658 AFA70030 */  sw    $a3, 0x30($sp)
/* 0041D65C 0320F809 */  jalr  $t9
/* 0041D660 AFA30024 */   sw    $v1, 0x24($sp)
/* 0041D664 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0041D668 8FA70030 */  lw    $a3, 0x30($sp)
/* 0041D66C 24440028 */  addiu $a0, $v0, 0x28
/* 0041D670 ACE2000C */  sw    $v0, 0xc($a3)
/* 0041D674 8F9982BC */  lw    $t9, %call16(create_label_pinst)($gp)
/* 0041D678 00000000 */  nop   
/* 0041D67C 0320F809 */  jalr  $t9
/* 0041D680 00000000 */   nop   
/* 0041D684 8FA70030 */  lw    $a3, 0x30($sp)
/* 0041D688 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0041D68C 90EE0046 */  lbu   $t6, 0x46($a3)
/* 0041D690 94F8003C */  lhu   $t8, 0x3c($a3)
/* 0041D694 8FA30024 */  lw    $v1, 0x24($sp)
/* 0041D698 35CF0080 */  ori   $t7, $t6, 0x80
/* 0041D69C 00405825 */  move  $t3, $v0
/* 0041D6A0 1B000019 */  blez  $t8, .L0041D708
/* 0041D6A4 A0EF0046 */   sb    $t7, 0x46($a3)
/* 0041D6A8 8FA4002C */  lw    $a0, 0x2c($sp)
/* 0041D6AC 24020028 */  li    $v0, 40
/* 0041D6B0 24840028 */  addiu $a0, $a0, 0x28
.L0041D6B4:
/* 0041D6B4 8CF9000C */  lw    $t9, 0xc($a3)
/* 0041D6B8 0080C025 */  move  $t8, $a0
/* 0041D6BC 248F0024 */  addiu $t7, $a0, 0x24
/* 0041D6C0 03226821 */  addu  $t5, $t9, $v0
.L0041D6C4:
/* 0041D6C4 8F010000 */  lw    $at, ($t8)
/* 0041D6C8 2718000C */  addiu $t8, $t8, 0xc
/* 0041D6CC ADA10028 */  sw    $at, 0x28($t5)
/* 0041D6D0 8F01FFF8 */  lw    $at, -8($t8)
/* 0041D6D4 25AD000C */  addiu $t5, $t5, 0xc
/* 0041D6D8 ADA10020 */  sw    $at, 0x20($t5)
/* 0041D6DC 8F01FFFC */  lw    $at, -4($t8)
/* 0041D6E0 170FFFF8 */  bne   $t8, $t7, .L0041D6C4
/* 0041D6E4 ADA10024 */   sw    $at, 0x24($t5)
/* 0041D6E8 8F010000 */  lw    $at, ($t8)
/* 0041D6EC 24630001 */  addiu $v1, $v1, 1
/* 0041D6F0 ADA10028 */  sw    $at, 0x28($t5)
/* 0041D6F4 94F9003C */  lhu   $t9, 0x3c($a3)
/* 0041D6F8 24420028 */  addiu $v0, $v0, 0x28
/* 0041D6FC 0323082A */  slt   $at, $t9, $v1
/* 0041D700 1020FFEC */  beqz  $at, .L0041D6B4
/* 0041D704 24840028 */   addiu $a0, $a0, 0x28
.L0041D708:
/* 0041D708 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 0041D70C 8FA4002C */  lw    $a0, 0x2c($sp)
/* 0041D710 AFA70030 */  sw    $a3, 0x30($sp)
/* 0041D714 0320F809 */  jalr  $t9
/* 0041D718 AFAB0028 */   sw    $t3, 0x28($sp)
/* 0041D71C 8FA70030 */  lw    $a3, 0x30($sp)
/* 0041D720 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0041D724 94EE003C */  lhu   $t6, 0x3c($a3)
/* 0041D728 94E2003E */  lhu   $v0, 0x3e($a3)
/* 0041D72C 8FAB0028 */  lw    $t3, 0x28($sp)
/* 0041D730 25CF0001 */  addiu $t7, $t6, 1
/* 0041D734 10400003 */  beqz  $v0, .L0041D744
/* 0041D738 A4EF003C */   sh    $t7, 0x3c($a3)
/* 0041D73C 24580001 */  addiu $t8, $v0, 1
/* 0041D740 A4F8003E */  sh    $t8, 0x3e($a3)
.L0041D744:
/* 0041D744 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0041D748 27BD0030 */  addiu $sp, $sp, 0x30
/* 0041D74C 03E00008 */  jr    $ra
/* 0041D750 01601025 */   move  $v0, $t3

    .type func_0041D754, @function
func_0041D754:
    # 0041D854 func_0041D854
    # 0041E40C func_0041E40C
/* 0041D754 3C1C0FC1 */  .cpload $t9
/* 0041D758 279CCB0C */  
/* 0041D75C 0399E021 */  
/* 0041D760 248EFFCB */  addiu $t6, $a0, -0x35
/* 0041D764 2DC1001A */  sltiu $at, $t6, 0x1a
/* 0041D768 10200038 */  beqz  $at, .L0041D84C
/* 0041D76C 2403014C */   li    $v1, 332
/* 0041D770 8F81806C */  lw    $at, %got(jtbl_10013F9C)($gp)
/* 0041D774 000E7080 */  sll   $t6, $t6, 2
/* 0041D778 002E0821 */  addu  $at, $at, $t6
/* 0041D77C 8C2E3F9C */  lw    $t6, %lo(jtbl_10013F9C)($at)
/* 0041D780 00000000 */  nop   
/* 0041D784 01DC7021 */  addu  $t6, $t6, $gp
/* 0041D788 01C00008 */  jr    $t6
/* 0041D78C 00000000 */   nop   
.L0041D790:
/* 0041D790 90AF0000 */  lbu   $t7, ($a1)
/* 0041D794 2402004C */  li    $v0, 76
/* 0041D798 31F8FF03 */  andi  $t8, $t7, 0xff03
/* 0041D79C 37190014 */  ori   $t9, $t8, 0x14
/* 0041D7A0 03E00008 */  jr    $ra
/* 0041D7A4 A0B90000 */   sb    $t9, ($a1)

.L0041D7A8:
/* 0041D7A8 90A80000 */  lbu   $t0, ($a1)
/* 0041D7AC 2402004B */  li    $v0, 75
/* 0041D7B0 3109FF03 */  andi  $t1, $t0, 0xff03
/* 0041D7B4 352A0010 */  ori   $t2, $t1, 0x10
/* 0041D7B8 03E00008 */  jr    $ra
/* 0041D7BC A0AA0000 */   sb    $t2, ($a1)

.L0041D7C0:
/* 0041D7C0 90AB0000 */  lbu   $t3, ($a1)
/* 0041D7C4 2402004E */  li    $v0, 78
/* 0041D7C8 316CFF03 */  andi  $t4, $t3, 0xff03
/* 0041D7CC 358D001C */  ori   $t5, $t4, 0x1c
/* 0041D7D0 03E00008 */  jr    $ra
/* 0041D7D4 A0AD0000 */   sb    $t5, ($a1)

.L0041D7D8:
/* 0041D7D8 90AE0000 */  lbu   $t6, ($a1)
/* 0041D7DC 2402004D */  li    $v0, 77
/* 0041D7E0 31CFFF03 */  andi  $t7, $t6, 0xff03
/* 0041D7E4 35F80018 */  ori   $t8, $t7, 0x18
/* 0041D7E8 03E00008 */  jr    $ra
/* 0041D7EC A0B80000 */   sb    $t8, ($a1)

.L0041D7F0:
/* 0041D7F0 90B90001 */  lbu   $t9, 1($a1)
/* 0041D7F4 24020036 */  li    $v0, 54
/* 0041D7F8 3328FFE0 */  andi  $t0, $t9, 0xffe0
/* 0041D7FC 35090001 */  ori   $t1, $t0, 1
/* 0041D800 03E00008 */  jr    $ra
/* 0041D804 A0A90001 */   sb    $t1, 1($a1)

.L0041D808:
/* 0041D808 90AA0001 */  lbu   $t2, 1($a1)
/* 0041D80C 24020035 */  li    $v0, 53
/* 0041D810 314BFFE0 */  andi  $t3, $t2, 0xffe0
/* 0041D814 03E00008 */  jr    $ra
/* 0041D818 A0AB0001 */   sb    $t3, 1($a1)

.L0041D81C:
/* 0041D81C 90AC0001 */  lbu   $t4, 1($a1)
/* 0041D820 2402003C */  li    $v0, 60
/* 0041D824 318DFFE0 */  andi  $t5, $t4, 0xffe0
/* 0041D828 35AE0001 */  ori   $t6, $t5, 1
/* 0041D82C 03E00008 */  jr    $ra
/* 0041D830 A0AE0001 */   sb    $t6, 1($a1)

.L0041D834:
/* 0041D834 90AF0001 */  lbu   $t7, 1($a1)
/* 0041D838 2402003B */  li    $v0, 59
/* 0041D83C 31F8FFE0 */  andi  $t8, $t7, 0xffe0
/* 0041D840 03E00008 */  jr    $ra
/* 0041D844 A0B80001 */   sb    $t8, 1($a1)

.L0041D848:
/* 0041D848 2403014C */  li    $v1, 332
.L0041D84C:
/* 0041D84C 03E00008 */  jr    $ra
/* 0041D850 00601025 */   move  $v0, $v1

    .type func_0041D854, @function
func_0041D854:
    # 0041DC10 func_0041DC10
/* 0041D854 3C1C0FC1 */  .cpload $t9
/* 0041D858 279CCA0C */  
/* 0041D85C 0399E021 */  
/* 0041D860 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0041D864 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0041D868 AFBC0020 */  sw    $gp, 0x20($sp)
/* 0041D86C AFB1001C */  sw    $s1, 0x1c($sp)
/* 0041D870 AFB00018 */  sw    $s0, 0x18($sp)
/* 0041D874 AFA50054 */  sw    $a1, 0x54($sp)
/* 0041D878 8CB00000 */  lw    $s0, ($a1)
/* 0041D87C 24030028 */  li    $v1, 40
/* 0041D880 960F003E */  lhu   $t7, 0x3e($s0)
/* 0041D884 8E06000C */  lw    $a2, 0xc($s0)
/* 0041D888 01E30019 */  multu $t7, $v1
/* 0041D88C 00808825 */  move  $s1, $a0
/* 0041D890 27A50038 */  addiu $a1, $sp, 0x38
/* 0041D894 0000C012 */  mflo  $t8
/* 0041D898 00D8C821 */  addu  $t9, $a2, $t8
/* 0041D89C 8F280000 */  lw    $t0, ($t9)
/* 0041D8A0 8F99801C */  lw    $t9, %got(func_0041D754)($gp)
/* 0041D8A4 AFA80038 */  sw    $t0, 0x38($sp)
/* 0041D8A8 9609003E */  lhu   $t1, 0x3e($s0)
/* 0041D8AC 2739D754 */  addiu $t9, %lo(func_0041D754) # addiu $t9, $t9, -0x28ac
/* 0041D8B0 01230019 */  multu $t1, $v1
/* 0041D8B4 00005012 */  mflo  $t2
/* 0041D8B8 00CA5821 */  addu  $t3, $a2, $t2
/* 0041D8BC 95640024 */  lhu   $a0, 0x24($t3)
/* 0041D8C0 0320F809 */  jalr  $t9
/* 0041D8C4 AFA60048 */   sw    $a2, 0x48($sp)
/* 0041D8C8 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0041D8CC 8FA60048 */  lw    $a2, 0x48($sp)
/* 0041D8D0 2401014C */  li    $at, 332
/* 0041D8D4 14410003 */  bne   $v0, $at, .L0041D8E4
/* 0041D8D8 AFA20034 */   sw    $v0, 0x34($sp)
/* 0041D8DC 1000003C */  b     .L0041D9D0
/* 0041D8E0 00001025 */   move  $v0, $zero
.L0041D8E4:
/* 0041D8E4 8F99801C */  lw    $t9, %got(func_0041D5A0)($gp)
/* 0041D8E8 8E040004 */  lw    $a0, 4($s0)
/* 0041D8EC 2739D5A0 */  addiu $t9, %lo(func_0041D5A0) # addiu $t9, $t9, -0x2a60
/* 0041D8F0 AFA60048 */  sw    $a2, 0x48($sp)
/* 0041D8F4 0320F809 */  jalr  $t9
/* 0041D8F8 AFA40040 */   sw    $a0, 0x40($sp)
/* 0041D8FC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0041D900 AFA2003C */  sw    $v0, 0x3c($sp)
/* 0041D904 8F99801C */  lw    $t9, %got(func_0041D2D4)($gp)
/* 0041D908 02202025 */  move  $a0, $s1
/* 0041D90C 2739D2D4 */  addiu $t9, %lo(func_0041D2D4) # addiu $t9, $t9, -0x2d2c
/* 0041D910 0320F809 */  jalr  $t9
/* 0041D914 02002825 */   move  $a1, $s0
/* 0041D918 962D003E */  lhu   $t5, 0x3e($s1)
/* 0041D91C 24030028 */  li    $v1, 40
/* 0041D920 01A30019 */  multu $t5, $v1
/* 0041D924 8E22000C */  lw    $v0, 0xc($s1)
/* 0041D928 8FAC0038 */  lw    $t4, 0x38($sp)
/* 0041D92C 8FA60048 */  lw    $a2, 0x48($sp)
/* 0041D930 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0041D934 00007012 */  mflo  $t6
/* 0041D938 004E7821 */  addu  $t7, $v0, $t6
/* 0041D93C ADEC0000 */  sw    $t4, ($t7)
/* 0041D940 9639003E */  lhu   $t9, 0x3e($s1)
/* 0041D944 8FB8003C */  lw    $t8, 0x3c($sp)
/* 0041D948 03230019 */  multu $t9, $v1
/* 0041D94C 00004012 */  mflo  $t0
/* 0041D950 00484821 */  addu  $t1, $v0, $t0
/* 0041D954 AD380014 */  sw    $t8, 0x14($t1)
/* 0041D958 962B003E */  lhu   $t3, 0x3e($s1)
/* 0041D95C 8FAA0034 */  lw    $t2, 0x34($sp)
/* 0041D960 01630019 */  multu $t3, $v1
/* 0041D964 00006812 */  mflo  $t5
/* 0041D968 004D7021 */  addu  $t6, $v0, $t5
/* 0041D96C A5CA0024 */  sh    $t2, 0x24($t6)
/* 0041D970 960C003E */  lhu   $t4, 0x3e($s0)
/* 0041D974 9638003E */  lhu   $t8, 0x3e($s1)
/* 0041D978 01830019 */  multu $t4, $v1
/* 0041D97C 00007812 */  mflo  $t7
/* 0041D980 00CFC821 */  addu  $t9, $a2, $t7
/* 0041D984 9328001D */  lbu   $t0, 0x1d($t9)
/* 0041D988 03030019 */  multu $t8, $v1
/* 0041D98C 00004812 */  mflo  $t1
/* 0041D990 00495821 */  addu  $t3, $v0, $t1
/* 0041D994 A168001D */  sb    $t0, 0x1d($t3)
/* 0041D998 960D003E */  lhu   $t5, 0x3e($s0)
/* 0041D99C 962F003E */  lhu   $t7, 0x3e($s1)
/* 0041D9A0 01A30019 */  multu $t5, $v1
/* 0041D9A4 00005012 */  mflo  $t2
/* 0041D9A8 00CA7021 */  addu  $t6, $a2, $t2
/* 0041D9AC 91CC001E */  lbu   $t4, 0x1e($t6)
/* 0041D9B0 01E30019 */  multu $t7, $v1
/* 0041D9B4 0000C812 */  mflo  $t9
/* 0041D9B8 0059C021 */  addu  $t8, $v0, $t9
/* 0041D9BC A30C001E */  sb    $t4, 0x1e($t8)
/* 0041D9C0 8FA80054 */  lw    $t0, 0x54($sp)
/* 0041D9C4 8FA90040 */  lw    $t1, 0x40($sp)
/* 0041D9C8 24020001 */  li    $v0, 1
/* 0041D9CC AD090000 */  sw    $t1, ($t0)
.L0041D9D0:
/* 0041D9D0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0041D9D4 8FB00018 */  lw    $s0, 0x18($sp)
/* 0041D9D8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0041D9DC 03E00008 */  jr    $ra
/* 0041D9E0 27BD0050 */   addiu $sp, $sp, 0x50

    .type func_0041D9E4, @function
func_0041D9E4:
    # 0041DA6C func_0041DA6C
    # 0041DB74 find_branch_target
    # 0041E40C func_0041E40C
/* 0041D9E4 9486003C */  lhu   $a2, 0x3c($a0)
/* 0041D9E8 8C82000C */  lw    $v0, 0xc($a0)
/* 0041D9EC 18C0001C */  blez  $a2, .L0041DA60
/* 0041D9F0 24030028 */   li    $v1, 40
/* 0041D9F4 3C077FFF */  lui   $a3, 0x7fff
/* 0041D9F8 34E7FFFF */  ori   $a3, $a3, 0xffff
/* 0041D9FC 24440028 */  addiu $a0, $v0, 0x28
/* 0041DA00 2409001A */  li    $t1, 26
/* 0041DA04 24080019 */  li    $t0, 25
.L0041DA08:
/* 0041DA08 8C8E0000 */  lw    $t6, ($a0)
/* 0041DA0C 24630028 */  addiu $v1, $v1, 0x28
/* 0041DA10 14EE0014 */  bne   $a3, $t6, .L0041DA64
/* 0041DA14 00001025 */   move  $v0, $zero
/* 0041DA18 8C820010 */  lw    $v0, 0x10($a0)
/* 0041DA1C 00000000 */  nop   
/* 0041DA20 11020003 */  beq   $t0, $v0, .L0041DA30
/* 0041DA24 00000000 */   nop   
/* 0041DA28 15220008 */  bne   $t1, $v0, .L0041DA4C
/* 0041DA2C 00061080 */   sll   $v0, $a2, 2
.L0041DA30:
/* 0041DA30 8C8F0014 */  lw    $t7, 0x14($a0)
/* 0041DA34 00000000 */  nop   
/* 0041DA38 14AF0004 */  bne   $a1, $t7, .L0041DA4C
/* 0041DA3C 00061080 */   sll   $v0, $a2, 2
/* 0041DA40 03E00008 */  jr    $ra
/* 0041DA44 24020001 */   li    $v0, 1

/* 0041DA48 00061080 */  sll   $v0, $a2, 2
.L0041DA4C:
/* 0041DA4C 00461021 */  addu  $v0, $v0, $a2
/* 0041DA50 000210C0 */  sll   $v0, $v0, 3
/* 0041DA54 0043082A */  slt   $at, $v0, $v1
/* 0041DA58 1020FFEB */  beqz  $at, .L0041DA08
/* 0041DA5C 24840028 */   addiu $a0, $a0, 0x28
.L0041DA60:
/* 0041DA60 00001025 */  move  $v0, $zero
.L0041DA64:
/* 0041DA64 03E00008 */  jr    $ra
/* 0041DA68 00000000 */   nop   

    .type func_0041DA6C, @function
func_0041DA6C:
    # 0041DC10 func_0041DC10
/* 0041DA6C 3C1C0FC1 */  .cpload $t9
/* 0041DA70 279CC7F4 */  
/* 0041DA74 0399E021 */  
/* 0041DA78 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0041DA7C AFBF0024 */  sw    $ra, 0x24($sp)
/* 0041DA80 AFBC0020 */  sw    $gp, 0x20($sp)
/* 0041DA84 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0041DA88 AFB10018 */  sw    $s1, 0x18($sp)
/* 0041DA8C AFB00014 */  sw    $s0, 0x14($sp)
/* 0041DA90 948F003E */  lhu   $t7, 0x3e($a0)
/* 0041DA94 8C8E000C */  lw    $t6, 0xc($a0)
/* 0041DA98 000FC080 */  sll   $t8, $t7, 2
/* 0041DA9C 030FC021 */  addu  $t8, $t8, $t7
/* 0041DAA0 0018C0C0 */  sll   $t8, $t8, 3
/* 0041DAA4 01D8C821 */  addu  $t9, $t6, $t8
/* 0041DAA8 8F310014 */  lw    $s1, 0x14($t9)
/* 0041DAAC 00809025 */  move  $s2, $a0
/* 0041DAB0 10800013 */  beqz  $a0, .L0041DB00
/* 0041DAB4 00808025 */   move  $s0, $a0
.L0041DAB8:
/* 0041DAB8 86090046 */  lh    $t1, 0x46($s0)
/* 0041DABC 00000000 */  nop   
/* 0041DAC0 0521000B */  bgez  $t1, .L0041DAF0
/* 0041DAC4 00000000 */   nop   
/* 0041DAC8 8F99801C */  lw    $t9, %got(func_0041D9E4)($gp)
/* 0041DACC 02002025 */  move  $a0, $s0
/* 0041DAD0 2739D9E4 */  addiu $t9, %lo(func_0041D9E4) # addiu $t9, $t9, -0x261c
/* 0041DAD4 0320F809 */  jalr  $t9
/* 0041DAD8 02202825 */   move  $a1, $s1
/* 0041DADC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0041DAE0 10400003 */  beqz  $v0, .L0041DAF0
/* 0041DAE4 00000000 */   nop   
/* 0041DAE8 1000001C */  b     .L0041DB5C
/* 0041DAEC 02001025 */   move  $v0, $s0
.L0041DAF0:
/* 0041DAF0 8E100008 */  lw    $s0, 8($s0)
/* 0041DAF4 00000000 */  nop   
/* 0041DAF8 1600FFEF */  bnez  $s0, .L0041DAB8
/* 0041DAFC 00000000 */   nop   
.L0041DB00:
/* 0041DB00 8E500000 */  lw    $s0, ($s2)
/* 0041DB04 00000000 */  nop   
/* 0041DB08 12000014 */  beqz  $s0, .L0041DB5C
/* 0041DB0C 00001025 */   move  $v0, $zero
.L0041DB10:
/* 0041DB10 860B0046 */  lh    $t3, 0x46($s0)
/* 0041DB14 00000000 */  nop   
/* 0041DB18 0561000B */  bgez  $t3, .L0041DB48
/* 0041DB1C 00000000 */   nop   
/* 0041DB20 8F99801C */  lw    $t9, %got(func_0041D9E4)($gp)
/* 0041DB24 02002025 */  move  $a0, $s0
/* 0041DB28 2739D9E4 */  addiu $t9, %lo(func_0041D9E4) # addiu $t9, $t9, -0x261c
/* 0041DB2C 0320F809 */  jalr  $t9
/* 0041DB30 02202825 */   move  $a1, $s1
/* 0041DB34 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0041DB38 10400003 */  beqz  $v0, .L0041DB48
/* 0041DB3C 00000000 */   nop   
/* 0041DB40 10000006 */  b     .L0041DB5C
/* 0041DB44 02001025 */   move  $v0, $s0
.L0041DB48:
/* 0041DB48 8E100000 */  lw    $s0, ($s0)
/* 0041DB4C 00000000 */  nop   
/* 0041DB50 1600FFEF */  bnez  $s0, .L0041DB10
/* 0041DB54 00000000 */   nop   
/* 0041DB58 00001025 */  move  $v0, $zero
.L0041DB5C:
/* 0041DB5C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0041DB60 8FB00014 */  lw    $s0, 0x14($sp)
/* 0041DB64 8FB10018 */  lw    $s1, 0x18($sp)
/* 0041DB68 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0041DB6C 03E00008 */  jr    $ra
/* 0041DB70 27BD0028 */   addiu $sp, $sp, 0x28

glabel find_branch_target
    .ent find_branch_target
    # 0040C8F4 do_branch_opt
    # 00415090 func_00415090
    # 0041F89C func_0041F89C
    # 00424E80 func_00424E80
/* 0041DB74 3C1C0FC1 */  .cpload $t9
/* 0041DB78 279CC6EC */  
/* 0041DB7C 0399E021 */  
/* 0041DB80 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0041DB84 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0041DB88 AFBC0020 */  sw    $gp, 0x20($sp)
/* 0041DB8C AFB1001C */  sw    $s1, 0x1c($sp)
/* 0041DB90 AFB00018 */  sw    $s0, 0x18($sp)
/* 0041DB94 948F003E */  lhu   $t7, 0x3e($a0)
/* 0041DB98 8C8E000C */  lw    $t6, 0xc($a0)
/* 0041DB9C 000FC080 */  sll   $t8, $t7, 2
/* 0041DBA0 030FC021 */  addu  $t8, $t8, $t7
/* 0041DBA4 0018C0C0 */  sll   $t8, $t8, 3
/* 0041DBA8 8C900010 */  lw    $s0, 0x10($a0)
/* 0041DBAC 01D8C821 */  addu  $t9, $t6, $t8
/* 0041DBB0 8F310014 */  lw    $s1, 0x14($t9)
/* 0041DBB4 12000011 */  beqz  $s0, .L0041DBFC
/* 0041DBB8 00001025 */   move  $v0, $zero
.L0041DBBC:
/* 0041DBBC 8F99801C */  lw    $t9, %got(func_0041D9E4)($gp)
/* 0041DBC0 8E040000 */  lw    $a0, ($s0)
/* 0041DBC4 2739D9E4 */  addiu $t9, %lo(func_0041D9E4) # addiu $t9, $t9, -0x261c
/* 0041DBC8 0320F809 */  jalr  $t9
/* 0041DBCC 02202825 */   move  $a1, $s1
/* 0041DBD0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0041DBD4 10400004 */  beqz  $v0, .L0041DBE8
/* 0041DBD8 00000000 */   nop   
/* 0041DBDC 8E020000 */  lw    $v0, ($s0)
/* 0041DBE0 10000007 */  b     .L0041DC00
/* 0041DBE4 8FBF0024 */   lw    $ra, 0x24($sp)
.L0041DBE8:
/* 0041DBE8 8E100004 */  lw    $s0, 4($s0)
/* 0041DBEC 00000000 */  nop   
/* 0041DBF0 1600FFF2 */  bnez  $s0, .L0041DBBC
/* 0041DBF4 00000000 */   nop   
/* 0041DBF8 00001025 */  move  $v0, $zero
.L0041DBFC:
/* 0041DBFC 8FBF0024 */  lw    $ra, 0x24($sp)
.L0041DC00:
/* 0041DC00 8FB00018 */  lw    $s0, 0x18($sp)
/* 0041DC04 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0041DC08 03E00008 */  jr    $ra
/* 0041DC0C 27BD0028 */   addiu $sp, $sp, 0x28

    .type find_branch_target, @function
    .size find_branch_target, .-find_branch_target
    .end find_branch_target

    .type func_0041DC10, @function
func_0041DC10:
    # 00420E34 traverse_bb
/* 0041DC10 3C1C0FC1 */  .cpload $t9
/* 0041DC14 279CC650 */  
/* 0041DC18 0399E021 */  
/* 0041DC1C 27BDFF50 */  addiu $sp, $sp, -0xb0
/* 0041DC20 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0041DC24 8F928088 */  lw    $s2, %got(B_10023304)($gp)
/* 0041DC28 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0041DC2C 8E523304 */  lw    $s2, %lo(B_10023304)($s2)
/* 0041DC30 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0041DC34 AFBC0034 */  sw    $gp, 0x34($sp)
/* 0041DC38 AFB70030 */  sw    $s7, 0x30($sp)
/* 0041DC3C AFB6002C */  sw    $s6, 0x2c($sp)
/* 0041DC40 AFB50028 */  sw    $s5, 0x28($sp)
/* 0041DC44 AFB40024 */  sw    $s4, 0x24($sp)
/* 0041DC48 AFB30020 */  sw    $s3, 0x20($sp)
/* 0041DC4C AFB10018 */  sw    $s1, 0x18($sp)
/* 0041DC50 AFB00014 */  sw    $s0, 0x14($sp)
/* 0041DC54 AFA00090 */  sw    $zero, 0x90($sp)
/* 0041DC58 124001B0 */  beqz  $s2, .L0041E31C
/* 0041DC5C AFA0008C */   sw    $zero, 0x8c($sp)
/* 0041DC60 3C1E7FFF */  lui   $fp, 0x7fff
/* 0041DC64 8F948BA0 */  lw     $s4, %got(xbb_debug)($gp)
/* 0041DC68 37DEFFFF */  ori   $fp, $fp, 0xffff
.L0041DC6C:
/* 0041DC6C 8E51000C */  lw    $s1, 0xc($s2)
/* 0041DC70 8F818B40 */  lw     $at, %got(pinstruction)($gp)
/* 0041DC74 00008025 */  move  $s0, $zero
/* 0041DC78 AC310000 */  sw    $s1, ($at)
/* 0041DC7C 9645003C */  lhu   $a1, 0x3c($s2)
/* 0041DC80 00000000 */  nop   
/* 0041DC84 18A00011 */  blez  $a1, .L0041DCCC
/* 0041DC88 00A0B025 */   move  $s6, $a1
/* 0041DC8C 00161880 */  sll   $v1, $s6, 2
/* 0041DC90 00761821 */  addu  $v1, $v1, $s6
/* 0041DC94 000318C0 */  sll   $v1, $v1, 3
/* 0041DC98 00711021 */  addu  $v0, $v1, $s1
.L0041DC9C:
/* 0041DC9C 8C4E0000 */  lw    $t6, ($v0)
/* 0041DCA0 2463FFD8 */  addiu $v1, $v1, -0x28
/* 0041DCA4 17CE0007 */  bne   $fp, $t6, .L0041DCC4
/* 0041DCA8 28610028 */   slti  $at, $v1, 0x28
/* 0041DCAC 8C4F0010 */  lw    $t7, 0x10($v0)
/* 0041DCB0 2401001D */  li    $at, 29
/* 0041DCB4 15E10003 */  bne   $t7, $at, .L0041DCC4
/* 0041DCB8 28610028 */   slti  $at, $v1, 0x28
/* 0041DCBC 24100001 */  li    $s0, 1
/* 0041DCC0 28610028 */  slti  $at, $v1, 0x28
.L0041DCC4:
/* 0041DCC4 1020FFF5 */  beqz  $at, .L0041DC9C
/* 0041DCC8 2442FFD8 */   addiu $v0, $v0, -0x28
.L0041DCCC:
/* 0041DCCC 86590046 */  lh    $t9, 0x46($s2)
/* 0041DCD0 00000000 */  nop   
/* 0041DCD4 07210027 */  bgez  $t9, .L0041DD74
/* 0041DCD8 00000000 */   nop   
/* 0041DCDC 18A00025 */  blez  $a1, .L0041DD74
/* 0041DCE0 24030028 */   li    $v1, 40
/* 0041DCE4 26220028 */  addiu $v0, $s1, 0x28
.L0041DCE8:
/* 0041DCE8 8C480000 */  lw    $t0, ($v0)
/* 0041DCEC 24630028 */  addiu $v1, $v1, 0x28
/* 0041DCF0 17C80020 */  bne   $fp, $t0, .L0041DD74
/* 0041DCF4 00000000 */   nop   
/* 0041DCF8 8C440010 */  lw    $a0, 0x10($v0)
/* 0041DCFC 24010019 */  li    $at, 25
/* 0041DD00 10810003 */  beq   $a0, $at, .L0041DD10
/* 0041DD04 2401001A */   li    $at, 26
/* 0041DD08 14810015 */  bne   $a0, $at, .L0041DD60
/* 0041DD0C 00052080 */   sll   $a0, $a1, 2
.L0041DD10:
/* 0041DD10 8C490014 */  lw    $t1, 0x14($v0)
/* 0041DD14 00000000 */  nop   
/* 0041DD18 912A003D */  lbu   $t2, 0x3d($t1)
/* 0041DD1C 00000000 */  nop   
/* 0041DD20 1140000F */  beqz  $t2, .L0041DD60
/* 0041DD24 00052080 */   sll   $a0, $a1, 2
/* 0041DD28 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0041DD2C 24040008 */  li    $a0, 8
/* 0041DD30 0320F809 */  jalr  $t9
/* 0041DD34 00000000 */   nop   
/* 0041DD38 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041DD3C AC520000 */  sw    $s2, ($v0)
/* 0041DD40 8FAB008C */  lw    $t3, 0x8c($sp)
/* 0041DD44 00000000 */  nop   
/* 0041DD48 AC4B0004 */  sw    $t3, 4($v0)
/* 0041DD4C AFA2008C */  sw    $v0, 0x8c($sp)
/* 0041DD50 9645003C */  lhu   $a1, 0x3c($s2)
/* 0041DD54 10000007 */  b     .L0041DD74
/* 0041DD58 00000000 */   nop   
/* 0041DD5C 00052080 */  sll   $a0, $a1, 2
.L0041DD60:
/* 0041DD60 00852021 */  addu  $a0, $a0, $a1
/* 0041DD64 000420C0 */  sll   $a0, $a0, 3
/* 0041DD68 0083082A */  slt   $at, $a0, $v1
/* 0041DD6C 1020FFDE */  beqz  $at, .L0041DCE8
/* 0041DD70 24420028 */   addiu $v0, $v0, 0x28
.L0041DD74:
/* 0041DD74 10A00005 */  beqz  $a1, .L0041DD8C
/* 0041DD78 00000000 */   nop   
/* 0041DD7C 9656003E */  lhu   $s6, 0x3e($s2)
/* 0041DD80 00000000 */  nop   
/* 0041DD84 16C0000A */  bnez  $s6, .L0041DDB0
/* 0041DD88 00166080 */   sll   $t4, $s6, 2
.L0041DD8C:
/* 0041DD8C 8F99801C */  lw    $t9, %got(func_0041CF50)($gp)
/* 0041DD90 8E450004 */  lw    $a1, 4($s2)
/* 0041DD94 2739CF50 */  addiu $t9, %lo(func_0041CF50) # addiu $t9, $t9, -0x30b0
/* 0041DD98 0320F809 */  jalr  $t9
/* 0041DD9C 02402025 */   move  $a0, $s2
/* 0041DDA0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041DDA4 8E420004 */  lw    $v0, 4($s2)
/* 0041DDA8 1000015A */  b     .L0041E314
/* 0041DDAC 00000000 */   nop   
.L0041DDB0:
/* 0041DDB0 01966021 */  addu  $t4, $t4, $s6
/* 0041DDB4 000C60C0 */  sll   $t4, $t4, 3
/* 0041DDB8 022CA821 */  addu  $s5, $s1, $t4
/* 0041DDBC 8EAD0014 */  lw    $t5, 0x14($s5)
/* 0041DDC0 00000000 */  nop   
/* 0041DDC4 15A00031 */  bnez  $t5, .L0041DE8C
/* 0041DDC8 00000000 */   nop   
/* 0041DDCC 96A20024 */  lhu   $v0, 0x24($s5)
/* 0041DDD0 24010009 */  li    $at, 9
/* 0041DDD4 1441000A */  bne   $v0, $at, .L0041DE00
/* 0041DDD8 24010008 */   li    $at, 8
/* 0041DDDC 8F99801C */  lw    $t9, %got(func_0041CF50)($gp)
/* 0041DDE0 8E450004 */  lw    $a1, 4($s2)
/* 0041DDE4 2739CF50 */  addiu $t9, %lo(func_0041CF50) # addiu $t9, $t9, -0x30b0
/* 0041DDE8 0320F809 */  jalr  $t9
/* 0041DDEC 02402025 */   move  $a0, $s2
/* 0041DDF0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041DDF4 10000023 */  b     .L0041DE84
/* 0041DDF8 8E420004 */   lw    $v0, 4($s2)
/* 0041DDFC 24010008 */  li    $at, 8
.L0041DE00:
/* 0041DE00 10410009 */  beq   $v0, $at, .L0041DE28
/* 0041DE04 02402025 */   move  $a0, $s2
/* 0041DE08 8F99801C */  lw    $t9, %got(func_0041CF50)($gp)
/* 0041DE0C 8E450004 */  lw    $a1, 4($s2)
/* 0041DE10 2739CF50 */  addiu $t9, %lo(func_0041CF50) # addiu $t9, $t9, -0x30b0
/* 0041DE14 0320F809 */  jalr  $t9
/* 0041DE18 A640003E */   sh    $zero, 0x3e($s2)
/* 0041DE1C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041DE20 10000018 */  b     .L0041DE84
/* 0041DE24 8E420004 */   lw    $v0, 4($s2)
.L0041DE28:
/* 0041DE28 8F8E8BA8 */  lw     $t6, %got(notandm)($gp)
/* 0041DE2C 00000000 */  nop   
/* 0041DE30 91CE0000 */  lbu   $t6, ($t6)
/* 0041DE34 00000000 */  nop   
/* 0041DE38 11C00011 */  beqz  $t6, .L0041DE80
/* 0041DE3C 00000000 */   nop   
/* 0041DE40 92AF001D */  lbu   $t7, 0x1d($s5)
/* 0041DE44 2401001F */  li    $at, 31
/* 0041DE48 15E10003 */  bne   $t7, $at, .L0041DE58
/* 0041DE4C 00000000 */   nop   
/* 0041DE50 1600000B */  bnez  $s0, .L0041DE80
/* 0041DE54 00000000 */   nop   
.L0041DE58:
/* 0041DE58 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0041DE5C 24040008 */  li    $a0, 8
/* 0041DE60 0320F809 */  jalr  $t9
/* 0041DE64 00000000 */   nop   
/* 0041DE68 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041DE6C AC520000 */  sw    $s2, ($v0)
/* 0041DE70 8FB80090 */  lw    $t8, 0x90($sp)
/* 0041DE74 00000000 */  nop   
/* 0041DE78 AC580004 */  sw    $t8, 4($v0)
/* 0041DE7C AFA20090 */  sw    $v0, 0x90($sp)
.L0041DE80:
/* 0041DE80 8E420004 */  lw    $v0, 4($s2)
.L0041DE84:
/* 0041DE84 10000123 */  b     .L0041E314
/* 0041DE88 00000000 */   nop   
.L0041DE8C:
/* 0041DE8C 96A30024 */  lhu   $v1, 0x24($s5)
/* 0041DE90 24010008 */  li    $at, 8
/* 0041DE94 10610009 */  beq   $v1, $at, .L0041DEBC
/* 0041DE98 24010009 */   li    $at, 9
/* 0041DE9C 1061000A */  beq   $v1, $at, .L0041DEC8
/* 0041DEA0 24010049 */   li    $at, 73
/* 0041DEA4 10610005 */  beq   $v1, $at, .L0041DEBC
/* 0041DEA8 2401004A */   li    $at, 74
/* 0041DEAC 10610006 */  beq   $v1, $at, .L0041DEC8
/* 0041DEB0 00000000 */   nop   
/* 0041DEB4 1000000D */  b     .L0041DEEC
/* 0041DEB8 0000B825 */   move  $s7, $zero
.L0041DEBC:
/* 0041DEBC 8E420004 */  lw    $v0, 4($s2)
/* 0041DEC0 10000114 */  b     .L0041E314
/* 0041DEC4 00000000 */   nop   
.L0041DEC8:
/* 0041DEC8 8F99801C */  lw    $t9, %got(func_0041CF50)($gp)
/* 0041DECC 8E450004 */  lw    $a1, 4($s2)
/* 0041DED0 2739CF50 */  addiu $t9, %lo(func_0041CF50) # addiu $t9, $t9, -0x30b0
/* 0041DED4 0320F809 */  jalr  $t9
/* 0041DED8 02402025 */   move  $a0, $s2
/* 0041DEDC 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041DEE0 8E420004 */  lw    $v0, 4($s2)
/* 0041DEE4 1000010B */  b     .L0041E314
/* 0041DEE8 00000000 */   nop   
.L0041DEEC:
/* 0041DEEC 8F99801C */  lw    $t9, %got(func_0041DA6C)($gp)
/* 0041DEF0 02402025 */  move  $a0, $s2
/* 0041DEF4 2739DA6C */  addiu $t9, %lo(func_0041DA6C) # addiu $t9, $t9, -0x2594
/* 0041DEF8 0320F809 */  jalr  $t9
/* 0041DEFC 00000000 */   nop   
/* 0041DF00 AFA200A0 */  sw    $v0, 0xa0($sp)
/* 0041DF04 96A30024 */  lhu   $v1, 0x24($s5)
/* 0041DF08 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041DF0C 3879004B */  xori  $t9, $v1, 0x4b
/* 0041DF10 2F230001 */  sltiu $v1, $t9, 1
/* 0041DF14 10600006 */  beqz  $v1, .L0041DF30
/* 0041DF18 00000000 */   nop   
/* 0041DF1C 92A8001D */  lbu   $t0, 0x1d($s5)
/* 0041DF20 92A9001E */  lbu   $t1, 0x1e($s5)
/* 0041DF24 00000000 */  nop   
/* 0041DF28 01091826 */  xor   $v1, $t0, $t1
/* 0041DF2C 2C630001 */  sltiu $v1, $v1, 1
.L0041DF30:
/* 0041DF30 104000D7 */  beqz  $v0, .L0041E290
/* 0041DF34 00609825 */   move  $s3, $v1
/* 0041DF38 92AA0022 */  lbu   $t2, 0x22($s5)
/* 0041DF3C 00000000 */  nop   
/* 0041DF40 114000D3 */  beqz  $t2, .L0041E290
/* 0041DF44 00000000 */   nop   
/* 0041DF48 8EAB0028 */  lw    $t3, 0x28($s5)
/* 0041DF4C 00000000 */  nop   
/* 0041DF50 156000CF */  bnez  $t3, .L0041E290
/* 0041DF54 00000000 */   nop   
/* 0041DF58 92AC004A */  lbu   $t4, 0x4a($s5)
/* 0041DF5C 00000000 */  nop   
/* 0041DF60 118000CB */  beqz  $t4, .L0041E290
/* 0041DF64 00000000 */   nop   
/* 0041DF68 8E4D0044 */  lw    $t5, 0x44($s2)
/* 0041DF6C 00000000 */  nop   
/* 0041DF70 000D7C80 */  sll   $t7, $t5, 0x12
/* 0041DF74 05E100C6 */  bgez  $t7, .L0041E290
/* 0041DF78 00000000 */   nop   
/* 0041DF7C 8F988B38 */  lw     $t8, %got(xbb_opt)($gp)
/* 0041DF80 00000000 */  nop   
/* 0041DF84 93180000 */  lbu   $t8, ($t8)
/* 0041DF88 00000000 */  nop   
/* 0041DF8C 130000C0 */  beqz  $t8, .L0041E290
/* 0041DF90 00000000 */   nop   
/* 0041DF94 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0041DF98 24040008 */  li    $a0, 8
/* 0041DF9C 0320F809 */  jalr  $t9
/* 0041DFA0 00000000 */   nop   
/* 0041DFA4 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041DFA8 AC400004 */  sw    $zero, 4($v0)
/* 0041DFAC AC520000 */  sw    $s2, ($v0)
/* 0041DFB0 8E480004 */  lw    $t0, 4($s2)
/* 0041DFB4 8FB900A0 */  lw    $t9, 0xa0($sp)
/* 0041DFB8 00408825 */  move  $s1, $v0
/* 0041DFBC 17280015 */  bne   $t9, $t0, .L0041E014
/* 0041DFC0 02C02025 */   move  $a0, $s6
/* 0041DFC4 A640003E */  sh    $zero, 0x3e($s2)
/* 0041DFC8 8F9982A4 */  lw    $t9, %call16(change_bb)($gp)
/* 0041DFCC 00002825 */  move  $a1, $zero
/* 0041DFD0 24060005 */  li    $a2, 5
/* 0041DFD4 0320F809 */  jalr  $t9
/* 0041DFD8 00003825 */   move  $a3, $zero
/* 0041DFDC 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041DFE0 AEA00014 */  sw    $zero, 0x14($s5)
/* 0041DFE4 8E890000 */  lw    $t1, ($s4)
/* 0041DFE8 00000000 */  nop   
/* 0041DFEC 1120009F */  beqz  $t1, .L0041E26C
/* 0041DFF0 00000000 */   nop   
/* 0041DFF4 8F84806C */  lw    $a0, %got(RO_10013C94)($gp)
/* 0041DFF8 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0041DFFC 24843C94 */  addiu $a0, %lo(RO_10013C94) # addiu $a0, $a0, 0x3c94
/* 0041E000 0320F809 */  jalr  $t9
/* 0041E004 00000000 */   nop   
/* 0041E008 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041E00C 10000097 */  b     .L0041E26C
/* 0041E010 00000000 */   nop   
.L0041E014:
/* 0041E014 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0041E018 00008025 */  move  $s0, $zero
/* 0041E01C 0320F809 */  jalr  $t9
/* 0041E020 24040008 */   li    $a0, 8
/* 0041E024 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041E028 8FAA00A0 */  lw    $t2, 0xa0($sp)
/* 0041E02C 8F99801C */  lw    $t9, %got(func_0041D080)($gp)
/* 0041E030 AC510004 */  sw    $s1, 4($v0)
/* 0041E034 AC4A0000 */  sw    $t2, ($v0)
/* 0041E038 8FA400A0 */  lw    $a0, 0xa0($sp)
/* 0041E03C 2739D080 */  addiu $t9, %lo(func_0041D080) # addiu $t9, $t9, -0x2f80
/* 0041E040 0320F809 */  jalr  $t9
/* 0041E044 00408825 */   move  $s1, $v0
/* 0041E048 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041E04C 2C410006 */  sltiu $at, $v0, 6
/* 0041E050 10200074 */  beqz  $at, .L0041E224
/* 0041E054 00000000 */   nop   
/* 0041E058 8F81806C */  lw    $at, %got(jtbl_10014004)($gp)
/* 0041E05C 00025880 */  sll   $t3, $v0, 2
/* 0041E060 002B0821 */  addu  $at, $at, $t3
/* 0041E064 8C2B4004 */  lw    $t3, %lo(jtbl_10014004)($at)
/* 0041E068 00000000 */  nop   
/* 0041E06C 017C5821 */  addu  $t3, $t3, $gp
/* 0041E070 01600008 */  jr    $t3
/* 0041E074 00000000 */   nop   
.L0041E078:
/* 0041E078 8E8C0000 */  lw    $t4, ($s4)
/* 0041E07C 00000000 */  nop   
/* 0041E080 11800009 */  beqz  $t4, .L0041E0A8
/* 0041E084 8FAD00A0 */   lw    $t5, 0xa0($sp)
/* 0041E088 8F84806C */  lw    $a0, %got(RO_10013CBC)($gp)
/* 0041E08C 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0041E090 24843CBC */  addiu $a0, %lo(RO_10013CBC) # addiu $a0, $a0, 0x3cbc
/* 0041E094 0320F809 */  jalr  $t9
/* 0041E098 00000000 */   nop   
/* 0041E09C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041E0A0 00000000 */  nop   
/* 0041E0A4 8FAD00A0 */  lw    $t5, 0xa0($sp)
.L0041E0A8:
/* 0041E0A8 00000000 */  nop   
/* 0041E0AC 95AF003E */  lhu   $t7, 0x3e($t5)
/* 0041E0B0 8DAE000C */  lw    $t6, 0xc($t5)
/* 0041E0B4 000FC080 */  sll   $t8, $t7, 2
/* 0041E0B8 030FC021 */  addu  $t8, $t8, $t7
/* 0041E0BC 0018C0C0 */  sll   $t8, $t8, 3
/* 0041E0C0 01D8C821 */  addu  $t9, $t6, $t8
/* 0041E0C4 8F280014 */  lw    $t0, 0x14($t9)
/* 0041E0C8 8F99801C */  lw    $t9, %got(func_0041DA6C)($gp)
/* 0041E0CC AEA80014 */  sw    $t0, 0x14($s5)
/* 0041E0D0 8FA400A0 */  lw    $a0, 0xa0($sp)
/* 0041E0D4 2739DA6C */  addiu $t9, %lo(func_0041DA6C) # addiu $t9, $t9, -0x2594
/* 0041E0D8 0320F809 */  jalr  $t9
/* 0041E0DC 00000000 */   nop   
/* 0041E0E0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041E0E4 AFA200A0 */  sw    $v0, 0xa0($sp)
/* 0041E0E8 1000004E */  b     .L0041E224
/* 0041E0EC 24100001 */   li    $s0, 1
.L0041E0F0:
/* 0041E0F0 1260004C */  beqz  $s3, .L0041E224
/* 0041E0F4 00000000 */   nop   
/* 0041E0F8 8F99801C */  lw    $t9, %got(func_0041DA6C)($gp)
/* 0041E0FC 8FA400A0 */  lw    $a0, 0xa0($sp)
/* 0041E100 2739DA6C */  addiu $t9, %lo(func_0041DA6C) # addiu $t9, $t9, -0x2594
/* 0041E104 0320F809 */  jalr  $t9
/* 0041E108 00000000 */   nop   
/* 0041E10C 8E490004 */  lw    $t1, 4($s2)
/* 0041E110 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041E114 14490043 */  bne   $v0, $t1, .L0041E224
/* 0041E118 00000000 */   nop   
/* 0041E11C 8F99801C */  lw    $t9, %got(func_0041D854)($gp)
/* 0041E120 02402025 */  move  $a0, $s2
/* 0041E124 2739D854 */  addiu $t9, %lo(func_0041D854) # addiu $t9, $t9, -0x27ac
/* 0041E128 0320F809 */  jalr  $t9
/* 0041E12C 27A500A0 */   addiu $a1, $sp, 0xa0
/* 0041E130 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041E134 1040003B */  beqz  $v0, .L0041E224
/* 0041E138 00000000 */   nop   
/* 0041E13C 8E8A0000 */  lw    $t2, ($s4)
/* 0041E140 00009825 */  move  $s3, $zero
/* 0041E144 11400008 */  beqz  $t2, .L0041E168
/* 0041E148 00000000 */   nop   
/* 0041E14C 8F84806C */  lw    $a0, %got(RO_10013CDC)($gp)
/* 0041E150 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0041E154 24843CDC */  addiu $a0, %lo(RO_10013CDC) # addiu $a0, $a0, 0x3cdc
/* 0041E158 0320F809 */  jalr  $t9
/* 0041E15C 00000000 */   nop   
/* 0041E160 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041E164 00000000 */  nop   
.L0041E168:
/* 0041E168 1000002E */  b     .L0041E224
/* 0041E16C 24100001 */   li    $s0, 1
.L0041E170:
/* 0041E170 1260002C */  beqz  $s3, .L0041E224
/* 0041E174 00000000 */   nop   
/* 0041E178 8F99801C */  lw    $t9, %got(func_0041D2D4)($gp)
/* 0041E17C 8FA500A0 */  lw    $a1, 0xa0($sp)
/* 0041E180 2739D2D4 */  addiu $t9, %lo(func_0041D2D4) # addiu $t9, $t9, -0x2d2c
/* 0041E184 0320F809 */  jalr  $t9
/* 0041E188 02402025 */   move  $a0, $s2
/* 0041E18C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041E190 8FA400A0 */  lw    $a0, 0xa0($sp)
/* 0041E194 8F99801C */  lw    $t9, %got(func_0041DA6C)($gp)
/* 0041E198 00000000 */  nop   
/* 0041E19C 2739DA6C */  addiu $t9, %lo(func_0041DA6C) # addiu $t9, $t9, -0x2594
/* 0041E1A0 0320F809 */  jalr  $t9
/* 0041E1A4 00000000 */   nop   
/* 0041E1A8 8E8B0000 */  lw    $t3, ($s4)
/* 0041E1AC 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041E1B0 11600008 */  beqz  $t3, .L0041E1D4
/* 0041E1B4 AFA200A0 */   sw    $v0, 0xa0($sp)
/* 0041E1B8 8F84806C */  lw    $a0, %got(RO_10013CF4)($gp)
/* 0041E1BC 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0041E1C0 24843CF4 */  addiu $a0, %lo(RO_10013CF4) # addiu $a0, $a0, 0x3cf4
/* 0041E1C4 0320F809 */  jalr  $t9
/* 0041E1C8 00000000 */   nop   
/* 0041E1CC 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041E1D0 00000000 */  nop   
.L0041E1D4:
/* 0041E1D4 10000013 */  b     .L0041E224
/* 0041E1D8 24100001 */   li    $s0, 1
.L0041E1DC:
/* 0041E1DC 12600011 */  beqz  $s3, .L0041E224
/* 0041E1E0 02402025 */   move  $a0, $s2
/* 0041E1E4 8F99801C */  lw    $t9, %got(func_0041D2D4)($gp)
/* 0041E1E8 8FA500A0 */  lw    $a1, 0xa0($sp)
/* 0041E1EC 2739D2D4 */  addiu $t9, %lo(func_0041D2D4) # addiu $t9, $t9, -0x2d2c
/* 0041E1F0 0320F809 */  jalr  $t9
/* 0041E1F4 24170001 */   li    $s7, 1
/* 0041E1F8 8E8C0000 */  lw    $t4, ($s4)
/* 0041E1FC 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041E200 11800008 */  beqz  $t4, .L0041E224
/* 0041E204 00000000 */   nop   
/* 0041E208 8F84806C */  lw    $a0, %got(RO_10013D0C)($gp)
/* 0041E20C 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0041E210 24843D0C */  addiu $a0, %lo(RO_10013D0C) # addiu $a0, $a0, 0x3d0c
/* 0041E214 0320F809 */  jalr  $t9
/* 0041E218 00000000 */   nop   
/* 0041E21C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041E220 00000000 */  nop   
.L0041E224:
/* 0041E224 1220000B */  beqz  $s1, .L0041E254
/* 0041E228 02201025 */   move  $v0, $s1
/* 0041E22C 8FAD00A0 */  lw    $t5, 0xa0($sp)
.L0041E230:
/* 0041E230 8C4F0000 */  lw    $t7, ($v0)
/* 0041E234 00000000 */  nop   
/* 0041E238 15AF0002 */  bne   $t5, $t7, .L0041E244
/* 0041E23C 00000000 */   nop   
/* 0041E240 00008025 */  move  $s0, $zero
.L0041E244:
/* 0041E244 8C420004 */  lw    $v0, 4($v0)
/* 0041E248 00000000 */  nop   
/* 0041E24C 1440FFF8 */  bnez  $v0, .L0041E230
/* 0041E250 8FAD00A0 */   lw    $t5, 0xa0($sp)
.L0041E254:
/* 0041E254 12000005 */  beqz  $s0, .L0041E26C
/* 0041E258 00000000 */   nop   
/* 0041E25C 8FAE00A0 */  lw    $t6, 0xa0($sp)
/* 0041E260 00000000 */  nop   
/* 0041E264 15C0FF6B */  bnez  $t6, .L0041E014
/* 0041E268 00000000 */   nop   
.L0041E26C:
/* 0041E26C 12200008 */  beqz  $s1, .L0041E290
/* 0041E270 02208025 */   move  $s0, $s1
.L0041E274:
/* 0041E274 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 0041E278 8E110004 */  lw    $s1, 4($s0)
/* 0041E27C 0320F809 */  jalr  $t9
/* 0041E280 02002025 */   move  $a0, $s0
/* 0041E284 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041E288 1620FFFA */  bnez  $s1, .L0041E274
/* 0041E28C 02208025 */   move  $s0, $s1
.L0041E290:
/* 0041E290 16E0001E */  bnez  $s7, .L0041E30C
/* 0041E294 00000000 */   nop   
/* 0041E298 8FB800A0 */  lw    $t8, 0xa0($sp)
/* 0041E29C 2419FFFF */  li    $t9, -1
/* 0041E2A0 13000009 */  beqz  $t8, .L0041E2C8
/* 0041E2A4 2408FFFF */   li    $t0, -1
/* 0041E2A8 8F99801C */  lw    $t9, %got(func_0041CF50)($gp)
/* 0041E2AC 02402025 */  move  $a0, $s2
/* 0041E2B0 2739CF50 */  addiu $t9, %lo(func_0041CF50) # addiu $t9, $t9, -0x30b0
/* 0041E2B4 0320F809 */  jalr  $t9
/* 0041E2B8 03002825 */   move  $a1, $t8
/* 0041E2BC 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041E2C0 10000003 */  b     .L0041E2D0
/* 0041E2C4 00000000 */   nop   
.L0041E2C8:
/* 0041E2C8 AE590034 */  sw    $t9, 0x34($s2)
/* 0041E2CC AE480030 */  sw    $t0, 0x30($s2)
.L0041E2D0:
/* 0041E2D0 16600008 */  bnez  $s3, .L0041E2F4
/* 0041E2D4 00000000 */   nop   
/* 0041E2D8 8F99801C */  lw    $t9, %got(func_0041CF50)($gp)
/* 0041E2DC 8E450004 */  lw    $a1, 4($s2)
/* 0041E2E0 2739CF50 */  addiu $t9, %lo(func_0041CF50) # addiu $t9, $t9, -0x30b0
/* 0041E2E4 0320F809 */  jalr  $t9
/* 0041E2E8 02402025 */   move  $a0, $s2
/* 0041E2EC 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041E2F0 00000000 */  nop   
.L0041E2F4:
/* 0041E2F4 924C0047 */  lbu   $t4, 0x47($s2)
/* 0041E2F8 00135100 */  sll   $t2, $s3, 4
/* 0041E2FC 314B0010 */  andi  $t3, $t2, 0x10
/* 0041E300 318DFFEF */  andi  $t5, $t4, 0xffef
/* 0041E304 016D7825 */  or    $t7, $t3, $t5
/* 0041E308 A24F0047 */  sb    $t7, 0x47($s2)
.L0041E30C:
/* 0041E30C 8E420004 */  lw    $v0, 4($s2)
/* 0041E310 00000000 */  nop   
.L0041E314:
/* 0041E314 1440FE55 */  bnez  $v0, .L0041DC6C
/* 0041E318 00409025 */   move  $s2, $v0
.L0041E31C:
/* 0041E31C 8FB10090 */  lw    $s1, 0x90($sp)
/* 0041E320 00000000 */  nop   
/* 0041E324 12200014 */  beqz  $s1, .L0041E378
/* 0041E328 8FB90090 */   lw    $t9, 0x90($sp)
/* 0041E32C 8FB0008C */  lw    $s0, 0x8c($sp)
.L0041E330:
/* 0041E330 00000000 */  nop   
/* 0041E334 1200000B */  beqz  $s0, .L0041E364
/* 0041E338 00000000 */   nop   
.L0041E33C:
/* 0041E33C 8F99801C */  lw    $t9, %got(func_0041CF50)($gp)
/* 0041E340 8E240000 */  lw    $a0, ($s1)
/* 0041E344 8E050000 */  lw    $a1, ($s0)
/* 0041E348 2739CF50 */  addiu $t9, %lo(func_0041CF50) # addiu $t9, $t9, -0x30b0
/* 0041E34C 0320F809 */  jalr  $t9
/* 0041E350 00000000 */   nop   
/* 0041E354 8E100004 */  lw    $s0, 4($s0)
/* 0041E358 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041E35C 1600FFF7 */  bnez  $s0, .L0041E33C
/* 0041E360 00000000 */   nop   
.L0041E364:
/* 0041E364 8E310004 */  lw    $s1, 4($s1)
/* 0041E368 00000000 */  nop   
/* 0041E36C 1620FFF0 */  bnez  $s1, .L0041E330
/* 0041E370 8FB0008C */   lw    $s0, 0x8c($sp)
/* 0041E374 8FB90090 */  lw    $t9, 0x90($sp)
.L0041E378:
/* 0041E378 00000000 */  nop   
/* 0041E37C 1320000B */  beqz  $t9, .L0041E3AC
/* 0041E380 8FAC008C */   lw    $t4, 0x8c($sp)
/* 0041E384 8FA40090 */  lw    $a0, 0x90($sp)
.L0041E388:
/* 0041E388 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 0041E38C 8C890004 */  lw    $t1, 4($a0)
/* 0041E390 0320F809 */  jalr  $t9
/* 0041E394 AFA90090 */   sw    $t1, 0x90($sp)
/* 0041E398 8FAA0090 */  lw    $t2, 0x90($sp)
/* 0041E39C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041E3A0 1540FFF9 */  bnez  $t2, .L0041E388
/* 0041E3A4 8FA40090 */   lw    $a0, 0x90($sp)
/* 0041E3A8 8FAC008C */  lw    $t4, 0x8c($sp)
.L0041E3AC:
/* 0041E3AC 00000000 */  nop   
/* 0041E3B0 1180000B */  beqz  $t4, .L0041E3E0
/* 0041E3B4 8FBF003C */   lw    $ra, 0x3c($sp)
/* 0041E3B8 8FA4008C */  lw    $a0, 0x8c($sp)
.L0041E3BC:
/* 0041E3BC 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 0041E3C0 8C8D0004 */  lw    $t5, 4($a0)
/* 0041E3C4 0320F809 */  jalr  $t9
/* 0041E3C8 AFAD008C */   sw    $t5, 0x8c($sp)
/* 0041E3CC 8FAF008C */  lw    $t7, 0x8c($sp)
/* 0041E3D0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041E3D4 15E0FFF9 */  bnez  $t7, .L0041E3BC
/* 0041E3D8 8FA4008C */   lw    $a0, 0x8c($sp)
/* 0041E3DC 8FBF003C */  lw    $ra, 0x3c($sp)
.L0041E3E0:
/* 0041E3E0 8FB00014 */  lw    $s0, 0x14($sp)
/* 0041E3E4 8FB10018 */  lw    $s1, 0x18($sp)
/* 0041E3E8 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0041E3EC 8FB30020 */  lw    $s3, 0x20($sp)
/* 0041E3F0 8FB40024 */  lw    $s4, 0x24($sp)
/* 0041E3F4 8FB50028 */  lw    $s5, 0x28($sp)
/* 0041E3F8 8FB6002C */  lw    $s6, 0x2c($sp)
/* 0041E3FC 8FB70030 */  lw    $s7, 0x30($sp)
/* 0041E400 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0041E404 03E00008 */  jr    $ra
/* 0041E408 27BD00B0 */   addiu $sp, $sp, 0xb0

    .type func_0041E40C, @function
func_0041E40C:
    # 00420E34 traverse_bb
/* 0041E40C 3C1C0FC1 */  .cpload $t9
/* 0041E410 279CBE54 */  
/* 0041E414 0399E021 */  
/* 0041E418 27BDFF60 */  addiu $sp, $sp, -0xa0
/* 0041E41C 8F8F8B04 */  lw     $t7, %got(isa)($gp)
/* 0041E420 240E7530 */  li    $t6, 30000
/* 0041E424 91EF0000 */  lbu   $t7, ($t7)
/* 0041E428 24010001 */  li    $at, 1
/* 0041E42C AFBF0044 */  sw    $ra, 0x44($sp)
/* 0041E430 AFBE0040 */  sw    $fp, 0x40($sp)
/* 0041E434 AFBC003C */  sw    $gp, 0x3c($sp)
/* 0041E438 AFB70038 */  sw    $s7, 0x38($sp)
/* 0041E43C AFB60034 */  sw    $s6, 0x34($sp)
/* 0041E440 AFB50030 */  sw    $s5, 0x30($sp)
/* 0041E444 AFB4002C */  sw    $s4, 0x2c($sp)
/* 0041E448 AFB30028 */  sw    $s3, 0x28($sp)
/* 0041E44C AFB20024 */  sw    $s2, 0x24($sp)
/* 0041E450 AFB10020 */  sw    $s1, 0x20($sp)
/* 0041E454 AFB0001C */  sw    $s0, 0x1c($sp)
/* 0041E458 15E10003 */  bne   $t7, $at, .L0041E468
/* 0041E45C AFAE005C */   sw    $t6, 0x5c($sp)
/* 0041E460 24186D60 */  li    $t8, 28000
/* 0041E464 AFB8005C */  sw    $t8, 0x5c($sp)
.L0041E468:
/* 0041E468 8F998B1C */  lw     $t9, %got(optflag)($gp)
/* 0041E46C 8FA9005C */  lw    $t1, 0x5c($sp)
/* 0041E470 8F390000 */  lw    $t9, ($t9)
/* 0041E474 240C3A98 */  li    $t4, 15000
/* 0041E478 13200007 */  beqz  $t9, .L0041E498
/* 0041E47C 252AF448 */   addiu $t2, $t1, -0xbb8
/* 0041E480 8F888B18 */  lw     $t0, %got(debugflag)($gp)
/* 0041E484 24010002 */  li    $at, 2
/* 0041E488 8D080000 */  lw    $t0, ($t0)
/* 0041E48C 00000000 */  nop   
/* 0041E490 15010002 */  bne   $t0, $at, .L0041E49C
/* 0041E494 00000000 */   nop   
.L0041E498:
/* 0041E498 AFAA005C */  sw    $t2, 0x5c($sp)
.L0041E49C:
/* 0041E49C 8F8B8BAC */  lw     $t3, %got(force_branch_fixup)($gp)
/* 0041E4A0 24170028 */  li    $s7, 40
/* 0041E4A4 916B0000 */  lbu   $t3, ($t3)
/* 0041E4A8 00000000 */  nop   
/* 0041E4AC 11600002 */  beqz  $t3, .L0041E4B8
/* 0041E4B0 00000000 */   nop   
/* 0041E4B4 AFAC005C */  sw    $t4, 0x5c($sp)
.L0041E4B8:
/* 0041E4B8 8F918088 */  lw    $s1, %got(B_10023304)($gp)
/* 0041E4BC 00000000 */  nop   
/* 0041E4C0 8E313304 */  lw    $s1, %lo(B_10023304)($s1)
/* 0041E4C4 00000000 */  nop   
/* 0041E4C8 122001A3 */  beqz  $s1, .L0041EB58
/* 0041E4CC 8FBF0044 */   lw    $ra, 0x44($sp)
/* 0041E4D0 8F9E8088 */  lw    $fp, %got(B_10023308)($gp)
/* 0041E4D4 8F938B40 */  lw     $s3, %got(pinstruction)($gp)
/* 0041E4D8 27DE3308 */  addiu $fp, %lo(B_10023308) # addiu $fp, $fp, 0x3308
.L0041E4DC:
/* 0041E4DC 8E220008 */  lw    $v0, 8($s1)
/* 0041E4E0 00000000 */  nop   
/* 0041E4E4 AFA20090 */  sw    $v0, 0x90($sp)
/* 0041E4E8 9623003E */  lhu   $v1, 0x3e($s1)
/* 0041E4EC 00000000 */  nop   
/* 0041E4F0 10600194 */  beqz  $v1, .L0041EB44
/* 0041E4F4 00000000 */   nop   
/* 0041E4F8 00770019 */  multu $v1, $s7
/* 0041E4FC 8E2D000C */  lw    $t5, 0xc($s1)
/* 0041E500 00009025 */  move  $s2, $zero
/* 0041E504 00007012 */  mflo  $t6
/* 0041E508 01AE7821 */  addu  $t7, $t5, $t6
/* 0041E50C 8DF40014 */  lw    $s4, 0x14($t7)
/* 0041E510 00000000 */  nop   
/* 0041E514 1280018B */  beqz  $s4, .L0041EB44
/* 0041E518 00000000 */   nop   
/* 0041E51C 10400013 */  beqz  $v0, .L0041E56C
/* 0041E520 00408025 */   move  $s0, $v0
.L0041E524:
/* 0041E524 96180046 */  lhu   $t8, 0x46($s0)
/* 0041E528 00000000 */  nop   
/* 0041E52C 0018CBC2 */  srl   $t9, $t8, 0xf
/* 0041E530 13200009 */  beqz  $t9, .L0041E558
/* 0041E534 00000000 */   nop   
/* 0041E538 8F99801C */  lw    $t9, %got(func_0041D9E4)($gp)
/* 0041E53C 02002025 */  move  $a0, $s0
/* 0041E540 2739D9E4 */  addiu $t9, %lo(func_0041D9E4) # addiu $t9, $t9, -0x261c
/* 0041E544 0320F809 */  jalr  $t9
/* 0041E548 02802825 */   move  $a1, $s4
/* 0041E54C 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0041E550 14400006 */  bnez  $v0, .L0041E56C
/* 0041E554 00000000 */   nop   
.L0041E558:
/* 0041E558 9608003C */  lhu   $t0, 0x3c($s0)
/* 0041E55C 8E100008 */  lw    $s0, 8($s0)
/* 0041E560 02489021 */  addu  $s2, $s2, $t0
/* 0041E564 1600FFEF */  bnez  $s0, .L0041E524
/* 0041E568 00000000 */   nop   
.L0041E56C:
/* 0041E56C 16000015 */  bnez  $s0, .L0041E5C4
/* 0041E570 00000000 */   nop   
/* 0041E574 00009025 */  move  $s2, $zero
/* 0041E578 12200012 */  beqz  $s1, .L0041E5C4
/* 0041E57C 02208025 */   move  $s0, $s1
.L0041E580:
/* 0041E580 9609003C */  lhu   $t1, 0x3c($s0)
/* 0041E584 860B0046 */  lh    $t3, 0x46($s0)
/* 0041E588 02499021 */  addu  $s2, $s2, $t1
/* 0041E58C 05610009 */  bgez  $t3, .L0041E5B4
/* 0041E590 00000000 */   nop   
/* 0041E594 8F99801C */  lw    $t9, %got(func_0041D9E4)($gp)
/* 0041E598 02002025 */  move  $a0, $s0
/* 0041E59C 2739D9E4 */  addiu $t9, %lo(func_0041D9E4) # addiu $t9, $t9, -0x261c
/* 0041E5A0 0320F809 */  jalr  $t9
/* 0041E5A4 02802825 */   move  $a1, $s4
/* 0041E5A8 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0041E5AC 14400005 */  bnez  $v0, .L0041E5C4
/* 0041E5B0 00000000 */   nop   
.L0041E5B4:
/* 0041E5B4 8E100000 */  lw    $s0, ($s0)
/* 0041E5B8 00000000 */  nop   
/* 0041E5BC 1600FFF0 */  bnez  $s0, .L0041E580
/* 0041E5C0 00000000 */   nop   
.L0041E5C4:
/* 0041E5C4 1200015F */  beqz  $s0, .L0041EB44
/* 0041E5C8 00000000 */   nop   
/* 0041E5CC 8FAC005C */  lw    $t4, 0x5c($sp)
/* 0041E5D0 00000000 */  nop   
/* 0041E5D4 0192082A */  slt   $at, $t4, $s2
/* 0041E5D8 1020015A */  beqz  $at, .L0041EB44
/* 0041E5DC 00000000 */   nop   
/* 0041E5E0 962E003E */  lhu   $t6, 0x3e($s1)
/* 0041E5E4 8E2D000C */  lw    $t5, 0xc($s1)
/* 0041E5E8 01D70019 */  multu $t6, $s7
/* 0041E5EC 8F99801C */  lw    $t9, %got(func_0041D754)($gp)
/* 0041E5F0 27A50074 */  addiu $a1, $sp, 0x74
/* 0041E5F4 2739D754 */  addiu $t9, %lo(func_0041D754) # addiu $t9, $t9, -0x28ac
/* 0041E5F8 00007812 */  mflo  $t7
/* 0041E5FC 01AF9021 */  addu  $s2, $t5, $t7
/* 0041E600 8E580000 */  lw    $t8, ($s2)
/* 0041E604 00000000 */  nop   
/* 0041E608 AFB80074 */  sw    $t8, 0x74($sp)
/* 0041E60C 96440024 */  lhu   $a0, 0x24($s2)
/* 0041E610 0320F809 */  jalr  $t9
/* 0041E614 00000000 */   nop   
/* 0041E618 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0041E61C 2401014C */  li    $at, 332
/* 0041E620 10410148 */  beq   $v0, $at, .L0041EB44
/* 0041E624 0040B025 */   move  $s6, $v0
/* 0041E628 96500024 */  lhu   $s0, 0x24($s2)
/* 0041E62C 24050001 */  li    $a1, 1
/* 0041E630 3A19004B */  xori  $t9, $s0, 0x4b
/* 0041E634 2F300001 */  sltiu $s0, $t9, 1
/* 0041E638 12000006 */  beqz  $s0, .L0041E654
/* 0041E63C 24040049 */   li    $a0, 73
/* 0041E640 9248001E */  lbu   $t0, 0x1e($s2)
/* 0041E644 9249001D */  lbu   $t1, 0x1d($s2)
/* 0041E648 00000000 */  nop   
/* 0041E64C 01098026 */  xor   $s0, $t0, $t1
/* 0041E650 2E100001 */  sltiu $s0, $s0, 1
.L0041E654:
/* 0041E654 8F818BB0 */  lw     $at, %got(bbindex)($gp)
/* 0041E658 24020001 */  li    $v0, 1
/* 0041E65C AC200000 */  sw    $zero, ($at)
/* 0041E660 8E6A0000 */  lw    $t2, ($s3)
/* 0041E664 8F818B7C */  lw     $at, %got(cur_pinst)($gp)
/* 0041E668 8F8E8AF8 */  lw     $t6, %got(picflag)($gp)
/* 0041E66C AC2A0000 */  sw    $t2, ($at)
/* 0041E670 8F818BB4 */  lw     $at, %got(atflag)($gp)
/* 0041E674 8DCE0000 */  lw    $t6, ($t6)
/* 0041E678 A0220000 */  sb    $v0, ($at)
/* 0041E67C 8F818B8C */  lw     $at, %got(reorderflag)($gp)
/* 0041E680 02803025 */  move  $a2, $s4
/* 0041E684 A0220000 */  sb    $v0, ($at)
/* 0041E688 8E4B000C */  lw    $t3, 0xc($s2)
/* 0041E68C 8F818BB8 */  lw     $at, %got(currentline)($gp)
/* 0041E690 00003825 */  move  $a3, $zero
/* 0041E694 AC2B0000 */  sw    $t3, ($at)
/* 0041E698 8E4C0018 */  lw    $t4, 0x18($s2)
/* 0041E69C 8F818BBC */  lw     $at, %got(currentfile)($gp)
/* 0041E6A0 19C00011 */  blez  $t6, .L0041E6E8
/* 0041E6A4 AC2C0000 */   sw    $t4, ($at)
/* 0041E6A8 8F99861C */  lw    $t9, %call16(do_parseafra)($gp)
/* 0041E6AC 240D0048 */  li    $t5, 72
/* 0041E6B0 AFAD0010 */  sw    $t5, 0x10($sp)
/* 0041E6B4 0320F809 */  jalr  $t9
/* 0041E6B8 24040024 */   li    $a0, 36
/* 0041E6BC 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0041E6C0 240F0001 */  li    $t7, 1
/* 0041E6C4 A28F003D */  sb    $t7, 0x3d($s4)
/* 0041E6C8 8F998480 */  lw    $t9, %call16(emitreg2)($gp)
/* 0041E6CC 24040008 */  li    $a0, 8
/* 0041E6D0 24050001 */  li    $a1, 1
/* 0041E6D4 0320F809 */  jalr  $t9
/* 0041E6D8 24060048 */   li    $a2, 72
/* 0041E6DC 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0041E6E0 10000013 */  b     .L0041E730
/* 0041E6E4 00000000 */   nop   
.L0041E6E8:
/* 0041E6E8 8F998470 */  lw    $t9, %call16(emitjump)($gp)
/* 0041E6EC 00002825 */  move  $a1, $zero
/* 0041E6F0 0320F809 */  jalr  $t9
/* 0041E6F4 00003025 */   move  $a2, $zero
/* 0041E6F8 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0041E6FC 02802025 */  move  $a0, $s4
/* 0041E700 8F988BB0 */  lw     $t8, %got(bbindex)($gp)
/* 0041E704 8F998B88 */  lw     $t9, %got(proc_instr_base)($gp)
/* 0041E708 8F180000 */  lw    $t8, ($t8)
/* 0041E70C 8F390000 */  lw    $t9, ($t9)
/* 0041E710 24050006 */  li    $a1, 6
/* 0041E714 03193021 */  addu  $a2, $t8, $t9
/* 0041E718 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0041E71C 00000000 */  nop   
/* 0041E720 0320F809 */  jalr  $t9
/* 0041E724 00000000 */   nop   
/* 0041E728 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0041E72C 00000000 */  nop   
.L0041E730:
/* 0041E730 8F998448 */  lw    $t9, %call16(emitnop)($gp)
/* 0041E734 24040001 */  li    $a0, 1
/* 0041E738 0320F809 */  jalr  $t9
/* 0041E73C 00000000 */   nop   
/* 0041E740 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0041E744 120000D5 */  beqz  $s0, .L0041EA9C
/* 0041E748 00000000 */   nop   
/* 0041E74C 8F888B7C */  lw     $t0, %got(cur_pinst)($gp)
/* 0041E750 8E690000 */  lw    $t1, ($s3)
/* 0041E754 8D080000 */  lw    $t0, ($t0)
/* 0041E758 962B003C */  lhu   $t3, 0x3c($s1)
/* 0041E75C 01095023 */  subu  $t2, $t0, $t1
/* 0041E760 0157001A */  div   $zero, $t2, $s7
/* 0041E764 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0041E768 16E00002 */  bnez  $s7, .L0041E774
/* 0041E76C 00000000 */   nop   
/* 0041E770 0007000D */  break 7
.L0041E774:
/* 0041E774 2401FFFF */  li    $at, -1
/* 0041E778 16E10004 */  bne   $s7, $at, .L0041E78C
/* 0041E77C 3C018000 */   lui   $at, 0x8000
/* 0041E780 15410002 */  bne   $t2, $at, .L0041E78C
/* 0041E784 00000000 */   nop   
/* 0041E788 0006000D */  break 6
.L0041E78C:
/* 0041E78C 8E34000C */  lw    $s4, 0xc($s1)
/* 0041E790 24100001 */  li    $s0, 1
/* 0041E794 00009012 */  mflo  $s2
/* 0041E798 01726021 */  addu  $t4, $t3, $s2
/* 0041E79C 258E0001 */  addiu $t6, $t4, 1
/* 0041E7A0 01D70019 */  multu $t6, $s7
/* 0041E7A4 00002012 */  mflo  $a0
/* 0041E7A8 0320F809 */  jalr  $t9
/* 0041E7AC 00000000 */   nop   
/* 0041E7B0 962D003C */  lhu   $t5, 0x3c($s1)
/* 0041E7B4 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0041E7B8 19A00019 */  blez  $t5, .L0041E820
/* 0041E7BC AE22000C */   sw    $v0, 0xc($s1)
/* 0041E7C0 24020028 */  li    $v0, 40
/* 0041E7C4 26830028 */  addiu $v1, $s4, 0x28
.L0041E7C8:
/* 0041E7C8 8E2F000C */  lw    $t7, 0xc($s1)
/* 0041E7CC 00604825 */  move  $t1, $v1
/* 0041E7D0 24680024 */  addiu $t0, $v1, 0x24
/* 0041E7D4 01E2C021 */  addu  $t8, $t7, $v0
.L0041E7D8:
/* 0041E7D8 8D210000 */  lw    $at, ($t1)
/* 0041E7DC 2529000C */  addiu $t1, $t1, 0xc
/* 0041E7E0 AF010000 */  sw    $at, ($t8)
/* 0041E7E4 8D21FFF8 */  lw    $at, -8($t1)
/* 0041E7E8 2718000C */  addiu $t8, $t8, 0xc
/* 0041E7EC AF01FFF8 */  sw    $at, -8($t8)
/* 0041E7F0 8D21FFFC */  lw    $at, -4($t1)
/* 0041E7F4 1528FFF8 */  bne   $t1, $t0, .L0041E7D8
/* 0041E7F8 AF01FFFC */   sw    $at, -4($t8)
/* 0041E7FC 8D210000 */  lw    $at, ($t1)
/* 0041E800 26100001 */  addiu $s0, $s0, 1
/* 0041E804 AF010000 */  sw    $at, ($t8)
/* 0041E808 962A003C */  lhu   $t2, 0x3c($s1)
/* 0041E80C 24420028 */  addiu $v0, $v0, 0x28
/* 0041E810 0150082A */  slt   $at, $t2, $s0
/* 0041E814 1020FFEC */  beqz  $at, .L0041E7C8
/* 0041E818 24630028 */   addiu $v1, $v1, 0x28
/* 0041E81C 24100001 */  li    $s0, 1
.L0041E820:
/* 0041E820 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 0041E824 02802025 */  move  $a0, $s4
/* 0041E828 0320F809 */  jalr  $t9
/* 0041E82C 00000000 */   nop   
/* 0041E830 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0041E834 1A40007E */  blez  $s2, .L0041EA30
/* 0041E838 00002825 */   move  $a1, $zero
/* 0041E83C 32440003 */  andi  $a0, $s2, 3
/* 0041E840 1080001E */  beqz  $a0, .L0041E8BC
/* 0041E844 24830001 */   addiu $v1, $a0, 1
/* 0041E848 00101080 */  sll   $v0, $s0, 2
/* 0041E84C 00501021 */  addu  $v0, $v0, $s0
/* 0041E850 000210C0 */  sll   $v0, $v0, 3
.L0041E854:
/* 0041E854 962C003C */  lhu   $t4, 0x3c($s1)
/* 0041E858 8E2B000C */  lw    $t3, 0xc($s1)
/* 0041E85C 000C7080 */  sll   $t6, $t4, 2
/* 0041E860 8E790000 */  lw    $t9, ($s3)
/* 0041E864 01CC7021 */  addu  $t6, $t6, $t4
/* 0041E868 000E70C0 */  sll   $t6, $t6, 3
/* 0041E86C 016E6821 */  addu  $t5, $t3, $t6
/* 0041E870 03224021 */  addu  $t0, $t9, $v0
/* 0041E874 25180024 */  addiu $t8, $t0, 0x24
/* 0041E878 01A27821 */  addu  $t7, $t5, $v0
.L0041E87C:
/* 0041E87C 8D010000 */  lw    $at, ($t0)
/* 0041E880 2508000C */  addiu $t0, $t0, 0xc
/* 0041E884 ADE10000 */  sw    $at, ($t7)
/* 0041E888 8D01FFF8 */  lw    $at, -8($t0)
/* 0041E88C 25EF000C */  addiu $t7, $t7, 0xc
/* 0041E890 ADE1FFF8 */  sw    $at, -8($t7)
/* 0041E894 8D01FFFC */  lw    $at, -4($t0)
/* 0041E898 1518FFF8 */  bne   $t0, $t8, .L0041E87C
/* 0041E89C ADE1FFFC */   sw    $at, -4($t7)
/* 0041E8A0 8D010000 */  lw    $at, ($t0)
/* 0041E8A4 26100001 */  addiu $s0, $s0, 1
/* 0041E8A8 24420028 */  addiu $v0, $v0, 0x28
/* 0041E8AC 1470FFE9 */  bne   $v1, $s0, .L0041E854
/* 0041E8B0 ADE10000 */   sw    $at, ($t7)
/* 0041E8B4 264A0001 */  addiu $t2, $s2, 1
/* 0041E8B8 1150005D */  beq   $t2, $s0, .L0041EA30
.L0041E8BC:
/* 0041E8BC 00101080 */   sll   $v0, $s0, 2
/* 0041E8C0 00501021 */  addu  $v0, $v0, $s0
/* 0041E8C4 000210C0 */  sll   $v0, $v0, 3
.L0041E8C8:
/* 0041E8C8 962B003C */  lhu   $t3, 0x3c($s1)
/* 0041E8CC 8E2C000C */  lw    $t4, 0xc($s1)
/* 0041E8D0 000B7080 */  sll   $t6, $t3, 2
/* 0041E8D4 8E690000 */  lw    $t1, ($s3)
/* 0041E8D8 01CB7021 */  addu  $t6, $t6, $t3
/* 0041E8DC 000E70C0 */  sll   $t6, $t6, 3
/* 0041E8E0 018E6821 */  addu  $t5, $t4, $t6
/* 0041E8E4 0122C021 */  addu  $t8, $t1, $v0
/* 0041E8E8 270F0024 */  addiu $t7, $t8, 0x24
/* 0041E8EC 01A2C821 */  addu  $t9, $t5, $v0
.L0041E8F0:
/* 0041E8F0 8F010000 */  lw    $at, ($t8)
/* 0041E8F4 2718000C */  addiu $t8, $t8, 0xc
/* 0041E8F8 AF210000 */  sw    $at, ($t9)
/* 0041E8FC 8F01FFF8 */  lw    $at, -8($t8)
/* 0041E900 2739000C */  addiu $t9, $t9, 0xc
/* 0041E904 AF21FFF8 */  sw    $at, -8($t9)
/* 0041E908 8F01FFFC */  lw    $at, -4($t8)
/* 0041E90C 170FFFF8 */  bne   $t8, $t7, .L0041E8F0
/* 0041E910 AF21FFFC */   sw    $at, -4($t9)
/* 0041E914 8F010000 */  lw    $at, ($t8)
/* 0041E918 26100004 */  addiu $s0, $s0, 4
/* 0041E91C AF210000 */  sw    $at, ($t9)
/* 0041E920 962B003C */  lhu   $t3, 0x3c($s1)
/* 0041E924 8E690000 */  lw    $t1, ($s3)
/* 0041E928 000B6080 */  sll   $t4, $t3, 2
/* 0041E92C 8E2A000C */  lw    $t2, 0xc($s1)
/* 0041E930 018B6021 */  addu  $t4, $t4, $t3
/* 0041E934 000C60C0 */  sll   $t4, $t4, 3
/* 0041E938 01224021 */  addu  $t0, $t1, $v0
/* 0041E93C 014C7021 */  addu  $t6, $t2, $t4
/* 0041E940 01C26821 */  addu  $t5, $t6, $v0
/* 0041E944 25180024 */  addiu $t8, $t0, 0x24
.L0041E948:
/* 0041E948 8D010028 */  lw    $at, 0x28($t0)
/* 0041E94C 2508000C */  addiu $t0, $t0, 0xc
/* 0041E950 ADA10028 */  sw    $at, 0x28($t5)
/* 0041E954 8D010020 */  lw    $at, 0x20($t0)
/* 0041E958 25AD000C */  addiu $t5, $t5, 0xc
/* 0041E95C ADA10020 */  sw    $at, 0x20($t5)
/* 0041E960 8D010024 */  lw    $at, 0x24($t0)
/* 0041E964 1518FFF8 */  bne   $t0, $t8, .L0041E948
/* 0041E968 ADA10024 */   sw    $at, 0x24($t5)
/* 0041E96C 8D010028 */  lw    $at, 0x28($t0)
/* 0041E970 00000000 */  nop   
/* 0041E974 ADA10028 */  sw    $at, 0x28($t5)
/* 0041E978 962B003C */  lhu   $t3, 0x3c($s1)
/* 0041E97C 8E690000 */  lw    $t1, ($s3)
/* 0041E980 000B5080 */  sll   $t2, $t3, 2
/* 0041E984 8E39000C */  lw    $t9, 0xc($s1)
/* 0041E988 014B5021 */  addu  $t2, $t2, $t3
/* 0041E98C 000A50C0 */  sll   $t2, $t2, 3
/* 0041E990 01227821 */  addu  $t7, $t1, $v0
/* 0041E994 032A6021 */  addu  $t4, $t9, $t2
/* 0041E998 01827021 */  addu  $t6, $t4, $v0
/* 0041E99C 25E80024 */  addiu $t0, $t7, 0x24
.L0041E9A0:
/* 0041E9A0 8DE10050 */  lw    $at, 0x50($t7)
/* 0041E9A4 25EF000C */  addiu $t7, $t7, 0xc
/* 0041E9A8 ADC10050 */  sw    $at, 0x50($t6)
/* 0041E9AC 8DE10048 */  lw    $at, 0x48($t7)
/* 0041E9B0 25CE000C */  addiu $t6, $t6, 0xc
/* 0041E9B4 ADC10048 */  sw    $at, 0x48($t6)
/* 0041E9B8 8DE1004C */  lw    $at, 0x4c($t7)
/* 0041E9BC 15E8FFF8 */  bne   $t7, $t0, .L0041E9A0
/* 0041E9C0 ADC1004C */   sw    $at, 0x4c($t6)
/* 0041E9C4 8DE10050 */  lw    $at, 0x50($t7)
/* 0041E9C8 00000000 */  nop   
/* 0041E9CC ADC10050 */  sw    $at, 0x50($t6)
/* 0041E9D0 962B003C */  lhu   $t3, 0x3c($s1)
/* 0041E9D4 8E690000 */  lw    $t1, ($s3)
/* 0041E9D8 000BC880 */  sll   $t9, $t3, 2
/* 0041E9DC 8E2D000C */  lw    $t5, 0xc($s1)
/* 0041E9E0 032BC821 */  addu  $t9, $t9, $t3
/* 0041E9E4 0019C8C0 */  sll   $t9, $t9, 3
/* 0041E9E8 0122C021 */  addu  $t8, $t1, $v0
/* 0041E9EC 01B95021 */  addu  $t2, $t5, $t9
/* 0041E9F0 01426021 */  addu  $t4, $t2, $v0
/* 0041E9F4 270F0024 */  addiu $t7, $t8, 0x24
.L0041E9F8:
/* 0041E9F8 8F010078 */  lw    $at, 0x78($t8)
/* 0041E9FC 2718000C */  addiu $t8, $t8, 0xc
/* 0041EA00 AD810078 */  sw    $at, 0x78($t4)
/* 0041EA04 8F010070 */  lw    $at, 0x70($t8)
/* 0041EA08 258C000C */  addiu $t4, $t4, 0xc
/* 0041EA0C AD810070 */  sw    $at, 0x70($t4)
/* 0041EA10 8F010074 */  lw    $at, 0x74($t8)
/* 0041EA14 170FFFF8 */  bne   $t8, $t7, .L0041E9F8
/* 0041EA18 AD810074 */   sw    $at, 0x74($t4)
/* 0041EA1C 8F010078 */  lw    $at, 0x78($t8)
/* 0041EA20 264E0001 */  addiu $t6, $s2, 1
/* 0041EA24 244200A0 */  addiu $v0, $v0, 0xa0
/* 0041EA28 15D0FFA7 */  bne   $t6, $s0, .L0041E8C8
/* 0041EA2C AD810078 */   sw    $at, 0x78($t4)
.L0041EA30:
/* 0041EA30 8E2B000C */  lw    $t3, 0xc($s1)
/* 0041EA34 24060005 */  li    $a2, 5
/* 0041EA38 AE6B0000 */  sw    $t3, ($s3)
/* 0041EA3C 8F9982A4 */  lw    $t9, %call16(change_bb)($gp)
/* 0041EA40 9624003E */  lhu   $a0, 0x3e($s1)
/* 0041EA44 0320F809 */  jalr  $t9
/* 0041EA48 00003825 */   move  $a3, $zero
/* 0041EA4C 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0041EA50 00000000 */  nop   
/* 0041EA54 8F8D8080 */  lw    $t5, %got(D_100003E0)($gp)
/* 0041EA58 8F8F8088 */  lw    $t7, %got(B_10023314)($gp)
/* 0041EA5C 8DAD03E0 */  lw    $t5, %lo(D_100003E0)($t5)
/* 0041EA60 00000000 */  nop   
/* 0041EA64 AE6D0000 */  sw    $t5, ($s3)
/* 0041EA68 962A003E */  lhu   $t2, 0x3e($s1)
/* 0041EA6C 8E39000C */  lw    $t9, 0xc($s1)
/* 0041EA70 01570019 */  multu $t2, $s7
/* 0041EA74 00004812 */  mflo  $t1
/* 0041EA78 03294021 */  addu  $t0, $t9, $t1
/* 0041EA7C AD000014 */  sw    $zero, 0x14($t0)
/* 0041EA80 9622003C */  lhu   $v0, 0x3c($s1)
/* 0041EA84 8DEF3314 */  lw    $t7, %lo(B_10023314)($t7)
/* 0041EA88 00526021 */  addu  $t4, $v0, $s2
/* 0041EA8C 004FC021 */  addu  $t8, $v0, $t7
/* 0041EA90 A638003E */  sh    $t8, 0x3e($s1)
/* 0041EA94 1000002B */  b     .L0041EB44
/* 0041EA98 A62C003C */   sh    $t4, 0x3c($s1)
.L0041EA9C:
/* 0041EA9C 8E300008 */  lw    $s0, 8($s1)
/* 0041EAA0 00000000 */  nop   
/* 0041EAA4 1600000A */  bnez  $s0, .L0041EAD0
/* 0041EAA8 00000000 */   nop   
/* 0041EAAC 8F99801C */  lw    $t9, %got(func_0041CB1C)($gp)
/* 0041EAB0 00000000 */  nop   
/* 0041EAB4 2739CB1C */  addiu $t9, %lo(func_0041CB1C) # addiu $t9, $t9, -0x34e4
/* 0041EAB8 0320F809 */  jalr  $t9
/* 0041EABC 00000000 */   nop   
/* 0041EAC0 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0041EAC4 AC400008 */  sw    $zero, 8($v0)
/* 0041EAC8 00408025 */  move  $s0, $v0
/* 0041EACC AFC20000 */  sw    $v0, ($fp)
.L0041EAD0:
/* 0041EAD0 8F99801C */  lw    $t9, %got(func_0041D5A0)($gp)
/* 0041EAD4 02002025 */  move  $a0, $s0
/* 0041EAD8 2739D5A0 */  addiu $t9, %lo(func_0041D5A0) # addiu $t9, $t9, -0x2a60
/* 0041EADC 0320F809 */  jalr  $t9
/* 0041EAE0 00000000 */   nop   
/* 0041EAE4 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0041EAE8 0040A025 */  move  $s4, $v0
/* 0041EAEC 8F99801C */  lw    $t9, %got(func_0041CB1C)($gp)
/* 0041EAF0 00000000 */  nop   
/* 0041EAF4 2739CB1C */  addiu $t9, %lo(func_0041CB1C) # addiu $t9, $t9, -0x34e4
/* 0041EAF8 0320F809 */  jalr  $t9
/* 0041EAFC 00000000 */   nop   
/* 0041EB00 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0041EB04 AE220008 */  sw    $v0, 8($s1)
/* 0041EB08 8F99801C */  lw    $t9, %got(func_0041CC00)($gp)
/* 0041EB0C AC510000 */  sw    $s1, ($v0)
/* 0041EB10 AC500008 */  sw    $s0, 8($v0)
/* 0041EB14 AE020000 */  sw    $v0, ($s0)
/* 0041EB18 8FD50000 */  lw    $s5, ($fp)
/* 0041EB1C 2739CC00 */  addiu $t9, %lo(func_0041CC00) # addiu $t9, $t9, -0x3400
/* 0041EB20 AFC20000 */  sw    $v0, ($fp)
/* 0041EB24 0320F809 */  jalr  $t9
/* 0041EB28 24040001 */   li    $a0, 1
/* 0041EB2C 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0041EB30 AFD50000 */  sw    $s5, ($fp)
/* 0041EB34 AE540014 */  sw    $s4, 0x14($s2)
/* 0041EB38 8FAE0074 */  lw    $t6, 0x74($sp)
/* 0041EB3C A6560024 */  sh    $s6, 0x24($s2)
/* 0041EB40 AE4E0000 */  sw    $t6, ($s2)
.L0041EB44:
/* 0041EB44 8FB10090 */  lw    $s1, 0x90($sp)
/* 0041EB48 00000000 */  nop   
/* 0041EB4C 1620FE63 */  bnez  $s1, .L0041E4DC
/* 0041EB50 00000000 */   nop   
/* 0041EB54 8FBF0044 */  lw    $ra, 0x44($sp)
.L0041EB58:
/* 0041EB58 8FB0001C */  lw    $s0, 0x1c($sp)
/* 0041EB5C 8FB10020 */  lw    $s1, 0x20($sp)
/* 0041EB60 8FB20024 */  lw    $s2, 0x24($sp)
/* 0041EB64 8FB30028 */  lw    $s3, 0x28($sp)
/* 0041EB68 8FB4002C */  lw    $s4, 0x2c($sp)
/* 0041EB6C 8FB50030 */  lw    $s5, 0x30($sp)
/* 0041EB70 8FB60034 */  lw    $s6, 0x34($sp)
/* 0041EB74 8FB70038 */  lw    $s7, 0x38($sp)
/* 0041EB78 8FBE0040 */  lw    $fp, 0x40($sp)
/* 0041EB7C 03E00008 */  jr    $ra
/* 0041EB80 27BD00A0 */   addiu $sp, $sp, 0xa0

glabel create_prolog_and_epilog_bbs
    .ent create_prolog_and_epilog_bbs
    # 004279B8 schedule
/* 0041EB84 3C1C0FC1 */  .cpload $t9
/* 0041EB88 279CB6DC */  
/* 0041EB8C 0399E021 */  
/* 0041EB90 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0041EB94 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0041EB98 AFBC0030 */  sw    $gp, 0x30($sp)
/* 0041EB9C AFB5002C */  sw    $s5, 0x2c($sp)
/* 0041EBA0 AFB40028 */  sw    $s4, 0x28($sp)
/* 0041EBA4 AFB30024 */  sw    $s3, 0x24($sp)
/* 0041EBA8 AFB20020 */  sw    $s2, 0x20($sp)
/* 0041EBAC AFB1001C */  sw    $s1, 0x1c($sp)
/* 0041EBB0 AFB00018 */  sw    $s0, 0x18($sp)
/* 0041EBB4 AFA5003C */  sw    $a1, 0x3c($sp)
/* 0041EBB8 AFA60040 */  sw    $a2, 0x40($sp)
/* 0041EBBC 8C910014 */  lw    $s1, 0x14($a0)
/* 0041EBC0 00809025 */  move  $s2, $a0
/* 0041EBC4 1220000D */  beqz  $s1, .L0041EBFC
/* 0041EBC8 00008025 */   move  $s0, $zero
.L0041EBCC:
/* 0041EBCC 8E220000 */  lw    $v0, ($s1)
/* 0041EBD0 00000000 */  nop   
/* 0041EBD4 8C4E0008 */  lw    $t6, 8($v0)
/* 0041EBD8 00000000 */  nop   
/* 0041EBDC 164E0003 */  bne   $s2, $t6, .L0041EBEC
/* 0041EBE0 00000000 */   nop   
/* 0041EBE4 10000005 */  b     .L0041EBFC
/* 0041EBE8 00408025 */   move  $s0, $v0
.L0041EBEC:
/* 0041EBEC 8E310004 */  lw    $s1, 4($s1)
/* 0041EBF0 00000000 */  nop   
/* 0041EBF4 1620FFF5 */  bnez  $s1, .L0041EBCC
/* 0041EBF8 00000000 */   nop   
.L0041EBFC:
/* 0041EBFC 1600000E */  bnez  $s0, .L0041EC38
/* 0041EC00 00000000 */   nop   
/* 0041EC04 8F908088 */  lw    $s0, %got(B_10023304)($gp)
/* 0041EC08 00000000 */  nop   
/* 0041EC0C 8E103304 */  lw    $s0, %lo(B_10023304)($s0)
/* 0041EC10 00000000 */  nop   
/* 0041EC14 8E020008 */  lw    $v0, 8($s0)
/* 0041EC18 00000000 */  nop   
/* 0041EC1C 12420006 */  beq   $s2, $v0, .L0041EC38
/* 0041EC20 00000000 */   nop   
.L0041EC24:
/* 0041EC24 00408025 */  move  $s0, $v0
/* 0041EC28 8C420008 */  lw    $v0, 8($v0)
/* 0041EC2C 00000000 */  nop   
/* 0041EC30 1642FFFC */  bne   $s2, $v0, .L0041EC24
/* 0041EC34 00000000 */   nop   
.L0041EC38:
/* 0041EC38 16000009 */  bnez  $s0, .L0041EC60
/* 0041EC3C 24060449 */   li    $a2, 1097
/* 0041EC40 8F84806C */  lw    $a0, %got(RO_10013D28)($gp)
/* 0041EC44 8F85806C */  lw    $a1, %got(RO_10013D38)($gp)
/* 0041EC48 8F998670 */  lw    $t9, %call16(assertion_failed)($gp)
/* 0041EC4C 24843D28 */  addiu $a0, %lo(RO_10013D28) # addiu $a0, $a0, 0x3d28
/* 0041EC50 0320F809 */  jalr  $t9
/* 0041EC54 24A53D38 */   addiu $a1, %lo(RO_10013D38) # addiu $a1, $a1, 0x3d38
/* 0041EC58 8FBC0030 */  lw    $gp, 0x30($sp)
/* 0041EC5C 00000000 */  nop   
.L0041EC60:
/* 0041EC60 8F99801C */  lw    $t9, %got(func_0041CB1C)($gp)
/* 0041EC64 00000000 */  nop   
/* 0041EC68 2739CB1C */  addiu $t9, %lo(func_0041CB1C) # addiu $t9, $t9, -0x34e4
/* 0041EC6C 0320F809 */  jalr  $t9
/* 0041EC70 00000000 */   nop   
/* 0041EC74 8FBC0030 */  lw    $gp, 0x30($sp)
/* 0041EC78 0040A025 */  move  $s4, $v0
/* 0041EC7C 8F99801C */  lw    $t9, %got(func_0041CB1C)($gp)
/* 0041EC80 00000000 */  nop   
/* 0041EC84 2739CB1C */  addiu $t9, %lo(func_0041CB1C) # addiu $t9, $t9, -0x34e4
/* 0041EC88 0320F809 */  jalr  $t9
/* 0041EC8C 00000000 */   nop   
/* 0041EC90 8FBC0030 */  lw    $gp, 0x30($sp)
/* 0041EC94 AE140008 */  sw    $s4, 8($s0)
/* 0041EC98 AE920008 */  sw    $s2, 8($s4)
/* 0041EC9C 8E4F0008 */  lw    $t7, 8($s2)
/* 0041ECA0 0040A825 */  move  $s5, $v0
/* 0041ECA4 AC4F0008 */  sw    $t7, 8($v0)
/* 0041ECA8 8E580004 */  lw    $t8, 4($s2)
/* 0041ECAC AE420008 */  sw    $v0, 8($s2)
/* 0041ECB0 AE980004 */  sw    $t8, 4($s4)
/* 0041ECB4 AE540004 */  sw    $s4, 4($s2)
/* 0041ECB8 AC520004 */  sw    $s2, 4($v0)
/* 0041ECBC 8E590000 */  lw    $t9, ($s2)
/* 0041ECC0 00001825 */  move  $v1, $zero
/* 0041ECC4 AF220004 */  sw    $v0, 4($t9)
/* 0041ECC8 8E480000 */  lw    $t0, ($s2)
/* 0041ECCC 00000000 */  nop   
/* 0041ECD0 AC480000 */  sw    $t0, ($v0)
/* 0041ECD4 AE420000 */  sw    $v0, ($s2)
/* 0041ECD8 8E890004 */  lw    $t1, 4($s4)
/* 0041ECDC AE920000 */  sw    $s2, ($s4)
/* 0041ECE0 AD340000 */  sw    $s4, ($t1)
/* 0041ECE4 8E4A0014 */  lw    $t2, 0x14($s2)
/* 0041ECE8 00000000 */  nop   
/* 0041ECEC AE8A0014 */  sw    $t2, 0x14($s4)
/* 0041ECF0 AE400014 */  sw    $zero, 0x14($s2)
/* 0041ECF4 8E910014 */  lw    $s1, 0x14($s4)
/* 0041ECF8 00000000 */  nop   
/* 0041ECFC 12200022 */  beqz  $s1, .L0041ED88
/* 0041ED00 00000000 */   nop   
.L0041ED04:
/* 0041ED04 8E220000 */  lw    $v0, ($s1)
/* 0041ED08 8E330004 */  lw    $s3, 4($s1)
/* 0041ED0C 1642000D */  bne   $s2, $v0, .L0041ED44
/* 0041ED10 00000000 */   nop   
/* 0041ED14 14600003 */  bnez  $v1, .L0041ED24
/* 0041ED18 00000000 */   nop   
/* 0041ED1C 10000002 */  b     .L0041ED28
/* 0041ED20 AE930014 */   sw    $s3, 0x14($s4)
.L0041ED24:
/* 0041ED24 AC730004 */  sw    $s3, 4($v1)
.L0041ED28:
/* 0041ED28 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 0041ED2C 02202025 */  move  $a0, $s1
/* 0041ED30 0320F809 */  jalr  $t9
/* 0041ED34 00000000 */   nop   
/* 0041ED38 8FBC0030 */  lw    $gp, 0x30($sp)
/* 0041ED3C 1000000F */  b     .L0041ED7C
/* 0041ED40 02201825 */   move  $v1, $s1
.L0041ED44:
/* 0041ED44 8C500010 */  lw    $s0, 0x10($v0)
/* 0041ED48 00000000 */  nop   
/* 0041ED4C 8E0B0000 */  lw    $t3, ($s0)
/* 0041ED50 00000000 */  nop   
/* 0041ED54 124B0007 */  beq   $s2, $t3, .L0041ED74
/* 0041ED58 00000000 */   nop   
.L0041ED5C:
/* 0041ED5C 8E100004 */  lw    $s0, 4($s0)
/* 0041ED60 00000000 */  nop   
/* 0041ED64 8E0C0000 */  lw    $t4, ($s0)
/* 0041ED68 00000000 */  nop   
/* 0041ED6C 164CFFFB */  bne   $s2, $t4, .L0041ED5C
/* 0041ED70 00000000 */   nop   
.L0041ED74:
/* 0041ED74 AE140000 */  sw    $s4, ($s0)
/* 0041ED78 02201825 */  move  $v1, $s1
.L0041ED7C:
/* 0041ED7C 1660FFE1 */  bnez  $s3, .L0041ED04
/* 0041ED80 02608825 */   move  $s1, $s3
/* 0041ED84 00001825 */  move  $v1, $zero
.L0041ED88:
/* 0041ED88 8E4D0010 */  lw    $t5, 0x10($s2)
/* 0041ED8C 00000000 */  nop   
/* 0041ED90 AEAD0010 */  sw    $t5, 0x10($s5)
/* 0041ED94 AE400010 */  sw    $zero, 0x10($s2)
/* 0041ED98 8EB00010 */  lw    $s0, 0x10($s5)
/* 0041ED9C 00000000 */  nop   
/* 0041EDA0 12000021 */  beqz  $s0, .L0041EE28
/* 0041EDA4 00000000 */   nop   
.L0041EDA8:
/* 0041EDA8 8E020000 */  lw    $v0, ($s0)
/* 0041EDAC 8E130004 */  lw    $s3, 4($s0)
/* 0041EDB0 1642000D */  bne   $s2, $v0, .L0041EDE8
/* 0041EDB4 00000000 */   nop   
/* 0041EDB8 14600003 */  bnez  $v1, .L0041EDC8
/* 0041EDBC 00000000 */   nop   
/* 0041EDC0 10000002 */  b     .L0041EDCC
/* 0041EDC4 AEB30010 */   sw    $s3, 0x10($s5)
.L0041EDC8:
/* 0041EDC8 AC730004 */  sw    $s3, 4($v1)
.L0041EDCC:
/* 0041EDCC 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 0041EDD0 02002025 */  move  $a0, $s0
/* 0041EDD4 0320F809 */  jalr  $t9
/* 0041EDD8 00000000 */   nop   
/* 0041EDDC 8FBC0030 */  lw    $gp, 0x30($sp)
/* 0041EDE0 1000000F */  b     .L0041EE20
/* 0041EDE4 02001825 */   move  $v1, $s0
.L0041EDE8:
/* 0041EDE8 8C510014 */  lw    $s1, 0x14($v0)
/* 0041EDEC 00000000 */  nop   
/* 0041EDF0 8E2E0000 */  lw    $t6, ($s1)
/* 0041EDF4 00000000 */  nop   
/* 0041EDF8 124E0007 */  beq   $s2, $t6, .L0041EE18
/* 0041EDFC 00000000 */   nop   
.L0041EE00:
/* 0041EE00 8E310004 */  lw    $s1, 4($s1)
/* 0041EE04 00000000 */  nop   
/* 0041EE08 8E2F0000 */  lw    $t7, ($s1)
/* 0041EE0C 00000000 */  nop   
/* 0041EE10 164FFFFB */  bne   $s2, $t7, .L0041EE00
/* 0041EE14 00000000 */   nop   
.L0041EE18:
/* 0041EE18 AE350000 */  sw    $s5, ($s1)
/* 0041EE1C 02001825 */  move  $v1, $s0
.L0041EE20:
/* 0041EE20 1660FFE1 */  bnez  $s3, .L0041EDA8
/* 0041EE24 02608025 */   move  $s0, $s3
.L0041EE28:
/* 0041EE28 8F99801C */  lw    $t9, %got(func_0041CF50)($gp)
/* 0041EE2C 02802025 */  move  $a0, $s4
/* 0041EE30 2739CF50 */  addiu $t9, %lo(func_0041CF50) # addiu $t9, $t9, -0x30b0
/* 0041EE34 0320F809 */  jalr  $t9
/* 0041EE38 02402825 */   move  $a1, $s2
/* 0041EE3C 8FBC0030 */  lw    $gp, 0x30($sp)
/* 0041EE40 02402025 */  move  $a0, $s2
/* 0041EE44 8F99801C */  lw    $t9, %got(func_0041CF50)($gp)
/* 0041EE48 02A02825 */  move  $a1, $s5
/* 0041EE4C 2739CF50 */  addiu $t9, %lo(func_0041CF50) # addiu $t9, $t9, -0x30b0
/* 0041EE50 0320F809 */  jalr  $t9
/* 0041EE54 00000000 */   nop   
/* 0041EE58 8FBC0030 */  lw    $gp, 0x30($sp)
/* 0041EE5C 02402025 */  move  $a0, $s2
/* 0041EE60 8F99801C */  lw    $t9, %got(func_0041CF50)($gp)
/* 0041EE64 02402825 */  move  $a1, $s2
/* 0041EE68 2739CF50 */  addiu $t9, %lo(func_0041CF50) # addiu $t9, $t9, -0x30b0
/* 0041EE6C 0320F809 */  jalr  $t9
/* 0041EE70 00000000 */   nop   
/* 0041EE74 8FBC0030 */  lw    $gp, 0x30($sp)
/* 0041EE78 02802025 */  move  $a0, $s4
/* 0041EE7C 8F99801C */  lw    $t9, %got(func_0041CF50)($gp)
/* 0041EE80 02A02825 */  move  $a1, $s5
/* 0041EE84 2739CF50 */  addiu $t9, %lo(func_0041CF50) # addiu $t9, $t9, -0x30b0
/* 0041EE88 0320F809 */  jalr  $t9
/* 0041EE8C 00000000 */   nop   
/* 0041EE90 8FB8003C */  lw    $t8, 0x3c($sp)
/* 0041EE94 8FBC0030 */  lw    $gp, 0x30($sp)
/* 0041EE98 AF140000 */  sw    $s4, ($t8)
/* 0041EE9C 8FB90040 */  lw    $t9, 0x40($sp)
/* 0041EEA0 00000000 */  nop   
/* 0041EEA4 AF350000 */  sw    $s5, ($t9)
/* 0041EEA8 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0041EEAC 8FB5002C */  lw    $s5, 0x2c($sp)
/* 0041EEB0 8FB40028 */  lw    $s4, 0x28($sp)
/* 0041EEB4 8FB30024 */  lw    $s3, 0x24($sp)
/* 0041EEB8 8FB20020 */  lw    $s2, 0x20($sp)
/* 0041EEBC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0041EEC0 8FB00018 */  lw    $s0, 0x18($sp)
/* 0041EEC4 03E00008 */  jr    $ra
/* 0041EEC8 27BD0038 */   addiu $sp, $sp, 0x38

    .type create_prolog_and_epilog_bbs, @function
    .size create_prolog_and_epilog_bbs, .-create_prolog_and_epilog_bbs
    .end create_prolog_and_epilog_bbs

    .type func_0041EECC, @function
func_0041EECC:
    # 0041EECC func_0041EECC
    # 00420E34 traverse_bb
/* 0041EECC 3C1C0FC1 */  .cpload $t9
/* 0041EED0 279CB394 */  
/* 0041EED4 0399E021 */  
/* 0041EED8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0041EEDC AFBF0024 */  sw    $ra, 0x24($sp)
/* 0041EEE0 AFBC0020 */  sw    $gp, 0x20($sp)
/* 0041EEE4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0041EEE8 AFB00018 */  sw    $s0, 0x18($sp)
/* 0041EEEC 908F0046 */  lbu   $t7, 0x46($a0)
/* 0041EEF0 8C900010 */  lw    $s0, 0x10($a0)
/* 0041EEF4 35F80040 */  ori   $t8, $t7, 0x40
/* 0041EEF8 00808825 */  move  $s1, $a0
/* 0041EEFC 12000013 */  beqz  $s0, .L0041EF4C
/* 0041EF00 A0980046 */   sb    $t8, 0x46($a0)
.L0041EF04:
/* 0041EF04 8E040000 */  lw    $a0, ($s0)
/* 0041EF08 00000000 */  nop   
/* 0041EF0C 8C990044 */  lw    $t9, 0x44($a0)
/* 0041EF10 00000000 */  nop   
/* 0041EF14 00194C40 */  sll   $t1, $t9, 0x11
/* 0041EF18 05200008 */  bltz  $t1, .L0041EF3C
/* 0041EF1C 00000000 */   nop   
/* 0041EF20 8F99801C */  lw    $t9, %got(func_0041EECC)($gp)
/* 0041EF24 00000000 */  nop   
/* 0041EF28 2739EECC */  addiu $t9, %lo(func_0041EECC) # addiu $t9, $t9, -0x1134
/* 0041EF2C 0320F809 */  jalr  $t9
/* 0041EF30 00000000 */   nop   
/* 0041EF34 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0041EF38 00000000 */  nop   
.L0041EF3C:
/* 0041EF3C 8E100004 */  lw    $s0, 4($s0)
/* 0041EF40 00000000 */  nop   
/* 0041EF44 1600FFEF */  bnez  $s0, .L0041EF04
/* 0041EF48 00000000 */   nop   
.L0041EF4C:
/* 0041EF4C 8F828088 */  lw    $v0, %got(B_10023310)($gp)
/* 0041EF50 00000000 */  nop   
/* 0041EF54 24423310 */  addiu $v0, %lo(B_10023310) # addiu $v0, $v0, 0x3310
/* 0041EF58 8C4A0000 */  lw    $t2, ($v0)
/* 0041EF5C 00000000 */  nop   
/* 0041EF60 AE2A0000 */  sw    $t2, ($s1)
/* 0041EF64 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0041EF68 AC510000 */  sw    $s1, ($v0)
/* 0041EF6C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0041EF70 8FB00018 */  lw    $s0, 0x18($sp)
/* 0041EF74 03E00008 */  jr    $ra
/* 0041EF78 27BD0028 */   addiu $sp, $sp, 0x28

    .type func_0041EF7C, @function
func_0041EF7C:
    # 00420E34 traverse_bb
/* 0041EF7C 3C1C0FC1 */  .cpload $t9
/* 0041EF80 279CB2E4 */  
/* 0041EF84 0399E021 */  
/* 0041EF88 8F838088 */  lw    $v1, %got(B_10023310)($gp)
/* 0041EF8C 00001025 */  move  $v0, $zero
/* 0041EF90 8C633310 */  lw    $v1, %lo(B_10023310)($v1)
/* 0041EF94 00000000 */  nop   
/* 0041EF98 10600007 */  beqz  $v1, .L0041EFB8
/* 0041EF9C 00000000 */   nop   
.L0041EFA0:
/* 0041EFA0 AC620004 */  sw    $v0, 4($v1)
/* 0041EFA4 00601025 */  move  $v0, $v1
/* 0041EFA8 8C630000 */  lw    $v1, ($v1)
/* 0041EFAC 00000000 */  nop   
/* 0041EFB0 1460FFFB */  bnez  $v1, .L0041EFA0
/* 0041EFB4 00000000 */   nop   
.L0041EFB8:
/* 0041EFB8 8F818088 */  lw    $at, %got(B_1002330C)($gp)
/* 0041EFBC 03E00008 */  jr    $ra
/* 0041EFC0 AC22330C */   sw    $v0, %lo(B_1002330C)($at)

glabel init_j_def_live
    .ent init_j_def_live
    # 004423F4 func_004423F4
/* 0041EFC4 3C1C0FC1 */  .cpload $t9
/* 0041EFC8 279CB29C */  
/* 0041EFCC 0399E021 */  
/* 0041EFD0 8F8E8B28 */  lw     $t6, %got(sixtyfour_bit)($gp)
/* 0041EFD4 3C0F2FF0 */  lui   $t7, 0x2ff0
/* 0041EFD8 91CE0000 */  lbu   $t6, ($t6)
/* 0041EFDC 35EF000C */  ori   $t7, $t7, 0xc
/* 0041EFE0 11C00013 */  beqz  $t6, .L0041F030
/* 0041EFE4 3C18000F */   lui   $t8, 0xf
/* 0041EFE8 8F828B50 */  lw     $v0, %got(gjallive)($gp)
/* 0041EFEC 8F838B4C */  lw     $v1, %got(gjaldef)($gp)
/* 0041EFF0 8F848BC0 */  lw     $a0, %got(gjrlive)($gp)
/* 0041EFF4 3C197FFF */  lui   $t9, 0x7fff
/* 0041EFF8 3C093000 */  lui   $t1, 0x3000
/* 0041EFFC 3C0AA000 */  lui   $t2, 0xa000
/* 0041F000 3718F000 */  ori   $t8, $t8, 0xf000
/* 0041F004 373900C1 */  ori   $t9, $t9, 0xc1
/* 0041F008 2408F000 */  li    $t0, -4096
/* 0041F00C 3529FF0E */  ori   $t1, $t1, 0xff0e
/* 0041F010 354A0FFF */  ori   $t2, $t2, 0xfff
/* 0041F014 AC4F0000 */  sw    $t7, ($v0)
/* 0041F018 AC580004 */  sw    $t8, 4($v0)
/* 0041F01C AC790000 */  sw    $t9, ($v1)
/* 0041F020 AC680004 */  sw    $t0, 4($v1)
/* 0041F024 AC890000 */  sw    $t1, ($a0)
/* 0041F028 10000027 */  b     .L0041F0C8
/* 0041F02C AC8A0004 */   sw    $t2, 4($a0)
.L0041F030:
/* 0041F030 8F8B8B1C */  lw     $t3, %got(optflag)($gp)
/* 0041F034 3C0A3000 */  lui   $t2, 0x3000
/* 0041F038 8D6B0000 */  lw    $t3, ($t3)
/* 0041F03C 354AFF07 */  ori   $t2, $t2, 0xff07
/* 0041F040 29610003 */  slti  $at, $t3, 3
/* 0041F044 1420000F */  bnez  $at, .L0041F084
/* 0041F048 3C0BF000 */   lui   $t3, 0xf000
/* 0041F04C 8F828B50 */  lw     $v0, %got(gjallive)($gp)
/* 0041F050 8F838B4C */  lw     $v1, %got(gjaldef)($gp)
/* 0041F054 3C0C3FFC */  lui   $t4, 0x3ffc
/* 0041F058 3C0D000F */  lui   $t5, 0xf
/* 0041F05C 3C0E6003 */  lui   $t6, 0x6003
/* 0041F060 358CFF02 */  ori   $t4, $t4, 0xff02
/* 0041F064 35ADFFFF */  ori   $t5, $t5, 0xffff
/* 0041F068 35CE00C1 */  ori   $t6, $t6, 0xc1
/* 0041F06C 3C0FFFF0 */  lui   $t7, 0xfff0
/* 0041F070 AC4C0000 */  sw    $t4, ($v0)
/* 0041F074 AC4D0004 */  sw    $t5, 4($v0)
/* 0041F078 AC6E0000 */  sw    $t6, ($v1)
/* 0041F07C 1000000E */  b     .L0041F0B8
/* 0041F080 AC6F0004 */   sw    $t7, 4($v1)
.L0041F084:
/* 0041F084 8F828B50 */  lw     $v0, %got(gjallive)($gp)
/* 0041F088 8F838B4C */  lw     $v1, %got(gjaldef)($gp)
/* 0041F08C 3C182F00 */  lui   $t8, 0x2f00
/* 0041F090 3C19000F */  lui   $t9, 0xf
/* 0041F094 3C087FFF */  lui   $t0, 0x7fff
/* 0041F098 3718000E */  ori   $t8, $t8, 0xe
/* 0041F09C 37390FFF */  ori   $t9, $t9, 0xfff
/* 0041F0A0 350800C1 */  ori   $t0, $t0, 0xc1
/* 0041F0A4 2409F000 */  li    $t1, -4096
/* 0041F0A8 AC580000 */  sw    $t8, ($v0)
/* 0041F0AC AC590004 */  sw    $t9, 4($v0)
/* 0041F0B0 AC680000 */  sw    $t0, ($v1)
/* 0041F0B4 AC690004 */  sw    $t1, 4($v1)
.L0041F0B8:
/* 0041F0B8 8F848BC0 */  lw     $a0, %got(gjrlive)($gp)
/* 0041F0BC 356B0FFF */  ori   $t3, $t3, 0xfff
/* 0041F0C0 AC8A0000 */  sw    $t2, ($a0)
/* 0041F0C4 AC8B0004 */  sw    $t3, 4($a0)
.L0041F0C8:
/* 0041F0C8 8F8C8AF8 */  lw     $t4, %got(picflag)($gp)
/* 0041F0CC 00000000 */  nop   
/* 0041F0D0 8D8C0000 */  lw    $t4, ($t4)
/* 0041F0D4 00000000 */  nop   
/* 0041F0D8 19800005 */  blez  $t4, .L0041F0F0
/* 0041F0DC 00000000 */   nop   
/* 0041F0E0 8C4D0000 */  lw    $t5, ($v0)
/* 0041F0E4 00000000 */  nop   
/* 0041F0E8 35AE0040 */  ori   $t6, $t5, 0x40
/* 0041F0EC AC4E0000 */  sw    $t6, ($v0)
.L0041F0F0:
/* 0041F0F0 03E00008 */  jr    $ra
/* 0041F0F4 00000000 */   nop   

    .type init_j_def_live, @function
    .size init_j_def_live, .-init_j_def_live
    .end init_j_def_live

    .type func_0041F0F8, @function
func_0041F0F8:
    # 00420E34 traverse_bb
/* 0041F0F8 3C1C0FC1 */  .cpload $t9
/* 0041F0FC 279CB168 */  
/* 0041F100 0399E021 */  
/* 0041F104 27BDFF50 */  addiu $sp, $sp, -0xb0
/* 0041F108 AFB30020 */  sw    $s3, 0x20($sp)
/* 0041F10C 8F938088 */  lw    $s3, %got(B_10023304)($gp)
/* 0041F110 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0041F114 8E733304 */  lw    $s3, %lo(B_10023304)($s3)
/* 0041F118 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0041F11C AFBC0034 */  sw    $gp, 0x34($sp)
/* 0041F120 AFB70030 */  sw    $s7, 0x30($sp)
/* 0041F124 AFB6002C */  sw    $s6, 0x2c($sp)
/* 0041F128 AFB50028 */  sw    $s5, 0x28($sp)
/* 0041F12C AFB40024 */  sw    $s4, 0x24($sp)
/* 0041F130 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0041F134 AFB10018 */  sw    $s1, 0x18($sp)
/* 0041F138 126000E2 */  beqz  $s3, .L0041F4C4
/* 0041F13C AFB00014 */   sw    $s0, 0x14($sp)
/* 0041F140 3C167FFF */  lui   $s6, 0x7fff
/* 0041F144 8F9E88EC */  lw     $fp, %got(mnem)($gp)
/* 0041F148 8F958B50 */  lw     $s5, %got(gjallive)($gp)
/* 0041F14C 8F948B4C */  lw     $s4, %got(gjaldef)($gp)
/* 0041F150 36D6FFFF */  ori   $s6, $s6, 0xffff
/* 0041F154 2417001D */  li    $s7, 29
.L0041F158:
/* 0041F158 AFA00064 */  sw    $zero, 0x64($sp)
/* 0041F15C AFA00068 */  sw    $zero, 0x68($sp)
/* 0041F160 AFA0006C */  sw    $zero, 0x6c($sp)
/* 0041F164 AFA00058 */  sw    $zero, 0x58($sp)
/* 0041F168 AFA0005C */  sw    $zero, 0x5c($sp)
/* 0041F16C AFA00060 */  sw    $zero, 0x60($sp)
/* 0041F170 AFA0004C */  sw    $zero, 0x4c($sp)
/* 0041F174 AFA00050 */  sw    $zero, 0x50($sp)
/* 0041F178 AFA00054 */  sw    $zero, 0x54($sp)
/* 0041F17C 9662003C */  lhu   $v0, 0x3c($s3)
/* 0041F180 00008825 */  move  $s1, $zero
/* 0041F184 1840009C */  blez  $v0, .L0041F3F8
/* 0041F188 00029080 */   sll   $s2, $v0, 2
/* 0041F18C 02429021 */  addu  $s2, $s2, $v0
/* 0041F190 001290C0 */  sll   $s2, $s2, 3
.L0041F194:
/* 0041F194 8E6E000C */  lw    $t6, 0xc($s3)
/* 0041F198 00000000 */  nop   
/* 0041F19C 01D21021 */  addu  $v0, $t6, $s2
/* 0041F1A0 8C430000 */  lw    $v1, ($v0)
/* 0041F1A4 00000000 */  nop   
/* 0041F1A8 16C3000C */  bne   $s6, $v1, .L0041F1DC
/* 0041F1AC 00000000 */   nop   
/* 0041F1B0 8C4F0010 */  lw    $t7, 0x10($v0)
/* 0041F1B4 00000000 */  nop   
/* 0041F1B8 16EF008B */  bne   $s7, $t7, .L0041F3E8
/* 0041F1BC 00000000 */   nop   
/* 0041F1C0 8C580004 */  lw    $t8, 4($v0)
/* 0041F1C4 24110001 */  li    $s1, 1
/* 0041F1C8 AFB8009C */  sw    $t8, 0x9c($sp)
/* 0041F1CC 8C590008 */  lw    $t9, 8($v0)
/* 0041F1D0 AFA000A4 */  sw    $zero, 0xa4($sp)
/* 0041F1D4 10000084 */  b     .L0041F3E8
/* 0041F1D8 AFB900A0 */   sw    $t9, 0xa0($sp)
.L0041F1DC:
/* 0041F1DC 94480024 */  lhu   $t0, 0x24($v0)
/* 0041F1E0 27A50088 */  addiu $a1, $sp, 0x88
/* 0041F1E4 00084880 */  sll   $t1, $t0, 2
/* 0041F1E8 03C95021 */  addu  $t2, $fp, $t1
/* 0041F1EC 8D500000 */  lw    $s0, ($t2)
/* 0041F1F0 27A6007C */  addiu $a2, $sp, 0x7c
/* 0041F1F4 00105A02 */  srl   $t3, $s0, 8
/* 0041F1F8 1160007B */  beqz  $t3, .L0041F3E8
/* 0041F1FC 01608025 */   move  $s0, $t3
/* 0041F200 8F99839C */  lw    $t9, %call16(defuse)($gp)
/* 0041F204 AFA30074 */  sw    $v1, 0x74($sp)
/* 0041F208 AFA30000 */  sw    $v1, ($sp)
/* 0041F20C 0320F809 */  jalr  $t9
/* 0041F210 00602025 */   move  $a0, $v1
/* 0041F214 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041F218 320201C0 */  andi  $v0, $s0, 0x1c0
/* 0041F21C 10400054 */  beqz  $v0, .L0041F370
/* 0041F220 24010080 */   li    $at, 128
/* 0041F224 10410024 */  beq   $v0, $at, .L0041F2B8
/* 0041F228 2405FFFF */   li    $a1, -1
/* 0041F22C 240100C0 */  li    $at, 192
/* 0041F230 10410005 */  beq   $v0, $at, .L0041F248
/* 0041F234 24010100 */   li    $at, 256
/* 0041F238 10410028 */  beq   $v0, $at, .L0041F2DC
/* 0041F23C 8FA8004C */   lw    $t0, 0x4c($sp)
/* 0041F240 1000004C */  b     .L0041F374
/* 0041F244 8FA20088 */   lw    $v0, 0x88($sp)
.L0041F248:
/* 0041F248 12200012 */  beqz  $s1, .L0041F294
/* 0041F24C 00000000 */   nop   
/* 0041F250 8FA2009C */  lw    $v0, 0x9c($sp)
/* 0041F254 8FA300A0 */  lw    $v1, 0xa0($sp)
/* 0041F258 8FA400A4 */  lw    $a0, 0xa4($sp)
/* 0041F25C 8FA5007C */  lw    $a1, 0x7c($sp)
/* 0041F260 8FA60080 */  lw    $a2, 0x80($sp)
/* 0041F264 8FAD0084 */  lw    $t5, 0x84($sp)
/* 0041F268 00A22825 */  or    $a1, $a1, $v0
/* 0041F26C 00C33025 */  or    $a2, $a2, $v1
/* 0041F270 01A47025 */  or    $t6, $t5, $a0
/* 0041F274 AFAE0084 */  sw    $t6, 0x84($sp)
/* 0041F278 00008825 */  move  $s1, $zero
/* 0041F27C AFA60080 */  sw    $a2, 0x80($sp)
/* 0041F280 AFA5007C */  sw    $a1, 0x7c($sp)
/* 0041F284 AFA20058 */  sw    $v0, 0x58($sp)
/* 0041F288 AFA3005C */  sw    $v1, 0x5c($sp)
/* 0041F28C 10000038 */  b     .L0041F370
/* 0041F290 AFA40060 */   sw    $a0, 0x60($sp)
.L0041F294:
/* 0041F294 8F8F8BA8 */  lw     $t7, %got(notandm)($gp)
/* 0041F298 00000000 */  nop   
/* 0041F29C 91EF0000 */  lbu   $t7, ($t7)
/* 0041F2A0 00000000 */  nop   
/* 0041F2A4 11E00005 */  beqz  $t7, .L0041F2BC
/* 0041F2A8 2406FFFF */   li    $a2, -1
/* 0041F2AC 8E780010 */  lw    $t8, 0x10($s3)
/* 0041F2B0 00000000 */  nop   
/* 0041F2B4 1700002E */  bnez  $t8, .L0041F370
.L0041F2B8:
/* 0041F2B8 2406FFFF */   li    $a2, -1
.L0041F2BC:
/* 0041F2BC 2419FFFF */  li    $t9, -1
/* 0041F2C0 2407FFFF */  li    $a3, -1
/* 0041F2C4 AFB90058 */  sw    $t9, 0x58($sp)
/* 0041F2C8 AFA7005C */  sw    $a3, 0x5c($sp)
/* 0041F2CC AFA60080 */  sw    $a2, 0x80($sp)
/* 0041F2D0 10000027 */  b     .L0041F370
/* 0041F2D4 AFA5007C */   sw    $a1, 0x7c($sp)
/* 0041F2D8 8FA8004C */  lw    $t0, 0x4c($sp)
.L0041F2DC:
/* 0041F2DC 8E890000 */  lw    $t1, ($s4)
/* 0041F2E0 8FAB0050 */  lw    $t3, 0x50($sp)
/* 0041F2E4 8E8C0004 */  lw    $t4, 4($s4)
/* 0041F2E8 01095025 */  or    $t2, $t0, $t1
/* 0041F2EC 016C6825 */  or    $t5, $t3, $t4
/* 0041F2F0 AFAA004C */  sw    $t2, 0x4c($sp)
/* 0041F2F4 12200010 */  beqz  $s1, .L0041F338
/* 0041F2F8 AFAD0050 */   sw    $t5, 0x50($sp)
/* 0041F2FC 8FA2009C */  lw    $v0, 0x9c($sp)
/* 0041F300 8FA300A0 */  lw    $v1, 0xa0($sp)
/* 0041F304 8FA400A4 */  lw    $a0, 0xa4($sp)
/* 0041F308 8FAE0084 */  lw    $t6, 0x84($sp)
/* 0041F30C 8FA5007C */  lw    $a1, 0x7c($sp)
/* 0041F310 8FA60080 */  lw    $a2, 0x80($sp)
/* 0041F314 01C47825 */  or    $t7, $t6, $a0
/* 0041F318 AFAF0084 */  sw    $t7, 0x84($sp)
/* 0041F31C 00008825 */  move  $s1, $zero
/* 0041F320 AFA20058 */  sw    $v0, 0x58($sp)
/* 0041F324 AFA3005C */  sw    $v1, 0x5c($sp)
/* 0041F328 AFA40060 */  sw    $a0, 0x60($sp)
/* 0041F32C 00A22825 */  or    $a1, $a1, $v0
/* 0041F330 1000000D */  b     .L0041F368
/* 0041F334 00C33025 */   or    $a2, $a2, $v1
.L0041F338:
/* 0041F338 8FA7005C */  lw    $a3, 0x5c($sp)
/* 0041F33C 8EA20000 */  lw    $v0, ($s5)
/* 0041F340 8EA30004 */  lw    $v1, 4($s5)
/* 0041F344 8FB80058 */  lw    $t8, 0x58($sp)
/* 0041F348 8FA5007C */  lw    $a1, 0x7c($sp)
/* 0041F34C 8FA60080 */  lw    $a2, 0x80($sp)
/* 0041F350 00E33825 */  or    $a3, $a3, $v1
/* 0041F354 0302C825 */  or    $t9, $t8, $v0
/* 0041F358 AFB90058 */  sw    $t9, 0x58($sp)
/* 0041F35C AFA7005C */  sw    $a3, 0x5c($sp)
/* 0041F360 00A22825 */  or    $a1, $a1, $v0
/* 0041F364 00C33025 */  or    $a2, $a2, $v1
.L0041F368:
/* 0041F368 AFA5007C */  sw    $a1, 0x7c($sp)
/* 0041F36C AFA60080 */  sw    $a2, 0x80($sp)
.L0041F370:
/* 0041F370 8FA20088 */  lw    $v0, 0x88($sp)
.L0041F374:
/* 0041F374 8FA3008C */  lw    $v1, 0x8c($sp)
/* 0041F378 8FA80064 */  lw    $t0, 0x64($sp)
/* 0041F37C 8FAC0068 */  lw    $t4, 0x68($sp)
/* 0041F380 8FA5007C */  lw    $a1, 0x7c($sp)
/* 0041F384 8FA60080 */  lw    $a2, 0x80($sp)
/* 0041F388 00404827 */  not   $t1, $v0
/* 0041F38C 00606827 */  not   $t5, $v1
/* 0041F390 8FA40090 */  lw    $a0, 0x90($sp)
/* 0041F394 01095024 */  and   $t2, $t0, $t1
/* 0041F398 018D7024 */  and   $t6, $t4, $t5
/* 0041F39C 8FB8006C */  lw    $t8, 0x6c($sp)
/* 0041F3A0 00AA5825 */  or    $t3, $a1, $t2
/* 0041F3A4 00CE7825 */  or    $t7, $a2, $t6
/* 0041F3A8 AFAB0064 */  sw    $t3, 0x64($sp)
/* 0041F3AC AFAF0068 */  sw    $t7, 0x68($sp)
/* 0041F3B0 0080C827 */  not   $t9, $a0
/* 0041F3B4 8FA90084 */  lw    $t1, 0x84($sp)
/* 0041F3B8 8FAF0054 */  lw    $t7, 0x54($sp)
/* 0041F3BC 8FAB004C */  lw    $t3, 0x4c($sp)
/* 0041F3C0 8FAD0050 */  lw    $t5, 0x50($sp)
/* 0041F3C4 03194024 */  and   $t0, $t8, $t9
/* 0041F3C8 01285025 */  or    $t2, $t1, $t0
/* 0041F3CC 01E4C025 */  or    $t8, $t7, $a0
/* 0041F3D0 01626025 */  or    $t4, $t3, $v0
/* 0041F3D4 01A37025 */  or    $t6, $t5, $v1
/* 0041F3D8 AFAA006C */  sw    $t2, 0x6c($sp)
/* 0041F3DC AFAE0050 */  sw    $t6, 0x50($sp)
/* 0041F3E0 AFAC004C */  sw    $t4, 0x4c($sp)
/* 0041F3E4 AFB80054 */  sw    $t8, 0x54($sp)
.L0041F3E8:
/* 0041F3E8 2652FFD8 */  addiu $s2, $s2, -0x28
/* 0041F3EC 2A410028 */  slti  $at, $s2, 0x28
/* 0041F3F0 1020FF68 */  beqz  $at, .L0041F194
/* 0041F3F4 00000000 */   nop   
.L0041F3F8:
/* 0041F3F8 9662003E */  lhu   $v0, 0x3e($s3)
/* 0041F3FC 00000000 */  nop   
/* 0041F400 10400011 */  beqz  $v0, .L0041F448
/* 0041F404 00024880 */   sll   $t1, $v0, 2
/* 0041F408 8E79000C */  lw    $t9, 0xc($s3)
/* 0041F40C 01224821 */  addu  $t1, $t1, $v0
/* 0041F410 000948C0 */  sll   $t1, $t1, 3
/* 0041F414 03291821 */  addu  $v1, $t9, $t1
/* 0041F418 8C680014 */  lw    $t0, 0x14($v1)
/* 0041F41C 00000000 */  nop   
/* 0041F420 1500000A */  bnez  $t0, .L0041F44C
/* 0041F424 8FAA0064 */   lw    $t2, 0x64($sp)
/* 0041F428 94620024 */  lhu   $v0, 0x24($v1)
/* 0041F42C 24010009 */  li    $at, 9
/* 0041F430 10410005 */  beq   $v0, $at, .L0041F448
/* 0041F434 24010008 */   li    $at, 8
/* 0041F438 10410003 */  beq   $v0, $at, .L0041F448
/* 0041F43C 2407FFFF */   li    $a3, -1
/* 0041F440 AFA70058 */  sw    $a3, 0x58($sp)
/* 0041F444 AFA7005C */  sw    $a3, 0x5c($sp)
.L0041F448:
/* 0041F448 8FAA0064 */  lw    $t2, 0x64($sp)
.L0041F44C:
/* 0041F44C 00000000 */  nop   
/* 0041F450 AE6A0024 */  sw    $t2, 0x24($s3)
/* 0041F454 8FAB0068 */  lw    $t3, 0x68($sp)
/* 0041F458 00000000 */  nop   
/* 0041F45C AE6B0028 */  sw    $t3, 0x28($s3)
/* 0041F460 8FAC006C */  lw    $t4, 0x6c($sp)
/* 0041F464 00000000 */  nop   
/* 0041F468 AE6C002C */  sw    $t4, 0x2c($s3)
/* 0041F46C 8FAD004C */  lw    $t5, 0x4c($sp)
/* 0041F470 00000000 */  nop   
/* 0041F474 AE6D0018 */  sw    $t5, 0x18($s3)
/* 0041F478 8FAE0050 */  lw    $t6, 0x50($sp)
/* 0041F47C 00000000 */  nop   
/* 0041F480 AE6E001C */  sw    $t6, 0x1c($s3)
/* 0041F484 8FAF0054 */  lw    $t7, 0x54($sp)
/* 0041F488 00000000 */  nop   
/* 0041F48C AE6F0020 */  sw    $t7, 0x20($s3)
/* 0041F490 8FB80058 */  lw    $t8, 0x58($sp)
/* 0041F494 00000000 */  nop   
/* 0041F498 AE780030 */  sw    $t8, 0x30($s3)
/* 0041F49C 8FB9005C */  lw    $t9, 0x5c($sp)
/* 0041F4A0 00000000 */  nop   
/* 0041F4A4 AE790034 */  sw    $t9, 0x34($s3)
/* 0041F4A8 8FA90060 */  lw    $t1, 0x60($sp)
/* 0041F4AC 00000000 */  nop   
/* 0041F4B0 AE690038 */  sw    $t1, 0x38($s3)
/* 0041F4B4 8E730008 */  lw    $s3, 8($s3)
/* 0041F4B8 00000000 */  nop   
/* 0041F4BC 1660FF26 */  bnez  $s3, .L0041F158
/* 0041F4C0 00000000 */   nop   
.L0041F4C4:
/* 0041F4C4 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0041F4C8 8FB00014 */  lw    $s0, 0x14($sp)
/* 0041F4CC 8FB10018 */  lw    $s1, 0x18($sp)
/* 0041F4D0 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0041F4D4 8FB30020 */  lw    $s3, 0x20($sp)
/* 0041F4D8 8FB40024 */  lw    $s4, 0x24($sp)
/* 0041F4DC 8FB50028 */  lw    $s5, 0x28($sp)
/* 0041F4E0 8FB6002C */  lw    $s6, 0x2c($sp)
/* 0041F4E4 8FB70030 */  lw    $s7, 0x30($sp)
/* 0041F4E8 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0041F4EC 03E00008 */  jr    $ra
/* 0041F4F0 27BD00B0 */   addiu $sp, $sp, 0xb0

    .type func_0041F4F4, @function
func_0041F4F4:
    # 00420E34 traverse_bb
/* 0041F4F4 3C1C0FC1 */  .cpload $t9
/* 0041F4F8 279CAD6C */  
/* 0041F4FC 0399E021 */  
/* 0041F500 8F858088 */  lw    $a1, %got(B_1002330C)($gp)
/* 0041F504 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0041F508 24A5330C */  addiu $a1, %lo(B_1002330C) # addiu $a1, $a1, 0x330c
.L0041F50C:
/* 0041F50C 8CA30000 */  lw    $v1, ($a1)
/* 0041F510 00001025 */  move  $v0, $zero
/* 0041F514 10600049 */  beqz  $v1, .L0041F63C
/* 0041F518 00000000 */   nop   
.L0041F51C:
/* 0041F51C 8C6E0024 */  lw    $t6, 0x24($v1)
/* 0041F520 00000000 */  nop   
/* 0041F524 AFAE0000 */  sw    $t6, ($sp)
/* 0041F528 8C6F0028 */  lw    $t7, 0x28($v1)
/* 0041F52C 00000000 */  nop   
/* 0041F530 AFAF0004 */  sw    $t7, 4($sp)
/* 0041F534 8C78002C */  lw    $t8, 0x2c($v1)
/* 0041F538 00000000 */  nop   
/* 0041F53C AFB80008 */  sw    $t8, 8($sp)
/* 0041F540 8C640010 */  lw    $a0, 0x10($v1)
/* 0041F544 00000000 */  nop   
/* 0041F548 10800017 */  beqz  $a0, .L0041F5A8
/* 0041F54C 00000000 */   nop   
.L0041F550:
/* 0041F550 8C880000 */  lw    $t0, ($a0)
/* 0041F554 8C790030 */  lw    $t9, 0x30($v1)
/* 0041F558 8D090024 */  lw    $t1, 0x24($t0)
/* 0041F55C 8C6B0034 */  lw    $t3, 0x34($v1)
/* 0041F560 03295025 */  or    $t2, $t9, $t1
/* 0041F564 AC6A0030 */  sw    $t2, 0x30($v1)
/* 0041F568 8C8C0000 */  lw    $t4, ($a0)
/* 0041F56C 8C6F0038 */  lw    $t7, 0x38($v1)
/* 0041F570 8D8D0028 */  lw    $t5, 0x28($t4)
/* 0041F574 00000000 */  nop   
/* 0041F578 016D7025 */  or    $t6, $t3, $t5
/* 0041F57C AC6E0034 */  sw    $t6, 0x34($v1)
/* 0041F580 8C980000 */  lw    $t8, ($a0)
/* 0041F584 00000000 */  nop   
/* 0041F588 8F08002C */  lw    $t0, 0x2c($t8)
/* 0041F58C 00000000 */  nop   
/* 0041F590 01E8C825 */  or    $t9, $t7, $t0
/* 0041F594 AC790038 */  sw    $t9, 0x38($v1)
/* 0041F598 8C840004 */  lw    $a0, 4($a0)
/* 0041F59C 00000000 */  nop   
/* 0041F5A0 1480FFEB */  bnez  $a0, .L0041F550
/* 0041F5A4 00000000 */   nop   
.L0041F5A8:
/* 0041F5A8 8C6A0018 */  lw    $t2, 0x18($v1)
/* 0041F5AC 8C690030 */  lw    $t1, 0x30($v1)
/* 0041F5B0 8C6D0024 */  lw    $t5, 0x24($v1)
/* 0041F5B4 01406027 */  not   $t4, $t2
/* 0041F5B8 8C6F001C */  lw    $t7, 0x1c($v1)
/* 0041F5BC 012C5824 */  and   $t3, $t1, $t4
/* 0041F5C0 01AB7025 */  or    $t6, $t5, $t3
/* 0041F5C4 8C780034 */  lw    $t8, 0x34($v1)
/* 0041F5C8 8C6D0020 */  lw    $t5, 0x20($v1)
/* 0041F5CC 01E04027 */  not   $t0, $t7
/* 0041F5D0 8C6C0038 */  lw    $t4, 0x38($v1)
/* 0041F5D4 8C6A0028 */  lw    $t2, 0x28($v1)
/* 0041F5D8 8C6F002C */  lw    $t7, 0x2c($v1)
/* 0041F5DC AC6E0024 */  sw    $t6, 0x24($v1)
/* 0041F5E0 0308C824 */  and   $t9, $t8, $t0
/* 0041F5E4 01A05827 */  not   $t3, $t5
/* 0041F5E8 018B7024 */  and   $t6, $t4, $t3
/* 0041F5EC 01594825 */  or    $t1, $t2, $t9
/* 0041F5F0 01EEC025 */  or    $t8, $t7, $t6
/* 0041F5F4 AC690028 */  sw    $t1, 0x28($v1)
/* 0041F5F8 AC78002C */  sw    $t8, 0x2c($v1)
/* 0041F5FC 8FA80000 */  lw    $t0, ($sp)
/* 0041F600 8C6A0024 */  lw    $t2, 0x24($v1)
/* 0041F604 00000000 */  nop   
/* 0041F608 150A0007 */  bne   $t0, $t2, .L0041F628
/* 0041F60C 00000000 */   nop   
/* 0041F610 8FB90004 */  lw    $t9, 4($sp)
/* 0041F614 8FAD0008 */  lw    $t5, 8($sp)
/* 0041F618 17290003 */  bne   $t9, $t1, .L0041F628
/* 0041F61C 00000000 */   nop   
/* 0041F620 11B80002 */  beq   $t5, $t8, .L0041F62C
/* 0041F624 00000000 */   nop   
.L0041F628:
/* 0041F628 24020001 */  li    $v0, 1
.L0041F62C:
/* 0041F62C 8C630004 */  lw    $v1, 4($v1)
/* 0041F630 00000000 */  nop   
/* 0041F634 1460FFB9 */  bnez  $v1, .L0041F51C
/* 0041F638 00000000 */   nop   
.L0041F63C:
/* 0041F63C 1440FFB3 */  bnez  $v0, .L0041F50C
/* 0041F640 00000000 */   nop   
/* 0041F644 03E00008 */  jr    $ra
/* 0041F648 27BD0018 */   addiu $sp, $sp, 0x18

    .type func_0041F64C, @function
func_0041F64C:
    # 00420E34 traverse_bb
/* 0041F64C 3C1C0FC1 */  .cpload $t9
/* 0041F650 279CAC14 */  
/* 0041F654 0399E021 */  
/* 0041F658 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0041F65C AFBF003C */  sw    $ra, 0x3c($sp)
/* 0041F660 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0041F664 AFBC0034 */  sw    $gp, 0x34($sp)
/* 0041F668 AFB70030 */  sw    $s7, 0x30($sp)
/* 0041F66C AFB6002C */  sw    $s6, 0x2c($sp)
/* 0041F670 AFB50028 */  sw    $s5, 0x28($sp)
/* 0041F674 AFB40024 */  sw    $s4, 0x24($sp)
/* 0041F678 AFB30020 */  sw    $s3, 0x20($sp)
/* 0041F67C AFB2001C */  sw    $s2, 0x1c($sp)
/* 0041F680 AFB10018 */  sw    $s1, 0x18($sp)
/* 0041F684 AFB00014 */  sw    $s0, 0x14($sp)
/* 0041F688 8C95000C */  lw    $s5, 0xc($a0)
/* 0041F68C 8F818B40 */  lw     $at, %got(pinstruction)($gp)
/* 0041F690 8F9983C4 */  lw    $t9, %call16(init_alias_table)($gp)
/* 0041F694 00808025 */  move  $s0, $a0
/* 0041F698 0320F809 */  jalr  $t9
/* 0041F69C AC350000 */   sw    $s5, ($at)
/* 0041F6A0 9603003C */  lhu   $v1, 0x3c($s0)
/* 0041F6A4 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041F6A8 1860006B */  blez  $v1, .L0041F858
/* 0041F6AC 24120001 */   li    $s2, 1
/* 0041F6B0 3C167FFF */  lui   $s6, 0x7fff
/* 0041F6B4 8F9E88EC */  lw     $fp, %got(mnem)($gp)
/* 0041F6B8 8F918A98 */  lw     $s1, %got(current_mask)($gp)
/* 0041F6BC 36D6FFFF */  ori   $s6, $s6, 0xffff
/* 0041F6C0 24140028 */  li    $s4, 40
/* 0041F6C4 26B30028 */  addiu $s3, $s5, 0x28
/* 0041F6C8 24170100 */  li    $s7, 256
.L0041F6CC:
/* 0041F6CC 8E6E0000 */  lw    $t6, ($s3)
/* 0041F6D0 02951021 */  addu  $v0, $s4, $s5
/* 0041F6D4 16CE0044 */  bne   $s6, $t6, .L0041F7E8
/* 0041F6D8 00000000 */   nop   
/* 0041F6DC 8C480010 */  lw    $t0, 0x10($v0)
/* 0041F6E0 00000000 */  nop   
/* 0041F6E4 250FFFFF */  addiu $t7, $t0, -1
/* 0041F6E8 2DE1001C */  sltiu $at, $t7, 0x1c
/* 0041F6EC 10200055 */  beqz  $at, .L0041F844
/* 0041F6F0 00000000 */   nop   
/* 0041F6F4 8F81806C */  lw    $at, %got(jtbl_1001401C)($gp)
/* 0041F6F8 000F7880 */  sll   $t7, $t7, 2
/* 0041F6FC 002F0821 */  addu  $at, $at, $t7
/* 0041F700 8C2F401C */  lw    $t7, %lo(jtbl_1001401C)($at)
/* 0041F704 00000000 */  nop   
/* 0041F708 01FC7821 */  addu  $t7, $t7, $gp
/* 0041F70C 01E00008 */  jr    $t7
/* 0041F710 00000000 */   nop   
.L0041F714:
/* 0041F714 AE200000 */  sw    $zero, ($s1)
/* 0041F718 AE200004 */  sw    $zero, 4($s1)
/* 0041F71C AE200008 */  sw    $zero, 8($s1)
/* 0041F720 9603003C */  lhu   $v1, 0x3c($s0)
/* 0041F724 10000048 */  b     .L0041F848
/* 0041F728 26520001 */   addiu $s2, $s2, 1
.L0041F72C:
/* 0041F72C 8C580004 */  lw    $t8, 4($v0)
/* 0041F730 8F818A98 */  lw     $at, %got(current_mask)($gp)
/* 0041F734 8F9982F8 */  lw    $t9, %call16(flip_bits)($gp)
/* 0041F738 AC380000 */  sw    $t8, ($at)
/* 0041F73C 8E240000 */  lw    $a0, ($s1)
/* 0041F740 0320F809 */  jalr  $t9
/* 0041F744 00000000 */   nop   
/* 0041F748 AE220000 */  sw    $v0, ($s1)
/* 0041F74C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041F750 9603003C */  lhu   $v1, 0x3c($s0)
/* 0041F754 1000003C */  b     .L0041F848
/* 0041F758 26520001 */   addiu $s2, $s2, 1
.L0041F75C:
/* 0041F75C 8C590004 */  lw    $t9, 4($v0)
/* 0041F760 8F818A98 */  lw     $at, %got(current_mask)($gp)
/* 0041F764 00000000 */  nop   
/* 0041F768 AC390004 */  sw    $t9, 4($at)
/* 0041F76C 8F9982F8 */  lw    $t9, %call16(flip_bits)($gp)
/* 0041F770 8E240004 */  lw    $a0, 4($s1)
/* 0041F774 0320F809 */  jalr  $t9
/* 0041F778 00000000 */   nop   
/* 0041F77C AE220004 */  sw    $v0, 4($s1)
/* 0041F780 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041F784 9603003C */  lhu   $v1, 0x3c($s0)
/* 0041F788 1000002F */  b     .L0041F848
/* 0041F78C 26520001 */   addiu $s2, $s2, 1
.L0041F790:
/* 0041F790 8F9983B4 */  lw    $t9, %call16(reorg_noalias)($gp)
/* 0041F794 8C450004 */  lw    $a1, 4($v0)
/* 0041F798 8C460008 */  lw    $a2, 8($v0)
/* 0041F79C 2504FFE5 */  addiu $a0, $t0, -0x1b
/* 0041F7A0 0320F809 */  jalr  $t9
/* 0041F7A4 02403825 */   move  $a3, $s2
/* 0041F7A8 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041F7AC 9603003C */  lhu   $v1, 0x3c($s0)
/* 0041F7B0 10000025 */  b     .L0041F848
/* 0041F7B4 26520001 */   addiu $s2, $s2, 1
.L0041F7B8:
/* 0041F7B8 8C490004 */  lw    $t1, 4($v0)
/* 0041F7BC 8F818AA0 */  lw     $at, %got(current_loop)($gp)
/* 0041F7C0 00000000 */  nop   
/* 0041F7C4 AC290000 */  sw    $t1, ($at)
/* 0041F7C8 9603003C */  lhu   $v1, 0x3c($s0)
/* 0041F7CC 1000001E */  b     .L0041F848
/* 0041F7D0 26520001 */   addiu $s2, $s2, 1
.L0041F7D4:
/* 0041F7D4 920B0047 */  lbu   $t3, 0x47($s0)
/* 0041F7D8 9603003C */  lhu   $v1, 0x3c($s0)
/* 0041F7DC 356C0020 */  ori   $t4, $t3, 0x20
/* 0041F7E0 10000018 */  b     .L0041F844
/* 0041F7E4 A20C0047 */   sb    $t4, 0x47($s0)
.L0041F7E8:
/* 0041F7E8 966D0024 */  lhu   $t5, 0x24($s3)
/* 0041F7EC 240100C0 */  li    $at, 192
/* 0041F7F0 000D7080 */  sll   $t6, $t5, 2
/* 0041F7F4 03CE7821 */  addu  $t7, $fp, $t6
/* 0041F7F8 8DE20000 */  lw    $v0, ($t7)
/* 0041F7FC 00000000 */  nop   
/* 0041F800 0002C202 */  srl   $t8, $v0, 8
/* 0041F804 331901C0 */  andi  $t9, $t8, 0x1c0
/* 0041F808 12F90003 */  beq   $s7, $t9, .L0041F818
/* 0041F80C 00000000 */   nop   
/* 0041F810 17210005 */  bne   $t9, $at, .L0041F828
/* 0041F814 00000000 */   nop   
.L0041F818:
/* 0041F818 920A0047 */  lbu   $t2, 0x47($s0)
/* 0041F81C 00000000 */  nop   
/* 0041F820 354B0040 */  ori   $t3, $t2, 0x40
/* 0041F824 A20B0047 */  sb    $t3, 0x47($s0)
.L0041F828:
/* 0041F828 8F9983C8 */  lw    $t9, %call16(update_alias_table)($gp)
/* 0041F82C 02402025 */  move  $a0, $s2
/* 0041F830 0320F809 */  jalr  $t9
/* 0041F834 00000000 */   nop   
/* 0041F838 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041F83C 9603003C */  lhu   $v1, 0x3c($s0)
/* 0041F840 00000000 */  nop   
.L0041F844:
/* 0041F844 26520001 */  addiu $s2, $s2, 1
.L0041F848:
/* 0041F848 0072082A */  slt   $at, $v1, $s2
/* 0041F84C 26940028 */  addiu $s4, $s4, 0x28
/* 0041F850 1020FF9E */  beqz  $at, .L0041F6CC
/* 0041F854 26730028 */   addiu $s3, $s3, 0x28
.L0041F858:
/* 0041F858 8F8C8AA0 */  lw     $t4, %got(current_loop)($gp)
/* 0041F85C 00000000 */  nop   
/* 0041F860 8D8C0000 */  lw    $t4, ($t4)
/* 0041F864 00000000 */  nop   
/* 0041F868 A60C0044 */  sh    $t4, 0x44($s0)
/* 0041F86C 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0041F870 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0041F874 8FB70030 */  lw    $s7, 0x30($sp)
/* 0041F878 8FB6002C */  lw    $s6, 0x2c($sp)
/* 0041F87C 8FB50028 */  lw    $s5, 0x28($sp)
/* 0041F880 8FB40024 */  lw    $s4, 0x24($sp)
/* 0041F884 8FB30020 */  lw    $s3, 0x20($sp)
/* 0041F888 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0041F88C 8FB10018 */  lw    $s1, 0x18($sp)
/* 0041F890 8FB00014 */  lw    $s0, 0x14($sp)
/* 0041F894 03E00008 */  jr    $ra
/* 0041F898 27BD0040 */   addiu $sp, $sp, 0x40

    .type func_0041F89C, @function
func_0041F89C:
    # 0041FE24 func_0041FE24
/* 0041F89C 3C1C0FC1 */  .cpload $t9
/* 0041F8A0 279CA9C4 */  
/* 0041F8A4 0399E021 */  
/* 0041F8A8 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0041F8AC 8F99839C */  lw    $t9, %call16(defuse)($gp)
/* 0041F8B0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0041F8B4 AFA50044 */  sw    $a1, 0x44($sp)
/* 0041F8B8 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0041F8BC AFA40040 */  sw    $a0, 0x40($sp)
/* 0041F8C0 27A50034 */  addiu $a1, $sp, 0x34
/* 0041F8C4 AFA40000 */  sw    $a0, ($sp)
/* 0041F8C8 0320F809 */  jalr  $t9
/* 0041F8CC 27A60028 */   addiu $a2, $sp, 0x28
/* 0041F8D0 8FAF0038 */  lw    $t7, 0x38($sp)
/* 0041F8D4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0041F8D8 15E00005 */  bnez  $t7, .L0041F8F0
/* 0041F8DC 00000000 */   nop   
/* 0041F8E0 8FB8003C */  lw    $t8, 0x3c($sp)
/* 0041F8E4 00000000 */  nop   
/* 0041F8E8 13000003 */  beqz  $t8, .L0041F8F8
/* 0041F8EC 00000000 */   nop   
.L0041F8F0:
/* 0041F8F0 10000025 */  b     .L0041F988
/* 0041F8F4 00001025 */   move  $v0, $zero
.L0041F8F8:
/* 0041F8F8 8F998BC4 */  lw     $t9, %got(global_opt)($gp)
/* 0041F8FC 8FA40040 */  lw    $a0, 0x40($sp)
/* 0041F900 93390000 */  lbu   $t9, ($t9)
/* 0041F904 8FAC0034 */  lw    $t4, 0x34($sp)
/* 0041F908 1320001A */  beqz  $t9, .L0041F974
/* 0041F90C 3C014000 */   lui   $at, 0x4000
/* 0041F910 8F9983AC */  lw    $t9, %call16(loads_from_memory)($gp)
/* 0041F914 AFA40000 */  sw    $a0, ($sp)
/* 0041F918 0320F809 */  jalr  $t9
/* 0041F91C 00000000 */   nop   
/* 0041F920 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0041F924 10400003 */  beqz  $v0, .L0041F934
/* 0041F928 00000000 */   nop   
/* 0041F92C 10000016 */  b     .L0041F988
/* 0041F930 00001025 */   move  $v0, $zero
.L0041F934:
/* 0041F934 8F848088 */  lw    $a0, %got(B_1002331C)($gp)
/* 0041F938 8F9982C0 */  lw    $t9, %call16(find_branch_target)($gp)
/* 0041F93C 8C84331C */  lw    $a0, %lo(B_1002331C)($a0)
/* 0041F940 0320F809 */  jalr  $t9
/* 0041F944 00000000 */   nop   
/* 0041F948 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0041F94C 1040000D */  beqz  $v0, .L0041F984
/* 0041F950 00000000 */   nop   
/* 0041F954 8FA90034 */  lw    $t1, 0x34($sp)
/* 0041F958 8C4A0024 */  lw    $t2, 0x24($v0)
/* 0041F95C 00000000 */  nop   
/* 0041F960 012A5824 */  and   $t3, $t1, $t2
/* 0041F964 15600008 */  bnez  $t3, .L0041F988
/* 0041F968 00001025 */   move  $v0, $zero
/* 0041F96C 10000006 */  b     .L0041F988
/* 0041F970 24020001 */   li    $v0, 1
.L0041F974:
/* 0041F974 15810004 */  bne   $t4, $at, .L0041F988
/* 0041F978 00001025 */   move  $v0, $zero
/* 0041F97C 10000002 */  b     .L0041F988
/* 0041F980 24020001 */   li    $v0, 1
.L0041F984:
/* 0041F984 00001025 */  move  $v0, $zero
.L0041F988:
/* 0041F988 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0041F98C 27BD0040 */  addiu $sp, $sp, 0x40
/* 0041F990 03E00008 */  jr    $ra
/* 0041F994 00000000 */   nop   

    .type func_0041F998, @function
func_0041F998:
    # 0041FE24 func_0041FE24
/* 0041F998 3C1C0FC1 */  .cpload $t9
/* 0041F99C 279CA8C8 */  
/* 0041F9A0 0399E021 */  
/* 0041F9A4 00047E82 */  srl   $t7, $a0, 0x1a
/* 0041F9A8 25F8FFE6 */  addiu $t8, $t7, -0x1a
/* 0041F9AC 2F01001E */  sltiu $at, $t8, 0x1e
/* 0041F9B0 1020000E */  beqz  $at, .L0041F9EC
/* 0041F9B4 AFA40000 */   sw    $a0, ($sp)
/* 0041F9B8 8F81806C */  lw    $at, %got(jtbl_1001408C)($gp)
/* 0041F9BC 0018C080 */  sll   $t8, $t8, 2
/* 0041F9C0 00380821 */  addu  $at, $at, $t8
/* 0041F9C4 8C38408C */  lw    $t8, %lo(jtbl_1001408C)($at)
/* 0041F9C8 00000000 */  nop   
/* 0041F9CC 031CC021 */  addu  $t8, $t8, $gp
/* 0041F9D0 03000008 */  jr    $t8
/* 0041F9D4 00000000 */   nop   
.L0041F9D8:
/* 0041F9D8 97A20000 */  lhu   $v0, ($sp)
/* 0041F9DC 00000000 */  nop   
/* 0041F9E0 3059001F */  andi  $t9, $v0, 0x1f
/* 0041F9E4 03E00008 */  jr    $ra
/* 0041F9E8 03201025 */   move  $v0, $t9

.L0041F9EC:
/* 0041F9EC 00001025 */  move  $v0, $zero
/* 0041F9F0 03E00008 */  jr    $ra
/* 0041F9F4 00000000 */   nop   

glabel appendtextword
    .ent appendtextword
    # 0040BC34 gen_br_patches
    # 0041FE24 func_0041FE24
/* 0041F9F8 3C1C0FC1 */  .cpload $t9
/* 0041F9FC 279CA868 */  
/* 0041FA00 0399E021 */  
/* 0041FA04 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0041FA08 AFB30028 */  sw    $s3, 0x28($sp)
/* 0041FA0C 00C09825 */  move  $s3, $a2
/* 0041FA10 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0041FA14 AFBC0030 */  sw    $gp, 0x30($sp)
/* 0041FA18 AFB4002C */  sw    $s4, 0x2c($sp)
/* 0041FA1C AFB20024 */  sw    $s2, 0x24($sp)
/* 0041FA20 AFB10020 */  sw    $s1, 0x20($sp)
/* 0041FA24 AFB0001C */  sw    $s0, 0x1c($sp)
/* 0041FA28 AFA40040 */  sw    $a0, 0x40($sp)
/* 0041FA2C AFA50044 */  sw    $a1, 0x44($sp)
/* 0041FA30 AFA7004C */  sw    $a3, 0x4c($sp)
/* 0041FA34 10C00046 */  beqz  $a2, .L0041FB50
/* 0041FA38 AFA4003C */   sw    $a0, 0x3c($sp)
/* 0041FA3C 00047E82 */  srl   $t7, $a0, 0x1a
/* 0041FA40 24010004 */  li    $at, 4
/* 0041FA44 11E1003C */  beq   $t7, $at, .L0041FB38
/* 0041FA48 02602025 */   move  $a0, $s3
/* 0041FA4C 24010005 */  li    $at, 5
/* 0041FA50 11E10039 */  beq   $t7, $at, .L0041FB38
/* 0041FA54 24010006 */   li    $at, 6
/* 0041FA58 11E10037 */  beq   $t7, $at, .L0041FB38
/* 0041FA5C 24010007 */   li    $at, 7
/* 0041FA60 11E10035 */  beq   $t7, $at, .L0041FB38
/* 0041FA64 24010014 */   li    $at, 20
/* 0041FA68 11E10033 */  beq   $t7, $at, .L0041FB38
/* 0041FA6C 24010015 */   li    $at, 21
/* 0041FA70 11E10031 */  beq   $t7, $at, .L0041FB38
/* 0041FA74 24010016 */   li    $at, 22
/* 0041FA78 11E1002F */  beq   $t7, $at, .L0041FB38
/* 0041FA7C 24010017 */   li    $at, 23
/* 0041FA80 11E1002D */  beq   $t7, $at, .L0041FB38
/* 0041FA84 24020001 */   li    $v0, 1
/* 0041FA88 144F001B */  bne   $v0, $t7, .L0041FAF8
/* 0041FA8C 8FB9003C */   lw    $t9, 0x3c($sp)
/* 0041FA90 97B8003C */  lhu   $t8, 0x3c($sp)
/* 0041FA94 00000000 */  nop   
/* 0041FA98 3319001F */  andi  $t9, $t8, 0x1f
/* 0041FA9C 13200026 */  beqz  $t9, .L0041FB38
/* 0041FAA0 3309001F */   andi  $t1, $t8, 0x1f
/* 0041FAA4 10490024 */  beq   $v0, $t1, .L0041FB38
/* 0041FAA8 330A001F */   andi  $t2, $t8, 0x1f
/* 0041FAAC 24010002 */  li    $at, 2
/* 0041FAB0 11410021 */  beq   $t2, $at, .L0041FB38
/* 0041FAB4 330B001F */   andi  $t3, $t8, 0x1f
/* 0041FAB8 24010003 */  li    $at, 3
/* 0041FABC 1161001E */  beq   $t3, $at, .L0041FB38
/* 0041FAC0 330C001F */   andi  $t4, $t8, 0x1f
/* 0041FAC4 24010010 */  li    $at, 16
/* 0041FAC8 1181001B */  beq   $t4, $at, .L0041FB38
/* 0041FACC 330D001F */   andi  $t5, $t8, 0x1f
/* 0041FAD0 24010011 */  li    $at, 17
/* 0041FAD4 11A10018 */  beq   $t5, $at, .L0041FB38
/* 0041FAD8 330E001F */   andi  $t6, $t8, 0x1f
/* 0041FADC 24010012 */  li    $at, 18
/* 0041FAE0 11C10015 */  beq   $t6, $at, .L0041FB38
/* 0041FAE4 330F001F */   andi  $t7, $t8, 0x1f
/* 0041FAE8 24010013 */  li    $at, 19
/* 0041FAEC 11E10012 */  beq   $t7, $at, .L0041FB38
/* 0041FAF0 00000000 */   nop   
/* 0041FAF4 8FB9003C */  lw    $t9, 0x3c($sp)
.L0041FAF8:
/* 0041FAF8 24010010 */  li    $at, 16
/* 0041FAFC 00194E82 */  srl   $t1, $t9, 0x1a
/* 0041FB00 11210007 */  beq   $t1, $at, .L0041FB20
/* 0041FB04 24010011 */   li    $at, 17
/* 0041FB08 11210005 */  beq   $t1, $at, .L0041FB20
/* 0041FB0C 24010013 */   li    $at, 19
/* 0041FB10 11210003 */  beq   $t1, $at, .L0041FB20
/* 0041FB14 24010012 */   li    $at, 18
/* 0041FB18 1521000D */  bne   $t1, $at, .L0041FB50
/* 0041FB1C 00000000 */   nop   
.L0041FB20:
/* 0041FB20 8FAA003C */  lw    $t2, 0x3c($sp)
/* 0041FB24 24010008 */  li    $at, 8
/* 0041FB28 000A5980 */  sll   $t3, $t2, 6
/* 0041FB2C 000B66C2 */  srl   $t4, $t3, 0x1b
/* 0041FB30 15810007 */  bne   $t4, $at, .L0041FB50
/* 0041FB34 00000000 */   nop   
.L0041FB38:
/* 0041FB38 8F998240 */  lw    $t9, %call16(do_handle_branchop)($gp)
/* 0041FB3C 27A50040 */  addiu $a1, $sp, 0x40
/* 0041FB40 0320F809 */  jalr  $t9
/* 0041FB44 27A60044 */   addiu $a2, $sp, 0x44
/* 0041FB48 8FBC0030 */  lw    $gp, 0x30($sp)
/* 0041FB4C 00000000 */  nop   
.L0041FB50:
/* 0041FB50 8F928AE4 */  lw     $s2, %got(currtextindex)($gp)
/* 0041FB54 8F948AEC */  lw     $s4, %got(seg_ic)($gp)
/* 0041FB58 8E4E0000 */  lw    $t6, ($s2)
/* 0041FB5C 8E8D0000 */  lw    $t5, ($s4)
/* 0041FB60 000EC080 */  sll   $t8, $t6, 2
/* 0041FB64 01B81021 */  addu  $v0, $t5, $t8
/* 0041FB68 8C4F0000 */  lw    $t7, ($v0)
/* 0041FB6C 00000000 */  nop   
/* 0041FB70 25F90003 */  addiu $t9, $t7, 3
/* 0041FB74 00194883 */  sra   $t1, $t9, 2
/* 0041FB78 00095080 */  sll   $t2, $t1, 2
/* 0041FB7C AC4A0000 */  sw    $t2, ($v0)
/* 0041FB80 8FAB0044 */  lw    $t3, 0x44($sp)
/* 0041FB84 00000000 */  nop   
/* 0041FB88 000B602B */  sltu  $t4, $zero, $t3
/* 0041FB8C 1180003D */  beqz  $t4, .L0041FC84
/* 0041FB90 00000000 */   nop   
/* 0041FB94 1180003B */  beqz  $t4, .L0041FC84
/* 0041FB98 01608025 */   move  $s0, $t3
/* 0041FB9C 8F918AF4 */  lw     $s1, %got(rld_list)($gp)
/* 0041FBA0 8F888AF4 */  lw     $t0, %got(rld_list)($gp)
/* 0041FBA4 8E310000 */  lw    $s1, ($s1)
/* 0041FBA8 00000000 */  nop   
.L0041FBAC:
/* 0041FBAC 8D0E0004 */  lw    $t6, 4($t0)
/* 0041FBB0 02002825 */  move  $a1, $s0
/* 0041FBB4 020E082B */  sltu  $at, $s0, $t6
/* 0041FBB8 1420000C */  bnez  $at, .L0041FBEC
/* 0041FBBC 24060018 */   li    $a2, 24
/* 0041FBC0 8F848AF4 */  lw     $a0, %got(rld_list)($gp)
/* 0041FBC4 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 0041FBC8 02203825 */  move  $a3, $s1
/* 0041FBCC AFA00010 */  sw    $zero, 0x10($sp)
/* 0041FBD0 0320F809 */  jalr  $t9
/* 0041FBD4 24840004 */   addiu $a0, $a0, 4
/* 0041FBD8 8FBC0030 */  lw    $gp, 0x30($sp)
/* 0041FBDC 00408825 */  move  $s1, $v0
/* 0041FBE0 8F888AF4 */  lw     $t0, %got(rld_list)($gp)
/* 0041FBE4 00000000 */  nop   
/* 0041FBE8 AD020000 */  sw    $v0, ($t0)
.L0041FBEC:
/* 0041FBEC 8E580000 */  lw    $t8, ($s2)
/* 0041FBF0 8E8D0000 */  lw    $t5, ($s4)
/* 0041FBF4 00101080 */  sll   $v0, $s0, 2
/* 0041FBF8 00187880 */  sll   $t7, $t8, 2
/* 0041FBFC 00501023 */  subu  $v0, $v0, $s0
/* 0041FC00 01AFC821 */  addu  $t9, $t5, $t7
/* 0041FC04 8F290000 */  lw    $t1, ($t9)
/* 0041FC08 000210C0 */  sll   $v0, $v0, 3
/* 0041FC0C 02225021 */  addu  $t2, $s1, $v0
/* 0041FC10 AD490004 */  sw    $t1, 4($t2)
/* 0041FC14 8D0C0000 */  lw    $t4, ($t0)
/* 0041FC18 8E4B0000 */  lw    $t3, ($s2)
/* 0041FC1C 01827021 */  addu  $t6, $t4, $v0
/* 0041FC20 ADCB000C */  sw    $t3, 0xc($t6)
/* 0041FC24 8D180000 */  lw    $t8, ($t0)
/* 0041FC28 00000000 */  nop   
/* 0041FC2C 03022021 */  addu  $a0, $t8, $v0
/* 0041FC30 8C830008 */  lw    $v1, 8($a0)
/* 0041FC34 00000000 */  nop   
/* 0041FC38 14600007 */  bnez  $v1, .L0041FC58
/* 0041FC3C 00000000 */   nop   
/* 0041FC40 AC930008 */  sw    $s3, 8($a0)
/* 0041FC44 8E6D0020 */  lw    $t5, 0x20($s3)
/* 0041FC48 00000000 */  nop   
/* 0041FC4C 25AF0001 */  addiu $t7, $t5, 1
/* 0041FC50 10000005 */  b     .L0041FC68
/* 0041FC54 AE6F0020 */   sw    $t7, 0x20($s3)
.L0041FC58:
/* 0041FC58 8C790020 */  lw    $t9, 0x20($v1)
/* 0041FC5C 00000000 */  nop   
/* 0041FC60 27290001 */  addiu $t1, $t9, 1
/* 0041FC64 AC690020 */  sw    $t1, 0x20($v1)
.L0041FC68:
/* 0041FC68 8D110000 */  lw    $s1, ($t0)
/* 0041FC6C 00000000 */  nop   
/* 0041FC70 02225021 */  addu  $t2, $s1, $v0
/* 0041FC74 8D500000 */  lw    $s0, ($t2)
/* 0041FC78 00000000 */  nop   
/* 0041FC7C 1600FFCB */  bnez  $s0, .L0041FBAC
/* 0041FC80 00000000 */   nop   
.L0041FC84:
/* 0041FC84 8F8C8AE8 */  lw     $t4, %got(sexchange)($gp)
/* 0041FC88 8FAB0040 */  lw    $t3, 0x40($sp)
/* 0041FC8C 918C0000 */  lbu   $t4, ($t4)
/* 0041FC90 3C01FF00 */  lui   $at, 0xff00
/* 0041FC94 1180000D */  beqz  $t4, .L0041FCCC
/* 0041FC98 000B7600 */   sll   $t6, $t3, 0x18
/* 0041FC9C 01C1C024 */  and   $t8, $t6, $at
/* 0041FCA0 3C0100FF */  lui   $at, 0xff
/* 0041FCA4 000B6A00 */  sll   $t5, $t3, 8
/* 0041FCA8 01A17824 */  and   $t7, $t5, $at
/* 0041FCAC 000B4A03 */  sra   $t1, $t3, 8
/* 0041FCB0 312AFF00 */  andi  $t2, $t1, 0xff00
/* 0041FCB4 030FC825 */  or    $t9, $t8, $t7
/* 0041FCB8 000B7603 */  sra   $t6, $t3, 0x18
/* 0041FCBC 31CD00FF */  andi  $t5, $t6, 0xff
/* 0041FCC0 032A6025 */  or    $t4, $t9, $t2
/* 0041FCC4 018DC025 */  or    $t8, $t4, $t5
/* 0041FCC8 AFB80040 */  sw    $t8, 0x40($sp)
.L0041FCCC:
/* 0041FCCC 8E420000 */  lw    $v0, ($s2)
/* 0041FCD0 8F938AE0 */  lw     $s3, %got(memory)($gp)
/* 0041FCD4 00024080 */  sll   $t0, $v0, 2
/* 0041FCD8 8E8F0000 */  lw    $t7, ($s4)
/* 0041FCDC 01024023 */  subu  $t0, $t0, $v0
/* 0041FCE0 00084080 */  sll   $t0, $t0, 2
/* 0041FCE4 00024880 */  sll   $t1, $v0, 2
/* 0041FCE8 8E630000 */  lw    $v1, ($s3)
/* 0041FCEC 01024023 */  subu  $t0, $t0, $v0
/* 0041FCF0 01E9C821 */  addu  $t9, $t7, $t1
/* 0041FCF4 8F310000 */  lw    $s1, ($t9)
/* 0041FCF8 00084080 */  sll   $t0, $t0, 2
/* 0041FCFC 00688021 */  addu  $s0, $v1, $t0
/* 0041FD00 8E0B0004 */  lw    $t3, 4($s0)
/* 0041FD04 00115083 */  sra   $t2, $s1, 2
/* 0041FD08 000A2880 */  sll   $a1, $t2, 2
/* 0041FD0C 00AB082B */  sltu  $at, $a1, $t3
/* 0041FD10 1420001A */  bnez  $at, .L0041FD7C
/* 0041FD14 01408825 */   move  $s1, $t2
/* 0041FD18 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 0041FD1C 01032021 */  addu  $a0, $t0, $v1
/* 0041FD20 8E070000 */  lw    $a3, ($s0)
/* 0041FD24 AFA00010 */  sw    $zero, 0x10($sp)
/* 0041FD28 24840004 */  addiu $a0, $a0, 4
/* 0041FD2C 0320F809 */  jalr  $t9
/* 0041FD30 24060001 */   li    $a2, 1
/* 0041FD34 8E4C0000 */  lw    $t4, ($s2)
/* 0041FD38 8E6E0000 */  lw    $t6, ($s3)
/* 0041FD3C 000C6880 */  sll   $t5, $t4, 2
/* 0041FD40 01AC6823 */  subu  $t5, $t5, $t4
/* 0041FD44 000D6880 */  sll   $t5, $t5, 2
/* 0041FD48 01AC6823 */  subu  $t5, $t5, $t4
/* 0041FD4C 000D6880 */  sll   $t5, $t5, 2
/* 0041FD50 8FBC0030 */  lw    $gp, 0x30($sp)
/* 0041FD54 01CDC021 */  addu  $t8, $t6, $t5
/* 0041FD58 AF020000 */  sw    $v0, ($t8)
/* 0041FD5C 8E490000 */  lw    $t1, ($s2)
/* 0041FD60 8E6F0000 */  lw    $t7, ($s3)
/* 0041FD64 0009C880 */  sll   $t9, $t1, 2
/* 0041FD68 0329C823 */  subu  $t9, $t9, $t1
/* 0041FD6C 0019C880 */  sll   $t9, $t9, 2
/* 0041FD70 0329C823 */  subu  $t9, $t9, $t1
/* 0041FD74 0019C880 */  sll   $t9, $t9, 2
/* 0041FD78 01F98021 */  addu  $s0, $t7, $t9
.L0041FD7C:
/* 0041FD7C 8E0B0000 */  lw    $t3, ($s0)
/* 0041FD80 8FAA0040 */  lw    $t2, 0x40($sp)
/* 0041FD84 00116080 */  sll   $t4, $s1, 2
/* 0041FD88 8F8D8BC8 */  lw     $t5, %got(fromas0)($gp)
/* 0041FD8C 016C7021 */  addu  $t6, $t3, $t4
/* 0041FD90 ADCA0000 */  sw    $t2, ($t6)
/* 0041FD94 91AD0000 */  lbu   $t5, ($t5)
/* 0041FD98 8FA50050 */  lw    $a1, 0x50($sp)
/* 0041FD9C 15A00011 */  bnez  $t5, .L0041FDE4
/* 0041FDA0 00000000 */   nop   
/* 0041FDA4 04A0000F */  bltz  $a1, .L0041FDE4
/* 0041FDA8 24040005 */   li    $a0, 5
/* 0041FDAC 8E490000 */  lw    $t1, ($s2)
/* 0041FDB0 8E980000 */  lw    $t8, ($s4)
/* 0041FDB4 00097880 */  sll   $t7, $t1, 2
/* 0041FDB8 8F8B8B18 */  lw     $t3, %got(debugflag)($gp)
/* 0041FDBC 030FC821 */  addu  $t9, $t8, $t7
/* 0041FDC0 8F260000 */  lw    $a2, ($t9)
/* 0041FDC4 8F9983F4 */  lw    $t9, %call16(st_pseudo)($gp)
/* 0041FDC8 8D6B0000 */  lw    $t3, ($t3)
/* 0041FDCC 8FA7004C */  lw    $a3, 0x4c($sp)
/* 0041FDD0 AFA00010 */  sw    $zero, 0x10($sp)
/* 0041FDD4 0320F809 */  jalr  $t9
/* 0041FDD8 AFAB0014 */   sw    $t3, 0x14($sp)
/* 0041FDDC 8FBC0030 */  lw    $gp, 0x30($sp)
/* 0041FDE0 00000000 */  nop   
.L0041FDE4:
/* 0041FDE4 8E4A0000 */  lw    $t2, ($s2)
/* 0041FDE8 8E8C0000 */  lw    $t4, ($s4)
/* 0041FDEC 000A7080 */  sll   $t6, $t2, 2
/* 0041FDF0 018E1021 */  addu  $v0, $t4, $t6
/* 0041FDF4 8C4D0000 */  lw    $t5, ($v0)
/* 0041FDF8 00000000 */  nop   
/* 0041FDFC 25A90004 */  addiu $t1, $t5, 4
/* 0041FE00 AC490000 */  sw    $t1, ($v0)
/* 0041FE04 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0041FE08 8FB4002C */  lw    $s4, 0x2c($sp)
/* 0041FE0C 8FB30028 */  lw    $s3, 0x28($sp)
/* 0041FE10 8FB20024 */  lw    $s2, 0x24($sp)
/* 0041FE14 8FB10020 */  lw    $s1, 0x20($sp)
/* 0041FE18 8FB0001C */  lw    $s0, 0x1c($sp)
/* 0041FE1C 03E00008 */  jr    $ra
/* 0041FE20 27BD0040 */   addiu $sp, $sp, 0x40

    .type appendtextword, @function
    .size appendtextword, .-appendtextword
    .end appendtextword

    .type func_0041FE24, @function
func_0041FE24:
    # 00420E34 traverse_bb
/* 0041FE24 3C1C0FC1 */  .cpload $t9
/* 0041FE28 279CA43C */  
/* 0041FE2C 0399E021 */  
/* 0041FE30 27BDFED0 */  addiu $sp, $sp, -0x130
/* 0041FE34 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0041FE38 AFBC0038 */  sw    $gp, 0x38($sp)
/* 0041FE3C AFB50034 */  sw    $s5, 0x34($sp)
/* 0041FE40 AFB40030 */  sw    $s4, 0x30($sp)
/* 0041FE44 AFB3002C */  sw    $s3, 0x2c($sp)
/* 0041FE48 AFB20028 */  sw    $s2, 0x28($sp)
/* 0041FE4C AFB10024 */  sw    $s1, 0x24($sp)
/* 0041FE50 AFB00020 */  sw    $s0, 0x20($sp)
/* 0041FE54 AFA0011C */  sw    $zero, 0x11c($sp)
/* 0041FE58 AFA00118 */  sw    $zero, 0x118($sp)
/* 0041FE5C AFA0007C */  sw    $zero, 0x7c($sp)
/* 0041FE60 8C8E000C */  lw    $t6, 0xc($a0)
/* 0041FE64 8F818B40 */  lw     $at, %got(pinstruction)($gp)
/* 0041FE68 8F948AE4 */  lw     $s4, %got(currtextindex)($gp)
/* 0041FE6C 8F958AEC */  lw     $s5, %got(seg_ic)($gp)
/* 0041FE70 AC2E0000 */  sw    $t6, ($at)
/* 0041FE74 8E990000 */  lw    $t9, ($s4)
/* 0041FE78 8EB80000 */  lw    $t8, ($s5)
/* 0041FE7C AFAE0128 */  sw    $t6, 0x128($sp)
/* 0041FE80 00194880 */  sll   $t1, $t9, 2
/* 0041FE84 03095021 */  addu  $t2, $t8, $t1
/* 0041FE88 8D4B0000 */  lw    $t3, ($t2)
/* 0041FE8C 9482003C */  lhu   $v0, 0x3c($a0)
/* 0041FE90 00809025 */  move  $s2, $a0
/* 0041FE94 00009825 */  move  $s3, $zero
/* 0041FE98 24110001 */  li    $s1, 1
/* 0041FE9C 18400054 */  blez  $v0, .L0041FFF0
/* 0041FEA0 AC8B0054 */   sw    $t3, 0x54($a0)
/* 0041FEA4 8FB00128 */  lw    $s0, 0x128($sp)
/* 0041FEA8 24070028 */  li    $a3, 40
/* 0041FEAC 26100028 */  addiu $s0, $s0, 0x28
.L0041FEB0:
/* 0041FEB0 8E0C0000 */  lw    $t4, ($s0)
/* 0041FEB4 3C017FFF */  lui   $at, 0x7fff
/* 0041FEB8 3421FFFF */  ori   $at, $at, 0xffff
/* 0041FEBC 15810047 */  bne   $t4, $at, .L0041FFDC
/* 0041FEC0 00000000 */   nop   
/* 0041FEC4 8FAD0128 */  lw    $t5, 0x128($sp)
/* 0041FEC8 24010001 */  li    $at, 1
/* 0041FECC 00ED3021 */  addu  $a2, $a3, $t5
/* 0041FED0 8CC30010 */  lw    $v1, 0x10($a2)
/* 0041FED4 00000000 */  nop   
/* 0041FED8 1061000A */  beq   $v1, $at, .L0041FF04
/* 0041FEDC 00601025 */   move  $v0, $v1
/* 0041FEE0 24010002 */  li    $at, 2
/* 0041FEE4 10610027 */  beq   $v1, $at, .L0041FF84
/* 0041FEE8 2401000A */   li    $at, 10
/* 0041FEEC 10410005 */  beq   $v0, $at, .L0041FF04
/* 0041FEF0 24010014 */   li    $at, 20
/* 0041FEF4 10410029 */  beq   $v0, $at, .L0041FF9C
/* 0041FEF8 8FB9011C */   lw    $t9, 0x11c($sp)
/* 0041FEFC 1000002B */  b     .L0041FFAC
/* 0041FF00 2C610017 */   sltiu $at, $v1, 0x17
.L0041FF04:
/* 0041FF04 8E8F0000 */  lw    $t7, ($s4)
/* 0041FF08 8EAE0000 */  lw    $t6, ($s5)
/* 0041FF0C 000FC880 */  sll   $t9, $t7, 2
/* 0041FF10 01D9C021 */  addu  $t8, $t6, $t9
/* 0041FF14 8F040000 */  lw    $a0, ($t8)
/* 0041FF18 00000000 */  nop   
/* 0041FF1C 30890003 */  andi  $t1, $a0, 3
/* 0041FF20 11200012 */  beqz  $t1, .L0041FF6C
/* 0041FF24 00000000 */   nop   
/* 0041FF28 8F8480AC */  lw     $a0, %got(__iob)($gp)
/* 0041FF2C 8F85806C */  lw    $a1, %got(RO_10013D44)($gp)
/* 0041FF30 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 0041FF34 AFA60054 */  sw    $a2, 0x54($sp)
/* 0041FF38 AFA7004C */  sw    $a3, 0x4c($sp)
/* 0041FF3C 24840020 */  addiu $a0, $a0, 0x20
/* 0041FF40 0320F809 */  jalr  $t9
/* 0041FF44 24A53D44 */   addiu $a1, %lo(RO_10013D44) # addiu $a1, $a1, 0x3d44
/* 0041FF48 8E8B0000 */  lw    $t3, ($s4)
/* 0041FF4C 8EAA0000 */  lw    $t2, ($s5)
/* 0041FF50 000B6080 */  sll   $t4, $t3, 2
/* 0041FF54 014C6821 */  addu  $t5, $t2, $t4
/* 0041FF58 8DA40000 */  lw    $a0, ($t5)
/* 0041FF5C 8FBC0038 */  lw    $gp, 0x38($sp)
/* 0041FF60 8FA60054 */  lw    $a2, 0x54($sp)
/* 0041FF64 8FA7004C */  lw    $a3, 0x4c($sp)
/* 0041FF68 00000000 */  nop   
.L0041FF6C:
/* 0041FF6C 8F818BCC */  lw     $at, %got(currfunc_start)($gp)
/* 0041FF70 00000000 */  nop   
/* 0041FF74 AC240000 */  sw    $a0, ($at)
/* 0041FF78 8CC30010 */  lw    $v1, 0x10($a2)
/* 0041FF7C 1000000B */  b     .L0041FFAC
/* 0041FF80 2C610017 */   sltiu $at, $v1, 0x17
.L0041FF84:
/* 0041FF84 8FAF0118 */  lw    $t7, 0x118($sp)
/* 0041FF88 00000000 */  nop   
/* 0041FF8C 25EE0001 */  addiu $t6, $t7, 1
/* 0041FF90 10000005 */  b     .L0041FFA8
/* 0041FF94 AFAE0118 */   sw    $t6, 0x118($sp)
/* 0041FF98 8FB9011C */  lw    $t9, 0x11c($sp)
.L0041FF9C:
/* 0041FF9C 00000000 */  nop   
/* 0041FFA0 27380001 */  addiu $t8, $t9, 1
/* 0041FFA4 AFB8011C */  sw    $t8, 0x11c($sp)
.L0041FFA8:
/* 0041FFA8 2C610017 */  sltiu $at, $v1, 0x17
.L0041FFAC:
/* 0041FFAC 10200009 */  beqz  $at, .L0041FFD4
/* 0041FFB0 00C02025 */   move  $a0, $a2
/* 0041FFB4 8F99801C */  lw    $t9, %got(func_0041C3FC)($gp)
/* 0041FFB8 02202825 */  move  $a1, $s1
/* 0041FFBC 2739C3FC */  addiu $t9, %lo(func_0041C3FC) # addiu $t9, $t9, -0x3c04
/* 0041FFC0 0320F809 */  jalr  $t9
/* 0041FFC4 AFA7004C */   sw    $a3, 0x4c($sp)
/* 0041FFC8 8FBC0038 */  lw    $gp, 0x38($sp)
/* 0041FFCC 8FA7004C */  lw    $a3, 0x4c($sp)
/* 0041FFD0 00000000 */  nop   
.L0041FFD4:
/* 0041FFD4 9642003C */  lhu   $v0, 0x3c($s2)
/* 0041FFD8 00000000 */  nop   
.L0041FFDC:
/* 0041FFDC 26310001 */  addiu $s1, $s1, 1
/* 0041FFE0 0051082A */  slt   $at, $v0, $s1
/* 0041FFE4 24E70028 */  addiu $a3, $a3, 0x28
/* 0041FFE8 1020FFB1 */  beqz  $at, .L0041FEB0
/* 0041FFEC 26100028 */   addiu $s0, $s0, 0x28
.L0041FFF0:
/* 0041FFF0 8E8B0000 */  lw    $t3, ($s4)
/* 0041FFF4 8EA90000 */  lw    $t1, ($s5)
/* 0041FFF8 000B5080 */  sll   $t2, $t3, 2
/* 0041FFFC 012A6021 */  addu  $t4, $t1, $t2
/* 00420000 8D8D0000 */  lw    $t5, ($t4)
/* 00420004 8E510054 */  lw    $s1, 0x54($s2)
/* 00420008 00000000 */  nop   
/* 0042000C 022D082A */  slt   $at, $s1, $t5
/* 00420010 10200013 */  beqz  $at, .L00420060
/* 00420014 00000000 */   nop   
.L00420018:
/* 00420018 8F9983F4 */  lw    $t9, %call16(st_pseudo)($gp)
/* 0042001C 24040005 */  li    $a0, 5
/* 00420020 00002825 */  move  $a1, $zero
/* 00420024 02203025 */  move  $a2, $s1
/* 00420028 00003825 */  move  $a3, $zero
/* 0042002C AFA00010 */  sw    $zero, 0x10($sp)
/* 00420030 0320F809 */  jalr  $t9
/* 00420034 AFA00014 */   sw    $zero, 0x14($sp)
/* 00420038 8E8E0000 */  lw    $t6, ($s4)
/* 0042003C 8EAF0000 */  lw    $t7, ($s5)
/* 00420040 000EC880 */  sll   $t9, $t6, 2
/* 00420044 01F9C021 */  addu  $t8, $t7, $t9
/* 00420048 8F0B0000 */  lw    $t3, ($t8)
/* 0042004C 26310004 */  addiu $s1, $s1, 4
/* 00420050 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00420054 022B082A */  slt   $at, $s1, $t3
/* 00420058 1420FFEF */  bnez  $at, .L00420018
/* 0042005C 00000000 */   nop   
.L00420060:
/* 00420060 9649004E */  lhu   $t1, 0x4e($s2)
/* 00420064 00000000 */  nop   
/* 00420068 11200070 */  beqz  $t1, .L0042022C
/* 0042006C 00000000 */   nop   
/* 00420070 8F828B18 */  lw     $v0, %got(debugflag)($gp)
/* 00420074 24010003 */  li    $at, 3
/* 00420078 8C420000 */  lw    $v0, ($v0)
/* 0042007C 00000000 */  nop   
/* 00420080 10400003 */  beqz  $v0, .L00420090
/* 00420084 00000000 */   nop   
/* 00420088 14410068 */  bne   $v0, $at, .L0042022C
/* 0042008C 00000000 */   nop   
.L00420090:
/* 00420090 8F8A8B1C */  lw     $t2, %got(optflag)($gp)
/* 00420094 00000000 */  nop   
/* 00420098 8D4A0000 */  lw    $t2, ($t2)
/* 0042009C 00000000 */  nop   
/* 004200A0 19400062 */  blez  $t2, .L0042022C
/* 004200A4 00000000 */   nop   
/* 004200A8 8E4C0044 */  lw    $t4, 0x44($s2)
/* 004200AC 00000000 */  nop   
/* 004200B0 000C7480 */  sll   $t6, $t4, 0x12
/* 004200B4 05C1005D */  bgez  $t6, .L0042022C
/* 004200B8 00000000 */   nop   
/* 004200BC 8F8F8B94 */  lw     $t7, %got(opts)($gp)
/* 004200C0 00000000 */  nop   
/* 004200C4 91EF0003 */  lbu   $t7, 3($t7)
/* 004200C8 00000000 */  nop   
/* 004200CC 11E00057 */  beqz  $t7, .L0042022C
/* 004200D0 00000000 */   nop   
/* 004200D4 8F828088 */  lw    $v0, %got(B_1002331C)($gp)
/* 004200D8 00000000 */  nop   
/* 004200DC 8C42331C */  lw    $v0, %lo(B_1002331C)($v0)
/* 004200E0 00000000 */  nop   
/* 004200E4 10400051 */  beqz  $v0, .L0042022C
/* 004200E8 00000000 */   nop   
/* 004200EC 8C590044 */  lw    $t9, 0x44($v0)
/* 004200F0 00000000 */  nop   
/* 004200F4 00195D80 */  sll   $t3, $t9, 0x16
/* 004200F8 0561004C */  bgez  $t3, .L0042022C
/* 004200FC 00000000 */   nop   
/* 00420100 8E490050 */  lw    $t1, 0x50($s2)
/* 00420104 8F9983A0 */  lw    $t9, %call16(eligible)($gp)
/* 00420108 8D240000 */  lw    $a0, ($t1)
/* 0042010C 0320F809 */  jalr  $t9
/* 00420110 AFA40000 */   sw    $a0, ($sp)
/* 00420114 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00420118 10400044 */  beqz  $v0, .L0042022C
/* 0042011C 00000000 */   nop   
/* 00420120 8E4D0050 */  lw    $t5, 0x50($s2)
/* 00420124 8F9983A4 */  lw    $t9, %call16(cannot_trap)($gp)
/* 00420128 8DA40000 */  lw    $a0, ($t5)
/* 0042012C 0320F809 */  jalr  $t9
/* 00420130 AFA40000 */   sw    $a0, ($sp)
/* 00420134 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00420138 1040003C */  beqz  $v0, .L0042022C
/* 0042013C 00000000 */   nop   
/* 00420140 8E590050 */  lw    $t9, 0x50($s2)
/* 00420144 02402825 */  move  $a1, $s2
/* 00420148 8F240000 */  lw    $a0, ($t9)
/* 0042014C 8F99801C */  lw    $t9, %got(func_0041F89C)($gp)
/* 00420150 AFA40000 */  sw    $a0, ($sp)
/* 00420154 2739F89C */  addiu $t9, %lo(func_0041F89C) # addiu $t9, $t9, -0x764
/* 00420158 0320F809 */  jalr  $t9
/* 0042015C 00000000 */   nop   
/* 00420160 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00420164 10400031 */  beqz  $v0, .L0042022C
/* 00420168 00000000 */   nop   
/* 0042016C 8F828088 */  lw    $v0, %got(B_1002331C)($gp)
/* 00420170 8E890000 */  lw    $t1, ($s4)
/* 00420174 8C42331C */  lw    $v0, %lo(B_1002331C)($v0)
/* 00420178 8EAA0000 */  lw    $t2, ($s5)
/* 0042017C 944D004E */  lhu   $t5, 0x4e($v0)
/* 00420180 00096080 */  sll   $t4, $t1, 2
/* 00420184 8C4E0054 */  lw    $t6, 0x54($v0)
/* 00420188 014C1821 */  addu  $v1, $t2, $t4
/* 0042018C 8C640000 */  lw    $a0, ($v1)
/* 00420190 000D7880 */  sll   $t7, $t5, 2
/* 00420194 01CFC021 */  addu  $t8, $t6, $t7
/* 00420198 17040024 */  bne   $t8, $a0, .L0042022C
/* 0042019C 2499FFFC */   addiu $t9, $a0, -4
/* 004201A0 AC790000 */  sw    $t9, ($v1)
/* 004201A4 8E890000 */  lw    $t1, ($s4)
/* 004201A8 8EAB0000 */  lw    $t3, ($s5)
/* 004201AC 00095080 */  sll   $t2, $t1, 2
/* 004201B0 016A6021 */  addu  $t4, $t3, $t2
/* 004201B4 8D8D0000 */  lw    $t5, ($t4)
/* 004201B8 8F828088 */  lw    $v0, %got(B_1002331C)($gp)
/* 004201BC 8F818BD0 */  lw     $at, %got(deferred_line_no)($gp)
/* 004201C0 AE4D0054 */  sw    $t5, 0x54($s2)
/* 004201C4 8C42331C */  lw    $v0, %lo(B_1002331C)($v0)
/* 004201C8 240EFFFF */  li    $t6, -1
/* 004201CC AC2E0000 */  sw    $t6, ($at)
/* 004201D0 944F004E */  lhu   $t7, 0x4e($v0)
/* 004201D4 8F8B8B54 */  lw     $t3, %got(reorder)($gp)
/* 004201D8 25F8FFFF */  addiu $t8, $t7, -1
/* 004201DC A458004E */  sh    $t8, 0x4e($v0)
/* 004201E0 8F828088 */  lw    $v0, %got(B_1002331C)($gp)
/* 004201E4 00000000 */  nop   
/* 004201E8 8C42331C */  lw    $v0, %lo(B_1002331C)($v0)
/* 004201EC 00000000 */  nop   
/* 004201F0 90590046 */  lbu   $t9, 0x46($v0)
/* 004201F4 00000000 */  nop   
/* 004201F8 3329FFFE */  andi  $t1, $t9, 0xfffe
/* 004201FC A0490046 */  sb    $t1, 0x46($v0)
/* 00420200 916B0000 */  lbu   $t3, ($t3)
/* 00420204 00000000 */  nop   
/* 00420208 11600008 */  beqz  $t3, .L0042022C
/* 0042020C 00000000 */   nop   
/* 00420210 8F84806C */  lw    $a0, %got(RO_10013D70)($gp)
/* 00420214 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 00420218 24843D70 */  addiu $a0, %lo(RO_10013D70) # addiu $a0, $a0, 0x3d70
/* 0042021C 0320F809 */  jalr  $t9
/* 00420220 00000000 */   nop   
/* 00420224 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00420228 00000000 */  nop   
.L0042022C:
/* 0042022C 964A003C */  lhu   $t2, 0x3c($s2)
/* 00420230 8FB00128 */  lw    $s0, 0x128($sp)
/* 00420234 1940002C */  blez  $t2, .L004202E8
/* 00420238 24110001 */   li    $s1, 1
/* 0042023C 24070028 */  li    $a3, 40
/* 00420240 26100028 */  addiu $s0, $s0, 0x28
.L00420244:
/* 00420244 8E0C0000 */  lw    $t4, ($s0)
/* 00420248 3C017FFF */  lui   $at, 0x7fff
/* 0042024C 3421FFFF */  ori   $at, $at, 0xffff
/* 00420250 15810025 */  bne   $t4, $at, .L004202E8
/* 00420254 02202825 */   move  $a1, $s1
/* 00420258 8E020010 */  lw    $v0, 0x10($s0)
/* 0042025C 2401001A */  li    $at, 26
/* 00420260 10410009 */  beq   $v0, $at, .L00420288
/* 00420264 24010019 */   li    $at, 25
/* 00420268 10410007 */  beq   $v0, $at, .L00420288
/* 0042026C 24010017 */   li    $at, 23
/* 00420270 10410005 */  beq   $v0, $at, .L00420288
/* 00420274 24010018 */   li    $at, 24
/* 00420278 10410003 */  beq   $v0, $at, .L00420288
/* 0042027C 24010014 */   li    $at, 20
/* 00420280 14410013 */  bne   $v0, $at, .L004202D0
/* 00420284 00000000 */   nop   
.L00420288:
/* 00420288 8F99801C */  lw    $t9, %got(func_0041C3FC)($gp)
/* 0042028C 8FAD0128 */  lw    $t5, 0x128($sp)
/* 00420290 2739C3FC */  addiu $t9, %lo(func_0041C3FC) # addiu $t9, $t9, -0x3c04
/* 00420294 AFA7004C */  sw    $a3, 0x4c($sp)
/* 00420298 0320F809 */  jalr  $t9
/* 0042029C 00ED2021 */   addu  $a0, $a3, $t5
/* 004202A0 8FBC0038 */  lw    $gp, 0x38($sp)
/* 004202A4 8FA7004C */  lw    $a3, 0x4c($sp)
/* 004202A8 8F828088 */  lw    $v0, %got(B_1002331C)($gp)
/* 004202AC 00000000 */  nop   
/* 004202B0 8C42331C */  lw    $v0, %lo(B_1002331C)($v0)
/* 004202B4 00000000 */  nop   
/* 004202B8 10400005 */  beqz  $v0, .L004202D0
/* 004202BC 00000000 */   nop   
/* 004202C0 904E0046 */  lbu   $t6, 0x46($v0)
/* 004202C4 00000000 */  nop   
/* 004202C8 31CFFFFD */  andi  $t7, $t6, 0xfffd
/* 004202CC A04F0046 */  sb    $t7, 0x46($v0)
.L004202D0:
/* 004202D0 9658003C */  lhu   $t8, 0x3c($s2)
/* 004202D4 26310001 */  addiu $s1, $s1, 1
/* 004202D8 0311082A */  slt   $at, $t8, $s1
/* 004202DC 24E70028 */  addiu $a3, $a3, 0x28
/* 004202E0 1020FFD8 */  beqz  $at, .L00420244
/* 004202E4 26100028 */   addiu $s0, $s0, 0x28
.L004202E8:
/* 004202E8 9659004E */  lhu   $t9, 0x4e($s2)
/* 004202EC 00008825 */  move  $s1, $zero
/* 004202F0 1B20016C */  blez  $t9, .L004208A4
/* 004202F4 00008025 */   move  $s0, $zero
.L004202F8:
/* 004202F8 8F898BD4 */  lw     $t1, %got(dwalign)($gp)
/* 004202FC 00000000 */  nop   
/* 00420300 91290000 */  lbu   $t1, ($t1)
/* 00420304 00000000 */  nop   
/* 00420308 11200072 */  beqz  $t1, .L004204D4
/* 0042030C 00000000 */   nop   
/* 00420310 8E8A0000 */  lw    $t2, ($s4)
/* 00420314 8EAB0000 */  lw    $t3, ($s5)
/* 00420318 000A6080 */  sll   $t4, $t2, 2
/* 0042031C 016C6821 */  addu  $t5, $t3, $t4
/* 00420320 8DAE0000 */  lw    $t6, ($t5)
/* 00420324 2401000C */  li    $at, 12
/* 00420328 31CF000F */  andi  $t7, $t6, 0xf
/* 0042032C 15E10069 */  bne   $t7, $at, .L004204D4
/* 00420330 00000000 */   nop   
/* 00420334 8E580050 */  lw    $t8, 0x50($s2)
/* 00420338 00000000 */  nop   
/* 0042033C 0310C821 */  addu  $t9, $t8, $s0
/* 00420340 8F240000 */  lw    $a0, ($t9)
/* 00420344 8F99801C */  lw    $t9, %got(func_0041C134)($gp)
/* 00420348 AFA40000 */  sw    $a0, ($sp)
/* 0042034C 2739C134 */  addiu $t9, %lo(func_0041C134) # addiu $t9, $t9, -0x3ecc
/* 00420350 0320F809 */  jalr  $t9
/* 00420354 00000000 */   nop   
/* 00420358 8FBC0038 */  lw    $gp, 0x38($sp)
/* 0042035C 1040005D */  beqz  $v0, .L004204D4
/* 00420360 27A50070 */   addiu $a1, $sp, 0x70
/* 00420364 8E4B0050 */  lw    $t3, 0x50($s2)
/* 00420368 8F99839C */  lw    $t9, %call16(defuse)($gp)
/* 0042036C 01706021 */  addu  $t4, $t3, $s0
/* 00420370 8D840000 */  lw    $a0, ($t4)
/* 00420374 27A60064 */  addiu $a2, $sp, 0x64
/* 00420378 0320F809 */  jalr  $t9
/* 0042037C AFA40000 */   sw    $a0, ($sp)
/* 00420380 8FAF0064 */  lw    $t7, 0x64($sp)
/* 00420384 8FB80070 */  lw    $t8, 0x70($sp)
/* 00420388 8FBC0038 */  lw    $gp, 0x38($sp)
/* 0042038C 2A210002 */  slti  $at, $s1, 2
/* 00420390 01F84825 */  or    $t1, $t7, $t8
/* 00420394 14200022 */  bnez  $at, .L00420420
/* 00420398 AFA90064 */   sw    $t1, 0x64($sp)
/* 0042039C 8E590050 */  lw    $t9, 0x50($s2)
/* 004203A0 00000000 */  nop   
/* 004203A4 03305021 */  addu  $t2, $t9, $s0
/* 004203A8 8F99801C */  lw    $t9, %got(func_0041F998)($gp)
/* 004203AC 8D44FFE8 */  lw    $a0, -0x18($t2)
/* 004203B0 2739F998 */  addiu $t9, %lo(func_0041F998) # addiu $t9, $t9, -0x668
/* 004203B4 0320F809 */  jalr  $t9
/* 004203B8 AFA40000 */   sw    $a0, ($sp)
/* 004203BC 8FBC0038 */  lw    $gp, 0x38($sp)
/* 004203C0 10400006 */  beqz  $v0, .L004203DC
/* 004203C4 3C0E8000 */   lui   $t6, 0x8000
/* 004203C8 8FAC0064 */  lw    $t4, 0x64($sp)
/* 004203CC 004E7806 */  srlv  $t7, $t6, $v0
/* 004203D0 018FC024 */  and   $t8, $t4, $t7
/* 004203D4 17000012 */  bnez  $t8, .L00420420
/* 004203D8 00000000 */   nop   
.L004203DC:
/* 004203DC 8E490050 */  lw    $t1, 0x50($s2)
/* 004203E0 00000000 */  nop   
/* 004203E4 0130C821 */  addu  $t9, $t1, $s0
/* 004203E8 8F24FFD0 */  lw    $a0, -0x30($t9)
/* 004203EC 8F99801C */  lw    $t9, %got(func_0041F998)($gp)
/* 004203F0 AFA40000 */  sw    $a0, ($sp)
/* 004203F4 2739F998 */  addiu $t9, %lo(func_0041F998) # addiu $t9, $t9, -0x668
/* 004203F8 0320F809 */  jalr  $t9
/* 004203FC 00000000 */   nop   
/* 00420400 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00420404 10400012 */  beqz  $v0, .L00420450
/* 00420408 3C0E8000 */   lui   $t6, 0x8000
/* 0042040C 8FAD0064 */  lw    $t5, 0x64($sp)
/* 00420410 004E6006 */  srlv  $t4, $t6, $v0
/* 00420414 01AC7824 */  and   $t7, $t5, $t4
/* 00420418 11E0000E */  beqz  $t7, .L00420454
/* 0042041C 2A210002 */   slti  $at, $s1, 2
.L00420420:
/* 00420420 8F9982CC */  lw    $t9, %call16(appendtextword)($gp)
/* 00420424 00002025 */  move  $a0, $zero
/* 00420428 00002825 */  move  $a1, $zero
/* 0042042C 00003025 */  move  $a2, $zero
/* 00420430 00003825 */  move  $a3, $zero
/* 00420434 0320F809 */  jalr  $t9
/* 00420438 AFA00010 */   sw    $zero, 0x10($sp)
/* 0042043C 92580046 */  lbu   $t8, 0x46($s2)
/* 00420440 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00420444 3309FFF7 */  andi  $t1, $t8, 0xfff7
/* 00420448 10000022 */  b     .L004204D4
/* 0042044C A2490046 */   sb    $t1, 0x46($s2)
.L00420450:
/* 00420450 2A210002 */  slti  $at, $s1, 2
.L00420454:
/* 00420454 1420001F */  bnez  $at, .L004204D4
/* 00420458 00000000 */   nop   
/* 0042045C 8E4B0050 */  lw    $t3, 0x50($s2)
/* 00420460 2401001A */  li    $at, 26
/* 00420464 01701021 */  addu  $v0, $t3, $s0
/* 00420468 8C43FFE8 */  lw    $v1, -0x18($v0)
/* 0042046C 00000000 */  nop   
/* 00420470 0003CE82 */  srl   $t9, $v1, 0x1a
/* 00420474 17200017 */  bnez  $t9, .L004204D4
/* 00420478 3064003F */   andi  $a0, $v1, 0x3f
/* 0042047C 10810003 */  beq   $a0, $at, .L0042048C
/* 00420480 2401001B */   li    $at, 27
/* 00420484 14810013 */  bne   $a0, $at, .L004204D4
/* 00420488 00000000 */   nop   
.L0042048C:
/* 0042048C 8F99801C */  lw    $t9, %got(func_0041F998)($gp)
/* 00420490 8C44FFD0 */  lw    $a0, -0x30($v0)
/* 00420494 2739F998 */  addiu $t9, %lo(func_0041F998) # addiu $t9, $t9, -0x668
/* 00420498 0320F809 */  jalr  $t9
/* 0042049C AFA40000 */   sw    $a0, ($sp)
/* 004204A0 8FBC0038 */  lw    $gp, 0x38($sp)
/* 004204A4 1040000B */  beqz  $v0, .L004204D4
/* 004204A8 00002025 */   move  $a0, $zero
/* 004204AC 8F9982CC */  lw    $t9, %call16(appendtextword)($gp)
/* 004204B0 00002825 */  move  $a1, $zero
/* 004204B4 00003025 */  move  $a2, $zero
/* 004204B8 00003825 */  move  $a3, $zero
/* 004204BC 0320F809 */  jalr  $t9
/* 004204C0 AFA00010 */   sw    $zero, 0x10($sp)
/* 004204C4 924D0046 */  lbu   $t5, 0x46($s2)
/* 004204C8 8FBC0038 */  lw    $gp, 0x38($sp)
/* 004204CC 31ACFFF7 */  andi  $t4, $t5, 0xfff7
/* 004204D0 A24C0046 */  sb    $t4, 0x46($s2)
.L004204D4:
/* 004204D4 8F8F8BD8 */  lw     $t7, %got(tfp_rev10)($gp)
/* 004204D8 00000000 */  nop   
/* 004204DC 91EF0000 */  lbu   $t7, ($t7)
/* 004204E0 00000000 */  nop   
/* 004204E4 11E00029 */  beqz  $t7, .L0042058C
/* 004204E8 00000000 */   nop   
/* 004204EC 8E580050 */  lw    $t8, 0x50($s2)
/* 004204F0 8F99801C */  lw    $t9, %got(func_0041C134)($gp)
/* 004204F4 03104821 */  addu  $t1, $t8, $s0
/* 004204F8 8D240000 */  lw    $a0, ($t1)
/* 004204FC 2739C134 */  addiu $t9, %lo(func_0041C134) # addiu $t9, $t9, -0x3ecc
/* 00420500 0320F809 */  jalr  $t9
/* 00420504 AFA40000 */   sw    $a0, ($sp)
/* 00420508 8FBC0038 */  lw    $gp, 0x38($sp)
/* 0042050C 1040001F */  beqz  $v0, .L0042058C
/* 00420510 00000000 */   nop   
/* 00420514 8E8E0000 */  lw    $t6, ($s4)
/* 00420518 8EAA0000 */  lw    $t2, ($s5)
/* 0042051C 000E6880 */  sll   $t5, $t6, 2
/* 00420520 014D6021 */  addu  $t4, $t2, $t5
/* 00420524 8D8F0000 */  lw    $t7, ($t4)
/* 00420528 00002025 */  move  $a0, $zero
/* 0042052C 31F8000F */  andi  $t8, $t7, 0xf
/* 00420530 17000016 */  bnez  $t8, .L0042058C
/* 00420534 00002825 */   move  $a1, $zero
/* 00420538 8F9982CC */  lw    $t9, %call16(appendtextword)($gp)
/* 0042053C 00135880 */  sll   $t3, $s3, 2
/* 00420540 27A900D4 */  addiu $t1, $sp, 0xd4
/* 00420544 01691021 */  addu  $v0, $t3, $t1
/* 00420548 AFA20054 */  sw    $v0, 0x54($sp)
/* 0042054C 00003025 */  move  $a2, $zero
/* 00420550 00003825 */  move  $a3, $zero
/* 00420554 0320F809 */  jalr  $t9
/* 00420558 AFA00010 */   sw    $zero, 0x10($sp)
/* 0042055C 92590046 */  lbu   $t9, 0x46($s2)
/* 00420560 8FA20054 */  lw    $v0, 0x54($sp)
/* 00420564 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00420568 332EFFF7 */  andi  $t6, $t9, 0xfff7
/* 0042056C A24E0046 */  sb    $t6, 0x46($s2)
/* 00420570 8E8D0000 */  lw    $t5, ($s4)
/* 00420574 8EAA0000 */  lw    $t2, ($s5)
/* 00420578 000D6080 */  sll   $t4, $t5, 2
/* 0042057C 014C7821 */  addu  $t7, $t2, $t4
/* 00420580 8DF80000 */  lw    $t8, ($t7)
/* 00420584 26730001 */  addiu $s3, $s3, 1
/* 00420588 AC580000 */  sw    $t8, ($v0)
.L0042058C:
/* 0042058C 8F8B8BDC */  lw     $t3, %got(r4300_mul)($gp)
/* 00420590 00000000 */  nop   
/* 00420594 916B0000 */  lbu   $t3, ($t3)
/* 00420598 00000000 */  nop   
/* 0042059C 1160004C */  beqz  $t3, .L004206D0
/* 004205A0 00000000 */   nop   
/* 004205A4 1A20004A */  blez  $s1, .L004206D0
/* 004205A8 00000000 */   nop   
/* 004205AC 8E490050 */  lw    $t1, 0x50($s2)
/* 004205B0 00000000 */  nop   
/* 004205B4 0130C821 */  addu  $t9, $t1, $s0
/* 004205B8 8F240000 */  lw    $a0, ($t9)
/* 004205BC 8F99801C */  lw    $t9, %got(func_0041C1A4)($gp)
/* 004205C0 AFA40000 */  sw    $a0, ($sp)
/* 004205C4 2739C1A4 */  addiu $t9, %lo(func_0041C1A4) # addiu $t9, $t9, -0x3e5c
/* 004205C8 0320F809 */  jalr  $t9
/* 004205CC 00000000 */   nop   
/* 004205D0 8FBC0038 */  lw    $gp, 0x38($sp)
/* 004205D4 10400024 */  beqz  $v0, .L00420668
/* 004205D8 00000000 */   nop   
/* 004205DC 8E4A0050 */  lw    $t2, 0x50($s2)
/* 004205E0 24010011 */  li    $at, 17
/* 004205E4 01506021 */  addu  $t4, $t2, $s0
/* 004205E8 8D83FFE8 */  lw    $v1, -0x18($t4)
/* 004205EC 00000000 */  nop   
/* 004205F0 00037E82 */  srl   $t7, $v1, 0x1a
/* 004205F4 15E1001C */  bne   $t7, $at, .L00420668
/* 004205F8 3078003F */   andi  $t8, $v1, 0x3f
/* 004205FC 24010002 */  li    $at, 2
/* 00420600 17010019 */  bne   $t8, $at, .L00420668
/* 00420604 00000000 */   nop   
/* 00420608 8E4B0044 */  lw    $t3, 0x44($s2)
/* 0042060C 00002025 */  move  $a0, $zero
/* 00420610 000B7480 */  sll   $t6, $t3, 0x12
/* 00420614 05C10009 */  bgez  $t6, .L0042063C
/* 00420618 00002825 */   move  $a1, $zero
/* 0042061C 8F9982CC */  lw    $t9, %call16(appendtextword)($gp)
/* 00420620 00003025 */  move  $a2, $zero
/* 00420624 00003825 */  move  $a3, $zero
/* 00420628 0320F809 */  jalr  $t9
/* 0042062C AFA00010 */   sw    $zero, 0x10($sp)
/* 00420630 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00420634 10000009 */  b     .L0042065C
/* 00420638 92590046 */   lbu   $t9, 0x46($s2)
.L0042063C:
/* 0042063C 8F84806C */  lw    $a0, %got(RO_10013D88)($gp)
/* 00420640 8F998674 */  lw    $t9, %call16(postcerror)($gp)
/* 00420644 24050002 */  li    $a1, 2
/* 00420648 0320F809 */  jalr  $t9
/* 0042064C 24843D88 */   addiu $a0, %lo(RO_10013D88) # addiu $a0, $a0, 0x3d88
/* 00420650 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00420654 00000000 */  nop   
/* 00420658 92590046 */  lbu   $t9, 0x46($s2)
.L0042065C:
/* 0042065C 00000000 */  nop   
/* 00420660 332DFFF7 */  andi  $t5, $t9, 0xfff7
/* 00420664 A24D0046 */  sb    $t5, 0x46($s2)
.L00420668:
/* 00420668 8E4A0050 */  lw    $t2, 0x50($s2)
/* 0042066C 24010011 */  li    $at, 17
/* 00420670 01501021 */  addu  $v0, $t2, $s0
/* 00420674 8C430000 */  lw    $v1, ($v0)
/* 00420678 00000000 */  nop   
/* 0042067C 00036682 */  srl   $t4, $v1, 0x1a
/* 00420680 15810013 */  bne   $t4, $at, .L004206D0
/* 00420684 306F003F */   andi  $t7, $v1, 0x3f
/* 00420688 24010002 */  li    $at, 2
/* 0042068C 15E10010 */  bne   $t7, $at, .L004206D0
/* 00420690 00000000 */   nop   
/* 00420694 8F99801C */  lw    $t9, %got(func_0041C134)($gp)
/* 00420698 8C44FFE8 */  lw    $a0, -0x18($v0)
/* 0042069C 2739C134 */  addiu $t9, %lo(func_0041C134) # addiu $t9, $t9, -0x3ecc
/* 004206A0 0320F809 */  jalr  $t9
/* 004206A4 AFA40000 */   sw    $a0, ($sp)
/* 004206A8 8FBC0038 */  lw    $gp, 0x38($sp)
/* 004206AC 10400008 */  beqz  $v0, .L004206D0
/* 004206B0 00000000 */   nop   
/* 004206B4 8F84806C */  lw    $a0, %got(RO_10013DE0)($gp)
/* 004206B8 8F998674 */  lw    $t9, %call16(postcerror)($gp)
/* 004206BC 24050002 */  li    $a1, 2
/* 004206C0 0320F809 */  jalr  $t9
/* 004206C4 24843DE0 */   addiu $a0, %lo(RO_10013DE0) # addiu $a0, $a0, 0x3de0
/* 004206C8 8FBC0038 */  lw    $gp, 0x38($sp)
/* 004206CC 00000000 */  nop   
.L004206D0:
/* 004206D0 8E490050 */  lw    $t1, 0x50($s2)
/* 004206D4 8F9982CC */  lw    $t9, %call16(appendtextword)($gp)
/* 004206D8 01301021 */  addu  $v0, $t1, $s0
/* 004206DC 8C4E0010 */  lw    $t6, 0x10($v0)
/* 004206E0 8C440000 */  lw    $a0, ($v0)
/* 004206E4 8C450004 */  lw    $a1, 4($v0)
/* 004206E8 8C460008 */  lw    $a2, 8($v0)
/* 004206EC 8C47000C */  lw    $a3, 0xc($v0)
/* 004206F0 0320F809 */  jalr  $t9
/* 004206F4 AFAE0010 */   sw    $t6, 0x10($sp)
/* 004206F8 8FBC0038 */  lw    $gp, 0x38($sp)
/* 004206FC 00000000 */  nop   
/* 00420700 8F998BD8 */  lw     $t9, %got(tfp_rev10)($gp)
/* 00420704 00000000 */  nop   
/* 00420708 93390000 */  lbu   $t9, ($t9)
/* 0042070C 00000000 */  nop   
/* 00420710 13200046 */  beqz  $t9, .L0042082C
/* 00420714 00000000 */   nop   
/* 00420718 8E4D0050 */  lw    $t5, 0x50($s2)
/* 0042071C 8F99801C */  lw    $t9, %got(func_0041C134)($gp)
/* 00420720 01B05021 */  addu  $t2, $t5, $s0
/* 00420724 8D440000 */  lw    $a0, ($t2)
/* 00420728 2739C134 */  addiu $t9, %lo(func_0041C134) # addiu $t9, $t9, -0x3ecc
/* 0042072C 0320F809 */  jalr  $t9
/* 00420730 AFA40000 */   sw    $a0, ($sp)
/* 00420734 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00420738 1040003C */  beqz  $v0, .L0042082C
/* 0042073C 27AD00A8 */   addiu $t5, $sp, 0xa8
/* 00420740 8E850000 */  lw    $a1, ($s4)
/* 00420744 8EAB0000 */  lw    $t3, ($s5)
/* 00420748 00054880 */  sll   $t1, $a1, 2
/* 0042074C 8FA2007C */  lw    $v0, 0x7c($sp)
/* 00420750 01691821 */  addu  $v1, $t3, $t1
/* 00420754 8C6E0000 */  lw    $t6, ($v1)
/* 00420758 00057880 */  sll   $t7, $a1, 2
/* 0042075C 0002C080 */  sll   $t8, $v0, 2
/* 00420760 8F8A8AE0 */  lw     $t2, %got(memory)($gp)
/* 00420764 030D6021 */  addu  $t4, $t8, $t5
/* 00420768 01E57823 */  subu  $t7, $t7, $a1
/* 0042076C 25D9FFFC */  addiu $t9, $t6, -4
/* 00420770 AD990000 */  sw    $t9, ($t4)
/* 00420774 000F7880 */  sll   $t7, $t7, 2
/* 00420778 8D4A0000 */  lw    $t2, ($t2)
/* 0042077C 01E57823 */  subu  $t7, $t7, $a1
/* 00420780 8C690000 */  lw    $t1, ($v1)
/* 00420784 03001025 */  move  $v0, $t8
/* 00420788 000F7880 */  sll   $t7, $t7, 2
/* 0042078C 014FC021 */  addu  $t8, $t2, $t7
/* 00420790 8F0B0000 */  lw    $t3, ($t8)
/* 00420794 252EFFFC */  addiu $t6, $t1, -4
/* 00420798 05C10003 */  bgez  $t6, .L004207A8
/* 0042079C 000E6883 */   sra   $t5, $t6, 2
/* 004207A0 25C10003 */  addiu $at, $t6, 3
/* 004207A4 00016883 */  sra   $t5, $at, 2
.L004207A8:
/* 004207A8 8F988AE8 */  lw     $t8, %got(sexchange)($gp)
/* 004207AC 000DC880 */  sll   $t9, $t5, 2
/* 004207B0 01796021 */  addu  $t4, $t3, $t9
/* 004207B4 8D8A0000 */  lw    $t2, ($t4)
/* 004207B8 93180000 */  lbu   $t8, ($t8)
/* 004207BC 27AF0080 */  addiu $t7, $sp, 0x80
/* 004207C0 004F2021 */  addu  $a0, $v0, $t7
/* 004207C4 13000010 */  beqz  $t8, .L00420808
/* 004207C8 AFAA0120 */   sw    $t2, 0x120($sp)
/* 004207CC 000A7600 */  sll   $t6, $t2, 0x18
/* 004207D0 3C01FF00 */  lui   $at, 0xff00
/* 004207D4 01C16824 */  and   $t5, $t6, $at
/* 004207D8 000A5A00 */  sll   $t3, $t2, 8
/* 004207DC 3C0100FF */  lui   $at, 0xff
/* 004207E0 01404825 */  move  $t1, $t2
/* 004207E4 000A5202 */  srl   $t2, $t2, 8
/* 004207E8 0161C824 */  and   $t9, $t3, $at
/* 004207EC 01B96025 */  or    $t4, $t5, $t9
/* 004207F0 314FFF00 */  andi  $t7, $t2, 0xff00
/* 004207F4 00097602 */  srl   $t6, $t1, 0x18
/* 004207F8 31CB00FF */  andi  $t3, $t6, 0xff
/* 004207FC 018FC025 */  or    $t8, $t4, $t7
/* 00420800 030B6825 */  or    $t5, $t8, $t3
/* 00420804 AFAD0120 */  sw    $t5, 0x120($sp)
.L00420808:
/* 00420808 87AA0122 */  lh    $t2, 0x122($sp)
/* 0042080C 8C790000 */  lw    $t9, ($v1)
/* 00420810 000A6080 */  sll   $t4, $t2, 2
/* 00420814 032C7821 */  addu  $t7, $t9, $t4
/* 00420818 AC8F0000 */  sw    $t7, ($a0)
/* 0042081C 8FA9007C */  lw    $t1, 0x7c($sp)
/* 00420820 00000000 */  nop   
/* 00420824 252E0001 */  addiu $t6, $t1, 1
/* 00420828 AFAE007C */  sw    $t6, 0x7c($sp)
.L0042082C:
/* 0042082C 8E580050 */  lw    $t8, 0x50($s2)
/* 00420830 8F99839C */  lw    $t9, %call16(defuse)($gp)
/* 00420834 03105821 */  addu  $t3, $t8, $s0
/* 00420838 8D640000 */  lw    $a0, ($t3)
/* 0042083C 27A50108 */  addiu $a1, $sp, 0x108
/* 00420840 27A600FC */  addiu $a2, $sp, 0xfc
/* 00420844 0320F809 */  jalr  $t9
/* 00420848 AFA40000 */   sw    $a0, ($sp)
/* 0042084C 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00420850 8FAC0108 */  lw    $t4, 0x108($sp)
/* 00420854 8F998BE0 */  lw     $t9, %got(gprmask)($gp)
/* 00420858 8FA900FC */  lw    $t1, 0xfc($sp)
/* 0042085C 8F390000 */  lw    $t9, ($t9)
/* 00420860 8F988BE4 */  lw     $t8, %got(fprmask)($gp)
/* 00420864 8F818BE0 */  lw     $at, %got(gprmask)($gp)
/* 00420868 032C7825 */  or    $t7, $t9, $t4
/* 0042086C 8FAD010C */  lw    $t5, 0x10c($sp)
/* 00420870 8F180000 */  lw    $t8, ($t8)
/* 00420874 01E97025 */  or    $t6, $t7, $t1
/* 00420878 8FAA0100 */  lw    $t2, 0x100($sp)
/* 0042087C AC2E0000 */  sw    $t6, ($at)
/* 00420880 8F818BE4 */  lw     $at, %got(fprmask)($gp)
/* 00420884 030D5825 */  or    $t3, $t8, $t5
/* 00420888 016AC825 */  or    $t9, $t3, $t2
/* 0042088C AC390000 */  sw    $t9, ($at)
/* 00420890 964C004E */  lhu   $t4, 0x4e($s2)
/* 00420894 26310001 */  addiu $s1, $s1, 1
/* 00420898 022C082A */  slt   $at, $s1, $t4
/* 0042089C 1420FE96 */  bnez  $at, .L004202F8
/* 004208A0 26100018 */   addiu $s0, $s0, 0x18
.L004208A4:
/* 004208A4 8F8F8BD8 */  lw     $t7, %got(tfp_rev10)($gp)
/* 004208A8 00000000 */  nop   
/* 004208AC 91EF0000 */  lbu   $t7, ($t7)
/* 004208B0 00000000 */  nop   
/* 004208B4 11E0007C */  beqz  $t7, .L00420AA8
/* 004208B8 00000000 */   nop   
/* 004208BC 1A60007A */  blez  $s3, .L00420AA8
/* 004208C0 00000000 */   nop   
/* 004208C4 8FA9007C */  lw    $t1, 0x7c($sp)
/* 004208C8 00001825 */  move  $v1, $zero
/* 004208CC 19200076 */  blez  $t1, .L00420AA8
/* 004208D0 00008825 */   move  $s1, $zero
/* 004208D4 27B000D4 */  addiu $s0, $sp, 0xd4
/* 004208D8 3C0800FF */  lui   $t0, 0xff
/* 004208DC 3C07FF00 */  lui   $a3, 0xff00
/* 004208E0 0073082A */  slt   $at, $v1, $s3
.L004208E4:
/* 004208E4 10200014 */  beqz  $at, .L00420938
/* 004208E8 00117080 */   sll   $t6, $s1, 2
/* 004208EC 27B800A8 */  addiu $t8, $sp, 0xa8
/* 004208F0 00035880 */  sll   $t3, $v1, 2
/* 004208F4 020B1021 */  addu  $v0, $s0, $t3
/* 004208F8 01D86821 */  addu  $t5, $t6, $t8
/* 004208FC 8DA50000 */  lw    $a1, ($t5)
/* 00420900 8C4A0000 */  lw    $t2, ($v0)
/* 00420904 00000000 */  nop   
/* 00420908 00AA082A */  slt   $at, $a1, $t2
/* 0042090C 1420000A */  bnez  $at, .L00420938
/* 00420910 00000000 */   nop   
.L00420914:
/* 00420914 24630001 */  addiu $v1, $v1, 1
/* 00420918 0073082A */  slt   $at, $v1, $s3
/* 0042091C 10200006 */  beqz  $at, .L00420938
/* 00420920 24420004 */   addiu $v0, $v0, 4
/* 00420924 8C590000 */  lw    $t9, ($v0)
/* 00420928 00000000 */  nop   
/* 0042092C 00B9082A */  slt   $at, $a1, $t9
/* 00420930 1020FFF8 */  beqz  $at, .L00420914
/* 00420934 00000000 */   nop   
.L00420938:
/* 00420938 1073005B */  beq   $v1, $s3, .L00420AA8
/* 0042093C 00111080 */   sll   $v0, $s1, 2
/* 00420940 00036080 */  sll   $t4, $v1, 2
/* 00420944 27AE0080 */  addiu $t6, $sp, 0x80
/* 00420948 004EC021 */  addu  $t8, $v0, $t6
/* 0042094C 020C7821 */  addu  $t7, $s0, $t4
/* 00420950 8DE90000 */  lw    $t1, ($t7)
/* 00420954 8F0D0000 */  lw    $t5, ($t8)
/* 00420958 27AB00A8 */  addiu $t3, $sp, 0xa8
/* 0042095C 012D082A */  slt   $at, $t1, $t5
/* 00420960 1020004E */  beqz  $at, .L00420A9C
/* 00420964 8FAF007C */   lw    $t7, 0x7c($sp)
/* 00420968 8F8A8B54 */  lw     $t2, %got(reorder)($gp)
/* 0042096C 004B3021 */  addu  $a2, $v0, $t3
/* 00420970 914A0000 */  lbu   $t2, ($t2)
/* 00420974 8CC50000 */  lw    $a1, ($a2)
/* 00420978 1140000D */  beqz  $t2, .L004209B0
/* 0042097C 00000000 */   nop   
/* 00420980 8F84806C */  lw    $a0, %got(RO_10013E24)($gp)
/* 00420984 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 00420988 AFA3005C */  sw    $v1, 0x5c($sp)
/* 0042098C AFA60050 */  sw    $a2, 0x50($sp)
/* 00420990 0320F809 */  jalr  $t9
/* 00420994 24843E24 */   addiu $a0, %lo(RO_10013E24) # addiu $a0, $a0, 0x3e24
/* 00420998 8FA60050 */  lw    $a2, 0x50($sp)
/* 0042099C 8FBC0038 */  lw    $gp, 0x38($sp)
/* 004209A0 8FA3005C */  lw    $v1, 0x5c($sp)
/* 004209A4 8CC50000 */  lw    $a1, ($a2)
/* 004209A8 3C0800FF */  lui   $t0, 0xff
/* 004209AC 3C07FF00 */  lui   $a3, 0xff00
.L004209B0:
/* 004209B0 8E8C0000 */  lw    $t4, ($s4)
/* 004209B4 8F998AE0 */  lw     $t9, %got(memory)($gp)
/* 004209B8 000C7880 */  sll   $t7, $t4, 2
/* 004209BC 01EC7823 */  subu  $t7, $t7, $t4
/* 004209C0 000F7880 */  sll   $t7, $t7, 2
/* 004209C4 8F390000 */  lw    $t9, ($t9)
/* 004209C8 01EC7823 */  subu  $t7, $t7, $t4
/* 004209CC 000F7880 */  sll   $t7, $t7, 2
/* 004209D0 032F1021 */  addu  $v0, $t9, $t7
/* 004209D4 8C580000 */  lw    $t8, ($v0)
/* 004209D8 04A10003 */  bgez  $a1, .L004209E8
/* 004209DC 00053083 */   sra   $a2, $a1, 2
/* 004209E0 24A10003 */  addiu $at, $a1, 3
/* 004209E4 00013083 */  sra   $a2, $at, 2
.L004209E8:
/* 004209E8 8F848AE8 */  lw     $a0, %got(sexchange)($gp)
/* 004209EC 00067080 */  sll   $t6, $a2, 2
/* 004209F0 030E4821 */  addu  $t1, $t8, $t6
/* 004209F4 8D2D0000 */  lw    $t5, ($t1)
/* 004209F8 90840000 */  lbu   $a0, ($a0)
/* 004209FC 01C03025 */  move  $a2, $t6
/* 00420A00 1080000E */  beqz  $a0, .L00420A3C
/* 00420A04 AFAD0120 */   sw    $t5, 0x120($sp)
/* 00420A08 000D5600 */  sll   $t2, $t5, 0x18
/* 00420A0C 01476024 */  and   $t4, $t2, $a3
/* 00420A10 000DCA00 */  sll   $t9, $t5, 8
/* 00420A14 03287824 */  and   $t7, $t9, $t0
/* 00420A18 01A05825 */  move  $t3, $t5
/* 00420A1C 000DC202 */  srl   $t8, $t5, 8
/* 00420A20 3309FF00 */  andi  $t1, $t8, 0xff00
/* 00420A24 000B5602 */  srl   $t2, $t3, 0x18
/* 00420A28 018F7025 */  or    $t6, $t4, $t7
/* 00420A2C 01C96825 */  or    $t5, $t6, $t1
/* 00420A30 315900FF */  andi  $t9, $t2, 0xff
/* 00420A34 01B96025 */  or    $t4, $t5, $t9
/* 00420A38 AFAC0120 */  sw    $t4, 0x120($sp)
.L00420A3C:
/* 00420A3C 87AF0122 */  lh    $t7, 0x122($sp)
/* 00420A40 00000000 */  nop   
/* 00420A44 25F80001 */  addiu $t8, $t7, 1
/* 00420A48 1080000F */  beqz  $a0, .L00420A88
/* 00420A4C A7B80122 */   sh    $t8, 0x122($sp)
/* 00420A50 8FAE0120 */  lw    $t6, 0x120($sp)
/* 00420A54 00000000 */  nop   
/* 00420A58 000E4E00 */  sll   $t1, $t6, 0x18
/* 00420A5C 01275824 */  and   $t3, $t1, $a3
/* 00420A60 000E5200 */  sll   $t2, $t6, 8
/* 00420A64 01486824 */  and   $t5, $t2, $t0
/* 00420A68 000E6202 */  srl   $t4, $t6, 8
/* 00420A6C 318FFF00 */  andi  $t7, $t4, 0xff00
/* 00420A70 016DC825 */  or    $t9, $t3, $t5
/* 00420A74 000E4E02 */  srl   $t1, $t6, 0x18
/* 00420A78 312A00FF */  andi  $t2, $t1, 0xff
/* 00420A7C 032FC025 */  or    $t8, $t9, $t7
/* 00420A80 030A5825 */  or    $t3, $t8, $t2
/* 00420A84 AFAB0120 */  sw    $t3, 0x120($sp)
.L00420A88:
/* 00420A88 8C4C0000 */  lw    $t4, ($v0)
/* 00420A8C 8FAD0120 */  lw    $t5, 0x120($sp)
/* 00420A90 0186C821 */  addu  $t9, $t4, $a2
/* 00420A94 AF2D0000 */  sw    $t5, ($t9)
/* 00420A98 8FAF007C */  lw    $t7, 0x7c($sp)
.L00420A9C:
/* 00420A9C 26310001 */  addiu $s1, $s1, 1
/* 00420AA0 162FFF90 */  bne   $s1, $t7, .L004208E4
/* 00420AA4 0073082A */   slt   $at, $v1, $s3
.L00420AA8:
/* 00420AA8 8E4E0044 */  lw    $t6, 0x44($s2)
/* 00420AAC 00000000 */  nop   
/* 00420AB0 000EC4C0 */  sll   $t8, $t6, 0x13
/* 00420AB4 0700000D */  bltz  $t8, .L00420AEC
/* 00420AB8 00000000 */   nop   
/* 00420ABC 8E8B0000 */  lw    $t3, ($s4)
/* 00420AC0 8EAA0000 */  lw    $t2, ($s5)
/* 00420AC4 000B6080 */  sll   $t4, $t3, 2
/* 00420AC8 8F99821C */  lw    $t9, %call16(add_address_pair)($gp)
/* 00420ACC 014C6821 */  addu  $t5, $t2, $t4
/* 00420AD0 8DA60000 */  lw    $a2, ($t5)
/* 00420AD4 8F8488E4 */  lw     $a0, %got(notransforms)($gp)
/* 00420AD8 8E450054 */  lw    $a1, 0x54($s2)
/* 00420ADC 0320F809 */  jalr  $t9
/* 00420AE0 00000000 */   nop   
/* 00420AE4 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00420AE8 00000000 */  nop   
.L00420AEC:
/* 00420AEC 9659004E */  lhu   $t9, 0x4e($s2)
/* 00420AF0 00000000 */  nop   
/* 00420AF4 2B210002 */  slti  $at, $t9, 2
/* 00420AF8 14200095 */  bnez  $at, .L00420D50
/* 00420AFC 00000000 */   nop   
/* 00420B00 8F818088 */  lw    $at, %got(B_1002331C)($gp)
/* 00420B04 00000000 */  nop   
/* 00420B08 AC32331C */  sw    $s2, %lo(B_1002331C)($at)
/* 00420B0C 924F0046 */  lbu   $t7, 0x46($s2)
/* 00420B10 00000000 */  nop   
/* 00420B14 31E9FFFE */  andi  $t1, $t7, 0xfffe
/* 00420B18 A2490046 */  sb    $t1, 0x46($s2)
/* 00420B1C 313800FD */  andi  $t8, $t1, 0xfd
/* 00420B20 A2580046 */  sb    $t8, 0x46($s2)
/* 00420B24 8E420044 */  lw    $v0, 0x44($s2)
/* 00420B28 00000000 */  nop   
/* 00420B2C 00025480 */  sll   $t2, $v0, 0x12
/* 00420B30 05410087 */  bgez  $t2, .L00420D50
/* 00420B34 00026D00 */   sll   $t5, $v0, 0x14
/* 00420B38 05A10085 */  bgez  $t5, .L00420D50
/* 00420B3C 00000000 */   nop   
/* 00420B40 964F004E */  lhu   $t7, 0x4e($s2)
/* 00420B44 8E590050 */  lw    $t9, 0x50($s2)
/* 00420B48 000F7080 */  sll   $t6, $t7, 2
/* 00420B4C 01CF7023 */  subu  $t6, $t6, $t7
/* 00420B50 000E70C0 */  sll   $t6, $t6, 3
/* 00420B54 032E4821 */  addu  $t1, $t9, $t6
/* 00420B58 8D38FFE8 */  lw    $t8, -0x18($t1)
/* 00420B5C 00000000 */  nop   
/* 00420B60 1700007B */  bnez  $t8, .L00420D50
/* 00420B64 00000000 */   nop   
/* 00420B68 8E850000 */  lw    $a1, ($s4)
/* 00420B6C 8F8B8AE0 */  lw     $t3, %got(memory)($gp)
/* 00420B70 00055080 */  sll   $t2, $a1, 2
/* 00420B74 01455023 */  subu  $t2, $t2, $a1
/* 00420B78 000A5080 */  sll   $t2, $t2, 2
/* 00420B7C 8D6B0000 */  lw    $t3, ($t3)
/* 00420B80 01455023 */  subu  $t2, $t2, $a1
/* 00420B84 8EAF0000 */  lw    $t7, ($s5)
/* 00420B88 000A5080 */  sll   $t2, $t2, 2
/* 00420B8C 0005C880 */  sll   $t9, $a1, 2
/* 00420B90 016A6021 */  addu  $t4, $t3, $t2
/* 00420B94 01F97021 */  addu  $t6, $t7, $t9
/* 00420B98 8DC90000 */  lw    $t1, ($t6)
/* 00420B9C 8D8D0000 */  lw    $t5, ($t4)
/* 00420BA0 2538FFF8 */  addiu $t8, $t1, -8
/* 00420BA4 07010003 */  bgez  $t8, .L00420BB4
/* 00420BA8 00185883 */   sra   $t3, $t8, 2
/* 00420BAC 27010003 */  addiu $at, $t8, 3
/* 00420BB0 00015883 */  sra   $t3, $at, 2
.L00420BB4:
/* 00420BB4 000B5080 */  sll   $t2, $t3, 2
/* 00420BB8 8F998AE8 */  lw     $t9, %got(sexchange)($gp)
/* 00420BBC 01AA6021 */  addu  $t4, $t5, $t2
/* 00420BC0 8D8F0000 */  lw    $t7, ($t4)
/* 00420BC4 93390000 */  lbu   $t9, ($t9)
/* 00420BC8 AFAF0120 */  sw    $t7, 0x120($sp)
/* 00420BCC 1320000F */  beqz  $t9, .L00420C0C
/* 00420BD0 01E07025 */   move  $t6, $t7
/* 00420BD4 000F4E00 */  sll   $t1, $t7, 0x18
/* 00420BD8 3C01FF00 */  lui   $at, 0xff00
/* 00420BDC 0121C024 */  and   $t8, $t1, $at
/* 00420BE0 3C0100FF */  lui   $at, 0xff
/* 00420BE4 000F5A00 */  sll   $t3, $t7, 8
/* 00420BE8 01616824 */  and   $t5, $t3, $at
/* 00420BEC 000F6202 */  srl   $t4, $t7, 8
/* 00420BF0 318FFF00 */  andi  $t7, $t4, 0xff00
/* 00420BF4 030D5025 */  or    $t2, $t8, $t5
/* 00420BF8 000E4E02 */  srl   $t1, $t6, 0x18
/* 00420BFC 312B00FF */  andi  $t3, $t1, 0xff
/* 00420C00 014FC825 */  or    $t9, $t2, $t7
/* 00420C04 032BC025 */  or    $t8, $t9, $t3
/* 00420C08 AFB80120 */  sw    $t8, 0x120($sp)
.L00420C0C:
/* 00420C0C 8FAD0120 */  lw    $t5, 0x120($sp)
/* 00420C10 00000000 */  nop   
/* 00420C14 000D6682 */  srl   $t4, $t5, 0x1a
/* 00420C18 258AFFFF */  addiu $t2, $t4, -1
/* 00420C1C 2D410037 */  sltiu $at, $t2, 0x37
/* 00420C20 10200035 */  beqz  $at, .L00420CF8
/* 00420C24 00000000 */   nop   
/* 00420C28 8F81806C */  lw    $at, %got(jtbl_10014104)($gp)
/* 00420C2C 000A5080 */  sll   $t2, $t2, 2
/* 00420C30 002A0821 */  addu  $at, $at, $t2
/* 00420C34 8C2A4104 */  lw    $t2, %lo(jtbl_10014104)($at)
/* 00420C38 00000000 */  nop   
/* 00420C3C 015C5021 */  addu  $t2, $t2, $gp
/* 00420C40 01400008 */  jr    $t2
/* 00420C44 00000000 */   nop   
.L00420C48:
/* 00420C48 8FAF0120 */  lw    $t7, 0x120($sp)
/* 00420C4C 97B90120 */  lhu   $t9, 0x120($sp)
/* 00420C50 000F7180 */  sll   $t6, $t7, 6
/* 00420C54 000E4EC2 */  srl   $t1, $t6, 0x1b
/* 00420C58 332B001F */  andi  $t3, $t9, 0x1f
/* 00420C5C 012BC026 */  xor   $t8, $t1, $t3
/* 00420C60 924F0047 */  lbu   $t7, 0x47($s2)
/* 00420C64 2F0D0001 */  sltiu $t5, $t8, 1
/* 00420C68 000D6100 */  sll   $t4, $t5, 4
/* 00420C6C 318A0010 */  andi  $t2, $t4, 0x10
/* 00420C70 31EEFFEF */  andi  $t6, $t7, 0xffef
/* 00420C74 014EC825 */  or    $t9, $t2, $t6
/* 00420C78 A2590047 */  sb    $t9, 0x47($s2)
.L00420C7C:
/* 00420C7C 924B0046 */  lbu   $t3, 0x46($s2)
/* 00420C80 00000000 */  nop   
/* 00420C84 35780001 */  ori   $t8, $t3, 1
/* 00420C88 1000001B */  b     .L00420CF8
/* 00420C8C A2580046 */   sb    $t8, 0x46($s2)
.L00420C90:
/* 00420C90 97AD0120 */  lhu   $t5, 0x120($sp)
/* 00420C94 24010001 */  li    $at, 1
/* 00420C98 31AC001F */  andi  $t4, $t5, 0x1f
/* 00420C9C 11800003 */  beqz  $t4, .L00420CAC
/* 00420CA0 00000000 */   nop   
/* 00420CA4 15810014 */  bne   $t4, $at, .L00420CF8
/* 00420CA8 00000000 */   nop   
.L00420CAC:
/* 00420CAC 924A0046 */  lbu   $t2, 0x46($s2)
/* 00420CB0 00000000 */  nop   
/* 00420CB4 354E0001 */  ori   $t6, $t2, 1
/* 00420CB8 1000000F */  b     .L00420CF8
/* 00420CBC A24E0046 */   sb    $t6, 0x46($s2)
.L00420CC0:
/* 00420CC0 8FA20120 */  lw    $v0, 0x120($sp)
/* 00420CC4 97B80120 */  lhu   $t8, 0x120($sp)
/* 00420CC8 0002C980 */  sll   $t9, $v0, 6
/* 00420CCC 00194EC2 */  srl   $t1, $t9, 0x1b
/* 00420CD0 392B0008 */  xori  $t3, $t1, 8
/* 00420CD4 2D620001 */  sltiu $v0, $t3, 1
/* 00420CD8 10400002 */  beqz  $v0, .L00420CE4
/* 00420CDC 330D0002 */   andi  $t5, $t8, 2
/* 00420CE0 2DA20001 */  sltiu $v0, $t5, 1
.L00420CE4:
/* 00420CE4 924E0046 */  lbu   $t6, 0x46($s2)
/* 00420CE8 304A0001 */  andi  $t2, $v0, 1
/* 00420CEC 31D9FFFE */  andi  $t9, $t6, 0xfffe
/* 00420CF0 01594825 */  or    $t1, $t2, $t9
/* 00420CF4 A2490046 */  sb    $t1, 0x46($s2)
.L00420CF8:
/* 00420CF8 92430046 */  lbu   $v1, 0x46($s2)
/* 00420CFC 00000000 */  nop   
/* 00420D00 30620001 */  andi  $v0, $v1, 1
/* 00420D04 0002582B */  sltu  $t3, $zero, $v0
/* 00420D08 1160000C */  beqz  $t3, .L00420D3C
/* 00420D0C 01601025 */   move  $v0, $t3
/* 00420D10 8E420044 */  lw    $v0, 0x44($s2)
/* 00420D14 00000000 */  nop   
/* 00420D18 0002C6C0 */  sll   $t8, $v0, 0x1b
/* 00420D1C 00186FC2 */  srl   $t5, $t8, 0x1f
/* 00420D20 2DA20001 */  sltiu $v0, $t5, 1
/* 00420D24 10400006 */  beqz  $v0, .L00420D40
/* 00420D28 00025040 */   sll   $t2, $v0, 1
/* 00420D2C 87A20122 */  lh    $v0, 0x122($sp)
/* 00420D30 00000000 */  nop   
/* 00420D34 284F0000 */  slti  $t7, $v0, 0
/* 00420D38 39E20001 */  xori  $v0, $t7, 1
.L00420D3C:
/* 00420D3C 00025040 */  sll   $t2, $v0, 1
.L00420D40:
/* 00420D40 31590002 */  andi  $t9, $t2, 2
/* 00420D44 3069FFFD */  andi  $t1, $v1, 0xfffd
/* 00420D48 03295825 */  or    $t3, $t9, $t1
/* 00420D4C A24B0046 */  sb    $t3, 0x46($s2)
.L00420D50:
/* 00420D50 8E42005C */  lw    $v0, 0x5c($s2)
/* 00420D54 00000000 */  nop   
/* 00420D58 1040000E */  beqz  $v0, .L00420D94
/* 00420D5C 8FB9011C */   lw    $t9, 0x11c($sp)
/* 00420D60 8E8D0000 */  lw    $t5, ($s4)
/* 00420D64 8EB80000 */  lw    $t8, ($s5)
/* 00420D68 000D6080 */  sll   $t4, $t5, 2
/* 00420D6C 030C7821 */  addu  $t7, $t8, $t4
/* 00420D70 8DEE0000 */  lw    $t6, ($t7)
/* 00420D74 8C4A0010 */  lw    $t2, 0x10($v0)
/* 00420D78 8F99843C */  lw    $t9, %call16(reenter_symbol)($gp)
/* 00420D7C 8E440060 */  lw    $a0, 0x60($s2)
/* 00420D80 0320F809 */  jalr  $t9
/* 00420D84 01CA2823 */   subu  $a1, $t6, $t2
/* 00420D88 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00420D8C 00000000 */  nop   
/* 00420D90 8FB9011C */  lw    $t9, 0x11c($sp)
.L00420D94:
/* 00420D94 00000000 */  nop   
/* 00420D98 1320000A */  beqz  $t9, .L00420DC4
/* 00420D9C 8FAF0118 */   lw    $t7, 0x118($sp)
/* 00420DA0 8E8B0000 */  lw    $t3, ($s4)
/* 00420DA4 8EA90000 */  lw    $t1, ($s5)
/* 00420DA8 000B6880 */  sll   $t5, $t3, 2
/* 00420DAC 012DC021 */  addu  $t8, $t1, $t5
/* 00420DB0 8F0C0000 */  lw    $t4, ($t8)
/* 00420DB4 8F818B78 */  lw     $at, %got(currfunc_prolog)($gp)
/* 00420DB8 00000000 */  nop   
/* 00420DBC AC2C0000 */  sw    $t4, ($at)
/* 00420DC0 8FAF0118 */  lw    $t7, 0x118($sp)
.L00420DC4:
/* 00420DC4 00000000 */  nop   
/* 00420DC8 11E0000E */  beqz  $t7, .L00420E04
/* 00420DCC 8FBF003C */   lw    $ra, 0x3c($sp)
/* 00420DD0 8F8E8B74 */  lw     $t6, %got(is_nonleaf)($gp)
/* 00420DD4 00000000 */  nop   
/* 00420DD8 91CE0000 */  lbu   $t6, ($t6)
/* 00420DDC 00000000 */  nop   
/* 00420DE0 11C00008 */  beqz  $t6, .L00420E04
/* 00420DE4 8FBF003C */   lw    $ra, 0x3c($sp)
/* 00420DE8 8F99851C */  lw    $t9, %call16(create_function_table)($gp)
/* 00420DEC 00000000 */  nop   
/* 00420DF0 0320F809 */  jalr  $t9
/* 00420DF4 00000000 */   nop   
/* 00420DF8 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00420DFC 00000000 */  nop   
/* 00420E00 8FBF003C */  lw    $ra, 0x3c($sp)
.L00420E04:
/* 00420E04 8FB00020 */  lw    $s0, 0x20($sp)
/* 00420E08 8FB10024 */  lw    $s1, 0x24($sp)
/* 00420E0C 8FB20028 */  lw    $s2, 0x28($sp)
/* 00420E10 8FB3002C */  lw    $s3, 0x2c($sp)
/* 00420E14 8FB40030 */  lw    $s4, 0x30($sp)
/* 00420E18 8FB50034 */  lw    $s5, 0x34($sp)
/* 00420E1C 03E00008 */  jr    $ra
/* 00420E20 27BD0130 */   addiu $sp, $sp, 0x130

/* 00420E24 03E00008 */  jr    $ra
/* 00420E28 00000000 */   nop   

/* 00420E2C 03E00008 */  jr    $ra
/* 00420E30 00000000 */   nop   

glabel traverse_bb
    .ent traverse_bb
    # 0044AF18 main
/* 00420E34 3C1C0FC1 */  .cpload $t9
/* 00420E38 279C942C */  
/* 00420E3C 0399E021 */  
/* 00420E40 8F8E8AE4 */  lw     $t6, %got(currtextindex)($gp)
/* 00420E44 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00420E48 8F828B64 */  lw     $v0, %got(currsegmentindex)($gp)
/* 00420E4C 8DCE0000 */  lw    $t6, ($t6)
/* 00420E50 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00420E54 AFBC0020 */  sw    $gp, 0x20($sp)
/* 00420E58 AFB2001C */  sw    $s2, 0x1c($sp)
/* 00420E5C AFB10018 */  sw    $s1, 0x18($sp)
/* 00420E60 AFB00014 */  sw    $s0, 0x14($sp)
/* 00420E64 15C00004 */  bnez  $t6, .L00420E78
/* 00420E68 AC4E0000 */   sw    $t6, ($v0)
/* 00420E6C 8F818BE8 */  lw     $at, %got(currsegment)($gp)
/* 00420E70 10000004 */  b     .L00420E84
/* 00420E74 A0200000 */   sb    $zero, ($at)
.L00420E78:
/* 00420E78 8F818BE8 */  lw     $at, %got(currsegment)($gp)
/* 00420E7C 2418000F */  li    $t8, 15
/* 00420E80 A0380000 */  sb    $t8, ($at)
.L00420E84:
/* 00420E84 8F818AA0 */  lw     $at, %got(current_loop)($gp)
/* 00420E88 2419FFFF */  li    $t9, -1
/* 00420E8C AC390000 */  sw    $t9, ($at)
/* 00420E90 8F99801C */  lw    $t9, %got(func_0041CC00)($gp)
/* 00420E94 24040001 */  li    $a0, 1
/* 00420E98 2739CC00 */  addiu $t9, %lo(func_0041CC00) # addiu $t9, $t9, -0x3400
/* 00420E9C 0320F809 */  jalr  $t9
/* 00420EA0 00000000 */   nop   
/* 00420EA4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00420EA8 00000000 */  nop   
/* 00420EAC 8F99801C */  lw    $t9, %got(func_0041E40C)($gp)
/* 00420EB0 00000000 */  nop   
/* 00420EB4 2739E40C */  addiu $t9, %lo(func_0041E40C) # addiu $t9, $t9, -0x1bf4
/* 00420EB8 0320F809 */  jalr  $t9
/* 00420EBC 00000000 */   nop   
/* 00420EC0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00420EC4 24010003 */  li    $at, 3
/* 00420EC8 8F828B18 */  lw     $v0, %got(debugflag)($gp)
/* 00420ECC 00000000 */  nop   
/* 00420ED0 8C420000 */  lw    $v0, ($v0)
/* 00420ED4 00000000 */  nop   
/* 00420ED8 10400003 */  beqz  $v0, .L00420EE8
/* 00420EDC 00000000 */   nop   
/* 00420EE0 14410067 */  bne   $v0, $at, .L00421080
/* 00420EE4 00000000 */   nop   
.L00420EE8:
/* 00420EE8 8F888B1C */  lw     $t0, %got(optflag)($gp)
/* 00420EEC 00000000 */  nop   
/* 00420EF0 8D080000 */  lw    $t0, ($t0)
/* 00420EF4 00000000 */  nop   
/* 00420EF8 29010002 */  slti  $at, $t0, 2
/* 00420EFC 14200060 */  bnez  $at, .L00421080
/* 00420F00 00000000 */   nop   
/* 00420F04 8F898088 */  lw    $t1, %got(B_10023308)($gp)
/* 00420F08 8F918088 */  lw    $s1, %got(B_10023310)($gp)
/* 00420F0C 8F99801C */  lw    $t9, %got(func_0041EF7C)($gp)
/* 00420F10 8D293308 */  lw    $t1, %lo(B_10023308)($t1)
/* 00420F14 26313310 */  addiu $s1, %lo(B_10023310) # addiu $s1, $s1, 0x3310
/* 00420F18 2739EF7C */  addiu $t9, %lo(func_0041EF7C) # addiu $t9, $t9, -0x1084
/* 00420F1C 0320F809 */  jalr  $t9
/* 00420F20 AE290000 */   sw    $t1, ($s1)
/* 00420F24 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00420F28 00000000 */  nop   
/* 00420F2C 8F99801C */  lw    $t9, %got(func_0041DC10)($gp)
/* 00420F30 00000000 */  nop   
/* 00420F34 2739DC10 */  addiu $t9, %lo(func_0041DC10) # addiu $t9, $t9, -0x23f0
/* 00420F38 0320F809 */  jalr  $t9
/* 00420F3C 00000000 */   nop   
/* 00420F40 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00420F44 AE200000 */  sw    $zero, ($s1)
/* 00420F48 8F928088 */  lw    $s2, %got(B_10023304)($gp)
/* 00420F4C 00000000 */  nop   
/* 00420F50 8E523304 */  lw    $s2, %lo(B_10023304)($s2)
/* 00420F54 00000000 */  nop   
/* 00420F58 12400011 */  beqz  $s2, .L00420FA0
/* 00420F5C 00000000 */   nop   
.L00420F60:
/* 00420F60 8E4A0044 */  lw    $t2, 0x44($s2)
/* 00420F64 00000000 */  nop   
/* 00420F68 000A6440 */  sll   $t4, $t2, 0x11
/* 00420F6C 05800008 */  bltz  $t4, .L00420F90
/* 00420F70 00000000 */   nop   
/* 00420F74 8F99801C */  lw    $t9, %got(func_0041EECC)($gp)
/* 00420F78 02402025 */  move  $a0, $s2
/* 00420F7C 2739EECC */  addiu $t9, %lo(func_0041EECC) # addiu $t9, $t9, -0x1134
/* 00420F80 0320F809 */  jalr  $t9
/* 00420F84 00000000 */   nop   
/* 00420F88 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00420F8C 00000000 */  nop   
.L00420F90:
/* 00420F90 8E520004 */  lw    $s2, 4($s2)
/* 00420F94 00000000 */  nop   
/* 00420F98 1640FFF1 */  bnez  $s2, .L00420F60
/* 00420F9C 00000000 */   nop   
.L00420FA0:
/* 00420FA0 8F99801C */  lw    $t9, %got(func_0041EF7C)($gp)
/* 00420FA4 00000000 */  nop   
/* 00420FA8 2739EF7C */  addiu $t9, %lo(func_0041EF7C) # addiu $t9, $t9, -0x1084
/* 00420FAC 0320F809 */  jalr  $t9
/* 00420FB0 00000000 */   nop   
/* 00420FB4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00420FB8 00000000 */  nop   
/* 00420FBC 8F99801C */  lw    $t9, %got(func_0041F0F8)($gp)
/* 00420FC0 00000000 */  nop   
/* 00420FC4 2739F0F8 */  addiu $t9, %lo(func_0041F0F8) # addiu $t9, $t9, -0xf08
/* 00420FC8 0320F809 */  jalr  $t9
/* 00420FCC 00000000 */   nop   
/* 00420FD0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00420FD4 00000000 */  nop   
/* 00420FD8 8F99801C */  lw    $t9, %got(func_0041F4F4)($gp)
/* 00420FDC 00000000 */  nop   
/* 00420FE0 2739F4F4 */  addiu $t9, %lo(func_0041F4F4) # addiu $t9, $t9, -0xb0c
/* 00420FE4 0320F809 */  jalr  $t9
/* 00420FE8 00000000 */   nop   
/* 00420FEC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00420FF0 00000000 */  nop   
/* 00420FF4 8F8D8BEC */  lw     $t5, %got(peep_opt)($gp)
/* 00420FF8 00000000 */  nop   
/* 00420FFC 91AD0000 */  lbu   $t5, ($t5)
/* 00421000 00000000 */  nop   
/* 00421004 11A0001E */  beqz  $t5, .L00421080
/* 00421008 00000000 */   nop   
/* 0042100C 8F848088 */  lw    $a0, %got(B_10023304)($gp)
/* 00421010 8F9982B0 */  lw    $t9, %call16(do_passI_opt)($gp)
/* 00421014 8C843304 */  lw    $a0, %lo(B_10023304)($a0)
/* 00421018 0320F809 */  jalr  $t9
/* 0042101C 00000000 */   nop   
/* 00421020 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00421024 1040000F */  beqz  $v0, .L00421064
/* 00421028 00000000 */   nop   
/* 0042102C 8F99801C */  lw    $t9, %got(func_0041F0F8)($gp)
/* 00421030 00000000 */  nop   
/* 00421034 2739F0F8 */  addiu $t9, %lo(func_0041F0F8) # addiu $t9, $t9, -0xf08
/* 00421038 0320F809 */  jalr  $t9
/* 0042103C 00000000 */   nop   
/* 00421040 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00421044 00000000 */  nop   
/* 00421048 8F99801C */  lw    $t9, %got(func_0041F4F4)($gp)
/* 0042104C 00000000 */  nop   
/* 00421050 2739F4F4 */  addiu $t9, %lo(func_0041F4F4) # addiu $t9, $t9, -0xb0c
/* 00421054 0320F809 */  jalr  $t9
/* 00421058 00000000 */   nop   
/* 0042105C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00421060 00000000 */  nop   
.L00421064:
/* 00421064 8F848088 */  lw    $a0, %got(B_10023304)($gp)
/* 00421068 8F9982B4 */  lw    $t9, %call16(do_passII_opt)($gp)
/* 0042106C 8C843304 */  lw    $a0, %lo(B_10023304)($a0)
/* 00421070 0320F809 */  jalr  $t9
/* 00421074 00000000 */   nop   
/* 00421078 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042107C 00000000 */  nop   
.L00421080:
/* 00421080 8F918088 */  lw    $s1, %got(B_10023310)($gp)
/* 00421084 8F9983B0 */  lw    $t9, %call16(do_init_noalias)($gp)
/* 00421088 26313310 */  addiu $s1, %lo(B_10023310) # addiu $s1, $s1, 0x3310
/* 0042108C 0320F809 */  jalr  $t9
/* 00421090 00000000 */   nop   
/* 00421094 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00421098 00000000 */  nop   
/* 0042109C 8F928088 */  lw    $s2, %got(B_10023304)($gp)
/* 004210A0 00000000 */  nop   
/* 004210A4 8E523304 */  lw    $s2, %lo(B_10023304)($s2)
/* 004210A8 00000000 */  nop   
/* 004210AC 1240000F */  beqz  $s2, .L004210EC
/* 004210B0 00000000 */   nop   
.L004210B4:
/* 004210B4 8F99801C */  lw    $t9, %got(func_0041F64C)($gp)
/* 004210B8 8E500008 */  lw    $s0, 8($s2)
/* 004210BC 2739F64C */  addiu $t9, %lo(func_0041F64C) # addiu $t9, $t9, -0x9b4
/* 004210C0 0320F809 */  jalr  $t9
/* 004210C4 02402025 */   move  $a0, $s2
/* 004210C8 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004210CC 02402025 */  move  $a0, $s2
/* 004210D0 8F998328 */  lw    $t9, %call16(schedule)($gp)
/* 004210D4 00000000 */  nop   
/* 004210D8 0320F809 */  jalr  $t9
/* 004210DC 00000000 */   nop   
/* 004210E0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004210E4 1600FFF3 */  bnez  $s0, .L004210B4
/* 004210E8 02009025 */   move  $s2, $s0
.L004210EC:
/* 004210EC 8F8E8B38 */  lw     $t6, %got(xbb_opt)($gp)
/* 004210F0 00000000 */  nop   
/* 004210F4 91CE0000 */  lbu   $t6, ($t6)
/* 004210F8 00000000 */  nop   
/* 004210FC 11C00011 */  beqz  $t6, .L00421144
/* 00421100 00000000 */   nop   
/* 00421104 8F8F8BF0 */  lw     $t7, %got(olimit_value)($gp)
/* 00421108 8F988A9C */  lw     $t8, %got(num_bbs)($gp)
/* 0042110C 8DEF0000 */  lw    $t7, ($t7)
/* 00421110 8F180000 */  lw    $t8, ($t8)
/* 00421114 00000000 */  nop   
/* 00421118 01F8082B */  sltu  $at, $t7, $t8
/* 0042111C 14200009 */  bnez  $at, .L00421144
/* 00421120 00000000 */   nop   
/* 00421124 8F848088 */  lw    $a0, %got(B_1002330C)($gp)
/* 00421128 8F99832C */  lw    $t9, %call16(do_xbb_opt)($gp)
/* 0042112C 8E250000 */  lw    $a1, ($s1)
/* 00421130 8C84330C */  lw    $a0, %lo(B_1002330C)($a0)
/* 00421134 0320F809 */  jalr  $t9
/* 00421138 00000000 */   nop   
/* 0042113C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00421140 00000000 */  nop   
.L00421144:
/* 00421144 8F908088 */  lw    $s0, %got(B_10023304)($gp)
/* 00421148 8F818088 */  lw    $at, %got(B_1002331C)($gp)
/* 0042114C 8E103304 */  lw    $s0, %lo(B_10023304)($s0)
/* 00421150 AC20331C */  sw    $zero, %lo(B_1002331C)($at)
/* 00421154 12000045 */  beqz  $s0, .L0042126C
/* 00421158 02009025 */   move  $s2, $s0
/* 0042115C 8F918BA0 */  lw     $s1, %got(xbb_debug)($gp)
/* 00421160 8F908B54 */  lw     $s0, %got(reorder)($gp)
/* 00421164 00000000 */  nop   
.L00421168:
/* 00421168 92190000 */  lbu   $t9, ($s0)
/* 0042116C 00000000 */  nop   
/* 00421170 13200014 */  beqz  $t9, .L004211C4
/* 00421174 00000000 */   nop   
/* 00421178 8E280000 */  lw    $t0, ($s1)
/* 0042117C 00000000 */  nop   
/* 00421180 29010005 */  slti  $at, $t0, 5
/* 00421184 14200008 */  bnez  $at, .L004211A8
/* 00421188 00000000 */   nop   
/* 0042118C 8F99801C */  lw    $t9, %got(func_0041C99C)($gp)
/* 00421190 02402025 */  move  $a0, $s2
/* 00421194 2739C99C */  addiu $t9, %lo(func_0041C99C) # addiu $t9, $t9, -0x3664
/* 00421198 0320F809 */  jalr  $t9
/* 0042119C 00000000 */   nop   
/* 004211A0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004211A4 00000000 */  nop   
.L004211A8:
/* 004211A8 8F85806C */  lw    $a1, %got(RO_10013E44)($gp)
/* 004211AC 8F9982B8 */  lw    $t9, %call16(dump_bb)($gp)
/* 004211B0 02402025 */  move  $a0, $s2
/* 004211B4 0320F809 */  jalr  $t9
/* 004211B8 24A53E44 */   addiu $a1, %lo(RO_10013E44) # addiu $a1, $a1, 0x3e44
/* 004211BC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004211C0 00000000 */  nop   
.L004211C4:
/* 004211C4 8F99801C */  lw    $t9, %got(func_0041FE24)($gp)
/* 004211C8 02402025 */  move  $a0, $s2
/* 004211CC 2739FE24 */  addiu $t9, %lo(func_0041FE24) # addiu $t9, $t9, -0x1dc
/* 004211D0 0320F809 */  jalr  $t9
/* 004211D4 00000000 */   nop   
/* 004211D8 92090000 */  lbu   $t1, ($s0)
/* 004211DC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004211E0 1120001A */  beqz  $t1, .L0042124C
/* 004211E4 00000000 */   nop   
/* 004211E8 964A004E */  lhu   $t2, 0x4e($s2)
/* 004211EC 00000000 */  nop   
/* 004211F0 19400016 */  blez  $t2, .L0042124C
/* 004211F4 00000000 */   nop   
/* 004211F8 8E4B0050 */  lw    $t3, 0x50($s2)
/* 004211FC 8F84806C */  lw    $a0, %got(RO_10013E5C)($gp)
/* 00421200 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 00421204 8D65000C */  lw    $a1, 0xc($t3)
/* 00421208 0320F809 */  jalr  $t9
/* 0042120C 24843E5C */   addiu $a0, %lo(RO_10013E5C) # addiu $a0, $a0, 0x3e5c
/* 00421210 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00421214 8E440054 */  lw    $a0, 0x54($s2)
/* 00421218 8F8D8AE4 */  lw     $t5, %got(currtextindex)($gp)
/* 0042121C 8F8C8AEC */  lw     $t4, %got(seg_ic)($gp)
/* 00421220 8DAD0000 */  lw    $t5, ($t5)
/* 00421224 8D8C0000 */  lw    $t4, ($t4)
/* 00421228 8F99801C */  lw    $t9, %got(func_0041C388)($gp)
/* 0042122C 000D7080 */  sll   $t6, $t5, 2
/* 00421230 018E7821 */  addu  $t7, $t4, $t6
/* 00421234 8DE50000 */  lw    $a1, ($t7)
/* 00421238 2739C388 */  addiu $t9, %lo(func_0041C388) # addiu $t9, $t9, -0x3c78
/* 0042123C 0320F809 */  jalr  $t9
/* 00421240 00000000 */   nop   
/* 00421244 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00421248 00000000 */  nop   
.L0042124C:
/* 0042124C 8E520008 */  lw    $s2, 8($s2)
/* 00421250 00000000 */  nop   
/* 00421254 1640FFC4 */  bnez  $s2, .L00421168
/* 00421258 00000000 */   nop   
/* 0042125C 8F908088 */  lw    $s0, %got(B_10023304)($gp)
/* 00421260 00000000 */  nop   
/* 00421264 8E103304 */  lw    $s0, %lo(B_10023304)($s0)
/* 00421268 00000000 */  nop   
.L0042126C:
/* 0042126C 8F988BF4 */  lw     $t8, %got(branch_opt)($gp)
/* 00421270 00000000 */  nop   
/* 00421274 93180000 */  lbu   $t8, ($t8)
/* 00421278 00000000 */  nop   
/* 0042127C 1300001A */  beqz  $t8, .L004212E8
/* 00421280 00000000 */   nop   
/* 00421284 8F828B18 */  lw     $v0, %got(debugflag)($gp)
/* 00421288 24010003 */  li    $at, 3
/* 0042128C 8C420000 */  lw    $v0, ($v0)
/* 00421290 00000000 */  nop   
/* 00421294 10400003 */  beqz  $v0, .L004212A4
/* 00421298 00000000 */   nop   
/* 0042129C 14410012 */  bne   $v0, $at, .L004212E8
/* 004212A0 00000000 */   nop   
.L004212A4:
/* 004212A4 8F998B1C */  lw     $t9, %got(optflag)($gp)
/* 004212A8 00000000 */  nop   
/* 004212AC 8F390000 */  lw    $t9, ($t9)
/* 004212B0 00000000 */  nop   
/* 004212B4 2B210002 */  slti  $at, $t9, 2
/* 004212B8 1420000B */  bnez  $at, .L004212E8
/* 004212BC 00000000 */   nop   
/* 004212C0 8F998244 */  lw    $t9, %call16(do_branch_opt)($gp)
/* 004212C4 02002025 */  move  $a0, $s0
/* 004212C8 0320F809 */  jalr  $t9
/* 004212CC 00000000 */   nop   
/* 004212D0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004212D4 00000000 */  nop   
/* 004212D8 8F908088 */  lw    $s0, %got(B_10023304)($gp)
/* 004212DC 00000000 */  nop   
/* 004212E0 8E103304 */  lw    $s0, %lo(B_10023304)($s0)
/* 004212E4 00000000 */  nop   
.L004212E8:
/* 004212E8 1200002C */  beqz  $s0, .L0042139C
/* 004212EC 02009025 */   move  $s2, $s0
.L004212F0:
/* 004212F0 8E500010 */  lw    $s0, 0x10($s2)
/* 004212F4 00000000 */  nop   
/* 004212F8 12000008 */  beqz  $s0, .L0042131C
/* 004212FC 00000000 */   nop   
.L00421300:
/* 00421300 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 00421304 8E110004 */  lw    $s1, 4($s0)
/* 00421308 0320F809 */  jalr  $t9
/* 0042130C 02002025 */   move  $a0, $s0
/* 00421310 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00421314 1620FFFA */  bnez  $s1, .L00421300
/* 00421318 02208025 */   move  $s0, $s1
.L0042131C:
/* 0042131C 8E500014 */  lw    $s0, 0x14($s2)
/* 00421320 00000000 */  nop   
/* 00421324 12000008 */  beqz  $s0, .L00421348
/* 00421328 00000000 */   nop   
.L0042132C:
/* 0042132C 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 00421330 8E110004 */  lw    $s1, 4($s0)
/* 00421334 0320F809 */  jalr  $t9
/* 00421338 02002025 */   move  $a0, $s0
/* 0042133C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00421340 1620FFFA */  bnez  $s1, .L0042132C
/* 00421344 02208025 */   move  $s0, $s1
.L00421348:
/* 00421348 8F9983CC */  lw    $t9, %call16(free_alias_table)($gp)
/* 0042134C 02402025 */  move  $a0, $s2
/* 00421350 0320F809 */  jalr  $t9
/* 00421354 00000000 */   nop   
/* 00421358 8E44000C */  lw    $a0, 0xc($s2)
/* 0042135C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00421360 10800007 */  beqz  $a0, .L00421380
/* 00421364 00000000 */   nop   
/* 00421368 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 0042136C 00000000 */  nop   
/* 00421370 0320F809 */  jalr  $t9
/* 00421374 00000000 */   nop   
/* 00421378 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0042137C 00000000 */  nop   
.L00421380:
/* 00421380 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 00421384 8E500008 */  lw    $s0, 8($s2)
/* 00421388 0320F809 */  jalr  $t9
/* 0042138C 02402025 */   move  $a0, $s2
/* 00421390 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00421394 1600FFD6 */  bnez  $s0, .L004212F0
/* 00421398 02009025 */   move  $s2, $s0
.L0042139C:
/* 0042139C 8F998238 */  lw    $t9, %call16(gen_br_patches)($gp)
/* 004213A0 00000000 */  nop   
/* 004213A4 0320F809 */  jalr  $t9
/* 004213A8 00000000 */   nop   
/* 004213AC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004213B0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 004213B4 8F838080 */  lw    $v1, %got(D_100003E0)($gp)
/* 004213B8 8F818B40 */  lw     $at, %got(pinstruction)($gp)
/* 004213BC 8C6303E0 */  lw    $v1, %lo(D_100003E0)($v1)
/* 004213C0 2408001C */  li    $t0, 28
/* 004213C4 AC230000 */  sw    $v1, ($at)
/* 004213C8 8F818B7C */  lw     $at, %got(cur_pinst)($gp)
/* 004213CC 8FB00014 */  lw    $s0, 0x14($sp)
/* 004213D0 AC230000 */  sw    $v1, ($at)
/* 004213D4 8F818088 */  lw    $at, %got(B_10023304)($gp)
/* 004213D8 8FB10018 */  lw    $s1, 0x18($sp)
/* 004213DC AC203304 */  sw    $zero, %lo(B_10023304)($at)
/* 004213E0 8F818088 */  lw    $at, %got(B_10023308)($gp)
/* 004213E4 8FB2001C */  lw    $s2, 0x1c($sp)
/* 004213E8 AC203308 */  sw    $zero, %lo(B_10023308)($at)
/* 004213EC 8F818A9C */  lw     $at, %got(num_bbs)($gp)
/* 004213F0 00000000 */  nop   
/* 004213F4 AC200000 */  sw    $zero, ($at)
/* 004213F8 8F818BF8 */  lw     $at, %got(gpreg)($gp)
/* 004213FC 27BD0028 */  addiu $sp, $sp, 0x28
/* 00421400 03E00008 */  jr    $ra
/* 00421404 A0280000 */   sb    $t0, ($at)

    .type traverse_bb, @function
    .size traverse_bb, .-traverse_bb
    .end traverse_bb

glabel init_inst_heap
    .ent init_inst_heap
    # 0044A328 func_0044A328
/* 00421408 3C1C0FC1 */  .cpload $t9
/* 0042140C 279C8E58 */  
/* 00421410 0399E021 */  
/* 00421414 8F8E8088 */  lw    $t6, %got(B_10023308)($gp)
/* 00421418 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0042141C 8DCE3308 */  lw    $t6, %lo(B_10023308)($t6)
/* 00421420 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00421424 11C00008 */  beqz  $t6, .L00421448
/* 00421428 AFBC0018 */   sw    $gp, 0x18($sp)
/* 0042142C 8F8F8B40 */  lw     $t7, %got(pinstruction)($gp)
/* 00421430 8F988B7C */  lw     $t8, %got(cur_pinst)($gp)
/* 00421434 8DEF0000 */  lw    $t7, ($t7)
/* 00421438 8F180000 */  lw    $t8, ($t8)
/* 0042143C 00000000 */  nop   
/* 00421440 11F80032 */  beq   $t7, $t8, .L0042150C
/* 00421444 8FBF001C */   lw    $ra, 0x1c($sp)
.L00421448:
/* 00421448 8F838080 */  lw    $v1, %got(D_100003E0)($gp)
/* 0042144C 8F818BFC */  lw     $at, %got(num_pseudo)($gp)
/* 00421450 246303E0 */  addiu $v1, %lo(D_100003E0) # addiu $v1, $v1, 0x3e0
/* 00421454 AC200000 */  sw    $zero, ($at)
/* 00421458 8C790000 */  lw    $t9, ($v1)
/* 0042145C 00000000 */  nop   
/* 00421460 17200014 */  bnez  $t9, .L004214B4
/* 00421464 00000000 */   nop   
/* 00421468 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0042146C 24044E20 */  li    $a0, 20000
/* 00421470 0320F809 */  jalr  $t9
/* 00421474 00000000 */   nop   
/* 00421478 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042147C 00402025 */  move  $a0, $v0
/* 00421480 8F838080 */  lw    $v1, %got(D_100003E0)($gp)
/* 00421484 8F818B40 */  lw     $at, %got(pinstruction)($gp)
/* 00421488 246303E0 */  addiu $v1, %lo(D_100003E0) # addiu $v1, $v1, 0x3e0
/* 0042148C AC620000 */  sw    $v0, ($v1)
/* 00421490 AC220000 */  sw    $v0, ($at)
/* 00421494 8F818B7C */  lw     $at, %got(cur_pinst)($gp)
/* 00421498 8F998180 */  lw    $t9, %call16(memset)($gp)
/* 0042149C 00002825 */  move  $a1, $zero
/* 004214A0 24060028 */  li    $a2, 40
/* 004214A4 0320F809 */  jalr  $t9
/* 004214A8 AC220000 */   sw    $v0, ($at)
/* 004214AC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004214B0 00000000 */  nop   
.L004214B4:
/* 004214B4 8F99801C */  lw    $t9, %got(func_0041CC00)($gp)
/* 004214B8 00002025 */  move  $a0, $zero
/* 004214BC 2739CC00 */  addiu $t9, %lo(func_0041CC00) # addiu $t9, $t9, -0x3400
/* 004214C0 0320F809 */  jalr  $t9
/* 004214C4 00000000 */   nop   
/* 004214C8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004214CC 00000000 */  nop   
/* 004214D0 8F888B40 */  lw     $t0, %got(pinstruction)($gp)
/* 004214D4 8F818B7C */  lw     $at, %got(cur_pinst)($gp)
/* 004214D8 8D080000 */  lw    $t0, ($t0)
/* 004214DC 00000000 */  nop   
/* 004214E0 AC280000 */  sw    $t0, ($at)
/* 004214E4 8F818088 */  lw    $at, %got(B_10023314)($gp)
/* 004214E8 00000000 */  nop   
/* 004214EC AC203314 */  sw    $zero, %lo(B_10023314)($at)
/* 004214F0 8F818088 */  lw    $at, %got(B_10023318)($gp)
/* 004214F4 00000000 */  nop   
/* 004214F8 AC203318 */  sw    $zero, %lo(B_10023318)($at)
/* 004214FC 8F818C00 */  lw     $at, %got(last_instr_bbindex)($gp)
/* 00421500 00000000 */  nop   
/* 00421504 AC200000 */  sw    $zero, ($at)
/* 00421508 8FBF001C */  lw    $ra, 0x1c($sp)
.L0042150C:
/* 0042150C 27BD0020 */  addiu $sp, $sp, 0x20
/* 00421510 03E00008 */  jr    $ra
/* 00421514 00000000 */   nop   

    .type init_inst_heap, @function
    .size init_inst_heap, .-init_inst_heap
    .end init_inst_heap

glabel backup_pinst
    .ent backup_pinst
    # 00465E20 genmul
    # 00466908 gendmul
/* 00421518 3C1C0FC1 */  .cpload $t9
/* 0042151C 279C8D48 */  
/* 00421520 0399E021 */  
/* 00421524 8F828B7C */  lw     $v0, %got(cur_pinst)($gp)
/* 00421528 00047880 */  sll   $t7, $a0, 2
/* 0042152C 8C4E0000 */  lw    $t6, ($v0)
/* 00421530 01E47821 */  addu  $t7, $t7, $a0
/* 00421534 000F78C0 */  sll   $t7, $t7, 3
/* 00421538 01CFC023 */  subu  $t8, $t6, $t7
/* 0042153C 03E00008 */  jr    $ra
/* 00421540 AC580000 */   sw    $t8, ($v0)

    .type backup_pinst, @function
    .size backup_pinst, .-backup_pinst
    .end backup_pinst

    .type func_00421544, @function
func_00421544:
    # 0042176C initbb
/* 00421544 3C1C0FC1 */  .cpload $t9
/* 00421548 279C8D1C */  
/* 0042154C 0399E021 */  
/* 00421550 8F818C04 */  lw     $at, %got(ent_pending)($gp)
/* 00421554 8F838B7C */  lw     $v1, %got(cur_pinst)($gp)
/* 00421558 A0200000 */  sb    $zero, ($at)
/* 0042155C 8F828C08 */  lw     $v0, %got(profileflag)($gp)
/* 00421560 8C790000 */  lw    $t9, ($v1)
/* 00421564 8C4E0000 */  lw    $t6, ($v0)
/* 00421568 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0042156C 2728FFD8 */  addiu $t0, $t9, -0x28
/* 00421570 AC680000 */  sw    $t0, ($v1)
/* 00421574 AC400000 */  sw    $zero, ($v0)
/* 00421578 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 0042157C AFBF001C */  sw    $ra, 0x1c($sp)
/* 00421580 AFA40028 */  sw    $a0, 0x28($sp)
/* 00421584 2498FFFF */  addiu $t8, $a0, -1
/* 00421588 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0042158C AFB80028 */  sw    $t8, 0x28($sp)
/* 00421590 24040015 */  li    $a0, 21
/* 00421594 24050001 */  li    $a1, 1
/* 00421598 2406001F */  li    $a2, 31
/* 0042159C 00003825 */  move  $a3, $zero
/* 004215A0 0320F809 */  jalr  $t9
/* 004215A4 AFAE0024 */   sw    $t6, 0x24($sp)
/* 004215A8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004215AC 2404004A */  li    $a0, 74
/* 004215B0 8F898B7C */  lw     $t1, %got(cur_pinst)($gp)
/* 004215B4 00002825 */  move  $a1, $zero
/* 004215B8 8D290000 */  lw    $t1, ($t1)
/* 004215BC 00003025 */  move  $a2, $zero
/* 004215C0 A1200022 */  sb    $zero, 0x22($t1)
/* 004215C4 8F998470 */  lw    $t9, %call16(emitjump)($gp)
/* 004215C8 00000000 */  nop   
/* 004215CC 0320F809 */  jalr  $t9
/* 004215D0 00000000 */   nop   
/* 004215D4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004215D8 24050006 */  li    $a1, 6
/* 004215DC 8F8A8B7C */  lw     $t2, %got(cur_pinst)($gp)
/* 004215E0 8F818B5C */  lw     $at, %got(last_bb)($gp)
/* 004215E4 8D4A0000 */  lw    $t2, ($t2)
/* 004215E8 A0200002 */  sb    $zero, 2($at)
/* 004215EC A1400022 */  sb    $zero, 0x22($t2)
/* 004215F0 8F8C8B88 */  lw     $t4, %got(proc_instr_base)($gp)
/* 004215F4 8F848C0C */  lw     $a0, %got(mcount_address)($gp)
/* 004215F8 8FAB0028 */  lw    $t3, 0x28($sp)
/* 004215FC 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00421600 8D8C0000 */  lw    $t4, ($t4)
/* 00421604 8C840000 */  lw    $a0, ($a0)
/* 00421608 0320F809 */  jalr  $t9
/* 0042160C 016C3021 */   addu  $a2, $t3, $t4
/* 00421610 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00421614 24040054 */  li    $a0, 84
/* 00421618 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 0042161C 2405001D */  li    $a1, 29
/* 00421620 2406001D */  li    $a2, 29
/* 00421624 0320F809 */  jalr  $t9
/* 00421628 2407FFF8 */   li    $a3, -8
/* 0042162C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00421630 00000000 */  nop   
/* 00421634 8F8D8B7C */  lw     $t5, %got(cur_pinst)($gp)
/* 00421638 8F818C08 */  lw     $at, %got(profileflag)($gp)
/* 0042163C 8DAD0000 */  lw    $t5, ($t5)
/* 00421640 00000000 */  nop   
/* 00421644 A1A00022 */  sb    $zero, 0x22($t5)
/* 00421648 8FAE0024 */  lw    $t6, 0x24($sp)
/* 0042164C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00421650 27BD0028 */  addiu $sp, $sp, 0x28
/* 00421654 03E00008 */  jr    $ra
/* 00421658 AC2E0000 */   sw    $t6, ($at)

    .type func_0042165C, @function
func_0042165C:
    # 0042176C initbb
    # 00421A18 fill_pseudo
/* 0042165C 3C1C0FC1 */  .cpload $t9
/* 00421660 279C8C04 */  
/* 00421664 0399E021 */  
/* 00421668 8F858B7C */  lw     $a1, %got(cur_pinst)($gp)
/* 0042166C 8F828080 */  lw    $v0, %got(D_100003E4)($gp)
/* 00421670 8CAE0000 */  lw    $t6, ($a1)
/* 00421674 8F988080 */  lw    $t8, %got(D_100003E0)($gp)
/* 00421678 25C30028 */  addiu $v1, $t6, 0x28
/* 0042167C ACA30000 */  sw    $v1, ($a1)
/* 00421680 8C4203E4 */  lw    $v0, %lo(D_100003E4)($v0)
/* 00421684 8F1803E0 */  lw    $t8, %lo(D_100003E0)($t8)
/* 00421688 0002C880 */  sll   $t9, $v0, 2
/* 0042168C 0322C821 */  addu  $t9, $t9, $v0
/* 00421690 0019C8C0 */  sll   $t9, $t9, 3
/* 00421694 03194021 */  addu  $t0, $t8, $t9
/* 00421698 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0042169C 0068082B */  sltu  $at, $v1, $t0
/* 004216A0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 004216A4 1420002D */  bnez  $at, .L0042175C
/* 004216A8 AFBC0018 */   sw    $gp, 0x18($sp)
/* 004216AC 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 004216B0 00022080 */  sll   $a0, $v0, 2
/* 004216B4 00822021 */  addu  $a0, $a0, $v0
/* 004216B8 0320F809 */  jalr  $t9
/* 004216BC 00042100 */   sll   $a0, $a0, 4
/* 004216C0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004216C4 00402025 */  move  $a0, $v0
/* 004216C8 8F868080 */  lw    $a2, %got(D_100003E4)($gp)
/* 004216CC 8F858080 */  lw    $a1, %got(D_100003E0)($gp)
/* 004216D0 8CC603E4 */  lw    $a2, %lo(D_100003E4)($a2)
/* 004216D4 8F9980DC */  lw    $t9, %call16(memcpy)($gp)
/* 004216D8 00064880 */  sll   $t1, $a2, 2
/* 004216DC 8CA503E0 */  lw    $a1, %lo(D_100003E0)($a1)
/* 004216E0 01264821 */  addu  $t1, $t1, $a2
/* 004216E4 0320F809 */  jalr  $t9
/* 004216E8 000930C0 */   sll   $a2, $t1, 3
/* 004216EC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004216F0 AFA20024 */  sw    $v0, 0x24($sp)
/* 004216F4 8F848080 */  lw    $a0, %got(D_100003E0)($gp)
/* 004216F8 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 004216FC 8C8403E0 */  lw    $a0, %lo(D_100003E0)($a0)
/* 00421700 0320F809 */  jalr  $t9
/* 00421704 00000000 */   nop   
/* 00421708 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042170C 8FA50024 */  lw    $a1, 0x24($sp)
/* 00421710 8F848080 */  lw    $a0, %got(D_100003E4)($gp)
/* 00421714 8F818B7C */  lw     $at, %got(cur_pinst)($gp)
/* 00421718 248403E4 */  addiu $a0, %lo(D_100003E4) # addiu $a0, $a0, 0x3e4
/* 0042171C 8C820000 */  lw    $v0, ($a0)
/* 00421720 8F838B7C */  lw     $v1, %got(cur_pinst)($gp)
/* 00421724 00025080 */  sll   $t2, $v0, 2
/* 00421728 01425021 */  addu  $t2, $t2, $v0
/* 0042172C 000A50C0 */  sll   $t2, $t2, 3
/* 00421730 01455821 */  addu  $t3, $t2, $a1
/* 00421734 AC2B0000 */  sw    $t3, ($at)
/* 00421738 8F818B40 */  lw     $at, %got(pinstruction)($gp)
/* 0042173C 00026040 */  sll   $t4, $v0, 1
/* 00421740 AC250000 */  sw    $a1, ($at)
/* 00421744 8F818080 */  lw    $at, %got(D_100003E0)($gp)
/* 00421748 00000000 */  nop   
/* 0042174C AC2503E0 */  sw    $a1, %lo(D_100003E0)($at)
/* 00421750 AC8C0000 */  sw    $t4, ($a0)
/* 00421754 8C630000 */  lw    $v1, ($v1)
/* 00421758 00000000 */  nop   
.L0042175C:
/* 0042175C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00421760 27BD0028 */  addiu $sp, $sp, 0x28
/* 00421764 03E00008 */  jr    $ra
/* 00421768 00601025 */   move  $v0, $v1

glabel initbb
    .ent initbb
    # 0043A9C0 emitnop
    # 0043AAA4 emitalu3
    # 0043ACD0 emitalui
    # 0043B134 emittrap
    # 0043B318 emittrapi
    # 0043B630 emitfli
    # 0043B770 emitfpop
    # 0043B9AC emitbcond
    # 0043BE30 emitbene
    # 0043C290 emitcoproc
    # 0043C644 emitjump
    # 0043CB04 emitloadstore
    # 0043D0EC emitcache
    # 0043D2B0 emitshift
    # 0043D7B4 emitreg2
    # 0043D9A4 emitspec
    # 0043DF08 emitmvcoproc
    # 004594BC parsestmt
/* 0042176C 3C1C0FC1 */  .cpload $t9
/* 00421770 279C8AF4 */  
/* 00421774 0399E021 */  
/* 00421778 8F99801C */  lw    $t9, %got(func_0042165C)($gp)
/* 0042177C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00421780 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00421784 2739165C */  addiu $t9, %lo(func_0042165C) # addiu $t9, $t9, 0x165c
/* 00421788 0320F809 */  jalr  $t9
/* 0042178C AFBC0018 */   sw    $gp, 0x18($sp)
/* 00421790 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00421794 2401000F */  li    $at, 15
/* 00421798 8F828BE8 */  lw     $v0, %got(currsegment)($gp)
/* 0042179C 00000000 */  nop   
/* 004217A0 90420000 */  lbu   $v0, ($v0)
/* 004217A4 00000000 */  nop   
/* 004217A8 10400003 */  beqz  $v0, .L004217B8
/* 004217AC 00000000 */   nop   
/* 004217B0 1441003C */  bne   $v0, $at, .L004218A4
/* 004217B4 00000000 */   nop   
.L004217B8:
/* 004217B8 8F828C08 */  lw     $v0, %got(profileflag)($gp)
/* 004217BC 24010003 */  li    $at, 3
/* 004217C0 8C420000 */  lw    $v0, ($v0)
/* 004217C4 00000000 */  nop   
/* 004217C8 10410009 */  beq   $v0, $at, .L004217F0
/* 004217CC 24010002 */   li    $at, 2
/* 004217D0 14410034 */  bne   $v0, $at, .L004218A4
/* 004217D4 00000000 */   nop   
/* 004217D8 8F8E8C04 */  lw     $t6, %got(ent_pending)($gp)
/* 004217DC 00000000 */  nop   
/* 004217E0 91CE0000 */  lbu   $t6, ($t6)
/* 004217E4 00000000 */  nop   
/* 004217E8 11C0002E */  beqz  $t6, .L004218A4
/* 004217EC 00000000 */   nop   
.L004217F0:
/* 004217F0 8F828B5C */  lw     $v0, %got(last_bb)($gp)
/* 004217F4 24180001 */  li    $t8, 1
/* 004217F8 904F0002 */  lbu   $t7, 2($v0)
/* 004217FC 00000000 */  nop   
/* 00421800 11E00003 */  beqz  $t7, .L00421810
/* 00421804 00000000 */   nop   
/* 00421808 10000026 */  b     .L004218A4
/* 0042180C A0580002 */   sb    $t8, 2($v0)
.L00421810:
/* 00421810 8F998B8C */  lw     $t9, %got(reorderflag)($gp)
/* 00421814 00000000 */  nop   
/* 00421818 93390000 */  lbu   $t9, ($t9)
/* 0042181C 00000000 */  nop   
/* 00421820 17200013 */  bnez  $t9, .L00421870
/* 00421824 00000000 */   nop   
/* 00421828 90480001 */  lbu   $t0, 1($v0)
/* 0042182C 00000000 */  nop   
/* 00421830 1100000F */  beqz  $t0, .L00421870
/* 00421834 00000000 */   nop   
/* 00421838 8F828BB0 */  lw     $v0, %got(bbindex)($gp)
/* 0042183C 24010002 */  li    $at, 2
/* 00421840 8C420000 */  lw    $v0, ($v0)
/* 00421844 00000000 */  nop   
/* 00421848 14410016 */  bne   $v0, $at, .L004218A4
/* 0042184C 00000000 */   nop   
/* 00421850 8F99801C */  lw    $t9, %got(func_00421544)($gp)
/* 00421854 00402025 */  move  $a0, $v0
/* 00421858 27391544 */  addiu $t9, %lo(func_00421544) # addiu $t9, $t9, 0x1544
/* 0042185C 0320F809 */  jalr  $t9
/* 00421860 00000000 */   nop   
/* 00421864 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00421868 1000000E */  b     .L004218A4
/* 0042186C 00000000 */   nop   
.L00421870:
/* 00421870 8F828BB0 */  lw     $v0, %got(bbindex)($gp)
/* 00421874 24010001 */  li    $at, 1
/* 00421878 8C420000 */  lw    $v0, ($v0)
/* 0042187C 00000000 */  nop   
/* 00421880 14410008 */  bne   $v0, $at, .L004218A4
/* 00421884 00000000 */   nop   
/* 00421888 8F99801C */  lw    $t9, %got(func_00421544)($gp)
/* 0042188C 00402025 */  move  $a0, $v0
/* 00421890 27391544 */  addiu $t9, %lo(func_00421544) # addiu $t9, $t9, 0x1544
/* 00421894 0320F809 */  jalr  $t9
/* 00421898 00000000 */   nop   
/* 0042189C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004218A0 00000000 */  nop   
.L004218A4:
/* 004218A4 8F838B7C */  lw     $v1, %got(cur_pinst)($gp)
/* 004218A8 24040048 */  li    $a0, 72
/* 004218AC 8C690000 */  lw    $t1, ($v1)
/* 004218B0 00000000 */  nop   
/* 004218B4 AD200000 */  sw    $zero, ($t1)
/* 004218B8 8C6A0000 */  lw    $t2, ($v1)
/* 004218BC 24090001 */  li    $t1, 1
/* 004218C0 AD400014 */  sw    $zero, 0x14($t2)
/* 004218C4 8C6B0000 */  lw    $t3, ($v1)
/* 004218C8 00000000 */  nop   
/* 004218CC AD600004 */  sw    $zero, 4($t3)
/* 004218D0 8C6C0000 */  lw    $t4, ($v1)
/* 004218D4 8F8B8C10 */  lw     $t3, %got(volatileflag)($gp)
/* 004218D8 AD800010 */  sw    $zero, 0x10($t4)
/* 004218DC 8C6D0000 */  lw    $t5, ($v1)
/* 004218E0 00000000 */  nop   
/* 004218E4 A1A4001C */  sb    $a0, 0x1c($t5)
/* 004218E8 8C6E0000 */  lw    $t6, ($v1)
/* 004218EC 8F8D8C14 */  lw     $t5, %got(movableflag)($gp)
/* 004218F0 A1C4001D */  sb    $a0, 0x1d($t6)
/* 004218F4 8C6F0000 */  lw    $t7, ($v1)
/* 004218F8 00000000 */  nop   
/* 004218FC A1E4001E */  sb    $a0, 0x1e($t7)
/* 00421900 8C780000 */  lw    $t8, ($v1)
/* 00421904 8F8F8BB8 */  lw     $t7, %got(currentline)($gp)
/* 00421908 A304001F */  sb    $a0, 0x1f($t8)
/* 0042190C 8C790000 */  lw    $t9, ($v1)
/* 00421910 00000000 */  nop   
/* 00421914 A3240020 */  sb    $a0, 0x20($t9)
/* 00421918 8C680000 */  lw    $t0, ($v1)
/* 0042191C 8F998BBC */  lw     $t9, %got(currentfile)($gp)
/* 00421920 AD000008 */  sw    $zero, 8($t0)
/* 00421924 8C6A0000 */  lw    $t2, ($v1)
/* 00421928 00000000 */  nop   
/* 0042192C A5490024 */  sh    $t1, 0x24($t2)
/* 00421930 8C6C0000 */  lw    $t4, ($v1)
/* 00421934 916B0000 */  lbu   $t3, ($t3)
/* 00421938 00000000 */  nop   
/* 0042193C A18B0021 */  sb    $t3, 0x21($t4)
/* 00421940 8C6E0000 */  lw    $t6, ($v1)
/* 00421944 91AD0000 */  lbu   $t5, ($t5)
/* 00421948 00000000 */  nop   
/* 0042194C A1CD0022 */  sb    $t5, 0x22($t6)
/* 00421950 8C780000 */  lw    $t8, ($v1)
/* 00421954 8DEF0000 */  lw    $t7, ($t7)
/* 00421958 00000000 */  nop   
/* 0042195C AF0F000C */  sw    $t7, 0xc($t8)
/* 00421960 8C680000 */  lw    $t0, ($v1)
/* 00421964 8F390000 */  lw    $t9, ($t9)
/* 00421968 00000000 */  nop   
/* 0042196C AD190018 */  sw    $t9, 0x18($t0)
/* 00421970 8C690000 */  lw    $t1, ($v1)
/* 00421974 00000000 */  nop   
/* 00421978 A5200026 */  sh    $zero, 0x26($t1)
/* 0042197C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00421980 8C620000 */  lw    $v0, ($v1)
/* 00421984 03E00008 */  jr    $ra
/* 00421988 27BD0020 */   addiu $sp, $sp, 0x20

    .type initbb, @function
    .size initbb, .-initbb
    .end initbb

glabel pseudo_type
    .ent pseudo_type
    # 00455F2C parseend
    # 004594BC parsestmt
/* 0042198C 3C1C0FC1 */  .cpload $t9
/* 00421990 279C88D4 */  
/* 00421994 0399E021 */  
/* 00421998 8F8F8B40 */  lw     $t7, %got(pinstruction)($gp)
/* 0042199C 00047080 */  sll   $t6, $a0, 2
/* 004219A0 8DEF0000 */  lw    $t7, ($t7)
/* 004219A4 01C47021 */  addu  $t6, $t6, $a0
/* 004219A8 8F828BA4 */  lw     $v0, %got(ppseudo)($gp)
/* 004219AC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 004219B0 000E70C0 */  sll   $t6, $t6, 3
/* 004219B4 01CF1821 */  addu  $v1, $t6, $t7
/* 004219B8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 004219BC AFBC0018 */  sw    $gp, 0x18($sp)
/* 004219C0 AC430000 */  sw    $v1, ($v0)
/* 004219C4 8C790000 */  lw    $t9, ($v1)
/* 004219C8 3C017FFF */  lui   $at, 0x7fff
/* 004219CC 3421FFFF */  ori   $at, $at, 0xffff
/* 004219D0 1321000D */  beq   $t9, $at, .L00421A08
/* 004219D4 24060859 */   li    $a2, 2137
/* 004219D8 8F84806C */  lw    $a0, %got(RO_10013E94)($gp)
/* 004219DC 8F85806C */  lw    $a1, %got(RO_10013EB4)($gp)
/* 004219E0 8F998670 */  lw    $t9, %call16(assertion_failed)($gp)
/* 004219E4 24843E94 */  addiu $a0, %lo(RO_10013E94) # addiu $a0, $a0, 0x3e94
/* 004219E8 0320F809 */  jalr  $t9
/* 004219EC 24A53EB4 */   addiu $a1, %lo(RO_10013EB4) # addiu $a1, $a1, 0x3eb4
/* 004219F0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004219F4 00000000 */  nop   
/* 004219F8 8F838BA4 */  lw     $v1, %got(ppseudo)($gp)
/* 004219FC 00000000 */  nop   
/* 00421A00 8C630000 */  lw    $v1, ($v1)
/* 00421A04 00000000 */  nop   
.L00421A08:
/* 00421A08 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00421A0C 8C620010 */  lw    $v0, 0x10($v1)
/* 00421A10 03E00008 */  jr    $ra
/* 00421A14 27BD0020 */   addiu $sp, $sp, 0x20

    .type pseudo_type, @function
    .size pseudo_type, .-pseudo_type
    .end pseudo_type

glabel fill_pseudo
    .ent fill_pseudo
    # 00421AF0 fill_ascii_pseudo
    # 00441E3C parsefpconst
    # 00450B48 init_cpalias
    # 00454604 parsealign
    # 00454CB0 parsebyte
    # 00455EBC parseprologue
    # 00455F2C parseend
    # 00456FEC parse_alias
    # 00457570 parsespace
    # 00458E18 parseword
    # 004594BC parsestmt
/* 00421A18 3C1C0FC1 */  .cpload $t9
/* 00421A1C 279C8848 */  
/* 00421A20 0399E021 */  
/* 00421A24 8F828BB0 */  lw     $v0, %got(bbindex)($gp)
/* 00421A28 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00421A2C 8F99801C */  lw    $t9, %got(func_0042165C)($gp)
/* 00421A30 8C4E0000 */  lw    $t6, ($v0)
/* 00421A34 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00421A38 2739165C */  addiu $t9, %lo(func_0042165C) # addiu $t9, $t9, 0x165c
/* 00421A3C 25CF0001 */  addiu $t7, $t6, 1
/* 00421A40 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00421A44 AFA50024 */  sw    $a1, 0x24($sp)
/* 00421A48 AFA60028 */  sw    $a2, 0x28($sp)
/* 00421A4C AFA7002C */  sw    $a3, 0x2c($sp)
/* 00421A50 AFA40020 */  sw    $a0, 0x20($sp)
/* 00421A54 0320F809 */  jalr  $t9
/* 00421A58 AC4F0000 */   sw    $t7, ($v0)
/* 00421A5C 8FA40020 */  lw    $a0, 0x20($sp)
/* 00421A60 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00421A64 3C187FFF */  lui   $t8, 0x7fff
/* 00421A68 3718FFFF */  ori   $t8, $t8, 0xffff
/* 00421A6C AC580000 */  sw    $t8, ($v0)
/* 00421A70 AC440010 */  sw    $a0, 0x10($v0)
/* 00421A74 8FB90024 */  lw    $t9, 0x24($sp)
/* 00421A78 24010009 */  li    $at, 9
/* 00421A7C AC590004 */  sw    $t9, 4($v0)
/* 00421A80 8FA80028 */  lw    $t0, 0x28($sp)
/* 00421A84 00000000 */  nop   
/* 00421A88 AC480008 */  sw    $t0, 8($v0)
/* 00421A8C 8FA9002C */  lw    $t1, 0x2c($sp)
/* 00421A90 14810004 */  bne   $a0, $at, .L00421AA4
/* 00421A94 AC49000C */   sw    $t1, 0xc($v0)
/* 00421A98 8FAA0034 */  lw    $t2, 0x34($sp)
/* 00421A9C 10000004 */  b     .L00421AB0
/* 00421AA0 AC4A0014 */   sw    $t2, 0x14($v0)
.L00421AA4:
/* 00421AA4 8FAB0030 */  lw    $t3, 0x30($sp)
/* 00421AA8 00000000 */  nop   
/* 00421AAC AC4B0014 */  sw    $t3, 0x14($v0)
.L00421AB0:
/* 00421AB0 2401001A */  li    $at, 26
/* 00421AB4 10810003 */  beq   $a0, $at, .L00421AC4
/* 00421AB8 24010019 */   li    $at, 25
/* 00421ABC 14810004 */  bne   $a0, $at, .L00421AD0
/* 00421AC0 00000000 */   nop   
.L00421AC4:
/* 00421AC4 8F818088 */  lw    $at, %got(B_10023318)($gp)
/* 00421AC8 240C0001 */  li    $t4, 1
/* 00421ACC AC2C3318 */  sw    $t4, %lo(B_10023318)($at)
.L00421AD0:
/* 00421AD0 8F838BFC */  lw     $v1, %got(num_pseudo)($gp)
/* 00421AD4 AC400018 */  sw    $zero, 0x18($v0)
/* 00421AD8 8C6D0000 */  lw    $t5, ($v1)
/* 00421ADC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00421AE0 25AE0001 */  addiu $t6, $t5, 1
/* 00421AE4 27BD0020 */  addiu $sp, $sp, 0x20
/* 00421AE8 03E00008 */  jr    $ra
/* 00421AEC AC6E0000 */   sw    $t6, ($v1)

    .type fill_pseudo, @function
    .size fill_pseudo, .-fill_pseudo
    .end fill_pseudo

glabel fill_ascii_pseudo
    .ent fill_ascii_pseudo
    # 00454794 parseascii
/* 00421AF0 3C1C0FC1 */  .cpload $t9
/* 00421AF4 279C8770 */  
/* 00421AF8 0399E021 */  
/* 00421AFC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 00421B00 AFA60038 */  sw    $a2, 0x38($sp)
/* 00421B04 93AE003B */  lbu   $t6, 0x3b($sp)
/* 00421B08 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 00421B0C AFBF0024 */  sw    $ra, 0x24($sp)
/* 00421B10 AFA40030 */  sw    $a0, 0x30($sp)
/* 00421B14 AFBC0020 */  sw    $gp, 0x20($sp)
/* 00421B18 AFA50034 */  sw    $a1, 0x34($sp)
/* 00421B1C 0320F809 */  jalr  $t9
/* 00421B20 01C52021 */   addu  $a0, $t6, $a1
/* 00421B24 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00421B28 8FA50030 */  lw    $a1, 0x30($sp)
/* 00421B2C 8F9980DC */  lw    $t9, %call16(memcpy)($gp)
/* 00421B30 8FA60034 */  lw    $a2, 0x34($sp)
/* 00421B34 00402025 */  move  $a0, $v0
/* 00421B38 0320F809 */  jalr  $t9
/* 00421B3C AFA2002C */   sw    $v0, 0x2c($sp)
/* 00421B40 93A8003B */  lbu   $t0, 0x3b($sp)
/* 00421B44 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00421B48 8FA3002C */  lw    $v1, 0x2c($sp)
/* 00421B4C 8FA90034 */  lw    $t1, 0x34($sp)
/* 00421B50 11000003 */  beqz  $t0, .L00421B60
/* 00421B54 2404000C */   li    $a0, 12
/* 00421B58 0069C021 */  addu  $t8, $v1, $t1
/* 00421B5C A3000000 */  sb    $zero, ($t8)
.L00421B60:
/* 00421B60 8F9982E4 */  lw    $t9, %call16(fill_pseudo)($gp)
/* 00421B64 01092821 */  addu  $a1, $t0, $t1
/* 00421B68 00003025 */  move  $a2, $zero
/* 00421B6C 00003825 */  move  $a3, $zero
/* 00421B70 AFA30010 */  sw    $v1, 0x10($sp)
/* 00421B74 0320F809 */  jalr  $t9
/* 00421B78 AFA00014 */   sw    $zero, 0x14($sp)
/* 00421B7C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 00421B80 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00421B84 03E00008 */  jr    $ra
/* 00421B88 27BD0030 */   addiu $sp, $sp, 0x30

    .type fill_ascii_pseudo, @function
    .size fill_ascii_pseudo, .-fill_ascii_pseudo
    .end fill_ascii_pseudo

glabel fill_inst
    .ent fill_inst
    # 0043A9C0 emitnop
    # 0043AAA4 emitalu3
    # 0043ACD0 emitalui
    # 0043B134 emittrap
    # 0043B318 emittrapi
    # 0043B630 emitfli
    # 0043B770 emitfpop
    # 0043B9AC emitbcond
    # 0043BE30 emitbene
    # 0043C290 emitcoproc
    # 0043C644 emitjump
    # 0043CB04 emitloadstore
    # 0043D0EC emitcache
    # 0043D2B0 emitshift
    # 0043D7B4 emitreg2
    # 0043D9A4 emitspec
    # 0043DF08 emitmvcoproc
/* 00421B8C 3C1C0FC1 */  .cpload $t9
/* 00421B90 279C86D4 */  
/* 00421B94 0399E021 */  
/* 00421B98 8F8E8BB0 */  lw     $t6, %got(bbindex)($gp)
/* 00421B9C 8F818C00 */  lw     $at, %got(last_instr_bbindex)($gp)
/* 00421BA0 8F8F88EC */  lw     $t7, %got(mnem)($gp)
/* 00421BA4 8DCE0000 */  lw    $t6, ($t6)
/* 00421BA8 00074080 */  sll   $t0, $a3, 2
/* 00421BAC 010F4821 */  addu  $t1, $t0, $t7
/* 00421BB0 AC2E0000 */  sw    $t6, ($at)
/* 00421BB4 8F838C18 */  lw     $v1, %got(fpop_src3)($gp)
/* 00421BB8 91380003 */  lbu   $t8, 3($t1)
/* 00421BBC 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 00421BC0 90630000 */  lbu   $v1, ($v1)
/* 00421BC4 2F010028 */  sltiu $at, $t8, 0x28
/* 00421BC8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00421BCC AFBC0018 */  sw    $gp, 0x18($sp)
/* 00421BD0 102000EC */  beqz  $at, .L00421F84
/* 00421BD4 00001025 */   move  $v0, $zero
/* 00421BD8 8F81806C */  lw    $at, %got(jtbl_100141E0)($gp)
/* 00421BDC 0018C080 */  sll   $t8, $t8, 2
/* 00421BE0 00380821 */  addu  $at, $at, $t8
/* 00421BE4 8C3841E0 */  lw    $t8, %lo(jtbl_100141E0)($at)
/* 00421BE8 00000000 */  nop   
/* 00421BEC 031CC021 */  addu  $t8, $t8, $gp
/* 00421BF0 03000008 */  jr    $t8
/* 00421BF4 00000000 */   nop   
.L00421BF8:
/* 00421BF8 8FA3005C */  lw    $v1, 0x5c($sp)
/* 00421BFC 0005CD40 */  sll   $t9, $a1, 0x15
/* 00421C00 00065400 */  sll   $t2, $a2, 0x10
/* 00421C04 032A5821 */  addu  $t3, $t9, $t2
/* 00421C08 100000ED */  b     .L00421FC0
/* 00421C0C 01631021 */   addu  $v0, $t3, $v1
.L00421C10:
/* 00421C10 8FA3005C */  lw    $v1, 0x5c($sp)
/* 00421C14 00056540 */  sll   $t4, $a1, 0x15
/* 00421C18 00046C00 */  sll   $t5, $a0, 0x10
/* 00421C1C 018D7021 */  addu  $t6, $t4, $t5
/* 00421C20 100000E7 */  b     .L00421FC0
/* 00421C24 01C31021 */   addu  $v0, $t6, $v1
.L00421C28:
/* 00421C28 8FA3005C */  lw    $v1, 0x5c($sp)
/* 00421C2C 00057D40 */  sll   $t7, $a1, 0x15
/* 00421C30 0006C400 */  sll   $t8, $a2, 0x10
/* 00421C34 01F8C821 */  addu  $t9, $t7, $t8
/* 00421C38 00035180 */  sll   $t2, $v1, 6
/* 00421C3C 100000E0 */  b     .L00421FC0
/* 00421C40 032A1021 */   addu  $v0, $t9, $t2
.L00421C44:
/* 00421C44 00055D40 */  sll   $t3, $a1, 0x15
/* 00421C48 00066400 */  sll   $t4, $a2, 0x10
/* 00421C4C 016C6821 */  addu  $t5, $t3, $t4
/* 00421C50 000472C0 */  sll   $t6, $a0, 0xb
/* 00421C54 100000DA */  b     .L00421FC0
/* 00421C58 01AE1021 */   addu  $v0, $t5, $t6
.L00421C5C:
/* 00421C5C 00057D40 */  sll   $t7, $a1, 0x15
/* 00421C60 0004C2C0 */  sll   $t8, $a0, 0xb
/* 00421C64 100000D6 */  b     .L00421FC0
/* 00421C68 01F81021 */   addu  $v0, $t7, $t8
.L00421C6C:
/* 00421C6C 8FA3005C */  lw    $v1, 0x5c($sp)
/* 00421C70 0005CD40 */  sll   $t9, $a1, 0x15
/* 00421C74 100000D2 */  b     .L00421FC0
/* 00421C78 03231021 */   addu  $v0, $t9, $v1
.L00421C7C:
/* 00421C7C 100000D0 */  b     .L00421FC0
/* 00421C80 00051540 */   sll   $v0, $a1, 0x15
.L00421C84:
/* 00421C84 8FA3005C */  lw    $v1, 0x5c($sp)
/* 00421C88 00045540 */  sll   $t2, $a0, 0x15
/* 00421C8C 00065C00 */  sll   $t3, $a2, 0x10
/* 00421C90 014B6021 */  addu  $t4, $t2, $t3
/* 00421C94 00036980 */  sll   $t5, $v1, 6
/* 00421C98 100000C9 */  b     .L00421FC0
/* 00421C9C 018D1021 */   addu  $v0, $t4, $t5
.L00421CA0:
/* 00421CA0 00067540 */  sll   $t6, $a2, 0x15
/* 00421CA4 00057C00 */  sll   $t7, $a1, 0x10
/* 00421CA8 01CFC021 */  addu  $t8, $t6, $t7
/* 00421CAC 0004CAC0 */  sll   $t9, $a0, 0xb
/* 00421CB0 100000C3 */  b     .L00421FC0
/* 00421CB4 03191021 */   addu  $v0, $t8, $t9
.L00421CB8:
/* 00421CB8 24ABFFE0 */  addiu $t3, $a1, -0x20
/* 00421CBC 8FA3005C */  lw    $v1, 0x5c($sp)
/* 00421CC0 000B6400 */  sll   $t4, $t3, 0x10
/* 00421CC4 00065540 */  sll   $t2, $a2, 0x15
/* 00421CC8 014C6821 */  addu  $t5, $t2, $t4
/* 00421CCC 100000BC */  b     .L00421FC0
/* 00421CD0 01A31021 */   addu  $v0, $t5, $v1
.L00421CD4:
/* 00421CD4 8FA3005C */  lw    $v1, 0x5c($sp)
/* 00421CD8 00067540 */  sll   $t6, $a2, 0x15
/* 00421CDC 00057C00 */  sll   $t7, $a1, 0x10
/* 00421CE0 01CFC021 */  addu  $t8, $t6, $t7
/* 00421CE4 100000B6 */  b     .L00421FC0
/* 00421CE8 03031021 */   addu  $v0, $t8, $v1
.L00421CEC:
/* 00421CEC 8FA3005C */  lw    $v1, 0x5c($sp)
/* 00421CF0 0006CD40 */  sll   $t9, $a2, 0x15
/* 00421CF4 00045C00 */  sll   $t3, $a0, 0x10
/* 00421CF8 032B5021 */  addu  $t2, $t9, $t3
/* 00421CFC 100000B0 */  b     .L00421FC0
/* 00421D00 01431021 */   addu  $v0, $t2, $v1
.L00421D04:
/* 00421D04 248DFFE0 */  addiu $t5, $a0, -0x20
/* 00421D08 8FA3005C */  lw    $v1, 0x5c($sp)
/* 00421D0C 000D7400 */  sll   $t6, $t5, 0x10
/* 00421D10 00066540 */  sll   $t4, $a2, 0x15
/* 00421D14 018E7821 */  addu  $t7, $t4, $t6
/* 00421D18 100000A9 */  b     .L00421FC0
/* 00421D1C 01E31021 */   addu  $v0, $t7, $v1
.L00421D20:
/* 00421D20 24D8FFE0 */  addiu $t8, $a2, -0x20
/* 00421D24 24ABFFE0 */  addiu $t3, $a1, -0x20
/* 00421D28 000B52C0 */  sll   $t2, $t3, 0xb
/* 00421D2C 0018CC00 */  sll   $t9, $t8, 0x10
/* 00421D30 248CFFE0 */  addiu $t4, $a0, -0x20
/* 00421D34 000C7180 */  sll   $t6, $t4, 6
/* 00421D38 032A6821 */  addu  $t5, $t9, $t2
/* 00421D3C 100000A0 */  b     .L00421FC0
/* 00421D40 01AE1021 */   addu  $v0, $t5, $t6
.L00421D44:
/* 00421D44 24AFFFE0 */  addiu $t7, $a1, -0x20
/* 00421D48 248BFFE0 */  addiu $t3, $a0, -0x20
/* 00421D4C 000BC980 */  sll   $t9, $t3, 6
/* 00421D50 000FC2C0 */  sll   $t8, $t7, 0xb
/* 00421D54 1000009A */  b     .L00421FC0
/* 00421D58 03191021 */   addu  $v0, $t8, $t9
.L00421D5C:
/* 00421D5C 24CAFFE0 */  addiu $t2, $a2, -0x20
/* 00421D60 24ADFFE0 */  addiu $t5, $a1, -0x20
/* 00421D64 000D72C0 */  sll   $t6, $t5, 0xb
/* 00421D68 000A6400 */  sll   $t4, $t2, 0x10
/* 00421D6C 248BFFC0 */  addiu $t3, $a0, -0x40
/* 00421D70 000BC200 */  sll   $t8, $t3, 8
/* 00421D74 018E7821 */  addu  $t7, $t4, $t6
/* 00421D78 10000091 */  b     .L00421FC0
/* 00421D7C 01F81021 */   addu  $v0, $t7, $t8
.L00421D80:
/* 00421D80 8FA3005C */  lw    $v1, 0x5c($sp)
/* 00421D84 0005CC00 */  sll   $t9, $a1, 0x10
/* 00421D88 000452C0 */  sll   $t2, $a0, 0xb
/* 00421D8C 032A6821 */  addu  $t5, $t9, $t2
/* 00421D90 00036180 */  sll   $t4, $v1, 6
/* 00421D94 1000008A */  b     .L00421FC0
/* 00421D98 01AC1021 */   addu  $v0, $t5, $t4
.L00421D9C:
/* 00421D9C 00047400 */  sll   $t6, $a0, 0x10
/* 00421DA0 00055AC0 */  sll   $t3, $a1, 0xb
/* 00421DA4 10000086 */  b     .L00421FC0
/* 00421DA8 01CB1021 */   addu  $v0, $t6, $t3
.L00421DAC:
/* 00421DAC 00047C00 */  sll   $t7, $a0, 0x10
/* 00421DB0 0005C040 */  sll   $t8, $a1, 1
/* 00421DB4 10000082 */  b     .L00421FC0
/* 00421DB8 01F81021 */   addu  $v0, $t7, $t8
.L00421DBC:
/* 00421DBC 24AAFFE0 */  addiu $t2, $a1, -0x20
/* 00421DC0 000A6AC0 */  sll   $t5, $t2, 0xb
/* 00421DC4 0004CC00 */  sll   $t9, $a0, 0x10
/* 00421DC8 1000007D */  b     .L00421FC0
/* 00421DCC 032D1021 */   addu  $v0, $t9, $t5
.L00421DD0:
/* 00421DD0 8FA3005C */  lw    $v1, 0x5c($sp)
/* 00421DD4 248EFFE0 */  addiu $t6, $a0, -0x20
/* 00421DD8 000E5980 */  sll   $t3, $t6, 6
/* 00421DDC 000362C0 */  sll   $t4, $v1, 0xb
/* 00421DE0 10000077 */  b     .L00421FC0
/* 00421DE4 018B1021 */   addu  $v0, $t4, $t3
.L00421DE8:
/* 00421DE8 10000075 */  b     .L00421FC0
/* 00421DEC 000512C0 */   sll   $v0, $a1, 0xb
.L00421DF0:
/* 00421DF0 10000073 */  b     .L00421FC0
/* 00421DF4 000412C0 */   sll   $v0, $a0, 0xb
.L00421DF8:
/* 00421DF8 8FA2005C */  lw    $v0, 0x5c($sp)
/* 00421DFC 10000071 */  b     .L00421FC4
/* 00421E00 8FA40058 */   lw    $a0, 0x58($sp)
.L00421E04:
/* 00421E04 8FA3005C */  lw    $v1, 0x5c($sp)
/* 00421E08 1000006D */  b     .L00421FC0
/* 00421E0C 00031082 */   srl   $v0, $v1, 2
.L00421E10:
/* 00421E10 8FA3005C */  lw    $v1, 0x5c($sp)
/* 00421E14 00000000 */  nop   
/* 00421E18 306F03FF */  andi  $t7, $v1, 0x3ff
/* 00421E1C 00035282 */  srl   $t2, $v1, 0xa
/* 00421E20 000AC980 */  sll   $t9, $t2, 6
/* 00421E24 000FC400 */  sll   $t8, $t7, 0x10
/* 00421E28 10000065 */  b     .L00421FC0
/* 00421E2C 03191021 */   addu  $v0, $t8, $t9
.L00421E30:
/* 00421E30 8FA3005C */  lw    $v1, 0x5c($sp)
/* 00421E34 00066D40 */  sll   $t5, $a2, 0x15
/* 00421E38 00057400 */  sll   $t6, $a1, 0x10
/* 00421E3C 01AE6021 */  addu  $t4, $t5, $t6
/* 00421E40 00045AC0 */  sll   $t3, $a0, 0xb
/* 00421E44 018B7821 */  addu  $t7, $t4, $t3
/* 00421E48 00035180 */  sll   $t2, $v1, 6
/* 00421E4C 1000005C */  b     .L00421FC0
/* 00421E50 01EA1021 */   addu  $v0, $t7, $t2
.L00421E54:
/* 00421E54 24B9FFE0 */  addiu $t9, $a1, -0x20
/* 00421E58 00196AC0 */  sll   $t5, $t9, 0xb
/* 00421E5C 0004C400 */  sll   $t8, $a0, 0x10
/* 00421E60 10000057 */  b     .L00421FC0
/* 00421E64 030D1021 */   addu  $v0, $t8, $t5
.L00421E68:
/* 00421E68 00047400 */  sll   $t6, $a0, 0x10
/* 00421E6C 000562C0 */  sll   $t4, $a1, 0xb
/* 00421E70 10000053 */  b     .L00421FC0
/* 00421E74 01CC1021 */   addu  $v0, $t6, $t4
.L00421E78:
/* 00421E78 24ABFFE0 */  addiu $t3, $a1, -0x20
/* 00421E7C 000B7D40 */  sll   $t7, $t3, 0x15
/* 00421E80 246AFFE0 */  addiu $t2, $v1, -0x20
/* 00421E84 000ACC00 */  sll   $t9, $t2, 0x10
/* 00421E88 24CDFFE0 */  addiu $t5, $a2, -0x20
/* 00421E8C 000D72C0 */  sll   $t6, $t5, 0xb
/* 00421E90 01F9C021 */  addu  $t8, $t7, $t9
/* 00421E94 248BFFE0 */  addiu $t3, $a0, -0x20
/* 00421E98 000B5180 */  sll   $t2, $t3, 6
/* 00421E9C 030E6021 */  addu  $t4, $t8, $t6
/* 00421EA0 10000047 */  b     .L00421FC0
/* 00421EA4 018A1021 */   addu  $v0, $t4, $t2
.L00421EA8:
/* 00421EA8 8FA3005C */  lw    $v1, 0x5c($sp)
/* 00421EAC 24AFFFC0 */  addiu $t7, $a1, -0x40
/* 00421EB0 000FCC80 */  sll   $t9, $t7, 0x12
/* 00421EB4 10000042 */  b     .L00421FC0
/* 00421EB8 03231021 */   addu  $v0, $t9, $v1
.L00421EBC:
/* 00421EBC 24D8FFC0 */  addiu $t8, $a2, -0x40
/* 00421EC0 00187480 */  sll   $t6, $t8, 0x12
/* 00421EC4 00056D40 */  sll   $t5, $a1, 0x15
/* 00421EC8 01AE5821 */  addu  $t3, $t5, $t6
/* 00421ECC 000462C0 */  sll   $t4, $a0, 0xb
/* 00421ED0 1000003B */  b     .L00421FC0
/* 00421ED4 016C1021 */   addu  $v0, $t3, $t4
.L00421ED8:
/* 00421ED8 24CAFFC0 */  addiu $t2, $a2, -0x40
/* 00421EDC 24B9FFE0 */  addiu $t9, $a1, -0x20
/* 00421EE0 0019C2C0 */  sll   $t8, $t9, 0xb
/* 00421EE4 000A7C80 */  sll   $t7, $t2, 0x12
/* 00421EE8 248EFFE0 */  addiu $t6, $a0, -0x20
/* 00421EEC 000E5980 */  sll   $t3, $t6, 6
/* 00421EF0 01F86821 */  addu  $t5, $t7, $t8
/* 00421EF4 10000032 */  b     .L00421FC0
/* 00421EF8 01AB1021 */   addu  $v0, $t5, $t3
.L00421EFC:
/* 00421EFC 00056540 */  sll   $t4, $a1, 0x15
/* 00421F00 00065400 */  sll   $t2, $a2, 0x10
/* 00421F04 248FFFE0 */  addiu $t7, $a0, -0x20
/* 00421F08 000FC180 */  sll   $t8, $t7, 6
/* 00421F0C 018AC821 */  addu  $t9, $t4, $t2
/* 00421F10 1000002B */  b     .L00421FC0
/* 00421F14 03381021 */   addu  $v0, $t9, $t8
.L00421F18:
/* 00421F18 00057540 */  sll   $t6, $a1, 0x15
/* 00421F1C 00066C00 */  sll   $t5, $a2, 0x10
/* 00421F20 248CFFE0 */  addiu $t4, $a0, -0x20
/* 00421F24 000C52C0 */  sll   $t2, $t4, 0xb
/* 00421F28 01CD5821 */  addu  $t3, $t6, $t5
/* 00421F2C 10000024 */  b     .L00421FC0
/* 00421F30 016A1021 */   addu  $v0, $t3, $t2
.L00421F34:
/* 00421F34 00057D40 */  sll   $t7, $a1, 0x15
/* 00421F38 0006CC00 */  sll   $t9, $a2, 0x10
/* 00421F3C 01F9C021 */  addu  $t8, $t7, $t9
/* 00421F40 000472C0 */  sll   $t6, $a0, 0xb
/* 00421F44 1000001E */  b     .L00421FC0
/* 00421F48 030E1021 */   addu  $v0, $t8, $t6
.L00421F4C:
/* 00421F4C 24ACFFE0 */  addiu $t4, $a1, -0x20
/* 00421F50 000C5AC0 */  sll   $t3, $t4, 0xb
/* 00421F54 00066C00 */  sll   $t5, $a2, 0x10
/* 00421F58 248FFFE0 */  addiu $t7, $a0, -0x20
/* 00421F5C 000FC980 */  sll   $t9, $t7, 6
/* 00421F60 01AB5021 */  addu  $t2, $t5, $t3
/* 00421F64 10000016 */  b     .L00421FC0
/* 00421F68 01591021 */   addu  $v0, $t2, $t9
.L00421F6C:
/* 00421F6C 8FA3005C */  lw    $v1, 0x5c($sp)
/* 00421F70 0006C540 */  sll   $t8, $a2, 0x15
/* 00421F74 00057400 */  sll   $t6, $a1, 0x10
/* 00421F78 030E6021 */  addu  $t4, $t8, $t6
/* 00421F7C 10000010 */  b     .L00421FC0
/* 00421F80 01831021 */   addu  $v0, $t4, $v1
.L00421F84:
/* 00421F84 8F84806C */  lw    $a0, %got(RO_10013EC0)($gp)
/* 00421F88 8F998674 */  lw    $t9, %call16(postcerror)($gp)
/* 00421F8C 24050001 */  li    $a1, 1
/* 00421F90 AFA2003C */  sw    $v0, 0x3c($sp)
/* 00421F94 AFA70054 */  sw    $a3, 0x54($sp)
/* 00421F98 AFA80028 */  sw    $t0, 0x28($sp)
/* 00421F9C AFA90024 */  sw    $t1, 0x24($sp)
/* 00421FA0 0320F809 */  jalr  $t9
/* 00421FA4 24843EC0 */   addiu $a0, %lo(RO_10013EC0) # addiu $a0, $a0, 0x3ec0
/* 00421FA8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00421FAC 8FA2003C */  lw    $v0, 0x3c($sp)
/* 00421FB0 8FA70054 */  lw    $a3, 0x54($sp)
/* 00421FB4 8FA80028 */  lw    $t0, 0x28($sp)
/* 00421FB8 8FA90024 */  lw    $t1, 0x24($sp)
/* 00421FBC 00000000 */  nop   
.L00421FC0:
/* 00421FC0 8FA40058 */  lw    $a0, 0x58($sp)
.L00421FC4:
/* 00421FC4 8F8D8B44 */  lw     $t5, %got(template)($gp)
/* 00421FC8 A4870024 */  sh    $a3, 0x24($a0)
/* 00421FCC 010D5821 */  addu  $t3, $t0, $t5
/* 00421FD0 8D6F0000 */  lw    $t7, ($t3)
/* 00421FD4 00000000 */  nop   
/* 00421FD8 01E25021 */  addu  $t2, $t7, $v0
/* 00421FDC AC8A0000 */  sw    $t2, ($a0)
/* 00421FE0 8F9982F0 */  lw    $t9, %call16(update_regs_in_inst)($gp)
/* 00421FE4 AFA90024 */  sw    $t1, 0x24($sp)
/* 00421FE8 0320F809 */  jalr  $t9
/* 00421FEC 00000000 */   nop   
/* 00421FF0 8FA90024 */  lw    $t1, 0x24($sp)
/* 00421FF4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00421FF8 8D220000 */  lw    $v0, ($t1)
/* 00421FFC 8FA50058 */  lw    $a1, 0x58($sp)
/* 00422000 0002CA02 */  srl   $t9, $v0, 8
/* 00422004 13200034 */  beqz  $t9, .L004220D8
/* 00422008 03201025 */   move  $v0, $t9
/* 0042200C 304401C0 */  andi  $a0, $v0, 0x1c0
/* 00422010 1080001A */  beqz  $a0, .L0042207C
/* 00422014 0004C982 */   srl   $t9, $a0, 6
/* 00422018 24010080 */  li    $at, 128
/* 0042201C 10810017 */  beq   $a0, $at, .L0042207C
/* 00422020 240100C0 */   li    $at, 192
/* 00422024 10810003 */  beq   $a0, $at, .L00422034
/* 00422028 24010100 */   li    $at, 256
/* 0042202C 14810013 */  bne   $a0, $at, .L0042207C
/* 00422030 00000000 */   nop   
.L00422034:
/* 00422034 8F828C1C */  lw     $v0, %got(liveset)($gp)
/* 00422038 240E0002 */  li    $t6, 2
/* 0042203C 8C580000 */  lw    $t8, ($v0)
/* 00422040 00000000 */  nop   
/* 00422044 1300000D */  beqz  $t8, .L0042207C
/* 00422048 00000000 */   nop   
/* 0042204C 8F8C8AF8 */  lw     $t4, %got(picflag)($gp)
/* 00422050 AC4E0000 */  sw    $t6, ($v0)
/* 00422054 8D8C0000 */  lw    $t4, ($t4)
/* 00422058 00000000 */  nop   
/* 0042205C 19800007 */  blez  $t4, .L0042207C
/* 00422060 00000000 */   nop   
/* 00422064 8F828C20 */  lw     $v0, %got(binlive)($gp)
/* 00422068 00000000 */  nop   
/* 0042206C 8C4D0000 */  lw    $t5, ($v0)
/* 00422070 00000000 */  nop   
/* 00422074 35AB0040 */  ori   $t3, $t5, 0x40
/* 00422078 AC4B0000 */  sw    $t3, ($v0)
.L0042207C:
/* 0042207C 90A2001C */  lbu   $v0, 0x1c($a1)
/* 00422080 00000000 */  nop   
/* 00422084 04400007 */  bltz  $v0, .L004220A4
/* 00422088 28410020 */   slti  $at, $v0, 0x20
/* 0042208C 10200005 */  beqz  $at, .L004220A4
/* 00422090 00000000 */   nop   
/* 00422094 8F8F8C24 */  lw     $t7, %got(pre_reorder_peepholes)($gp)
/* 00422098 00000000 */  nop   
/* 0042209C 004F5021 */  addu  $t2, $v0, $t7
/* 004220A0 A1400014 */  sb    $zero, 0x14($t2)
.L004220A4:
/* 004220A4 1320000D */  beqz  $t9, .L004220DC
/* 004220A8 8FBF001C */   lw    $ra, 0x1c($sp)
/* 004220AC 8F988B7C */  lw     $t8, %got(cur_pinst)($gp)
/* 004220B0 8F8E8B40 */  lw     $t6, %got(pinstruction)($gp)
/* 004220B4 8F180000 */  lw    $t8, ($t8)
/* 004220B8 8DCE0000 */  lw    $t6, ($t6)
/* 004220BC 24010028 */  li    $at, 40
/* 004220C0 030E6023 */  subu  $t4, $t8, $t6
/* 004220C4 0181001A */  div   $zero, $t4, $at
/* 004220C8 8F818088 */  lw    $at, %got(B_10023314)($gp)
/* 004220CC 00006812 */  mflo  $t5
/* 004220D0 AC2D3314 */  sw    $t5, %lo(B_10023314)($at)
/* 004220D4 00000000 */  nop   
.L004220D8:
/* 004220D8 8FBF001C */  lw    $ra, 0x1c($sp)
.L004220DC:
/* 004220DC 27BD0048 */  addiu $sp, $sp, 0x48
/* 004220E0 03E00008 */  jr    $ra
/* 004220E4 00000000 */   nop   

    .type fill_inst, @function
    .size fill_inst, .-fill_inst
    .end fill_inst

glabel update_regs_in_inst
    .ent update_regs_in_inst
    # 00415B6C change_bb
    # 0041704C func_0041704C
    # 0041B7C8 func_0041B7C8
    # 00421B8C fill_inst
/* 004220E8 3C1C0FC1 */  .cpload $t9
/* 004220EC 279C8178 */  
/* 004220F0 0399E021 */  
/* 004220F4 948E0024 */  lhu   $t6, 0x24($a0)
/* 004220F8 8F9888EC */  lw     $t8, %got(mnem)($gp)
/* 004220FC 000E7880 */  sll   $t7, $t6, 2
/* 00422100 01F8C821 */  addu  $t9, $t7, $t8
/* 00422104 932A0003 */  lbu   $t2, 3($t9)
/* 00422108 8C820000 */  lw    $v0, ($a0)
/* 0042210C 2D410028 */  sltiu $at, $t2, 0x28
/* 00422110 24030048 */  li    $v1, 72
/* 00422114 24050048 */  li    $a1, 72
/* 00422118 24060048 */  li    $a2, 72
/* 0042211C 24070048 */  li    $a3, 72
/* 00422120 10200101 */  beqz  $at, .L00422528
/* 00422124 24080048 */   li    $t0, 72
/* 00422128 8F81806C */  lw    $at, %got(jtbl_10014280)($gp)
/* 0042212C 000A5080 */  sll   $t2, $t2, 2
/* 00422130 002A0821 */  addu  $at, $at, $t2
/* 00422134 8C2A4280 */  lw    $t2, %lo(jtbl_10014280)($at)
/* 00422138 00000000 */  nop   
/* 0042213C 015C5021 */  addu  $t2, $t2, $gp
/* 00422140 01400008 */  jr    $t2
/* 00422144 00000000 */   nop   
.L00422148:
/* 00422148 00023D42 */  srl   $a3, $v0, 0x15
/* 0042214C 00023402 */  srl   $a2, $v0, 0x10
/* 00422150 30EB001F */  andi  $t3, $a3, 0x1f
/* 00422154 30CC001F */  andi  $t4, $a2, 0x1f
/* 00422158 01603825 */  move  $a3, $t3
/* 0042215C 100000F2 */  b     .L00422528
/* 00422160 01803025 */   move  $a2, $t4
.L00422164:
/* 00422164 00023D42 */  srl   $a3, $v0, 0x15
/* 00422168 00022C02 */  srl   $a1, $v0, 0x10
/* 0042216C 30ED001F */  andi  $t5, $a3, 0x1f
/* 00422170 30AE001F */  andi  $t6, $a1, 0x1f
/* 00422174 01A03825 */  move  $a3, $t5
/* 00422178 100000EB */  b     .L00422528
/* 0042217C 01C02825 */   move  $a1, $t6
.L00422180:
/* 00422180 00023D42 */  srl   $a3, $v0, 0x15
/* 00422184 00023402 */  srl   $a2, $v0, 0x10
/* 00422188 30EF001F */  andi  $t7, $a3, 0x1f
/* 0042218C 30D8001F */  andi  $t8, $a2, 0x1f
/* 00422190 01E03825 */  move  $a3, $t7
/* 00422194 100000E4 */  b     .L00422528
/* 00422198 03003025 */   move  $a2, $t8
.L0042219C:
/* 0042219C 00023D42 */  srl   $a3, $v0, 0x15
/* 004221A0 00023402 */  srl   $a2, $v0, 0x10
/* 004221A4 00022AC2 */  srl   $a1, $v0, 0xb
/* 004221A8 30F9001F */  andi  $t9, $a3, 0x1f
/* 004221AC 30CA001F */  andi  $t2, $a2, 0x1f
/* 004221B0 30AB001F */  andi  $t3, $a1, 0x1f
/* 004221B4 03203825 */  move  $a3, $t9
/* 004221B8 01403025 */  move  $a2, $t2
/* 004221BC 100000DA */  b     .L00422528
/* 004221C0 01602825 */   move  $a1, $t3
.L004221C4:
/* 004221C4 00023D42 */  srl   $a3, $v0, 0x15
/* 004221C8 00022AC2 */  srl   $a1, $v0, 0xb
/* 004221CC 30EC001F */  andi  $t4, $a3, 0x1f
/* 004221D0 30AD001F */  andi  $t5, $a1, 0x1f
/* 004221D4 01803825 */  move  $a3, $t4
/* 004221D8 100000D3 */  b     .L00422528
/* 004221DC 01A02825 */   move  $a1, $t5
.L004221E0:
/* 004221E0 00023D42 */  srl   $a3, $v0, 0x15
/* 004221E4 30EE001F */  andi  $t6, $a3, 0x1f
/* 004221E8 100000CF */  b     .L00422528
/* 004221EC 01C03825 */   move  $a3, $t6
.L004221F0:
/* 004221F0 00023D42 */  srl   $a3, $v0, 0x15
/* 004221F4 30EF001F */  andi  $t7, $a3, 0x1f
/* 004221F8 100000CB */  b     .L00422528
/* 004221FC 01E03825 */   move  $a3, $t7
.L00422200:
/* 00422200 00022D42 */  srl   $a1, $v0, 0x15
/* 00422204 00023402 */  srl   $a2, $v0, 0x10
/* 00422208 30B8001F */  andi  $t8, $a1, 0x1f
/* 0042220C 30D9001F */  andi  $t9, $a2, 0x1f
/* 00422210 03002825 */  move  $a1, $t8
/* 00422214 100000C4 */  b     .L00422528
/* 00422218 03203025 */   move  $a2, $t9
.L0042221C:
/* 0042221C 00023542 */  srl   $a2, $v0, 0x15
/* 00422220 00023C02 */  srl   $a3, $v0, 0x10
/* 00422224 00022AC2 */  srl   $a1, $v0, 0xb
/* 00422228 30CA001F */  andi  $t2, $a2, 0x1f
/* 0042222C 30EB001F */  andi  $t3, $a3, 0x1f
/* 00422230 30AC001F */  andi  $t4, $a1, 0x1f
/* 00422234 01403025 */  move  $a2, $t2
/* 00422238 01603825 */  move  $a3, $t3
/* 0042223C 100000BA */  b     .L00422528
/* 00422240 01802825 */   move  $a1, $t4
.L00422244:
/* 00422244 00024D42 */  srl   $t1, $v0, 0x15
/* 00422248 00023C02 */  srl   $a3, $v0, 0x10
/* 0042224C 3123001F */  andi  $v1, $t1, 0x1f
/* 00422250 30EE001F */  andi  $t6, $a3, 0x1f
/* 00422254 00603025 */  move  $a2, $v1
/* 00422258 100000B3 */  b     .L00422528
/* 0042225C 25C70020 */   addiu $a3, $t6, 0x20
.L00422260:
/* 00422260 00024D42 */  srl   $t1, $v0, 0x15
/* 00422264 00023C02 */  srl   $a3, $v0, 0x10
/* 00422268 3123001F */  andi  $v1, $t1, 0x1f
/* 0042226C 30F8001F */  andi  $t8, $a3, 0x1f
/* 00422270 00603025 */  move  $a2, $v1
/* 00422274 100000AC */  b     .L00422528
/* 00422278 03003825 */   move  $a3, $t8
.L0042227C:
/* 0042227C 00024D42 */  srl   $t1, $v0, 0x15
/* 00422280 00022C02 */  srl   $a1, $v0, 0x10
/* 00422284 3139001F */  andi  $t9, $t1, 0x1f
/* 00422288 30AA001F */  andi  $t2, $a1, 0x1f
/* 0042228C 03203025 */  move  $a2, $t9
/* 00422290 01402825 */  move  $a1, $t2
/* 00422294 100000A4 */  b     .L00422528
/* 00422298 03201825 */   move  $v1, $t9
.L0042229C:
/* 0042229C 00024D42 */  srl   $t1, $v0, 0x15
/* 004222A0 00022C02 */  srl   $a1, $v0, 0x10
/* 004222A4 3123001F */  andi  $v1, $t1, 0x1f
/* 004222A8 30AC001F */  andi  $t4, $a1, 0x1f
/* 004222AC 00603025 */  move  $a2, $v1
/* 004222B0 1000009D */  b     .L00422528
/* 004222B4 25850020 */   addiu $a1, $t4, 0x20
.L004222B8:
/* 004222B8 00023402 */  srl   $a2, $v0, 0x10
/* 004222BC 00023AC2 */  srl   $a3, $v0, 0xb
/* 004222C0 00022982 */  srl   $a1, $v0, 6
/* 004222C4 30CD001F */  andi  $t5, $a2, 0x1f
/* 004222C8 30EE001F */  andi  $t6, $a3, 0x1f
/* 004222CC 30AF001F */  andi  $t7, $a1, 0x1f
/* 004222D0 25A60020 */  addiu $a2, $t5, 0x20
/* 004222D4 25C70020 */  addiu $a3, $t6, 0x20
/* 004222D8 10000093 */  b     .L00422528
/* 004222DC 25E50020 */   addiu $a1, $t7, 0x20
.L004222E0:
/* 004222E0 00023AC2 */  srl   $a3, $v0, 0xb
/* 004222E4 00022982 */  srl   $a1, $v0, 6
/* 004222E8 30F8001F */  andi  $t8, $a3, 0x1f
/* 004222EC 30B9001F */  andi  $t9, $a1, 0x1f
/* 004222F0 27070020 */  addiu $a3, $t8, 0x20
/* 004222F4 1000008C */  b     .L00422528
/* 004222F8 27250020 */   addiu $a1, $t9, 0x20
.L004222FC:
/* 004222FC 00022A02 */  srl   $a1, $v0, 8
/* 00422300 00023402 */  srl   $a2, $v0, 0x10
/* 00422304 00023AC2 */  srl   $a3, $v0, 0xb
/* 00422308 30AA0007 */  andi  $t2, $a1, 7
/* 0042230C 30CB001F */  andi  $t3, $a2, 0x1f
/* 00422310 30EC001F */  andi  $t4, $a3, 0x1f
/* 00422314 25450040 */  addiu $a1, $t2, 0x40
/* 00422318 25660020 */  addiu $a2, $t3, 0x20
/* 0042231C 10000082 */  b     .L00422528
/* 00422320 25870020 */   addiu $a3, $t4, 0x20
.L00422324:
/* 00422324 00023C02 */  srl   $a3, $v0, 0x10
/* 00422328 00022AC2 */  srl   $a1, $v0, 0xb
/* 0042232C 30ED001F */  andi  $t5, $a3, 0x1f
/* 00422330 30AE001F */  andi  $t6, $a1, 0x1f
/* 00422334 01A03825 */  move  $a3, $t5
/* 00422338 1000007B */  b     .L00422528
/* 0042233C 01C02825 */   move  $a1, $t6
.L00422340:
/* 00422340 00022C02 */  srl   $a1, $v0, 0x10
/* 00422344 00023AC2 */  srl   $a3, $v0, 0xb
/* 00422348 30AF001F */  andi  $t7, $a1, 0x1f
/* 0042234C 30F8001F */  andi  $t8, $a3, 0x1f
/* 00422350 01E02825 */  move  $a1, $t7
/* 00422354 10000074 */  b     .L00422528
/* 00422358 03003825 */   move  $a3, $t8
.L0042235C:
/* 0042235C 00022C02 */  srl   $a1, $v0, 0x10
/* 00422360 00023842 */  srl   $a3, $v0, 1
/* 00422364 30B9001F */  andi  $t9, $a1, 0x1f
/* 00422368 30EA001F */  andi  $t2, $a3, 0x1f
/* 0042236C 03202825 */  move  $a1, $t9
/* 00422370 1000006D */  b     .L00422528
/* 00422374 01403825 */   move  $a3, $t2
.L00422378:
/* 00422378 00022C02 */  srl   $a1, $v0, 0x10
/* 0042237C 00023AC2 */  srl   $a3, $v0, 0xb
/* 00422380 30AB001F */  andi  $t3, $a1, 0x1f
/* 00422384 30EC001F */  andi  $t4, $a3, 0x1f
/* 00422388 01602825 */  move  $a1, $t3
/* 0042238C 10000066 */  b     .L00422528
/* 00422390 25870020 */   addiu $a3, $t4, 0x20
.L00422394:
/* 00422394 00022982 */  srl   $a1, $v0, 6
/* 00422398 30AD001F */  andi  $t5, $a1, 0x1f
/* 0042239C 10000062 */  b     .L00422528
/* 004223A0 25A50020 */   addiu $a1, $t5, 0x20
.L004223A4:
/* 004223A4 00023AC2 */  srl   $a3, $v0, 0xb
/* 004223A8 30EE001F */  andi  $t6, $a3, 0x1f
/* 004223AC 1000005E */  b     .L00422528
/* 004223B0 01C03825 */   move  $a3, $t6
.L004223B4:
/* 004223B4 00022AC2 */  srl   $a1, $v0, 0xb
/* 004223B8 30AF001F */  andi  $t7, $a1, 0x1f
/* 004223BC 1000005A */  b     .L00422528
/* 004223C0 01E02825 */   move  $a1, $t7
.L004223C4:
/* 004223C4 00023C02 */  srl   $a3, $v0, 0x10
/* 004223C8 00022AC2 */  srl   $a1, $v0, 0xb
/* 004223CC 30F8001F */  andi  $t8, $a3, 0x1f
/* 004223D0 30B9001F */  andi  $t9, $a1, 0x1f
/* 004223D4 03003825 */  move  $a3, $t8
/* 004223D8 10000053 */  b     .L00422528
/* 004223DC 27250020 */   addiu $a1, $t9, 0x20
.L004223E0:
/* 004223E0 00023C02 */  srl   $a3, $v0, 0x10
/* 004223E4 30EA001F */  andi  $t2, $a3, 0x1f
/* 004223E8 1000004F */  b     .L00422528
/* 004223EC 01403825 */   move  $a3, $t2
.L004223F0:
/* 004223F0 00023D42 */  srl   $a3, $v0, 0x15
/* 004223F4 00023402 */  srl   $a2, $v0, 0x10
/* 004223F8 000242C2 */  srl   $t0, $v0, 0xb
/* 004223FC 00022982 */  srl   $a1, $v0, 6
/* 00422400 30EB001F */  andi  $t3, $a3, 0x1f
/* 00422404 30CC001F */  andi  $t4, $a2, 0x1f
/* 00422408 310D001F */  andi  $t5, $t0, 0x1f
/* 0042240C 30AE001F */  andi  $t6, $a1, 0x1f
/* 00422410 25670020 */  addiu $a3, $t3, 0x20
/* 00422414 25860020 */  addiu $a2, $t4, 0x20
/* 00422418 25A80020 */  addiu $t0, $t5, 0x20
/* 0042241C 10000042 */  b     .L00422528
/* 00422420 25C50020 */   addiu $a1, $t6, 0x20
.L00422424:
/* 00422424 00023C82 */  srl   $a3, $v0, 0x12
/* 00422428 30EF0007 */  andi  $t7, $a3, 7
/* 0042242C 1000003E */  b     .L00422528
/* 00422430 25E70040 */   addiu $a3, $t7, 0x40
.L00422434:
/* 00422434 00023D42 */  srl   $a3, $v0, 0x15
/* 00422438 00023482 */  srl   $a2, $v0, 0x12
/* 0042243C 00022AC2 */  srl   $a1, $v0, 0xb
/* 00422440 30F8001F */  andi  $t8, $a3, 0x1f
/* 00422444 30D90007 */  andi  $t9, $a2, 7
/* 00422448 30AA001F */  andi  $t2, $a1, 0x1f
/* 0042244C 03003825 */  move  $a3, $t8
/* 00422450 27260040 */  addiu $a2, $t9, 0x40
/* 00422454 10000034 */  b     .L00422528
/* 00422458 01402825 */   move  $a1, $t2
.L0042245C:
/* 0042245C 00023482 */  srl   $a2, $v0, 0x12
/* 00422460 00023AC2 */  srl   $a3, $v0, 0xb
/* 00422464 00022982 */  srl   $a1, $v0, 6
/* 00422468 30CB0007 */  andi  $t3, $a2, 7
/* 0042246C 30EC001F */  andi  $t4, $a3, 0x1f
/* 00422470 30AD001F */  andi  $t5, $a1, 0x1f
/* 00422474 25660040 */  addiu $a2, $t3, 0x40
/* 00422478 25870020 */  addiu $a3, $t4, 0x20
/* 0042247C 1000002A */  b     .L00422528
/* 00422480 25A50020 */   addiu $a1, $t5, 0x20
.L00422484:
/* 00422484 00023D42 */  srl   $a3, $v0, 0x15
/* 00422488 00023402 */  srl   $a2, $v0, 0x10
/* 0042248C 00022982 */  srl   $a1, $v0, 6
/* 00422490 30EE001F */  andi  $t6, $a3, 0x1f
/* 00422494 30CF001F */  andi  $t7, $a2, 0x1f
/* 00422498 30B8001F */  andi  $t8, $a1, 0x1f
/* 0042249C 01C03825 */  move  $a3, $t6
/* 004224A0 01E03025 */  move  $a2, $t7
/* 004224A4 10000020 */  b     .L00422528
/* 004224A8 27050020 */   addiu $a1, $t8, 0x20
.L004224AC:
/* 004224AC 00023D42 */  srl   $a3, $v0, 0x15
/* 004224B0 00023402 */  srl   $a2, $v0, 0x10
/* 004224B4 000242C2 */  srl   $t0, $v0, 0xb
/* 004224B8 30F9001F */  andi  $t9, $a3, 0x1f
/* 004224BC 30CA001F */  andi  $t2, $a2, 0x1f
/* 004224C0 310B001F */  andi  $t3, $t0, 0x1f
/* 004224C4 03203825 */  move  $a3, $t9
/* 004224C8 01403025 */  move  $a2, $t2
/* 004224CC 10000016 */  b     .L00422528
/* 004224D0 25680020 */   addiu $t0, $t3, 0x20
.L004224D4:
/* 004224D4 00023D42 */  srl   $a3, $v0, 0x15
/* 004224D8 00023402 */  srl   $a2, $v0, 0x10
/* 004224DC 30EC001F */  andi  $t4, $a3, 0x1f
/* 004224E0 30CD001F */  andi  $t5, $a2, 0x1f
/* 004224E4 01803825 */  move  $a3, $t4
/* 004224E8 1000000F */  b     .L00422528
/* 004224EC 01A03025 */   move  $a2, $t5
.L004224F0:
/* 004224F0 00023402 */  srl   $a2, $v0, 0x10
/* 004224F4 00023AC2 */  srl   $a3, $v0, 0xb
/* 004224F8 00022982 */  srl   $a1, $v0, 6
/* 004224FC 30CE0007 */  andi  $t6, $a2, 7
/* 00422500 30EF001F */  andi  $t7, $a3, 0x1f
/* 00422504 30B8001F */  andi  $t8, $a1, 0x1f
/* 00422508 01C03025 */  move  $a2, $t6
/* 0042250C 25E70020 */  addiu $a3, $t7, 0x20
/* 00422510 10000005 */  b     .L00422528
/* 00422514 27050020 */   addiu $a1, $t8, 0x20
.L00422518:
/* 00422518 00024D42 */  srl   $t1, $v0, 0x15
/* 0042251C 3139001F */  andi  $t9, $t1, 0x1f
/* 00422520 03203025 */  move  $a2, $t9
/* 00422524 03201825 */  move  $v1, $t9
.L00422528:
/* 00422528 A087001D */  sb    $a3, 0x1d($a0)
/* 0042252C A086001E */  sb    $a2, 0x1e($a0)
/* 00422530 A085001C */  sb    $a1, 0x1c($a0)
/* 00422534 A088001F */  sb    $t0, 0x1f($a0)
/* 00422538 03E00008 */  jr    $ra
/* 0042253C A0830020 */   sb    $v1, 0x20($a0)

    .type update_regs_in_inst, @function
    .size update_regs_in_inst, .-update_regs_in_inst
    .end update_regs_in_inst

glabel fixup_preceding_labels
    .ent fixup_preceding_labels
    # 004594BC parsestmt
/* 00422540 3C1C0FC0 */  .cpload $t9
/* 00422544 279C7D20 */  
/* 00422548 0399E021 */  
/* 0042254C 8F828BB0 */  lw     $v0, %got(bbindex)($gp)
/* 00422550 00802825 */  move  $a1, $a0
/* 00422554 8C420000 */  lw    $v0, ($v0)
/* 00422558 2409001A */  li    $t1, 26
/* 0042255C 18400016 */  blez  $v0, .L004225B8
/* 00422560 00021880 */   sll   $v1, $v0, 2
/* 00422564 00621821 */  addu  $v1, $v1, $v0
/* 00422568 3C077FFF */  lui   $a3, 0x7fff
/* 0042256C 8F868B40 */  lw     $a2, %got(pinstruction)($gp)
/* 00422570 34E7FFFF */  ori   $a3, $a3, 0xffff
/* 00422574 000318C0 */  sll   $v1, $v1, 3
/* 00422578 24080019 */  li    $t0, 25
.L0042257C:
/* 0042257C 8CCE0000 */  lw    $t6, ($a2)
/* 00422580 00000000 */  nop   
/* 00422584 006E1021 */  addu  $v0, $v1, $t6
/* 00422588 8C4F0000 */  lw    $t7, ($v0)
/* 0042258C 2463FFD8 */  addiu $v1, $v1, -0x28
/* 00422590 14EF0009 */  bne   $a3, $t7, .L004225B8
/* 00422594 28610028 */   slti  $at, $v1, 0x28
/* 00422598 8C440010 */  lw    $a0, 0x10($v0)
/* 0042259C 00000000 */  nop   
/* 004225A0 11040003 */  beq   $t0, $a0, .L004225B0
/* 004225A4 00000000 */   nop   
/* 004225A8 15240003 */  bne   $t1, $a0, .L004225B8
/* 004225AC 00000000 */   nop   
.L004225B0:
/* 004225B0 1020FFF2 */  beqz  $at, .L0042257C
/* 004225B4 AC450018 */   sw    $a1, 0x18($v0)
.L004225B8:
/* 004225B8 03E00008 */  jr    $ra
/* 004225BC 00000000 */   nop   

    .type fixup_preceding_labels, @function
    .size fixup_preceding_labels, .-fixup_preceding_labels
    .end fixup_preceding_labels

glabel flip_bits
    .ent flip_bits
    # 0041F64C func_0041F64C
    # 004392DC wrcoffobj
    # 0043ECB8 wrelfobj
/* 004225C0 00001825 */  move  $v1, $zero
/* 004225C4 00001025 */  move  $v0, $zero
/* 004225C8 24060020 */  li    $a2, 32
/* 004225CC 2405001F */  li    $a1, 31
.L004225D0:
/* 004225D0 308E0001 */  andi  $t6, $a0, 1
/* 004225D4 11C00005 */  beqz  $t6, .L004225EC
/* 004225D8 00044042 */   srl   $t0, $a0, 1
/* 004225DC 00A27823 */  subu  $t7, $a1, $v0
/* 004225E0 24180001 */  li    $t8, 1
/* 004225E4 01F8C804 */  sllv  $t9, $t8, $t7
/* 004225E8 00791825 */  or    $v1, $v1, $t9
.L004225EC:
/* 004225EC 31090001 */  andi  $t1, $t0, 1
/* 004225F0 11200006 */  beqz  $t1, .L0042260C
/* 004225F4 01002025 */   move  $a0, $t0
/* 004225F8 00A25023 */  subu  $t2, $a1, $v0
/* 004225FC 254B001F */  addiu $t3, $t2, 0x1f
/* 00422600 240C0001 */  li    $t4, 1
/* 00422604 016C6804 */  sllv  $t5, $t4, $t3
/* 00422608 006D1825 */  or    $v1, $v1, $t5
.L0042260C:
/* 0042260C 00047042 */  srl   $t6, $a0, 1
/* 00422610 31D80001 */  andi  $t8, $t6, 1
/* 00422614 13000006 */  beqz  $t8, .L00422630
/* 00422618 01C02025 */   move  $a0, $t6
/* 0042261C 00A27823 */  subu  $t7, $a1, $v0
/* 00422620 25F9001E */  addiu $t9, $t7, 0x1e
/* 00422624 24080001 */  li    $t0, 1
/* 00422628 03284804 */  sllv  $t1, $t0, $t9
/* 0042262C 00691825 */  or    $v1, $v1, $t1
.L00422630:
/* 00422630 00045042 */  srl   $t2, $a0, 1
/* 00422634 314C0001 */  andi  $t4, $t2, 1
/* 00422638 11800006 */  beqz  $t4, .L00422654
/* 0042263C 01402025 */   move  $a0, $t2
/* 00422640 00A25823 */  subu  $t3, $a1, $v0
/* 00422644 256D001D */  addiu $t5, $t3, 0x1d
/* 00422648 240E0001 */  li    $t6, 1
/* 0042264C 01AEC004 */  sllv  $t8, $t6, $t5
/* 00422650 00781825 */  or    $v1, $v1, $t8
.L00422654:
/* 00422654 00047842 */  srl   $t7, $a0, 1
/* 00422658 24420004 */  addiu $v0, $v0, 4
/* 0042265C 1446FFDC */  bne   $v0, $a2, .L004225D0
/* 00422660 01E02025 */   move  $a0, $t7
/* 00422664 03E00008 */  jr    $ra
/* 00422668 00601025 */   move  $v0, $v1

    .type flip_bits, @function
    .size flip_bits, .-flip_bits
    .end flip_bits

glabel flush_line_no
    .ent flush_line_no
    # 0044AF18 main
/* 0042266C 3C1C0FC0 */  .cpload $t9
/* 00422670 279C7BF4 */  
/* 00422674 0399E021 */  
/* 00422678 8F878BD0 */  lw     $a3, %got(deferred_line_no)($gp)
/* 0042267C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00422680 8CE70000 */  lw    $a3, ($a3)
/* 00422684 2401FFFF */  li    $at, -1
/* 00422688 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0042268C 10E10016 */  beq   $a3, $at, .L004226E8
/* 00422690 AFBC0020 */   sw    $gp, 0x20($sp)
/* 00422694 8F8F8AE4 */  lw     $t7, %got(currtextindex)($gp)
/* 00422698 8F8E8AEC */  lw     $t6, %got(seg_ic)($gp)
/* 0042269C 8DEF0000 */  lw    $t7, ($t7)
/* 004226A0 8DCE0000 */  lw    $t6, ($t6)
/* 004226A4 000FC080 */  sll   $t8, $t7, 2
/* 004226A8 8F888B18 */  lw     $t0, %got(debugflag)($gp)
/* 004226AC 01D8C821 */  addu  $t9, $t6, $t8
/* 004226B0 8F858BBC */  lw     $a1, %got(currentfile)($gp)
/* 004226B4 8F260000 */  lw    $a2, ($t9)
/* 004226B8 8F9983F4 */  lw    $t9, %call16(st_pseudo)($gp)
/* 004226BC 8D080000 */  lw    $t0, ($t0)
/* 004226C0 8CA50000 */  lw    $a1, ($a1)
/* 004226C4 AFA00010 */  sw    $zero, 0x10($sp)
/* 004226C8 24040005 */  li    $a0, 5
/* 004226CC 0320F809 */  jalr  $t9
/* 004226D0 AFA80014 */   sw    $t0, 0x14($sp)
/* 004226D4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004226D8 2409FFFF */  li    $t1, -1
/* 004226DC 8F818BD0 */  lw     $at, %got(deferred_line_no)($gp)
/* 004226E0 00000000 */  nop   
/* 004226E4 AC290000 */  sw    $t1, ($at)
.L004226E8:
/* 004226E8 8FBF0024 */  lw    $ra, 0x24($sp)
/* 004226EC 27BD0028 */  addiu $sp, $sp, 0x28
/* 004226F0 03E00008 */  jr    $ra
/* 004226F4 00000000 */   nop   

/* 004226F8 3C1C0FC0 */  .cpload $t9
/* 004226FC 279C7B68 */  
/* 00422700 0399E021 */  
/* 00422704 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00422708 AFB00014 */  sw    $s0, 0x14($sp)
/* 0042270C AFBF001C */  sw    $ra, 0x1c($sp)
/* 00422710 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00422714 AFA40020 */  sw    $a0, 0x20($sp)
/* 00422718 AFA50024 */  sw    $a1, 0x24($sp)
/* 0042271C 04800015 */  bltz  $a0, .L00422774
/* 00422720 00008025 */   move  $s0, $zero
/* 00422724 1C800003 */  bgtz  $a0, .L00422734
/* 00422728 00000000 */   nop   
/* 0042272C 10A00012 */  beqz  $a1, .L00422778
/* 00422730 8FBF001C */   lw    $ra, 0x1c($sp)
.L00422734:
/* 00422734 8F998130 */  lw    $t9, %call16(__ll_lshift)($gp)
/* 00422738 8FA40020 */  lw    $a0, 0x20($sp)
/* 0042273C 8FA50024 */  lw    $a1, 0x24($sp)
/* 00422740 26100001 */  addiu $s0, $s0, 1
/* 00422744 24060000 */  li    $a2, 0
/* 00422748 0320F809 */  jalr  $t9
/* 0042274C 24070001 */   li    $a3, 1
/* 00422750 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00422754 AFA20020 */  sw    $v0, 0x20($sp)
/* 00422758 AFA30024 */  sw    $v1, 0x24($sp)
/* 0042275C 1C40FFF5 */  bgtz  $v0, .L00422734
/* 00422760 0060C825 */   move  $t9, $v1
/* 00422764 04400004 */  bltz  $v0, .L00422778
/* 00422768 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0042276C 1460FFF1 */  bnez  $v1, .L00422734
/* 00422770 00000000 */   nop   
.L00422774:
/* 00422774 8FBF001C */  lw    $ra, 0x1c($sp)
.L00422778:
/* 00422778 02001025 */  move  $v0, $s0
/* 0042277C 8FB00014 */  lw    $s0, 0x14($sp)
/* 00422780 03E00008 */  jr    $ra
/* 00422784 27BD0020 */   addiu $sp, $sp, 0x20

/* 00422788 3C1C0FC0 */  .cpload $t9
/* 0042278C 279C7AD8 */  
/* 00422790 0399E021 */  
/* 00422794 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00422798 AFB00014 */  sw    $s0, 0x14($sp)
/* 0042279C AFBF001C */  sw    $ra, 0x1c($sp)
/* 004227A0 AFBC0018 */  sw    $gp, 0x18($sp)
/* 004227A4 AFA40020 */  sw    $a0, 0x20($sp)
/* 004227A8 AFA50024 */  sw    $a1, 0x24($sp)
/* 004227AC 00008025 */  move  $s0, $zero
/* 004227B0 30B90001 */  andi  $t9, $a1, 1
/* 004227B4 1720000F */  bnez  $t9, .L004227F4
/* 004227B8 8FBF001C */   lw    $ra, 0x1c($sp)
.L004227BC:
/* 004227BC 8F998144 */  lw    $t9, %call16(__ll_rshift)($gp)
/* 004227C0 8FA40020 */  lw    $a0, 0x20($sp)
/* 004227C4 8FA50024 */  lw    $a1, 0x24($sp)
/* 004227C8 26100001 */  addiu $s0, $s0, 1
/* 004227CC 24060000 */  li    $a2, 0
/* 004227D0 0320F809 */  jalr  $t9
/* 004227D4 24070001 */   li    $a3, 1
/* 004227D8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004227DC AFA20020 */  sw    $v0, 0x20($sp)
/* 004227E0 AFA30024 */  sw    $v1, 0x24($sp)
/* 004227E4 306B0001 */  andi  $t3, $v1, 1
/* 004227E8 1160FFF4 */  beqz  $t3, .L004227BC
/* 004227EC 00000000 */   nop   
/* 004227F0 8FBF001C */  lw    $ra, 0x1c($sp)
.L004227F4:
/* 004227F4 02001025 */  move  $v0, $s0
/* 004227F8 8FB00014 */  lw    $s0, 0x14($sp)
/* 004227FC 03E00008 */  jr    $ra
/* 00422800 27BD0020 */   addiu $sp, $sp, 0x20

/* 00422804 3C1C0FC0 */  .cpload $t9
/* 00422808 279C7A5C */  
/* 0042280C 0399E021 */  
/* 00422810 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00422814 8F998130 */  lw    $t9, %call16(__ll_lshift)($gp)
/* 00422818 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0042281C AFA60028 */  sw    $a2, 0x28($sp)
/* 00422820 00C03825 */  move  $a3, $a2
/* 00422824 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00422828 AFA40020 */  sw    $a0, 0x20($sp)
/* 0042282C AFA50024 */  sw    $a1, 0x24($sp)
/* 00422830 0320F809 */  jalr  $t9
/* 00422834 000637C3 */   sra   $a2, $a2, 0x1f
/* 00422838 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0042283C AFA20020 */  sw    $v0, 0x20($sp)
/* 00422840 14400003 */  bnez  $v0, .L00422850
/* 00422844 AFA30024 */   sw    $v1, 0x24($sp)
/* 00422848 10600017 */  beqz  $v1, .L004228A8
/* 0042284C 24020001 */   li    $v0, 1
.L00422850:
/* 00422850 8FB80020 */  lw    $t8, 0x20($sp)
.L00422854:
/* 00422854 8FB90024 */  lw    $t9, 0x24($sp)
/* 00422858 07000007 */  bltz  $t8, .L00422878
/* 0042285C 24060000 */   li    $a2, 0
/* 00422860 1F000003 */  bgtz  $t8, .L00422870
/* 00422864 00000000 */   nop   
/* 00422868 13200003 */  beqz  $t9, .L00422878
/* 0042286C 00000000 */   nop   
.L00422870:
/* 00422870 1000000D */  b     .L004228A8
/* 00422874 00001025 */   move  $v0, $zero
.L00422878:
/* 00422878 8F998130 */  lw    $t9, %call16(__ll_lshift)($gp)
/* 0042287C 8FA40020 */  lw    $a0, 0x20($sp)
/* 00422880 8FA50024 */  lw    $a1, 0x24($sp)
/* 00422884 0320F809 */  jalr  $t9
/* 00422888 24070001 */   li    $a3, 1
/* 0042288C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00422890 AFA20020 */  sw    $v0, 0x20($sp)
/* 00422894 1440FFEE */  bnez  $v0, .L00422850
/* 00422898 AFA30024 */   sw    $v1, 0x24($sp)
/* 0042289C 1460FFED */  bnez  $v1, .L00422854
/* 004228A0 8FB80020 */   lw    $t8, 0x20($sp)
/* 004228A4 24020001 */  li    $v0, 1
.L004228A8:
/* 004228A8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 004228AC 27BD0020 */  addiu $sp, $sp, 0x20
/* 004228B0 03E00008 */  jr    $ra
/* 004228B4 00000000 */   nop   

    .type flush_line_no, @function
    .size flush_line_no, .-flush_line_no
    .end flush_line_no

glabel ll_load_immed
    .ent ll_load_immed
    # 004591BC parse_dli_dla
/* 004228B8 3C1C0FC0 */  .cpload $t9
/* 004228BC 279C79A8 */  
/* 004228C0 0399E021 */  
/* 004228C4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 004228C8 AFB00014 */  sw    $s0, 0x14($sp)
/* 004228CC 00C08025 */  move  $s0, $a2
/* 004228D0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 004228D4 AFBC0018 */  sw    $gp, 0x18($sp)
/* 004228D8 14800002 */  bnez  $a0, .L004228E4
/* 004228DC 00A03825 */   move  $a3, $a1
/* 004228E0 04A10005 */  bgez  $a1, .L004228F8
.L004228E4:
/* 004228E4 2401FFFF */   li    $at, -1
/* 004228E8 1481000B */  bne   $a0, $at, .L00422918
/* 004228EC 00000000 */   nop   
/* 004228F0 04E10009 */  bgez  $a3, .L00422918
/* 004228F4 00000000 */   nop   
.L004228F8:
/* 004228F8 8F99848C */  lw    $t9, %call16(loadimmed)($gp)
/* 004228FC 00E02025 */  move  $a0, $a3
/* 00422900 02002825 */  move  $a1, $s0
/* 00422904 0320F809 */  jalr  $t9
/* 00422908 00003025 */   move  $a2, $zero
/* 0042290C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00422910 1000002E */  b     .L004229CC
/* 00422914 24020001 */   li    $v0, 1
.L00422918:
/* 00422918 8F8E8C28 */  lw     $t6, %got(diag_flag)($gp)
/* 0042291C 02002825 */  move  $a1, $s0
/* 00422920 91CE0000 */  lbu   $t6, ($t6)
/* 00422924 00001025 */  move  $v0, $zero
/* 00422928 11C00028 */  beqz  $t6, .L004229CC
/* 0042292C 00000000 */   nop   
/* 00422930 8F99848C */  lw    $t9, %call16(loadimmed)($gp)
/* 00422934 00003025 */  move  $a2, $zero
/* 00422938 0320F809 */  jalr  $t9
/* 0042293C AFA70024 */   sw    $a3, 0x24($sp)
/* 00422940 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00422944 24040028 */  li    $a0, 40
/* 00422948 8F99847C */  lw    $t9, %call16(emitshift)($gp)
/* 0042294C 02002825 */  move  $a1, $s0
/* 00422950 02003025 */  move  $a2, $s0
/* 00422954 0320F809 */  jalr  $t9
/* 00422958 24070010 */   li    $a3, 16
/* 0042295C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00422960 8FA70024 */  lw    $a3, 0x24($sp)
/* 00422964 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00422968 00077C02 */  srl   $t7, $a3, 0x10
/* 0042296C 01E03825 */  move  $a3, $t7
/* 00422970 24040058 */  li    $a0, 88
/* 00422974 02002825 */  move  $a1, $s0
/* 00422978 0320F809 */  jalr  $t9
/* 0042297C 02003025 */   move  $a2, $s0
/* 00422980 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00422984 24040028 */  li    $a0, 40
/* 00422988 8F99847C */  lw    $t9, %call16(emitshift)($gp)
/* 0042298C 02002825 */  move  $a1, $s0
/* 00422990 02003025 */  move  $a2, $s0
/* 00422994 0320F809 */  jalr  $t9
/* 00422998 24070010 */   li    $a3, 16
/* 0042299C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004229A0 8FA70024 */  lw    $a3, 0x24($sp)
/* 004229A4 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 004229A8 30F8FFFF */  andi  $t8, $a3, 0xffff
/* 004229AC 03003825 */  move  $a3, $t8
/* 004229B0 24040058 */  li    $a0, 88
/* 004229B4 02002825 */  move  $a1, $s0
/* 004229B8 0320F809 */  jalr  $t9
/* 004229BC 02003025 */   move  $a2, $s0
/* 004229C0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004229C4 10000001 */  b     .L004229CC
/* 004229C8 24020001 */   li    $v0, 1
.L004229CC:
/* 004229CC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 004229D0 8FB00014 */  lw    $s0, 0x14($sp)
/* 004229D4 03E00008 */  jr    $ra
/* 004229D8 27BD0020 */   addiu $sp, $sp, 0x20

/* 004229DC 00000000 */  nop   
/* 004229E0 00000000 */  nop   
    .type ll_load_immed, @function
    .size ll_load_immed, .-ll_load_immed
    .end ll_load_immed
)"");
