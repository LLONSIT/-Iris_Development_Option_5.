__asm__(R""(
.macro glabel label
    .global \label
    .balign 4
    \label:
.endm




.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.text
glabel put_as_table
    .ent put_as_table
    # 0043ECB8 wrelfobj
/* 0040DD44 3C1C0FC2 */  .cpload $t9
/* 0040DD48 279CC51C */  
/* 0040DD4C 0399E021 */  
/* 0040DD50 8F838080 */  lw    $v1, %got(D_10000128)($gp)
/* 0040DD54 8F828080 */  lw    $v0, %got(D_10000168)($gp)
/* 0040DD58 24630128 */  addiu $v1, %lo(D_10000128) # addiu $v1, $v1, 0x128
/* 0040DD5C 24420168 */  addiu $v0, %lo(D_10000168) # addiu $v0, $v0, 0x168
.L0040DD60:
/* 0040DD60 8C6E0000 */  lw    $t6, ($v1)
/* 0040DD64 00000000 */  nop   
/* 0040DD68 91CF0000 */  lbu   $t7, ($t6)
/* 0040DD6C 00000000 */  nop   
/* 0040DD70 11E00004 */  beqz  $t7, .L0040DD84
/* 0040DD74 00000000 */   nop   
/* 0040DD78 24630010 */  addiu $v1, $v1, 0x10
/* 0040DD7C 1462FFF8 */  bne   $v1, $v0, .L0040DD60
/* 0040DD80 00000000 */   nop   
.L0040DD84:
/* 0040DD84 03E00008 */  jr    $ra
/* 0040DD88 AC640000 */   sw    $a0, ($v1)

    .type put_as_table, @function
    .size put_as_table, .-put_as_table
    .end put_as_table

glabel elf_st_openobj
    .ent elf_st_openobj
    # 0043ECB8 wrelfobj
/* 0040DD8C 3C1C0FC2 */  .cpload $t9
/* 0040DD90 279CC4D4 */  
/* 0040DD94 0399E021 */  
/* 0040DD98 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0040DD9C 8F998738 */  lw    $t9, %call16(elf_version)($gp)
/* 0040DDA0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0040DDA4 AFA40030 */  sw    $a0, 0x30($sp)
/* 0040DDA8 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0040DDAC 0320F809 */  jalr  $t9
/* 0040DDB0 24040001 */   li    $a0, 1
/* 0040DDB4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040DDB8 8FA40030 */  lw    $a0, 0x30($sp)
/* 0040DDBC 8F998154 */  lw    $t9, %call16(open)($gp)
/* 0040DDC0 24050302 */  li    $a1, 770
/* 0040DDC4 0320F809 */  jalr  $t9
/* 0040DDC8 240601B6 */   li    $a2, 438
/* 0040DDCC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040DDD0 AFA20024 */  sw    $v0, 0x24($sp)
/* 0040DDD4 8F998748 */  lw    $t9, %call16(elf_errno)($gp)
/* 0040DDD8 00000000 */  nop   
/* 0040DDDC 0320F809 */  jalr  $t9
/* 0040DDE0 00000000 */   nop   
/* 0040DDE4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040DDE8 8FA40024 */  lw    $a0, 0x24($sp)
/* 0040DDEC 8F99874C */  lw    $t9, %call16(elf_begin)($gp)
/* 0040DDF0 24050002 */  li    $a1, 2
/* 0040DDF4 0320F809 */  jalr  $t9
/* 0040DDF8 00003025 */   move  $a2, $zero
/* 0040DDFC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040DE00 00000000 */  nop   
/* 0040DE04 8F838088 */  lw    $v1, %got(B_100230B8)($gp)
/* 0040DE08 00000000 */  nop   
/* 0040DE0C 246330B8 */  addiu $v1, %lo(B_100230B8) # addiu $v1, $v1, 0x30b8
/* 0040DE10 1440000E */  bnez  $v0, .L0040DE4C
/* 0040DE14 AC620000 */   sw    $v0, ($v1)
/* 0040DE18 8F998748 */  lw    $t9, %call16(elf_errno)($gp)
/* 0040DE1C 00000000 */  nop   
/* 0040DE20 0320F809 */  jalr  $t9
/* 0040DE24 00000000 */   nop   
/* 0040DE28 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040DE2C 10400007 */  beqz  $v0, .L0040DE4C
/* 0040DE30 00402025 */   move  $a0, $v0
/* 0040DE34 8F998744 */  lw    $t9, %call16(elf_errmsg)($gp)
/* 0040DE38 00000000 */  nop   
/* 0040DE3C 0320F809 */  jalr  $t9
/* 0040DE40 00000000 */   nop   
/* 0040DE44 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040DE48 00000000 */  nop   
.L0040DE4C:
/* 0040DE4C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0040DE50 8FA20024 */  lw    $v0, 0x24($sp)
/* 0040DE54 03E00008 */  jr    $ra
/* 0040DE58 27BD0030 */   addiu $sp, $sp, 0x30

    .type elf_st_openobj, @function
    .size elf_st_openobj, .-elf_st_openobj
    .end elf_st_openobj

    .type func_0040DE5C, @function
func_0040DE5C:
    # 0040F5E8 elf_write_symtable
    # 0040FF10 elf_st_sechdr
    # 00410B44 aself_st_wrsection
    # 00410BC0 func_00410BC0
    # 00410F2C aself_st_wrreginfo
    # 00411868 aself_close_wrreloc
    # 00412704 write_mdebug_scns
    # 00414B68 create_content_section
    # 00414DE8 create_comment_section
/* 0040DE5C AC850000 */  sw    $a1, ($a0)
/* 0040DE60 AC860004 */  sw    $a2, 4($a0)
/* 0040DE64 AC870008 */  sw    $a3, 8($a0)
/* 0040DE68 8FAE0010 */  lw    $t6, 0x10($sp)
/* 0040DE6C 03E00008 */  jr    $ra
/* 0040DE70 AC8E0010 */   sw    $t6, 0x10($a0)

glabel haddstr
    .ent haddstr
    # 0040FF10 elf_st_sechdr
    # 004106CC gen_elf_scnhdr
    # 00410BC0 func_00410BC0
    # 00410F2C aself_st_wrreginfo
    # 00411170 aself_scnhdr_wrreloc
    # 00411970 aself_scnhdr_wrgptable
    # 00411F8C func_00411F8C
/* 0040DE74 3C1C0FC2 */  .cpload $t9
/* 0040DE78 279CC3EC */  
/* 0040DE7C 0399E021 */  
/* 0040DE80 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0040DE84 8F828088 */  lw    $v0, %got(B_10023094)($gp)
/* 0040DE88 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0040DE8C 8C423094 */  lw    $v0, %lo(B_10023094)($v0)
/* 0040DE90 AFBC0020 */  sw    $gp, 0x20($sp)
/* 0040DE94 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0040DE98 AFB00018 */  sw    $s0, 0x18($sp)
/* 0040DE9C AFA40038 */  sw    $a0, 0x38($sp)
/* 0040DEA0 8F99818C */  lw    $t9, %call16(strlen)($gp)
/* 0040DEA4 8C500000 */  lw    $s0, ($v0)
/* 0040DEA8 8C510008 */  lw    $s1, 8($v0)
/* 0040DEAC 0320F809 */  jalr  $t9
/* 0040DEB0 00000000 */   nop   
/* 0040DEB4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040DEB8 00517021 */  addu  $t6, $v0, $s1
/* 0040DEBC 8F848080 */  lw    $a0, %got(D_10000264)($gp)
/* 0040DEC0 24430001 */  addiu $v1, $v0, 1
/* 0040DEC4 8C840264 */  lw    $a0, %lo(D_10000264)($a0)
/* 0040DEC8 AFA30034 */  sw    $v1, 0x34($sp)
/* 0040DECC 01C4082A */  slt   $at, $t6, $a0
/* 0040DED0 14200024 */  bnez  $at, .L0040DF64
/* 0040DED4 00832821 */   addu  $a1, $a0, $v1
/* 0040DED8 16000014 */  bnez  $s0, .L0040DF2C
/* 0040DEDC 24A54000 */   addiu $a1, $a1, 0x4000
/* 0040DEE0 8F998190 */  lw    $t9, %call16(malloc)($gp)
/* 0040DEE4 00A02025 */  move  $a0, $a1
/* 0040DEE8 0320F809 */  jalr  $t9
/* 0040DEEC AFA5002C */   sw    $a1, 0x2c($sp)
/* 0040DEF0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040DEF4 1220000A */  beqz  $s1, .L0040DF20
/* 0040DEF8 00408025 */   move  $s0, $v0
/* 0040DEFC 8F84806C */  lw    $a0, %got(RO_100124C8)($gp)
/* 0040DF00 8F85806C */  lw    $a1, %got(RO_100124D8)($gp)
/* 0040DF04 8F998670 */  lw    $t9, %call16(assertion_failed)($gp)
/* 0040DF08 2406011D */  li    $a2, 285
/* 0040DF0C 248424C8 */  addiu $a0, %lo(RO_100124C8) # addiu $a0, $a0, 0x24c8
/* 0040DF10 0320F809 */  jalr  $t9
/* 0040DF14 24A524D8 */   addiu $a1, %lo(RO_100124D8) # addiu $a1, $a1, 0x24d8
/* 0040DF18 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040DF1C 00000000 */  nop   
.L0040DF20:
/* 0040DF20 24110001 */  li    $s1, 1
/* 0040DF24 10000007 */  b     .L0040DF44
/* 0040DF28 A2000000 */   sb    $zero, ($s0)
.L0040DF2C:
/* 0040DF2C 8F998148 */  lw    $t9, %call16(realloc)($gp)
/* 0040DF30 02002025 */  move  $a0, $s0
/* 0040DF34 0320F809 */  jalr  $t9
/* 0040DF38 AFA5002C */   sw    $a1, 0x2c($sp)
/* 0040DF3C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040DF40 00408025 */  move  $s0, $v0
.L0040DF44:
/* 0040DF44 16000004 */  bnez  $s0, .L0040DF58
/* 0040DF48 8FAF002C */   lw    $t7, 0x2c($sp)
/* 0040DF4C 10000015 */  b     .L0040DFA4
/* 0040DF50 2402FFFF */   li    $v0, -1
/* 0040DF54 8FAF002C */  lw    $t7, 0x2c($sp)
.L0040DF58:
/* 0040DF58 8F818080 */  lw    $at, %got(D_10000264)($gp)
/* 0040DF5C 00000000 */  nop   
/* 0040DF60 AC2F0264 */  sw    $t7, %lo(D_10000264)($at)
.L0040DF64:
/* 0040DF64 8F9981A0 */  lw    $t9, %call16(strcpy)($gp)
/* 0040DF68 8FA50038 */  lw    $a1, 0x38($sp)
/* 0040DF6C 0320F809 */  jalr  $t9
/* 0040DF70 02112021 */   addu  $a0, $s0, $s1
/* 0040DF74 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040DF78 02201025 */  move  $v0, $s1
/* 0040DF7C 8F838088 */  lw    $v1, %got(B_10023094)($gp)
/* 0040DF80 00000000 */  nop   
/* 0040DF84 24633094 */  addiu $v1, %lo(B_10023094) # addiu $v1, $v1, 0x3094
/* 0040DF88 8C780000 */  lw    $t8, ($v1)
/* 0040DF8C 00000000 */  nop   
/* 0040DF90 AF100000 */  sw    $s0, ($t8)
/* 0040DF94 8FB90034 */  lw    $t9, 0x34($sp)
/* 0040DF98 8C690000 */  lw    $t1, ($v1)
/* 0040DF9C 03314021 */  addu  $t0, $t9, $s1
/* 0040DFA0 AD280008 */  sw    $t0, 8($t1)
.L0040DFA4:
/* 0040DFA4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0040DFA8 8FB00018 */  lw    $s0, 0x18($sp)
/* 0040DFAC 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0040DFB0 03E00008 */  jr    $ra
/* 0040DFB4 27BD0038 */   addiu $sp, $sp, 0x38

    .type haddstr, @function
    .size haddstr, .-haddstr
    .end haddstr

    .type func_0040DFB8, @function
func_0040DFB8:
    # 0040FF10 elf_st_sechdr
/* 0040DFB8 3C1C0FC2 */  .cpload $t9
/* 0040DFBC 279CC2A8 */  
/* 0040DFC0 0399E021 */  
/* 0040DFC4 8F828088 */  lw    $v0, %got(B_1002309C)($gp)
/* 0040DFC8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0040DFCC 8C42309C */  lw    $v0, %lo(B_1002309C)($v0)
/* 0040DFD0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0040DFD4 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0040DFD8 8C4E0000 */  lw    $t6, ($v0)
/* 0040DFDC 24060138 */  li    $a2, 312
/* 0040DFE0 11C0000D */  beqz  $t6, .L0040E018
/* 0040DFE4 00000000 */   nop   
/* 0040DFE8 8F84806C */  lw    $a0, %got(RO_100124E4)($gp)
/* 0040DFEC 8F85806C */  lw    $a1, %got(RO_10012500)($gp)
/* 0040DFF0 8F998670 */  lw    $t9, %call16(assertion_failed)($gp)
/* 0040DFF4 248424E4 */  addiu $a0, %lo(RO_100124E4) # addiu $a0, $a0, 0x24e4
/* 0040DFF8 0320F809 */  jalr  $t9
/* 0040DFFC 24A52500 */   addiu $a1, %lo(RO_10012500) # addiu $a1, $a1, 0x2500
/* 0040E000 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E004 00000000 */  nop   
/* 0040E008 8F828088 */  lw    $v0, %got(B_1002309C)($gp)
/* 0040E00C 00000000 */  nop   
/* 0040E010 8C42309C */  lw    $v0, %lo(B_1002309C)($v0)
/* 0040E014 00000000 */  nop   
.L0040E018:
/* 0040E018 8C4F0008 */  lw    $t7, 8($v0)
/* 0040E01C 24060139 */  li    $a2, 313
/* 0040E020 11E00009 */  beqz  $t7, .L0040E048
/* 0040E024 00000000 */   nop   
/* 0040E028 8F84806C */  lw    $a0, %got(RO_1001250C)($gp)
/* 0040E02C 8F85806C */  lw    $a1, %got(RO_10012528)($gp)
/* 0040E030 8F998670 */  lw    $t9, %call16(assertion_failed)($gp)
/* 0040E034 2484250C */  addiu $a0, %lo(RO_1001250C) # addiu $a0, $a0, 0x250c
/* 0040E038 0320F809 */  jalr  $t9
/* 0040E03C 24A52528 */   addiu $a1, %lo(RO_10012528) # addiu $a1, $a1, 0x2528
/* 0040E040 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E044 00000000 */  nop   
.L0040E048:
/* 0040E048 8F828B24 */  lw     $v0, %got(st_pchdr)($gp)
/* 0040E04C 00000000 */  nop   
/* 0040E050 8C420000 */  lw    $v0, ($v0)
/* 0040E054 00000000 */  nop   
/* 0040E058 8C580094 */  lw    $t8, 0x94($v0)
/* 0040E05C 8C590028 */  lw    $t9, 0x28($v0)
/* 0040E060 00000000 */  nop   
/* 0040E064 03192021 */  addu  $a0, $t8, $t9
/* 0040E068 8F998190 */  lw    $t9, %call16(malloc)($gp)
/* 0040E06C 24840035 */  addiu $a0, $a0, 0x35
/* 0040E070 0320F809 */  jalr  $t9
/* 0040E074 AFA40024 */   sw    $a0, 0x24($sp)
/* 0040E078 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E07C 8FA40024 */  lw    $a0, 0x24($sp)
/* 0040E080 8F888088 */  lw    $t0, %got(B_1002309C)($gp)
/* 0040E084 8F818080 */  lw    $at, %got(D_10000268)($gp)
/* 0040E088 A0400000 */  sb    $zero, ($v0)
/* 0040E08C 8D08309C */  lw    $t0, %lo(B_1002309C)($t0)
/* 0040E090 8F8A8088 */  lw    $t2, %got(B_1002309C)($gp)
/* 0040E094 AC240268 */  sw    $a0, %lo(D_10000268)($at)
/* 0040E098 AD020000 */  sw    $v0, ($t0)
/* 0040E09C 8D4A309C */  lw    $t2, %lo(B_1002309C)($t2)
/* 0040E0A0 24090001 */  li    $t1, 1
/* 0040E0A4 AD490008 */  sw    $t1, 8($t2)
/* 0040E0A8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0040E0AC 27BD0028 */  addiu $sp, $sp, 0x28
/* 0040E0B0 03E00008 */  jr    $ra
/* 0040E0B4 00000000 */   nop   

glabel xaddstr
    .ent xaddstr
    # 0040E4E4 func_0040E4E4
    # 0040F5E8 elf_write_symtable
/* 0040E0B8 3C1C0FC2 */  .cpload $t9
/* 0040E0BC 279CC1A8 */  
/* 0040E0C0 0399E021 */  
/* 0040E0C4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0040E0C8 8F828088 */  lw    $v0, %got(B_1002309C)($gp)
/* 0040E0CC AFBF0024 */  sw    $ra, 0x24($sp)
/* 0040E0D0 8C42309C */  lw    $v0, %lo(B_1002309C)($v0)
/* 0040E0D4 AFBC0020 */  sw    $gp, 0x20($sp)
/* 0040E0D8 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0040E0DC AFB00018 */  sw    $s0, 0x18($sp)
/* 0040E0E0 AFA40038 */  sw    $a0, 0x38($sp)
/* 0040E0E4 8F99818C */  lw    $t9, %call16(strlen)($gp)
/* 0040E0E8 8C500000 */  lw    $s0, ($v0)
/* 0040E0EC 8C510008 */  lw    $s1, 8($v0)
/* 0040E0F0 0320F809 */  jalr  $t9
/* 0040E0F4 00000000 */   nop   
/* 0040E0F8 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040E0FC 02227821 */  addu  $t7, $s1, $v0
/* 0040E100 8F838080 */  lw    $v1, %got(D_10000268)($gp)
/* 0040E104 244E0001 */  addiu $t6, $v0, 1
/* 0040E108 8C630268 */  lw    $v1, %lo(D_10000268)($v1)
/* 0040E10C AFAE0034 */  sw    $t6, 0x34($sp)
/* 0040E110 01E3082A */  slt   $at, $t7, $v1
/* 0040E114 1420000F */  bnez  $at, .L0040E154
/* 0040E118 006E2821 */   addu  $a1, $v1, $t6
/* 0040E11C 8F998148 */  lw    $t9, %call16(realloc)($gp)
/* 0040E120 24A54000 */  addiu $a1, $a1, 0x4000
/* 0040E124 AFA5002C */  sw    $a1, 0x2c($sp)
/* 0040E128 0320F809 */  jalr  $t9
/* 0040E12C 02002025 */   move  $a0, $s0
/* 0040E130 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040E134 8FA5002C */  lw    $a1, 0x2c($sp)
/* 0040E138 14400003 */  bnez  $v0, .L0040E148
/* 0040E13C 00408025 */   move  $s0, $v0
/* 0040E140 10000014 */  b     .L0040E194
/* 0040E144 2402FFFF */   li    $v0, -1
.L0040E148:
/* 0040E148 8F818080 */  lw    $at, %got(D_10000268)($gp)
/* 0040E14C 00000000 */  nop   
/* 0040E150 AC250268 */  sw    $a1, %lo(D_10000268)($at)
.L0040E154:
/* 0040E154 8F9981A0 */  lw    $t9, %call16(strcpy)($gp)
/* 0040E158 8FA50038 */  lw    $a1, 0x38($sp)
/* 0040E15C 0320F809 */  jalr  $t9
/* 0040E160 02112021 */   addu  $a0, $s0, $s1
/* 0040E164 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040E168 02201025 */  move  $v0, $s1
/* 0040E16C 8F838088 */  lw    $v1, %got(B_1002309C)($gp)
/* 0040E170 00000000 */  nop   
/* 0040E174 2463309C */  addiu $v1, %lo(B_1002309C) # addiu $v1, $v1, 0x309c
/* 0040E178 8C790000 */  lw    $t9, ($v1)
/* 0040E17C 00000000 */  nop   
/* 0040E180 AF300000 */  sw    $s0, ($t9)
/* 0040E184 8FA80034 */  lw    $t0, 0x34($sp)
/* 0040E188 8C6A0000 */  lw    $t2, ($v1)
/* 0040E18C 02284821 */  addu  $t1, $s1, $t0
/* 0040E190 AD490008 */  sw    $t1, 8($t2)
.L0040E194:
/* 0040E194 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0040E198 8FB00018 */  lw    $s0, 0x18($sp)
/* 0040E19C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0040E1A0 03E00008 */  jr    $ra
/* 0040E1A4 27BD0038 */   addiu $sp, $sp, 0x38

    .type xaddstr, @function
    .size xaddstr, .-xaddstr
    .end xaddstr

    .type func_0040E1A8, @function
func_0040E1A8:
    # 0040E280 func_0040E280
    # 0040F5E8 elf_write_symtable
    # 00411094 look_for_scndx
/* 0040E1A8 3C1C0FC2 */  .cpload $t9
/* 0040E1AC 279CC0B8 */  
/* 0040E1B0 0399E021 */  
/* 0040E1B4 8F8E8B28 */  lw     $t6, %got(sixtyfour_bit)($gp)
/* 0040E1B8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0040E1BC 91CE0000 */  lbu   $t6, ($t6)
/* 0040E1C0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0040E1C4 11C00016 */  beqz  $t6, .L0040E220
/* 0040E1C8 AFBC0018 */   sw    $gp, 0x18($sp)
/* 0040E1CC 8F998754 */  lw    $t9, %call16(elf64_getshdr)($gp)
/* 0040E1D0 00000000 */  nop   
/* 0040E1D4 0320F809 */  jalr  $t9
/* 0040E1D8 00000000 */   nop   
/* 0040E1DC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E1E0 14400003 */  bnez  $v0, .L0040E1F0
/* 0040E1E4 00401825 */   move  $v1, $v0
/* 0040E1E8 10000021 */  b     .L0040E270
/* 0040E1EC 00001025 */   move  $v0, $zero
.L0040E1F0:
/* 0040E1F0 8F8F8088 */  lw    $t7, %got(B_100230C0)($gp)
/* 0040E1F4 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 0040E1F8 8DEF30C0 */  lw    $t7, %lo(B_100230C0)($t7)
/* 0040E1FC 8F998758 */  lw    $t9, %call16(elf_strptr)($gp)
/* 0040E200 8C660000 */  lw    $a2, ($v1)
/* 0040E204 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 0040E208 95E5003E */  lhu   $a1, 0x3e($t7)
/* 0040E20C 0320F809 */  jalr  $t9
/* 0040E210 00000000 */   nop   
/* 0040E214 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E218 10000016 */  b     .L0040E274
/* 0040E21C 8FBF001C */   lw    $ra, 0x1c($sp)
.L0040E220:
/* 0040E220 8F998750 */  lw    $t9, %call16(elf32_getshdr)($gp)
/* 0040E224 00000000 */  nop   
/* 0040E228 0320F809 */  jalr  $t9
/* 0040E22C 00000000 */   nop   
/* 0040E230 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E234 14400003 */  bnez  $v0, .L0040E244
/* 0040E238 00401825 */   move  $v1, $v0
/* 0040E23C 1000000C */  b     .L0040E270
/* 0040E240 00001025 */   move  $v0, $zero
.L0040E244:
/* 0040E244 8F988088 */  lw    $t8, %got(B_100230BC)($gp)
/* 0040E248 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 0040E24C 8F1830BC */  lw    $t8, %lo(B_100230BC)($t8)
/* 0040E250 8F998758 */  lw    $t9, %call16(elf_strptr)($gp)
/* 0040E254 8C660000 */  lw    $a2, ($v1)
/* 0040E258 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 0040E25C 97050032 */  lhu   $a1, 0x32($t8)
/* 0040E260 0320F809 */  jalr  $t9
/* 0040E264 00000000 */   nop   
/* 0040E268 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E26C 00000000 */  nop   
.L0040E270:
/* 0040E270 8FBF001C */  lw    $ra, 0x1c($sp)
.L0040E274:
/* 0040E274 27BD0020 */  addiu $sp, $sp, 0x20
/* 0040E278 03E00008 */  jr    $ra
/* 0040E27C 00000000 */   nop   

    .type func_0040E280, @function
func_0040E280:
    # 0040F5E8 elf_write_symtable
/* 0040E280 3C1C0FC2 */  .cpload $t9
/* 0040E284 279CBFE0 */  
/* 0040E288 0399E021 */  
/* 0040E28C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0040E290 AFB70030 */  sw    $s7, 0x30($sp)
/* 0040E294 AFB6002C */  sw    $s6, 0x2c($sp)
/* 0040E298 AFB50028 */  sw    $s5, 0x28($sp)
/* 0040E29C AFB40024 */  sw    $s4, 0x24($sp)
/* 0040E2A0 8F818080 */  lw    $at, %got(D_10000020)($gp)
/* 0040E2A4 8F948088 */  lw    $s4, %got(B_100230B8)($gp)
/* 0040E2A8 8F95806C */  lw    $s5, %got(RO_10012534)($gp)
/* 0040E2AC 8F96806C */  lw    $s6, %got(RO_1001253C)($gp)
/* 0040E2B0 8F978080 */  lw    $s7, %got(D_10000098)($gp)
/* 0040E2B4 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0040E2B8 AFB30020 */  sw    $s3, 0x20($sp)
/* 0040E2BC 0080F025 */  move  $fp, $a0
/* 0040E2C0 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0040E2C4 AFBC0034 */  sw    $gp, 0x34($sp)
/* 0040E2C8 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0040E2CC AFB10018 */  sw    $s1, 0x18($sp)
/* 0040E2D0 AFB00014 */  sw    $s0, 0x14($sp)
/* 0040E2D4 24930004 */  addiu $s3, $a0, 4
/* 0040E2D8 24020001 */  li    $v0, 1
/* 0040E2DC A4240020 */  sh    $a0, %lo(D_10000020)($at)
/* 0040E2E0 269430B8 */  addiu $s4, %lo(B_100230B8) # addiu $s4, $s4, 0x30b8
/* 0040E2E4 26B52534 */  addiu $s5, %lo(RO_10012534) # addiu $s5, $s5, 0x2534
/* 0040E2E8 26D6253C */  addiu $s6, %lo(RO_1001253C) # addiu $s6, $s6, 0x253c
/* 0040E2EC 26F70098 */  addiu $s7, %lo(D_10000098) # addiu $s7, $s7, 0x98
.L0040E2F0:
/* 0040E2F0 8EF20000 */  lw    $s2, ($s7)
/* 0040E2F4 2A610005 */  slti  $at, $s3, 5
/* 0040E2F8 1420001E */  bnez  $at, .L0040E374
/* 0040E2FC 24110004 */   li    $s1, 4
.L0040E300:
/* 0040E300 8F99875C */  lw    $t9, %call16(elf_getscn)($gp)
/* 0040E304 8E840000 */  lw    $a0, ($s4)
/* 0040E308 0320F809 */  jalr  $t9
/* 0040E30C 02202825 */   move  $a1, $s1
/* 0040E310 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0040E314 14400003 */  bnez  $v0, .L0040E324
/* 0040E318 00402025 */   move  $a0, $v0
/* 0040E31C 10000051 */  b     .L0040E464
/* 0040E320 2402FFFF */   li    $v0, -1
.L0040E324:
/* 0040E324 8F998018 */  lw    $t9, %got(func_0040E1A8)($gp)
/* 0040E328 00000000 */  nop   
/* 0040E32C 2739E1A8 */  addiu $t9, %lo(func_0040E1A8) # addiu $t9, $t9, -0x1e58
/* 0040E330 0320F809 */  jalr  $t9
/* 0040E334 00000000 */   nop   
/* 0040E338 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0040E33C 14400003 */  bnez  $v0, .L0040E34C
/* 0040E340 00408025 */   move  $s0, $v0
/* 0040E344 10000047 */  b     .L0040E464
/* 0040E348 2402FFFF */   li    $v0, -1
.L0040E34C:
/* 0040E34C 8F998118 */  lw    $t9, %call16(strcmp)($gp)
/* 0040E350 02402025 */  move  $a0, $s2
/* 0040E354 0320F809 */  jalr  $t9
/* 0040E358 02002825 */   move  $a1, $s0
/* 0040E35C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0040E360 10400005 */  beqz  $v0, .L0040E378
/* 0040E364 27CE0004 */   addiu $t6, $fp, 4
/* 0040E368 26310001 */  addiu $s1, $s1, 1
/* 0040E36C 1633FFE4 */  bne   $s1, $s3, .L0040E300
/* 0040E370 00000000 */   nop   
.L0040E374:
/* 0040E374 27CE0004 */  addiu $t6, $fp, 4
.L0040E378:
/* 0040E378 15D10030 */  bne   $t6, $s1, .L0040E43C
/* 0040E37C 0233082A */   slt   $at, $s1, $s3
/* 0040E380 8F858080 */  lw    $a1, %got(D_10000024)($gp)
/* 0040E384 8F998118 */  lw    $t9, %call16(strcmp)($gp)
/* 0040E388 02402025 */  move  $a0, $s2
/* 0040E38C 0320F809 */  jalr  $t9
/* 0040E390 24A50024 */   addiu $a1, %lo(D_10000024) # addiu $a1, $a1, 0x24
/* 0040E394 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0040E398 14400027 */  bnez  $v0, .L0040E438
/* 0040E39C 2A610005 */   slti  $at, $s3, 5
/* 0040E3A0 14200025 */  bnez  $at, .L0040E438
/* 0040E3A4 24110004 */   li    $s1, 4
.L0040E3A8:
/* 0040E3A8 8F99875C */  lw    $t9, %call16(elf_getscn)($gp)
/* 0040E3AC 8E840000 */  lw    $a0, ($s4)
/* 0040E3B0 0320F809 */  jalr  $t9
/* 0040E3B4 02202825 */   move  $a1, $s1
/* 0040E3B8 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0040E3BC 14400003 */  bnez  $v0, .L0040E3CC
/* 0040E3C0 00402025 */   move  $a0, $v0
/* 0040E3C4 10000027 */  b     .L0040E464
/* 0040E3C8 2402FFFF */   li    $v0, -1
.L0040E3CC:
/* 0040E3CC 8F998018 */  lw    $t9, %got(func_0040E1A8)($gp)
/* 0040E3D0 00000000 */  nop   
/* 0040E3D4 2739E1A8 */  addiu $t9, %lo(func_0040E1A8) # addiu $t9, $t9, -0x1e58
/* 0040E3D8 0320F809 */  jalr  $t9
/* 0040E3DC 00000000 */   nop   
/* 0040E3E0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0040E3E4 14400003 */  bnez  $v0, .L0040E3F4
/* 0040E3E8 00408025 */   move  $s0, $v0
/* 0040E3EC 1000001D */  b     .L0040E464
/* 0040E3F0 2402FFFF */   li    $v0, -1
.L0040E3F4:
/* 0040E3F4 8F998118 */  lw    $t9, %call16(strcmp)($gp)
/* 0040E3F8 02A02025 */  move  $a0, $s5
/* 0040E3FC 0320F809 */  jalr  $t9
/* 0040E400 02002825 */   move  $a1, $s0
/* 0040E404 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0040E408 1040000C */  beqz  $v0, .L0040E43C
/* 0040E40C 0233082A */   slt   $at, $s1, $s3
/* 0040E410 8F998118 */  lw    $t9, %call16(strcmp)($gp)
/* 0040E414 02C02025 */  move  $a0, $s6
/* 0040E418 0320F809 */  jalr  $t9
/* 0040E41C 02002825 */   move  $a1, $s0
/* 0040E420 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0040E424 10400005 */  beqz  $v0, .L0040E43C
/* 0040E428 0233082A */   slt   $at, $s1, $s3
/* 0040E42C 26310001 */  addiu $s1, $s1, 1
/* 0040E430 1633FFDD */  bne   $s1, $s3, .L0040E3A8
/* 0040E434 00000000 */   nop   
.L0040E438:
/* 0040E438 0233082A */  slt   $at, $s1, $s3
.L0040E43C:
/* 0040E43C 10200003 */  beqz  $at, .L0040E44C
/* 0040E440 240FFFFF */   li    $t7, -1
/* 0040E444 10000002 */  b     .L0040E450
/* 0040E448 AEF1000C */   sw    $s1, 0xc($s7)
.L0040E44C:
/* 0040E44C AEEF000C */  sw    $t7, 0xc($s7)
.L0040E450:
/* 0040E450 8F988080 */  lw    $t8, %got(D_10000168)($gp)
/* 0040E454 26F70010 */  addiu $s7, $s7, 0x10
/* 0040E458 27180168 */  addiu $t8, %lo(D_10000168) # addiu $t8, $t8, 0x168
/* 0040E45C 16F8FFA4 */  bne   $s7, $t8, .L0040E2F0
/* 0040E460 00000000 */   nop   
.L0040E464:
/* 0040E464 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0040E468 8FB00014 */  lw    $s0, 0x14($sp)
/* 0040E46C 8FB10018 */  lw    $s1, 0x18($sp)
/* 0040E470 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0040E474 8FB30020 */  lw    $s3, 0x20($sp)
/* 0040E478 8FB40024 */  lw    $s4, 0x24($sp)
/* 0040E47C 8FB50028 */  lw    $s5, 0x28($sp)
/* 0040E480 8FB6002C */  lw    $s6, 0x2c($sp)
/* 0040E484 8FB70030 */  lw    $s7, 0x30($sp)
/* 0040E488 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0040E48C 03E00008 */  jr    $ra
/* 0040E490 27BD0040 */   addiu $sp, $sp, 0x40

    .type func_0040E494, @function
func_0040E494:
    # 0040EE88 func_0040EE88
/* 0040E494 3C1C0FC2 */  .cpload $t9
/* 0040E498 279CBDCC */  
/* 0040E49C 0399E021 */  
/* 0040E4A0 2C810017 */  sltiu $at, $a0, 0x17
/* 0040E4A4 14200003 */  bnez  $at, .L0040E4B4
/* 0040E4A8 00047080 */   sll   $t6, $a0, 2
/* 0040E4AC 03E00008 */  jr    $ra
/* 0040E4B0 2402FFFF */   li    $v0, -1

.L0040E4B4:
/* 0040E4B4 8F8F8080 */  lw    $t7, %got(D_10000168)($gp)
/* 0040E4B8 8F898080 */  lw    $t1, %got(D_10000088)($gp)
/* 0040E4BC 25EF0168 */  addiu $t7, %lo(D_10000168) # addiu $t7, $t7, 0x168
/* 0040E4C0 01CFC021 */  addu  $t8, $t6, $t7
/* 0040E4C4 8F190000 */  lw    $t9, ($t8)
/* 0040E4C8 25290088 */  addiu $t1, %lo(D_10000088) # addiu $t1, $t1, 0x88
/* 0040E4CC 00194100 */  sll   $t0, $t9, 4
/* 0040E4D0 01095021 */  addu  $t2, $t0, $t1
/* 0040E4D4 8D42000C */  lw    $v0, 0xc($t2)
/* 0040E4D8 00000000 */  nop   
/* 0040E4DC 03E00008 */  jr    $ra
/* 0040E4E0 00000000 */   nop   

    .type func_0040E4E4, @function
func_0040E4E4:
    # 0040EE88 func_0040EE88
/* 0040E4E4 3C1C0FC2 */  .cpload $t9
/* 0040E4E8 279CBD7C */  
/* 0040E4EC 0399E021 */  
/* 0040E4F0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0040E4F4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0040E4F8 10A00008 */  beqz  $a1, .L0040E51C
/* 0040E4FC AFBC0018 */   sw    $gp, 0x18($sp)
/* 0040E500 8F998814 */  lw    $t9, %call16(st_str_extiss)($gp)
/* 0040E504 00000000 */  nop   
/* 0040E508 0320F809 */  jalr  $t9
/* 0040E50C 00000000 */   nop   
/* 0040E510 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E514 10000007 */  b     .L0040E534
/* 0040E518 00402025 */   move  $a0, $v0
.L0040E51C:
/* 0040E51C 8F99884C */  lw    $t9, %call16(st_str_iss)($gp)
/* 0040E520 00000000 */  nop   
/* 0040E524 0320F809 */  jalr  $t9
/* 0040E528 00000000 */   nop   
/* 0040E52C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E530 00402025 */  move  $a0, $v0
.L0040E534:
/* 0040E534 8F99825C */  lw    $t9, %call16(xaddstr)($gp)
/* 0040E538 00000000 */  nop   
/* 0040E53C 0320F809 */  jalr  $t9
/* 0040E540 00000000 */   nop   
/* 0040E544 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0040E548 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E54C 03E00008 */  jr    $ra
/* 0040E550 27BD0020 */   addiu $sp, $sp, 0x20

    .type func_0040E554, @function
func_0040E554:
    # 0040EE88 func_0040EE88
/* 0040E554 3C1C0FC2 */  .cpload $t9
/* 0040E558 279CBD0C */  
/* 0040E55C 0399E021 */  
/* 0040E560 27BDFF98 */  addiu $sp, $sp, -0x68
/* 0040E564 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0040E568 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0040E56C AFB00014 */  sw    $s0, 0x14($sp)
/* 0040E570 AFA0004C */  sw    $zero, 0x4c($sp)
/* 0040E574 8C8E000C */  lw    $t6, 0xc($a0)
/* 0040E578 3C01000F */  lui   $at, 0xf
/* 0040E57C 3421FFFF */  ori   $at, $at, 0xffff
/* 0040E580 01C17824 */  and   $t7, $t6, $at
/* 0040E584 15E10003 */  bne   $t7, $at, .L0040E594
/* 0040E588 00000000 */   nop   
/* 0040E58C 1000023A */  b     .L0040EE78
/* 0040E590 00001025 */   move  $v0, $zero
.L0040E594:
/* 0040E594 8C83000C */  lw    $v1, 0xc($a0)
/* 0040E598 3C01000F */  lui   $at, 0xf
/* 0040E59C 00032980 */  sll   $a1, $v1, 6
/* 0040E5A0 0005C6C2 */  srl   $t8, $a1, 0x1b
/* 0040E5A4 17000003 */  bnez  $t8, .L0040E5B4
/* 0040E5A8 03002825 */   move  $a1, $t8
/* 0040E5AC 10000232 */  b     .L0040EE78
/* 0040E5B0 00001025 */   move  $v0, $zero
.L0040E5B4:
/* 0040E5B4 3421FFFF */  ori   $at, $at, 0xffff
/* 0040E5B8 00618024 */  and   $s0, $v1, $at
/* 0040E5BC 24010006 */  li    $at, 6
/* 0040E5C0 00031682 */  srl   $v0, $v1, 0x1a
/* 0040E5C4 10410003 */  beq   $v0, $at, .L0040E5D4
/* 0040E5C8 2401000E */   li    $at, 14
/* 0040E5CC 14410004 */  bne   $v0, $at, .L0040E5E0
/* 0040E5D0 2401001F */   li    $at, 31
.L0040E5D4:
/* 0040E5D4 10000228 */  b     .L0040EE78
/* 0040E5D8 00001025 */   move  $v0, $zero
/* 0040E5DC 2401001F */  li    $at, 31
.L0040E5E0:
/* 0040E5E0 1041001F */  beq   $v0, $at, .L0040E660
/* 0040E5E4 24010020 */   li    $at, 32
/* 0040E5E8 1041001D */  beq   $v0, $at, .L0040E660
/* 0040E5EC 24010012 */   li    $at, 18
/* 0040E5F0 1041001B */  beq   $v0, $at, .L0040E660
/* 0040E5F4 24010007 */   li    $at, 7
/* 0040E5F8 10410019 */  beq   $v0, $at, .L0040E660
/* 0040E5FC 24010008 */   li    $at, 8
/* 0040E600 10410017 */  beq   $v0, $at, .L0040E660
/* 0040E604 24010009 */   li    $at, 9
/* 0040E608 10410015 */  beq   $v0, $at, .L0040E660
/* 0040E60C 24010014 */   li    $at, 20
/* 0040E610 10410013 */  beq   $v0, $at, .L0040E660
/* 0040E614 24010015 */   li    $at, 21
/* 0040E618 10410011 */  beq   $v0, $at, .L0040E660
/* 0040E61C 24010016 */   li    $at, 22
/* 0040E620 1041000F */  beq   $v0, $at, .L0040E660
/* 0040E624 24010011 */   li    $at, 17
/* 0040E628 1041000D */  beq   $v0, $at, .L0040E660
/* 0040E62C 24010017 */   li    $at, 23
/* 0040E630 1041000B */  beq   $v0, $at, .L0040E660
/* 0040E634 24010018 */   li    $at, 24
/* 0040E638 10410009 */  beq   $v0, $at, .L0040E660
/* 0040E63C 24010019 */   li    $at, 25
/* 0040E640 10410007 */  beq   $v0, $at, .L0040E660
/* 0040E644 24010004 */   li    $at, 4
/* 0040E648 10410005 */  beq   $v0, $at, .L0040E660
/* 0040E64C 00000000 */   nop   
/* 0040E650 14400005 */  bnez  $v0, .L0040E668
/* 0040E654 2401000B */   li    $at, 11
/* 0040E658 14A10003 */  bne   $a1, $at, .L0040E668
/* 0040E65C 00000000 */   nop   
.L0040E660:
/* 0040E660 10000205 */  b     .L0040EE78
/* 0040E664 00001025 */   move  $v0, $zero
.L0040E668:
/* 0040E668 8C990000 */  lw    $t9, ($a0)
/* 0040E66C 00000000 */  nop   
/* 0040E670 001948C0 */  sll   $t1, $t9, 3
/* 0040E674 05210003 */  bgez  $t1, .L0040E684
/* 0040E678 00000000 */   nop   
/* 0040E67C 100001FE */  b     .L0040EE78
/* 0040E680 00001025 */   move  $v0, $zero
.L0040E684:
/* 0040E684 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040E688 02002025 */  move  $a0, $s0
/* 0040E68C 0320F809 */  jalr  $t9
/* 0040E690 26100001 */   addiu $s0, $s0, 1
/* 0040E694 8C4A0000 */  lw    $t2, ($v0)
/* 0040E698 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E69C 15400009 */  bnez  $t2, .L0040E6C4
/* 0040E6A0 00000000 */   nop   
/* 0040E6A4 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040E6A8 02002025 */  move  $a0, $s0
/* 0040E6AC 0320F809 */  jalr  $t9
/* 0040E6B0 00000000 */   nop   
/* 0040E6B4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E6B8 8C420000 */  lw    $v0, ($v0)
/* 0040E6BC 100001EF */  b     .L0040EE7C
/* 0040E6C0 8FBF001C */   lw    $ra, 0x1c($sp)
.L0040E6C4:
/* 0040E6C4 8C410000 */  lw    $at, ($v0)
/* 0040E6C8 27AB0050 */  addiu $t3, $sp, 0x50
/* 0040E6CC AD610000 */  sw    $at, ($t3)
/* 0040E6D0 8FAE0050 */  lw    $t6, 0x50($sp)
/* 0040E6D4 24010001 */  li    $at, 1
/* 0040E6D8 000E7FC2 */  srl   $t7, $t6, 0x1f
/* 0040E6DC 15E10008 */  bne   $t7, $at, .L0040E700
/* 0040E6E0 93B80050 */   lbu   $t8, 0x50($sp)
/* 0040E6E4 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040E6E8 02002025 */  move  $a0, $s0
/* 0040E6EC 0320F809 */  jalr  $t9
/* 0040E6F0 26100001 */   addiu $s0, $s0, 1
/* 0040E6F4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E6F8 00000000 */  nop   
/* 0040E6FC 93B80050 */  lbu   $t8, 0x50($sp)
.L0040E700:
/* 0040E700 2401000C */  li    $at, 12
/* 0040E704 3319003F */  andi  $t9, $t8, 0x3f
/* 0040E708 1321000B */  beq   $t9, $at, .L0040E738
/* 0040E70C 2401000E */   li    $at, 14
/* 0040E710 13210009 */  beq   $t9, $at, .L0040E738
/* 0040E714 24010011 */   li    $at, 17
/* 0040E718 13210007 */  beq   $t9, $at, .L0040E738
/* 0040E71C 24010014 */   li    $at, 20
/* 0040E720 13210005 */  beq   $t9, $at, .L0040E738
/* 0040E724 2401000F */   li    $at, 15
/* 0040E728 13210003 */  beq   $t9, $at, .L0040E738
/* 0040E72C 2401000D */   li    $at, 13
/* 0040E730 1721000F */  bne   $t9, $at, .L0040E770
/* 0040E734 93AC0050 */   lbu   $t4, 0x50($sp)
.L0040E738:
/* 0040E738 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040E73C 02002025 */  move  $a0, $s0
/* 0040E740 0320F809 */  jalr  $t9
/* 0040E744 26100001 */   addiu $s0, $s0, 1
/* 0040E748 AFA2005C */  sw    $v0, 0x5c($sp)
/* 0040E74C 8C480000 */  lw    $t0, ($v0)
/* 0040E750 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E754 24010FFF */  li    $at, 4095
/* 0040E758 00084D02 */  srl   $t1, $t0, 0x14
/* 0040E75C 15210002 */  bne   $t1, $at, .L0040E768
/* 0040E760 240A0001 */   li    $t2, 1
/* 0040E764 26100001 */  addiu $s0, $s0, 1
.L0040E768:
/* 0040E768 AFAA004C */  sw    $t2, 0x4c($sp)
/* 0040E76C 93AC0050 */  lbu   $t4, 0x50($sp)
.L0040E770:
/* 0040E770 24010010 */  li    $at, 16
/* 0040E774 318B003F */  andi  $t3, $t4, 0x3f
/* 0040E778 1561000F */  bne   $t3, $at, .L0040E7B8
/* 0040E77C 97AF0050 */   lhu   $t7, 0x50($sp)
/* 0040E780 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040E784 02002025 */  move  $a0, $s0
/* 0040E788 0320F809 */  jalr  $t9
/* 0040E78C 00000000 */   nop   
/* 0040E790 AFA2005C */  sw    $v0, 0x5c($sp)
/* 0040E794 8C4D0000 */  lw    $t5, ($v0)
/* 0040E798 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E79C 24010FFF */  li    $at, 4095
/* 0040E7A0 000D7502 */  srl   $t6, $t5, 0x14
/* 0040E7A4 15C10002 */  bne   $t6, $at, .L0040E7B0
/* 0040E7A8 00000000 */   nop   
/* 0040E7AC 26100001 */  addiu $s0, $s0, 1
.L0040E7B0:
/* 0040E7B0 26100003 */  addiu $s0, $s0, 3
/* 0040E7B4 97AF0050 */  lhu   $t7, 0x50($sp)
.L0040E7B8:
/* 0040E7B8 24010001 */  li    $at, 1
/* 0040E7BC 31F8000F */  andi  $t8, $t7, 0xf
/* 0040E7C0 17010003 */  bne   $t8, $at, .L0040E7D0
/* 0040E7C4 2403FFFF */   li    $v1, -1
/* 0040E7C8 1000015E */  b     .L0040ED44
/* 0040E7CC 24030004 */   li    $v1, 4
.L0040E7D0:
/* 0040E7D0 97B90050 */  lhu   $t9, 0x50($sp)
/* 0040E7D4 24010003 */  li    $at, 3
/* 0040E7D8 3328000F */  andi  $t0, $t9, 0xf
/* 0040E7DC 1501002F */  bne   $t0, $at, .L0040E89C
/* 0040E7E0 93AA0051 */   lbu   $t2, 0x51($sp)
/* 0040E7E4 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040E7E8 02002025 */  move  $a0, $s0
/* 0040E7EC 0320F809 */  jalr  $t9
/* 0040E7F0 26100001 */   addiu $s0, $s0, 1
/* 0040E7F4 8C490000 */  lw    $t1, ($v0)
/* 0040E7F8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E7FC 24010FFF */  li    $at, 4095
/* 0040E800 00095502 */  srl   $t2, $t1, 0x14
/* 0040E804 15410002 */  bne   $t2, $at, .L0040E810
/* 0040E808 00000000 */   nop   
/* 0040E80C 26100001 */  addiu $s0, $s0, 1
.L0040E810:
/* 0040E810 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040E814 02002025 */  move  $a0, $s0
/* 0040E818 0320F809 */  jalr  $t9
/* 0040E81C 26100001 */   addiu $s0, $s0, 1
/* 0040E820 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E824 02002025 */  move  $a0, $s0
/* 0040E828 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040E82C 26100001 */  addiu $s0, $s0, 1
/* 0040E830 0320F809 */  jalr  $t9
/* 0040E834 AFA20060 */   sw    $v0, 0x60($sp)
/* 0040E838 8FAC0060 */  lw    $t4, 0x60($sp)
/* 0040E83C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E840 8D8B0000 */  lw    $t3, ($t4)
/* 0040E844 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040E848 AFAB0040 */  sw    $t3, 0x40($sp)
/* 0040E84C 8C4D0000 */  lw    $t5, ($v0)
/* 0040E850 02002025 */  move  $a0, $s0
/* 0040E854 26100001 */  addiu $s0, $s0, 1
/* 0040E858 0320F809 */  jalr  $t9
/* 0040E85C AFAD003C */   sw    $t5, 0x3c($sp)
/* 0040E860 8FAE003C */  lw    $t6, 0x3c($sp)
/* 0040E864 8FAF0040 */  lw    $t7, 0x40($sp)
/* 0040E868 8C480000 */  lw    $t0, ($v0)
/* 0040E86C 01CFC023 */  subu  $t8, $t6, $t7
/* 0040E870 27190001 */  addiu $t9, $t8, 1
/* 0040E874 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E878 05010003 */  bgez  $t0, .L0040E888
/* 0040E87C 000848C3 */   sra   $t1, $t0, 3
/* 0040E880 25010007 */  addiu $at, $t0, 7
/* 0040E884 000148C3 */  sra   $t1, $at, 3
.L0040E888:
/* 0040E888 03290019 */  multu $t9, $t1
/* 0040E88C 00001812 */  mflo  $v1
/* 0040E890 00000000 */  nop   
/* 0040E894 00000000 */  nop   
/* 0040E898 93AA0051 */  lbu   $t2, 0x51($sp)
.L0040E89C:
/* 0040E89C 24010001 */  li    $at, 1
/* 0040E8A0 000A6102 */  srl   $t4, $t2, 4
/* 0040E8A4 15810005 */  bne   $t4, $at, .L0040E8BC
/* 0040E8A8 2401FFFF */   li    $at, -1
/* 0040E8AC 14610126 */  bne   $v1, $at, .L0040ED48
/* 0040E8B0 2401FFFF */   li    $at, -1
/* 0040E8B4 10000123 */  b     .L0040ED44
/* 0040E8B8 24030004 */   li    $v1, 4
.L0040E8BC:
/* 0040E8BC 93AB0051 */  lbu   $t3, 0x51($sp)
/* 0040E8C0 24010003 */  li    $at, 3
/* 0040E8C4 000B6902 */  srl   $t5, $t3, 4
/* 0040E8C8 15A10031 */  bne   $t5, $at, .L0040E990
/* 0040E8CC 8FAF0050 */   lw    $t7, 0x50($sp)
/* 0040E8D0 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040E8D4 02002025 */  move  $a0, $s0
/* 0040E8D8 0320F809 */  jalr  $t9
/* 0040E8DC 26100001 */   addiu $s0, $s0, 1
/* 0040E8E0 8C4E0000 */  lw    $t6, ($v0)
/* 0040E8E4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E8E8 24010FFF */  li    $at, 4095
/* 0040E8EC 000E7D02 */  srl   $t7, $t6, 0x14
/* 0040E8F0 15E10002 */  bne   $t7, $at, .L0040E8FC
/* 0040E8F4 00000000 */   nop   
/* 0040E8F8 26100001 */  addiu $s0, $s0, 1
.L0040E8FC:
/* 0040E8FC 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040E900 02002025 */  move  $a0, $s0
/* 0040E904 0320F809 */  jalr  $t9
/* 0040E908 26100001 */   addiu $s0, $s0, 1
/* 0040E90C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E910 02002025 */  move  $a0, $s0
/* 0040E914 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040E918 26100001 */  addiu $s0, $s0, 1
/* 0040E91C 0320F809 */  jalr  $t9
/* 0040E920 AFA20060 */   sw    $v0, 0x60($sp)
/* 0040E924 8FB80060 */  lw    $t8, 0x60($sp)
/* 0040E928 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E92C 8F080000 */  lw    $t0, ($t8)
/* 0040E930 02002025 */  move  $a0, $s0
/* 0040E934 AFA80040 */  sw    $t0, 0x40($sp)
/* 0040E938 8C590000 */  lw    $t9, ($v0)
/* 0040E93C 26100001 */  addiu $s0, $s0, 1
/* 0040E940 AFB9003C */  sw    $t9, 0x3c($sp)
/* 0040E944 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040E948 00000000 */  nop   
/* 0040E94C 0320F809 */  jalr  $t9
/* 0040E950 00000000 */   nop   
/* 0040E954 8FA9003C */  lw    $t1, 0x3c($sp)
/* 0040E958 8FAA0040 */  lw    $t2, 0x40($sp)
/* 0040E95C 8C4D0000 */  lw    $t5, ($v0)
/* 0040E960 012A6023 */  subu  $t4, $t1, $t2
/* 0040E964 258B0001 */  addiu $t3, $t4, 1
/* 0040E968 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E96C 05A10003 */  bgez  $t5, .L0040E97C
/* 0040E970 000D70C3 */   sra   $t6, $t5, 3
/* 0040E974 25A10007 */  addiu $at, $t5, 7
/* 0040E978 000170C3 */  sra   $t6, $at, 3
.L0040E97C:
/* 0040E97C 016E0019 */  multu $t3, $t6
/* 0040E980 00001812 */  mflo  $v1
/* 0040E984 00000000 */  nop   
/* 0040E988 00000000 */  nop   
/* 0040E98C 8FAF0050 */  lw    $t7, 0x50($sp)
.L0040E990:
/* 0040E990 24010001 */  li    $at, 1
/* 0040E994 31F8000F */  andi  $t8, $t7, 0xf
/* 0040E998 17010005 */  bne   $t8, $at, .L0040E9B0
/* 0040E99C 2401FFFF */   li    $at, -1
/* 0040E9A0 146100E9 */  bne   $v1, $at, .L0040ED48
/* 0040E9A4 2401FFFF */   li    $at, -1
/* 0040E9A8 100000E6 */  b     .L0040ED44
/* 0040E9AC 24030004 */   li    $v1, 4
.L0040E9B0:
/* 0040E9B0 8FA80050 */  lw    $t0, 0x50($sp)
/* 0040E9B4 24010003 */  li    $at, 3
/* 0040E9B8 3119000F */  andi  $t9, $t0, 0xf
/* 0040E9BC 1721002F */  bne   $t9, $at, .L0040EA7C
/* 0040E9C0 93AA0053 */   lbu   $t2, 0x53($sp)
/* 0040E9C4 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040E9C8 02002025 */  move  $a0, $s0
/* 0040E9CC 0320F809 */  jalr  $t9
/* 0040E9D0 26100001 */   addiu $s0, $s0, 1
/* 0040E9D4 8C490000 */  lw    $t1, ($v0)
/* 0040E9D8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040E9DC 24010FFF */  li    $at, 4095
/* 0040E9E0 00095502 */  srl   $t2, $t1, 0x14
/* 0040E9E4 15410002 */  bne   $t2, $at, .L0040E9F0
/* 0040E9E8 00000000 */   nop   
/* 0040E9EC 26100001 */  addiu $s0, $s0, 1
.L0040E9F0:
/* 0040E9F0 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040E9F4 02002025 */  move  $a0, $s0
/* 0040E9F8 0320F809 */  jalr  $t9
/* 0040E9FC 26100001 */   addiu $s0, $s0, 1
/* 0040EA00 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040EA04 02002025 */  move  $a0, $s0
/* 0040EA08 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040EA0C 26100001 */  addiu $s0, $s0, 1
/* 0040EA10 0320F809 */  jalr  $t9
/* 0040EA14 AFA20060 */   sw    $v0, 0x60($sp)
/* 0040EA18 8FAC0060 */  lw    $t4, 0x60($sp)
/* 0040EA1C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040EA20 8D8D0000 */  lw    $t5, ($t4)
/* 0040EA24 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040EA28 AFAD0040 */  sw    $t5, 0x40($sp)
/* 0040EA2C 8C4B0000 */  lw    $t3, ($v0)
/* 0040EA30 02002025 */  move  $a0, $s0
/* 0040EA34 26100001 */  addiu $s0, $s0, 1
/* 0040EA38 0320F809 */  jalr  $t9
/* 0040EA3C AFAB003C */   sw    $t3, 0x3c($sp)
/* 0040EA40 8FAE003C */  lw    $t6, 0x3c($sp)
/* 0040EA44 8FAF0040 */  lw    $t7, 0x40($sp)
/* 0040EA48 8C590000 */  lw    $t9, ($v0)
/* 0040EA4C 01CFC023 */  subu  $t8, $t6, $t7
/* 0040EA50 27080001 */  addiu $t0, $t8, 1
/* 0040EA54 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040EA58 07210003 */  bgez  $t9, .L0040EA68
/* 0040EA5C 001948C3 */   sra   $t1, $t9, 3
/* 0040EA60 27210007 */  addiu $at, $t9, 7
/* 0040EA64 000148C3 */  sra   $t1, $at, 3
.L0040EA68:
/* 0040EA68 01090019 */  multu $t0, $t1
/* 0040EA6C 00001812 */  mflo  $v1
/* 0040EA70 00000000 */  nop   
/* 0040EA74 00000000 */  nop   
/* 0040EA78 93AA0053 */  lbu   $t2, 0x53($sp)
.L0040EA7C:
/* 0040EA7C 24010001 */  li    $at, 1
/* 0040EA80 000A6102 */  srl   $t4, $t2, 4
/* 0040EA84 15810005 */  bne   $t4, $at, .L0040EA9C
/* 0040EA88 2401FFFF */   li    $at, -1
/* 0040EA8C 146100AE */  bne   $v1, $at, .L0040ED48
/* 0040EA90 2401FFFF */   li    $at, -1
/* 0040EA94 100000AB */  b     .L0040ED44
/* 0040EA98 24030004 */   li    $v1, 4
.L0040EA9C:
/* 0040EA9C 93AD0053 */  lbu   $t5, 0x53($sp)
/* 0040EAA0 24010003 */  li    $at, 3
/* 0040EAA4 000D5902 */  srl   $t3, $t5, 4
/* 0040EAA8 1561002F */  bne   $t3, $at, .L0040EB68
/* 0040EAAC 93AF0052 */   lbu   $t7, 0x52($sp)
/* 0040EAB0 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040EAB4 02002025 */  move  $a0, $s0
/* 0040EAB8 0320F809 */  jalr  $t9
/* 0040EABC 26100001 */   addiu $s0, $s0, 1
/* 0040EAC0 8C4E0000 */  lw    $t6, ($v0)
/* 0040EAC4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040EAC8 24010FFF */  li    $at, 4095
/* 0040EACC 000E7D02 */  srl   $t7, $t6, 0x14
/* 0040EAD0 15E10002 */  bne   $t7, $at, .L0040EADC
/* 0040EAD4 00000000 */   nop   
/* 0040EAD8 26100001 */  addiu $s0, $s0, 1
.L0040EADC:
/* 0040EADC 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040EAE0 02002025 */  move  $a0, $s0
/* 0040EAE4 0320F809 */  jalr  $t9
/* 0040EAE8 26100001 */   addiu $s0, $s0, 1
/* 0040EAEC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040EAF0 02002025 */  move  $a0, $s0
/* 0040EAF4 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040EAF8 26100001 */  addiu $s0, $s0, 1
/* 0040EAFC 0320F809 */  jalr  $t9
/* 0040EB00 AFA20060 */   sw    $v0, 0x60($sp)
/* 0040EB04 8FB80060 */  lw    $t8, 0x60($sp)
/* 0040EB08 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040EB0C 8F190000 */  lw    $t9, ($t8)
/* 0040EB10 02002025 */  move  $a0, $s0
/* 0040EB14 AFB90040 */  sw    $t9, 0x40($sp)
/* 0040EB18 8C480000 */  lw    $t0, ($v0)
/* 0040EB1C 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040EB20 26100001 */  addiu $s0, $s0, 1
/* 0040EB24 0320F809 */  jalr  $t9
/* 0040EB28 AFA8003C */   sw    $t0, 0x3c($sp)
/* 0040EB2C 8FA9003C */  lw    $t1, 0x3c($sp)
/* 0040EB30 8FAA0040 */  lw    $t2, 0x40($sp)
/* 0040EB34 8C4B0000 */  lw    $t3, ($v0)
/* 0040EB38 012A6023 */  subu  $t4, $t1, $t2
/* 0040EB3C 258D0001 */  addiu $t5, $t4, 1
/* 0040EB40 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040EB44 05610003 */  bgez  $t3, .L0040EB54
/* 0040EB48 000B70C3 */   sra   $t6, $t3, 3
/* 0040EB4C 25610007 */  addiu $at, $t3, 7
/* 0040EB50 000170C3 */  sra   $t6, $at, 3
.L0040EB54:
/* 0040EB54 01AE0019 */  multu $t5, $t6
/* 0040EB58 00001812 */  mflo  $v1
/* 0040EB5C 00000000 */  nop   
/* 0040EB60 00000000 */  nop   
/* 0040EB64 93AF0052 */  lbu   $t7, 0x52($sp)
.L0040EB68:
/* 0040EB68 24010001 */  li    $at, 1
/* 0040EB6C 31F8000F */  andi  $t8, $t7, 0xf
/* 0040EB70 17010005 */  bne   $t8, $at, .L0040EB88
/* 0040EB74 2401FFFF */   li    $at, -1
/* 0040EB78 14610073 */  bne   $v1, $at, .L0040ED48
/* 0040EB7C 2401FFFF */   li    $at, -1
/* 0040EB80 10000070 */  b     .L0040ED44
/* 0040EB84 24030004 */   li    $v1, 4
.L0040EB88:
/* 0040EB88 93B90052 */  lbu   $t9, 0x52($sp)
/* 0040EB8C 24010003 */  li    $at, 3
/* 0040EB90 3328000F */  andi  $t0, $t9, 0xf
/* 0040EB94 1501002F */  bne   $t0, $at, .L0040EC54
/* 0040EB98 97AA0052 */   lhu   $t2, 0x52($sp)
/* 0040EB9C 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040EBA0 02002025 */  move  $a0, $s0
/* 0040EBA4 0320F809 */  jalr  $t9
/* 0040EBA8 26100001 */   addiu $s0, $s0, 1
/* 0040EBAC 8C490000 */  lw    $t1, ($v0)
/* 0040EBB0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040EBB4 24010FFF */  li    $at, 4095
/* 0040EBB8 00095502 */  srl   $t2, $t1, 0x14
/* 0040EBBC 15410002 */  bne   $t2, $at, .L0040EBC8
/* 0040EBC0 00000000 */   nop   
/* 0040EBC4 26100001 */  addiu $s0, $s0, 1
.L0040EBC8:
/* 0040EBC8 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040EBCC 02002025 */  move  $a0, $s0
/* 0040EBD0 0320F809 */  jalr  $t9
/* 0040EBD4 26100001 */   addiu $s0, $s0, 1
/* 0040EBD8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040EBDC 02002025 */  move  $a0, $s0
/* 0040EBE0 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040EBE4 26100001 */  addiu $s0, $s0, 1
/* 0040EBE8 0320F809 */  jalr  $t9
/* 0040EBEC AFA20060 */   sw    $v0, 0x60($sp)
/* 0040EBF0 8FAC0060 */  lw    $t4, 0x60($sp)
/* 0040EBF4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040EBF8 8D8B0000 */  lw    $t3, ($t4)
/* 0040EBFC 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040EC00 AFAB0040 */  sw    $t3, 0x40($sp)
/* 0040EC04 8C4D0000 */  lw    $t5, ($v0)
/* 0040EC08 02002025 */  move  $a0, $s0
/* 0040EC0C 26100001 */  addiu $s0, $s0, 1
/* 0040EC10 0320F809 */  jalr  $t9
/* 0040EC14 AFAD003C */   sw    $t5, 0x3c($sp)
/* 0040EC18 8FAE003C */  lw    $t6, 0x3c($sp)
/* 0040EC1C 8FAF0040 */  lw    $t7, 0x40($sp)
/* 0040EC20 8C480000 */  lw    $t0, ($v0)
/* 0040EC24 01CFC023 */  subu  $t8, $t6, $t7
/* 0040EC28 27190001 */  addiu $t9, $t8, 1
/* 0040EC2C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040EC30 05010003 */  bgez  $t0, .L0040EC40
/* 0040EC34 000848C3 */   sra   $t1, $t0, 3
/* 0040EC38 25010007 */  addiu $at, $t0, 7
/* 0040EC3C 000148C3 */  sra   $t1, $at, 3
.L0040EC40:
/* 0040EC40 03290019 */  multu $t9, $t1
/* 0040EC44 00001812 */  mflo  $v1
/* 0040EC48 00000000 */  nop   
/* 0040EC4C 00000000 */  nop   
/* 0040EC50 97AA0052 */  lhu   $t2, 0x52($sp)
.L0040EC54:
/* 0040EC54 24010001 */  li    $at, 1
/* 0040EC58 000A6302 */  srl   $t4, $t2, 0xc
/* 0040EC5C 15810005 */  bne   $t4, $at, .L0040EC74
/* 0040EC60 2401FFFF */   li    $at, -1
/* 0040EC64 14610038 */  bne   $v1, $at, .L0040ED48
/* 0040EC68 2401FFFF */   li    $at, -1
/* 0040EC6C 10000035 */  b     .L0040ED44
/* 0040EC70 24030004 */   li    $v1, 4
.L0040EC74:
/* 0040EC74 97AB0052 */  lhu   $t3, 0x52($sp)
/* 0040EC78 24010003 */  li    $at, 3
/* 0040EC7C 000B6B02 */  srl   $t5, $t3, 0xc
/* 0040EC80 15A10031 */  bne   $t5, $at, .L0040ED48
/* 0040EC84 2401FFFF */   li    $at, -1
/* 0040EC88 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040EC8C 02002025 */  move  $a0, $s0
/* 0040EC90 0320F809 */  jalr  $t9
/* 0040EC94 26100001 */   addiu $s0, $s0, 1
/* 0040EC98 8C4E0000 */  lw    $t6, ($v0)
/* 0040EC9C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040ECA0 24010FFF */  li    $at, 4095
/* 0040ECA4 000E7D02 */  srl   $t7, $t6, 0x14
/* 0040ECA8 15E10002 */  bne   $t7, $at, .L0040ECB4
/* 0040ECAC 00000000 */   nop   
/* 0040ECB0 26100001 */  addiu $s0, $s0, 1
.L0040ECB4:
/* 0040ECB4 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040ECB8 02002025 */  move  $a0, $s0
/* 0040ECBC 0320F809 */  jalr  $t9
/* 0040ECC0 26100001 */   addiu $s0, $s0, 1
/* 0040ECC4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040ECC8 02002025 */  move  $a0, $s0
/* 0040ECCC 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040ECD0 26100001 */  addiu $s0, $s0, 1
/* 0040ECD4 0320F809 */  jalr  $t9
/* 0040ECD8 AFA20060 */   sw    $v0, 0x60($sp)
/* 0040ECDC 8FB80060 */  lw    $t8, 0x60($sp)
/* 0040ECE0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040ECE4 8F080000 */  lw    $t0, ($t8)
/* 0040ECE8 02002025 */  move  $a0, $s0
/* 0040ECEC AFA80040 */  sw    $t0, 0x40($sp)
/* 0040ECF0 8C590000 */  lw    $t9, ($v0)
/* 0040ECF4 00000000 */  nop   
/* 0040ECF8 AFB9003C */  sw    $t9, 0x3c($sp)
/* 0040ECFC 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040ED00 00000000 */  nop   
/* 0040ED04 0320F809 */  jalr  $t9
/* 0040ED08 00000000 */   nop   
/* 0040ED0C 8FA9003C */  lw    $t1, 0x3c($sp)
/* 0040ED10 8FAA0040 */  lw    $t2, 0x40($sp)
/* 0040ED14 8C4D0000 */  lw    $t5, ($v0)
/* 0040ED18 012A6023 */  subu  $t4, $t1, $t2
/* 0040ED1C 258B0001 */  addiu $t3, $t4, 1
/* 0040ED20 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040ED24 05A10003 */  bgez  $t5, .L0040ED34
/* 0040ED28 000D70C3 */   sra   $t6, $t5, 3
/* 0040ED2C 25A10007 */  addiu $at, $t5, 7
/* 0040ED30 000170C3 */  sra   $t6, $at, 3
.L0040ED34:
/* 0040ED34 016E0019 */  multu $t3, $t6
/* 0040ED38 00001812 */  mflo  $v1
/* 0040ED3C 00000000 */  nop   
/* 0040ED40 00000000 */  nop   
.L0040ED44:
/* 0040ED44 2401FFFF */  li    $at, -1
.L0040ED48:
/* 0040ED48 10610004 */  beq   $v1, $at, .L0040ED5C
/* 0040ED4C 8FAF004C */   lw    $t7, 0x4c($sp)
/* 0040ED50 10000049 */  b     .L0040EE78
/* 0040ED54 00601025 */   move  $v0, $v1
/* 0040ED58 8FAF004C */  lw    $t7, 0x4c($sp)
.L0040ED5C:
/* 0040ED5C 8FAC004C */  lw    $t4, 0x4c($sp)
/* 0040ED60 15E00010 */  bnez  $t7, .L0040EDA4
/* 0040ED64 00000000 */   nop   
/* 0040ED68 93B80050 */  lbu   $t8, 0x50($sp)
/* 0040ED6C 00001825 */  move  $v1, $zero
/* 0040ED70 3308003F */  andi  $t0, $t8, 0x3f
/* 0040ED74 2D01001A */  sltiu $at, $t0, 0x1a
/* 0040ED78 10200008 */  beqz  $at, .L0040ED9C
/* 0040ED7C 00000000 */   nop   
/* 0040ED80 8F898080 */  lw    $t1, %got(D_10000270)($gp)
/* 0040ED84 0008C880 */  sll   $t9, $t0, 2
/* 0040ED88 25290270 */  addiu $t1, %lo(D_10000270) # addiu $t1, $t1, 0x270
/* 0040ED8C 03295021 */  addu  $t2, $t9, $t1
/* 0040ED90 8D420000 */  lw    $v0, ($t2)
/* 0040ED94 10000039 */  b     .L0040EE7C
/* 0040ED98 8FBF001C */   lw    $ra, 0x1c($sp)
.L0040ED9C:
/* 0040ED9C 10000036 */  b     .L0040EE78
/* 0040EDA0 00601025 */   move  $v0, $v1
.L0040EDA4:
/* 0040EDA4 15800006 */  bnez  $t4, .L0040EDC0
/* 0040EDA8 00000000 */   nop   
/* 0040EDAC 93AD0050 */  lbu   $t5, 0x50($sp)
/* 0040EDB0 24010010 */  li    $at, 16
/* 0040EDB4 31AB003F */  andi  $t3, $t5, 0x3f
/* 0040EDB8 1561002F */  bne   $t3, $at, .L0040EE78
/* 0040EDBC 00001025 */   move  $v0, $zero
.L0040EDC0:
/* 0040EDC0 8F998824 */  lw    $t9, %call16(st_currentifd)($gp)
/* 0040EDC4 00000000 */  nop   
/* 0040EDC8 0320F809 */  jalr  $t9
/* 0040EDCC 00000000 */   nop   
/* 0040EDD0 8FAE005C */  lw    $t6, 0x5c($sp)
/* 0040EDD4 AFA20038 */  sw    $v0, 0x38($sp)
/* 0040EDD8 8DC30000 */  lw    $v1, ($t6)
/* 0040EDDC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040EDE0 24010FFF */  li    $at, 4095
/* 0040EDE4 00037D02 */  srl   $t7, $v1, 0x14
/* 0040EDE8 15E10004 */  bne   $t7, $at, .L0040EDFC
/* 0040EDEC 01E01825 */   move  $v1, $t7
/* 0040EDF0 8DD00004 */  lw    $s0, 4($t6)
/* 0040EDF4 10000002 */  b     .L0040EE00
/* 0040EDF8 00000000 */   nop   
.L0040EDFC:
/* 0040EDFC 00608025 */  move  $s0, $v1
.L0040EE00:
/* 0040EE00 8F99882C */  lw    $t9, %call16(st_setfd)($gp)
/* 0040EE04 02002025 */  move  $a0, $s0
/* 0040EE08 0320F809 */  jalr  $t9
/* 0040EE0C 00000000 */   nop   
/* 0040EE10 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040EE14 02002025 */  move  $a0, $s0
/* 0040EE18 8F9986EC */  lw    $t9, %call16(st_pcfd_ifd)($gp)
/* 0040EE1C 00000000 */  nop   
/* 0040EE20 0320F809 */  jalr  $t9
/* 0040EE24 00000000 */   nop   
/* 0040EE28 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040EE2C 8FA40038 */  lw    $a0, 0x38($sp)
/* 0040EE30 8F99882C */  lw    $t9, %call16(st_setfd)($gp)
/* 0040EE34 00408025 */  move  $s0, $v0
/* 0040EE38 0320F809 */  jalr  $t9
/* 0040EE3C 00000000 */   nop   
/* 0040EE40 8FA8005C */  lw    $t0, 0x5c($sp)
/* 0040EE44 3C01000F */  lui   $at, 0xf
/* 0040EE48 8D190000 */  lw    $t9, ($t0)
/* 0040EE4C 3421FFFF */  ori   $at, $at, 0xffff
/* 0040EE50 03214824 */  and   $t1, $t9, $at
/* 0040EE54 00095080 */  sll   $t2, $t1, 2
/* 0040EE58 8E180004 */  lw    $t8, 4($s0)
/* 0040EE5C 01495023 */  subu  $t2, $t2, $t1
/* 0040EE60 000A5080 */  sll   $t2, $t2, 2
/* 0040EE64 030A6021 */  addu  $t4, $t8, $t2
/* 0040EE68 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040EE6C 8D820004 */  lw    $v0, 4($t4)
/* 0040EE70 10000002 */  b     .L0040EE7C
/* 0040EE74 8FBF001C */   lw    $ra, 0x1c($sp)
.L0040EE78:
/* 0040EE78 8FBF001C */  lw    $ra, 0x1c($sp)
.L0040EE7C:
/* 0040EE7C 8FB00014 */  lw    $s0, 0x14($sp)
/* 0040EE80 03E00008 */  jr    $ra
/* 0040EE84 27BD0068 */   addiu $sp, $sp, 0x68

    .type func_0040EE88, @function
func_0040EE88:
    # 0040F5E8 elf_write_symtable
/* 0040EE88 3C1C0FC2 */  .cpload $t9
/* 0040EE8C 279CB3D8 */  
/* 0040EE90 0399E021 */  
/* 0040EE94 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0040EE98 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0040EE9C AFBC0018 */  sw    $gp, 0x18($sp)
/* 0040EEA0 AFA40058 */  sw    $a0, 0x58($sp)
/* 0040EEA4 AFA5005C */  sw    $a1, 0x5c($sp)
/* 0040EEA8 AFA60060 */  sw    $a2, 0x60($sp)
/* 0040EEAC AFA70064 */  sw    $a3, 0x64($sp)
/* 0040EEB0 8CD9000C */  lw    $t9, 0xc($a2)
/* 0040EEB4 8CC80000 */  lw    $t0, ($a2)
/* 0040EEB8 00196E82 */  srl   $t5, $t9, 0x1a
/* 0040EEBC 2DA10021 */  sltiu $at, $t5, 0x21
/* 0040EEC0 00087880 */  sll   $t7, $t0, 2
/* 0040EEC4 00006025 */  move  $t4, $zero
/* 0040EEC8 102001B7 */  beqz  $at, .L0040F5A8
/* 0040EECC 000F47C2 */   srl   $t0, $t7, 0x1f
/* 0040EED0 8F81806C */  lw    $at, %got(jtbl_10012ED4)($gp)
/* 0040EED4 000D6880 */  sll   $t5, $t5, 2
/* 0040EED8 002D0821 */  addu  $at, $at, $t5
/* 0040EEDC 8C2D2ED4 */  lw    $t5, %lo(jtbl_10012ED4)($at)
/* 0040EEE0 00000000 */  nop   
/* 0040EEE4 01BC6821 */  addu  $t5, $t5, $gp
/* 0040EEE8 01A00008 */  jr    $t5
/* 0040EEEC 00000000 */   nop   
.L0040EEF0:
/* 0040EEF0 8FAF0064 */  lw    $t7, 0x64($sp)
/* 0040EEF4 00000000 */  nop   
/* 0040EEF8 11E001AC */  beqz  $t7, .L0040F5AC
/* 0040EEFC 8FAD0064 */   lw    $t5, 0x64($sp)
/* 0040EF00 8F838088 */  lw    $v1, %got(B_100230C4)($gp)
/* 0040EF04 8F848088 */  lw    $a0, %got(B_100230D0)($gp)
/* 0040EF08 246330C4 */  addiu $v1, %lo(B_100230C4) # addiu $v1, $v1, 0x30c4
/* 0040EF0C 248430D0 */  addiu $a0, %lo(B_100230D0) # addiu $a0, $a0, 0x30d0
/* 0040EF10 8C8B0000 */  lw    $t3, ($a0)
/* 0040EF14 8C780000 */  lw    $t8, ($v1)
/* 0040EF18 00000000 */  nop   
/* 0040EF1C AF0B0000 */  sw    $t3, ($t8)
/* 0040EF20 8C8D0000 */  lw    $t5, ($a0)
/* 0040EF24 8C6E0000 */  lw    $t6, ($v1)
/* 0040EF28 8FA60060 */  lw    $a2, 0x60($sp)
/* 0040EF2C 25AF0001 */  addiu $t7, $t5, 1
/* 0040EF30 25D90004 */  addiu $t9, $t6, 4
/* 0040EF34 AC790000 */  sw    $t9, ($v1)
/* 0040EF38 AC8F0000 */  sw    $t7, ($a0)
/* 0040EF3C 8CD8000C */  lw    $t8, 0xc($a2)
/* 0040EF40 24C60004 */  addiu $a2, $a2, 4
/* 0040EF44 00187180 */  sll   $t6, $t8, 6
/* 0040EF48 000ECEC2 */  srl   $t9, $t6, 0x1b
/* 0040EF4C 17200003 */  bnez  $t9, .L0040EF5C
/* 0040EF50 00000000 */   nop   
/* 0040EF54 100000D9 */  b     .L0040F2BC
/* 0040EF58 00005025 */   move  $t2, $zero
.L0040EF5C:
/* 0040EF5C 100000D7 */  b     .L0040F2BC
/* 0040EF60 240A0001 */   li    $t2, 1
.L0040EF64:
/* 0040EF64 8F828088 */  lw    $v0, %got(B_100230D8)($gp)
/* 0040EF68 240F0001 */  li    $t7, 1
/* 0040EF6C 244230D8 */  addiu $v0, %lo(B_100230D8) # addiu $v0, $v0, 0x30d8
/* 0040EF70 904D0000 */  lbu   $t5, ($v0)
/* 0040EF74 00000000 */  nop   
/* 0040EF78 15A0018C */  bnez  $t5, .L0040F5AC
/* 0040EF7C 8FAD0064 */   lw    $t5, 0x64($sp)
/* 0040EF80 8F988B28 */  lw     $t8, %got(sixtyfour_bit)($gp)
/* 0040EF84 A04F0000 */  sb    $t7, ($v0)
/* 0040EF88 93180000 */  lbu   $t8, ($t8)
/* 0040EF8C 8FAF0058 */  lw    $t7, 0x58($sp)
/* 0040EF90 13000024 */  beqz  $t8, .L0040F024
/* 0040EF94 00000000 */   nop   
/* 0040EF98 8F868088 */  lw    $a2, %got(B_100230C8)($gp)
/* 0040EF9C 8FB9005C */  lw    $t9, 0x5c($sp)
/* 0040EFA0 24C630C8 */  addiu $a2, %lo(B_100230C8) # addiu $a2, $a2, 0x30c8
/* 0040EFA4 8CC20000 */  lw    $v0, ($a2)
/* 0040EFA8 24180000 */  li    $t8, 0
/* 0040EFAC 00027080 */  sll   $t6, $v0, 2
/* 0040EFB0 01C27023 */  subu  $t6, $t6, $v0
/* 0040EFB4 000E70C0 */  sll   $t6, $t6, 3
/* 0040EFB8 01D91821 */  addu  $v1, $t6, $t9
/* 0040EFBC 244D0001 */  addiu $t5, $v0, 1
/* 0040EFC0 ACCD0000 */  sw    $t5, ($a2)
/* 0040EFC4 AC780008 */  sw    $t8, 8($v1)
/* 0040EFC8 24190000 */  li    $t9, 0
/* 0040EFCC 240E0000 */  li    $t6, 0
/* 0040EFD0 240F0000 */  li    $t7, 0
/* 0040EFD4 240D0004 */  li    $t5, 4
/* 0040EFD8 3418FFF1 */  li    $t8, 65521
/* 0040EFDC AC79000C */  sw    $t9, 0xc($v1)
/* 0040EFE0 AC6F0014 */  sw    $t7, 0x14($v1)
/* 0040EFE4 AC6E0010 */  sw    $t6, 0x10($v1)
/* 0040EFE8 A06D0004 */  sb    $t5, 4($v1)
/* 0040EFEC A0600005 */  sb    $zero, 5($v1)
/* 0040EFF0 A4780006 */  sh    $t8, 6($v1)
/* 0040EFF4 8FB90060 */  lw    $t9, 0x60($sp)
/* 0040EFF8 8FA50064 */  lw    $a1, 0x64($sp)
/* 0040EFFC 8F240004 */  lw    $a0, 4($t9)
/* 0040F000 8F998018 */  lw    $t9, %got(func_0040E4E4)($gp)
/* 0040F004 AFA3004C */  sw    $v1, 0x4c($sp)
/* 0040F008 2739E4E4 */  addiu $t9, %lo(func_0040E4E4) # addiu $t9, $t9, -0x1b1c
/* 0040F00C 0320F809 */  jalr  $t9
/* 0040F010 00000000 */   nop   
/* 0040F014 8FA3004C */  lw    $v1, 0x4c($sp)
/* 0040F018 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F01C 1000016D */  b     .L0040F5D4
/* 0040F020 AC620000 */   sw    $v0, ($v1)
.L0040F024:
/* 0040F024 8F868088 */  lw    $a2, %got(B_100230C8)($gp)
/* 0040F028 3419FFF1 */  li    $t9, 65521
/* 0040F02C 24C630C8 */  addiu $a2, %lo(B_100230C8) # addiu $a2, $a2, 0x30c8
/* 0040F030 8CC20000 */  lw    $v0, ($a2)
/* 0040F034 24180004 */  li    $t8, 4
/* 0040F038 00027100 */  sll   $t6, $v0, 4
/* 0040F03C 244D0001 */  addiu $t5, $v0, 1
/* 0040F040 ACCD0000 */  sw    $t5, ($a2)
/* 0040F044 01CF1821 */  addu  $v1, $t6, $t7
/* 0040F048 A479000E */  sh    $t9, 0xe($v1)
/* 0040F04C AC600004 */  sw    $zero, 4($v1)
/* 0040F050 AC600008 */  sw    $zero, 8($v1)
/* 0040F054 A078000C */  sb    $t8, 0xc($v1)
/* 0040F058 A060000D */  sb    $zero, 0xd($v1)
/* 0040F05C 8FAE0060 */  lw    $t6, 0x60($sp)
/* 0040F060 8F998018 */  lw    $t9, %got(func_0040E4E4)($gp)
/* 0040F064 8FA50064 */  lw    $a1, 0x64($sp)
/* 0040F068 8DC40004 */  lw    $a0, 4($t6)
/* 0040F06C 2739E4E4 */  addiu $t9, %lo(func_0040E4E4) # addiu $t9, $t9, -0x1b1c
/* 0040F070 0320F809 */  jalr  $t9
/* 0040F074 AFA30050 */   sw    $v1, 0x50($sp)
/* 0040F078 8FA30050 */  lw    $v1, 0x50($sp)
/* 0040F07C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F080 10000154 */  b     .L0040F5D4
/* 0040F084 AC620000 */   sw    $v0, ($v1)
.L0040F088:
/* 0040F088 240C0001 */  li    $t4, 1
.L0040F08C:
/* 0040F08C 8FAF0064 */  lw    $t7, 0x64($sp)
/* 0040F090 00000000 */  nop   
/* 0040F094 11E00010 */  beqz  $t7, .L0040F0D8
/* 0040F098 00000000 */   nop   
/* 0040F09C 8F838088 */  lw    $v1, %got(B_100230C4)($gp)
/* 0040F0A0 8F848088 */  lw    $a0, %got(B_100230D0)($gp)
/* 0040F0A4 246330C4 */  addiu $v1, %lo(B_100230C4) # addiu $v1, $v1, 0x30c4
/* 0040F0A8 248430D0 */  addiu $a0, %lo(B_100230D0) # addiu $a0, $a0, 0x30d0
/* 0040F0AC 8C8B0000 */  lw    $t3, ($a0)
/* 0040F0B0 8C6D0000 */  lw    $t5, ($v1)
/* 0040F0B4 240A0001 */  li    $t2, 1
/* 0040F0B8 ADAB0000 */  sw    $t3, ($t5)
/* 0040F0BC 8C8E0000 */  lw    $t6, ($a0)
/* 0040F0C0 8C780000 */  lw    $t8, ($v1)
/* 0040F0C4 25CF0001 */  addiu $t7, $t6, 1
/* 0040F0C8 27190004 */  addiu $t9, $t8, 4
/* 0040F0CC AC790000 */  sw    $t9, ($v1)
/* 0040F0D0 10000008 */  b     .L0040F0F4
/* 0040F0D4 AC8F0000 */   sw    $t7, ($a0)
.L0040F0D8:
/* 0040F0D8 8F868088 */  lw    $a2, %got(B_100230C8)($gp)
/* 0040F0DC 00005025 */  move  $t2, $zero
/* 0040F0E0 24C630C8 */  addiu $a2, %lo(B_100230C8) # addiu $a2, $a2, 0x30c8
/* 0040F0E4 8CCB0000 */  lw    $t3, ($a2)
/* 0040F0E8 00000000 */  nop   
/* 0040F0EC 256D0001 */  addiu $t5, $t3, 1
/* 0040F0F0 ACCD0000 */  sw    $t5, ($a2)
.L0040F0F4:
/* 0040F0F4 8FA60060 */  lw    $a2, 0x60($sp)
/* 0040F0F8 10000070 */  b     .L0040F2BC
/* 0040F0FC 24C60004 */   addiu $a2, $a2, 4
.L0040F100:
/* 0040F100 8F838088 */  lw    $v1, %got(B_100230C4)($gp)
/* 0040F104 8F848088 */  lw    $a0, %got(B_100230D0)($gp)
/* 0040F108 246330C4 */  addiu $v1, %lo(B_100230C4) # addiu $v1, $v1, 0x30c4
/* 0040F10C 248430D0 */  addiu $a0, %lo(B_100230D0) # addiu $a0, $a0, 0x30d0
/* 0040F110 8C8B0000 */  lw    $t3, ($a0)
/* 0040F114 8C780000 */  lw    $t8, ($v1)
/* 0040F118 240A0001 */  li    $t2, 1
/* 0040F11C AF0B0000 */  sw    $t3, ($t8)
/* 0040F120 8C8F0000 */  lw    $t7, ($a0)
/* 0040F124 8C790000 */  lw    $t9, ($v1)
/* 0040F128 8FA60060 */  lw    $a2, 0x60($sp)
/* 0040F12C 25ED0001 */  addiu $t5, $t7, 1
/* 0040F130 272E0004 */  addiu $t6, $t9, 4
/* 0040F134 AC6E0000 */  sw    $t6, ($v1)
/* 0040F138 AC8D0000 */  sw    $t5, ($a0)
/* 0040F13C 240C0001 */  li    $t4, 1
/* 0040F140 1000005E */  b     .L0040F2BC
/* 0040F144 24C60004 */   addiu $a2, $a2, 4
.L0040F148:
/* 0040F148 8FB80064 */  lw    $t8, 0x64($sp)
/* 0040F14C 00000000 */  nop   
/* 0040F150 17000011 */  bnez  $t8, .L0040F198
/* 0040F154 00000000 */   nop   
/* 0040F158 8FB90060 */  lw    $t9, 0x60($sp)
/* 0040F15C 3C01000F */  lui   $at, 0xf
/* 0040F160 8F24000C */  lw    $a0, 0xc($t9)
/* 0040F164 3421FFFF */  ori   $at, $at, 0xffff
/* 0040F168 00817024 */  and   $t6, $a0, $at
/* 0040F16C 11C1010E */  beq   $t6, $at, .L0040F5A8
/* 0040F170 01C02025 */   move  $a0, $t6
/* 0040F174 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040F178 00000000 */  nop   
/* 0040F17C 0320F809 */  jalr  $t9
/* 0040F180 00000000 */   nop   
/* 0040F184 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F188 8C4F0000 */  lw    $t7, ($v0)
/* 0040F18C 8F818088 */  lw    $at, %got(B_100230DC)($gp)
/* 0040F190 10000105 */  b     .L0040F5A8
/* 0040F194 AC2F30DC */   sw    $t7, %lo(B_100230DC)($at)
.L0040F198:
/* 0040F198 8F838088 */  lw    $v1, %got(B_100230C4)($gp)
/* 0040F19C 8F848088 */  lw    $a0, %got(B_100230D0)($gp)
/* 0040F1A0 246330C4 */  addiu $v1, %lo(B_100230C4) # addiu $v1, $v1, 0x30c4
/* 0040F1A4 248430D0 */  addiu $a0, %lo(B_100230D0) # addiu $a0, $a0, 0x30d0
/* 0040F1A8 8C8B0000 */  lw    $t3, ($a0)
/* 0040F1AC 8C6D0000 */  lw    $t5, ($v1)
/* 0040F1B0 240C0002 */  li    $t4, 2
/* 0040F1B4 ADAB0000 */  sw    $t3, ($t5)
/* 0040F1B8 8C8E0000 */  lw    $t6, ($a0)
/* 0040F1BC 8C780000 */  lw    $t8, ($v1)
/* 0040F1C0 8FA60060 */  lw    $a2, 0x60($sp)
/* 0040F1C4 25CF0001 */  addiu $t7, $t6, 1
/* 0040F1C8 27190004 */  addiu $t9, $t8, 4
/* 0040F1CC AC790000 */  sw    $t9, ($v1)
/* 0040F1D0 AC8F0000 */  sw    $t7, ($a0)
/* 0040F1D4 240A0001 */  li    $t2, 1
/* 0040F1D8 10000038 */  b     .L0040F2BC
/* 0040F1DC 24C60004 */   addiu $a2, $a2, 4
.L0040F1E0:
/* 0040F1E0 8F838088 */  lw    $v1, %got(B_100230C4)($gp)
/* 0040F1E4 8F848088 */  lw    $a0, %got(B_100230D0)($gp)
/* 0040F1E8 246330C4 */  addiu $v1, %lo(B_100230C4) # addiu $v1, $v1, 0x30c4
/* 0040F1EC 248430D0 */  addiu $a0, %lo(B_100230D0) # addiu $a0, $a0, 0x30d0
/* 0040F1F0 8C8B0000 */  lw    $t3, ($a0)
/* 0040F1F4 8C6D0000 */  lw    $t5, ($v1)
/* 0040F1F8 240A0001 */  li    $t2, 1
/* 0040F1FC ADAB0000 */  sw    $t3, ($t5)
/* 0040F200 8C8E0000 */  lw    $t6, ($a0)
/* 0040F204 8C780000 */  lw    $t8, ($v1)
/* 0040F208 8FA60060 */  lw    $a2, 0x60($sp)
/* 0040F20C 25CF0001 */  addiu $t7, $t6, 1
/* 0040F210 27190004 */  addiu $t9, $t8, 4
/* 0040F214 AC790000 */  sw    $t9, ($v1)
/* 0040F218 AC8F0000 */  sw    $t7, ($a0)
/* 0040F21C 240C0001 */  li    $t4, 1
/* 0040F220 10000026 */  b     .L0040F2BC
/* 0040F224 24C60004 */   addiu $a2, $a2, 4
.L0040F228:
/* 0040F228 8FAD0064 */  lw    $t5, 0x64($sp)
/* 0040F22C 00000000 */  nop   
/* 0040F230 15A00011 */  bnez  $t5, .L0040F278
/* 0040F234 00000000 */   nop   
/* 0040F238 8FB80060 */  lw    $t8, 0x60($sp)
/* 0040F23C 3C01000F */  lui   $at, 0xf
/* 0040F240 8F04000C */  lw    $a0, 0xc($t8)
/* 0040F244 3421FFFF */  ori   $at, $at, 0xffff
/* 0040F248 0081C824 */  and   $t9, $a0, $at
/* 0040F24C 132100D6 */  beq   $t9, $at, .L0040F5A8
/* 0040F250 03202025 */   move  $a0, $t9
/* 0040F254 8F9986F4 */  lw    $t9, %call16(st_paux_iaux)($gp)
/* 0040F258 00000000 */  nop   
/* 0040F25C 0320F809 */  jalr  $t9
/* 0040F260 00000000 */   nop   
/* 0040F264 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F268 8C4E0000 */  lw    $t6, ($v0)
/* 0040F26C 8F818088 */  lw    $at, %got(B_100230DC)($gp)
/* 0040F270 100000CD */  b     .L0040F5A8
/* 0040F274 AC2E30DC */   sw    $t6, %lo(B_100230DC)($at)
.L0040F278:
/* 0040F278 8F838088 */  lw    $v1, %got(B_100230C4)($gp)
/* 0040F27C 8F848088 */  lw    $a0, %got(B_100230D0)($gp)
/* 0040F280 246330C4 */  addiu $v1, %lo(B_100230C4) # addiu $v1, $v1, 0x30c4
/* 0040F284 248430D0 */  addiu $a0, %lo(B_100230D0) # addiu $a0, $a0, 0x30d0
/* 0040F288 8C8B0000 */  lw    $t3, ($a0)
/* 0040F28C 8C6F0000 */  lw    $t7, ($v1)
/* 0040F290 240C0002 */  li    $t4, 2
/* 0040F294 ADEB0000 */  sw    $t3, ($t7)
/* 0040F298 8C990000 */  lw    $t9, ($a0)
/* 0040F29C 8C6D0000 */  lw    $t5, ($v1)
/* 0040F2A0 8FA60060 */  lw    $a2, 0x60($sp)
/* 0040F2A4 272E0001 */  addiu $t6, $t9, 1
/* 0040F2A8 25B80004 */  addiu $t8, $t5, 4
/* 0040F2AC AC780000 */  sw    $t8, ($v1)
/* 0040F2B0 AC8E0000 */  sw    $t6, ($a0)
/* 0040F2B4 240A0001 */  li    $t2, 1
/* 0040F2B8 24C60004 */  addiu $a2, $a2, 4
.L0040F2BC:
/* 0040F2BC 11000002 */  beqz  $t0, .L0040F2C8
/* 0040F2C0 00000000 */   nop   
/* 0040F2C4 240A0002 */  li    $t2, 2
.L0040F2C8:
/* 0040F2C8 8CC80004 */  lw    $t0, 4($a2)
/* 0040F2CC 8F998018 */  lw    $t9, %got(func_0040E554)($gp)
/* 0040F2D0 8FA40060 */  lw    $a0, 0x60($sp)
/* 0040F2D4 2739E554 */  addiu $t9, %lo(func_0040E554) # addiu $t9, $t9, -0x1aac
/* 0040F2D8 AFAC0044 */  sw    $t4, 0x44($sp)
/* 0040F2DC AFAB0040 */  sw    $t3, 0x40($sp)
/* 0040F2E0 AFAA0048 */  sw    $t2, 0x48($sp)
/* 0040F2E4 AFA60020 */  sw    $a2, 0x20($sp)
/* 0040F2E8 0320F809 */  jalr  $t9
/* 0040F2EC AFA80030 */   sw    $t0, 0x30($sp)
/* 0040F2F0 8FA60020 */  lw    $a2, 0x20($sp)
/* 0040F2F4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F2F8 8CC30008 */  lw    $v1, 8($a2)
/* 0040F2FC 8FA80030 */  lw    $t0, 0x30($sp)
/* 0040F300 00037980 */  sll   $t7, $v1, 6
/* 0040F304 000F6EC2 */  srl   $t5, $t7, 0x1b
/* 0040F308 8FAA0048 */  lw    $t2, 0x48($sp)
/* 0040F30C 8FAB0040 */  lw    $t3, 0x40($sp)
/* 0040F310 8FAC0044 */  lw    $t4, 0x44($sp)
/* 0040F314 2DA10017 */  sltiu $at, $t5, 0x17
/* 0040F318 00404825 */  move  $t1, $v0
/* 0040F31C 3407FFF1 */  li    $a3, 65521
/* 0040F320 1020002F */  beqz  $at, .L0040F3E0
/* 0040F324 01A01825 */   move  $v1, $t5
/* 0040F328 8F81806C */  lw    $at, %got(jtbl_10012F58)($gp)
/* 0040F32C 000DC080 */  sll   $t8, $t5, 2
/* 0040F330 00380821 */  addu  $at, $at, $t8
/* 0040F334 8C382F58 */  lw    $t8, %lo(jtbl_10012F58)($at)
/* 0040F338 00000000 */  nop   
/* 0040F33C 031CC021 */  addu  $t8, $t8, $gp
/* 0040F340 03000008 */  jr    $t8
/* 0040F344 00000000 */   nop   
.L0040F348:
/* 0040F348 00006025 */  move  $t4, $zero
.L0040F34C:
/* 0040F34C 8CC90004 */  lw    $t1, 4($a2)
/* 0040F350 00003825 */  move  $a3, $zero
/* 0040F354 10000022 */  b     .L0040F3E0
/* 0040F358 00004025 */   move  $t0, $zero
.L0040F35C:
/* 0040F35C 8CC90004 */  lw    $t1, 4($a2)
/* 0040F360 3407FF04 */  li    $a3, 65284
/* 0040F364 1000001E */  b     .L0040F3E0
/* 0040F368 00004025 */   move  $t0, $zero
.L0040F36C:
/* 0040F36C 8CC90004 */  lw    $t1, 4($a2)
/* 0040F370 1000001B */  b     .L0040F3E0
/* 0040F374 3407FF03 */   li    $a3, 65283
.L0040F378:
/* 0040F378 8CC90004 */  lw    $t1, 4($a2)
/* 0040F37C 10000018 */  b     .L0040F3E0
/* 0040F380 3407FFF2 */   li    $a3, 65522
.L0040F384:
/* 0040F384 8F998018 */  lw    $t9, %got(func_0040E494)($gp)
/* 0040F388 00602025 */  move  $a0, $v1
/* 0040F38C 2739E494 */  addiu $t9, %lo(func_0040E494) # addiu $t9, $t9, -0x1b6c
/* 0040F390 AFA60020 */  sw    $a2, 0x20($sp)
/* 0040F394 AFA80030 */  sw    $t0, 0x30($sp)
/* 0040F398 AFA90038 */  sw    $t1, 0x38($sp)
/* 0040F39C AFAA0048 */  sw    $t2, 0x48($sp)
/* 0040F3A0 AFAB0040 */  sw    $t3, 0x40($sp)
/* 0040F3A4 0320F809 */  jalr  $t9
/* 0040F3A8 AFAC0044 */   sw    $t4, 0x44($sp)
/* 0040F3AC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F3B0 8FA60020 */  lw    $a2, 0x20($sp)
/* 0040F3B4 8FA80030 */  lw    $t0, 0x30($sp)
/* 0040F3B8 8FA90038 */  lw    $t1, 0x38($sp)
/* 0040F3BC 8FAA0048 */  lw    $t2, 0x48($sp)
/* 0040F3C0 8FAB0040 */  lw    $t3, 0x40($sp)
/* 0040F3C4 8FAC0044 */  lw    $t4, 0x44($sp)
/* 0040F3C8 3059FFFF */  andi  $t9, $v0, 0xffff
/* 0040F3CC 2401FFFF */  li    $at, -1
/* 0040F3D0 17210003 */  bne   $t9, $at, .L0040F3E0
/* 0040F3D4 3047FFFF */   andi  $a3, $v0, 0xffff
/* 0040F3D8 1000007F */  b     .L0040F5D8
/* 0040F3DC 2402FFFF */   li    $v0, -1
.L0040F3E0:
/* 0040F3E0 3401FFF2 */  li    $at, 65522
/* 0040F3E4 14E1000A */  bne   $a3, $at, .L0040F410
/* 0040F3E8 2D010004 */   sltiu $at, $t0, 4
/* 0040F3EC 10200003 */  beqz  $at, .L0040F3FC
/* 0040F3F0 01004825 */   move  $t1, $t0
/* 0040F3F4 10000006 */  b     .L0040F410
/* 0040F3F8 24080002 */   li    $t0, 2
.L0040F3FC:
/* 0040F3FC 2D010008 */  sltiu $at, $t0, 8
/* 0040F400 10200003 */  beqz  $at, .L0040F410
/* 0040F404 24080008 */   li    $t0, 8
/* 0040F408 10000001 */  b     .L0040F410
/* 0040F40C 24080004 */   li    $t0, 4
.L0040F410:
/* 0040F410 8CC40000 */  lw    $a0, ($a2)
/* 0040F414 8F998814 */  lw    $t9, %call16(st_str_extiss)($gp)
/* 0040F418 AFAC0044 */  sw    $t4, 0x44($sp)
/* 0040F41C AFAB0040 */  sw    $t3, 0x40($sp)
/* 0040F420 AFAA0048 */  sw    $t2, 0x48($sp)
/* 0040F424 AFA90038 */  sw    $t1, 0x38($sp)
/* 0040F428 AFA80030 */  sw    $t0, 0x30($sp)
/* 0040F42C A7A7002E */  sh    $a3, 0x2e($sp)
/* 0040F430 0320F809 */  jalr  $t9
/* 0040F434 AFA60020 */   sw    $a2, 0x20($sp)
/* 0040F438 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F43C 00402025 */  move  $a0, $v0
/* 0040F440 8F998440 */  lw    $t9, %call16(get_length)($gp)
/* 0040F444 00000000 */  nop   
/* 0040F448 0320F809 */  jalr  $t9
/* 0040F44C 00000000 */   nop   
/* 0040F450 8FA90038 */  lw    $t1, 0x38($sp)
/* 0040F454 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F458 8FA60020 */  lw    $a2, 0x20($sp)
/* 0040F45C 97A7002E */  lhu   $a3, 0x2e($sp)
/* 0040F460 8FA80030 */  lw    $t0, 0x30($sp)
/* 0040F464 8FAA0048 */  lw    $t2, 0x48($sp)
/* 0040F468 8FAB0040 */  lw    $t3, 0x40($sp)
/* 0040F46C 8FAC0044 */  lw    $t4, 0x44($sp)
/* 0040F470 0122082B */  sltu  $at, $t1, $v0
/* 0040F474 10200002 */  beqz  $at, .L0040F480
/* 0040F478 00000000 */   nop   
/* 0040F47C 00404825 */  move  $t1, $v0
.L0040F480:
/* 0040F480 8F8E8B28 */  lw     $t6, %got(sixtyfour_bit)($gp)
/* 0040F484 8FA50064 */  lw    $a1, 0x64($sp)
/* 0040F488 91CE0000 */  lbu   $t6, ($t6)
/* 0040F48C 00000000 */  nop   
/* 0040F490 11C00027 */  beqz  $t6, .L0040F530
/* 0040F494 00000000 */   nop   
/* 0040F498 8CC40000 */  lw    $a0, ($a2)
/* 0040F49C 8F998018 */  lw    $t9, %got(func_0040E4E4)($gp)
/* 0040F4A0 8FA50064 */  lw    $a1, 0x64($sp)
/* 0040F4A4 2739E4E4 */  addiu $t9, %lo(func_0040E4E4) # addiu $t9, $t9, -0x1b1c
/* 0040F4A8 AFAC0044 */  sw    $t4, 0x44($sp)
/* 0040F4AC AFAB0040 */  sw    $t3, 0x40($sp)
/* 0040F4B0 AFAA0048 */  sw    $t2, 0x48($sp)
/* 0040F4B4 AFA90038 */  sw    $t1, 0x38($sp)
/* 0040F4B8 AFA80030 */  sw    $t0, 0x30($sp)
/* 0040F4BC 0320F809 */  jalr  $t9
/* 0040F4C0 A7A7002E */   sh    $a3, 0x2e($sp)
/* 0040F4C4 8FAB0040 */  lw    $t3, 0x40($sp)
/* 0040F4C8 8FA80030 */  lw    $t0, 0x30($sp)
/* 0040F4CC 000B7880 */  sll   $t7, $t3, 2
/* 0040F4D0 8FAA0048 */  lw    $t2, 0x48($sp)
/* 0040F4D4 8FAC0044 */  lw    $t4, 0x44($sp)
/* 0040F4D8 8FAD005C */  lw    $t5, 0x5c($sp)
/* 0040F4DC 01EB7823 */  subu  $t7, $t7, $t3
/* 0040F4E0 97A7002E */  lhu   $a3, 0x2e($sp)
/* 0040F4E4 8FA90038 */  lw    $t1, 0x38($sp)
/* 0040F4E8 000F78C0 */  sll   $t7, $t7, 3
/* 0040F4EC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F4F0 01ED1821 */  addu  $v1, $t7, $t5
/* 0040F4F4 000AC100 */  sll   $t8, $t2, 4
/* 0040F4F8 3199000F */  andi  $t9, $t4, 0xf
/* 0040F4FC 03197021 */  addu  $t6, $t8, $t9
/* 0040F500 A06E0004 */  sb    $t6, 4($v1)
/* 0040F504 24180000 */  li    $t8, 0
/* 0040F508 240E0000 */  li    $t6, 0
/* 0040F50C AC620000 */  sw    $v0, ($v1)
/* 0040F510 AC780008 */  sw    $t8, 8($v1)
/* 0040F514 AC6E0010 */  sw    $t6, 0x10($v1)
/* 0040F518 A0600005 */  sb    $zero, 5($v1)
/* 0040F51C 0100C825 */  move  $t9, $t0
/* 0040F520 AC68000C */  sw    $t0, 0xc($v1)
/* 0040F524 A4670006 */  sh    $a3, 6($v1)
/* 0040F528 1000002A */  b     .L0040F5D4
/* 0040F52C AC690014 */   sw    $t1, 0x14($v1)
.L0040F530:
/* 0040F530 8CC40000 */  lw    $a0, ($a2)
/* 0040F534 8F998018 */  lw    $t9, %got(func_0040E4E4)($gp)
/* 0040F538 AFAC0044 */  sw    $t4, 0x44($sp)
/* 0040F53C 2739E4E4 */  addiu $t9, %lo(func_0040E4E4) # addiu $t9, $t9, -0x1b1c
/* 0040F540 AFAB0040 */  sw    $t3, 0x40($sp)
/* 0040F544 AFAA0048 */  sw    $t2, 0x48($sp)
/* 0040F548 AFA90038 */  sw    $t1, 0x38($sp)
/* 0040F54C AFA80030 */  sw    $t0, 0x30($sp)
/* 0040F550 0320F809 */  jalr  $t9
/* 0040F554 A7A7002E */   sh    $a3, 0x2e($sp)
/* 0040F558 8FAB0040 */  lw    $t3, 0x40($sp)
/* 0040F55C 8FAA0048 */  lw    $t2, 0x48($sp)
/* 0040F560 8FAC0044 */  lw    $t4, 0x44($sp)
/* 0040F564 8FB80058 */  lw    $t8, 0x58($sp)
/* 0040F568 97A7002E */  lhu   $a3, 0x2e($sp)
/* 0040F56C 8FA80030 */  lw    $t0, 0x30($sp)
/* 0040F570 8FA90038 */  lw    $t1, 0x38($sp)
/* 0040F574 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040F578 000B6900 */  sll   $t5, $t3, 4
/* 0040F57C 01B81821 */  addu  $v1, $t5, $t8
/* 0040F580 000AC900 */  sll   $t9, $t2, 4
/* 0040F584 318E000F */  andi  $t6, $t4, 0xf
/* 0040F588 032E7821 */  addu  $t7, $t9, $t6
/* 0040F58C AC620000 */  sw    $v0, ($v1)
/* 0040F590 A06F000C */  sb    $t7, 0xc($v1)
/* 0040F594 A060000D */  sb    $zero, 0xd($v1)
/* 0040F598 A467000E */  sh    $a3, 0xe($v1)
/* 0040F59C AC680004 */  sw    $t0, 4($v1)
/* 0040F5A0 1000000C */  b     .L0040F5D4
/* 0040F5A4 AC690008 */   sw    $t1, 8($v1)
.L0040F5A8:
/* 0040F5A8 8FAD0064 */  lw    $t5, 0x64($sp)
.L0040F5AC:
/* 0040F5AC 00000000 */  nop   
/* 0040F5B0 11A00009 */  beqz  $t5, .L0040F5D8
/* 0040F5B4 00001025 */   move  $v0, $zero
/* 0040F5B8 8F838088 */  lw    $v1, %got(B_100230C4)($gp)
/* 0040F5BC 00000000 */  nop   
/* 0040F5C0 246330C4 */  addiu $v1, %lo(B_100230C4) # addiu $v1, $v1, 0x30c4
/* 0040F5C4 8C780000 */  lw    $t8, ($v1)
/* 0040F5C8 00000000 */  nop   
/* 0040F5CC 27190004 */  addiu $t9, $t8, 4
/* 0040F5D0 AC790000 */  sw    $t9, ($v1)
.L0040F5D4:
/* 0040F5D4 00001025 */  move  $v0, $zero
.L0040F5D8:
/* 0040F5D8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0040F5DC 27BD0058 */  addiu $sp, $sp, 0x58
/* 0040F5E0 03E00008 */  jr    $ra
/* 0040F5E4 00000000 */   nop   

glabel elf_write_symtable
    .ent elf_write_symtable
    # 0043ECB8 wrelfobj
/* 0040F5E8 3C1C0FC2 */  .cpload $t9
/* 0040F5EC 279CAC78 */  
/* 0040F5F0 0399E021 */  
/* 0040F5F4 27BDFE88 */  addiu $sp, $sp, -0x178
/* 0040F5F8 8F828B24 */  lw     $v0, %got(st_pchdr)($gp)
/* 0040F5FC AFB20024 */  sw    $s2, 0x24($sp)
/* 0040F600 8C420000 */  lw    $v0, ($v0)
/* 0040F604 8F928088 */  lw    $s2, %got(B_100230CC)($gp)
/* 0040F608 8F868088 */  lw    $a2, %got(B_100230D0)($gp)
/* 0040F60C AFBF0044 */  sw    $ra, 0x44($sp)
/* 0040F610 AFBE0040 */  sw    $fp, 0x40($sp)
/* 0040F614 AFBC003C */  sw    $gp, 0x3c($sp)
/* 0040F618 AFB70038 */  sw    $s7, 0x38($sp)
/* 0040F61C AFB60034 */  sw    $s6, 0x34($sp)
/* 0040F620 AFB50030 */  sw    $s5, 0x30($sp)
/* 0040F624 AFB4002C */  sw    $s4, 0x2c($sp)
/* 0040F628 AFB30028 */  sw    $s3, 0x28($sp)
/* 0040F62C AFB10020 */  sw    $s1, 0x20($sp)
/* 0040F630 AFB0001C */  sw    $s0, 0x1c($sp)
/* 0040F634 AFA40178 */  sw    $a0, 0x178($sp)
/* 0040F638 3085FFFF */  andi  $a1, $a0, 0xffff
/* 0040F63C 27AE0104 */  addiu $t6, $sp, 0x104
/* 0040F640 00404825 */  move  $t1, $v0
/* 0040F644 24590060 */  addiu $t9, $v0, 0x60
/* 0040F648 265230CC */  addiu $s2, %lo(B_100230CC) # addiu $s2, $s2, 0x30cc
/* 0040F64C 24C630D0 */  addiu $a2, %lo(B_100230D0) # addiu $a2, $a2, 0x30d0
.L0040F650:
/* 0040F650 8D21005C */  lw    $at, 0x5c($t1)
/* 0040F654 2529000C */  addiu $t1, $t1, 0xc
/* 0040F658 ADC10000 */  sw    $at, ($t6)
/* 0040F65C 8D210054 */  lw    $at, 0x54($t1)
/* 0040F660 25CE000C */  addiu $t6, $t6, 0xc
/* 0040F664 ADC1FFF8 */  sw    $at, -8($t6)
/* 0040F668 8D210058 */  lw    $at, 0x58($t1)
/* 0040F66C 1539FFF8 */  bne   $t1, $t9, .L0040F650
/* 0040F670 ADC1FFFC */   sw    $at, -4($t6)
/* 0040F674 8F8A8080 */  lw    $t2, %got(D_1000026C)($gp)
/* 0040F678 8FAB0124 */  lw    $t3, 0x124($sp)
/* 0040F67C 8D4A026C */  lw    $t2, %lo(D_1000026C)($t2)
/* 0040F680 8C5E001C */  lw    $fp, 0x1c($v0)
/* 0040F684 8F818088 */  lw    $at, %got(B_100230B0)($gp)
/* 0040F688 8FB90124 */  lw    $t9, 0x124($sp)
/* 0040F68C 014B6021 */  addu  $t4, $t2, $t3
/* 0040F690 019E6821 */  addu  $t5, $t4, $fp
/* 0040F694 01A5C021 */  addu  $t8, $t5, $a1
/* 0040F698 AC3E30B0 */  sw    $fp, %lo(B_100230B0)($at)
/* 0040F69C 00B94821 */  addu  $t1, $a1, $t9
/* 0040F6A0 270F0003 */  addiu $t7, $t8, 3
/* 0040F6A4 252E0003 */  addiu $t6, $t1, 3
/* 0040F6A8 AE4F0000 */  sw    $t7, ($s2)
/* 0040F6AC ACCE0000 */  sw    $t6, ($a2)
/* 0040F6B0 8F818088 */  lw    $at, %got(B_100230D4)($gp)
/* 0040F6B4 8F998190 */  lw    $t9, %call16(malloc)($gp)
/* 0040F6B8 001E8080 */  sll   $s0, $fp, 2
/* 0040F6BC 00A08825 */  move  $s1, $a1
/* 0040F6C0 02002025 */  move  $a0, $s0
/* 0040F6C4 0320F809 */  jalr  $t9
/* 0040F6C8 AC2E30D4 */   sw    $t6, %lo(B_100230D4)($at)
/* 0040F6CC 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040F6D0 00403825 */  move  $a3, $v0
/* 0040F6D4 8F838088 */  lw    $v1, %got(B_100230B4)($gp)
/* 0040F6D8 00000000 */  nop   
/* 0040F6DC 246330B4 */  addiu $v1, %lo(B_100230B4) # addiu $v1, $v1, 0x30b4
/* 0040F6E0 14400003 */  bnez  $v0, .L0040F6F0
/* 0040F6E4 AC620000 */   sw    $v0, ($v1)
/* 0040F6E8 100001FD */  b     .L0040FEE0
/* 0040F6EC 2402FFFF */   li    $v0, -1
.L0040F6F0:
/* 0040F6F0 8F968088 */  lw    $s6, %got(B_100230C4)($gp)
/* 0040F6F4 00E02025 */  move  $a0, $a3
/* 0040F6F8 26D630C4 */  addiu $s6, %lo(B_100230C4) # addiu $s6, $s6, 0x30c4
/* 0040F6FC AEC70000 */  sw    $a3, ($s6)
/* 0040F700 8F998180 */  lw    $t9, %call16(memset)($gp)
/* 0040F704 00002825 */  move  $a1, $zero
/* 0040F708 0320F809 */  jalr  $t9
/* 0040F70C 02003025 */   move  $a2, $s0
/* 0040F710 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040F714 00000000 */  nop   
/* 0040F718 8F8B8B28 */  lw     $t3, %got(sixtyfour_bit)($gp)
/* 0040F71C 00000000 */  nop   
/* 0040F720 916B0000 */  lbu   $t3, ($t3)
/* 0040F724 00000000 */  nop   
/* 0040F728 1160000C */  beqz  $t3, .L0040F75C
/* 0040F72C 00000000 */   nop   
/* 0040F730 8E440000 */  lw    $a0, ($s2)
/* 0040F734 8F998190 */  lw    $t9, %call16(malloc)($gp)
/* 0040F738 00046080 */  sll   $t4, $a0, 2
/* 0040F73C 01846023 */  subu  $t4, $t4, $a0
/* 0040F740 0320F809 */  jalr  $t9
/* 0040F744 000C20C0 */   sll   $a0, $t4, 3
/* 0040F748 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040F74C 1440000D */  bnez  $v0, .L0040F784
/* 0040F750 AFA200A0 */   sw    $v0, 0xa0($sp)
/* 0040F754 100001E2 */  b     .L0040FEE0
/* 0040F758 2402FFFF */   li    $v0, -1
.L0040F75C:
/* 0040F75C 8E440000 */  lw    $a0, ($s2)
/* 0040F760 8F998190 */  lw    $t9, %call16(malloc)($gp)
/* 0040F764 00046900 */  sll   $t5, $a0, 4
/* 0040F768 0320F809 */  jalr  $t9
/* 0040F76C 01A02025 */   move  $a0, $t5
/* 0040F770 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040F774 14400003 */  bnez  $v0, .L0040F784
/* 0040F778 AFA200A4 */   sw    $v0, 0xa4($sp)
/* 0040F77C 100001D8 */  b     .L0040FEE0
/* 0040F780 2402FFFF */   li    $v0, -1
.L0040F784:
/* 0040F784 8F998018 */  lw    $t9, %got(func_0040E280)($gp)
/* 0040F788 02202025 */  move  $a0, $s1
/* 0040F78C 2739E280 */  addiu $t9, %lo(func_0040E280) # addiu $t9, $t9, -0x1d80
/* 0040F790 0320F809 */  jalr  $t9
/* 0040F794 00000000 */   nop   
/* 0040F798 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040F79C 24180001 */  li    $t8, 1
/* 0040F7A0 8F978088 */  lw    $s7, %got(B_100230C8)($gp)
/* 0040F7A4 8F8F8B28 */  lw     $t7, %got(sixtyfour_bit)($gp)
/* 0040F7A8 26F730C8 */  addiu $s7, %lo(B_100230C8) # addiu $s7, $s7, 0x30c8
/* 0040F7AC AEF80000 */  sw    $t8, ($s7)
/* 0040F7B0 91EF0000 */  lbu   $t7, ($t7)
/* 0040F7B4 26350004 */  addiu $s5, $s1, 4
/* 0040F7B8 11E00010 */  beqz  $t7, .L0040F7FC
/* 0040F7BC 2AA10005 */   slti  $at, $s5, 5
/* 0040F7C0 8FA200A0 */  lw    $v0, 0xa0($sp)
/* 0040F7C4 240E0000 */  li    $t6, 0
/* 0040F7C8 AFA20168 */  sw    $v0, 0x168($sp)
/* 0040F7CC 240F0000 */  li    $t7, 0
/* 0040F7D0 240A0000 */  li    $t2, 0
/* 0040F7D4 240B0000 */  li    $t3, 0
/* 0040F7D8 AC400000 */  sw    $zero, ($v0)
/* 0040F7DC AC4F000C */  sw    $t7, 0xc($v0)
/* 0040F7E0 AC4E0008 */  sw    $t6, 8($v0)
/* 0040F7E4 AC4B0014 */  sw    $t3, 0x14($v0)
/* 0040F7E8 AC4A0010 */  sw    $t2, 0x10($v0)
/* 0040F7EC A0400004 */  sb    $zero, 4($v0)
/* 0040F7F0 A0400005 */  sb    $zero, 5($v0)
/* 0040F7F4 1000000A */  b     .L0040F820
/* 0040F7F8 A4400006 */   sh    $zero, 6($v0)
.L0040F7FC:
/* 0040F7FC 8FA300A4 */  lw    $v1, 0xa4($sp)
/* 0040F800 00000000 */  nop   
/* 0040F804 AFA3016C */  sw    $v1, 0x16c($sp)
/* 0040F808 AC600000 */  sw    $zero, ($v1)
/* 0040F80C AC600004 */  sw    $zero, 4($v1)
/* 0040F810 AC600008 */  sw    $zero, 8($v1)
/* 0040F814 A060000C */  sb    $zero, 0xc($v1)
/* 0040F818 A060000D */  sb    $zero, 0xd($v1)
/* 0040F81C A460000E */  sh    $zero, 0xe($v1)
.L0040F820:
/* 0040F820 14200078 */  bnez  $at, .L0040FA04
/* 0040F824 24130004 */   li    $s3, 4
/* 0040F828 8F928080 */  lw    $s2, %got(D_10000168)($gp)
/* 0040F82C 00000000 */  nop   
/* 0040F830 26520168 */  addiu $s2, %lo(D_10000168) # addiu $s2, $s2, 0x168
.L0040F834:
/* 0040F834 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 0040F838 8F99875C */  lw    $t9, %call16(elf_getscn)($gp)
/* 0040F83C 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 0040F840 0320F809 */  jalr  $t9
/* 0040F844 02602825 */   move  $a1, $s3
/* 0040F848 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040F84C 14400003 */  bnez  $v0, .L0040F85C
/* 0040F850 0040A025 */   move  $s4, $v0
/* 0040F854 100001A2 */  b     .L0040FEE0
/* 0040F858 2402FFFF */   li    $v0, -1
.L0040F85C:
/* 0040F85C 8F998018 */  lw    $t9, %got(func_0040E1A8)($gp)
/* 0040F860 02802025 */  move  $a0, $s4
/* 0040F864 2739E1A8 */  addiu $t9, %lo(func_0040E1A8) # addiu $t9, $t9, -0x1e58
/* 0040F868 0320F809 */  jalr  $t9
/* 0040F86C 00000000 */   nop   
/* 0040F870 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040F874 14400003 */  bnez  $v0, .L0040F884
/* 0040F878 00408825 */   move  $s1, $v0
/* 0040F87C 10000198 */  b     .L0040FEE0
/* 0040F880 2402FFFF */   li    $v0, -1
.L0040F884:
/* 0040F884 8F908080 */  lw    $s0, %got(D_10000098)($gp)
/* 0040F888 00000000 */  nop   
/* 0040F88C 26100098 */  addiu $s0, %lo(D_10000098) # addiu $s0, $s0, 0x98
.L0040F890:
/* 0040F890 8F998118 */  lw    $t9, %call16(strcmp)($gp)
/* 0040F894 8E040000 */  lw    $a0, ($s0)
/* 0040F898 0320F809 */  jalr  $t9
/* 0040F89C 02202825 */   move  $a1, $s1
/* 0040F8A0 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040F8A4 10400004 */  beqz  $v0, .L0040F8B8
/* 0040F8A8 00000000 */   nop   
/* 0040F8AC 26100010 */  addiu $s0, $s0, 0x10
/* 0040F8B0 1612FFF7 */  bne   $s0, $s2, .L0040F890
/* 0040F8B4 00000000 */   nop   
.L0040F8B8:
/* 0040F8B8 8F998080 */  lw    $t9, %got(D_10000168)($gp)
/* 0040F8BC 00000000 */  nop   
/* 0040F8C0 27390168 */  addiu $t9, %lo(D_10000168) # addiu $t9, $t9, 0x168
/* 0040F8C4 16190003 */  bne   $s0, $t9, .L0040F8D4
/* 0040F8C8 00000000 */   nop   
/* 0040F8CC 10000184 */  b     .L0040FEE0
/* 0040F8D0 2402FFFF */   li    $v0, -1
.L0040F8D4:
/* 0040F8D4 8EE50000 */  lw    $a1, ($s7)
/* 0040F8D8 8F898B28 */  lw     $t1, %got(sixtyfour_bit)($gp)
/* 0040F8DC AE050008 */  sw    $a1, 8($s0)
/* 0040F8E0 91290000 */  lbu   $t1, ($t1)
/* 0040F8E4 8FAD016C */  lw    $t5, 0x16c($sp)
/* 0040F8E8 11200027 */  beqz  $t1, .L0040F988
/* 0040F8EC 00056100 */   sll   $t4, $a1, 4
/* 0040F8F0 24B80001 */  addiu $t8, $a1, 1
/* 0040F8F4 AEF80000 */  sw    $t8, ($s7)
/* 0040F8F8 00056080 */  sll   $t4, $a1, 2
/* 0040F8FC 8FAD0168 */  lw    $t5, 0x168($sp)
/* 0040F900 8F99825C */  lw    $t9, %call16(xaddstr)($gp)
/* 0040F904 01856023 */  subu  $t4, $t4, $a1
/* 0040F908 000C60C0 */  sll   $t4, $t4, 3
/* 0040F90C 8E040000 */  lw    $a0, ($s0)
/* 0040F910 0320F809 */  jalr  $t9
/* 0040F914 018D8821 */   addu  $s1, $t4, $t5
/* 0040F918 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040F91C 240E0000 */  li    $t6, 0
/* 0040F920 240F0000 */  li    $t7, 0
/* 0040F924 AE220000 */  sw    $v0, ($s1)
/* 0040F928 AE2F000C */  sw    $t7, 0xc($s1)
/* 0040F92C AE2E0008 */  sw    $t6, 8($s1)
/* 0040F930 8F998754 */  lw    $t9, %call16(elf64_getshdr)($gp)
/* 0040F934 02802025 */  move  $a0, $s4
/* 0040F938 0320F809 */  jalr  $t9
/* 0040F93C 00000000 */   nop   
/* 0040F940 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040F944 14400003 */  bnez  $v0, .L0040F954
/* 0040F948 02B3082A */   slt   $at, $s5, $s3
/* 0040F94C 10000164 */  b     .L0040FEE0
/* 0040F950 2402FFFF */   li    $v0, -1
.L0040F954:
/* 0040F954 8C4A0020 */  lw    $t2, 0x20($v0)
/* 0040F958 8C4B0024 */  lw    $t3, 0x24($v0)
/* 0040F95C 24190003 */  li    $t9, 3
/* 0040F960 A2390004 */  sb    $t9, 4($s1)
/* 0040F964 AE2A0010 */  sw    $t2, 0x10($s1)
/* 0040F968 10200004 */  beqz  $at, .L0040F97C
/* 0040F96C AE2B0014 */   sw    $t3, 0x14($s1)
/* 0040F970 2409FFFF */  li    $t1, -1
/* 0040F974 10000002 */  b     .L0040F980
/* 0040F978 A6290006 */   sh    $t1, 6($s1)
.L0040F97C:
/* 0040F97C A6330006 */  sh    $s3, 6($s1)
.L0040F980:
/* 0040F980 1000001D */  b     .L0040F9F8
/* 0040F984 A2200005 */   sb    $zero, 5($s1)
.L0040F988:
/* 0040F988 24B80001 */  addiu $t8, $a1, 1
/* 0040F98C AEF80000 */  sw    $t8, ($s7)
/* 0040F990 8F99825C */  lw    $t9, %call16(xaddstr)($gp)
/* 0040F994 8E040000 */  lw    $a0, ($s0)
/* 0040F998 0320F809 */  jalr  $t9
/* 0040F99C 018D8821 */   addu  $s1, $t4, $t5
/* 0040F9A0 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040F9A4 AE220000 */  sw    $v0, ($s1)
/* 0040F9A8 AE200004 */  sw    $zero, 4($s1)
/* 0040F9AC 8F998750 */  lw    $t9, %call16(elf32_getshdr)($gp)
/* 0040F9B0 02802025 */  move  $a0, $s4
/* 0040F9B4 0320F809 */  jalr  $t9
/* 0040F9B8 00000000 */   nop   
/* 0040F9BC 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040F9C0 14400003 */  bnez  $v0, .L0040F9D0
/* 0040F9C4 240F0003 */   li    $t7, 3
/* 0040F9C8 10000145 */  b     .L0040FEE0
/* 0040F9CC 2402FFFF */   li    $v0, -1
.L0040F9D0:
/* 0040F9D0 8C4E0014 */  lw    $t6, 0x14($v0)
/* 0040F9D4 02B3082A */  slt   $at, $s5, $s3
/* 0040F9D8 A22F000C */  sb    $t7, 0xc($s1)
/* 0040F9DC 10200004 */  beqz  $at, .L0040F9F0
/* 0040F9E0 AE2E0008 */   sw    $t6, 8($s1)
/* 0040F9E4 240AFFFF */  li    $t2, -1
/* 0040F9E8 10000002 */  b     .L0040F9F4
/* 0040F9EC A62A000E */   sh    $t2, 0xe($s1)
.L0040F9F0:
/* 0040F9F0 A633000E */  sh    $s3, 0xe($s1)
.L0040F9F4:
/* 0040F9F4 A220000D */  sb    $zero, 0xd($s1)
.L0040F9F8:
/* 0040F9F8 26730001 */  addiu $s3, $s3, 1
/* 0040F9FC 1675FF8D */  bne   $s3, $s5, .L0040F834
/* 0040FA00 00000000 */   nop   
.L0040FA04:
/* 0040FA04 8F998820 */  lw    $t9, %call16(st_iextmax)($gp)
/* 0040FA08 00008025 */  move  $s0, $zero
/* 0040FA0C 0320F809 */  jalr  $t9
/* 0040FA10 00000000 */   nop   
/* 0040FA14 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040FA18 18400031 */  blez  $v0, .L0040FAE0
/* 0040FA1C 00000000 */   nop   
.L0040FA20:
/* 0040FA20 8F9986D8 */  lw    $t9, %call16(st_pext_iext)($gp)
/* 0040FA24 02002025 */  move  $a0, $s0
/* 0040FA28 0320F809 */  jalr  $t9
/* 0040FA2C 00000000 */   nop   
/* 0040FA30 84430002 */  lh    $v1, 2($v0)
/* 0040FA34 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040FA38 18600003 */  blez  $v1, .L0040FA48
/* 0040FA3C 00408825 */   move  $s1, $v0
/* 0040FA40 10000002 */  b     .L0040FA4C
/* 0040FA44 00602025 */   move  $a0, $v1
.L0040FA48:
/* 0040FA48 00002025 */  move  $a0, $zero
.L0040FA4C:
/* 0040FA4C 8F99882C */  lw    $t9, %call16(st_setfd)($gp)
/* 0040FA50 00000000 */  nop   
/* 0040FA54 0320F809 */  jalr  $t9
/* 0040FA58 00000000 */   nop   
/* 0040FA5C 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040FA60 00000000 */  nop   
/* 0040FA64 8F998824 */  lw    $t9, %call16(st_currentifd)($gp)
/* 0040FA68 00000000 */  nop   
/* 0040FA6C 0320F809 */  jalr  $t9
/* 0040FA70 00000000 */   nop   
/* 0040FA74 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040FA78 00402025 */  move  $a0, $v0
/* 0040FA7C 8F9986EC */  lw    $t9, %call16(st_pcfd_ifd)($gp)
/* 0040FA80 00000000 */  nop   
/* 0040FA84 0320F809 */  jalr  $t9
/* 0040FA88 00000000 */   nop   
/* 0040FA8C 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040FA90 8FA4016C */  lw    $a0, 0x16c($sp)
/* 0040FA94 8F998018 */  lw    $t9, %got(func_0040EE88)($gp)
/* 0040FA98 8FA50168 */  lw    $a1, 0x168($sp)
/* 0040FA9C 2739EE88 */  addiu $t9, %lo(func_0040EE88) # addiu $t9, $t9, -0x1178
/* 0040FAA0 02203025 */  move  $a2, $s1
/* 0040FAA4 0320F809 */  jalr  $t9
/* 0040FAA8 24070001 */   li    $a3, 1
/* 0040FAAC 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040FAB0 10400003 */  beqz  $v0, .L0040FAC0
/* 0040FAB4 00000000 */   nop   
/* 0040FAB8 10000109 */  b     .L0040FEE0
/* 0040FABC 2402FFFF */   li    $v0, -1
.L0040FAC0:
/* 0040FAC0 8F998820 */  lw    $t9, %call16(st_iextmax)($gp)
/* 0040FAC4 26100001 */  addiu $s0, $s0, 1
/* 0040FAC8 0320F809 */  jalr  $t9
/* 0040FACC 00000000 */   nop   
/* 0040FAD0 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040FAD4 0202082A */  slt   $at, $s0, $v0
/* 0040FAD8 1420FFD1 */  bnez  $at, .L0040FA20
/* 0040FADC 00000000 */   nop   
.L0040FAE0:
/* 0040FAE0 8F868088 */  lw    $a2, %got(B_100230D4)($gp)
/* 0040FAE4 8F8B8088 */  lw    $t3, %got(B_100230D0)($gp)
/* 0040FAE8 8EE50000 */  lw    $a1, ($s7)
/* 0040FAEC 8CC630D4 */  lw    $a2, %lo(B_100230D4)($a2)
/* 0040FAF0 8D6B30D0 */  lw    $t3, %lo(B_100230D0)($t3)
/* 0040FAF4 00C51823 */  subu  $v1, $a2, $a1
/* 0040FAF8 106000D1 */  beqz  $v1, .L0040FE40
/* 0040FAFC 01634023 */   subu  $t0, $t3, $v1
/* 0040FB00 8F848088 */  lw    $a0, %got(B_100230B4)($gp)
/* 0040FB04 001EC880 */  sll   $t9, $fp, 2
/* 0040FB08 248430B4 */  addiu $a0, %lo(B_100230B4) # addiu $a0, $a0, 0x30b4
/* 0040FB0C 8C870000 */  lw    $a3, ($a0)
/* 0040FB10 00000000 */  nop   
/* 0040FB14 03274821 */  addu  $t1, $t9, $a3
/* 0040FB18 2522FFFC */  addiu $v0, $t1, -4
/* 0040FB1C AEC90000 */  sw    $t1, ($s6)
/* 0040FB20 0047082B */  sltu  $at, $v0, $a3
/* 0040FB24 1420000F */  bnez  $at, .L0040FB64
/* 0040FB28 AEC20000 */   sw    $v0, ($s6)
.L0040FB2C:
/* 0040FB2C 8C580000 */  lw    $t8, ($v0)
/* 0040FB30 00000000 */  nop   
/* 0040FB34 03037023 */  subu  $t6, $t8, $v1
/* 0040FB38 AC4E0000 */  sw    $t6, ($v0)
/* 0040FB3C 8ECF0000 */  lw    $t7, ($s6)
/* 0040FB40 8C8B0000 */  lw    $t3, ($a0)
/* 0040FB44 25E2FFFC */  addiu $v0, $t7, -4
/* 0040FB48 004B082B */  sltu  $at, $v0, $t3
/* 0040FB4C 1020FFF7 */  beqz  $at, .L0040FB2C
/* 0040FB50 AEC20000 */   sw    $v0, ($s6)
/* 0040FB54 8F868088 */  lw    $a2, %got(B_100230D4)($gp)
/* 0040FB58 8EE50000 */  lw    $a1, ($s7)
/* 0040FB5C 8CC630D4 */  lw    $a2, %lo(B_100230D4)($a2)
/* 0040FB60 00000000 */  nop   
.L0040FB64:
/* 0040FB64 8F998B28 */  lw     $t9, %got(sixtyfour_bit)($gp)
/* 0040FB68 8FAF016C */  lw    $t7, 0x16c($sp)
/* 0040FB6C 93390000 */  lbu   $t9, ($t9)
/* 0040FB70 00067100 */  sll   $t6, $a2, 4
/* 0040FB74 1320006D */  beqz  $t9, .L0040FD2C
/* 0040FB78 01CF1021 */   addu  $v0, $t6, $t7
/* 0040FB7C 8FAC0168 */  lw    $t4, 0x168($sp)
/* 0040FB80 00064880 */  sll   $t1, $a2, 2
/* 0040FB84 00056880 */  sll   $t5, $a1, 2
/* 0040FB88 01264823 */  subu  $t1, $t1, $a2
/* 0040FB8C 01A56823 */  subu  $t5, $t5, $a1
/* 0040FB90 000948C0 */  sll   $t1, $t1, 3
/* 0040FB94 000D68C0 */  sll   $t5, $t5, 3
/* 0040FB98 00002025 */  move  $a0, $zero
/* 0040FB9C 012C1021 */  addu  $v0, $t1, $t4
/* 0040FBA0 1BC000A7 */  blez  $fp, .L0040FE40
/* 0040FBA4 01AC1821 */   addu  $v1, $t5, $t4
/* 0040FBA8 33C60003 */  andi  $a2, $fp, 3
/* 0040FBAC 10C00015 */  beqz  $a2, .L0040FC04
/* 0040FBB0 00C02825 */   move  $a1, $a2
.L0040FBB4:
/* 0040FBB4 8C410000 */  lw    $at, ($v0)
/* 0040FBB8 24840001 */  addiu $a0, $a0, 1
/* 0040FBBC AC610000 */  sw    $at, ($v1)
/* 0040FBC0 8C4E0004 */  lw    $t6, 4($v0)
/* 0040FBC4 24630018 */  addiu $v1, $v1, 0x18
/* 0040FBC8 AC6EFFEC */  sw    $t6, -0x14($v1)
/* 0040FBCC 8C410008 */  lw    $at, 8($v0)
/* 0040FBD0 24420018 */  addiu $v0, $v0, 0x18
/* 0040FBD4 AC61FFF0 */  sw    $at, -0x10($v1)
/* 0040FBD8 8C4EFFF4 */  lw    $t6, -0xc($v0)
/* 0040FBDC 00000000 */  nop   
/* 0040FBE0 AC6EFFF4 */  sw    $t6, -0xc($v1)
/* 0040FBE4 8C41FFF8 */  lw    $at, -8($v0)
/* 0040FBE8 00000000 */  nop   
/* 0040FBEC AC61FFF8 */  sw    $at, -8($v1)
/* 0040FBF0 8C4EFFFC */  lw    $t6, -4($v0)
/* 0040FBF4 14A4FFEF */  bne   $a1, $a0, .L0040FBB4
/* 0040FBF8 AC6EFFFC */   sw    $t6, -4($v1)
/* 0040FBFC 109E0090 */  beq   $a0, $fp, .L0040FE40
/* 0040FC00 00000000 */   nop   
.L0040FC04:
/* 0040FC04 8C410000 */  lw    $at, ($v0)
/* 0040FC08 24840004 */  addiu $a0, $a0, 4
/* 0040FC0C AC610000 */  sw    $at, ($v1)
/* 0040FC10 8C4A0004 */  lw    $t2, 4($v0)
/* 0040FC14 24630060 */  addiu $v1, $v1, 0x60
/* 0040FC18 AC6AFFA4 */  sw    $t2, -0x5c($v1)
/* 0040FC1C 8C410008 */  lw    $at, 8($v0)
/* 0040FC20 24420060 */  addiu $v0, $v0, 0x60
/* 0040FC24 AC61FFA8 */  sw    $at, -0x58($v1)
/* 0040FC28 8C4AFFAC */  lw    $t2, -0x54($v0)
/* 0040FC2C 00000000 */  nop   
/* 0040FC30 AC6AFFAC */  sw    $t2, -0x54($v1)
/* 0040FC34 8C41FFB0 */  lw    $at, -0x50($v0)
/* 0040FC38 00000000 */  nop   
/* 0040FC3C AC61FFB0 */  sw    $at, -0x50($v1)
/* 0040FC40 8C4AFFB4 */  lw    $t2, -0x4c($v0)
/* 0040FC44 00000000 */  nop   
/* 0040FC48 AC6AFFB4 */  sw    $t2, -0x4c($v1)
/* 0040FC4C 8C41FFB8 */  lw    $at, -0x48($v0)
/* 0040FC50 00000000 */  nop   
/* 0040FC54 AC61FFB8 */  sw    $at, -0x48($v1)
/* 0040FC58 8C59FFBC */  lw    $t9, -0x44($v0)
/* 0040FC5C 00000000 */  nop   
/* 0040FC60 AC79FFBC */  sw    $t9, -0x44($v1)
/* 0040FC64 8C41FFC0 */  lw    $at, -0x40($v0)
/* 0040FC68 00000000 */  nop   
/* 0040FC6C AC61FFC0 */  sw    $at, -0x40($v1)
/* 0040FC70 8C59FFC4 */  lw    $t9, -0x3c($v0)
/* 0040FC74 00000000 */  nop   
/* 0040FC78 AC79FFC4 */  sw    $t9, -0x3c($v1)
/* 0040FC7C 8C41FFC8 */  lw    $at, -0x38($v0)
/* 0040FC80 00000000 */  nop   
/* 0040FC84 AC61FFC8 */  sw    $at, -0x38($v1)
/* 0040FC88 8C59FFCC */  lw    $t9, -0x34($v0)
/* 0040FC8C 00000000 */  nop   
/* 0040FC90 AC79FFCC */  sw    $t9, -0x34($v1)
/* 0040FC94 8C41FFD0 */  lw    $at, -0x30($v0)
/* 0040FC98 00000000 */  nop   
/* 0040FC9C AC61FFD0 */  sw    $at, -0x30($v1)
/* 0040FCA0 8C4DFFD4 */  lw    $t5, -0x2c($v0)
/* 0040FCA4 00000000 */  nop   
/* 0040FCA8 AC6DFFD4 */  sw    $t5, -0x2c($v1)
/* 0040FCAC 8C41FFD8 */  lw    $at, -0x28($v0)
/* 0040FCB0 00000000 */  nop   
/* 0040FCB4 AC61FFD8 */  sw    $at, -0x28($v1)
/* 0040FCB8 8C4DFFDC */  lw    $t5, -0x24($v0)
/* 0040FCBC 00000000 */  nop   
/* 0040FCC0 AC6DFFDC */  sw    $t5, -0x24($v1)
/* 0040FCC4 8C41FFE0 */  lw    $at, -0x20($v0)
/* 0040FCC8 00000000 */  nop   
/* 0040FCCC AC61FFE0 */  sw    $at, -0x20($v1)
/* 0040FCD0 8C4DFFE4 */  lw    $t5, -0x1c($v0)
/* 0040FCD4 00000000 */  nop   
/* 0040FCD8 AC6DFFE4 */  sw    $t5, -0x1c($v1)
/* 0040FCDC 8C41FFE8 */  lw    $at, -0x18($v0)
/* 0040FCE0 00000000 */  nop   
/* 0040FCE4 AC61FFE8 */  sw    $at, -0x18($v1)
/* 0040FCE8 8C58FFEC */  lw    $t8, -0x14($v0)
/* 0040FCEC 00000000 */  nop   
/* 0040FCF0 AC78FFEC */  sw    $t8, -0x14($v1)
/* 0040FCF4 8C41FFF0 */  lw    $at, -0x10($v0)
/* 0040FCF8 00000000 */  nop   
/* 0040FCFC AC61FFF0 */  sw    $at, -0x10($v1)
/* 0040FD00 8C58FFF4 */  lw    $t8, -0xc($v0)
/* 0040FD04 00000000 */  nop   
/* 0040FD08 AC78FFF4 */  sw    $t8, -0xc($v1)
/* 0040FD0C 8C41FFF8 */  lw    $at, -8($v0)
/* 0040FD10 00000000 */  nop   
/* 0040FD14 AC61FFF8 */  sw    $at, -8($v1)
/* 0040FD18 8C58FFFC */  lw    $t8, -4($v0)
/* 0040FD1C 149EFFB9 */  bne   $a0, $fp, .L0040FC04
/* 0040FD20 AC78FFFC */   sw    $t8, -4($v1)
/* 0040FD24 10000046 */  b     .L0040FE40
/* 0040FD28 00000000 */   nop   
.L0040FD2C:
/* 0040FD2C 00055100 */  sll   $t2, $a1, 4
/* 0040FD30 014F1821 */  addu  $v1, $t2, $t7
/* 0040FD34 1BC00042 */  blez  $fp, .L0040FE40
/* 0040FD38 00002025 */   move  $a0, $zero
/* 0040FD3C 33C60003 */  andi  $a2, $fp, 3
/* 0040FD40 10C0000F */  beqz  $a2, .L0040FD80
/* 0040FD44 00C02825 */   move  $a1, $a2
.L0040FD48:
/* 0040FD48 8C410000 */  lw    $at, ($v0)
/* 0040FD4C 24840001 */  addiu $a0, $a0, 1
/* 0040FD50 AC610000 */  sw    $at, ($v1)
/* 0040FD54 8C590004 */  lw    $t9, 4($v0)
/* 0040FD58 24630010 */  addiu $v1, $v1, 0x10
/* 0040FD5C AC79FFF4 */  sw    $t9, -0xc($v1)
/* 0040FD60 8C410008 */  lw    $at, 8($v0)
/* 0040FD64 24420010 */  addiu $v0, $v0, 0x10
/* 0040FD68 AC61FFF8 */  sw    $at, -8($v1)
/* 0040FD6C 8C59FFFC */  lw    $t9, -4($v0)
/* 0040FD70 14A4FFF5 */  bne   $a1, $a0, .L0040FD48
/* 0040FD74 AC79FFFC */   sw    $t9, -4($v1)
/* 0040FD78 109E0031 */  beq   $a0, $fp, .L0040FE40
/* 0040FD7C 00000000 */   nop   
.L0040FD80:
/* 0040FD80 8C410000 */  lw    $at, ($v0)
/* 0040FD84 24840004 */  addiu $a0, $a0, 4
/* 0040FD88 AC610000 */  sw    $at, ($v1)
/* 0040FD8C 8C4D0004 */  lw    $t5, 4($v0)
/* 0040FD90 24630040 */  addiu $v1, $v1, 0x40
/* 0040FD94 AC6DFFC4 */  sw    $t5, -0x3c($v1)
/* 0040FD98 8C410008 */  lw    $at, 8($v0)
/* 0040FD9C 24420040 */  addiu $v0, $v0, 0x40
/* 0040FDA0 AC61FFC8 */  sw    $at, -0x38($v1)
/* 0040FDA4 8C4DFFCC */  lw    $t5, -0x34($v0)
/* 0040FDA8 00000000 */  nop   
/* 0040FDAC AC6DFFCC */  sw    $t5, -0x34($v1)
/* 0040FDB0 8C41FFD0 */  lw    $at, -0x30($v0)
/* 0040FDB4 00000000 */  nop   
/* 0040FDB8 AC61FFD0 */  sw    $at, -0x30($v1)
/* 0040FDBC 8C58FFD4 */  lw    $t8, -0x2c($v0)
/* 0040FDC0 00000000 */  nop   
/* 0040FDC4 AC78FFD4 */  sw    $t8, -0x2c($v1)
/* 0040FDC8 8C41FFD8 */  lw    $at, -0x28($v0)
/* 0040FDCC 00000000 */  nop   
/* 0040FDD0 AC61FFD8 */  sw    $at, -0x28($v1)
/* 0040FDD4 8C58FFDC */  lw    $t8, -0x24($v0)
/* 0040FDD8 00000000 */  nop   
/* 0040FDDC AC78FFDC */  sw    $t8, -0x24($v1)
/* 0040FDE0 8C41FFE0 */  lw    $at, -0x20($v0)
/* 0040FDE4 00000000 */  nop   
/* 0040FDE8 AC61FFE0 */  sw    $at, -0x20($v1)
/* 0040FDEC 8C4AFFE4 */  lw    $t2, -0x1c($v0)
/* 0040FDF0 00000000 */  nop   
/* 0040FDF4 AC6AFFE4 */  sw    $t2, -0x1c($v1)
/* 0040FDF8 8C41FFE8 */  lw    $at, -0x18($v0)
/* 0040FDFC 00000000 */  nop   
/* 0040FE00 AC61FFE8 */  sw    $at, -0x18($v1)
/* 0040FE04 8C4AFFEC */  lw    $t2, -0x14($v0)
/* 0040FE08 00000000 */  nop   
/* 0040FE0C AC6AFFEC */  sw    $t2, -0x14($v1)
/* 0040FE10 8C41FFF0 */  lw    $at, -0x10($v0)
/* 0040FE14 00000000 */  nop   
/* 0040FE18 AC61FFF0 */  sw    $at, -0x10($v1)
/* 0040FE1C 8C4BFFF4 */  lw    $t3, -0xc($v0)
/* 0040FE20 00000000 */  nop   
/* 0040FE24 AC6BFFF4 */  sw    $t3, -0xc($v1)
/* 0040FE28 8C41FFF8 */  lw    $at, -8($v0)
/* 0040FE2C 00000000 */  nop   
/* 0040FE30 AC61FFF8 */  sw    $at, -8($v1)
/* 0040FE34 8C4BFFFC */  lw    $t3, -4($v0)
/* 0040FE38 149EFFD1 */  bne   $a0, $fp, .L0040FD80
/* 0040FE3C AC6BFFFC */   sw    $t3, -4($v1)
.L0040FE40:
/* 0040FE40 8F998B28 */  lw     $t9, %got(sixtyfour_bit)($gp)
/* 0040FE44 8FA500A4 */  lw    $a1, 0xa4($sp)
/* 0040FE48 93390000 */  lbu   $t9, ($t9)
/* 0040FE4C 2406000C */  li    $a2, 12
/* 0040FE50 13200014 */  beqz  $t9, .L0040FEA4
/* 0040FE54 00083900 */   sll   $a3, $t0, 4
/* 0040FE58 8F848088 */  lw    $a0, %got(B_100230A4)($gp)
/* 0040FE5C 8F998018 */  lw    $t9, %got(func_0040DE5C)($gp)
/* 0040FE60 00083880 */  sll   $a3, $t0, 2
/* 0040FE64 00E83823 */  subu  $a3, $a3, $t0
/* 0040FE68 8FA500A0 */  lw    $a1, 0xa0($sp)
/* 0040FE6C 24090008 */  li    $t1, 8
/* 0040FE70 8C8430A4 */  lw    $a0, %lo(B_100230A4)($a0)
/* 0040FE74 2739DE5C */  addiu $t9, %lo(func_0040DE5C) # addiu $t9, $t9, -0x21a4
/* 0040FE78 AFA90010 */  sw    $t1, 0x10($sp)
/* 0040FE7C 000738C0 */  sll   $a3, $a3, 3
/* 0040FE80 0320F809 */  jalr  $t9
/* 0040FE84 2406000C */   li    $a2, 12
/* 0040FE88 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040FE8C 8EED0000 */  lw    $t5, ($s7)
/* 0040FE90 8F8C8088 */  lw    $t4, %got(B_100230AC)($gp)
/* 0040FE94 00000000 */  nop   
/* 0040FE98 8D8C30AC */  lw    $t4, %lo(B_100230AC)($t4)
/* 0040FE9C 1000000F */  b     .L0040FEDC
/* 0040FEA0 AD8D002C */   sw    $t5, 0x2c($t4)
.L0040FEA4:
/* 0040FEA4 8F848088 */  lw    $a0, %got(B_100230A4)($gp)
/* 0040FEA8 8F998018 */  lw    $t9, %got(func_0040DE5C)($gp)
/* 0040FEAC 24180004 */  li    $t8, 4
/* 0040FEB0 8C8430A4 */  lw    $a0, %lo(B_100230A4)($a0)
/* 0040FEB4 2739DE5C */  addiu $t9, %lo(func_0040DE5C) # addiu $t9, $t9, -0x21a4
/* 0040FEB8 0320F809 */  jalr  $t9
/* 0040FEBC AFB80010 */   sw    $t8, 0x10($sp)
/* 0040FEC0 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040FEC4 8EEE0000 */  lw    $t6, ($s7)
/* 0040FEC8 8F8A8088 */  lw    $t2, %got(B_100230A8)($gp)
/* 0040FECC 00000000 */  nop   
/* 0040FED0 8D4A30A8 */  lw    $t2, %lo(B_100230A8)($t2)
/* 0040FED4 00000000 */  nop   
/* 0040FED8 AD4E001C */  sw    $t6, 0x1c($t2)
.L0040FEDC:
/* 0040FEDC 00001025 */  move  $v0, $zero
.L0040FEE0:
/* 0040FEE0 8FBF0044 */  lw    $ra, 0x44($sp)
/* 0040FEE4 8FB0001C */  lw    $s0, 0x1c($sp)
/* 0040FEE8 8FB10020 */  lw    $s1, 0x20($sp)
/* 0040FEEC 8FB20024 */  lw    $s2, 0x24($sp)
/* 0040FEF0 8FB30028 */  lw    $s3, 0x28($sp)
/* 0040FEF4 8FB4002C */  lw    $s4, 0x2c($sp)
/* 0040FEF8 8FB50030 */  lw    $s5, 0x30($sp)
/* 0040FEFC 8FB60034 */  lw    $s6, 0x34($sp)
/* 0040FF00 8FB70038 */  lw    $s7, 0x38($sp)
/* 0040FF04 8FBE0040 */  lw    $fp, 0x40($sp)
/* 0040FF08 03E00008 */  jr    $ra
/* 0040FF0C 27BD0178 */   addiu $sp, $sp, 0x178

    .type elf_write_symtable, @function
    .size elf_write_symtable, .-elf_write_symtable
    .end elf_write_symtable

glabel elf_st_sechdr
    .ent elf_st_sechdr
    # 0043ECB8 wrelfobj
/* 0040FF10 3C1C0FC2 */  .cpload $t9
/* 0040FF14 279CA350 */  
/* 0040FF18 0399E021 */  
/* 0040FF1C 8F828AF8 */  lw     $v0, %got(picflag)($gp)
/* 0040FF20 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0040FF24 8C420000 */  lw    $v0, ($v0)
/* 0040FF28 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0040FF2C AFBC0020 */  sw    $gp, 0x20($sp)
/* 0040FF30 1040000A */  beqz  $v0, .L0040FF5C
/* 0040FF34 AFA40048 */   sw    $a0, 0x48($sp)
/* 0040FF38 24010001 */  li    $at, 1
/* 0040FF3C 10410005 */  beq   $v0, $at, .L0040FF54
/* 0040FF40 24010002 */   li    $at, 2
/* 0040FF44 14410006 */  bne   $v0, $at, .L0040FF60
/* 0040FF48 00001825 */   move  $v1, $zero
/* 0040FF4C 10000004 */  b     .L0040FF60
/* 0040FF50 24030002 */   li    $v1, 2
.L0040FF54:
/* 0040FF54 10000002 */  b     .L0040FF60
/* 0040FF58 24030004 */   li    $v1, 4
.L0040FF5C:
/* 0040FF5C 00001825 */  move  $v1, $zero
.L0040FF60:
/* 0040FF60 8F828B04 */  lw     $v0, %got(isa)($gp)
/* 0040FF64 24010001 */  li    $at, 1
/* 0040FF68 90420000 */  lbu   $v0, ($v0)
/* 0040FF6C 24050001 */  li    $a1, 1
/* 0040FF70 10410014 */  beq   $v0, $at, .L0040FFC4
/* 0040FF74 24010002 */   li    $at, 2
/* 0040FF78 10410007 */  beq   $v0, $at, .L0040FF98
/* 0040FF7C 24010003 */   li    $at, 3
/* 0040FF80 10410009 */  beq   $v0, $at, .L0040FFA8
/* 0040FF84 24010004 */   li    $at, 4
/* 0040FF88 1041000C */  beq   $v0, $at, .L0040FFBC
/* 0040FF8C 3C013000 */   lui   $at, 0x3000
/* 0040FF90 1000000C */  b     .L0040FFC4
/* 0040FF94 00000000 */   nop   
.L0040FF98:
/* 0040FF98 3C011000 */  lui   $at, 0x1000
/* 0040FF9C 00617025 */  or    $t6, $v1, $at
/* 0040FFA0 10000008 */  b     .L0040FFC4
/* 0040FFA4 01C01825 */   move  $v1, $t6
.L0040FFA8:
/* 0040FFA8 3C012000 */  lui   $at, 0x2000
/* 0040FFAC 00617825 */  or    $t7, $v1, $at
/* 0040FFB0 10000004 */  b     .L0040FFC4
/* 0040FFB4 01E01825 */   move  $v1, $t7
/* 0040FFB8 3C013000 */  lui   $at, 0x3000
.L0040FFBC:
/* 0040FFBC 0061C025 */  or    $t8, $v1, $at
/* 0040FFC0 03001825 */  move  $v1, $t8
.L0040FFC4:
/* 0040FFC4 8F998B2C */  lw     $t9, %got(non_reorg_flag)($gp)
/* 0040FFC8 34690001 */  ori   $t1, $v1, 1
/* 0040FFCC 8F390000 */  lw    $t9, ($t9)
/* 0040FFD0 00000000 */  nop   
/* 0040FFD4 17200007 */  bnez  $t9, .L0040FFF4
/* 0040FFD8 00000000 */   nop   
/* 0040FFDC 8F888B18 */  lw     $t0, %got(debugflag)($gp)
/* 0040FFE0 00000000 */  nop   
/* 0040FFE4 8D080000 */  lw    $t0, ($t0)
/* 0040FFE8 00000000 */  nop   
/* 0040FFEC 19000002 */  blez  $t0, .L0040FFF8
/* 0040FFF0 00000000 */   nop   
.L0040FFF4:
/* 0040FFF4 01201825 */  move  $v1, $t1
.L0040FFF8:
/* 0040FFF8 8F8A8B14 */  lw     $t2, %got(bigendian)($gp)
/* 0040FFFC 00000000 */  nop   
/* 00410000 914A0000 */  lbu   $t2, ($t2)
/* 00410004 00000000 */  nop   
/* 00410008 11400003 */  beqz  $t2, .L00410018
/* 0041000C 00000000 */   nop   
/* 00410010 10000001 */  b     .L00410018
/* 00410014 24050002 */   li    $a1, 2
.L00410018:
/* 00410018 8F8B8B28 */  lw     $t3, %got(sixtyfour_bit)($gp)
/* 0041001C 00000000 */  nop   
/* 00410020 916B0000 */  lbu   $t3, ($t3)
/* 00410024 00000000 */  nop   
/* 00410028 11600017 */  beqz  $t3, .L00410088
/* 0041002C 00000000 */   nop   
/* 00410030 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 00410034 8F998768 */  lw    $t9, %call16(elf64_newehdr)($gp)
/* 00410038 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 0041003C AFA30040 */  sw    $v1, 0x40($sp)
/* 00410040 0320F809 */  jalr  $t9
/* 00410044 A3A50047 */   sb    $a1, 0x47($sp)
/* 00410048 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0041004C 93A50047 */  lbu   $a1, 0x47($sp)
/* 00410050 8F868088 */  lw    $a2, %got(B_100230C0)($gp)
/* 00410054 8FA30040 */  lw    $v1, 0x40($sp)
/* 00410058 24C630C0 */  addiu $a2, %lo(B_100230C0) # addiu $a2, $a2, 0x30c0
/* 0041005C ACC20000 */  sw    $v0, ($a2)
/* 00410060 A0450005 */  sb    $a1, 5($v0)
/* 00410064 8CCE0000 */  lw    $t6, ($a2)
/* 00410068 240D0008 */  li    $t5, 8
/* 0041006C A5CD0012 */  sh    $t5, 0x12($t6)
/* 00410070 8CD80000 */  lw    $t8, ($a2)
/* 00410074 240F0001 */  li    $t7, 1
/* 00410078 A70F0010 */  sh    $t7, 0x10($t8)
/* 0041007C 8CD90000 */  lw    $t9, ($a2)
/* 00410080 10000017 */  b     .L004100E0
/* 00410084 AF230030 */   sw    $v1, 0x30($t9)
.L00410088:
/* 00410088 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 0041008C 8F998764 */  lw    $t9, %call16(elf32_newehdr)($gp)
/* 00410090 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 00410094 AFA30040 */  sw    $v1, 0x40($sp)
/* 00410098 0320F809 */  jalr  $t9
/* 0041009C A3A50047 */   sb    $a1, 0x47($sp)
/* 004100A0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004100A4 93A50047 */  lbu   $a1, 0x47($sp)
/* 004100A8 8F878088 */  lw    $a3, %got(B_100230BC)($gp)
/* 004100AC 8FA30040 */  lw    $v1, 0x40($sp)
/* 004100B0 24E730BC */  addiu $a3, %lo(B_100230BC) # addiu $a3, $a3, 0x30bc
/* 004100B4 ACE20000 */  sw    $v0, ($a3)
/* 004100B8 A0450005 */  sb    $a1, 5($v0)
/* 004100BC 8CEA0000 */  lw    $t2, ($a3)
/* 004100C0 24090008 */  li    $t1, 8
/* 004100C4 A5490012 */  sh    $t1, 0x12($t2)
/* 004100C8 8CEC0000 */  lw    $t4, ($a3)
/* 004100CC 240B0001 */  li    $t3, 1
/* 004100D0 A58B0010 */  sh    $t3, 0x10($t4)
/* 004100D4 8CED0000 */  lw    $t5, ($a3)
/* 004100D8 00000000 */  nop   
/* 004100DC ADA30024 */  sw    $v1, 0x24($t5)
.L004100E0:
/* 004100E0 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 004100E4 8F99876C */  lw    $t9, %call16(elf_newscn)($gp)
/* 004100E8 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 004100EC 0320F809 */  jalr  $t9
/* 004100F0 00000000 */   nop   
/* 004100F4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004100F8 00402025 */  move  $a0, $v0
/* 004100FC 8F838088 */  lw    $v1, %got(B_100230A0)($gp)
/* 00410100 00000000 */  nop   
/* 00410104 246330A0 */  addiu $v1, %lo(B_100230A0) # addiu $v1, $v1, 0x30a0
/* 00410108 1040000C */  beqz  $v0, .L0041013C
/* 0041010C AC620000 */   sw    $v0, ($v1)
/* 00410110 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00410114 00000000 */  nop   
/* 00410118 0320F809 */  jalr  $t9
/* 0041011C 00000000 */   nop   
/* 00410120 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410124 00000000 */  nop   
/* 00410128 8F838088 */  lw    $v1, %got(B_100230A4)($gp)
/* 0041012C 00000000 */  nop   
/* 00410130 246330A4 */  addiu $v1, %lo(B_100230A4) # addiu $v1, $v1, 0x30a4
/* 00410134 14400003 */  bnez  $v0, .L00410144
/* 00410138 AC620000 */   sw    $v0, ($v1)
.L0041013C:
/* 0041013C 10000142 */  b     .L00410648
/* 00410140 2402FFFF */   li    $v0, -1
.L00410144:
/* 00410144 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 00410148 8F99876C */  lw    $t9, %call16(elf_newscn)($gp)
/* 0041014C 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 00410150 0320F809 */  jalr  $t9
/* 00410154 00000000 */   nop   
/* 00410158 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0041015C 1040000C */  beqz  $v0, .L00410190
/* 00410160 00402025 */   move  $a0, $v0
/* 00410164 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00410168 AFA2003C */  sw    $v0, 0x3c($sp)
/* 0041016C 0320F809 */  jalr  $t9
/* 00410170 00000000 */   nop   
/* 00410174 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410178 00402025 */  move  $a0, $v0
/* 0041017C 8F838088 */  lw    $v1, %got(B_10023094)($gp)
/* 00410180 00002825 */  move  $a1, $zero
/* 00410184 24633094 */  addiu $v1, %lo(B_10023094) # addiu $v1, $v1, 0x3094
/* 00410188 14400003 */  bnez  $v0, .L00410198
/* 0041018C AC620000 */   sw    $v0, ($v1)
.L00410190:
/* 00410190 1000012D */  b     .L00410648
/* 00410194 2402FFFF */   li    $v0, -1
.L00410198:
/* 00410198 8F998018 */  lw    $t9, %got(func_0040DE5C)($gp)
/* 0041019C 240F0001 */  li    $t7, 1
/* 004101A0 2739DE5C */  addiu $t9, %lo(func_0040DE5C) # addiu $t9, $t9, -0x21a4
/* 004101A4 AFAF0010 */  sw    $t7, 0x10($sp)
/* 004101A8 00003025 */  move  $a2, $zero
/* 004101AC 0320F809 */  jalr  $t9
/* 004101B0 00003825 */   move  $a3, $zero
/* 004101B4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004101B8 00000000 */  nop   
/* 004101BC 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 004101C0 8F99876C */  lw    $t9, %call16(elf_newscn)($gp)
/* 004101C4 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 004101C8 0320F809 */  jalr  $t9
/* 004101CC 00000000 */   nop   
/* 004101D0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004101D4 00402025 */  move  $a0, $v0
/* 004101D8 8F838088 */  lw    $v1, %got(B_10023098)($gp)
/* 004101DC 00000000 */  nop   
/* 004101E0 24633098 */  addiu $v1, %lo(B_10023098) # addiu $v1, $v1, 0x3098
/* 004101E4 1040000C */  beqz  $v0, .L00410218
/* 004101E8 AC620000 */   sw    $v0, ($v1)
/* 004101EC 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 004101F0 00000000 */  nop   
/* 004101F4 0320F809 */  jalr  $t9
/* 004101F8 00000000 */   nop   
/* 004101FC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410200 00402025 */  move  $a0, $v0
/* 00410204 8F838088 */  lw    $v1, %got(B_1002309C)($gp)
/* 00410208 00002825 */  move  $a1, $zero
/* 0041020C 2463309C */  addiu $v1, %lo(B_1002309C) # addiu $v1, $v1, 0x309c
/* 00410210 14400003 */  bnez  $v0, .L00410220
/* 00410214 AC620000 */   sw    $v0, ($v1)
.L00410218:
/* 00410218 1000010B */  b     .L00410648
/* 0041021C 2402FFFF */   li    $v0, -1
.L00410220:
/* 00410220 8F998018 */  lw    $t9, %got(func_0040DE5C)($gp)
/* 00410224 24180001 */  li    $t8, 1
/* 00410228 2739DE5C */  addiu $t9, %lo(func_0040DE5C) # addiu $t9, $t9, -0x21a4
/* 0041022C AFB80010 */  sw    $t8, 0x10($sp)
/* 00410230 00003025 */  move  $a2, $zero
/* 00410234 0320F809 */  jalr  $t9
/* 00410238 00003825 */   move  $a3, $zero
/* 0041023C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410240 00000000 */  nop   
/* 00410244 8F998B28 */  lw     $t9, %got(sixtyfour_bit)($gp)
/* 00410248 00000000 */  nop   
/* 0041024C 93390000 */  lbu   $t9, ($t9)
/* 00410250 00000000 */  nop   
/* 00410254 13200087 */  beqz  $t9, .L00410474
/* 00410258 00000000 */   nop   
/* 0041025C 8F848088 */  lw    $a0, %got(B_100230A0)($gp)
/* 00410260 8F998754 */  lw    $t9, %call16(elf64_getshdr)($gp)
/* 00410264 8C8430A0 */  lw    $a0, %lo(B_100230A0)($a0)
/* 00410268 0320F809 */  jalr  $t9
/* 0041026C 00000000 */   nop   
/* 00410270 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410274 00000000 */  nop   
/* 00410278 8F858088 */  lw    $a1, %got(B_100230AC)($gp)
/* 0041027C 00000000 */  nop   
/* 00410280 24A530AC */  addiu $a1, %lo(B_100230AC) # addiu $a1, $a1, 0x30ac
/* 00410284 14400003 */  bnez  $v0, .L00410294
/* 00410288 ACA20000 */   sw    $v0, ($a1)
/* 0041028C 100000EE */  b     .L00410648
/* 00410290 2402FFFF */   li    $v0, -1
.L00410294:
/* 00410294 8F998754 */  lw    $t9, %call16(elf64_getshdr)($gp)
/* 00410298 8FA4003C */  lw    $a0, 0x3c($sp)
/* 0041029C 0320F809 */  jalr  $t9
/* 004102A0 00000000 */   nop   
/* 004102A4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004102A8 14400003 */  bnez  $v0, .L004102B8
/* 004102AC 00401825 */   move  $v1, $v0
/* 004102B0 100000E5 */  b     .L00410648
/* 004102B4 2402FFFF */   li    $v0, -1
.L004102B8:
/* 004102B8 8F848088 */  lw    $a0, %got(B_10023098)($gp)
/* 004102BC 8F998754 */  lw    $t9, %call16(elf64_getshdr)($gp)
/* 004102C0 8C843098 */  lw    $a0, %lo(B_10023098)($a0)
/* 004102C4 0320F809 */  jalr  $t9
/* 004102C8 AFA30034 */   sw    $v1, 0x34($sp)
/* 004102CC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004102D0 8FA30034 */  lw    $v1, 0x34($sp)
/* 004102D4 14400003 */  bnez  $v0, .L004102E4
/* 004102D8 00403025 */   move  $a2, $v0
/* 004102DC 100000DA */  b     .L00410648
/* 004102E0 2402FFFF */   li    $v0, -1
.L004102E4:
/* 004102E4 8F84806C */  lw    $a0, %got(RO_10012544)($gp)
/* 004102E8 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 004102EC AFA30034 */  sw    $v1, 0x34($sp)
/* 004102F0 AFA6002C */  sw    $a2, 0x2c($sp)
/* 004102F4 0320F809 */  jalr  $t9
/* 004102F8 24842544 */   addiu $a0, %lo(RO_10012544) # addiu $a0, $a0, 0x2544
/* 004102FC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410300 240A0002 */  li    $t2, 2
/* 00410304 8F858088 */  lw    $a1, %got(B_100230AC)($gp)
/* 00410308 240C0000 */  li    $t4, 0
/* 0041030C 24A530AC */  addiu $a1, %lo(B_100230AC) # addiu $a1, $a1, 0x30ac
/* 00410310 8CA90000 */  lw    $t1, ($a1)
/* 00410314 240D0000 */  li    $t5, 0
/* 00410318 AD220000 */  sw    $v0, ($t1)
/* 0041031C 8CAB0000 */  lw    $t3, ($a1)
/* 00410320 24180000 */  li    $t8, 0
/* 00410324 AD6A0004 */  sw    $t2, 4($t3)
/* 00410328 8CAE0000 */  lw    $t6, ($a1)
/* 0041032C 24190000 */  li    $t9, 0
/* 00410330 ADCC0008 */  sw    $t4, 8($t6)
/* 00410334 ADCD000C */  sw    $t5, 0xc($t6)
/* 00410338 8CAF0000 */  lw    $t7, ($a1)
/* 0041033C 24090018 */  li    $t1, 24
/* 00410340 ADF80010 */  sw    $t8, 0x10($t7)
/* 00410344 ADF90014 */  sw    $t9, 0x14($t7)
/* 00410348 8CAA0000 */  lw    $t2, ($a1)
/* 0041034C 24080000 */  li    $t0, 0
/* 00410350 8F848088 */  lw    $a0, %got(B_10023098)($gp)
/* 00410354 AD480038 */  sw    $t0, 0x38($t2)
/* 00410358 AD49003C */  sw    $t1, 0x3c($t2)
/* 0041035C 8F998774 */  lw    $t9, %call16(elf_ndxscn)($gp)
/* 00410360 8C843098 */  lw    $a0, %lo(B_10023098)($a0)
/* 00410364 0320F809 */  jalr  $t9
/* 00410368 00000000 */   nop   
/* 0041036C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410370 00000000 */  nop   
/* 00410374 8F858088 */  lw    $a1, %got(B_100230AC)($gp)
/* 00410378 8F84806C */  lw    $a0, %got(RO_1001254C)($gp)
/* 0041037C 24A530AC */  addiu $a1, %lo(B_100230AC) # addiu $a1, $a1, 0x30ac
/* 00410380 8CAB0000 */  lw    $t3, ($a1)
/* 00410384 2484254C */  addiu $a0, %lo(RO_1001254C) # addiu $a0, $a0, 0x254c
/* 00410388 AD620028 */  sw    $v0, 0x28($t3)
/* 0041038C 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 00410390 00000000 */  nop   
/* 00410394 0320F809 */  jalr  $t9
/* 00410398 00000000 */   nop   
/* 0041039C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004103A0 8FA30034 */  lw    $v1, 0x34($sp)
/* 004103A4 240C0003 */  li    $t4, 3
/* 004103A8 240E0000 */  li    $t6, 0
/* 004103AC 240F0000 */  li    $t7, 0
/* 004103B0 24180000 */  li    $t8, 0
/* 004103B4 24190000 */  li    $t9, 0
/* 004103B8 24080000 */  li    $t0, 0
/* 004103BC 24090001 */  li    $t1, 1
/* 004103C0 240A0000 */  li    $t2, 0
/* 004103C4 240B0001 */  li    $t3, 1
/* 004103C8 AC69003C */  sw    $t1, 0x3c($v1)
/* 004103CC AC680038 */  sw    $t0, 0x38($v1)
/* 004103D0 AC790014 */  sw    $t9, 0x14($v1)
/* 004103D4 AC780010 */  sw    $t8, 0x10($v1)
/* 004103D8 AC6F000C */  sw    $t7, 0xc($v1)
/* 004103DC AC6E0008 */  sw    $t6, 8($v1)
/* 004103E0 AC6C0004 */  sw    $t4, 4($v1)
/* 004103E4 AC620000 */  sw    $v0, ($v1)
/* 004103E8 AC6B0034 */  sw    $t3, 0x34($v1)
/* 004103EC AC6A0030 */  sw    $t2, 0x30($v1)
/* 004103F0 8F998774 */  lw    $t9, %call16(elf_ndxscn)($gp)
/* 004103F4 8FA4003C */  lw    $a0, 0x3c($sp)
/* 004103F8 0320F809 */  jalr  $t9
/* 004103FC 00000000 */   nop   
/* 00410400 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410404 00000000 */  nop   
/* 00410408 8F8D8088 */  lw    $t5, %got(B_100230C0)($gp)
/* 0041040C 8F84806C */  lw    $a0, %got(RO_10012558)($gp)
/* 00410410 8DAD30C0 */  lw    $t5, %lo(B_100230C0)($t5)
/* 00410414 24842558 */  addiu $a0, %lo(RO_10012558) # addiu $a0, $a0, 0x2558
/* 00410418 A5A2003E */  sh    $v0, 0x3e($t5)
/* 0041041C 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 00410420 00000000 */  nop   
/* 00410424 0320F809 */  jalr  $t9
/* 00410428 00000000 */   nop   
/* 0041042C 8FA6002C */  lw    $a2, 0x2c($sp)
/* 00410430 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410434 240C0003 */  li    $t4, 3
/* 00410438 240E0000 */  li    $t6, 0
/* 0041043C 240F0000 */  li    $t7, 0
/* 00410440 24180000 */  li    $t8, 0
/* 00410444 24190000 */  li    $t9, 0
/* 00410448 24080000 */  li    $t0, 0
/* 0041044C 24090001 */  li    $t1, 1
/* 00410450 ACC9003C */  sw    $t1, 0x3c($a2)
/* 00410454 ACC80038 */  sw    $t0, 0x38($a2)
/* 00410458 ACD90014 */  sw    $t9, 0x14($a2)
/* 0041045C ACD80010 */  sw    $t8, 0x10($a2)
/* 00410460 ACCF000C */  sw    $t7, 0xc($a2)
/* 00410464 ACCE0008 */  sw    $t6, 8($a2)
/* 00410468 ACCC0004 */  sw    $t4, 4($a2)
/* 0041046C 1000006F */  b     .L0041062C
/* 00410470 ACC20000 */   sw    $v0, ($a2)
.L00410474:
/* 00410474 8F848088 */  lw    $a0, %got(B_100230A0)($gp)
/* 00410478 8F998750 */  lw    $t9, %call16(elf32_getshdr)($gp)
/* 0041047C 8C8430A0 */  lw    $a0, %lo(B_100230A0)($a0)
/* 00410480 0320F809 */  jalr  $t9
/* 00410484 00000000 */   nop   
/* 00410488 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0041048C 00000000 */  nop   
/* 00410490 8F858088 */  lw    $a1, %got(B_100230A8)($gp)
/* 00410494 00000000 */  nop   
/* 00410498 24A530A8 */  addiu $a1, %lo(B_100230A8) # addiu $a1, $a1, 0x30a8
/* 0041049C 14400003 */  bnez  $v0, .L004104AC
/* 004104A0 ACA20000 */   sw    $v0, ($a1)
/* 004104A4 10000068 */  b     .L00410648
/* 004104A8 2402FFFF */   li    $v0, -1
.L004104AC:
/* 004104AC 8F998750 */  lw    $t9, %call16(elf32_getshdr)($gp)
/* 004104B0 8FA4003C */  lw    $a0, 0x3c($sp)
/* 004104B4 0320F809 */  jalr  $t9
/* 004104B8 00000000 */   nop   
/* 004104BC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004104C0 14400003 */  bnez  $v0, .L004104D0
/* 004104C4 00401825 */   move  $v1, $v0
/* 004104C8 1000005F */  b     .L00410648
/* 004104CC 2402FFFF */   li    $v0, -1
.L004104D0:
/* 004104D0 8F848088 */  lw    $a0, %got(B_10023098)($gp)
/* 004104D4 8F998750 */  lw    $t9, %call16(elf32_getshdr)($gp)
/* 004104D8 8C843098 */  lw    $a0, %lo(B_10023098)($a0)
/* 004104DC 0320F809 */  jalr  $t9
/* 004104E0 AFA30038 */   sw    $v1, 0x38($sp)
/* 004104E4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004104E8 8FA30038 */  lw    $v1, 0x38($sp)
/* 004104EC 14400003 */  bnez  $v0, .L004104FC
/* 004104F0 00403025 */   move  $a2, $v0
/* 004104F4 10000054 */  b     .L00410648
/* 004104F8 2402FFFF */   li    $v0, -1
.L004104FC:
/* 004104FC 8F84806C */  lw    $a0, %got(RO_10012560)($gp)
/* 00410500 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 00410504 AFA30038 */  sw    $v1, 0x38($sp)
/* 00410508 AFA60030 */  sw    $a2, 0x30($sp)
/* 0041050C 0320F809 */  jalr  $t9
/* 00410510 24842560 */   addiu $a0, %lo(RO_10012560) # addiu $a0, $a0, 0x2560
/* 00410514 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410518 240D0002 */  li    $t5, 2
/* 0041051C 8F858088 */  lw    $a1, %got(B_100230A8)($gp)
/* 00410520 24180010 */  li    $t8, 16
/* 00410524 24A530A8 */  addiu $a1, %lo(B_100230A8) # addiu $a1, $a1, 0x30a8
/* 00410528 8CAB0000 */  lw    $t3, ($a1)
/* 0041052C 8F848088 */  lw    $a0, %got(B_10023098)($gp)
/* 00410530 AD620000 */  sw    $v0, ($t3)
/* 00410534 8CAC0000 */  lw    $t4, ($a1)
/* 00410538 00000000 */  nop   
/* 0041053C AD8D0004 */  sw    $t5, 4($t4)
/* 00410540 8CAE0000 */  lw    $t6, ($a1)
/* 00410544 00000000 */  nop   
/* 00410548 ADC00008 */  sw    $zero, 8($t6)
/* 0041054C 8CAF0000 */  lw    $t7, ($a1)
/* 00410550 00000000 */  nop   
/* 00410554 ADE0000C */  sw    $zero, 0xc($t7)
/* 00410558 8CB90000 */  lw    $t9, ($a1)
/* 0041055C 00000000 */  nop   
/* 00410560 AF380024 */  sw    $t8, 0x24($t9)
/* 00410564 8F998774 */  lw    $t9, %call16(elf_ndxscn)($gp)
/* 00410568 8C843098 */  lw    $a0, %lo(B_10023098)($a0)
/* 0041056C 0320F809 */  jalr  $t9
/* 00410570 00000000 */   nop   
/* 00410574 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410578 00000000 */  nop   
/* 0041057C 8F858088 */  lw    $a1, %got(B_100230A8)($gp)
/* 00410580 8F84806C */  lw    $a0, %got(RO_10012568)($gp)
/* 00410584 24A530A8 */  addiu $a1, %lo(B_100230A8) # addiu $a1, $a1, 0x30a8
/* 00410588 8CA80000 */  lw    $t0, ($a1)
/* 0041058C 24842568 */  addiu $a0, %lo(RO_10012568) # addiu $a0, $a0, 0x2568
/* 00410590 AD020018 */  sw    $v0, 0x18($t0)
/* 00410594 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 00410598 00000000 */  nop   
/* 0041059C 0320F809 */  jalr  $t9
/* 004105A0 00000000 */   nop   
/* 004105A4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004105A8 8FA30038 */  lw    $v1, 0x38($sp)
/* 004105AC 24050001 */  li    $a1, 1
/* 004105B0 24090003 */  li    $t1, 3
/* 004105B4 AC690004 */  sw    $t1, 4($v1)
/* 004105B8 AC650024 */  sw    $a1, 0x24($v1)
/* 004105BC AC620000 */  sw    $v0, ($v1)
/* 004105C0 AC600008 */  sw    $zero, 8($v1)
/* 004105C4 AC60000C */  sw    $zero, 0xc($v1)
/* 004105C8 AC650020 */  sw    $a1, 0x20($v1)
/* 004105CC 8F998774 */  lw    $t9, %call16(elf_ndxscn)($gp)
/* 004105D0 8FA4003C */  lw    $a0, 0x3c($sp)
/* 004105D4 0320F809 */  jalr  $t9
/* 004105D8 00000000 */   nop   
/* 004105DC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004105E0 00000000 */  nop   
/* 004105E4 8F8A8088 */  lw    $t2, %got(B_100230BC)($gp)
/* 004105E8 8F84806C */  lw    $a0, %got(RO_10012574)($gp)
/* 004105EC 8D4A30BC */  lw    $t2, %lo(B_100230BC)($t2)
/* 004105F0 24842574 */  addiu $a0, %lo(RO_10012574) # addiu $a0, $a0, 0x2574
/* 004105F4 A5420032 */  sh    $v0, 0x32($t2)
/* 004105F8 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 004105FC 00000000 */  nop   
/* 00410600 0320F809 */  jalr  $t9
/* 00410604 00000000 */   nop   
/* 00410608 8FA60030 */  lw    $a2, 0x30($sp)
/* 0041060C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410610 240B0003 */  li    $t3, 3
/* 00410614 240D0001 */  li    $t5, 1
/* 00410618 ACCD0024 */  sw    $t5, 0x24($a2)
/* 0041061C ACCB0004 */  sw    $t3, 4($a2)
/* 00410620 ACC0000C */  sw    $zero, 0xc($a2)
/* 00410624 ACC00008 */  sw    $zero, 8($a2)
/* 00410628 ACC20000 */  sw    $v0, ($a2)
.L0041062C:
/* 0041062C 8F998018 */  lw    $t9, %got(func_0040DFB8)($gp)
/* 00410630 00000000 */  nop   
/* 00410634 2739DFB8 */  addiu $t9, %lo(func_0040DFB8) # addiu $t9, $t9, -0x2048
/* 00410638 0320F809 */  jalr  $t9
/* 0041063C 00000000 */   nop   
/* 00410640 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410644 00001025 */  move  $v0, $zero
.L00410648:
/* 00410648 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0041064C 27BD0048 */  addiu $sp, $sp, 0x48
/* 00410650 03E00008 */  jr    $ra
/* 00410654 00000000 */   nop   

    .type elf_st_sechdr, @function
    .size elf_st_sechdr, .-elf_st_sechdr
    .end elf_st_sechdr

glabel elf_st_update
    .ent elf_st_update
    # 0043ECB8 wrelfobj
/* 00410658 3C1C0FC2 */  .cpload $t9
/* 0041065C 279C9C08 */  
/* 00410660 0399E021 */  
/* 00410664 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 00410668 8F998778 */  lw    $t9, %call16(elf_update)($gp)
/* 0041066C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00410670 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00410674 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 00410678 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0041067C 0320F809 */  jalr  $t9
/* 00410680 24050002 */   li    $a1, 2
/* 00410684 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00410688 10400009 */  beqz  $v0, .L004106B0
/* 0041068C 00000000 */   nop   
/* 00410690 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 00410694 8F99877C */  lw    $t9, %call16(elf_end)($gp)
/* 00410698 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 0041069C 0320F809 */  jalr  $t9
/* 004106A0 00000000 */   nop   
/* 004106A4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004106A8 14400004 */  bnez  $v0, .L004106BC
/* 004106AC 00001025 */   move  $v0, $zero
.L004106B0:
/* 004106B0 10000002 */  b     .L004106BC
/* 004106B4 2402FFFF */   li    $v0, -1
/* 004106B8 00001025 */  move  $v0, $zero
.L004106BC:
/* 004106BC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 004106C0 27BD0020 */  addiu $sp, $sp, 0x20
/* 004106C4 03E00008 */  jr    $ra
/* 004106C8 00000000 */   nop   

    .type elf_st_update, @function
    .size elf_st_update, .-elf_st_update
    .end elf_st_update

glabel gen_elf_scnhdr
    .ent gen_elf_scnhdr
    # 0044C7E4 func_0044C7E4
/* 004106CC 3C1C0FC2 */  .cpload $t9
/* 004106D0 279C9B94 */  
/* 004106D4 0399E021 */  
/* 004106D8 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 004106DC 8F8F8B24 */  lw     $t7, %got(st_pchdr)($gp)
/* 004106E0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 004106E4 8DEF0000 */  lw    $t7, ($t7)
/* 004106E8 AFBC0018 */  sw    $gp, 0x18($sp)
/* 004106EC AFA400A8 */  sw    $a0, 0xa8($sp)
/* 004106F0 AFA500AC */  sw    $a1, 0xac($sp)
/* 004106F4 AFA600B0 */  sw    $a2, 0xb0($sp)
/* 004106F8 27AE0048 */  addiu $t6, $sp, 0x48
/* 004106FC 25E90060 */  addiu $t1, $t7, 0x60
.L00410700:
/* 00410700 8DE1005C */  lw    $at, 0x5c($t7)
/* 00410704 25EF000C */  addiu $t7, $t7, 0xc
/* 00410708 ADC10000 */  sw    $at, ($t6)
/* 0041070C 8DE10054 */  lw    $at, 0x54($t7)
/* 00410710 25CE000C */  addiu $t6, $t6, 0xc
/* 00410714 ADC1FFF8 */  sw    $at, -8($t6)
/* 00410718 8DE10058 */  lw    $at, 0x58($t7)
/* 0041071C 15E9FFF8 */  bne   $t7, $t1, .L00410700
/* 00410720 ADC1FFFC */   sw    $at, -4($t6)
/* 00410724 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 00410728 8FAA00A0 */  lw    $t2, 0xa0($sp)
/* 0041072C 8F818088 */  lw    $at, %got(B_100230B0)($gp)
/* 00410730 8F99876C */  lw    $t9, %call16(elf_newscn)($gp)
/* 00410734 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 00410738 0320F809 */  jalr  $t9
/* 0041073C AC2A30B0 */   sw    $t2, %lo(B_100230B0)($at)
/* 00410740 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00410744 00402025 */  move  $a0, $v0
/* 00410748 8F838088 */  lw    $v1, %got(B_10023064)($gp)
/* 0041074C 00000000 */  nop   
/* 00410750 24633064 */  addiu $v1, %lo(B_10023064) # addiu $v1, $v1, 0x3064
/* 00410754 1040000C */  beqz  $v0, .L00410788
/* 00410758 AC620000 */   sw    $v0, ($v1)
/* 0041075C 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00410760 00000000 */  nop   
/* 00410764 0320F809 */  jalr  $t9
/* 00410768 00000000 */   nop   
/* 0041076C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00410770 24060008 */  li    $a2, 8
/* 00410774 8F838088 */  lw    $v1, %got(B_10023060)($gp)
/* 00410778 00000000 */  nop   
/* 0041077C 24633060 */  addiu $v1, %lo(B_10023060) # addiu $v1, $v1, 0x3060
/* 00410780 14400003 */  bnez  $v0, .L00410790
/* 00410784 AC620000 */   sw    $v0, ($v1)
.L00410788:
/* 00410788 100000EA */  b     .L00410B34
/* 0041078C 2402FFFF */   li    $v0, -1
.L00410790:
/* 00410790 8F85806C */  lw    $a1, %got(RO_1001257C)($gp)
/* 00410794 8F9980D4 */  lw    $t9, %call16(strncmp)($gp)
/* 00410798 8FA400AC */  lw    $a0, 0xac($sp)
/* 0041079C 0320F809 */  jalr  $t9
/* 004107A0 24A5257C */   addiu $a1, %lo(RO_1001257C) # addiu $a1, $a1, 0x257c
/* 004107A4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004107A8 10400009 */  beqz  $v0, .L004107D0
/* 004107AC 24060008 */   li    $a2, 8
/* 004107B0 8F85806C */  lw    $a1, %got(RO_10012584)($gp)
/* 004107B4 8F9980D4 */  lw    $t9, %call16(strncmp)($gp)
/* 004107B8 8FA400AC */  lw    $a0, 0xac($sp)
/* 004107BC 0320F809 */  jalr  $t9
/* 004107C0 24A52584 */   addiu $a1, %lo(RO_10012584) # addiu $a1, $a1, 0x2584
/* 004107C4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004107C8 14400003 */  bnez  $v0, .L004107D8
/* 004107CC 24070001 */   li    $a3, 1
.L004107D0:
/* 004107D0 10000001 */  b     .L004107D8
/* 004107D4 24070008 */   li    $a3, 8
.L004107D8:
/* 004107D8 8F8C8B28 */  lw     $t4, %got(sixtyfour_bit)($gp)
/* 004107DC 00000000 */  nop   
/* 004107E0 918C0000 */  lbu   $t4, ($t4)
/* 004107E4 00000000 */  nop   
/* 004107E8 11800025 */  beqz  $t4, .L00410880
/* 004107EC 00000000 */   nop   
/* 004107F0 8F848088 */  lw    $a0, %got(B_10023064)($gp)
/* 004107F4 8F998754 */  lw    $t9, %call16(elf64_getshdr)($gp)
/* 004107F8 8C843064 */  lw    $a0, %lo(B_10023064)($a0)
/* 004107FC 0320F809 */  jalr  $t9
/* 00410800 AFA70030 */   sw    $a3, 0x30($sp)
/* 00410804 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00410808 8FA70030 */  lw    $a3, 0x30($sp)
/* 0041080C 14400003 */  bnez  $v0, .L0041081C
/* 00410810 00402825 */   move  $a1, $v0
/* 00410814 100000C7 */  b     .L00410B34
/* 00410818 2402FFFF */   li    $v0, -1
.L0041081C:
/* 0041081C 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 00410820 8FA400AC */  lw    $a0, 0xac($sp)
/* 00410824 AFA50024 */  sw    $a1, 0x24($sp)
/* 00410828 0320F809 */  jalr  $t9
/* 0041082C AFA70030 */   sw    $a3, 0x30($sp)
/* 00410830 8FA50024 */  lw    $a1, 0x24($sp)
/* 00410834 8FA70030 */  lw    $a3, 0x30($sp)
/* 00410838 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0041083C 24180000 */  li    $t8, 0
/* 00410840 24190000 */  li    $t9, 0
/* 00410844 240E0000 */  li    $t6, 0
/* 00410848 240F0000 */  li    $t7, 0
/* 0041084C 240A0000 */  li    $t2, 0
/* 00410850 240B0001 */  li    $t3, 1
/* 00410854 ACAB003C */  sw    $t3, 0x3c($a1)
/* 00410858 ACAA0038 */  sw    $t2, 0x38($a1)
/* 0041085C ACAF0014 */  sw    $t7, 0x14($a1)
/* 00410860 ACAE0010 */  sw    $t6, 0x10($a1)
/* 00410864 ACB9000C */  sw    $t9, 0xc($a1)
/* 00410868 ACB80008 */  sw    $t8, 8($a1)
/* 0041086C ACA20000 */  sw    $v0, ($a1)
/* 00410870 ACA70004 */  sw    $a3, 4($a1)
/* 00410874 8FA60028 */  lw    $a2, 0x28($sp)
/* 00410878 1000001D */  b     .L004108F0
/* 0041087C 8FA800AC */   lw    $t0, 0xac($sp)
.L00410880:
/* 00410880 8F848088 */  lw    $a0, %got(B_10023064)($gp)
/* 00410884 8F998750 */  lw    $t9, %call16(elf32_getshdr)($gp)
/* 00410888 8C843064 */  lw    $a0, %lo(B_10023064)($a0)
/* 0041088C 0320F809 */  jalr  $t9
/* 00410890 AFA70030 */   sw    $a3, 0x30($sp)
/* 00410894 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00410898 8FA70030 */  lw    $a3, 0x30($sp)
/* 0041089C 14400003 */  bnez  $v0, .L004108AC
/* 004108A0 00403025 */   move  $a2, $v0
/* 004108A4 100000A3 */  b     .L00410B34
/* 004108A8 2402FFFF */   li    $v0, -1
.L004108AC:
/* 004108AC 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 004108B0 8FA400AC */  lw    $a0, 0xac($sp)
/* 004108B4 AFA60028 */  sw    $a2, 0x28($sp)
/* 004108B8 0320F809 */  jalr  $t9
/* 004108BC AFA70030 */   sw    $a3, 0x30($sp)
/* 004108C0 8FA60028 */  lw    $a2, 0x28($sp)
/* 004108C4 8FA70030 */  lw    $a3, 0x30($sp)
/* 004108C8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004108CC 240D0001 */  li    $t5, 1
/* 004108D0 ACCD0024 */  sw    $t5, 0x24($a2)
/* 004108D4 ACC0000C */  sw    $zero, 0xc($a2)
/* 004108D8 ACC00008 */  sw    $zero, 8($a2)
/* 004108DC ACC20000 */  sw    $v0, ($a2)
/* 004108E0 ACC70004 */  sw    $a3, 4($a2)
/* 004108E4 8FA50024 */  lw    $a1, 0x24($sp)
/* 004108E8 00000000 */  nop   
/* 004108EC 8FA800AC */  lw    $t0, 0xac($sp)
.L004108F0:
/* 004108F0 00001025 */  move  $v0, $zero
/* 004108F4 8D030024 */  lw    $v1, 0x24($t0)
/* 004108F8 00000000 */  nop   
/* 004108FC 00034840 */  sll   $t1, $v1, 1
/* 00410900 05210020 */  bgez  $t1, .L00410984
/* 00410904 306E0080 */   andi  $t6, $v1, 0x80
/* 00410908 8F8C8B28 */  lw     $t4, %got(sixtyfour_bit)($gp)
/* 0041090C 2418000A */  li    $t8, 10
/* 00410910 918C0000 */  lbu   $t4, ($t4)
/* 00410914 00000000 */  nop   
/* 00410918 11800010 */  beqz  $t4, .L0041095C
/* 0041091C 00000000 */   nop   
/* 00410920 8CAE0018 */  lw    $t6, 0x18($a1)
/* 00410924 8CAF001C */  lw    $t7, 0x1c($a1)
/* 00410928 15C00082 */  bnez  $t6, .L00410B34
/* 0041092C ACB80004 */   sw    $t8, 4($a1)
/* 00410930 15E00081 */  bnez  $t7, .L00410B38
/* 00410934 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00410938 8CAA0020 */  lw    $t2, 0x20($a1)
/* 0041093C 8CAB0024 */  lw    $t3, 0x24($a1)
/* 00410940 15400003 */  bnez  $t2, .L00410950
/* 00410944 00000000 */   nop   
/* 00410948 1160007B */  beqz  $t3, .L00410B38
/* 0041094C 8FBF001C */   lw    $ra, 0x1c($sp)
.L00410950:
/* 00410950 24190008 */  li    $t9, 8
/* 00410954 10000077 */  b     .L00410B34
/* 00410958 ACB90004 */   sw    $t9, 4($a1)
.L0041095C:
/* 0041095C 8CC90010 */  lw    $t1, 0x10($a2)
/* 00410960 240D000A */  li    $t5, 10
/* 00410964 15200073 */  bnez  $t1, .L00410B34
/* 00410968 ACCD0004 */   sw    $t5, 4($a2)
/* 0041096C 8CCC0014 */  lw    $t4, 0x14($a2)
/* 00410970 24180008 */  li    $t8, 8
/* 00410974 11800070 */  beqz  $t4, .L00410B38
/* 00410978 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0041097C 1000006D */  b     .L00410B34
/* 00410980 ACD80004 */   sw    $t8, 4($a2)
.L00410984:
/* 00410984 15C00003 */  bnez  $t6, .L00410994
/* 00410988 30790020 */   andi  $t9, $v1, 0x20
/* 0041098C 306F0400 */  andi  $t7, $v1, 0x400
/* 00410990 11E00007 */  beqz  $t7, .L004109B0
.L00410994:
/* 00410994 306A0400 */   andi  $t2, $v1, 0x400
/* 00410998 24070008 */  li    $a3, 8
/* 0041099C 11400004 */  beqz  $t2, .L004109B0
/* 004109A0 24020003 */   li    $v0, 3
/* 004109A4 3C011000 */  lui   $at, 0x1000
/* 004109A8 00415825 */  or    $t3, $v0, $at
/* 004109AC 01601025 */  move  $v0, $t3
.L004109B0:
/* 004109B0 17200003 */  bnez  $t9, .L004109C0
/* 004109B4 306C0040 */   andi  $t4, $v1, 0x40
/* 004109B8 00036800 */  sll   $t5, $v1, 0
/* 004109BC 05A10003 */  bgez  $t5, .L004109CC
.L004109C0:
/* 004109C0 34490006 */   ori   $t1, $v0, 6
/* 004109C4 24070001 */  li    $a3, 1
/* 004109C8 01201025 */  move  $v0, $t1
.L004109CC:
/* 004109CC 15800003 */  bnez  $t4, .L004109DC
/* 004109D0 000350C0 */   sll   $t2, $v1, 3
/* 004109D4 30640200 */  andi  $a0, $v1, 0x200
/* 004109D8 10800004 */  beqz  $a0, .L004109EC
.L004109DC:
/* 004109DC 34580003 */   ori   $t8, $v0, 3
/* 004109E0 24070001 */  li    $a3, 1
/* 004109E4 03001025 */  move  $v0, $t8
/* 004109E8 30640200 */  andi  $a0, $v1, 0x200
.L004109EC:
/* 004109EC 10800005 */  beqz  $a0, .L00410A04
/* 004109F0 306C0003 */   andi  $t4, $v1, 3
/* 004109F4 3C011000 */  lui   $at, 0x1000
/* 004109F8 00417025 */  or    $t6, $v0, $at
/* 004109FC 24070001 */  li    $a3, 1
/* 00410A00 01C01025 */  move  $v0, $t6
.L00410A04:
/* 00410A04 30640100 */  andi  $a0, $v1, 0x100
/* 00410A08 10800003 */  beqz  $a0, .L00410A18
/* 00410A0C 344F0002 */   ori   $t7, $v0, 2
/* 00410A10 24070001 */  li    $a3, 1
/* 00410A14 01E01025 */  move  $v0, $t7
.L00410A18:
/* 00410A18 05400004 */  bltz  $t2, .L00410A2C
/* 00410A1C 00035900 */   sll   $t3, $v1, 4
/* 00410A20 05600003 */  bltz  $t3, .L00410A30
/* 00410A24 3C011800 */   lui   $at, 0x1800
/* 00410A28 10800009 */  beqz  $a0, .L00410A50
.L00410A2C:
/* 00410A2C 3C011800 */   lui   $at, 0x1800
.L00410A30:
/* 00410A30 34590002 */  ori   $t9, $v0, 2
/* 00410A34 00616824 */  and   $t5, $v1, $at
/* 00410A38 24070001 */  li    $a3, 1
/* 00410A3C 11A00004 */  beqz  $t5, .L00410A50
/* 00410A40 03201025 */   move  $v0, $t9
/* 00410A44 3C011000 */  lui   $at, 0x1000
/* 00410A48 34210001 */  ori   $at, $at, 1
/* 00410A4C 03211025 */  or    $v0, $t9, $at
.L00410A50:
/* 00410A50 11800004 */  beqz  $t4, .L00410A64
/* 00410A54 2401FFFD */   li    $at, -3
/* 00410A58 0041C024 */  and   $t8, $v0, $at
/* 00410A5C 24070008 */  li    $a3, 8
/* 00410A60 03001025 */  move  $v0, $t8
.L00410A64:
/* 00410A64 8F8E8B28 */  lw     $t6, %got(sixtyfour_bit)($gp)
/* 00410A68 24180000 */  li    $t8, 0
/* 00410A6C 91CE0000 */  lbu   $t6, ($t6)
/* 00410A70 304F0002 */  andi  $t7, $v0, 2
/* 00410A74 11C0001D */  beqz  $t6, .L00410AEC
/* 00410A78 30590002 */   andi  $t9, $v0, 2
/* 00410A7C 8CAA0018 */  lw    $t2, 0x18($a1)
/* 00410A80 8CAB001C */  lw    $t3, 0x1c($a1)
/* 00410A84 1540000A */  bnez  $t2, .L00410AB0
/* 00410A88 0040C825 */   move  $t9, $v0
/* 00410A8C 15600008 */  bnez  $t3, .L00410AB0
/* 00410A90 00000000 */   nop   
/* 00410A94 8CAC0020 */  lw    $t4, 0x20($a1)
/* 00410A98 8CAD0024 */  lw    $t5, 0x24($a1)
/* 00410A9C 15800003 */  bnez  $t4, .L00410AAC
/* 00410AA0 00000000 */   nop   
/* 00410AA4 11A00002 */  beqz  $t5, .L00410AB0
/* 00410AA8 00000000 */   nop   
.L00410AAC:
/* 00410AAC 24070008 */  li    $a3, 8
.L00410AB0:
/* 00410AB0 ACA70004 */  sw    $a3, 4($a1)
/* 00410AB4 ACB80008 */  sw    $t8, 8($a1)
/* 00410AB8 11E0001E */  beqz  $t7, .L00410B34
/* 00410ABC ACA2000C */   sw    $v0, 0xc($a1)
/* 00410AC0 8D090010 */  lw    $t1, 0x10($t0)
/* 00410AC4 00000000 */  nop   
/* 00410AC8 000977C3 */  sra   $t6, $t1, 0x1f
/* 00410ACC ACAE0020 */  sw    $t6, 0x20($a1)
/* 00410AD0 ACA90024 */  sw    $t1, 0x24($a1)
/* 00410AD4 8D0A000C */  lw    $t2, 0xc($t0)
/* 00410AD8 00000000 */  nop   
/* 00410ADC 000A67C3 */  sra   $t4, $t2, 0x1f
/* 00410AE0 ACAC0010 */  sw    $t4, 0x10($a1)
/* 00410AE4 10000013 */  b     .L00410B34
/* 00410AE8 ACAA0014 */   sw    $t2, 0x14($a1)
.L00410AEC:
/* 00410AEC 8CCB0010 */  lw    $t3, 0x10($a2)
/* 00410AF0 00000000 */  nop   
/* 00410AF4 15600006 */  bnez  $t3, .L00410B10
/* 00410AF8 00000000 */   nop   
/* 00410AFC 8CD80014 */  lw    $t8, 0x14($a2)
/* 00410B00 00000000 */  nop   
/* 00410B04 13000002 */  beqz  $t8, .L00410B10
/* 00410B08 00000000 */   nop   
/* 00410B0C 24070008 */  li    $a3, 8
.L00410B10:
/* 00410B10 ACC70004 */  sw    $a3, 4($a2)
/* 00410B14 13200007 */  beqz  $t9, .L00410B34
/* 00410B18 ACC20008 */   sw    $v0, 8($a2)
/* 00410B1C 8D090010 */  lw    $t1, 0x10($t0)
/* 00410B20 00000000 */  nop   
/* 00410B24 ACC90014 */  sw    $t1, 0x14($a2)
/* 00410B28 8D0E000C */  lw    $t6, 0xc($t0)
/* 00410B2C 00000000 */  nop   
/* 00410B30 ACCE000C */  sw    $t6, 0xc($a2)
.L00410B34:
/* 00410B34 8FBF001C */  lw    $ra, 0x1c($sp)
.L00410B38:
/* 00410B38 27BD00A8 */  addiu $sp, $sp, 0xa8
/* 00410B3C 03E00008 */  jr    $ra
/* 00410B40 00000000 */   nop   

    .type gen_elf_scnhdr, @function
    .size gen_elf_scnhdr, .-gen_elf_scnhdr
    .end gen_elf_scnhdr

glabel aself_st_wrsection
    .ent aself_st_wrsection
    # 0043EBB4 func_0043EBB4
/* 00410B44 3C1C0FC2 */  .cpload $t9
/* 00410B48 279C971C */  
/* 00410B4C 0399E021 */  
/* 00410B50 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00410B54 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00410B58 AFBC0020 */  sw    $gp, 0x20($sp)
/* 00410B5C AFA5002C */  sw    $a1, 0x2c($sp)
/* 00410B60 10800003 */  beqz  $a0, .L00410B70
/* 00410B64 AFA60030 */   sw    $a2, 0x30($sp)
/* 00410B68 10000003 */  b     .L00410B78
/* 00410B6C 00002825 */   move  $a1, $zero
.L00410B70:
/* 00410B70 8FA5002C */  lw    $a1, 0x2c($sp)
/* 00410B74 00000000 */  nop   
.L00410B78:
/* 00410B78 2CE10011 */  sltiu $at, $a3, 0x11
/* 00410B7C 14200003 */  bnez  $at, .L00410B8C
/* 00410B80 00003025 */   move  $a2, $zero
/* 00410B84 10000002 */  b     .L00410B90
/* 00410B88 00E01025 */   move  $v0, $a3
.L00410B8C:
/* 00410B8C 24020010 */  li    $v0, 16
.L00410B90:
/* 00410B90 8F848088 */  lw    $a0, %got(B_10023060)($gp)
/* 00410B94 8F998018 */  lw    $t9, %got(func_0040DE5C)($gp)
/* 00410B98 8FA70030 */  lw    $a3, 0x30($sp)
/* 00410B9C 8C843060 */  lw    $a0, %lo(B_10023060)($a0)
/* 00410BA0 2739DE5C */  addiu $t9, %lo(func_0040DE5C) # addiu $t9, $t9, -0x21a4
/* 00410BA4 0320F809 */  jalr  $t9
/* 00410BA8 AFA20010 */   sw    $v0, 0x10($sp)
/* 00410BAC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 00410BB0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410BB4 27BD0028 */  addiu $sp, $sp, 0x28
/* 00410BB8 03E00008 */  jr    $ra
/* 00410BBC 24020001 */   li    $v0, 1

    .type aself_st_wrsection, @function
    .size aself_st_wrsection, .-aself_st_wrsection
    .end aself_st_wrsection

    .type func_00410BC0, @function
func_00410BC0:
    # 00410D64 func_00410D64
/* 00410BC0 3C1C0FC2 */  .cpload $t9
/* 00410BC4 279C96A0 */  
/* 00410BC8 0399E021 */  
/* 00410BCC 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 00410BD0 8F99876C */  lw    $t9, %call16(elf_newscn)($gp)
/* 00410BD4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 00410BD8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00410BDC 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 00410BE0 0320F809 */  jalr  $t9
/* 00410BE4 AFBC0020 */   sw    $gp, 0x20($sp)
/* 00410BE8 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410BEC 1040000C */  beqz  $v0, .L00410C20
/* 00410BF0 00402025 */   move  $a0, $v0
/* 00410BF4 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00410BF8 AFA2002C */  sw    $v0, 0x2c($sp)
/* 00410BFC 0320F809 */  jalr  $t9
/* 00410C00 00000000 */   nop   
/* 00410C04 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410C08 8FA4002C */  lw    $a0, 0x2c($sp)
/* 00410C0C 8F838088 */  lw    $v1, %got(B_100230E0)($gp)
/* 00410C10 00000000 */  nop   
/* 00410C14 246330E0 */  addiu $v1, %lo(B_100230E0) # addiu $v1, $v1, 0x30e0
/* 00410C18 14400003 */  bnez  $v0, .L00410C28
/* 00410C1C AC620000 */   sw    $v0, ($v1)
.L00410C20:
/* 00410C20 1000004C */  b     .L00410D54
/* 00410C24 2402FFFF */   li    $v0, -1
.L00410C28:
/* 00410C28 8F8F8B28 */  lw     $t7, %got(sixtyfour_bit)($gp)
/* 00410C2C 00000000 */  nop   
/* 00410C30 91EF0000 */  lbu   $t7, ($t7)
/* 00410C34 00000000 */  nop   
/* 00410C38 11E00022 */  beqz  $t7, .L00410CC4
/* 00410C3C 00000000 */   nop   
/* 00410C40 8F998754 */  lw    $t9, %call16(elf64_getshdr)($gp)
/* 00410C44 00000000 */  nop   
/* 00410C48 0320F809 */  jalr  $t9
/* 00410C4C 00000000 */   nop   
/* 00410C50 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410C54 14400003 */  bnez  $v0, .L00410C64
/* 00410C58 00401825 */   move  $v1, $v0
/* 00410C5C 1000003D */  b     .L00410D54
/* 00410C60 2402FFFF */   li    $v0, -1
.L00410C64:
/* 00410C64 8F84806C */  lw    $a0, %got(RO_1001258C)($gp)
/* 00410C68 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 00410C6C AFA30030 */  sw    $v1, 0x30($sp)
/* 00410C70 0320F809 */  jalr  $t9
/* 00410C74 2484258C */   addiu $a0, %lo(RO_1001258C) # addiu $a0, $a0, 0x258c
/* 00410C78 8FA30030 */  lw    $v1, 0x30($sp)
/* 00410C7C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410C80 3C187000 */  lui   $t8, 0x7000
/* 00410C84 3718000D */  ori   $t8, $t8, 0xd
/* 00410C88 24080000 */  li    $t0, 0
/* 00410C8C 24090000 */  li    $t1, 0
/* 00410C90 240A0000 */  li    $t2, 0
/* 00410C94 240B0000 */  li    $t3, 0
/* 00410C98 240C0000 */  li    $t4, 0
/* 00410C9C 240D0001 */  li    $t5, 1
/* 00410CA0 AC6D003C */  sw    $t5, 0x3c($v1)
/* 00410CA4 AC6C0038 */  sw    $t4, 0x38($v1)
/* 00410CA8 AC6B0014 */  sw    $t3, 0x14($v1)
/* 00410CAC AC6A0010 */  sw    $t2, 0x10($v1)
/* 00410CB0 AC69000C */  sw    $t1, 0xc($v1)
/* 00410CB4 AC680008 */  sw    $t0, 8($v1)
/* 00410CB8 AC780004 */  sw    $t8, 4($v1)
/* 00410CBC 10000019 */  b     .L00410D24
/* 00410CC0 AC620000 */   sw    $v0, ($v1)
.L00410CC4:
/* 00410CC4 8F998750 */  lw    $t9, %call16(elf32_getshdr)($gp)
/* 00410CC8 00000000 */  nop   
/* 00410CCC 0320F809 */  jalr  $t9
/* 00410CD0 00000000 */   nop   
/* 00410CD4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410CD8 14400003 */  bnez  $v0, .L00410CE8
/* 00410CDC 00401825 */   move  $v1, $v0
/* 00410CE0 1000001C */  b     .L00410D54
/* 00410CE4 2402FFFF */   li    $v0, -1
.L00410CE8:
/* 00410CE8 8F84806C */  lw    $a0, %got(RO_10012598)($gp)
/* 00410CEC 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 00410CF0 AFA30034 */  sw    $v1, 0x34($sp)
/* 00410CF4 0320F809 */  jalr  $t9
/* 00410CF8 24842598 */   addiu $a0, %lo(RO_10012598) # addiu $a0, $a0, 0x2598
/* 00410CFC 8FA30034 */  lw    $v1, 0x34($sp)
/* 00410D00 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410D04 3C197000 */  lui   $t9, 0x7000
/* 00410D08 3739000D */  ori   $t9, $t9, 0xd
/* 00410D0C 240E0001 */  li    $t6, 1
/* 00410D10 AC6E0024 */  sw    $t6, 0x24($v1)
/* 00410D14 AC790004 */  sw    $t9, 4($v1)
/* 00410D18 AC60000C */  sw    $zero, 0xc($v1)
/* 00410D1C AC600008 */  sw    $zero, 8($v1)
/* 00410D20 AC620000 */  sw    $v0, ($v1)
.L00410D24:
/* 00410D24 8F848088 */  lw    $a0, %got(B_100230E0)($gp)
/* 00410D28 8F998018 */  lw    $t9, %got(func_0040DE5C)($gp)
/* 00410D2C 240F0008 */  li    $t7, 8
/* 00410D30 8C8430E0 */  lw    $a0, %lo(B_100230E0)($a0)
/* 00410D34 2739DE5C */  addiu $t9, %lo(func_0040DE5C) # addiu $t9, $t9, -0x21a4
/* 00410D38 AFAF0010 */  sw    $t7, 0x10($sp)
/* 00410D3C 00002825 */  move  $a1, $zero
/* 00410D40 00003025 */  move  $a2, $zero
/* 00410D44 0320F809 */  jalr  $t9
/* 00410D48 00003825 */   move  $a3, $zero
/* 00410D4C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410D50 00000000 */  nop   
.L00410D54:
/* 00410D54 8FBF0024 */  lw    $ra, 0x24($sp)
/* 00410D58 27BD0038 */  addiu $sp, $sp, 0x38
/* 00410D5C 03E00008 */  jr    $ra
/* 00410D60 00000000 */   nop   

    .type func_00410D64, @function
func_00410D64:
    # 00410F2C aself_st_wrreginfo
/* 00410D64 3C1C0FC2 */  .cpload $t9
/* 00410D68 279C94FC */  
/* 00410D6C 0399E021 */  
/* 00410D70 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 00410D74 8F838088 */  lw    $v1, %got(B_100230E0)($gp)
/* 00410D78 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00410D7C 8C6330E0 */  lw    $v1, %lo(B_100230E0)($v1)
/* 00410D80 AFBC0020 */  sw    $gp, 0x20($sp)
/* 00410D84 AFB1001C */  sw    $s1, 0x1c($sp)
/* 00410D88 AFB00018 */  sw    $s0, 0x18($sp)
/* 00410D8C AFA40058 */  sw    $a0, 0x58($sp)
/* 00410D90 AFA5005C */  sw    $a1, 0x5c($sp)
/* 00410D94 AFA60060 */  sw    $a2, 0x60($sp)
/* 00410D98 1460000C */  bnez  $v1, .L00410DCC
/* 00410D9C AFA70064 */   sw    $a3, 0x64($sp)
/* 00410DA0 8F998018 */  lw    $t9, %got(func_00410BC0)($gp)
/* 00410DA4 00000000 */  nop   
/* 00410DA8 27390BC0 */  addiu $t9, %lo(func_00410BC0) # addiu $t9, $t9, 0xbc0
/* 00410DAC 0320F809 */  jalr  $t9
/* 00410DB0 00000000 */   nop   
/* 00410DB4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410DB8 00000000 */  nop   
/* 00410DBC 8F838088 */  lw    $v1, %got(B_100230E0)($gp)
/* 00410DC0 00000000 */  nop   
/* 00410DC4 8C6330E0 */  lw    $v1, %lo(B_100230E0)($v1)
/* 00410DC8 00000000 */  nop   
.L00410DCC:
/* 00410DCC 93AF005F */  lbu   $t7, 0x5f($sp)
/* 00410DD0 2419FFF8 */  li    $t9, -8
/* 00410DD4 8C6E0008 */  lw    $t6, 8($v1)
/* 00410DD8 8C700000 */  lw    $s0, ($v1)
/* 00410DDC 032F4023 */  subu  $t0, $t9, $t7
/* 00410DE0 25F8000F */  addiu $t8, $t7, 0xf
/* 00410DE4 03088824 */  and   $s1, $t8, $t0
/* 00410DE8 2E210100 */  sltiu $at, $s1, 0x100
/* 00410DEC AFAF0034 */  sw    $t7, 0x34($sp)
/* 00410DF0 AFAF0038 */  sw    $t7, 0x38($sp)
/* 00410DF4 1420000A */  bnez  $at, .L00410E20
/* 00410DF8 AFAE0050 */   sw    $t6, 0x50($sp)
/* 00410DFC 8F84806C */  lw    $a0, %got(RO_100125A4)($gp)
/* 00410E00 8F85806C */  lw    $a1, %got(RO_100125B4)($gp)
/* 00410E04 8F998670 */  lw    $t9, %call16(assertion_failed)($gp)
/* 00410E08 240605EB */  li    $a2, 1515
/* 00410E0C 248425A4 */  addiu $a0, %lo(RO_100125A4) # addiu $a0, $a0, 0x25a4
/* 00410E10 0320F809 */  jalr  $t9
/* 00410E14 24A525B4 */   addiu $a1, %lo(RO_100125B4) # addiu $a1, $a1, 0x25b4
/* 00410E18 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410E1C 00000000 */  nop   
.L00410E20:
/* 00410E20 93A90063 */  lbu   $t1, 0x63($sp)
/* 00410E24 97AA0066 */  lhu   $t2, 0x66($sp)
/* 00410E28 8FAB0068 */  lw    $t3, 0x68($sp)
/* 00410E2C A3B10045 */  sb    $s1, 0x45($sp)
/* 00410E30 A3A90044 */  sb    $t1, 0x44($sp)
/* 00410E34 A7AA0046 */  sh    $t2, 0x46($sp)
/* 00410E38 1600000B */  bnez  $s0, .L00410E68
/* 00410E3C AFAB0048 */   sw    $t3, 0x48($sp)
/* 00410E40 8F998190 */  lw    $t9, %call16(malloc)($gp)
/* 00410E44 02202025 */  move  $a0, $s1
/* 00410E48 0320F809 */  jalr  $t9
/* 00410E4C 00000000 */   nop   
/* 00410E50 8FAC0050 */  lw    $t4, 0x50($sp)
/* 00410E54 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410E58 022C6821 */  addu  $t5, $s1, $t4
/* 00410E5C AFAD002C */  sw    $t5, 0x2c($sp)
/* 00410E60 10000009 */  b     .L00410E88
/* 00410E64 00408025 */   move  $s0, $v0
.L00410E68:
/* 00410E68 8FAE0050 */  lw    $t6, 0x50($sp)
/* 00410E6C 8F998148 */  lw    $t9, %call16(realloc)($gp)
/* 00410E70 022E2821 */  addu  $a1, $s1, $t6
/* 00410E74 AFA5002C */  sw    $a1, 0x2c($sp)
/* 00410E78 0320F809 */  jalr  $t9
/* 00410E7C 02002025 */   move  $a0, $s0
/* 00410E80 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410E84 00408025 */  move  $s0, $v0
.L00410E88:
/* 00410E88 8FB90050 */  lw    $t9, 0x50($sp)
/* 00410E8C 27A50044 */  addiu $a1, $sp, 0x44
/* 00410E90 02192021 */  addu  $a0, $s0, $t9
/* 00410E94 8F9980DC */  lw    $t9, %call16(memcpy)($gp)
/* 00410E98 AFA4003C */  sw    $a0, 0x3c($sp)
/* 00410E9C 0320F809 */  jalr  $t9
/* 00410EA0 24060008 */   li    $a2, 8
/* 00410EA4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410EA8 8FA7003C */  lw    $a3, 0x3c($sp)
/* 00410EAC 8F9980DC */  lw    $t9, %call16(memcpy)($gp)
/* 00410EB0 8FA50058 */  lw    $a1, 0x58($sp)
/* 00410EB4 8FA60038 */  lw    $a2, 0x38($sp)
/* 00410EB8 24E40008 */  addiu $a0, $a3, 8
/* 00410EBC 0320F809 */  jalr  $t9
/* 00410EC0 AFA40040 */   sw    $a0, 0x40($sp)
/* 00410EC4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410EC8 8FB80034 */  lw    $t8, 0x34($sp)
/* 00410ECC 8FA70040 */  lw    $a3, 0x40($sp)
/* 00410ED0 93AF005F */  lbu   $t7, 0x5f($sp)
/* 00410ED4 8F998180 */  lw    $t9, %call16(memset)($gp)
/* 00410ED8 02383023 */  subu  $a2, $s1, $t8
/* 00410EDC 24C6FFF8 */  addiu $a2, $a2, -8
/* 00410EE0 00002825 */  move  $a1, $zero
/* 00410EE4 0320F809 */  jalr  $t9
/* 00410EE8 01E72021 */   addu  $a0, $t7, $a3
/* 00410EEC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410EF0 00000000 */  nop   
/* 00410EF4 8F888088 */  lw    $t0, %got(B_100230E0)($gp)
/* 00410EF8 8F8A8088 */  lw    $t2, %got(B_100230E0)($gp)
/* 00410EFC 8D0830E0 */  lw    $t0, %lo(B_100230E0)($t0)
/* 00410F00 00000000 */  nop   
/* 00410F04 AD100000 */  sw    $s0, ($t0)
/* 00410F08 8FA9002C */  lw    $t1, 0x2c($sp)
/* 00410F0C 8D4A30E0 */  lw    $t2, %lo(B_100230E0)($t2)
/* 00410F10 00000000 */  nop   
/* 00410F14 AD490008 */  sw    $t1, 8($t2)
/* 00410F18 8FBF0024 */  lw    $ra, 0x24($sp)
/* 00410F1C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 00410F20 8FB00018 */  lw    $s0, 0x18($sp)
/* 00410F24 03E00008 */  jr    $ra
/* 00410F28 27BD0058 */   addiu $sp, $sp, 0x58

glabel aself_st_wrreginfo
    .ent aself_st_wrreginfo
    # 0043ECB8 wrelfobj
/* 00410F2C 3C1C0FC2 */  .cpload $t9
/* 00410F30 279C9334 */  
/* 00410F34 0399E021 */  
/* 00410F38 8F818088 */  lw    $at, %got(B_100230E8)($gp)
/* 00410F3C 8F8E8B30 */  lw     $t6, %got(abi_flag)($gp)
/* 00410F40 AC2430E8 */  sw    $a0, %lo(B_100230E8)($at)
/* 00410F44 8F818088 */  lw    $at, %got(B_100230FC)($gp)
/* 00410F48 91CE0000 */  lbu   $t6, ($t6)
/* 00410F4C AC2630FC */  sw    $a2, %lo(B_100230FC)($at)
/* 00410F50 8F818088 */  lw    $at, %got(B_100230F0)($gp)
/* 00410F54 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 00410F58 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00410F5C AFBC0020 */  sw    $gp, 0x20($sp)
/* 00410F60 15C0000C */  bnez  $t6, .L00410F94
/* 00410F64 AC2530F0 */   sw    $a1, %lo(B_100230F0)($at)
/* 00410F68 8F998018 */  lw    $t9, %got(func_00410D64)($gp)
/* 00410F6C 8F848088 */  lw    $a0, %got(B_100230E8)($gp)
/* 00410F70 27390D64 */  addiu $t9, %lo(func_00410D64) # addiu $t9, $t9, 0xd64
/* 00410F74 24050018 */  li    $a1, 24
/* 00410F78 24060001 */  li    $a2, 1
/* 00410F7C 00003825 */  move  $a3, $zero
/* 00410F80 AFA00010 */  sw    $zero, 0x10($sp)
/* 00410F84 0320F809 */  jalr  $t9
/* 00410F88 248430E8 */   addiu $a0, %lo(B_100230E8) # addiu $a0, $a0, 0x30e8
/* 00410F8C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410F90 00000000 */  nop   
.L00410F94:
/* 00410F94 8F8F8B28 */  lw     $t7, %got(sixtyfour_bit)($gp)
/* 00410F98 00000000 */  nop   
/* 00410F9C 91EF0000 */  lbu   $t7, ($t7)
/* 00410FA0 00000000 */  nop   
/* 00410FA4 15E00037 */  bnez  $t7, .L00411084
/* 00410FA8 00001025 */   move  $v0, $zero
/* 00410FAC 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 00410FB0 8F99876C */  lw    $t9, %call16(elf_newscn)($gp)
/* 00410FB4 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 00410FB8 0320F809 */  jalr  $t9
/* 00410FBC 00000000 */   nop   
/* 00410FC0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410FC4 10400010 */  beqz  $v0, .L00411008
/* 00410FC8 00402025 */   move  $a0, $v0
/* 00410FCC 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00410FD0 AFA20034 */  sw    $v0, 0x34($sp)
/* 00410FD4 0320F809 */  jalr  $t9
/* 00410FD8 00000000 */   nop   
/* 00410FDC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00410FE0 8FA40034 */  lw    $a0, 0x34($sp)
/* 00410FE4 10400008 */  beqz  $v0, .L00411008
/* 00410FE8 AFA2002C */   sw    $v0, 0x2c($sp)
/* 00410FEC 8F998750 */  lw    $t9, %call16(elf32_getshdr)($gp)
/* 00410FF0 00000000 */  nop   
/* 00410FF4 0320F809 */  jalr  $t9
/* 00410FF8 00000000 */   nop   
/* 00410FFC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00411000 14400003 */  bnez  $v0, .L00411010
/* 00411004 00401825 */   move  $v1, $v0
.L00411008:
/* 00411008 1000001E */  b     .L00411084
/* 0041100C 2402FFFF */   li    $v0, -1
.L00411010:
/* 00411010 8F84806C */  lw    $a0, %got(RO_100125C0)($gp)
/* 00411014 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 00411018 AFA30030 */  sw    $v1, 0x30($sp)
/* 0041101C 0320F809 */  jalr  $t9
/* 00411020 248425C0 */   addiu $a0, %lo(RO_100125C0) # addiu $a0, $a0, 0x25c0
/* 00411024 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00411028 8FA30030 */  lw    $v1, 0x30($sp)
/* 0041102C 24190002 */  li    $t9, 2
/* 00411030 3C187000 */  lui   $t8, 0x7000
/* 00411034 AC790008 */  sw    $t9, 8($v1)
/* 00411038 8F998018 */  lw    $t9, %got(func_0040DE5C)($gp)
/* 0041103C 37180006 */  ori   $t8, $t8, 6
/* 00411040 24080001 */  li    $t0, 1
/* 00411044 8F858088 */  lw    $a1, %got(B_100230E8)($gp)
/* 00411048 AC680024 */  sw    $t0, 0x24($v1)
/* 0041104C AC780004 */  sw    $t8, 4($v1)
/* 00411050 AC620000 */  sw    $v0, ($v1)
/* 00411054 AC60000C */  sw    $zero, 0xc($v1)
/* 00411058 8FA4002C */  lw    $a0, 0x2c($sp)
/* 0041105C 24090004 */  li    $t1, 4
/* 00411060 2739DE5C */  addiu $t9, %lo(func_0040DE5C) # addiu $t9, $t9, -0x21a4
/* 00411064 AFA90010 */  sw    $t1, 0x10($sp)
/* 00411068 00003025 */  move  $a2, $zero
/* 0041106C 24070018 */  li    $a3, 24
/* 00411070 0320F809 */  jalr  $t9
/* 00411074 24A530E8 */   addiu $a1, %lo(B_100230E8) # addiu $a1, $a1, 0x30e8
/* 00411078 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0041107C 00000000 */  nop   
/* 00411080 00001025 */  move  $v0, $zero
.L00411084:
/* 00411084 8FBF0024 */  lw    $ra, 0x24($sp)
/* 00411088 27BD0038 */  addiu $sp, $sp, 0x38
/* 0041108C 03E00008 */  jr    $ra
/* 00411090 00000000 */   nop   

    .type aself_st_wrreginfo, @function
    .size aself_st_wrreginfo, .-aself_st_wrreginfo
    .end aself_st_wrreginfo

glabel look_for_scndx
    .ent look_for_scndx
    # 00411170 aself_scnhdr_wrreloc
    # 00411970 aself_scnhdr_wrgptable
    # 00414B68 create_content_section
/* 00411094 3C1C0FC2 */  .cpload $t9
/* 00411098 279C91CC */  
/* 0041109C 0399E021 */  
/* 004110A0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 004110A4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 004110A8 24B10004 */  addiu $s1, $a1, 4
/* 004110AC AFB20020 */  sw    $s2, 0x20($sp)
/* 004110B0 AFB00018 */  sw    $s0, 0x18($sp)
/* 004110B4 2A210005 */  slti  $at, $s1, 5
/* 004110B8 00809025 */  move  $s2, $a0
/* 004110BC AFBF002C */  sw    $ra, 0x2c($sp)
/* 004110C0 AFBC0028 */  sw    $gp, 0x28($sp)
/* 004110C4 AFB30024 */  sw    $s3, 0x24($sp)
/* 004110C8 14200021 */  bnez  $at, .L00411150
/* 004110CC 24100004 */   li    $s0, 4
/* 004110D0 8F938088 */  lw    $s3, %got(B_100230B8)($gp)
/* 004110D4 00000000 */  nop   
/* 004110D8 267330B8 */  addiu $s3, %lo(B_100230B8) # addiu $s3, $s3, 0x30b8
.L004110DC:
/* 004110DC 8F99875C */  lw    $t9, %call16(elf_getscn)($gp)
/* 004110E0 8E640000 */  lw    $a0, ($s3)
/* 004110E4 0320F809 */  jalr  $t9
/* 004110E8 02002825 */   move  $a1, $s0
/* 004110EC 8FBC0028 */  lw    $gp, 0x28($sp)
/* 004110F0 14400003 */  bnez  $v0, .L00411100
/* 004110F4 00402025 */   move  $a0, $v0
/* 004110F8 10000016 */  b     .L00411154
/* 004110FC 2402FFFF */   li    $v0, -1
.L00411100:
/* 00411100 8F998018 */  lw    $t9, %got(func_0040E1A8)($gp)
/* 00411104 00000000 */  nop   
/* 00411108 2739E1A8 */  addiu $t9, %lo(func_0040E1A8) # addiu $t9, $t9, -0x1e58
/* 0041110C 0320F809 */  jalr  $t9
/* 00411110 00000000 */   nop   
/* 00411114 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00411118 14400003 */  bnez  $v0, .L00411128
/* 0041111C 00402825 */   move  $a1, $v0
/* 00411120 1000000C */  b     .L00411154
/* 00411124 2402FFFF */   li    $v0, -1
.L00411128:
/* 00411128 8F998118 */  lw    $t9, %call16(strcmp)($gp)
/* 0041112C 02402025 */  move  $a0, $s2
/* 00411130 0320F809 */  jalr  $t9
/* 00411134 00000000 */   nop   
/* 00411138 8FBC0028 */  lw    $gp, 0x28($sp)
/* 0041113C 10400005 */  beqz  $v0, .L00411154
/* 00411140 02001025 */   move  $v0, $s0
/* 00411144 26100001 */  addiu $s0, $s0, 1
/* 00411148 1611FFE4 */  bne   $s0, $s1, .L004110DC
/* 0041114C 00000000 */   nop   
.L00411150:
/* 00411150 02001025 */  move  $v0, $s0
.L00411154:
/* 00411154 8FBF002C */  lw    $ra, 0x2c($sp)
/* 00411158 8FB00018 */  lw    $s0, 0x18($sp)
/* 0041115C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 00411160 8FB20020 */  lw    $s2, 0x20($sp)
/* 00411164 8FB30024 */  lw    $s3, 0x24($sp)
/* 00411168 03E00008 */  jr    $ra
/* 0041116C 27BD0030 */   addiu $sp, $sp, 0x30

    .type look_for_scndx, @function
    .size look_for_scndx, .-look_for_scndx
    .end look_for_scndx

glabel aself_scnhdr_wrreloc
    .ent aself_scnhdr_wrreloc
    # 0043EA30 func_0043EA30
/* 00411170 3C1C0FC2 */  .cpload $t9
/* 00411174 279C90F0 */  
/* 00411178 0399E021 */  
/* 0041117C 27BDFEE0 */  addiu $sp, $sp, -0x120
/* 00411180 AFA40120 */  sw    $a0, 0x120($sp)
/* 00411184 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 00411188 8F99876C */  lw    $t9, %call16(elf_newscn)($gp)
/* 0041118C AFBF001C */  sw    $ra, 0x1c($sp)
/* 00411190 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 00411194 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00411198 AFA50124 */  sw    $a1, 0x124($sp)
/* 0041119C AFA60128 */  sw    $a2, 0x128($sp)
/* 004111A0 0320F809 */  jalr  $t9
/* 004111A4 AFA7012C */   sw    $a3, 0x12c($sp)
/* 004111A8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004111AC 8FA7012C */  lw    $a3, 0x12c($sp)
/* 004111B0 8F838088 */  lw    $v1, %got(B_10023068)($gp)
/* 004111B4 00402025 */  move  $a0, $v0
/* 004111B8 24633068 */  addiu $v1, %lo(B_10023068) # addiu $v1, $v1, 0x3068
/* 004111BC 1040000C */  beqz  $v0, .L004111F0
/* 004111C0 AC620000 */   sw    $v0, ($v1)
/* 004111C4 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 004111C8 AFA7012C */  sw    $a3, 0x12c($sp)
/* 004111CC 0320F809 */  jalr  $t9
/* 004111D0 00000000 */   nop   
/* 004111D4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004111D8 8FA50120 */  lw    $a1, 0x120($sp)
/* 004111DC 8F838088 */  lw    $v1, %got(B_10023074)($gp)
/* 004111E0 8FA7012C */  lw    $a3, 0x12c($sp)
/* 004111E4 24633074 */  addiu $v1, %lo(B_10023074) # addiu $v1, $v1, 0x3074
/* 004111E8 14400003 */  bnez  $v0, .L004111F8
/* 004111EC AC620000 */   sw    $v0, ($v1)
.L004111F0:
/* 004111F0 100000D7 */  b     .L00411550
/* 004111F4 2402FFFF */   li    $v0, -1
.L004111F8:
/* 004111F8 28A1000F */  slti  $at, $a1, 0xf
/* 004111FC 10200029 */  beqz  $at, .L004112A4
/* 00411200 2CA1000A */   sltiu $at, $a1, 0xa
/* 00411204 1020002D */  beqz  $at, .L004112BC
/* 00411208 00000000 */   nop   
/* 0041120C 8F81806C */  lw    $at, %got(jtbl_10012FB4)($gp)
/* 00411210 00057880 */  sll   $t7, $a1, 2
/* 00411214 002F0821 */  addu  $at, $at, $t7
/* 00411218 8C2F2FB4 */  lw    $t7, %lo(jtbl_10012FB4)($at)
/* 0041121C 00000000 */  nop   
/* 00411220 01FC7821 */  addu  $t7, $t7, $gp
/* 00411224 01E00008 */  jr    $t7
/* 00411228 00000000 */   nop   
.L0041122C:
/* 0041122C 8F87806C */  lw    $a3, %got(RO_100125CC)($gp)
/* 00411230 10000022 */  b     .L004112BC
/* 00411234 24E725CC */   addiu $a3, %lo(RO_100125CC) # addiu $a3, $a3, 0x25cc
.L00411238:
/* 00411238 8F87806C */  lw    $a3, %got(RO_100125D4)($gp)
/* 0041123C 1000001F */  b     .L004112BC
/* 00411240 24E725D4 */   addiu $a3, %lo(RO_100125D4) # addiu $a3, $a3, 0x25d4
.L00411244:
/* 00411244 8F87806C */  lw    $a3, %got(RO_100125DC)($gp)
/* 00411248 1000001C */  b     .L004112BC
/* 0041124C 24E725DC */   addiu $a3, %lo(RO_100125DC) # addiu $a3, $a3, 0x25dc
.L00411250:
/* 00411250 8F87806C */  lw    $a3, %got(RO_100125E4)($gp)
/* 00411254 10000019 */  b     .L004112BC
/* 00411258 24E725E4 */   addiu $a3, %lo(RO_100125E4) # addiu $a3, $a3, 0x25e4
.L0041125C:
/* 0041125C 8F87806C */  lw    $a3, %got(RO_100125EC)($gp)
/* 00411260 10000016 */  b     .L004112BC
/* 00411264 24E725EC */   addiu $a3, %lo(RO_100125EC) # addiu $a3, $a3, 0x25ec
.L00411268:
/* 00411268 8F87806C */  lw    $a3, %got(RO_100125F4)($gp)
/* 0041126C 10000013 */  b     .L004112BC
/* 00411270 24E725F4 */   addiu $a3, %lo(RO_100125F4) # addiu $a3, $a3, 0x25f4
.L00411274:
/* 00411274 8F87806C */  lw    $a3, %got(RO_100125FC)($gp)
/* 00411278 10000010 */  b     .L004112BC
/* 0041127C 24E725FC */   addiu $a3, %lo(RO_100125FC) # addiu $a3, $a3, 0x25fc
.L00411280:
/* 00411280 8F87806C */  lw    $a3, %got(RO_10012604)($gp)
/* 00411284 1000000D */  b     .L004112BC
/* 00411288 24E72604 */   addiu $a3, %lo(RO_10012604) # addiu $a3, $a3, 0x2604
.L0041128C:
/* 0041128C 8F87806C */  lw    $a3, %got(RO_1001260C)($gp)
/* 00411290 1000000A */  b     .L004112BC
/* 00411294 24E7260C */   addiu $a3, %lo(RO_1001260C) # addiu $a3, $a3, 0x260c
.L00411298:
/* 00411298 8F87806C */  lw    $a3, %got(RO_10012614)($gp)
/* 0041129C 10000007 */  b     .L004112BC
/* 004112A0 24E72614 */   addiu $a3, %lo(RO_10012614) # addiu $a3, $a3, 0x2614
.L004112A4:
/* 004112A4 8F998080 */  lw    $t9, %got(D_10000088)($gp)
/* 004112A8 0005C100 */  sll   $t8, $a1, 4
/* 004112AC 27390088 */  addiu $t9, %lo(D_10000088) # addiu $t9, $t9, 0x88
/* 004112B0 03194021 */  addu  $t0, $t8, $t9
/* 004112B4 8D07FFB0 */  lw    $a3, -0x50($t0)
/* 004112B8 00000000 */  nop   
.L004112BC:
/* 004112BC 8F85806C */  lw    $a1, %got(RO_1001261C)($gp)
/* 004112C0 8F9980CC */  lw    $t9, %call16(sprintf)($gp)
/* 004112C4 27A40094 */  addiu $a0, $sp, 0x94
/* 004112C8 00E03025 */  move  $a2, $a3
/* 004112CC AFA7012C */  sw    $a3, 0x12c($sp)
/* 004112D0 0320F809 */  jalr  $t9
/* 004112D4 24A5261C */   addiu $a1, %lo(RO_1001261C) # addiu $a1, $a1, 0x261c
/* 004112D8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004112DC 8FA4012C */  lw    $a0, 0x12c($sp)
/* 004112E0 8F998278 */  lw    $t9, %call16(look_for_scndx)($gp)
/* 004112E4 8FA50124 */  lw    $a1, 0x124($sp)
/* 004112E8 0320F809 */  jalr  $t9
/* 004112EC 00000000 */   nop   
/* 004112F0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004112F4 00402825 */  move  $a1, $v0
/* 004112F8 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 004112FC 8F99875C */  lw    $t9, %call16(elf_getscn)($gp)
/* 00411300 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 00411304 0320F809 */  jalr  $t9
/* 00411308 00000000 */   nop   
/* 0041130C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411310 AFA20104 */  sw    $v0, 0x104($sp)
/* 00411314 8F898B28 */  lw     $t1, %got(sixtyfour_bit)($gp)
/* 00411318 00000000 */  nop   
/* 0041131C 91290000 */  lbu   $t1, ($t1)
/* 00411320 00000000 */  nop   
/* 00411324 11200044 */  beqz  $t1, .L00411438
/* 00411328 00000000 */   nop   
/* 0041132C 8F848088 */  lw    $a0, %got(B_10023068)($gp)
/* 00411330 8F998754 */  lw    $t9, %call16(elf64_getshdr)($gp)
/* 00411334 8C843068 */  lw    $a0, %lo(B_10023068)($a0)
/* 00411338 0320F809 */  jalr  $t9
/* 0041133C 00000000 */   nop   
/* 00411340 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411344 00000000 */  nop   
/* 00411348 8F838088 */  lw    $v1, %got(B_10023070)($gp)
/* 0041134C 00000000 */  nop   
/* 00411350 24633070 */  addiu $v1, %lo(B_10023070) # addiu $v1, $v1, 0x3070
/* 00411354 14400003 */  bnez  $v0, .L00411364
/* 00411358 AC620000 */   sw    $v0, ($v1)
/* 0041135C 1000007C */  b     .L00411550
/* 00411360 2402FFFF */   li    $v0, -1
.L00411364:
/* 00411364 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 00411368 27A40094 */  addiu $a0, $sp, 0x94
/* 0041136C 0320F809 */  jalr  $t9
/* 00411370 00000000 */   nop   
/* 00411374 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411378 240C0009 */  li    $t4, 9
/* 0041137C 8F838088 */  lw    $v1, %got(B_10023070)($gp)
/* 00411380 240E0000 */  li    $t6, 0
/* 00411384 24633070 */  addiu $v1, %lo(B_10023070) # addiu $v1, $v1, 0x3070
/* 00411388 8C6B0000 */  lw    $t3, ($v1)
/* 0041138C 240F0000 */  li    $t7, 0
/* 00411390 AD620000 */  sw    $v0, ($t3)
/* 00411394 8C6D0000 */  lw    $t5, ($v1)
/* 00411398 24080000 */  li    $t0, 0
/* 0041139C ADAC0004 */  sw    $t4, 4($t5)
/* 004113A0 8C780000 */  lw    $t8, ($v1)
/* 004113A4 24090000 */  li    $t1, 0
/* 004113A8 AF0E0008 */  sw    $t6, 8($t8)
/* 004113AC AF0F000C */  sw    $t7, 0xc($t8)
/* 004113B0 8C790000 */  lw    $t9, ($v1)
/* 004113B4 240B0001 */  li    $t3, 1
/* 004113B8 AF280010 */  sw    $t0, 0x10($t9)
/* 004113BC AF290014 */  sw    $t1, 0x14($t9)
/* 004113C0 8C6C0000 */  lw    $t4, ($v1)
/* 004113C4 240A0000 */  li    $t2, 0
/* 004113C8 AD8A0038 */  sw    $t2, 0x38($t4)
/* 004113CC AD8B003C */  sw    $t3, 0x3c($t4)
/* 004113D0 8F998774 */  lw    $t9, %call16(elf_ndxscn)($gp)
/* 004113D4 8FA40104 */  lw    $a0, 0x104($sp)
/* 004113D8 0320F809 */  jalr  $t9
/* 004113DC 00000000 */   nop   
/* 004113E0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004113E4 00000000 */  nop   
/* 004113E8 8F838088 */  lw    $v1, %got(B_10023070)($gp)
/* 004113EC 00000000 */  nop   
/* 004113F0 24633070 */  addiu $v1, %lo(B_10023070) # addiu $v1, $v1, 0x3070
/* 004113F4 8C6D0000 */  lw    $t5, ($v1)
/* 004113F8 00000000 */  nop   
/* 004113FC ADA2002C */  sw    $v0, 0x2c($t5)
/* 00411400 8FA40128 */  lw    $a0, 0x128($sp)
/* 00411404 8F998190 */  lw    $t9, %call16(malloc)($gp)
/* 00411408 00047100 */  sll   $t6, $a0, 4
/* 0041140C 0320F809 */  jalr  $t9
/* 00411410 01C02025 */   move  $a0, $t6
/* 00411414 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411418 00000000 */  nop   
/* 0041141C 8F838088 */  lw    $v1, %got(B_10023080)($gp)
/* 00411420 00000000 */  nop   
/* 00411424 24633080 */  addiu $v1, %lo(B_10023080) # addiu $v1, $v1, 0x3080
/* 00411428 14400043 */  bnez  $v0, .L00411538
/* 0041142C AC620000 */   sw    $v0, ($v1)
/* 00411430 10000047 */  b     .L00411550
/* 00411434 2402FFFF */   li    $v0, -1
.L00411438:
/* 00411438 8F848088 */  lw    $a0, %got(B_10023068)($gp)
/* 0041143C 8F998750 */  lw    $t9, %call16(elf32_getshdr)($gp)
/* 00411440 8C843068 */  lw    $a0, %lo(B_10023068)($a0)
/* 00411444 0320F809 */  jalr  $t9
/* 00411448 00000000 */   nop   
/* 0041144C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411450 00000000 */  nop   
/* 00411454 8F838088 */  lw    $v1, %got(B_1002306C)($gp)
/* 00411458 00000000 */  nop   
/* 0041145C 2463306C */  addiu $v1, %lo(B_1002306C) # addiu $v1, $v1, 0x306c
/* 00411460 14400003 */  bnez  $v0, .L00411470
/* 00411464 AC620000 */   sw    $v0, ($v1)
/* 00411468 10000039 */  b     .L00411550
/* 0041146C 2402FFFF */   li    $v0, -1
.L00411470:
/* 00411470 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 00411474 27A40094 */  addiu $a0, $sp, 0x94
/* 00411478 0320F809 */  jalr  $t9
/* 0041147C 00000000 */   nop   
/* 00411480 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411484 24090009 */  li    $t1, 9
/* 00411488 8F838088 */  lw    $v1, %got(B_1002306C)($gp)
/* 0041148C 240C0001 */  li    $t4, 1
/* 00411490 2463306C */  addiu $v1, %lo(B_1002306C) # addiu $v1, $v1, 0x306c
/* 00411494 8C680000 */  lw    $t0, ($v1)
/* 00411498 00000000 */  nop   
/* 0041149C AD020000 */  sw    $v0, ($t0)
/* 004114A0 8C790000 */  lw    $t9, ($v1)
/* 004114A4 00000000 */  nop   
/* 004114A8 AF290004 */  sw    $t1, 4($t9)
/* 004114AC 8C6A0000 */  lw    $t2, ($v1)
/* 004114B0 00000000 */  nop   
/* 004114B4 AD400008 */  sw    $zero, 8($t2)
/* 004114B8 8C6B0000 */  lw    $t3, ($v1)
/* 004114BC 00000000 */  nop   
/* 004114C0 AD60000C */  sw    $zero, 0xc($t3)
/* 004114C4 8C6D0000 */  lw    $t5, ($v1)
/* 004114C8 00000000 */  nop   
/* 004114CC ADAC0024 */  sw    $t4, 0x24($t5)
/* 004114D0 8F998774 */  lw    $t9, %call16(elf_ndxscn)($gp)
/* 004114D4 8FA40104 */  lw    $a0, 0x104($sp)
/* 004114D8 0320F809 */  jalr  $t9
/* 004114DC 00000000 */   nop   
/* 004114E0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004114E4 00000000 */  nop   
/* 004114E8 8F838088 */  lw    $v1, %got(B_1002306C)($gp)
/* 004114EC 00000000 */  nop   
/* 004114F0 2463306C */  addiu $v1, %lo(B_1002306C) # addiu $v1, $v1, 0x306c
/* 004114F4 8C6E0000 */  lw    $t6, ($v1)
/* 004114F8 00000000 */  nop   
/* 004114FC ADC2001C */  sw    $v0, 0x1c($t6)
/* 00411500 8FA40128 */  lw    $a0, 0x128($sp)
/* 00411504 8F998190 */  lw    $t9, %call16(malloc)($gp)
/* 00411508 000478C0 */  sll   $t7, $a0, 3
/* 0041150C 0320F809 */  jalr  $t9
/* 00411510 01E02025 */   move  $a0, $t7
/* 00411514 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411518 00000000 */  nop   
/* 0041151C 8F838088 */  lw    $v1, %got(B_1002307C)($gp)
/* 00411520 00000000 */  nop   
/* 00411524 2463307C */  addiu $v1, %lo(B_1002307C) # addiu $v1, $v1, 0x307c
/* 00411528 14400003 */  bnez  $v0, .L00411538
/* 0041152C AC620000 */   sw    $v0, ($v1)
/* 00411530 10000007 */  b     .L00411550
/* 00411534 2402FFFF */   li    $v0, -1
.L00411538:
/* 00411538 8F818088 */  lw    $at, %got(B_10023084)($gp)
/* 0041153C 24080001 */  li    $t0, 1
/* 00411540 AC283084 */  sw    $t0, %lo(B_10023084)($at)
/* 00411544 8F818088 */  lw    $at, %got(B_1002308C)($gp)
/* 00411548 24020001 */  li    $v0, 1
/* 0041154C AC20308C */  sw    $zero, %lo(B_1002308C)($at)
.L00411550:
/* 00411550 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00411554 27BD0120 */  addiu $sp, $sp, 0x120
/* 00411558 03E00008 */  jr    $ra
/* 0041155C 00000000 */   nop   

    .type aself_scnhdr_wrreloc, @function
    .size aself_scnhdr_wrreloc, .-aself_scnhdr_wrreloc
    .end aself_scnhdr_wrreloc

glabel aself_st_wrreloc
    .ent aself_st_wrreloc
    # 0044BA80 wrreloc
/* 00411560 3C1C0FC2 */  .cpload $t9
/* 00411564 279C8D00 */  
/* 00411568 0399E021 */  
/* 0041156C 8F8E8B28 */  lw     $t6, %got(sixtyfour_bit)($gp)
/* 00411570 8F868088 */  lw    $a2, %got(B_10023084)($gp)
/* 00411574 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 00411578 91CE0000 */  lbu   $t6, ($t6)
/* 0041157C 8CC63084 */  lw    $a2, %lo(B_10023084)($a2)
/* 00411580 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00411584 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00411588 AFA40038 */  sw    $a0, 0x38($sp)
/* 0041158C 11C0001B */  beqz  $t6, .L004115FC
/* 00411590 AFA5003C */   sw    $a1, 0x3c($sp)
/* 00411594 8F828088 */  lw    $v0, %got(B_10023088)($gp)
/* 00411598 24C30010 */  addiu $v1, $a2, 0x10
/* 0041159C 24423088 */  addiu $v0, %lo(B_10023088) # addiu $v0, $v0, 0x3088
/* 004115A0 8C450000 */  lw    $a1, ($v0)
/* 004115A4 00000000 */  nop   
/* 004115A8 0065082B */  sltu  $at, $v1, $a1
/* 004115AC 14200005 */  bnez  $at, .L004115C4
.L004115B0:
/* 004115B0 24AF0010 */   addiu $t7, $a1, 0x10
/* 004115B4 006F082B */  sltu  $at, $v1, $t7
/* 004115B8 AC4F0000 */  sw    $t7, ($v0)
/* 004115BC 1020FFFC */  beqz  $at, .L004115B0
/* 004115C0 01E02825 */   move  $a1, $t7
.L004115C4:
/* 004115C4 8F848088 */  lw    $a0, %got(B_10023080)($gp)
/* 004115C8 8F998148 */  lw    $t9, %call16(realloc)($gp)
/* 004115CC 8C843080 */  lw    $a0, %lo(B_10023080)($a0)
/* 004115D0 0320F809 */  jalr  $t9
/* 004115D4 00000000 */   nop   
/* 004115D8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004115DC 00000000 */  nop   
/* 004115E0 8F838088 */  lw    $v1, %got(B_10023080)($gp)
/* 004115E4 00000000 */  nop   
/* 004115E8 24633080 */  addiu $v1, %lo(B_10023080) # addiu $v1, $v1, 0x3080
/* 004115EC 1440001F */  bnez  $v0, .L0041166C
/* 004115F0 AC620000 */   sw    $v0, ($v1)
/* 004115F4 10000098 */  b     .L00411858
/* 004115F8 2402FFFF */   li    $v0, -1
.L004115FC:
/* 004115FC 8F828088 */  lw    $v0, %got(B_10023088)($gp)
/* 00411600 24C30008 */  addiu $v1, $a2, 8
/* 00411604 24423088 */  addiu $v0, %lo(B_10023088) # addiu $v0, $v0, 0x3088
/* 00411608 8C450000 */  lw    $a1, ($v0)
/* 0041160C 00000000 */  nop   
/* 00411610 0065082B */  sltu  $at, $v1, $a1
/* 00411614 14200005 */  bnez  $at, .L0041162C
.L00411618:
/* 00411618 24B90008 */   addiu $t9, $a1, 8
/* 0041161C 0079082B */  sltu  $at, $v1, $t9
/* 00411620 AC590000 */  sw    $t9, ($v0)
/* 00411624 1020FFFC */  beqz  $at, .L00411618
/* 00411628 03202825 */   move  $a1, $t9
.L0041162C:
/* 0041162C 8F848088 */  lw    $a0, %got(B_1002307C)($gp)
/* 00411630 8F998148 */  lw    $t9, %call16(realloc)($gp)
/* 00411634 8C84307C */  lw    $a0, %lo(B_1002307C)($a0)
/* 00411638 0320F809 */  jalr  $t9
/* 0041163C 00000000 */   nop   
/* 00411640 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411644 00000000 */  nop   
/* 00411648 8F818088 */  lw    $at, %got(B_1002307C)($gp)
/* 0041164C 8F888088 */  lw    $t0, %got(B_1002307C)($gp)
/* 00411650 AC22307C */  sw    $v0, %lo(B_1002307C)($at)
/* 00411654 8D08307C */  lw    $t0, %lo(B_1002307C)($t0)
/* 00411658 00000000 */  nop   
/* 0041165C 15000004 */  bnez  $t0, .L00411670
/* 00411660 8FA90038 */   lw    $t1, 0x38($sp)
/* 00411664 1000007C */  b     .L00411858
/* 00411668 2402FFFF */   li    $v0, -1
.L0041166C:
/* 0041166C 8FA90038 */  lw    $t1, 0x38($sp)
.L00411670:
/* 00411670 8F838088 */  lw    $v1, %got(B_100230B4)($gp)
/* 00411674 8F858088 */  lw    $a1, %got(B_100230B0)($gp)
/* 00411678 8D240004 */  lw    $a0, 4($t1)
/* 0041167C 8C6330B4 */  lw    $v1, %lo(B_100230B4)($v1)
/* 00411680 8CA530B0 */  lw    $a1, %lo(B_100230B0)($a1)
/* 00411684 308A0001 */  andi  $t2, $a0, 1
/* 00411688 11400009 */  beqz  $t2, .L004116B0
/* 0041168C 00003825 */   move  $a3, $zero
/* 00411690 00041202 */  srl   $v0, $a0, 8
/* 00411694 0045082B */  sltu  $at, $v0, $a1
/* 00411698 1020000F */  beqz  $at, .L004116D8
/* 0041169C 00025880 */   sll   $t3, $v0, 2
/* 004116A0 006B6021 */  addu  $t4, $v1, $t3
/* 004116A4 8D870000 */  lw    $a3, ($t4)
/* 004116A8 1000000C */  b     .L004116DC
/* 004116AC 00043680 */   sll   $a2, $a0, 0x1a
.L004116B0:
/* 004116B0 00041202 */  srl   $v0, $a0, 8
/* 004116B4 2C41000A */  sltiu $at, $v0, 0xa
/* 004116B8 10200008 */  beqz  $at, .L004116DC
/* 004116BC 00043680 */   sll   $a2, $a0, 0x1a
/* 004116C0 8F8E8080 */  lw    $t6, %got(D_10000088)($gp)
/* 004116C4 00026900 */  sll   $t5, $v0, 4
/* 004116C8 25CE0088 */  addiu $t6, %lo(D_10000088) # addiu $t6, $t6, 0x88
/* 004116CC 01AE7821 */  addu  $t7, $t5, $t6
/* 004116D0 8DE70008 */  lw    $a3, 8($t7)
/* 004116D4 00000000 */  nop   
.L004116D8:
/* 004116D8 00043680 */  sll   $a2, $a0, 0x1a
.L004116DC:
/* 004116DC 0006C6C2 */  srl   $t8, $a2, 0x1b
/* 004116E0 2F01001F */  sltiu $at, $t8, 0x1f
/* 004116E4 00001825 */  move  $v1, $zero
/* 004116E8 1020002D */  beqz  $at, .L004117A0
/* 004116EC 03003025 */   move  $a2, $t8
/* 004116F0 8F81806C */  lw    $at, %got(jtbl_10012FDC)($gp)
/* 004116F4 0018C880 */  sll   $t9, $t8, 2
/* 004116F8 00390821 */  addu  $at, $at, $t9
/* 004116FC 8C392FDC */  lw    $t9, %lo(jtbl_10012FDC)($at)
/* 00411700 00000000 */  nop   
/* 00411704 033CC821 */  addu  $t9, $t9, $gp
/* 00411708 03200008 */  jr    $t9
/* 0041170C 00000000 */   nop   
.L00411710:
/* 00411710 1000002F */  b     .L004117D0
/* 00411714 24030001 */   li    $v1, 1
.L00411718:
/* 00411718 1000002D */  b     .L004117D0
/* 0041171C 24030021 */   li    $v1, 33
.L00411720:
/* 00411720 1000002B */  b     .L004117D0
/* 00411724 24030002 */   li    $v1, 2
.L00411728:
/* 00411728 10000029 */  b     .L004117D0
/* 0041172C 24030004 */   li    $v1, 4
.L00411730:
/* 00411730 10000027 */  b     .L004117D0
/* 00411734 24030005 */   li    $v1, 5
.L00411738:
/* 00411738 10000025 */  b     .L004117D0
/* 0041173C 24030006 */   li    $v1, 6
.L00411740:
/* 00411740 10000023 */  b     .L004117D0
/* 00411744 24030007 */   li    $v1, 7
.L00411748:
/* 00411748 10000021 */  b     .L004117D0
/* 0041174C 24030008 */   li    $v1, 8
.L00411750:
/* 00411750 1000001F */  b     .L004117D0
/* 00411754 24030009 */   li    $v1, 9
.L00411758:
/* 00411758 1000001D */  b     .L004117D0
/* 0041175C 24030012 */   li    $v1, 18
.L00411760:
/* 00411760 1000001B */  b     .L004117D0
/* 00411764 2403000B */   li    $v1, 11
.L00411768:
/* 00411768 10000019 */  b     .L004117D0
/* 0041176C 2403000C */   li    $v1, 12
.L00411770:
/* 00411770 10000017 */  b     .L004117D0
/* 00411774 2403000A */   li    $v1, 10
.L00411778:
/* 00411778 10000015 */  b     .L004117D0
/* 0041177C 24030010 */   li    $v1, 16
.L00411780:
/* 00411780 10000013 */  b     .L004117D0
/* 00411784 2403001E */   li    $v1, 30
.L00411788:
/* 00411788 10000011 */  b     .L004117D0
/* 0041178C 2403001F */   li    $v1, 31
.L00411790:
/* 00411790 1000000F */  b     .L004117D0
/* 00411794 24030016 */   li    $v1, 22
.L00411798:
/* 00411798 1000000D */  b     .L004117D0
/* 0041179C 24030017 */   li    $v1, 23
.L004117A0:
/* 004117A0 8F8480AC */  lw     $a0, %got(__iob)($gp)
/* 004117A4 8F85806C */  lw    $a1, %got(RO_10012624)($gp)
/* 004117A8 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 004117AC AFA30020 */  sw    $v1, 0x20($sp)
/* 004117B0 AFA70030 */  sw    $a3, 0x30($sp)
/* 004117B4 24840020 */  addiu $a0, $a0, 0x20
/* 004117B8 0320F809 */  jalr  $t9
/* 004117BC 24A52624 */   addiu $a1, %lo(RO_10012624) # addiu $a1, $a1, 0x2624
/* 004117C0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004117C4 8FA30020 */  lw    $v1, 0x20($sp)
/* 004117C8 8FA70030 */  lw    $a3, 0x30($sp)
/* 004117CC 00000000 */  nop   
.L004117D0:
/* 004117D0 8F888B28 */  lw     $t0, %got(sixtyfour_bit)($gp)
/* 004117D4 8FA90038 */  lw    $t1, 0x38($sp)
/* 004117D8 91080000 */  lbu   $t0, ($t0)
/* 004117DC 00077A00 */  sll   $t7, $a3, 8
/* 004117E0 11000004 */  beqz  $t0, .L004117F4
/* 004117E4 307800FF */   andi  $t8, $v1, 0xff
/* 004117E8 8F848088 */  lw    $a0, %got(B_1002308C)($gp)
/* 004117EC 10000016 */  b     .L00411848
/* 004117F0 2484308C */   addiu $a0, %lo(B_1002308C) # addiu $a0, $a0, 0x308c
.L004117F4:
/* 004117F4 8F848088 */  lw    $a0, %got(B_1002308C)($gp)
/* 004117F8 8F828088 */  lw    $v0, %got(B_1002307C)($gp)
/* 004117FC 2484308C */  addiu $a0, %lo(B_1002308C) # addiu $a0, $a0, 0x308c
/* 00411800 8C8C0000 */  lw    $t4, ($a0)
/* 00411804 2442307C */  addiu $v0, %lo(B_1002307C) # addiu $v0, $v0, 0x307c
/* 00411808 8C4B0000 */  lw    $t3, ($v0)
/* 0041180C 8D2A0000 */  lw    $t2, ($t1)
/* 00411810 000C68C0 */  sll   $t5, $t4, 3
/* 00411814 016D7021 */  addu  $t6, $t3, $t5
/* 00411818 ADCA0000 */  sw    $t2, ($t6)
/* 0041181C 8C890000 */  lw    $t1, ($a0)
/* 00411820 8C480000 */  lw    $t0, ($v0)
/* 00411824 000960C0 */  sll   $t4, $t1, 3
/* 00411828 8F8D8088 */  lw    $t5, %got(B_10023084)($gp)
/* 0041182C 01F8C821 */  addu  $t9, $t7, $t8
/* 00411830 010C5821 */  addu  $t3, $t0, $t4
/* 00411834 AD790004 */  sw    $t9, 4($t3)
/* 00411838 8DAD3084 */  lw    $t5, %lo(B_10023084)($t5)
/* 0041183C 8F818088 */  lw    $at, %got(B_10023084)($gp)
/* 00411840 25AA0008 */  addiu $t2, $t5, 8
/* 00411844 AC2A3084 */  sw    $t2, %lo(B_10023084)($at)
.L00411848:
/* 00411848 8C8E0000 */  lw    $t6, ($a0)
/* 0041184C 24020001 */  li    $v0, 1
/* 00411850 25CF0001 */  addiu $t7, $t6, 1
/* 00411854 AC8F0000 */  sw    $t7, ($a0)
.L00411858:
/* 00411858 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0041185C 27BD0038 */  addiu $sp, $sp, 0x38
/* 00411860 03E00008 */  jr    $ra
/* 00411864 00000000 */   nop   

    .type aself_st_wrreloc, @function
    .size aself_st_wrreloc, .-aself_st_wrreloc
    .end aself_st_wrreloc

glabel aself_close_wrreloc
    .ent aself_close_wrreloc
    # 0043EA30 func_0043EA30
/* 00411868 3C1C0FC2 */  .cpload $t9
/* 0041186C 279C89F8 */  
/* 00411870 0399E021 */  
/* 00411874 8F8E8B28 */  lw     $t6, %got(sixtyfour_bit)($gp)
/* 00411878 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0041187C 91CE0000 */  lbu   $t6, ($t6)
/* 00411880 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00411884 11C0001C */  beqz  $t6, .L004118F8
/* 00411888 AFBC0020 */   sw    $gp, 0x20($sp)
/* 0041188C 8F848088 */  lw    $a0, %got(B_100230A0)($gp)
/* 00411890 8F998774 */  lw    $t9, %call16(elf_ndxscn)($gp)
/* 00411894 8C8430A0 */  lw    $a0, %lo(B_100230A0)($a0)
/* 00411898 0320F809 */  jalr  $t9
/* 0041189C 00000000 */   nop   
/* 004118A0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004118A4 24060008 */  li    $a2, 8
/* 004118A8 8F8F8088 */  lw    $t7, %got(B_10023070)($gp)
/* 004118AC 8F858088 */  lw    $a1, %got(B_10023080)($gp)
/* 004118B0 8DEF3070 */  lw    $t7, %lo(B_10023070)($t7)
/* 004118B4 24180008 */  li    $t8, 8
/* 004118B8 ADE20028 */  sw    $v0, 0x28($t7)
/* 004118BC 8CA53080 */  lw    $a1, %lo(B_10023080)($a1)
/* 004118C0 00000000 */  nop   
/* 004118C4 10A00027 */  beqz  $a1, .L00411964
/* 004118C8 8FBF0024 */   lw    $ra, 0x24($sp)
/* 004118CC 8F848088 */  lw    $a0, %got(B_10023074)($gp)
/* 004118D0 8F878088 */  lw    $a3, %got(B_10023084)($gp)
/* 004118D4 8F998018 */  lw    $t9, %got(func_0040DE5C)($gp)
/* 004118D8 8C843074 */  lw    $a0, %lo(B_10023074)($a0)
/* 004118DC 8CE73084 */  lw    $a3, %lo(B_10023084)($a3)
/* 004118E0 2739DE5C */  addiu $t9, %lo(func_0040DE5C) # addiu $t9, $t9, -0x21a4
/* 004118E4 0320F809 */  jalr  $t9
/* 004118E8 AFB80010 */   sw    $t8, 0x10($sp)
/* 004118EC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004118F0 1000001C */  b     .L00411964
/* 004118F4 8FBF0024 */   lw    $ra, 0x24($sp)
.L004118F8:
/* 004118F8 8F848088 */  lw    $a0, %got(B_100230A0)($gp)
/* 004118FC 8F998774 */  lw    $t9, %call16(elf_ndxscn)($gp)
/* 00411900 8C8430A0 */  lw    $a0, %lo(B_100230A0)($a0)
/* 00411904 0320F809 */  jalr  $t9
/* 00411908 00000000 */   nop   
/* 0041190C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00411910 24060008 */  li    $a2, 8
/* 00411914 8F998088 */  lw    $t9, %got(B_1002306C)($gp)
/* 00411918 8F858088 */  lw    $a1, %got(B_1002307C)($gp)
/* 0041191C 8F39306C */  lw    $t9, %lo(B_1002306C)($t9)
/* 00411920 24080004 */  li    $t0, 4
/* 00411924 AF220018 */  sw    $v0, 0x18($t9)
/* 00411928 8CA5307C */  lw    $a1, %lo(B_1002307C)($a1)
/* 0041192C 00000000 */  nop   
/* 00411930 10A0000C */  beqz  $a1, .L00411964
/* 00411934 8FBF0024 */   lw    $ra, 0x24($sp)
/* 00411938 8F848088 */  lw    $a0, %got(B_10023074)($gp)
/* 0041193C 8F878088 */  lw    $a3, %got(B_10023084)($gp)
/* 00411940 8F998018 */  lw    $t9, %got(func_0040DE5C)($gp)
/* 00411944 8C843074 */  lw    $a0, %lo(B_10023074)($a0)
/* 00411948 8CE73084 */  lw    $a3, %lo(B_10023084)($a3)
/* 0041194C 2739DE5C */  addiu $t9, %lo(func_0040DE5C) # addiu $t9, $t9, -0x21a4
/* 00411950 0320F809 */  jalr  $t9
/* 00411954 AFA80010 */   sw    $t0, 0x10($sp)
/* 00411958 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0041195C 00000000 */  nop   
/* 00411960 8FBF0024 */  lw    $ra, 0x24($sp)
.L00411964:
/* 00411964 27BD0028 */  addiu $sp, $sp, 0x28
/* 00411968 03E00008 */  jr    $ra
/* 0041196C 24020001 */   li    $v0, 1

    .type aself_close_wrreloc, @function
    .size aself_close_wrreloc, .-aself_close_wrreloc
    .end aself_close_wrreloc

glabel aself_scnhdr_wrgptable
    .ent aself_scnhdr_wrgptable
    # 0043E7B8 func_0043E7B8
/* 00411970 3C1C0FC2 */  .cpload $t9
/* 00411974 279C88F0 */  
/* 00411978 0399E021 */  
/* 0041197C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 00411980 00803025 */  move  $a2, $a0
/* 00411984 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 00411988 8F99876C */  lw    $t9, %call16(elf_newscn)($gp)
/* 0041198C AFBF001C */  sw    $ra, 0x1c($sp)
/* 00411990 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 00411994 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00411998 AFB00014 */  sw    $s0, 0x14($sp)
/* 0041199C AFA50044 */  sw    $a1, 0x44($sp)
/* 004119A0 0320F809 */  jalr  $t9
/* 004119A4 AFA60040 */   sw    $a2, 0x40($sp)
/* 004119A8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004119AC 8FA60040 */  lw    $a2, 0x40($sp)
/* 004119B0 1040000C */  beqz  $v0, .L004119E4
/* 004119B4 00402025 */   move  $a0, $v0
/* 004119B8 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 004119BC AFA20024 */  sw    $v0, 0x24($sp)
/* 004119C0 0320F809 */  jalr  $t9
/* 004119C4 AFA60040 */   sw    $a2, 0x40($sp)
/* 004119C8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004119CC 8FA40024 */  lw    $a0, 0x24($sp)
/* 004119D0 8F838088 */  lw    $v1, %got(B_10023090)($gp)
/* 004119D4 8FA60040 */  lw    $a2, 0x40($sp)
/* 004119D8 24633090 */  addiu $v1, %lo(B_10023090) # addiu $v1, $v1, 0x3090
/* 004119DC 14400003 */  bnez  $v0, .L004119EC
/* 004119E0 AC620000 */   sw    $v0, ($v1)
.L004119E4:
/* 004119E4 10000147 */  b     .L00411F04
/* 004119E8 2402FFFF */   li    $v0, -1
.L004119EC:
/* 004119EC 8F8F8B28 */  lw     $t7, %got(sixtyfour_bit)($gp)
/* 004119F0 00000000 */  nop   
/* 004119F4 91EF0000 */  lbu   $t7, ($t7)
/* 004119F8 00000000 */  nop   
/* 004119FC 11E000B1 */  beqz  $t7, .L00411CC4
/* 00411A00 00000000 */   nop   
/* 00411A04 8F998754 */  lw    $t9, %call16(elf64_getshdr)($gp)
/* 00411A08 AFA40024 */  sw    $a0, 0x24($sp)
/* 00411A0C 0320F809 */  jalr  $t9
/* 00411A10 AFA60040 */   sw    $a2, 0x40($sp)
/* 00411A14 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411A18 8FA40024 */  lw    $a0, 0x24($sp)
/* 00411A1C 8FA60040 */  lw    $a2, 0x40($sp)
/* 00411A20 14400003 */  bnez  $v0, .L00411A30
/* 00411A24 00408025 */   move  $s0, $v0
/* 00411A28 10000136 */  b     .L00411F04
/* 00411A2C 2402FFFF */   li    $v0, -1
.L00411A30:
/* 00411A30 24010001 */  li    $at, 1
/* 00411A34 10C1002E */  beq   $a2, $at, .L00411AF0
/* 00411A38 24010002 */   li    $at, 2
/* 00411A3C 10C10007 */  beq   $a2, $at, .L00411A5C
/* 00411A40 24010003 */   li    $at, 3
/* 00411A44 10C10074 */  beq   $a2, $at, .L00411C18
/* 00411A48 24010004 */   li    $at, 4
/* 00411A4C 10C1004D */  beq   $a2, $at, .L00411B84
/* 00411A50 00000000 */   nop   
/* 00411A54 10000094 */  b     .L00411CA8
/* 00411A58 00000000 */   nop   
.L00411A5C:
/* 00411A5C 8F84806C */  lw    $a0, %got(RO_10012658)($gp)
/* 00411A60 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 00411A64 24842658 */  addiu $a0, %lo(RO_10012658) # addiu $a0, $a0, 0x2658
/* 00411A68 0320F809 */  jalr  $t9
/* 00411A6C 00000000 */   nop   
/* 00411A70 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411A74 3C187000 */  lui   $t8, 0x7000
/* 00411A78 37180003 */  ori   $t8, $t8, 3
/* 00411A7C 24080000 */  li    $t0, 0
/* 00411A80 24090000 */  li    $t1, 0
/* 00411A84 240A0000 */  li    $t2, 0
/* 00411A88 240B0000 */  li    $t3, 0
/* 00411A8C 240C0000 */  li    $t4, 0
/* 00411A90 240D0008 */  li    $t5, 8
/* 00411A94 AE0D003C */  sw    $t5, 0x3c($s0)
/* 00411A98 AE0C0038 */  sw    $t4, 0x38($s0)
/* 00411A9C AE0B0014 */  sw    $t3, 0x14($s0)
/* 00411AA0 AE0A0010 */  sw    $t2, 0x10($s0)
/* 00411AA4 AE09000C */  sw    $t1, 0xc($s0)
/* 00411AA8 AE080008 */  sw    $t0, 8($s0)
/* 00411AAC AE180004 */  sw    $t8, 4($s0)
/* 00411AB0 AE020000 */  sw    $v0, ($s0)
/* 00411AB4 8F998278 */  lw    $t9, %call16(look_for_scndx)($gp)
/* 00411AB8 8F84806C */  lw    $a0, %got(RO_10012664)($gp)
/* 00411ABC 8FA50044 */  lw    $a1, 0x44($sp)
/* 00411AC0 0320F809 */  jalr  $t9
/* 00411AC4 24842664 */   addiu $a0, %lo(RO_10012664) # addiu $a0, $a0, 0x2664
/* 00411AC8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411ACC 00402825 */  move  $a1, $v0
/* 00411AD0 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 00411AD4 8F99875C */  lw    $t9, %call16(elf_getscn)($gp)
/* 00411AD8 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 00411ADC 0320F809 */  jalr  $t9
/* 00411AE0 00000000 */   nop   
/* 00411AE4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411AE8 1000006F */  b     .L00411CA8
/* 00411AEC 00402025 */   move  $a0, $v0
.L00411AF0:
/* 00411AF0 8F84806C */  lw    $a0, %got(RO_1001266C)($gp)
/* 00411AF4 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 00411AF8 2484266C */  addiu $a0, %lo(RO_1001266C) # addiu $a0, $a0, 0x266c
/* 00411AFC 0320F809 */  jalr  $t9
/* 00411B00 00000000 */   nop   
/* 00411B04 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411B08 3C197000 */  lui   $t9, 0x7000
/* 00411B0C 37390003 */  ori   $t9, $t9, 3
/* 00411B10 AE190004 */  sw    $t9, 4($s0)
/* 00411B14 24190000 */  li    $t9, 0
/* 00411B18 240E0000 */  li    $t6, 0
/* 00411B1C 240F0000 */  li    $t7, 0
/* 00411B20 24180000 */  li    $t8, 0
/* 00411B24 24080000 */  li    $t0, 0
/* 00411B28 24090008 */  li    $t1, 8
/* 00411B2C AE09003C */  sw    $t1, 0x3c($s0)
/* 00411B30 AE080038 */  sw    $t0, 0x38($s0)
/* 00411B34 AE180010 */  sw    $t8, 0x10($s0)
/* 00411B38 AE0F000C */  sw    $t7, 0xc($s0)
/* 00411B3C AE0E0008 */  sw    $t6, 8($s0)
/* 00411B40 AE190014 */  sw    $t9, 0x14($s0)
/* 00411B44 AE020000 */  sw    $v0, ($s0)
/* 00411B48 8F998278 */  lw    $t9, %call16(look_for_scndx)($gp)
/* 00411B4C 8F84806C */  lw    $a0, %got(RO_1001267C)($gp)
/* 00411B50 8FA50044 */  lw    $a1, 0x44($sp)
/* 00411B54 0320F809 */  jalr  $t9
/* 00411B58 2484267C */   addiu $a0, %lo(RO_1001267C) # addiu $a0, $a0, 0x267c
/* 00411B5C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411B60 00402825 */  move  $a1, $v0
/* 00411B64 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 00411B68 8F99875C */  lw    $t9, %call16(elf_getscn)($gp)
/* 00411B6C 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 00411B70 0320F809 */  jalr  $t9
/* 00411B74 00000000 */   nop   
/* 00411B78 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411B7C 1000004A */  b     .L00411CA8
/* 00411B80 00402025 */   move  $a0, $v0
.L00411B84:
/* 00411B84 8F84806C */  lw    $a0, %got(RO_10012684)($gp)
/* 00411B88 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 00411B8C 24842684 */  addiu $a0, %lo(RO_10012684) # addiu $a0, $a0, 0x2684
/* 00411B90 0320F809 */  jalr  $t9
/* 00411B94 00000000 */   nop   
/* 00411B98 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411B9C 3C0A7000 */  lui   $t2, 0x7000
/* 00411BA0 354A0003 */  ori   $t2, $t2, 3
/* 00411BA4 240C0000 */  li    $t4, 0
/* 00411BA8 240D0000 */  li    $t5, 0
/* 00411BAC 240E0000 */  li    $t6, 0
/* 00411BB0 240F0000 */  li    $t7, 0
/* 00411BB4 24180000 */  li    $t8, 0
/* 00411BB8 24190008 */  li    $t9, 8
/* 00411BBC AE19003C */  sw    $t9, 0x3c($s0)
/* 00411BC0 AE180038 */  sw    $t8, 0x38($s0)
/* 00411BC4 AE0F0014 */  sw    $t7, 0x14($s0)
/* 00411BC8 AE0E0010 */  sw    $t6, 0x10($s0)
/* 00411BCC AE0D000C */  sw    $t5, 0xc($s0)
/* 00411BD0 AE0C0008 */  sw    $t4, 8($s0)
/* 00411BD4 AE0A0004 */  sw    $t2, 4($s0)
/* 00411BD8 AE020000 */  sw    $v0, ($s0)
/* 00411BDC 8F998278 */  lw    $t9, %call16(look_for_scndx)($gp)
/* 00411BE0 8F84806C */  lw    $a0, %got(RO_10012690)($gp)
/* 00411BE4 8FA50044 */  lw    $a1, 0x44($sp)
/* 00411BE8 0320F809 */  jalr  $t9
/* 00411BEC 24842690 */   addiu $a0, %lo(RO_10012690) # addiu $a0, $a0, 0x2690
/* 00411BF0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411BF4 00402825 */  move  $a1, $v0
/* 00411BF8 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 00411BFC 8F99875C */  lw    $t9, %call16(elf_getscn)($gp)
/* 00411C00 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 00411C04 0320F809 */  jalr  $t9
/* 00411C08 00000000 */   nop   
/* 00411C0C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411C10 10000025 */  b     .L00411CA8
/* 00411C14 00402025 */   move  $a0, $v0
.L00411C18:
/* 00411C18 8F84806C */  lw    $a0, %got(RO_10012698)($gp)
/* 00411C1C 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 00411C20 24842698 */  addiu $a0, %lo(RO_10012698) # addiu $a0, $a0, 0x2698
/* 00411C24 0320F809 */  jalr  $t9
/* 00411C28 00000000 */   nop   
/* 00411C2C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411C30 3C0B7000 */  lui   $t3, 0x7000
/* 00411C34 356B0003 */  ori   $t3, $t3, 3
/* 00411C38 AE0B0004 */  sw    $t3, 4($s0)
/* 00411C3C 240B0000 */  li    $t3, 0
/* 00411C40 24080000 */  li    $t0, 0
/* 00411C44 24090000 */  li    $t1, 0
/* 00411C48 240A0000 */  li    $t2, 0
/* 00411C4C 240C0000 */  li    $t4, 0
/* 00411C50 240D0008 */  li    $t5, 8
/* 00411C54 AE0D003C */  sw    $t5, 0x3c($s0)
/* 00411C58 AE0C0038 */  sw    $t4, 0x38($s0)
/* 00411C5C AE0A0010 */  sw    $t2, 0x10($s0)
/* 00411C60 AE09000C */  sw    $t1, 0xc($s0)
/* 00411C64 AE080008 */  sw    $t0, 8($s0)
/* 00411C68 AE0B0014 */  sw    $t3, 0x14($s0)
/* 00411C6C AE020000 */  sw    $v0, ($s0)
/* 00411C70 8F998278 */  lw    $t9, %call16(look_for_scndx)($gp)
/* 00411C74 8F84806C */  lw    $a0, %got(RO_100126A4)($gp)
/* 00411C78 8FA50044 */  lw    $a1, 0x44($sp)
/* 00411C7C 0320F809 */  jalr  $t9
/* 00411C80 248426A4 */   addiu $a0, %lo(RO_100126A4) # addiu $a0, $a0, 0x26a4
/* 00411C84 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411C88 00402825 */  move  $a1, $v0
/* 00411C8C 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 00411C90 8F99875C */  lw    $t9, %call16(elf_getscn)($gp)
/* 00411C94 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 00411C98 0320F809 */  jalr  $t9
/* 00411C9C 00000000 */   nop   
/* 00411CA0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411CA4 00402025 */  move  $a0, $v0
.L00411CA8:
/* 00411CA8 8F998774 */  lw    $t9, %call16(elf_ndxscn)($gp)
/* 00411CAC 00000000 */  nop   
/* 00411CB0 0320F809 */  jalr  $t9
/* 00411CB4 00000000 */   nop   
/* 00411CB8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411CBC 10000090 */  b     .L00411F00
/* 00411CC0 AE02002C */   sw    $v0, 0x2c($s0)
.L00411CC4:
/* 00411CC4 8F998750 */  lw    $t9, %call16(elf32_getshdr)($gp)
/* 00411CC8 AFA40024 */  sw    $a0, 0x24($sp)
/* 00411CCC 0320F809 */  jalr  $t9
/* 00411CD0 AFA60040 */   sw    $a2, 0x40($sp)
/* 00411CD4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411CD8 8FA40024 */  lw    $a0, 0x24($sp)
/* 00411CDC 8FA60040 */  lw    $a2, 0x40($sp)
/* 00411CE0 14400003 */  bnez  $v0, .L00411CF0
/* 00411CE4 00408025 */   move  $s0, $v0
/* 00411CE8 10000086 */  b     .L00411F04
/* 00411CEC 2402FFFF */   li    $v0, -1
.L00411CF0:
/* 00411CF0 24010001 */  li    $at, 1
/* 00411CF4 10C10026 */  beq   $a2, $at, .L00411D90
/* 00411CF8 24010002 */   li    $at, 2
/* 00411CFC 10C10007 */  beq   $a2, $at, .L00411D1C
/* 00411D00 24010003 */   li    $at, 3
/* 00411D04 10C1005C */  beq   $a2, $at, .L00411E78
/* 00411D08 24010004 */   li    $at, 4
/* 00411D0C 10C1003D */  beq   $a2, $at, .L00411E04
/* 00411D10 00000000 */   nop   
/* 00411D14 10000074 */  b     .L00411EE8
/* 00411D18 00000000 */   nop   
.L00411D1C:
/* 00411D1C 8F84806C */  lw    $a0, %got(RO_100126AC)($gp)
/* 00411D20 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 00411D24 248426AC */  addiu $a0, %lo(RO_100126AC) # addiu $a0, $a0, 0x26ac
/* 00411D28 0320F809 */  jalr  $t9
/* 00411D2C 00000000 */   nop   
/* 00411D30 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411D34 3C0E7000 */  lui   $t6, 0x7000
/* 00411D38 35CE0003 */  ori   $t6, $t6, 3
/* 00411D3C 240F0008 */  li    $t7, 8
/* 00411D40 AE0F0024 */  sw    $t7, 0x24($s0)
/* 00411D44 AE0E0004 */  sw    $t6, 4($s0)
/* 00411D48 AE00000C */  sw    $zero, 0xc($s0)
/* 00411D4C AE000008 */  sw    $zero, 8($s0)
/* 00411D50 AE020000 */  sw    $v0, ($s0)
/* 00411D54 8F998278 */  lw    $t9, %call16(look_for_scndx)($gp)
/* 00411D58 8F84806C */  lw    $a0, %got(RO_100126B8)($gp)
/* 00411D5C 8FA50044 */  lw    $a1, 0x44($sp)
/* 00411D60 0320F809 */  jalr  $t9
/* 00411D64 248426B8 */   addiu $a0, %lo(RO_100126B8) # addiu $a0, $a0, 0x26b8
/* 00411D68 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411D6C 00402825 */  move  $a1, $v0
/* 00411D70 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 00411D74 8F99875C */  lw    $t9, %call16(elf_getscn)($gp)
/* 00411D78 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 00411D7C 0320F809 */  jalr  $t9
/* 00411D80 00000000 */   nop   
/* 00411D84 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411D88 10000057 */  b     .L00411EE8
/* 00411D8C 00402025 */   move  $a0, $v0
.L00411D90:
/* 00411D90 8F84806C */  lw    $a0, %got(RO_100126C0)($gp)
/* 00411D94 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 00411D98 248426C0 */  addiu $a0, %lo(RO_100126C0) # addiu $a0, $a0, 0x26c0
/* 00411D9C 0320F809 */  jalr  $t9
/* 00411DA0 00000000 */   nop   
/* 00411DA4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411DA8 3C187000 */  lui   $t8, 0x7000
/* 00411DAC 37180003 */  ori   $t8, $t8, 3
/* 00411DB0 24190008 */  li    $t9, 8
/* 00411DB4 AE190024 */  sw    $t9, 0x24($s0)
/* 00411DB8 AE180004 */  sw    $t8, 4($s0)
/* 00411DBC AE00000C */  sw    $zero, 0xc($s0)
/* 00411DC0 AE000008 */  sw    $zero, 8($s0)
/* 00411DC4 AE020000 */  sw    $v0, ($s0)
/* 00411DC8 8F998278 */  lw    $t9, %call16(look_for_scndx)($gp)
/* 00411DCC 8F84806C */  lw    $a0, %got(RO_100126D0)($gp)
/* 00411DD0 8FA50044 */  lw    $a1, 0x44($sp)
/* 00411DD4 0320F809 */  jalr  $t9
/* 00411DD8 248426D0 */   addiu $a0, %lo(RO_100126D0) # addiu $a0, $a0, 0x26d0
/* 00411DDC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411DE0 00402825 */  move  $a1, $v0
/* 00411DE4 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 00411DE8 8F99875C */  lw    $t9, %call16(elf_getscn)($gp)
/* 00411DEC 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 00411DF0 0320F809 */  jalr  $t9
/* 00411DF4 00000000 */   nop   
/* 00411DF8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411DFC 1000003A */  b     .L00411EE8
/* 00411E00 00402025 */   move  $a0, $v0
.L00411E04:
/* 00411E04 8F84806C */  lw    $a0, %got(RO_100126D8)($gp)
/* 00411E08 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 00411E0C 248426D8 */  addiu $a0, %lo(RO_100126D8) # addiu $a0, $a0, 0x26d8
/* 00411E10 0320F809 */  jalr  $t9
/* 00411E14 00000000 */   nop   
/* 00411E18 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411E1C 3C087000 */  lui   $t0, 0x7000
/* 00411E20 35080003 */  ori   $t0, $t0, 3
/* 00411E24 24090008 */  li    $t1, 8
/* 00411E28 AE090024 */  sw    $t1, 0x24($s0)
/* 00411E2C AE080004 */  sw    $t0, 4($s0)
/* 00411E30 AE00000C */  sw    $zero, 0xc($s0)
/* 00411E34 AE000008 */  sw    $zero, 8($s0)
/* 00411E38 AE020000 */  sw    $v0, ($s0)
/* 00411E3C 8F998278 */  lw    $t9, %call16(look_for_scndx)($gp)
/* 00411E40 8F84806C */  lw    $a0, %got(RO_100126E4)($gp)
/* 00411E44 8FA50044 */  lw    $a1, 0x44($sp)
/* 00411E48 0320F809 */  jalr  $t9
/* 00411E4C 248426E4 */   addiu $a0, %lo(RO_100126E4) # addiu $a0, $a0, 0x26e4
/* 00411E50 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411E54 00402825 */  move  $a1, $v0
/* 00411E58 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 00411E5C 8F99875C */  lw    $t9, %call16(elf_getscn)($gp)
/* 00411E60 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 00411E64 0320F809 */  jalr  $t9
/* 00411E68 00000000 */   nop   
/* 00411E6C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411E70 1000001D */  b     .L00411EE8
/* 00411E74 00402025 */   move  $a0, $v0
.L00411E78:
/* 00411E78 8F84806C */  lw    $a0, %got(RO_100126EC)($gp)
/* 00411E7C 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 00411E80 248426EC */  addiu $a0, %lo(RO_100126EC) # addiu $a0, $a0, 0x26ec
/* 00411E84 0320F809 */  jalr  $t9
/* 00411E88 00000000 */   nop   
/* 00411E8C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411E90 3C0A7000 */  lui   $t2, 0x7000
/* 00411E94 354A0003 */  ori   $t2, $t2, 3
/* 00411E98 240B0008 */  li    $t3, 8
/* 00411E9C AE0B0024 */  sw    $t3, 0x24($s0)
/* 00411EA0 AE0A0004 */  sw    $t2, 4($s0)
/* 00411EA4 AE00000C */  sw    $zero, 0xc($s0)
/* 00411EA8 AE000008 */  sw    $zero, 8($s0)
/* 00411EAC AE020000 */  sw    $v0, ($s0)
/* 00411EB0 8F998278 */  lw    $t9, %call16(look_for_scndx)($gp)
/* 00411EB4 8F84806C */  lw    $a0, %got(RO_100126F8)($gp)
/* 00411EB8 8FA50044 */  lw    $a1, 0x44($sp)
/* 00411EBC 0320F809 */  jalr  $t9
/* 00411EC0 248426F8 */   addiu $a0, %lo(RO_100126F8) # addiu $a0, $a0, 0x26f8
/* 00411EC4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411EC8 00402825 */  move  $a1, $v0
/* 00411ECC 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 00411ED0 8F99875C */  lw    $t9, %call16(elf_getscn)($gp)
/* 00411ED4 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 00411ED8 0320F809 */  jalr  $t9
/* 00411EDC 00000000 */   nop   
/* 00411EE0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411EE4 00402025 */  move  $a0, $v0
.L00411EE8:
/* 00411EE8 8F998774 */  lw    $t9, %call16(elf_ndxscn)($gp)
/* 00411EEC 00000000 */  nop   
/* 00411EF0 0320F809 */  jalr  $t9
/* 00411EF4 00000000 */   nop   
/* 00411EF8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411EFC AE02001C */  sw    $v0, 0x1c($s0)
.L00411F00:
/* 00411F00 24020001 */  li    $v0, 1
.L00411F04:
/* 00411F04 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00411F08 8FB00014 */  lw    $s0, 0x14($sp)
/* 00411F0C 03E00008 */  jr    $ra
/* 00411F10 27BD0040 */   addiu $sp, $sp, 0x40

    .type aself_scnhdr_wrgptable, @function
    .size aself_scnhdr_wrgptable, .-aself_scnhdr_wrgptable
    .end aself_scnhdr_wrgptable

glabel aself_write_gp_table
    .ent aself_write_gp_table
    # 0043E7B8 func_0043E7B8
/* 00411F14 3C1C0FC2 */  .cpload $t9
/* 00411F18 279C834C */  
/* 00411F1C 0399E021 */  
/* 00411F20 8F828088 */  lw    $v0, %got(B_10023090)($gp)
/* 00411F24 240F0008 */  li    $t7, 8
/* 00411F28 24423090 */  addiu $v0, %lo(B_10023090) # addiu $v0, $v0, 0x3090
/* 00411F2C 8C4E0000 */  lw    $t6, ($v0)
/* 00411F30 8F898B28 */  lw     $t1, %got(sixtyfour_bit)($gp)
/* 00411F34 ADC40000 */  sw    $a0, ($t6)
/* 00411F38 8C580000 */  lw    $t8, ($v0)
/* 00411F3C 240A0008 */  li    $t2, 8
/* 00411F40 AF0F0004 */  sw    $t7, 4($t8)
/* 00411F44 8C83FFF8 */  lw    $v1, -8($a0)
/* 00411F48 8C480000 */  lw    $t0, ($v0)
/* 00411F4C 0003C8C0 */  sll   $t9, $v1, 3
/* 00411F50 2723FFF8 */  addiu $v1, $t9, -8
/* 00411F54 AD030008 */  sw    $v1, 8($t0)
/* 00411F58 91290000 */  lbu   $t1, ($t1)
/* 00411F5C 00000000 */  nop   
/* 00411F60 11200005 */  beqz  $t1, .L00411F78
/* 00411F64 00000000 */   nop   
/* 00411F68 8C4B0000 */  lw    $t3, ($v0)
/* 00411F6C 00601025 */  move  $v0, $v1
/* 00411F70 03E00008 */  jr    $ra
/* 00411F74 AD6A0010 */   sw    $t2, 0x10($t3)

.L00411F78:
/* 00411F78 8C4D0000 */  lw    $t5, ($v0)
/* 00411F7C 240C0004 */  li    $t4, 4
/* 00411F80 ADAC0010 */  sw    $t4, 0x10($t5)
/* 00411F84 03E00008 */  jr    $ra
/* 00411F88 00601025 */   move  $v0, $v1

    .type aself_write_gp_table, @function
    .size aself_write_gp_table, .-aself_write_gp_table
    .end aself_write_gp_table

    .type func_00411F8C, @function
func_00411F8C:
    # 00412644 func_00412644
    # 00414B68 create_content_section
    # 00414DE8 create_comment_section
/* 00411F8C 3C1C0FC2 */  .cpload $t9
/* 00411F90 279C82D4 */  
/* 00411F94 0399E021 */  
/* 00411F98 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00411F9C AFA40020 */  sw    $a0, 0x20($sp)
/* 00411FA0 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 00411FA4 8F99876C */  lw    $t9, %call16(elf_newscn)($gp)
/* 00411FA8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00411FAC AFB00014 */  sw    $s0, 0x14($sp)
/* 00411FB0 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 00411FB4 00A08025 */  move  $s0, $a1
/* 00411FB8 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00411FBC AFA60028 */  sw    $a2, 0x28($sp)
/* 00411FC0 0320F809 */  jalr  $t9
/* 00411FC4 AFA7002C */   sw    $a3, 0x2c($sp)
/* 00411FC8 8FA30020 */  lw    $v1, 0x20($sp)
/* 00411FCC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00411FD0 14400003 */  bnez  $v0, .L00411FE0
/* 00411FD4 AC620000 */   sw    $v0, ($v1)
/* 00411FD8 1000004A */  b     .L00412104
/* 00411FDC 2402FFFF */   li    $v0, -1
.L00411FE0:
/* 00411FE0 8F8E8B28 */  lw     $t6, %got(sixtyfour_bit)($gp)
/* 00411FE4 00000000 */  nop   
/* 00411FE8 91CE0000 */  lbu   $t6, ($t6)
/* 00411FEC 00000000 */  nop   
/* 00411FF0 11C00025 */  beqz  $t6, .L00412088
/* 00411FF4 00000000 */   nop   
/* 00411FF8 8F998754 */  lw    $t9, %call16(elf64_getshdr)($gp)
/* 00411FFC 8C640000 */  lw    $a0, ($v1)
/* 00412000 0320F809 */  jalr  $t9
/* 00412004 00000000 */   nop   
/* 00412008 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0041200C 14400003 */  bnez  $v0, .L0041201C
/* 00412010 AE020000 */   sw    $v0, ($s0)
/* 00412014 1000003B */  b     .L00412104
/* 00412018 2402FFFF */   li    $v0, -1
.L0041201C:
/* 0041201C 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 00412020 8FA40028 */  lw    $a0, 0x28($sp)
/* 00412024 0320F809 */  jalr  $t9
/* 00412028 00000000 */   nop   
/* 0041202C 8E0F0000 */  lw    $t7, ($s0)
/* 00412030 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00412034 ADE20000 */  sw    $v0, ($t7)
/* 00412038 8E190000 */  lw    $t9, ($s0)
/* 0041203C 8FB8002C */  lw    $t8, 0x2c($sp)
/* 00412040 24080000 */  li    $t0, 0
/* 00412044 AF380004 */  sw    $t8, 4($t9)
/* 00412048 8E0A0000 */  lw    $t2, ($s0)
/* 0041204C 24090000 */  li    $t1, 0
/* 00412050 AD49000C */  sw    $t1, 0xc($t2)
/* 00412054 AD480008 */  sw    $t0, 8($t2)
/* 00412058 8E0B0000 */  lw    $t3, ($s0)
/* 0041205C 240C0000 */  li    $t4, 0
/* 00412060 240D0000 */  li    $t5, 0
/* 00412064 AD6D0014 */  sw    $t5, 0x14($t3)
/* 00412068 AD6C0010 */  sw    $t4, 0x10($t3)
/* 0041206C 8E0F0000 */  lw    $t7, ($s0)
/* 00412070 8FB90030 */  lw    $t9, 0x30($sp)
/* 00412074 00000000 */  nop   
/* 00412078 0019C7C3 */  sra   $t8, $t9, 0x1f
/* 0041207C ADF80038 */  sw    $t8, 0x38($t7)
/* 00412080 1000001F */  b     .L00412100
/* 00412084 ADF9003C */   sw    $t9, 0x3c($t7)
.L00412088:
/* 00412088 8F998750 */  lw    $t9, %call16(elf32_getshdr)($gp)
/* 0041208C 8C640000 */  lw    $a0, ($v1)
/* 00412090 0320F809 */  jalr  $t9
/* 00412094 00000000 */   nop   
/* 00412098 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0041209C 14400003 */  bnez  $v0, .L004120AC
/* 004120A0 AE020000 */   sw    $v0, ($s0)
/* 004120A4 10000017 */  b     .L00412104
/* 004120A8 2402FFFF */   li    $v0, -1
.L004120AC:
/* 004120AC 8F998258 */  lw    $t9, %call16(haddstr)($gp)
/* 004120B0 8FA40028 */  lw    $a0, 0x28($sp)
/* 004120B4 0320F809 */  jalr  $t9
/* 004120B8 00000000 */   nop   
/* 004120BC 8E080000 */  lw    $t0, ($s0)
/* 004120C0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004120C4 AD020000 */  sw    $v0, ($t0)
/* 004120C8 8E0A0000 */  lw    $t2, ($s0)
/* 004120CC 8FA9002C */  lw    $t1, 0x2c($sp)
/* 004120D0 00000000 */  nop   
/* 004120D4 AD490004 */  sw    $t1, 4($t2)
/* 004120D8 8E0C0000 */  lw    $t4, ($s0)
/* 004120DC 00000000 */  nop   
/* 004120E0 AD800008 */  sw    $zero, 8($t4)
/* 004120E4 8E0D0000 */  lw    $t5, ($s0)
/* 004120E8 00000000 */  nop   
/* 004120EC ADA0000C */  sw    $zero, 0xc($t5)
/* 004120F0 8E0E0000 */  lw    $t6, ($s0)
/* 004120F4 8FAB0030 */  lw    $t3, 0x30($sp)
/* 004120F8 00000000 */  nop   
/* 004120FC ADCB0024 */  sw    $t3, 0x24($t6)
.L00412100:
/* 00412100 00001025 */  move  $v0, $zero
.L00412104:
/* 00412104 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00412108 8FB00014 */  lw    $s0, 0x14($sp)
/* 0041210C 03E00008 */  jr    $ra
/* 00412110 27BD0020 */   addiu $sp, $sp, 0x20

    .type func_00412114, @function
func_00412114:
    # 00412704 write_mdebug_scns
/* 00412114 18C00054 */  blez  $a2, .L00412268
/* 00412118 00001025 */   move  $v0, $zero
.L0041211C:
/* 0041211C 8C8E0000 */  lw    $t6, ($a0)
/* 00412120 24420001 */  addiu $v0, $v0, 1
/* 00412124 ACAE0000 */  sw    $t6, ($a1)
/* 00412128 8C8F0004 */  lw    $t7, 4($a0)
/* 0041212C 24840048 */  addiu $a0, $a0, 0x48
/* 00412130 ACAF0004 */  sw    $t7, 4($a1)
/* 00412134 8C98FFC8 */  lw    $t8, -0x38($a0)
/* 00412138 24A5004C */  addiu $a1, $a1, 0x4c
/* 0041213C ACB8FFBC */  sw    $t8, -0x44($a1)
/* 00412140 8C99FFCC */  lw    $t9, -0x34($a0)
/* 00412144 00000000 */  nop   
/* 00412148 ACB9FFC8 */  sw    $t9, -0x38($a1)
/* 0041214C 8C88FFD0 */  lw    $t0, -0x30($a0)
/* 00412150 00000000 */  nop   
/* 00412154 ACA8FFCC */  sw    $t0, -0x34($a1)
/* 00412158 8C89FFD4 */  lw    $t1, -0x2c($a0)
/* 0041215C 00000000 */  nop   
/* 00412160 ACA9FFD0 */  sw    $t1, -0x30($a1)
/* 00412164 8C8AFFD8 */  lw    $t2, -0x28($a0)
/* 00412168 00000000 */  nop   
/* 0041216C ACAAFFD4 */  sw    $t2, -0x2c($a1)
/* 00412170 8C8BFFDC */  lw    $t3, -0x24($a0)
/* 00412174 00000000 */  nop   
/* 00412178 ACABFFD8 */  sw    $t3, -0x28($a1)
/* 0041217C 948CFFE0 */  lhu   $t4, -0x20($a0)
/* 00412180 00000000 */  nop   
/* 00412184 ACACFFDC */  sw    $t4, -0x24($a1)
/* 00412188 948DFFE2 */  lhu   $t5, -0x1e($a0)
/* 0041218C 90ACFFF4 */  lbu   $t4, -0xc($a1)
/* 00412190 ACADFFE0 */  sw    $t5, -0x20($a1)
/* 00412194 8C8EFFE4 */  lw    $t6, -0x1c($a0)
/* 00412198 318DFF07 */  andi  $t5, $t4, 0xff07
/* 0041219C ACAEFFE4 */  sw    $t6, -0x1c($a1)
/* 004121A0 8C8FFFE8 */  lw    $t7, -0x18($a0)
/* 004121A4 00000000 */  nop   
/* 004121A8 ACAFFFE8 */  sw    $t7, -0x18($a1)
/* 004121AC 8C98FFEC */  lw    $t8, -0x14($a0)
/* 004121B0 00000000 */  nop   
/* 004121B4 ACB8FFEC */  sw    $t8, -0x14($a1)
/* 004121B8 8C99FFF0 */  lw    $t9, -0x10($a0)
/* 004121BC 00000000 */  nop   
/* 004121C0 ACB9FFF0 */  sw    $t9, -0x10($a1)
/* 004121C4 8C88FFF4 */  lw    $t0, -0xc($a0)
/* 004121C8 00000000 */  nop   
/* 004121CC 00084EC2 */  srl   $t1, $t0, 0x1b
/* 004121D0 000958C0 */  sll   $t3, $t1, 3
/* 004121D4 016D5025 */  or    $t2, $t3, $t5
/* 004121D8 A0AAFFF4 */  sb    $t2, -0xc($a1)
/* 004121DC 8C8FFFF4 */  lw    $t7, -0xc($a0)
/* 004121E0 314C00FB */  andi  $t4, $t2, 0xfb
/* 004121E4 000FC140 */  sll   $t8, $t7, 5
/* 004121E8 0018CFC2 */  srl   $t9, $t8, 0x1f
/* 004121EC 00194080 */  sll   $t0, $t9, 2
/* 004121F0 31090004 */  andi  $t1, $t0, 4
/* 004121F4 012C4025 */  or    $t0, $t1, $t4
/* 004121F8 A0A8FFF4 */  sb    $t0, -0xc($a1)
/* 004121FC 8C8DFFF4 */  lw    $t5, -0xc($a0)
/* 00412200 310A00FD */  andi  $t2, $t0, 0xfd
/* 00412204 000D7180 */  sll   $t6, $t5, 6
/* 00412208 000E7FC2 */  srl   $t7, $t6, 0x1f
/* 0041220C 000FC040 */  sll   $t8, $t7, 1
/* 00412210 33190002 */  andi  $t9, $t8, 2
/* 00412214 032A7025 */  or    $t6, $t9, $t2
/* 00412218 A0AEFFF4 */  sb    $t6, -0xc($a1)
/* 0041221C 908BFFF4 */  lbu   $t3, -0xc($a0)
/* 00412220 31CF00FE */  andi  $t7, $t6, 0xfe
/* 00412224 316D0001 */  andi  $t5, $t3, 1
/* 00412228 01AFC025 */  or    $t8, $t5, $t7
/* 0041222C A0B8FFF4 */  sb    $t8, -0xc($a1)
/* 00412230 9088FFF5 */  lbu   $t0, -0xb($a0)
/* 00412234 90ACFFF5 */  lbu   $t4, -0xb($a1)
/* 00412238 0008C982 */  srl   $t9, $t0, 6
/* 0041223C 00194980 */  sll   $t1, $t9, 6
/* 00412240 318BFF3F */  andi  $t3, $t4, 0xff3f
/* 00412244 012B7025 */  or    $t6, $t1, $t3
/* 00412248 A0AEFFF5 */  sb    $t6, -0xb($a1)
/* 0041224C 8CA3FFF4 */  lw    $v1, -0xc($a1)
/* 00412250 ACA0FFF8 */  sw    $zero, -8($a1)
/* 00412254 00036A80 */  sll   $t5, $v1, 0xa
/* 00412258 000D7A82 */  srl   $t7, $t5, 0xa
/* 0041225C 01E3C026 */  xor   $t8, $t7, $v1
/* 00412260 1446FFAE */  bne   $v0, $a2, .L0041211C
/* 00412264 ACB8FFF4 */   sw    $t8, -0xc($a1)
.L00412268:
/* 00412268 03E00008 */  jr    $ra
/* 0041226C 00000000 */   nop   

    .type func_00412270, @function
func_00412270:
    # 00412704 write_mdebug_scns
/* 00412270 18C00088 */  blez  $a2, .L00412494
/* 00412274 00001025 */   move  $v0, $zero
/* 00412278 30C30001 */  andi  $v1, $a2, 1
/* 0041227C 1060002D */  beqz  $v1, .L00412334
/* 00412280 3C01000F */   lui   $at, 0xf
/* 00412284 8C8E0004 */  lw    $t6, 4($a0)
/* 00412288 3421FFFF */  ori   $at, $at, 0xffff
/* 0041228C ACAE0008 */  sw    $t6, 8($a1)
/* 00412290 8C8F0008 */  lw    $t7, 8($a0)
/* 00412294 24020001 */  li    $v0, 1
/* 00412298 ACAF000C */  sw    $t7, 0xc($a1)
/* 0041229C 8C98000C */  lw    $t8, 0xc($a0)
/* 004122A0 24A50018 */  addiu $a1, $a1, 0x18
/* 004122A4 0018CE82 */  srl   $t9, $t8, 0x1a
/* 004122A8 A0B9FFF8 */  sb    $t9, -8($a1)
/* 004122AC 8C88000C */  lw    $t0, 0xc($a0)
/* 004122B0 90B9FFE8 */  lbu   $t9, -0x18($a1)
/* 004122B4 00084980 */  sll   $t1, $t0, 6
/* 004122B8 000956C2 */  srl   $t2, $t1, 0x1b
/* 004122BC A0AAFFF9 */  sb    $t2, -7($a1)
/* 004122C0 8C8B000C */  lw    $t3, 0xc($a0)
/* 004122C4 3328FF7F */  andi  $t0, $t9, 0xff7f
/* 004122C8 01616024 */  and   $t4, $t3, $at
/* 004122CC ACACFFFC */  sw    $t4, -4($a1)
/* 004122D0 8C8D0000 */  lw    $t5, ($a0)
/* 004122D4 24840010 */  addiu $a0, $a0, 0x10
/* 004122D8 000D77C2 */  srl   $t6, $t5, 0x1f
/* 004122DC 000EC1C0 */  sll   $t8, $t6, 7
/* 004122E0 03087825 */  or    $t7, $t8, $t0
/* 004122E4 A0AFFFE8 */  sb    $t7, -0x18($a1)
/* 004122E8 8C8AFFF0 */  lw    $t2, -0x10($a0)
/* 004122EC 31F900BF */  andi  $t9, $t7, 0xbf
/* 004122F0 000A5840 */  sll   $t3, $t2, 1
/* 004122F4 000B67C2 */  srl   $t4, $t3, 0x1f
/* 004122F8 000C6980 */  sll   $t5, $t4, 6
/* 004122FC 31AE0040 */  andi  $t6, $t5, 0x40
/* 00412300 01D96825 */  or    $t5, $t6, $t9
/* 00412304 A0ADFFE8 */  sb    $t5, -0x18($a1)
/* 00412308 8C88FFF0 */  lw    $t0, -0x10($a0)
/* 0041230C 31AF00DF */  andi  $t7, $t5, 0xdf
/* 00412310 00084880 */  sll   $t1, $t0, 2
/* 00412314 000957C2 */  srl   $t2, $t1, 0x1f
/* 00412318 000A5940 */  sll   $t3, $t2, 5
/* 0041231C 316C0020 */  andi  $t4, $t3, 0x20
/* 00412320 018F7025 */  or    $t6, $t4, $t7
/* 00412324 A0AEFFE8 */  sb    $t6, -0x18($a1)
/* 00412328 8499FFF2 */  lh    $t9, -0xe($a0)
/* 0041232C 10460059 */  beq   $v0, $a2, .L00412494
/* 00412330 ACB9FFEC */   sw    $t9, -0x14($a1)
.L00412334:
/* 00412334 8C980004 */  lw    $t8, 4($a0)
/* 00412338 3C01000F */  lui   $at, 0xf
/* 0041233C ACB80008 */  sw    $t8, 8($a1)
/* 00412340 8C880008 */  lw    $t0, 8($a0)
/* 00412344 3421FFFF */  ori   $at, $at, 0xffff
/* 00412348 ACA8000C */  sw    $t0, 0xc($a1)
/* 0041234C 8C89000C */  lw    $t1, 0xc($a0)
/* 00412350 24420002 */  addiu $v0, $v0, 2
/* 00412354 00095682 */  srl   $t2, $t1, 0x1a
/* 00412358 A0AA0010 */  sb    $t2, 0x10($a1)
/* 0041235C 8C8B000C */  lw    $t3, 0xc($a0)
/* 00412360 90AA0000 */  lbu   $t2, ($a1)
/* 00412364 000B6980 */  sll   $t5, $t3, 6
/* 00412368 000D66C2 */  srl   $t4, $t5, 0x1b
/* 0041236C A0AC0011 */  sb    $t4, 0x11($a1)
/* 00412370 8C8F000C */  lw    $t7, 0xc($a0)
/* 00412374 314BFF7F */  andi  $t3, $t2, 0xff7f
/* 00412378 01E17024 */  and   $t6, $t7, $at
/* 0041237C ACAE0014 */  sw    $t6, 0x14($a1)
/* 00412380 8C990000 */  lw    $t9, ($a0)
/* 00412384 24A50030 */  addiu $a1, $a1, 0x30
/* 00412388 0019C7C2 */  srl   $t8, $t9, 0x1f
/* 0041238C 001849C0 */  sll   $t1, $t8, 7
/* 00412390 012B4025 */  or    $t0, $t1, $t3
/* 00412394 A0A8FFD0 */  sb    $t0, -0x30($a1)
/* 00412398 8C8C0000 */  lw    $t4, ($a0)
/* 0041239C 310A00BF */  andi  $t2, $t0, 0xbf
/* 004123A0 000C7840 */  sll   $t7, $t4, 1
/* 004123A4 000F77C2 */  srl   $t6, $t7, 0x1f
/* 004123A8 000EC980 */  sll   $t9, $t6, 6
/* 004123AC 33380040 */  andi  $t8, $t9, 0x40
/* 004123B0 030AC825 */  or    $t9, $t8, $t2
/* 004123B4 A0B9FFD0 */  sb    $t9, -0x30($a1)
/* 004123B8 8C8B0000 */  lw    $t3, ($a0)
/* 004123BC 332800DF */  andi  $t0, $t9, 0xdf
/* 004123C0 000B6880 */  sll   $t5, $t3, 2
/* 004123C4 000D67C2 */  srl   $t4, $t5, 0x1f
/* 004123C8 000C7940 */  sll   $t7, $t4, 5
/* 004123CC 31EE0020 */  andi  $t6, $t7, 0x20
/* 004123D0 01C8C025 */  or    $t8, $t6, $t0
/* 004123D4 A0B8FFD0 */  sb    $t8, -0x30($a1)
/* 004123D8 848A0002 */  lh    $t2, 2($a0)
/* 004123DC 24840020 */  addiu $a0, $a0, 0x20
/* 004123E0 ACAAFFD4 */  sw    $t2, -0x2c($a1)
/* 004123E4 8C89FFF4 */  lw    $t1, -0xc($a0)
/* 004123E8 00000000 */  nop   
/* 004123EC ACA9FFF0 */  sw    $t1, -0x10($a1)
/* 004123F0 8C8BFFF8 */  lw    $t3, -8($a0)
/* 004123F4 00000000 */  nop   
/* 004123F8 ACABFFF4 */  sw    $t3, -0xc($a1)
/* 004123FC 8C8DFFFC */  lw    $t5, -4($a0)
/* 00412400 00000000 */  nop   
/* 00412404 000D6682 */  srl   $t4, $t5, 0x1a
/* 00412408 A0ACFFF8 */  sb    $t4, -8($a1)
/* 0041240C 8C8FFFFC */  lw    $t7, -4($a0)
/* 00412410 90ACFFE8 */  lbu   $t4, -0x18($a1)
/* 00412414 000FC980 */  sll   $t9, $t7, 6
/* 00412418 001976C2 */  srl   $t6, $t9, 0x1b
/* 0041241C A0AEFFF9 */  sb    $t6, -7($a1)
/* 00412420 8C88FFFC */  lw    $t0, -4($a0)
/* 00412424 318FFF7F */  andi  $t7, $t4, 0xff7f
/* 00412428 0101C024 */  and   $t8, $t0, $at
/* 0041242C ACB8FFFC */  sw    $t8, -4($a1)
/* 00412430 8C8AFFF0 */  lw    $t2, -0x10($a0)
/* 00412434 00000000 */  nop   
/* 00412438 000A4FC2 */  srl   $t1, $t2, 0x1f
/* 0041243C 000969C0 */  sll   $t5, $t1, 7
/* 00412440 01AF5825 */  or    $t3, $t5, $t7
/* 00412444 A0ABFFE8 */  sb    $t3, -0x18($a1)
/* 00412448 8C8EFFF0 */  lw    $t6, -0x10($a0)
/* 0041244C 316C00BF */  andi  $t4, $t3, 0xbf
/* 00412450 000E4040 */  sll   $t0, $t6, 1
/* 00412454 0008C7C2 */  srl   $t8, $t0, 0x1f
/* 00412458 00185180 */  sll   $t2, $t8, 6
/* 0041245C 31490040 */  andi  $t1, $t2, 0x40
/* 00412460 012C5025 */  or    $t2, $t1, $t4
/* 00412464 A0AAFFE8 */  sb    $t2, -0x18($a1)
/* 00412468 8C8FFFF0 */  lw    $t7, -0x10($a0)
/* 0041246C 314B00DF */  andi  $t3, $t2, 0xdf
/* 00412470 000FC880 */  sll   $t9, $t7, 2
/* 00412474 001977C2 */  srl   $t6, $t9, 0x1f
/* 00412478 000E4140 */  sll   $t0, $t6, 5
/* 0041247C 31180020 */  andi  $t8, $t0, 0x20
/* 00412480 030B4825 */  or    $t1, $t8, $t3
/* 00412484 A0A9FFE8 */  sb    $t1, -0x18($a1)
/* 00412488 848CFFF2 */  lh    $t4, -0xe($a0)
/* 0041248C 1446FFA9 */  bne   $v0, $a2, .L00412334
/* 00412490 ACACFFEC */   sw    $t4, -0x14($a1)
.L00412494:
/* 00412494 03E00008 */  jr    $ra
/* 00412498 00000000 */   nop   

    .type func_0041249C, @function
func_0041249C:
    # 00412704 write_mdebug_scns
/* 0041249C 18C00067 */  blez  $a2, .L0041263C
/* 004124A0 00001025 */   move  $v0, $zero
/* 004124A4 30C70003 */  andi  $a3, $a2, 3
/* 004124A8 10E00017 */  beqz  $a3, .L00412508
/* 004124AC 00E01825 */   move  $v1, $a3
.L004124B0:
/* 004124B0 8C8E0000 */  lw    $t6, ($a0)
/* 004124B4 3C01000F */  lui   $at, 0xf
/* 004124B8 ACAE0000 */  sw    $t6, ($a1)
/* 004124BC 8C8F0004 */  lw    $t7, 4($a0)
/* 004124C0 3421FFFF */  ori   $at, $at, 0xffff
/* 004124C4 ACAF0004 */  sw    $t7, 4($a1)
/* 004124C8 8C980008 */  lw    $t8, 8($a0)
/* 004124CC 24420001 */  addiu $v0, $v0, 1
/* 004124D0 0018CE82 */  srl   $t9, $t8, 0x1a
/* 004124D4 A0B90008 */  sb    $t9, 8($a1)
/* 004124D8 8C880008 */  lw    $t0, 8($a0)
/* 004124DC 24A50010 */  addiu $a1, $a1, 0x10
/* 004124E0 00084980 */  sll   $t1, $t0, 6
/* 004124E4 000956C2 */  srl   $t2, $t1, 0x1b
/* 004124E8 A0AAFFF9 */  sb    $t2, -7($a1)
/* 004124EC 8C8B0008 */  lw    $t3, 8($a0)
/* 004124F0 2484000C */  addiu $a0, $a0, 0xc
/* 004124F4 01616024 */  and   $t4, $t3, $at
/* 004124F8 1462FFED */  bne   $v1, $v0, .L004124B0
/* 004124FC ACACFFFC */   sw    $t4, -4($a1)
/* 00412500 1046004E */  beq   $v0, $a2, .L0041263C
/* 00412504 00000000 */   nop   
.L00412508:
/* 00412508 8C8D0000 */  lw    $t5, ($a0)
/* 0041250C 3C01000F */  lui   $at, 0xf
/* 00412510 ACAD0000 */  sw    $t5, ($a1)
/* 00412514 8C8E0004 */  lw    $t6, 4($a0)
/* 00412518 3421FFFF */  ori   $at, $at, 0xffff
/* 0041251C ACAE0004 */  sw    $t6, 4($a1)
/* 00412520 8C8F0008 */  lw    $t7, 8($a0)
/* 00412524 24420004 */  addiu $v0, $v0, 4
/* 00412528 000FC682 */  srl   $t8, $t7, 0x1a
/* 0041252C A0B80008 */  sb    $t8, 8($a1)
/* 00412530 8C990008 */  lw    $t9, 8($a0)
/* 00412534 24A50040 */  addiu $a1, $a1, 0x40
/* 00412538 00194180 */  sll   $t0, $t9, 6
/* 0041253C 00084EC2 */  srl   $t1, $t0, 0x1b
/* 00412540 A0A9FFC9 */  sb    $t1, -0x37($a1)
/* 00412544 8C8A0008 */  lw    $t2, 8($a0)
/* 00412548 24840030 */  addiu $a0, $a0, 0x30
/* 0041254C 01415824 */  and   $t3, $t2, $at
/* 00412550 ACABFFCC */  sw    $t3, -0x34($a1)
/* 00412554 8C8CFFDC */  lw    $t4, -0x24($a0)
/* 00412558 00000000 */  nop   
/* 0041255C ACACFFD0 */  sw    $t4, -0x30($a1)
/* 00412560 8C8DFFE0 */  lw    $t5, -0x20($a0)
/* 00412564 00000000 */  nop   
/* 00412568 ACADFFD4 */  sw    $t5, -0x2c($a1)
/* 0041256C 8C8EFFE4 */  lw    $t6, -0x1c($a0)
/* 00412570 00000000 */  nop   
/* 00412574 000E7E82 */  srl   $t7, $t6, 0x1a
/* 00412578 A0AFFFD8 */  sb    $t7, -0x28($a1)
/* 0041257C 8C98FFE4 */  lw    $t8, -0x1c($a0)
/* 00412580 00000000 */  nop   
/* 00412584 0018C980 */  sll   $t9, $t8, 6
/* 00412588 001946C2 */  srl   $t0, $t9, 0x1b
/* 0041258C A0A8FFD9 */  sb    $t0, -0x27($a1)
/* 00412590 8C89FFE4 */  lw    $t1, -0x1c($a0)
/* 00412594 00000000 */  nop   
/* 00412598 01215024 */  and   $t2, $t1, $at
/* 0041259C ACAAFFDC */  sw    $t2, -0x24($a1)
/* 004125A0 8C8BFFE8 */  lw    $t3, -0x18($a0)
/* 004125A4 00000000 */  nop   
/* 004125A8 ACABFFE0 */  sw    $t3, -0x20($a1)
/* 004125AC 8C8CFFEC */  lw    $t4, -0x14($a0)
/* 004125B0 00000000 */  nop   
/* 004125B4 ACACFFE4 */  sw    $t4, -0x1c($a1)
/* 004125B8 8C8DFFF0 */  lw    $t5, -0x10($a0)
/* 004125BC 00000000 */  nop   
/* 004125C0 000D7682 */  srl   $t6, $t5, 0x1a
/* 004125C4 A0AEFFE8 */  sb    $t6, -0x18($a1)
/* 004125C8 8C8FFFF0 */  lw    $t7, -0x10($a0)
/* 004125CC 00000000 */  nop   
/* 004125D0 000FC180 */  sll   $t8, $t7, 6
/* 004125D4 0018CEC2 */  srl   $t9, $t8, 0x1b
/* 004125D8 A0B9FFE9 */  sb    $t9, -0x17($a1)
/* 004125DC 8C88FFF0 */  lw    $t0, -0x10($a0)
/* 004125E0 00000000 */  nop   
/* 004125E4 01014824 */  and   $t1, $t0, $at
/* 004125E8 ACA9FFEC */  sw    $t1, -0x14($a1)
/* 004125EC 8C8AFFF4 */  lw    $t2, -0xc($a0)
/* 004125F0 00000000 */  nop   
/* 004125F4 ACAAFFF0 */  sw    $t2, -0x10($a1)
/* 004125F8 8C8BFFF8 */  lw    $t3, -8($a0)
/* 004125FC 00000000 */  nop   
/* 00412600 ACABFFF4 */  sw    $t3, -0xc($a1)
/* 00412604 8C8CFFFC */  lw    $t4, -4($a0)
/* 00412608 00000000 */  nop   
/* 0041260C 000C6E82 */  srl   $t5, $t4, 0x1a
/* 00412610 A0ADFFF8 */  sb    $t5, -8($a1)
/* 00412614 8C8EFFFC */  lw    $t6, -4($a0)
/* 00412618 00000000 */  nop   
/* 0041261C 000E7980 */  sll   $t7, $t6, 6
/* 00412620 000FC6C2 */  srl   $t8, $t7, 0x1b
/* 00412624 A0B8FFF9 */  sb    $t8, -7($a1)
/* 00412628 8C99FFFC */  lw    $t9, -4($a0)
/* 0041262C 00000000 */  nop   
/* 00412630 03214024 */  and   $t0, $t9, $at
/* 00412634 1446FFB4 */  bne   $v0, $a2, .L00412508
/* 00412638 ACA8FFFC */   sw    $t0, -4($a1)
.L0041263C:
/* 0041263C 03E00008 */  jr    $ra
/* 00412640 00000000 */   nop   

    .type func_00412644, @function
func_00412644:
    # 00412704 write_mdebug_scns
/* 00412644 3C1C0FC1 */  .cpload $t9
/* 00412648 279C7C1C */  
/* 0041264C 0399E021 */  
/* 00412650 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 00412654 AFB4002C */  sw    $s4, 0x2c($sp)
/* 00412658 AFB20024 */  sw    $s2, 0x24($sp)
/* 0041265C AFB10020 */  sw    $s1, 0x20($sp)
/* 00412660 AFB0001C */  sw    $s0, 0x1c($sp)
/* 00412664 8F908080 */  lw    $s0, %got(D_100002D8)($gp)
/* 00412668 8F918080 */  lw    $s1, %got(D_100002EC)($gp)
/* 0041266C 8F928080 */  lw    $s2, %got(D_100002E4)($gp)
/* 00412670 8F948080 */  lw    $s4, %got(D_100003F4)($gp)
/* 00412674 AFB30028 */  sw    $s3, 0x28($sp)
/* 00412678 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0041267C AFBC0030 */  sw    $gp, 0x30($sp)
/* 00412680 2413FFFF */  li    $s3, -1
/* 00412684 261002D8 */  addiu $s0, %lo(D_100002D8) # addiu $s0, $s0, 0x2d8
/* 00412688 263102EC */  addiu $s1, %lo(D_100002EC) # addiu $s1, $s1, 0x2ec
/* 0041268C 265202E4 */  addiu $s2, %lo(D_100002E4) # addiu $s2, $s2, 0x2e4
/* 00412690 269403F4 */  addiu $s4, %lo(D_100003F4) # addiu $s4, $s4, 0x3f4
.L00412694:
/* 00412694 8F998018 */  lw    $t9, %got(func_00411F8C)($gp)
/* 00412698 8E0E0008 */  lw    $t6, 8($s0)
/* 0041269C 8E060000 */  lw    $a2, ($s0)
/* 004126A0 8E070004 */  lw    $a3, 4($s0)
/* 004126A4 27391F8C */  addiu $t9, %lo(func_00411F8C) # addiu $t9, $t9, 0x1f8c
/* 004126A8 02402025 */  move  $a0, $s2
/* 004126AC 02202825 */  move  $a1, $s1
/* 004126B0 0320F809 */  jalr  $t9
/* 004126B4 AFAE0010 */   sw    $t6, 0x10($sp)
/* 004126B8 8FBC0030 */  lw    $gp, 0x30($sp)
/* 004126BC 14530003 */  bne   $v0, $s3, .L004126CC
/* 004126C0 26100018 */   addiu $s0, $s0, 0x18
/* 004126C4 10000005 */  b     .L004126DC
/* 004126C8 2402FFFF */   li    $v0, -1
.L004126CC:
/* 004126CC 26310018 */  addiu $s1, $s1, 0x18
/* 004126D0 1634FFF0 */  bne   $s1, $s4, .L00412694
/* 004126D4 26520018 */   addiu $s2, $s2, 0x18
/* 004126D8 00001025 */  move  $v0, $zero
.L004126DC:
/* 004126DC 8FBF0034 */  lw    $ra, 0x34($sp)
/* 004126E0 8FB0001C */  lw    $s0, 0x1c($sp)
/* 004126E4 8FB10020 */  lw    $s1, 0x20($sp)
/* 004126E8 8FB20024 */  lw    $s2, 0x24($sp)
/* 004126EC 8FB30028 */  lw    $s3, 0x28($sp)
/* 004126F0 8FB4002C */  lw    $s4, 0x2c($sp)
/* 004126F4 03E00008 */  jr    $ra
/* 004126F8 27BD0038 */   addiu $sp, $sp, 0x38

/* 004126FC 03E00008 */  jr    $ra
/* 00412700 00000000 */   nop   

glabel write_mdebug_scns
    .ent write_mdebug_scns
    # 00414AE4 elf_mdebug
/* 00412704 3C1C0FC1 */  .cpload $t9
/* 00412708 279C7B5C */  
/* 0041270C 0399E021 */  
/* 00412710 27BDFDF8 */  addiu $sp, $sp, -0x208
/* 00412714 8F9980F0 */  lw    $t9, %call16(bzero)($gp)
/* 00412718 AFBF0044 */  sw    $ra, 0x44($sp)
/* 0041271C AFBE0040 */  sw    $fp, 0x40($sp)
/* 00412720 AFBC003C */  sw    $gp, 0x3c($sp)
/* 00412724 AFB70038 */  sw    $s7, 0x38($sp)
/* 00412728 AFB60034 */  sw    $s6, 0x34($sp)
/* 0041272C AFB50030 */  sw    $s5, 0x30($sp)
/* 00412730 AFB4002C */  sw    $s4, 0x2c($sp)
/* 00412734 AFB30028 */  sw    $s3, 0x28($sp)
/* 00412738 AFB20024 */  sw    $s2, 0x24($sp)
/* 0041273C AFB10020 */  sw    $s1, 0x20($sp)
/* 00412740 AFB0001C */  sw    $s0, 0x1c($sp)
/* 00412744 27A4019C */  addiu $a0, $sp, 0x19c
/* 00412748 0320F809 */  jalr  $t9
/* 0041274C 24050048 */   li    $a1, 72
/* 00412750 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412754 27A40138 */  addiu $a0, $sp, 0x138
/* 00412758 8F9980F0 */  lw    $t9, %call16(bzero)($gp)
/* 0041275C 24050060 */  li    $a1, 96
/* 00412760 0320F809 */  jalr  $t9
/* 00412764 00000000 */   nop   
/* 00412768 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0041276C 00000000 */  nop   
/* 00412770 8F998018 */  lw    $t9, %got(func_00412644)($gp)
/* 00412774 00000000 */  nop   
/* 00412778 27392644 */  addiu $t9, %lo(func_00412644) # addiu $t9, $t9, 0x2644
/* 0041277C 0320F809 */  jalr  $t9
/* 00412780 00000000 */   nop   
/* 00412784 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412788 AFA00130 */  sw    $zero, 0x130($sp)
/* 0041278C 8F8E8080 */  lw    $t6, %got(D_100003D4)($gp)
/* 00412790 8F878B24 */  lw     $a3, %got(st_pchdr)($gp)
/* 00412794 8DCE03D4 */  lw    $t6, %lo(D_100003D4)($t6)
/* 00412798 8CE70000 */  lw    $a3, ($a3)
/* 0041279C AFAE0204 */  sw    $t6, 0x204($sp)
/* 004127A0 8CE3000C */  lw    $v1, 0xc($a3)
/* 004127A4 0000B025 */  move  $s6, $zero
/* 004127A8 1860010D */  blez  $v1, .L00412BE0
/* 004127AC AFA0012C */   sw    $zero, 0x12c($sp)
/* 004127B0 8FB00124 */  lw    $s0, 0x124($sp)
/* 004127B4 AFA0012C */  sw    $zero, 0x12c($sp)
/* 004127B8 27BE0088 */  addiu $fp, $sp, 0x88
.L004127BC:
/* 004127BC 8F9986EC */  lw    $t9, %call16(st_pcfd_ifd)($gp)
/* 004127C0 8FA4012C */  lw    $a0, 0x12c($sp)
/* 004127C4 0320F809 */  jalr  $t9
/* 004127C8 AFA00134 */   sw    $zero, 0x134($sp)
/* 004127CC AFA201E4 */  sw    $v0, 0x1e4($sp)
/* 004127D0 8C4B0000 */  lw    $t3, ($v0)
/* 004127D4 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004127D8 916F003D */  lbu   $t7, 0x3d($t3)
/* 004127DC 8D64001C */  lw    $a0, 0x1c($t3)
/* 004127E0 31F8FFE1 */  andi  $t8, $t7, 0xffe1
/* 004127E4 A178003D */  sb    $t8, 0x3d($t3)
/* 004127E8 8D63003C */  lw    $v1, 0x3c($t3)
/* 004127EC 00000000 */  nop   
/* 004127F0 0003CB42 */  srl   $t9, $v1, 0xd
/* 004127F4 00196F00 */  sll   $t5, $t9, 0x1c
/* 004127F8 000D73C2 */  srl   $t6, $t5, 0xf
/* 004127FC 01C37826 */  xor   $t7, $t6, $v1
/* 00412800 AD6F003C */  sw    $t7, 0x3c($t3)
/* 00412804 9578003E */  lhu   $t8, 0x3e($t3)
/* 00412808 00000000 */  nop   
/* 0041280C 3319E000 */  andi  $t9, $t8, 0xe000
/* 00412810 108000E8 */  beqz  $a0, .L00412BB4
/* 00412814 A579003E */   sh    $t9, 0x3e($t3)
/* 00412818 8C4D0024 */  lw    $t5, 0x24($v0)
/* 0041281C 8FAE013C */  lw    $t6, 0x13c($sp)
/* 00412820 11A000E4 */  beqz  $t5, .L00412BB4
/* 00412824 00000000 */   nop   
/* 00412828 AD6E0018 */  sw    $t6, 0x18($t3)
/* 0041282C 8FAF013C */  lw    $t7, 0x13c($sp)
/* 00412830 8FB90130 */  lw    $t9, 0x130($sp)
/* 00412834 01E4C021 */  addu  $t8, $t7, $a0
/* 00412838 AFB8013C */  sw    $t8, 0x13c($sp)
/* 0041283C 9569002A */  lhu   $t1, 0x2a($t3)
/* 00412840 00006025 */  move  $t4, $zero
/* 00412844 192000D8 */  blez  $t1, .L00412BA8
/* 00412848 AD790040 */   sw    $t9, 0x40($t3)
/* 0041284C 240AFFFF */  li    $t2, -1
/* 00412850 8FAD01E4 */  lw    $t5, 0x1e4($sp)
.L00412854:
/* 00412854 00091080 */  sll   $v0, $t1, 2
/* 00412858 8DAE0034 */  lw    $t6, 0x34($t5)
/* 0041285C 00491023 */  subu  $v0, $v0, $t1
/* 00412860 01CC4021 */  addu  $t0, $t6, $t4
/* 00412864 8D0F0008 */  lw    $t7, 8($t0)
/* 00412868 00021080 */  sll   $v0, $v0, 2
/* 0041286C 114F0009 */  beq   $t2, $t7, .L00412894
/* 00412870 00491021 */   addu  $v0, $v0, $t1
/* 00412874 8D180028 */  lw    $t8, 0x28($t0)
/* 00412878 00000000 */  nop   
/* 0041287C 11580005 */  beq   $t2, $t8, .L00412894
/* 00412880 00000000 */   nop   
/* 00412884 8D19002C */  lw    $t9, 0x2c($t0)
/* 00412888 8FAD0130 */  lw    $t5, 0x130($sp)
/* 0041288C 15590003 */  bne   $t2, $t9, .L0041289C
/* 00412890 00000000 */   nop   
.L00412894:
/* 00412894 100000C0 */  b     .L00412B98
/* 00412898 00021080 */   sll   $v0, $v0, 2
.L0041289C:
/* 0041289C 8D6E0040 */  lw    $t6, 0x40($t3)
/* 004128A0 00001825 */  move  $v1, $zero
/* 004128A4 01AE7823 */  subu  $t7, $t5, $t6
/* 004128A8 AD0F0030 */  sw    $t7, 0x30($t0)
/* 004128AC 9569002A */  lhu   $t1, 0x2a($t3)
/* 004128B0 8D65001C */  lw    $a1, 0x1c($t3)
/* 004128B4 19200014 */  blez  $t1, .L00412908
/* 004128B8 00093080 */   sll   $a2, $t1, 2
/* 004128BC 8FB801E4 */  lw    $t8, 0x1e4($sp)
/* 004128C0 00C93023 */  subu  $a2, $a2, $t1
/* 004128C4 00063080 */  sll   $a2, $a2, 2
/* 004128C8 00C93021 */  addu  $a2, $a2, $t1
/* 004128CC 8D070008 */  lw    $a3, 8($t0)
/* 004128D0 8F040034 */  lw    $a0, 0x34($t8)
/* 004128D4 00063080 */  sll   $a2, $a2, 2
.L004128D8:
/* 004128D8 8C820008 */  lw    $v0, 8($a0)
/* 004128DC 24630034 */  addiu $v1, $v1, 0x34
/* 004128E0 00E2082A */  slt   $at, $a3, $v0
/* 004128E4 10200004 */  beqz  $at, .L004128F8
/* 004128E8 0045082A */   slt   $at, $v0, $a1
/* 004128EC 10200003 */  beqz  $at, .L004128FC
/* 004128F0 0066082A */   slt   $at, $v1, $a2
/* 004128F4 00402825 */  move  $a1, $v0
.L004128F8:
/* 004128F8 0066082A */  slt   $at, $v1, $a2
.L004128FC:
/* 004128FC 1420FFF6 */  bnez  $at, .L004128D8
/* 00412900 24840034 */   addiu $a0, $a0, 0x34
/* 00412904 240AFFFF */  li    $t2, -1
.L00412908:
/* 00412908 18A00005 */  blez  $a1, .L00412920
/* 0041290C 00091080 */   sll   $v0, $t1, 2
/* 00412910 8D070008 */  lw    $a3, 8($t0)
/* 00412914 AFA801E8 */  sw    $t0, 0x1e8($sp)
/* 00412918 04E10006 */  bgez  $a3, .L00412934
/* 0041291C 00076880 */   sll   $t5, $a3, 2
.L00412920:
/* 00412920 00491023 */  subu  $v0, $v0, $t1
/* 00412924 00021080 */  sll   $v0, $v0, 2
/* 00412928 00491021 */  addu  $v0, $v0, $t1
/* 0041292C 1000009A */  b     .L00412B98
/* 00412930 00021080 */   sll   $v0, $v0, 2
.L00412934:
/* 00412934 8FB901E4 */  lw    $t9, 0x1e4($sp)
/* 00412938 AFAC0064 */  sw    $t4, 0x64($sp)
/* 0041293C AFAB0198 */  sw    $t3, 0x198($sp)
/* 00412940 8F220024 */  lw    $v0, 0x24($t9)
/* 00412944 8FAE01E8 */  lw    $t6, 0x1e8($sp)
/* 00412948 00053080 */  sll   $a2, $a1, 2
/* 0041294C 004DA021 */  addu  $s4, $v0, $t5
/* 00412950 00462021 */  addu  $a0, $v0, $a2
/* 00412954 0094082B */  sltu  $at, $a0, $s4
/* 00412958 8DD70028 */  lw    $s7, 0x28($t6)
/* 0041295C 2413FFFF */  li    $s3, -1
/* 00412960 0000A825 */  move  $s5, $zero
/* 00412964 AFA60058 */  sw    $a2, 0x58($sp)
/* 00412968 14200083 */  bnez  $at, .L00412B78
/* 0041296C 03C01825 */   move  $v1, $fp
.L00412970:
/* 00412970 16840003 */  bne   $s4, $a0, .L00412980
/* 00412974 24010008 */   li    $at, 8
/* 00412978 1000000B */  b     .L004129A8
/* 0041297C 24040001 */   li    $a0, 1
.L00412980:
/* 00412980 8E820000 */  lw    $v0, ($s4)
/* 00412984 8FAF01E8 */  lw    $t7, 0x1e8($sp)
/* 00412988 14400004 */  bnez  $v0, .L0041299C
/* 0041298C 00402825 */   move  $a1, $v0
/* 00412990 8DE50028 */  lw    $a1, 0x28($t7)
/* 00412994 10000002 */  b     .L004129A0
/* 00412998 00B72023 */   subu  $a0, $a1, $s7
.L0041299C:
/* 0041299C 00B72023 */  subu  $a0, $a1, $s7
.L004129A0:
/* 004129A0 0004C400 */  sll   $t8, $a0, 0x10
/* 004129A4 00182403 */  sra   $a0, $t8, 0x10
.L004129A8:
/* 004129A8 14800003 */  bnez  $a0, .L004129B8
/* 004129AC 27B80108 */   addiu $t8, $sp, 0x108
/* 004129B0 1661001C */  bne   $s3, $at, .L00412A24
/* 004129B4 24620003 */   addiu $v0, $v1, 3
.L004129B8:
/* 004129B8 2401FFFF */  li    $at, -1
/* 004129BC 1261000A */  beq   $s3, $at, .L004129E8
/* 004129C0 02E4B821 */   addu  $s7, $s7, $a0
/* 004129C4 2AA1FFF9 */  slti  $at, $s5, -7
/* 004129C8 14200007 */  bnez  $at, .L004129E8
/* 004129CC 2AA10008 */   slti  $at, $s5, 8
/* 004129D0 10200005 */  beqz  $at, .L004129E8
/* 004129D4 00157100 */   sll   $t6, $s5, 4
/* 004129D8 01D37825 */  or    $t7, $t6, $s3
/* 004129DC A06F0000 */  sb    $t7, ($v1)
/* 004129E0 1000000A */  b     .L00412A0C
/* 004129E4 24630001 */   addiu $v1, $v1, 1
.L004129E8:
/* 004129E8 2401FFFF */  li    $at, -1
/* 004129EC 12610007 */  beq   $s3, $at, .L00412A0C
/* 004129F0 36790080 */   ori   $t9, $s3, 0x80
/* 004129F4 A0730000 */  sb    $s3, ($v1)
/* 004129F8 00156A03 */  sra   $t5, $s5, 8
/* 004129FC A0790000 */  sb    $t9, ($v1)
/* 00412A00 A06D0001 */  sb    $t5, 1($v1)
/* 00412A04 A0750002 */  sb    $s5, 2($v1)
/* 00412A08 24630003 */  addiu $v1, $v1, 3
.L00412A0C:
/* 00412A0C 0004AC00 */  sll   $s5, $a0, 0x10
/* 00412A10 00157C03 */  sra   $t7, $s5, 0x10
/* 00412A14 00009825 */  move  $s3, $zero
/* 00412A18 01E0A825 */  move  $s5, $t7
/* 00412A1C 10000002 */  b     .L00412A28
/* 00412A20 24620003 */   addiu $v0, $v1, 3
.L00412A24:
/* 00412A24 26730001 */  addiu $s3, $s3, 1
.L00412A28:
/* 00412A28 0058082B */  sltu  $at, $v0, $t8
/* 00412A2C 1020000A */  beqz  $at, .L00412A58
/* 00412A30 00000000 */   nop   
/* 00412A34 8FB901E4 */  lw    $t9, 0x1e4($sp)
/* 00412A38 8FAE0058 */  lw    $t6, 0x58($sp)
/* 00412A3C 8F2D0024 */  lw    $t5, 0x24($t9)
/* 00412A40 007E7823 */  subu  $t7, $v1, $fp
/* 00412A44 01AE2021 */  addu  $a0, $t5, $t6
/* 00412A48 16840043 */  bne   $s4, $a0, .L00412B58
/* 00412A4C 00000000 */   nop   
/* 00412A50 19E00041 */  blez  $t7, .L00412B58
/* 00412A54 00000000 */   nop   
.L00412A58:
/* 00412A58 12C00008 */  beqz  $s6, .L00412A7C
/* 00412A5C 007E9023 */   subu  $s2, $v1, $fp
/* 00412A60 8EC20008 */  lw    $v0, 8($s6)
/* 00412A64 00000000 */  nop   
/* 00412A68 0043C021 */  addu  $t8, $v0, $v1
/* 00412A6C 031EC823 */  subu  $t9, $t8, $fp
/* 00412A70 0219082B */  sltu  $at, $s0, $t9
/* 00412A74 10200023 */  beqz  $at, .L00412B04
/* 00412A78 00000000 */   nop   
.L00412A7C:
/* 00412A7C 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00412A80 8FA40204 */  lw    $a0, 0x204($sp)
/* 00412A84 0320F809 */  jalr  $t9
/* 00412A88 00000000 */   nop   
/* 00412A8C 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412A90 14400008 */  bnez  $v0, .L00412AB4
/* 00412A94 0040B025 */   move  $s6, $v0
/* 00412A98 8F84806C */  lw    $a0, %got(RO_1001275C)($gp)
/* 00412A9C 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00412AA0 2484275C */  addiu $a0, %lo(RO_1001275C) # addiu $a0, $a0, 0x275c
/* 00412AA4 0320F809 */  jalr  $t9
/* 00412AA8 00000000 */   nop   
/* 00412AAC 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412AB0 00000000 */  nop   
.L00412AB4:
/* 00412AB4 240D0001 */  li    $t5, 1
/* 00412AB8 AECD0010 */  sw    $t5, 0x10($s6)
/* 00412ABC AEC00008 */  sw    $zero, 8($s6)
/* 00412AC0 8F998190 */  lw    $t9, %call16(malloc)($gp)
/* 00412AC4 26500008 */  addiu $s0, $s2, 8
/* 00412AC8 02008825 */  move  $s1, $s0
/* 00412ACC 0320F809 */  jalr  $t9
/* 00412AD0 02002025 */   move  $a0, $s0
/* 00412AD4 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412AD8 14400008 */  bnez  $v0, .L00412AFC
/* 00412ADC AEC20000 */   sw    $v0, ($s6)
/* 00412AE0 8F84806C */  lw    $a0, %got(RO_1001279C)($gp)
/* 00412AE4 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00412AE8 02002825 */  move  $a1, $s0
/* 00412AEC 0320F809 */  jalr  $t9
/* 00412AF0 2484279C */   addiu $a0, %lo(RO_1001279C) # addiu $a0, $a0, 0x279c
/* 00412AF4 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412AF8 00000000 */  nop   
.L00412AFC:
/* 00412AFC 8EC20008 */  lw    $v0, 8($s6)
/* 00412B00 02208025 */  move  $s0, $s1
.L00412B04:
/* 00412B04 8ECE0000 */  lw    $t6, ($s6)
/* 00412B08 8F9980DC */  lw    $t9, %call16(memcpy)($gp)
/* 00412B0C 03C02825 */  move  $a1, $fp
/* 00412B10 02403025 */  move  $a2, $s2
/* 00412B14 0320F809 */  jalr  $t9
/* 00412B18 01C22021 */   addu  $a0, $t6, $v0
/* 00412B1C 8ECF0008 */  lw    $t7, 8($s6)
/* 00412B20 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412B24 01F2C021 */  addu  $t8, $t7, $s2
/* 00412B28 AED80008 */  sw    $t8, 8($s6)
/* 00412B2C 8FB90130 */  lw    $t9, 0x130($sp)
/* 00412B30 8FAE0134 */  lw    $t6, 0x134($sp)
/* 00412B34 03326821 */  addu  $t5, $t9, $s2
/* 00412B38 8FB801E4 */  lw    $t8, 0x1e4($sp)
/* 00412B3C AFAD0130 */  sw    $t5, 0x130($sp)
/* 00412B40 01D27821 */  addu  $t7, $t6, $s2
/* 00412B44 AFAF0134 */  sw    $t7, 0x134($sp)
/* 00412B48 8FAD0058 */  lw    $t5, 0x58($sp)
/* 00412B4C 8F190024 */  lw    $t9, 0x24($t8)
/* 00412B50 03C01825 */  move  $v1, $fp
/* 00412B54 032D2021 */  addu  $a0, $t9, $t5
.L00412B58:
/* 00412B58 26940004 */  addiu $s4, $s4, 4
/* 00412B5C 0094082B */  sltu  $at, $a0, $s4
/* 00412B60 1020FF83 */  beqz  $at, .L00412970
/* 00412B64 00000000 */   nop   
/* 00412B68 8FAE0198 */  lw    $t6, 0x198($sp)
/* 00412B6C 00000000 */  nop   
/* 00412B70 95C9002A */  lhu   $t1, 0x2a($t6)
/* 00412B74 00000000 */  nop   
.L00412B78:
/* 00412B78 00091080 */  sll   $v0, $t1, 2
/* 00412B7C 00491023 */  subu  $v0, $v0, $t1
/* 00412B80 00021080 */  sll   $v0, $v0, 2
/* 00412B84 00491021 */  addu  $v0, $v0, $t1
/* 00412B88 8FAC0064 */  lw    $t4, 0x64($sp)
/* 00412B8C 8FAB0198 */  lw    $t3, 0x198($sp)
/* 00412B90 00021080 */  sll   $v0, $v0, 2
/* 00412B94 240AFFFF */  li    $t2, -1
.L00412B98:
/* 00412B98 258C0034 */  addiu $t4, $t4, 0x34
/* 00412B9C 0182082A */  slt   $at, $t4, $v0
/* 00412BA0 1420FF2C */  bnez  $at, .L00412854
/* 00412BA4 8FAD01E4 */   lw    $t5, 0x1e4($sp)
.L00412BA8:
/* 00412BA8 8FAF0134 */  lw    $t7, 0x134($sp)
/* 00412BAC 00000000 */  nop   
/* 00412BB0 AD6F0044 */  sw    $t7, 0x44($t3)
.L00412BB4:
/* 00412BB4 8F878B24 */  lw     $a3, %got(st_pchdr)($gp)
/* 00412BB8 8FA2012C */  lw    $v0, 0x12c($sp)
/* 00412BBC 8CE70000 */  lw    $a3, ($a3)
/* 00412BC0 24420001 */  addiu $v0, $v0, 1
/* 00412BC4 8CE3000C */  lw    $v1, 0xc($a3)
/* 00412BC8 AFA2012C */  sw    $v0, 0x12c($sp)
/* 00412BCC 0043082A */  slt   $at, $v0, $v1
/* 00412BD0 1420FEFA */  bnez  $at, .L004127BC
/* 00412BD4 00000000 */   nop   
/* 00412BD8 AFB00124 */  sw    $s0, 0x124($sp)
/* 00412BDC AFA0012C */  sw    $zero, 0x12c($sp)
.L00412BE0:
/* 00412BE0 8FA5012C */  lw    $a1, 0x12c($sp)
/* 00412BE4 1060002A */  beqz  $v1, .L00412C90
/* 00412BE8 00038880 */   sll   $s1, $v1, 2
/* 00412BEC 02238821 */  addu  $s1, $s1, $v1
/* 00412BF0 00118880 */  sll   $s1, $s1, 2
/* 00412BF4 8F998190 */  lw    $t9, %call16(malloc)($gp)
/* 00412BF8 02238823 */  subu  $s1, $s1, $v1
/* 00412BFC 00118880 */  sll   $s1, $s1, 2
/* 00412C00 02202025 */  move  $a0, $s1
/* 00412C04 0320F809 */  jalr  $t9
/* 00412C08 AFA5012C */   sw    $a1, 0x12c($sp)
/* 00412C0C 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412C10 00408025 */  move  $s0, $v0
/* 00412C14 8F878B24 */  lw     $a3, %got(st_pchdr)($gp)
/* 00412C18 8F998018 */  lw    $t9, %got(func_00412114)($gp)
/* 00412C1C 8CE70000 */  lw    $a3, ($a3)
/* 00412C20 27392114 */  addiu $t9, %lo(func_00412114) # addiu $t9, $t9, 0x2114
/* 00412C24 8CE40008 */  lw    $a0, 8($a3)
/* 00412C28 8CE6000C */  lw    $a2, 0xc($a3)
/* 00412C2C 0320F809 */  jalr  $t9
/* 00412C30 00402825 */   move  $a1, $v0
/* 00412C34 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412C38 00000000 */  nop   
/* 00412C3C 8F848080 */  lw    $a0, %got(D_100002FC)($gp)
/* 00412C40 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00412C44 8C8402FC */  lw    $a0, %lo(D_100002FC)($a0)
/* 00412C48 0320F809 */  jalr  $t9
/* 00412C4C 00000000 */   nop   
/* 00412C50 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412C54 24180004 */  li    $t8, 4
/* 00412C58 8F998018 */  lw    $t9, %got(func_0040DE5C)($gp)
/* 00412C5C AFB80010 */  sw    $t8, 0x10($sp)
/* 00412C60 2739DE5C */  addiu $t9, %lo(func_0040DE5C) # addiu $t9, $t9, -0x21a4
/* 00412C64 00402025 */  move  $a0, $v0
/* 00412C68 02002825 */  move  $a1, $s0
/* 00412C6C 00003025 */  move  $a2, $zero
/* 00412C70 0320F809 */  jalr  $t9
/* 00412C74 02203825 */   move  $a3, $s1
/* 00412C78 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412C7C 00000000 */  nop   
/* 00412C80 8F878B24 */  lw     $a3, %got(st_pchdr)($gp)
/* 00412C84 00000000 */  nop   
/* 00412C88 8CE70000 */  lw    $a3, ($a3)
/* 00412C8C 00000000 */  nop   
.L00412C90:
/* 00412C90 8CE2001C */  lw    $v0, 0x1c($a3)
/* 00412C94 8FA5012C */  lw    $a1, 0x12c($sp)
/* 00412C98 10400028 */  beqz  $v0, .L00412D3C
/* 00412C9C 00028880 */   sll   $s1, $v0, 2
/* 00412CA0 8F998190 */  lw    $t9, %call16(malloc)($gp)
/* 00412CA4 02228823 */  subu  $s1, $s1, $v0
/* 00412CA8 001188C0 */  sll   $s1, $s1, 3
/* 00412CAC 02202025 */  move  $a0, $s1
/* 00412CB0 0320F809 */  jalr  $t9
/* 00412CB4 AFA5012C */   sw    $a1, 0x12c($sp)
/* 00412CB8 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412CBC 00408025 */  move  $s0, $v0
/* 00412CC0 8F878B24 */  lw     $a3, %got(st_pchdr)($gp)
/* 00412CC4 8F998018 */  lw    $t9, %got(func_00412270)($gp)
/* 00412CC8 8CE70000 */  lw    $a3, ($a3)
/* 00412CCC 27392270 */  addiu $t9, %lo(func_00412270) # addiu $t9, $t9, 0x2270
/* 00412CD0 8CE40018 */  lw    $a0, 0x18($a3)
/* 00412CD4 8CE6001C */  lw    $a2, 0x1c($a3)
/* 00412CD8 0320F809 */  jalr  $t9
/* 00412CDC 00402825 */   move  $a1, $v0
/* 00412CE0 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412CE4 00000000 */  nop   
/* 00412CE8 8F848080 */  lw    $a0, %got(D_10000314)($gp)
/* 00412CEC 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00412CF0 8C840314 */  lw    $a0, %lo(D_10000314)($a0)
/* 00412CF4 0320F809 */  jalr  $t9
/* 00412CF8 00000000 */   nop   
/* 00412CFC 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412D00 24190004 */  li    $t9, 4
/* 00412D04 AFB90010 */  sw    $t9, 0x10($sp)
/* 00412D08 8F998018 */  lw    $t9, %got(func_0040DE5C)($gp)
/* 00412D0C 00402025 */  move  $a0, $v0
/* 00412D10 2739DE5C */  addiu $t9, %lo(func_0040DE5C) # addiu $t9, $t9, -0x21a4
/* 00412D14 02002825 */  move  $a1, $s0
/* 00412D18 00003025 */  move  $a2, $zero
/* 00412D1C 0320F809 */  jalr  $t9
/* 00412D20 02203825 */   move  $a3, $s1
/* 00412D24 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412D28 00000000 */  nop   
/* 00412D2C 8F878B24 */  lw     $a3, %got(st_pchdr)($gp)
/* 00412D30 00000000 */  nop   
/* 00412D34 8CE70000 */  lw    $a3, ($a3)
/* 00412D38 00000000 */  nop   
.L00412D3C:
/* 00412D3C 8CE20028 */  lw    $v0, 0x28($a3)
/* 00412D40 8FA5012C */  lw    $a1, 0x12c($sp)
/* 00412D44 10400023 */  beqz  $v0, .L00412DD4
/* 00412D48 00000000 */   nop   
/* 00412D4C 8F848080 */  lw    $a0, %got(D_10000344)($gp)
/* 00412D50 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00412D54 8C840344 */  lw    $a0, %lo(D_10000344)($a0)
/* 00412D58 00408825 */  move  $s1, $v0
/* 00412D5C 0320F809 */  jalr  $t9
/* 00412D60 AFA5012C */   sw    $a1, 0x12c($sp)
/* 00412D64 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412D68 240E0001 */  li    $t6, 1
/* 00412D6C 8F8D8B24 */  lw     $t5, %got(st_pchdr)($gp)
/* 00412D70 8F998018 */  lw    $t9, %got(func_0040DE5C)($gp)
/* 00412D74 8DAD0000 */  lw    $t5, ($t5)
/* 00412D78 2739DE5C */  addiu $t9, %lo(func_0040DE5C) # addiu $t9, $t9, -0x21a4
/* 00412D7C 8DA50024 */  lw    $a1, 0x24($t5)
/* 00412D80 AFAE0010 */  sw    $t6, 0x10($sp)
/* 00412D84 00402025 */  move  $a0, $v0
/* 00412D88 00003025 */  move  $a2, $zero
/* 00412D8C 0320F809 */  jalr  $t9
/* 00412D90 02203825 */   move  $a3, $s1
/* 00412D94 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412D98 00000000 */  nop   
/* 00412D9C 8F848080 */  lw    $a0, %got(D_10000344)($gp)
/* 00412DA0 8F998774 */  lw    $t9, %call16(elf_ndxscn)($gp)
/* 00412DA4 8C840344 */  lw    $a0, %lo(D_10000344)($a0)
/* 00412DA8 0320F809 */  jalr  $t9
/* 00412DAC 00000000 */   nop   
/* 00412DB0 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412DB4 00000000 */  nop   
/* 00412DB8 8F8F8080 */  lw    $t7, %got(D_1000031C)($gp)
/* 00412DBC 8F878B24 */  lw     $a3, %got(st_pchdr)($gp)
/* 00412DC0 8DEF031C */  lw    $t7, %lo(D_1000031C)($t7)
/* 00412DC4 00000000 */  nop   
/* 00412DC8 ADE20018 */  sw    $v0, 0x18($t7)
/* 00412DCC 8CE70000 */  lw    $a3, ($a3)
/* 00412DD0 00000000 */  nop   
.L00412DD4:
/* 00412DD4 8F988080 */  lw    $t8, %got(D_1000035C)($gp)
/* 00412DD8 8FA5012C */  lw    $a1, 0x12c($sp)
/* 00412DDC 8F18035C */  lw    $t8, %lo(D_1000035C)($t8)
/* 00412DE0 00000000 */  nop   
/* 00412DE4 AFB80204 */  sw    $t8, 0x204($sp)
/* 00412DE8 8CE3000C */  lw    $v1, 0xc($a3)
/* 00412DEC 00000000 */  nop   
/* 00412DF0 18600040 */  blez  $v1, .L00412EF4
/* 00412DF4 00000000 */   nop   
/* 00412DF8 8F92806C */  lw    $s2, %got(RO_100127D4)($gp)
/* 00412DFC AFA5012C */  sw    $a1, 0x12c($sp)
/* 00412E00 24130004 */  li    $s3, 4
/* 00412E04 24110034 */  li    $s1, 52
/* 00412E08 265227D4 */  addiu $s2, %lo(RO_100127D4) # addiu $s2, $s2, 0x27d4
.L00412E0C:
/* 00412E0C 8F9986EC */  lw    $t9, %call16(st_pcfd_ifd)($gp)
/* 00412E10 8FA4012C */  lw    $a0, 0x12c($sp)
/* 00412E14 0320F809 */  jalr  $t9
/* 00412E18 00000000 */   nop   
/* 00412E1C AFA201E4 */  sw    $v0, 0x1e4($sp)
/* 00412E20 8C450000 */  lw    $a1, ($v0)
/* 00412E24 97B901C4 */  lhu   $t9, 0x1c4($sp)
/* 00412E28 94A3002A */  lhu   $v1, 0x2a($a1)
/* 00412E2C 97AD01C6 */  lhu   $t5, 0x1c6($sp)
/* 00412E30 00710019 */  multu $v1, $s1
/* 00412E34 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412E38 032D7021 */  addu  $t6, $t9, $t5
/* 00412E3C A4AE0028 */  sh    $t6, 0x28($a1)
/* 00412E40 00008012 */  mflo  $s0
/* 00412E44 1060001A */  beqz  $v1, .L00412EB0
/* 00412E48 97AD01C4 */   lhu   $t5, 0x1c4($sp)
/* 00412E4C 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00412E50 8FA40204 */  lw    $a0, 0x204($sp)
/* 00412E54 0320F809 */  jalr  $t9
/* 00412E58 AFA50198 */   sw    $a1, 0x198($sp)
/* 00412E5C 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412E60 14400007 */  bnez  $v0, .L00412E80
/* 00412E64 0040B025 */   move  $s6, $v0
/* 00412E68 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00412E6C 02402025 */  move  $a0, $s2
/* 00412E70 0320F809 */  jalr  $t9
/* 00412E74 00000000 */   nop   
/* 00412E78 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412E7C 00000000 */  nop   
.L00412E80:
/* 00412E80 240F0001 */  li    $t7, 1
/* 00412E84 AECF0010 */  sw    $t7, 0x10($s6)
/* 00412E88 AEC00008 */  sw    $zero, 8($s6)
/* 00412E8C 8FB801E4 */  lw    $t8, 0x1e4($sp)
/* 00412E90 00000000 */  nop   
/* 00412E94 8F190034 */  lw    $t9, 0x34($t8)
/* 00412E98 AED30010 */  sw    $s3, 0x10($s6)
/* 00412E9C AED00008 */  sw    $s0, 8($s6)
/* 00412EA0 AED90000 */  sw    $t9, ($s6)
/* 00412EA4 8FA50198 */  lw    $a1, 0x198($sp)
/* 00412EA8 00000000 */  nop   
/* 00412EAC 97AD01C4 */  lhu   $t5, 0x1c4($sp)
.L00412EB0:
/* 00412EB0 97AE01C6 */  lhu   $t6, 0x1c6($sp)
/* 00412EB4 8FB80150 */  lw    $t8, 0x150($sp)
/* 00412EB8 01AE7821 */  addu  $t7, $t5, $t6
/* 00412EBC A7AF01C4 */  sh    $t7, 0x1c4($sp)
/* 00412EC0 94A2002A */  lhu   $v0, 0x2a($a1)
/* 00412EC4 8F8D8B24 */  lw     $t5, %got(st_pchdr)($gp)
/* 00412EC8 0302C821 */  addu  $t9, $t8, $v0
/* 00412ECC 8DAD0000 */  lw    $t5, ($t5)
/* 00412ED0 8FA4012C */  lw    $a0, 0x12c($sp)
/* 00412ED4 AFB90150 */  sw    $t9, 0x150($sp)
/* 00412ED8 A7A201C6 */  sh    $v0, 0x1c6($sp)
/* 00412EDC 8DA3000C */  lw    $v1, 0xc($t5)
/* 00412EE0 24840001 */  addiu $a0, $a0, 1
/* 00412EE4 0083082A */  slt   $at, $a0, $v1
/* 00412EE8 1420FFC8 */  bnez  $at, .L00412E0C
/* 00412EEC AFA4012C */   sw    $a0, 0x12c($sp)
/* 00412EF0 AFA0012C */  sw    $zero, 0x12c($sp)
.L00412EF4:
/* 00412EF4 8F8E8080 */  lw    $t6, %got(D_10000374)($gp)
/* 00412EF8 8FA5012C */  lw    $a1, 0x12c($sp)
/* 00412EFC 8DCE0374 */  lw    $t6, %lo(D_10000374)($t6)
/* 00412F00 24130004 */  li    $s3, 4
/* 00412F04 18600045 */  blez  $v1, .L0041301C
/* 00412F08 AFAE0204 */   sw    $t6, 0x204($sp)
/* 00412F0C AFA5012C */  sw    $a1, 0x12c($sp)
.L00412F10:
/* 00412F10 8F9986EC */  lw    $t9, %call16(st_pcfd_ifd)($gp)
/* 00412F14 8FA4012C */  lw    $a0, 0x12c($sp)
/* 00412F18 0320F809 */  jalr  $t9
/* 00412F1C 00000000 */   nop   
/* 00412F20 AFA201E4 */  sw    $v0, 0x1e4($sp)
/* 00412F24 8C4F0000 */  lw    $t7, ($v0)
/* 00412F28 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412F2C AFAF0198 */  sw    $t7, 0x198($sp)
/* 00412F30 8DE30014 */  lw    $v1, 0x14($t7)
/* 00412F34 00000000 */  nop   
/* 00412F38 10600026 */  beqz  $v1, .L00412FD4
/* 00412F3C 8FAE01AC */   lw    $t6, 0x1ac($sp)
/* 00412F40 8F998190 */  lw    $t9, %call16(malloc)($gp)
/* 00412F44 00038900 */  sll   $s1, $v1, 4
/* 00412F48 0320F809 */  jalr  $t9
/* 00412F4C 02202025 */   move  $a0, $s1
/* 00412F50 8FB901E4 */  lw    $t9, 0x1e4($sp)
/* 00412F54 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412F58 8F240004 */  lw    $a0, 4($t9)
/* 00412F5C 8FAD0198 */  lw    $t5, 0x198($sp)
/* 00412F60 8F998018 */  lw    $t9, %got(func_0041249C)($gp)
/* 00412F64 8DA60014 */  lw    $a2, 0x14($t5)
/* 00412F68 2739249C */  addiu $t9, %lo(func_0041249C) # addiu $t9, $t9, 0x249c
/* 00412F6C 00408025 */  move  $s0, $v0
/* 00412F70 0320F809 */  jalr  $t9
/* 00412F74 00402825 */   move  $a1, $v0
/* 00412F78 8FAE01AC */  lw    $t6, 0x1ac($sp)
/* 00412F7C 8FAF01B0 */  lw    $t7, 0x1b0($sp)
/* 00412F80 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412F84 8FB90198 */  lw    $t9, 0x198($sp)
/* 00412F88 01CFC021 */  addu  $t8, $t6, $t7
/* 00412F8C AF380010 */  sw    $t8, 0x10($t9)
/* 00412F90 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00412F94 8FA40204 */  lw    $a0, 0x204($sp)
/* 00412F98 0320F809 */  jalr  $t9
/* 00412F9C 00000000 */   nop   
/* 00412FA0 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412FA4 240D0004 */  li    $t5, 4
/* 00412FA8 8F998018 */  lw    $t9, %got(func_0040DE5C)($gp)
/* 00412FAC AFAD0010 */  sw    $t5, 0x10($sp)
/* 00412FB0 2739DE5C */  addiu $t9, %lo(func_0040DE5C) # addiu $t9, $t9, -0x21a4
/* 00412FB4 00402025 */  move  $a0, $v0
/* 00412FB8 02002825 */  move  $a1, $s0
/* 00412FBC 00003025 */  move  $a2, $zero
/* 00412FC0 0320F809 */  jalr  $t9
/* 00412FC4 02203825 */   move  $a3, $s1
/* 00412FC8 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00412FCC 00000000 */  nop   
/* 00412FD0 8FAE01AC */  lw    $t6, 0x1ac($sp)
.L00412FD4:
/* 00412FD4 8FAF01B0 */  lw    $t7, 0x1b0($sp)
/* 00412FD8 8FB90198 */  lw    $t9, 0x198($sp)
/* 00412FDC 01CFC021 */  addu  $t8, $t6, $t7
/* 00412FE0 AFB801AC */  sw    $t8, 0x1ac($sp)
/* 00412FE4 8F8F8B24 */  lw     $t7, %got(st_pchdr)($gp)
/* 00412FE8 8FAD0158 */  lw    $t5, 0x158($sp)
/* 00412FEC 8F250014 */  lw    $a1, 0x14($t9)
/* 00412FF0 8DEF0000 */  lw    $t7, ($t7)
/* 00412FF4 01A57021 */  addu  $t6, $t5, $a1
/* 00412FF8 8FA2012C */  lw    $v0, 0x12c($sp)
/* 00412FFC AFAE0158 */  sw    $t6, 0x158($sp)
/* 00413000 AFA501B0 */  sw    $a1, 0x1b0($sp)
/* 00413004 8DE3000C */  lw    $v1, 0xc($t7)
/* 00413008 24420001 */  addiu $v0, $v0, 1
/* 0041300C 0043082A */  slt   $at, $v0, $v1
/* 00413010 1420FFBF */  bnez  $at, .L00412F10
/* 00413014 AFA2012C */   sw    $v0, 0x12c($sp)
/* 00413018 AFA0012C */  sw    $zero, 0x12c($sp)
.L0041301C:
/* 0041301C 8F988080 */  lw    $t8, %got(D_100003A4)($gp)
/* 00413020 8FA5012C */  lw    $a1, 0x12c($sp)
/* 00413024 8F1803A4 */  lw    $t8, %lo(D_100003A4)($t8)
/* 00413028 18600041 */  blez  $v1, .L00413130
/* 0041302C AFB80204 */   sw    $t8, 0x204($sp)
/* 00413030 8F92806C */  lw    $s2, %got(RO_10012814)($gp)
/* 00413034 AFA5012C */  sw    $a1, 0x12c($sp)
/* 00413038 2411000C */  li    $s1, 12
/* 0041303C 26522814 */  addiu $s2, %lo(RO_10012814) # addiu $s2, $s2, 0x2814
.L00413040:
/* 00413040 8F9986EC */  lw    $t9, %call16(st_pcfd_ifd)($gp)
/* 00413044 8FA4012C */  lw    $a0, 0x12c($sp)
/* 00413048 0320F809 */  jalr  $t9
/* 0041304C 00000000 */   nop   
/* 00413050 AFA201E4 */  sw    $v0, 0x1e4($sp)
/* 00413054 8C460000 */  lw    $a2, ($v0)
/* 00413058 8FB901BC */  lw    $t9, 0x1bc($sp)
/* 0041305C 8CC30024 */  lw    $v1, 0x24($a2)
/* 00413060 8FAD01C0 */  lw    $t5, 0x1c0($sp)
/* 00413064 00710019 */  multu $v1, $s1
/* 00413068 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0041306C 032D7021 */  addu  $t6, $t9, $t5
/* 00413070 ACCE0020 */  sw    $t6, 0x20($a2)
/* 00413074 00008012 */  mflo  $s0
/* 00413078 1060001A */  beqz  $v1, .L004130E4
/* 0041307C 8FAD01BC */   lw    $t5, 0x1bc($sp)
/* 00413080 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00413084 8FA40204 */  lw    $a0, 0x204($sp)
/* 00413088 0320F809 */  jalr  $t9
/* 0041308C AFA60198 */   sw    $a2, 0x198($sp)
/* 00413090 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00413094 14400007 */  bnez  $v0, .L004130B4
/* 00413098 0040B025 */   move  $s6, $v0
/* 0041309C 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 004130A0 02402025 */  move  $a0, $s2
/* 004130A4 0320F809 */  jalr  $t9
/* 004130A8 00000000 */   nop   
/* 004130AC 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004130B0 00000000 */  nop   
.L004130B4:
/* 004130B4 240F0001 */  li    $t7, 1
/* 004130B8 AECF0010 */  sw    $t7, 0x10($s6)
/* 004130BC AEC00008 */  sw    $zero, 8($s6)
/* 004130C0 8FB801E4 */  lw    $t8, 0x1e4($sp)
/* 004130C4 00000000 */  nop   
/* 004130C8 8F19001C */  lw    $t9, 0x1c($t8)
/* 004130CC AED30010 */  sw    $s3, 0x10($s6)
/* 004130D0 AED00008 */  sw    $s0, 8($s6)
/* 004130D4 AED90000 */  sw    $t9, ($s6)
/* 004130D8 8FA60198 */  lw    $a2, 0x198($sp)
/* 004130DC 00000000 */  nop   
/* 004130E0 8FAD01BC */  lw    $t5, 0x1bc($sp)
.L004130E4:
/* 004130E4 8FAE01C0 */  lw    $t6, 0x1c0($sp)
/* 004130E8 8FB80160 */  lw    $t8, 0x160($sp)
/* 004130EC 01AE7821 */  addu  $t7, $t5, $t6
/* 004130F0 AFAF01BC */  sw    $t7, 0x1bc($sp)
/* 004130F4 8CC50024 */  lw    $a1, 0x24($a2)
/* 004130F8 8F8F8B24 */  lw     $t7, %got(st_pchdr)($gp)
/* 004130FC 8FAD012C */  lw    $t5, 0x12c($sp)
/* 00413100 8DEF0000 */  lw    $t7, ($t7)
/* 00413104 0305C821 */  addu  $t9, $t8, $a1
/* 00413108 25AE0001 */  addiu $t6, $t5, 1
/* 0041310C AFAE012C */  sw    $t6, 0x12c($sp)
/* 00413110 AFB90160 */  sw    $t9, 0x160($sp)
/* 00413114 AFA501C0 */  sw    $a1, 0x1c0($sp)
/* 00413118 8DE3000C */  lw    $v1, 0xc($t7)
/* 0041311C 00000000 */  nop   
/* 00413120 01C3082A */  slt   $at, $t6, $v1
/* 00413124 1420FFC6 */  bnez  $at, .L00413040
/* 00413128 00000000 */   nop   
/* 0041312C AFA0012C */  sw    $zero, 0x12c($sp)
.L00413130:
/* 00413130 8F988080 */  lw    $t8, %got(D_1000038C)($gp)
/* 00413134 8FA5012C */  lw    $a1, 0x12c($sp)
/* 00413138 8F18038C */  lw    $t8, %lo(D_1000038C)($t8)
/* 0041313C 1860003E */  blez  $v1, .L00413238
/* 00413140 AFB80204 */   sw    $t8, 0x204($sp)
/* 00413144 8F91806C */  lw    $s1, %got(RO_10012854)($gp)
/* 00413148 AFA5012C */  sw    $a1, 0x12c($sp)
/* 0041314C 26312854 */  addiu $s1, %lo(RO_10012854) # addiu $s1, $s1, 0x2854
.L00413150:
/* 00413150 8F9986EC */  lw    $t9, %call16(st_pcfd_ifd)($gp)
/* 00413154 8FA4012C */  lw    $a0, 0x12c($sp)
/* 00413158 0320F809 */  jalr  $t9
/* 0041315C 00000000 */   nop   
/* 00413160 AFA201E4 */  sw    $v0, 0x1e4($sp)
/* 00413164 8C590000 */  lw    $t9, ($v0)
/* 00413168 8FAF01C8 */  lw    $t7, 0x1c8($sp)
/* 0041316C 8FAE01CC */  lw    $t6, 0x1cc($sp)
/* 00413170 AFB90198 */  sw    $t9, 0x198($sp)
/* 00413174 8F230030 */  lw    $v1, 0x30($t9)
/* 00413178 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0041317C 01EEC021 */  addu  $t8, $t7, $t6
/* 00413180 AF38002C */  sw    $t8, 0x2c($t9)
/* 00413184 10600017 */  beqz  $v1, .L004131E4
/* 00413188 00038080 */   sll   $s0, $v1, 2
/* 0041318C 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00413190 8FA40204 */  lw    $a0, 0x204($sp)
/* 00413194 0320F809 */  jalr  $t9
/* 00413198 00000000 */   nop   
/* 0041319C 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004131A0 14400007 */  bnez  $v0, .L004131C0
/* 004131A4 0040B025 */   move  $s6, $v0
/* 004131A8 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 004131AC 02202025 */  move  $a0, $s1
/* 004131B0 0320F809 */  jalr  $t9
/* 004131B4 00000000 */   nop   
/* 004131B8 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004131BC 00000000 */  nop   
.L004131C0:
/* 004131C0 24190001 */  li    $t9, 1
/* 004131C4 AED90010 */  sw    $t9, 0x10($s6)
/* 004131C8 AEC00008 */  sw    $zero, 8($s6)
/* 004131CC 8FAF01E4 */  lw    $t7, 0x1e4($sp)
/* 004131D0 00000000 */  nop   
/* 004131D4 8DEE000C */  lw    $t6, 0xc($t7)
/* 004131D8 AED30010 */  sw    $s3, 0x10($s6)
/* 004131DC AED00008 */  sw    $s0, 8($s6)
/* 004131E0 AECE0000 */  sw    $t6, ($s6)
.L004131E4:
/* 004131E4 8FB801C8 */  lw    $t8, 0x1c8($sp)
/* 004131E8 8FAD01CC */  lw    $t5, 0x1cc($sp)
/* 004131EC 8FAF0198 */  lw    $t7, 0x198($sp)
/* 004131F0 030DC821 */  addu  $t9, $t8, $t5
/* 004131F4 AFB901C8 */  sw    $t9, 0x1c8($sp)
/* 004131F8 8DE50030 */  lw    $a1, 0x30($t7)
/* 004131FC 8F8F8B24 */  lw     $t7, %got(st_pchdr)($gp)
/* 00413200 8FAD012C */  lw    $t5, 0x12c($sp)
/* 00413204 8FAE0168 */  lw    $t6, 0x168($sp)
/* 00413208 8DEF0000 */  lw    $t7, ($t7)
/* 0041320C 25B90001 */  addiu $t9, $t5, 1
/* 00413210 01C5C021 */  addu  $t8, $t6, $a1
/* 00413214 AFB80168 */  sw    $t8, 0x168($sp)
/* 00413218 AFB9012C */  sw    $t9, 0x12c($sp)
/* 0041321C AFA501CC */  sw    $a1, 0x1cc($sp)
/* 00413220 8DE3000C */  lw    $v1, 0xc($t7)
/* 00413224 00000000 */  nop   
/* 00413228 0323082A */  slt   $at, $t9, $v1
/* 0041322C 1420FFC8 */  bnez  $at, .L00413150
/* 00413230 00000000 */   nop   
/* 00413234 AFA0012C */  sw    $zero, 0x12c($sp)
.L00413238:
/* 00413238 8F8E8080 */  lw    $t6, %got(D_1000032C)($gp)
/* 0041323C 8FA5012C */  lw    $a1, 0x12c($sp)
/* 00413240 8DCE032C */  lw    $t6, %lo(D_1000032C)($t6)
/* 00413244 1860003C */  blez  $v1, .L00413338
/* 00413248 AFAE0204 */   sw    $t6, 0x204($sp)
/* 0041324C 8F91806C */  lw    $s1, %got(RO_10012894)($gp)
/* 00413250 AFA5012C */  sw    $a1, 0x12c($sp)
/* 00413254 26312894 */  addiu $s1, %lo(RO_10012894) # addiu $s1, $s1, 0x2894
.L00413258:
/* 00413258 8F9986EC */  lw    $t9, %call16(st_pcfd_ifd)($gp)
/* 0041325C 8FA4012C */  lw    $a0, 0x12c($sp)
/* 00413260 0320F809 */  jalr  $t9
/* 00413264 00000000 */   nop   
/* 00413268 AFA201E4 */  sw    $v0, 0x1e4($sp)
/* 0041326C 8C580000 */  lw    $t8, ($v0)
/* 00413270 8FAF01A4 */  lw    $t7, 0x1a4($sp)
/* 00413274 8FB901A8 */  lw    $t9, 0x1a8($sp)
/* 00413278 AFB80198 */  sw    $t8, 0x198($sp)
/* 0041327C 8F10000C */  lw    $s0, 0xc($t8)
/* 00413280 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00413284 01F97021 */  addu  $t6, $t7, $t9
/* 00413288 12000016 */  beqz  $s0, .L004132E4
/* 0041328C AF0E0008 */   sw    $t6, 8($t8)
/* 00413290 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00413294 8FA40204 */  lw    $a0, 0x204($sp)
/* 00413298 0320F809 */  jalr  $t9
/* 0041329C 00000000 */   nop   
/* 004132A0 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004132A4 14400007 */  bnez  $v0, .L004132C4
/* 004132A8 0040B025 */   move  $s6, $v0
/* 004132AC 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 004132B0 02202025 */  move  $a0, $s1
/* 004132B4 0320F809 */  jalr  $t9
/* 004132B8 00000000 */   nop   
/* 004132BC 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004132C0 00000000 */  nop   
.L004132C4:
/* 004132C4 24180001 */  li    $t8, 1
/* 004132C8 AED80010 */  sw    $t8, 0x10($s6)
/* 004132CC AEC00008 */  sw    $zero, 8($s6)
/* 004132D0 8FAF01E4 */  lw    $t7, 0x1e4($sp)
/* 004132D4 00000000 */  nop   
/* 004132D8 8DF90014 */  lw    $t9, 0x14($t7)
/* 004132DC AED00008 */  sw    $s0, 8($s6)
/* 004132E0 AED90000 */  sw    $t9, ($s6)
.L004132E4:
/* 004132E4 8FAE01A4 */  lw    $t6, 0x1a4($sp)
/* 004132E8 8FAD01A8 */  lw    $t5, 0x1a8($sp)
/* 004132EC 8FAF0198 */  lw    $t7, 0x198($sp)
/* 004132F0 01CDC021 */  addu  $t8, $t6, $t5
/* 004132F4 AFB801A4 */  sw    $t8, 0x1a4($sp)
/* 004132F8 8DE5000C */  lw    $a1, 0xc($t7)
/* 004132FC 8F8F8B24 */  lw     $t7, %got(st_pchdr)($gp)
/* 00413300 8FAD012C */  lw    $t5, 0x12c($sp)
/* 00413304 8FB90170 */  lw    $t9, 0x170($sp)
/* 00413308 8DEF0000 */  lw    $t7, ($t7)
/* 0041330C 25B80001 */  addiu $t8, $t5, 1
/* 00413310 03257021 */  addu  $t6, $t9, $a1
/* 00413314 AFAE0170 */  sw    $t6, 0x170($sp)
/* 00413318 AFB8012C */  sw    $t8, 0x12c($sp)
/* 0041331C AFA501A8 */  sw    $a1, 0x1a8($sp)
/* 00413320 8DF9000C */  lw    $t9, 0xc($t7)
/* 00413324 00000000 */  nop   
/* 00413328 0319082A */  slt   $at, $t8, $t9
/* 0041332C 1420FFCA */  bnez  $at, .L00413258
/* 00413330 00000000 */   nop   
/* 00413334 AFA0012C */  sw    $zero, 0x12c($sp)
.L00413338:
/* 00413338 8F998774 */  lw    $t9, %call16(elf_ndxscn)($gp)
/* 0041333C 8FA40204 */  lw    $a0, 0x204($sp)
/* 00413340 0320F809 */  jalr  $t9
/* 00413344 00000000 */   nop   
/* 00413348 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0041334C 00000000 */  nop   
/* 00413350 8F8E8080 */  lw    $t6, %got(D_1000037C)($gp)
/* 00413354 00000000 */  nop   
/* 00413358 8DCE037C */  lw    $t6, %lo(D_1000037C)($t6)
/* 0041335C 00000000 */  nop   
/* 00413360 ADC20018 */  sw    $v0, 0x18($t6)
/* 00413364 8F998774 */  lw    $t9, %call16(elf_ndxscn)($gp)
/* 00413368 8FA40204 */  lw    $a0, 0x204($sp)
/* 0041336C 0320F809 */  jalr  $t9
/* 00413370 00000000 */   nop   
/* 00413374 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00413378 00000000 */  nop   
/* 0041337C 8F8D8080 */  lw    $t5, %got(D_10000304)($gp)
/* 00413380 8F8F8080 */  lw    $t7, %got(D_100003BC)($gp)
/* 00413384 8DAD0304 */  lw    $t5, %lo(D_10000304)($t5)
/* 00413388 8F988B24 */  lw     $t8, %got(st_pchdr)($gp)
/* 0041338C ADA20018 */  sw    $v0, 0x18($t5)
/* 00413390 8DEF03BC */  lw    $t7, %lo(D_100003BC)($t7)
/* 00413394 8F180000 */  lw    $t8, ($t8)
/* 00413398 AFAF0204 */  sw    $t7, 0x204($sp)
/* 0041339C 8F19000C */  lw    $t9, 0xc($t8)
/* 004133A0 00000000 */  nop   
/* 004133A4 1B20003D */  blez  $t9, .L0041349C
/* 004133A8 00000000 */   nop   
/* 004133AC 8F91806C */  lw    $s1, %got(RO_100128D4)($gp)
/* 004133B0 00000000 */  nop   
/* 004133B4 263128D4 */  addiu $s1, %lo(RO_100128D4) # addiu $s1, $s1, 0x28d4
.L004133B8:
/* 004133B8 8F9986EC */  lw    $t9, %call16(st_pcfd_ifd)($gp)
/* 004133BC 8FA4012C */  lw    $a0, 0x12c($sp)
/* 004133C0 0320F809 */  jalr  $t9
/* 004133C4 00000000 */   nop   
/* 004133C8 AFA201E4 */  sw    $v0, 0x1e4($sp)
/* 004133CC 8C4E0000 */  lw    $t6, ($v0)
/* 004133D0 8FAF01D0 */  lw    $t7, 0x1d0($sp)
/* 004133D4 8FB801D4 */  lw    $t8, 0x1d4($sp)
/* 004133D8 AFAE0198 */  sw    $t6, 0x198($sp)
/* 004133DC 8DC30038 */  lw    $v1, 0x38($t6)
/* 004133E0 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004133E4 01F8C821 */  addu  $t9, $t7, $t8
/* 004133E8 ADD90034 */  sw    $t9, 0x34($t6)
/* 004133EC 10600017 */  beqz  $v1, .L0041344C
/* 004133F0 00038080 */   sll   $s0, $v1, 2
/* 004133F4 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 004133F8 8FA40204 */  lw    $a0, 0x204($sp)
/* 004133FC 0320F809 */  jalr  $t9
/* 00413400 00000000 */   nop   
/* 00413404 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00413408 14400007 */  bnez  $v0, .L00413428
/* 0041340C 0040B025 */   move  $s6, $v0
/* 00413410 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00413414 02202025 */  move  $a0, $s1
/* 00413418 0320F809 */  jalr  $t9
/* 0041341C 00000000 */   nop   
/* 00413420 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00413424 00000000 */  nop   
.L00413428:
/* 00413428 240E0001 */  li    $t6, 1
/* 0041342C AECE0010 */  sw    $t6, 0x10($s6)
/* 00413430 AEC00008 */  sw    $zero, 8($s6)
/* 00413434 8FAF01E4 */  lw    $t7, 0x1e4($sp)
/* 00413438 00000000 */  nop   
/* 0041343C 8DF8002C */  lw    $t8, 0x2c($t7)
/* 00413440 AED30010 */  sw    $s3, 0x10($s6)
/* 00413444 AED00008 */  sw    $s0, 8($s6)
/* 00413448 AED80000 */  sw    $t8, ($s6)
.L0041344C:
/* 0041344C 8FB901D0 */  lw    $t9, 0x1d0($sp)
/* 00413450 8FAD01D4 */  lw    $t5, 0x1d4($sp)
/* 00413454 8FAF0198 */  lw    $t7, 0x198($sp)
/* 00413458 032D7021 */  addu  $t6, $t9, $t5
/* 0041345C AFAE01D0 */  sw    $t6, 0x1d0($sp)
/* 00413460 8DE50038 */  lw    $a1, 0x38($t7)
/* 00413464 8F8F8B24 */  lw     $t7, %got(st_pchdr)($gp)
/* 00413468 8FAD012C */  lw    $t5, 0x12c($sp)
/* 0041346C 8FB80188 */  lw    $t8, 0x188($sp)
/* 00413470 8DEF0000 */  lw    $t7, ($t7)
/* 00413474 25AE0001 */  addiu $t6, $t5, 1
/* 00413478 0305C821 */  addu  $t9, $t8, $a1
/* 0041347C AFB90188 */  sw    $t9, 0x188($sp)
/* 00413480 AFAE012C */  sw    $t6, 0x12c($sp)
/* 00413484 AFA501D4 */  sw    $a1, 0x1d4($sp)
/* 00413488 8DF8000C */  lw    $t8, 0xc($t7)
/* 0041348C 00000000 */  nop   
/* 00413490 01D8082A */  slt   $at, $t6, $t8
/* 00413494 1420FFC8 */  bnez  $at, .L004133B8
/* 00413498 00000000 */   nop   
.L0041349C:
/* 0041349C 8F818088 */  lw    $at, %got(B_10023100)($gp)
/* 004134A0 24197009 */  li    $t9, 28681
/* 004134A4 A4393100 */  sh    $t9, %lo(B_10023100)($at)
/* 004134A8 8F848080 */  lw    $a0, %got(D_100002FC)($gp)
/* 004134AC 8F818088 */  lw    $at, %got(B_10023102)($gp)
/* 004134B0 8F998774 */  lw    $t9, %call16(elf_ndxscn)($gp)
/* 004134B4 240D0313 */  li    $t5, 787
/* 004134B8 8C8402FC */  lw    $a0, %lo(D_100002FC)($a0)
/* 004134BC 0320F809 */  jalr  $t9
/* 004134C0 A42D3102 */   sh    $t5, %lo(B_10023102)($at)
/* 004134C4 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004134C8 00000000 */  nop   
/* 004134CC 8F818088 */  lw    $at, %got(B_10023104)($gp)
/* 004134D0 8F848080 */  lw    $a0, %got(D_10000314)($gp)
/* 004134D4 A4223104 */  sh    $v0, %lo(B_10023104)($at)
/* 004134D8 8F818088 */  lw    $at, %got(B_10023108)($gp)
/* 004134DC 8F998774 */  lw    $t9, %call16(elf_ndxscn)($gp)
/* 004134E0 8C840314 */  lw    $a0, %lo(D_10000314)($a0)
/* 004134E4 0320F809 */  jalr  $t9
/* 004134E8 A4203108 */   sh    $zero, %lo(B_10023108)($at)
/* 004134EC 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004134F0 00000000 */  nop   
/* 004134F4 8F848080 */  lw    $a0, %got(D_100003D4)($gp)
/* 004134F8 8F818088 */  lw    $at, %got(B_1002310A)($gp)
/* 004134FC 8F998774 */  lw    $t9, %call16(elf_ndxscn)($gp)
/* 00413500 8C8403D4 */  lw    $a0, %lo(D_100003D4)($a0)
/* 00413504 0320F809 */  jalr  $t9
/* 00413508 A422310A */   sh    $v0, %lo(B_1002310A)($at)
/* 0041350C 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00413510 00000000 */  nop   
/* 00413514 8F848080 */  lw    $a0, %got(D_10000374)($gp)
/* 00413518 8F818088 */  lw    $at, %got(B_1002310C)($gp)
/* 0041351C 8F998774 */  lw    $t9, %call16(elf_ndxscn)($gp)
/* 00413520 8C840374 */  lw    $a0, %lo(D_10000374)($a0)
/* 00413524 0320F809 */  jalr  $t9
/* 00413528 A422310C */   sh    $v0, %lo(B_1002310C)($at)
/* 0041352C 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00413530 00000000 */  nop   
/* 00413534 8F848080 */  lw    $a0, %got(D_100003A4)($gp)
/* 00413538 8F818088 */  lw    $at, %got(B_1002310E)($gp)
/* 0041353C 8F998774 */  lw    $t9, %call16(elf_ndxscn)($gp)
/* 00413540 8C8403A4 */  lw    $a0, %lo(D_100003A4)($a0)
/* 00413544 0320F809 */  jalr  $t9
/* 00413548 A422310E */   sh    $v0, %lo(B_1002310E)($at)
/* 0041354C 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00413550 00000000 */  nop   
/* 00413554 8F848080 */  lw    $a0, %got(D_1000038C)($gp)
/* 00413558 8F818088 */  lw    $at, %got(B_10023110)($gp)
/* 0041355C 8F998774 */  lw    $t9, %call16(elf_ndxscn)($gp)
/* 00413560 8C84038C */  lw    $a0, %lo(D_1000038C)($a0)
/* 00413564 0320F809 */  jalr  $t9
/* 00413568 A4223110 */   sh    $v0, %lo(B_10023110)($at)
/* 0041356C 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00413570 00000000 */  nop   
/* 00413574 8F848080 */  lw    $a0, %got(D_1000035C)($gp)
/* 00413578 8F818088 */  lw    $at, %got(B_10023112)($gp)
/* 0041357C 8F998774 */  lw    $t9, %call16(elf_ndxscn)($gp)
/* 00413580 8C84035C */  lw    $a0, %lo(D_1000035C)($a0)
/* 00413584 0320F809 */  jalr  $t9
/* 00413588 A4223112 */   sh    $v0, %lo(B_10023112)($at)
/* 0041358C 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00413590 00000000 */  nop   
/* 00413594 8F848080 */  lw    $a0, %got(D_100003BC)($gp)
/* 00413598 8F818088 */  lw    $at, %got(B_10023114)($gp)
/* 0041359C 8F998774 */  lw    $t9, %call16(elf_ndxscn)($gp)
/* 004135A0 8C8403BC */  lw    $a0, %lo(D_100003BC)($a0)
/* 004135A4 0320F809 */  jalr  $t9
/* 004135A8 A4223114 */   sh    $v0, %lo(B_10023114)($at)
/* 004135AC 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004135B0 00000000 */  nop   
/* 004135B4 8F848080 */  lw    $a0, %got(D_100002E4)($gp)
/* 004135B8 8F818088 */  lw    $at, %got(B_10023116)($gp)
/* 004135BC 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 004135C0 8C8402E4 */  lw    $a0, %lo(D_100002E4)($a0)
/* 004135C4 0320F809 */  jalr  $t9
/* 004135C8 A4223116 */   sh    $v0, %lo(B_10023116)($at)
/* 004135CC 8FBC003C */  lw    $gp, 0x3c($sp)
/* 004135D0 240F0004 */  li    $t7, 4
/* 004135D4 8F998018 */  lw    $t9, %got(func_0040DE5C)($gp)
/* 004135D8 8F858088 */  lw    $a1, %got(B_10023100)($gp)
/* 004135DC 2739DE5C */  addiu $t9, %lo(func_0040DE5C) # addiu $t9, $t9, -0x21a4
/* 004135E0 AFAF0010 */  sw    $t7, 0x10($sp)
/* 004135E4 00402025 */  move  $a0, $v0
/* 004135E8 00003025 */  move  $a2, $zero
/* 004135EC 24070018 */  li    $a3, 24
/* 004135F0 0320F809 */  jalr  $t9
/* 004135F4 24A53100 */   addiu $a1, %lo(B_10023100) # addiu $a1, $a1, 0x3100
/* 004135F8 8FBF0044 */  lw    $ra, 0x44($sp)
/* 004135FC 8FBC003C */  lw    $gp, 0x3c($sp)
/* 00413600 8FB0001C */  lw    $s0, 0x1c($sp)
/* 00413604 8FB10020 */  lw    $s1, 0x20($sp)
/* 00413608 8FB20024 */  lw    $s2, 0x24($sp)
/* 0041360C 8FB30028 */  lw    $s3, 0x28($sp)
/* 00413610 8FB4002C */  lw    $s4, 0x2c($sp)
/* 00413614 8FB50030 */  lw    $s5, 0x30($sp)
/* 00413618 8FB60034 */  lw    $s6, 0x34($sp)
/* 0041361C 8FB70038 */  lw    $s7, 0x38($sp)
/* 00413620 8FBE0040 */  lw    $fp, 0x40($sp)
/* 00413624 03E00008 */  jr    $ra
/* 00413628 27BD0208 */   addiu $sp, $sp, 0x208

    .type write_mdebug_scns, @function
    .size write_mdebug_scns, .-write_mdebug_scns
    .end write_mdebug_scns

glabel elf_st_writest
    .ent elf_st_writest
    # 00414AE4 elf_mdebug
/* 0041362C 3C1C0FC1 */  .cpload $t9
/* 00413630 279C6C34 */  
/* 00413634 0399E021 */  
/* 00413638 27BDFDB8 */  addiu $sp, $sp, -0x248
/* 0041363C 8F9980F0 */  lw    $t9, %call16(bzero)($gp)
/* 00413640 AFB00014 */  sw    $s0, 0x14($sp)
/* 00413644 00808025 */  move  $s0, $a0
/* 00413648 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0041364C AFB10018 */  sw    $s1, 0x18($sp)
/* 00413650 AFA5024C */  sw    $a1, 0x24c($sp)
/* 00413654 AFBE0038 */  sw    $fp, 0x38($sp)
/* 00413658 AFBC0034 */  sw    $gp, 0x34($sp)
/* 0041365C AFB70030 */  sw    $s7, 0x30($sp)
/* 00413660 AFB6002C */  sw    $s6, 0x2c($sp)
/* 00413664 AFB50028 */  sw    $s5, 0x28($sp)
/* 00413668 AFB40024 */  sw    $s4, 0x24($sp)
/* 0041366C AFB30020 */  sw    $s3, 0x20($sp)
/* 00413670 AFB2001C */  sw    $s2, 0x1c($sp)
/* 00413674 00008825 */  move  $s1, $zero
/* 00413678 AFA00190 */  sw    $zero, 0x190($sp)
/* 0041367C 24050048 */  li    $a1, 72
/* 00413680 0320F809 */  jalr  $t9
/* 00413684 27A401FC */   addiu $a0, $sp, 0x1fc
/* 00413688 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041368C 27A40198 */  addiu $a0, $sp, 0x198
/* 00413690 8F9980F0 */  lw    $t9, %call16(bzero)($gp)
/* 00413694 24050060 */  li    $a1, 96
/* 00413698 0320F809 */  jalr  $t9
/* 0041369C 00000000 */   nop   
/* 004136A0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 004136A4 00000000 */  nop   
/* 004136A8 8F998828 */  lw    $t9, %call16(st_ifdmax)($gp)
/* 004136AC 00000000 */  nop   
/* 004136B0 0320F809 */  jalr  $t9
/* 004136B4 00000000 */   nop   
/* 004136B8 8FBC0034 */  lw    $gp, 0x34($sp)
/* 004136BC AFA20184 */  sw    $v0, 0x184($sp)
/* 004136C0 8F998784 */  lw    $t9, %call16(elf_nextscn)($gp)
/* 004136C4 02002025 */  move  $a0, $s0
/* 004136C8 0320F809 */  jalr  $t9
/* 004136CC 00002825 */   move  $a1, $zero
/* 004136D0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 004136D4 10400017 */  beqz  $v0, .L00413734
/* 004136D8 00402025 */   move  $a0, $v0
/* 004136DC 3C147000 */  lui   $s4, 0x7000
/* 004136E0 36940005 */  ori   $s4, $s4, 5
/* 004136E4 AFA2016C */  sw    $v0, 0x16c($sp)
.L004136E8:
/* 004136E8 8F998750 */  lw    $t9, %call16(elf32_getshdr)($gp)
/* 004136EC 8FA4016C */  lw    $a0, 0x16c($sp)
/* 004136F0 0320F809 */  jalr  $t9
/* 004136F4 00000000 */   nop   
/* 004136F8 8C4E0004 */  lw    $t6, 4($v0)
/* 004136FC 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413700 168E0004 */  bne   $s4, $t6, .L00413714
/* 00413704 00000000 */   nop   
/* 00413708 8FA4016C */  lw    $a0, 0x16c($sp)
/* 0041370C 10000009 */  b     .L00413734
/* 00413710 24110001 */   li    $s1, 1
.L00413714:
/* 00413714 8F998784 */  lw    $t9, %call16(elf_nextscn)($gp)
/* 00413718 8FA5016C */  lw    $a1, 0x16c($sp)
/* 0041371C 0320F809 */  jalr  $t9
/* 00413720 02002025 */   move  $a0, $s0
/* 00413724 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413728 1440FFEF */  bnez  $v0, .L004136E8
/* 0041372C AFA2016C */   sw    $v0, 0x16c($sp)
/* 00413730 00402025 */  move  $a0, $v0
.L00413734:
/* 00413734 3C147000 */  lui   $s4, 0x7000
/* 00413738 162000AD */  bnez  $s1, .L004139F0
/* 0041373C 36940005 */   ori   $s4, $s4, 5
/* 00413740 8F99876C */  lw    $t9, %call16(elf_newscn)($gp)
/* 00413744 02002025 */  move  $a0, $s0
/* 00413748 0320F809 */  jalr  $t9
/* 0041374C 00000000 */   nop   
/* 00413750 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413754 14400008 */  bnez  $v0, .L00413778
/* 00413758 AFA2016C */   sw    $v0, 0x16c($sp)
/* 0041375C 8F84806C */  lw    $a0, %got(RO_10012914)($gp)
/* 00413760 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00413764 24842914 */  addiu $a0, %lo(RO_10012914) # addiu $a0, $a0, 0x2914
/* 00413768 0320F809 */  jalr  $t9
/* 0041376C 00000000 */   nop   
/* 00413770 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413774 00000000 */  nop   
.L00413778:
/* 00413778 8F998750 */  lw    $t9, %call16(elf32_getshdr)($gp)
/* 0041377C 8FA4016C */  lw    $a0, 0x16c($sp)
/* 00413780 0320F809 */  jalr  $t9
/* 00413784 00000000 */   nop   
/* 00413788 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041378C 14400008 */  bnez  $v0, .L004137B0
/* 00413790 00409825 */   move  $s3, $v0
/* 00413794 8F84806C */  lw    $a0, %got(RO_10012944)($gp)
/* 00413798 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 0041379C 24842944 */  addiu $a0, %lo(RO_10012944) # addiu $a0, $a0, 0x2944
/* 004137A0 0320F809 */  jalr  $t9
/* 004137A4 00000000 */   nop   
/* 004137A8 8FBC0034 */  lw    $gp, 0x34($sp)
/* 004137AC 00000000 */  nop   
.L004137B0:
/* 004137B0 8F998788 */  lw    $t9, %call16(elf32_getehdr)($gp)
/* 004137B4 02002025 */  move  $a0, $s0
/* 004137B8 0320F809 */  jalr  $t9
/* 004137BC 00000000 */   nop   
/* 004137C0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 004137C4 14400008 */  bnez  $v0, .L004137E8
/* 004137C8 00409025 */   move  $s2, $v0
/* 004137CC 8F84806C */  lw    $a0, %got(RO_1001297C)($gp)
/* 004137D0 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 004137D4 2484297C */  addiu $a0, %lo(RO_1001297C) # addiu $a0, $a0, 0x297c
/* 004137D8 0320F809 */  jalr  $t9
/* 004137DC 00000000 */   nop   
/* 004137E0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 004137E4 00000000 */  nop   
.L004137E8:
/* 004137E8 96510032 */  lhu   $s1, 0x32($s2)
/* 004137EC 00000000 */  nop   
/* 004137F0 16200008 */  bnez  $s1, .L00413814
/* 004137F4 00000000 */   nop   
/* 004137F8 8F84806C */  lw    $a0, %got(RO_100129A8)($gp)
/* 004137FC 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00413800 248429A8 */  addiu $a0, %lo(RO_100129A8) # addiu $a0, $a0, 0x29a8
/* 00413804 0320F809 */  jalr  $t9
/* 00413808 00000000 */   nop   
/* 0041380C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413810 00000000 */  nop   
.L00413814:
/* 00413814 8F99875C */  lw    $t9, %call16(elf_getscn)($gp)
/* 00413818 02002025 */  move  $a0, $s0
/* 0041381C 0320F809 */  jalr  $t9
/* 00413820 02202825 */   move  $a1, $s1
/* 00413824 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413828 14400018 */  bnez  $v0, .L0041388C
/* 0041382C 00409025 */   move  $s2, $v0
/* 00413830 8F998750 */  lw    $t9, %call16(elf32_getshdr)($gp)
/* 00413834 00402025 */  move  $a0, $v0
/* 00413838 0320F809 */  jalr  $t9
/* 0041383C 00000000 */   nop   
/* 00413840 8C4F0004 */  lw    $t7, 4($v0)
/* 00413844 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413848 24010003 */  li    $at, 3
/* 0041384C 11E10008 */  beq   $t7, $at, .L00413870
/* 00413850 00000000 */   nop   
/* 00413854 8F84806C */  lw    $a0, %got(RO_100129F0)($gp)
/* 00413858 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 0041385C 248429F0 */  addiu $a0, %lo(RO_100129F0) # addiu $a0, $a0, 0x29f0
/* 00413860 0320F809 */  jalr  $t9
/* 00413864 00000000 */   nop   
/* 00413868 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041386C 00000000 */  nop   
.L00413870:
/* 00413870 8F84806C */  lw    $a0, %got(RO_10012A20)($gp)
/* 00413874 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00413878 24842A20 */  addiu $a0, %lo(RO_10012A20) # addiu $a0, $a0, 0x2a20
/* 0041387C 0320F809 */  jalr  $t9
/* 00413880 00000000 */   nop   
/* 00413884 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413888 00000000 */  nop   
.L0041388C:
/* 0041388C 8F998798 */  lw    $t9, %call16(elf_getdata)($gp)
/* 00413890 00008025 */  move  $s0, $zero
/* 00413894 02402025 */  move  $a0, $s2
/* 00413898 0320F809 */  jalr  $t9
/* 0041389C 00002825 */   move  $a1, $zero
/* 004138A0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 004138A4 10400017 */  beqz  $v0, .L00413904
/* 004138A8 00408825 */   move  $s1, $v0
.L004138AC:
/* 004138AC 8C430010 */  lw    $v1, 0x10($v0)
/* 004138B0 02402025 */  move  $a0, $s2
/* 004138B4 2C610002 */  sltiu $at, $v1, 2
/* 004138B8 1420000A */  bnez  $at, .L004138E4
/* 004138BC 00000000 */   nop   
/* 004138C0 0203001B */  divu  $zero, $s0, $v1
/* 004138C4 14600002 */  bnez  $v1, .L004138D0
/* 004138C8 00000000 */   nop   
/* 004138CC 0007000D */  break 7
.L004138D0:
/* 004138D0 00001010 */  mfhi  $v0
/* 004138D4 00621823 */  subu  $v1, $v1, $v0
/* 004138D8 10400002 */  beqz  $v0, .L004138E4
/* 004138DC 00000000 */   nop   
/* 004138E0 02038021 */  addu  $s0, $s0, $v1
.L004138E4:
/* 004138E4 8E380008 */  lw    $t8, 8($s1)
/* 004138E8 8F998798 */  lw    $t9, %call16(elf_getdata)($gp)
/* 004138EC 02202825 */  move  $a1, $s1
/* 004138F0 0320F809 */  jalr  $t9
/* 004138F4 02188021 */   addu  $s0, $s0, $t8
/* 004138F8 8FBC0034 */  lw    $gp, 0x34($sp)
/* 004138FC 1440FFEB */  bnez  $v0, .L004138AC
/* 00413900 00408825 */   move  $s1, $v0
.L00413904:
/* 00413904 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00413908 02402025 */  move  $a0, $s2
/* 0041390C 0320F809 */  jalr  $t9
/* 00413910 00000000 */   nop   
/* 00413914 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413918 14400008 */  bnez  $v0, .L0041393C
/* 0041391C 00408825 */   move  $s1, $v0
/* 00413920 8F84806C */  lw    $a0, %got(RO_10012A48)($gp)
/* 00413924 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00413928 24842A48 */  addiu $a0, %lo(RO_10012A48) # addiu $a0, $a0, 0x2a48
/* 0041392C 0320F809 */  jalr  $t9
/* 00413930 00000000 */   nop   
/* 00413934 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413938 00000000 */  nop   
.L0041393C:
/* 0041393C 8F99806C */  lw    $t9, %got(RO_10012A70)($gp)
/* 00413940 240A0008 */  li    $t2, 8
/* 00413944 27392A70 */  addiu $t9, %lo(RO_10012A70) # addiu $t9, $t9, 0x2a70
/* 00413948 AE390000 */  sw    $t9, ($s1)
/* 0041394C AE2A0008 */  sw    $t2, 8($s1)
/* 00413950 240B0001 */  li    $t3, 1
/* 00413954 240C0060 */  li    $t4, 96
/* 00413958 240D0004 */  li    $t5, 4
/* 0041395C AE700000 */  sw    $s0, ($s3)
/* 00413960 AE740004 */  sw    $s4, 4($s3)
/* 00413964 AE6B0024 */  sw    $t3, 0x24($s3)
/* 00413968 AE6C0014 */  sw    $t4, 0x14($s3)
/* 0041396C AE600018 */  sw    $zero, 0x18($s3)
/* 00413970 AE60001C */  sw    $zero, 0x1c($s3)
/* 00413974 AE6D0020 */  sw    $t5, 0x20($s3)
/* 00413978 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 0041397C 8FA4016C */  lw    $a0, 0x16c($sp)
/* 00413980 0320F809 */  jalr  $t9
/* 00413984 00000000 */   nop   
/* 00413988 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041398C 14400008 */  bnez  $v0, .L004139B0
/* 00413990 0040B825 */   move  $s7, $v0
/* 00413994 8F84806C */  lw    $a0, %got(RO_10012A78)($gp)
/* 00413998 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 0041399C 24842A78 */  addiu $a0, %lo(RO_10012A78) # addiu $a0, $a0, 0x2a78
/* 004139A0 0320F809 */  jalr  $t9
/* 004139A4 00000000 */   nop   
/* 004139A8 8FBC0034 */  lw    $gp, 0x34($sp)
/* 004139AC 00000000 */  nop   
.L004139B0:
/* 004139B0 8F998190 */  lw    $t9, %call16(malloc)($gp)
/* 004139B4 24040060 */  li    $a0, 96
/* 004139B8 0320F809 */  jalr  $t9
/* 004139BC 00000000 */   nop   
/* 004139C0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 004139C4 14400008 */  bnez  $v0, .L004139E8
/* 004139C8 AEE20000 */   sw    $v0, ($s7)
/* 004139CC 8F84806C */  lw    $a0, %got(RO_10012ABC)($gp)
/* 004139D0 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 004139D4 24842ABC */  addiu $a0, %lo(RO_10012ABC) # addiu $a0, $a0, 0x2abc
/* 004139D8 0320F809 */  jalr  $t9
/* 004139DC 00000000 */   nop   
/* 004139E0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 004139E4 00000000 */  nop   
.L004139E8:
/* 004139E8 10000024 */  b     .L00413A7C
/* 004139EC 24110060 */   li    $s1, 96
.L004139F0:
/* 004139F0 8F998798 */  lw    $t9, %call16(elf_getdata)($gp)
/* 004139F4 8FA50178 */  lw    $a1, 0x178($sp)
/* 004139F8 0320F809 */  jalr  $t9
/* 004139FC AFA4016C */   sw    $a0, 0x16c($sp)
/* 00413A00 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413A04 14400008 */  bnez  $v0, .L00413A28
/* 00413A08 0040B825 */   move  $s7, $v0
/* 00413A0C 8F84806C */  lw    $a0, %got(RO_10012ADC)($gp)
/* 00413A10 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00413A14 24842ADC */  addiu $a0, %lo(RO_10012ADC) # addiu $a0, $a0, 0x2adc
/* 00413A18 0320F809 */  jalr  $t9
/* 00413A1C 00000000 */   nop   
/* 00413A20 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413A24 00000000 */  nop   
.L00413A28:
/* 00413A28 8EE20008 */  lw    $v0, 8($s7)
/* 00413A2C 00000000 */  nop   
/* 00413A30 2C410060 */  sltiu $at, $v0, 0x60
/* 00413A34 10200011 */  beqz  $at, .L00413A7C
/* 00413A38 00408825 */   move  $s1, $v0
/* 00413A3C 8F998190 */  lw    $t9, %call16(malloc)($gp)
/* 00413A40 24040060 */  li    $a0, 96
/* 00413A44 0320F809 */  jalr  $t9
/* 00413A48 00000000 */   nop   
/* 00413A4C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413A50 14400008 */  bnez  $v0, .L00413A74
/* 00413A54 AEE20000 */   sw    $v0, ($s7)
/* 00413A58 8F84806C */  lw    $a0, %got(RO_10012AF0)($gp)
/* 00413A5C 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00413A60 24842AF0 */  addiu $a0, %lo(RO_10012AF0) # addiu $a0, $a0, 0x2af0
/* 00413A64 0320F809 */  jalr  $t9
/* 00413A68 00000000 */   nop   
/* 00413A6C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413A70 00000000 */  nop   
.L00413A74:
/* 00413A74 10000001 */  b     .L00413A7C
/* 00413A78 24110060 */   li    $s1, 96
.L00413A7C:
/* 00413A7C 8F99879C */  lw    $t9, %call16(elf_flagscn)($gp)
/* 00413A80 8FA4016C */  lw    $a0, 0x16c($sp)
/* 00413A84 24050004 */  li    $a1, 4
/* 00413A88 0320F809 */  jalr  $t9
/* 00413A8C 24060001 */   li    $a2, 1
/* 00413A90 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413A94 AFB70174 */  sw    $s7, 0x174($sp)
/* 00413A98 240E0060 */  li    $t6, 96
/* 00413A9C 240F0004 */  li    $t7, 4
/* 00413AA0 8F8A8B24 */  lw     $t2, %got(st_pchdr)($gp)
/* 00413AA4 AEEE0008 */  sw    $t6, 8($s7)
/* 00413AA8 AEEF0010 */  sw    $t7, 0x10($s7)
/* 00413AAC 8FB90184 */  lw    $t9, 0x184($sp)
/* 00413AB0 8D4A0000 */  lw    $t2, ($t2)
/* 00413AB4 24180060 */  li    $t8, 96
/* 00413AB8 AFB8018C */  sw    $t8, 0x18c($sp)
/* 00413ABC AD59000C */  sw    $t9, 0xc($t2)
/* 00413AC0 8FAB024C */  lw    $t3, 0x24c($sp)
/* 00413AC4 00000000 */  nop   
/* 00413AC8 316C0004 */  andi  $t4, $t3, 4
/* 00413ACC 11800138 */  beqz  $t4, .L00413FB0
/* 00413AD0 8FAC024C */   lw    $t4, 0x24c($sp)
/* 00413AD4 8FAD0184 */  lw    $t5, 0x184($sp)
/* 00413AD8 00000000 */  nop   
/* 00413ADC 19A00115 */  blez  $t5, .L00413F34
/* 00413AE0 8FAE019C */   lw    $t6, 0x19c($sp)
/* 00413AE4 AFA00188 */  sw    $zero, 0x188($sp)
/* 00413AE8 27BE00A0 */  addiu $fp, $sp, 0xa0
.L00413AEC:
/* 00413AEC 8F9986EC */  lw    $t9, %call16(st_pcfd_ifd)($gp)
/* 00413AF0 8FA40188 */  lw    $a0, 0x188($sp)
/* 00413AF4 0320F809 */  jalr  $t9
/* 00413AF8 AFA00194 */   sw    $zero, 0x194($sp)
/* 00413AFC AFA20244 */  sw    $v0, 0x244($sp)
/* 00413B00 8C4F0000 */  lw    $t7, ($v0)
/* 00413B04 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413B08 AFAF01F8 */  sw    $t7, 0x1f8($sp)
/* 00413B0C 91F8003D */  lbu   $t8, 0x3d($t7)
/* 00413B10 8DE4001C */  lw    $a0, 0x1c($t7)
/* 00413B14 3319FFE1 */  andi  $t9, $t8, 0xffe1
/* 00413B18 A1F9003D */  sb    $t9, 0x3d($t7)
/* 00413B1C 8DE3003C */  lw    $v1, 0x3c($t7)
/* 00413B20 00000000 */  nop   
/* 00413B24 00035342 */  srl   $t2, $v1, 0xd
/* 00413B28 000A5F00 */  sll   $t3, $t2, 0x1c
/* 00413B2C 000B63C2 */  srl   $t4, $t3, 0xf
/* 00413B30 01836826 */  xor   $t5, $t4, $v1
/* 00413B34 ADED003C */  sw    $t5, 0x3c($t7)
/* 00413B38 95EE003E */  lhu   $t6, 0x3e($t7)
/* 00413B3C 00000000 */  nop   
/* 00413B40 31D8E000 */  andi  $t8, $t6, 0xe000
/* 00413B44 10800005 */  beqz  $a0, .L00413B5C
/* 00413B48 A5F8003E */   sh    $t8, 0x3e($t7)
/* 00413B4C 8C590024 */  lw    $t9, 0x24($v0)
/* 00413B50 8FAA019C */  lw    $t2, 0x19c($sp)
/* 00413B54 17200004 */  bnez  $t9, .L00413B68
/* 00413B58 8FAB01F8 */   lw    $t3, 0x1f8($sp)
.L00413B5C:
/* 00413B5C 100000F0 */  b     .L00413F20
/* 00413B60 8FA20188 */   lw    $v0, 0x188($sp)
/* 00413B64 8FAB01F8 */  lw    $t3, 0x1f8($sp)
.L00413B68:
/* 00413B68 01446021 */  addu  $t4, $t2, $a0
/* 00413B6C AD6A0018 */  sw    $t2, 0x18($t3)
/* 00413B70 AFAC019C */  sw    $t4, 0x19c($sp)
/* 00413B74 8FAD0190 */  lw    $t5, 0x190($sp)
/* 00413B78 9568002A */  lhu   $t0, 0x2a($t3)
/* 00413B7C 00004825 */  move  $t1, $zero
/* 00413B80 190000E2 */  blez  $t0, .L00413F0C
/* 00413B84 AD6D0040 */   sw    $t5, 0x40($t3)
/* 00413B88 2407FFFF */  li    $a3, -1
/* 00413B8C 8FAE0244 */  lw    $t6, 0x244($sp)
.L00413B90:
/* 00413B90 00000000 */  nop   
/* 00413B94 8DD80034 */  lw    $t8, 0x34($t6)
/* 00413B98 00000000 */  nop   
/* 00413B9C 03091021 */  addu  $v0, $t8, $t1
/* 00413BA0 8C4F0008 */  lw    $t7, 8($v0)
/* 00413BA4 00000000 */  nop   
/* 00413BA8 10EF0009 */  beq   $a3, $t7, .L00413BD0
/* 00413BAC 00000000 */   nop   
/* 00413BB0 8C590028 */  lw    $t9, 0x28($v0)
/* 00413BB4 00000000 */  nop   
/* 00413BB8 10F90005 */  beq   $a3, $t9, .L00413BD0
/* 00413BBC 00000000 */   nop   
/* 00413BC0 8C4A002C */  lw    $t2, 0x2c($v0)
/* 00413BC4 8FAD01F8 */  lw    $t5, 0x1f8($sp)
/* 00413BC8 14EA0008 */  bne   $a3, $t2, .L00413BEC
/* 00413BCC 8FAC0190 */   lw    $t4, 0x190($sp)
.L00413BD0:
/* 00413BD0 00081080 */  sll   $v0, $t0, 2
/* 00413BD4 00481023 */  subu  $v0, $v0, $t0
/* 00413BD8 00021080 */  sll   $v0, $v0, 2
/* 00413BDC 00481021 */  addu  $v0, $v0, $t0
/* 00413BE0 100000C6 */  b     .L00413EFC
/* 00413BE4 00021080 */   sll   $v0, $v0, 2
/* 00413BE8 8FAC0190 */  lw    $t4, 0x190($sp)
.L00413BEC:
/* 00413BEC 8DAB0040 */  lw    $t3, 0x40($t5)
/* 00413BF0 00002025 */  move  $a0, $zero
/* 00413BF4 018B7023 */  subu  $t6, $t4, $t3
/* 00413BF8 AC4E0030 */  sw    $t6, 0x30($v0)
/* 00413BFC 8FB801F8 */  lw    $t8, 0x1f8($sp)
/* 00413C00 8FAF0244 */  lw    $t7, 0x244($sp)
/* 00413C04 9708002A */  lhu   $t0, 0x2a($t8)
/* 00413C08 8F05001C */  lw    $a1, 0x1c($t8)
/* 00413C0C 1900001A */  blez  $t0, .L00413C78
/* 00413C10 00000000 */   nop   
/* 00413C14 00083880 */  sll   $a3, $t0, 2
/* 00413C18 00E83823 */  subu  $a3, $a3, $t0
/* 00413C1C 00073880 */  sll   $a3, $a3, 2
/* 00413C20 00E83821 */  addu  $a3, $a3, $t0
/* 00413C24 8C460008 */  lw    $a2, 8($v0)
/* 00413C28 8DE30034 */  lw    $v1, 0x34($t7)
/* 00413C2C AFA20138 */  sw    $v0, 0x138($sp)
/* 00413C30 00073880 */  sll   $a3, $a3, 2
.L00413C34:
/* 00413C34 8C620008 */  lw    $v0, 8($v1)
/* 00413C38 24840034 */  addiu $a0, $a0, 0x34
/* 00413C3C 00C2082A */  slt   $at, $a2, $v0
/* 00413C40 10200008 */  beqz  $at, .L00413C64
/* 00413C44 0045082A */   slt   $at, $v0, $a1
/* 00413C48 10200007 */  beqz  $at, .L00413C68
/* 00413C4C 0087082A */   slt   $at, $a0, $a3
/* 00413C50 8C79002C */  lw    $t9, 0x2c($v1)
/* 00413C54 2401FFFF */  li    $at, -1
/* 00413C58 13210003 */  beq   $t9, $at, .L00413C68
/* 00413C5C 0087082A */   slt   $at, $a0, $a3
/* 00413C60 00402825 */  move  $a1, $v0
.L00413C64:
/* 00413C64 0087082A */  slt   $at, $a0, $a3
.L00413C68:
/* 00413C68 1420FFF2 */  bnez  $at, .L00413C34
/* 00413C6C 24630034 */   addiu $v1, $v1, 0x34
/* 00413C70 8FA20138 */  lw    $v0, 0x138($sp)
/* 00413C74 2407FFFF */  li    $a3, -1
.L00413C78:
/* 00413C78 18A00005 */  blez  $a1, .L00413C90
/* 00413C7C 00000000 */   nop   
/* 00413C80 8C460008 */  lw    $a2, 8($v0)
/* 00413C84 AFA20138 */  sw    $v0, 0x138($sp)
/* 00413C88 04C10007 */  bgez  $a2, .L00413CA8
/* 00413C8C 00066880 */   sll   $t5, $a2, 2
.L00413C90:
/* 00413C90 00081080 */  sll   $v0, $t0, 2
/* 00413C94 00481023 */  subu  $v0, $v0, $t0
/* 00413C98 00021080 */  sll   $v0, $v0, 2
/* 00413C9C 00481021 */  addu  $v0, $v0, $t0
/* 00413CA0 10000096 */  b     .L00413EFC
/* 00413CA4 00021080 */   sll   $v0, $v0, 2
.L00413CA8:
/* 00413CA8 8FAA0244 */  lw    $t2, 0x244($sp)
/* 00413CAC AFA90054 */  sw    $t1, 0x54($sp)
/* 00413CB0 8D420024 */  lw    $v0, 0x24($t2)
/* 00413CB4 8FAC0138 */  lw    $t4, 0x138($sp)
/* 00413CB8 00053880 */  sll   $a3, $a1, 2
/* 00413CBC 004DA021 */  addu  $s4, $v0, $t5
/* 00413CC0 00472021 */  addu  $a0, $v0, $a3
/* 00413CC4 0094082B */  sltu  $at, $a0, $s4
/* 00413CC8 8D960028 */  lw    $s6, 0x28($t4)
/* 00413CCC 2413FFFF */  li    $s3, -1
/* 00413CD0 0000A825 */  move  $s5, $zero
/* 00413CD4 AFA70050 */  sw    $a3, 0x50($sp)
/* 00413CD8 14200081 */  bnez  $at, .L00413EE0
/* 00413CDC 03C01825 */   move  $v1, $fp
.L00413CE0:
/* 00413CE0 16840003 */  bne   $s4, $a0, .L00413CF0
/* 00413CE4 27AF0120 */   addiu $t7, $sp, 0x120
/* 00413CE8 1000000B */  b     .L00413D18
/* 00413CEC 24040001 */   li    $a0, 1
.L00413CF0:
/* 00413CF0 8E820000 */  lw    $v0, ($s4)
/* 00413CF4 8FAB0138 */  lw    $t3, 0x138($sp)
/* 00413CF8 14400004 */  bnez  $v0, .L00413D0C
/* 00413CFC 00402825 */   move  $a1, $v0
/* 00413D00 8D650028 */  lw    $a1, 0x28($t3)
/* 00413D04 10000002 */  b     .L00413D10
/* 00413D08 00B62023 */   subu  $a0, $a1, $s6
.L00413D0C:
/* 00413D0C 00B62023 */  subu  $a0, $a1, $s6
.L00413D10:
/* 00413D10 00047400 */  sll   $t6, $a0, 0x10
/* 00413D14 000E2403 */  sra   $a0, $t6, 0x10
.L00413D18:
/* 00413D18 14800003 */  bnez  $a0, .L00413D28
/* 00413D1C 24010008 */   li    $at, 8
/* 00413D20 1661001C */  bne   $s3, $at, .L00413D94
/* 00413D24 24620003 */   addiu $v0, $v1, 3
.L00413D28:
/* 00413D28 2401FFFF */  li    $at, -1
/* 00413D2C 1261000A */  beq   $s3, $at, .L00413D58
/* 00413D30 02C4B021 */   addu  $s6, $s6, $a0
/* 00413D34 2AA1FFF9 */  slti  $at, $s5, -7
/* 00413D38 14200007 */  bnez  $at, .L00413D58
/* 00413D3C 2AA10008 */   slti  $at, $s5, 8
/* 00413D40 10200005 */  beqz  $at, .L00413D58
/* 00413D44 0015C900 */   sll   $t9, $s5, 4
/* 00413D48 03335025 */  or    $t2, $t9, $s3
/* 00413D4C A06A0000 */  sb    $t2, ($v1)
/* 00413D50 1000000A */  b     .L00413D7C
/* 00413D54 24630001 */   addiu $v1, $v1, 1
.L00413D58:
/* 00413D58 2401FFFF */  li    $at, -1
/* 00413D5C 12610007 */  beq   $s3, $at, .L00413D7C
/* 00413D60 366C0080 */   ori   $t4, $s3, 0x80
/* 00413D64 A0730000 */  sb    $s3, ($v1)
/* 00413D68 00155A03 */  sra   $t3, $s5, 8
/* 00413D6C A06C0000 */  sb    $t4, ($v1)
/* 00413D70 A06B0001 */  sb    $t3, 1($v1)
/* 00413D74 A0750002 */  sb    $s5, 2($v1)
/* 00413D78 24630003 */  addiu $v1, $v1, 3
.L00413D7C:
/* 00413D7C 0004AC00 */  sll   $s5, $a0, 0x10
/* 00413D80 0015C403 */  sra   $t8, $s5, 0x10
/* 00413D84 00009825 */  move  $s3, $zero
/* 00413D88 0300A825 */  move  $s5, $t8
/* 00413D8C 10000002 */  b     .L00413D98
/* 00413D90 24620003 */   addiu $v0, $v1, 3
.L00413D94:
/* 00413D94 26730001 */  addiu $s3, $s3, 1
.L00413D98:
/* 00413D98 004F082B */  sltu  $at, $v0, $t7
/* 00413D9C 1020000A */  beqz  $at, .L00413DC8
/* 00413DA0 00000000 */   nop   
/* 00413DA4 8FB90244 */  lw    $t9, 0x244($sp)
/* 00413DA8 8FAD0050 */  lw    $t5, 0x50($sp)
/* 00413DAC 8F2A0024 */  lw    $t2, 0x24($t9)
/* 00413DB0 007E6023 */  subu  $t4, $v1, $fp
/* 00413DB4 014D2021 */  addu  $a0, $t2, $t5
/* 00413DB8 16840041 */  bne   $s4, $a0, .L00413EC0
/* 00413DBC 00000000 */   nop   
/* 00413DC0 1980003F */  blez  $t4, .L00413EC0
/* 00413DC4 00000000 */   nop   
.L00413DC8:
/* 00413DC8 8EE20008 */  lw    $v0, 8($s7)
/* 00413DCC 007E8023 */  subu  $s0, $v1, $fp
/* 00413DD0 00435821 */  addu  $t3, $v0, $v1
/* 00413DD4 017E7023 */  subu  $t6, $t3, $fp
/* 00413DD8 022E082B */  sltu  $at, $s1, $t6
/* 00413DDC 10200023 */  beqz  $at, .L00413E6C
/* 00413DE0 00000000 */   nop   
/* 00413DE4 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00413DE8 8FA4016C */  lw    $a0, 0x16c($sp)
/* 00413DEC 0320F809 */  jalr  $t9
/* 00413DF0 00000000 */   nop   
/* 00413DF4 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413DF8 14400008 */  bnez  $v0, .L00413E1C
/* 00413DFC 0040B825 */   move  $s7, $v0
/* 00413E00 8F84806C */  lw    $a0, %got(RO_10012B10)($gp)
/* 00413E04 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00413E08 24842B10 */  addiu $a0, %lo(RO_10012B10) # addiu $a0, $a0, 0x2b10
/* 00413E0C 0320F809 */  jalr  $t9
/* 00413E10 00000000 */   nop   
/* 00413E14 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413E18 00000000 */  nop   
.L00413E1C:
/* 00413E1C 24180001 */  li    $t8, 1
/* 00413E20 AEF80010 */  sw    $t8, 0x10($s7)
/* 00413E24 AEE00008 */  sw    $zero, 8($s7)
/* 00413E28 8F998190 */  lw    $t9, %call16(malloc)($gp)
/* 00413E2C 26110008 */  addiu $s1, $s0, 8
/* 00413E30 02209025 */  move  $s2, $s1
/* 00413E34 0320F809 */  jalr  $t9
/* 00413E38 02202025 */   move  $a0, $s1
/* 00413E3C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413E40 14400008 */  bnez  $v0, .L00413E64
/* 00413E44 AEE20000 */   sw    $v0, ($s7)
/* 00413E48 8F84806C */  lw    $a0, %got(RO_10012B4C)($gp)
/* 00413E4C 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00413E50 02202825 */  move  $a1, $s1
/* 00413E54 0320F809 */  jalr  $t9
/* 00413E58 24842B4C */   addiu $a0, %lo(RO_10012B4C) # addiu $a0, $a0, 0x2b4c
/* 00413E5C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413E60 00000000 */  nop   
.L00413E64:
/* 00413E64 8EE20008 */  lw    $v0, 8($s7)
/* 00413E68 02408825 */  move  $s1, $s2
.L00413E6C:
/* 00413E6C 8EEF0000 */  lw    $t7, ($s7)
/* 00413E70 8F9980DC */  lw    $t9, %call16(memcpy)($gp)
/* 00413E74 03C02825 */  move  $a1, $fp
/* 00413E78 02003025 */  move  $a2, $s0
/* 00413E7C 0320F809 */  jalr  $t9
/* 00413E80 01E22021 */   addu  $a0, $t7, $v0
/* 00413E84 8EF90008 */  lw    $t9, 8($s7)
/* 00413E88 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413E8C 03305021 */  addu  $t2, $t9, $s0
/* 00413E90 AEEA0008 */  sw    $t2, 8($s7)
/* 00413E94 8FAD0190 */  lw    $t5, 0x190($sp)
/* 00413E98 8FAB0194 */  lw    $t3, 0x194($sp)
/* 00413E9C 8FB80244 */  lw    $t8, 0x244($sp)
/* 00413EA0 01B06021 */  addu  $t4, $t5, $s0
/* 00413EA4 01707021 */  addu  $t6, $t3, $s0
/* 00413EA8 AFAC0190 */  sw    $t4, 0x190($sp)
/* 00413EAC AFAE0194 */  sw    $t6, 0x194($sp)
/* 00413EB0 8FB90050 */  lw    $t9, 0x50($sp)
/* 00413EB4 8F0F0024 */  lw    $t7, 0x24($t8)
/* 00413EB8 03C01825 */  move  $v1, $fp
/* 00413EBC 01F92021 */  addu  $a0, $t7, $t9
.L00413EC0:
/* 00413EC0 26940004 */  addiu $s4, $s4, 4
/* 00413EC4 0094082B */  sltu  $at, $a0, $s4
/* 00413EC8 1020FF85 */  beqz  $at, .L00413CE0
/* 00413ECC 00000000 */   nop   
/* 00413ED0 8FAA01F8 */  lw    $t2, 0x1f8($sp)
/* 00413ED4 00000000 */  nop   
/* 00413ED8 9548002A */  lhu   $t0, 0x2a($t2)
/* 00413EDC 00000000 */  nop   
.L00413EE0:
/* 00413EE0 00081080 */  sll   $v0, $t0, 2
/* 00413EE4 00481023 */  subu  $v0, $v0, $t0
/* 00413EE8 00021080 */  sll   $v0, $v0, 2
/* 00413EEC 00481021 */  addu  $v0, $v0, $t0
/* 00413EF0 8FA90054 */  lw    $t1, 0x54($sp)
/* 00413EF4 00021080 */  sll   $v0, $v0, 2
/* 00413EF8 2407FFFF */  li    $a3, -1
.L00413EFC:
/* 00413EFC 25290034 */  addiu $t1, $t1, 0x34
/* 00413F00 0122082A */  slt   $at, $t1, $v0
/* 00413F04 1420FF22 */  bnez  $at, .L00413B90
/* 00413F08 8FAE0244 */   lw    $t6, 0x244($sp)
.L00413F0C:
/* 00413F0C 8FAD0194 */  lw    $t5, 0x194($sp)
/* 00413F10 8FAC01F8 */  lw    $t4, 0x1f8($sp)
/* 00413F14 00000000 */  nop   
/* 00413F18 AD8D0044 */  sw    $t5, 0x44($t4)
/* 00413F1C 8FA20188 */  lw    $v0, 0x188($sp)
.L00413F20:
/* 00413F20 8FAB0184 */  lw    $t3, 0x184($sp)
/* 00413F24 24420001 */  addiu $v0, $v0, 1
/* 00413F28 144BFEF0 */  bne   $v0, $t3, .L00413AEC
/* 00413F2C AFA20188 */   sw    $v0, 0x188($sp)
/* 00413F30 8FAE019C */  lw    $t6, 0x19c($sp)
.L00413F34:
/* 00413F34 8FB00190 */  lw    $s0, 0x190($sp)
/* 00413F38 11C0001C */  beqz  $t6, .L00413FAC
/* 00413F3C 00108023 */   negu  $s0, $s0
/* 00413F40 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00413F44 32180003 */  andi  $t8, $s0, 3
/* 00413F48 8FA4016C */  lw    $a0, 0x16c($sp)
/* 00413F4C 0320F809 */  jalr  $t9
/* 00413F50 03008025 */   move  $s0, $t8
/* 00413F54 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413F58 14400008 */  bnez  $v0, .L00413F7C
/* 00413F5C 0040B825 */   move  $s7, $v0
/* 00413F60 8F84806C */  lw    $a0, %got(RO_10012B80)($gp)
/* 00413F64 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00413F68 24842B80 */  addiu $a0, %lo(RO_10012B80) # addiu $a0, $a0, 0x2b80
/* 00413F6C 0320F809 */  jalr  $t9
/* 00413F70 00000000 */   nop   
/* 00413F74 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00413F78 00000000 */  nop   
.L00413F7C:
/* 00413F7C 8F938088 */  lw    $s3, %got(B_10023078)($gp)
/* 00413F80 240F0001 */  li    $t7, 1
/* 00413F84 26733078 */  addiu $s3, %lo(B_10023078) # addiu $s3, $s3, 0x3078
/* 00413F88 AEF30000 */  sw    $s3, ($s7)
/* 00413F8C AEEF0010 */  sw    $t7, 0x10($s7)
/* 00413F90 AEF00008 */  sw    $s0, 8($s7)
/* 00413F94 8FB90190 */  lw    $t9, 0x190($sp)
/* 00413F98 240D0060 */  li    $t5, 96
/* 00413F9C 03305021 */  addu  $t2, $t9, $s0
/* 00413FA0 AFAA0190 */  sw    $t2, 0x190($sp)
/* 00413FA4 AFAD01A4 */  sw    $t5, 0x1a4($sp)
/* 00413FA8 AFAA01A0 */  sw    $t2, 0x1a0($sp)
.L00413FAC:
/* 00413FAC 8FAC024C */  lw    $t4, 0x24c($sp)
.L00413FB0:
/* 00413FB0 8F938088 */  lw    $s3, %got(B_10023078)($gp)
/* 00413FB4 318B0100 */  andi  $t3, $t4, 0x100
/* 00413FB8 11600047 */  beqz  $t3, .L004140D8
/* 00413FBC 26733078 */   addiu $s3, %lo(B_10023078) # addiu $s3, $s3, 0x3078
/* 00413FC0 8FAE0190 */  lw    $t6, 0x190($sp)
/* 00413FC4 8FAF0184 */  lw    $t7, 0x184($sp)
/* 00413FC8 25D80060 */  addiu $t8, $t6, 0x60
/* 00413FCC AFB8018C */  sw    $t8, 0x18c($sp)
/* 00413FD0 19E0003C */  blez  $t7, .L004140C4
/* 00413FD4 AFA00190 */   sw    $zero, 0x190($sp)
/* 00413FD8 8F92806C */  lw    $s2, %got(RO_10012BBC)($gp)
/* 00413FDC AFA00188 */  sw    $zero, 0x188($sp)
/* 00413FE0 24110034 */  li    $s1, 52
/* 00413FE4 26522BBC */  addiu $s2, %lo(RO_10012BBC) # addiu $s2, $s2, 0x2bbc
.L00413FE8:
/* 00413FE8 8F9986EC */  lw    $t9, %call16(st_pcfd_ifd)($gp)
/* 00413FEC 8FA40188 */  lw    $a0, 0x188($sp)
/* 00413FF0 0320F809 */  jalr  $t9
/* 00413FF4 00000000 */   nop   
/* 00413FF8 AFA20244 */  sw    $v0, 0x244($sp)
/* 00413FFC 8C590000 */  lw    $t9, ($v0)
/* 00414000 97AA0224 */  lhu   $t2, 0x224($sp)
/* 00414004 AFB901F8 */  sw    $t9, 0x1f8($sp)
/* 00414008 9723002A */  lhu   $v1, 0x2a($t9)
/* 0041400C 97AC0226 */  lhu   $t4, 0x226($sp)
/* 00414010 00710019 */  multu $v1, $s1
/* 00414014 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00414018 014C5821 */  addu  $t3, $t2, $t4
/* 0041401C A72B0028 */  sh    $t3, 0x28($t9)
/* 00414020 8FAE0190 */  lw    $t6, 0x190($sp)
/* 00414024 00008012 */  mflo  $s0
/* 00414028 01D0C021 */  addu  $t8, $t6, $s0
/* 0041402C 10600016 */  beqz  $v1, .L00414088
/* 00414030 AFB80190 */   sw    $t8, 0x190($sp)
/* 00414034 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00414038 8FA4016C */  lw    $a0, 0x16c($sp)
/* 0041403C 0320F809 */  jalr  $t9
/* 00414040 00000000 */   nop   
/* 00414044 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00414048 14400007 */  bnez  $v0, .L00414068
/* 0041404C 0040B825 */   move  $s7, $v0
/* 00414050 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00414054 02402025 */  move  $a0, $s2
/* 00414058 0320F809 */  jalr  $t9
/* 0041405C 00000000 */   nop   
/* 00414060 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00414064 00000000 */  nop   
.L00414068:
/* 00414068 240F0001 */  li    $t7, 1
/* 0041406C AEEF0010 */  sw    $t7, 0x10($s7)
/* 00414070 AEE00008 */  sw    $zero, 8($s7)
/* 00414074 8FB90244 */  lw    $t9, 0x244($sp)
/* 00414078 00000000 */  nop   
/* 0041407C 8F2A0034 */  lw    $t2, 0x34($t9)
/* 00414080 AEF00008 */  sw    $s0, 8($s7)
/* 00414084 AEEA0000 */  sw    $t2, ($s7)
.L00414088:
/* 00414088 97AC0224 */  lhu   $t4, 0x224($sp)
/* 0041408C 97AB0226 */  lhu   $t3, 0x226($sp)
/* 00414090 8FAE01F8 */  lw    $t6, 0x1f8($sp)
/* 00414094 018B6821 */  addu  $t5, $t4, $t3
/* 00414098 A7AD0224 */  sh    $t5, 0x224($sp)
/* 0041409C 95C2002A */  lhu   $v0, 0x2a($t6)
/* 004140A0 8FA30188 */  lw    $v1, 0x188($sp)
/* 004140A4 8FB801B0 */  lw    $t8, 0x1b0($sp)
/* 004140A8 8FB90184 */  lw    $t9, 0x184($sp)
/* 004140AC 24630001 */  addiu $v1, $v1, 1
/* 004140B0 03027821 */  addu  $t7, $t8, $v0
/* 004140B4 AFAF01B0 */  sw    $t7, 0x1b0($sp)
/* 004140B8 AFA30188 */  sw    $v1, 0x188($sp)
/* 004140BC 1479FFCA */  bne   $v1, $t9, .L00413FE8
/* 004140C0 A7A20226 */   sh    $v0, 0x226($sp)
.L004140C4:
/* 004140C4 8FAA01B0 */  lw    $t2, 0x1b0($sp)
/* 004140C8 8FAC018C */  lw    $t4, 0x18c($sp)
/* 004140CC 11400003 */  beqz  $t2, .L004140DC
/* 004140D0 8FAB024C */   lw    $t3, 0x24c($sp)
/* 004140D4 AFAC01B4 */  sw    $t4, 0x1b4($sp)
.L004140D8:
/* 004140D8 8FAB024C */  lw    $t3, 0x24c($sp)
.L004140DC:
/* 004140DC 8FAE018C */  lw    $t6, 0x18c($sp)
/* 004140E0 316D0002 */  andi  $t5, $t3, 2
/* 004140E4 11A00048 */  beqz  $t5, .L00414208
/* 004140E8 8FB8024C */   lw    $t8, 0x24c($sp)
/* 004140EC 8FB80190 */  lw    $t8, 0x190($sp)
/* 004140F0 8FB90184 */  lw    $t9, 0x184($sp)
/* 004140F4 01D87821 */  addu  $t7, $t6, $t8
/* 004140F8 AFAF018C */  sw    $t7, 0x18c($sp)
/* 004140FC 1B20003C */  blez  $t9, .L004141F0
/* 00414100 AFA00190 */   sw    $zero, 0x190($sp)
/* 00414104 8F91806C */  lw    $s1, %got(RO_10012BF8)($gp)
/* 00414108 AFA00188 */  sw    $zero, 0x188($sp)
/* 0041410C 2412000C */  li    $s2, 12
/* 00414110 26312BF8 */  addiu $s1, %lo(RO_10012BF8) # addiu $s1, $s1, 0x2bf8
.L00414114:
/* 00414114 8F9986EC */  lw    $t9, %call16(st_pcfd_ifd)($gp)
/* 00414118 8FA40188 */  lw    $a0, 0x188($sp)
/* 0041411C 0320F809 */  jalr  $t9
/* 00414120 00000000 */   nop   
/* 00414124 AFA20244 */  sw    $v0, 0x244($sp)
/* 00414128 8C4A0000 */  lw    $t2, ($v0)
/* 0041412C 8FAB020C */  lw    $t3, 0x20c($sp)
/* 00414130 AFAA01F8 */  sw    $t2, 0x1f8($sp)
/* 00414134 8D430014 */  lw    $v1, 0x14($t2)
/* 00414138 8FAD0210 */  lw    $t5, 0x210($sp)
/* 0041413C 00720019 */  multu $v1, $s2
/* 00414140 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00414144 016D7021 */  addu  $t6, $t3, $t5
/* 00414148 AD4E0010 */  sw    $t6, 0x10($t2)
/* 0041414C 8FB80190 */  lw    $t8, 0x190($sp)
/* 00414150 00008012 */  mflo  $s0
/* 00414154 03107821 */  addu  $t7, $t8, $s0
/* 00414158 10600016 */  beqz  $v1, .L004141B4
/* 0041415C AFAF0190 */   sw    $t7, 0x190($sp)
/* 00414160 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00414164 8FA4016C */  lw    $a0, 0x16c($sp)
/* 00414168 0320F809 */  jalr  $t9
/* 0041416C 00000000 */   nop   
/* 00414170 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00414174 14400007 */  bnez  $v0, .L00414194
/* 00414178 0040B825 */   move  $s7, $v0
/* 0041417C 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00414180 02202025 */  move  $a0, $s1
/* 00414184 0320F809 */  jalr  $t9
/* 00414188 00000000 */   nop   
/* 0041418C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00414190 00000000 */  nop   
.L00414194:
/* 00414194 24190001 */  li    $t9, 1
/* 00414198 AEF90010 */  sw    $t9, 0x10($s7)
/* 0041419C AEE00008 */  sw    $zero, 8($s7)
/* 004141A0 8FAA0244 */  lw    $t2, 0x244($sp)
/* 004141A4 00000000 */  nop   
/* 004141A8 8D4B0004 */  lw    $t3, 4($t2)
/* 004141AC AEF00008 */  sw    $s0, 8($s7)
/* 004141B0 AEEB0000 */  sw    $t3, ($s7)
.L004141B4:
/* 004141B4 8FAD020C */  lw    $t5, 0x20c($sp)
/* 004141B8 8FAE0210 */  lw    $t6, 0x210($sp)
/* 004141BC 8FB801F8 */  lw    $t8, 0x1f8($sp)
/* 004141C0 01AE6021 */  addu  $t4, $t5, $t6
/* 004141C4 AFAC020C */  sw    $t4, 0x20c($sp)
/* 004141C8 8F050014 */  lw    $a1, 0x14($t8)
/* 004141CC 8FAF01B8 */  lw    $t7, 0x1b8($sp)
/* 004141D0 8FAA0188 */  lw    $t2, 0x188($sp)
/* 004141D4 8FAD0184 */  lw    $t5, 0x184($sp)
/* 004141D8 01E5C821 */  addu  $t9, $t7, $a1
/* 004141DC 254B0001 */  addiu $t3, $t2, 1
/* 004141E0 AFAB0188 */  sw    $t3, 0x188($sp)
/* 004141E4 AFB901B8 */  sw    $t9, 0x1b8($sp)
/* 004141E8 156DFFCA */  bne   $t3, $t5, .L00414114
/* 004141EC AFA50210 */   sw    $a1, 0x210($sp)
.L004141F0:
/* 004141F0 8FAE01B8 */  lw    $t6, 0x1b8($sp)
/* 004141F4 8FAC018C */  lw    $t4, 0x18c($sp)
/* 004141F8 11C00003 */  beqz  $t6, .L00414208
/* 004141FC 8FB8024C */   lw    $t8, 0x24c($sp)
/* 00414200 AFAC01BC */  sw    $t4, 0x1bc($sp)
/* 00414204 8FB8024C */  lw    $t8, 0x24c($sp)
.L00414208:
/* 00414208 8FB9018C */  lw    $t9, 0x18c($sp)
/* 0041420C 330F0020 */  andi  $t7, $t8, 0x20
/* 00414210 11E00046 */  beqz  $t7, .L0041432C
/* 00414214 2412000C */   li    $s2, 12
/* 00414218 8FAA0190 */  lw    $t2, 0x190($sp)
/* 0041421C 8FAD0184 */  lw    $t5, 0x184($sp)
/* 00414220 032A5821 */  addu  $t3, $t9, $t2
/* 00414224 AFAB018C */  sw    $t3, 0x18c($sp)
/* 00414228 19A0003B */  blez  $t5, .L00414318
/* 0041422C AFA00190 */   sw    $zero, 0x190($sp)
/* 00414230 8F91806C */  lw    $s1, %got(RO_10012C34)($gp)
/* 00414234 AFA00188 */  sw    $zero, 0x188($sp)
/* 00414238 26312C34 */  addiu $s1, %lo(RO_10012C34) # addiu $s1, $s1, 0x2c34
.L0041423C:
/* 0041423C 8F9986EC */  lw    $t9, %call16(st_pcfd_ifd)($gp)
/* 00414240 8FA40188 */  lw    $a0, 0x188($sp)
/* 00414244 0320F809 */  jalr  $t9
/* 00414248 00000000 */   nop   
/* 0041424C AFA20244 */  sw    $v0, 0x244($sp)
/* 00414250 8C4E0000 */  lw    $t6, ($v0)
/* 00414254 8FB8021C */  lw    $t8, 0x21c($sp)
/* 00414258 AFAE01F8 */  sw    $t6, 0x1f8($sp)
/* 0041425C 8DC30024 */  lw    $v1, 0x24($t6)
/* 00414260 8FAF0220 */  lw    $t7, 0x220($sp)
/* 00414264 00720019 */  multu $v1, $s2
/* 00414268 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041426C 030FC821 */  addu  $t9, $t8, $t7
/* 00414270 ADD90020 */  sw    $t9, 0x20($t6)
/* 00414274 8FAA0190 */  lw    $t2, 0x190($sp)
/* 00414278 00008012 */  mflo  $s0
/* 0041427C 01505821 */  addu  $t3, $t2, $s0
/* 00414280 10600016 */  beqz  $v1, .L004142DC
/* 00414284 AFAB0190 */   sw    $t3, 0x190($sp)
/* 00414288 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 0041428C 8FA4016C */  lw    $a0, 0x16c($sp)
/* 00414290 0320F809 */  jalr  $t9
/* 00414294 00000000 */   nop   
/* 00414298 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041429C 14400007 */  bnez  $v0, .L004142BC
/* 004142A0 0040B825 */   move  $s7, $v0
/* 004142A4 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 004142A8 02202025 */  move  $a0, $s1
/* 004142AC 0320F809 */  jalr  $t9
/* 004142B0 00000000 */   nop   
/* 004142B4 8FBC0034 */  lw    $gp, 0x34($sp)
/* 004142B8 00000000 */  nop   
.L004142BC:
/* 004142BC 240D0001 */  li    $t5, 1
/* 004142C0 AEED0010 */  sw    $t5, 0x10($s7)
/* 004142C4 AEE00008 */  sw    $zero, 8($s7)
/* 004142C8 8FAE0244 */  lw    $t6, 0x244($sp)
/* 004142CC 00000000 */  nop   
/* 004142D0 8DD8001C */  lw    $t8, 0x1c($t6)
/* 004142D4 AEF00008 */  sw    $s0, 8($s7)
/* 004142D8 AEF80000 */  sw    $t8, ($s7)
.L004142DC:
/* 004142DC 8FAF021C */  lw    $t7, 0x21c($sp)
/* 004142E0 8FB90220 */  lw    $t9, 0x220($sp)
/* 004142E4 8FAA01F8 */  lw    $t2, 0x1f8($sp)
/* 004142E8 01F96021 */  addu  $t4, $t7, $t9
/* 004142EC AFAC021C */  sw    $t4, 0x21c($sp)
/* 004142F0 8D450024 */  lw    $a1, 0x24($t2)
/* 004142F4 8FAB01C0 */  lw    $t3, 0x1c0($sp)
/* 004142F8 8FAE0188 */  lw    $t6, 0x188($sp)
/* 004142FC 8FAF0184 */  lw    $t7, 0x184($sp)
/* 00414300 01656821 */  addu  $t5, $t3, $a1
/* 00414304 25D80001 */  addiu $t8, $t6, 1
/* 00414308 AFB80188 */  sw    $t8, 0x188($sp)
/* 0041430C AFAD01C0 */  sw    $t5, 0x1c0($sp)
/* 00414310 170FFFCA */  bne   $t8, $t7, .L0041423C
/* 00414314 AFA50220 */   sw    $a1, 0x220($sp)
.L00414318:
/* 00414318 8FB901C0 */  lw    $t9, 0x1c0($sp)
/* 0041431C 8FAC018C */  lw    $t4, 0x18c($sp)
/* 00414320 13200003 */  beqz  $t9, .L00414330
/* 00414324 8FAA024C */   lw    $t2, 0x24c($sp)
/* 00414328 AFAC01C4 */  sw    $t4, 0x1c4($sp)
.L0041432C:
/* 0041432C 8FAA024C */  lw    $t2, 0x24c($sp)
.L00414330:
/* 00414330 8FAD018C */  lw    $t5, 0x18c($sp)
/* 00414334 314B0400 */  andi  $t3, $t2, 0x400
/* 00414338 11600046 */  beqz  $t3, .L00414454
/* 0041433C 8FAE024C */   lw    $t6, 0x24c($sp)
/* 00414340 8FAE0190 */  lw    $t6, 0x190($sp)
/* 00414344 8FAF0184 */  lw    $t7, 0x184($sp)
/* 00414348 01AEC021 */  addu  $t8, $t5, $t6
/* 0041434C AFB8018C */  sw    $t8, 0x18c($sp)
/* 00414350 19E0003A */  blez  $t7, .L0041443C
/* 00414354 AFA00190 */   sw    $zero, 0x190($sp)
/* 00414358 8F91806C */  lw    $s1, %got(RO_10012C70)($gp)
/* 0041435C AFA00188 */  sw    $zero, 0x188($sp)
/* 00414360 26312C70 */  addiu $s1, %lo(RO_10012C70) # addiu $s1, $s1, 0x2c70
.L00414364:
/* 00414364 8F9986EC */  lw    $t9, %call16(st_pcfd_ifd)($gp)
/* 00414368 8FA40188 */  lw    $a0, 0x188($sp)
/* 0041436C 0320F809 */  jalr  $t9
/* 00414370 00000000 */   nop   
/* 00414374 AFA20244 */  sw    $v0, 0x244($sp)
/* 00414378 8C590000 */  lw    $t9, ($v0)
/* 0041437C 8FAA0228 */  lw    $t2, 0x228($sp)
/* 00414380 8FAB022C */  lw    $t3, 0x22c($sp)
/* 00414384 AFB901F8 */  sw    $t9, 0x1f8($sp)
/* 00414388 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041438C 014B6821 */  addu  $t5, $t2, $t3
/* 00414390 8F230030 */  lw    $v1, 0x30($t9)
/* 00414394 AF2D002C */  sw    $t5, 0x2c($t9)
/* 00414398 8FAE0190 */  lw    $t6, 0x190($sp)
/* 0041439C 00038080 */  sll   $s0, $v1, 2
/* 004143A0 01D0C021 */  addu  $t8, $t6, $s0
/* 004143A4 10600016 */  beqz  $v1, .L00414400
/* 004143A8 AFB80190 */   sw    $t8, 0x190($sp)
/* 004143AC 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 004143B0 8FA4016C */  lw    $a0, 0x16c($sp)
/* 004143B4 0320F809 */  jalr  $t9
/* 004143B8 00000000 */   nop   
/* 004143BC 8FBC0034 */  lw    $gp, 0x34($sp)
/* 004143C0 14400007 */  bnez  $v0, .L004143E0
/* 004143C4 0040B825 */   move  $s7, $v0
/* 004143C8 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 004143CC 02202025 */  move  $a0, $s1
/* 004143D0 0320F809 */  jalr  $t9
/* 004143D4 00000000 */   nop   
/* 004143D8 8FBC0034 */  lw    $gp, 0x34($sp)
/* 004143DC 00000000 */  nop   
.L004143E0:
/* 004143E0 240F0001 */  li    $t7, 1
/* 004143E4 AEEF0010 */  sw    $t7, 0x10($s7)
/* 004143E8 AEE00008 */  sw    $zero, 8($s7)
/* 004143EC 8FB90244 */  lw    $t9, 0x244($sp)
/* 004143F0 00000000 */  nop   
/* 004143F4 8F2A000C */  lw    $t2, 0xc($t9)
/* 004143F8 AEF00008 */  sw    $s0, 8($s7)
/* 004143FC AEEA0000 */  sw    $t2, ($s7)
.L00414400:
/* 00414400 8FAB0228 */  lw    $t3, 0x228($sp)
/* 00414404 8FAD022C */  lw    $t5, 0x22c($sp)
/* 00414408 8FAE01F8 */  lw    $t6, 0x1f8($sp)
/* 0041440C 016D6021 */  addu  $t4, $t3, $t5
/* 00414410 AFAC0228 */  sw    $t4, 0x228($sp)
/* 00414414 8DC50030 */  lw    $a1, 0x30($t6)
/* 00414418 8FB801C8 */  lw    $t8, 0x1c8($sp)
/* 0041441C 8FB90188 */  lw    $t9, 0x188($sp)
/* 00414420 8FAB0184 */  lw    $t3, 0x184($sp)
/* 00414424 03057821 */  addu  $t7, $t8, $a1
/* 00414428 272A0001 */  addiu $t2, $t9, 1
/* 0041442C AFAA0188 */  sw    $t2, 0x188($sp)
/* 00414430 AFAF01C8 */  sw    $t7, 0x1c8($sp)
/* 00414434 154BFFCB */  bne   $t2, $t3, .L00414364
/* 00414438 AFA5022C */   sw    $a1, 0x22c($sp)
.L0041443C:
/* 0041443C 8FAD01C8 */  lw    $t5, 0x1c8($sp)
/* 00414440 8FAC018C */  lw    $t4, 0x18c($sp)
/* 00414444 11A00003 */  beqz  $t5, .L00414454
/* 00414448 8FAE024C */   lw    $t6, 0x24c($sp)
/* 0041444C AFAC01CC */  sw    $t4, 0x1cc($sp)
/* 00414450 8FAE024C */  lw    $t6, 0x24c($sp)
.L00414454:
/* 00414454 8FAF018C */  lw    $t7, 0x18c($sp)
/* 00414458 31D80080 */  andi  $t8, $t6, 0x80
/* 0041445C 1300005E */  beqz  $t8, .L004145D8
/* 00414460 8FAA024C */   lw    $t2, 0x24c($sp)
/* 00414464 8FB90190 */  lw    $t9, 0x190($sp)
/* 00414468 8FAB0184 */  lw    $t3, 0x184($sp)
/* 0041446C 01F95021 */  addu  $t2, $t7, $t9
/* 00414470 AFAA018C */  sw    $t2, 0x18c($sp)
/* 00414474 1960003A */  blez  $t3, .L00414560
/* 00414478 AFA00190 */   sw    $zero, 0x190($sp)
/* 0041447C 8F91806C */  lw    $s1, %got(RO_10012CAC)($gp)
/* 00414480 AFA00188 */  sw    $zero, 0x188($sp)
/* 00414484 26312CAC */  addiu $s1, %lo(RO_10012CAC) # addiu $s1, $s1, 0x2cac
.L00414488:
/* 00414488 8F9986EC */  lw    $t9, %call16(st_pcfd_ifd)($gp)
/* 0041448C 8FA40188 */  lw    $a0, 0x188($sp)
/* 00414490 0320F809 */  jalr  $t9
/* 00414494 00000000 */   nop   
/* 00414498 AFA20244 */  sw    $v0, 0x244($sp)
/* 0041449C 8C4D0000 */  lw    $t5, ($v0)
/* 004144A0 8FAE0204 */  lw    $t6, 0x204($sp)
/* 004144A4 8FB80208 */  lw    $t8, 0x208($sp)
/* 004144A8 8FBC0034 */  lw    $gp, 0x34($sp)
/* 004144AC AFAD01F8 */  sw    $t5, 0x1f8($sp)
/* 004144B0 01D87821 */  addu  $t7, $t6, $t8
/* 004144B4 ADAF0008 */  sw    $t7, 8($t5)
/* 004144B8 8FB90190 */  lw    $t9, 0x190($sp)
/* 004144BC 8DB0000C */  lw    $s0, 0xc($t5)
/* 004144C0 00000000 */  nop   
/* 004144C4 03305021 */  addu  $t2, $t9, $s0
/* 004144C8 12000016 */  beqz  $s0, .L00414524
/* 004144CC AFAA0190 */   sw    $t2, 0x190($sp)
/* 004144D0 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 004144D4 8FA4016C */  lw    $a0, 0x16c($sp)
/* 004144D8 0320F809 */  jalr  $t9
/* 004144DC 00000000 */   nop   
/* 004144E0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 004144E4 14400007 */  bnez  $v0, .L00414504
/* 004144E8 0040B825 */   move  $s7, $v0
/* 004144EC 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 004144F0 02202025 */  move  $a0, $s1
/* 004144F4 0320F809 */  jalr  $t9
/* 004144F8 00000000 */   nop   
/* 004144FC 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00414500 00000000 */  nop   
.L00414504:
/* 00414504 240B0001 */  li    $t3, 1
/* 00414508 AEEB0010 */  sw    $t3, 0x10($s7)
/* 0041450C AEE00008 */  sw    $zero, 8($s7)
/* 00414510 8FAD0244 */  lw    $t5, 0x244($sp)
/* 00414514 00000000 */  nop   
/* 00414518 8DAE0014 */  lw    $t6, 0x14($t5)
/* 0041451C AEF00008 */  sw    $s0, 8($s7)
/* 00414520 AEEE0000 */  sw    $t6, ($s7)
.L00414524:
/* 00414524 8FB80204 */  lw    $t8, 0x204($sp)
/* 00414528 8FAF0208 */  lw    $t7, 0x208($sp)
/* 0041452C 8FB901F8 */  lw    $t9, 0x1f8($sp)
/* 00414530 030F6021 */  addu  $t4, $t8, $t7
/* 00414534 AFAC0204 */  sw    $t4, 0x204($sp)
/* 00414538 8F25000C */  lw    $a1, 0xc($t9)
/* 0041453C 8FAA01D0 */  lw    $t2, 0x1d0($sp)
/* 00414540 8FAD0188 */  lw    $t5, 0x188($sp)
/* 00414544 8FB80184 */  lw    $t8, 0x184($sp)
/* 00414548 01455821 */  addu  $t3, $t2, $a1
/* 0041454C 25AE0001 */  addiu $t6, $t5, 1
/* 00414550 AFAE0188 */  sw    $t6, 0x188($sp)
/* 00414554 AFAB01D0 */  sw    $t3, 0x1d0($sp)
/* 00414558 15D8FFCB */  bne   $t6, $t8, .L00414488
/* 0041455C AFA50208 */   sw    $a1, 0x208($sp)
.L00414560:
/* 00414560 8FB00190 */  lw    $s0, 0x190($sp)
/* 00414564 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00414568 00108023 */  negu  $s0, $s0
/* 0041456C 320F0003 */  andi  $t7, $s0, 3
/* 00414570 8FA4016C */  lw    $a0, 0x16c($sp)
/* 00414574 0320F809 */  jalr  $t9
/* 00414578 01E08025 */   move  $s0, $t7
/* 0041457C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00414580 14400008 */  bnez  $v0, .L004145A4
/* 00414584 0040B825 */   move  $s7, $v0
/* 00414588 8F84806C */  lw    $a0, %got(RO_10012CE8)($gp)
/* 0041458C 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00414590 24842CE8 */  addiu $a0, %lo(RO_10012CE8) # addiu $a0, $a0, 0x2ce8
/* 00414594 0320F809 */  jalr  $t9
/* 00414598 00000000 */   nop   
/* 0041459C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 004145A0 00000000 */  nop   
.L004145A4:
/* 004145A4 8FA20190 */  lw    $v0, 0x190($sp)
/* 004145A8 240C0001 */  li    $t4, 1
/* 004145AC 00501021 */  addu  $v0, $v0, $s0
/* 004145B0 AEEC0010 */  sw    $t4, 0x10($s7)
/* 004145B4 AEF00008 */  sw    $s0, 8($s7)
/* 004145B8 AEF30000 */  sw    $s3, ($s7)
/* 004145BC AFA201D0 */  sw    $v0, 0x1d0($sp)
/* 004145C0 10400004 */  beqz  $v0, .L004145D4
/* 004145C4 AFA20190 */   sw    $v0, 0x190($sp)
/* 004145C8 8FB9018C */  lw    $t9, 0x18c($sp)
/* 004145CC AFA20190 */  sw    $v0, 0x190($sp)
/* 004145D0 AFB901D4 */  sw    $t9, 0x1d4($sp)
.L004145D4:
/* 004145D4 8FAA024C */  lw    $t2, 0x24c($sp)
.L004145D8:
/* 004145D8 00000000 */  nop   
/* 004145DC 314B0800 */  andi  $t3, $t2, 0x800
/* 004145E0 11600043 */  beqz  $t3, .L004146F0
/* 004145E4 8FAC024C */   lw    $t4, 0x24c($sp)
/* 004145E8 8F828B24 */  lw     $v0, %got(st_pchdr)($gp)
/* 004145EC 8FAE018C */  lw    $t6, 0x18c($sp)
/* 004145F0 8C420000 */  lw    $v0, ($v0)
/* 004145F4 8FB80190 */  lw    $t8, 0x190($sp)
/* 004145F8 8C4D0028 */  lw    $t5, 0x28($v0)
/* 004145FC 01D87821 */  addu  $t7, $t6, $t8
/* 00414600 AFAF018C */  sw    $t7, 0x18c($sp)
/* 00414604 AFA00190 */  sw    $zero, 0x190($sp)
/* 00414608 11A0001F */  beqz  $t5, .L00414688
/* 0041460C AFAD01D8 */   sw    $t5, 0x1d8($sp)
/* 00414610 8C500028 */  lw    $s0, 0x28($v0)
/* 00414614 AFAF01DC */  sw    $t7, 0x1dc($sp)
/* 00414618 AFB00190 */  sw    $s0, 0x190($sp)
/* 0041461C 8C4A0028 */  lw    $t2, 0x28($v0)
/* 00414620 00000000 */  nop   
/* 00414624 11400018 */  beqz  $t2, .L00414688
/* 00414628 00000000 */   nop   
/* 0041462C 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00414630 8FA4016C */  lw    $a0, 0x16c($sp)
/* 00414634 0320F809 */  jalr  $t9
/* 00414638 00000000 */   nop   
/* 0041463C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00414640 14400008 */  bnez  $v0, .L00414664
/* 00414644 0040B825 */   move  $s7, $v0
/* 00414648 8F84806C */  lw    $a0, %got(RO_10012D24)($gp)
/* 0041464C 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00414650 24842D24 */  addiu $a0, %lo(RO_10012D24) # addiu $a0, $a0, 0x2d24
/* 00414654 0320F809 */  jalr  $t9
/* 00414658 00000000 */   nop   
/* 0041465C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00414660 00000000 */  nop   
.L00414664:
/* 00414664 8F8D8B24 */  lw     $t5, %got(st_pchdr)($gp)
/* 00414668 240B0001 */  li    $t3, 1
/* 0041466C AEEB0010 */  sw    $t3, 0x10($s7)
/* 00414670 AEE00008 */  sw    $zero, 8($s7)
/* 00414674 8DAD0000 */  lw    $t5, ($t5)
/* 00414678 00000000 */  nop   
/* 0041467C 8DAE0024 */  lw    $t6, 0x24($t5)
/* 00414680 AEF00008 */  sw    $s0, 8($s7)
/* 00414684 AEEE0000 */  sw    $t6, ($s7)
.L00414688:
/* 00414688 8FB00190 */  lw    $s0, 0x190($sp)
/* 0041468C 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00414690 00108023 */  negu  $s0, $s0
/* 00414694 32180003 */  andi  $t8, $s0, 3
/* 00414698 8FA4016C */  lw    $a0, 0x16c($sp)
/* 0041469C 0320F809 */  jalr  $t9
/* 004146A0 03008025 */   move  $s0, $t8
/* 004146A4 8FBC0034 */  lw    $gp, 0x34($sp)
/* 004146A8 14400008 */  bnez  $v0, .L004146CC
/* 004146AC 0040B825 */   move  $s7, $v0
/* 004146B0 8F84806C */  lw    $a0, %got(RO_10012D60)($gp)
/* 004146B4 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 004146B8 24842D60 */  addiu $a0, %lo(RO_10012D60) # addiu $a0, $a0, 0x2d60
/* 004146BC 0320F809 */  jalr  $t9
/* 004146C0 00000000 */   nop   
/* 004146C4 8FBC0034 */  lw    $gp, 0x34($sp)
/* 004146C8 00000000 */  nop   
.L004146CC:
/* 004146CC 8FA20190 */  lw    $v0, 0x190($sp)
/* 004146D0 240F0001 */  li    $t7, 1
/* 004146D4 AEEF0010 */  sw    $t7, 0x10($s7)
/* 004146D8 AEF00008 */  sw    $s0, 8($s7)
/* 004146DC AEF30000 */  sw    $s3, ($s7)
/* 004146E0 00501021 */  addu  $v0, $v0, $s0
/* 004146E4 AFA201D8 */  sw    $v0, 0x1d8($sp)
/* 004146E8 AFA20190 */  sw    $v0, 0x190($sp)
/* 004146EC 8FAC024C */  lw    $t4, 0x24c($sp)
.L004146F0:
/* 004146F0 00000000 */  nop   
/* 004146F4 31990200 */  andi  $t9, $t4, 0x200
/* 004146F8 1320002D */  beqz  $t9, .L004147B0
/* 004146FC 8FAE024C */   lw    $t6, 0x24c($sp)
/* 00414700 8F828B24 */  lw     $v0, %got(st_pchdr)($gp)
/* 00414704 8FAB018C */  lw    $t3, 0x18c($sp)
/* 00414708 8C420000 */  lw    $v0, ($v0)
/* 0041470C 8FAD0190 */  lw    $t5, 0x190($sp)
/* 00414710 8C4A000C */  lw    $t2, 0xc($v0)
/* 00414714 016D7021 */  addu  $t6, $t3, $t5
/* 00414718 AFAE018C */  sw    $t6, 0x18c($sp)
/* 0041471C AFA00190 */  sw    $zero, 0x190($sp)
/* 00414720 11400022 */  beqz  $t2, .L004147AC
/* 00414724 AFAA01E0 */   sw    $t2, 0x1e0($sp)
/* 00414728 8C50000C */  lw    $s0, 0xc($v0)
/* 0041472C AFAE01E4 */  sw    $t6, 0x1e4($sp)
/* 00414730 001078C0 */  sll   $t7, $s0, 3
/* 00414734 01F07821 */  addu  $t7, $t7, $s0
/* 00414738 000F80C0 */  sll   $s0, $t7, 3
/* 0041473C AFB00190 */  sw    $s0, 0x190($sp)
/* 00414740 8C59000C */  lw    $t9, 0xc($v0)
/* 00414744 00000000 */  nop   
/* 00414748 13200019 */  beqz  $t9, .L004147B0
/* 0041474C 8FAE024C */   lw    $t6, 0x24c($sp)
/* 00414750 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00414754 8FA4016C */  lw    $a0, 0x16c($sp)
/* 00414758 0320F809 */  jalr  $t9
/* 0041475C 00000000 */   nop   
/* 00414760 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00414764 14400008 */  bnez  $v0, .L00414788
/* 00414768 0040B825 */   move  $s7, $v0
/* 0041476C 8F84806C */  lw    $a0, %got(RO_10012D9C)($gp)
/* 00414770 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00414774 24842D9C */  addiu $a0, %lo(RO_10012D9C) # addiu $a0, $a0, 0x2d9c
/* 00414778 0320F809 */  jalr  $t9
/* 0041477C 00000000 */   nop   
/* 00414780 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00414784 00000000 */  nop   
.L00414788:
/* 00414788 8F8B8B24 */  lw     $t3, %got(st_pchdr)($gp)
/* 0041478C 240A0001 */  li    $t2, 1
/* 00414790 AEEA0010 */  sw    $t2, 0x10($s7)
/* 00414794 AEE00008 */  sw    $zero, 8($s7)
/* 00414798 8D6B0000 */  lw    $t3, ($t3)
/* 0041479C 00000000 */  nop   
/* 004147A0 8D6D0008 */  lw    $t5, 8($t3)
/* 004147A4 AEF00008 */  sw    $s0, 8($s7)
/* 004147A8 AEED0000 */  sw    $t5, ($s7)
.L004147AC:
/* 004147AC 8FAE024C */  lw    $t6, 0x24c($sp)
.L004147B0:
/* 004147B0 8FAF018C */  lw    $t7, 0x18c($sp)
/* 004147B4 31D80040 */  andi  $t8, $t6, 0x40
/* 004147B8 13000046 */  beqz  $t8, .L004148D4
/* 004147BC 8FAC024C */   lw    $t4, 0x24c($sp)
/* 004147C0 8FAC0190 */  lw    $t4, 0x190($sp)
/* 004147C4 8FAA0184 */  lw    $t2, 0x184($sp)
/* 004147C8 01ECC821 */  addu  $t9, $t7, $t4
/* 004147CC AFB9018C */  sw    $t9, 0x18c($sp)
/* 004147D0 1940003A */  blez  $t2, .L004148BC
/* 004147D4 AFA00190 */   sw    $zero, 0x190($sp)
/* 004147D8 8F91806C */  lw    $s1, %got(RO_10012DD8)($gp)
/* 004147DC AFA00188 */  sw    $zero, 0x188($sp)
/* 004147E0 26312DD8 */  addiu $s1, %lo(RO_10012DD8) # addiu $s1, $s1, 0x2dd8
.L004147E4:
/* 004147E4 8F9986EC */  lw    $t9, %call16(st_pcfd_ifd)($gp)
/* 004147E8 8FA40188 */  lw    $a0, 0x188($sp)
/* 004147EC 0320F809 */  jalr  $t9
/* 004147F0 00000000 */   nop   
/* 004147F4 AFA20244 */  sw    $v0, 0x244($sp)
/* 004147F8 8C4B0000 */  lw    $t3, ($v0)
/* 004147FC 8FAE0230 */  lw    $t6, 0x230($sp)
/* 00414800 8FB80234 */  lw    $t8, 0x234($sp)
/* 00414804 AFAB01F8 */  sw    $t3, 0x1f8($sp)
/* 00414808 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041480C 01D87821 */  addu  $t7, $t6, $t8
/* 00414810 8D630038 */  lw    $v1, 0x38($t3)
/* 00414814 AD6F0034 */  sw    $t7, 0x34($t3)
/* 00414818 8FAC0190 */  lw    $t4, 0x190($sp)
/* 0041481C 00038080 */  sll   $s0, $v1, 2
/* 00414820 0190C821 */  addu  $t9, $t4, $s0
/* 00414824 10600016 */  beqz  $v1, .L00414880
/* 00414828 AFB90190 */   sw    $t9, 0x190($sp)
/* 0041482C 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00414830 8FA4016C */  lw    $a0, 0x16c($sp)
/* 00414834 0320F809 */  jalr  $t9
/* 00414838 00000000 */   nop   
/* 0041483C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00414840 14400007 */  bnez  $v0, .L00414860
/* 00414844 0040B825 */   move  $s7, $v0
/* 00414848 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 0041484C 02202025 */  move  $a0, $s1
/* 00414850 0320F809 */  jalr  $t9
/* 00414854 00000000 */   nop   
/* 00414858 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0041485C 00000000 */  nop   
.L00414860:
/* 00414860 240A0001 */  li    $t2, 1
/* 00414864 AEEA0010 */  sw    $t2, 0x10($s7)
/* 00414868 AEE00008 */  sw    $zero, 8($s7)
/* 0041486C 8FAB0244 */  lw    $t3, 0x244($sp)
/* 00414870 00000000 */  nop   
/* 00414874 8D6E002C */  lw    $t6, 0x2c($t3)
/* 00414878 AEF00008 */  sw    $s0, 8($s7)
/* 0041487C AEEE0000 */  sw    $t6, ($s7)
.L00414880:
/* 00414880 8FB80230 */  lw    $t8, 0x230($sp)
/* 00414884 8FAF0234 */  lw    $t7, 0x234($sp)
/* 00414888 8FAC01F8 */  lw    $t4, 0x1f8($sp)
/* 0041488C 030F6821 */  addu  $t5, $t8, $t7
/* 00414890 AFAD0230 */  sw    $t5, 0x230($sp)
/* 00414894 8D850038 */  lw    $a1, 0x38($t4)
/* 00414898 8FB901E8 */  lw    $t9, 0x1e8($sp)
/* 0041489C 8FAB0188 */  lw    $t3, 0x188($sp)
/* 004148A0 8FB80184 */  lw    $t8, 0x184($sp)
/* 004148A4 03255021 */  addu  $t2, $t9, $a1
/* 004148A8 256E0001 */  addiu $t6, $t3, 1
/* 004148AC AFAE0188 */  sw    $t6, 0x188($sp)
/* 004148B0 AFAA01E8 */  sw    $t2, 0x1e8($sp)
/* 004148B4 15D8FFCB */  bne   $t6, $t8, .L004147E4
/* 004148B8 AFA50234 */   sw    $a1, 0x234($sp)
.L004148BC:
/* 004148BC 8FAF01E8 */  lw    $t7, 0x1e8($sp)
/* 004148C0 8FAD018C */  lw    $t5, 0x18c($sp)
/* 004148C4 11E00003 */  beqz  $t7, .L004148D4
/* 004148C8 8FAC024C */   lw    $t4, 0x24c($sp)
/* 004148CC AFAD01EC */  sw    $t5, 0x1ec($sp)
/* 004148D0 8FAC024C */  lw    $t4, 0x24c($sp)
.L004148D4:
/* 004148D4 00000000 */  nop   
/* 004148D8 31990001 */  andi  $t9, $t4, 1
/* 004148DC 1320002B */  beqz  $t9, .L0041498C
/* 004148E0 8FB8024C */   lw    $t8, 0x24c($sp)
/* 004148E4 8F828B24 */  lw     $v0, %got(st_pchdr)($gp)
/* 004148E8 8FAB018C */  lw    $t3, 0x18c($sp)
/* 004148EC 8C420000 */  lw    $v0, ($v0)
/* 004148F0 8FAE0190 */  lw    $t6, 0x190($sp)
/* 004148F4 8C4A001C */  lw    $t2, 0x1c($v0)
/* 004148F8 016EC021 */  addu  $t8, $t3, $t6
/* 004148FC AFB8018C */  sw    $t8, 0x18c($sp)
/* 00414900 AFA00190 */  sw    $zero, 0x190($sp)
/* 00414904 11400020 */  beqz  $t2, .L00414988
/* 00414908 AFAA01F0 */   sw    $t2, 0x1f0($sp)
/* 0041490C 8C50001C */  lw    $s0, 0x1c($v0)
/* 00414910 AFB801F4 */  sw    $t8, 0x1f4($sp)
/* 00414914 00106900 */  sll   $t5, $s0, 4
/* 00414918 AFAD0190 */  sw    $t5, 0x190($sp)
/* 0041491C 8C59001C */  lw    $t9, 0x1c($v0)
/* 00414920 01A08025 */  move  $s0, $t5
/* 00414924 13200019 */  beqz  $t9, .L0041498C
/* 00414928 8FB8024C */   lw    $t8, 0x24c($sp)
/* 0041492C 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00414930 8FA4016C */  lw    $a0, 0x16c($sp)
/* 00414934 0320F809 */  jalr  $t9
/* 00414938 00000000 */   nop   
/* 0041493C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00414940 14400008 */  bnez  $v0, .L00414964
/* 00414944 0040B825 */   move  $s7, $v0
/* 00414948 8F84806C */  lw    $a0, %got(RO_10012E14)($gp)
/* 0041494C 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00414950 24842E14 */  addiu $a0, %lo(RO_10012E14) # addiu $a0, $a0, 0x2e14
/* 00414954 0320F809 */  jalr  $t9
/* 00414958 00000000 */   nop   
/* 0041495C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00414960 00000000 */  nop   
.L00414964:
/* 00414964 8F8B8B24 */  lw     $t3, %got(st_pchdr)($gp)
/* 00414968 240A0001 */  li    $t2, 1
/* 0041496C AEEA0010 */  sw    $t2, 0x10($s7)
/* 00414970 AEE00008 */  sw    $zero, 8($s7)
/* 00414974 8D6B0000 */  lw    $t3, ($t3)
/* 00414978 00000000 */  nop   
/* 0041497C 8D6E0018 */  lw    $t6, 0x18($t3)
/* 00414980 AEF00008 */  sw    $s0, 8($s7)
/* 00414984 AEEE0000 */  sw    $t6, ($s7)
.L00414988:
/* 00414988 8FB8024C */  lw    $t8, 0x24c($sp)
.L0041498C:
/* 0041498C 00000000 */  nop   
/* 00414990 330F0010 */  andi  $t7, $t8, 0x10
/* 00414994 11E0003D */  beqz  $t7, .L00414A8C
/* 00414998 24190313 */   li    $t9, 787
/* 0041499C 8F8D8B24 */  lw     $t5, %got(st_pchdr)($gp)
/* 004149A0 8F998B24 */  lw     $t9, %got(st_pchdr)($gp)
/* 004149A4 8DAD0000 */  lw    $t5, ($t5)
/* 004149A8 8F8B8B24 */  lw     $t3, %got(st_pchdr)($gp)
/* 004149AC 8DAC0038 */  lw    $t4, 0x38($t5)
/* 004149B0 8F988B24 */  lw     $t8, %got(st_pchdr)($gp)
/* 004149B4 AD800000 */  sw    $zero, ($t4)
/* 004149B8 8F390000 */  lw    $t9, ($t9)
/* 004149BC 8F828B24 */  lw     $v0, %got(st_pchdr)($gp)
/* 004149C0 8F2A0038 */  lw    $t2, 0x38($t9)
/* 004149C4 00000000 */  nop   
/* 004149C8 AD400004 */  sw    $zero, 4($t2)
/* 004149CC 8D6B0000 */  lw    $t3, ($t3)
/* 004149D0 00000000 */  nop   
/* 004149D4 8D6E0038 */  lw    $t6, 0x38($t3)
/* 004149D8 00000000 */  nop   
/* 004149DC ADC00008 */  sw    $zero, 8($t6)
/* 004149E0 8F180000 */  lw    $t8, ($t8)
/* 004149E4 00000000 */  nop   
/* 004149E8 8F0F0038 */  lw    $t7, 0x38($t8)
/* 004149EC 00000000 */  nop   
/* 004149F0 ADE0000C */  sw    $zero, 0xc($t7)
/* 004149F4 8C420000 */  lw    $v0, ($v0)
/* 004149F8 8FAC018C */  lw    $t4, 0x18c($sp)
/* 004149FC 8FB90190 */  lw    $t9, 0x190($sp)
/* 00414A00 8C4D003C */  lw    $t5, 0x3c($v0)
/* 00414A04 01995021 */  addu  $t2, $t4, $t9
/* 00414A08 AFAA018C */  sw    $t2, 0x18c($sp)
/* 00414A0C 11A0001E */  beqz  $t5, .L00414A88
/* 00414A10 AFAD01A8 */   sw    $t5, 0x1a8($sp)
/* 00414A14 8C50003C */  lw    $s0, 0x3c($v0)
/* 00414A18 AFAA01AC */  sw    $t2, 0x1ac($sp)
/* 00414A1C 8C58003C */  lw    $t8, 0x3c($v0)
/* 00414A20 001070C0 */  sll   $t6, $s0, 3
/* 00414A24 13000018 */  beqz  $t8, .L00414A88
/* 00414A28 01C08025 */   move  $s0, $t6
/* 00414A2C 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00414A30 8FA4016C */  lw    $a0, 0x16c($sp)
/* 00414A34 0320F809 */  jalr  $t9
/* 00414A38 00000000 */   nop   
/* 00414A3C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00414A40 14400008 */  bnez  $v0, .L00414A64
/* 00414A44 0040B825 */   move  $s7, $v0
/* 00414A48 8F84806C */  lw    $a0, %got(RO_10012E50)($gp)
/* 00414A4C 8F998338 */  lw    $t9, %call16(st_error)($gp)
/* 00414A50 24842E50 */  addiu $a0, %lo(RO_10012E50) # addiu $a0, $a0, 0x2e50
/* 00414A54 0320F809 */  jalr  $t9
/* 00414A58 00000000 */   nop   
/* 00414A5C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00414A60 00000000 */  nop   
.L00414A64:
/* 00414A64 8F8D8B24 */  lw     $t5, %got(st_pchdr)($gp)
/* 00414A68 240F0001 */  li    $t7, 1
/* 00414A6C AEEF0010 */  sw    $t7, 0x10($s7)
/* 00414A70 AEE00008 */  sw    $zero, 8($s7)
/* 00414A74 8DAD0000 */  lw    $t5, ($t5)
/* 00414A78 00000000 */  nop   
/* 00414A7C 8DAC0038 */  lw    $t4, 0x38($t5)
/* 00414A80 AEF00008 */  sw    $s0, 8($s7)
/* 00414A84 AEEC0000 */  sw    $t4, ($s7)
.L00414A88:
/* 00414A88 24190313 */  li    $t9, 787
.L00414A8C:
/* 00414A8C 8FAE0174 */  lw    $t6, 0x174($sp)
/* 00414A90 A7B9019A */  sh    $t9, 0x19a($sp)
/* 00414A94 240B7009 */  li    $t3, 28681
/* 00414A98 8F9980DC */  lw    $t9, %call16(memcpy)($gp)
/* 00414A9C A7AB0198 */  sh    $t3, 0x198($sp)
/* 00414AA0 8DC40000 */  lw    $a0, ($t6)
/* 00414AA4 27A50198 */  addiu $a1, $sp, 0x198
/* 00414AA8 0320F809 */  jalr  $t9
/* 00414AAC 24060060 */   li    $a2, 96
/* 00414AB0 8FBF003C */  lw    $ra, 0x3c($sp)
/* 00414AB4 8FBC0034 */  lw    $gp, 0x34($sp)
/* 00414AB8 8FB00014 */  lw    $s0, 0x14($sp)
/* 00414ABC 8FB10018 */  lw    $s1, 0x18($sp)
/* 00414AC0 8FB2001C */  lw    $s2, 0x1c($sp)
/* 00414AC4 8FB30020 */  lw    $s3, 0x20($sp)
/* 00414AC8 8FB40024 */  lw    $s4, 0x24($sp)
/* 00414ACC 8FB50028 */  lw    $s5, 0x28($sp)
/* 00414AD0 8FB6002C */  lw    $s6, 0x2c($sp)
/* 00414AD4 8FB70030 */  lw    $s7, 0x30($sp)
/* 00414AD8 8FBE0038 */  lw    $fp, 0x38($sp)
/* 00414ADC 03E00008 */  jr    $ra
/* 00414AE0 27BD0248 */   addiu $sp, $sp, 0x248

    .type elf_st_writest, @function
    .size elf_st_writest, .-elf_st_writest
    .end elf_st_writest

glabel elf_mdebug
    .ent elf_mdebug
    # 0043ECB8 wrelfobj
/* 00414AE4 3C1C0FC1 */  .cpload $t9
/* 00414AE8 279C577C */  
/* 00414AEC 0399E021 */  
/* 00414AF0 8F8E8B28 */  lw     $t6, %got(sixtyfour_bit)($gp)
/* 00414AF4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00414AF8 91CE0000 */  lbu   $t6, ($t6)
/* 00414AFC AFBF001C */  sw    $ra, 0x1c($sp)
/* 00414B00 15C00007 */  bnez  $t6, .L00414B20
/* 00414B04 AFBC0018 */   sw    $gp, 0x18($sp)
/* 00414B08 8F8F8B34 */  lw     $t7, %got(new_mdebug)($gp)
/* 00414B0C 00000000 */  nop   
/* 00414B10 91EF0000 */  lbu   $t7, ($t7)
/* 00414B14 00000000 */  nop   
/* 00414B18 11E00008 */  beqz  $t7, .L00414B3C
/* 00414B1C 00000000 */   nop   
.L00414B20:
/* 00414B20 8F998290 */  lw    $t9, %call16(write_mdebug_scns)($gp)
/* 00414B24 00000000 */  nop   
/* 00414B28 0320F809 */  jalr  $t9
/* 00414B2C 00000000 */   nop   
/* 00414B30 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00414B34 10000009 */  b     .L00414B5C
/* 00414B38 8FBF001C */   lw    $ra, 0x1c($sp)
.L00414B3C:
/* 00414B3C 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 00414B40 8F998294 */  lw    $t9, %call16(elf_st_writest)($gp)
/* 00414B44 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 00414B48 0320F809 */  jalr  $t9
/* 00414B4C 2405FFFF */   li    $a1, -1
/* 00414B50 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00414B54 00000000 */  nop   
/* 00414B58 8FBF001C */  lw    $ra, 0x1c($sp)
.L00414B5C:
/* 00414B5C 27BD0020 */  addiu $sp, $sp, 0x20
/* 00414B60 03E00008 */  jr    $ra
/* 00414B64 00000000 */   nop   

    .type elf_mdebug, @function
    .size elf_mdebug, .-elf_mdebug
    .end elf_mdebug

glabel create_content_section
    .ent create_content_section
    # 0043ECB8 wrelfobj
/* 00414B68 3C1C0FC1 */  .cpload $t9
/* 00414B6C 279C56F8 */  
/* 00414B70 0399E021 */  
/* 00414B74 27BDFF18 */  addiu $sp, $sp, -0xe8
/* 00414B78 8F998220 */  lw    $t9, %call16(finish_address_pairs)($gp)
/* 00414B7C AFBF003C */  sw    $ra, 0x3c($sp)
/* 00414B80 8F8488E4 */  lw     $a0, %got(notransforms)($gp)
/* 00414B84 AFBC0038 */  sw    $gp, 0x38($sp)
/* 00414B88 AFB50034 */  sw    $s5, 0x34($sp)
/* 00414B8C AFB40030 */  sw    $s4, 0x30($sp)
/* 00414B90 AFB3002C */  sw    $s3, 0x2c($sp)
/* 00414B94 AFB20028 */  sw    $s2, 0x28($sp)
/* 00414B98 AFB10024 */  sw    $s1, 0x24($sp)
/* 00414B9C 0320F809 */  jalr  $t9
/* 00414BA0 AFB00020 */   sw    $s0, 0x20($sp)
/* 00414BA4 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00414BA8 00000000 */  nop   
/* 00414BAC 8F8488E4 */  lw     $a0, %got(notransforms)($gp)
/* 00414BB0 8F998224 */  lw    $t9, %call16(number_address_pairs)($gp)
/* 00414BB4 8C840000 */  lw    $a0, ($a0)
/* 00414BB8 0320F809 */  jalr  $t9
/* 00414BBC 00000000 */   nop   
/* 00414BC0 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00414BC4 1040007F */  beqz  $v0, .L00414DC4
/* 00414BC8 24500001 */   addiu $s0, $v0, 1
/* 00414BCC 8F85806C */  lw    $a1, %got(RO_10012E8C)($gp)
/* 00414BD0 8F86806C */  lw    $a2, %got(RO_10012E94)($gp)
/* 00414BD4 8F87806C */  lw    $a3, %got(RO_10012EA4)($gp)
/* 00414BD8 8F9980CC */  lw    $t9, %call16(sprintf)($gp)
/* 00414BDC 27B1004C */  addiu $s1, $sp, 0x4c
/* 00414BE0 02202025 */  move  $a0, $s1
/* 00414BE4 24A52E8C */  addiu $a1, %lo(RO_10012E8C) # addiu $a1, $a1, 0x2e8c
/* 00414BE8 24C62E94 */  addiu $a2, %lo(RO_10012E94) # addiu $a2, $a2, 0x2e94
/* 00414BEC 0320F809 */  jalr  $t9
/* 00414BF0 24E72EA4 */   addiu $a3, %lo(RO_10012EA4) # addiu $a3, $a3, 0x2ea4
/* 00414BF4 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00414BF8 3C077000 */  lui   $a3, 0x7000
/* 00414BFC 8F998018 */  lw    $t9, %got(func_00411F8C)($gp)
/* 00414C00 240E0001 */  li    $t6, 1
/* 00414C04 27391F8C */  addiu $t9, %lo(func_00411F8C) # addiu $t9, $t9, 0x1f8c
/* 00414C08 AFAE0010 */  sw    $t6, 0x10($sp)
/* 00414C0C 34E7000C */  ori   $a3, $a3, 0xc
/* 00414C10 27A400E4 */  addiu $a0, $sp, 0xe4
/* 00414C14 27A500DC */  addiu $a1, $sp, 0xdc
/* 00414C18 0320F809 */  jalr  $t9
/* 00414C1C 02203025 */   move  $a2, $s1
/* 00414C20 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00414C24 2401FFFF */  li    $at, -1
/* 00414C28 10410067 */  beq   $v0, $at, .L00414DC8
/* 00414C2C 8FBF003C */   lw    $ra, 0x3c($sp)
/* 00414C30 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00414C34 8FA400E4 */  lw    $a0, 0xe4($sp)
/* 00414C38 0320F809 */  jalr  $t9
/* 00414C3C 00000000 */   nop   
/* 00414C40 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00414C44 1040005F */  beqz  $v0, .L00414DC4
/* 00414C48 AFA200D8 */   sw    $v0, 0xd8($sp)
/* 00414C4C 8F858080 */  lw    $a1, %got(D_10000020)($gp)
/* 00414C50 8F84806C */  lw    $a0, %got(RO_10012EAC)($gp)
/* 00414C54 8F998278 */  lw    $t9, %call16(look_for_scndx)($gp)
/* 00414C58 94A50020 */  lhu   $a1, %lo(D_10000020)($a1)
/* 00414C5C 0320F809 */  jalr  $t9
/* 00414C60 24842EAC */   addiu $a0, %lo(RO_10012EAC) # addiu $a0, $a0, 0x2eac
/* 00414C64 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00414C68 00402825 */  move  $a1, $v0
/* 00414C6C 8F848088 */  lw    $a0, %got(B_100230B8)($gp)
/* 00414C70 8F99875C */  lw    $t9, %call16(elf_getscn)($gp)
/* 00414C74 8C8430B8 */  lw    $a0, %lo(B_100230B8)($a0)
/* 00414C78 0320F809 */  jalr  $t9
/* 00414C7C 00000000 */   nop   
/* 00414C80 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00414C84 00402025 */  move  $a0, $v0
/* 00414C88 8F998774 */  lw    $t9, %call16(elf_ndxscn)($gp)
/* 00414C8C 00000000 */  nop   
/* 00414C90 0320F809 */  jalr  $t9
/* 00414C94 00000000 */   nop   
/* 00414C98 8FAF00DC */  lw    $t7, 0xdc($sp)
/* 00414C9C 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00414CA0 ADE20018 */  sw    $v0, 0x18($t7)
/* 00414CA4 8FB900DC */  lw    $t9, 0xdc($sp)
/* 00414CA8 3C180800 */  lui   $t8, 0x800
/* 00414CAC 37180002 */  ori   $t8, $t8, 2
/* 00414CB0 AF380008 */  sw    $t8, 8($t9)
/* 00414CB4 8F998190 */  lw    $t9, %call16(malloc)($gp)
/* 00414CB8 001020C0 */  sll   $a0, $s0, 3
/* 00414CBC 0320F809 */  jalr  $t9
/* 00414CC0 00000000 */   nop   
/* 00414CC4 AFA200D0 */  sw    $v0, 0xd0($sp)
/* 00414CC8 8C480000 */  lw    $t0, ($v0)
/* 00414CCC 3C1380FF */  lui   $s3, 0x80ff
/* 00414CD0 3673FFFF */  ori   $s3, $s3, 0xffff
/* 00414CD4 3C143A00 */  lui   $s4, 0x3a00
/* 00414CD8 01134824 */  and   $t1, $t0, $s3
/* 00414CDC 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00414CE0 01345025 */  or    $t2, $t1, $s4
/* 00414CE4 3C15FF00 */  lui   $s5, 0xff00
/* 00414CE8 AC4A0000 */  sw    $t2, ($v0)
/* 00414CEC 01556024 */  and   $t4, $t2, $s5
/* 00414CF0 8F8488E4 */  lw     $a0, %got(notransforms)($gp)
/* 00414CF4 AC4C0000 */  sw    $t4, ($v0)
/* 00414CF8 8F998228 */  lw    $t9, %call16(first_address_pair)($gp)
/* 00414CFC 8C840000 */  lw    $a0, ($a0)
/* 00414D00 24110009 */  li    $s1, 9
/* 00414D04 0320F809 */  jalr  $t9
/* 00414D08 24120001 */   li    $s2, 1
/* 00414D0C 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00414D10 10400021 */  beqz  $v0, .L00414D98
/* 00414D14 001270C0 */   sll   $t6, $s2, 3
/* 00414D18 8FAD00D0 */  lw    $t5, 0xd0($sp)
/* 00414D1C 3C1200FF */  lui   $s2, 0xff
/* 00414D20 3652FFFF */  ori   $s2, $s2, 0xffff
/* 00414D24 01AE8021 */  addu  $s0, $t5, $t6
.L00414D28:
/* 00414D28 8E0F0000 */  lw    $t7, ($s0)
/* 00414D2C 00000000 */  nop   
/* 00414D30 01F3C024 */  and   $t8, $t7, $s3
/* 00414D34 0314C825 */  or    $t9, $t8, $s4
/* 00414D38 AE190000 */  sw    $t9, ($s0)
/* 00414D3C 8F998230 */  lw    $t9, %call16(current_address_pair_start)($gp)
/* 00414D40 00000000 */  nop   
/* 00414D44 0320F809 */  jalr  $t9
/* 00414D48 00000000 */   nop   
/* 00414D4C 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00414D50 AE020004 */  sw    $v0, 4($s0)
/* 00414D54 8F998234 */  lw    $t9, %call16(current_address_pair_length)($gp)
/* 00414D58 00000000 */  nop   
/* 00414D5C 0320F809 */  jalr  $t9
/* 00414D60 00000000 */   nop   
/* 00414D64 8E090000 */  lw    $t1, ($s0)
/* 00414D68 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00414D6C 00524024 */  and   $t0, $v0, $s2
/* 00414D70 01355024 */  and   $t2, $t1, $s5
/* 00414D74 010A5825 */  or    $t3, $t0, $t2
/* 00414D78 AE0B0000 */  sw    $t3, ($s0)
/* 00414D7C 8F99822C */  lw    $t9, %call16(next_address_pair)($gp)
/* 00414D80 26100008 */  addiu $s0, $s0, 8
/* 00414D84 0320F809 */  jalr  $t9
/* 00414D88 26310008 */   addiu $s1, $s1, 8
/* 00414D8C 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00414D90 1440FFE5 */  bnez  $v0, .L00414D28
/* 00414D94 00000000 */   nop   
.L00414D98:
/* 00414D98 8F998018 */  lw    $t9, %got(func_0040DE5C)($gp)
/* 00414D9C 8FA400D8 */  lw    $a0, 0xd8($sp)
/* 00414DA0 8FA500D0 */  lw    $a1, 0xd0($sp)
/* 00414DA4 240C0004 */  li    $t4, 4
/* 00414DA8 2739DE5C */  addiu $t9, %lo(func_0040DE5C) # addiu $t9, $t9, -0x21a4
/* 00414DAC AFAC0010 */  sw    $t4, 0x10($sp)
/* 00414DB0 00003025 */  move  $a2, $zero
/* 00414DB4 0320F809 */  jalr  $t9
/* 00414DB8 02203825 */   move  $a3, $s1
/* 00414DBC 8FBC0038 */  lw    $gp, 0x38($sp)
/* 00414DC0 00000000 */  nop   
.L00414DC4:
/* 00414DC4 8FBF003C */  lw    $ra, 0x3c($sp)
.L00414DC8:
/* 00414DC8 8FB00020 */  lw    $s0, 0x20($sp)
/* 00414DCC 8FB10024 */  lw    $s1, 0x24($sp)
/* 00414DD0 8FB20028 */  lw    $s2, 0x28($sp)
/* 00414DD4 8FB3002C */  lw    $s3, 0x2c($sp)
/* 00414DD8 8FB40030 */  lw    $s4, 0x30($sp)
/* 00414DDC 8FB50034 */  lw    $s5, 0x34($sp)
/* 00414DE0 03E00008 */  jr    $ra
/* 00414DE4 27BD00E8 */   addiu $sp, $sp, 0xe8

    .type create_content_section, @function
    .size create_content_section, .-create_content_section
    .end create_content_section

glabel create_comment_section
    .ent create_comment_section
/* 00414DE8 3C1C0FC1 */  .cpload $t9
/* 00414DEC 279C5478 */  
/* 00414DF0 0399E021 */  
/* 00414DF4 8F85806C */  lw    $a1, %got(RO_10012EB4)($gp)
/* 00414DF8 8F86806C */  lw    $a2, %got(RO_10012EB8)($gp)
/* 00414DFC 8F9980CC */  lw    $t9, %call16(sprintf)($gp)
/* 00414E00 27BDFF40 */  addiu $sp, $sp, -0xc0
/* 00414E04 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00414E08 AFBC0020 */  sw    $gp, 0x20($sp)
/* 00414E0C 27A4002C */  addiu $a0, $sp, 0x2c
/* 00414E10 24A52EB4 */  addiu $a1, %lo(RO_10012EB4) # addiu $a1, $a1, 0x2eb4
/* 00414E14 0320F809 */  jalr  $t9
/* 00414E18 24C62EB8 */   addiu $a2, %lo(RO_10012EB8) # addiu $a2, $a2, 0x2eb8
/* 00414E1C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00414E20 240E0001 */  li    $t6, 1
/* 00414E24 8F998018 */  lw    $t9, %got(func_00411F8C)($gp)
/* 00414E28 AFAE0010 */  sw    $t6, 0x10($sp)
/* 00414E2C 27391F8C */  addiu $t9, %lo(func_00411F8C) # addiu $t9, $t9, 0x1f8c
/* 00414E30 27A400BC */  addiu $a0, $sp, 0xbc
/* 00414E34 27A500B8 */  addiu $a1, $sp, 0xb8
/* 00414E38 27A6002C */  addiu $a2, $sp, 0x2c
/* 00414E3C 0320F809 */  jalr  $t9
/* 00414E40 24070001 */   li    $a3, 1
/* 00414E44 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00414E48 2401FFFF */  li    $at, -1
/* 00414E4C 10410028 */  beq   $v0, $at, .L00414EF0
/* 00414E50 8FBF0024 */   lw    $ra, 0x24($sp)
/* 00414E54 8F998770 */  lw    $t9, %call16(elf_newdata)($gp)
/* 00414E58 8FA400BC */  lw    $a0, 0xbc($sp)
/* 00414E5C 0320F809 */  jalr  $t9
/* 00414E60 00000000 */   nop   
/* 00414E64 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00414E68 10400020 */  beqz  $v0, .L00414EEC
/* 00414E6C AFA200B4 */   sw    $v0, 0xb4($sp)
/* 00414E70 8FAF00B8 */  lw    $t7, 0xb8($sp)
/* 00414E74 24040008 */  li    $a0, 8
/* 00414E78 ADE00018 */  sw    $zero, 0x18($t7)
/* 00414E7C 8FB800B8 */  lw    $t8, 0xb8($sp)
/* 00414E80 00000000 */  nop   
/* 00414E84 AF000008 */  sw    $zero, 8($t8)
/* 00414E88 8F998190 */  lw    $t9, %call16(malloc)($gp)
/* 00414E8C 00000000 */  nop   
/* 00414E90 0320F809 */  jalr  $t9
/* 00414E94 00000000 */   nop   
/* 00414E98 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00414E9C AFA200AC */  sw    $v0, 0xac($sp)
/* 00414EA0 8F85806C */  lw    $a1, %got(RO_10012EC4)($gp)
/* 00414EA4 8F86806C */  lw    $a2, %got(RO_10012ECC)($gp)
/* 00414EA8 8F9980CC */  lw    $t9, %call16(sprintf)($gp)
/* 00414EAC 00402025 */  move  $a0, $v0
/* 00414EB0 24A52EC4 */  addiu $a1, %lo(RO_10012EC4) # addiu $a1, $a1, 0x2ec4
/* 00414EB4 0320F809 */  jalr  $t9
/* 00414EB8 24C62ECC */   addiu $a2, %lo(RO_10012ECC) # addiu $a2, $a2, 0x2ecc
/* 00414EBC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00414EC0 24190001 */  li    $t9, 1
/* 00414EC4 AFB90010 */  sw    $t9, 0x10($sp)
/* 00414EC8 8F998018 */  lw    $t9, %got(func_0040DE5C)($gp)
/* 00414ECC 8FA400B4 */  lw    $a0, 0xb4($sp)
/* 00414ED0 8FA500AC */  lw    $a1, 0xac($sp)
/* 00414ED4 2739DE5C */  addiu $t9, %lo(func_0040DE5C) # addiu $t9, $t9, -0x21a4
/* 00414ED8 00003025 */  move  $a2, $zero
/* 00414EDC 0320F809 */  jalr  $t9
/* 00414EE0 24070008 */   li    $a3, 8
/* 00414EE4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00414EE8 00000000 */  nop   
.L00414EEC:
/* 00414EEC 8FBF0024 */  lw    $ra, 0x24($sp)
.L00414EF0:
/* 00414EF0 27BD00C0 */  addiu $sp, $sp, 0xc0
/* 00414EF4 03E00008 */  jr    $ra
/* 00414EF8 00000000 */   nop   

/* 00414EFC 00000000 */  nop   
/* 00414F00 00000000 */  nop   
/* 00414F04 00000000 */  nop   
    .type create_comment_section, @function
    .size create_comment_section, .-create_comment_section
    .end create_comment_section
)"");
