__asm__(R""(
.macro glabel label
    .global \label
    .balign 4
    \label:
.endm




.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.text
glabel add_address_pair
    .ent add_address_pair
    # 0041FE24 func_0041FE24
/* 0040B8B0 3C1C0FC2 */  .cpload $t9
/* 0040B8B4 279CE9B0 */  
/* 0040B8B8 0399E021 */  
/* 0040B8BC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0040B8C0 8F998190 */  lw    $t9, %call16(malloc)($gp)
/* 0040B8C4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0040B8C8 AFA40020 */  sw    $a0, 0x20($sp)
/* 0040B8CC AFBC0018 */  sw    $gp, 0x18($sp)
/* 0040B8D0 AFA50024 */  sw    $a1, 0x24($sp)
/* 0040B8D4 AFA60028 */  sw    $a2, 0x28($sp)
/* 0040B8D8 0320F809 */  jalr  $t9
/* 0040B8DC 2404000C */   li    $a0, 12
/* 0040B8E0 8FA40024 */  lw    $a0, 0x24($sp)
/* 0040B8E4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040B8E8 2403FFFF */  li    $v1, -1
/* 0040B8EC 8FA50028 */  lw    $a1, 0x28($sp)
/* 0040B8F0 8FA60020 */  lw    $a2, 0x20($sp)
/* 0040B8F4 10830002 */  beq   $a0, $v1, .L0040B900
/* 0040B8F8 00000000 */   nop   
/* 0040B8FC AC440000 */  sw    $a0, ($v0)
.L0040B900:
/* 0040B900 10A30002 */  beq   $a1, $v1, .L0040B90C
/* 0040B904 00000000 */   nop   
/* 0040B908 AC450004 */  sw    $a1, 4($v0)
.L0040B90C:
/* 0040B90C 8CCE0000 */  lw    $t6, ($a2)
/* 0040B910 00000000 */  nop   
/* 0040B914 AC4E0008 */  sw    $t6, 8($v0)
/* 0040B918 ACC20000 */  sw    $v0, ($a2)
/* 0040B91C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0040B920 27BD0020 */  addiu $sp, $sp, 0x20
/* 0040B924 03E00008 */  jr    $ra
/* 0040B928 00000000 */   nop   

    .type add_address_pair, @function
    .size add_address_pair, .-add_address_pair
    .end add_address_pair

glabel set_address_pair
    .ent set_address_pair
/* 0040B92C 2402FFFF */  li    $v0, -1
/* 0040B930 10A20002 */  beq   $a1, $v0, .L0040B93C
/* 0040B934 00000000 */   nop   
/* 0040B938 AC850000 */  sw    $a1, ($a0)
.L0040B93C:
/* 0040B93C 10C20002 */  beq   $a2, $v0, .L0040B948
/* 0040B940 00000000 */   nop   
/* 0040B944 AC860004 */  sw    $a2, 4($a0)
.L0040B948:
/* 0040B948 03E00008 */  jr    $ra
/* 0040B94C 00000000 */   nop   

    .type set_address_pair, @function
    .size set_address_pair, .-set_address_pair
    .end set_address_pair

    .type func_0040B950, @function
func_0040B950:
    # 0040BA58 finish_address_pairs
/* 0040B950 8C820000 */  lw    $v0, ($a0)
/* 0040B954 00001825 */  move  $v1, $zero
/* 0040B958 1040000D */  beqz  $v0, .L0040B990
/* 0040B95C 00000000 */   nop   
/* 0040B960 8C450008 */  lw    $a1, 8($v0)
/* 0040B964 00000000 */  nop   
/* 0040B968 10A00009 */  beqz  $a1, .L0040B990
/* 0040B96C 00000000 */   nop   
.L0040B970:
/* 0040B970 AC430008 */  sw    $v1, 8($v0)
/* 0040B974 00401825 */  move  $v1, $v0
/* 0040B978 10A00005 */  beqz  $a1, .L0040B990
/* 0040B97C 00A01025 */   move  $v0, $a1
/* 0040B980 8CA50008 */  lw    $a1, 8($a1)
/* 0040B984 00000000 */  nop   
/* 0040B988 14A0FFF9 */  bnez  $a1, .L0040B970
/* 0040B98C 00000000 */   nop   
.L0040B990:
/* 0040B990 10400003 */  beqz  $v0, .L0040B9A0
/* 0040B994 00000000 */   nop   
/* 0040B998 AC430008 */  sw    $v1, 8($v0)
/* 0040B99C AC820000 */  sw    $v0, ($a0)
.L0040B9A0:
/* 0040B9A0 03E00008 */  jr    $ra
/* 0040B9A4 00000000 */   nop   

    .type func_0040B9A8, @function
func_0040B9A8:
    # 0040BA58 finish_address_pairs
/* 0040B9A8 3C1C0FC2 */  .cpload $t9
/* 0040B9AC 279CE8B8 */  
/* 0040B9B0 0399E021 */  
/* 0040B9B4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0040B9B8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0040B9BC AFBC0018 */  sw    $gp, 0x18($sp)
/* 0040B9C0 AFB00014 */  sw    $s0, 0x14($sp)
/* 0040B9C4 8C900000 */  lw    $s0, ($a0)
/* 0040B9C8 00000000 */  nop   
/* 0040B9CC 1200001F */  beqz  $s0, .L0040BA4C
/* 0040B9D0 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0040B9D4 8E020008 */  lw    $v0, 8($s0)
/* 0040B9D8 00000000 */  nop   
/* 0040B9DC 1040001B */  beqz  $v0, .L0040BA4C
/* 0040B9E0 8FBF001C */   lw    $ra, 0x1c($sp)
.L0040B9E4:
/* 0040B9E4 8C4E0000 */  lw    $t6, ($v0)
/* 0040B9E8 8E0F0004 */  lw    $t7, 4($s0)
/* 0040B9EC 00000000 */  nop   
/* 0040B9F0 15CF000E */  bne   $t6, $t7, .L0040BA2C
/* 0040B9F4 00000000 */   nop   
/* 0040B9F8 8C580004 */  lw    $t8, 4($v0)
/* 0040B9FC 00402025 */  move  $a0, $v0
/* 0040BA00 AE180004 */  sw    $t8, 4($s0)
/* 0040BA04 8C590008 */  lw    $t9, 8($v0)
/* 0040BA08 00000000 */  nop   
/* 0040BA0C AE190008 */  sw    $t9, 8($s0)
/* 0040BA10 8F9981D8 */  lw    $t9, %call16(free)($gp)
/* 0040BA14 00000000 */  nop   
/* 0040BA18 0320F809 */  jalr  $t9
/* 0040BA1C 00000000 */   nop   
/* 0040BA20 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040BA24 10000002 */  b     .L0040BA30
/* 0040BA28 00000000 */   nop   
.L0040BA2C:
/* 0040BA2C 00408025 */  move  $s0, $v0
.L0040BA30:
/* 0040BA30 12000006 */  beqz  $s0, .L0040BA4C
/* 0040BA34 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0040BA38 8E020008 */  lw    $v0, 8($s0)
/* 0040BA3C 00000000 */  nop   
/* 0040BA40 1440FFE8 */  bnez  $v0, .L0040B9E4
/* 0040BA44 00000000 */   nop   
/* 0040BA48 8FBF001C */  lw    $ra, 0x1c($sp)
.L0040BA4C:
/* 0040BA4C 8FB00014 */  lw    $s0, 0x14($sp)
/* 0040BA50 03E00008 */  jr    $ra
/* 0040BA54 27BD0020 */   addiu $sp, $sp, 0x20

glabel finish_address_pairs
    .ent finish_address_pairs
    # 00414B68 create_content_section
/* 0040BA58 3C1C0FC2 */  .cpload $t9
/* 0040BA5C 279CE808 */  
/* 0040BA60 0399E021 */  
/* 0040BA64 8F998018 */  lw    $t9, %got(func_0040B950)($gp)
/* 0040BA68 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0040BA6C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0040BA70 2739B950 */  addiu $t9, %lo(func_0040B950) # addiu $t9, $t9, -0x46b0
/* 0040BA74 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0040BA78 0320F809 */  jalr  $t9
/* 0040BA7C AFA40020 */   sw    $a0, 0x20($sp)
/* 0040BA80 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040BA84 8FA40020 */  lw    $a0, 0x20($sp)
/* 0040BA88 8F998018 */  lw    $t9, %got(func_0040B9A8)($gp)
/* 0040BA8C 00000000 */  nop   
/* 0040BA90 2739B9A8 */  addiu $t9, %lo(func_0040B9A8) # addiu $t9, $t9, -0x4658
/* 0040BA94 0320F809 */  jalr  $t9
/* 0040BA98 00000000 */   nop   
/* 0040BA9C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0040BAA0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040BAA4 03E00008 */  jr    $ra
/* 0040BAA8 27BD0020 */   addiu $sp, $sp, 0x20

    .type finish_address_pairs, @function
    .size finish_address_pairs, .-finish_address_pairs
    .end finish_address_pairs

glabel number_address_pairs
    .ent number_address_pairs
    # 00414B68 create_content_section
/* 0040BAAC 00801025 */  move  $v0, $a0
/* 0040BAB0 10800005 */  beqz  $a0, .L0040BAC8
/* 0040BAB4 00001825 */   move  $v1, $zero
.L0040BAB8:
/* 0040BAB8 8C420008 */  lw    $v0, 8($v0)
/* 0040BABC 24630001 */  addiu $v1, $v1, 1
/* 0040BAC0 1440FFFD */  bnez  $v0, .L0040BAB8
/* 0040BAC4 00000000 */   nop   
.L0040BAC8:
/* 0040BAC8 03E00008 */  jr    $ra
/* 0040BACC 00601025 */   move  $v0, $v1

    .type number_address_pairs, @function
    .size number_address_pairs, .-number_address_pairs
    .end number_address_pairs

glabel first_address_pair
    .ent first_address_pair
    # 00414B68 create_content_section
/* 0040BAD0 3C1C0FC2 */  .cpload $t9
/* 0040BAD4 279CE790 */  
/* 0040BAD8 0399E021 */  
/* 0040BADC 8F838080 */  lw    $v1, %got(D_10000004)($gp)
/* 0040BAE0 00801025 */  move  $v0, $a0
/* 0040BAE4 24630004 */  addiu $v1, %lo(D_10000004) # addiu $v1, $v1, 4
/* 0040BAE8 03E00008 */  jr    $ra
/* 0040BAEC AC640000 */   sw    $a0, ($v1)

    .type first_address_pair, @function
    .size first_address_pair, .-first_address_pair
    .end first_address_pair

glabel next_address_pair
    .ent next_address_pair
    # 00414B68 create_content_section
/* 0040BAF0 3C1C0FC2 */  .cpload $t9
/* 0040BAF4 279CE770 */  
/* 0040BAF8 0399E021 */  
/* 0040BAFC 8F838080 */  lw    $v1, %got(D_10000004)($gp)
/* 0040BB00 00000000 */  nop   
/* 0040BB04 24630004 */  addiu $v1, %lo(D_10000004) # addiu $v1, $v1, 4
/* 0040BB08 8C6E0000 */  lw    $t6, ($v1)
/* 0040BB0C 00000000 */  nop   
/* 0040BB10 8DC20008 */  lw    $v0, 8($t6)
/* 0040BB14 03E00008 */  jr    $ra
/* 0040BB18 AC620000 */   sw    $v0, ($v1)

    .type next_address_pair, @function
    .size next_address_pair, .-next_address_pair
    .end next_address_pair

glabel current_address_pair_start
    .ent current_address_pair_start
    # 00414B68 create_content_section
/* 0040BB1C 3C1C0FC2 */  .cpload $t9
/* 0040BB20 279CE744 */  
/* 0040BB24 0399E021 */  
/* 0040BB28 8F8E8080 */  lw    $t6, %got(D_10000004)($gp)
/* 0040BB2C 00000000 */  nop   
/* 0040BB30 8DCE0004 */  lw    $t6, %lo(D_10000004)($t6)
/* 0040BB34 00000000 */  nop   
/* 0040BB38 8DC20000 */  lw    $v0, ($t6)
/* 0040BB3C 03E00008 */  jr    $ra
/* 0040BB40 00000000 */   nop   

    .type current_address_pair_start, @function
    .size current_address_pair_start, .-current_address_pair_start
    .end current_address_pair_start

glabel current_address_pair_length
    .ent current_address_pair_length
    # 00414B68 create_content_section
/* 0040BB44 3C1C0FC2 */  .cpload $t9
/* 0040BB48 279CE71C */  
/* 0040BB4C 0399E021 */  
/* 0040BB50 8F838080 */  lw    $v1, %got(D_10000004)($gp)
/* 0040BB54 00000000 */  nop   
/* 0040BB58 8C630004 */  lw    $v1, %lo(D_10000004)($v1)
/* 0040BB5C 00000000 */  nop   
/* 0040BB60 8C6E0004 */  lw    $t6, 4($v1)
/* 0040BB64 8C6F0000 */  lw    $t7, ($v1)
/* 0040BB68 00000000 */  nop   
/* 0040BB6C 01CF1023 */  subu  $v0, $t6, $t7
/* 0040BB70 04410003 */  bgez  $v0, .L0040BB80
/* 0040BB74 0002C083 */   sra   $t8, $v0, 2
/* 0040BB78 24410003 */  addiu $at, $v0, 3
/* 0040BB7C 0001C083 */  sra   $t8, $at, 2
.L0040BB80:
/* 0040BB80 03E00008 */  jr    $ra
/* 0040BB84 03001025 */   move  $v0, $t8

/* 0040BB88 00000000 */  nop   
    .type current_address_pair_length, @function
    .size current_address_pair_length, .-current_address_pair_length
    .end current_address_pair_length
)"");
