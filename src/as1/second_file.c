__asm__(R""(
.macro glabel label
    .global \label
    .balign 4
    \label:
.endm




.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.text
    .type func_0040BB90, @function
func_0040BB90:
    # 0040C344 do_forward_branches
    # 0040C63C do_handle_branchop
/* 0040BB90 3C1C0FC2 */  .cpload $t9
/* 0040BB94 279CE6D0 */  
/* 0040BB98 0399E021 */  
/* 0040BB9C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0040BBA0 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0040BBA4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0040BBA8 AFA40020 */  sw    $a0, 0x20($sp)
/* 0040BBAC AFBC0018 */  sw    $gp, 0x18($sp)
/* 0040BBB0 AFA50024 */  sw    $a1, 0x24($sp)
/* 0040BBB4 AFA60028 */  sw    $a2, 0x28($sp)
/* 0040BBB8 0320F809 */  jalr  $t9
/* 0040BBBC 24040010 */   li    $a0, 16
/* 0040BBC0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040BBC4 00000000 */  nop   
/* 0040BBC8 8F8E8088 */  lw    $t6, %got(B_10023050)($gp)
/* 0040BBCC 00000000 */  nop   
/* 0040BBD0 8DCE3050 */  lw    $t6, %lo(B_10023050)($t6)
/* 0040BBD4 00000000 */  nop   
/* 0040BBD8 15C00004 */  bnez  $t6, .L0040BBEC
/* 0040BBDC 00000000 */   nop   
/* 0040BBE0 8F818088 */  lw    $at, %got(B_10023050)($gp)
/* 0040BBE4 10000006 */  b     .L0040BC00
/* 0040BBE8 AC223050 */   sw    $v0, %lo(B_10023050)($at)
.L0040BBEC:
/* 0040BBEC 8F8F8088 */  lw    $t7, %got(B_10023054)($gp)
/* 0040BBF0 00000000 */  nop   
/* 0040BBF4 8DEF3054 */  lw    $t7, %lo(B_10023054)($t7)
/* 0040BBF8 00000000 */  nop   
/* 0040BBFC ADE2000C */  sw    $v0, 0xc($t7)
.L0040BC00:
/* 0040BC00 8FB80020 */  lw    $t8, 0x20($sp)
/* 0040BC04 8F818088 */  lw    $at, %got(B_10023054)($gp)
/* 0040BC08 AC580000 */  sw    $t8, ($v0)
/* 0040BC0C 8FB90024 */  lw    $t9, 0x24($sp)
/* 0040BC10 00000000 */  nop   
/* 0040BC14 AC590004 */  sw    $t9, 4($v0)
/* 0040BC18 8FA80028 */  lw    $t0, 0x28($sp)
/* 0040BC1C AC40000C */  sw    $zero, 0xc($v0)
/* 0040BC20 AC480008 */  sw    $t0, 8($v0)
/* 0040BC24 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0040BC28 27BD0020 */  addiu $sp, $sp, 0x20
/* 0040BC2C 03E00008 */  jr    $ra
/* 0040BC30 AC223054 */   sw    $v0, %lo(B_10023054)($at)

glabel gen_br_patches
    .ent gen_br_patches
    # 00420E34 traverse_bb
/* 0040BC34 3C1C0FC2 */  .cpload $t9
/* 0040BC38 279CE62C */  
/* 0040BC3C 0399E021 */  
/* 0040BC40 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0040BC44 AFB30028 */  sw    $s3, 0x28($sp)
/* 0040BC48 8F938088 */  lw    $s3, %got(B_10023050)($gp)
/* 0040BC4C AFBF0044 */  sw    $ra, 0x44($sp)
/* 0040BC50 8E733050 */  lw    $s3, %lo(B_10023050)($s3)
/* 0040BC54 AFBE0040 */  sw    $fp, 0x40($sp)
/* 0040BC58 AFBC003C */  sw    $gp, 0x3c($sp)
/* 0040BC5C AFB70038 */  sw    $s7, 0x38($sp)
/* 0040BC60 AFB60034 */  sw    $s6, 0x34($sp)
/* 0040BC64 AFB50030 */  sw    $s5, 0x30($sp)
/* 0040BC68 AFB4002C */  sw    $s4, 0x2c($sp)
/* 0040BC6C AFB20024 */  sw    $s2, 0x24($sp)
/* 0040BC70 AFB10020 */  sw    $s1, 0x20($sp)
/* 0040BC74 12600130 */  beqz  $s3, .L0040C138
/* 0040BC78 AFB0001C */   sw    $s0, 0x1c($sp)
/* 0040BC7C 8F9E8AF4 */  lw     $fp, %got(rld_list)($gp)
/* 0040BC80 8F958AEC */  lw     $s5, %got(seg_ic)($gp)
/* 0040BC84 8F948AE4 */  lw     $s4, %got(currtextindex)($gp)
/* 0040BC88 8F918AF0 */  lw     $s1, %got(nextrld)($gp)
/* 0040BC8C 8F908AF4 */  lw     $s0, %got(rld_list)($gp)
/* 0040BC90 3C1700FF */  lui   $s7, 0xff
/* 0040BC94 3C16FF00 */  lui   $s6, 0xff00
/* 0040BC98 24120018 */  li    $s2, 24
/* 0040BC9C 27DE0004 */  addiu $fp, $fp, 4
.L0040BCA0:
/* 0040BCA0 8E820000 */  lw    $v0, ($s4)
/* 0040BCA4 8F8E8AE0 */  lw     $t6, %got(memory)($gp)
/* 0040BCA8 00027880 */  sll   $t7, $v0, 2
/* 0040BCAC 01E27823 */  subu  $t7, $t7, $v0
/* 0040BCB0 000F7880 */  sll   $t7, $t7, 2
/* 0040BCB4 8DCE0000 */  lw    $t6, ($t6)
/* 0040BCB8 01E27823 */  subu  $t7, $t7, $v0
/* 0040BCBC 8E790004 */  lw    $t9, 4($s3)
/* 0040BCC0 000F7880 */  sll   $t7, $t7, 2
/* 0040BCC4 01CF1821 */  addu  $v1, $t6, $t7
/* 0040BCC8 8C780000 */  lw    $t8, ($v1)
/* 0040BCCC 00194083 */  sra   $t0, $t9, 2
/* 0040BCD0 8F848AE8 */  lw     $a0, %got(sexchange)($gp)
/* 0040BCD4 00084880 */  sll   $t1, $t0, 2
/* 0040BCD8 03095021 */  addu  $t2, $t8, $t1
/* 0040BCDC 8D4B0000 */  lw    $t3, ($t2)
/* 0040BCE0 90840000 */  lbu   $a0, ($a0)
/* 0040BCE4 3C0103FF */  lui   $at, 0x3ff
/* 0040BCE8 1080000D */  beqz  $a0, .L0040BD20
/* 0040BCEC AFAB004C */   sw    $t3, 0x4c($sp)
/* 0040BCF0 000B6E00 */  sll   $t5, $t3, 0x18
/* 0040BCF4 000B7A00 */  sll   $t7, $t3, 8
/* 0040BCF8 000BC202 */  srl   $t8, $t3, 8
/* 0040BCFC 01F7C824 */  and   $t9, $t7, $s7
/* 0040BD00 01B67024 */  and   $t6, $t5, $s6
/* 0040BD04 01D94025 */  or    $t0, $t6, $t9
/* 0040BD08 3309FF00 */  andi  $t1, $t8, 0xff00
/* 0040BD0C 000B5E02 */  srl   $t3, $t3, 0x18
/* 0040BD10 316D00FF */  andi  $t5, $t3, 0xff
/* 0040BD14 01095025 */  or    $t2, $t0, $t1
/* 0040BD18 014D7825 */  or    $t7, $t2, $t5
/* 0040BD1C AFAF004C */  sw    $t7, 0x4c($sp)
.L0040BD20:
/* 0040BD20 8EAE0000 */  lw    $t6, ($s5)
/* 0040BD24 0002C880 */  sll   $t9, $v0, 2
/* 0040BD28 01D9C021 */  addu  $t8, $t6, $t9
/* 0040BD2C 8F080000 */  lw    $t0, ($t8)
/* 0040BD30 8FAB004C */  lw    $t3, 0x4c($sp)
/* 0040BD34 3421FFFF */  ori   $at, $at, 0xffff
/* 0040BD38 00084883 */  sra   $t1, $t0, 2
/* 0040BD3C 01216024 */  and   $t4, $t1, $at
/* 0040BD40 018B5026 */  xor   $t2, $t4, $t3
/* 0040BD44 000A6980 */  sll   $t5, $t2, 6
/* 0040BD48 000D7982 */  srl   $t7, $t5, 6
/* 0040BD4C 01EB7026 */  xor   $t6, $t7, $t3
/* 0040BD50 1080000D */  beqz  $a0, .L0040BD88
/* 0040BD54 AFAE004C */   sw    $t6, 0x4c($sp)
/* 0040BD58 000ECE00 */  sll   $t9, $t6, 0x18
/* 0040BD5C 000E4200 */  sll   $t0, $t6, 8
/* 0040BD60 01174824 */  and   $t1, $t0, $s7
/* 0040BD64 0336C024 */  and   $t8, $t9, $s6
/* 0040BD68 000E5202 */  srl   $t2, $t6, 8
/* 0040BD6C 314DFF00 */  andi  $t5, $t2, 0xff00
/* 0040BD70 03096025 */  or    $t4, $t8, $t1
/* 0040BD74 000E5E02 */  srl   $t3, $t6, 0x18
/* 0040BD78 317900FF */  andi  $t9, $t3, 0xff
/* 0040BD7C 018D7825 */  or    $t7, $t4, $t5
/* 0040BD80 01F94025 */  or    $t0, $t7, $t9
/* 0040BD84 AFA8004C */  sw    $t0, 0x4c($sp)
.L0040BD88:
/* 0040BD88 8E6A0004 */  lw    $t2, 4($s3)
/* 0040BD8C 8C690000 */  lw    $t1, ($v1)
/* 0040BD90 000A6083 */  sra   $t4, $t2, 2
/* 0040BD94 8FB8004C */  lw    $t8, 0x4c($sp)
/* 0040BD98 000C6880 */  sll   $t5, $t4, 2
/* 0040BD9C 012D7021 */  addu  $t6, $t1, $t5
/* 0040BDA0 ADD80000 */  sw    $t8, ($t6)
/* 0040BDA4 8E6B0000 */  lw    $t3, ($s3)
/* 0040BDA8 24010001 */  li    $at, 1
/* 0040BDAC 000BCE82 */  srl   $t9, $t3, 0x1a
/* 0040BDB0 17210024 */  bne   $t9, $at, .L0040BE44
/* 0040BDB4 AFAB004C */   sw    $t3, 0x4c($sp)
/* 0040BDB8 97A2004C */  lhu   $v0, 0x4c($sp)
/* 0040BDBC 24010010 */  li    $at, 16
/* 0040BDC0 3048001F */  andi  $t0, $v0, 0x1f
/* 0040BDC4 11010009 */  beq   $t0, $at, .L0040BDEC
/* 0040BDC8 24010011 */   li    $at, 17
/* 0040BDCC 1101000C */  beq   $t0, $at, .L0040BE00
/* 0040BDD0 24010012 */   li    $at, 18
/* 0040BDD4 11010010 */  beq   $t0, $at, .L0040BE18
/* 0040BDD8 24010013 */   li    $at, 19
/* 0040BDDC 11010015 */  beq   $t0, $at, .L0040BE34
/* 0040BDE0 93B9004D */   lbu   $t9, 0x4d($sp)
/* 0040BDE4 10000018 */  b     .L0040BE48
/* 0040BDE8 240C0003 */   li    $t4, 3
.L0040BDEC:
/* 0040BDEC 93AA004D */  lbu   $t2, 0x4d($sp)
/* 0040BDF0 00000000 */  nop   
/* 0040BDF4 314CFFE0 */  andi  $t4, $t2, 0xffe0
/* 0040BDF8 10000012 */  b     .L0040BE44
/* 0040BDFC A3AC004D */   sb    $t4, 0x4d($sp)
.L0040BE00:
/* 0040BE00 93A9004D */  lbu   $t1, 0x4d($sp)
/* 0040BE04 00000000 */  nop   
/* 0040BE08 312DFFE0 */  andi  $t5, $t1, 0xffe0
/* 0040BE0C 35B80001 */  ori   $t8, $t5, 1
/* 0040BE10 1000000C */  b     .L0040BE44
/* 0040BE14 A3B8004D */   sb    $t8, 0x4d($sp)
.L0040BE18:
/* 0040BE18 93AE004D */  lbu   $t6, 0x4d($sp)
/* 0040BE1C 00000000 */  nop   
/* 0040BE20 31CBFFE0 */  andi  $t3, $t6, 0xffe0
/* 0040BE24 356F0002 */  ori   $t7, $t3, 2
/* 0040BE28 10000006 */  b     .L0040BE44
/* 0040BE2C A3AF004D */   sb    $t7, 0x4d($sp)
/* 0040BE30 93B9004D */  lbu   $t9, 0x4d($sp)
.L0040BE34:
/* 0040BE34 00000000 */  nop   
/* 0040BE38 3328FFE0 */  andi  $t0, $t9, 0xffe0
/* 0040BE3C 350A0003 */  ori   $t2, $t0, 3
/* 0040BE40 A3AA004D */  sb    $t2, 0x4d($sp)
.L0040BE44:
/* 0040BE44 240C0003 */  li    $t4, 3
.L0040BE48:
/* 0040BE48 8F9982CC */  lw    $t9, %call16(appendtextword)($gp)
/* 0040BE4C A7AC004E */  sh    $t4, 0x4e($sp)
/* 0040BE50 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0040BE54 00002825 */  move  $a1, $zero
/* 0040BE58 00003025 */  move  $a2, $zero
/* 0040BE5C 00003825 */  move  $a3, $zero
/* 0040BE60 0320F809 */  jalr  $t9
/* 0040BE64 AFA00010 */   sw    $zero, 0x10($sp)
/* 0040BE68 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040BE6C 00002025 */  move  $a0, $zero
/* 0040BE70 8F9982CC */  lw    $t9, %call16(appendtextword)($gp)
/* 0040BE74 00002825 */  move  $a1, $zero
/* 0040BE78 00003025 */  move  $a2, $zero
/* 0040BE7C 00003825 */  move  $a3, $zero
/* 0040BE80 0320F809 */  jalr  $t9
/* 0040BE84 AFA00010 */   sw    $zero, 0x10($sp)
/* 0040BE88 93A9004C */  lbu   $t1, 0x4c($sp)
/* 0040BE8C 3C0103FF */  lui   $at, 0x3ff
/* 0040BE90 312DFF03 */  andi  $t5, $t1, 0xff03
/* 0040BE94 35B80008 */  ori   $t8, $t5, 8
/* 0040BE98 A3B8004C */  sb    $t8, 0x4c($sp)
/* 0040BE9C 8E6E0004 */  lw    $t6, 4($s3)
/* 0040BEA0 8FA8004C */  lw    $t0, 0x4c($sp)
/* 0040BEA4 25CB0008 */  addiu $t3, $t6, 8
/* 0040BEA8 000B7883 */  sra   $t7, $t3, 2
/* 0040BEAC 3421FFFF */  ori   $at, $at, 0xffff
/* 0040BEB0 01E1C824 */  and   $t9, $t7, $at
/* 0040BEB4 03285026 */  xor   $t2, $t9, $t0
/* 0040BEB8 8E180004 */  lw    $t8, 4($s0)
/* 0040BEBC 8E230000 */  lw    $v1, ($s1)
/* 0040BEC0 000A6180 */  sll   $t4, $t2, 6
/* 0040BEC4 000C4982 */  srl   $t1, $t4, 6
/* 0040BEC8 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040BECC 01286826 */  xor   $t5, $t1, $t0
/* 0040BED0 0078082B */  sltu  $at, $v1, $t8
/* 0040BED4 AFAD004C */  sw    $t5, 0x4c($sp)
/* 0040BED8 1420000A */  bnez  $at, .L0040BF04
/* 0040BEDC 00602825 */   move  $a1, $v1
/* 0040BEE0 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 0040BEE4 8E070000 */  lw    $a3, ($s0)
/* 0040BEE8 03C02025 */  move  $a0, $fp
/* 0040BEEC 24060018 */  li    $a2, 24
/* 0040BEF0 0320F809 */  jalr  $t9
/* 0040BEF4 AFA00010 */   sw    $zero, 0x10($sp)
/* 0040BEF8 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040BEFC 8E230000 */  lw    $v1, ($s1)
/* 0040BF00 AE020000 */  sw    $v0, ($s0)
.L0040BF04:
/* 0040BF04 00720019 */  multu $v1, $s2
/* 0040BF08 8E0E0000 */  lw    $t6, ($s0)
/* 0040BF0C 00002825 */  move  $a1, $zero
/* 0040BF10 00003025 */  move  $a2, $zero
/* 0040BF14 00003825 */  move  $a3, $zero
/* 0040BF18 00005812 */  mflo  $t3
/* 0040BF1C 01CB7821 */  addu  $t7, $t6, $t3
/* 0040BF20 ADE00000 */  sw    $zero, ($t7)
/* 0040BF24 8E380000 */  lw    $t8, ($s1)
/* 0040BF28 8E8A0000 */  lw    $t2, ($s4)
/* 0040BF2C 03120019 */  multu $t8, $s2
/* 0040BF30 8EB90000 */  lw    $t9, ($s5)
/* 0040BF34 000A6080 */  sll   $t4, $t2, 2
/* 0040BF38 8E0D0000 */  lw    $t5, ($s0)
/* 0040BF3C 032C4821 */  addu  $t1, $t9, $t4
/* 0040BF40 8D280000 */  lw    $t0, ($t1)
/* 0040BF44 240F0006 */  li    $t7, 6
/* 0040BF48 00007012 */  mflo  $t6
/* 0040BF4C 01AE5821 */  addu  $t3, $t5, $t6
/* 0040BF50 AD680004 */  sw    $t0, 4($t3)
/* 0040BF54 8E390000 */  lw    $t9, ($s1)
/* 0040BF58 8E0A0000 */  lw    $t2, ($s0)
/* 0040BF5C 03320019 */  multu $t9, $s2
/* 0040BF60 00006012 */  mflo  $t4
/* 0040BF64 014C4821 */  addu  $t1, $t2, $t4
/* 0040BF68 A12F0010 */  sb    $t7, 0x10($t1)
/* 0040BF6C 8E2E0000 */  lw    $t6, ($s1)
/* 0040BF70 8E0D0000 */  lw    $t5, ($s0)
/* 0040BF74 01D20019 */  multu $t6, $s2
/* 0040BF78 8E980000 */  lw    $t8, ($s4)
/* 0040BF7C 00004012 */  mflo  $t0
/* 0040BF80 01A85821 */  addu  $t3, $t5, $t0
/* 0040BF84 AD78000C */  sw    $t8, 0xc($t3)
/* 0040BF88 8E2A0000 */  lw    $t2, ($s1)
/* 0040BF8C 8E190000 */  lw    $t9, ($s0)
/* 0040BF90 01520019 */  multu $t2, $s2
/* 0040BF94 00006012 */  mflo  $t4
/* 0040BF98 032C7821 */  addu  $t7, $t9, $t4
/* 0040BF9C ADE00008 */  sw    $zero, 8($t7)
/* 0040BFA0 8E290000 */  lw    $t1, ($s1)
/* 0040BFA4 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0040BFA8 252E0001 */  addiu $t6, $t1, 1
/* 0040BFAC AE2E0000 */  sw    $t6, ($s1)
/* 0040BFB0 8F9982CC */  lw    $t9, %call16(appendtextword)($gp)
/* 0040BFB4 AFA00010 */  sw    $zero, 0x10($sp)
/* 0040BFB8 0320F809 */  jalr  $t9
/* 0040BFBC 00000000 */   nop   
/* 0040BFC0 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040BFC4 00002025 */  move  $a0, $zero
/* 0040BFC8 8F9982CC */  lw    $t9, %call16(appendtextword)($gp)
/* 0040BFCC 00002825 */  move  $a1, $zero
/* 0040BFD0 00003025 */  move  $a2, $zero
/* 0040BFD4 00003825 */  move  $a3, $zero
/* 0040BFD8 0320F809 */  jalr  $t9
/* 0040BFDC AFA00010 */   sw    $zero, 0x10($sp)
/* 0040BFE0 8E6D0008 */  lw    $t5, 8($s3)
/* 0040BFE4 3C0103FF */  lui   $at, 0x3ff
/* 0040BFE8 8DA80010 */  lw    $t0, 0x10($t5)
/* 0040BFEC 8FAA004C */  lw    $t2, 0x4c($sp)
/* 0040BFF0 3421FFFF */  ori   $at, $at, 0xffff
/* 0040BFF4 0008C083 */  sra   $t8, $t0, 2
/* 0040BFF8 03015824 */  and   $t3, $t8, $at
/* 0040BFFC 016AC826 */  xor   $t9, $t3, $t2
/* 0040C000 8E230000 */  lw    $v1, ($s1)
/* 0040C004 8E0E0004 */  lw    $t6, 4($s0)
/* 0040C008 00196180 */  sll   $t4, $t9, 6
/* 0040C00C 000C7982 */  srl   $t7, $t4, 6
/* 0040C010 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040C014 01EA4826 */  xor   $t1, $t7, $t2
/* 0040C018 006E082B */  sltu  $at, $v1, $t6
/* 0040C01C AFA9004C */  sw    $t1, 0x4c($sp)
/* 0040C020 1420000A */  bnez  $at, .L0040C04C
/* 0040C024 00602825 */   move  $a1, $v1
/* 0040C028 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 0040C02C 8E070000 */  lw    $a3, ($s0)
/* 0040C030 03C02025 */  move  $a0, $fp
/* 0040C034 24060018 */  li    $a2, 24
/* 0040C038 0320F809 */  jalr  $t9
/* 0040C03C AFA00010 */   sw    $zero, 0x10($sp)
/* 0040C040 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040C044 8E230000 */  lw    $v1, ($s1)
/* 0040C048 AE020000 */  sw    $v0, ($s0)
.L0040C04C:
/* 0040C04C 00720019 */  multu $v1, $s2
/* 0040C050 8E0D0000 */  lw    $t5, ($s0)
/* 0040C054 00002825 */  move  $a1, $zero
/* 0040C058 00003025 */  move  $a2, $zero
/* 0040C05C 00003825 */  move  $a3, $zero
/* 0040C060 00004012 */  mflo  $t0
/* 0040C064 01A8C021 */  addu  $t8, $t5, $t0
/* 0040C068 AF000000 */  sw    $zero, ($t8)
/* 0040C06C 8E2E0000 */  lw    $t6, ($s1)
/* 0040C070 8E990000 */  lw    $t9, ($s4)
/* 0040C074 01D20019 */  multu $t6, $s2
/* 0040C078 8EAB0000 */  lw    $t3, ($s5)
/* 0040C07C 00196080 */  sll   $t4, $t9, 2
/* 0040C080 8E090000 */  lw    $t1, ($s0)
/* 0040C084 016C7821 */  addu  $t7, $t3, $t4
/* 0040C088 8DEA0000 */  lw    $t2, ($t7)
/* 0040C08C 24180006 */  li    $t8, 6
/* 0040C090 00006812 */  mflo  $t5
/* 0040C094 012D4021 */  addu  $t0, $t1, $t5
/* 0040C098 AD0A0004 */  sw    $t2, 4($t0)
/* 0040C09C 8E2B0000 */  lw    $t3, ($s1)
/* 0040C0A0 8E190000 */  lw    $t9, ($s0)
/* 0040C0A4 01720019 */  multu $t3, $s2
/* 0040C0A8 00006012 */  mflo  $t4
/* 0040C0AC 032C7821 */  addu  $t7, $t9, $t4
/* 0040C0B0 A1F80010 */  sb    $t8, 0x10($t7)
/* 0040C0B4 8E2D0000 */  lw    $t5, ($s1)
/* 0040C0B8 8E090000 */  lw    $t1, ($s0)
/* 0040C0BC 01B20019 */  multu $t5, $s2
/* 0040C0C0 8E8E0000 */  lw    $t6, ($s4)
/* 0040C0C4 00005012 */  mflo  $t2
/* 0040C0C8 012A4021 */  addu  $t0, $t1, $t2
/* 0040C0CC AD0E000C */  sw    $t6, 0xc($t0)
/* 0040C0D0 8E390000 */  lw    $t9, ($s1)
/* 0040C0D4 8E0B0000 */  lw    $t3, ($s0)
/* 0040C0D8 03320019 */  multu $t9, $s2
/* 0040C0DC 00006012 */  mflo  $t4
/* 0040C0E0 016CC021 */  addu  $t8, $t3, $t4
/* 0040C0E4 AF000008 */  sw    $zero, 8($t8)
/* 0040C0E8 8E2F0000 */  lw    $t7, ($s1)
/* 0040C0EC 8FA4004C */  lw    $a0, 0x4c($sp)
/* 0040C0F0 25ED0001 */  addiu $t5, $t7, 1
/* 0040C0F4 AE2D0000 */  sw    $t5, ($s1)
/* 0040C0F8 8F9982CC */  lw    $t9, %call16(appendtextword)($gp)
/* 0040C0FC AFA00010 */  sw    $zero, 0x10($sp)
/* 0040C100 0320F809 */  jalr  $t9
/* 0040C104 00000000 */   nop   
/* 0040C108 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040C10C 00002025 */  move  $a0, $zero
/* 0040C110 8F9982CC */  lw    $t9, %call16(appendtextword)($gp)
/* 0040C114 00002825 */  move  $a1, $zero
/* 0040C118 00003025 */  move  $a2, $zero
/* 0040C11C 00003825 */  move  $a3, $zero
/* 0040C120 0320F809 */  jalr  $t9
/* 0040C124 AFA00010 */   sw    $zero, 0x10($sp)
/* 0040C128 8E73000C */  lw    $s3, 0xc($s3)
/* 0040C12C 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040C130 1660FEDB */  bnez  $s3, .L0040BCA0
/* 0040C134 00000000 */   nop   
.L0040C138:
/* 0040C138 8F828088 */  lw    $v0, %got(B_10023054)($gp)
/* 0040C13C 8F818088 */  lw    $at, %got(B_10023050)($gp)
/* 0040C140 8FBF0044 */  lw    $ra, 0x44($sp)
/* 0040C144 24423054 */  addiu $v0, %lo(B_10023054) # addiu $v0, $v0, 0x3054
/* 0040C148 AC400000 */  sw    $zero, ($v0)
/* 0040C14C 8FB0001C */  lw    $s0, 0x1c($sp)
/* 0040C150 8FB10020 */  lw    $s1, 0x20($sp)
/* 0040C154 8FB20024 */  lw    $s2, 0x24($sp)
/* 0040C158 8FB30028 */  lw    $s3, 0x28($sp)
/* 0040C15C 8FB4002C */  lw    $s4, 0x2c($sp)
/* 0040C160 8FB50030 */  lw    $s5, 0x30($sp)
/* 0040C164 8FB60034 */  lw    $s6, 0x34($sp)
/* 0040C168 8FB70038 */  lw    $s7, 0x38($sp)
/* 0040C16C 8FBE0040 */  lw    $fp, 0x40($sp)
/* 0040C170 27BD0050 */  addiu $sp, $sp, 0x50
/* 0040C174 03E00008 */  jr    $ra
/* 0040C178 AC203050 */   sw    $zero, %lo(B_10023050)($at)

    .type gen_br_patches, @function
    .size gen_br_patches, .-gen_br_patches
    .end gen_br_patches

    .type func_0040C17C, @function
func_0040C17C:
    # 0040C344 do_forward_branches
    # 0040C63C do_handle_branchop
/* 0040C17C 3C1C0FC2 */  .cpload $t9
/* 0040C180 279CE0E4 */  
/* 0040C184 0399E021 */  
/* 0040C188 27BDFF50 */  addiu $sp, $sp, -0xb0
/* 0040C18C AFBF001C */  sw    $ra, 0x1c($sp)
/* 0040C190 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0040C194 00A61823 */  subu  $v1, $a1, $a2
/* 0040C198 8C8E0000 */  lw    $t6, ($a0)
/* 0040C19C 2463FFFC */  addiu $v1, $v1, -4
/* 0040C1A0 306F0003 */  andi  $t7, $v1, 3
/* 0040C1A4 00803825 */  move  $a3, $a0
/* 0040C1A8 11E0000E */  beqz  $t7, .L0040C1E4
/* 0040C1AC AFAE00A8 */   sw    $t6, 0xa8($sp)
/* 0040C1B0 8F84806C */  lw    $a0, %got(RO_100121E0)($gp)
/* 0040C1B4 8F998674 */  lw    $t9, %call16(postcerror)($gp)
/* 0040C1B8 24050002 */  li    $a1, 2
/* 0040C1BC AFA30024 */  sw    $v1, 0x24($sp)
/* 0040C1C0 AFA600B8 */  sw    $a2, 0xb8($sp)
/* 0040C1C4 AFA700B0 */  sw    $a3, 0xb0($sp)
/* 0040C1C8 0320F809 */  jalr  $t9
/* 0040C1CC 248421E0 */   addiu $a0, %lo(RO_100121E0) # addiu $a0, $a0, 0x21e0
/* 0040C1D0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040C1D4 8FA30024 */  lw    $v1, 0x24($sp)
/* 0040C1D8 8FA600B8 */  lw    $a2, 0xb8($sp)
/* 0040C1DC 8FA700B0 */  lw    $a3, 0xb0($sp)
/* 0040C1E0 00000000 */  nop   
.L0040C1E4:
/* 0040C1E4 04610003 */  bgez  $v1, .L0040C1F4
/* 0040C1E8 00031083 */   sra   $v0, $v1, 2
/* 0040C1EC 24610003 */  addiu $at, $v1, 3
/* 0040C1F0 00011083 */  sra   $v0, $at, 2
.L0040C1F4:
/* 0040C1F4 28418000 */  slti  $at, $v0, -0x8000
/* 0040C1F8 14200003 */  bnez  $at, .L0040C208
/* 0040C1FC 28417FFF */   slti  $at, $v0, 0x7fff
/* 0040C200 14200034 */  bnez  $at, .L0040C2D4
/* 0040C204 00001825 */   move  $v1, $zero
.L0040C208:
/* 0040C208 8FB800A8 */  lw    $t8, 0xa8($sp)
/* 0040C20C 24010004 */  li    $at, 4
/* 0040C210 0018CE82 */  srl   $t9, $t8, 0x1a
/* 0040C214 1721000D */  bne   $t9, $at, .L0040C24C
/* 0040C218 00184180 */   sll   $t0, $t8, 6
/* 0040C21C 00084EC2 */  srl   $t1, $t0, 0x1b
/* 0040C220 1520000B */  bnez  $t1, .L0040C250
/* 0040C224 8FAF00A8 */   lw    $t7, 0xa8($sp)
/* 0040C228 97AA00A8 */  lhu   $t2, 0xa8($sp)
/* 0040C22C 93AC00A8 */  lbu   $t4, 0xa8($sp)
/* 0040C230 314B001F */  andi  $t3, $t2, 0x1f
/* 0040C234 15600005 */  bnez  $t3, .L0040C24C
/* 0040C238 318DFF03 */   andi  $t5, $t4, 0xff03
/* 0040C23C 35AE0008 */  ori   $t6, $t5, 8
/* 0040C240 24030001 */  li    $v1, 1
/* 0040C244 1000001C */  b     .L0040C2B8
/* 0040C248 A3AE00A8 */   sb    $t6, 0xa8($sp)
.L0040C24C:
/* 0040C24C 8FAF00A8 */  lw    $t7, 0xa8($sp)
.L0040C250:
/* 0040C250 24010001 */  li    $at, 1
/* 0040C254 000FCE82 */  srl   $t9, $t7, 0x1a
/* 0040C258 17210012 */  bne   $t9, $at, .L0040C2A4
/* 0040C25C 24030002 */   li    $v1, 2
/* 0040C260 97B800A8 */  lhu   $t8, 0xa8($sp)
/* 0040C264 24010010 */  li    $at, 16
/* 0040C268 3308001F */  andi  $t0, $t8, 0x1f
/* 0040C26C 11010007 */  beq   $t0, $at, .L0040C28C
/* 0040C270 24010011 */   li    $at, 17
/* 0040C274 11010005 */  beq   $t0, $at, .L0040C28C
/* 0040C278 24010012 */   li    $at, 18
/* 0040C27C 11010003 */  beq   $t0, $at, .L0040C28C
/* 0040C280 24010013 */   li    $at, 19
/* 0040C284 15010008 */  bne   $t0, $at, .L0040C2A8
/* 0040C288 93AC00A8 */   lbu   $t4, 0xa8($sp)
.L0040C28C:
/* 0040C28C 93A900A8 */  lbu   $t1, 0xa8($sp)
/* 0040C290 00000000 */  nop   
/* 0040C294 312AFF03 */  andi  $t2, $t1, 0xff03
/* 0040C298 354B000C */  ori   $t3, $t2, 0xc
/* 0040C29C 10000006 */  b     .L0040C2B8
/* 0040C2A0 A3AB00A8 */   sb    $t3, 0xa8($sp)
.L0040C2A4:
/* 0040C2A4 93AC00A8 */  lbu   $t4, 0xa8($sp)
.L0040C2A8:
/* 0040C2A8 00000000 */  nop   
/* 0040C2AC 318DFF03 */  andi  $t5, $t4, 0xff03
/* 0040C2B0 35AE0008 */  ori   $t6, $t5, 8
/* 0040C2B4 A3AE00A8 */  sb    $t6, 0xa8($sp)
.L0040C2B8:
/* 0040C2B8 8FAF00A8 */  lw    $t7, 0xa8($sp)
/* 0040C2BC 00000000 */  nop   
/* 0040C2C0 000FC980 */  sll   $t9, $t7, 6
/* 0040C2C4 0019C182 */  srl   $t8, $t9, 6
/* 0040C2C8 030F4026 */  xor   $t0, $t8, $t7
/* 0040C2CC 10000002 */  b     .L0040C2D8
/* 0040C2D0 AFA800A8 */   sw    $t0, 0xa8($sp)
.L0040C2D4:
/* 0040C2D4 A7A200AA */  sh    $v0, 0xaa($sp)
.L0040C2D8:
/* 0040C2D8 8FA900A8 */  lw    $t1, 0xa8($sp)
/* 0040C2DC 10600015 */  beqz  $v1, .L0040C334
/* 0040C2E0 ACE90000 */   sw    $t1, ($a3)
/* 0040C2E4 8F8A8AF8 */  lw     $t2, %got(picflag)($gp)
/* 0040C2E8 24010002 */  li    $at, 2
/* 0040C2EC 8D4A0000 */  lw    $t2, ($t2)
/* 0040C2F0 27A40028 */  addiu $a0, $sp, 0x28
/* 0040C2F4 15410010 */  bne   $t2, $at, .L0040C338
/* 0040C2F8 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0040C2FC 8F85806C */  lw    $a1, %got(RO_10012208)($gp)
/* 0040C300 8F9980CC */  lw    $t9, %call16(sprintf)($gp)
/* 0040C304 AFA300A4 */  sw    $v1, 0xa4($sp)
/* 0040C308 0320F809 */  jalr  $t9
/* 0040C30C 24A52208 */   addiu $a1, %lo(RO_10012208) # addiu $a1, $a1, 0x2208
/* 0040C310 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040C314 27A40028 */  addiu $a0, $sp, 0x28
/* 0040C318 8F998674 */  lw    $t9, %call16(postcerror)($gp)
/* 0040C31C 24050001 */  li    $a1, 1
/* 0040C320 0320F809 */  jalr  $t9
/* 0040C324 00000000 */   nop   
/* 0040C328 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040C32C 8FA300A4 */  lw    $v1, 0xa4($sp)
/* 0040C330 00000000 */  nop   
.L0040C334:
/* 0040C334 8FBF001C */  lw    $ra, 0x1c($sp)
.L0040C338:
/* 0040C338 27BD00B0 */  addiu $sp, $sp, 0xb0
/* 0040C33C 03E00008 */  jr    $ra
/* 0040C340 00601025 */   move  $v0, $v1

glabel do_forward_branches
    .ent do_forward_branches
    # 0045C9B8 definealabel
/* 0040C344 3C1C0FC2 */  .cpload $t9
/* 0040C348 279CDF1C */  
/* 0040C34C 0399E021 */  
/* 0040C350 27BDFF98 */  addiu $sp, $sp, -0x68
/* 0040C354 AFBF0044 */  sw    $ra, 0x44($sp)
/* 0040C358 AFBE0040 */  sw    $fp, 0x40($sp)
/* 0040C35C AFBC003C */  sw    $gp, 0x3c($sp)
/* 0040C360 AFB70038 */  sw    $s7, 0x38($sp)
/* 0040C364 AFB60034 */  sw    $s6, 0x34($sp)
/* 0040C368 AFB50030 */  sw    $s5, 0x30($sp)
/* 0040C36C AFB4002C */  sw    $s4, 0x2c($sp)
/* 0040C370 AFB30028 */  sw    $s3, 0x28($sp)
/* 0040C374 AFB20024 */  sw    $s2, 0x24($sp)
/* 0040C378 AFB10020 */  sw    $s1, 0x20($sp)
/* 0040C37C AFB0001C */  sw    $s0, 0x1c($sp)
/* 0040C380 AFA40068 */  sw    $a0, 0x68($sp)
/* 0040C384 AFA5006C */  sw    $a1, 0x6c($sp)
/* 0040C388 8C93002C */  lw    $s3, 0x2c($a0)
/* 0040C38C 00054080 */  sll   $t0, $a1, 2
/* 0040C390 1260009E */  beqz  $s3, .L0040C60C
/* 0040C394 01054023 */   subu  $t0, $t0, $a1
/* 0040C398 8F828AFC */  lw     $v0, %got(fixup_count)($gp)
/* 0040C39C 00084080 */  sll   $t0, $t0, 2
/* 0040C3A0 8C4F0000 */  lw    $t7, ($v0)
/* 0040C3A4 01054023 */  subu  $t0, $t0, $a1
/* 0040C3A8 00084080 */  sll   $t0, $t0, 2
/* 0040C3AC 25F8FFFF */  addiu $t8, $t7, -1
/* 0040C3B0 8F978AE8 */  lw     $s7, %got(sexchange)($gp)
/* 0040C3B4 8F968AE0 */  lw     $s6, %got(memory)($gp)
/* 0040C3B8 8F928AF0 */  lw     $s2, %got(nextrld)($gp)
/* 0040C3BC 8F908AF4 */  lw     $s0, %got(rld_list)($gp)
/* 0040C3C0 AFA80050 */  sw    $t0, 0x50($sp)
/* 0040C3C4 3C1EFF00 */  lui   $fp, 0xff00
/* 0040C3C8 24140018 */  li    $s4, 24
/* 0040C3CC AC580000 */  sw    $t8, ($v0)
.L0040C3D0:
/* 0040C3D0 8EC90000 */  lw    $t1, ($s6)
/* 0040C3D4 8FAA0050 */  lw    $t2, 0x50($sp)
/* 0040C3D8 8E6D0000 */  lw    $t5, ($s3)
/* 0040C3DC 012A5821 */  addu  $t3, $t1, $t2
/* 0040C3E0 8D6C0000 */  lw    $t4, ($t3)
/* 0040C3E4 000D7083 */  sra   $t6, $t5, 2
/* 0040C3E8 000E7880 */  sll   $t7, $t6, 2
/* 0040C3EC 92F90000 */  lbu   $t9, ($s7)
/* 0040C3F0 018FC021 */  addu  $t8, $t4, $t7
/* 0040C3F4 8F110000 */  lw    $s1, ($t8)
/* 0040C3F8 1320000C */  beqz  $t9, .L0040C42C
/* 0040C3FC 3C0100FF */   lui   $at, 0xff
/* 0040C400 00114600 */  sll   $t0, $s1, 0x18
/* 0040C404 00115200 */  sll   $t2, $s1, 8
/* 0040C408 01415824 */  and   $t3, $t2, $at
/* 0040C40C 011E4824 */  and   $t1, $t0, $fp
/* 0040C410 00117202 */  srl   $t6, $s1, 8
/* 0040C414 31CCFF00 */  andi  $t4, $t6, 0xff00
/* 0040C418 012B6825 */  or    $t5, $t1, $t3
/* 0040C41C 0011C602 */  srl   $t8, $s1, 0x18
/* 0040C420 331900FF */  andi  $t9, $t8, 0xff
/* 0040C424 01AC7825 */  or    $t7, $t5, $t4
/* 0040C428 01F98825 */  or    $s1, $t7, $t9
.L0040C42C:
/* 0040C42C 8F8A8AE4 */  lw     $t2, %got(currtextindex)($gp)
/* 0040C430 8F888AEC */  lw     $t0, %got(seg_ic)($gp)
/* 0040C434 8D4A0000 */  lw    $t2, ($t2)
/* 0040C438 8D080000 */  lw    $t0, ($t0)
/* 0040C43C 8F998018 */  lw    $t9, %got(func_0040C17C)($gp)
/* 0040C440 AFB10058 */  sw    $s1, 0x58($sp)
/* 0040C444 000A4880 */  sll   $t1, $t2, 2
/* 0040C448 01095821 */  addu  $t3, $t0, $t1
/* 0040C44C 8D650000 */  lw    $a1, ($t3)
/* 0040C450 8E660000 */  lw    $a2, ($s3)
/* 0040C454 2739C17C */  addiu $t9, %lo(func_0040C17C) # addiu $t9, $t9, -0x3e84
/* 0040C458 0320F809 */  jalr  $t9
/* 0040C45C 27A40058 */   addiu $a0, $sp, 0x58
/* 0040C460 92EE0000 */  lbu   $t6, ($s7)
/* 0040C464 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040C468 11C0000F */  beqz  $t6, .L0040C4A8
/* 0040C46C 0040A825 */   move  $s5, $v0
/* 0040C470 8FA30058 */  lw    $v1, 0x58($sp)
/* 0040C474 3C0100FF */  lui   $at, 0xff
/* 0040C478 00036E00 */  sll   $t5, $v1, 0x18
/* 0040C47C 0003C200 */  sll   $t8, $v1, 8
/* 0040C480 03017824 */  and   $t7, $t8, $at
/* 0040C484 01BE6024 */  and   $t4, $t5, $fp
/* 0040C488 00035202 */  srl   $t2, $v1, 8
/* 0040C48C 3148FF00 */  andi  $t0, $t2, 0xff00
/* 0040C490 018FC825 */  or    $t9, $t4, $t7
/* 0040C494 00035E02 */  srl   $t3, $v1, 0x18
/* 0040C498 316E00FF */  andi  $t6, $t3, 0xff
/* 0040C49C 03284825 */  or    $t1, $t9, $t0
/* 0040C4A0 012E1825 */  or    $v1, $t1, $t6
/* 0040C4A4 AFA30058 */  sw    $v1, 0x58($sp)
.L0040C4A8:
/* 0040C4A8 8ED80000 */  lw    $t8, ($s6)
/* 0040C4AC 8FAC0050 */  lw    $t4, 0x50($sp)
/* 0040C4B0 8E790000 */  lw    $t9, ($s3)
/* 0040C4B4 030C7821 */  addu  $t7, $t8, $t4
/* 0040C4B8 8DEA0000 */  lw    $t2, ($t7)
/* 0040C4BC 00194083 */  sra   $t0, $t9, 2
/* 0040C4C0 8FAD0058 */  lw    $t5, 0x58($sp)
/* 0040C4C4 00085880 */  sll   $t3, $t0, 2
/* 0040C4C8 014B4821 */  addu  $t1, $t2, $t3
/* 0040C4CC 10400047 */  beqz  $v0, .L0040C5EC
/* 0040C4D0 AD2D0000 */   sw    $t5, ($t1)
/* 0040C4D4 8E430000 */  lw    $v1, ($s2)
/* 0040C4D8 8E0E0004 */  lw    $t6, 4($s0)
/* 0040C4DC 24060018 */  li    $a2, 24
/* 0040C4E0 006E082B */  sltu  $at, $v1, $t6
/* 0040C4E4 1420000A */  bnez  $at, .L0040C510
/* 0040C4E8 00602825 */   move  $a1, $v1
/* 0040C4EC 8F848AF4 */  lw     $a0, %got(rld_list)($gp)
/* 0040C4F0 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 0040C4F4 8E070000 */  lw    $a3, ($s0)
/* 0040C4F8 AFA00010 */  sw    $zero, 0x10($sp)
/* 0040C4FC 0320F809 */  jalr  $t9
/* 0040C500 24840004 */   addiu $a0, $a0, 4
/* 0040C504 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040C508 8E430000 */  lw    $v1, ($s2)
/* 0040C50C AE020000 */  sw    $v0, ($s0)
.L0040C510:
/* 0040C510 00740019 */  multu $v1, $s4
/* 0040C514 8E180000 */  lw    $t8, ($s0)
/* 0040C518 24090006 */  li    $t1, 6
/* 0040C51C 24020002 */  li    $v0, 2
/* 0040C520 00006012 */  mflo  $t4
/* 0040C524 030C7821 */  addu  $t7, $t8, $t4
/* 0040C528 ADE00000 */  sw    $zero, ($t7)
/* 0040C52C 8E4A0000 */  lw    $t2, ($s2)
/* 0040C530 8E080000 */  lw    $t0, ($s0)
/* 0040C534 01540019 */  multu $t2, $s4
/* 0040C538 8E790000 */  lw    $t9, ($s3)
/* 0040C53C 00005812 */  mflo  $t3
/* 0040C540 010B6821 */  addu  $t5, $t0, $t3
/* 0040C544 ADB90004 */  sw    $t9, 4($t5)
/* 0040C548 8E580000 */  lw    $t8, ($s2)
/* 0040C54C 8E0E0000 */  lw    $t6, ($s0)
/* 0040C550 03140019 */  multu $t8, $s4
/* 0040C554 00006012 */  mflo  $t4
/* 0040C558 01CC7821 */  addu  $t7, $t6, $t4
/* 0040C55C A1E90010 */  sb    $t1, 0x10($t7)
/* 0040C560 8E4B0000 */  lw    $t3, ($s2)
/* 0040C564 8E080000 */  lw    $t0, ($s0)
/* 0040C568 01740019 */  multu $t3, $s4
/* 0040C56C 8FAA006C */  lw    $t2, 0x6c($sp)
/* 0040C570 0000C812 */  mflo  $t9
/* 0040C574 01196821 */  addu  $t5, $t0, $t9
/* 0040C578 16A20008 */  bne   $s5, $v0, .L0040C59C
/* 0040C57C ADAA000C */   sw    $t2, 0xc($t5)
/* 0040C580 8E4E0000 */  lw    $t6, ($s2)
/* 0040C584 8E180000 */  lw    $t8, ($s0)
/* 0040C588 01D40019 */  multu $t6, $s4
/* 0040C58C 00006012 */  mflo  $t4
/* 0040C590 030C4821 */  addu  $t1, $t8, $t4
/* 0040C594 10000008 */  b     .L0040C5B8
/* 0040C598 AD200008 */   sw    $zero, 8($t1)
.L0040C59C:
/* 0040C59C 8E480000 */  lw    $t0, ($s2)
/* 0040C5A0 8E0B0000 */  lw    $t3, ($s0)
/* 0040C5A4 01140019 */  multu $t0, $s4
/* 0040C5A8 8FAF0068 */  lw    $t7, 0x68($sp)
/* 0040C5AC 0000C812 */  mflo  $t9
/* 0040C5B0 01795021 */  addu  $t2, $t3, $t9
/* 0040C5B4 AD4F0008 */  sw    $t7, 8($t2)
.L0040C5B8:
/* 0040C5B8 8E4D0000 */  lw    $t5, ($s2)
/* 0040C5BC 00000000 */  nop   
/* 0040C5C0 25AE0001 */  addiu $t6, $t5, 1
/* 0040C5C4 16A20009 */  bne   $s5, $v0, .L0040C5EC
/* 0040C5C8 AE4E0000 */   sw    $t6, ($s2)
/* 0040C5CC 8F998018 */  lw    $t9, %got(func_0040BB90)($gp)
/* 0040C5D0 8E650000 */  lw    $a1, ($s3)
/* 0040C5D4 8FA60068 */  lw    $a2, 0x68($sp)
/* 0040C5D8 2739BB90 */  addiu $t9, %lo(func_0040BB90) # addiu $t9, $t9, -0x4470
/* 0040C5DC 0320F809 */  jalr  $t9
/* 0040C5E0 02202025 */   move  $a0, $s1
/* 0040C5E4 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040C5E8 00000000 */  nop   
.L0040C5EC:
/* 0040C5EC 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 0040C5F0 02602025 */  move  $a0, $s3
/* 0040C5F4 8E730004 */  lw    $s3, 4($s3)
/* 0040C5F8 0320F809 */  jalr  $t9
/* 0040C5FC 00000000 */   nop   
/* 0040C600 8FBC003C */  lw    $gp, 0x3c($sp)
/* 0040C604 1660FF72 */  bnez  $s3, .L0040C3D0
/* 0040C608 00000000 */   nop   
.L0040C60C:
/* 0040C60C 8FBF0044 */  lw    $ra, 0x44($sp)
/* 0040C610 8FB0001C */  lw    $s0, 0x1c($sp)
/* 0040C614 8FB10020 */  lw    $s1, 0x20($sp)
/* 0040C618 8FB20024 */  lw    $s2, 0x24($sp)
/* 0040C61C 8FB30028 */  lw    $s3, 0x28($sp)
/* 0040C620 8FB4002C */  lw    $s4, 0x2c($sp)
/* 0040C624 8FB50030 */  lw    $s5, 0x30($sp)
/* 0040C628 8FB60034 */  lw    $s6, 0x34($sp)
/* 0040C62C 8FB70038 */  lw    $s7, 0x38($sp)
/* 0040C630 8FBE0040 */  lw    $fp, 0x40($sp)
/* 0040C634 03E00008 */  jr    $ra
/* 0040C638 27BD0068 */   addiu $sp, $sp, 0x68

    .type do_forward_branches, @function
    .size do_forward_branches, .-do_forward_branches
    .end do_forward_branches

glabel do_handle_branchop
    .ent do_handle_branchop
    # 0041F9F8 appendtextword
/* 0040C63C 3C1C0FC2 */  .cpload $t9
/* 0040C640 279CDC24 */  
/* 0040C644 0399E021 */  
/* 0040C648 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0040C64C AFBF0024 */  sw    $ra, 0x24($sp)
/* 0040C650 AFBC0020 */  sw    $gp, 0x20($sp)
/* 0040C654 AFB0001C */  sw    $s0, 0x1c($sp)
/* 0040C658 AFA60040 */  sw    $a2, 0x40($sp)
/* 0040C65C 908E0037 */  lbu   $t6, 0x37($a0)
/* 0040C660 00808025 */  move  $s0, $a0
/* 0040C664 11C00082 */  beqz  $t6, .L0040C870
/* 0040C668 00A02025 */   move  $a0, $a1
/* 0040C66C 8F998AE4 */  lw     $t9, %got(currtextindex)($gp)
/* 0040C670 8F988AEC */  lw     $t8, %got(seg_ic)($gp)
/* 0040C674 8F390000 */  lw    $t9, ($t9)
/* 0040C678 8CAF0000 */  lw    $t7, ($a1)
/* 0040C67C 8F180000 */  lw    $t8, ($t8)
/* 0040C680 00195080 */  sll   $t2, $t9, 2
/* 0040C684 8F998018 */  lw    $t9, %got(func_0040C17C)($gp)
/* 0040C688 AFAF002C */  sw    $t7, 0x2c($sp)
/* 0040C68C 030A5821 */  addu  $t3, $t8, $t2
/* 0040C690 8D660000 */  lw    $a2, ($t3)
/* 0040C694 8E050010 */  lw    $a1, 0x10($s0)
/* 0040C698 2739C17C */  addiu $t9, %lo(func_0040C17C) # addiu $t9, $t9, -0x3e84
/* 0040C69C 0320F809 */  jalr  $t9
/* 0040C6A0 00000000 */   nop   
/* 0040C6A4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040C6A8 1040008E */  beqz  $v0, .L0040C8E4
/* 0040C6AC 00404825 */   move  $t1, $v0
/* 0040C6B0 8F888AF0 */  lw     $t0, %got(nextrld)($gp)
/* 0040C6B4 8FAD0040 */  lw    $t5, 0x40($sp)
/* 0040C6B8 8D0C0000 */  lw    $t4, ($t0)
/* 0040C6BC 8F838AF4 */  lw     $v1, %got(rld_list)($gp)
/* 0040C6C0 ADAC0000 */  sw    $t4, ($t5)
/* 0040C6C4 8D040000 */  lw    $a0, ($t0)
/* 0040C6C8 8C6E0004 */  lw    $t6, 4($v1)
/* 0040C6CC 24060018 */  li    $a2, 24
/* 0040C6D0 008E082B */  sltu  $at, $a0, $t6
/* 0040C6D4 1420000E */  bnez  $at, .L0040C710
/* 0040C6D8 00802825 */   move  $a1, $a0
/* 0040C6DC 8F848AF4 */  lw     $a0, %got(rld_list)($gp)
/* 0040C6E0 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 0040C6E4 8C670000 */  lw    $a3, ($v1)
/* 0040C6E8 AFA00010 */  sw    $zero, 0x10($sp)
/* 0040C6EC AFA20030 */  sw    $v0, 0x30($sp)
/* 0040C6F0 0320F809 */  jalr  $t9
/* 0040C6F4 24840004 */   addiu $a0, $a0, 4
/* 0040C6F8 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040C6FC 8FA90030 */  lw    $t1, 0x30($sp)
/* 0040C700 8F888AF0 */  lw     $t0, %got(nextrld)($gp)
/* 0040C704 8F838AF4 */  lw     $v1, %got(rld_list)($gp)
/* 0040C708 8D040000 */  lw    $a0, ($t0)
/* 0040C70C AC620000 */  sw    $v0, ($v1)
.L0040C710:
/* 0040C710 24020018 */  li    $v0, 24
/* 0040C714 00820019 */  multu $a0, $v0
/* 0040C718 8C6F0000 */  lw    $t7, ($v1)
/* 0040C71C 240A0006 */  li    $t2, 6
/* 0040C720 24050002 */  li    $a1, 2
/* 0040C724 0000C812 */  mflo  $t9
/* 0040C728 01F9C021 */  addu  $t8, $t7, $t9
/* 0040C72C AF000000 */  sw    $zero, ($t8)
/* 0040C730 8D0C0000 */  lw    $t4, ($t0)
/* 0040C734 8C6B0000 */  lw    $t3, ($v1)
/* 0040C738 01820019 */  multu $t4, $v0
/* 0040C73C 00006812 */  mflo  $t5
/* 0040C740 016D7021 */  addu  $t6, $t3, $t5
/* 0040C744 A1CA0010 */  sb    $t2, 0x10($t6)
/* 0040C748 8D190000 */  lw    $t9, ($t0)
/* 0040C74C 8C6F0000 */  lw    $t7, ($v1)
/* 0040C750 03220019 */  multu $t9, $v0
/* 0040C754 0000C012 */  mflo  $t8
/* 0040C758 01F86021 */  addu  $t4, $t7, $t8
/* 0040C75C 15250018 */  bne   $t1, $a1, .L0040C7C0
/* 0040C760 AD800008 */   sw    $zero, 8($t4)
/* 0040C764 8D0A0000 */  lw    $t2, ($t0)
/* 0040C768 8F878AE4 */  lw     $a3, %got(currtextindex)($gp)
/* 0040C76C 01420019 */  multu $t2, $v0
/* 0040C770 8C6D0000 */  lw    $t5, ($v1)
/* 0040C774 8CEB0000 */  lw    $t3, ($a3)
/* 0040C778 8F8F8AEC */  lw     $t7, %got(seg_ic)($gp)
/* 0040C77C 00007012 */  mflo  $t6
/* 0040C780 01AEC821 */  addu  $t9, $t5, $t6
/* 0040C784 AF2B000C */  sw    $t3, 0xc($t9)
/* 0040C788 8D0B0000 */  lw    $t3, ($t0)
/* 0040C78C 8CF80000 */  lw    $t8, ($a3)
/* 0040C790 01620019 */  multu $t3, $v0
/* 0040C794 8DEF0000 */  lw    $t7, ($t7)
/* 0040C798 00186080 */  sll   $t4, $t8, 2
/* 0040C79C 8C6E0000 */  lw    $t6, ($v1)
/* 0040C7A0 01EC5021 */  addu  $t2, $t7, $t4
/* 0040C7A4 8D4D0000 */  lw    $t5, ($t2)
/* 0040C7A8 0000C812 */  mflo  $t9
/* 0040C7AC 01D9C021 */  addu  $t8, $t6, $t9
/* 0040C7B0 AF0D0004 */  sw    $t5, 4($t8)
/* 0040C7B4 8FAF0040 */  lw    $t7, 0x40($sp)
/* 0040C7B8 00000000 */  nop   
/* 0040C7BC ADE00000 */  sw    $zero, ($t7)
.L0040C7C0:
/* 0040C7C0 8D0C0000 */  lw    $t4, ($t0)
/* 0040C7C4 8F878AE4 */  lw     $a3, %got(currtextindex)($gp)
/* 0040C7C8 258A0001 */  addiu $t2, $t4, 1
/* 0040C7CC 15250010 */  bne   $t1, $a1, .L0040C810
/* 0040C7D0 AD0A0000 */   sw    $t2, ($t0)
/* 0040C7D4 8F8B8AEC */  lw     $t3, %got(seg_ic)($gp)
/* 0040C7D8 8CEE0000 */  lw    $t6, ($a3)
/* 0040C7DC 8D6B0000 */  lw    $t3, ($t3)
/* 0040C7E0 000EC880 */  sll   $t9, $t6, 2
/* 0040C7E4 01796821 */  addu  $t5, $t3, $t9
/* 0040C7E8 8F998018 */  lw    $t9, %got(func_0040BB90)($gp)
/* 0040C7EC 8DA50000 */  lw    $a1, ($t5)
/* 0040C7F0 8FA4002C */  lw    $a0, 0x2c($sp)
/* 0040C7F4 2739BB90 */  addiu $t9, %lo(func_0040BB90) # addiu $t9, $t9, -0x4470
/* 0040C7F8 0320F809 */  jalr  $t9
/* 0040C7FC 02003025 */   move  $a2, $s0
/* 0040C800 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040C804 00000000 */  nop   
/* 0040C808 8F878AE4 */  lw     $a3, %got(currtextindex)($gp)
/* 0040C80C 00000000 */  nop   
.L0040C810:
/* 0040C810 8F988B00 */  lw     $t8, %got(tracereorder)($gp)
/* 0040C814 00000000 */  nop   
/* 0040C818 93180000 */  lbu   $t8, ($t8)
/* 0040C81C 00000000 */  nop   
/* 0040C820 13000031 */  beqz  $t8, .L0040C8E8
/* 0040C824 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0040C828 8F8F8AEC */  lw     $t7, %got(seg_ic)($gp)
/* 0040C82C 8CEC0000 */  lw    $t4, ($a3)
/* 0040C830 8DEF0000 */  lw    $t7, ($t7)
/* 0040C834 000C5080 */  sll   $t2, $t4, 2
/* 0040C838 01EA7021 */  addu  $t6, $t7, $t2
/* 0040C83C 8DC50000 */  lw    $a1, ($t6)
/* 0040C840 8F84806C */  lw    $a0, %got(RO_10012258)($gp)
/* 0040C844 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0040C848 24842258 */  addiu $a0, %lo(RO_10012258) # addiu $a0, $a0, 0x2258
/* 0040C84C 04A10003 */  bgez  $a1, .L0040C85C
/* 0040C850 00055883 */   sra   $t3, $a1, 2
/* 0040C854 24A10003 */  addiu $at, $a1, 3
/* 0040C858 00015883 */  sra   $t3, $at, 2
.L0040C85C:
/* 0040C85C 0320F809 */  jalr  $t9
/* 0040C860 01602825 */   move  $a1, $t3
/* 0040C864 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040C868 1000001F */  b     .L0040C8E8
/* 0040C86C 8FBF0024 */   lw    $ra, 0x24($sp)
.L0040C870:
/* 0040C870 8E19002C */  lw    $t9, 0x2c($s0)
/* 0040C874 00000000 */  nop   
/* 0040C878 17200007 */  bnez  $t9, .L0040C898
/* 0040C87C 00000000 */   nop   
/* 0040C880 8F828AFC */  lw     $v0, %got(fixup_count)($gp)
/* 0040C884 00000000 */  nop   
/* 0040C888 8C4D0000 */  lw    $t5, ($v0)
/* 0040C88C 00000000 */  nop   
/* 0040C890 25B80001 */  addiu $t8, $t5, 1
/* 0040C894 AC580000 */  sw    $t8, ($v0)
.L0040C898:
/* 0040C898 8F998390 */  lw    $t9, %call16(allocate_check)($gp)
/* 0040C89C 24040008 */  li    $a0, 8
/* 0040C8A0 0320F809 */  jalr  $t9
/* 0040C8A4 00000000 */   nop   
/* 0040C8A8 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040C8AC 00000000 */  nop   
/* 0040C8B0 8F8F8AE4 */  lw     $t7, %got(currtextindex)($gp)
/* 0040C8B4 8F8C8AEC */  lw     $t4, %got(seg_ic)($gp)
/* 0040C8B8 8DEF0000 */  lw    $t7, ($t7)
/* 0040C8BC 8D8C0000 */  lw    $t4, ($t4)
/* 0040C8C0 000F5080 */  sll   $t2, $t7, 2
/* 0040C8C4 018A7021 */  addu  $t6, $t4, $t2
/* 0040C8C8 8DCB0000 */  lw    $t3, ($t6)
/* 0040C8CC 00000000 */  nop   
/* 0040C8D0 AC4B0000 */  sw    $t3, ($v0)
/* 0040C8D4 8E19002C */  lw    $t9, 0x2c($s0)
/* 0040C8D8 00000000 */  nop   
/* 0040C8DC AC590004 */  sw    $t9, 4($v0)
/* 0040C8E0 AE02002C */  sw    $v0, 0x2c($s0)
.L0040C8E4:
/* 0040C8E4 8FBF0024 */  lw    $ra, 0x24($sp)
.L0040C8E8:
/* 0040C8E8 8FB0001C */  lw    $s0, 0x1c($sp)
/* 0040C8EC 03E00008 */  jr    $ra
/* 0040C8F0 27BD0038 */   addiu $sp, $sp, 0x38

    .type do_handle_branchop, @function
    .size do_handle_branchop, .-do_handle_branchop
    .end do_handle_branchop

glabel do_branch_opt
    .ent do_branch_opt
    # 00420E34 traverse_bb
/* 0040C8F4 3C1C0FC2 */  .cpload $t9
/* 0040C8F8 279CD96C */  
/* 0040C8FC 0399E021 */  
/* 0040C900 27BDFF88 */  addiu $sp, $sp, -0x78
/* 0040C904 AFB00014 */  sw    $s0, 0x14($sp)
/* 0040C908 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0040C90C AFBE0038 */  sw    $fp, 0x38($sp)
/* 0040C910 AFBC0034 */  sw    $gp, 0x34($sp)
/* 0040C914 AFB70030 */  sw    $s7, 0x30($sp)
/* 0040C918 AFB6002C */  sw    $s6, 0x2c($sp)
/* 0040C91C AFB50028 */  sw    $s5, 0x28($sp)
/* 0040C920 AFB40024 */  sw    $s4, 0x24($sp)
/* 0040C924 AFB30020 */  sw    $s3, 0x20($sp)
/* 0040C928 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0040C92C AFB10018 */  sw    $s1, 0x18($sp)
/* 0040C930 108000CA */  beqz  $a0, .L0040CC5C
/* 0040C934 00808025 */   move  $s0, $a0
/* 0040C938 8F9E8AE8 */  lw     $fp, %got(sexchange)($gp)
/* 0040C93C 8F948AE4 */  lw     $s4, %got(currtextindex)($gp)
/* 0040C940 8F938AE0 */  lw     $s3, %got(memory)($gp)
/* 0040C944 8F928B04 */  lw     $s2, %got(isa)($gp)
/* 0040C948 3C1700FF */  lui   $s7, 0xff
/* 0040C94C 3C16FF00 */  lui   $s6, 0xff00
/* 0040C950 2415002C */  li    $s5, 44
.L0040C954:
/* 0040C954 920E0046 */  lbu   $t6, 0x46($s0)
/* 0040C958 00000000 */  nop   
/* 0040C95C 31CF0001 */  andi  $t7, $t6, 1
/* 0040C960 11E000B6 */  beqz  $t7, .L0040CC3C
/* 0040C964 00000000 */   nop   
/* 0040C968 8F9982C0 */  lw    $t9, %call16(find_branch_target)($gp)
/* 0040C96C 02002025 */  move  $a0, $s0
/* 0040C970 0320F809 */  jalr  $t9
/* 0040C974 00000000 */   nop   
/* 0040C978 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0040C97C 104000AF */  beqz  $v0, .L0040CC3C
/* 0040C980 00408825 */   move  $s1, $v0
/* 0040C984 9458004E */  lhu   $t8, 0x4e($v0)
/* 0040C988 00000000 */  nop   
/* 0040C98C 130000AB */  beqz  $t8, .L0040CC3C
/* 0040C990 00000000 */   nop   
/* 0040C994 8C590050 */  lw    $t9, 0x50($v0)
/* 0040C998 00000000 */  nop   
/* 0040C99C 8F280004 */  lw    $t0, 4($t9)
/* 0040C9A0 00000000 */  nop   
/* 0040C9A4 150000A5 */  bnez  $t0, .L0040CC3C
/* 0040C9A8 00000000 */   nop   
/* 0040C9AC 8C490050 */  lw    $t1, 0x50($v0)
/* 0040C9B0 8F9983A0 */  lw    $t9, %call16(eligible)($gp)
/* 0040C9B4 8D240000 */  lw    $a0, ($t1)
/* 0040C9B8 0320F809 */  jalr  $t9
/* 0040C9BC AFA40000 */   sw    $a0, ($sp)
/* 0040C9C0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0040C9C4 1040009D */  beqz  $v0, .L0040CC3C
/* 0040C9C8 00000000 */   nop   
/* 0040C9CC 924C0000 */  lbu   $t4, ($s2)
/* 0040C9D0 00000000 */  nop   
/* 0040C9D4 29810002 */  slti  $at, $t4, 2
/* 0040C9D8 10200006 */  beqz  $at, .L0040C9F4
/* 0040C9DC 00000000 */   nop   
/* 0040C9E0 8E0D0044 */  lw    $t5, 0x44($s0)
/* 0040C9E4 27A50060 */  addiu $a1, $sp, 0x60
/* 0040C9E8 000D7EC0 */  sll   $t7, $t5, 0x1b
/* 0040C9EC 05E10003 */  bgez  $t7, .L0040C9FC
/* 0040C9F0 27A60054 */   addiu $a2, $sp, 0x54
.L0040C9F4:
/* 0040C9F4 10000022 */  b     .L0040CA80
/* 0040C9F8 24020001 */   li    $v0, 1
.L0040C9FC:
/* 0040C9FC 8E380050 */  lw    $t8, 0x50($s1)
/* 0040CA00 8F99839C */  lw    $t9, %call16(defuse)($gp)
/* 0040CA04 8F040000 */  lw    $a0, ($t8)
/* 0040CA08 0320F809 */  jalr  $t9
/* 0040CA0C AFA40000 */   sw    $a0, ($sp)
/* 0040CA10 8E020008 */  lw    $v0, 8($s0)
/* 0040CA14 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0040CA18 0002182B */  sltu  $v1, $zero, $v0
/* 0040CA1C 10600017 */  beqz  $v1, .L0040CA7C
/* 0040CA20 00000000 */   nop   
/* 0040CA24 8FAA0068 */  lw    $t2, 0x68($sp)
/* 0040CA28 8C49002C */  lw    $t1, 0x2c($v0)
/* 0040CA2C 8C4C0024 */  lw    $t4, 0x24($v0)
/* 0040CA30 8FAD0060 */  lw    $t5, 0x60($sp)
/* 0040CA34 8C590028 */  lw    $t9, 0x28($v0)
/* 0040CA38 8FB80064 */  lw    $t8, 0x64($sp)
/* 0040CA3C 01495824 */  and   $t3, $t2, $t1
/* 0040CA40 018D7024 */  and   $t6, $t4, $t5
/* 0040CA44 016E7825 */  or    $t7, $t3, $t6
/* 0040CA48 03384024 */  and   $t0, $t9, $t8
/* 0040CA4C 01E81825 */  or    $v1, $t7, $t0
/* 0040CA50 0003502B */  sltu  $t2, $zero, $v1
/* 0040CA54 2D430001 */  sltiu $v1, $t2, 1
/* 0040CA58 10600009 */  beqz  $v1, .L0040CA80
/* 0040CA5C 00601025 */   move  $v0, $v1
/* 0040CA60 8E290050 */  lw    $t1, 0x50($s1)
/* 0040CA64 8F9983A4 */  lw    $t9, %call16(cannot_trap)($gp)
/* 0040CA68 8D240000 */  lw    $a0, ($t1)
/* 0040CA6C 0320F809 */  jalr  $t9
/* 0040CA70 AFA40000 */   sw    $a0, ($sp)
/* 0040CA74 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0040CA78 0002182B */  sltu  $v1, $zero, $v0
.L0040CA7C:
/* 0040CA7C 00601025 */  move  $v0, $v1
.L0040CA80:
/* 0040CA80 1040006E */  beqz  $v0, .L0040CC3C
/* 0040CA84 00000000 */   nop   
/* 0040CA88 8E8E0000 */  lw    $t6, ($s4)
/* 0040CA8C 8E6B0000 */  lw    $t3, ($s3)
/* 0040CA90 01D50019 */  multu $t6, $s5
/* 0040CA94 8E2F0054 */  lw    $t7, 0x54($s1)
/* 0040CA98 8E0D0054 */  lw    $t5, 0x54($s0)
/* 0040CA9C 000F4082 */  srl   $t0, $t7, 2
/* 0040CAA0 00085080 */  sll   $t2, $t0, 2
/* 0040CAA4 000D7082 */  srl   $t6, $t5, 2
/* 0040CAA8 0000C812 */  mflo  $t9
/* 0040CAAC 0179C021 */  addu  $t8, $t3, $t9
/* 0040CAB0 8F020000 */  lw    $v0, ($t8)
/* 0040CAB4 9618004E */  lhu   $t8, 0x4e($s0)
/* 0040CAB8 000E5880 */  sll   $t3, $t6, 2
/* 0040CABC 004A6021 */  addu  $t4, $v0, $t2
/* 0040CAC0 8D890000 */  lw    $t1, ($t4)
/* 0040CAC4 004BC821 */  addu  $t9, $v0, $t3
/* 0040CAC8 00187880 */  sll   $t7, $t8, 2
/* 0040CACC 032F4021 */  addu  $t0, $t9, $t7
/* 0040CAD0 AD09FFFC */  sw    $t1, -4($t0)
/* 0040CAD4 8E8C0000 */  lw    $t4, ($s4)
/* 0040CAD8 8E6A0000 */  lw    $t2, ($s3)
/* 0040CADC 01950019 */  multu $t4, $s5
/* 0040CAE0 8E0B0054 */  lw    $t3, 0x54($s0)
/* 0040CAE4 9609004E */  lhu   $t1, 0x4e($s0)
/* 0040CAE8 000BC082 */  srl   $t8, $t3, 2
/* 0040CAEC 0018C880 */  sll   $t9, $t8, 2
/* 0040CAF0 00094080 */  sll   $t0, $t1, 2
/* 0040CAF4 93C40000 */  lbu   $a0, ($fp)
/* 0040CAF8 00006812 */  mflo  $t5
/* 0040CAFC 014D1821 */  addu  $v1, $t2, $t5
/* 0040CB00 8C6E0000 */  lw    $t6, ($v1)
/* 0040CB04 00000000 */  nop   
/* 0040CB08 01D97821 */  addu  $t7, $t6, $t9
/* 0040CB0C 01E86021 */  addu  $t4, $t7, $t0
/* 0040CB10 8D8AFFF8 */  lw    $t2, -8($t4)
/* 0040CB14 1080000D */  beqz  $a0, .L0040CB4C
/* 0040CB18 AFAA0050 */   sw    $t2, 0x50($sp)
/* 0040CB1C 000A5E00 */  sll   $t3, $t2, 0x18
/* 0040CB20 000A7200 */  sll   $t6, $t2, 8
/* 0040CB24 000A7A02 */  srl   $t7, $t2, 8
/* 0040CB28 01D7C824 */  and   $t9, $t6, $s7
/* 0040CB2C 0176C024 */  and   $t8, $t3, $s6
/* 0040CB30 03194825 */  or    $t1, $t8, $t9
/* 0040CB34 31E8FF00 */  andi  $t0, $t7, 0xff00
/* 0040CB38 000A5602 */  srl   $t2, $t2, 0x18
/* 0040CB3C 314B00FF */  andi  $t3, $t2, 0xff
/* 0040CB40 01286025 */  or    $t4, $t1, $t0
/* 0040CB44 018B7025 */  or    $t6, $t4, $t3
/* 0040CB48 AFAE0050 */  sw    $t6, 0x50($sp)
.L0040CB4C:
/* 0040CB4C 87B80052 */  lh    $t8, 0x52($sp)
/* 0040CB50 924F0000 */  lbu   $t7, ($s2)
/* 0040CB54 27190001 */  addiu $t9, $t8, 1
/* 0040CB58 29E10002 */  slti  $at, $t7, 2
/* 0040CB5C 1420001D */  bnez  $at, .L0040CBD4
/* 0040CB60 A7B90052 */   sh    $t9, 0x52($sp)
/* 0040CB64 8E090044 */  lw    $t1, 0x44($s0)
/* 0040CB68 8FAA0050 */  lw    $t2, 0x50($sp)
/* 0040CB6C 00096EC0 */  sll   $t5, $t1, 0x1b
/* 0040CB70 05A00018 */  bltz  $t5, .L0040CBD4
/* 0040CB74 000A6682 */   srl   $t4, $t2, 0x1a
/* 0040CB78 24010001 */  li    $at, 1
/* 0040CB7C 11810005 */  beq   $t4, $at, .L0040CB94
/* 0040CB80 24010010 */   li    $at, 16
/* 0040CB84 11810003 */  beq   $t4, $at, .L0040CB94
/* 0040CB88 24010011 */   li    $at, 17
/* 0040CB8C 1581000A */  bne   $t4, $at, .L0040CBB8
/* 0040CB90 8FAD0050 */   lw    $t5, 0x50($sp)
.L0040CB94:
/* 0040CB94 97AE0050 */  lhu   $t6, 0x50($sp)
/* 0040CB98 93AF0051 */  lbu   $t7, 0x51($sp)
/* 0040CB9C 35D80002 */  ori   $t8, $t6, 2
/* 0040CBA0 3319001F */  andi  $t9, $t8, 0x1f
/* 0040CBA4 31E9FFE0 */  andi  $t1, $t7, 0xffe0
/* 0040CBA8 03294025 */  or    $t0, $t9, $t1
/* 0040CBAC 10000009 */  b     .L0040CBD4
/* 0040CBB0 A3A80051 */   sb    $t0, 0x51($sp)
/* 0040CBB4 8FAD0050 */  lw    $t5, 0x50($sp)
.L0040CBB8:
/* 0040CBB8 93B80050 */  lbu   $t8, 0x50($sp)
/* 0040CBBC 000D5682 */  srl   $t2, $t5, 0x1a
/* 0040CBC0 354C0010 */  ori   $t4, $t2, 0x10
/* 0040CBC4 000C7080 */  sll   $t6, $t4, 2
/* 0040CBC8 330FFF03 */  andi  $t7, $t8, 0xff03
/* 0040CBCC 01CFC825 */  or    $t9, $t6, $t7
/* 0040CBD0 A3B90050 */  sb    $t9, 0x50($sp)
.L0040CBD4:
/* 0040CBD4 1080000F */  beqz  $a0, .L0040CC14
/* 0040CBD8 00000000 */   nop   
/* 0040CBDC 8FA90050 */  lw    $t1, 0x50($sp)
/* 0040CBE0 00000000 */  nop   
/* 0040CBE4 00094600 */  sll   $t0, $t1, 0x18
/* 0040CBE8 00095200 */  sll   $t2, $t1, 8
/* 0040CBEC 01576024 */  and   $t4, $t2, $s7
/* 0040CBF0 01166824 */  and   $t5, $t0, $s6
/* 0040CBF4 0009C202 */  srl   $t8, $t1, 8
/* 0040CBF8 330EFF00 */  andi  $t6, $t8, 0xff00
/* 0040CBFC 01AC5825 */  or    $t3, $t5, $t4
/* 0040CC00 0009CE02 */  srl   $t9, $t1, 0x18
/* 0040CC04 332800FF */  andi  $t0, $t9, 0xff
/* 0040CC08 016E7825 */  or    $t7, $t3, $t6
/* 0040CC0C 01E85025 */  or    $t2, $t7, $t0
/* 0040CC10 AFAA0050 */  sw    $t2, 0x50($sp)
.L0040CC14:
/* 0040CC14 8E180054 */  lw    $t8, 0x54($s0)
/* 0040CC18 8C6C0000 */  lw    $t4, ($v1)
/* 0040CC1C 9619004E */  lhu   $t9, 0x4e($s0)
/* 0040CC20 00185882 */  srl   $t3, $t8, 2
/* 0040CC24 000B7080 */  sll   $t6, $t3, 2
/* 0040CC28 8FAD0050 */  lw    $t5, 0x50($sp)
/* 0040CC2C 018E4821 */  addu  $t1, $t4, $t6
/* 0040CC30 00197880 */  sll   $t7, $t9, 2
/* 0040CC34 012F4021 */  addu  $t0, $t1, $t7
/* 0040CC38 AD0DFFF8 */  sw    $t5, -8($t0)
.L0040CC3C:
/* 0040CC3C 920A0046 */  lbu   $t2, 0x46($s0)
/* 0040CC40 00000000 */  nop   
/* 0040CC44 3158FFFE */  andi  $t8, $t2, 0xfffe
/* 0040CC48 A2180046 */  sb    $t8, 0x46($s0)
/* 0040CC4C 8E100008 */  lw    $s0, 8($s0)
/* 0040CC50 00000000 */  nop   
/* 0040CC54 1600FF3F */  bnez  $s0, .L0040C954
/* 0040CC58 00000000 */   nop   
.L0040CC5C:
/* 0040CC5C 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0040CC60 8FB00014 */  lw    $s0, 0x14($sp)
/* 0040CC64 8FB10018 */  lw    $s1, 0x18($sp)
/* 0040CC68 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0040CC6C 8FB30020 */  lw    $s3, 0x20($sp)
/* 0040CC70 8FB40024 */  lw    $s4, 0x24($sp)
/* 0040CC74 8FB50028 */  lw    $s5, 0x28($sp)
/* 0040CC78 8FB6002C */  lw    $s6, 0x2c($sp)
/* 0040CC7C 8FB70030 */  lw    $s7, 0x30($sp)
/* 0040CC80 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0040CC84 03E00008 */  jr    $ra
/* 0040CC88 27BD0078 */   addiu $sp, $sp, 0x78

/* 0040CC8C 00000000 */  nop   
    .type do_branch_opt, @function
    .size do_branch_opt, .-do_branch_opt
    .end do_branch_opt

    .type func_0040CC90, @function
func_0040CC90:
    # 0040CC98 func_0040CC98
/* 0040CC90 03E00008 */  jr    $ra
/* 0040CC94 00000000 */   nop   

    .type func_0040CC98, @function
func_0040CC98:
    # 0040D020 call_as0
/* 0040CC98 3C1C0FC2 */  .cpload $t9
/* 0040CC9C 279CD5C8 */  
/* 0040CCA0 0399E021 */  
/* 0040CCA4 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0040CCA8 8F8E8B08 */  lw     $t6, %got(verbose)($gp)
/* 0040CCAC AFBF0024 */  sw    $ra, 0x24($sp)
/* 0040CCB0 91CE0000 */  lbu   $t6, ($t6)
/* 0040CCB4 AFBC0020 */  sw    $gp, 0x20($sp)
/* 0040CCB8 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0040CCBC AFB10018 */  sw    $s1, 0x18($sp)
/* 0040CCC0 AFB00014 */  sw    $s0, 0x14($sp)
/* 0040CCC4 AFA40048 */  sw    $a0, 0x48($sp)
/* 0040CCC8 11C00023 */  beqz  $t6, .L0040CD58
/* 0040CCCC AFA5004C */   sw    $a1, 0x4c($sp)
/* 0040CCD0 8F9280AC */  lw     $s2, %got(__iob)($gp)
/* 0040CCD4 8F85806C */  lw    $a1, %got(RO_10012290)($gp)
/* 0040CCD8 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 0040CCDC 8FA60048 */  lw    $a2, 0x48($sp)
/* 0040CCE0 26520020 */  addiu $s2, $s2, 0x20
/* 0040CCE4 02402025 */  move  $a0, $s2
/* 0040CCE8 0320F809 */  jalr  $t9
/* 0040CCEC 24A52290 */   addiu $a1, %lo(RO_10012290) # addiu $a1, $a1, 0x2290
/* 0040CCF0 8FAF004C */  lw    $t7, 0x4c($sp)
/* 0040CCF4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040CCF8 8DF80004 */  lw    $t8, 4($t7)
/* 0040CCFC 25F00004 */  addiu $s0, $t7, 4
/* 0040CD00 1300000E */  beqz  $t8, .L0040CD3C
/* 0040CD04 00000000 */   nop   
/* 0040CD08 8E110000 */  lw    $s1, ($s0)
/* 0040CD0C 00000000 */  nop   
.L0040CD10:
/* 0040CD10 8F85806C */  lw    $a1, %got(RO_10012294)($gp)
/* 0040CD14 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 0040CD18 02402025 */  move  $a0, $s2
/* 0040CD1C 02203025 */  move  $a2, $s1
/* 0040CD20 26100004 */  addiu $s0, $s0, 4
/* 0040CD24 0320F809 */  jalr  $t9
/* 0040CD28 24A52294 */   addiu $a1, %lo(RO_10012294) # addiu $a1, $a1, 0x2294
/* 0040CD2C 8E110000 */  lw    $s1, ($s0)
/* 0040CD30 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040CD34 1620FFF6 */  bnez  $s1, .L0040CD10
/* 0040CD38 00000000 */   nop   
.L0040CD3C:
/* 0040CD3C 8F85806C */  lw    $a1, %got(RO_10012298)($gp)
/* 0040CD40 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 0040CD44 02402025 */  move  $a0, $s2
/* 0040CD48 0320F809 */  jalr  $t9
/* 0040CD4C 24A52298 */   addiu $a1, %lo(RO_10012298) # addiu $a1, $a1, 0x2298
/* 0040CD50 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040CD54 00000000 */  nop   
.L0040CD58:
/* 0040CD58 8F9280AC */  lw     $s2, %got(__iob)($gp)
/* 0040CD5C 8F9981F4 */  lw    $t9, %call16(fork)($gp)
/* 0040CD60 26520020 */  addiu $s2, $s2, 0x20
/* 0040CD64 0320F809 */  jalr  $t9
/* 0040CD68 00000000 */   nop   
/* 0040CD6C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040CD70 2411FFFF */  li    $s1, -1
/* 0040CD74 1451001B */  bne   $v0, $s1, .L0040CDE4
/* 0040CD78 00408025 */   move  $s0, $v0
/* 0040CD7C 8F85806C */  lw    $a1, %got(RO_1001229C)($gp)
/* 0040CD80 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 0040CD84 02402025 */  move  $a0, $s2
/* 0040CD88 0320F809 */  jalr  $t9
/* 0040CD8C 24A5229C */   addiu $a1, %lo(RO_1001229C) # addiu $a1, $a1, 0x229c
/* 0040CD90 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040CD94 02402025 */  move  $a0, $s2
/* 0040CD98 8F8380B8 */  lw     $v1, %got(errno)($gp)
/* 0040CD9C 8F9980A8 */  lw     $t9, %got(sys_nerr)($gp)
/* 0040CDA0 8C630000 */  lw    $v1, ($v1)
/* 0040CDA4 8F390000 */  lw    $t9, ($t9)
/* 0040CDA8 00034080 */  sll   $t0, $v1, 2
/* 0040CDAC 0079082A */  slt   $at, $v1, $t9
/* 0040CDB0 1020000A */  beqz  $at, .L0040CDDC
/* 0040CDB4 00000000 */   nop   
/* 0040CDB8 8F8980A4 */  lw     $t1, %got(sys_errlist)($gp)
/* 0040CDBC 8F85806C */  lw    $a1, %got(RO_100122B0)($gp)
/* 0040CDC0 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 0040CDC4 01095021 */  addu  $t2, $t0, $t1
/* 0040CDC8 8D460000 */  lw    $a2, ($t2)
/* 0040CDCC 0320F809 */  jalr  $t9
/* 0040CDD0 24A522B0 */   addiu $a1, %lo(RO_100122B0) # addiu $a1, $a1, 0x22b0
/* 0040CDD4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040CDD8 00000000 */  nop   
.L0040CDDC:
/* 0040CDDC 1000008A */  b     .L0040D008
/* 0040CDE0 2402FFFF */   li    $v0, -1
.L0040CDE4:
/* 0040CDE4 1440002E */  bnez  $v0, .L0040CEA0
/* 0040CDE8 00000000 */   nop   
/* 0040CDEC 8F9981FC */  lw    $t9, %call16(execvp)($gp)
/* 0040CDF0 8FA40048 */  lw    $a0, 0x48($sp)
/* 0040CDF4 8FA5004C */  lw    $a1, 0x4c($sp)
/* 0040CDF8 0320F809 */  jalr  $t9
/* 0040CDFC 00000000 */   nop   
/* 0040CE00 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040CE04 8FA60048 */  lw    $a2, 0x48($sp)
/* 0040CE08 8F85806C */  lw    $a1, %got(RO_100122B4)($gp)
/* 0040CE0C 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 0040CE10 02402025 */  move  $a0, $s2
/* 0040CE14 0320F809 */  jalr  $t9
/* 0040CE18 24A522B4 */   addiu $a1, %lo(RO_100122B4) # addiu $a1, $a1, 0x22b4
/* 0040CE1C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040CE20 02402025 */  move  $a0, $s2
/* 0040CE24 8F8380B8 */  lw     $v1, %got(errno)($gp)
/* 0040CE28 8F8B80A8 */  lw     $t3, %got(sys_nerr)($gp)
/* 0040CE2C 8C630000 */  lw    $v1, ($v1)
/* 0040CE30 8D6B0000 */  lw    $t3, ($t3)
/* 0040CE34 00036080 */  sll   $t4, $v1, 2
/* 0040CE38 006B082A */  slt   $at, $v1, $t3
/* 0040CE3C 1020000A */  beqz  $at, .L0040CE68
/* 0040CE40 00000000 */   nop   
/* 0040CE44 8F8D80A4 */  lw     $t5, %got(sys_errlist)($gp)
/* 0040CE48 8F85806C */  lw    $a1, %got(RO_100122CC)($gp)
/* 0040CE4C 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 0040CE50 018D7021 */  addu  $t6, $t4, $t5
/* 0040CE54 8DC60000 */  lw    $a2, ($t6)
/* 0040CE58 0320F809 */  jalr  $t9
/* 0040CE5C 24A522CC */   addiu $a1, %lo(RO_100122CC) # addiu $a1, $a1, 0x22cc
/* 0040CE60 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040CE64 00000000 */  nop   
.L0040CE68:
/* 0040CE68 8F998018 */  lw    $t9, %got(func_0040CC90)($gp)
/* 0040CE6C 00000000 */  nop   
/* 0040CE70 2739CC90 */  addiu $t9, %lo(func_0040CC90) # addiu $t9, $t9, -0x3370
/* 0040CE74 0320F809 */  jalr  $t9
/* 0040CE78 00000000 */   nop   
/* 0040CE7C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040CE80 24040001 */  li    $a0, 1
/* 0040CE84 8F998688 */  lw    $t9, %call16(exit)($gp)
/* 0040CE88 00000000 */  nop   
/* 0040CE8C 0320F809 */  jalr  $t9
/* 0040CE90 00000000 */   nop   
/* 0040CE94 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040CE98 1000005C */  b     .L0040D00C
/* 0040CE9C 8FBF0024 */   lw    $ra, 0x24($sp)
.L0040CEA0:
/* 0040CEA0 8F998198 */  lw    $t9, %call16(wait)($gp)
/* 0040CEA4 27A4002C */  addiu $a0, $sp, 0x2c
/* 0040CEA8 0320F809 */  jalr  $t9
/* 0040CEAC 00000000 */   nop   
/* 0040CEB0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040CEB4 1050000C */  beq   $v0, $s0, .L0040CEE8
/* 0040CEB8 00000000 */   nop   
.L0040CEBC:
/* 0040CEBC 14510003 */  bne   $v0, $s1, .L0040CECC
/* 0040CEC0 00000000 */   nop   
/* 0040CEC4 10000050 */  b     .L0040D008
/* 0040CEC8 2402FFFF */   li    $v0, -1
.L0040CECC:
/* 0040CECC 8F998198 */  lw    $t9, %call16(wait)($gp)
/* 0040CED0 27A4002C */  addiu $a0, $sp, 0x2c
/* 0040CED4 0320F809 */  jalr  $t9
/* 0040CED8 00000000 */   nop   
/* 0040CEDC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040CEE0 1450FFF6 */  bne   $v0, $s0, .L0040CEBC
/* 0040CEE4 00000000 */   nop   
.L0040CEE8:
/* 0040CEE8 8FA2002C */  lw    $v0, 0x2c($sp)
/* 0040CEEC 24010002 */  li    $at, 2
/* 0040CEF0 304F00FF */  andi  $t7, $v0, 0xff
/* 0040CEF4 11E00030 */  beqz  $t7, .L0040CFB8
/* 0040CEF8 01E08025 */   move  $s0, $t7
/* 0040CEFC 11E1002E */  beq   $t7, $at, .L0040CFB8
/* 0040CF00 02402025 */   move  $a0, $s2
/* 0040CF04 8F85806C */  lw    $a1, %got(RO_100122D0)($gp)
/* 0040CF08 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 0040CF0C 8FA60048 */  lw    $a2, 0x48($sp)
/* 0040CF10 0320F809 */  jalr  $t9
/* 0040CF14 24A522D0 */   addiu $a1, %lo(RO_100122D0) # addiu $a1, $a1, 0x22d0
/* 0040CF18 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040CF1C 02002825 */  move  $a1, $s0
/* 0040CF20 8F84806C */  lw    $a0, %got(RO_100122E4)($gp)
/* 0040CF24 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0040CF28 248422E4 */  addiu $a0, %lo(RO_100122E4) # addiu $a0, $a0, 0x22e4
/* 0040CF2C 0320F809 */  jalr  $t9
/* 0040CF30 00000000 */   nop   
/* 0040CF34 8FB8002C */  lw    $t8, 0x2c($sp)
/* 0040CF38 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040CF3C 33190080 */  andi  $t9, $t8, 0x80
/* 0040CF40 13200009 */  beqz  $t9, .L0040CF68
/* 0040CF44 00000000 */   nop   
/* 0040CF48 8F85806C */  lw    $a1, %got(RO_100122F0)($gp)
/* 0040CF4C 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 0040CF50 02402025 */  move  $a0, $s2
/* 0040CF54 0320F809 */  jalr  $t9
/* 0040CF58 24A522F0 */   addiu $a1, %lo(RO_100122F0) # addiu $a1, $a1, 0x22f0
/* 0040CF5C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040CF60 10000008 */  b     .L0040CF84
/* 0040CF64 00000000 */   nop   
.L0040CF68:
/* 0040CF68 8F85806C */  lw    $a1, %got(RO_10012300)($gp)
/* 0040CF6C 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 0040CF70 02402025 */  move  $a0, $s2
/* 0040CF74 0320F809 */  jalr  $t9
/* 0040CF78 24A52300 */   addiu $a1, %lo(RO_10012300) # addiu $a1, $a1, 0x2300
/* 0040CF7C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040CF80 00000000 */  nop   
.L0040CF84:
/* 0040CF84 8F998018 */  lw    $t9, %got(func_0040CC90)($gp)
/* 0040CF88 00000000 */  nop   
/* 0040CF8C 2739CC90 */  addiu $t9, %lo(func_0040CC90) # addiu $t9, $t9, -0x3370
/* 0040CF90 0320F809 */  jalr  $t9
/* 0040CF94 00000000 */   nop   
/* 0040CF98 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040CF9C 02002025 */  move  $a0, $s0
/* 0040CFA0 8F998688 */  lw    $t9, %call16(exit)($gp)
/* 0040CFA4 00000000 */  nop   
/* 0040CFA8 0320F809 */  jalr  $t9
/* 0040CFAC 00000000 */   nop   
/* 0040CFB0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040CFB4 00000000 */  nop   
.L0040CFB8:
/* 0040CFB8 24010002 */  li    $at, 2
/* 0040CFBC 1601000F */  bne   $s0, $at, .L0040CFFC
/* 0040CFC0 8FA2002C */   lw    $v0, 0x2c($sp)
/* 0040CFC4 8F998018 */  lw    $t9, %got(func_0040CC90)($gp)
/* 0040CFC8 00000000 */  nop   
/* 0040CFCC 2739CC90 */  addiu $t9, %lo(func_0040CC90) # addiu $t9, $t9, -0x3370
/* 0040CFD0 0320F809 */  jalr  $t9
/* 0040CFD4 00000000 */   nop   
/* 0040CFD8 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040CFDC 24040003 */  li    $a0, 3
/* 0040CFE0 8F998688 */  lw    $t9, %call16(exit)($gp)
/* 0040CFE4 00000000 */  nop   
/* 0040CFE8 0320F809 */  jalr  $t9
/* 0040CFEC 00000000 */   nop   
/* 0040CFF0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040CFF4 00000000 */  nop   
/* 0040CFF8 8FA2002C */  lw    $v0, 0x2c($sp)
.L0040CFFC:
/* 0040CFFC 00000000 */  nop   
/* 0040D000 3048FF00 */  andi  $t0, $v0, 0xff00
/* 0040D004 00081202 */  srl   $v0, $t0, 8
.L0040D008:
/* 0040D008 8FBF0024 */  lw    $ra, 0x24($sp)
.L0040D00C:
/* 0040D00C 8FB00014 */  lw    $s0, 0x14($sp)
/* 0040D010 8FB10018 */  lw    $s1, 0x18($sp)
/* 0040D014 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0040D018 03E00008 */  jr    $ra
/* 0040D01C 27BD0048 */   addiu $sp, $sp, 0x48

glabel call_as0
    .ent call_as0
    # 00450DAC parsecia
/* 0040D020 3C1C0FC2 */  .cpload $t9
/* 0040D024 279CD240 */  
/* 0040D028 0399E021 */  
/* 0040D02C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0040D030 8F8E8B0C */  lw     $t6, %got(keepflag)($gp)
/* 0040D034 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0040D038 91CE0000 */  lbu   $t6, ($t6)
/* 0040D03C AFBC0018 */  sw    $gp, 0x18($sp)
/* 0040D040 AFB00014 */  sw    $s0, 0x14($sp)
/* 0040D044 AFA40040 */  sw    $a0, 0x40($sp)
/* 0040D048 AFA50044 */  sw    $a1, 0x44($sp)
/* 0040D04C 15C00007 */  bnez  $t6, .L0040D06C
/* 0040D050 AFA60048 */   sw    $a2, 0x48($sp)
/* 0040D054 8F9981A4 */  lw    $t9, %call16(tmpnam)($gp)
/* 0040D058 00A02025 */  move  $a0, $a1
/* 0040D05C 0320F809 */  jalr  $t9
/* 0040D060 00000000 */   nop   
/* 0040D064 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D068 00000000 */  nop   
.L0040D06C:
/* 0040D06C 8F998018 */  lw    $t9, %got(func_0040D6EC)($gp)
/* 0040D070 8F85806C */  lw    $a1, %got(RO_10012304)($gp)
/* 0040D074 8FA40044 */  lw    $a0, 0x44($sp)
/* 0040D078 2739D6EC */  addiu $t9, %lo(func_0040D6EC) # addiu $t9, $t9, -0x2914
/* 0040D07C 0320F809 */  jalr  $t9
/* 0040D080 24A52304 */   addiu $a1, %lo(RO_10012304) # addiu $a1, $a1, 0x2304
/* 0040D084 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D088 00402025 */  move  $a0, $v0
/* 0040D08C 8F85806C */  lw    $a1, %got(RO_10012308)($gp)
/* 0040D090 8F998184 */  lw    $t9, %call16(fopen)($gp)
/* 0040D094 24A52308 */  addiu $a1, %lo(RO_10012308) # addiu $a1, $a1, 0x2308
/* 0040D098 0320F809 */  jalr  $t9
/* 0040D09C 00000000 */   nop   
/* 0040D0A0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D0A4 00408025 */  move  $s0, $v0
/* 0040D0A8 8F8F8B08 */  lw     $t7, %got(verbose)($gp)
/* 0040D0AC 00000000 */  nop   
/* 0040D0B0 91EF0000 */  lbu   $t7, ($t7)
/* 0040D0B4 00000000 */  nop   
/* 0040D0B8 11E0000A */  beqz  $t7, .L0040D0E4
/* 0040D0BC 00000000 */   nop   
/* 0040D0C0 8F8480AC */  lw     $a0, %got(__iob)($gp)
/* 0040D0C4 8F85806C */  lw    $a1, %got(RO_1001230C)($gp)
/* 0040D0C8 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 0040D0CC 8FA60048 */  lw    $a2, 0x48($sp)
/* 0040D0D0 24840020 */  addiu $a0, $a0, 0x20
/* 0040D0D4 0320F809 */  jalr  $t9
/* 0040D0D8 24A5230C */   addiu $a1, %lo(RO_1001230C) # addiu $a1, $a1, 0x230c
/* 0040D0DC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D0E0 00000000 */  nop   
.L0040D0E4:
/* 0040D0E4 8F85806C */  lw    $a1, %got(RO_10012320)($gp)
/* 0040D0E8 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 0040D0EC 8FA60048 */  lw    $a2, 0x48($sp)
/* 0040D0F0 02002025 */  move  $a0, $s0
/* 0040D0F4 0320F809 */  jalr  $t9
/* 0040D0F8 24A52320 */   addiu $a1, %lo(RO_10012320) # addiu $a1, $a1, 0x2320
/* 0040D0FC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D100 02002025 */  move  $a0, $s0
/* 0040D104 8F998188 */  lw    $t9, %call16(fclose)($gp)
/* 0040D108 00000000 */  nop   
/* 0040D10C 0320F809 */  jalr  $t9
/* 0040D110 00000000 */   nop   
/* 0040D114 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D118 24040050 */  li    $a0, 80
/* 0040D11C 8F9988C0 */  lw    $t9, %call16(xmalloc)($gp)
/* 0040D120 00000000 */  nop   
/* 0040D124 0320F809 */  jalr  $t9
/* 0040D128 00000000 */   nop   
/* 0040D12C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D130 8FA40040 */  lw    $a0, 0x40($sp)
/* 0040D134 8F99818C */  lw    $t9, %call16(strlen)($gp)
/* 0040D138 AFA2003C */  sw    $v0, 0x3c($sp)
/* 0040D13C 0320F809 */  jalr  $t9
/* 0040D140 00000000 */   nop   
/* 0040D144 8FB90040 */  lw    $t9, 0x40($sp)
/* 0040D148 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D14C 03224021 */  addu  $t0, $t9, $v0
/* 0040D150 8F998018 */  lw    $t9, %got(func_0040D658)($gp)
/* 0040D154 24180030 */  li    $t8, 48
/* 0040D158 A118FFFF */  sb    $t8, -1($t0)
/* 0040D15C 8FA40040 */  lw    $a0, 0x40($sp)
/* 0040D160 2739D658 */  addiu $t9, %lo(func_0040D658) # addiu $t9, $t9, -0x29a8
/* 0040D164 0320F809 */  jalr  $t9
/* 0040D168 00000000 */   nop   
/* 0040D16C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D170 8FA9003C */  lw    $t1, 0x3c($sp)
/* 0040D174 8F8A8B08 */  lw     $t2, %got(verbose)($gp)
/* 0040D178 AD220000 */  sw    $v0, ($t1)
/* 0040D17C 914A0000 */  lbu   $t2, ($t2)
/* 0040D180 24030001 */  li    $v1, 1
/* 0040D184 1140000E */  beqz  $t2, .L0040D1C0
/* 0040D188 00000000 */   nop   
/* 0040D18C 8F998018 */  lw    $t9, %got(func_0040D658)($gp)
/* 0040D190 8F84806C */  lw    $a0, %got(RO_10012324)($gp)
/* 0040D194 2739D658 */  addiu $t9, %lo(func_0040D658) # addiu $t9, $t9, -0x29a8
/* 0040D198 AFA30038 */  sw    $v1, 0x38($sp)
/* 0040D19C 0320F809 */  jalr  $t9
/* 0040D1A0 24842324 */   addiu $a0, %lo(RO_10012324) # addiu $a0, $a0, 0x2324
/* 0040D1A4 8FA30038 */  lw    $v1, 0x38($sp)
/* 0040D1A8 8FAB003C */  lw    $t3, 0x3c($sp)
/* 0040D1AC 00036080 */  sll   $t4, $v1, 2
/* 0040D1B0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D1B4 016C6821 */  addu  $t5, $t3, $t4
/* 0040D1B8 ADA20000 */  sw    $v0, ($t5)
/* 0040D1BC 24630001 */  addiu $v1, $v1, 1
.L0040D1C0:
/* 0040D1C0 8F998018 */  lw    $t9, %got(func_0040D658)($gp)
/* 0040D1C4 8F84806C */  lw    $a0, %got(RO_10012328)($gp)
/* 0040D1C8 8FAE003C */  lw    $t6, 0x3c($sp)
/* 0040D1CC 00037880 */  sll   $t7, $v1, 2
/* 0040D1D0 2739D658 */  addiu $t9, %lo(func_0040D658) # addiu $t9, $t9, -0x29a8
/* 0040D1D4 24842328 */  addiu $a0, %lo(RO_10012328) # addiu $a0, $a0, 0x2328
/* 0040D1D8 0320F809 */  jalr  $t9
/* 0040D1DC 01CF8021 */   addu  $s0, $t6, $t7
/* 0040D1E0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D1E4 AE020000 */  sw    $v0, ($s0)
/* 0040D1E8 8F868B10 */  lw     $a2, %got(gprelsize)($gp)
/* 0040D1EC 8F9980CC */  lw    $t9, %call16(sprintf)($gp)
/* 0040D1F0 8F85806C */  lw    $a1, %got(RO_1001232C)($gp)
/* 0040D1F4 8CC60000 */  lw    $a2, ($a2)
/* 0040D1F8 26100004 */  addiu $s0, $s0, 4
/* 0040D1FC 27A40034 */  addiu $a0, $sp, 0x34
/* 0040D200 0320F809 */  jalr  $t9
/* 0040D204 24A5232C */   addiu $a1, %lo(RO_1001232C) # addiu $a1, $a1, 0x232c
/* 0040D208 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D20C 27A40034 */  addiu $a0, $sp, 0x34
/* 0040D210 8F998018 */  lw    $t9, %got(func_0040D658)($gp)
/* 0040D214 00000000 */  nop   
/* 0040D218 2739D658 */  addiu $t9, %lo(func_0040D658) # addiu $t9, $t9, -0x29a8
/* 0040D21C 0320F809 */  jalr  $t9
/* 0040D220 00000000 */   nop   
/* 0040D224 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D228 AE020000 */  sw    $v0, ($s0)
/* 0040D22C 8F998B14 */  lw     $t9, %got(bigendian)($gp)
/* 0040D230 26100004 */  addiu $s0, $s0, 4
/* 0040D234 93390000 */  lbu   $t9, ($t9)
/* 0040D238 00000000 */  nop   
/* 0040D23C 1320000A */  beqz  $t9, .L0040D268
/* 0040D240 00000000 */   nop   
/* 0040D244 8F998018 */  lw    $t9, %got(func_0040D658)($gp)
/* 0040D248 8F84806C */  lw    $a0, %got(RO_10012330)($gp)
/* 0040D24C 2739D658 */  addiu $t9, %lo(func_0040D658) # addiu $t9, $t9, -0x29a8
/* 0040D250 0320F809 */  jalr  $t9
/* 0040D254 24842330 */   addiu $a0, %lo(RO_10012330) # addiu $a0, $a0, 0x2330
/* 0040D258 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D25C AE020000 */  sw    $v0, ($s0)
/* 0040D260 10000009 */  b     .L0040D288
/* 0040D264 26100004 */   addiu $s0, $s0, 4
.L0040D268:
/* 0040D268 8F998018 */  lw    $t9, %got(func_0040D658)($gp)
/* 0040D26C 8F84806C */  lw    $a0, %got(RO_10012334)($gp)
/* 0040D270 2739D658 */  addiu $t9, %lo(func_0040D658) # addiu $t9, $t9, -0x29a8
/* 0040D274 0320F809 */  jalr  $t9
/* 0040D278 24842334 */   addiu $a0, %lo(RO_10012334) # addiu $a0, $a0, 0x2334
/* 0040D27C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D280 AE020000 */  sw    $v0, ($s0)
/* 0040D284 26100004 */  addiu $s0, $s0, 4
.L0040D288:
/* 0040D288 8F868B18 */  lw     $a2, %got(debugflag)($gp)
/* 0040D28C 8F85806C */  lw    $a1, %got(RO_10012338)($gp)
/* 0040D290 8F9980CC */  lw    $t9, %call16(sprintf)($gp)
/* 0040D294 8CC60000 */  lw    $a2, ($a2)
/* 0040D298 27A40034 */  addiu $a0, $sp, 0x34
/* 0040D29C 0320F809 */  jalr  $t9
/* 0040D2A0 24A52338 */   addiu $a1, %lo(RO_10012338) # addiu $a1, $a1, 0x2338
/* 0040D2A4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D2A8 27A40034 */  addiu $a0, $sp, 0x34
/* 0040D2AC 8F998018 */  lw    $t9, %got(func_0040D658)($gp)
/* 0040D2B0 00000000 */  nop   
/* 0040D2B4 2739D658 */  addiu $t9, %lo(func_0040D658) # addiu $t9, $t9, -0x29a8
/* 0040D2B8 0320F809 */  jalr  $t9
/* 0040D2BC 00000000 */   nop   
/* 0040D2C0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D2C4 AE020000 */  sw    $v0, ($s0)
/* 0040D2C8 8F868B1C */  lw     $a2, %got(optflag)($gp)
/* 0040D2CC 8F9980CC */  lw    $t9, %call16(sprintf)($gp)
/* 0040D2D0 8F85806C */  lw    $a1, %got(RO_10012340)($gp)
/* 0040D2D4 8CC60000 */  lw    $a2, ($a2)
/* 0040D2D8 26100004 */  addiu $s0, $s0, 4
/* 0040D2DC 27A40034 */  addiu $a0, $sp, 0x34
/* 0040D2E0 0320F809 */  jalr  $t9
/* 0040D2E4 24A52340 */   addiu $a1, %lo(RO_10012340) # addiu $a1, $a1, 0x2340
/* 0040D2E8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D2EC 27A40034 */  addiu $a0, $sp, 0x34
/* 0040D2F0 8F998018 */  lw    $t9, %got(func_0040D658)($gp)
/* 0040D2F4 00000000 */  nop   
/* 0040D2F8 2739D658 */  addiu $t9, %lo(func_0040D658) # addiu $t9, $t9, -0x29a8
/* 0040D2FC 0320F809 */  jalr  $t9
/* 0040D300 00000000 */   nop   
/* 0040D304 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D308 AE020000 */  sw    $v0, ($s0)
/* 0040D30C 8F838B04 */  lw     $v1, %got(isa)($gp)
/* 0040D310 24010003 */  li    $at, 3
/* 0040D314 90630000 */  lbu   $v1, ($v1)
/* 0040D318 26100004 */  addiu $s0, $s0, 4
/* 0040D31C 1461000B */  bne   $v1, $at, .L0040D34C
/* 0040D320 24010002 */   li    $at, 2
/* 0040D324 8F998018 */  lw    $t9, %got(func_0040D658)($gp)
/* 0040D328 8F84806C */  lw    $a0, %got(RO_10012348)($gp)
/* 0040D32C 2739D658 */  addiu $t9, %lo(func_0040D658) # addiu $t9, $t9, -0x29a8
/* 0040D330 0320F809 */  jalr  $t9
/* 0040D334 24842348 */   addiu $a0, %lo(RO_10012348) # addiu $a0, $a0, 0x2348
/* 0040D338 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D33C AE020000 */  sw    $v0, ($s0)
/* 0040D340 10000018 */  b     .L0040D3A4
/* 0040D344 26100004 */   addiu $s0, $s0, 4
/* 0040D348 24010002 */  li    $at, 2
.L0040D34C:
/* 0040D34C 1461000B */  bne   $v1, $at, .L0040D37C
/* 0040D350 24010004 */   li    $at, 4
/* 0040D354 8F998018 */  lw    $t9, %got(func_0040D658)($gp)
/* 0040D358 8F84806C */  lw    $a0, %got(RO_10012350)($gp)
/* 0040D35C 2739D658 */  addiu $t9, %lo(func_0040D658) # addiu $t9, $t9, -0x29a8
/* 0040D360 0320F809 */  jalr  $t9
/* 0040D364 24842350 */   addiu $a0, %lo(RO_10012350) # addiu $a0, $a0, 0x2350
/* 0040D368 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D36C AE020000 */  sw    $v0, ($s0)
/* 0040D370 1000000C */  b     .L0040D3A4
/* 0040D374 26100004 */   addiu $s0, $s0, 4
/* 0040D378 24010004 */  li    $at, 4
.L0040D37C:
/* 0040D37C 14610009 */  bne   $v1, $at, .L0040D3A4
/* 0040D380 00000000 */   nop   
/* 0040D384 8F998018 */  lw    $t9, %got(func_0040D658)($gp)
/* 0040D388 8F84806C */  lw    $a0, %got(RO_10012358)($gp)
/* 0040D38C 2739D658 */  addiu $t9, %lo(func_0040D658) # addiu $t9, $t9, -0x29a8
/* 0040D390 0320F809 */  jalr  $t9
/* 0040D394 24842358 */   addiu $a0, %lo(RO_10012358) # addiu $a0, $a0, 0x2358
/* 0040D398 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D39C AE020000 */  sw    $v0, ($s0)
/* 0040D3A0 26100004 */  addiu $s0, $s0, 4
.L0040D3A4:
/* 0040D3A4 8F998018 */  lw    $t9, %got(func_0040D6EC)($gp)
/* 0040D3A8 8F85806C */  lw    $a1, %got(RO_10012360)($gp)
/* 0040D3AC 8FA40044 */  lw    $a0, 0x44($sp)
/* 0040D3B0 2739D6EC */  addiu $t9, %lo(func_0040D6EC) # addiu $t9, $t9, -0x2914
/* 0040D3B4 0320F809 */  jalr  $t9
/* 0040D3B8 24A52360 */   addiu $a1, %lo(RO_10012360) # addiu $a1, $a1, 0x2360
/* 0040D3BC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D3C0 AE020000 */  sw    $v0, ($s0)
/* 0040D3C4 8F998018 */  lw    $t9, %got(func_0040D658)($gp)
/* 0040D3C8 8F84806C */  lw    $a0, %got(RO_10012364)($gp)
/* 0040D3CC 2739D658 */  addiu $t9, %lo(func_0040D658) # addiu $t9, $t9, -0x29a8
/* 0040D3D0 26100004 */  addiu $s0, $s0, 4
/* 0040D3D4 0320F809 */  jalr  $t9
/* 0040D3D8 24842364 */   addiu $a0, %lo(RO_10012364) # addiu $a0, $a0, 0x2364
/* 0040D3DC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D3E0 AE020000 */  sw    $v0, ($s0)
/* 0040D3E4 8F998018 */  lw    $t9, %got(func_0040D6EC)($gp)
/* 0040D3E8 8F85806C */  lw    $a1, %got(RO_10012368)($gp)
/* 0040D3EC 8FA40044 */  lw    $a0, 0x44($sp)
/* 0040D3F0 2739D6EC */  addiu $t9, %lo(func_0040D6EC) # addiu $t9, $t9, -0x2914
/* 0040D3F4 26100004 */  addiu $s0, $s0, 4
/* 0040D3F8 0320F809 */  jalr  $t9
/* 0040D3FC 24A52368 */   addiu $a1, %lo(RO_10012368) # addiu $a1, $a1, 0x2368
/* 0040D400 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D404 AE020000 */  sw    $v0, ($s0)
/* 0040D408 8F998018 */  lw    $t9, %got(func_0040D658)($gp)
/* 0040D40C 8F84806C */  lw    $a0, %got(RO_1001236C)($gp)
/* 0040D410 2739D658 */  addiu $t9, %lo(func_0040D658) # addiu $t9, $t9, -0x29a8
/* 0040D414 26100004 */  addiu $s0, $s0, 4
/* 0040D418 0320F809 */  jalr  $t9
/* 0040D41C 2484236C */   addiu $a0, %lo(RO_1001236C) # addiu $a0, $a0, 0x236c
/* 0040D420 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D424 AE020000 */  sw    $v0, ($s0)
/* 0040D428 8F998018 */  lw    $t9, %got(func_0040D6EC)($gp)
/* 0040D42C 8F85806C */  lw    $a1, %got(RO_10012370)($gp)
/* 0040D430 8FA40044 */  lw    $a0, 0x44($sp)
/* 0040D434 2739D6EC */  addiu $t9, %lo(func_0040D6EC) # addiu $t9, $t9, -0x2914
/* 0040D438 26100004 */  addiu $s0, $s0, 4
/* 0040D43C 0320F809 */  jalr  $t9
/* 0040D440 24A52370 */   addiu $a1, %lo(RO_10012370) # addiu $a1, $a1, 0x2370
/* 0040D444 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D448 AE020000 */  sw    $v0, ($s0)
/* 0040D44C 8F998018 */  lw    $t9, %got(func_0040D658)($gp)
/* 0040D450 8F84806C */  lw    $a0, %got(RO_10012374)($gp)
/* 0040D454 2739D658 */  addiu $t9, %lo(func_0040D658) # addiu $t9, $t9, -0x29a8
/* 0040D458 26100004 */  addiu $s0, $s0, 4
/* 0040D45C 0320F809 */  jalr  $t9
/* 0040D460 24842374 */   addiu $a0, %lo(RO_10012374) # addiu $a0, $a0, 0x2374
/* 0040D464 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D468 AE020000 */  sw    $v0, ($s0)
/* 0040D46C 8F998018 */  lw    $t9, %got(func_0040D6EC)($gp)
/* 0040D470 8F85806C */  lw    $a1, %got(RO_10012380)($gp)
/* 0040D474 8FA40044 */  lw    $a0, 0x44($sp)
/* 0040D478 2739D6EC */  addiu $t9, %lo(func_0040D6EC) # addiu $t9, $t9, -0x2914
/* 0040D47C 26100004 */  addiu $s0, $s0, 4
/* 0040D480 0320F809 */  jalr  $t9
/* 0040D484 24A52380 */   addiu $a1, %lo(RO_10012380) # addiu $a1, $a1, 0x2380
/* 0040D488 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D48C AE020000 */  sw    $v0, ($s0)
/* 0040D490 8F998018 */  lw    $t9, %got(func_0040CC98)($gp)
/* 0040D494 AE000004 */  sw    $zero, 4($s0)
/* 0040D498 8FA5003C */  lw    $a1, 0x3c($sp)
/* 0040D49C 8FA40040 */  lw    $a0, 0x40($sp)
/* 0040D4A0 2739CC98 */  addiu $t9, %lo(func_0040CC98) # addiu $t9, $t9, -0x3368
/* 0040D4A4 0320F809 */  jalr  $t9
/* 0040D4A8 26100004 */   addiu $s0, $s0, 4
/* 0040D4AC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D4B0 10400008 */  beqz  $v0, .L0040D4D4
/* 0040D4B4 00408025 */   move  $s0, $v0
/* 0040D4B8 8F84806C */  lw    $a0, %got(RO_10012384)($gp)
/* 0040D4BC 8F998674 */  lw    $t9, %call16(postcerror)($gp)
/* 0040D4C0 00002825 */  move  $a1, $zero
/* 0040D4C4 0320F809 */  jalr  $t9
/* 0040D4C8 24842384 */   addiu $a0, %lo(RO_10012384) # addiu $a0, $a0, 0x2384
/* 0040D4CC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D4D0 00000000 */  nop   
.L0040D4D4:
/* 0040D4D4 8F998018 */  lw    $t9, %got(func_0040DB28)($gp)
/* 0040D4D8 00000000 */  nop   
/* 0040D4DC 2739DB28 */  addiu $t9, %lo(func_0040DB28) # addiu $t9, $t9, -0x24d8
/* 0040D4E0 0320F809 */  jalr  $t9
/* 0040D4E4 00000000 */   nop   
/* 0040D4E8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D4EC 8FA40044 */  lw    $a0, 0x44($sp)
/* 0040D4F0 8F998018 */  lw    $t9, %got(func_0040D6EC)($gp)
/* 0040D4F4 8F85806C */  lw    $a1, %got(RO_100123AC)($gp)
/* 0040D4F8 2739D6EC */  addiu $t9, %lo(func_0040D6EC) # addiu $t9, $t9, -0x2914
/* 0040D4FC 0320F809 */  jalr  $t9
/* 0040D500 24A523AC */   addiu $a1, %lo(RO_100123AC) # addiu $a1, $a1, 0x23ac
/* 0040D504 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D508 00402025 */  move  $a0, $v0
/* 0040D50C 8F998018 */  lw    $t9, %got(func_0040D784)($gp)
/* 0040D510 00000000 */  nop   
/* 0040D514 2739D784 */  addiu $t9, %lo(func_0040D784) # addiu $t9, $t9, -0x287c
/* 0040D518 0320F809 */  jalr  $t9
/* 0040D51C 00000000 */   nop   
/* 0040D520 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D524 00000000 */  nop   
/* 0040D528 8F998018 */  lw    $t9, %got(func_0040D940)($gp)
/* 0040D52C 00000000 */  nop   
/* 0040D530 2739D940 */  addiu $t9, %lo(func_0040D940) # addiu $t9, $t9, -0x26c0
/* 0040D534 0320F809 */  jalr  $t9
/* 0040D538 00000000 */   nop   
/* 0040D53C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D540 00000000 */  nop   
/* 0040D544 8F988B08 */  lw     $t8, %got(verbose)($gp)
/* 0040D548 00000000 */  nop   
/* 0040D54C 93180000 */  lbu   $t8, ($t8)
/* 0040D550 00000000 */  nop   
/* 0040D554 13000008 */  beqz  $t8, .L0040D578
/* 0040D558 00000000 */   nop   
/* 0040D55C 8F998018 */  lw    $t9, %got(func_0040DC54)($gp)
/* 0040D560 00000000 */  nop   
/* 0040D564 2739DC54 */  addiu $t9, %lo(func_0040DC54) # addiu $t9, $t9, -0x23ac
/* 0040D568 0320F809 */  jalr  $t9
/* 0040D56C 00000000 */   nop   
/* 0040D570 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D574 00000000 */  nop   
.L0040D578:
/* 0040D578 8F888B0C */  lw     $t0, %got(keepflag)($gp)
/* 0040D57C 8FA40044 */  lw    $a0, 0x44($sp)
/* 0040D580 91080000 */  lbu   $t0, ($t0)
/* 0040D584 00000000 */  nop   
/* 0040D588 15000028 */  bnez  $t0, .L0040D62C
/* 0040D58C 00000000 */   nop   
/* 0040D590 8F998018 */  lw    $t9, %got(func_0040D6EC)($gp)
/* 0040D594 8F85806C */  lw    $a1, %got(RO_100123B0)($gp)
/* 0040D598 2739D6EC */  addiu $t9, %lo(func_0040D6EC) # addiu $t9, $t9, -0x2914
/* 0040D59C 0320F809 */  jalr  $t9
/* 0040D5A0 24A523B0 */   addiu $a1, %lo(RO_100123B0) # addiu $a1, $a1, 0x23b0
/* 0040D5A4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D5A8 00402025 */  move  $a0, $v0
/* 0040D5AC 8F9981B4 */  lw    $t9, %call16(unlink)($gp)
/* 0040D5B0 00000000 */  nop   
/* 0040D5B4 0320F809 */  jalr  $t9
/* 0040D5B8 00000000 */   nop   
/* 0040D5BC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D5C0 8FA40044 */  lw    $a0, 0x44($sp)
/* 0040D5C4 8F998018 */  lw    $t9, %got(func_0040D6EC)($gp)
/* 0040D5C8 8F85806C */  lw    $a1, %got(RO_100123B4)($gp)
/* 0040D5CC 2739D6EC */  addiu $t9, %lo(func_0040D6EC) # addiu $t9, $t9, -0x2914
/* 0040D5D0 0320F809 */  jalr  $t9
/* 0040D5D4 24A523B4 */   addiu $a1, %lo(RO_100123B4) # addiu $a1, $a1, 0x23b4
/* 0040D5D8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D5DC 00402025 */  move  $a0, $v0
/* 0040D5E0 8F9981B4 */  lw    $t9, %call16(unlink)($gp)
/* 0040D5E4 00000000 */  nop   
/* 0040D5E8 0320F809 */  jalr  $t9
/* 0040D5EC 00000000 */   nop   
/* 0040D5F0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D5F4 8FA40044 */  lw    $a0, 0x44($sp)
/* 0040D5F8 8F998018 */  lw    $t9, %got(func_0040D6EC)($gp)
/* 0040D5FC 8F85806C */  lw    $a1, %got(RO_100123B8)($gp)
/* 0040D600 2739D6EC */  addiu $t9, %lo(func_0040D6EC) # addiu $t9, $t9, -0x2914
/* 0040D604 0320F809 */  jalr  $t9
/* 0040D608 24A523B8 */   addiu $a1, %lo(RO_100123B8) # addiu $a1, $a1, 0x23b8
/* 0040D60C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D610 00402025 */  move  $a0, $v0
/* 0040D614 8F9981B4 */  lw    $t9, %call16(unlink)($gp)
/* 0040D618 00000000 */  nop   
/* 0040D61C 0320F809 */  jalr  $t9
/* 0040D620 00000000 */   nop   
/* 0040D624 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D628 00000000 */  nop   
.L0040D62C:
/* 0040D62C 8F85806C */  lw    $a1, %got(RO_100123BC)($gp)
/* 0040D630 8F9981B8 */  lw    $t9, %call16(strcat)($gp)
/* 0040D634 8FA40044 */  lw    $a0, 0x44($sp)
/* 0040D638 0320F809 */  jalr  $t9
/* 0040D63C 24A523BC */   addiu $a1, %lo(RO_100123BC) # addiu $a1, $a1, 0x23bc
/* 0040D640 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0040D644 02001025 */  move  $v0, $s0
/* 0040D648 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D64C 8FB00014 */  lw    $s0, 0x14($sp)
/* 0040D650 03E00008 */  jr    $ra
/* 0040D654 27BD0040 */   addiu $sp, $sp, 0x40

    .type call_as0, @function
    .size call_as0, .-call_as0
    .end call_as0

    .type func_0040D658, @function
func_0040D658:
    # 0040D020 call_as0
    # 0040D784 func_0040D784
/* 0040D658 3C1C0FC2 */  .cpload $t9
/* 0040D65C 279CCC08 */  
/* 0040D660 0399E021 */  
/* 0040D664 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0040D668 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0040D66C AFBC0018 */  sw    $gp, 0x18($sp)
/* 0040D670 14800009 */  bnez  $a0, .L0040D698
/* 0040D674 AFA40028 */   sw    $a0, 0x28($sp)
/* 0040D678 8F8480AC */  lw     $a0, %got(__iob)($gp)
/* 0040D67C 8F85806C */  lw    $a1, %got(RO_100123C0)($gp)
/* 0040D680 8F9981EC */  lw    $t9, %call16(fprintf)($gp)
/* 0040D684 24840020 */  addiu $a0, $a0, 0x20
/* 0040D688 0320F809 */  jalr  $t9
/* 0040D68C 24A523C0 */   addiu $a1, %lo(RO_100123C0) # addiu $a1, $a1, 0x23c0
/* 0040D690 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D694 00000000 */  nop   
.L0040D698:
/* 0040D698 8F99818C */  lw    $t9, %call16(strlen)($gp)
/* 0040D69C 8FA40028 */  lw    $a0, 0x28($sp)
/* 0040D6A0 0320F809 */  jalr  $t9
/* 0040D6A4 00000000 */   nop   
/* 0040D6A8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D6AC 24440001 */  addiu $a0, $v0, 1
/* 0040D6B0 8F9988C0 */  lw    $t9, %call16(xmalloc)($gp)
/* 0040D6B4 00000000 */  nop   
/* 0040D6B8 0320F809 */  jalr  $t9
/* 0040D6BC 00000000 */   nop   
/* 0040D6C0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D6C4 8FA50028 */  lw    $a1, 0x28($sp)
/* 0040D6C8 8F9981A0 */  lw    $t9, %call16(strcpy)($gp)
/* 0040D6CC AFA20024 */  sw    $v0, 0x24($sp)
/* 0040D6D0 0320F809 */  jalr  $t9
/* 0040D6D4 00402025 */   move  $a0, $v0
/* 0040D6D8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0040D6DC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D6E0 8FA20024 */  lw    $v0, 0x24($sp)
/* 0040D6E4 03E00008 */  jr    $ra
/* 0040D6E8 27BD0028 */   addiu $sp, $sp, 0x28

    .type func_0040D6EC, @function
func_0040D6EC:
    # 0040D020 call_as0
/* 0040D6EC 3C1C0FC2 */  .cpload $t9
/* 0040D6F0 279CCB74 */  
/* 0040D6F4 0399E021 */  
/* 0040D6F8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0040D6FC 8F99818C */  lw    $t9, %call16(strlen)($gp)
/* 0040D700 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0040D704 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0040D708 AFA40030 */  sw    $a0, 0x30($sp)
/* 0040D70C 0320F809 */  jalr  $t9
/* 0040D710 AFA50034 */   sw    $a1, 0x34($sp)
/* 0040D714 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D718 8FA40034 */  lw    $a0, 0x34($sp)
/* 0040D71C 8F99818C */  lw    $t9, %call16(strlen)($gp)
/* 0040D720 AFA20024 */  sw    $v0, 0x24($sp)
/* 0040D724 0320F809 */  jalr  $t9
/* 0040D728 00000000 */   nop   
/* 0040D72C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D730 8FAE0024 */  lw    $t6, 0x24($sp)
/* 0040D734 8F9988C0 */  lw    $t9, %call16(xmalloc)($gp)
/* 0040D738 004E2021 */  addu  $a0, $v0, $t6
/* 0040D73C 0320F809 */  jalr  $t9
/* 0040D740 24840001 */   addiu $a0, $a0, 1
/* 0040D744 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D748 8FA50030 */  lw    $a1, 0x30($sp)
/* 0040D74C 8F9981A0 */  lw    $t9, %call16(strcpy)($gp)
/* 0040D750 AFA2002C */  sw    $v0, 0x2c($sp)
/* 0040D754 0320F809 */  jalr  $t9
/* 0040D758 00402025 */   move  $a0, $v0
/* 0040D75C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D760 8FA4002C */  lw    $a0, 0x2c($sp)
/* 0040D764 8F9981B8 */  lw    $t9, %call16(strcat)($gp)
/* 0040D768 8FA50034 */  lw    $a1, 0x34($sp)
/* 0040D76C 0320F809 */  jalr  $t9
/* 0040D770 00000000 */   nop   
/* 0040D774 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0040D778 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0040D77C 03E00008 */  jr    $ra
/* 0040D780 27BD0030 */   addiu $sp, $sp, 0x30

    .type func_0040D784, @function
func_0040D784:
    # 0040D020 call_as0
/* 0040D784 3C1C0FC2 */  .cpload $t9
/* 0040D788 279CCADC */  
/* 0040D78C 0399E021 */  
/* 0040D790 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 0040D794 8F85806C */  lw    $a1, %got(RO_100123D4)($gp)
/* 0040D798 8F998184 */  lw    $t9, %call16(fopen)($gp)
/* 0040D79C AFBF003C */  sw    $ra, 0x3c($sp)
/* 0040D7A0 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0040D7A4 AFBC0034 */  sw    $gp, 0x34($sp)
/* 0040D7A8 AFB70030 */  sw    $s7, 0x30($sp)
/* 0040D7AC AFB6002C */  sw    $s6, 0x2c($sp)
/* 0040D7B0 AFB50028 */  sw    $s5, 0x28($sp)
/* 0040D7B4 AFB40024 */  sw    $s4, 0x24($sp)
/* 0040D7B8 AFB30020 */  sw    $s3, 0x20($sp)
/* 0040D7BC AFB2001C */  sw    $s2, 0x1c($sp)
/* 0040D7C0 AFB10018 */  sw    $s1, 0x18($sp)
/* 0040D7C4 AFB00014 */  sw    $s0, 0x14($sp)
/* 0040D7C8 0320F809 */  jalr  $t9
/* 0040D7CC 24A523D4 */   addiu $a1, %lo(RO_100123D4) # addiu $a1, $a1, 0x23d4
/* 0040D7D0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0040D7D4 1040004E */  beqz  $v0, .L0040D910
/* 0040D7D8 00409025 */   move  $s2, $v0
/* 0040D7DC 904E000C */  lbu   $t6, 0xc($v0)
/* 0040D7E0 27B70048 */  addiu $s7, $sp, 0x48
/* 0040D7E4 31CF0010 */  andi  $t7, $t6, 0x10
/* 0040D7E8 15E00043 */  bnez  $t7, .L0040D8F8
/* 0040D7EC 27B6004C */   addiu $s6, $sp, 0x4c
/* 0040D7F0 8F95806C */  lw    $s5, %got(RO_100123D8)($gp)
/* 0040D7F4 8F938080 */  lw    $s3, %got(D_10000010)($gp)
/* 0040D7F8 241E0002 */  li    $fp, 2
/* 0040D7FC 27B40050 */  addiu $s4, $sp, 0x50
/* 0040D800 26B523D8 */  addiu $s5, %lo(RO_100123D8) # addiu $s5, $s5, 0x23d8
/* 0040D804 26730010 */  addiu $s3, %lo(D_10000010) # addiu $s3, $s3, 0x10
.L0040D808:
/* 0040D808 8F9981DC */  lw    $t9, %call16(fscanf)($gp)
/* 0040D80C 02402025 */  move  $a0, $s2
/* 0040D810 02A02825 */  move  $a1, $s5
/* 0040D814 02C03025 */  move  $a2, $s6
/* 0040D818 0320F809 */  jalr  $t9
/* 0040D81C 02E03825 */   move  $a3, $s7
/* 0040D820 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0040D824 105E0006 */  beq   $v0, $fp, .L0040D840
/* 0040D828 00000000 */   nop   
/* 0040D82C 9258000C */  lbu   $t8, 0xc($s2)
/* 0040D830 00000000 */  nop   
/* 0040D834 33190010 */  andi  $t9, $t8, 0x10
/* 0040D838 1720002F */  bnez  $t9, .L0040D8F8
/* 0040D83C 00000000 */   nop   
.L0040D840:
/* 0040D840 8F9988C0 */  lw    $t9, %call16(xmalloc)($gp)
/* 0040D844 24040014 */  li    $a0, 20
/* 0040D848 0320F809 */  jalr  $t9
/* 0040D84C 00000000 */   nop   
/* 0040D850 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0040D854 8FA8004C */  lw    $t0, 0x4c($sp)
/* 0040D858 00408025 */  move  $s0, $v0
/* 0040D85C AC480008 */  sw    $t0, 8($v0)
/* 0040D860 8F998214 */  lw    $t9, %call16(fgetc)($gp)
/* 0040D864 02402025 */  move  $a0, $s2
/* 0040D868 0320F809 */  jalr  $t9
/* 0040D86C 00000000 */   nop   
/* 0040D870 8FA90048 */  lw    $t1, 0x48($sp)
/* 0040D874 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0040D878 AE000004 */  sw    $zero, 4($s0)
/* 0040D87C AE090000 */  sw    $t1, ($s0)
/* 0040D880 8E6A0000 */  lw    $t2, ($s3)
/* 0040D884 304B00FF */  andi  $t3, $v0, 0xff
/* 0040D888 24010020 */  li    $at, 32
/* 0040D88C AE0A0010 */  sw    $t2, 0x10($s0)
/* 0040D890 00408825 */  move  $s1, $v0
/* 0040D894 15610010 */  bne   $t3, $at, .L0040D8D8
/* 0040D898 AE700000 */   sw    $s0, ($s3)
/* 0040D89C 8F85806C */  lw    $a1, %got(RO_100123E0)($gp)
/* 0040D8A0 8F9981DC */  lw    $t9, %call16(fscanf)($gp)
/* 0040D8A4 02402025 */  move  $a0, $s2
/* 0040D8A8 02803025 */  move  $a2, $s4
/* 0040D8AC 0320F809 */  jalr  $t9
/* 0040D8B0 24A523E0 */   addiu $a1, %lo(RO_100123E0) # addiu $a1, $a1, 0x23e0
/* 0040D8B4 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0040D8B8 00408825 */  move  $s1, $v0
/* 0040D8BC 8F998018 */  lw    $t9, %got(func_0040D658)($gp)
/* 0040D8C0 02802025 */  move  $a0, $s4
/* 0040D8C4 2739D658 */  addiu $t9, %lo(func_0040D658) # addiu $t9, $t9, -0x29a8
/* 0040D8C8 0320F809 */  jalr  $t9
/* 0040D8CC 00000000 */   nop   
/* 0040D8D0 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0040D8D4 AE02000C */  sw    $v0, 0xc($s0)
.L0040D8D8:
/* 0040D8D8 2401FFFF */  li    $at, -1
/* 0040D8DC 12210006 */  beq   $s1, $at, .L0040D8F8
/* 0040D8E0 00000000 */   nop   
/* 0040D8E4 924C000C */  lbu   $t4, 0xc($s2)
/* 0040D8E8 00000000 */  nop   
/* 0040D8EC 318D0010 */  andi  $t5, $t4, 0x10
/* 0040D8F0 11A0FFC5 */  beqz  $t5, .L0040D808
/* 0040D8F4 00000000 */   nop   
.L0040D8F8:
/* 0040D8F8 8F998188 */  lw    $t9, %call16(fclose)($gp)
/* 0040D8FC 02402025 */  move  $a0, $s2
/* 0040D900 0320F809 */  jalr  $t9
/* 0040D904 00000000 */   nop   
/* 0040D908 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0040D90C 00000000 */  nop   
.L0040D910:
/* 0040D910 8FBF003C */  lw    $ra, 0x3c($sp)
/* 0040D914 8FB00014 */  lw    $s0, 0x14($sp)
/* 0040D918 8FB10018 */  lw    $s1, 0x18($sp)
/* 0040D91C 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0040D920 8FB30020 */  lw    $s3, 0x20($sp)
/* 0040D924 8FB40024 */  lw    $s4, 0x24($sp)
/* 0040D928 8FB50028 */  lw    $s5, 0x28($sp)
/* 0040D92C 8FB6002C */  lw    $s6, 0x2c($sp)
/* 0040D930 8FB70030 */  lw    $s7, 0x30($sp)
/* 0040D934 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0040D938 03E00008 */  jr    $ra
/* 0040D93C 27BD00A8 */   addiu $sp, $sp, 0xa8

    .type func_0040D940, @function
func_0040D940:
    # 0040D020 call_as0
/* 0040D940 3C1C0FC2 */  .cpload $t9
/* 0040D944 279CC920 */  
/* 0040D948 0399E021 */  
/* 0040D94C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0040D950 AFB10018 */  sw    $s1, 0x18($sp)
/* 0040D954 8F918080 */  lw    $s1, %got(D_10000010)($gp)
/* 0040D958 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0040D95C 8E310010 */  lw    $s1, %lo(D_10000010)($s1)
/* 0040D960 AFBC0020 */  sw    $gp, 0x20($sp)
/* 0040D964 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0040D968 1220004A */  beqz  $s1, .L0040DA94
/* 0040D96C AFB00014 */   sw    $s0, 0x14($sp)
/* 0040D970 8F928080 */  lw    $s2, %got(D_10000014)($gp)
/* 0040D974 00000000 */  nop   
/* 0040D978 26520014 */  addiu $s2, %lo(D_10000014) # addiu $s2, $s2, 0x14
.L0040D97C:
/* 0040D97C 8E220004 */  lw    $v0, 4($s1)
/* 0040D980 00000000 */  nop   
/* 0040D984 1440003F */  bnez  $v0, .L0040DA84
/* 0040D988 00000000 */   nop   
/* 0040D98C 8E2E000C */  lw    $t6, 0xc($s1)
/* 0040D990 00000000 */  nop   
/* 0040D994 11C00023 */  beqz  $t6, .L0040DA24
/* 0040D998 00000000 */   nop   
/* 0040D99C 8E500000 */  lw    $s0, ($s2)
/* 0040D9A0 00000000 */  nop   
/* 0040D9A4 12000012 */  beqz  $s0, .L0040D9F0
/* 0040D9A8 00000000 */   nop   
.L0040D9AC:
/* 0040D9AC 8F998118 */  lw    $t9, %call16(strcmp)($gp)
/* 0040D9B0 8E04000C */  lw    $a0, 0xc($s0)
/* 0040D9B4 8E25000C */  lw    $a1, 0xc($s1)
/* 0040D9B8 0320F809 */  jalr  $t9
/* 0040D9BC 00000000 */   nop   
/* 0040D9C0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040D9C4 14400004 */  bnez  $v0, .L0040D9D8
/* 0040D9C8 00000000 */   nop   
/* 0040D9CC 8E020004 */  lw    $v0, 4($s0)
/* 0040D9D0 10000007 */  b     .L0040D9F0
/* 0040D9D4 AE220004 */   sw    $v0, 4($s1)
.L0040D9D8:
/* 0040D9D8 8E100010 */  lw    $s0, 0x10($s0)
/* 0040D9DC 00000000 */  nop   
/* 0040D9E0 1600FFF2 */  bnez  $s0, .L0040D9AC
/* 0040D9E4 00000000 */   nop   
/* 0040D9E8 8E220004 */  lw    $v0, 4($s1)
/* 0040D9EC 00000000 */  nop   
.L0040D9F0:
/* 0040D9F0 14400007 */  bnez  $v0, .L0040DA10
/* 0040D9F4 00000000 */   nop   
/* 0040D9F8 8F99840C */  lw    $t9, %call16(idn_for_extern_symbol)($gp)
/* 0040D9FC 8E24000C */  lw    $a0, 0xc($s1)
/* 0040DA00 0320F809 */  jalr  $t9
/* 0040DA04 00000000 */   nop   
/* 0040DA08 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040DA0C AE220004 */  sw    $v0, 4($s1)
.L0040DA10:
/* 0040DA10 8F838080 */  lw    $v1, %got(D_10000010)($gp)
/* 0040DA14 00000000 */  nop   
/* 0040DA18 8C630010 */  lw    $v1, %lo(D_10000010)($v1)
/* 0040DA1C 1000000B */  b     .L0040DA4C
/* 0040DA20 00000000 */   nop   
.L0040DA24:
/* 0040DA24 8F998408 */  lw    $t9, %call16(idn_for_anon_symbol)($gp)
/* 0040DA28 00000000 */  nop   
/* 0040DA2C 0320F809 */  jalr  $t9
/* 0040DA30 00000000 */   nop   
/* 0040DA34 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0040DA38 AE220004 */  sw    $v0, 4($s1)
/* 0040DA3C 8F838080 */  lw    $v1, %got(D_10000010)($gp)
/* 0040DA40 00000000 */  nop   
/* 0040DA44 8C630010 */  lw    $v1, %lo(D_10000010)($v1)
/* 0040DA48 00000000 */  nop   
.L0040DA4C:
/* 0040DA4C 1060000D */  beqz  $v1, .L0040DA84
/* 0040DA50 00608025 */   move  $s0, $v1
.L0040DA54:
/* 0040DA54 8E380000 */  lw    $t8, ($s1)
/* 0040DA58 8E190000 */  lw    $t9, ($s0)
/* 0040DA5C 00000000 */  nop   
/* 0040DA60 17190004 */  bne   $t8, $t9, .L0040DA74
/* 0040DA64 00000000 */   nop   
/* 0040DA68 8E280004 */  lw    $t0, 4($s1)
/* 0040DA6C 00000000 */  nop   
/* 0040DA70 AE080004 */  sw    $t0, 4($s0)
.L0040DA74:
/* 0040DA74 8E100010 */  lw    $s0, 0x10($s0)
/* 0040DA78 00000000 */  nop   
/* 0040DA7C 1600FFF5 */  bnez  $s0, .L0040DA54
/* 0040DA80 00000000 */   nop   
.L0040DA84:
/* 0040DA84 8E310010 */  lw    $s1, 0x10($s1)
/* 0040DA88 00000000 */  nop   
/* 0040DA8C 1620FFBB */  bnez  $s1, .L0040D97C
/* 0040DA90 00000000 */   nop   
.L0040DA94:
/* 0040DA94 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0040DA98 8FB00014 */  lw    $s0, 0x14($sp)
/* 0040DA9C 8FB10018 */  lw    $s1, 0x18($sp)
/* 0040DAA0 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0040DAA4 03E00008 */  jr    $ra
/* 0040DAA8 27BD0028 */   addiu $sp, $sp, 0x28

glabel fixup_symno
    .ent fixup_symno
    # 004594BC parsestmt
/* 0040DAAC 3C1C0FC2 */  .cpload $t9
/* 0040DAB0 279CC7B4 */  
/* 0040DAB4 0399E021 */  
/* 0040DAB8 8F838080 */  lw    $v1, %got(D_10000010)($gp)
/* 0040DABC 00000000 */  nop   
/* 0040DAC0 8C630010 */  lw    $v1, %lo(D_10000010)($v1)
/* 0040DAC4 00000000 */  nop   
/* 0040DAC8 10600015 */  beqz  $v1, .L0040DB20
/* 0040DACC 00801025 */   move  $v0, $a0
/* 0040DAD0 8F828B20 */  lw     $v0, %got(binasm_count)($gp)
/* 0040DAD4 00000000 */  nop   
/* 0040DAD8 8C420000 */  lw    $v0, ($v0)
/* 0040DADC 00000000 */  nop   
.L0040DAE0:
/* 0040DAE0 8C6E0008 */  lw    $t6, 8($v1)
/* 0040DAE4 00000000 */  nop   
/* 0040DAE8 144E0008 */  bne   $v0, $t6, .L0040DB0C
/* 0040DAEC 00000000 */   nop   
/* 0040DAF0 8C6F0000 */  lw    $t7, ($v1)
/* 0040DAF4 00000000 */  nop   
/* 0040DAF8 148F0004 */  bne   $a0, $t7, .L0040DB0C
/* 0040DAFC 00000000 */   nop   
/* 0040DB00 8C620004 */  lw    $v0, 4($v1)
/* 0040DB04 03E00008 */  jr    $ra
/* 0040DB08 00000000 */   nop   

.L0040DB0C:
/* 0040DB0C 8C630010 */  lw    $v1, 0x10($v1)
/* 0040DB10 00000000 */  nop   
/* 0040DB14 1460FFF2 */  bnez  $v1, .L0040DAE0
/* 0040DB18 00000000 */   nop   
/* 0040DB1C 00801025 */  move  $v0, $a0
.L0040DB20:
/* 0040DB20 03E00008 */  jr    $ra
/* 0040DB24 00000000 */   nop   

    .type fixup_symno, @function
    .size fixup_symno, .-fixup_symno
    .end fixup_symno

    .type func_0040DB28, @function
func_0040DB28:
    # 0040D020 call_as0
/* 0040DB28 3C1C0FC2 */  .cpload $t9
/* 0040DB2C 279CC738 */  
/* 0040DB30 0399E021 */  
/* 0040DB34 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0040DB38 AFB30024 */  sw    $s3, 0x24($sp)
/* 0040DB3C 8F938080 */  lw    $s3, %got(D_10000010)($gp)
/* 0040DB40 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0040DB44 26730010 */  addiu $s3, %lo(D_10000010) # addiu $s3, $s3, 0x10
/* 0040DB48 8E710000 */  lw    $s1, ($s3)
/* 0040DB4C AFBF002C */  sw    $ra, 0x2c($sp)
/* 0040DB50 AFBC0028 */  sw    $gp, 0x28($sp)
/* 0040DB54 AFB20020 */  sw    $s2, 0x20($sp)
/* 0040DB58 12200037 */  beqz  $s1, .L0040DC38
/* 0040DB5C AFB00018 */   sw    $s0, 0x18($sp)
/* 0040DB60 8F928080 */  lw    $s2, %got(D_10000014)($gp)
/* 0040DB64 00000000 */  nop   
/* 0040DB68 26520014 */  addiu $s2, %lo(D_10000014) # addiu $s2, $s2, 0x14
.L0040DB6C:
/* 0040DB6C 8E2E0010 */  lw    $t6, 0x10($s1)
/* 0040DB70 00000000 */  nop   
/* 0040DB74 AE6E0000 */  sw    $t6, ($s3)
/* 0040DB78 8E2F000C */  lw    $t7, 0xc($s1)
/* 0040DB7C 00000000 */  nop   
/* 0040DB80 11E00023 */  beqz  $t7, .L0040DC10
/* 0040DB84 00000000 */   nop   
/* 0040DB88 8E500000 */  lw    $s0, ($s2)
/* 0040DB8C 00000000 */  nop   
/* 0040DB90 12000010 */  beqz  $s0, .L0040DBD4
/* 0040DB94 00000000 */   nop   
.L0040DB98:
/* 0040DB98 8F998118 */  lw    $t9, %call16(strcmp)($gp)
/* 0040DB9C 8E04000C */  lw    $a0, 0xc($s0)
/* 0040DBA0 8E25000C */  lw    $a1, 0xc($s1)
/* 0040DBA4 0320F809 */  jalr  $t9
/* 0040DBA8 00000000 */   nop   
/* 0040DBAC 8FBC0028 */  lw    $gp, 0x28($sp)
/* 0040DBB0 14400004 */  bnez  $v0, .L0040DBC4
/* 0040DBB4 00000000 */   nop   
/* 0040DBB8 8E180004 */  lw    $t8, 4($s0)
/* 0040DBBC 10000005 */  b     .L0040DBD4
/* 0040DBC0 AE380004 */   sw    $t8, 4($s1)
.L0040DBC4:
/* 0040DBC4 8E100010 */  lw    $s0, 0x10($s0)
/* 0040DBC8 00000000 */  nop   
/* 0040DBCC 1600FFF2 */  bnez  $s0, .L0040DB98
/* 0040DBD0 00000000 */   nop   
.L0040DBD4:
/* 0040DBD4 16000007 */  bnez  $s0, .L0040DBF4
/* 0040DBD8 00000000 */   nop   
/* 0040DBDC AE200000 */  sw    $zero, ($s1)
/* 0040DBE0 8E590000 */  lw    $t9, ($s2)
/* 0040DBE4 00000000 */  nop   
/* 0040DBE8 AE390010 */  sw    $t9, 0x10($s1)
/* 0040DBEC 1000000E */  b     .L0040DC28
/* 0040DBF0 AE510000 */   sw    $s1, ($s2)
.L0040DBF4:
/* 0040DBF4 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 0040DBF8 02202025 */  move  $a0, $s1
/* 0040DBFC 0320F809 */  jalr  $t9
/* 0040DC00 00000000 */   nop   
/* 0040DC04 8FBC0028 */  lw    $gp, 0x28($sp)
/* 0040DC08 10000008 */  b     .L0040DC2C
/* 0040DC0C 8E710000 */   lw    $s1, ($s3)
.L0040DC10:
/* 0040DC10 8F9988B8 */  lw    $t9, %call16(xfree)($gp)
/* 0040DC14 02202025 */  move  $a0, $s1
/* 0040DC18 0320F809 */  jalr  $t9
/* 0040DC1C 00000000 */   nop   
/* 0040DC20 8FBC0028 */  lw    $gp, 0x28($sp)
/* 0040DC24 00000000 */  nop   
.L0040DC28:
/* 0040DC28 8E710000 */  lw    $s1, ($s3)
.L0040DC2C:
/* 0040DC2C 00000000 */  nop   
/* 0040DC30 1620FFCE */  bnez  $s1, .L0040DB6C
/* 0040DC34 00000000 */   nop   
.L0040DC38:
/* 0040DC38 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0040DC3C 8FB00018 */  lw    $s0, 0x18($sp)
/* 0040DC40 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0040DC44 8FB20020 */  lw    $s2, 0x20($sp)
/* 0040DC48 8FB30024 */  lw    $s3, 0x24($sp)
/* 0040DC4C 03E00008 */  jr    $ra
/* 0040DC50 27BD0030 */   addiu $sp, $sp, 0x30

    .type func_0040DC54, @function
func_0040DC54:
    # 0040D020 call_as0
/* 0040DC54 3C1C0FC2 */  .cpload $t9
/* 0040DC58 279CC60C */  
/* 0040DC5C 0399E021 */  
/* 0040DC60 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0040DC64 AFB00020 */  sw    $s0, 0x20($sp)
/* 0040DC68 8F908080 */  lw    $s0, %got(D_10000010)($gp)
/* 0040DC6C 8F84806C */  lw    $a0, %got(RO_100123E4)($gp)
/* 0040DC70 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0040DC74 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0040DC78 8E100010 */  lw    $s0, %lo(D_10000010)($s0)
/* 0040DC7C AFBC0028 */  sw    $gp, 0x28($sp)
/* 0040DC80 AFB10024 */  sw    $s1, 0x24($sp)
/* 0040DC84 0320F809 */  jalr  $t9
/* 0040DC88 248423E4 */   addiu $a0, %lo(RO_100123E4) # addiu $a0, $a0, 0x23e4
/* 0040DC8C 8FBC0028 */  lw    $gp, 0x28($sp)
/* 0040DC90 12000010 */  beqz  $s0, .L0040DCD4
/* 0040DC94 00000000 */   nop   
/* 0040DC98 8F91806C */  lw    $s1, %got(RO_100123F4)($gp)
/* 0040DC9C 00000000 */  nop   
/* 0040DCA0 263123F4 */  addiu $s1, %lo(RO_100123F4) # addiu $s1, $s1, 0x23f4
.L0040DCA4:
/* 0040DCA4 8E0E000C */  lw    $t6, 0xc($s0)
/* 0040DCA8 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0040DCAC 8E050008 */  lw    $a1, 8($s0)
/* 0040DCB0 8E060000 */  lw    $a2, ($s0)
/* 0040DCB4 8E070004 */  lw    $a3, 4($s0)
/* 0040DCB8 02202025 */  move  $a0, $s1
/* 0040DCBC 0320F809 */  jalr  $t9
/* 0040DCC0 AFAE0010 */   sw    $t6, 0x10($sp)
/* 0040DCC4 8E100010 */  lw    $s0, 0x10($s0)
/* 0040DCC8 8FBC0028 */  lw    $gp, 0x28($sp)
/* 0040DCCC 1600FFF5 */  bnez  $s0, .L0040DCA4
/* 0040DCD0 00000000 */   nop   
.L0040DCD4:
/* 0040DCD4 8F908080 */  lw    $s0, %got(D_10000014)($gp)
/* 0040DCD8 8F84806C */  lw    $a0, %got(RO_10012408)($gp)
/* 0040DCDC 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0040DCE0 8E100014 */  lw    $s0, %lo(D_10000014)($s0)
/* 0040DCE4 0320F809 */  jalr  $t9
/* 0040DCE8 24842408 */   addiu $a0, %lo(RO_10012408) # addiu $a0, $a0, 0x2408
/* 0040DCEC 8FBC0028 */  lw    $gp, 0x28($sp)
/* 0040DCF0 1200000E */  beqz  $s0, .L0040DD2C
/* 0040DCF4 8FBF002C */   lw    $ra, 0x2c($sp)
/* 0040DCF8 8F91806C */  lw    $s1, %got(RO_10012418)($gp)
/* 0040DCFC 00000000 */  nop   
/* 0040DD00 26312418 */  addiu $s1, %lo(RO_10012418) # addiu $s1, $s1, 0x2418
.L0040DD04:
/* 0040DD04 8F998150 */  lw    $t9, %call16(printf)($gp)
/* 0040DD08 8E050004 */  lw    $a1, 4($s0)
/* 0040DD0C 8E06000C */  lw    $a2, 0xc($s0)
/* 0040DD10 0320F809 */  jalr  $t9
/* 0040DD14 02202025 */   move  $a0, $s1
/* 0040DD18 8E100010 */  lw    $s0, 0x10($s0)
/* 0040DD1C 8FBC0028 */  lw    $gp, 0x28($sp)
/* 0040DD20 1600FFF8 */  bnez  $s0, .L0040DD04
/* 0040DD24 00000000 */   nop   
/* 0040DD28 8FBF002C */  lw    $ra, 0x2c($sp)
.L0040DD2C:
/* 0040DD2C 8FB00020 */  lw    $s0, 0x20($sp)
/* 0040DD30 8FB10024 */  lw    $s1, 0x24($sp)
/* 0040DD34 03E00008 */  jr    $ra
/* 0040DD38 27BD0030 */   addiu $sp, $sp, 0x30

/* 0040DD3C 00000000 */  nop   
)"");
