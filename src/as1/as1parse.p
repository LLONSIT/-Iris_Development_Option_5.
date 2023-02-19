__asm__(R""(
.macro glabel label
    .global \label
    .balign 4
    \label:
.endm




.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.text
glabel wrreloc
    .ent wrreloc
    # 004391CC func_004391CC
    # 0043EA30 func_0043EA30
/* 0044BA80 3C1C0FBE */  .cpload $t9
/* 0044BA84 279CE7E0 */  
/* 0044BA88 0399E021 */  
/* 0044BA8C 27BDFF20 */  addiu $sp, $sp, -0xe0
/* 0044BA90 00057080 */  sll   $t6, $a1, 2
/* 0044BA94 00CE7821 */  addu  $t7, $a2, $t6
/* 0044BA98 8DF80000 */  lw    $t8, ($t7)
/* 0044BA9C AFBF0084 */  sw    $ra, 0x84($sp)
/* 0044BAA0 AFBE0080 */  sw    $fp, 0x80($sp)
/* 0044BAA4 AFBC007C */  sw    $gp, 0x7c($sp)
/* 0044BAA8 AFB70078 */  sw    $s7, 0x78($sp)
/* 0044BAAC AFB60074 */  sw    $s6, 0x74($sp)
/* 0044BAB0 AFB50070 */  sw    $s5, 0x70($sp)
/* 0044BAB4 AFB4006C */  sw    $s4, 0x6c($sp)
/* 0044BAB8 AFB30068 */  sw    $s3, 0x68($sp)
/* 0044BABC AFB20064 */  sw    $s2, 0x64($sp)
/* 0044BAC0 AFB10060 */  sw    $s1, 0x60($sp)
/* 0044BAC4 AFB0005C */  sw    $s0, 0x5c($sp)
/* 0044BAC8 AFA400E0 */  sw    $a0, 0xe0($sp)
/* 0044BACC 13000339 */  beqz  $t8, .L0044C7B4
/* 0044BAD0 AFA500E4 */   sw    $a1, 0xe4($sp)
/* 0044BAD4 00EEC821 */  addu  $t9, $a3, $t6
/* 0044BAD8 8F230000 */  lw    $v1, ($t9)
/* 0044BADC 3401FFFF */  li    $at, 65535
/* 0044BAE0 000350C2 */  srl   $t2, $v1, 3
/* 0044BAE4 0141082B */  sltu  $at, $t2, $at
/* 0044BAE8 1420001A */  bnez  $at, .L0044BB54
/* 0044BAEC 241EFFC1 */   li    $fp, -63
/* 0044BAF0 8FAB00D4 */  lw    $t3, 0xd4($sp)
/* 0044BAF4 8F8F8CC8 */  lw     $t7, %got(elf_flag)($gp)
/* 0044BAF8 316C00FF */  andi  $t4, $t3, 0xff
/* 0044BAFC 019E6824 */  and   $t5, $t4, $fp
/* 0044BB00 91EF0000 */  lbu   $t7, ($t7)
/* 0044BB04 AFAC00D4 */  sw    $t4, 0xd4($sp)
/* 0044BB08 2401FFFE */  li    $at, -2
/* 0044BB0C AFAD00D4 */  sw    $t5, 0xd4($sp)
/* 0044BB10 01A17024 */  and   $t6, $t5, $at
/* 0044BB14 AFAA00D0 */  sw    $t2, 0xd0($sp)
/* 0044BB18 15E00008 */  bnez  $t7, .L0044BB3C
/* 0044BB1C AFAE00D4 */   sw    $t6, 0xd4($sp)
/* 0044BB20 8F998420 */  lw    $t9, %call16(st_wrreloc)($gp)
/* 0044BB24 27A500D0 */  addiu $a1, $sp, 0xd0
/* 0044BB28 0320F809 */  jalr  $t9
/* 0044BB2C 24060008 */   li    $a2, 8
/* 0044BB30 8FBC007C */  lw    $gp, 0x7c($sp)
/* 0044BB34 10000007 */  b     .L0044BB54
/* 0044BB38 AFA200DC */   sw    $v0, 0xdc($sp)
.L0044BB3C:
/* 0044BB3C 8F998280 */  lw    $t9, %call16(aself_st_wrreloc)($gp)
/* 0044BB40 27A400D0 */  addiu $a0, $sp, 0xd0
/* 0044BB44 0320F809 */  jalr  $t9
/* 0044BB48 24050008 */   li    $a1, 8
/* 0044BB4C 8FBC007C */  lw    $gp, 0x7c($sp)
/* 0044BB50 AFA200DC */  sw    $v0, 0xdc($sp)
.L0044BB54:
/* 0044BB54 8F928AF0 */  lw     $s2, %got(nextrld)($gp)
/* 0044BB58 8FA300DC */  lw    $v1, 0xdc($sp)
/* 0044BB5C 8E520000 */  lw    $s2, ($s2)
/* 0044BB60 27B700D0 */  addiu $s7, $sp, 0xd0
/* 0044BB64 2652FFFF */  addiu $s2, $s2, -1
/* 0044BB68 1A4001CC */  blez  $s2, .L0044C29C
/* 0044BB6C 241EFFC1 */   li    $fp, -63
/* 0044BB70 0012C880 */  sll   $t9, $s2, 2
/* 0044BB74 0332C823 */  subu  $t9, $t9, $s2
/* 0044BB78 0019C8C0 */  sll   $t9, $t9, 3
/* 0044BB7C AFB90098 */  sw    $t9, 0x98($sp)
/* 0044BB80 AFB200D8 */  sw    $s2, 0xd8($sp)
/* 0044BB84 2409000E */  li    $t1, 14
/* 0044BB88 2408000D */  li    $t0, 13
.L0044BB8C:
/* 0044BB8C 8F8A8AF4 */  lw     $t2, %got(rld_list)($gp)
/* 0044BB90 8FAB0098 */  lw    $t3, 0x98($sp)
/* 0044BB94 8D4A0000 */  lw    $t2, ($t2)
/* 0044BB98 8FAC00E4 */  lw    $t4, 0xe4($sp)
/* 0044BB9C 014B8821 */  addu  $s1, $t2, $t3
/* 0044BBA0 8E2D000C */  lw    $t5, 0xc($s1)
/* 0044BBA4 00000000 */  nop   
/* 0044BBA8 158D01B1 */  bne   $t4, $t5, .L0044C270
/* 0044BBAC 8FB800D8 */   lw    $t8, 0xd8($sp)
/* 0044BBB0 92240010 */  lbu   $a0, 0x10($s1)
/* 0044BBB4 2401FF3F */  li    $at, -193
/* 0044BBB8 11040004 */  beq   $t0, $a0, .L0044BBCC
/* 0044BBBC 8FAF00D4 */   lw    $t7, 0xd4($sp)
/* 0044BBC0 152401AB */  bne   $t1, $a0, .L0044C270
/* 0044BBC4 8FB800D8 */   lw    $t8, 0xd8($sp)
/* 0044BBC8 8FAF00D4 */  lw    $t7, 0xd4($sp)
.L0044BBCC:
/* 0044BBCC 8E2E0004 */  lw    $t6, 4($s1)
/* 0044BBD0 01E1C024 */  and   $t8, $t7, $at
/* 0044BBD4 AFB800D4 */  sw    $t8, 0xd4($sp)
/* 0044BBD8 15040005 */  bne   $t0, $a0, .L0044BBF0
/* 0044BBDC AFAE00D0 */   sw    $t6, 0xd0($sp)
/* 0044BBE0 031EC824 */  and   $t9, $t8, $fp
/* 0044BBE4 372A0008 */  ori   $t2, $t9, 8
/* 0044BBE8 10000006 */  b     .L0044BC04
/* 0044BBEC AFAA00D4 */   sw    $t2, 0xd4($sp)
.L0044BBF0:
/* 0044BBF0 8FAB00D4 */  lw    $t3, 0xd4($sp)
/* 0044BBF4 00000000 */  nop   
/* 0044BBF8 017E6024 */  and   $t4, $t3, $fp
/* 0044BBFC 358D000A */  ori   $t5, $t4, 0xa
/* 0044BC00 AFAD00D4 */  sw    $t5, 0xd4($sp)
.L0044BC04:
/* 0044BC04 8E300008 */  lw    $s0, 8($s1)
/* 0044BC08 8FAC00D4 */  lw    $t4, 0xd4($sp)
/* 0044BC0C 920E0037 */  lbu   $t6, 0x37($s0)
/* 0044BC10 00000000 */  nop   
/* 0044BC14 11C0009C */  beqz  $t6, .L0044BE88
/* 0044BC18 00000000 */   nop   
/* 0044BC1C 920F0035 */  lbu   $t7, 0x35($s0)
/* 0044BC20 8FB800D4 */  lw    $t8, 0xd4($sp)
/* 0044BC24 15E00098 */  bnez  $t7, .L0044BE88
/* 0044BC28 2401FFFE */   li    $at, -2
/* 0044BC2C 8E0B0030 */  lw    $t3, 0x30($s0)
/* 0044BC30 8F8A8AE0 */  lw     $t2, %got(memory)($gp)
/* 0044BC34 000B6080 */  sll   $t4, $t3, 2
/* 0044BC38 018B6023 */  subu  $t4, $t4, $t3
/* 0044BC3C 000C6080 */  sll   $t4, $t4, 2
/* 0044BC40 8D4A0000 */  lw    $t2, ($t2)
/* 0044BC44 018B6023 */  subu  $t4, $t4, $t3
/* 0044BC48 0301C824 */  and   $t9, $t8, $at
/* 0044BC4C 000C6080 */  sll   $t4, $t4, 2
/* 0044BC50 AFB900D4 */  sw    $t9, 0xd4($sp)
/* 0044BC54 014C6821 */  addu  $t5, $t2, $t4
/* 0044BC58 91A20008 */  lbu   $v0, 8($t5)
/* 0044BC5C 10000079 */  b     .L0044BE44
/* 0044BC60 2C41000A */   sltiu $at, $v0, 0xa
.L0044BC64:
/* 0044BC64 8FAE00D4 */  lw    $t6, 0xd4($sp)
/* 0044BC68 00000000 */  nop   
/* 0044BC6C 31CF00FF */  andi  $t7, $t6, 0xff
/* 0044BC70 35F80100 */  ori   $t8, $t7, 0x100
/* 0044BC74 1000008C */  b     .L0044BEA8
/* 0044BC78 AFB800D4 */   sw    $t8, 0xd4($sp)
.L0044BC7C:
/* 0044BC7C 8F8B8CD4 */  lw     $t3, %got(firstusertextseg)($gp)
/* 0044BC80 8FB900E4 */  lw    $t9, 0xe4($sp)
/* 0044BC84 8D6B0000 */  lw    $t3, ($t3)
/* 0044BC88 8FAD00D4 */  lw    $t5, 0xd4($sp)
/* 0044BC8C 032B5023 */  subu  $t2, $t9, $t3
/* 0044BC90 254C000C */  addiu $t4, $t2, 0xc
/* 0044BC94 000D7202 */  srl   $t6, $t5, 8
/* 0044BC98 018E7826 */  xor   $t7, $t4, $t6
/* 0044BC9C 000FC200 */  sll   $t8, $t7, 8
/* 0044BCA0 030DC826 */  xor   $t9, $t8, $t5
/* 0044BCA4 10000080 */  b     .L0044BEA8
/* 0044BCA8 AFB900D4 */   sw    $t9, 0xd4($sp)
.L0044BCAC:
/* 0044BCAC 8FAB00D4 */  lw    $t3, 0xd4($sp)
/* 0044BCB0 00000000 */  nop   
/* 0044BCB4 316A00FF */  andi  $t2, $t3, 0xff
/* 0044BCB8 354C0400 */  ori   $t4, $t2, 0x400
/* 0044BCBC 1000007A */  b     .L0044BEA8
/* 0044BCC0 AFAC00D4 */   sw    $t4, 0xd4($sp)
.L0044BCC4:
/* 0044BCC4 8FAE00D4 */  lw    $t6, 0xd4($sp)
/* 0044BCC8 00000000 */  nop   
/* 0044BCCC 31CF00FF */  andi  $t7, $t6, 0xff
/* 0044BCD0 35F80300 */  ori   $t8, $t7, 0x300
/* 0044BCD4 10000074 */  b     .L0044BEA8
/* 0044BCD8 AFB800D4 */   sw    $t8, 0xd4($sp)
.L0044BCDC:
/* 0044BCDC 8FAD00D4 */  lw    $t5, 0xd4($sp)
/* 0044BCE0 00000000 */  nop   
/* 0044BCE4 31B900FF */  andi  $t9, $t5, 0xff
/* 0044BCE8 372B0500 */  ori   $t3, $t9, 0x500
/* 0044BCEC 1000006E */  b     .L0044BEA8
/* 0044BCF0 AFAB00D4 */   sw    $t3, 0xd4($sp)
.L0044BCF4:
/* 0044BCF4 8FAA00D4 */  lw    $t2, 0xd4($sp)
/* 0044BCF8 00000000 */  nop   
/* 0044BCFC 314C00FF */  andi  $t4, $t2, 0xff
/* 0044BD00 358E0600 */  ori   $t6, $t4, 0x600
/* 0044BD04 10000068 */  b     .L0044BEA8
/* 0044BD08 AFAE00D4 */   sw    $t6, 0xd4($sp)
.L0044BD0C:
/* 0044BD0C 8FAF00D4 */  lw    $t7, 0xd4($sp)
/* 0044BD10 00000000 */  nop   
/* 0044BD14 31F800FF */  andi  $t8, $t7, 0xff
/* 0044BD18 370D0200 */  ori   $t5, $t8, 0x200
/* 0044BD1C 10000062 */  b     .L0044BEA8
/* 0044BD20 AFAD00D4 */   sw    $t5, 0xd4($sp)
.L0044BD24:
/* 0044BD24 8FB900D4 */  lw    $t9, 0xd4($sp)
/* 0044BD28 00000000 */  nop   
/* 0044BD2C 332B00FF */  andi  $t3, $t9, 0xff
/* 0044BD30 356A0800 */  ori   $t2, $t3, 0x800
/* 0044BD34 1000005C */  b     .L0044BEA8
/* 0044BD38 AFAA00D4 */   sw    $t2, 0xd4($sp)
.L0044BD3C:
/* 0044BD3C 8FAC00D4 */  lw    $t4, 0xd4($sp)
/* 0044BD40 00000000 */  nop   
/* 0044BD44 318E00FF */  andi  $t6, $t4, 0xff
/* 0044BD48 35CF0900 */  ori   $t7, $t6, 0x900
/* 0044BD4C 10000056 */  b     .L0044BEA8
/* 0044BD50 AFAF00D4 */   sw    $t7, 0xd4($sp)
.L0044BD54:
/* 0044BD54 8F988CB4 */  lw     $t8, %got(excpt_opt)($gp)
/* 0044BD58 8FAD00D4 */  lw    $t5, 0xd4($sp)
/* 0044BD5C 93180000 */  lbu   $t8, ($t8)
/* 0044BD60 31B900FF */  andi  $t9, $t5, 0xff
/* 0044BD64 13000050 */  beqz  $t8, .L0044BEA8
/* 0044BD68 372B0A00 */   ori   $t3, $t9, 0xa00
/* 0044BD6C 1000004E */  b     .L0044BEA8
/* 0044BD70 AFAB00D4 */   sw    $t3, 0xd4($sp)
.L0044BD74:
/* 0044BD74 8E0A0060 */  lw    $t2, 0x60($s0)
.L0044BD78:
/* 0044BD78 8F818BB8 */  lw     $at, %got(currentline)($gp)
/* 0044BD7C 8F8E8070 */  lw    $t6, %got(RO_10019548)($gp)
/* 0044BD80 AC2A0000 */  sw    $t2, ($at)
/* 0044BD84 8E0C005C */  lw    $t4, 0x5c($s0)
/* 0044BD88 8F818BBC */  lw     $at, %got(currentfile)($gp)
/* 0044BD8C 25CE9548 */  addiu $t6, %lo(RO_10019548) # addiu $t6, $t6, -0x6ab8
/* 0044BD90 25D80048 */  addiu $t8, $t6, 0x48
/* 0044BD94 03A06825 */  move  $t5, $sp
/* 0044BD98 AC2C0000 */  sw    $t4, ($at)
.L0044BD9C:
/* 0044BD9C 89C10000 */  lwl   $at, ($t6)
/* 0044BDA0 99C10003 */  lwr   $at, 3($t6)
/* 0044BDA4 25CE000C */  addiu $t6, $t6, 0xc
/* 0044BDA8 A9A10000 */  swl   $at, ($t5)
/* 0044BDAC B9A10003 */  swr   $at, 3($t5)
/* 0044BDB0 89C1FFF8 */  lwl   $at, -8($t6)
/* 0044BDB4 99C1FFFB */  lwr   $at, -5($t6)
/* 0044BDB8 25AD000C */  addiu $t5, $t5, 0xc
/* 0044BDBC A9A1FFF8 */  swl   $at, -8($t5)
/* 0044BDC0 B9A1FFFB */  swr   $at, -5($t5)
/* 0044BDC4 89C1FFFC */  lwl   $at, -4($t6)
/* 0044BDC8 99C1FFFF */  lwr   $at, -1($t6)
/* 0044BDCC 00000000 */  nop   
/* 0044BDD0 A9A1FFFC */  swl   $at, -4($t5)
/* 0044BDD4 15D8FFF1 */  bne   $t6, $t8, .L0044BD9C
/* 0044BDD8 B9A1FFFF */   swr   $at, -1($t5)
/* 0044BDDC 89C10000 */  lwl   $at, ($t6)
/* 0044BDE0 99C10003 */  lwr   $at, 3($t6)
/* 0044BDE4 8F998C68 */  lw     $t9, %got(emptystring)($gp)
/* 0044BDE8 A9A10000 */  swl   $at, ($t5)
/* 0044BDEC B9A10003 */  swr   $at, 3($t5)
/* 0044BDF0 89D80004 */  lwl   $t8, 4($t6)
/* 0044BDF4 99D80007 */  lwr   $t8, 7($t6)
/* 0044BDF8 240B0002 */  li    $t3, 2
/* 0044BDFC A9B80004 */  swl   $t8, 4($t5)
/* 0044BE00 B9B80007 */  swr   $t8, 7($t5)
/* 0044BE04 8F390000 */  lw    $t9, ($t9)
/* 0044BE08 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044BE0C AFB90050 */  sw    $t9, 0x50($sp)
/* 0044BE10 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0044BE14 8FA60008 */  lw    $a2, 8($sp)
/* 0044BE18 8FA50004 */  lw    $a1, 4($sp)
/* 0044BE1C 8FA40000 */  lw    $a0, ($sp)
/* 0044BE20 AFA300DC */  sw    $v1, 0xdc($sp)
/* 0044BE24 0320F809 */  jalr  $t9
/* 0044BE28 AFAB0054 */   sw    $t3, 0x54($sp)
/* 0044BE2C 8FBC007C */  lw    $gp, 0x7c($sp)
/* 0044BE30 8FA300DC */  lw    $v1, 0xdc($sp)
/* 0044BE34 92240010 */  lbu   $a0, 0x10($s1)
/* 0044BE38 2409000E */  li    $t1, 14
/* 0044BE3C 1000001A */  b     .L0044BEA8
/* 0044BE40 2408000D */   li    $t0, 13
.L0044BE44:
/* 0044BE44 14200005 */  bnez  $at, .L0044BE5C
/* 0044BE48 2401000F */   li    $at, 15
/* 0044BE4C 1041FF8B */  beq   $v0, $at, .L0044BC7C
/* 0044BE50 00000000 */   nop   
/* 0044BE54 1000FFC8 */  b     .L0044BD78
/* 0044BE58 8E0A0060 */   lw    $t2, 0x60($s0)
.L0044BE5C:
/* 0044BE5C 2C41000A */  sltiu $at, $v0, 0xa
/* 0044BE60 1020FFC4 */  beqz  $at, .L0044BD74
/* 0044BE64 00000000 */   nop   
/* 0044BE68 8F818070 */  lw    $at, %got(jtbl_10019598)($gp)
/* 0044BE6C 00025080 */  sll   $t2, $v0, 2
/* 0044BE70 002A0821 */  addu  $at, $at, $t2
/* 0044BE74 8C2A9598 */  lw    $t2, %lo(jtbl_10019598)($at)
/* 0044BE78 00000000 */  nop   
/* 0044BE7C 015C5021 */  addu  $t2, $t2, $gp
/* 0044BE80 01400008 */  jr    $t2
/* 0044BE84 00000000 */   nop   
.L0044BE88:
/* 0044BE88 8E18001C */  lw    $t8, 0x1c($s0)
/* 0044BE8C 358F0001 */  ori   $t7, $t4, 1
/* 0044BE90 000F7202 */  srl   $t6, $t7, 8
/* 0044BE94 030E6826 */  xor   $t5, $t8, $t6
/* 0044BE98 000DCA00 */  sll   $t9, $t5, 8
/* 0044BE9C AFAF00D4 */  sw    $t7, 0xd4($sp)
/* 0044BEA0 032F5826 */  xor   $t3, $t9, $t7
/* 0044BEA4 AFAB00D4 */  sw    $t3, 0xd4($sp)
.L0044BEA8:
/* 0044BEA8 15240093 */  bne   $t1, $a0, .L0044C0F8
/* 0044BEAC 00009025 */   move  $s2, $zero
/* 0044BEB0 8FA200D8 */  lw    $v0, 0xd8($sp)
/* 0044BEB4 8E340008 */  lw    $s4, 8($s1)
/* 0044BEB8 8E35000C */  lw    $s5, 0xc($s1)
/* 0044BEBC 92360011 */  lbu   $s6, 0x11($s1)
/* 0044BEC0 2442FFFF */  addiu $v0, $v0, -1
/* 0044BEC4 18400037 */  blez  $v0, .L0044BFA4
/* 0044BEC8 00409825 */   move  $s3, $v0
/* 0044BECC 00028880 */  sll   $s1, $v0, 2
/* 0044BED0 02228823 */  subu  $s1, $s1, $v0
/* 0044BED4 001188C0 */  sll   $s1, $s1, 3
.L0044BED8:
/* 0044BED8 8F8A8AF4 */  lw     $t2, %got(rld_list)($gp)
/* 0044BEDC 00000000 */  nop   
/* 0044BEE0 8D4A0000 */  lw    $t2, ($t2)
/* 0044BEE4 00000000 */  nop   
/* 0044BEE8 01518021 */  addu  $s0, $t2, $s1
/* 0044BEEC 8E0C0008 */  lw    $t4, 8($s0)
/* 0044BEF0 00000000 */  nop   
/* 0044BEF4 168C0026 */  bne   $s4, $t4, .L0044BF90
/* 0044BEF8 00000000 */   nop   
/* 0044BEFC 8E18000C */  lw    $t8, 0xc($s0)
/* 0044BF00 00000000 */  nop   
/* 0044BF04 16B80022 */  bne   $s5, $t8, .L0044BF90
/* 0044BF08 00000000 */   nop   
/* 0044BF0C 920E0010 */  lbu   $t6, 0x10($s0)
/* 0044BF10 2401000D */  li    $at, 13
/* 0044BF14 15C1001E */  bne   $t6, $at, .L0044BF90
/* 0044BF18 00000000 */   nop   
/* 0044BF1C 920D0011 */  lbu   $t5, 0x11($s0)
/* 0044BF20 00000000 */  nop   
/* 0044BF24 16CD001A */  bne   $s6, $t5, .L0044BF90
/* 0044BF28 00000000 */   nop   
/* 0044BF2C 8FAF00D4 */  lw    $t7, 0xd4($sp)
/* 0044BF30 8F8C8CC8 */  lw     $t4, %got(elf_flag)($gp)
/* 0044BF34 8E190004 */  lw    $t9, 4($s0)
/* 0044BF38 918C0000 */  lbu   $t4, ($t4)
/* 0044BF3C 01FE5824 */  and   $t3, $t7, $fp
/* 0044BF40 356A0008 */  ori   $t2, $t3, 8
/* 0044BF44 AFAA00D4 */  sw    $t2, 0xd4($sp)
/* 0044BF48 24120001 */  li    $s2, 1
/* 0044BF4C 15800009 */  bnez  $t4, .L0044BF74
/* 0044BF50 AFB900D0 */   sw    $t9, 0xd0($sp)
/* 0044BF54 8F998420 */  lw    $t9, %call16(st_wrreloc)($gp)
/* 0044BF58 8FA400E0 */  lw    $a0, 0xe0($sp)
/* 0044BF5C 02E02825 */  move  $a1, $s7
/* 0044BF60 0320F809 */  jalr  $t9
/* 0044BF64 24060008 */   li    $a2, 8
/* 0044BF68 8FBC007C */  lw    $gp, 0x7c($sp)
/* 0044BF6C 10000007 */  b     .L0044BF8C
/* 0044BF70 00401825 */   move  $v1, $v0
.L0044BF74:
/* 0044BF74 8F998280 */  lw    $t9, %call16(aself_st_wrreloc)($gp)
/* 0044BF78 02E02025 */  move  $a0, $s7
/* 0044BF7C 0320F809 */  jalr  $t9
/* 0044BF80 24050008 */   li    $a1, 8
/* 0044BF84 8FBC007C */  lw    $gp, 0x7c($sp)
/* 0044BF88 00401825 */  move  $v1, $v0
.L0044BF8C:
/* 0044BF8C A2000010 */  sb    $zero, 0x10($s0)
.L0044BF90:
/* 0044BF90 2673FFFF */  addiu $s3, $s3, -1
/* 0044BF94 16400003 */  bnez  $s2, .L0044BFA4
/* 0044BF98 2631FFE8 */   addiu $s1, $s1, -0x18
/* 0044BF9C 1E60FFCE */  bgtz  $s3, .L0044BED8
/* 0044BFA0 00000000 */   nop   
.L0044BFA4:
/* 0044BFA4 1240003C */  beqz  $s2, .L0044C098
/* 0044BFA8 00000000 */   nop   
/* 0044BFAC 8FB800D8 */  lw    $t8, 0xd8($sp)
/* 0044BFB0 00000000 */  nop   
/* 0044BFB4 0278082A */  slt   $at, $s3, $t8
/* 0044BFB8 1020004C */  beqz  $at, .L0044C0EC
/* 0044BFBC 03008825 */   move  $s1, $t8
/* 0044BFC0 00189080 */  sll   $s2, $t8, 2
/* 0044BFC4 02589023 */  subu  $s2, $s2, $t8
/* 0044BFC8 001290C0 */  sll   $s2, $s2, 3
.L0044BFCC:
/* 0044BFCC 8F8E8AF4 */  lw     $t6, %got(rld_list)($gp)
/* 0044BFD0 00000000 */  nop   
/* 0044BFD4 8DCE0000 */  lw    $t6, ($t6)
/* 0044BFD8 00000000 */  nop   
/* 0044BFDC 01D28021 */  addu  $s0, $t6, $s2
/* 0044BFE0 8E0D0008 */  lw    $t5, 8($s0)
/* 0044BFE4 00000000 */  nop   
/* 0044BFE8 168D0025 */  bne   $s4, $t5, .L0044C080
/* 0044BFEC 00000000 */   nop   
/* 0044BFF0 8E19000C */  lw    $t9, 0xc($s0)
/* 0044BFF4 00000000 */  nop   
/* 0044BFF8 16B90021 */  bne   $s5, $t9, .L0044C080
/* 0044BFFC 00000000 */   nop   
/* 0044C000 920F0010 */  lbu   $t7, 0x10($s0)
/* 0044C004 2401000E */  li    $at, 14
/* 0044C008 15E1001D */  bne   $t7, $at, .L0044C080
/* 0044C00C 00000000 */   nop   
/* 0044C010 920B0011 */  lbu   $t3, 0x11($s0)
/* 0044C014 00000000 */  nop   
/* 0044C018 16CB0019 */  bne   $s6, $t3, .L0044C080
/* 0044C01C 00000000 */   nop   
/* 0044C020 8FAC00D4 */  lw    $t4, 0xd4($sp)
/* 0044C024 8F8D8CC8 */  lw     $t5, %got(elf_flag)($gp)
/* 0044C028 8E0A0004 */  lw    $t2, 4($s0)
/* 0044C02C 91AD0000 */  lbu   $t5, ($t5)
/* 0044C030 019EC024 */  and   $t8, $t4, $fp
/* 0044C034 370E000A */  ori   $t6, $t8, 0xa
/* 0044C038 AFAE00D4 */  sw    $t6, 0xd4($sp)
/* 0044C03C 15A00009 */  bnez  $t5, .L0044C064
/* 0044C040 AFAA00D0 */   sw    $t2, 0xd0($sp)
/* 0044C044 8F998420 */  lw    $t9, %call16(st_wrreloc)($gp)
/* 0044C048 8FA400E0 */  lw    $a0, 0xe0($sp)
/* 0044C04C 02E02825 */  move  $a1, $s7
/* 0044C050 0320F809 */  jalr  $t9
/* 0044C054 24060008 */   li    $a2, 8
/* 0044C058 8FBC007C */  lw    $gp, 0x7c($sp)
/* 0044C05C 10000007 */  b     .L0044C07C
/* 0044C060 00401825 */   move  $v1, $v0
.L0044C064:
/* 0044C064 8F998280 */  lw    $t9, %call16(aself_st_wrreloc)($gp)
/* 0044C068 02E02025 */  move  $a0, $s7
/* 0044C06C 0320F809 */  jalr  $t9
/* 0044C070 24050008 */   li    $a1, 8
/* 0044C074 8FBC007C */  lw    $gp, 0x7c($sp)
/* 0044C078 00401825 */  move  $v1, $v0
.L0044C07C:
/* 0044C07C A2000010 */  sb    $zero, 0x10($s0)
.L0044C080:
/* 0044C080 2631FFFF */  addiu $s1, $s1, -1
/* 0044C084 1671FFD1 */  bne   $s3, $s1, .L0044BFCC
/* 0044C088 2652FFE8 */   addiu $s2, $s2, -0x18
/* 0044C08C 2409000E */  li    $t1, 14
/* 0044C090 10000076 */  b     .L0044C26C
/* 0044C094 2408000D */   li    $t0, 13
.L0044C098:
/* 0044C098 8F998CC8 */  lw     $t9, %got(elf_flag)($gp)
/* 0044C09C 8FA400E0 */  lw    $a0, 0xe0($sp)
/* 0044C0A0 93390000 */  lbu   $t9, ($t9)
/* 0044C0A4 00000000 */  nop   
/* 0044C0A8 1720000A */  bnez  $t9, .L0044C0D4
/* 0044C0AC 00000000 */   nop   
/* 0044C0B0 8F998420 */  lw    $t9, %call16(st_wrreloc)($gp)
/* 0044C0B4 02E02825 */  move  $a1, $s7
/* 0044C0B8 0320F809 */  jalr  $t9
/* 0044C0BC 24060008 */   li    $a2, 8
/* 0044C0C0 8FBC007C */  lw    $gp, 0x7c($sp)
/* 0044C0C4 00401825 */  move  $v1, $v0
/* 0044C0C8 2409000E */  li    $t1, 14
/* 0044C0CC 10000067 */  b     .L0044C26C
/* 0044C0D0 2408000D */   li    $t0, 13
.L0044C0D4:
/* 0044C0D4 8F998280 */  lw    $t9, %call16(aself_st_wrreloc)($gp)
/* 0044C0D8 02E02025 */  move  $a0, $s7
/* 0044C0DC 0320F809 */  jalr  $t9
/* 0044C0E0 24050008 */   li    $a1, 8
/* 0044C0E4 8FBC007C */  lw    $gp, 0x7c($sp)
/* 0044C0E8 00401825 */  move  $v1, $v0
.L0044C0EC:
/* 0044C0EC 2409000E */  li    $t1, 14
/* 0044C0F0 1000005E */  b     .L0044C26C
/* 0044C0F4 2408000D */   li    $t0, 13
.L0044C0F8:
/* 0044C0F8 1504002E */  bne   $t0, $a0, .L0044C1B4
/* 0044C0FC 00000000 */   nop   
/* 0044C100 8F8F8070 */  lw    $t7, %got(RO_100194F8)($gp)
/* 0044C104 03A06025 */  move  $t4, $sp
/* 0044C108 25EF94F8 */  addiu $t7, %lo(RO_100194F8) # addiu $t7, $t7, -0x6b08
/* 0044C10C 25EA0048 */  addiu $t2, $t7, 0x48
.L0044C110:
/* 0044C110 89E10000 */  lwl   $at, ($t7)
/* 0044C114 99E10003 */  lwr   $at, 3($t7)
/* 0044C118 25EF000C */  addiu $t7, $t7, 0xc
/* 0044C11C A9810000 */  swl   $at, ($t4)
/* 0044C120 B9810003 */  swr   $at, 3($t4)
/* 0044C124 89E1FFF8 */  lwl   $at, -8($t7)
/* 0044C128 99E1FFFB */  lwr   $at, -5($t7)
/* 0044C12C 258C000C */  addiu $t4, $t4, 0xc
/* 0044C130 A981FFF8 */  swl   $at, -8($t4)
/* 0044C134 B981FFFB */  swr   $at, -5($t4)
/* 0044C138 89E1FFFC */  lwl   $at, -4($t7)
/* 0044C13C 99E1FFFF */  lwr   $at, -1($t7)
/* 0044C140 00000000 */  nop   
/* 0044C144 A981FFFC */  swl   $at, -4($t4)
/* 0044C148 15EAFFF1 */  bne   $t7, $t2, .L0044C110
/* 0044C14C B981FFFF */   swr   $at, -1($t4)
/* 0044C150 89E10000 */  lwl   $at, ($t7)
/* 0044C154 99E10003 */  lwr   $at, 3($t7)
/* 0044C158 8F988C68 */  lw     $t8, %got(emptystring)($gp)
/* 0044C15C A9810000 */  swl   $at, ($t4)
/* 0044C160 B9810003 */  swr   $at, 3($t4)
/* 0044C164 89EA0004 */  lwl   $t2, 4($t7)
/* 0044C168 99EA0007 */  lwr   $t2, 7($t7)
/* 0044C16C 240E0001 */  li    $t6, 1
/* 0044C170 A98A0004 */  swl   $t2, 4($t4)
/* 0044C174 B98A0007 */  swr   $t2, 7($t4)
/* 0044C178 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0044C17C 8F180000 */  lw    $t8, ($t8)
/* 0044C180 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044C184 8FA60008 */  lw    $a2, 8($sp)
/* 0044C188 8FA50004 */  lw    $a1, 4($sp)
/* 0044C18C 8FA40000 */  lw    $a0, ($sp)
/* 0044C190 AFA300DC */  sw    $v1, 0xdc($sp)
/* 0044C194 AFAE0054 */  sw    $t6, 0x54($sp)
/* 0044C198 0320F809 */  jalr  $t9
/* 0044C19C AFB80050 */   sw    $t8, 0x50($sp)
/* 0044C1A0 8FBC007C */  lw    $gp, 0x7c($sp)
/* 0044C1A4 8FA300DC */  lw    $v1, 0xdc($sp)
/* 0044C1A8 2409000E */  li    $t1, 14
/* 0044C1AC 1000002F */  b     .L0044C26C
/* 0044C1B0 2408000D */   li    $t0, 13
.L0044C1B4:
/* 0044C1B4 1524002E */  bne   $t1, $a0, .L0044C270
/* 0044C1B8 8FB800D8 */   lw    $t8, 0xd8($sp)
/* 0044C1BC 8F8D8070 */  lw    $t5, %got(RO_100194A8)($gp)
/* 0044C1C0 03A05025 */  move  $t2, $sp
/* 0044C1C4 25AD94A8 */  addiu $t5, %lo(RO_100194A8) # addiu $t5, $t5, -0x6b58
/* 0044C1C8 25AB0048 */  addiu $t3, $t5, 0x48
.L0044C1CC:
/* 0044C1CC 89A10000 */  lwl   $at, ($t5)
/* 0044C1D0 99A10003 */  lwr   $at, 3($t5)
/* 0044C1D4 25AD000C */  addiu $t5, $t5, 0xc
/* 0044C1D8 A9410000 */  swl   $at, ($t2)
/* 0044C1DC B9410003 */  swr   $at, 3($t2)
/* 0044C1E0 89A1FFF8 */  lwl   $at, -8($t5)
/* 0044C1E4 99A1FFFB */  lwr   $at, -5($t5)
/* 0044C1E8 254A000C */  addiu $t2, $t2, 0xc
/* 0044C1EC A941FFF8 */  swl   $at, -8($t2)
/* 0044C1F0 B941FFFB */  swr   $at, -5($t2)
/* 0044C1F4 89A1FFFC */  lwl   $at, -4($t5)
/* 0044C1F8 99A1FFFF */  lwr   $at, -1($t5)
/* 0044C1FC 00000000 */  nop   
/* 0044C200 A941FFFC */  swl   $at, -4($t2)
/* 0044C204 15ABFFF1 */  bne   $t5, $t3, .L0044C1CC
/* 0044C208 B941FFFF */   swr   $at, -1($t2)
/* 0044C20C 89A10000 */  lwl   $at, ($t5)
/* 0044C210 99A10003 */  lwr   $at, 3($t5)
/* 0044C214 8F8F8C68 */  lw     $t7, %got(emptystring)($gp)
/* 0044C218 A9410000 */  swl   $at, ($t2)
/* 0044C21C B9410003 */  swr   $at, 3($t2)
/* 0044C220 89AB0004 */  lwl   $t3, 4($t5)
/* 0044C224 99AB0007 */  lwr   $t3, 7($t5)
/* 0044C228 240C0001 */  li    $t4, 1
/* 0044C22C A94B0004 */  swl   $t3, 4($t2)
/* 0044C230 B94B0007 */  swr   $t3, 7($t2)
/* 0044C234 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0044C238 8DEF0000 */  lw    $t7, ($t7)
/* 0044C23C 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044C240 8FA60008 */  lw    $a2, 8($sp)
/* 0044C244 8FA50004 */  lw    $a1, 4($sp)
/* 0044C248 8FA40000 */  lw    $a0, ($sp)
/* 0044C24C AFA300DC */  sw    $v1, 0xdc($sp)
/* 0044C250 AFAC0054 */  sw    $t4, 0x54($sp)
/* 0044C254 0320F809 */  jalr  $t9
/* 0044C258 AFAF0050 */   sw    $t7, 0x50($sp)
/* 0044C25C 8FBC007C */  lw    $gp, 0x7c($sp)
/* 0044C260 8FA300DC */  lw    $v1, 0xdc($sp)
/* 0044C264 2409000E */  li    $t1, 14
/* 0044C268 2408000D */  li    $t0, 13
.L0044C26C:
/* 0044C26C 8FB800D8 */  lw    $t8, 0xd8($sp)
.L0044C270:
/* 0044C270 8FB90098 */  lw    $t9, 0x98($sp)
/* 0044C274 270EFFFF */  addiu $t6, $t8, -1
/* 0044C278 272BFFE8 */  addiu $t3, $t9, -0x18
/* 0044C27C AFAB0098 */  sw    $t3, 0x98($sp)
/* 0044C280 15C0FE42 */  bnez  $t6, .L0044BB8C
/* 0044C284 AFAE00D8 */   sw    $t6, 0xd8($sp)
/* 0044C288 8F928AF0 */  lw     $s2, %got(nextrld)($gp)
/* 0044C28C 00000000 */  nop   
/* 0044C290 8E520000 */  lw    $s2, ($s2)
/* 0044C294 00000000 */  nop   
/* 0044C298 2652FFFF */  addiu $s2, $s2, -1
.L0044C29C:
/* 0044C29C 1A400145 */  blez  $s2, .L0044C7B4
/* 0044C2A0 240D0001 */   li    $t5, 1
/* 0044C2A4 26520001 */  addiu $s2, $s2, 1
/* 0044C2A8 00129880 */  sll   $s3, $s2, 2
/* 0044C2AC 02729823 */  subu  $s3, $s3, $s2
/* 0044C2B0 240A0018 */  li    $t2, 24
/* 0044C2B4 8F958AF8 */  lw     $s5, %got(picflag)($gp)
/* 0044C2B8 AFAA0098 */  sw    $t2, 0x98($sp)
/* 0044C2BC 001398C0 */  sll   $s3, $s3, 3
/* 0044C2C0 AFAD00D8 */  sw    $t5, 0xd8($sp)
/* 0044C2C4 24140006 */  li    $s4, 6
.L0044C2C8:
/* 0044C2C8 8F8F8AF4 */  lw     $t7, %got(rld_list)($gp)
/* 0044C2CC 8FAC0098 */  lw    $t4, 0x98($sp)
/* 0044C2D0 8DEF0000 */  lw    $t7, ($t7)
/* 0044C2D4 8FB800E4 */  lw    $t8, 0xe4($sp)
/* 0044C2D8 01EC8821 */  addu  $s1, $t7, $t4
/* 0044C2DC 8E39000C */  lw    $t9, 0xc($s1)
/* 0044C2E0 00000000 */  nop   
/* 0044C2E4 1719012F */  bne   $t8, $t9, .L0044C7A4
/* 0044C2E8 8FAF0098 */   lw    $t7, 0x98($sp)
/* 0044C2EC 92240010 */  lbu   $a0, 0x10($s1)
/* 0044C2F0 2401FF3F */  li    $at, -193
/* 0044C2F4 1080012A */  beqz  $a0, .L0044C7A0
/* 0044C2F8 308200FF */   andi  $v0, $a0, 0xff
/* 0044C2FC 8FAE00D4 */  lw    $t6, 0xd4($sp)
/* 0044C300 8E2B0004 */  lw    $t3, 4($s1)
/* 0044C304 244AFFFF */  addiu $t2, $v0, -1
/* 0044C308 01C16824 */  and   $t5, $t6, $at
/* 0044C30C 2D410019 */  sltiu $at, $t2, 0x19
/* 0044C310 AFAD00D4 */  sw    $t5, 0xd4($sp)
/* 0044C314 1020003B */  beqz  $at, .L0044C404
/* 0044C318 AFAB00D0 */   sw    $t3, 0xd0($sp)
/* 0044C31C 8F818070 */  lw    $at, %got(jtbl_100195C0)($gp)
/* 0044C320 000A5080 */  sll   $t2, $t2, 2
/* 0044C324 002A0821 */  addu  $at, $at, $t2
/* 0044C328 8C2A95C0 */  lw    $t2, %lo(jtbl_100195C0)($at)
/* 0044C32C 00000000 */  nop   
/* 0044C330 015C5021 */  addu  $t2, $t2, $gp
/* 0044C334 01400008 */  jr    $t2
/* 0044C338 00000000 */   nop   
.L0044C33C:
/* 0044C33C 1000003C */  b     .L0044C430
/* 0044C340 24030004 */   li    $v1, 4
.L0044C344:
/* 0044C344 1000003A */  b     .L0044C430
/* 0044C348 24030005 */   li    $v1, 5
.L0044C34C:
/* 0044C34C 10000038 */  b     .L0044C430
/* 0044C350 24030003 */   li    $v1, 3
.L0044C354:
/* 0044C354 10000036 */  b     .L0044C430
/* 0044C358 24030006 */   li    $v1, 6
.L0044C35C:
/* 0044C35C 10000034 */  b     .L0044C430
/* 0044C360 24030004 */   li    $v1, 4
.L0044C364:
/* 0044C364 10000032 */  b     .L0044C430
/* 0044C368 24030005 */   li    $v1, 5
.L0044C36C:
/* 0044C36C 10000030 */  b     .L0044C430
/* 0044C370 24030009 */   li    $v1, 9
.L0044C374:
/* 0044C374 1000002E */  b     .L0044C430
/* 0044C378 2403000A */   li    $v1, 10
.L0044C37C:
/* 0044C37C 1000002C */  b     .L0044C430
/* 0044C380 2403000B */   li    $v1, 11
.L0044C384:
/* 0044C384 1000002A */  b     .L0044C430
/* 0044C388 24030002 */   li    $v1, 2
.L0044C38C:
/* 0044C38C 10000028 */  b     .L0044C430
/* 0044C390 24030001 */   li    $v1, 1
.L0044C394:
/* 0044C394 10000026 */  b     .L0044C430
/* 0044C398 24030014 */   li    $v1, 20
.L0044C39C:
/* 0044C39C 10000024 */  b     .L0044C430
/* 0044C3A0 24030007 */   li    $v1, 7
.L0044C3A4:
/* 0044C3A4 10000022 */  b     .L0044C430
/* 0044C3A8 2403000F */   li    $v1, 15
.L0044C3AC:
/* 0044C3AC 10000020 */  b     .L0044C430
/* 0044C3B0 24030008 */   li    $v1, 8
.L0044C3B4:
/* 0044C3B4 1000001E */  b     .L0044C430
/* 0044C3B8 2403001E */   li    $v1, 30
.L0044C3BC:
/* 0044C3BC 1000001C */  b     .L0044C430
/* 0044C3C0 2403000C */   li    $v1, 12
.L0044C3C4:
/* 0044C3C4 1000001A */  b     .L0044C430
/* 0044C3C8 2403001D */   li    $v1, 29
.L0044C3CC:
/* 0044C3CC 10000018 */  b     .L0044C430
/* 0044C3D0 2403001B */   li    $v1, 27
.L0044C3D4:
/* 0044C3D4 10000016 */  b     .L0044C430
/* 0044C3D8 2403001C */   li    $v1, 28
.L0044C3DC:
/* 0044C3DC 10000014 */  b     .L0044C430
/* 0044C3E0 24030019 */   li    $v1, 25
.L0044C3E4:
/* 0044C3E4 10000012 */  b     .L0044C430
/* 0044C3E8 2403001A */   li    $v1, 26
.L0044C3EC:
/* 0044C3EC 10000010 */  b     .L0044C430
/* 0044C3F0 24030011 */   li    $v1, 17
.L0044C3F4:
/* 0044C3F4 1000000E */  b     .L0044C430
/* 0044C3F8 24030012 */   li    $v1, 18
.L0044C3FC:
/* 0044C3FC 1000000C */  b     .L0044C430
/* 0044C400 24030013 */   li    $v1, 19
.L0044C404:
/* 0044C404 8F868070 */  lw    $a2, %got(RO_100194A0)($gp)
/* 0044C408 8F99868C */  lw    $t9, %call16(caseerror)($gp)
/* 0044C40C 24040001 */  li    $a0, 1
/* 0044C410 240500E2 */  li    $a1, 226
/* 0044C414 24070008 */  li    $a3, 8
/* 0044C418 AFA300DC */  sw    $v1, 0xdc($sp)
/* 0044C41C 0320F809 */  jalr  $t9
/* 0044C420 24C694A0 */   addiu $a2, %lo(RO_100194A0) # addiu $a2, $a2, -0x6b60
/* 0044C424 8FBC007C */  lw    $gp, 0x7c($sp)
/* 0044C428 8FA300DC */  lw    $v1, 0xdc($sp)
/* 0044C42C 00000000 */  nop   
.L0044C430:
/* 0044C430 8FAF00D4 */  lw    $t7, 0xd4($sp)
/* 0044C434 8E300008 */  lw    $s0, 8($s1)
/* 0044C438 000F6680 */  sll   $t4, $t7, 0x1a
/* 0044C43C 000CC6C2 */  srl   $t8, $t4, 0x1b
/* 0044C440 0078C826 */  xor   $t9, $v1, $t8
/* 0044C444 00195EC0 */  sll   $t3, $t9, 0x1b
/* 0044C448 000B7682 */  srl   $t6, $t3, 0x1a
/* 0044C44C 01CF6826 */  xor   $t5, $t6, $t7
/* 0044C450 1600000A */  bnez  $s0, .L0044C47C
/* 0044C454 AFAD00D4 */   sw    $t5, 0xd4($sp)
/* 0044C458 922A0010 */  lbu   $t2, 0x10($s1)
/* 0044C45C 2401FFFE */  li    $at, -2
/* 0044C460 168A0006 */  bne   $s4, $t2, .L0044C47C
/* 0044C464 01A16024 */   and   $t4, $t5, $at
/* 0044C468 319800FF */  andi  $t8, $t4, 0xff
/* 0044C46C AFAC00D4 */  sw    $t4, 0xd4($sp)
/* 0044C470 37190100 */  ori   $t9, $t8, 0x100
/* 0044C474 100000B7 */  b     .L0044C754
/* 0044C478 AFB900D4 */   sw    $t9, 0xd4($sp)
.L0044C47C:
/* 0044C47C 8EA20000 */  lw    $v0, ($s5)
/* 0044C480 00000000 */  nop   
/* 0044C484 14400009 */  bnez  $v0, .L0044C4AC
/* 0044C488 00000000 */   nop   
/* 0044C48C 920B0037 */  lbu   $t3, 0x37($s0)
/* 0044C490 00000000 */  nop   
/* 0044C494 11600005 */  beqz  $t3, .L0044C4AC
/* 0044C498 00000000 */   nop   
/* 0044C49C 920E0035 */  lbu   $t6, 0x35($s0)
/* 0044C4A0 00000000 */  nop   
/* 0044C4A4 11C0000C */  beqz  $t6, .L0044C4D8
/* 0044C4A8 00000000 */   nop   
.L0044C4AC:
/* 0044C4AC 184000A0 */  blez  $v0, .L0044C730
/* 0044C4B0 8FB800D4 */   lw    $t8, 0xd4($sp)
/* 0044C4B4 8F9985F4 */  lw    $t9, %call16(islocalsym)($gp)
/* 0044C4B8 02002025 */  move  $a0, $s0
/* 0044C4BC 0320F809 */  jalr  $t9
/* 0044C4C0 00000000 */   nop   
/* 0044C4C4 8FBC007C */  lw    $gp, 0x7c($sp)
/* 0044C4C8 10400099 */  beqz  $v0, .L0044C730
/* 0044C4CC 8FB800D4 */   lw    $t8, 0xd4($sp)
/* 0044C4D0 8E300008 */  lw    $s0, 8($s1)
/* 0044C4D4 00000000 */  nop   
.L0044C4D8:
/* 0044C4D8 8E0C0030 */  lw    $t4, 0x30($s0)
/* 0044C4DC 8F8D8AE0 */  lw     $t5, %got(memory)($gp)
/* 0044C4E0 000CC080 */  sll   $t8, $t4, 2
/* 0044C4E4 030CC023 */  subu  $t8, $t8, $t4
/* 0044C4E8 8FAF00D4 */  lw    $t7, 0xd4($sp)
/* 0044C4EC 0018C080 */  sll   $t8, $t8, 2
/* 0044C4F0 8DAD0000 */  lw    $t5, ($t5)
/* 0044C4F4 2401FFFE */  li    $at, -2
/* 0044C4F8 030CC023 */  subu  $t8, $t8, $t4
/* 0044C4FC 0018C080 */  sll   $t8, $t8, 2
/* 0044C500 01E15024 */  and   $t2, $t7, $at
/* 0044C504 AFAA00D4 */  sw    $t2, 0xd4($sp)
/* 0044C508 01B8C821 */  addu  $t9, $t5, $t8
/* 0044C50C 93220008 */  lbu   $v0, 8($t9)
/* 0044C510 10000075 */  b     .L0044C6E8
/* 0044C514 2C41000A */   sltiu $at, $v0, 0xa
.L0044C518:
/* 0044C518 8FAB00D4 */  lw    $t3, 0xd4($sp)
/* 0044C51C 00000000 */  nop   
/* 0044C520 316E00FF */  andi  $t6, $t3, 0xff
/* 0044C524 35CF0100 */  ori   $t7, $t6, 0x100
/* 0044C528 1000008A */  b     .L0044C754
/* 0044C52C AFAF00D4 */   sw    $t7, 0xd4($sp)
.L0044C530:
/* 0044C530 8F8C8CD4 */  lw     $t4, %got(firstusertextseg)($gp)
/* 0044C534 8FAA00E4 */  lw    $t2, 0xe4($sp)
/* 0044C538 8D8C0000 */  lw    $t4, ($t4)
/* 0044C53C 8FB900D4 */  lw    $t9, 0xd4($sp)
/* 0044C540 014C6823 */  subu  $t5, $t2, $t4
/* 0044C544 25B8000C */  addiu $t8, $t5, 0xc
/* 0044C548 00195A02 */  srl   $t3, $t9, 8
/* 0044C54C 030B7026 */  xor   $t6, $t8, $t3
/* 0044C550 000E7A00 */  sll   $t7, $t6, 8
/* 0044C554 01F95026 */  xor   $t2, $t7, $t9
/* 0044C558 1000007E */  b     .L0044C754
/* 0044C55C AFAA00D4 */   sw    $t2, 0xd4($sp)
.L0044C560:
/* 0044C560 8FAC00D4 */  lw    $t4, 0xd4($sp)
/* 0044C564 00000000 */  nop   
/* 0044C568 318D00FF */  andi  $t5, $t4, 0xff
/* 0044C56C 35B80400 */  ori   $t8, $t5, 0x400
/* 0044C570 10000078 */  b     .L0044C754
/* 0044C574 AFB800D4 */   sw    $t8, 0xd4($sp)
.L0044C578:
/* 0044C578 8FAB00D4 */  lw    $t3, 0xd4($sp)
/* 0044C57C 00000000 */  nop   
/* 0044C580 316E00FF */  andi  $t6, $t3, 0xff
/* 0044C584 35CF0300 */  ori   $t7, $t6, 0x300
/* 0044C588 10000072 */  b     .L0044C754
/* 0044C58C AFAF00D4 */   sw    $t7, 0xd4($sp)
.L0044C590:
/* 0044C590 8FB900D4 */  lw    $t9, 0xd4($sp)
/* 0044C594 00000000 */  nop   
/* 0044C598 332A00FF */  andi  $t2, $t9, 0xff
/* 0044C59C 354C0500 */  ori   $t4, $t2, 0x500
/* 0044C5A0 1000006C */  b     .L0044C754
/* 0044C5A4 AFAC00D4 */   sw    $t4, 0xd4($sp)
.L0044C5A8:
/* 0044C5A8 8FAD00D4 */  lw    $t5, 0xd4($sp)
/* 0044C5AC 00000000 */  nop   
/* 0044C5B0 31B800FF */  andi  $t8, $t5, 0xff
/* 0044C5B4 370B0600 */  ori   $t3, $t8, 0x600
/* 0044C5B8 10000066 */  b     .L0044C754
/* 0044C5BC AFAB00D4 */   sw    $t3, 0xd4($sp)
.L0044C5C0:
/* 0044C5C0 8FAE00D4 */  lw    $t6, 0xd4($sp)
/* 0044C5C4 00000000 */  nop   
/* 0044C5C8 31CF00FF */  andi  $t7, $t6, 0xff
/* 0044C5CC 35F90200 */  ori   $t9, $t7, 0x200
/* 0044C5D0 10000060 */  b     .L0044C754
/* 0044C5D4 AFB900D4 */   sw    $t9, 0xd4($sp)
.L0044C5D8:
/* 0044C5D8 8FAA00D4 */  lw    $t2, 0xd4($sp)
/* 0044C5DC 00000000 */  nop   
/* 0044C5E0 314C00FF */  andi  $t4, $t2, 0xff
/* 0044C5E4 358D0800 */  ori   $t5, $t4, 0x800
/* 0044C5E8 1000005A */  b     .L0044C754
/* 0044C5EC AFAD00D4 */   sw    $t5, 0xd4($sp)
.L0044C5F0:
/* 0044C5F0 8FB800D4 */  lw    $t8, 0xd4($sp)
/* 0044C5F4 00000000 */  nop   
/* 0044C5F8 330B00FF */  andi  $t3, $t8, 0xff
/* 0044C5FC 356E0900 */  ori   $t6, $t3, 0x900
/* 0044C600 10000054 */  b     .L0044C754
/* 0044C604 AFAE00D4 */   sw    $t6, 0xd4($sp)
.L0044C608:
/* 0044C608 8F8F8CB4 */  lw     $t7, %got(excpt_opt)($gp)
/* 0044C60C 8FB900D4 */  lw    $t9, 0xd4($sp)
/* 0044C610 91EF0000 */  lbu   $t7, ($t7)
/* 0044C614 332A00FF */  andi  $t2, $t9, 0xff
/* 0044C618 11E0004E */  beqz  $t7, .L0044C754
/* 0044C61C 354C0A00 */   ori   $t4, $t2, 0xa00
/* 0044C620 1000004C */  b     .L0044C754
/* 0044C624 AFAC00D4 */   sw    $t4, 0xd4($sp)
.L0044C628:
/* 0044C628 8E0D0060 */  lw    $t5, 0x60($s0)
.L0044C62C:
/* 0044C62C 8F818BB8 */  lw     $at, %got(currentline)($gp)
/* 0044C630 8F8B8070 */  lw    $t3, %got(RO_10019450)($gp)
/* 0044C634 AC2D0000 */  sw    $t5, ($at)
/* 0044C638 8E18005C */  lw    $t8, 0x5c($s0)
/* 0044C63C 8F818BBC */  lw     $at, %got(currentfile)($gp)
/* 0044C640 256B9450 */  addiu $t3, %lo(RO_10019450) # addiu $t3, $t3, -0x6bb0
/* 0044C644 256F0048 */  addiu $t7, $t3, 0x48
/* 0044C648 03A0C825 */  move  $t9, $sp
/* 0044C64C AC380000 */  sw    $t8, ($at)
.L0044C650:
/* 0044C650 89610000 */  lwl   $at, ($t3)
/* 0044C654 99610003 */  lwr   $at, 3($t3)
/* 0044C658 256B000C */  addiu $t3, $t3, 0xc
/* 0044C65C AB210000 */  swl   $at, ($t9)
/* 0044C660 BB210003 */  swr   $at, 3($t9)
/* 0044C664 8961FFF8 */  lwl   $at, -8($t3)
/* 0044C668 9961FFFB */  lwr   $at, -5($t3)
/* 0044C66C 2739000C */  addiu $t9, $t9, 0xc
/* 0044C670 AB21FFF8 */  swl   $at, -8($t9)
/* 0044C674 BB21FFFB */  swr   $at, -5($t9)
/* 0044C678 8961FFFC */  lwl   $at, -4($t3)
/* 0044C67C 9961FFFF */  lwr   $at, -1($t3)
/* 0044C680 00000000 */  nop   
/* 0044C684 AB21FFFC */  swl   $at, -4($t9)
/* 0044C688 156FFFF1 */  bne   $t3, $t7, .L0044C650
/* 0044C68C BB21FFFF */   swr   $at, -1($t9)
/* 0044C690 89610000 */  lwl   $at, ($t3)
/* 0044C694 99610003 */  lwr   $at, 3($t3)
/* 0044C698 8F8A8C68 */  lw     $t2, %got(emptystring)($gp)
/* 0044C69C AB210000 */  swl   $at, ($t9)
/* 0044C6A0 BB210003 */  swr   $at, 3($t9)
/* 0044C6A4 896F0004 */  lwl   $t7, 4($t3)
/* 0044C6A8 996F0007 */  lwr   $t7, 7($t3)
/* 0044C6AC 240C0002 */  li    $t4, 2
/* 0044C6B0 AB2F0004 */  swl   $t7, 4($t9)
/* 0044C6B4 BB2F0007 */  swr   $t7, 7($t9)
/* 0044C6B8 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0044C6BC 8D4A0000 */  lw    $t2, ($t2)
/* 0044C6C0 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044C6C4 8FA60008 */  lw    $a2, 8($sp)
/* 0044C6C8 8FA50004 */  lw    $a1, 4($sp)
/* 0044C6CC 8FA40000 */  lw    $a0, ($sp)
/* 0044C6D0 AFAC0054 */  sw    $t4, 0x54($sp)
/* 0044C6D4 0320F809 */  jalr  $t9
/* 0044C6D8 AFAA0050 */   sw    $t2, 0x50($sp)
/* 0044C6DC 8FBC007C */  lw    $gp, 0x7c($sp)
/* 0044C6E0 1000001C */  b     .L0044C754
/* 0044C6E4 00000000 */   nop   
.L0044C6E8:
/* 0044C6E8 14200005 */  bnez  $at, .L0044C700
/* 0044C6EC 2401000F */   li    $at, 15
/* 0044C6F0 1041FF8F */  beq   $v0, $at, .L0044C530
/* 0044C6F4 00000000 */   nop   
/* 0044C6F8 1000FFCC */  b     .L0044C62C
/* 0044C6FC 8E0D0060 */   lw    $t5, 0x60($s0)
.L0044C700:
/* 0044C700 2C41000A */  sltiu $at, $v0, 0xa
/* 0044C704 1020FFC8 */  beqz  $at, .L0044C628
/* 0044C708 00000000 */   nop   
/* 0044C70C 8F818070 */  lw    $at, %got(jtbl_10019624)($gp)
/* 0044C710 00026880 */  sll   $t5, $v0, 2
/* 0044C714 002D0821 */  addu  $at, $at, $t5
/* 0044C718 8C2D9624 */  lw    $t5, %lo(jtbl_10019624)($at)
/* 0044C71C 00000000 */  nop   
/* 0044C720 01BC6821 */  addu  $t5, $t5, $gp
/* 0044C724 01A00008 */  jr    $t5
/* 0044C728 00000000 */   nop   
/* 0044C72C 8FB800D4 */  lw    $t8, 0xd4($sp)
.L0044C730:
/* 0044C730 8E2F0008 */  lw    $t7, 8($s1)
/* 0044C734 370E0001 */  ori   $t6, $t8, 1
/* 0044C738 AFAE00D4 */  sw    $t6, 0xd4($sp)
/* 0044C73C 8DEB001C */  lw    $t3, 0x1c($t7)
/* 0044C740 000ECA02 */  srl   $t9, $t6, 8
/* 0044C744 01795026 */  xor   $t2, $t3, $t9
/* 0044C748 000A6200 */  sll   $t4, $t2, 8
/* 0044C74C 018E6826 */  xor   $t5, $t4, $t6
/* 0044C750 AFAD00D4 */  sw    $t5, 0xd4($sp)
.L0044C754:
/* 0044C754 8F988CC8 */  lw     $t8, %got(elf_flag)($gp)
/* 0044C758 8FA400E0 */  lw    $a0, 0xe0($sp)
/* 0044C75C 93180000 */  lbu   $t8, ($t8)
/* 0044C760 00000000 */  nop   
/* 0044C764 17000008 */  bnez  $t8, .L0044C788
/* 0044C768 00000000 */   nop   
/* 0044C76C 8F998420 */  lw    $t9, %call16(st_wrreloc)($gp)
/* 0044C770 02E02825 */  move  $a1, $s7
/* 0044C774 0320F809 */  jalr  $t9
/* 0044C778 24060008 */   li    $a2, 8
/* 0044C77C 8FBC007C */  lw    $gp, 0x7c($sp)
/* 0044C780 10000007 */  b     .L0044C7A0
/* 0044C784 00401825 */   move  $v1, $v0
.L0044C788:
/* 0044C788 8F998280 */  lw    $t9, %call16(aself_st_wrreloc)($gp)
/* 0044C78C 02E02025 */  move  $a0, $s7
/* 0044C790 0320F809 */  jalr  $t9
/* 0044C794 24050008 */   li    $a1, 8
/* 0044C798 8FBC007C */  lw    $gp, 0x7c($sp)
/* 0044C79C 00401825 */  move  $v1, $v0
.L0044C7A0:
/* 0044C7A0 8FAF0098 */  lw    $t7, 0x98($sp)
.L0044C7A4:
/* 0044C7A4 00000000 */  nop   
/* 0044C7A8 25EB0018 */  addiu $t3, $t7, 0x18
/* 0044C7AC 1573FEC6 */  bne   $t3, $s3, .L0044C2C8
/* 0044C7B0 AFAB0098 */   sw    $t3, 0x98($sp)
.L0044C7B4:
/* 0044C7B4 8FBF0084 */  lw    $ra, 0x84($sp)
/* 0044C7B8 8FB0005C */  lw    $s0, 0x5c($sp)
/* 0044C7BC 8FB10060 */  lw    $s1, 0x60($sp)
/* 0044C7C0 8FB20064 */  lw    $s2, 0x64($sp)
/* 0044C7C4 8FB30068 */  lw    $s3, 0x68($sp)
/* 0044C7C8 8FB4006C */  lw    $s4, 0x6c($sp)
/* 0044C7CC 8FB50070 */  lw    $s5, 0x70($sp)
/* 0044C7D0 8FB60074 */  lw    $s6, 0x74($sp)
/* 0044C7D4 8FB70078 */  lw    $s7, 0x78($sp)
/* 0044C7D8 8FBE0080 */  lw    $fp, 0x80($sp)
/* 0044C7DC 03E00008 */  jr    $ra
/* 0044C7E0 27BD00E0 */   addiu $sp, $sp, 0xe0

    .type wrreloc, @function
    .size wrreloc, .-wrreloc
    .end wrreloc

    .type func_0044C7E4, @function
func_0044C7E4:
    # 0044C964 do_wrscnhdr
/* 0044C7E4 3C1C0FBE */  .cpload $t9
/* 0044C7E8 279CDA7C */  
/* 0044C7EC 0399E021 */  
/* 0044C7F0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0044C7F4 8F998690 */  lw    $t9, %call16(new)($gp)
/* 0044C7F8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0044C7FC AFA40028 */  sw    $a0, 0x28($sp)
/* 0044C800 AFA5002C */  sw    $a1, 0x2c($sp)
/* 0044C804 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0044C808 AFA60030 */  sw    $a2, 0x30($sp)
/* 0044C80C AFA70034 */  sw    $a3, 0x34($sp)
/* 0044C810 AFA20024 */  sw    $v0, 0x24($sp)
/* 0044C814 00002825 */  move  $a1, $zero
/* 0044C818 0320F809 */  jalr  $t9
/* 0044C81C 24040028 */   li    $a0, 40
/* 0044C820 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0044C824 00402025 */  move  $a0, $v0
/* 0044C828 8F998180 */  lw    $t9, %call16(memset)($gp)
/* 0044C82C 00002825 */  move  $a1, $zero
/* 0044C830 0320F809 */  jalr  $t9
/* 0044C834 24060028 */   li    $a2, 40
/* 0044C838 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0044C83C 00403825 */  move  $a3, $v0
/* 0044C840 27A3002C */  addiu $v1, $sp, 0x2c
/* 0044C844 24440001 */  addiu $a0, $v0, 1
/* 0044C848 27A50034 */  addiu $a1, $sp, 0x34
.L0044C84C:
/* 0044C84C 906E0000 */  lbu   $t6, ($v1)
/* 0044C850 24630001 */  addiu $v1, $v1, 1
/* 0044C854 24840001 */  addiu $a0, $a0, 1
/* 0044C858 1465FFFC */  bne   $v1, $a1, .L0044C84C
/* 0044C85C A08EFFFE */   sb    $t6, -2($a0)
/* 0044C860 8F8F8CD0 */  lw     $t7, %got(nonzero_scnbase)($gp)
/* 0044C864 8FB8004C */  lw    $t8, 0x4c($sp)
/* 0044C868 91EF0000 */  lbu   $t7, ($t7)
/* 0044C86C 24060028 */  li    $a2, 40
/* 0044C870 11E00005 */  beqz  $t7, .L0044C888
/* 0044C874 00E02825 */   move  $a1, $a3
/* 0044C878 AC580008 */  sw    $t8, 8($v0)
/* 0044C87C 8FB90050 */  lw    $t9, 0x50($sp)
/* 0044C880 10000003 */  b     .L0044C890
/* 0044C884 AC59000C */   sw    $t9, 0xc($v0)
.L0044C888:
/* 0044C888 AC400008 */  sw    $zero, 8($v0)
/* 0044C88C AC40000C */  sw    $zero, 0xc($v0)
.L0044C890:
/* 0044C890 8FA80054 */  lw    $t0, 0x54($sp)
/* 0044C894 3404FFFF */  li    $a0, 65535
/* 0044C898 AC480010 */  sw    $t0, 0x10($v0)
/* 0044C89C 8FA90058 */  lw    $t1, 0x58($sp)
/* 0044C8A0 00000000 */  nop   
/* 0044C8A4 AC490014 */  sw    $t1, 0x14($v0)
/* 0044C8A8 8FAA005C */  lw    $t2, 0x5c($sp)
/* 0044C8AC 00000000 */  nop   
/* 0044C8B0 AC4A0018 */  sw    $t2, 0x18($v0)
/* 0044C8B4 8FAB0068 */  lw    $t3, 0x68($sp)
/* 0044C8B8 00000000 */  nop   
/* 0044C8BC AC4B001C */  sw    $t3, 0x1c($v0)
/* 0044C8C0 8FAC0064 */  lw    $t4, 0x64($sp)
/* 0044C8C4 00000000 */  nop   
/* 0044C8C8 AC4C0024 */  sw    $t4, 0x24($v0)
/* 0044C8CC 8FAD006C */  lw    $t5, 0x6c($sp)
/* 0044C8D0 00000000 */  nop   
/* 0044C8D4 A44D0022 */  sh    $t5, 0x22($v0)
/* 0044C8D8 8FA30060 */  lw    $v1, 0x60($sp)
/* 0044C8DC 00000000 */  nop   
/* 0044C8E0 000370C2 */  srl   $t6, $v1, 3
/* 0044C8E4 01C4082B */  sltu  $at, $t6, $a0
/* 0044C8E8 14200006 */  bnez  $at, .L0044C904
/* 0044C8EC 01C01825 */   move  $v1, $t6
/* 0044C8F0 3C012000 */  lui   $at, 0x2000
/* 0044C8F4 0181C025 */  or    $t8, $t4, $at
/* 0044C8F8 A4440020 */  sh    $a0, 0x20($v0)
/* 0044C8FC 10000002 */  b     .L0044C908
/* 0044C900 AC580024 */   sw    $t8, 0x24($v0)
.L0044C904:
/* 0044C904 A4430020 */  sh    $v1, 0x20($v0)
.L0044C908:
/* 0044C908 8F998CC8 */  lw     $t9, %got(elf_flag)($gp)
/* 0044C90C 8FA80028 */  lw    $t0, 0x28($sp)
/* 0044C910 93390000 */  lbu   $t9, ($t9)
/* 0044C914 8FA90024 */  lw    $t1, 0x24($sp)
/* 0044C918 17200008 */  bnez  $t9, .L0044C93C
/* 0044C91C 00000000 */   nop   
/* 0044C920 8F99841C */  lw    $t9, %call16(st_wrscnhdr)($gp)
/* 0044C924 8D040000 */  lw    $a0, ($t0)
/* 0044C928 0320F809 */  jalr  $t9
/* 0044C92C 00E02825 */   move  $a1, $a3
/* 0044C930 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0044C934 10000008 */  b     .L0044C958
/* 0044C938 8FBF001C */   lw    $ra, 0x1c($sp)
.L0044C93C:
/* 0044C93C 8F99826C */  lw    $t9, %call16(gen_elf_scnhdr)($gp)
/* 0044C940 8524004A */  lh    $a0, 0x4a($t1)
/* 0044C944 0320F809 */  jalr  $t9
/* 0044C948 24060028 */   li    $a2, 40
/* 0044C94C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0044C950 00000000 */  nop   
/* 0044C954 8FBF001C */  lw    $ra, 0x1c($sp)
.L0044C958:
/* 0044C958 27BD0028 */  addiu $sp, $sp, 0x28
/* 0044C95C 03E00008 */  jr    $ra
/* 0044C960 00000000 */   nop   

glabel do_wrscnhdr
    .ent do_wrscnhdr
    # 004392DC wrcoffobj
    # 0043ECB8 wrelfobj
/* 0044C964 3C1C0FBE */  .cpload $t9
/* 0044C968 279CD8FC */  
/* 0044C96C 0399E021 */  
/* 0044C970 27BDFF78 */  addiu $sp, $sp, -0x88
/* 0044C974 00047880 */  sll   $t7, $a0, 2
/* 0044C978 8F8E8AE0 */  lw     $t6, %got(memory)($gp)
/* 0044C97C 01E47823 */  subu  $t7, $t7, $a0
/* 0044C980 000F7880 */  sll   $t7, $t7, 2
/* 0044C984 8DCE0000 */  lw    $t6, ($t6)
/* 0044C988 01E47823 */  subu  $t7, $t7, $a0
/* 0044C98C 000F7880 */  sll   $t7, $t7, 2
/* 0044C990 AFBF0054 */  sw    $ra, 0x54($sp)
/* 0044C994 AFBC0050 */  sw    $gp, 0x50($sp)
/* 0044C998 AFA40088 */  sw    $a0, 0x88($sp)
/* 0044C99C AFA5008C */  sw    $a1, 0x8c($sp)
/* 0044C9A0 AFA60090 */  sw    $a2, 0x90($sp)
/* 0044C9A4 AFA70094 */  sw    $a3, 0x94($sp)
/* 0044C9A8 01CFC021 */  addu  $t8, $t6, $t7
/* 0044C9AC 93050008 */  lbu   $a1, 8($t8)
/* 0044C9B0 8F8F8D88 */  lw     $t7, %got(gp_tables)($gp)
/* 0044C9B4 0005C880 */  sll   $t9, $a1, 2
/* 0044C9B8 AFB90070 */  sw    $t9, 0x70($sp)
/* 0044C9BC 032FC021 */  addu  $t8, $t9, $t7
/* 0044C9C0 8F190000 */  lw    $t9, ($t8)
/* 0044C9C4 00803825 */  move  $a3, $a0
/* 0044C9C8 1320001C */  beqz  $t9, .L0044CA3C
/* 0044C9CC 00004025 */   move  $t0, $zero
/* 0044C9D0 10A00017 */  beqz  $a1, .L0044CA30
/* 0044C9D4 00002025 */   move  $a0, $zero
/* 0044C9D8 8FA900C4 */  lw    $t1, 0xc4($sp)
/* 0044C9DC 8FA600BC */  lw    $a2, 0xbc($sp)
/* 0044C9E0 00001025 */  move  $v0, $zero
/* 0044C9E4 01E01825 */  move  $v1, $t7
.L0044C9E8:
/* 0044C9E8 8C6E0000 */  lw    $t6, ($v1)
/* 0044C9EC 0004C080 */  sll   $t8, $a0, 2
/* 0044C9F0 11C00009 */  beqz  $t6, .L0044CA18
/* 0044C9F4 24630004 */   addiu $v1, $v1, 4
/* 0044C9F8 00D8C821 */  addu  $t9, $a2, $t8
/* 0044C9FC 8F2F0000 */  lw    $t7, ($t9)
/* 0044CA00 01227021 */  addu  $t6, $t1, $v0
/* 0044CA04 11E00004 */  beqz  $t7, .L0044CA18
/* 0044CA08 00000000 */   nop   
/* 0044CA0C 8DD80000 */  lw    $t8, ($t6)
/* 0044CA10 00000000 */  nop   
/* 0044CA14 01184021 */  addu  $t0, $t0, $t8
.L0044CA18:
/* 0044CA18 24840001 */  addiu $a0, $a0, 1
/* 0044CA1C 309900FF */  andi  $t9, $a0, 0xff
/* 0044CA20 0325082B */  sltu  $at, $t9, $a1
/* 0044CA24 03202025 */  move  $a0, $t9
/* 0044CA28 1420FFEF */  bnez  $at, .L0044C9E8
/* 0044CA2C 24420004 */   addiu $v0, $v0, 4
.L0044CA30:
/* 0044CA30 8FAE00B0 */  lw    $t6, 0xb0($sp)
/* 0044CA34 000878C0 */  sll   $t7, $t0, 3
/* 0044CA38 01EE4021 */  addu  $t0, $t7, $t6
.L0044CA3C:
/* 0044CA3C 2CB80020 */  sltiu $t8, $a1, 0x20
/* 0044CA40 0018C823 */  negu  $t9, $t8
/* 0044CA44 3C011800 */  lui   $at, 0x1800
/* 0044CA48 03217824 */  and   $t7, $t9, $at
/* 0044CA4C 8FA600BC */  lw    $a2, 0xbc($sp)
/* 0044CA50 8FA900C4 */  lw    $t1, 0xc4($sp)
/* 0044CA54 00AF7004 */  sllv  $t6, $t7, $a1
/* 0044CA58 05C10004 */  bgez  $t6, .L0044CA6C
/* 0044CA5C 00075080 */   sll   $t2, $a3, 2
/* 0044CA60 00005825 */  move  $t3, $zero
/* 0044CA64 10000006 */  b     .L0044CA80
/* 0044CA68 00006025 */   move  $t4, $zero
.L0044CA6C:
/* 0044CA6C 8FB800C8 */  lw    $t8, 0xc8($sp)
/* 0044CA70 8FB900B4 */  lw    $t9, 0xb4($sp)
/* 0044CA74 8F0B0000 */  lw    $t3, ($t8)
/* 0044CA78 8F2C0000 */  lw    $t4, ($t9)
/* 0044CA7C 00000000 */  nop   
.L0044CA80:
/* 0044CA80 00CA6821 */  addu  $t5, $a2, $t2
/* 0044CA84 8DBF0000 */  lw    $ra, ($t5)
/* 0044CA88 27AF008C */  addiu $t7, $sp, 0x8c
/* 0044CA8C 13E0004E */  beqz  $ra, .L0044CBC8
/* 0044CA90 00000000 */   nop   
/* 0044CA94 89E10000 */  lwl   $at, ($t7)
/* 0044CA98 99E10003 */  lwr   $at, 3($t7)
/* 0044CA9C 8FB900B8 */  lw    $t9, 0xb8($sp)
/* 0044CAA0 ABA10004 */  swl   $at, 4($sp)
/* 0044CAA4 BBA10007 */  swr   $at, 7($sp)
/* 0044CAA8 89F80004 */  lwl   $t8, 4($t7)
/* 0044CAAC 99F80007 */  lwr   $t8, 7($t7)
/* 0044CAB0 032A7021 */  addu  $t6, $t9, $t2
/* 0044CAB4 ABB80008 */  swl   $t8, 8($sp)
/* 0044CAB8 BBB8000B */  swr   $t8, 0xb($sp)
/* 0044CABC 89E10008 */  lwl   $at, 8($t7)
/* 0044CAC0 99E1000B */  lwr   $at, 0xb($t7)
/* 0044CAC4 8FA60008 */  lw    $a2, 8($sp)
/* 0044CAC8 ABA1000C */  swl   $at, 0xc($sp)
/* 0044CACC BBA1000F */  swr   $at, 0xf($sp)
/* 0044CAD0 89F8000C */  lwl   $t8, 0xc($t7)
/* 0044CAD4 99F8000F */  lwr   $t8, 0xf($t7)
/* 0044CAD8 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044CADC ABB80010 */  swl   $t8, 0x10($sp)
/* 0044CAE0 BBB80013 */  swr   $t8, 0x13($sp)
/* 0044CAE4 89E10010 */  lwl   $at, 0x10($t7)
/* 0044CAE8 99E10013 */  lwr   $at, 0x13($t7)
/* 0044CAEC 8FA50004 */  lw    $a1, 4($sp)
/* 0044CAF0 ABA10014 */  swl   $at, 0x14($sp)
/* 0044CAF4 BBA10017 */  swr   $at, 0x17($sp)
/* 0044CAF8 89F80014 */  lwl   $t8, 0x14($t7)
/* 0044CAFC 99F80017 */  lwr   $t8, 0x17($t7)
/* 0044CB00 8FA400CC */  lw    $a0, 0xcc($sp)
/* 0044CB04 ABB80018 */  swl   $t8, 0x18($sp)
/* 0044CB08 BBB8001B */  swr   $t8, 0x1b($sp)
/* 0044CB0C 89E10018 */  lwl   $at, 0x18($t7)
/* 0044CB10 99E1001B */  lwr   $at, 0x1b($t7)
/* 0044CB14 27A20088 */  addiu $v0, $sp, 0x88
/* 0044CB18 ABA1001C */  swl   $at, 0x1c($sp)
/* 0044CB1C BBA1001F */  swr   $at, 0x1f($sp)
/* 0044CB20 89F8001C */  lwl   $t8, 0x1c($t7)
/* 0044CB24 99F8001F */  lwr   $t8, 0x1f($t7)
/* 0044CB28 8FAF00C0 */  lw    $t7, 0xc0($sp)
/* 0044CB2C ABB80020 */  swl   $t8, 0x20($sp)
/* 0044CB30 BBB80023 */  swr   $t8, 0x23($sp)
/* 0044CB34 8DC30000 */  lw    $v1, ($t6)
/* 0044CB38 01EAC021 */  addu  $t8, $t7, $t2
/* 0044CB3C AFB80060 */  sw    $t8, 0x60($sp)
/* 0044CB40 AFAC0034 */  sw    $t4, 0x34($sp)
/* 0044CB44 AFAB0030 */  sw    $t3, 0x30($sp)
/* 0044CB48 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0044CB4C AFA30024 */  sw    $v1, 0x24($sp)
/* 0044CB50 AFA30028 */  sw    $v1, 0x28($sp)
/* 0044CB54 8F190000 */  lw    $t9, ($t8)
/* 0044CB58 8FAF0070 */  lw    $t7, 0x70($sp)
/* 0044CB5C 8FAE00AC */  lw    $t6, 0xac($sp)
/* 0044CB60 AFA80040 */  sw    $t0, 0x40($sp)
/* 0044CB64 AFB90038 */  sw    $t9, 0x38($sp)
/* 0044CB68 012FC021 */  addu  $t8, $t1, $t7
/* 0044CB6C AFAE003C */  sw    $t6, 0x3c($sp)
/* 0044CB70 8F190000 */  lw    $t9, ($t8)
/* 0044CB74 AFAD0068 */  sw    $t5, 0x68($sp)
/* 0044CB78 AFB90044 */  sw    $t9, 0x44($sp)
/* 0044CB7C 8F998028 */  lw    $t9, %got(func_0044C7E4)($gp)
/* 0044CB80 00000000 */  nop   
/* 0044CB84 2739C7E4 */  addiu $t9, %lo(func_0044C7E4) # addiu $t9, $t9, -0x381c
/* 0044CB88 0320F809 */  jalr  $t9
/* 0044CB8C 00000000 */   nop   
/* 0044CB90 8FA200C8 */  lw    $v0, 0xc8($sp)
/* 0044CB94 8FAD0068 */  lw    $t5, 0x68($sp)
/* 0044CB98 8C4E0000 */  lw    $t6, ($v0)
/* 0044CB9C 8DAF0000 */  lw    $t7, ($t5)
/* 0044CBA0 8FA300B4 */  lw    $v1, 0xb4($sp)
/* 0044CBA4 8FBC0050 */  lw    $gp, 0x50($sp)
/* 0044CBA8 01CFC021 */  addu  $t8, $t6, $t7
/* 0044CBAC AC580000 */  sw    $t8, ($v0)
/* 0044CBB0 8FAE0060 */  lw    $t6, 0x60($sp)
/* 0044CBB4 8C790000 */  lw    $t9, ($v1)
/* 0044CBB8 8DCF0000 */  lw    $t7, ($t6)
/* 0044CBBC 00000000 */  nop   
/* 0044CBC0 032FC021 */  addu  $t8, $t9, $t7
/* 0044CBC4 AC780000 */  sw    $t8, ($v1)
.L0044CBC8:
/* 0044CBC8 8FBF0054 */  lw    $ra, 0x54($sp)
/* 0044CBCC 27BD0088 */  addiu $sp, $sp, 0x88
/* 0044CBD0 03E00008 */  jr    $ra
/* 0044CBD4 00000000 */   nop   

    .type do_wrscnhdr, @function
    .size do_wrscnhdr, .-do_wrscnhdr
    .end do_wrscnhdr

    .type func_0044CBD8, @function
func_0044CBD8:
    # 0044D35C wrobj
/* 0044CBD8 3C1C0FBE */  .cpload $t9
/* 0044CBDC 279CD688 */  
/* 0044CBE0 0399E021 */  
/* 0044CBE4 00041880 */  sll   $v1, $a0, 2
/* 0044CBE8 8F8E8AE0 */  lw     $t6, %got(memory)($gp)
/* 0044CBEC 00641823 */  subu  $v1, $v1, $a0
/* 0044CBF0 00031880 */  sll   $v1, $v1, 2
/* 0044CBF4 8DCE0000 */  lw    $t6, ($t6)
/* 0044CBF8 00641823 */  subu  $v1, $v1, $a0
/* 0044CBFC 00031880 */  sll   $v1, $v1, 2
/* 0044CC00 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0044CC04 01C34021 */  addu  $t0, $t6, $v1
/* 0044CC08 91060008 */  lbu   $a2, 8($t0)
/* 0044CC0C 24010001 */  li    $at, 1
/* 0044CC10 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0044CC14 AFBC0020 */  sw    $gp, 0x20($sp)
/* 0044CC18 AFA50044 */  sw    $a1, 0x44($sp)
/* 0044CC1C AFA2003C */  sw    $v0, 0x3c($sp)
/* 0044CC20 10C10004 */  beq   $a2, $at, .L0044CC34
/* 0044CC24 00803825 */   move  $a3, $a0
/* 0044CC28 24010002 */  li    $at, 2
/* 0044CC2C 14C1000E */  bne   $a2, $at, .L0044CC68
/* 0044CC30 00000000 */   nop   
.L0044CC34:
/* 0044CC34 8F9985C0 */  lw    $t9, %call16(add_data_to_gp_table)($gp)
/* 0044CC38 00C02025 */  move  $a0, $a2
/* 0044CC3C 24050001 */  li    $a1, 1
/* 0044CC40 AFA30030 */  sw    $v1, 0x30($sp)
/* 0044CC44 0320F809 */  jalr  $t9
/* 0044CC48 AFA70040 */   sw    $a3, 0x40($sp)
/* 0044CC4C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0044CC50 8FA30030 */  lw    $v1, 0x30($sp)
/* 0044CC54 8F8F8AE0 */  lw     $t7, %got(memory)($gp)
/* 0044CC58 8FA70040 */  lw    $a3, 0x40($sp)
/* 0044CC5C 8DEF0000 */  lw    $t7, ($t7)
/* 0044CC60 00000000 */  nop   
/* 0044CC64 01E34021 */  addu  $t0, $t7, $v1
.L0044CC68:
/* 0044CC68 8F988CD0 */  lw     $t8, %got(nonzero_scnbase)($gp)
/* 0044CC6C 8FB9003C */  lw    $t9, 0x3c($sp)
/* 0044CC70 93180000 */  lbu   $t8, ($t8)
/* 0044CC74 8FA30044 */  lw    $v1, 0x44($sp)
/* 0044CC78 1300000C */  beqz  $t8, .L0044CCAC
/* 0044CC7C 24040010 */   li    $a0, 16
/* 0044CC80 8F22FFFC */  lw    $v0, -4($t9)
/* 0044CC84 8F2CFFF8 */  lw    $t4, -8($t9)
/* 0044CC88 00034880 */  sll   $t1, $v1, 2
/* 0044CC8C 00495021 */  addu  $t2, $v0, $t1
/* 0044CC90 01896821 */  addu  $t5, $t4, $t1
/* 0044CC94 8DAE0000 */  lw    $t6, ($t5)
/* 0044CC98 8D4B0000 */  lw    $t3, ($t2)
/* 0044CC9C 0007C080 */  sll   $t8, $a3, 2
/* 0044CCA0 00584821 */  addu  $t1, $v0, $t8
/* 0044CCA4 016E7821 */  addu  $t7, $t3, $t6
/* 0044CCA8 AD2F0000 */  sw    $t7, ($t1)
.L0044CCAC:
/* 0044CCAC 8F818B64 */  lw     $at, %got(currsegmentindex)($gp)
/* 0044CCB0 8FB9003C */  lw    $t9, 0x3c($sp)
/* 0044CCB4 AC270000 */  sw    $a3, ($at)
/* 0044CCB8 910A0008 */  lbu   $t2, 8($t0)
/* 0044CCBC 8F818BE8 */  lw     $at, %got(currsegment)($gp)
/* 0044CCC0 00071880 */  sll   $v1, $a3, 2
/* 0044CCC4 A02A0000 */  sb    $t2, ($at)
/* 0044CCC8 8F2CFFF8 */  lw    $t4, -8($t9)
/* 0044CCCC 8F9985BC */  lw    $t9, %call16(align)($gp)
/* 0044CCD0 AFA30030 */  sw    $v1, 0x30($sp)
/* 0044CCD4 0320F809 */  jalr  $t9
/* 0044CCD8 AFAC0028 */   sw    $t4, 0x28($sp)
/* 0044CCDC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0044CCE0 8FA30030 */  lw    $v1, 0x30($sp)
/* 0044CCE4 8F8D8AEC */  lw     $t5, %got(seg_ic)($gp)
/* 0044CCE8 8FB80028 */  lw    $t8, 0x28($sp)
/* 0044CCEC 8DAD0000 */  lw    $t5, ($t5)
/* 0044CCF0 8F828BE8 */  lw     $v0, %got(currsegment)($gp)
/* 0044CCF4 01A35821 */  addu  $t3, $t5, $v1
/* 0044CCF8 8D6E0000 */  lw    $t6, ($t3)
/* 0044CCFC 03037821 */  addu  $t7, $t8, $v1
/* 0044CD00 ADEE0000 */  sw    $t6, ($t7)
/* 0044CD04 90420000 */  lbu   $v0, ($v0)
/* 0044CD08 24010003 */  li    $at, 3
/* 0044CD0C 10410003 */  beq   $v0, $at, .L0044CD1C
/* 0044CD10 24010001 */   li    $at, 1
/* 0044CD14 1441002C */  bne   $v0, $at, .L0044CDC8
/* 0044CD18 8FBF0024 */   lw    $ra, 0x24($sp)
.L0044CD1C:
/* 0044CD1C 8F8A8D88 */  lw     $t2, %got(gp_tables)($gp)
/* 0044CD20 00024880 */  sll   $t1, $v0, 2
/* 0044CD24 012AC821 */  addu  $t9, $t1, $t2
/* 0044CD28 8F240000 */  lw    $a0, ($t9)
/* 0044CD2C 00002825 */  move  $a1, $zero
/* 0044CD30 10800024 */  beqz  $a0, .L0044CDC4
/* 0044CD34 00003025 */   move  $a2, $zero
/* 0044CD38 8F9987FC */  lw    $t9, %call16(add_gp_table)($gp)
/* 0044CD3C 24070010 */  li    $a3, 16
/* 0044CD40 0320F809 */  jalr  $t9
/* 0044CD44 AFA00010 */   sw    $zero, 0x10($sp)
/* 0044CD48 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0044CD4C 24040001 */  li    $a0, 1
/* 0044CD50 8F8C8BE8 */  lw     $t4, %got(currsegment)($gp)
/* 0044CD54 8F8B8D88 */  lw     $t3, %got(gp_tables)($gp)
/* 0044CD58 918C0000 */  lbu   $t4, ($t4)
/* 0044CD5C 00000000 */  nop   
/* 0044CD60 000C6880 */  sll   $t5, $t4, 2
/* 0044CD64 01AB1821 */  addu  $v1, $t5, $t3
/* 0044CD68 14400009 */  bnez  $v0, .L0044CD90
/* 0044CD6C AC620000 */   sw    $v0, ($v1)
/* 0044CD70 8F988C68 */  lw     $t8, %got(emptystring)($gp)
/* 0044CD74 8F998660 */  lw    $t9, %call16(call_perror)($gp)
/* 0044CD78 8F050000 */  lw    $a1, ($t8)
/* 0044CD7C 0320F809 */  jalr  $t9
/* 0044CD80 AFA50004 */   sw    $a1, 4($sp)
/* 0044CD84 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0044CD88 1000000F */  b     .L0044CDC8
/* 0044CD8C 8FBF0024 */   lw    $ra, 0x24($sp)
.L0044CD90:
/* 0044CD90 8F998800 */  lw    $t9, %call16(ask_gp_table)($gp)
/* 0044CD94 8C640000 */  lw    $a0, ($v1)
/* 0044CD98 0320F809 */  jalr  $t9
/* 0044CD9C 00000000 */   nop   
/* 0044CDA0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0044CDA4 8FAE003C */  lw    $t6, 0x3c($sp)
/* 0044CDA8 8F898BE8 */  lw     $t1, %got(currsegment)($gp)
/* 0044CDAC 25CFFE18 */  addiu $t7, $t6, -0x1e8
/* 0044CDB0 91290000 */  lbu   $t1, ($t1)
/* 0044CDB4 00000000 */  nop   
/* 0044CDB8 00095080 */  sll   $t2, $t1, 2
/* 0044CDBC 01EAC821 */  addu  $t9, $t7, $t2
/* 0044CDC0 AF220000 */  sw    $v0, ($t9)
.L0044CDC4:
/* 0044CDC4 8FBF0024 */  lw    $ra, 0x24($sp)
.L0044CDC8:
/* 0044CDC8 27BD0040 */  addiu $sp, $sp, 0x40
/* 0044CDCC 03E00008 */  jr    $ra
/* 0044CDD0 00000000 */   nop   

    .type func_0044CDD4, @function
func_0044CDD4:
    # 0044D35C wrobj
/* 0044CDD4 3C1C0FBE */  .cpload $t9
/* 0044CDD8 279CD48C */  
/* 0044CDDC 0399E021 */  
/* 0044CDE0 27BDFF90 */  addiu $sp, $sp, -0x70
/* 0044CDE4 AFBF006C */  sw    $ra, 0x6c($sp)
/* 0044CDE8 AFBC0068 */  sw    $gp, 0x68($sp)
/* 0044CDEC AFB10064 */  sw    $s1, 0x64($sp)
/* 0044CDF0 AFB00060 */  sw    $s0, 0x60($sp)
/* 0044CDF4 8C830028 */  lw    $v1, 0x28($a0)
/* 0044CDF8 00808025 */  move  $s0, $a0
/* 0044CDFC 1C60002B */  bgtz  $v1, .L0044CEAC
/* 0044CE00 00A08825 */   move  $s1, $a1
/* 0044CE04 8F8E8070 */  lw    $t6, %got(RO_1001964C)($gp)
/* 0044CE08 03A0C825 */  move  $t9, $sp
/* 0044CE0C 25CE964C */  addiu $t6, %lo(RO_1001964C) # addiu $t6, $t6, -0x69b4
/* 0044CE10 25D80048 */  addiu $t8, $t6, 0x48
.L0044CE14:
/* 0044CE14 89C10000 */  lwl   $at, ($t6)
/* 0044CE18 99C10003 */  lwr   $at, 3($t6)
/* 0044CE1C 25CE000C */  addiu $t6, $t6, 0xc
/* 0044CE20 AB210000 */  swl   $at, ($t9)
/* 0044CE24 BB210003 */  swr   $at, 3($t9)
/* 0044CE28 89C1FFF8 */  lwl   $at, -8($t6)
/* 0044CE2C 99C1FFFB */  lwr   $at, -5($t6)
/* 0044CE30 2739000C */  addiu $t9, $t9, 0xc
/* 0044CE34 AB21FFF8 */  swl   $at, -8($t9)
/* 0044CE38 BB21FFFB */  swr   $at, -5($t9)
/* 0044CE3C 89C1FFFC */  lwl   $at, -4($t6)
/* 0044CE40 99C1FFFF */  lwr   $at, -1($t6)
/* 0044CE44 00000000 */  nop   
/* 0044CE48 AB21FFFC */  swl   $at, -4($t9)
/* 0044CE4C 15D8FFF1 */  bne   $t6, $t8, .L0044CE14
/* 0044CE50 BB21FFFF */   swr   $at, -1($t9)
/* 0044CE54 89C10000 */  lwl   $at, ($t6)
/* 0044CE58 99C10003 */  lwr   $at, 3($t6)
/* 0044CE5C 240A0002 */  li    $t2, 2
/* 0044CE60 AB210000 */  swl   $at, ($t9)
/* 0044CE64 BB210003 */  swr   $at, 3($t9)
/* 0044CE68 89D80004 */  lwl   $t8, 4($t6)
/* 0044CE6C 99D80007 */  lwr   $t8, 7($t6)
/* 0044CE70 00000000 */  nop   
/* 0044CE74 AB380004 */  swl   $t8, 4($t9)
/* 0044CE78 BB380007 */  swr   $t8, 7($t9)
/* 0044CE7C 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0044CE80 8E01000C */  lw    $at, 0xc($s0)
/* 0044CE84 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044CE88 8FA60008 */  lw    $a2, 8($sp)
/* 0044CE8C 8FA50004 */  lw    $a1, 4($sp)
/* 0044CE90 8FA40000 */  lw    $a0, ($sp)
/* 0044CE94 AFAA0054 */  sw    $t2, 0x54($sp)
/* 0044CE98 0320F809 */  jalr  $t9
/* 0044CE9C AFA10050 */   sw    $at, 0x50($sp)
/* 0044CEA0 24030001 */  li    $v1, 1
/* 0044CEA4 8FBC0068 */  lw    $gp, 0x68($sp)
/* 0044CEA8 AE030028 */  sw    $v1, 0x28($s0)
.L0044CEAC:
/* 0044CEAC 28610002 */  slti  $at, $v1, 2
/* 0044CEB0 1020000C */  beqz  $at, .L0044CEE4
/* 0044CEB4 28610004 */   slti  $at, $v1, 4
/* 0044CEB8 8F8C8AEC */  lw     $t4, %got(seg_ic)($gp)
/* 0044CEBC 00116880 */  sll   $t5, $s1, 2
/* 0044CEC0 8D8C0000 */  lw    $t4, ($t4)
/* 0044CEC4 00000000 */  nop   
/* 0044CEC8 018D1021 */  addu  $v0, $t4, $t5
/* 0044CECC 8C4F0000 */  lw    $t7, ($v0)
/* 0044CED0 00000000 */  nop   
/* 0044CED4 25F80001 */  addiu $t8, $t7, 1
/* 0044CED8 1000002A */  b     .L0044CF84
/* 0044CEDC AC580000 */   sw    $t8, ($v0)
/* 0044CEE0 28610004 */  slti  $at, $v1, 4
.L0044CEE4:
/* 0044CEE4 1020000E */  beqz  $at, .L0044CF20
/* 0044CEE8 28610008 */   slti  $at, $v1, 8
/* 0044CEEC 8F8E8AEC */  lw     $t6, %got(seg_ic)($gp)
/* 0044CEF0 0011C880 */  sll   $t9, $s1, 2
/* 0044CEF4 8DCE0000 */  lw    $t6, ($t6)
/* 0044CEF8 2401FFFE */  li    $at, -2
/* 0044CEFC 01D91021 */  addu  $v0, $t6, $t9
/* 0044CF00 8C480000 */  lw    $t0, ($v0)
/* 0044CF04 00000000 */  nop   
/* 0044CF08 25090001 */  addiu $t1, $t0, 1
/* 0044CF0C 01215024 */  and   $t2, $t1, $at
/* 0044CF10 01435821 */  addu  $t3, $t2, $v1
/* 0044CF14 1000001B */  b     .L0044CF84
/* 0044CF18 AC4B0000 */   sw    $t3, ($v0)
/* 0044CF1C 28610008 */  slti  $at, $v1, 8
.L0044CF20:
/* 0044CF20 1020000D */  beqz  $at, .L0044CF58
/* 0044CF24 00000000 */   nop   
/* 0044CF28 8F8C8AEC */  lw     $t4, %got(seg_ic)($gp)
/* 0044CF2C 00116880 */  sll   $t5, $s1, 2
/* 0044CF30 8D8C0000 */  lw    $t4, ($t4)
/* 0044CF34 2401FFFC */  li    $at, -4
/* 0044CF38 018D1021 */  addu  $v0, $t4, $t5
/* 0044CF3C 8C4F0000 */  lw    $t7, ($v0)
/* 0044CF40 00000000 */  nop   
/* 0044CF44 25F80003 */  addiu $t8, $t7, 3
/* 0044CF48 03017024 */  and   $t6, $t8, $at
/* 0044CF4C 01C3C821 */  addu  $t9, $t6, $v1
/* 0044CF50 1000000C */  b     .L0044CF84
/* 0044CF54 AC590000 */   sw    $t9, ($v0)
.L0044CF58:
/* 0044CF58 8F888AEC */  lw     $t0, %got(seg_ic)($gp)
/* 0044CF5C 00114880 */  sll   $t1, $s1, 2
/* 0044CF60 8D080000 */  lw    $t0, ($t0)
/* 0044CF64 2401FFF8 */  li    $at, -8
/* 0044CF68 01091021 */  addu  $v0, $t0, $t1
/* 0044CF6C 8C4A0000 */  lw    $t2, ($v0)
/* 0044CF70 00000000 */  nop   
/* 0044CF74 254B0007 */  addiu $t3, $t2, 7
/* 0044CF78 01616024 */  and   $t4, $t3, $at
/* 0044CF7C 01836821 */  addu  $t5, $t4, $v1
/* 0044CF80 AC4D0000 */  sw    $t5, ($v0)
.L0044CF84:
/* 0044CF84 8C4F0000 */  lw    $t7, ($v0)
/* 0044CF88 8E180028 */  lw    $t8, 0x28($s0)
/* 0044CF8C AE110030 */  sw    $s1, 0x30($s0)
/* 0044CF90 01F87023 */  subu  $t6, $t7, $t8
/* 0044CF94 8FBF006C */  lw    $ra, 0x6c($sp)
/* 0044CF98 AE0E0010 */  sw    $t6, 0x10($s0)
/* 0044CF9C 8FB00060 */  lw    $s0, 0x60($sp)
/* 0044CFA0 8FB10064 */  lw    $s1, 0x64($sp)
/* 0044CFA4 03E00008 */  jr    $ra
/* 0044CFA8 27BD0070 */   addiu $sp, $sp, 0x70

    .type func_0044CFAC, @function
func_0044CFAC:
    # 0044D35C wrobj
/* 0044CFAC 3C1C0FBE */  .cpload $t9
/* 0044CFB0 279CD2B4 */  
/* 0044CFB4 0399E021 */  
/* 0044CFB8 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0044CFBC AFBE0038 */  sw    $fp, 0x38($sp)
/* 0044CFC0 8F9E8AEC */  lw     $fp, %got(seg_ic)($gp)
/* 0044CFC4 AFB00014 */  sw    $s0, 0x14($sp)
/* 0044CFC8 8FB00068 */  lw    $s0, 0x68($sp)
/* 0044CFCC 8FCE0000 */  lw    $t6, ($fp)
/* 0044CFD0 AFB6002C */  sw    $s6, 0x2c($sp)
/* 0044CFD4 0010B080 */  sll   $s6, $s0, 2
/* 0044CFD8 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0044CFDC AFBC0034 */  sw    $gp, 0x34($sp)
/* 0044CFE0 AFB70030 */  sw    $s7, 0x30($sp)
/* 0044CFE4 AFB50028 */  sw    $s5, 0x28($sp)
/* 0044CFE8 AFB40024 */  sw    $s4, 0x24($sp)
/* 0044CFEC AFB30020 */  sw    $s3, 0x20($sp)
/* 0044CFF0 AFB2001C */  sw    $s2, 0x1c($sp)
/* 0044CFF4 AFB10018 */  sw    $s1, 0x18($sp)
/* 0044CFF8 AFA40048 */  sw    $a0, 0x48($sp)
/* 0044CFFC AFA5004C */  sw    $a1, 0x4c($sp)
/* 0044D000 AFA60050 */  sw    $a2, 0x50($sp)
/* 0044D004 AFA70054 */  sw    $a3, 0x54($sp)
/* 0044D008 AFA20044 */  sw    $v0, 0x44($sp)
/* 0044D00C 01D67821 */  addu  $t7, $t6, $s6
/* 0044D010 8DF80000 */  lw    $t8, ($t7)
/* 0044D014 00000000 */  nop   
/* 0044D018 1B00007F */  blez  $t8, .L0044D218
/* 0044D01C 8FBF003C */   lw    $ra, 0x3c($sp)
/* 0044D020 8F958A0C */  lw     $s5, %got(output)($gp)
/* 0044D024 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 0044D028 8EA40000 */  lw    $a0, ($s5)
/* 0044D02C 0320F809 */  jalr  $t9
/* 0044D030 00000000 */   nop   
/* 0044D034 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0044D038 8EA40000 */  lw    $a0, ($s5)
/* 0044D03C 8F858070 */  lw    $a1, %got(RO_100196A6)($gp)
/* 0044D040 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0044D044 24060019 */  li    $a2, 25
/* 0044D048 24070019 */  li    $a3, 25
/* 0044D04C 0320F809 */  jalr  $t9
/* 0044D050 24A596A6 */   addiu $a1, %lo(RO_100196A6) # addiu $a1, $a1, -0x695a
/* 0044D054 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0044D058 8EA40000 */  lw    $a0, ($s5)
/* 0044D05C 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0044D060 27A50048 */  addiu $a1, $sp, 0x48
/* 0044D064 24060020 */  li    $a2, 32
/* 0044D068 0320F809 */  jalr  $t9
/* 0044D06C 24070005 */   li    $a3, 5
/* 0044D070 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0044D074 8EA40000 */  lw    $a0, ($s5)
/* 0044D078 8F858070 */  lw    $a1, %got(RO_1001969C)($gp)
/* 0044D07C 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0044D080 2406000A */  li    $a2, 10
/* 0044D084 2407000A */  li    $a3, 10
/* 0044D088 0320F809 */  jalr  $t9
/* 0044D08C 24A5969C */   addiu $a1, %lo(RO_1001969C) # addiu $a1, $a1, -0x6964
/* 0044D090 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0044D094 8EA40000 */  lw    $a0, ($s5)
/* 0044D098 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 0044D09C 00000000 */  nop   
/* 0044D0A0 0320F809 */  jalr  $t9
/* 0044D0A4 00000000 */   nop   
/* 0044D0A8 8FD90000 */  lw    $t9, ($fp)
/* 0044D0AC 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0044D0B0 03364021 */  addu  $t0, $t9, $s6
/* 0044D0B4 8D090000 */  lw    $t1, ($t0)
/* 0044D0B8 0000A025 */  move  $s4, $zero
/* 0044D0BC 19200055 */  blez  $t1, .L0044D214
/* 0044D0C0 00109080 */   sll   $s2, $s0, 2
/* 0044D0C4 02509023 */  subu  $s2, $s2, $s0
/* 0044D0C8 00129080 */  sll   $s2, $s2, 2
/* 0044D0CC 02509023 */  subu  $s2, $s2, $s0
/* 0044D0D0 8F938AE0 */  lw     $s3, %got(memory)($gp)
/* 0044D0D4 00129080 */  sll   $s2, $s2, 2
/* 0044D0D8 2417000C */  li    $s7, 12
/* 0044D0DC 3291000F */  andi  $s1, $s4, 0xf
.L0044D0E0:
/* 0044D0E0 16200013 */  bnez  $s1, .L0044D130
/* 0044D0E4 02A02025 */   move  $a0, $s5
/* 0044D0E8 8FAA0044 */  lw    $t2, 0x44($sp)
/* 0044D0EC 8F99859C */  lw    $t9, %call16(wrhex)($gp)
/* 0044D0F0 8D4BFFFC */  lw    $t3, -4($t2)
/* 0044D0F4 24060006 */  li    $a2, 6
/* 0044D0F8 01766021 */  addu  $t4, $t3, $s6
/* 0044D0FC 8D8D0000 */  lw    $t5, ($t4)
/* 0044D100 24070030 */  li    $a3, 48
/* 0044D104 0320F809 */  jalr  $t9
/* 0044D108 028D2821 */   addu  $a1, $s4, $t5
/* 0044D10C 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0044D110 8EA40000 */  lw    $a0, ($s5)
/* 0044D114 8F99869C */  lw    $t9, %call16(write_char)($gp)
/* 0044D118 24050020 */  li    $a1, 32
/* 0044D11C 24060001 */  li    $a2, 1
/* 0044D120 0320F809 */  jalr  $t9
/* 0044D124 2407000A */   li    $a3, 10
/* 0044D128 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0044D12C 00000000 */  nop   
.L0044D130:
/* 0044D130 8E6E0000 */  lw    $t6, ($s3)
/* 0044D134 0014C882 */  srl   $t9, $s4, 2
/* 0044D138 01D27821 */  addu  $t7, $t6, $s2
/* 0044D13C 8DF80000 */  lw    $t8, ($t7)
/* 0044D140 00194080 */  sll   $t0, $t9, 2
/* 0044D144 8F99859C */  lw    $t9, %call16(wrhex)($gp)
/* 0044D148 03084821 */  addu  $t1, $t8, $t0
/* 0044D14C 8D250000 */  lw    $a1, ($t1)
/* 0044D150 02A02025 */  move  $a0, $s5
/* 0044D154 24060008 */  li    $a2, 8
/* 0044D158 0320F809 */  jalr  $t9
/* 0044D15C 24070030 */   li    $a3, 48
/* 0044D160 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0044D164 8EB00000 */  lw    $s0, ($s5)
/* 0044D168 8F99869C */  lw    $t9, %call16(write_char)($gp)
/* 0044D16C 24050020 */  li    $a1, 32
/* 0044D170 24060001 */  li    $a2, 1
/* 0044D174 2407000A */  li    $a3, 10
/* 0044D178 0320F809 */  jalr  $t9
/* 0044D17C 02002025 */   move  $a0, $s0
/* 0044D180 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0044D184 1637001B */  bne   $s1, $s7, .L0044D1F4
/* 0044D188 26830003 */   addiu $v1, $s4, 3
/* 0044D18C 2682FFF4 */  addiu $v0, $s4, -0xc
/* 0044D190 0062082B */  sltu  $at, $v1, $v0
/* 0044D194 14200011 */  bnez  $at, .L0044D1DC
/* 0044D198 24710001 */   addiu $s1, $v1, 1
/* 0044D19C 00408025 */  move  $s0, $v0
.L0044D1A0:
/* 0044D1A0 8E6A0000 */  lw    $t2, ($s3)
/* 0044D1A4 8F998598 */  lw    $t9, %call16(wrchar)($gp)
/* 0044D1A8 01525821 */  addu  $t3, $t2, $s2
/* 0044D1AC 8D6C0000 */  lw    $t4, ($t3)
/* 0044D1B0 00000000 */  nop   
/* 0044D1B4 01906821 */  addu  $t5, $t4, $s0
/* 0044D1B8 91A40000 */  lbu   $a0, ($t5)
/* 0044D1BC 0320F809 */  jalr  $t9
/* 0044D1C0 00000000 */   nop   
/* 0044D1C4 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0044D1C8 26100001 */  addiu $s0, $s0, 1
/* 0044D1CC 1611FFF4 */  bne   $s0, $s1, .L0044D1A0
/* 0044D1D0 00000000 */   nop   
/* 0044D1D4 8EB00000 */  lw    $s0, ($s5)
/* 0044D1D8 00000000 */  nop   
.L0044D1DC:
/* 0044D1DC 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 0044D1E0 02002025 */  move  $a0, $s0
/* 0044D1E4 0320F809 */  jalr  $t9
/* 0044D1E8 00000000 */   nop   
/* 0044D1EC 8FBC0034 */  lw    $gp, 0x34($sp)
/* 0044D1F0 00000000 */  nop   
.L0044D1F4:
/* 0044D1F4 8FCE0000 */  lw    $t6, ($fp)
/* 0044D1F8 26940004 */  addiu $s4, $s4, 4
/* 0044D1FC 01D67821 */  addu  $t7, $t6, $s6
/* 0044D200 8DF90000 */  lw    $t9, ($t7)
/* 0044D204 00000000 */  nop   
/* 0044D208 0299082A */  slt   $at, $s4, $t9
/* 0044D20C 1420FFB4 */  bnez  $at, .L0044D0E0
/* 0044D210 3291000F */   andi  $s1, $s4, 0xf
.L0044D214:
/* 0044D214 8FBF003C */  lw    $ra, 0x3c($sp)
.L0044D218:
/* 0044D218 8FB00014 */  lw    $s0, 0x14($sp)
/* 0044D21C 8FB10018 */  lw    $s1, 0x18($sp)
/* 0044D220 8FB2001C */  lw    $s2, 0x1c($sp)
/* 0044D224 8FB30020 */  lw    $s3, 0x20($sp)
/* 0044D228 8FB40024 */  lw    $s4, 0x24($sp)
/* 0044D22C 8FB50028 */  lw    $s5, 0x28($sp)
/* 0044D230 8FB6002C */  lw    $s6, 0x2c($sp)
/* 0044D234 8FB70030 */  lw    $s7, 0x30($sp)
/* 0044D238 8FBE0038 */  lw    $fp, 0x38($sp)
/* 0044D23C 03E00008 */  jr    $ra
/* 0044D240 27BD0048 */   addiu $sp, $sp, 0x48

    .type func_0044D244, @function
func_0044D244:
    # 0044D35C wrobj
/* 0044D244 3C1C0FBE */  .cpload $t9
/* 0044D248 279CD01C */  
/* 0044D24C 0399E021 */  
/* 0044D250 AFA40000 */  sw    $a0, ($sp)
/* 0044D254 AFA50004 */  sw    $a1, 4($sp)
/* 0044D258 8C4EFFF8 */  lw    $t6, -8($v0)
/* 0044D25C 00047880 */  sll   $t7, $a0, 2
/* 0044D260 01CFC021 */  addu  $t8, $t6, $t7
/* 0044D264 8F190000 */  lw    $t9, ($t8)
/* 0044D268 00051880 */  sll   $v1, $a1, 2
/* 0044D26C 1720000D */  bnez  $t9, .L0044D2A4
/* 0044D270 00043080 */   sll   $a2, $a0, 2
/* 0044D274 8F8A8D88 */  lw     $t2, %got(gp_tables)($gp)
/* 0044D278 2448FE18 */  addiu $t0, $v0, -0x1e8
/* 0044D27C 01463821 */  addu  $a3, $t2, $a2
/* 0044D280 8CEB0000 */  lw    $t3, ($a3)
/* 0044D284 01436021 */  addu  $t4, $t2, $v1
/* 0044D288 01064821 */  addu  $t1, $t0, $a2
/* 0044D28C AD8B0000 */  sw    $t3, ($t4)
/* 0044D290 8D2D0000 */  lw    $t5, ($t1)
/* 0044D294 01037021 */  addu  $t6, $t0, $v1
/* 0044D298 ADCD0000 */  sw    $t5, ($t6)
/* 0044D29C ACE00000 */  sw    $zero, ($a3)
/* 0044D2A0 AD200000 */  sw    $zero, ($t1)
.L0044D2A4:
/* 0044D2A4 03E00008 */  jr    $ra
/* 0044D2A8 00000000 */   nop   

    .type func_0044D2AC, @function
func_0044D2AC:
    # 0044D35C wrobj
/* 0044D2AC 3C1C0FBE */  .cpload $t9
/* 0044D2B0 279CCFB4 */  
/* 0044D2B4 0399E021 */  
/* 0044D2B8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0044D2BC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0044D2C0 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0044D2C4 AFA40020 */  sw    $a0, 0x20($sp)
/* 0044D2C8 10800008 */  beqz  $a0, .L0044D2EC
/* 0044D2CC AFA50024 */   sw    $a1, 0x24($sp)
/* 0044D2D0 8F99818C */  lw    $t9, %call16(strlen)($gp)
/* 0044D2D4 00000000 */  nop   
/* 0044D2D8 0320F809 */  jalr  $t9
/* 0044D2DC 00000000 */   nop   
/* 0044D2E0 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0044D2E4 10000002 */  b     .L0044D2F0
/* 0044D2E8 00403825 */   move  $a3, $v0
.L0044D2EC:
/* 0044D2EC 00003825 */  move  $a3, $zero
.L0044D2F0:
/* 0044D2F0 8FAF0024 */  lw    $t7, 0x24($sp)
/* 0044D2F4 8FA50020 */  lw    $a1, 0x20($sp)
/* 0044D2F8 01E7C023 */  subu  $t8, $t7, $a3
/* 0044D2FC 10E00008 */  beqz  $a3, .L0044D320
/* 0044D300 AFB80024 */   sw    $t8, 0x24($sp)
/* 0044D304 8F848A0C */  lw     $a0, %got(output)($gp)
/* 0044D308 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0044D30C 8C840000 */  lw    $a0, ($a0)
/* 0044D310 0320F809 */  jalr  $t9
/* 0044D314 24060400 */   li    $a2, 1024
/* 0044D318 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0044D31C 00000000 */  nop   
.L0044D320:
/* 0044D320 8FB90024 */  lw    $t9, 0x24($sp)
/* 0044D324 24050020 */  li    $a1, 32
/* 0044D328 1B200008 */  blez  $t9, .L0044D34C
/* 0044D32C 03203025 */   move  $a2, $t9
/* 0044D330 8F848A0C */  lw     $a0, %got(output)($gp)
/* 0044D334 8F99869C */  lw    $t9, %call16(write_char)($gp)
/* 0044D338 8C840000 */  lw    $a0, ($a0)
/* 0044D33C 0320F809 */  jalr  $t9
/* 0044D340 2407000A */   li    $a3, 10
/* 0044D344 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0044D348 00000000 */  nop   
.L0044D34C:
/* 0044D34C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0044D350 27BD0020 */  addiu $sp, $sp, 0x20
/* 0044D354 03E00008 */  jr    $ra
/* 0044D358 00000000 */   nop   

glabel wrobj
    .ent wrobj
    # 0044AF18 main
/* 0044D35C 3C1C0FBE */  .cpload $t9
/* 0044D360 279CCF04 */  
/* 0044D364 0399E021 */  
/* 0044D368 27BDFCD0 */  addiu $sp, $sp, -0x330
/* 0044D36C 8F858CD8 */  lw     $a1, %got(lastusertextseg)($gp)
/* 0044D370 2401FFFF */  li    $at, -1
/* 0044D374 8CA50000 */  lw    $a1, ($a1)
/* 0044D378 AFBF00D4 */  sw    $ra, 0xd4($sp)
/* 0044D37C AFBE00D0 */  sw    $fp, 0xd0($sp)
/* 0044D380 AFBC00CC */  sw    $gp, 0xcc($sp)
/* 0044D384 AFB700C8 */  sw    $s7, 0xc8($sp)
/* 0044D388 AFB600C4 */  sw    $s6, 0xc4($sp)
/* 0044D38C AFB500C0 */  sw    $s5, 0xc0($sp)
/* 0044D390 AFB400BC */  sw    $s4, 0xbc($sp)
/* 0044D394 AFB300B8 */  sw    $s3, 0xb8($sp)
/* 0044D398 AFB200B4 */  sw    $s2, 0xb4($sp)
/* 0044D39C AFB100B0 */  sw    $s1, 0xb0($sp)
/* 0044D3A0 10A10003 */  beq   $a1, $at, .L0044D3B0
/* 0044D3A4 AFB000AC */   sw    $s0, 0xac($sp)
/* 0044D3A8 10000006 */  b     .L0044D3C4
/* 0044D3AC 00A0B025 */   move  $s6, $a1
.L0044D3B0:
/* 0044D3B0 8F968CD4 */  lw     $s6, %got(firstusertextseg)($gp)
/* 0044D3B4 00000000 */  nop   
/* 0044D3B8 8ED60000 */  lw    $s6, ($s6)
/* 0044D3BC 00000000 */  nop   
/* 0044D3C0 26D6FFFF */  addiu $s6, $s6, -1
.L0044D3C4:
/* 0044D3C4 8F9988C0 */  lw    $t9, %call16(xmalloc)($gp)
/* 0044D3C8 00168080 */  sll   $s0, $s6, 2
/* 0044D3CC 26100004 */  addiu $s0, $s0, 4
/* 0044D3D0 0320F809 */  jalr  $t9
/* 0044D3D4 02002025 */   move  $a0, $s0
/* 0044D3D8 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044D3DC AFA2032C */  sw    $v0, 0x32c($sp)
/* 0044D3E0 8F9988C0 */  lw    $t9, %call16(xmalloc)($gp)
/* 0044D3E4 02002025 */  move  $a0, $s0
/* 0044D3E8 0320F809 */  jalr  $t9
/* 0044D3EC 00000000 */   nop   
/* 0044D3F0 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044D3F4 AFA20328 */  sw    $v0, 0x328($sp)
/* 0044D3F8 8F9988C0 */  lw    $t9, %call16(xmalloc)($gp)
/* 0044D3FC 02002025 */  move  $a0, $s0
/* 0044D400 0320F809 */  jalr  $t9
/* 0044D404 00000000 */   nop   
/* 0044D408 8FA6032C */  lw    $a2, 0x32c($sp)
/* 0044D40C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044D410 10C00007 */  beqz  $a2, .L0044D430
/* 0044D414 AFA20324 */   sw    $v0, 0x324($sp)
/* 0044D418 8FAE0328 */  lw    $t6, 0x328($sp)
/* 0044D41C 00000000 */  nop   
/* 0044D420 11C00003 */  beqz  $t6, .L0044D430
/* 0044D424 00000000 */   nop   
/* 0044D428 14400008 */  bnez  $v0, .L0044D44C
/* 0044D42C 00000000 */   nop   
.L0044D430:
/* 0044D430 8F998664 */  lw    $t9, %call16(new_error)($gp)
/* 0044D434 00000000 */  nop   
/* 0044D438 0320F809 */  jalr  $t9
/* 0044D43C 00000000 */   nop   
/* 0044D440 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044D444 8FA6032C */  lw    $a2, 0x32c($sp)
/* 0044D448 00000000 */  nop   
.L0044D44C:
/* 0044D44C 06C0002D */  bltz  $s6, .L0044D504
/* 0044D450 AFB60124 */   sw    $s6, 0x124($sp)
/* 0044D454 26C50001 */  addiu $a1, $s6, 1
/* 0044D458 30A40003 */  andi  $a0, $a1, 3
/* 0044D45C 00009825 */  move  $s3, $zero
/* 0044D460 10800011 */  beqz  $a0, .L0044D4A8
/* 0044D464 AFB60124 */   sw    $s6, 0x124($sp)
/* 0044D468 0000B080 */  sll   $s6, $zero, 2
/* 0044D46C 8FAF0328 */  lw    $t7, 0x328($sp)
/* 0044D470 8FB80324 */  lw    $t8, 0x324($sp)
/* 0044D474 00D68821 */  addu  $s1, $a2, $s6
/* 0044D478 00801825 */  move  $v1, $a0
/* 0044D47C 01F68021 */  addu  $s0, $t7, $s6
/* 0044D480 03161021 */  addu  $v0, $t8, $s6
.L0044D484:
/* 0044D484 AE000000 */  sw    $zero, ($s0)
/* 0044D488 AC400000 */  sw    $zero, ($v0)
/* 0044D48C 26730001 */  addiu $s3, $s3, 1
/* 0044D490 AE200000 */  sw    $zero, ($s1)
/* 0044D494 26100004 */  addiu $s0, $s0, 4
/* 0044D498 24420004 */  addiu $v0, $v0, 4
/* 0044D49C 1473FFF9 */  bne   $v1, $s3, .L0044D484
/* 0044D4A0 26310004 */   addiu $s1, $s1, 4
/* 0044D4A4 12650017 */  beq   $s3, $a1, .L0044D504
.L0044D4A8:
/* 0044D4A8 0013B080 */   sll   $s6, $s3, 2
/* 0044D4AC 8FB90328 */  lw    $t9, 0x328($sp)
/* 0044D4B0 8FA80324 */  lw    $t0, 0x324($sp)
/* 0044D4B4 00D68821 */  addu  $s1, $a2, $s6
/* 0044D4B8 03368021 */  addu  $s0, $t9, $s6
/* 0044D4BC 01161021 */  addu  $v0, $t0, $s6
.L0044D4C0:
/* 0044D4C0 AE000000 */  sw    $zero, ($s0)
/* 0044D4C4 AC400000 */  sw    $zero, ($v0)
/* 0044D4C8 AE200000 */  sw    $zero, ($s1)
/* 0044D4CC AE000004 */  sw    $zero, 4($s0)
/* 0044D4D0 AC400004 */  sw    $zero, 4($v0)
/* 0044D4D4 AE200004 */  sw    $zero, 4($s1)
/* 0044D4D8 AE000008 */  sw    $zero, 8($s0)
/* 0044D4DC AC400008 */  sw    $zero, 8($v0)
/* 0044D4E0 AE200008 */  sw    $zero, 8($s1)
/* 0044D4E4 AE00000C */  sw    $zero, 0xc($s0)
/* 0044D4E8 AC40000C */  sw    $zero, 0xc($v0)
/* 0044D4EC 26730004 */  addiu $s3, $s3, 4
/* 0044D4F0 AE20000C */  sw    $zero, 0xc($s1)
/* 0044D4F4 26100010 */  addiu $s0, $s0, 0x10
/* 0044D4F8 24420010 */  addiu $v0, $v0, 0x10
/* 0044D4FC 1665FFF0 */  bne   $s3, $a1, .L0044D4C0
/* 0044D500 26310010 */   addiu $s1, $s1, 0x10
.L0044D504:
/* 0044D504 27A20148 */  addiu $v0, $sp, 0x148
/* 0044D508 27A30188 */  addiu $v1, $sp, 0x188
.L0044D50C:
/* 0044D50C 24420010 */  addiu $v0, $v0, 0x10
/* 0044D510 AC40FFF0 */  sw    $zero, -0x10($v0)
/* 0044D514 AC40FFF4 */  sw    $zero, -0xc($v0)
/* 0044D518 AC40FFF8 */  sw    $zero, -8($v0)
/* 0044D51C 1443FFFB */  bne   $v0, $v1, .L0044D50C
/* 0044D520 AC40FFFC */   sw    $zero, -4($v0)
/* 0044D524 8F918D0C */  lw     $s1, %got(lastsym)($gp)
/* 0044D528 00001025 */  move  $v0, $zero
/* 0044D52C 8E310000 */  lw    $s1, ($s1)
/* 0044D530 24150001 */  li    $s5, 1
/* 0044D534 1220000E */  beqz  $s1, .L0044D570
/* 0044D538 24040055 */   li    $a0, 85
/* 0044D53C 24030075 */  li    $v1, 117
.L0044D540:
/* 0044D540 92290034 */  lbu   $t1, 0x34($s1)
/* 0044D544 0220B025 */  move  $s6, $s1
/* 0044D548 14690003 */  bne   $v1, $t1, .L0044D558
/* 0044D54C 00000000 */   nop   
/* 0044D550 A2240034 */  sb    $a0, 0x34($s1)
/* 0044D554 A2350035 */  sb    $s5, 0x35($s1)
.L0044D558:
/* 0044D558 AEC20000 */  sw    $v0, ($s6)
/* 0044D55C 02201025 */  move  $v0, $s1
/* 0044D560 8ED10004 */  lw    $s1, 4($s6)
/* 0044D564 00000000 */  nop   
/* 0044D568 1620FFF5 */  bnez  $s1, .L0044D540
/* 0044D56C 00000000 */   nop   
.L0044D570:
/* 0044D570 8F818D0C */  lw     $at, %got(lastsym)($gp)
/* 0044D574 8F918D0C */  lw     $s1, %got(lastsym)($gp)
/* 0044D578 AC220000 */  sw    $v0, ($at)
/* 0044D57C 8E310000 */  lw    $s1, ($s1)
/* 0044D580 24150001 */  li    $s5, 1
/* 0044D584 1220006A */  beqz  $s1, .L0044D730
/* 0044D588 24170044 */   li    $s7, 68
/* 0044D58C 8F948D88 */  lw     $s4, %got(gp_tables)($gp)
/* 0044D590 241E0004 */  li    $fp, 4
/* 0044D594 24160009 */  li    $s6, 9
/* 0044D598 24130003 */  li    $s3, 3
.L0044D59C:
/* 0044D59C 8E2A0018 */  lw    $t2, 0x18($s1)
/* 0044D5A0 00000000 */  nop   
/* 0044D5A4 1940005E */  blez  $t2, .L0044D720
/* 0044D5A8 00000000 */   nop   
/* 0044D5AC 8E2C0030 */  lw    $t4, 0x30($s1)
/* 0044D5B0 8F8B8AE0 */  lw     $t3, %got(memory)($gp)
/* 0044D5B4 000C6880 */  sll   $t5, $t4, 2
/* 0044D5B8 01AC6823 */  subu  $t5, $t5, $t4
/* 0044D5BC 000D6880 */  sll   $t5, $t5, 2
/* 0044D5C0 8D6B0000 */  lw    $t3, ($t3)
/* 0044D5C4 01AC6823 */  subu  $t5, $t5, $t4
/* 0044D5C8 000D6880 */  sll   $t5, $t5, 2
/* 0044D5CC 92300034 */  lbu   $s0, 0x34($s1)
/* 0044D5D0 016D7021 */  addu  $t6, $t3, $t5
/* 0044D5D4 91D20008 */  lbu   $s2, 8($t6)
/* 0044D5D8 16170009 */  bne   $s0, $s7, .L0044D600
/* 0044D5DC 24010064 */   li    $at, 100
/* 0044D5E0 16550003 */  bne   $s2, $s5, .L0044D5F0
/* 0044D5E4 00000000 */   nop   
/* 0044D5E8 10000025 */  b     .L0044D680
/* 0044D5EC 24100047 */   li    $s0, 71
.L0044D5F0:
/* 0044D5F0 16560023 */  bne   $s2, $s6, .L0044D680
/* 0044D5F4 00000000 */   nop   
/* 0044D5F8 10000021 */  b     .L0044D680
/* 0044D5FC 24100052 */   li    $s0, 82
.L0044D600:
/* 0044D600 1601000A */  bne   $s0, $at, .L0044D62C
/* 0044D604 24010042 */   li    $at, 66
/* 0044D608 16550003 */  bne   $s2, $s5, .L0044D618
/* 0044D60C 00000000 */   nop   
/* 0044D610 1000001B */  b     .L0044D680
/* 0044D614 24100067 */   li    $s0, 103
.L0044D618:
/* 0044D618 16560019 */  bne   $s2, $s6, .L0044D680
/* 0044D61C 00000000 */   nop   
/* 0044D620 10000017 */  b     .L0044D680
/* 0044D624 24100072 */   li    $s0, 114
/* 0044D628 24010042 */  li    $at, 66
.L0044D62C:
/* 0044D62C 16010006 */  bne   $s0, $at, .L0044D648
/* 0044D630 24010062 */   li    $at, 98
/* 0044D634 16530004 */  bne   $s2, $s3, .L0044D648
/* 0044D638 24010062 */   li    $at, 98
/* 0044D63C 10000010 */  b     .L0044D680
/* 0044D640 24100053 */   li    $s0, 83
/* 0044D644 24010062 */  li    $at, 98
.L0044D648:
/* 0044D648 16010006 */  bne   $s0, $at, .L0044D664
/* 0044D64C 24010043 */   li    $at, 67
/* 0044D650 16530004 */  bne   $s2, $s3, .L0044D664
/* 0044D654 24010043 */   li    $at, 67
/* 0044D658 10000009 */  b     .L0044D680
/* 0044D65C 24100073 */   li    $s0, 115
/* 0044D660 24010043 */  li    $at, 67
.L0044D664:
/* 0044D664 16010006 */  bne   $s0, $at, .L0044D680
/* 0044D668 00000000 */   nop   
/* 0044D66C 922F0036 */  lbu   $t7, 0x36($s1)
/* 0044D670 00000000 */  nop   
/* 0044D674 11E00002 */  beqz  $t7, .L0044D680
/* 0044D678 00000000 */   nop   
/* 0044D67C 24100045 */  li    $s0, 69
.L0044D680:
/* 0044D680 12530003 */  beq   $s2, $s3, .L0044D690
/* 0044D684 A2300034 */   sb    $s0, 0x34($s1)
/* 0044D688 165E0025 */  bne   $s2, $fp, .L0044D720
/* 0044D68C 00000000 */   nop   
.L0044D690:
/* 0044D690 8E84000C */  lw    $a0, 0xc($s4)
/* 0044D694 00000000 */  nop   
/* 0044D698 10800019 */  beqz  $a0, .L0044D700
/* 0044D69C 00000000 */   nop   
/* 0044D6A0 8E220028 */  lw    $v0, 0x28($s1)
/* 0044D6A4 00000000 */  nop   
/* 0044D6A8 28410009 */  slti  $at, $v0, 9
/* 0044D6AC 00402825 */  move  $a1, $v0
/* 0044D6B0 00403025 */  move  $a2, $v0
/* 0044D6B4 14200002 */  bnez  $at, .L0044D6C0
/* 0044D6B8 00403825 */   move  $a3, $v0
/* 0044D6BC 24070008 */  li    $a3, 8
.L0044D6C0:
/* 0044D6C0 8F9987FC */  lw    $t9, %call16(add_gp_table)($gp)
/* 0044D6C4 AFA00010 */  sw    $zero, 0x10($sp)
/* 0044D6C8 0320F809 */  jalr  $t9
/* 0044D6CC 00000000 */   nop   
/* 0044D6D0 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044D6D4 1440000A */  bnez  $v0, .L0044D700
/* 0044D6D8 AE82000C */   sw    $v0, 0xc($s4)
/* 0044D6DC 8F998C68 */  lw     $t9, %got(emptystring)($gp)
/* 0044D6E0 02A02025 */  move  $a0, $s5
/* 0044D6E4 8F250000 */  lw    $a1, ($t9)
/* 0044D6E8 8F998660 */  lw    $t9, %call16(call_perror)($gp)
/* 0044D6EC AFA50004 */  sw    $a1, 4($sp)
/* 0044D6F0 0320F809 */  jalr  $t9
/* 0044D6F4 00000000 */   nop   
/* 0044D6F8 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044D6FC 00000000 */  nop   
.L0044D700:
/* 0044D700 8F998028 */  lw    $t9, %got(func_0044CDD4)($gp)
/* 0044D704 02202025 */  move  $a0, $s1
/* 0044D708 2739CDD4 */  addiu $t9, %lo(func_0044CDD4) # addiu $t9, $t9, -0x322c
/* 0044D70C 02402825 */  move  $a1, $s2
/* 0044D710 0320F809 */  jalr  $t9
/* 0044D714 27A20330 */   addiu $v0, $sp, 0x330
/* 0044D718 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044D71C 00000000 */  nop   
.L0044D720:
/* 0044D720 8E310000 */  lw    $s1, ($s1)
/* 0044D724 00000000 */  nop   
/* 0044D728 1620FF9C */  bnez  $s1, .L0044D59C
/* 0044D72C 00000000 */   nop   
.L0044D730:
/* 0044D730 8F828AEC */  lw     $v0, %got(seg_ic)($gp)
/* 0044D734 3C010001 */  lui   $at, 1
/* 0044D738 8C420000 */  lw    $v0, ($v0)
/* 0044D73C 00002025 */  move  $a0, $zero
/* 0044D740 8C48000C */  lw    $t0, 0xc($v0)
/* 0044D744 8C490004 */  lw    $t1, 4($v0)
/* 0044D748 8C4C0014 */  lw    $t4, 0x14($v0)
/* 0044D74C 8C4D0018 */  lw    $t5, 0x18($v0)
/* 0044D750 01095021 */  addu  $t2, $t0, $t1
/* 0044D754 014C5821 */  addu  $t3, $t2, $t4
/* 0044D758 016D7021 */  addu  $t6, $t3, $t5
/* 0044D75C 01C1082A */  slt   $at, $t6, $at
/* 0044D760 1420002B */  bnez  $at, .L0044D810
/* 0044D764 2405000C */   li    $a1, 12
/* 0044D768 8F8F8070 */  lw    $t7, %got(RO_10019E6D)($gp)
/* 0044D76C 03A04025 */  move  $t0, $sp
/* 0044D770 25EF9E6D */  addiu $t7, %lo(RO_10019E6D) # addiu $t7, $t7, -0x6193
/* 0044D774 25F90048 */  addiu $t9, $t7, 0x48
.L0044D778:
/* 0044D778 89E10000 */  lwl   $at, ($t7)
/* 0044D77C 99E10003 */  lwr   $at, 3($t7)
/* 0044D780 25EF000C */  addiu $t7, $t7, 0xc
/* 0044D784 A9010000 */  swl   $at, ($t0)
/* 0044D788 B9010003 */  swr   $at, 3($t0)
/* 0044D78C 89E1FFF8 */  lwl   $at, -8($t7)
/* 0044D790 99E1FFFB */  lwr   $at, -5($t7)
/* 0044D794 2508000C */  addiu $t0, $t0, 0xc
/* 0044D798 A901FFF8 */  swl   $at, -8($t0)
/* 0044D79C B901FFFB */  swr   $at, -5($t0)
/* 0044D7A0 89E1FFFC */  lwl   $at, -4($t7)
/* 0044D7A4 99E1FFFF */  lwr   $at, -1($t7)
/* 0044D7A8 00000000 */  nop   
/* 0044D7AC A901FFFC */  swl   $at, -4($t0)
/* 0044D7B0 15F9FFF1 */  bne   $t7, $t9, .L0044D778
/* 0044D7B4 B901FFFF */   swr   $at, -1($t0)
/* 0044D7B8 89E10000 */  lwl   $at, ($t7)
/* 0044D7BC 99E10003 */  lwr   $at, 3($t7)
/* 0044D7C0 8F898C68 */  lw     $t1, %got(emptystring)($gp)
/* 0044D7C4 A9010000 */  swl   $at, ($t0)
/* 0044D7C8 B9010003 */  swr   $at, 3($t0)
/* 0044D7CC 89F90004 */  lwl   $t9, 4($t7)
/* 0044D7D0 99F90007 */  lwr   $t9, 7($t7)
/* 0044D7D4 240A0001 */  li    $t2, 1
/* 0044D7D8 A9190004 */  swl   $t9, 4($t0)
/* 0044D7DC B9190007 */  swr   $t9, 7($t0)
/* 0044D7E0 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0044D7E4 8D290000 */  lw    $t1, ($t1)
/* 0044D7E8 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044D7EC 8FA60008 */  lw    $a2, 8($sp)
/* 0044D7F0 8FA50004 */  lw    $a1, 4($sp)
/* 0044D7F4 8FA40000 */  lw    $a0, ($sp)
/* 0044D7F8 AFAA0054 */  sw    $t2, 0x54($sp)
/* 0044D7FC 0320F809 */  jalr  $t9
/* 0044D800 AFA90050 */   sw    $t1, 0x50($sp)
/* 0044D804 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044D808 10000C19 */  b     .L00450870
/* 0044D80C 8FBF00D4 */   lw    $ra, 0xd4($sp)
.L0044D810:
/* 0044D810 8FAC032C */  lw    $t4, 0x32c($sp)
/* 0044D814 8F998028 */  lw    $t9, %got(func_0044CBD8)($gp)
/* 0044D818 AD800030 */  sw    $zero, 0x30($t4)
/* 0044D81C 8FAB0328 */  lw    $t3, 0x328($sp)
/* 0044D820 2739CBD8 */  addiu $t9, %lo(func_0044CBD8) # addiu $t9, $t9, -0x3428
/* 0044D824 27A20330 */  addiu $v0, $sp, 0x330
/* 0044D828 0320F809 */  jalr  $t9
/* 0044D82C AD600030 */   sw    $zero, 0x30($t3)
/* 0044D830 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044D834 2401FFFF */  li    $at, -1
/* 0044D838 8F8D8CD8 */  lw     $t5, %got(lastusertextseg)($gp)
/* 0044D83C 24040009 */  li    $a0, 9
/* 0044D840 8DAD0000 */  lw    $t5, ($t5)
/* 0044D844 00000000 */  nop   
/* 0044D848 11A1002C */  beq   $t5, $at, .L0044D8FC
/* 0044D84C 00000000 */   nop   
/* 0044D850 8F848CD4 */  lw     $a0, %got(firstusertextseg)($gp)
/* 0044D854 8F998028 */  lw    $t9, %got(func_0044CBD8)($gp)
/* 0044D858 8C840000 */  lw    $a0, ($a0)
/* 0044D85C 2739CBD8 */  addiu $t9, %lo(func_0044CBD8) # addiu $t9, $t9, -0x3428
/* 0044D860 00002825 */  move  $a1, $zero
/* 0044D864 0320F809 */  jalr  $t9
/* 0044D868 27A20330 */   addiu $v0, $sp, 0x330
/* 0044D86C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044D870 00000000 */  nop   
/* 0044D874 8F828CD4 */  lw     $v0, %got(firstusertextseg)($gp)
/* 0044D878 8F858CD8 */  lw     $a1, %got(lastusertextseg)($gp)
/* 0044D87C 8C420000 */  lw    $v0, ($v0)
/* 0044D880 8CA50000 */  lw    $a1, ($a1)
/* 0044D884 24420001 */  addiu $v0, $v0, 1
/* 0044D888 00A2082A */  slt   $at, $a1, $v0
/* 0044D88C 14200013 */  bnez  $at, .L0044D8DC
/* 0044D890 00A01825 */   move  $v1, $a1
/* 0044D894 24630001 */  addiu $v1, $v1, 1
/* 0044D898 AFA30114 */  sw    $v1, 0x114($sp)
/* 0044D89C 00409825 */  move  $s3, $v0
.L0044D8A0:
/* 0044D8A0 8F998028 */  lw    $t9, %got(func_0044CBD8)($gp)
/* 0044D8A4 02602025 */  move  $a0, $s3
/* 0044D8A8 2739CBD8 */  addiu $t9, %lo(func_0044CBD8) # addiu $t9, $t9, -0x3428
/* 0044D8AC 2665FFFF */  addiu $a1, $s3, -1
/* 0044D8B0 0320F809 */  jalr  $t9
/* 0044D8B4 27A20330 */   addiu $v0, $sp, 0x330
/* 0044D8B8 8FAE0114 */  lw    $t6, 0x114($sp)
/* 0044D8BC 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044D8C0 26730001 */  addiu $s3, $s3, 1
/* 0044D8C4 166EFFF6 */  bne   $s3, $t6, .L0044D8A0
/* 0044D8C8 00000000 */   nop   
/* 0044D8CC 8F858CD8 */  lw     $a1, %got(lastusertextseg)($gp)
/* 0044D8D0 00000000 */  nop   
/* 0044D8D4 8CA50000 */  lw    $a1, ($a1)
/* 0044D8D8 00000000 */  nop   
.L0044D8DC:
/* 0044D8DC 8F998028 */  lw    $t9, %got(func_0044CBD8)($gp)
/* 0044D8E0 24040009 */  li    $a0, 9
/* 0044D8E4 2739CBD8 */  addiu $t9, %lo(func_0044CBD8) # addiu $t9, $t9, -0x3428
/* 0044D8E8 0320F809 */  jalr  $t9
/* 0044D8EC 27A20330 */   addiu $v0, $sp, 0x330
/* 0044D8F0 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044D8F4 10000008 */  b     .L0044D918
/* 0044D8F8 00000000 */   nop   
.L0044D8FC:
/* 0044D8FC 8F998028 */  lw    $t9, %got(func_0044CBD8)($gp)
/* 0044D900 00002825 */  move  $a1, $zero
/* 0044D904 2739CBD8 */  addiu $t9, %lo(func_0044CBD8) # addiu $t9, $t9, -0x3428
/* 0044D908 0320F809 */  jalr  $t9
/* 0044D90C 27A20330 */   addiu $v0, $sp, 0x330
/* 0044D910 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044D914 00000000 */  nop   
.L0044D918:
/* 0044D918 8F988CB4 */  lw     $t8, %got(excpt_opt)($gp)
/* 0044D91C 24040002 */  li    $a0, 2
/* 0044D920 93180000 */  lbu   $t8, ($t8)
/* 0044D924 00000000 */  nop   
/* 0044D928 13000018 */  beqz  $t8, .L0044D98C
/* 0044D92C 00000000 */   nop   
/* 0044D930 8F998028 */  lw    $t9, %got(func_0044CBD8)($gp)
/* 0044D934 24040007 */  li    $a0, 7
/* 0044D938 2739CBD8 */  addiu $t9, %lo(func_0044CBD8) # addiu $t9, $t9, -0x3428
/* 0044D93C 24050009 */  li    $a1, 9
/* 0044D940 0320F809 */  jalr  $t9
/* 0044D944 27A20330 */   addiu $v0, $sp, 0x330
/* 0044D948 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044D94C 24040008 */  li    $a0, 8
/* 0044D950 8F998028 */  lw    $t9, %got(func_0044CBD8)($gp)
/* 0044D954 24050007 */  li    $a1, 7
/* 0044D958 2739CBD8 */  addiu $t9, %lo(func_0044CBD8) # addiu $t9, $t9, -0x3428
/* 0044D95C 0320F809 */  jalr  $t9
/* 0044D960 27A20330 */   addiu $v0, $sp, 0x330
/* 0044D964 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044D968 24040002 */  li    $a0, 2
/* 0044D96C 8F998028 */  lw    $t9, %got(func_0044CBD8)($gp)
/* 0044D970 24050008 */  li    $a1, 8
/* 0044D974 2739CBD8 */  addiu $t9, %lo(func_0044CBD8) # addiu $t9, $t9, -0x3428
/* 0044D978 0320F809 */  jalr  $t9
/* 0044D97C 27A20330 */   addiu $v0, $sp, 0x330
/* 0044D980 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044D984 10000008 */  b     .L0044D9A8
/* 0044D988 00000000 */   nop   
.L0044D98C:
/* 0044D98C 8F998028 */  lw    $t9, %got(func_0044CBD8)($gp)
/* 0044D990 24050009 */  li    $a1, 9
/* 0044D994 2739CBD8 */  addiu $t9, %lo(func_0044CBD8) # addiu $t9, $t9, -0x3428
/* 0044D998 0320F809 */  jalr  $t9
/* 0044D99C 27A20330 */   addiu $v0, $sp, 0x330
/* 0044D9A0 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044D9A4 00000000 */  nop   
.L0044D9A8:
/* 0044D9A8 8F998028 */  lw    $t9, %got(func_0044CBD8)($gp)
/* 0044D9AC 24040006 */  li    $a0, 6
/* 0044D9B0 2739CBD8 */  addiu $t9, %lo(func_0044CBD8) # addiu $t9, $t9, -0x3428
/* 0044D9B4 24050002 */  li    $a1, 2
/* 0044D9B8 0320F809 */  jalr  $t9
/* 0044D9BC 27A20330 */   addiu $v0, $sp, 0x330
/* 0044D9C0 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044D9C4 24040005 */  li    $a0, 5
/* 0044D9C8 8F998028 */  lw    $t9, %got(func_0044CBD8)($gp)
/* 0044D9CC 24050006 */  li    $a1, 6
/* 0044D9D0 2739CBD8 */  addiu $t9, %lo(func_0044CBD8) # addiu $t9, $t9, -0x3428
/* 0044D9D4 0320F809 */  jalr  $t9
/* 0044D9D8 27A20330 */   addiu $v0, $sp, 0x330
/* 0044D9DC 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044D9E0 24040001 */  li    $a0, 1
/* 0044D9E4 8F998028 */  lw    $t9, %got(func_0044CBD8)($gp)
/* 0044D9E8 24050005 */  li    $a1, 5
/* 0044D9EC 2739CBD8 */  addiu $t9, %lo(func_0044CBD8) # addiu $t9, $t9, -0x3428
/* 0044D9F0 0320F809 */  jalr  $t9
/* 0044D9F4 27A20330 */   addiu $v0, $sp, 0x330
/* 0044D9F8 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044D9FC 24040003 */  li    $a0, 3
/* 0044DA00 8F998028 */  lw    $t9, %got(func_0044CBD8)($gp)
/* 0044DA04 24050001 */  li    $a1, 1
/* 0044DA08 2739CBD8 */  addiu $t9, %lo(func_0044CBD8) # addiu $t9, $t9, -0x3428
/* 0044DA0C 0320F809 */  jalr  $t9
/* 0044DA10 27A20330 */   addiu $v0, $sp, 0x330
/* 0044DA14 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044DA18 24040004 */  li    $a0, 4
/* 0044DA1C 8F998028 */  lw    $t9, %got(func_0044CBD8)($gp)
/* 0044DA20 24050003 */  li    $a1, 3
/* 0044DA24 2739CBD8 */  addiu $t9, %lo(func_0044CBD8) # addiu $t9, $t9, -0x3428
/* 0044DA28 0320F809 */  jalr  $t9
/* 0044DA2C 27A20330 */   addiu $v0, $sp, 0x330
/* 0044DA30 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044DA34 2401FFFF */  li    $at, -1
/* 0044DA38 8F858CD8 */  lw     $a1, %got(lastusertextseg)($gp)
/* 0044DA3C 00000000 */  nop   
/* 0044DA40 8CA50000 */  lw    $a1, ($a1)
/* 0044DA44 00000000 */  nop   
/* 0044DA48 10A10013 */  beq   $a1, $at, .L0044DA98
/* 0044DA4C 00000000 */   nop   
/* 0044DA50 8F848CD4 */  lw     $a0, %got(firstusertextseg)($gp)
/* 0044DA54 24A30001 */  addiu $v1, $a1, 1
/* 0044DA58 8C840000 */  lw    $a0, ($a0)
/* 0044DA5C 00000000 */  nop   
/* 0044DA60 00A4082A */  slt   $at, $a1, $a0
/* 0044DA64 1420000C */  bnez  $at, .L0044DA98
/* 0044DA68 00642823 */   subu  $a1, $v1, $a0
/* 0044DA6C 30B90003 */  andi  $t9, $a1, 3
/* 0044DA70 13200006 */  beqz  $t9, .L0044DA8C
/* 0044DA74 00809825 */   move  $s3, $a0
/* 0044DA78 03241021 */  addu  $v0, $t9, $a0
.L0044DA7C:
/* 0044DA7C 26730001 */  addiu $s3, $s3, 1
/* 0044DA80 1453FFFE */  bne   $v0, $s3, .L0044DA7C
/* 0044DA84 00000000 */   nop   
/* 0044DA88 12630003 */  beq   $s3, $v1, .L0044DA98
.L0044DA8C:
/* 0044DA8C 26730004 */   addiu $s3, $s3, 4
.L0044DA90:
/* 0044DA90 1663FFFF */  bne   $s3, $v1, .L0044DA90
/* 0044DA94 26730004 */   addiu $s3, $s3, 4
.L0044DA98:
/* 0044DA98 8F998028 */  lw    $t9, %got(func_0044D244)($gp)
/* 0044DA9C 24040003 */  li    $a0, 3
/* 0044DAA0 2739D244 */  addiu $t9, %lo(func_0044D244) # addiu $t9, $t9, -0x2dbc
/* 0044DAA4 24050004 */  li    $a1, 4
/* 0044DAA8 0320F809 */  jalr  $t9
/* 0044DAAC 27A20330 */   addiu $v0, $sp, 0x330
/* 0044DAB0 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044DAB4 24040001 */  li    $a0, 1
/* 0044DAB8 8F998028 */  lw    $t9, %got(func_0044D244)($gp)
/* 0044DABC 24050002 */  li    $a1, 2
/* 0044DAC0 2739D244 */  addiu $t9, %lo(func_0044D244) # addiu $t9, $t9, -0x2dbc
/* 0044DAC4 0320F809 */  jalr  $t9
/* 0044DAC8 27A20330 */   addiu $v0, $sp, 0x330
/* 0044DACC 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044DAD0 24010002 */  li    $at, 2
/* 0044DAD4 8F8F8AF8 */  lw     $t7, %got(picflag)($gp)
/* 0044DAD8 8FA7032C */  lw    $a3, 0x32c($sp)
/* 0044DADC 8DEF0000 */  lw    $t7, ($t7)
/* 0044DAE0 00000000 */  nop   
/* 0044DAE4 11E10006 */  beq   $t7, $at, .L0044DB00
/* 0044DAE8 00000000 */   nop   
/* 0044DAEC 8CE80018 */  lw    $t0, 0x18($a3)
/* 0044DAF0 00000000 */  nop   
/* 0044DAF4 25097FF0 */  addiu $t1, $t0, 0x7ff0
/* 0044DAF8 10000003 */  b     .L0044DB08
/* 0044DAFC AFA90128 */   sw    $t1, 0x128($sp)
.L0044DB00:
/* 0044DB00 8FA7032C */  lw    $a3, 0x32c($sp)
/* 0044DB04 AFA00128 */  sw    $zero, 0x128($sp)
.L0044DB08:
/* 0044DB08 8F868D0C */  lw     $a2, %got(lastsym)($gp)
/* 0044DB0C 0000A825 */  move  $s5, $zero
/* 0044DB10 8CC60000 */  lw    $a2, ($a2)
/* 0044DB14 00000000 */  nop   
/* 0044DB18 10C0003B */  beqz  $a2, .L0044DC08
/* 0044DB1C 00C08825 */   move  $s1, $a2
/* 0044DB20 8F928AE0 */  lw     $s2, %got(memory)($gp)
/* 0044DB24 8F848CB4 */  lw     $a0, %got(excpt_opt)($gp)
/* 0044DB28 8F838CD0 */  lw     $v1, %got(nonzero_scnbase)($gp)
/* 0044DB2C 8E520000 */  lw    $s2, ($s2)
/* 0044DB30 90840000 */  lbu   $a0, ($a0)
/* 0044DB34 2405002C */  li    $a1, 44
.L0044DB38:
/* 0044DB38 10800018 */  beqz  $a0, .L0044DB9C
/* 0044DB3C 00000000 */   nop   
/* 0044DB40 8E220030 */  lw    $v0, 0x30($s1)
/* 0044DB44 3C01F9C1 */  lui   $at, 0xf9c1
/* 0044DB48 00450019 */  multu $v0, $a1
/* 0044DB4C 00024080 */  sll   $t0, $v0, 2
/* 0044DB50 00E84821 */  addu  $t1, $a3, $t0
/* 0044DB54 00005012 */  mflo  $t2
/* 0044DB58 024A6021 */  addu  $t4, $s2, $t2
/* 0044DB5C 918B0008 */  lbu   $t3, 8($t4)
/* 0044DB60 00000000 */  nop   
/* 0044DB64 2D6D0020 */  sltiu $t5, $t3, 0x20
/* 0044DB68 000D7023 */  negu  $t6, $t5
/* 0044DB6C 01C1C024 */  and   $t8, $t6, $at
/* 0044DB70 0178C804 */  sllv  $t9, $t8, $t3
/* 0044DB74 07210006 */  bgez  $t9, .L0044DB90
/* 0044DB78 00000000 */   nop   
/* 0044DB7C 8E2F0010 */  lw    $t7, 0x10($s1)
/* 0044DB80 8D2A0000 */  lw    $t2, ($t1)
/* 0044DB84 00000000 */  nop   
/* 0044DB88 01EA6021 */  addu  $t4, $t7, $t2
/* 0044DB8C AE2C0010 */  sw    $t4, 0x10($s1)
.L0044DB90:
/* 0044DB90 8E310000 */  lw    $s1, ($s1)
/* 0044DB94 10000019 */  b     .L0044DBFC
/* 0044DB98 00000000 */   nop   
.L0044DB9C:
/* 0044DB9C 8E220030 */  lw    $v0, 0x30($s1)
/* 0044DBA0 3C01F841 */  lui   $at, 0xf841
/* 0044DBA4 00450019 */  multu $v0, $a1
/* 0044DBA8 00006812 */  mflo  $t5
/* 0044DBAC 024D7021 */  addu  $t6, $s2, $t5
/* 0044DBB0 91D80008 */  lbu   $t8, 8($t6)
/* 0044DBB4 00000000 */  nop   
/* 0044DBB8 2F0B0020 */  sltiu $t3, $t8, 0x20
/* 0044DBBC 000BC823 */  negu  $t9, $t3
/* 0044DBC0 03214024 */  and   $t0, $t9, $at
/* 0044DBC4 03084804 */  sllv  $t1, $t0, $t8
/* 0044DBC8 0521000A */  bgez  $t1, .L0044DBF4
/* 0044DBCC 00000000 */   nop   
/* 0044DBD0 906F0000 */  lbu   $t7, ($v1)
/* 0044DBD4 00026080 */  sll   $t4, $v0, 2
/* 0044DBD8 11E00006 */  beqz  $t7, .L0044DBF4
/* 0044DBDC 00EC6821 */   addu  $t5, $a3, $t4
/* 0044DBE0 8E2A0010 */  lw    $t2, 0x10($s1)
/* 0044DBE4 8DAE0000 */  lw    $t6, ($t5)
/* 0044DBE8 00000000 */  nop   
/* 0044DBEC 014E5821 */  addu  $t3, $t2, $t6
/* 0044DBF0 AE2B0010 */  sw    $t3, 0x10($s1)
.L0044DBF4:
/* 0044DBF4 8E310000 */  lw    $s1, ($s1)
/* 0044DBF8 00000000 */  nop   
.L0044DBFC:
/* 0044DBFC 1620FFCE */  bnez  $s1, .L0044DB38
/* 0044DC00 00000000 */   nop   
/* 0044DC04 00C08825 */  move  $s1, $a2
.L0044DC08:
/* 0044DC08 1220008D */  beqz  $s1, .L0044DE40
/* 0044DC0C 00009025 */   move  $s2, $zero
/* 0044DC10 3C1E7FFF */  lui   $fp, 0x7fff
/* 0044DC14 37DEFFFF */  ori   $fp, $fp, 0xffff
/* 0044DC18 24170056 */  li    $s7, 86
/* 0044DC1C 24160045 */  li    $s6, 69
.L0044DC20:
/* 0044DC20 8E240018 */  lw    $a0, 0x18($s1)
/* 0044DC24 24010043 */  li    $at, 67
/* 0044DC28 18800081 */  blez  $a0, .L0044DE30
/* 0044DC2C 00000000 */   nop   
/* 0044DC30 8F828BC8 */  lw     $v0, %got(fromas0)($gp)
/* 0044DC34 92300034 */  lbu   $s0, 0x34($s1)
/* 0044DC38 90420000 */  lbu   $v0, ($v0)
/* 0044DC3C 12010005 */  beq   $s0, $at, .L0044DC54
/* 0044DC40 00000000 */   nop   
/* 0044DC44 12160003 */  beq   $s0, $s6, .L0044DC54
/* 0044DC48 00000000 */   nop   
/* 0044DC4C 16170004 */  bne   $s0, $s7, .L0044DC60
/* 0044DC50 00000000 */   nop   
.L0044DC54:
/* 0044DC54 8E340028 */  lw    $s4, 0x28($s1)
/* 0044DC58 10000003 */  b     .L0044DC68
/* 0044DC5C 00000000 */   nop   
.L0044DC60:
/* 0044DC60 8E340010 */  lw    $s4, 0x10($s1)
/* 0044DC64 00000000 */  nop   
.L0044DC68:
/* 0044DC68 1040004C */  beqz  $v0, .L0044DD9C
/* 0044DC6C 00000000 */   nop   
/* 0044DC70 8E24000C */  lw    $a0, 0xc($s1)
/* 0044DC74 2613FFC0 */  addiu $s3, $s0, -0x40
/* 0044DC78 90990000 */  lbu   $t9, ($a0)
/* 0044DC7C 2E680020 */  sltiu $t0, $s3, 0x20
/* 0044DC80 1320006B */  beqz  $t9, .L0044DE30
/* 0044DC84 0008C023 */   negu  $t8, $t0
/* 0044DC88 3C017FFF */  lui   $at, 0x7fff
/* 0044DC8C 3421FFE0 */  ori   $at, $at, 0xffe0
/* 0044DC90 03014824 */  and   $t1, $t8, $at
/* 0044DC94 02697804 */  sllv  $t7, $t1, $s3
/* 0044DC98 05E10008 */  bgez  $t7, .L0044DCBC
/* 0044DC9C 00000000 */   nop   
/* 0044DCA0 8F998810 */  lw    $t9, %call16(st_extstradd)($gp)
/* 0044DCA4 00000000 */  nop   
/* 0044DCA8 0320F809 */  jalr  $t9
/* 0044DCAC 00000000 */   nop   
/* 0044DCB0 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044DCB4 10000007 */  b     .L0044DCD4
/* 0044DCB8 AE220024 */   sw    $v0, 0x24($s1)
.L0044DCBC:
/* 0044DCBC 8F998840 */  lw    $t9, %call16(st_stradd)($gp)
/* 0044DCC0 00000000 */  nop   
/* 0044DCC4 0320F809 */  jalr  $t9
/* 0044DCC8 00000000 */   nop   
/* 0044DCCC 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044DCD0 AE220024 */  sw    $v0, 0x24($s1)
.L0044DCD4:
/* 0044DCD4 2E6C0040 */  sltiu $t4, $s3, 0x40
/* 0044DCD8 11800009 */  beqz  $t4, .L0044DD00
/* 0044DCDC 00136943 */   sra   $t5, $s3, 5
/* 0044DCE0 8F8E8080 */  lw    $t6, %got(D_10004B38)($gp)
/* 0044DCE4 000D5080 */  sll   $t2, $t5, 2
/* 0044DCE8 25CE4B38 */  addiu $t6, %lo(D_10004B38) # addiu $t6, $t6, 0x4b38
/* 0044DCEC 01CA5821 */  addu  $t3, $t6, $t2
/* 0044DCF0 8D790000 */  lw    $t9, ($t3)
/* 0044DCF4 00000000 */  nop   
/* 0044DCF8 02794004 */  sllv  $t0, $t9, $s3
/* 0044DCFC 290C0000 */  slti  $t4, $t0, 0
.L0044DD00:
/* 0044DD00 1580000A */  bnez  $t4, .L0044DD2C
/* 0044DD04 00002025 */   move  $a0, $zero
/* 0044DD08 8F9983EC */  lw    $t9, %call16(st_fixdef)($gp)
/* 0044DD0C 8E250024 */  lw    $a1, 0x24($s1)
/* 0044DD10 2404FFFF */  li    $a0, -1
/* 0044DD14 02803025 */  move  $a2, $s4
/* 0044DD18 0320F809 */  jalr  $t9
/* 0044DD1C 02003825 */   move  $a3, $s0
/* 0044DD20 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044DD24 1000001A */  b     .L0044DD90
/* 0044DD28 AE22001C */   sw    $v0, 0x1c($s1)
.L0044DD2C:
/* 0044DD2C 1240000F */  beqz  $s2, .L0044DD6C
/* 0044DD30 02401025 */   move  $v0, $s2
/* 0044DD34 8E230010 */  lw    $v1, 0x10($s1)
/* 0044DD38 00000000 */  nop   
.L0044DD3C:
/* 0044DD3C 8C490010 */  lw    $t1, 0x10($v0)
/* 0044DD40 00000000 */  nop   
/* 0044DD44 0123082A */  slt   $at, $t1, $v1
/* 0044DD48 10200005 */  beqz  $at, .L0044DD60
/* 0044DD4C 00000000 */   nop   
/* 0044DD50 00402025 */  move  $a0, $v0
/* 0044DD54 8C420008 */  lw    $v0, 8($v0)
/* 0044DD58 10000002 */  b     .L0044DD64
/* 0044DD5C 00000000 */   nop   
.L0044DD60:
/* 0044DD60 00001025 */  move  $v0, $zero
.L0044DD64:
/* 0044DD64 1440FFF5 */  bnez  $v0, .L0044DD3C
/* 0044DD68 00000000 */   nop   
.L0044DD6C:
/* 0044DD6C 14800004 */  bnez  $a0, .L0044DD80
/* 0044DD70 AE220008 */   sw    $v0, 8($s1)
/* 0044DD74 AE320008 */  sw    $s2, 8($s1)
/* 0044DD78 10000005 */  b     .L0044DD90
/* 0044DD7C 02209025 */   move  $s2, $s1
.L0044DD80:
/* 0044DD80 8C8F0008 */  lw    $t7, 8($a0)
/* 0044DD84 00000000 */  nop   
/* 0044DD88 AE2F0008 */  sw    $t7, 8($s1)
/* 0044DD8C AC910008 */  sw    $s1, 8($a0)
.L0044DD90:
/* 0044DD90 26B50001 */  addiu $s5, $s5, 1
/* 0044DD94 10000026 */  b     .L0044DE30
/* 0044DD98 AE350014 */   sw    $s5, 0x14($s1)
.L0044DD9C:
/* 0044DD9C 13C40024 */  beq   $fp, $a0, .L0044DE30
/* 0044DDA0 00000000 */   nop   
/* 0044DDA4 8F998860 */  lw    $t9, %call16(st_str_idn)($gp)
/* 0044DDA8 00000000 */  nop   
/* 0044DDAC 0320F809 */  jalr  $t9
/* 0044DDB0 00000000 */   nop   
/* 0044DDB4 922D0034 */  lbu   $t5, 0x34($s1)
/* 0044DDB8 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044DDBC 25AEFFC0 */  addiu $t6, $t5, -0x40
/* 0044DDC0 2DCA0040 */  sltiu $t2, $t6, 0x40
/* 0044DDC4 11400009 */  beqz  $t2, .L0044DDEC
/* 0044DDC8 000E5943 */   sra   $t3, $t6, 5
/* 0044DDCC 8F888080 */  lw    $t0, %got(D_10004B30)($gp)
/* 0044DDD0 000BC880 */  sll   $t9, $t3, 2
/* 0044DDD4 25084B30 */  addiu $t0, %lo(D_10004B30) # addiu $t0, $t0, 0x4b30
/* 0044DDD8 0119C021 */  addu  $t8, $t0, $t9
/* 0044DDDC 8F0C0000 */  lw    $t4, ($t8)
/* 0044DDE0 00000000 */  nop   
/* 0044DDE4 01CC4804 */  sllv  $t1, $t4, $t6
/* 0044DDE8 292A0000 */  slti  $t2, $t1, 0
.L0044DDEC:
/* 0044DDEC 11400005 */  beqz  $t2, .L0044DE04
/* 0044DDF0 2401FFFF */   li    $at, -1
/* 0044DDF4 8E2D0020 */  lw    $t5, 0x20($s1)
/* 0044DDF8 00000000 */  nop   
/* 0044DDFC 11A0000C */  beqz  $t5, .L0044DE30
/* 0044DE00 00000000 */   nop   
.L0044DE04:
/* 0044DE04 1041000A */  beq   $v0, $at, .L0044DE30
/* 0044DE08 00002825 */   move  $a1, $zero
/* 0044DE0C 8F9983EC */  lw    $t9, %call16(st_fixdef)($gp)
/* 0044DE10 8E240018 */  lw    $a0, 0x18($s1)
/* 0044DE14 02803025 */  move  $a2, $s4
/* 0044DE18 0320F809 */  jalr  $t9
/* 0044DE1C 02003825 */   move  $a3, $s0
/* 0044DE20 26B50001 */  addiu $s5, $s5, 1
/* 0044DE24 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044DE28 AE22001C */  sw    $v0, 0x1c($s1)
/* 0044DE2C AE350014 */  sw    $s5, 0x14($s1)
.L0044DE30:
/* 0044DE30 8E310000 */  lw    $s1, ($s1)
/* 0044DE34 00000000 */  nop   
/* 0044DE38 1620FF79 */  bnez  $s1, .L0044DC20
/* 0044DE3C 00000000 */   nop   
.L0044DE40:
/* 0044DE40 1240004F */  beqz  $s2, .L0044DF80
/* 0044DE44 24140048 */   li    $s4, 72
/* 0044DE48 8F908B18 */  lw     $s0, %got(debugflag)($gp)
/* 0044DE4C 24130074 */  li    $s3, 116
/* 0044DE50 24110054 */  li    $s1, 84
.L0044DE54:
/* 0044DE54 92470034 */  lbu   $a3, 0x34($s2)
/* 0044DE58 0240B025 */  move  $s6, $s2
/* 0044DE5C 12270007 */  beq   $s1, $a3, .L0044DE7C
/* 0044DE60 2404FFFE */   li    $a0, -2
/* 0044DE64 16670006 */  bne   $s3, $a3, .L0044DE80
/* 0044DE68 00000000 */   nop   
/* 0044DE6C 924B0039 */  lbu   $t3, 0x39($s2)
/* 0044DE70 00000000 */  nop   
/* 0044DE74 15600002 */  bnez  $t3, .L0044DE80
/* 0044DE78 00000000 */   nop   
.L0044DE7C:
/* 0044DE7C 2404FFFF */  li    $a0, -1
.L0044DE80:
/* 0044DE80 8F9983EC */  lw    $t9, %call16(st_fixdef)($gp)
/* 0044DE84 8E450024 */  lw    $a1, 0x24($s2)
/* 0044DE88 8E460010 */  lw    $a2, 0x10($s2)
/* 0044DE8C 0320F809 */  jalr  $t9
/* 0044DE90 00000000 */   nop   
/* 0044DE94 92480039 */  lbu   $t0, 0x39($s2)
/* 0044DE98 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044DE9C 1100001A */  beqz  $t0, .L0044DF08
/* 0044DEA0 AE42001C */   sw    $v0, 0x1c($s2)
/* 0044DEA4 92420040 */  lbu   $v0, 0x40($s2)
/* 0044DEA8 24040009 */  li    $a0, 9
/* 0044DEAC 1282000D */  beq   $s4, $v0, .L0044DEE4
/* 0044DEB0 00002825 */   move  $a1, $zero
/* 0044DEB4 8E190000 */  lw    $t9, ($s0)
/* 0044DEB8 8E460048 */  lw    $a2, 0x48($s2)
/* 0044DEBC AFB90014 */  sw    $t9, 0x14($sp)
/* 0044DEC0 8F9983F4 */  lw    $t9, %call16(st_pseudo)($gp)
/* 0044DEC4 9247003F */  lbu   $a3, 0x3f($s2)
/* 0044DEC8 24040009 */  li    $a0, 9
/* 0044DECC 00002825 */  move  $a1, $zero
/* 0044DED0 0320F809 */  jalr  $t9
/* 0044DED4 AFA20010 */   sw    $v0, 0x10($sp)
/* 0044DED8 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044DEDC 1000000B */  b     .L0044DF0C
/* 0044DEE0 924C003A */   lbu   $t4, 0x3a($s2)
.L0044DEE4:
/* 0044DEE4 8E180000 */  lw    $t8, ($s0)
/* 0044DEE8 8F9983F4 */  lw    $t9, %call16(st_pseudo)($gp)
/* 0044DEEC 8E460048 */  lw    $a2, 0x48($s2)
/* 0044DEF0 9247003F */  lbu   $a3, 0x3f($s2)
/* 0044DEF4 AFA00010 */  sw    $zero, 0x10($sp)
/* 0044DEF8 0320F809 */  jalr  $t9
/* 0044DEFC AFB80014 */   sw    $t8, 0x14($sp)
/* 0044DF00 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044DF04 00000000 */  nop   
.L0044DF08:
/* 0044DF08 924C003A */  lbu   $t4, 0x3a($s2)
.L0044DF0C:
/* 0044DF0C 24040007 */  li    $a0, 7
/* 0044DF10 1180000A */  beqz  $t4, .L0044DF3C
/* 0044DF14 00003825 */   move  $a3, $zero
/* 0044DF18 8E0E0000 */  lw    $t6, ($s0)
/* 0044DF1C 8F9983F4 */  lw    $t9, %call16(st_pseudo)($gp)
/* 0044DF20 8E45004C */  lw    $a1, 0x4c($s2)
/* 0044DF24 8E460050 */  lw    $a2, 0x50($s2)
/* 0044DF28 AFA00010 */  sw    $zero, 0x10($sp)
/* 0044DF2C 0320F809 */  jalr  $t9
/* 0044DF30 AFAE0014 */   sw    $t6, 0x14($sp)
/* 0044DF34 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044DF38 00000000 */  nop   
.L0044DF3C:
/* 0044DF3C 9249003B */  lbu   $t1, 0x3b($s2)
/* 0044DF40 24040008 */  li    $a0, 8
/* 0044DF44 1120000A */  beqz  $t1, .L0044DF70
/* 0044DF48 00003825 */   move  $a3, $zero
/* 0044DF4C 8E0F0000 */  lw    $t7, ($s0)
/* 0044DF50 8F9983F4 */  lw    $t9, %call16(st_pseudo)($gp)
/* 0044DF54 8E450054 */  lw    $a1, 0x54($s2)
/* 0044DF58 8E460058 */  lw    $a2, 0x58($s2)
/* 0044DF5C AFA00010 */  sw    $zero, 0x10($sp)
/* 0044DF60 0320F809 */  jalr  $t9
/* 0044DF64 AFAF0014 */   sw    $t7, 0x14($sp)
/* 0044DF68 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044DF6C 00000000 */  nop   
.L0044DF70:
/* 0044DF70 8ED20008 */  lw    $s2, 8($s6)
/* 0044DF74 00000000 */  nop   
/* 0044DF78 1640FFB6 */  bnez  $s2, .L0044DE54
/* 0044DF7C 00000000 */   nop   
.L0044DF80:
/* 0044DF80 8F918D0C */  lw     $s1, %got(lastsym)($gp)
/* 0044DF84 00000000 */  nop   
/* 0044DF88 8E310000 */  lw    $s1, ($s1)
/* 0044DF8C 00000000 */  nop   
/* 0044DF90 12200010 */  beqz  $s1, .L0044DFD4
/* 0044DF94 00000000 */   nop   
.L0044DF98:
/* 0044DF98 922A003C */  lbu   $t2, 0x3c($s1)
/* 0044DF9C 0220B025 */  move  $s6, $s1
/* 0044DFA0 11400008 */  beqz  $t2, .L0044DFC4
/* 0044DFA4 00000000 */   nop   
/* 0044DFA8 8F9983F0 */  lw    $t9, %call16(st_fixweakext)($gp)
/* 0044DFAC 8E240018 */  lw    $a0, 0x18($s1)
/* 0044DFB0 8E250044 */  lw    $a1, 0x44($s1)
/* 0044DFB4 0320F809 */  jalr  $t9
/* 0044DFB8 00000000 */   nop   
/* 0044DFBC 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044DFC0 00000000 */  nop   
.L0044DFC4:
/* 0044DFC4 8ED10000 */  lw    $s1, ($s6)
/* 0044DFC8 00000000 */  nop   
/* 0044DFCC 1620FFF2 */  bnez  $s1, .L0044DF98
/* 0044DFD0 00000000 */   nop   
.L0044DFD4:
/* 0044DFD4 8F828AF0 */  lw     $v0, %got(nextrld)($gp)
/* 0044DFD8 24170018 */  li    $s7, 24
/* 0044DFDC 8C420000 */  lw    $v0, ($v0)
/* 0044DFE0 3C15FFFF */  lui   $s5, 0xffff
/* 0044DFE4 2442FFFF */  addiu $v0, $v0, -1
/* 0044DFE8 184003C8 */  blez  $v0, .L0044EF0C
/* 0044DFEC 24420001 */   addiu $v0, $v0, 1
/* 0044DFF0 00026880 */  sll   $t5, $v0, 2
/* 0044DFF4 01A26823 */  subu  $t5, $t5, $v0
/* 0044DFF8 000D68C0 */  sll   $t5, $t5, 3
/* 0044DFFC 8F9E8AE8 */  lw     $fp, %got(sexchange)($gp)
/* 0044E000 AFAD00DC */  sw    $t5, 0xdc($sp)
/* 0044E004 AFA2011C */  sw    $v0, 0x11c($sp)
.L0044E008:
/* 0044E008 8F8B8AF4 */  lw     $t3, %got(rld_list)($gp)
/* 0044E00C 24010007 */  li    $at, 7
/* 0044E010 8D6B0000 */  lw    $t3, ($t3)
/* 0044E014 00000000 */  nop   
/* 0044E018 0177B021 */  addu  $s6, $t3, $s7
/* 0044E01C 92C20010 */  lbu   $v0, 0x10($s6)
/* 0044E020 00000000 */  nop   
/* 0044E024 104003B6 */  beqz  $v0, .L0044EF00
/* 0044E028 8FAE00DC */   lw    $t6, 0xdc($sp)
/* 0044E02C 8F928AE0 */  lw     $s2, %got(memory)($gp)
/* 0044E030 8ED40004 */  lw    $s4, 4($s6)
/* 0044E034 8E520000 */  lw    $s2, ($s2)
/* 0044E038 1441000E */  bne   $v0, $at, .L0044E074
/* 0044E03C 00000000 */   nop   
/* 0044E040 8F888B28 */  lw     $t0, %got(sixtyfour_bit)($gp)
/* 0044E044 00000000 */  nop   
/* 0044E048 91080000 */  lbu   $t0, ($t0)
/* 0044E04C 00000000 */  nop   
/* 0044E050 11000008 */  beqz  $t0, .L0044E074
/* 0044E054 00000000 */   nop   
/* 0044E058 8F998CC8 */  lw     $t9, %got(elf_flag)($gp)
/* 0044E05C 00000000 */  nop   
/* 0044E060 93390000 */  lbu   $t9, ($t9)
/* 0044E064 00000000 */  nop   
/* 0044E068 13200002 */  beqz  $t9, .L0044E074
/* 0044E06C 00000000 */   nop   
/* 0044E070 26940004 */  addiu $s4, $s4, 4
.L0044E074:
/* 0044E074 8EC4000C */  lw    $a0, 0xc($s6)
/* 0044E078 8F988D84 */  lw     $t8, %got(realsegments)($gp)
/* 0044E07C 00046080 */  sll   $t4, $a0, 2
/* 0044E080 01846023 */  subu  $t4, $t4, $a0
/* 0044E084 000C6080 */  sll   $t4, $t4, 2
/* 0044E088 01846023 */  subu  $t4, $t4, $a0
/* 0044E08C 000C6080 */  sll   $t4, $t4, 2
/* 0044E090 024C7021 */  addu  $t6, $s2, $t4
/* 0044E094 91C90008 */  lbu   $t1, 8($t6)
/* 0044E098 8F180000 */  lw    $t8, ($t8)
/* 0044E09C 2D2F0020 */  sltiu $t7, $t1, 0x20
/* 0044E0A0 000F5023 */  negu  $t2, $t7
/* 0044E0A4 030A6824 */  and   $t5, $t8, $t2
/* 0044E0A8 012D5804 */  sllv  $t3, $t5, $t1
/* 0044E0AC 05600044 */  bltz  $t3, .L0044E1C0
/* 0044E0B0 03A06825 */   move  $t5, $sp
/* 0044E0B4 8F888070 */  lw    $t0, %got(RO_10019E1D)($gp)
/* 0044E0B8 03A07025 */  move  $t6, $sp
/* 0044E0BC 25089E1D */  addiu $t0, %lo(RO_10019E1D) # addiu $t0, $t0, -0x61e3
/* 0044E0C0 250C0048 */  addiu $t4, $t0, 0x48
.L0044E0C4:
/* 0044E0C4 89010000 */  lwl   $at, ($t0)
/* 0044E0C8 99010003 */  lwr   $at, 3($t0)
/* 0044E0CC 2508000C */  addiu $t0, $t0, 0xc
/* 0044E0D0 A9C10000 */  swl   $at, ($t6)
/* 0044E0D4 B9C10003 */  swr   $at, 3($t6)
/* 0044E0D8 8901FFF8 */  lwl   $at, -8($t0)
/* 0044E0DC 9901FFFB */  lwr   $at, -5($t0)
/* 0044E0E0 25CE000C */  addiu $t6, $t6, 0xc
/* 0044E0E4 A9C1FFF8 */  swl   $at, -8($t6)
/* 0044E0E8 B9C1FFFB */  swr   $at, -5($t6)
/* 0044E0EC 8901FFFC */  lwl   $at, -4($t0)
/* 0044E0F0 9901FFFF */  lwr   $at, -1($t0)
/* 0044E0F4 00000000 */  nop   
/* 0044E0F8 A9C1FFFC */  swl   $at, -4($t6)
/* 0044E0FC 150CFFF1 */  bne   $t0, $t4, .L0044E0C4
/* 0044E100 B9C1FFFF */   swr   $at, -1($t6)
/* 0044E104 89010000 */  lwl   $at, ($t0)
/* 0044E108 99010003 */  lwr   $at, 3($t0)
/* 0044E10C 8F8F8070 */  lw    $t7, %got(RO_10019DCD)($gp)
/* 0044E110 A9C10000 */  swl   $at, ($t6)
/* 0044E114 B9C10003 */  swr   $at, 3($t6)
/* 0044E118 890C0004 */  lwl   $t4, 4($t0)
/* 0044E11C 990C0007 */  lwr   $t4, 7($t0)
/* 0044E120 25EF9DCD */  addiu $t7, %lo(RO_10019DCD) # addiu $t7, $t7, -0x6233
/* 0044E124 A9CC0004 */  swl   $t4, 4($t6)
/* 0044E128 25EA0048 */  addiu $t2, $t7, 0x48
/* 0044E12C B9CC0007 */  swr   $t4, 7($t6)
.L0044E130:
/* 0044E130 89E10000 */  lwl   $at, ($t7)
/* 0044E134 99E10003 */  lwr   $at, 3($t7)
/* 0044E138 25EF000C */  addiu $t7, $t7, 0xc
/* 0044E13C A9A10050 */  swl   $at, 0x50($t5)
/* 0044E140 B9A10053 */  swr   $at, 0x53($t5)
/* 0044E144 89E1FFF8 */  lwl   $at, -8($t7)
/* 0044E148 99E1FFFB */  lwr   $at, -5($t7)
/* 0044E14C 25AD000C */  addiu $t5, $t5, 0xc
/* 0044E150 A9A10048 */  swl   $at, 0x48($t5)
/* 0044E154 B9A1004B */  swr   $at, 0x4b($t5)
/* 0044E158 89E1FFFC */  lwl   $at, -4($t7)
/* 0044E15C 99E1FFFF */  lwr   $at, -1($t7)
/* 0044E160 00000000 */  nop   
/* 0044E164 A9A1004C */  swl   $at, 0x4c($t5)
/* 0044E168 15EAFFF1 */  bne   $t7, $t2, .L0044E130
/* 0044E16C B9A1004F */   swr   $at, 0x4f($t5)
/* 0044E170 89E10000 */  lwl   $at, ($t7)
/* 0044E174 99E10003 */  lwr   $at, 3($t7)
/* 0044E178 24090357 */  li    $t1, 855
/* 0044E17C A9A10050 */  swl   $at, 0x50($t5)
/* 0044E180 B9A10053 */  swr   $at, 0x53($t5)
/* 0044E184 89EA0004 */  lwl   $t2, 4($t7)
/* 0044E188 99EA0007 */  lwr   $t2, 7($t7)
/* 0044E18C 00000000 */  nop   
/* 0044E190 A9AA0054 */  swl   $t2, 0x54($t5)
/* 0044E194 B9AA0057 */  swr   $t2, 0x57($t5)
/* 0044E198 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0044E19C 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044E1A0 8FA60008 */  lw    $a2, 8($sp)
/* 0044E1A4 8FA50004 */  lw    $a1, 4($sp)
/* 0044E1A8 8FA40000 */  lw    $a0, ($sp)
/* 0044E1AC 0320F809 */  jalr  $t9
/* 0044E1B0 AFA900A0 */   sw    $t1, 0xa0($sp)
/* 0044E1B4 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044E1B8 8EC4000C */  lw    $a0, 0xc($s6)
/* 0044E1BC 00000000 */  nop   
.L0044E1C0:
/* 0044E1C0 8FAB0324 */  lw    $t3, 0x324($sp)
/* 0044E1C4 0004C880 */  sll   $t9, $a0, 2
/* 0044E1C8 01791021 */  addu  $v0, $t3, $t9
/* 0044E1CC 8C4C0000 */  lw    $t4, ($v0)
/* 0044E1D0 8FAE032C */  lw    $t6, 0x32c($sp)
/* 0044E1D4 25880008 */  addiu $t0, $t4, 8
/* 0044E1D8 AC480000 */  sw    $t0, ($v0)
/* 0044E1DC 8EC4000C */  lw    $a0, 0xc($s6)
/* 0044E1E0 8ECD0004 */  lw    $t5, 4($s6)
/* 0044E1E4 0004C080 */  sll   $t8, $a0, 2
/* 0044E1E8 01D85021 */  addu  $t2, $t6, $t8
/* 0044E1EC 8D4F0000 */  lw    $t7, ($t2)
/* 0044E1F0 8F838B94 */  lw     $v1, %got(opts)($gp)
/* 0044E1F4 01AF4821 */  addu  $t1, $t5, $t7
/* 0044E1F8 AEC90004 */  sw    $t1, 4($s6)
/* 0044E1FC 9063001C */  lbu   $v1, 0x1c($v1)
/* 0044E200 328B0003 */  andi  $t3, $s4, 3
/* 0044E204 11600004 */  beqz  $t3, .L0044E218
/* 0044E208 2C610002 */   sltiu $at, $v1, 2
/* 0044E20C 24190001 */  li    $t9, 1
/* 0044E210 10000002 */  b     .L0044E21C
/* 0044E214 A3B90123 */   sb    $t9, 0x123($sp)
.L0044E218:
/* 0044E218 A3A00123 */  sb    $zero, 0x123($sp)
.L0044E21C:
/* 0044E21C 14200013 */  bnez  $at, .L0044E26C
/* 0044E220 00000000 */   nop   
/* 0044E224 93AC0123 */  lbu   $t4, 0x123($sp)
/* 0044E228 00047080 */  sll   $t6, $a0, 2
/* 0044E22C 1580000F */  bnez  $t4, .L0044E26C
/* 0044E230 01C47023 */   subu  $t6, $t6, $a0
/* 0044E234 8F888AE0 */  lw     $t0, %got(memory)($gp)
/* 0044E238 000E7080 */  sll   $t6, $t6, 2
/* 0044E23C 8D080000 */  lw    $t0, ($t0)
/* 0044E240 01C47023 */  subu  $t6, $t6, $a0
/* 0044E244 000E7080 */  sll   $t6, $t6, 2
/* 0044E248 010EC021 */  addu  $t8, $t0, $t6
/* 0044E24C 8F0A0000 */  lw    $t2, ($t8)
/* 0044E250 00146882 */  srl   $t5, $s4, 2
/* 0044E254 000D7880 */  sll   $t7, $t5, 2
/* 0044E258 014F4821 */  addu  $t1, $t2, $t7
/* 0044E25C 8D310000 */  lw    $s1, ($t1)
/* 0044E260 93D00000 */  lbu   $s0, ($fp)
/* 0044E264 10000008 */  b     .L0044E288
/* 0044E268 00000000 */   nop   
.L0044E26C:
/* 0044E26C 8F998580 */  lw    $t9, %call16(get_byte_at_a_time)($gp)
/* 0044E270 02802825 */  move  $a1, $s4
/* 0044E274 0320F809 */  jalr  $t9
/* 0044E278 24060004 */   li    $a2, 4
/* 0044E27C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044E280 93D00000 */  lbu   $s0, ($fp)
/* 0044E284 00408825 */  move  $s1, $v0
.L0044E288:
/* 0044E288 1200000D */  beqz  $s0, .L0044E2C0
/* 0044E28C 00115E00 */   sll   $t3, $s1, 0x18
/* 0044E290 3C01FF00 */  lui   $at, 0xff00
/* 0044E294 0161C824 */  and   $t9, $t3, $at
/* 0044E298 00116602 */  srl   $t4, $s1, 0x18
/* 0044E29C 318800FF */  andi  $t0, $t4, 0xff
/* 0044E2A0 3C0100FF */  lui   $at, 0xff
/* 0044E2A4 0011C200 */  sll   $t8, $s1, 8
/* 0044E2A8 03016824 */  and   $t5, $t8, $at
/* 0044E2AC 03287021 */  addu  $t6, $t9, $t0
/* 0044E2B0 00117A02 */  srl   $t7, $s1, 8
/* 0044E2B4 31E9FF00 */  andi  $t1, $t7, 0xff00
/* 0044E2B8 01CD5021 */  addu  $t2, $t6, $t5
/* 0044E2BC 01498821 */  addu  $s1, $t2, $t1
.L0044E2C0:
/* 0044E2C0 8ED00008 */  lw    $s0, 8($s6)
/* 0044E2C4 00000000 */  nop   
/* 0044E2C8 16000005 */  bnez  $s0, .L0044E2E0
/* 0044E2CC 00000000 */   nop   
/* 0044E2D0 92CB0010 */  lbu   $t3, 0x10($s6)
/* 0044E2D4 24010006 */  li    $at, 6
/* 0044E2D8 11610309 */  beq   $t3, $at, .L0044EF00
/* 0044E2DC 8FAE00DC */   lw    $t6, 0xdc($sp)
.L0044E2E0:
/* 0044E2E0 16000044 */  bnez  $s0, .L0044E3F4
/* 0044E2E4 03A05025 */   move  $t2, $sp
/* 0044E2E8 8F8C8070 */  lw    $t4, %got(RO_10019D7D)($gp)
/* 0044E2EC 03A0C025 */  move  $t8, $sp
/* 0044E2F0 258C9D7D */  addiu $t4, %lo(RO_10019D7D) # addiu $t4, $t4, -0x6283
/* 0044E2F4 25880048 */  addiu $t0, $t4, 0x48
.L0044E2F8:
/* 0044E2F8 89810000 */  lwl   $at, ($t4)
/* 0044E2FC 99810003 */  lwr   $at, 3($t4)
/* 0044E300 258C000C */  addiu $t4, $t4, 0xc
/* 0044E304 AB010000 */  swl   $at, ($t8)
/* 0044E308 BB010003 */  swr   $at, 3($t8)
/* 0044E30C 8981FFF8 */  lwl   $at, -8($t4)
/* 0044E310 9981FFFB */  lwr   $at, -5($t4)
/* 0044E314 2718000C */  addiu $t8, $t8, 0xc
/* 0044E318 AB01FFF8 */  swl   $at, -8($t8)
/* 0044E31C BB01FFFB */  swr   $at, -5($t8)
/* 0044E320 8981FFFC */  lwl   $at, -4($t4)
/* 0044E324 9981FFFF */  lwr   $at, -1($t4)
/* 0044E328 00000000 */  nop   
/* 0044E32C AB01FFFC */  swl   $at, -4($t8)
/* 0044E330 1588FFF1 */  bne   $t4, $t0, .L0044E2F8
/* 0044E334 BB01FFFF */   swr   $at, -1($t8)
/* 0044E338 89810000 */  lwl   $at, ($t4)
/* 0044E33C 99810003 */  lwr   $at, 3($t4)
/* 0044E340 8F8E8070 */  lw    $t6, %got(RO_10019D2D)($gp)
/* 0044E344 AB010000 */  swl   $at, ($t8)
/* 0044E348 BB010003 */  swr   $at, 3($t8)
/* 0044E34C 89880004 */  lwl   $t0, 4($t4)
/* 0044E350 99880007 */  lwr   $t0, 7($t4)
/* 0044E354 25CE9D2D */  addiu $t6, %lo(RO_10019D2D) # addiu $t6, $t6, -0x62d3
/* 0044E358 AB080004 */  swl   $t0, 4($t8)
/* 0044E35C 25CF0048 */  addiu $t7, $t6, 0x48
/* 0044E360 BB080007 */  swr   $t0, 7($t8)
.L0044E364:
/* 0044E364 89C10000 */  lwl   $at, ($t6)
/* 0044E368 99C10003 */  lwr   $at, 3($t6)
/* 0044E36C 25CE000C */  addiu $t6, $t6, 0xc
/* 0044E370 A9410050 */  swl   $at, 0x50($t2)
/* 0044E374 B9410053 */  swr   $at, 0x53($t2)
/* 0044E378 89C1FFF8 */  lwl   $at, -8($t6)
/* 0044E37C 99C1FFFB */  lwr   $at, -5($t6)
/* 0044E380 254A000C */  addiu $t2, $t2, 0xc
/* 0044E384 A9410048 */  swl   $at, 0x48($t2)
/* 0044E388 B941004B */  swr   $at, 0x4b($t2)
/* 0044E38C 89C1FFFC */  lwl   $at, -4($t6)
/* 0044E390 99C1FFFF */  lwr   $at, -1($t6)
/* 0044E394 00000000 */  nop   
/* 0044E398 A941004C */  swl   $at, 0x4c($t2)
/* 0044E39C 15CFFFF1 */  bne   $t6, $t7, .L0044E364
/* 0044E3A0 B941004F */   swr   $at, 0x4f($t2)
/* 0044E3A4 89C10000 */  lwl   $at, ($t6)
/* 0044E3A8 99C10003 */  lwr   $at, 3($t6)
/* 0044E3AC 24090366 */  li    $t1, 870
/* 0044E3B0 A9410050 */  swl   $at, 0x50($t2)
/* 0044E3B4 B9410053 */  swr   $at, 0x53($t2)
/* 0044E3B8 89CF0004 */  lwl   $t7, 4($t6)
/* 0044E3BC 99CF0007 */  lwr   $t7, 7($t6)
/* 0044E3C0 00000000 */  nop   
/* 0044E3C4 A94F0054 */  swl   $t7, 0x54($t2)
/* 0044E3C8 B94F0057 */  swr   $t7, 0x57($t2)
/* 0044E3CC 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0044E3D0 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044E3D4 8FA60008 */  lw    $a2, 8($sp)
/* 0044E3D8 8FA50004 */  lw    $a1, 4($sp)
/* 0044E3DC 8FA40000 */  lw    $a0, ($sp)
/* 0044E3E0 0320F809 */  jalr  $t9
/* 0044E3E4 AFA900A0 */   sw    $t1, 0xa0($sp)
/* 0044E3E8 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044E3EC 8ED00008 */  lw    $s0, 8($s6)
/* 0044E3F0 00000000 */  nop   
.L0044E3F4:
/* 0044E3F4 920B0035 */  lbu   $t3, 0x35($s0)
/* 0044E3F8 00000000 */  nop   
/* 0044E3FC 156002C0 */  bnez  $t3, .L0044EF00
/* 0044E400 8FAE00DC */   lw    $t6, 0xdc($sp)
/* 0044E404 92C20010 */  lbu   $v0, 0x10($s6)
/* 0044E408 8E130010 */  lw    $s3, 0x10($s0)
/* 0044E40C 2459FFFF */  addiu $t9, $v0, -1
/* 0044E410 2F210019 */  sltiu $at, $t9, 0x19
/* 0044E414 10200231 */  beqz  $at, .L0044ECDC
/* 0044E418 00000000 */   nop   
/* 0044E41C 8F818070 */  lw    $at, %got(jtbl_10019EC0)($gp)
/* 0044E420 0019C880 */  sll   $t9, $t9, 2
/* 0044E424 00390821 */  addu  $at, $at, $t9
/* 0044E428 8C399EC0 */  lw    $t9, %lo(jtbl_10019EC0)($at)
/* 0044E42C 00000000 */  nop   
/* 0044E430 033CC821 */  addu  $t9, $t9, $gp
/* 0044E434 03200008 */  jr    $t9
/* 0044E438 00000000 */   nop   
.L0044E43C:
/* 0044E43C 32680003 */  andi  $t0, $s3, 3
/* 0044E440 1100002F */  beqz  $t0, .L0044E500
/* 0044E444 03A05025 */   move  $t2, $sp
/* 0044E448 8E0C0060 */  lw    $t4, 0x60($s0)
/* 0044E44C 8F818BB8 */  lw     $at, %got(currentline)($gp)
/* 0044E450 8F8D8070 */  lw    $t5, %got(RO_10019CDD)($gp)
/* 0044E454 AC2C0000 */  sw    $t4, ($at)
/* 0044E458 8E18005C */  lw    $t8, 0x5c($s0)
/* 0044E45C 8F818BBC */  lw     $at, %got(currentfile)($gp)
/* 0044E460 25AD9CDD */  addiu $t5, %lo(RO_10019CDD) # addiu $t5, $t5, -0x6323
/* 0044E464 25AE0048 */  addiu $t6, $t5, 0x48
/* 0044E468 AC380000 */  sw    $t8, ($at)
.L0044E46C:
/* 0044E46C 89A10000 */  lwl   $at, ($t5)
/* 0044E470 99A10003 */  lwr   $at, 3($t5)
/* 0044E474 25AD000C */  addiu $t5, $t5, 0xc
/* 0044E478 A9410000 */  swl   $at, ($t2)
/* 0044E47C B9410003 */  swr   $at, 3($t2)
/* 0044E480 89A1FFF8 */  lwl   $at, -8($t5)
/* 0044E484 99A1FFFB */  lwr   $at, -5($t5)
/* 0044E488 254A000C */  addiu $t2, $t2, 0xc
/* 0044E48C A941FFF8 */  swl   $at, -8($t2)
/* 0044E490 B941FFFB */  swr   $at, -5($t2)
/* 0044E494 89A1FFFC */  lwl   $at, -4($t5)
/* 0044E498 99A1FFFF */  lwr   $at, -1($t5)
/* 0044E49C 00000000 */  nop   
/* 0044E4A0 A941FFFC */  swl   $at, -4($t2)
/* 0044E4A4 15AEFFF1 */  bne   $t5, $t6, .L0044E46C
/* 0044E4A8 B941FFFF */   swr   $at, -1($t2)
/* 0044E4AC 89A10000 */  lwl   $at, ($t5)
/* 0044E4B0 99A10003 */  lwr   $at, 3($t5)
/* 0044E4B4 24190001 */  li    $t9, 1
/* 0044E4B8 A9410000 */  swl   $at, ($t2)
/* 0044E4BC B9410003 */  swr   $at, 3($t2)
/* 0044E4C0 89AE0004 */  lwl   $t6, 4($t5)
/* 0044E4C4 99AE0007 */  lwr   $t6, 7($t5)
/* 0044E4C8 00000000 */  nop   
/* 0044E4CC A94E0004 */  swl   $t6, 4($t2)
/* 0044E4D0 B94E0007 */  swr   $t6, 7($t2)
/* 0044E4D4 AFB90054 */  sw    $t9, 0x54($sp)
/* 0044E4D8 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0044E4DC 8E01000C */  lw    $at, 0xc($s0)
/* 0044E4E0 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044E4E4 8FA60008 */  lw    $a2, 8($sp)
/* 0044E4E8 8FA50004 */  lw    $a1, 4($sp)
/* 0044E4EC 8FA40000 */  lw    $a0, ($sp)
/* 0044E4F0 0320F809 */  jalr  $t9
/* 0044E4F4 AFA10050 */   sw    $at, 0x50($sp)
/* 0044E4F8 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044E4FC 00000000 */  nop   
.L0044E500:
/* 0044E500 00134082 */  srl   $t0, $s3, 2
/* 0044E504 00116180 */  sll   $t4, $s1, 6
/* 0044E508 05810005 */  bgez  $t4, .L0044E520
/* 0044E50C 01009825 */   move  $s3, $t0
/* 0044E510 3C01FC00 */  lui   $at, 0xfc00
/* 0044E514 0221C025 */  or    $t8, $s1, $at
/* 0044E518 10000005 */  b     .L0044E530
/* 0044E51C 01189821 */   addu  $s3, $t0, $t8
.L0044E520:
/* 0044E520 3C0103FF */  lui   $at, 0x3ff
/* 0044E524 3421FFFF */  ori   $at, $at, 0xffff
/* 0044E528 02217824 */  and   $t7, $s1, $at
/* 0044E52C 026F9821 */  addu  $s3, $s3, $t7
.L0044E530:
/* 0044E530 06600004 */  bltz  $s3, .L0044E544
/* 0044E534 3C010400 */   lui   $at, 0x400
/* 0044E538 0261082A */  slt   $at, $s3, $at
/* 0044E53C 1420003B */  bnez  $at, .L0044E62C
/* 0044E540 00000000 */   nop   
.L0044E544:
/* 0044E544 8ED00008 */  lw    $s0, 8($s6)
/* 0044E548 8F818BB8 */  lw     $at, %got(currentline)($gp)
/* 0044E54C 8E0E0060 */  lw    $t6, 0x60($s0)
/* 0044E550 8F8A8070 */  lw    $t2, %got(RO_10019C8D)($gp)
/* 0044E554 AC2E0000 */  sw    $t6, ($at)
/* 0044E558 8F818BBC */  lw     $at, %got(currentfile)($gp)
/* 0044E55C 8E0D005C */  lw    $t5, 0x5c($s0)
/* 0044E560 254A9C8D */  addiu $t2, %lo(RO_10019C8D) # addiu $t2, $t2, -0x6373
/* 0044E564 254B0048 */  addiu $t3, $t2, 0x48
/* 0044E568 03A0C825 */  move  $t9, $sp
/* 0044E56C AC2D0000 */  sw    $t5, ($at)
.L0044E570:
/* 0044E570 89410000 */  lwl   $at, ($t2)
/* 0044E574 99410003 */  lwr   $at, 3($t2)
/* 0044E578 254A000C */  addiu $t2, $t2, 0xc
/* 0044E57C AB210000 */  swl   $at, ($t9)
/* 0044E580 BB210003 */  swr   $at, 3($t9)
/* 0044E584 8941FFF8 */  lwl   $at, -8($t2)
/* 0044E588 9941FFFB */  lwr   $at, -5($t2)
/* 0044E58C 2739000C */  addiu $t9, $t9, 0xc
/* 0044E590 AB21FFF8 */  swl   $at, -8($t9)
/* 0044E594 BB21FFFB */  swr   $at, -5($t9)
/* 0044E598 8941FFFC */  lwl   $at, -4($t2)
/* 0044E59C 9941FFFF */  lwr   $at, -1($t2)
/* 0044E5A0 00000000 */  nop   
/* 0044E5A4 AB21FFFC */  swl   $at, -4($t9)
/* 0044E5A8 154BFFF1 */  bne   $t2, $t3, .L0044E570
/* 0044E5AC BB21FFFF */   swr   $at, -1($t9)
/* 0044E5B0 89410000 */  lwl   $at, ($t2)
/* 0044E5B4 99410003 */  lwr   $at, 3($t2)
/* 0044E5B8 24180001 */  li    $t8, 1
/* 0044E5BC AB210000 */  swl   $at, ($t9)
/* 0044E5C0 BB210003 */  swr   $at, 3($t9)
/* 0044E5C4 894B0004 */  lwl   $t3, 4($t2)
/* 0044E5C8 994B0007 */  lwr   $t3, 7($t2)
/* 0044E5CC 00000000 */  nop   
/* 0044E5D0 AB2B0004 */  swl   $t3, 4($t9)
/* 0044E5D4 BB2B0007 */  swr   $t3, 7($t9)
/* 0044E5D8 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0044E5DC 8E01000C */  lw    $at, 0xc($s0)
/* 0044E5E0 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044E5E4 8FA60008 */  lw    $a2, 8($sp)
/* 0044E5E8 8FA50004 */  lw    $a1, 4($sp)
/* 0044E5EC 8FA40000 */  lw    $a0, ($sp)
/* 0044E5F0 AFB80054 */  sw    $t8, 0x54($sp)
/* 0044E5F4 0320F809 */  jalr  $t9
/* 0044E5F8 AFA10050 */   sw    $at, 0x50($sp)
/* 0044E5FC 8EC4000C */  lw    $a0, 0xc($s6)
/* 0044E600 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044E604 00047080 */  sll   $t6, $a0, 2
/* 0044E608 8F8F8AE0 */  lw     $t7, %got(memory)($gp)
/* 0044E60C 01C47023 */  subu  $t6, $t6, $a0
/* 0044E610 000E7080 */  sll   $t6, $t6, 2
/* 0044E614 8DEF0000 */  lw    $t7, ($t7)
/* 0044E618 01C47023 */  subu  $t6, $t6, $a0
/* 0044E61C 000E7080 */  sll   $t6, $t6, 2
/* 0044E620 93D00000 */  lbu   $s0, ($fp)
/* 0044E624 100001BF */  b     .L0044ED24
/* 0044E628 01EE1021 */   addu  $v0, $t7, $t6
.L0044E62C:
/* 0044E62C 8EC4000C */  lw    $a0, 0xc($s6)
/* 0044E630 3C01FC00 */  lui   $at, 0xfc00
/* 0044E634 00045080 */  sll   $t2, $a0, 2
/* 0044E638 8F8B8AE0 */  lw     $t3, %got(memory)($gp)
/* 0044E63C 02216824 */  and   $t5, $s1, $at
/* 0044E640 01445023 */  subu  $t2, $t2, $a0
/* 0044E644 000A5080 */  sll   $t2, $t2, 2
/* 0044E648 3C0103FF */  lui   $at, 0x3ff
/* 0044E64C 8D6B0000 */  lw    $t3, ($t3)
/* 0044E650 3421FFFF */  ori   $at, $at, 0xffff
/* 0044E654 01445023 */  subu  $t2, $t2, $a0
/* 0044E658 000A5080 */  sll   $t2, $t2, 2
/* 0044E65C 02614824 */  and   $t1, $s3, $at
/* 0044E660 93D00000 */  lbu   $s0, ($fp)
/* 0044E664 01A98821 */  addu  $s1, $t5, $t1
/* 0044E668 100001AE */  b     .L0044ED24
/* 0044E66C 016A1021 */   addu  $v0, $t3, $t2
.L0044E670:
/* 0044E670 92190037 */  lbu   $t9, 0x37($s0)
/* 0044E674 322CFFFF */  andi  $t4, $s1, 0xffff
/* 0044E678 13200004 */  beqz  $t9, .L0044E68C
/* 0044E67C 39988000 */   xori  $t8, $t4, 0x8000
/* 0044E680 8FA80128 */  lw    $t0, 0x128($sp)
/* 0044E684 00000000 */  nop   
/* 0044E688 02689823 */  subu  $s3, $s3, $t0
.L0044E68C:
/* 0044E68C 02789821 */  addu  $s3, $s3, $t8
/* 0044E690 24018000 */  li    $at, -32768
/* 0044E694 02619821 */  addu  $s3, $s3, $at
/* 0044E698 2A618000 */  slti  $at, $s3, -0x8000
/* 0044E69C 14200005 */  bnez  $at, .L0044E6B4
/* 0044E6A0 03A05025 */   move  $t2, $sp
/* 0044E6A4 34018000 */  li    $at, 32768
/* 0044E6A8 0261082A */  slt   $at, $s3, $at
/* 0044E6AC 1420002F */  bnez  $at, .L0044E76C
/* 0044E6B0 00000000 */   nop   
.L0044E6B4:
/* 0044E6B4 8E0F0060 */  lw    $t7, 0x60($s0)
/* 0044E6B8 8F818BB8 */  lw     $at, %got(currentline)($gp)
/* 0044E6BC 8F8D8070 */  lw    $t5, %got(RO_10019C3D)($gp)
/* 0044E6C0 AC2F0000 */  sw    $t7, ($at)
/* 0044E6C4 8E0E005C */  lw    $t6, 0x5c($s0)
/* 0044E6C8 8F818BBC */  lw     $at, %got(currentfile)($gp)
/* 0044E6CC 25AD9C3D */  addiu $t5, %lo(RO_10019C3D) # addiu $t5, $t5, -0x63c3
/* 0044E6D0 25AB0048 */  addiu $t3, $t5, 0x48
/* 0044E6D4 AC2E0000 */  sw    $t6, ($at)
.L0044E6D8:
/* 0044E6D8 89A10000 */  lwl   $at, ($t5)
/* 0044E6DC 99A10003 */  lwr   $at, 3($t5)
/* 0044E6E0 25AD000C */  addiu $t5, $t5, 0xc
/* 0044E6E4 A9410000 */  swl   $at, ($t2)
/* 0044E6E8 B9410003 */  swr   $at, 3($t2)
/* 0044E6EC 89A1FFF8 */  lwl   $at, -8($t5)
/* 0044E6F0 99A1FFFB */  lwr   $at, -5($t5)
/* 0044E6F4 254A000C */  addiu $t2, $t2, 0xc
/* 0044E6F8 A941FFF8 */  swl   $at, -8($t2)
/* 0044E6FC B941FFFB */  swr   $at, -5($t2)
/* 0044E700 89A1FFFC */  lwl   $at, -4($t5)
/* 0044E704 99A1FFFF */  lwr   $at, -1($t5)
/* 0044E708 00000000 */  nop   
/* 0044E70C A941FFFC */  swl   $at, -4($t2)
/* 0044E710 15ABFFF1 */  bne   $t5, $t3, .L0044E6D8
/* 0044E714 B941FFFF */   swr   $at, -1($t2)
/* 0044E718 89A10000 */  lwl   $at, ($t5)
/* 0044E71C 99A10003 */  lwr   $at, 3($t5)
/* 0044E720 240C0001 */  li    $t4, 1
/* 0044E724 A9410000 */  swl   $at, ($t2)
/* 0044E728 B9410003 */  swr   $at, 3($t2)
/* 0044E72C 89AB0004 */  lwl   $t3, 4($t5)
/* 0044E730 99AB0007 */  lwr   $t3, 7($t5)
/* 0044E734 00000000 */  nop   
/* 0044E738 A94B0004 */  swl   $t3, 4($t2)
/* 0044E73C B94B0007 */  swr   $t3, 7($t2)
/* 0044E740 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0044E744 8E01000C */  lw    $at, 0xc($s0)
/* 0044E748 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044E74C 8FA60008 */  lw    $a2, 8($sp)
/* 0044E750 8FA50004 */  lw    $a1, 4($sp)
/* 0044E754 8FA40000 */  lw    $a0, ($sp)
/* 0044E758 AFAC0054 */  sw    $t4, 0x54($sp)
/* 0044E75C 0320F809 */  jalr  $t9
/* 0044E760 AFA10050 */   sw    $at, 0x50($sp)
/* 0044E764 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044E768 00000000 */  nop   
.L0044E76C:
/* 0044E76C 8EC4000C */  lw    $a0, 0xc($s6)
/* 0044E770 8F8E8AE0 */  lw     $t6, %got(memory)($gp)
/* 0044E774 00044880 */  sll   $t1, $a0, 2
/* 0044E778 01244823 */  subu  $t1, $t1, $a0
/* 0044E77C 00094880 */  sll   $t1, $t1, 2
/* 0044E780 8DCE0000 */  lw    $t6, ($t6)
/* 0044E784 01244823 */  subu  $t1, $t1, $a0
/* 0044E788 00094880 */  sll   $t1, $t1, 2
/* 0044E78C 0235C024 */  and   $t8, $s1, $s5
/* 0044E790 326FFFFF */  andi  $t7, $s3, 0xffff
/* 0044E794 93D00000 */  lbu   $s0, ($fp)
/* 0044E798 030F8821 */  addu  $s1, $t8, $t7
/* 0044E79C 10000161 */  b     .L0044ED24
/* 0044E7A0 01C91021 */   addu  $v0, $t6, $t1
.L0044E7A4:
/* 0044E7A4 8E0D0030 */  lw    $t5, 0x30($s0)
/* 0044E7A8 8FAB032C */  lw    $t3, 0x32c($sp)
/* 0044E7AC 000D5080 */  sll   $t2, $t5, 2
/* 0044E7B0 016AC821 */  addu  $t9, $t3, $t2
/* 0044E7B4 8F280000 */  lw    $t0, ($t9)
/* 0044E7B8 8FAC0128 */  lw    $t4, 0x128($sp)
/* 0044E7BC 322FFFFF */  andi  $t7, $s1, 0xffff
/* 0044E7C0 010CC023 */  subu  $t8, $t0, $t4
/* 0044E7C4 030F9821 */  addu  $s3, $t8, $t7
/* 0044E7C8 2A618000 */  slti  $at, $s3, -0x8000
/* 0044E7CC 14200005 */  bnez  $at, .L0044E7E4
/* 0044E7D0 03A0C825 */   move  $t9, $sp
/* 0044E7D4 34018000 */  li    $at, 32768
/* 0044E7D8 0261082A */  slt   $at, $s3, $at
/* 0044E7DC 1420002F */  bnez  $at, .L0044E89C
/* 0044E7E0 00000000 */   nop   
.L0044E7E4:
/* 0044E7E4 8E0E0060 */  lw    $t6, 0x60($s0)
/* 0044E7E8 8F818BB8 */  lw     $at, %got(currentline)($gp)
/* 0044E7EC 8F8D8070 */  lw    $t5, %got(RO_10019BED)($gp)
/* 0044E7F0 AC2E0000 */  sw    $t6, ($at)
/* 0044E7F4 8E09005C */  lw    $t1, 0x5c($s0)
/* 0044E7F8 8F818BBC */  lw     $at, %got(currentfile)($gp)
/* 0044E7FC 25AD9BED */  addiu $t5, %lo(RO_10019BED) # addiu $t5, $t5, -0x6413
/* 0044E800 25AA0048 */  addiu $t2, $t5, 0x48
/* 0044E804 AC290000 */  sw    $t1, ($at)
.L0044E808:
/* 0044E808 89A10000 */  lwl   $at, ($t5)
/* 0044E80C 99A10003 */  lwr   $at, 3($t5)
/* 0044E810 25AD000C */  addiu $t5, $t5, 0xc
/* 0044E814 AB210000 */  swl   $at, ($t9)
/* 0044E818 BB210003 */  swr   $at, 3($t9)
/* 0044E81C 89A1FFF8 */  lwl   $at, -8($t5)
/* 0044E820 99A1FFFB */  lwr   $at, -5($t5)
/* 0044E824 2739000C */  addiu $t9, $t9, 0xc
/* 0044E828 AB21FFF8 */  swl   $at, -8($t9)
/* 0044E82C BB21FFFB */  swr   $at, -5($t9)
/* 0044E830 89A1FFFC */  lwl   $at, -4($t5)
/* 0044E834 99A1FFFF */  lwr   $at, -1($t5)
/* 0044E838 00000000 */  nop   
/* 0044E83C AB21FFFC */  swl   $at, -4($t9)
/* 0044E840 15AAFFF1 */  bne   $t5, $t2, .L0044E808
/* 0044E844 BB21FFFF */   swr   $at, -1($t9)
/* 0044E848 89A10000 */  lwl   $at, ($t5)
/* 0044E84C 99A10003 */  lwr   $at, 3($t5)
/* 0044E850 8F888C68 */  lw     $t0, %got(emptystring)($gp)
/* 0044E854 AB210000 */  swl   $at, ($t9)
/* 0044E858 BB210003 */  swr   $at, 3($t9)
/* 0044E85C 89AA0004 */  lwl   $t2, 4($t5)
/* 0044E860 99AA0007 */  lwr   $t2, 7($t5)
/* 0044E864 240C0001 */  li    $t4, 1
/* 0044E868 AB2A0004 */  swl   $t2, 4($t9)
/* 0044E86C BB2A0007 */  swr   $t2, 7($t9)
/* 0044E870 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0044E874 8D080000 */  lw    $t0, ($t0)
/* 0044E878 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044E87C 8FA60008 */  lw    $a2, 8($sp)
/* 0044E880 8FA50004 */  lw    $a1, 4($sp)
/* 0044E884 8FA40000 */  lw    $a0, ($sp)
/* 0044E888 AFAC0054 */  sw    $t4, 0x54($sp)
/* 0044E88C 0320F809 */  jalr  $t9
/* 0044E890 AFA80050 */   sw    $t0, 0x50($sp)
/* 0044E894 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044E898 00000000 */  nop   
.L0044E89C:
/* 0044E89C 8EC4000C */  lw    $a0, 0xc($s6)
/* 0044E8A0 8F8E8AE0 */  lw     $t6, %got(memory)($gp)
/* 0044E8A4 00044880 */  sll   $t1, $a0, 2
/* 0044E8A8 01244823 */  subu  $t1, $t1, $a0
/* 0044E8AC 00094880 */  sll   $t1, $t1, 2
/* 0044E8B0 8DCE0000 */  lw    $t6, ($t6)
/* 0044E8B4 01244823 */  subu  $t1, $t1, $a0
/* 0044E8B8 00094880 */  sll   $t1, $t1, 2
/* 0044E8BC 0235C024 */  and   $t8, $s1, $s5
/* 0044E8C0 326FFFFF */  andi  $t7, $s3, 0xffff
/* 0044E8C4 93D00000 */  lbu   $s0, ($fp)
/* 0044E8C8 030F8821 */  addu  $s1, $t8, $t7
/* 0044E8CC 10000115 */  b     .L0044ED24
/* 0044E8D0 01C91021 */   addu  $v0, $t6, $t1
.L0044E8D4:
/* 0044E8D4 24010002 */  li    $at, 2
/* 0044E8D8 10410008 */  beq   $v0, $at, .L0044E8FC
/* 0044E8DC 00000000 */   nop   
/* 0044E8E0 8F9985F4 */  lw    $t9, %call16(islocalsym)($gp)
/* 0044E8E4 02002025 */  move  $a0, $s0
/* 0044E8E8 0320F809 */  jalr  $t9
/* 0044E8EC 00000000 */   nop   
/* 0044E8F0 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044E8F4 10400091 */  beqz  $v0, .L0044EB3C
/* 0044E8F8 00000000 */   nop   
.L0044E8FC:
/* 0044E8FC 8F8B8AF4 */  lw     $t3, %got(rld_list)($gp)
/* 0044E900 8F8A8AE0 */  lw     $t2, %got(memory)($gp)
/* 0044E904 8D6B0000 */  lw    $t3, ($t3)
/* 0044E908 8D4A0000 */  lw    $t2, ($t2)
/* 0044E90C 01778021 */  addu  $s0, $t3, $s7
/* 0044E910 8E0D0024 */  lw    $t5, 0x24($s0)
/* 0044E914 8F888D84 */  lw     $t0, %got(realsegments)($gp)
/* 0044E918 000DC880 */  sll   $t9, $t5, 2
/* 0044E91C 032DC823 */  subu  $t9, $t9, $t5
/* 0044E920 0019C880 */  sll   $t9, $t9, 2
/* 0044E924 032DC823 */  subu  $t9, $t9, $t5
/* 0044E928 0019C880 */  sll   $t9, $t9, 2
/* 0044E92C 01591821 */  addu  $v1, $t2, $t9
/* 0044E930 906C0008 */  lbu   $t4, 8($v1)
/* 0044E934 8D080000 */  lw    $t0, ($t0)
/* 0044E938 2D980020 */  sltiu $t8, $t4, 0x20
/* 0044E93C 00187823 */  negu  $t7, $t8
/* 0044E940 010F7024 */  and   $t6, $t0, $t7
/* 0044E944 018E4804 */  sllv  $t1, $t6, $t4
/* 0044E948 0520004C */  bltz  $t1, .L0044EA7C
/* 0044E94C 26100018 */   addiu $s0, $s0, 0x18
/* 0044E950 8F8B8070 */  lw    $t3, %got(RO_10019B9D)($gp)
/* 0044E954 03A0C825 */  move  $t9, $sp
/* 0044E958 256B9B9D */  addiu $t3, %lo(RO_10019B9D) # addiu $t3, $t3, -0x6463
/* 0044E95C 256A0048 */  addiu $t2, $t3, 0x48
.L0044E960:
/* 0044E960 89610000 */  lwl   $at, ($t3)
/* 0044E964 99610003 */  lwr   $at, 3($t3)
/* 0044E968 256B000C */  addiu $t3, $t3, 0xc
/* 0044E96C AB210000 */  swl   $at, ($t9)
/* 0044E970 BB210003 */  swr   $at, 3($t9)
/* 0044E974 8961FFF8 */  lwl   $at, -8($t3)
/* 0044E978 9961FFFB */  lwr   $at, -5($t3)
/* 0044E97C 2739000C */  addiu $t9, $t9, 0xc
/* 0044E980 AB21FFF8 */  swl   $at, -8($t9)
/* 0044E984 BB21FFFB */  swr   $at, -5($t9)
/* 0044E988 8961FFFC */  lwl   $at, -4($t3)
/* 0044E98C 9961FFFF */  lwr   $at, -1($t3)
/* 0044E990 00000000 */  nop   
/* 0044E994 AB21FFFC */  swl   $at, -4($t9)
/* 0044E998 156AFFF1 */  bne   $t3, $t2, .L0044E960
/* 0044E99C BB21FFFF */   swr   $at, -1($t9)
/* 0044E9A0 89610000 */  lwl   $at, ($t3)
/* 0044E9A4 99610003 */  lwr   $at, 3($t3)
/* 0044E9A8 8F988070 */  lw    $t8, %got(RO_10019B4D)($gp)
/* 0044E9AC AB210000 */  swl   $at, ($t9)
/* 0044E9B0 BB210003 */  swr   $at, 3($t9)
/* 0044E9B4 896A0004 */  lwl   $t2, 4($t3)
/* 0044E9B8 996A0007 */  lwr   $t2, 7($t3)
/* 0044E9BC 27189B4D */  addiu $t8, %lo(RO_10019B4D) # addiu $t8, $t8, -0x64b3
/* 0044E9C0 AB2A0004 */  swl   $t2, 4($t9)
/* 0044E9C4 270F0048 */  addiu $t7, $t8, 0x48
/* 0044E9C8 03A07025 */  move  $t6, $sp
/* 0044E9CC BB2A0007 */  swr   $t2, 7($t9)
.L0044E9D0:
/* 0044E9D0 8B010000 */  lwl   $at, ($t8)
/* 0044E9D4 9B010003 */  lwr   $at, 3($t8)
/* 0044E9D8 2718000C */  addiu $t8, $t8, 0xc
/* 0044E9DC A9C10050 */  swl   $at, 0x50($t6)
/* 0044E9E0 B9C10053 */  swr   $at, 0x53($t6)
/* 0044E9E4 8B01FFF8 */  lwl   $at, -8($t8)
/* 0044E9E8 9B01FFFB */  lwr   $at, -5($t8)
/* 0044E9EC 25CE000C */  addiu $t6, $t6, 0xc
/* 0044E9F0 A9C10048 */  swl   $at, 0x48($t6)
/* 0044E9F4 B9C1004B */  swr   $at, 0x4b($t6)
/* 0044E9F8 8B01FFFC */  lwl   $at, -4($t8)
/* 0044E9FC 9B01FFFF */  lwr   $at, -1($t8)
/* 0044EA00 00000000 */  nop   
/* 0044EA04 A9C1004C */  swl   $at, 0x4c($t6)
/* 0044EA08 170FFFF1 */  bne   $t8, $t7, .L0044E9D0
/* 0044EA0C B9C1004F */   swr   $at, 0x4f($t6)
/* 0044EA10 8B010000 */  lwl   $at, ($t8)
/* 0044EA14 9B010003 */  lwr   $at, 3($t8)
/* 0044EA18 240C03A2 */  li    $t4, 930
/* 0044EA1C A9C10050 */  swl   $at, 0x50($t6)
/* 0044EA20 B9C10053 */  swr   $at, 0x53($t6)
/* 0044EA24 8B0F0004 */  lwl   $t7, 4($t8)
/* 0044EA28 9B0F0007 */  lwr   $t7, 7($t8)
/* 0044EA2C 00000000 */  nop   
/* 0044EA30 A9CF0054 */  swl   $t7, 0x54($t6)
/* 0044EA34 B9CF0057 */  swr   $t7, 0x57($t6)
/* 0044EA38 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0044EA3C 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044EA40 8FA60008 */  lw    $a2, 8($sp)
/* 0044EA44 8FA50004 */  lw    $a1, 4($sp)
/* 0044EA48 8FA40000 */  lw    $a0, ($sp)
/* 0044EA4C 0320F809 */  jalr  $t9
/* 0044EA50 AFAC00A0 */   sw    $t4, 0xa0($sp)
/* 0044EA54 8E0D000C */  lw    $t5, 0xc($s0)
/* 0044EA58 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044EA5C 000D5080 */  sll   $t2, $t5, 2
/* 0044EA60 8F898AE0 */  lw     $t1, %got(memory)($gp)
/* 0044EA64 014D5023 */  subu  $t2, $t2, $t5
/* 0044EA68 000A5080 */  sll   $t2, $t2, 2
/* 0044EA6C 8D290000 */  lw    $t1, ($t1)
/* 0044EA70 014D5023 */  subu  $t2, $t2, $t5
/* 0044EA74 000A5080 */  sll   $t2, $t2, 2
/* 0044EA78 012A1821 */  addu  $v1, $t1, $t2
.L0044EA7C:
/* 0044EA7C 8E190004 */  lw    $t9, 4($s0)
/* 0044EA80 8C6B0000 */  lw    $t3, ($v1)
/* 0044EA84 00194082 */  srl   $t0, $t9, 2
/* 0044EA88 00087880 */  sll   $t7, $t0, 2
/* 0044EA8C 93CE0000 */  lbu   $t6, ($fp)
/* 0044EA90 016FC021 */  addu  $t8, $t3, $t7
/* 0044EA94 8F020000 */  lw    $v0, ($t8)
/* 0044EA98 11C00013 */  beqz  $t6, .L0044EAE8
/* 0044EA9C 304C8000 */   andi  $t4, $v0, 0x8000
/* 0044EAA0 90640008 */  lbu   $a0, 8($v1)
/* 0044EAA4 2401000F */  li    $at, 15
/* 0044EAA8 10800002 */  beqz  $a0, .L0044EAB4
/* 0044EAAC 00026600 */   sll   $t4, $v0, 0x18
/* 0044EAB0 1481000C */  bne   $a0, $at, .L0044EAE4
.L0044EAB4:
/* 0044EAB4 3C01FF00 */   lui   $at, 0xff00
/* 0044EAB8 01816824 */  and   $t5, $t4, $at
/* 0044EABC 00024E02 */  srl   $t1, $v0, 0x18
/* 0044EAC0 312A00FF */  andi  $t2, $t1, 0xff
/* 0044EAC4 3C0100FF */  lui   $at, 0xff
/* 0044EAC8 00024200 */  sll   $t0, $v0, 8
/* 0044EACC 01015824 */  and   $t3, $t0, $at
/* 0044EAD0 01AAC821 */  addu  $t9, $t5, $t2
/* 0044EAD4 0002C202 */  srl   $t8, $v0, 8
/* 0044EAD8 330EFF00 */  andi  $t6, $t8, 0xff00
/* 0044EADC 032B7821 */  addu  $t7, $t9, $t3
/* 0044EAE0 01EE1021 */  addu  $v0, $t7, $t6
.L0044EAE4:
/* 0044EAE4 304C8000 */  andi  $t4, $v0, 0x8000
.L0044EAE8:
/* 0044EAE8 11800007 */  beqz  $t4, .L0044EB08
/* 0044EAEC 0011CC00 */   sll   $t9, $s1, 0x10
/* 0044EAF0 304DFFFF */  andi  $t5, $v0, 0xffff
/* 0044EAF4 02AD5025 */  or    $t2, $s5, $t5
/* 0044EAF8 00114C00 */  sll   $t1, $s1, 0x10
/* 0044EAFC 012A4021 */  addu  $t0, $t1, $t2
/* 0044EB00 10000004 */  b     .L0044EB14
/* 0044EB04 01139821 */   addu  $s3, $t0, $s3
.L0044EB08:
/* 0044EB08 304BFFFF */  andi  $t3, $v0, 0xffff
/* 0044EB0C 032BC021 */  addu  $t8, $t9, $t3
/* 0044EB10 03139821 */  addu  $s3, $t8, $s3
.L0044EB14:
/* 0044EB14 326F8000 */  andi  $t7, $s3, 0x8000
/* 0044EB18 11E00004 */  beqz  $t7, .L0044EB2C
/* 0044EB1C 02356824 */   and   $t5, $s1, $s5
/* 0044EB20 00137402 */  srl   $t6, $s3, 0x10
/* 0044EB24 10000003 */  b     .L0044EB34
/* 0044EB28 25D30001 */   addiu $s3, $t6, 1
.L0044EB2C:
/* 0044EB2C 00136402 */  srl   $t4, $s3, 0x10
/* 0044EB30 01809825 */  move  $s3, $t4
.L0044EB34:
/* 0044EB34 3269FFFF */  andi  $t1, $s3, 0xffff
/* 0044EB38 01A98821 */  addu  $s1, $t5, $t1
.L0044EB3C:
/* 0044EB3C 8EC4000C */  lw    $a0, 0xc($s6)
/* 0044EB40 8F8A8AE0 */  lw     $t2, %got(memory)($gp)
/* 0044EB44 00044080 */  sll   $t0, $a0, 2
/* 0044EB48 01044023 */  subu  $t0, $t0, $a0
/* 0044EB4C 00084080 */  sll   $t0, $t0, 2
/* 0044EB50 8D4A0000 */  lw    $t2, ($t2)
/* 0044EB54 01044023 */  subu  $t0, $t0, $a0
/* 0044EB58 00084080 */  sll   $t0, $t0, 2
/* 0044EB5C 93D00000 */  lbu   $s0, ($fp)
/* 0044EB60 10000070 */  b     .L0044ED24
/* 0044EB64 01481021 */   addu  $v0, $t2, $t0
.L0044EB68:
/* 0044EB68 8EC4000C */  lw    $a0, 0xc($s6)
/* 0044EB6C 8F998AE0 */  lw     $t9, %got(memory)($gp)
/* 0044EB70 00045880 */  sll   $t3, $a0, 2
/* 0044EB74 01645823 */  subu  $t3, $t3, $a0
/* 0044EB78 000B5880 */  sll   $t3, $t3, 2
/* 0044EB7C 8F390000 */  lw    $t9, ($t9)
/* 0044EB80 01645823 */  subu  $t3, $t3, $a0
/* 0044EB84 000B5880 */  sll   $t3, $t3, 2
/* 0044EB88 93D00000 */  lbu   $s0, ($fp)
/* 0044EB8C 32388000 */  andi  $t8, $s1, 0x8000
/* 0044EB90 13000008 */  beqz  $t8, .L0044EBB4
/* 0044EB94 032B1021 */   addu  $v0, $t9, $t3
/* 0044EB98 02207825 */  move  $t7, $s1
/* 0044EB9C 01F57025 */  or    $t6, $t7, $s5
/* 0044EBA0 026E9821 */  addu  $s3, $s3, $t6
/* 0044EBA4 3269FFFF */  andi  $t1, $s3, 0xffff
/* 0044EBA8 02356824 */  and   $t5, $s1, $s5
/* 0044EBAC 1000005D */  b     .L0044ED24
/* 0044EBB0 01A98821 */   addu  $s1, $t5, $t1
.L0044EBB4:
/* 0044EBB4 322C7FFF */  andi  $t4, $s1, 0x7fff
/* 0044EBB8 026C9821 */  addu  $s3, $s3, $t4
/* 0044EBBC 02356824 */  and   $t5, $s1, $s5
/* 0044EBC0 3269FFFF */  andi  $t1, $s3, 0xffff
/* 0044EBC4 10000057 */  b     .L0044ED24
/* 0044EBC8 01A98821 */   addu  $s1, $t5, $t1
.L0044EBCC:
/* 0044EBCC 8EC4000C */  lw    $a0, 0xc($s6)
/* 0044EBD0 8F8A8AE0 */  lw     $t2, %got(memory)($gp)
/* 0044EBD4 00044080 */  sll   $t0, $a0, 2
/* 0044EBD8 01044023 */  subu  $t0, $t0, $a0
/* 0044EBDC 00084080 */  sll   $t0, $t0, 2
/* 0044EBE0 8D4A0000 */  lw    $t2, ($t2)
/* 0044EBE4 01044023 */  subu  $t0, $t0, $a0
/* 0044EBE8 00084080 */  sll   $t0, $t0, 2
/* 0044EBEC 93D00000 */  lbu   $s0, ($fp)
/* 0044EBF0 1000004C */  b     .L0044ED24
/* 0044EBF4 01481021 */   addu  $v0, $t2, $t0
.L0044EBF8:
/* 0044EBF8 8EC4000C */  lw    $a0, 0xc($s6)
/* 0044EBFC 8F998AE0 */  lw     $t9, %got(memory)($gp)
/* 0044EC00 00045880 */  sll   $t3, $a0, 2
/* 0044EC04 8F988B28 */  lw     $t8, %got(sixtyfour_bit)($gp)
/* 0044EC08 01645823 */  subu  $t3, $t3, $a0
/* 0044EC0C 000B5880 */  sll   $t3, $t3, 2
/* 0044EC10 8F390000 */  lw    $t9, ($t9)
/* 0044EC14 93180000 */  lbu   $t8, ($t8)
/* 0044EC18 01645823 */  subu  $t3, $t3, $a0
/* 0044EC1C 000B5880 */  sll   $t3, $t3, 2
/* 0044EC20 93D00000 */  lbu   $s0, ($fp)
/* 0044EC24 1300003F */  beqz  $t8, .L0044ED24
/* 0044EC28 032B1021 */   addu  $v0, $t9, $t3
/* 0044EC2C 8F8F8CC8 */  lw     $t7, %got(elf_flag)($gp)
/* 0044EC30 00000000 */  nop   
/* 0044EC34 91EF0000 */  lbu   $t7, ($t7)
/* 0044EC38 00000000 */  nop   
/* 0044EC3C 11E00039 */  beqz  $t7, .L0044ED24
/* 0044EC40 00000000 */   nop   
/* 0044EC44 10000037 */  b     .L0044ED24
/* 0044EC48 02718821 */   addu  $s1, $s3, $s1
.L0044EC4C:
/* 0044EC4C 8EC4000C */  lw    $a0, 0xc($s6)
/* 0044EC50 8F8E8AE0 */  lw     $t6, %got(memory)($gp)
/* 0044EC54 00046080 */  sll   $t4, $a0, 2
/* 0044EC58 01846023 */  subu  $t4, $t4, $a0
/* 0044EC5C 000C6080 */  sll   $t4, $t4, 2
/* 0044EC60 8DCE0000 */  lw    $t6, ($t6)
/* 0044EC64 01846023 */  subu  $t4, $t4, $a0
/* 0044EC68 000C6080 */  sll   $t4, $t4, 2
/* 0044EC6C 93D00000 */  lbu   $s0, ($fp)
/* 0044EC70 02718821 */  addu  $s1, $s3, $s1
/* 0044EC74 1000002B */  b     .L0044ED24
/* 0044EC78 01CC1021 */   addu  $v0, $t6, $t4
.L0044EC7C:
/* 0044EC7C 8EC4000C */  lw    $a0, 0xc($s6)
/* 0044EC80 8F898AE0 */  lw     $t1, %got(memory)($gp)
/* 0044EC84 00045080 */  sll   $t2, $a0, 2
/* 0044EC88 01445023 */  subu  $t2, $t2, $a0
/* 0044EC8C 000A5080 */  sll   $t2, $t2, 2
/* 0044EC90 8D290000 */  lw    $t1, ($t1)
/* 0044EC94 01445023 */  subu  $t2, $t2, $a0
/* 0044EC98 326DFFFF */  andi  $t5, $s3, 0xffff
/* 0044EC9C 000A5080 */  sll   $t2, $t2, 2
/* 0044ECA0 93D00000 */  lbu   $s0, ($fp)
/* 0044ECA4 01B18821 */  addu  $s1, $t5, $s1
/* 0044ECA8 1000001E */  b     .L0044ED24
/* 0044ECAC 012A1021 */   addu  $v0, $t1, $t2
.L0044ECB0:
/* 0044ECB0 8EC4000C */  lw    $a0, 0xc($s6)
/* 0044ECB4 8F888AE0 */  lw     $t0, %got(memory)($gp)
/* 0044ECB8 0004C880 */  sll   $t9, $a0, 2
/* 0044ECBC 0324C823 */  subu  $t9, $t9, $a0
/* 0044ECC0 0019C880 */  sll   $t9, $t9, 2
/* 0044ECC4 8D080000 */  lw    $t0, ($t0)
/* 0044ECC8 0324C823 */  subu  $t9, $t9, $a0
/* 0044ECCC 0019C880 */  sll   $t9, $t9, 2
/* 0044ECD0 93D00000 */  lbu   $s0, ($fp)
/* 0044ECD4 10000013 */  b     .L0044ED24
/* 0044ECD8 01191021 */   addu  $v0, $t0, $t9
.L0044ECDC:
/* 0044ECDC 8F928AE0 */  lw     $s2, %got(memory)($gp)
/* 0044ECE0 8F868070 */  lw    $a2, %got(RO_10019B45)($gp)
/* 0044ECE4 8F99868C */  lw    $t9, %call16(caseerror)($gp)
/* 0044ECE8 93D00000 */  lbu   $s0, ($fp)
/* 0044ECEC 8E520000 */  lw    $s2, ($s2)
/* 0044ECF0 24040001 */  li    $a0, 1
/* 0044ECF4 2405036D */  li    $a1, 877
/* 0044ECF8 24070008 */  li    $a3, 8
/* 0044ECFC 0320F809 */  jalr  $t9
/* 0044ED00 24C69B45 */   addiu $a2, %lo(RO_10019B45) # addiu $a2, $a2, -0x64bb
/* 0044ED04 8EC4000C */  lw    $a0, 0xc($s6)
/* 0044ED08 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044ED0C 00045880 */  sll   $t3, $a0, 2
/* 0044ED10 01645823 */  subu  $t3, $t3, $a0
/* 0044ED14 000B5880 */  sll   $t3, $t3, 2
/* 0044ED18 01645823 */  subu  $t3, $t3, $a0
/* 0044ED1C 000B5880 */  sll   $t3, $t3, 2
/* 0044ED20 024B1021 */  addu  $v0, $s2, $t3
.L0044ED24:
/* 0044ED24 1200000D */  beqz  $s0, .L0044ED5C
/* 0044ED28 0011C600 */   sll   $t8, $s1, 0x18
/* 0044ED2C 3C01FF00 */  lui   $at, 0xff00
/* 0044ED30 03017824 */  and   $t7, $t8, $at
/* 0044ED34 00117602 */  srl   $t6, $s1, 0x18
/* 0044ED38 31CC00FF */  andi  $t4, $t6, 0xff
/* 0044ED3C 3C0100FF */  lui   $at, 0xff
/* 0044ED40 00114A00 */  sll   $t1, $s1, 8
/* 0044ED44 01215024 */  and   $t2, $t1, $at
/* 0044ED48 01EC6821 */  addu  $t5, $t7, $t4
/* 0044ED4C 0011CA02 */  srl   $t9, $s1, 8
/* 0044ED50 332BFF00 */  andi  $t3, $t9, 0xff00
/* 0044ED54 01AA4021 */  addu  $t0, $t5, $t2
/* 0044ED58 010B8821 */  addu  $s1, $t0, $t3
.L0044ED5C:
/* 0044ED5C 8F988D84 */  lw     $t8, %got(realsegments)($gp)
/* 0044ED60 904E0008 */  lbu   $t6, 8($v0)
/* 0044ED64 8F180000 */  lw    $t8, ($t8)
/* 0044ED68 2DCF0020 */  sltiu $t7, $t6, 0x20
/* 0044ED6C 000F6023 */  negu  $t4, $t7
/* 0044ED70 030C4824 */  and   $t1, $t8, $t4
/* 0044ED74 01C96804 */  sllv  $t5, $t1, $t6
/* 0044ED78 05A00044 */  bltz  $t5, .L0044EE8C
/* 0044ED7C 03A04825 */   move  $t1, $sp
/* 0044ED80 8F8A8070 */  lw    $t2, %got(RO_10019AF5)($gp)
/* 0044ED84 03A05825 */  move  $t3, $sp
/* 0044ED88 254A9AF5 */  addiu $t2, %lo(RO_10019AF5) # addiu $t2, $t2, -0x650b
/* 0044ED8C 25480048 */  addiu $t0, $t2, 0x48
.L0044ED90:
/* 0044ED90 89410000 */  lwl   $at, ($t2)
/* 0044ED94 99410003 */  lwr   $at, 3($t2)
/* 0044ED98 254A000C */  addiu $t2, $t2, 0xc
/* 0044ED9C A9610000 */  swl   $at, ($t3)
/* 0044EDA0 B9610003 */  swr   $at, 3($t3)
/* 0044EDA4 8941FFF8 */  lwl   $at, -8($t2)
/* 0044EDA8 9941FFFB */  lwr   $at, -5($t2)
/* 0044EDAC 256B000C */  addiu $t3, $t3, 0xc
/* 0044EDB0 A961FFF8 */  swl   $at, -8($t3)
/* 0044EDB4 B961FFFB */  swr   $at, -5($t3)
/* 0044EDB8 8941FFFC */  lwl   $at, -4($t2)
/* 0044EDBC 9941FFFF */  lwr   $at, -1($t2)
/* 0044EDC0 00000000 */  nop   
/* 0044EDC4 A961FFFC */  swl   $at, -4($t3)
/* 0044EDC8 1548FFF1 */  bne   $t2, $t0, .L0044ED90
/* 0044EDCC B961FFFF */   swr   $at, -1($t3)
/* 0044EDD0 89410000 */  lwl   $at, ($t2)
/* 0044EDD4 99410003 */  lwr   $at, 3($t2)
/* 0044EDD8 8F8F8070 */  lw    $t7, %got(RO_10019AA5)($gp)
/* 0044EDDC A9610000 */  swl   $at, ($t3)
/* 0044EDE0 B9610003 */  swr   $at, 3($t3)
/* 0044EDE4 89480004 */  lwl   $t0, 4($t2)
/* 0044EDE8 99480007 */  lwr   $t0, 7($t2)
/* 0044EDEC 25EF9AA5 */  addiu $t7, %lo(RO_10019AA5) # addiu $t7, $t7, -0x655b
/* 0044EDF0 A9680004 */  swl   $t0, 4($t3)
/* 0044EDF4 25EC0048 */  addiu $t4, $t7, 0x48
/* 0044EDF8 B9680007 */  swr   $t0, 7($t3)
.L0044EDFC:
/* 0044EDFC 89E10000 */  lwl   $at, ($t7)
/* 0044EE00 99E10003 */  lwr   $at, 3($t7)
/* 0044EE04 25EF000C */  addiu $t7, $t7, 0xc
/* 0044EE08 A9210050 */  swl   $at, 0x50($t1)
/* 0044EE0C B9210053 */  swr   $at, 0x53($t1)
/* 0044EE10 89E1FFF8 */  lwl   $at, -8($t7)
/* 0044EE14 99E1FFFB */  lwr   $at, -5($t7)
/* 0044EE18 2529000C */  addiu $t1, $t1, 0xc
/* 0044EE1C A9210048 */  swl   $at, 0x48($t1)
/* 0044EE20 B921004B */  swr   $at, 0x4b($t1)
/* 0044EE24 89E1FFFC */  lwl   $at, -4($t7)
/* 0044EE28 99E1FFFF */  lwr   $at, -1($t7)
/* 0044EE2C 00000000 */  nop   
/* 0044EE30 A921004C */  swl   $at, 0x4c($t1)
/* 0044EE34 15ECFFF1 */  bne   $t7, $t4, .L0044EDFC
/* 0044EE38 B921004F */   swr   $at, 0x4f($t1)
/* 0044EE3C 89E10000 */  lwl   $at, ($t7)
/* 0044EE40 99E10003 */  lwr   $at, 3($t7)
/* 0044EE44 240E03D7 */  li    $t6, 983
/* 0044EE48 A9210050 */  swl   $at, 0x50($t1)
/* 0044EE4C B9210053 */  swr   $at, 0x53($t1)
/* 0044EE50 89EC0004 */  lwl   $t4, 4($t7)
/* 0044EE54 99EC0007 */  lwr   $t4, 7($t7)
/* 0044EE58 00000000 */  nop   
/* 0044EE5C A92C0054 */  swl   $t4, 0x54($t1)
/* 0044EE60 B92C0057 */  swr   $t4, 0x57($t1)
/* 0044EE64 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0044EE68 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044EE6C 8FA60008 */  lw    $a2, 8($sp)
/* 0044EE70 8FA50004 */  lw    $a1, 4($sp)
/* 0044EE74 8FA40000 */  lw    $a0, ($sp)
/* 0044EE78 0320F809 */  jalr  $t9
/* 0044EE7C AFAE00A0 */   sw    $t6, 0xa0($sp)
/* 0044EE80 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044EE84 8EC4000C */  lw    $a0, 0xc($s6)
/* 0044EE88 00000000 */  nop   
.L0044EE8C:
/* 0044EE8C 8F8D8B94 */  lw     $t5, %got(opts)($gp)
/* 0044EE90 93B90123 */  lbu   $t9, 0x123($sp)
/* 0044EE94 91AD001C */  lbu   $t5, 0x1c($t5)
/* 0044EE98 02202825 */  move  $a1, $s1
/* 0044EE9C 2DA10002 */  sltiu $at, $t5, 2
/* 0044EEA0 14200010 */  bnez  $at, .L0044EEE4
/* 0044EEA4 00000000 */   nop   
/* 0044EEA8 1720000E */  bnez  $t9, .L0044EEE4
/* 0044EEAC 00045080 */   sll   $t2, $a0, 2
/* 0044EEB0 8F888AE0 */  lw     $t0, %got(memory)($gp)
/* 0044EEB4 01445023 */  subu  $t2, $t2, $a0
/* 0044EEB8 000A5080 */  sll   $t2, $t2, 2
/* 0044EEBC 8D080000 */  lw    $t0, ($t0)
/* 0044EEC0 01445023 */  subu  $t2, $t2, $a0
/* 0044EEC4 000A5080 */  sll   $t2, $t2, 2
/* 0044EEC8 010A5821 */  addu  $t3, $t0, $t2
/* 0044EECC 8D780000 */  lw    $t8, ($t3)
/* 0044EED0 00146082 */  srl   $t4, $s4, 2
/* 0044EED4 000C7880 */  sll   $t7, $t4, 2
/* 0044EED8 030F4821 */  addu  $t1, $t8, $t7
/* 0044EEDC 10000007 */  b     .L0044EEFC
/* 0044EEE0 AD310000 */   sw    $s1, ($t1)
.L0044EEE4:
/* 0044EEE4 8F998584 */  lw    $t9, %call16(put_byte_at_a_time)($gp)
/* 0044EEE8 02803025 */  move  $a2, $s4
/* 0044EEEC 0320F809 */  jalr  $t9
/* 0044EEF0 24070004 */   li    $a3, 4
/* 0044EEF4 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044EEF8 00000000 */  nop   
.L0044EEFC:
/* 0044EEFC 8FAE00DC */  lw    $t6, 0xdc($sp)
.L0044EF00:
/* 0044EF00 26F70018 */  addiu $s7, $s7, 0x18
/* 0044EF04 16EEFC40 */  bne   $s7, $t6, .L0044E008
/* 0044EF08 00000000 */   nop   
.L0044EF0C:
/* 0044EF0C 8FB60124 */  lw    $s6, 0x124($sp)
/* 0044EF10 8F9E8AE8 */  lw     $fp, %got(sexchange)($gp)
/* 0044EF14 06C00038 */  bltz  $s6, .L0044EFF8
/* 0044EF18 00009825 */   move  $s3, $zero
/* 0044EF1C 26C60001 */  addiu $a2, $s6, 1
/* 0044EF20 30C40003 */  andi  $a0, $a2, 3
/* 0044EF24 10800011 */  beqz  $a0, .L0044EF6C
/* 0044EF28 AFB60124 */   sw    $s6, 0x124($sp)
/* 0044EF2C 8FAD0324 */  lw    $t5, 0x324($sp)
/* 0044EF30 00802825 */  move  $a1, $a0
/* 0044EF34 0000C880 */  sll   $t9, $zero, 2
/* 0044EF38 3404FFFF */  li    $a0, 65535
/* 0044EF3C 01B91021 */  addu  $v0, $t5, $t9
.L0044EF40:
/* 0044EF40 8C430000 */  lw    $v1, ($v0)
/* 0044EF44 26730001 */  addiu $s3, $s3, 1
/* 0044EF48 000340C2 */  srl   $t0, $v1, 3
/* 0044EF4C 0104082B */  sltu  $at, $t0, $a0
/* 0044EF50 14200002 */  bnez  $at, .L0044EF5C
/* 0044EF54 246A0008 */   addiu $t2, $v1, 8
/* 0044EF58 AC4A0000 */  sw    $t2, ($v0)
.L0044EF5C:
/* 0044EF5C 14B3FFF8 */  bne   $a1, $s3, .L0044EF40
/* 0044EF60 24420004 */   addiu $v0, $v0, 4
/* 0044EF64 12660024 */  beq   $s3, $a2, .L0044EFF8
/* 0044EF68 00000000 */   nop   
.L0044EF6C:
/* 0044EF6C 8FAB0324 */  lw    $t3, 0x324($sp)
/* 0044EF70 0013B080 */  sll   $s6, $s3, 2
/* 0044EF74 3404FFFF */  li    $a0, 65535
/* 0044EF78 00062880 */  sll   $a1, $a2, 2
/* 0044EF7C 01761021 */  addu  $v0, $t3, $s6
.L0044EF80:
/* 0044EF80 8C430000 */  lw    $v1, ($v0)
/* 0044EF84 26D60010 */  addiu $s6, $s6, 0x10
/* 0044EF88 000360C2 */  srl   $t4, $v1, 3
/* 0044EF8C 0184082B */  sltu  $at, $t4, $a0
/* 0044EF90 14200002 */  bnez  $at, .L0044EF9C
/* 0044EF94 24780008 */   addiu $t8, $v1, 8
/* 0044EF98 AC580000 */  sw    $t8, ($v0)
.L0044EF9C:
/* 0044EF9C 8C430004 */  lw    $v1, 4($v0)
/* 0044EFA0 00000000 */  nop   
/* 0044EFA4 000378C2 */  srl   $t7, $v1, 3
/* 0044EFA8 01E4082B */  sltu  $at, $t7, $a0
/* 0044EFAC 14200002 */  bnez  $at, .L0044EFB8
/* 0044EFB0 24690008 */   addiu $t1, $v1, 8
/* 0044EFB4 AC490004 */  sw    $t1, 4($v0)
.L0044EFB8:
/* 0044EFB8 8C430008 */  lw    $v1, 8($v0)
/* 0044EFBC 00000000 */  nop   
/* 0044EFC0 000370C2 */  srl   $t6, $v1, 3
/* 0044EFC4 01C4082B */  sltu  $at, $t6, $a0
/* 0044EFC8 14200002 */  bnez  $at, .L0044EFD4
/* 0044EFCC 246D0008 */   addiu $t5, $v1, 8
/* 0044EFD0 AC4D0008 */  sw    $t5, 8($v0)
.L0044EFD4:
/* 0044EFD4 8C43000C */  lw    $v1, 0xc($v0)
/* 0044EFD8 00000000 */  nop   
/* 0044EFDC 0003C8C2 */  srl   $t9, $v1, 3
/* 0044EFE0 0324082B */  sltu  $at, $t9, $a0
/* 0044EFE4 14200002 */  bnez  $at, .L0044EFF0
/* 0044EFE8 24680008 */   addiu $t0, $v1, 8
/* 0044EFEC AC48000C */  sw    $t0, 0xc($v0)
.L0044EFF0:
/* 0044EFF0 16C5FFE3 */  bne   $s6, $a1, .L0044EF80
/* 0044EFF4 24420010 */   addiu $v0, $v0, 0x10
.L0044EFF8:
/* 0044EFF8 8F848D60 */  lw     $a0, %got(outname)($gp)
/* 0044EFFC 8F9983FC */  lw    $t9, %call16(st_openobj)($gp)
/* 0044F000 8C840000 */  lw    $a0, ($a0)
/* 0044F004 0320F809 */  jalr  $t9
/* 0044F008 00000000 */   nop   
/* 0044F00C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F010 8FA5032C */  lw    $a1, 0x32c($sp)
/* 0044F014 8F8A8CC8 */  lw     $t2, %got(elf_flag)($gp)
/* 0044F018 8FA60328 */  lw    $a2, 0x328($sp)
/* 0044F01C 914A0000 */  lbu   $t2, ($t2)
/* 0044F020 AFA201A8 */  sw    $v0, 0x1a8($sp)
/* 0044F024 15400012 */  bnez  $t2, .L0044F070
/* 0044F028 27A40128 */   addiu $a0, $sp, 0x128
/* 0044F02C 8F998444 */  lw    $t9, %call16(wrcoffobj)($gp)
/* 0044F030 8FA5032C */  lw    $a1, 0x32c($sp)
/* 0044F034 8FA60328 */  lw    $a2, 0x328($sp)
/* 0044F038 8FA70324 */  lw    $a3, 0x324($sp)
/* 0044F03C 27AB0124 */  addiu $t3, $sp, 0x124
/* 0044F040 27AC01A8 */  addiu $t4, $sp, 0x1a8
/* 0044F044 27B801B0 */  addiu $t8, $sp, 0x1b0
/* 0044F048 27AF0148 */  addiu $t7, $sp, 0x148
/* 0044F04C AFAF001C */  sw    $t7, 0x1c($sp)
/* 0044F050 AFB80018 */  sw    $t8, 0x18($sp)
/* 0044F054 AFAC0014 */  sw    $t4, 0x14($sp)
/* 0044F058 AFAB0010 */  sw    $t3, 0x10($sp)
/* 0044F05C 0320F809 */  jalr  $t9
/* 0044F060 27A40128 */   addiu $a0, $sp, 0x128
/* 0044F064 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F068 1000000E */  b     .L0044F0A4
/* 0044F06C 00000000 */   nop   
.L0044F070:
/* 0044F070 27B90148 */  addiu $t9, $sp, 0x148
/* 0044F074 AFB9001C */  sw    $t9, 0x1c($sp)
/* 0044F078 8F998494 */  lw    $t9, %call16(wrelfobj)($gp)
/* 0044F07C 8FA70324 */  lw    $a3, 0x324($sp)
/* 0044F080 27A90124 */  addiu $t1, $sp, 0x124
/* 0044F084 27AE01A8 */  addiu $t6, $sp, 0x1a8
/* 0044F088 27AD01B0 */  addiu $t5, $sp, 0x1b0
/* 0044F08C AFAD0018 */  sw    $t5, 0x18($sp)
/* 0044F090 AFAE0014 */  sw    $t6, 0x14($sp)
/* 0044F094 0320F809 */  jalr  $t9
/* 0044F098 AFA90010 */   sw    $t1, 0x10($sp)
/* 0044F09C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F0A0 00000000 */  nop   
.L0044F0A4:
/* 0044F0A4 8F908CEC */  lw     $s0, %got(listingflag)($gp)
/* 0044F0A8 00003025 */  move  $a2, $zero
/* 0044F0AC 92080000 */  lbu   $t0, ($s0)
/* 0044F0B0 00003825 */  move  $a3, $zero
/* 0044F0B4 110000A9 */  beqz  $t0, .L0044F35C
/* 0044F0B8 00000000 */   nop   
/* 0044F0BC 8F958A0C */  lw     $s5, %got(output)($gp)
/* 0044F0C0 8F858070 */  lw    $a1, %got(RO_10019AA4)($gp)
/* 0044F0C4 8F9986C0 */  lw    $t9, %call16(rewrite)($gp)
/* 0044F0C8 02A02025 */  move  $a0, $s5
/* 0044F0CC 0320F809 */  jalr  $t9
/* 0044F0D0 24A59AA4 */   addiu $a1, %lo(RO_10019AA4) # addiu $a1, $a1, -0x655c
/* 0044F0D4 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F0D8 8EA40000 */  lw    $a0, ($s5)
/* 0044F0DC 8F858070 */  lw    $a1, %got(RO_10019A96)($gp)
/* 0044F0E0 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0044F0E4 2406000E */  li    $a2, 14
/* 0044F0E8 2407000E */  li    $a3, 14
/* 0044F0EC 0320F809 */  jalr  $t9
/* 0044F0F0 24A59A96 */   addiu $a1, %lo(RO_10019A96) # addiu $a1, $a1, -0x656a
/* 0044F0F4 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F0F8 8EA40000 */  lw    $a0, ($s5)
/* 0044F0FC 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 0044F100 00000000 */  nop   
/* 0044F104 0320F809 */  jalr  $t9
/* 0044F108 00000000 */   nop   
/* 0044F10C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F110 8EA40000 */  lw    $a0, ($s5)
/* 0044F114 8F858070 */  lw    $a1, %got(RO_10019A7F)($gp)
/* 0044F118 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0044F11C 24060017 */  li    $a2, 23
/* 0044F120 24070017 */  li    $a3, 23
/* 0044F124 0320F809 */  jalr  $t9
/* 0044F128 24A59A7F */   addiu $a1, %lo(RO_10019A7F) # addiu $a1, $a1, -0x6581
/* 0044F12C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F130 8EA40000 */  lw    $a0, ($s5)
/* 0044F134 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 0044F138 00000000 */  nop   
/* 0044F13C 0320F809 */  jalr  $t9
/* 0044F140 00000000 */   nop   
/* 0044F144 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F148 8EA40000 */  lw    $a0, ($s5)
/* 0044F14C 8F858070 */  lw    $a1, %got(RO_10019A72)($gp)
/* 0044F150 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0044F154 2406000D */  li    $a2, 13
/* 0044F158 2407000D */  li    $a3, 13
/* 0044F15C 0320F809 */  jalr  $t9
/* 0044F160 24A59A72 */   addiu $a1, %lo(RO_10019A72) # addiu $a1, $a1, -0x658e
/* 0044F164 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F168 8EA40000 */  lw    $a0, ($s5)
/* 0044F16C 8F858B94 */  lw     $a1, %got(opts)($gp)
/* 0044F170 8F9986A4 */  lw    $t9, %call16(write_integer)($gp)
/* 0044F174 8CA5000C */  lw    $a1, 0xc($a1)
/* 0044F178 24060001 */  li    $a2, 1
/* 0044F17C 0320F809 */  jalr  $t9
/* 0044F180 2407000A */   li    $a3, 10
/* 0044F184 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F188 8EA40000 */  lw    $a0, ($s5)
/* 0044F18C 8F858070 */  lw    $a1, %got(RO_10019A54)($gp)
/* 0044F190 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0044F194 2406001E */  li    $a2, 30
/* 0044F198 2407001E */  li    $a3, 30
/* 0044F19C 0320F809 */  jalr  $t9
/* 0044F1A0 24A59A54 */   addiu $a1, %lo(RO_10019A54) # addiu $a1, $a1, -0x65ac
/* 0044F1A4 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F1A8 8EA40000 */  lw    $a0, ($s5)
/* 0044F1AC 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 0044F1B0 00000000 */  nop   
/* 0044F1B4 0320F809 */  jalr  $t9
/* 0044F1B8 00000000 */   nop   
/* 0044F1BC 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F1C0 8EA40000 */  lw    $a0, ($s5)
/* 0044F1C4 8F858070 */  lw    $a1, %got(RO_10019A50)($gp)
/* 0044F1C8 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0044F1CC 24060004 */  li    $a2, 4
/* 0044F1D0 24070004 */  li    $a3, 4
/* 0044F1D4 0320F809 */  jalr  $t9
/* 0044F1D8 24A59A50 */   addiu $a1, %lo(RO_10019A50) # addiu $a1, $a1, -0x65b0
/* 0044F1DC 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F1E0 8EA40000 */  lw    $a0, ($s5)
/* 0044F1E4 8F858B94 */  lw     $a1, %got(opts)($gp)
/* 0044F1E8 8F9986A4 */  lw    $t9, %call16(write_integer)($gp)
/* 0044F1EC 8CA50008 */  lw    $a1, 8($a1)
/* 0044F1F0 24060001 */  li    $a2, 1
/* 0044F1F4 0320F809 */  jalr  $t9
/* 0044F1F8 2407000A */   li    $a3, 10
/* 0044F1FC 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F200 8EA40000 */  lw    $a0, ($s5)
/* 0044F204 8F858070 */  lw    $a1, %got(RO_10019A2F)($gp)
/* 0044F208 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0044F20C 24060021 */  li    $a2, 33
/* 0044F210 24070021 */  li    $a3, 33
/* 0044F214 0320F809 */  jalr  $t9
/* 0044F218 24A59A2F */   addiu $a1, %lo(RO_10019A2F) # addiu $a1, $a1, -0x65d1
/* 0044F21C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F220 8EA40000 */  lw    $a0, ($s5)
/* 0044F224 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 0044F228 00000000 */  nop   
/* 0044F22C 0320F809 */  jalr  $t9
/* 0044F230 00000000 */   nop   
/* 0044F234 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F238 8EA40000 */  lw    $a0, ($s5)
/* 0044F23C 8F858070 */  lw    $a1, %got(RO_10019A2B)($gp)
/* 0044F240 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0044F244 24060004 */  li    $a2, 4
/* 0044F248 24070004 */  li    $a3, 4
/* 0044F24C 0320F809 */  jalr  $t9
/* 0044F250 24A59A2B */   addiu $a1, %lo(RO_10019A2B) # addiu $a1, $a1, -0x65d5
/* 0044F254 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F258 8EA40000 */  lw    $a0, ($s5)
/* 0044F25C 8F858B94 */  lw     $a1, %got(opts)($gp)
/* 0044F260 8F9986A4 */  lw    $t9, %call16(write_integer)($gp)
/* 0044F264 8CA50010 */  lw    $a1, 0x10($a1)
/* 0044F268 24060001 */  li    $a2, 1
/* 0044F26C 0320F809 */  jalr  $t9
/* 0044F270 2407000A */   li    $a3, 10
/* 0044F274 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F278 8EA40000 */  lw    $a0, ($s5)
/* 0044F27C 8F858070 */  lw    $a1, %got(RO_10019A07)($gp)
/* 0044F280 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0044F284 24060024 */  li    $a2, 36
/* 0044F288 24070024 */  li    $a3, 36
/* 0044F28C 0320F809 */  jalr  $t9
/* 0044F290 24A59A07 */   addiu $a1, %lo(RO_10019A07) # addiu $a1, $a1, -0x65f9
/* 0044F294 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F298 8EA40000 */  lw    $a0, ($s5)
/* 0044F29C 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 0044F2A0 00000000 */  nop   
/* 0044F2A4 0320F809 */  jalr  $t9
/* 0044F2A8 00000000 */   nop   
/* 0044F2AC 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F2B0 8EA40000 */  lw    $a0, ($s5)
/* 0044F2B4 8F858070 */  lw    $a1, %got(RO_10019A03)($gp)
/* 0044F2B8 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0044F2BC 24060004 */  li    $a2, 4
/* 0044F2C0 24070004 */  li    $a3, 4
/* 0044F2C4 0320F809 */  jalr  $t9
/* 0044F2C8 24A59A03 */   addiu $a1, %lo(RO_10019A03) # addiu $a1, $a1, -0x65fd
/* 0044F2CC 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F2D0 8EA40000 */  lw    $a0, ($s5)
/* 0044F2D4 8F858B94 */  lw     $a1, %got(opts)($gp)
/* 0044F2D8 8F9986A4 */  lw    $t9, %call16(write_integer)($gp)
/* 0044F2DC 8CA50014 */  lw    $a1, 0x14($a1)
/* 0044F2E0 24060001 */  li    $a2, 1
/* 0044F2E4 0320F809 */  jalr  $t9
/* 0044F2E8 2407000A */   li    $a3, 10
/* 0044F2EC 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F2F0 8EA40000 */  lw    $a0, ($s5)
/* 0044F2F4 8F858070 */  lw    $a1, %got(RO_100199F0)($gp)
/* 0044F2F8 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0044F2FC 24060013 */  li    $a2, 19
/* 0044F300 24070013 */  li    $a3, 19
/* 0044F304 0320F809 */  jalr  $t9
/* 0044F308 24A599F0 */   addiu $a1, %lo(RO_100199F0) # addiu $a1, $a1, -0x6610
/* 0044F30C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F310 8EA40000 */  lw    $a0, ($s5)
/* 0044F314 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 0044F318 00000000 */  nop   
/* 0044F31C 0320F809 */  jalr  $t9
/* 0044F320 00000000 */   nop   
/* 0044F324 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F328 8EA40000 */  lw    $a0, ($s5)
/* 0044F32C 8F99817C */  lw    $t9, %call16(fflush)($gp)
/* 0044F330 00000000 */  nop   
/* 0044F334 0320F809 */  jalr  $t9
/* 0044F338 00000000 */   nop   
/* 0044F33C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F340 00002025 */  move  $a0, $zero
/* 0044F344 8F998700 */  lw    $t9, %call16(st_dump)($gp)
/* 0044F348 2405FFFF */  li    $a1, -1
/* 0044F34C 0320F809 */  jalr  $t9
/* 0044F350 00000000 */   nop   
/* 0044F354 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F358 00000000 */  nop   
.L0044F35C:
/* 0044F35C 8F8A8CC8 */  lw     $t2, %got(elf_flag)($gp)
/* 0044F360 8F958A0C */  lw     $s5, %got(output)($gp)
/* 0044F364 914A0000 */  lbu   $t2, ($t2)
/* 0044F368 00000000 */  nop   
/* 0044F36C 15400007 */  bnez  $t2, .L0044F38C
/* 0044F370 00000000 */   nop   
/* 0044F374 8F998870 */  lw    $t9, %call16(st_writest)($gp)
/* 0044F378 8FA401A8 */  lw    $a0, 0x1a8($sp)
/* 0044F37C 0320F809 */  jalr  $t9
/* 0044F380 2405FFEF */   li    $a1, -17
/* 0044F384 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F388 00000000 */  nop   
.L0044F38C:
/* 0044F38C 920B0000 */  lbu   $t3, ($s0)
/* 0044F390 2406002C */  li    $a2, 44
/* 0044F394 11600535 */  beqz  $t3, .L0045086C
/* 0044F398 2407002C */   li    $a3, 44
/* 0044F39C 8F8C8CC4 */  lw     $t4, %got(restext)($gp)
/* 0044F3A0 27AB02AC */  addiu $t3, $sp, 0x2ac
/* 0044F3A4 918C0000 */  lbu   $t4, ($t4)
/* 0044F3A8 00000000 */  nop   
/* 0044F3AC 1180000F */  beqz  $t4, .L0044F3EC
/* 0044F3B0 00000000 */   nop   
/* 0044F3B4 8F8F8070 */  lw    $t7, %got(RO_100199E8)($gp)
/* 0044F3B8 27B802A4 */  addiu $t8, $sp, 0x2a4
/* 0044F3BC 25EF99E8 */  addiu $t7, %lo(RO_100199E8) # addiu $t7, $t7, -0x6618
/* 0044F3C0 89E10000 */  lwl   $at, ($t7)
/* 0044F3C4 99E10003 */  lwr   $at, 3($t7)
/* 0044F3C8 00000000 */  nop   
/* 0044F3CC AB010000 */  swl   $at, ($t8)
/* 0044F3D0 BB010003 */  swr   $at, 3($t8)
/* 0044F3D4 89EE0004 */  lwl   $t6, 4($t7)
/* 0044F3D8 99EE0007 */  lwr   $t6, 7($t7)
/* 0044F3DC 00000000 */  nop   
/* 0044F3E0 AB0E0004 */  swl   $t6, 4($t8)
/* 0044F3E4 1000000E */  b     .L0044F420
/* 0044F3E8 BB0E0007 */   swr   $t6, 7($t8)
.L0044F3EC:
/* 0044F3EC 8F998070 */  lw    $t9, %got(RO_100199E0)($gp)
/* 0044F3F0 27AD02A4 */  addiu $t5, $sp, 0x2a4
/* 0044F3F4 273999E0 */  addiu $t9, %lo(RO_100199E0) # addiu $t9, $t9, -0x6620
/* 0044F3F8 8B210000 */  lwl   $at, ($t9)
/* 0044F3FC 9B210003 */  lwr   $at, 3($t9)
/* 0044F400 00000000 */  nop   
/* 0044F404 A9A10000 */  swl   $at, ($t5)
/* 0044F408 B9A10003 */  swr   $at, 3($t5)
/* 0044F40C 8B2A0004 */  lwl   $t2, 4($t9)
/* 0044F410 9B2A0007 */  lwr   $t2, 7($t9)
/* 0044F414 00000000 */  nop   
/* 0044F418 A9AA0004 */  swl   $t2, 4($t5)
/* 0044F41C B9AA0007 */  swr   $t2, 7($t5)
.L0044F420:
/* 0044F420 8F8C8070 */  lw    $t4, %got(RO_100199D8)($gp)
/* 0044F424 8F8E8070 */  lw    $t6, %got(RO_100199D0)($gp)
/* 0044F428 258C99D8 */  addiu $t4, %lo(RO_100199D8) # addiu $t4, $t4, -0x6628
/* 0044F42C 89810000 */  lwl   $at, ($t4)
/* 0044F430 99810003 */  lwr   $at, 3($t4)
/* 0044F434 25CE99D0 */  addiu $t6, %lo(RO_100199D0) # addiu $t6, $t6, -0x6630
/* 0044F438 A9610000 */  swl   $at, ($t3)
/* 0044F43C B9610003 */  swr   $at, 3($t3)
/* 0044F440 89980004 */  lwl   $t8, 4($t4)
/* 0044F444 99980007 */  lwr   $t8, 7($t4)
/* 0044F448 27AF02EC */  addiu $t7, $sp, 0x2ec
/* 0044F44C A9780004 */  swl   $t8, 4($t3)
/* 0044F450 B9780007 */  swr   $t8, 7($t3)
/* 0044F454 89C10000 */  lwl   $at, ($t6)
/* 0044F458 99C10003 */  lwr   $at, 3($t6)
/* 0044F45C 8F8A8070 */  lw    $t2, %got(RO_100199C8)($gp)
/* 0044F460 A9E10000 */  swl   $at, ($t7)
/* 0044F464 B9E10003 */  swr   $at, 3($t7)
/* 0044F468 89CD0004 */  lwl   $t5, 4($t6)
/* 0044F46C 99CD0007 */  lwr   $t5, 7($t6)
/* 0044F470 254A99C8 */  addiu $t2, %lo(RO_100199C8) # addiu $t2, $t2, -0x6638
/* 0044F474 A9ED0004 */  swl   $t5, 4($t7)
/* 0044F478 B9ED0007 */  swr   $t5, 7($t7)
/* 0044F47C 89410000 */  lwl   $at, ($t2)
/* 0044F480 99410003 */  lwr   $at, 3($t2)
/* 0044F484 27B902B4 */  addiu $t9, $sp, 0x2b4
/* 0044F488 AB210000 */  swl   $at, ($t9)
/* 0044F48C BB210003 */  swr   $at, 3($t9)
/* 0044F490 894B0004 */  lwl   $t3, 4($t2)
/* 0044F494 994B0007 */  lwr   $t3, 7($t2)
/* 0044F498 8F988070 */  lw    $t8, %got(RO_100199C0)($gp)
/* 0044F49C AB2B0004 */  swl   $t3, 4($t9)
/* 0044F4A0 BB2B0007 */  swr   $t3, 7($t9)
/* 0044F4A4 271899C0 */  addiu $t8, %lo(RO_100199C0) # addiu $t8, $t8, -0x6640
/* 0044F4A8 8B010000 */  lwl   $at, ($t8)
/* 0044F4AC 9B010003 */  lwr   $at, 3($t8)
/* 0044F4B0 27AC02DC */  addiu $t4, $sp, 0x2dc
/* 0044F4B4 A9810000 */  swl   $at, ($t4)
/* 0044F4B8 B9810003 */  swr   $at, 3($t4)
/* 0044F4BC 8B0F0004 */  lwl   $t7, 4($t8)
/* 0044F4C0 9B0F0007 */  lwr   $t7, 7($t8)
/* 0044F4C4 8F8D8070 */  lw    $t5, %got(RO_100199B8)($gp)
/* 0044F4C8 A98F0004 */  swl   $t7, 4($t4)
/* 0044F4CC B98F0007 */  swr   $t7, 7($t4)
/* 0044F4D0 25AD99B8 */  addiu $t5, %lo(RO_100199B8) # addiu $t5, $t5, -0x6648
/* 0044F4D4 89A10000 */  lwl   $at, ($t5)
/* 0044F4D8 99A10003 */  lwr   $at, 3($t5)
/* 0044F4DC 27AE02E4 */  addiu $t6, $sp, 0x2e4
/* 0044F4E0 A9C10000 */  swl   $at, ($t6)
/* 0044F4E4 B9C10003 */  swr   $at, 3($t6)
/* 0044F4E8 89B90004 */  lwl   $t9, 4($t5)
/* 0044F4EC 99B90007 */  lwr   $t9, 7($t5)
/* 0044F4F0 8F8B8070 */  lw    $t3, %got(RO_100199B0)($gp)
/* 0044F4F4 A9D90004 */  swl   $t9, 4($t6)
/* 0044F4F8 B9D90007 */  swr   $t9, 7($t6)
/* 0044F4FC 256B99B0 */  addiu $t3, %lo(RO_100199B0) # addiu $t3, $t3, -0x6650
/* 0044F500 89610000 */  lwl   $at, ($t3)
/* 0044F504 99610003 */  lwr   $at, 3($t3)
/* 0044F508 27AA02D4 */  addiu $t2, $sp, 0x2d4
/* 0044F50C A9410000 */  swl   $at, ($t2)
/* 0044F510 B9410003 */  swr   $at, 3($t2)
/* 0044F514 896C0004 */  lwl   $t4, 4($t3)
/* 0044F518 996C0007 */  lwr   $t4, 7($t3)
/* 0044F51C 8F8F8070 */  lw    $t7, %got(RO_100199A8)($gp)
/* 0044F520 A94C0004 */  swl   $t4, 4($t2)
/* 0044F524 B94C0007 */  swr   $t4, 7($t2)
/* 0044F528 25EF99A8 */  addiu $t7, %lo(RO_100199A8) # addiu $t7, $t7, -0x6658
/* 0044F52C 89E10000 */  lwl   $at, ($t7)
/* 0044F530 99E10003 */  lwr   $at, 3($t7)
/* 0044F534 27B802CC */  addiu $t8, $sp, 0x2cc
/* 0044F538 AB010000 */  swl   $at, ($t8)
/* 0044F53C BB010003 */  swr   $at, 3($t8)
/* 0044F540 89EE0004 */  lwl   $t6, 4($t7)
/* 0044F544 99EE0007 */  lwr   $t6, 7($t7)
/* 0044F548 8F998070 */  lw    $t9, %got(RO_100199A0)($gp)
/* 0044F54C AB0E0004 */  swl   $t6, 4($t8)
/* 0044F550 BB0E0007 */  swr   $t6, 7($t8)
/* 0044F554 273999A0 */  addiu $t9, %lo(RO_100199A0) # addiu $t9, $t9, -0x6660
/* 0044F558 8B210000 */  lwl   $at, ($t9)
/* 0044F55C 9B210003 */  lwr   $at, 3($t9)
/* 0044F560 27AD02BC */  addiu $t5, $sp, 0x2bc
/* 0044F564 A9A10000 */  swl   $at, ($t5)
/* 0044F568 B9A10003 */  swr   $at, 3($t5)
/* 0044F56C 8B2A0004 */  lwl   $t2, 4($t9)
/* 0044F570 9B2A0007 */  lwr   $t2, 7($t9)
/* 0044F574 8F8C8070 */  lw    $t4, %got(RO_10019998)($gp)
/* 0044F578 A9AA0004 */  swl   $t2, 4($t5)
/* 0044F57C B9AA0007 */  swr   $t2, 7($t5)
/* 0044F580 258C9998 */  addiu $t4, %lo(RO_10019998) # addiu $t4, $t4, -0x6668
/* 0044F584 89810000 */  lwl   $at, ($t4)
/* 0044F588 99810003 */  lwr   $at, 3($t4)
/* 0044F58C 27AB02C4 */  addiu $t3, $sp, 0x2c4
/* 0044F590 A9610000 */  swl   $at, ($t3)
/* 0044F594 B9610003 */  swr   $at, 3($t3)
/* 0044F598 89980004 */  lwl   $t8, 4($t4)
/* 0044F59C 99980007 */  lwr   $t8, 7($t4)
/* 0044F5A0 8F8E8070 */  lw    $t6, %got(RO_10019990)($gp)
/* 0044F5A4 A9780004 */  swl   $t8, 4($t3)
/* 0044F5A8 B9780007 */  swr   $t8, 7($t3)
/* 0044F5AC 25CE9990 */  addiu $t6, %lo(RO_10019990) # addiu $t6, $t6, -0x6670
/* 0044F5B0 89C10000 */  lwl   $at, ($t6)
/* 0044F5B4 99C10003 */  lwr   $at, 3($t6)
/* 0044F5B8 27AF0304 */  addiu $t7, $sp, 0x304
/* 0044F5BC A9E10000 */  swl   $at, ($t7)
/* 0044F5C0 B9E10003 */  swr   $at, 3($t7)
/* 0044F5C4 89CD0004 */  lwl   $t5, 4($t6)
/* 0044F5C8 99CD0007 */  lwr   $t5, 7($t6)
/* 0044F5CC 8F8A8070 */  lw    $t2, %got(RO_10019988)($gp)
/* 0044F5D0 A9ED0004 */  swl   $t5, 4($t7)
/* 0044F5D4 B9ED0007 */  swr   $t5, 7($t7)
/* 0044F5D8 254A9988 */  addiu $t2, %lo(RO_10019988) # addiu $t2, $t2, -0x6678
/* 0044F5DC 89410000 */  lwl   $at, ($t2)
/* 0044F5E0 99410003 */  lwr   $at, 3($t2)
/* 0044F5E4 27B9030C */  addiu $t9, $sp, 0x30c
/* 0044F5E8 AB210000 */  swl   $at, ($t9)
/* 0044F5EC BB210003 */  swr   $at, 3($t9)
/* 0044F5F0 894B0004 */  lwl   $t3, 4($t2)
/* 0044F5F4 994B0007 */  lwr   $t3, 7($t2)
/* 0044F5F8 8F988070 */  lw    $t8, %got(RO_10019980)($gp)
/* 0044F5FC AB2B0004 */  swl   $t3, 4($t9)
/* 0044F600 BB2B0007 */  swr   $t3, 7($t9)
/* 0044F604 27189980 */  addiu $t8, %lo(RO_10019980) # addiu $t8, $t8, -0x6680
/* 0044F608 8B010000 */  lwl   $at, ($t8)
/* 0044F60C 9B010003 */  lwr   $at, 3($t8)
/* 0044F610 27AC0314 */  addiu $t4, $sp, 0x314
/* 0044F614 A9810000 */  swl   $at, ($t4)
/* 0044F618 B9810003 */  swr   $at, 3($t4)
/* 0044F61C 8B0F0004 */  lwl   $t7, 4($t8)
/* 0044F620 9B0F0007 */  lwr   $t7, 7($t8)
/* 0044F624 8F8D8070 */  lw    $t5, %got(RO_10019978)($gp)
/* 0044F628 A98F0004 */  swl   $t7, 4($t4)
/* 0044F62C B98F0007 */  swr   $t7, 7($t4)
/* 0044F630 25AD9978 */  addiu $t5, %lo(RO_10019978) # addiu $t5, $t5, -0x6688
/* 0044F634 89A10000 */  lwl   $at, ($t5)
/* 0044F638 99A10003 */  lwr   $at, 3($t5)
/* 0044F63C 27AE01C4 */  addiu $t6, $sp, 0x1c4
/* 0044F640 A9C10000 */  swl   $at, ($t6)
/* 0044F644 B9C10003 */  swr   $at, 3($t6)
/* 0044F648 89B90004 */  lwl   $t9, 4($t5)
/* 0044F64C 99B90007 */  lwr   $t9, 7($t5)
/* 0044F650 8F8B8070 */  lw    $t3, %got(RO_10019970)($gp)
/* 0044F654 A9D90004 */  swl   $t9, 4($t6)
/* 0044F658 B9D90007 */  swr   $t9, 7($t6)
/* 0044F65C 256B9970 */  addiu $t3, %lo(RO_10019970) # addiu $t3, $t3, -0x6690
/* 0044F660 89610000 */  lwl   $at, ($t3)
/* 0044F664 99610003 */  lwr   $at, 3($t3)
/* 0044F668 27AA01CC */  addiu $t2, $sp, 0x1cc
/* 0044F66C A9410000 */  swl   $at, ($t2)
/* 0044F670 B9410003 */  swr   $at, 3($t2)
/* 0044F674 896C0004 */  lwl   $t4, 4($t3)
/* 0044F678 996C0007 */  lwr   $t4, 7($t3)
/* 0044F67C 8F8F8070 */  lw    $t7, %got(RO_10019968)($gp)
/* 0044F680 A94C0004 */  swl   $t4, 4($t2)
/* 0044F684 B94C0007 */  swr   $t4, 7($t2)
/* 0044F688 25EF9968 */  addiu $t7, %lo(RO_10019968) # addiu $t7, $t7, -0x6698
/* 0044F68C 89E10000 */  lwl   $at, ($t7)
/* 0044F690 99E10003 */  lwr   $at, 3($t7)
/* 0044F694 27B801DC */  addiu $t8, $sp, 0x1dc
/* 0044F698 AB010000 */  swl   $at, ($t8)
/* 0044F69C BB010003 */  swr   $at, 3($t8)
/* 0044F6A0 89EE0004 */  lwl   $t6, 4($t7)
/* 0044F6A4 99EE0007 */  lwr   $t6, 7($t7)
/* 0044F6A8 8F998070 */  lw    $t9, %got(RO_10019960)($gp)
/* 0044F6AC AB0E0004 */  swl   $t6, 4($t8)
/* 0044F6B0 BB0E0007 */  swr   $t6, 7($t8)
/* 0044F6B4 27399960 */  addiu $t9, %lo(RO_10019960) # addiu $t9, $t9, -0x66a0
/* 0044F6B8 8B210000 */  lwl   $at, ($t9)
/* 0044F6BC 9B210003 */  lwr   $at, 3($t9)
/* 0044F6C0 27AD01E4 */  addiu $t5, $sp, 0x1e4
/* 0044F6C4 A9A10000 */  swl   $at, ($t5)
/* 0044F6C8 B9A10003 */  swr   $at, 3($t5)
/* 0044F6CC 8B2A0004 */  lwl   $t2, 4($t9)
/* 0044F6D0 9B2A0007 */  lwr   $t2, 7($t9)
/* 0044F6D4 8F8C8070 */  lw    $t4, %got(RO_10019958)($gp)
/* 0044F6D8 A9AA0004 */  swl   $t2, 4($t5)
/* 0044F6DC B9AA0007 */  swr   $t2, 7($t5)
/* 0044F6E0 258C9958 */  addiu $t4, %lo(RO_10019958) # addiu $t4, $t4, -0x66a8
/* 0044F6E4 89810000 */  lwl   $at, ($t4)
/* 0044F6E8 99810003 */  lwr   $at, 3($t4)
/* 0044F6EC 27AB01EC */  addiu $t3, $sp, 0x1ec
/* 0044F6F0 A9610000 */  swl   $at, ($t3)
/* 0044F6F4 B9610003 */  swr   $at, 3($t3)
/* 0044F6F8 89980004 */  lwl   $t8, 4($t4)
/* 0044F6FC 99980007 */  lwr   $t8, 7($t4)
/* 0044F700 8F8E8070 */  lw    $t6, %got(RO_10019950)($gp)
/* 0044F704 A9780004 */  swl   $t8, 4($t3)
/* 0044F708 B9780007 */  swr   $t8, 7($t3)
/* 0044F70C 25CE9950 */  addiu $t6, %lo(RO_10019950) # addiu $t6, $t6, -0x66b0
/* 0044F710 89C10000 */  lwl   $at, ($t6)
/* 0044F714 99C10003 */  lwr   $at, 3($t6)
/* 0044F718 27AF01F4 */  addiu $t7, $sp, 0x1f4
/* 0044F71C A9E10000 */  swl   $at, ($t7)
/* 0044F720 B9E10003 */  swr   $at, 3($t7)
/* 0044F724 89CD0004 */  lwl   $t5, 4($t6)
/* 0044F728 99CD0007 */  lwr   $t5, 7($t6)
/* 0044F72C 8F8A8070 */  lw    $t2, %got(RO_10019948)($gp)
/* 0044F730 A9ED0004 */  swl   $t5, 4($t7)
/* 0044F734 B9ED0007 */  swr   $t5, 7($t7)
/* 0044F738 254A9948 */  addiu $t2, %lo(RO_10019948) # addiu $t2, $t2, -0x66b8
/* 0044F73C 89410000 */  lwl   $at, ($t2)
/* 0044F740 99410003 */  lwr   $at, 3($t2)
/* 0044F744 27B901FC */  addiu $t9, $sp, 0x1fc
/* 0044F748 AB210000 */  swl   $at, ($t9)
/* 0044F74C BB210003 */  swr   $at, 3($t9)
/* 0044F750 894B0004 */  lwl   $t3, 4($t2)
/* 0044F754 994B0007 */  lwr   $t3, 7($t2)
/* 0044F758 8F988070 */  lw    $t8, %got(RO_10019940)($gp)
/* 0044F75C AB2B0004 */  swl   $t3, 4($t9)
/* 0044F760 BB2B0007 */  swr   $t3, 7($t9)
/* 0044F764 27189940 */  addiu $t8, %lo(RO_10019940) # addiu $t8, $t8, -0x66c0
/* 0044F768 8B010000 */  lwl   $at, ($t8)
/* 0044F76C 9B010003 */  lwr   $at, 3($t8)
/* 0044F770 27AC0204 */  addiu $t4, $sp, 0x204
/* 0044F774 A9810000 */  swl   $at, ($t4)
/* 0044F778 B9810003 */  swr   $at, 3($t4)
/* 0044F77C 8B0F0004 */  lwl   $t7, 4($t8)
/* 0044F780 9B0F0007 */  lwr   $t7, 7($t8)
/* 0044F784 8F8D8070 */  lw    $t5, %got(RO_10019938)($gp)
/* 0044F788 A98F0004 */  swl   $t7, 4($t4)
/* 0044F78C B98F0007 */  swr   $t7, 7($t4)
/* 0044F790 25AD9938 */  addiu $t5, %lo(RO_10019938) # addiu $t5, $t5, -0x66c8
/* 0044F794 89A10000 */  lwl   $at, ($t5)
/* 0044F798 99A10003 */  lwr   $at, 3($t5)
/* 0044F79C 27AE0214 */  addiu $t6, $sp, 0x214
/* 0044F7A0 A9C10000 */  swl   $at, ($t6)
/* 0044F7A4 B9C10003 */  swr   $at, 3($t6)
/* 0044F7A8 89B90004 */  lwl   $t9, 4($t5)
/* 0044F7AC 99B90007 */  lwr   $t9, 7($t5)
/* 0044F7B0 8F8B8070 */  lw    $t3, %got(RO_10019930)($gp)
/* 0044F7B4 A9D90004 */  swl   $t9, 4($t6)
/* 0044F7B8 B9D90007 */  swr   $t9, 7($t6)
/* 0044F7BC 256B9930 */  addiu $t3, %lo(RO_10019930) # addiu $t3, $t3, -0x66d0
/* 0044F7C0 89610000 */  lwl   $at, ($t3)
/* 0044F7C4 99610003 */  lwr   $at, 3($t3)
/* 0044F7C8 27AA020C */  addiu $t2, $sp, 0x20c
/* 0044F7CC A9410000 */  swl   $at, ($t2)
/* 0044F7D0 B9410003 */  swr   $at, 3($t2)
/* 0044F7D4 896C0004 */  lwl   $t4, 4($t3)
/* 0044F7D8 996C0007 */  lwr   $t4, 7($t3)
/* 0044F7DC 8F8F8070 */  lw    $t7, %got(RO_10019928)($gp)
/* 0044F7E0 A94C0004 */  swl   $t4, 4($t2)
/* 0044F7E4 B94C0007 */  swr   $t4, 7($t2)
/* 0044F7E8 25EF9928 */  addiu $t7, %lo(RO_10019928) # addiu $t7, $t7, -0x66d8
/* 0044F7EC 89E10000 */  lwl   $at, ($t7)
/* 0044F7F0 99E10003 */  lwr   $at, 3($t7)
/* 0044F7F4 27B8021C */  addiu $t8, $sp, 0x21c
/* 0044F7F8 AB010000 */  swl   $at, ($t8)
/* 0044F7FC BB010003 */  swr   $at, 3($t8)
/* 0044F800 89EE0004 */  lwl   $t6, 4($t7)
/* 0044F804 99EE0007 */  lwr   $t6, 7($t7)
/* 0044F808 8F998070 */  lw    $t9, %got(RO_10019920)($gp)
/* 0044F80C AB0E0004 */  swl   $t6, 4($t8)
/* 0044F810 BB0E0007 */  swr   $t6, 7($t8)
/* 0044F814 27399920 */  addiu $t9, %lo(RO_10019920) # addiu $t9, $t9, -0x66e0
/* 0044F818 8B210000 */  lwl   $at, ($t9)
/* 0044F81C 9B210003 */  lwr   $at, 3($t9)
/* 0044F820 27AD0224 */  addiu $t5, $sp, 0x224
/* 0044F824 A9A10000 */  swl   $at, ($t5)
/* 0044F828 B9A10003 */  swr   $at, 3($t5)
/* 0044F82C 8B2A0004 */  lwl   $t2, 4($t9)
/* 0044F830 9B2A0007 */  lwr   $t2, 7($t9)
/* 0044F834 8F8C8070 */  lw    $t4, %got(RO_10019918)($gp)
/* 0044F838 A9AA0004 */  swl   $t2, 4($t5)
/* 0044F83C B9AA0007 */  swr   $t2, 7($t5)
/* 0044F840 258C9918 */  addiu $t4, %lo(RO_10019918) # addiu $t4, $t4, -0x66e8
/* 0044F844 89810000 */  lwl   $at, ($t4)
/* 0044F848 99810003 */  lwr   $at, 3($t4)
/* 0044F84C 27AB022C */  addiu $t3, $sp, 0x22c
/* 0044F850 A9610000 */  swl   $at, ($t3)
/* 0044F854 B9610003 */  swr   $at, 3($t3)
/* 0044F858 89980004 */  lwl   $t8, 4($t4)
/* 0044F85C 99980007 */  lwr   $t8, 7($t4)
/* 0044F860 8F858070 */  lw    $a1, %got(RO_100198EC)($gp)
/* 0044F864 A9780004 */  swl   $t8, 4($t3)
/* 0044F868 B9780007 */  swr   $t8, 7($t3)
/* 0044F86C 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0044F870 8EA40000 */  lw    $a0, ($s5)
/* 0044F874 0320F809 */  jalr  $t9
/* 0044F878 24A598EC */   addiu $a1, %lo(RO_100198EC) # addiu $a1, $a1, -0x6714
/* 0044F87C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F880 8EA40000 */  lw    $a0, ($s5)
/* 0044F884 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 0044F888 00000000 */  nop   
/* 0044F88C 0320F809 */  jalr  $t9
/* 0044F890 00000000 */   nop   
/* 0044F894 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F898 8EA40000 */  lw    $a0, ($s5)
/* 0044F89C 8F858070 */  lw    $a1, %got(RO_100198B9)($gp)
/* 0044F8A0 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0044F8A4 24060033 */  li    $a2, 51
/* 0044F8A8 24070033 */  li    $a3, 51
/* 0044F8AC 0320F809 */  jalr  $t9
/* 0044F8B0 24A598B9 */   addiu $a1, %lo(RO_100198B9) # addiu $a1, $a1, -0x6747
/* 0044F8B4 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F8B8 8EA40000 */  lw    $a0, ($s5)
/* 0044F8BC 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 0044F8C0 00000000 */  nop   
/* 0044F8C4 0320F809 */  jalr  $t9
/* 0044F8C8 00000000 */   nop   
/* 0044F8CC 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F8D0 00000000 */  nop   
/* 0044F8D4 8F8F8AF0 */  lw     $t7, %got(nextrld)($gp)
/* 0044F8D8 00000000 */  nop   
/* 0044F8DC 8DEF0000 */  lw    $t7, ($t7)
/* 0044F8E0 00000000 */  nop   
/* 0044F8E4 25EEFFFF */  addiu $t6, $t7, -1
/* 0044F8E8 19C0009D */  blez  $t6, .L0044FB60
/* 0044F8EC AFAE011C */   sw    $t6, 0x11c($sp)
/* 0044F8F0 25C80001 */  addiu $t0, $t6, 1
/* 0044F8F4 00089880 */  sll   $s3, $t0, 2
/* 0044F8F8 02689823 */  subu  $s3, $s3, $t0
/* 0044F8FC 001398C0 */  sll   $s3, $s3, 3
/* 0044F900 AFA8011C */  sw    $t0, 0x11c($sp)
/* 0044F904 24170018 */  li    $s7, 24
/* 0044F908 27B101D4 */  addiu $s1, $sp, 0x1d4
.L0044F90C:
/* 0044F90C 8F8D8AF4 */  lw     $t5, %got(rld_list)($gp)
/* 0044F910 00000000 */  nop   
/* 0044F914 8DAD0000 */  lw    $t5, ($t5)
/* 0044F918 00000000 */  nop   
/* 0044F91C 01B7B021 */  addu  $s6, $t5, $s7
/* 0044F920 92D90010 */  lbu   $t9, 0x10($s6)
/* 0044F924 00000000 */  nop   
/* 0044F928 1320008A */  beqz  $t9, .L0044FB54
/* 0044F92C 00000000 */   nop   
/* 0044F930 8ED00008 */  lw    $s0, 8($s6)
/* 0044F934 2405001C */  li    $a1, 28
/* 0044F938 1200000B */  beqz  $s0, .L0044F968
/* 0044F93C 27A20330 */   addiu $v0, $sp, 0x330
/* 0044F940 8F998028 */  lw    $t9, %got(func_0044D2AC)($gp)
/* 0044F944 8E04000C */  lw    $a0, 0xc($s0)
/* 0044F948 2739D2AC */  addiu $t9, %lo(func_0044D2AC) # addiu $t9, $t9, -0x2d54
/* 0044F94C 2405001C */  li    $a1, 28
/* 0044F950 27A20330 */  addiu $v0, $sp, 0x330
/* 0044F954 0320F809 */  jalr  $t9
/* 0044F958 AFA40000 */   sw    $a0, ($sp)
/* 0044F95C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F960 10000009 */  b     .L0044F988
/* 0044F964 00000000 */   nop   
.L0044F968:
/* 0044F968 8F8B8C68 */  lw     $t3, %got(emptystring)($gp)
/* 0044F96C 8F998028 */  lw    $t9, %got(func_0044D2AC)($gp)
/* 0044F970 8D640000 */  lw    $a0, ($t3)
/* 0044F974 2739D2AC */  addiu $t9, %lo(func_0044D2AC) # addiu $t9, $t9, -0x2d54
/* 0044F978 0320F809 */  jalr  $t9
/* 0044F97C AFA40000 */   sw    $a0, ($sp)
/* 0044F980 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F984 00000000 */  nop   
.L0044F988:
/* 0044F988 8F99859C */  lw    $t9, %call16(wrhex)($gp)
/* 0044F98C 8EC50004 */  lw    $a1, 4($s6)
/* 0044F990 02A02025 */  move  $a0, $s5
/* 0044F994 24060008 */  li    $a2, 8
/* 0044F998 0320F809 */  jalr  $t9
/* 0044F99C 24070030 */   li    $a3, 48
/* 0044F9A0 8ECC000C */  lw    $t4, 0xc($s6)
/* 0044F9A4 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F9A8 000CC080 */  sll   $t8, $t4, 2
/* 0044F9AC 8F928AE0 */  lw     $s2, %got(memory)($gp)
/* 0044F9B0 030CC023 */  subu  $t8, $t8, $t4
/* 0044F9B4 0018C080 */  sll   $t8, $t8, 2
/* 0044F9B8 8E520000 */  lw    $s2, ($s2)
/* 0044F9BC 030CC023 */  subu  $t8, $t8, $t4
/* 0044F9C0 0018C080 */  sll   $t8, $t8, 2
/* 0044F9C4 02587821 */  addu  $t7, $s2, $t8
/* 0044F9C8 91EE0008 */  lbu   $t6, 8($t7)
/* 0044F9CC 2401000F */  li    $at, 15
/* 0044F9D0 15C10030 */  bne   $t6, $at, .L0044FA94
/* 0044F9D4 24050020 */   li    $a1, 32
/* 0044F9D8 8EB00000 */  lw    $s0, ($s5)
/* 0044F9DC 8F99869C */  lw    $t9, %call16(write_char)($gp)
/* 0044F9E0 24050020 */  li    $a1, 32
/* 0044F9E4 24060001 */  li    $a2, 1
/* 0044F9E8 2407000A */  li    $a3, 10
/* 0044F9EC 0320F809 */  jalr  $t9
/* 0044F9F0 02002025 */   move  $a0, $s0
/* 0044F9F4 8EC8000C */  lw    $t0, 0xc($s6)
/* 0044F9F8 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044F9FC 00086880 */  sll   $t5, $t0, 2
/* 0044FA00 01A86823 */  subu  $t5, $t5, $t0
/* 0044FA04 000D6880 */  sll   $t5, $t5, 2
/* 0044FA08 01A86823 */  subu  $t5, $t5, $t0
/* 0044FA0C 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0044FA10 000D6880 */  sll   $t5, $t5, 2
/* 0044FA14 024D2821 */  addu  $a1, $s2, $t5
/* 0044FA18 24A50009 */  addiu $a1, $a1, 9
/* 0044FA1C 02002025 */  move  $a0, $s0
/* 0044FA20 24060020 */  li    $a2, 32
/* 0044FA24 0320F809 */  jalr  $t9
/* 0044FA28 24070007 */   li    $a3, 7
/* 0044FA2C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044FA30 8EB00000 */  lw    $s0, ($s5)
/* 0044FA34 8F99869C */  lw    $t9, %call16(write_char)($gp)
/* 0044FA38 24050020 */  li    $a1, 32
/* 0044FA3C 24060001 */  li    $a2, 1
/* 0044FA40 2407000A */  li    $a3, 10
/* 0044FA44 0320F809 */  jalr  $t9
/* 0044FA48 02002025 */   move  $a0, $s0
/* 0044FA4C 92D90010 */  lbu   $t9, 0x10($s6)
/* 0044FA50 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044FA54 001950C0 */  sll   $t2, $t9, 3
/* 0044FA58 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0044FA5C 022A2821 */  addu  $a1, $s1, $t2
/* 0044FA60 02002025 */  move  $a0, $s0
/* 0044FA64 24060008 */  li    $a2, 8
/* 0044FA68 0320F809 */  jalr  $t9
/* 0044FA6C 24070007 */   li    $a3, 7
/* 0044FA70 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044FA74 8EA40000 */  lw    $a0, ($s5)
/* 0044FA78 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 0044FA7C 00000000 */  nop   
/* 0044FA80 0320F809 */  jalr  $t9
/* 0044FA84 00000000 */   nop   
/* 0044FA88 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044FA8C 10000032 */  b     .L0044FB58
/* 0044FA90 26F70018 */   addiu $s7, $s7, 0x18
.L0044FA94:
/* 0044FA94 8EB00000 */  lw    $s0, ($s5)
/* 0044FA98 8F99869C */  lw    $t9, %call16(write_char)($gp)
/* 0044FA9C 24060001 */  li    $a2, 1
/* 0044FAA0 2407000A */  li    $a3, 10
/* 0044FAA4 0320F809 */  jalr  $t9
/* 0044FAA8 02002025 */   move  $a0, $s0
/* 0044FAAC 8EC9000C */  lw    $t1, 0xc($s6)
/* 0044FAB0 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044FAB4 00095880 */  sll   $t3, $t1, 2
/* 0044FAB8 01695823 */  subu  $t3, $t3, $t1
/* 0044FABC 000B5880 */  sll   $t3, $t3, 2
/* 0044FAC0 01695823 */  subu  $t3, $t3, $t1
/* 0044FAC4 000B5880 */  sll   $t3, $t3, 2
/* 0044FAC8 024B6021 */  addu  $t4, $s2, $t3
/* 0044FACC 91980008 */  lbu   $t8, 8($t4)
/* 0044FAD0 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0044FAD4 27AE02A4 */  addiu $t6, $sp, 0x2a4
/* 0044FAD8 001878C0 */  sll   $t7, $t8, 3
/* 0044FADC 01EE2821 */  addu  $a1, $t7, $t6
/* 0044FAE0 02002025 */  move  $a0, $s0
/* 0044FAE4 24060008 */  li    $a2, 8
/* 0044FAE8 0320F809 */  jalr  $t9
/* 0044FAEC 24070007 */   li    $a3, 7
/* 0044FAF0 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044FAF4 8EB00000 */  lw    $s0, ($s5)
/* 0044FAF8 8F99869C */  lw    $t9, %call16(write_char)($gp)
/* 0044FAFC 24050020 */  li    $a1, 32
/* 0044FB00 24060001 */  li    $a2, 1
/* 0044FB04 2407000A */  li    $a3, 10
/* 0044FB08 0320F809 */  jalr  $t9
/* 0044FB0C 02002025 */   move  $a0, $s0
/* 0044FB10 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044FB14 92C80010 */  lbu   $t0, 0x10($s6)
/* 0044FB18 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0044FB1C 000868C0 */  sll   $t5, $t0, 3
/* 0044FB20 022D2821 */  addu  $a1, $s1, $t5
/* 0044FB24 02002025 */  move  $a0, $s0
/* 0044FB28 24060008 */  li    $a2, 8
/* 0044FB2C 0320F809 */  jalr  $t9
/* 0044FB30 24070007 */   li    $a3, 7
/* 0044FB34 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044FB38 8EA40000 */  lw    $a0, ($s5)
/* 0044FB3C 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 0044FB40 00000000 */  nop   
/* 0044FB44 0320F809 */  jalr  $t9
/* 0044FB48 00000000 */   nop   
/* 0044FB4C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044FB50 00000000 */  nop   
.L0044FB54:
/* 0044FB54 26F70018 */  addiu $s7, $s7, 0x18
.L0044FB58:
/* 0044FB58 16F3FF6C */  bne   $s7, $s3, .L0044F90C
/* 0044FB5C 00000000 */   nop   
.L0044FB60:
/* 0044FB60 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 0044FB64 8EA40000 */  lw    $a0, ($s5)
/* 0044FB68 0320F809 */  jalr  $t9
/* 0044FB6C 00000000 */   nop   
/* 0044FB70 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044FB74 8EA40000 */  lw    $a0, ($s5)
/* 0044FB78 8F858070 */  lw    $a1, %got(RO_10019892)($gp)
/* 0044FB7C 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0044FB80 24060027 */  li    $a2, 39
/* 0044FB84 24070027 */  li    $a3, 39
/* 0044FB88 0320F809 */  jalr  $t9
/* 0044FB8C 24A59892 */   addiu $a1, %lo(RO_10019892) # addiu $a1, $a1, -0x676e
/* 0044FB90 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044FB94 8EA40000 */  lw    $a0, ($s5)
/* 0044FB98 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 0044FB9C 00000000 */  nop   
/* 0044FBA0 0320F809 */  jalr  $t9
/* 0044FBA4 00000000 */   nop   
/* 0044FBA8 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044FBAC 00000000 */  nop   
/* 0044FBB0 8F998AEC */  lw     $t9, %got(seg_ic)($gp)
/* 0044FBB4 00000000 */  nop   
/* 0044FBB8 8F390000 */  lw    $t9, ($t9)
/* 0044FBBC 00000000 */  nop   
/* 0044FBC0 8F2A0000 */  lw    $t2, ($t9)
/* 0044FBC4 00000000 */  nop   
/* 0044FBC8 000A4882 */  srl   $t1, $t2, 2
/* 0044FBCC 252BFFFF */  addiu $t3, $t1, -1
/* 0044FBD0 05600014 */  bltz  $t3, .L0044FC24
/* 0044FBD4 AFAB011C */   sw    $t3, 0x11c($sp)
/* 0044FBD8 256C0001 */  addiu $t4, $t3, 1
/* 0044FBDC AFAC011C */  sw    $t4, 0x11c($sp)
/* 0044FBE0 0000A025 */  move  $s4, $zero
/* 0044FBE4 00008025 */  move  $s0, $zero
.L0044FBE8:
/* 0044FBE8 8F988AE0 */  lw     $t8, %got(memory)($gp)
/* 0044FBEC 8F9985E4 */  lw    $t9, %call16(disasm_text)($gp)
/* 0044FBF0 8F180000 */  lw    $t8, ($t8)
/* 0044FBF4 93C70000 */  lbu   $a3, ($fp)
/* 0044FBF8 8F0F0000 */  lw    $t7, ($t8)
/* 0044FBFC 02A02025 */  move  $a0, $s5
/* 0044FC00 01F07021 */  addu  $t6, $t7, $s0
/* 0044FC04 8DC60000 */  lw    $a2, ($t6)
/* 0044FC08 0320F809 */  jalr  $t9
/* 0044FC0C 02802825 */   move  $a1, $s4
/* 0044FC10 8FA8011C */  lw    $t0, 0x11c($sp)
/* 0044FC14 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044FC18 26940001 */  addiu $s4, $s4, 1
/* 0044FC1C 1688FFF2 */  bne   $s4, $t0, .L0044FBE8
/* 0044FC20 26100004 */   addiu $s0, $s0, 4
.L0044FC24:
/* 0044FC24 8F858CD8 */  lw     $a1, %got(lastusertextseg)($gp)
/* 0044FC28 2401FFFF */  li    $at, -1
/* 0044FC2C 8CA50000 */  lw    $a1, ($a1)
/* 0044FC30 00000000 */  nop   
/* 0044FC34 10A1003B */  beq   $a1, $at, .L0044FD24
/* 0044FC38 00000000 */   nop   
/* 0044FC3C 8F8D8CD4 */  lw     $t5, %got(firstusertextseg)($gp)
/* 0044FC40 24A20001 */  addiu $v0, $a1, 1
/* 0044FC44 8DAD0000 */  lw    $t5, ($t5)
/* 0044FC48 00000000 */  nop   
/* 0044FC4C 00AD082A */  slt   $at, $a1, $t5
/* 0044FC50 14200034 */  bnez  $at, .L0044FD24
/* 0044FC54 AFAD011C */   sw    $t5, 0x11c($sp)
/* 0044FC58 01A09825 */  move  $s3, $t5
/* 0044FC5C 000DB080 */  sll   $s6, $t5, 2
/* 0044FC60 AFA20114 */  sw    $v0, 0x114($sp)
.L0044FC64:
/* 0044FC64 8F858070 */  lw    $a1, %got(RO_10019866)($gp)
/* 0044FC68 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0044FC6C 8EA40000 */  lw    $a0, ($s5)
/* 0044FC70 2406002C */  li    $a2, 44
/* 0044FC74 2407002C */  li    $a3, 44
/* 0044FC78 0320F809 */  jalr  $t9
/* 0044FC7C 24A59866 */   addiu $a1, %lo(RO_10019866) # addiu $a1, $a1, -0x679a
/* 0044FC80 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044FC84 8EA40000 */  lw    $a0, ($s5)
/* 0044FC88 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 0044FC8C 00000000 */  nop   
/* 0044FC90 0320F809 */  jalr  $t9
/* 0044FC94 00000000 */   nop   
/* 0044FC98 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044FC9C 00139080 */  sll   $s2, $s3, 2
/* 0044FCA0 8F998AEC */  lw     $t9, %got(seg_ic)($gp)
/* 0044FCA4 02539023 */  subu  $s2, $s2, $s3
/* 0044FCA8 8F390000 */  lw    $t9, ($t9)
/* 0044FCAC 00129080 */  sll   $s2, $s2, 2
/* 0044FCB0 03365021 */  addu  $t2, $t9, $s6
/* 0044FCB4 8D510000 */  lw    $s1, ($t2)
/* 0044FCB8 0000A025 */  move  $s4, $zero
/* 0044FCBC 00114882 */  srl   $t1, $s1, 2
/* 0044FCC0 2531FFFF */  addiu $s1, $t1, -1
/* 0044FCC4 06200013 */  bltz  $s1, .L0044FD14
/* 0044FCC8 00008025 */   move  $s0, $zero
/* 0044FCCC 02539023 */  subu  $s2, $s2, $s3
/* 0044FCD0 00129080 */  sll   $s2, $s2, 2
/* 0044FCD4 26310001 */  addiu $s1, $s1, 1
.L0044FCD8:
/* 0044FCD8 8F8B8AE0 */  lw     $t3, %got(memory)($gp)
/* 0044FCDC 8F9985E4 */  lw    $t9, %call16(disasm_text)($gp)
/* 0044FCE0 8D6B0000 */  lw    $t3, ($t3)
/* 0044FCE4 93C70000 */  lbu   $a3, ($fp)
/* 0044FCE8 01726021 */  addu  $t4, $t3, $s2
/* 0044FCEC 8D980000 */  lw    $t8, ($t4)
/* 0044FCF0 02A02025 */  move  $a0, $s5
/* 0044FCF4 03107821 */  addu  $t7, $t8, $s0
/* 0044FCF8 8DE60000 */  lw    $a2, ($t7)
/* 0044FCFC 0320F809 */  jalr  $t9
/* 0044FD00 02802825 */   move  $a1, $s4
/* 0044FD04 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044FD08 26940001 */  addiu $s4, $s4, 1
/* 0044FD0C 1691FFF2 */  bne   $s4, $s1, .L0044FCD8
/* 0044FD10 26100004 */   addiu $s0, $s0, 4
.L0044FD14:
/* 0044FD14 8FAE0114 */  lw    $t6, 0x114($sp)
/* 0044FD18 26730001 */  addiu $s3, $s3, 1
/* 0044FD1C 166EFFD1 */  bne   $s3, $t6, .L0044FC64
/* 0044FD20 26D60004 */   addiu $s6, $s6, 4
.L0044FD24:
/* 0044FD24 8F888070 */  lw    $t0, %got(RO_10019846)($gp)
/* 0044FD28 240A0009 */  li    $t2, 9
/* 0044FD2C 25089846 */  addiu $t0, %lo(RO_10019846) # addiu $t0, $t0, -0x67ba
/* 0044FD30 89010000 */  lwl   $at, ($t0)
/* 0044FD34 99010003 */  lwr   $at, 3($t0)
/* 0044FD38 27A20330 */  addiu $v0, $sp, 0x330
/* 0044FD3C ABA10000 */  swl   $at, ($sp)
/* 0044FD40 BBA10003 */  swr   $at, 3($sp)
/* 0044FD44 89190004 */  lwl   $t9, 4($t0)
/* 0044FD48 99190007 */  lwr   $t9, 7($t0)
/* 0044FD4C 8FA40000 */  lw    $a0, ($sp)
/* 0044FD50 ABB90004 */  swl   $t9, 4($sp)
/* 0044FD54 BBB90007 */  swr   $t9, 7($sp)
/* 0044FD58 89010008 */  lwl   $at, 8($t0)
/* 0044FD5C 9901000B */  lwr   $at, 0xb($t0)
/* 0044FD60 8FA50004 */  lw    $a1, 4($sp)
/* 0044FD64 ABA10008 */  swl   $at, 8($sp)
/* 0044FD68 BBA1000B */  swr   $at, 0xb($sp)
/* 0044FD6C 8919000C */  lwl   $t9, 0xc($t0)
/* 0044FD70 9919000F */  lwr   $t9, 0xf($t0)
/* 0044FD74 8FA60008 */  lw    $a2, 8($sp)
/* 0044FD78 ABB9000C */  swl   $t9, 0xc($sp)
/* 0044FD7C BBB9000F */  swr   $t9, 0xf($sp)
/* 0044FD80 89010010 */  lwl   $at, 0x10($t0)
/* 0044FD84 99010013 */  lwr   $at, 0x13($t0)
/* 0044FD88 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044FD8C ABA10010 */  swl   $at, 0x10($sp)
/* 0044FD90 BBA10013 */  swr   $at, 0x13($sp)
/* 0044FD94 89190014 */  lwl   $t9, 0x14($t0)
/* 0044FD98 99190017 */  lwr   $t9, 0x17($t0)
/* 0044FD9C 00000000 */  nop   
/* 0044FDA0 ABB90014 */  swl   $t9, 0x14($sp)
/* 0044FDA4 BBB90017 */  swr   $t9, 0x17($sp)
/* 0044FDA8 89010018 */  lwl   $at, 0x18($t0)
/* 0044FDAC 9901001B */  lwr   $at, 0x1b($t0)
/* 0044FDB0 00000000 */  nop   
/* 0044FDB4 ABA10018 */  swl   $at, 0x18($sp)
/* 0044FDB8 BBA1001B */  swr   $at, 0x1b($sp)
/* 0044FDBC 8919001C */  lwl   $t9, 0x1c($t0)
/* 0044FDC0 9919001F */  lwr   $t9, 0x1f($t0)
/* 0044FDC4 AFAA0020 */  sw    $t2, 0x20($sp)
/* 0044FDC8 ABB9001C */  swl   $t9, 0x1c($sp)
/* 0044FDCC BBB9001F */  swr   $t9, 0x1f($sp)
/* 0044FDD0 8F998028 */  lw    $t9, %got(func_0044CFAC)($gp)
/* 0044FDD4 00000000 */  nop   
/* 0044FDD8 2739CFAC */  addiu $t9, %lo(func_0044CFAC) # addiu $t9, $t9, -0x3054
/* 0044FDDC 0320F809 */  jalr  $t9
/* 0044FDE0 00000000 */   nop   
/* 0044FDE4 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044FDE8 24180002 */  li    $t8, 2
/* 0044FDEC 8F898070 */  lw    $t1, %got(RO_10019826)($gp)
/* 0044FDF0 8F998028 */  lw    $t9, %got(func_0044CFAC)($gp)
/* 0044FDF4 25299826 */  addiu $t1, %lo(RO_10019826) # addiu $t1, $t1, -0x67da
/* 0044FDF8 89210000 */  lwl   $at, ($t1)
/* 0044FDFC 99210003 */  lwr   $at, 3($t1)
/* 0044FE00 2739CFAC */  addiu $t9, %lo(func_0044CFAC) # addiu $t9, $t9, -0x3054
/* 0044FE04 ABA10000 */  swl   $at, ($sp)
/* 0044FE08 BBA10003 */  swr   $at, 3($sp)
/* 0044FE0C 892C0004 */  lwl   $t4, 4($t1)
/* 0044FE10 992C0007 */  lwr   $t4, 7($t1)
/* 0044FE14 8FA40000 */  lw    $a0, ($sp)
/* 0044FE18 ABAC0004 */  swl   $t4, 4($sp)
/* 0044FE1C BBAC0007 */  swr   $t4, 7($sp)
/* 0044FE20 89210008 */  lwl   $at, 8($t1)
/* 0044FE24 9921000B */  lwr   $at, 0xb($t1)
/* 0044FE28 8FA50004 */  lw    $a1, 4($sp)
/* 0044FE2C ABA10008 */  swl   $at, 8($sp)
/* 0044FE30 BBA1000B */  swr   $at, 0xb($sp)
/* 0044FE34 892C000C */  lwl   $t4, 0xc($t1)
/* 0044FE38 992C000F */  lwr   $t4, 0xf($t1)
/* 0044FE3C 8FA60008 */  lw    $a2, 8($sp)
/* 0044FE40 ABAC000C */  swl   $t4, 0xc($sp)
/* 0044FE44 BBAC000F */  swr   $t4, 0xf($sp)
/* 0044FE48 89210010 */  lwl   $at, 0x10($t1)
/* 0044FE4C 99210013 */  lwr   $at, 0x13($t1)
/* 0044FE50 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044FE54 ABA10010 */  swl   $at, 0x10($sp)
/* 0044FE58 BBA10013 */  swr   $at, 0x13($sp)
/* 0044FE5C 892C0014 */  lwl   $t4, 0x14($t1)
/* 0044FE60 992C0017 */  lwr   $t4, 0x17($t1)
/* 0044FE64 27A20330 */  addiu $v0, $sp, 0x330
/* 0044FE68 ABAC0014 */  swl   $t4, 0x14($sp)
/* 0044FE6C BBAC0017 */  swr   $t4, 0x17($sp)
/* 0044FE70 89210018 */  lwl   $at, 0x18($t1)
/* 0044FE74 9921001B */  lwr   $at, 0x1b($t1)
/* 0044FE78 00000000 */  nop   
/* 0044FE7C ABA10018 */  swl   $at, 0x18($sp)
/* 0044FE80 BBA1001B */  swr   $at, 0x1b($sp)
/* 0044FE84 892C001C */  lwl   $t4, 0x1c($t1)
/* 0044FE88 992C001F */  lwr   $t4, 0x1f($t1)
/* 0044FE8C AFB80020 */  sw    $t8, 0x20($sp)
/* 0044FE90 ABAC001C */  swl   $t4, 0x1c($sp)
/* 0044FE94 0320F809 */  jalr  $t9
/* 0044FE98 BBAC001F */   swr   $t4, 0x1f($sp)
/* 0044FE9C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044FEA0 00000000 */  nop   
/* 0044FEA4 8F8F8CB4 */  lw     $t7, %got(excpt_opt)($gp)
/* 0044FEA8 00000000 */  nop   
/* 0044FEAC 91EF0000 */  lbu   $t7, ($t7)
/* 0044FEB0 00000000 */  nop   
/* 0044FEB4 11E0005F */  beqz  $t7, .L00450034
/* 0044FEB8 00000000 */   nop   
/* 0044FEBC 8F8E8070 */  lw    $t6, %got(RO_10019806)($gp)
/* 0044FEC0 24190007 */  li    $t9, 7
/* 0044FEC4 25CE9806 */  addiu $t6, %lo(RO_10019806) # addiu $t6, $t6, -0x67fa
/* 0044FEC8 89C10000 */  lwl   $at, ($t6)
/* 0044FECC 99C10003 */  lwr   $at, 3($t6)
/* 0044FED0 27A20330 */  addiu $v0, $sp, 0x330
/* 0044FED4 ABA10000 */  swl   $at, ($sp)
/* 0044FED8 BBA10003 */  swr   $at, 3($sp)
/* 0044FEDC 89C80004 */  lwl   $t0, 4($t6)
/* 0044FEE0 99C80007 */  lwr   $t0, 7($t6)
/* 0044FEE4 8FA40000 */  lw    $a0, ($sp)
/* 0044FEE8 ABA80004 */  swl   $t0, 4($sp)
/* 0044FEEC BBA80007 */  swr   $t0, 7($sp)
/* 0044FEF0 89C10008 */  lwl   $at, 8($t6)
/* 0044FEF4 99C1000B */  lwr   $at, 0xb($t6)
/* 0044FEF8 8FA50004 */  lw    $a1, 4($sp)
/* 0044FEFC ABA10008 */  swl   $at, 8($sp)
/* 0044FF00 BBA1000B */  swr   $at, 0xb($sp)
/* 0044FF04 89C8000C */  lwl   $t0, 0xc($t6)
/* 0044FF08 99C8000F */  lwr   $t0, 0xf($t6)
/* 0044FF0C 8FA60008 */  lw    $a2, 8($sp)
/* 0044FF10 ABA8000C */  swl   $t0, 0xc($sp)
/* 0044FF14 BBA8000F */  swr   $t0, 0xf($sp)
/* 0044FF18 89C10010 */  lwl   $at, 0x10($t6)
/* 0044FF1C 99C10013 */  lwr   $at, 0x13($t6)
/* 0044FF20 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044FF24 ABA10010 */  swl   $at, 0x10($sp)
/* 0044FF28 BBA10013 */  swr   $at, 0x13($sp)
/* 0044FF2C 89C80014 */  lwl   $t0, 0x14($t6)
/* 0044FF30 99C80017 */  lwr   $t0, 0x17($t6)
/* 0044FF34 00000000 */  nop   
/* 0044FF38 ABA80014 */  swl   $t0, 0x14($sp)
/* 0044FF3C BBA80017 */  swr   $t0, 0x17($sp)
/* 0044FF40 89C10018 */  lwl   $at, 0x18($t6)
/* 0044FF44 99C1001B */  lwr   $at, 0x1b($t6)
/* 0044FF48 00000000 */  nop   
/* 0044FF4C ABA10018 */  swl   $at, 0x18($sp)
/* 0044FF50 BBA1001B */  swr   $at, 0x1b($sp)
/* 0044FF54 89C8001C */  lwl   $t0, 0x1c($t6)
/* 0044FF58 99C8001F */  lwr   $t0, 0x1f($t6)
/* 0044FF5C AFB90020 */  sw    $t9, 0x20($sp)
/* 0044FF60 8F998028 */  lw    $t9, %got(func_0044CFAC)($gp)
/* 0044FF64 ABA8001C */  swl   $t0, 0x1c($sp)
/* 0044FF68 2739CFAC */  addiu $t9, %lo(func_0044CFAC) # addiu $t9, $t9, -0x3054
/* 0044FF6C 0320F809 */  jalr  $t9
/* 0044FF70 BBA8001F */   swr   $t0, 0x1f($sp)
/* 0044FF74 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0044FF78 240C0008 */  li    $t4, 8
/* 0044FF7C 8F8A8070 */  lw    $t2, %got(RO_100197E6)($gp)
/* 0044FF80 8F998028 */  lw    $t9, %got(func_0044CFAC)($gp)
/* 0044FF84 254A97E6 */  addiu $t2, %lo(RO_100197E6) # addiu $t2, $t2, -0x681a
/* 0044FF88 89410000 */  lwl   $at, ($t2)
/* 0044FF8C 99410003 */  lwr   $at, 3($t2)
/* 0044FF90 2739CFAC */  addiu $t9, %lo(func_0044CFAC) # addiu $t9, $t9, -0x3054
/* 0044FF94 ABA10000 */  swl   $at, ($sp)
/* 0044FF98 BBA10003 */  swr   $at, 3($sp)
/* 0044FF9C 89490004 */  lwl   $t1, 4($t2)
/* 0044FFA0 99490007 */  lwr   $t1, 7($t2)
/* 0044FFA4 8FA40000 */  lw    $a0, ($sp)
/* 0044FFA8 ABA90004 */  swl   $t1, 4($sp)
/* 0044FFAC BBA90007 */  swr   $t1, 7($sp)
/* 0044FFB0 89410008 */  lwl   $at, 8($t2)
/* 0044FFB4 9941000B */  lwr   $at, 0xb($t2)
/* 0044FFB8 8FA50004 */  lw    $a1, 4($sp)
/* 0044FFBC ABA10008 */  swl   $at, 8($sp)
/* 0044FFC0 BBA1000B */  swr   $at, 0xb($sp)
/* 0044FFC4 8949000C */  lwl   $t1, 0xc($t2)
/* 0044FFC8 9949000F */  lwr   $t1, 0xf($t2)
/* 0044FFCC 8FA60008 */  lw    $a2, 8($sp)
/* 0044FFD0 ABA9000C */  swl   $t1, 0xc($sp)
/* 0044FFD4 BBA9000F */  swr   $t1, 0xf($sp)
/* 0044FFD8 89410010 */  lwl   $at, 0x10($t2)
/* 0044FFDC 99410013 */  lwr   $at, 0x13($t2)
/* 0044FFE0 8FA7000C */  lw    $a3, 0xc($sp)
/* 0044FFE4 ABA10010 */  swl   $at, 0x10($sp)
/* 0044FFE8 BBA10013 */  swr   $at, 0x13($sp)
/* 0044FFEC 89490014 */  lwl   $t1, 0x14($t2)
/* 0044FFF0 99490017 */  lwr   $t1, 0x17($t2)
/* 0044FFF4 27A20330 */  addiu $v0, $sp, 0x330
/* 0044FFF8 ABA90014 */  swl   $t1, 0x14($sp)
/* 0044FFFC BBA90017 */  swr   $t1, 0x17($sp)
/* 00450000 89410018 */  lwl   $at, 0x18($t2)
/* 00450004 9941001B */  lwr   $at, 0x1b($t2)
/* 00450008 00000000 */  nop   
/* 0045000C ABA10018 */  swl   $at, 0x18($sp)
/* 00450010 BBA1001B */  swr   $at, 0x1b($sp)
/* 00450014 8949001C */  lwl   $t1, 0x1c($t2)
/* 00450018 9949001F */  lwr   $t1, 0x1f($t2)
/* 0045001C AFAC0020 */  sw    $t4, 0x20($sp)
/* 00450020 ABA9001C */  swl   $t1, 0x1c($sp)
/* 00450024 0320F809 */  jalr  $t9
/* 00450028 BBA9001F */   swr   $t1, 0x1f($sp)
/* 0045002C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450030 00000000 */  nop   
.L00450034:
/* 00450034 8F988070 */  lw    $t8, %got(RO_100197C6)($gp)
/* 00450038 8F998028 */  lw    $t9, %got(func_0044CFAC)($gp)
/* 0045003C 271897C6 */  addiu $t8, %lo(RO_100197C6) # addiu $t8, $t8, -0x683a
/* 00450040 8B010000 */  lwl   $at, ($t8)
/* 00450044 9B010003 */  lwr   $at, 3($t8)
/* 00450048 240E0006 */  li    $t6, 6
/* 0045004C ABA10000 */  swl   $at, ($sp)
/* 00450050 BBA10003 */  swr   $at, 3($sp)
/* 00450054 8B0D0004 */  lwl   $t5, 4($t8)
/* 00450058 9B0D0007 */  lwr   $t5, 7($t8)
/* 0045005C 8FA40000 */  lw    $a0, ($sp)
/* 00450060 ABAD0004 */  swl   $t5, 4($sp)
/* 00450064 BBAD0007 */  swr   $t5, 7($sp)
/* 00450068 8B010008 */  lwl   $at, 8($t8)
/* 0045006C 9B01000B */  lwr   $at, 0xb($t8)
/* 00450070 8FA50004 */  lw    $a1, 4($sp)
/* 00450074 ABA10008 */  swl   $at, 8($sp)
/* 00450078 BBA1000B */  swr   $at, 0xb($sp)
/* 0045007C 8B0D000C */  lwl   $t5, 0xc($t8)
/* 00450080 9B0D000F */  lwr   $t5, 0xf($t8)
/* 00450084 8FA60008 */  lw    $a2, 8($sp)
/* 00450088 ABAD000C */  swl   $t5, 0xc($sp)
/* 0045008C BBAD000F */  swr   $t5, 0xf($sp)
/* 00450090 8B010010 */  lwl   $at, 0x10($t8)
/* 00450094 9B010013 */  lwr   $at, 0x13($t8)
/* 00450098 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045009C ABA10010 */  swl   $at, 0x10($sp)
/* 004500A0 BBA10013 */  swr   $at, 0x13($sp)
/* 004500A4 8B0D0014 */  lwl   $t5, 0x14($t8)
/* 004500A8 9B0D0017 */  lwr   $t5, 0x17($t8)
/* 004500AC 2739CFAC */  addiu $t9, %lo(func_0044CFAC) # addiu $t9, $t9, -0x3054
/* 004500B0 ABAD0014 */  swl   $t5, 0x14($sp)
/* 004500B4 BBAD0017 */  swr   $t5, 0x17($sp)
/* 004500B8 8B010018 */  lwl   $at, 0x18($t8)
/* 004500BC 9B01001B */  lwr   $at, 0x1b($t8)
/* 004500C0 27A20330 */  addiu $v0, $sp, 0x330
/* 004500C4 ABA10018 */  swl   $at, 0x18($sp)
/* 004500C8 BBA1001B */  swr   $at, 0x1b($sp)
/* 004500CC 8B0D001C */  lwl   $t5, 0x1c($t8)
/* 004500D0 9B0D001F */  lwr   $t5, 0x1f($t8)
/* 004500D4 AFAE0020 */  sw    $t6, 0x20($sp)
/* 004500D8 ABAD001C */  swl   $t5, 0x1c($sp)
/* 004500DC 0320F809 */  jalr  $t9
/* 004500E0 BBAD001F */   swr   $t5, 0x1f($sp)
/* 004500E4 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 004500E8 240A0005 */  li    $t2, 5
/* 004500EC 8F888070 */  lw    $t0, %got(RO_100197A6)($gp)
/* 004500F0 8F998028 */  lw    $t9, %got(func_0044CFAC)($gp)
/* 004500F4 250897A6 */  addiu $t0, %lo(RO_100197A6) # addiu $t0, $t0, -0x685a
/* 004500F8 89010000 */  lwl   $at, ($t0)
/* 004500FC 99010003 */  lwr   $at, 3($t0)
/* 00450100 2739CFAC */  addiu $t9, %lo(func_0044CFAC) # addiu $t9, $t9, -0x3054
/* 00450104 ABA10000 */  swl   $at, ($sp)
/* 00450108 BBA10003 */  swr   $at, 3($sp)
/* 0045010C 890B0004 */  lwl   $t3, 4($t0)
/* 00450110 990B0007 */  lwr   $t3, 7($t0)
/* 00450114 8FA40000 */  lw    $a0, ($sp)
/* 00450118 ABAB0004 */  swl   $t3, 4($sp)
/* 0045011C BBAB0007 */  swr   $t3, 7($sp)
/* 00450120 89010008 */  lwl   $at, 8($t0)
/* 00450124 9901000B */  lwr   $at, 0xb($t0)
/* 00450128 8FA50004 */  lw    $a1, 4($sp)
/* 0045012C ABA10008 */  swl   $at, 8($sp)
/* 00450130 BBA1000B */  swr   $at, 0xb($sp)
/* 00450134 890B000C */  lwl   $t3, 0xc($t0)
/* 00450138 990B000F */  lwr   $t3, 0xf($t0)
/* 0045013C 8FA60008 */  lw    $a2, 8($sp)
/* 00450140 ABAB000C */  swl   $t3, 0xc($sp)
/* 00450144 BBAB000F */  swr   $t3, 0xf($sp)
/* 00450148 89010010 */  lwl   $at, 0x10($t0)
/* 0045014C 99010013 */  lwr   $at, 0x13($t0)
/* 00450150 8FA7000C */  lw    $a3, 0xc($sp)
/* 00450154 ABA10010 */  swl   $at, 0x10($sp)
/* 00450158 BBA10013 */  swr   $at, 0x13($sp)
/* 0045015C 890B0014 */  lwl   $t3, 0x14($t0)
/* 00450160 990B0017 */  lwr   $t3, 0x17($t0)
/* 00450164 27A20330 */  addiu $v0, $sp, 0x330
/* 00450168 ABAB0014 */  swl   $t3, 0x14($sp)
/* 0045016C BBAB0017 */  swr   $t3, 0x17($sp)
/* 00450170 89010018 */  lwl   $at, 0x18($t0)
/* 00450174 9901001B */  lwr   $at, 0x1b($t0)
/* 00450178 00000000 */  nop   
/* 0045017C ABA10018 */  swl   $at, 0x18($sp)
/* 00450180 BBA1001B */  swr   $at, 0x1b($sp)
/* 00450184 890B001C */  lwl   $t3, 0x1c($t0)
/* 00450188 990B001F */  lwr   $t3, 0x1f($t0)
/* 0045018C AFAA0020 */  sw    $t2, 0x20($sp)
/* 00450190 ABAB001C */  swl   $t3, 0x1c($sp)
/* 00450194 0320F809 */  jalr  $t9
/* 00450198 BBAB001F */   swr   $t3, 0x1f($sp)
/* 0045019C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 004501A0 24180001 */  li    $t8, 1
/* 004501A4 8F898070 */  lw    $t1, %got(RO_10019786)($gp)
/* 004501A8 8F998028 */  lw    $t9, %got(func_0044CFAC)($gp)
/* 004501AC 25299786 */  addiu $t1, %lo(RO_10019786) # addiu $t1, $t1, -0x687a
/* 004501B0 89210000 */  lwl   $at, ($t1)
/* 004501B4 99210003 */  lwr   $at, 3($t1)
/* 004501B8 2739CFAC */  addiu $t9, %lo(func_0044CFAC) # addiu $t9, $t9, -0x3054
/* 004501BC ABA10000 */  swl   $at, ($sp)
/* 004501C0 BBA10003 */  swr   $at, 3($sp)
/* 004501C4 892F0004 */  lwl   $t7, 4($t1)
/* 004501C8 992F0007 */  lwr   $t7, 7($t1)
/* 004501CC 8FA40000 */  lw    $a0, ($sp)
/* 004501D0 ABAF0004 */  swl   $t7, 4($sp)
/* 004501D4 BBAF0007 */  swr   $t7, 7($sp)
/* 004501D8 89210008 */  lwl   $at, 8($t1)
/* 004501DC 9921000B */  lwr   $at, 0xb($t1)
/* 004501E0 8FA50004 */  lw    $a1, 4($sp)
/* 004501E4 ABA10008 */  swl   $at, 8($sp)
/* 004501E8 BBA1000B */  swr   $at, 0xb($sp)
/* 004501EC 892F000C */  lwl   $t7, 0xc($t1)
/* 004501F0 992F000F */  lwr   $t7, 0xf($t1)
/* 004501F4 8FA60008 */  lw    $a2, 8($sp)
/* 004501F8 ABAF000C */  swl   $t7, 0xc($sp)
/* 004501FC BBAF000F */  swr   $t7, 0xf($sp)
/* 00450200 89210010 */  lwl   $at, 0x10($t1)
/* 00450204 99210013 */  lwr   $at, 0x13($t1)
/* 00450208 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045020C ABA10010 */  swl   $at, 0x10($sp)
/* 00450210 BBA10013 */  swr   $at, 0x13($sp)
/* 00450214 892F0014 */  lwl   $t7, 0x14($t1)
/* 00450218 992F0017 */  lwr   $t7, 0x17($t1)
/* 0045021C 27A20330 */  addiu $v0, $sp, 0x330
/* 00450220 ABAF0014 */  swl   $t7, 0x14($sp)
/* 00450224 BBAF0017 */  swr   $t7, 0x17($sp)
/* 00450228 89210018 */  lwl   $at, 0x18($t1)
/* 0045022C 9921001B */  lwr   $at, 0x1b($t1)
/* 00450230 00000000 */  nop   
/* 00450234 ABA10018 */  swl   $at, 0x18($sp)
/* 00450238 BBA1001B */  swr   $at, 0x1b($sp)
/* 0045023C 892F001C */  lwl   $t7, 0x1c($t1)
/* 00450240 992F001F */  lwr   $t7, 0x1f($t1)
/* 00450244 AFB80020 */  sw    $t8, 0x20($sp)
/* 00450248 ABAF001C */  swl   $t7, 0x1c($sp)
/* 0045024C 0320F809 */  jalr  $t9
/* 00450250 BBAF001F */   swr   $t7, 0x1f($sp)
/* 00450254 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450258 8EA40000 */  lw    $a0, ($s5)
/* 0045025C 8F918D0C */  lw     $s1, %got(lastsym)($gp)
/* 00450260 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 00450264 8E310000 */  lw    $s1, ($s1)
/* 00450268 0320F809 */  jalr  $t9
/* 0045026C 00000000 */   nop   
/* 00450270 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450274 8EA40000 */  lw    $a0, ($s5)
/* 00450278 8F858070 */  lw    $a1, %got(RO_10019746)($gp)
/* 0045027C 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 00450280 24060040 */  li    $a2, 64
/* 00450284 24070040 */  li    $a3, 64
/* 00450288 0320F809 */  jalr  $t9
/* 0045028C 24A59746 */   addiu $a1, %lo(RO_10019746) # addiu $a1, $a1, -0x68ba
/* 00450290 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450294 8EA40000 */  lw    $a0, ($s5)
/* 00450298 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 0045029C 00000000 */  nop   
/* 004502A0 0320F809 */  jalr  $t9
/* 004502A4 00000000 */   nop   
/* 004502A8 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 004502AC 8EA40000 */  lw    $a0, ($s5)
/* 004502B0 8F858070 */  lw    $a1, %got(RO_100196F7)($gp)
/* 004502B4 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 004502B8 2406004F */  li    $a2, 79
/* 004502BC 2407004F */  li    $a3, 79
/* 004502C0 0320F809 */  jalr  $t9
/* 004502C4 24A596F7 */   addiu $a1, %lo(RO_100196F7) # addiu $a1, $a1, -0x6909
/* 004502C8 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 004502CC 8EA40000 */  lw    $a0, ($s5)
/* 004502D0 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 004502D4 00000000 */  nop   
/* 004502D8 0320F809 */  jalr  $t9
/* 004502DC 00000000 */   nop   
/* 004502E0 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 004502E4 122000E8 */  beqz  $s1, .L00450688
/* 004502E8 00000000 */   nop   
.L004502EC:
/* 004502EC 8E2D0014 */  lw    $t5, 0x14($s1)
/* 004502F0 24050017 */  li    $a1, 23
/* 004502F4 11A000E0 */  beqz  $t5, .L00450678
/* 004502F8 27A20330 */   addiu $v0, $sp, 0x330
/* 004502FC 8F998028 */  lw    $t9, %got(func_0044D2AC)($gp)
/* 00450300 8E24000C */  lw    $a0, 0xc($s1)
/* 00450304 2739D2AC */  addiu $t9, %lo(func_0044D2AC) # addiu $t9, $t9, -0x2d54
/* 00450308 0320F809 */  jalr  $t9
/* 0045030C AFA40000 */   sw    $a0, ($sp)
/* 00450310 8E2B0030 */  lw    $t3, 0x30($s1)
/* 00450314 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450318 000B5080 */  sll   $t2, $t3, 2
/* 0045031C 8F888AE0 */  lw     $t0, %got(memory)($gp)
/* 00450320 014B5023 */  subu  $t2, $t2, $t3
/* 00450324 000A5080 */  sll   $t2, $t2, 2
/* 00450328 8D080000 */  lw    $t0, ($t0)
/* 0045032C 014B5023 */  subu  $t2, $t2, $t3
/* 00450330 000A5080 */  sll   $t2, $t2, 2
/* 00450334 010A6021 */  addu  $t4, $t0, $t2
/* 00450338 91890008 */  lbu   $t1, 8($t4)
/* 0045033C 2401000F */  li    $at, 15
/* 00450340 1521005B */  bne   $t1, $at, .L004504B0
/* 00450344 24060001 */   li    $a2, 1
/* 00450348 8EB00000 */  lw    $s0, ($s5)
/* 0045034C 8F99869C */  lw    $t9, %call16(write_char)($gp)
/* 00450350 92250034 */  lbu   $a1, 0x34($s1)
/* 00450354 24060001 */  li    $a2, 1
/* 00450358 2407000A */  li    $a3, 10
/* 0045035C 0320F809 */  jalr  $t9
/* 00450360 02002025 */   move  $a0, $s0
/* 00450364 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450368 02002025 */  move  $a0, $s0
/* 0045036C 8F858070 */  lw    $a1, %got(RO_100196F5)($gp)
/* 00450370 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 00450374 24060002 */  li    $a2, 2
/* 00450378 24070002 */  li    $a3, 2
/* 0045037C 0320F809 */  jalr  $t9
/* 00450380 24A596F5 */   addiu $a1, %lo(RO_100196F5) # addiu $a1, $a1, -0x690b
/* 00450384 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450388 922F0035 */  lbu   $t7, 0x35($s1)
/* 0045038C 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 00450390 8EA40000 */  lw    $a0, ($s5)
/* 00450394 27AD01C4 */  addiu $t5, $sp, 0x1c4
/* 00450398 000FC0C0 */  sll   $t8, $t7, 3
/* 0045039C 030D2821 */  addu  $a1, $t8, $t5
/* 004503A0 24060008 */  li    $a2, 8
/* 004503A4 0320F809 */  jalr  $t9
/* 004503A8 24070005 */   li    $a3, 5
/* 004503AC 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 004503B0 8EB00000 */  lw    $s0, ($s5)
/* 004503B4 8F99869C */  lw    $t9, %call16(write_char)($gp)
/* 004503B8 24050020 */  li    $a1, 32
/* 004503BC 24060001 */  li    $a2, 1
/* 004503C0 2407000A */  li    $a3, 10
/* 004503C4 0320F809 */  jalr  $t9
/* 004503C8 02002025 */   move  $a0, $s0
/* 004503CC 922E0037 */  lbu   $t6, 0x37($s1)
/* 004503D0 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 004503D4 27AB01C4 */  addiu $t3, $sp, 0x1c4
/* 004503D8 000EC8C0 */  sll   $t9, $t6, 3
/* 004503DC 032B2821 */  addu  $a1, $t9, $t3
/* 004503E0 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 004503E4 02002025 */  move  $a0, $s0
/* 004503E8 24060008 */  li    $a2, 8
/* 004503EC 0320F809 */  jalr  $t9
/* 004503F0 24070005 */   li    $a3, 5
/* 004503F4 8E2A0030 */  lw    $t2, 0x30($s1)
/* 004503F8 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 004503FC 000A6080 */  sll   $t4, $t2, 2
/* 00450400 8F888AE0 */  lw     $t0, %got(memory)($gp)
/* 00450404 018A6023 */  subu  $t4, $t4, $t2
/* 00450408 000C6080 */  sll   $t4, $t4, 2
/* 0045040C 8D080000 */  lw    $t0, ($t0)
/* 00450410 018A6023 */  subu  $t4, $t4, $t2
/* 00450414 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 00450418 000C6080 */  sll   $t4, $t4, 2
/* 0045041C 8EA40000 */  lw    $a0, ($s5)
/* 00450420 010C2821 */  addu  $a1, $t0, $t4
/* 00450424 24A50009 */  addiu $a1, $a1, 9
/* 00450428 24060020 */  li    $a2, 32
/* 0045042C 0320F809 */  jalr  $t9
/* 00450430 24070006 */   li    $a3, 6
/* 00450434 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450438 8EA40000 */  lw    $a0, ($s5)
/* 0045043C 8F9986A4 */  lw    $t9, %call16(write_integer)($gp)
/* 00450440 8E250014 */  lw    $a1, 0x14($s1)
/* 00450444 24060006 */  li    $a2, 6
/* 00450448 0320F809 */  jalr  $t9
/* 0045044C 2407000A */   li    $a3, 10
/* 00450450 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450454 8EA40000 */  lw    $a0, ($s5)
/* 00450458 8F9986A4 */  lw    $t9, %call16(write_integer)($gp)
/* 0045045C 8E250018 */  lw    $a1, 0x18($s1)
/* 00450460 24060006 */  li    $a2, 6
/* 00450464 0320F809 */  jalr  $t9
/* 00450468 2407000A */   li    $a3, 10
/* 0045046C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450470 8EA40000 */  lw    $a0, ($s5)
/* 00450474 8F9986A4 */  lw    $t9, %call16(write_integer)($gp)
/* 00450478 8E250020 */  lw    $a1, 0x20($s1)
/* 0045047C 24060006 */  li    $a2, 6
/* 00450480 0320F809 */  jalr  $t9
/* 00450484 2407000A */   li    $a3, 10
/* 00450488 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0045048C 8EA40000 */  lw    $a0, ($s5)
/* 00450490 8F9986A4 */  lw    $t9, %call16(write_integer)($gp)
/* 00450494 8E25001C */  lw    $a1, 0x1c($s1)
/* 00450498 24060006 */  li    $a2, 6
/* 0045049C 0320F809 */  jalr  $t9
/* 004504A0 2407000A */   li    $a3, 10
/* 004504A4 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 004504A8 1000005C */  b     .L0045061C
/* 004504AC 00000000 */   nop   
.L004504B0:
/* 004504B0 8EB00000 */  lw    $s0, ($s5)
/* 004504B4 8F99869C */  lw    $t9, %call16(write_char)($gp)
/* 004504B8 92250034 */  lbu   $a1, 0x34($s1)
/* 004504BC 2407000A */  li    $a3, 10
/* 004504C0 0320F809 */  jalr  $t9
/* 004504C4 02002025 */   move  $a0, $s0
/* 004504C8 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 004504CC 02002025 */  move  $a0, $s0
/* 004504D0 8F858070 */  lw    $a1, %got(RO_100196F3)($gp)
/* 004504D4 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 004504D8 24060002 */  li    $a2, 2
/* 004504DC 24070002 */  li    $a3, 2
/* 004504E0 0320F809 */  jalr  $t9
/* 004504E4 24A596F3 */   addiu $a1, %lo(RO_100196F3) # addiu $a1, $a1, -0x690d
/* 004504E8 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 004504EC 92290035 */  lbu   $t1, 0x35($s1)
/* 004504F0 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 004504F4 8EA40000 */  lw    $a0, ($s5)
/* 004504F8 27B801C4 */  addiu $t8, $sp, 0x1c4
/* 004504FC 000978C0 */  sll   $t7, $t1, 3
/* 00450500 01F82821 */  addu  $a1, $t7, $t8
/* 00450504 24060008 */  li    $a2, 8
/* 00450508 0320F809 */  jalr  $t9
/* 0045050C 24070005 */   li    $a3, 5
/* 00450510 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450514 8EB00000 */  lw    $s0, ($s5)
/* 00450518 8F99869C */  lw    $t9, %call16(write_char)($gp)
/* 0045051C 24050020 */  li    $a1, 32
/* 00450520 24060001 */  li    $a2, 1
/* 00450524 2407000A */  li    $a3, 10
/* 00450528 0320F809 */  jalr  $t9
/* 0045052C 02002025 */   move  $a0, $s0
/* 00450530 922D0037 */  lbu   $t5, 0x37($s1)
/* 00450534 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450538 27B901C4 */  addiu $t9, $sp, 0x1c4
/* 0045053C 000D70C0 */  sll   $t6, $t5, 3
/* 00450540 01D92821 */  addu  $a1, $t6, $t9
/* 00450544 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 00450548 02002025 */  move  $a0, $s0
/* 0045054C 24060008 */  li    $a2, 8
/* 00450550 0320F809 */  jalr  $t9
/* 00450554 24070005 */   li    $a3, 5
/* 00450558 8E2A0030 */  lw    $t2, 0x30($s1)
/* 0045055C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450560 000A4080 */  sll   $t0, $t2, 2
/* 00450564 8F8B8AE0 */  lw     $t3, %got(memory)($gp)
/* 00450568 010A4023 */  subu  $t0, $t0, $t2
/* 0045056C 00084080 */  sll   $t0, $t0, 2
/* 00450570 8D6B0000 */  lw    $t3, ($t3)
/* 00450574 010A4023 */  subu  $t0, $t0, $t2
/* 00450578 00084080 */  sll   $t0, $t0, 2
/* 0045057C 01686021 */  addu  $t4, $t3, $t0
/* 00450580 91890008 */  lbu   $t1, 8($t4)
/* 00450584 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 00450588 8EA40000 */  lw    $a0, ($s5)
/* 0045058C 27B802A4 */  addiu $t8, $sp, 0x2a4
/* 00450590 000978C0 */  sll   $t7, $t1, 3
/* 00450594 01F82821 */  addu  $a1, $t7, $t8
/* 00450598 24060008 */  li    $a2, 8
/* 0045059C 0320F809 */  jalr  $t9
/* 004505A0 24070006 */   li    $a3, 6
/* 004505A4 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 004505A8 8EA40000 */  lw    $a0, ($s5)
/* 004505AC 8F9986A4 */  lw    $t9, %call16(write_integer)($gp)
/* 004505B0 8E250014 */  lw    $a1, 0x14($s1)
/* 004505B4 24060006 */  li    $a2, 6
/* 004505B8 0320F809 */  jalr  $t9
/* 004505BC 2407000A */   li    $a3, 10
/* 004505C0 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 004505C4 8EA40000 */  lw    $a0, ($s5)
/* 004505C8 8F9986A4 */  lw    $t9, %call16(write_integer)($gp)
/* 004505CC 8E250018 */  lw    $a1, 0x18($s1)
/* 004505D0 24060006 */  li    $a2, 6
/* 004505D4 0320F809 */  jalr  $t9
/* 004505D8 2407000A */   li    $a3, 10
/* 004505DC 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 004505E0 8EA40000 */  lw    $a0, ($s5)
/* 004505E4 8F9986A4 */  lw    $t9, %call16(write_integer)($gp)
/* 004505E8 8E250020 */  lw    $a1, 0x20($s1)
/* 004505EC 24060006 */  li    $a2, 6
/* 004505F0 0320F809 */  jalr  $t9
/* 004505F4 2407000A */   li    $a3, 10
/* 004505F8 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 004505FC 8EA40000 */  lw    $a0, ($s5)
/* 00450600 8F9986A4 */  lw    $t9, %call16(write_integer)($gp)
/* 00450604 8E25001C */  lw    $a1, 0x1c($s1)
/* 00450608 24060006 */  li    $a2, 6
/* 0045060C 0320F809 */  jalr  $t9
/* 00450610 2407000A */   li    $a3, 10
/* 00450614 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450618 00000000 */  nop   
.L0045061C:
/* 0045061C 8F99859C */  lw    $t9, %call16(wrhex)($gp)
/* 00450620 8E250010 */  lw    $a1, 0x10($s1)
/* 00450624 02A02025 */  move  $a0, $s5
/* 00450628 24060006 */  li    $a2, 6
/* 0045062C 0320F809 */  jalr  $t9
/* 00450630 24070020 */   li    $a3, 32
/* 00450634 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450638 8EA40000 */  lw    $a0, ($s5)
/* 0045063C 8F9986A4 */  lw    $t9, %call16(write_integer)($gp)
/* 00450640 8E250028 */  lw    $a1, 0x28($s1)
/* 00450644 24060006 */  li    $a2, 6
/* 00450648 0320F809 */  jalr  $t9
/* 0045064C 2407000A */   li    $a3, 10
/* 00450650 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450654 8EA40000 */  lw    $a0, ($s5)
/* 00450658 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 0045065C 00000000 */  nop   
/* 00450660 0320F809 */  jalr  $t9
/* 00450664 00000000 */   nop   
/* 00450668 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0045066C 8E310000 */  lw    $s1, ($s1)
/* 00450670 10000003 */  b     .L00450680
/* 00450674 00000000 */   nop   
.L00450678:
/* 00450678 8E310000 */  lw    $s1, ($s1)
/* 0045067C 00000000 */  nop   
.L00450680:
/* 00450680 1620FF1A */  bnez  $s1, .L004502EC
/* 00450684 00000000 */   nop   
.L00450688:
/* 00450688 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 0045068C 8EA40000 */  lw    $a0, ($s5)
/* 00450690 0320F809 */  jalr  $t9
/* 00450694 00000000 */   nop   
/* 00450698 8FB60124 */  lw    $s6, 0x124($sp)
/* 0045069C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 004506A0 06C00054 */  bltz  $s6, .L004507F4
/* 004506A4 26CD0001 */   addiu $t5, $s6, 1
/* 004506A8 000D7080 */  sll   $t6, $t5, 2
/* 004506AC 01CD7023 */  subu  $t6, $t6, $t5
/* 004506B0 000E7080 */  sll   $t6, $t6, 2
/* 004506B4 01CD7023 */  subu  $t6, $t6, $t5
/* 004506B8 8FB00328 */  lw    $s0, 0x328($sp)
/* 004506BC 8FB1032C */  lw    $s1, 0x32c($sp)
/* 004506C0 000EA080 */  sll   $s4, $t6, 2
/* 004506C4 AFAD011C */  sw    $t5, 0x11c($sp)
/* 004506C8 00009025 */  move  $s2, $zero
/* 004506CC AFB60124 */  sw    $s6, 0x124($sp)
.L004506D0:
/* 004506D0 8F998AE0 */  lw     $t9, %got(memory)($gp)
/* 004506D4 2401000F */  li    $at, 15
/* 004506D8 8F390000 */  lw    $t9, ($t9)
/* 004506DC 27AB02A4 */  addiu $t3, $sp, 0x2a4
/* 004506E0 03321021 */  addu  $v0, $t9, $s2
/* 004506E4 90430008 */  lbu   $v1, 8($v0)
/* 004506E8 24060008 */  li    $a2, 8
/* 004506EC 14610012 */  bne   $v1, $at, .L00450738
/* 004506F0 000350C0 */   sll   $t2, $v1, 3
/* 004506F4 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 004506F8 8EA40000 */  lw    $a0, ($s5)
/* 004506FC 24450009 */  addiu $a1, $v0, 9
/* 00450700 24060020 */  li    $a2, 32
/* 00450704 0320F809 */  jalr  $t9
/* 00450708 24070020 */   li    $a3, 32
/* 0045070C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450710 8EA40000 */  lw    $a0, ($s5)
/* 00450714 8F858070 */  lw    $a1, %got(RO_100196E9)($gp)
/* 00450718 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0045071C 2406000A */  li    $a2, 10
/* 00450720 2407000A */  li    $a3, 10
/* 00450724 0320F809 */  jalr  $t9
/* 00450728 24A596E9 */   addiu $a1, %lo(RO_100196E9) # addiu $a1, $a1, -0x6917
/* 0045072C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450730 10000010 */  b     .L00450774
/* 00450734 00000000 */   nop   
.L00450738:
/* 00450738 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0045073C 8EA40000 */  lw    $a0, ($s5)
/* 00450740 014B2821 */  addu  $a1, $t2, $t3
/* 00450744 0320F809 */  jalr  $t9
/* 00450748 24070008 */   li    $a3, 8
/* 0045074C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450750 8EA40000 */  lw    $a0, ($s5)
/* 00450754 8F858070 */  lw    $a1, %got(RO_100196DF)($gp)
/* 00450758 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0045075C 2406000A */  li    $a2, 10
/* 00450760 2407000A */  li    $a3, 10
/* 00450764 0320F809 */  jalr  $t9
/* 00450768 24A596DF */   addiu $a1, %lo(RO_100196DF) # addiu $a1, $a1, -0x6921
/* 0045076C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450770 00000000 */  nop   
.L00450774:
/* 00450774 8F99859C */  lw    $t9, %call16(wrhex)($gp)
/* 00450778 8E250000 */  lw    $a1, ($s1)
/* 0045077C 02A02025 */  move  $a0, $s5
/* 00450780 24060008 */  li    $a2, 8
/* 00450784 0320F809 */  jalr  $t9
/* 00450788 24070030 */   li    $a3, 48
/* 0045078C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450790 8EA40000 */  lw    $a0, ($s5)
/* 00450794 8F858070 */  lw    $a1, %got(RO_100196CD)($gp)
/* 00450798 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 0045079C 24060012 */  li    $a2, 18
/* 004507A0 24070012 */  li    $a3, 18
/* 004507A4 0320F809 */  jalr  $t9
/* 004507A8 24A596CD */   addiu $a1, %lo(RO_100196CD) # addiu $a1, $a1, -0x6933
/* 004507AC 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 004507B0 8EA40000 */  lw    $a0, ($s5)
/* 004507B4 8F9986A8 */  lw    $t9, %call16(write_cardinal)($gp)
/* 004507B8 8E050000 */  lw    $a1, ($s0)
/* 004507BC 24060008 */  li    $a2, 8
/* 004507C0 0320F809 */  jalr  $t9
/* 004507C4 2407000A */   li    $a3, 10
/* 004507C8 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 004507CC 8EA40000 */  lw    $a0, ($s5)
/* 004507D0 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 004507D4 00000000 */  nop   
/* 004507D8 0320F809 */  jalr  $t9
/* 004507DC 00000000 */   nop   
/* 004507E0 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 004507E4 2652002C */  addiu $s2, $s2, 0x2c
/* 004507E8 26100004 */  addiu $s0, $s0, 4
/* 004507EC 1654FFB8 */  bne   $s2, $s4, .L004506D0
/* 004507F0 26310004 */   addiu $s1, $s1, 4
.L004507F4:
/* 004507F4 8F858070 */  lw    $a1, %got(RO_100196BF)($gp)
/* 004507F8 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 004507FC 8EA40000 */  lw    $a0, ($s5)
/* 00450800 2406000E */  li    $a2, 14
/* 00450804 2407000E */  li    $a3, 14
/* 00450808 0320F809 */  jalr  $t9
/* 0045080C 24A596BF */   addiu $a1, %lo(RO_100196BF) # addiu $a1, $a1, -0x6941
/* 00450810 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450814 8FA8032C */  lw    $t0, 0x32c($sp)
/* 00450818 8F99859C */  lw    $t9, %call16(wrhex)($gp)
/* 0045081C 8D050018 */  lw    $a1, 0x18($t0)
/* 00450820 02A02025 */  move  $a0, $s5
/* 00450824 24060008 */  li    $a2, 8
/* 00450828 24070030 */  li    $a3, 48
/* 0045082C 0320F809 */  jalr  $t9
/* 00450830 24A57FF0 */   addiu $a1, $a1, 0x7ff0
/* 00450834 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450838 8EA40000 */  lw    $a0, ($s5)
/* 0045083C 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 00450840 00000000 */  nop   
/* 00450844 0320F809 */  jalr  $t9
/* 00450848 00000000 */   nop   
/* 0045084C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450850 8EA40000 */  lw    $a0, ($s5)
/* 00450854 8F998698 */  lw    $t9, %call16(writeln)($gp)
/* 00450858 00000000 */  nop   
/* 0045085C 0320F809 */  jalr  $t9
/* 00450860 00000000 */   nop   
/* 00450864 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00450868 00000000 */  nop   
.L0045086C:
/* 0045086C 8FBF00D4 */  lw    $ra, 0xd4($sp)
.L00450870:
/* 00450870 8FB000AC */  lw    $s0, 0xac($sp)
/* 00450874 8FB100B0 */  lw    $s1, 0xb0($sp)
/* 00450878 8FB200B4 */  lw    $s2, 0xb4($sp)
/* 0045087C 8FB300B8 */  lw    $s3, 0xb8($sp)
/* 00450880 8FB400BC */  lw    $s4, 0xbc($sp)
/* 00450884 8FB500C0 */  lw    $s5, 0xc0($sp)
/* 00450888 8FB600C4 */  lw    $s6, 0xc4($sp)
/* 0045088C 8FB700C8 */  lw    $s7, 0xc8($sp)
/* 00450890 8FBE00D0 */  lw    $fp, 0xd0($sp)
/* 00450894 03E00008 */  jr    $ra
/* 00450898 27BD0330 */   addiu $sp, $sp, 0x330

/* 0045089C 00000000 */  nop   
    .type wrobj, @function
    .size wrobj, .-wrobj
    .end wrobj

glabel macro_error
    .ent macro_error
    # 00451814 parseafrrl
    # 00458930 parsecprestore
    # 0045E218 setup_tempreg
    # 0045F020 is_gp_relative
    # 0045F110 genfpmultiple
    # 004603D4 func_004603D4
    # 004604C0 do_parseafra
    # 0046159C gendouble
    # 00462320 func_00462320
    # 00463428 func_00463428
    # 00464528 parseafra
    # 00465E20 genmul
    # 00466908 gendmul
    # 0046743C func_0046743C
    # 00467C5C gendiv
    # 00468320 func_00468320
    # 00468AAC genddiv
    # 00469314 func_00469314
    # 00469CF8 parseafrrr
/* 004508A0 3C1C0FBE */  .cpload $t9
/* 004508A4 279C99C0 */  
/* 004508A8 0399E021 */  
/* 004508AC 8F8E8070 */  lw    $t6, %got(RO_10019F30)($gp)
/* 004508B0 27BDFF98 */  addiu $sp, $sp, -0x68
/* 004508B4 25CE9F30 */  addiu $t6, %lo(RO_10019F30) # addiu $t6, $t6, -0x60d0
/* 004508B8 AFBF0064 */  sw    $ra, 0x64($sp)
/* 004508BC AFBC0060 */  sw    $gp, 0x60($sp)
/* 004508C0 25D80048 */  addiu $t8, $t6, 0x48
/* 004508C4 03A0C825 */  move  $t9, $sp
.L004508C8:
/* 004508C8 89C10000 */  lwl   $at, ($t6)
/* 004508CC 99C10003 */  lwr   $at, 3($t6)
/* 004508D0 25CE000C */  addiu $t6, $t6, 0xc
/* 004508D4 AB210000 */  swl   $at, ($t9)
/* 004508D8 BB210003 */  swr   $at, 3($t9)
/* 004508DC 89C1FFF8 */  lwl   $at, -8($t6)
/* 004508E0 99C1FFFB */  lwr   $at, -5($t6)
/* 004508E4 2739000C */  addiu $t9, $t9, 0xc
/* 004508E8 AB21FFF8 */  swl   $at, -8($t9)
/* 004508EC BB21FFFB */  swr   $at, -5($t9)
/* 004508F0 89C1FFFC */  lwl   $at, -4($t6)
/* 004508F4 99C1FFFF */  lwr   $at, -1($t6)
/* 004508F8 00000000 */  nop   
/* 004508FC AB21FFFC */  swl   $at, -4($t9)
/* 00450900 15D8FFF1 */  bne   $t6, $t8, .L004508C8
/* 00450904 BB21FFFF */   swr   $at, -1($t9)
/* 00450908 89C10000 */  lwl   $at, ($t6)
/* 0045090C 99C10003 */  lwr   $at, 3($t6)
/* 00450910 8F888C68 */  lw     $t0, %got(emptystring)($gp)
/* 00450914 AB210000 */  swl   $at, ($t9)
/* 00450918 BB210003 */  swr   $at, 3($t9)
/* 0045091C 89D80004 */  lwl   $t8, 4($t6)
/* 00450920 99D80007 */  lwr   $t8, 7($t6)
/* 00450924 24090002 */  li    $t1, 2
/* 00450928 AB380004 */  swl   $t8, 4($t9)
/* 0045092C BB380007 */  swr   $t8, 7($t9)
/* 00450930 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00450934 8D080000 */  lw    $t0, ($t0)
/* 00450938 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045093C 8FA60008 */  lw    $a2, 8($sp)
/* 00450940 8FA50004 */  lw    $a1, 4($sp)
/* 00450944 8FA40000 */  lw    $a0, ($sp)
/* 00450948 AFA90054 */  sw    $t1, 0x54($sp)
/* 0045094C 0320F809 */  jalr  $t9
/* 00450950 AFA80050 */   sw    $t0, 0x50($sp)
/* 00450954 8FBF0064 */  lw    $ra, 0x64($sp)
/* 00450958 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045095C 03E00008 */  jr    $ra
/* 00450960 27BD0068 */   addiu $sp, $sp, 0x68

    .type macro_error, @function
    .size macro_error, .-macro_error
    .end macro_error

glabel disp
    .ent disp
    # 004509B4 restore_gp
    # 0045102C parseafri
    # 004531B8 parseafa
    # 0045862C parsecpload
    # 00458930 parsecprestore
    # 0045E218 setup_tempreg
    # 0045F110 genfpmultiple
    # 004604C0 do_parseafra
    # 0046159C gendouble
    # 00462320 func_00462320
    # 004638F8 func_004638F8
    # 00464528 parseafra
    # 00469CF8 parseafrrr
/* 00450964 1080000A */  beqz  $a0, .L00450990
/* 00450968 AFA40000 */   sw    $a0, ($sp)
/* 0045096C 30AE8000 */  andi  $t6, $a1, 0x8000
/* 00450970 11C00005 */  beqz  $t6, .L00450988
/* 00450974 00051C02 */   srl   $v1, $a1, 0x10
/* 00450978 00051C02 */  srl   $v1, $a1, 0x10
/* 0045097C 24630001 */  addiu $v1, $v1, 1
/* 00450980 03E00008 */  jr    $ra
/* 00450984 3062FFFF */   andi  $v0, $v1, 0xffff

.L00450988:
/* 00450988 03E00008 */  jr    $ra
/* 0045098C 3062FFFF */   andi  $v0, $v1, 0xffff

.L00450990:
/* 00450990 30B98000 */  andi  $t9, $a1, 0x8000
/* 00450994 13200005 */  beqz  $t9, .L004509AC
/* 00450998 30A3FFFF */   andi  $v1, $a1, 0xffff
/* 0045099C 30A3FFFF */  andi  $v1, $a1, 0xffff
/* 004509A0 3C01FFFF */  lui   $at, 0xffff
/* 004509A4 03E00008 */  jr    $ra
/* 004509A8 00611021 */   addu  $v0, $v1, $at

.L004509AC:
/* 004509AC 03E00008 */  jr    $ra
/* 004509B0 00601025 */   move  $v0, $v1

    .type disp, @function
    .size disp, .-disp
    .end disp

glabel restore_gp
    .ent restore_gp
    # 0044AF18 main
    # 00451814 parseafrrl
    # 004531B8 parseafa
    # 00453C94 parseafrl
    # 004541F0 parseafl
    # 0045E218 setup_tempreg
    # 0045F020 is_gp_relative
    # 004604C0 do_parseafra
/* 004509B4 3C1C0FBE */  .cpload $t9
/* 004509B8 279C98AC */  
/* 004509BC 0399E021 */  
/* 004509C0 8F8E89C0 */  lw     $t6, %got(need_cprestore)($gp)
/* 004509C4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 004509C8 91CE0000 */  lbu   $t6, ($t6)
/* 004509CC AFBF001C */  sw    $ra, 0x1c($sp)
/* 004509D0 11C00059 */  beqz  $t6, .L00450B38
/* 004509D4 AFBC0018 */   sw    $gp, 0x18($sp)
/* 004509D8 8F868CA0 */  lw     $a2, %got(cprestore_offset)($gp)
/* 004509DC 00000000 */  nop   
/* 004509E0 8CC60000 */  lw    $a2, ($a2)
/* 004509E4 00000000 */  nop   
/* 004509E8 28C18000 */  slti  $at, $a2, -0x8000
/* 004509EC 1420000E */  bnez  $at, .L00450A28
/* 004509F0 34018000 */   li    $at, 32768
/* 004509F4 00C1082A */  slt   $at, $a2, $at
/* 004509F8 1020000C */  beqz  $at, .L00450A2C
/* 004509FC 34018000 */   li    $at, 32768
/* 00450A00 8F858BF8 */  lw     $a1, %got(gpreg)($gp)
/* 00450A04 8F8789BC */  lw     $a3, %got(framereg_for_cprestore)($gp)
/* 00450A08 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00450A0C 90A50000 */  lbu   $a1, ($a1)
/* 00450A10 90E70000 */  lbu   $a3, ($a3)
/* 00450A14 0320F809 */  jalr  $t9
/* 00450A18 24040069 */   li    $a0, 105
/* 00450A1C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00450A20 10000042 */  b     .L00450B2C
/* 00450A24 00000000 */   nop   
.L00450A28:
/* 00450A28 34018000 */  li    $at, 32768
.L00450A2C:
/* 00450A2C 00C1082A */  slt   $at, $a2, $at
/* 00450A30 14200018 */  bnez  $at, .L00450A94
/* 00450A34 3401FFFF */   li    $at, 65535
/* 00450A38 00C1082A */  slt   $at, $a2, $at
/* 00450A3C 10200015 */  beqz  $at, .L00450A94
/* 00450A40 24040054 */   li    $a0, 84
/* 00450A44 8F858BF8 */  lw     $a1, %got(gpreg)($gp)
/* 00450A48 8F8689BC */  lw     $a2, %got(framereg_for_cprestore)($gp)
/* 00450A4C 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00450A50 90A50000 */  lbu   $a1, ($a1)
/* 00450A54 90C60000 */  lbu   $a2, ($a2)
/* 00450A58 0320F809 */  jalr  $t9
/* 00450A5C 24077FFF */   li    $a3, 32767
/* 00450A60 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00450A64 24040069 */  li    $a0, 105
/* 00450A68 8F858BF8 */  lw     $a1, %got(gpreg)($gp)
/* 00450A6C 8F868CA0 */  lw     $a2, %got(cprestore_offset)($gp)
/* 00450A70 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00450A74 90A50000 */  lbu   $a1, ($a1)
/* 00450A78 8CC60000 */  lw    $a2, ($a2)
/* 00450A7C 00A03825 */  move  $a3, $a1
/* 00450A80 0320F809 */  jalr  $t9
/* 00450A84 24C68001 */   addiu $a2, $a2, -0x7fff
/* 00450A88 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00450A8C 10000027 */  b     .L00450B2C
/* 00450A90 00000000 */   nop   
.L00450A94:
/* 00450A94 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00450A98 24040001 */  li    $a0, 1
/* 00450A9C 0320F809 */  jalr  $t9
/* 00450AA0 00C02825 */   move  $a1, $a2
/* 00450AA4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00450AA8 2404005A */  li    $a0, 90
/* 00450AAC 8F858BF8 */  lw     $a1, %got(gpreg)($gp)
/* 00450AB0 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00450AB4 90A50000 */  lbu   $a1, ($a1)
/* 00450AB8 00003025 */  move  $a2, $zero
/* 00450ABC 0320F809 */  jalr  $t9
/* 00450AC0 00403825 */   move  $a3, $v0
/* 00450AC4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00450AC8 24040015 */  li    $a0, 21
/* 00450ACC 8F858BF8 */  lw     $a1, %got(gpreg)($gp)
/* 00450AD0 8F8789BC */  lw     $a3, %got(framereg_for_cprestore)($gp)
/* 00450AD4 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00450AD8 90A50000 */  lbu   $a1, ($a1)
/* 00450ADC 90E70000 */  lbu   $a3, ($a3)
/* 00450AE0 0320F809 */  jalr  $t9
/* 00450AE4 00A03025 */   move  $a2, $a1
/* 00450AE8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00450AEC 00002025 */  move  $a0, $zero
/* 00450AF0 8F858CA0 */  lw     $a1, %got(cprestore_offset)($gp)
/* 00450AF4 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00450AF8 8CA50000 */  lw    $a1, ($a1)
/* 00450AFC 0320F809 */  jalr  $t9
/* 00450B00 00000000 */   nop   
/* 00450B04 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00450B08 24040069 */  li    $a0, 105
/* 00450B0C 8F858BF8 */  lw     $a1, %got(gpreg)($gp)
/* 00450B10 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00450B14 90A50000 */  lbu   $a1, ($a1)
/* 00450B18 00403025 */  move  $a2, $v0
/* 00450B1C 0320F809 */  jalr  $t9
/* 00450B20 00A03825 */   move  $a3, $a1
/* 00450B24 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00450B28 00000000 */  nop   
.L00450B2C:
/* 00450B2C 8F8189C0 */  lw     $at, %got(need_cprestore)($gp)
/* 00450B30 00000000 */  nop   
/* 00450B34 A0200000 */  sb    $zero, ($at)
.L00450B38:
/* 00450B38 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00450B3C 27BD0020 */  addiu $sp, $sp, 0x20
/* 00450B40 03E00008 */  jr    $ra
/* 00450B44 00000000 */   nop   

    .type restore_gp, @function
    .size restore_gp, .-restore_gp
    .end restore_gp

glabel init_cpalias
    .ent init_cpalias
    # 00451814 parseafrrl
    # 004531B8 parseafa
    # 00453C94 parseafrl
    # 004541F0 parseafl
    # 00455F2C parseend
    # 004594BC parsestmt
/* 00450B48 3C1C0FBE */  .cpload $t9
/* 00450B4C 279C9718 */  
/* 00450B50 0399E021 */  
/* 00450B54 8F8E89C4 */  lw     $t6, %got(cpalias_set)($gp)
/* 00450B58 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00450B5C 91CE0000 */  lbu   $t6, ($t6)
/* 00450B60 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00450B64 11C0001D */  beqz  $t6, .L00450BDC
/* 00450B68 AFBC0020 */   sw    $gp, 0x20($sp)
/* 00450B6C 8F8F89C8 */  lw     $t7, %got(cpalias_pending)($gp)
/* 00450B70 24040019 */  li    $a0, 25
/* 00450B74 91EF0000 */  lbu   $t7, ($t7)
/* 00450B78 00003025 */  move  $a2, $zero
/* 00450B7C 11E00018 */  beqz  $t7, .L00450BE0
/* 00450B80 8FBF0024 */   lw    $ra, 0x24($sp)
/* 00450B84 8F858DCC */  lw     $a1, %got(cpalias_register)($gp)
/* 00450B88 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00450B8C 90A50000 */  lbu   $a1, ($a1)
/* 00450B90 0320F809 */  jalr  $t9
/* 00450B94 2407001C */   li    $a3, 28
/* 00450B98 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00450B9C 2404001C */  li    $a0, 28
/* 00450BA0 8F988DCC */  lw     $t8, %got(cpalias_register)($gp)
/* 00450BA4 8F828BF8 */  lw     $v0, %got(gpreg)($gp)
/* 00450BA8 93180000 */  lbu   $t8, ($t8)
/* 00450BAC 8F8189C8 */  lw     $at, %got(cpalias_pending)($gp)
/* 00450BB0 A0580000 */  sb    $t8, ($v0)
/* 00450BB4 8F9982E4 */  lw    $t9, %call16(fill_pseudo)($gp)
/* 00450BB8 A0200000 */  sb    $zero, ($at)
/* 00450BBC 90450000 */  lbu   $a1, ($v0)
/* 00450BC0 2406001D */  li    $a2, 29
/* 00450BC4 00003825 */  move  $a3, $zero
/* 00450BC8 AFA00010 */  sw    $zero, 0x10($sp)
/* 00450BCC 0320F809 */  jalr  $t9
/* 00450BD0 AFA00014 */   sw    $zero, 0x14($sp)
/* 00450BD4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00450BD8 00000000 */  nop   
.L00450BDC:
/* 00450BDC 8FBF0024 */  lw    $ra, 0x24($sp)
.L00450BE0:
/* 00450BE0 27BD0028 */  addiu $sp, $sp, 0x28
/* 00450BE4 03E00008 */  jr    $ra
/* 00450BE8 00000000 */   nop   

    .type init_cpalias, @function
    .size init_cpalias, .-init_cpalias
    .end init_cpalias

glabel parseaf
    .ent parseaf
    # 004594BC parsestmt
/* 00450BEC 3C1C0FBE */  .cpload $t9
/* 00450BF0 279C9674 */  
/* 00450BF4 0399E021 */  
/* 00450BF8 27BDFF98 */  addiu $sp, $sp, -0x68
/* 00450BFC 8F828D64 */  lw     $v0, %got(binasmfyle)($gp)
/* 00450C00 AFA40068 */  sw    $a0, 0x68($sp)
/* 00450C04 97AE006A */  lhu   $t6, 0x6a($sp)
/* 00450C08 2401003E */  li    $at, 62
/* 00450C0C 8C420000 */  lw    $v0, ($v0)
/* 00450C10 AFBF0064 */  sw    $ra, 0x64($sp)
/* 00450C14 15C10040 */  bne   $t6, $at, .L00450D18
/* 00450C18 AFBC0060 */   sw    $gp, 0x60($sp)
/* 00450C1C 8F8F8B8C */  lw     $t7, %got(reorderflag)($gp)
/* 00450C20 00000000 */  nop   
/* 00450C24 91EF0000 */  lbu   $t7, ($t7)
/* 00450C28 00000000 */  nop   
/* 00450C2C 11E0002A */  beqz  $t7, .L00450CD8
/* 00450C30 00000000 */   nop   
/* 00450C34 8F988070 */  lw    $t8, %got(RO_10019F80)($gp)
/* 00450C38 03A04825 */  move  $t1, $sp
/* 00450C3C 27189F80 */  addiu $t8, %lo(RO_10019F80) # addiu $t8, $t8, -0x6080
/* 00450C40 27080048 */  addiu $t0, $t8, 0x48
.L00450C44:
/* 00450C44 8B010000 */  lwl   $at, ($t8)
/* 00450C48 9B010003 */  lwr   $at, 3($t8)
/* 00450C4C 2718000C */  addiu $t8, $t8, 0xc
/* 00450C50 A9210000 */  swl   $at, ($t1)
/* 00450C54 B9210003 */  swr   $at, 3($t1)
/* 00450C58 8B01FFF8 */  lwl   $at, -8($t8)
/* 00450C5C 9B01FFFB */  lwr   $at, -5($t8)
/* 00450C60 2529000C */  addiu $t1, $t1, 0xc
/* 00450C64 A921FFF8 */  swl   $at, -8($t1)
/* 00450C68 B921FFFB */  swr   $at, -5($t1)
/* 00450C6C 8B01FFFC */  lwl   $at, -4($t8)
/* 00450C70 9B01FFFF */  lwr   $at, -1($t8)
/* 00450C74 00000000 */  nop   
/* 00450C78 A921FFFC */  swl   $at, -4($t1)
/* 00450C7C 1708FFF1 */  bne   $t8, $t0, .L00450C44
/* 00450C80 B921FFFF */   swr   $at, -1($t1)
/* 00450C84 8B010000 */  lwl   $at, ($t8)
/* 00450C88 9B010003 */  lwr   $at, 3($t8)
/* 00450C8C 8F8A8C68 */  lw     $t2, %got(emptystring)($gp)
/* 00450C90 A9210000 */  swl   $at, ($t1)
/* 00450C94 B9210003 */  swr   $at, 3($t1)
/* 00450C98 8B080004 */  lwl   $t0, 4($t8)
/* 00450C9C 9B080007 */  lwr   $t0, 7($t8)
/* 00450CA0 240B0002 */  li    $t3, 2
/* 00450CA4 A9280004 */  swl   $t0, 4($t1)
/* 00450CA8 B9280007 */  swr   $t0, 7($t1)
/* 00450CAC 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00450CB0 8D4A0000 */  lw    $t2, ($t2)
/* 00450CB4 8FA7000C */  lw    $a3, 0xc($sp)
/* 00450CB8 8FA60008 */  lw    $a2, 8($sp)
/* 00450CBC 8FA50004 */  lw    $a1, 4($sp)
/* 00450CC0 8FA40000 */  lw    $a0, ($sp)
/* 00450CC4 AFAB0054 */  sw    $t3, 0x54($sp)
/* 00450CC8 0320F809 */  jalr  $t9
/* 00450CCC AFAA0050 */   sw    $t2, 0x50($sp)
/* 00450CD0 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00450CD4 00000000 */  nop   
.L00450CD8:
/* 00450CD8 8F998448 */  lw    $t9, %call16(emitnop)($gp)
/* 00450CDC 24040001 */  li    $a0, 1
/* 00450CE0 0320F809 */  jalr  $t9
/* 00450CE4 00000000 */   nop   
/* 00450CE8 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00450CEC 00000000 */  nop   
/* 00450CF0 8F8D8BB0 */  lw     $t5, %got(bbindex)($gp)
/* 00450CF4 8F8C8B40 */  lw     $t4, %got(pinstruction)($gp)
/* 00450CF8 8DAD0000 */  lw    $t5, ($t5)
/* 00450CFC 8D8C0000 */  lw    $t4, ($t4)
/* 00450D00 000D7080 */  sll   $t6, $t5, 2
/* 00450D04 01CD7021 */  addu  $t6, $t6, $t5
/* 00450D08 000E70C0 */  sll   $t6, $t6, 3
/* 00450D0C 018E7821 */  addu  $t7, $t4, $t6
/* 00450D10 1000001E */  b     .L00450D8C
/* 00450D14 A1E00022 */   sb    $zero, 0x22($t7)
.L00450D18:
/* 00450D18 8C590008 */  lw    $t9, 8($v0)
/* 00450D1C 2401000D */  li    $at, 13
/* 00450D20 00194380 */  sll   $t0, $t9, 0xe
/* 00450D24 0008C702 */  srl   $t8, $t0, 0x1c
/* 00450D28 1701000E */  bne   $t8, $at, .L00450D64
/* 00450D2C 97AC006A */   lhu   $t4, 0x6a($sp)
/* 00450D30 97A9006A */  lhu   $t1, 0x6a($sp)
/* 00450D34 8F8B8D1C */  lw     $t3, %got(asm2op)($gp)
/* 00450D38 00095040 */  sll   $t2, $t1, 1
/* 00450D3C 8F998484 */  lw    $t9, %call16(emitspec)($gp)
/* 00450D40 014B6821 */  addu  $t5, $t2, $t3
/* 00450D44 95A40000 */  lhu   $a0, ($t5)
/* 00450D48 8C45000C */  lw    $a1, 0xc($v0)
/* 00450D4C 0320F809 */  jalr  $t9
/* 00450D50 00000000 */   nop   
/* 00450D54 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00450D58 1000000D */  b     .L00450D90
/* 00450D5C 97A8006A */   lhu   $t0, 0x6a($sp)
/* 00450D60 97AC006A */  lhu   $t4, 0x6a($sp)
.L00450D64:
/* 00450D64 8F8F8D1C */  lw     $t7, %got(asm2op)($gp)
/* 00450D68 000C7040 */  sll   $t6, $t4, 1
/* 00450D6C 01CFC821 */  addu  $t9, $t6, $t7
/* 00450D70 97240000 */  lhu   $a0, ($t9)
/* 00450D74 8F998484 */  lw    $t9, %call16(emitspec)($gp)
/* 00450D78 00002825 */  move  $a1, $zero
/* 00450D7C 0320F809 */  jalr  $t9
/* 00450D80 00000000 */   nop   
/* 00450D84 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00450D88 00000000 */  nop   
.L00450D8C:
/* 00450D8C 97A8006A */  lhu   $t0, 0x6a($sp)
.L00450D90:
/* 00450D90 8F818C8C */  lw     $at, %got(endofbasicb)($gp)
/* 00450D94 8FBF0064 */  lw    $ra, 0x64($sp)
/* 00450D98 3918003E */  xori  $t8, $t0, 0x3e
/* 00450D9C 0018C02B */  sltu  $t8, $zero, $t8
/* 00450DA0 27BD0068 */  addiu $sp, $sp, 0x68
/* 00450DA4 03E00008 */  jr    $ra
/* 00450DA8 A0380000 */   sb    $t8, ($at)

    .type parseaf, @function
    .size parseaf, .-parseaf
    .end parseaf

glabel parsecia
    .ent parsecia
    # 0045102C parseafri
/* 00450DAC 3C1C0FBE */  .cpload $t9
/* 00450DB0 279C94B4 */  
/* 00450DB4 0399E021 */  
/* 00450DB8 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 00450DBC AFB40028 */  sw    $s4, 0x28($sp)
/* 00450DC0 8F948D64 */  lw     $s4, %got(binasmfyle)($gp)
/* 00450DC4 8F818C8C */  lw     $at, %got(endofbasicb)($gp)
/* 00450DC8 8E8E0000 */  lw    $t6, ($s4)
/* 00450DCC 8F998690 */  lw    $t9, %call16(new)($gp)
/* 00450DD0 AFBF0034 */  sw    $ra, 0x34($sp)
/* 00450DD4 AFBC0030 */  sw    $gp, 0x30($sp)
/* 00450DD8 AFB5002C */  sw    $s5, 0x2c($sp)
/* 00450DDC AFB30024 */  sw    $s3, 0x24($sp)
/* 00450DE0 AFB20020 */  sw    $s2, 0x20($sp)
/* 00450DE4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 00450DE8 AFB00018 */  sw    $s0, 0x18($sp)
/* 00450DEC 240F0001 */  li    $t7, 1
/* 00450DF0 8DD2000C */  lw    $s2, 0xc($t6)
/* 00450DF4 24040400 */  li    $a0, 1024
/* 00450DF8 00002825 */  move  $a1, $zero
/* 00450DFC 0320F809 */  jalr  $t9
/* 00450E00 A02F0000 */   sb    $t7, ($at)
/* 00450E04 8FBC0030 */  lw    $gp, 0x30($sp)
/* 00450E08 0040A825 */  move  $s5, $v0
/* 00450E0C 8F9985E8 */  lw    $t9, %call16(get_binasm)($gp)
/* 00450E10 00009825 */  move  $s3, $zero
/* 00450E14 0320F809 */  jalr  $t9
/* 00450E18 02802025 */   move  $a0, $s4
/* 00450E1C 8FBC0030 */  lw    $gp, 0x30($sp)
/* 00450E20 2A410011 */  slti  $at, $s2, 0x11
/* 00450E24 1420001D */  bnez  $at, .L00450E9C
/* 00450E28 24110011 */   li    $s1, 17
.L00450E2C:
/* 00450E2C 8E830000 */  lw    $v1, ($s4)
/* 00450E30 02B31021 */  addu  $v0, $s5, $s3
/* 00450E34 24420001 */  addiu $v0, $v0, 1
/* 00450E38 24100001 */  li    $s0, 1
/* 00450E3C 24630001 */  addiu $v1, $v1, 1
.L00450E40:
/* 00450E40 9078FFFF */  lbu   $t8, -1($v1)
/* 00450E44 26100004 */  addiu $s0, $s0, 4
/* 00450E48 A058FFFF */  sb    $t8, -1($v0)
/* 00450E4C 90790000 */  lbu   $t9, ($v1)
/* 00450E50 24420004 */  addiu $v0, $v0, 4
/* 00450E54 A059FFFC */  sb    $t9, -4($v0)
/* 00450E58 90680001 */  lbu   $t0, 1($v1)
/* 00450E5C 24630004 */  addiu $v1, $v1, 4
/* 00450E60 A048FFFD */  sb    $t0, -3($v0)
/* 00450E64 9069FFFE */  lbu   $t1, -2($v1)
/* 00450E68 1611FFF5 */  bne   $s0, $s1, .L00450E40
/* 00450E6C A049FFFE */   sb    $t1, -2($v0)
/* 00450E70 8F9985E8 */  lw    $t9, %call16(get_binasm)($gp)
/* 00450E74 02709821 */  addu  $s3, $s3, $s0
/* 00450E78 2673FFFF */  addiu $s3, $s3, -1
/* 00450E7C 2652FFF0 */  addiu $s2, $s2, -0x10
/* 00450E80 0320F809 */  jalr  $t9
/* 00450E84 02802025 */   move  $a0, $s4
/* 00450E88 8FBC0030 */  lw    $gp, 0x30($sp)
/* 00450E8C 2A410011 */  slti  $at, $s2, 0x11
/* 00450E90 1020FFE6 */  beqz  $at, .L00450E2C
/* 00450E94 00000000 */   nop   
/* 00450E98 AFB00038 */  sw    $s0, 0x38($sp)
.L00450E9C:
/* 00450E9C 8FB00038 */  lw    $s0, 0x38($sp)
/* 00450EA0 1A400024 */  blez  $s2, .L00450F34
/* 00450EA4 26450001 */   addiu $a1, $s2, 1
/* 00450EA8 24A6FFFF */  addiu $a2, $a1, -1
/* 00450EAC 30CA0003 */  andi  $t2, $a2, 3
/* 00450EB0 1140000F */  beqz  $t2, .L00450EF0
/* 00450EB4 24100001 */   li    $s0, 1
/* 00450EB8 8F8C8D64 */  lw     $t4, %got(binasmfyle)($gp)
/* 00450EBC 02B05821 */  addu  $t3, $s5, $s0
/* 00450EC0 8D8C0000 */  lw    $t4, ($t4)
/* 00450EC4 01731021 */  addu  $v0, $t3, $s3
/* 00450EC8 25440001 */  addiu $a0, $t2, 1
/* 00450ECC 01901821 */  addu  $v1, $t4, $s0
.L00450ED0:
/* 00450ED0 906DFFFF */  lbu   $t5, -1($v1)
/* 00450ED4 26100001 */  addiu $s0, $s0, 1
/* 00450ED8 24420001 */  addiu $v0, $v0, 1
/* 00450EDC 24630001 */  addiu $v1, $v1, 1
/* 00450EE0 1490FFFB */  bne   $a0, $s0, .L00450ED0
/* 00450EE4 A04DFFFE */   sb    $t5, -2($v0)
/* 00450EE8 12050013 */  beq   $s0, $a1, .L00450F38
/* 00450EEC 02B35021 */   addu  $t2, $s5, $s3
.L00450EF0:
/* 00450EF0 8F8F8D64 */  lw     $t7, %got(binasmfyle)($gp)
/* 00450EF4 02B07021 */  addu  $t6, $s5, $s0
/* 00450EF8 8DEF0000 */  lw    $t7, ($t7)
/* 00450EFC 01D31021 */  addu  $v0, $t6, $s3
/* 00450F00 01F01821 */  addu  $v1, $t7, $s0
.L00450F04:
/* 00450F04 9078FFFF */  lbu   $t8, -1($v1)
/* 00450F08 26100004 */  addiu $s0, $s0, 4
/* 00450F0C A058FFFF */  sb    $t8, -1($v0)
/* 00450F10 90790000 */  lbu   $t9, ($v1)
/* 00450F14 24420004 */  addiu $v0, $v0, 4
/* 00450F18 A059FFFC */  sb    $t9, -4($v0)
/* 00450F1C 90680001 */  lbu   $t0, 1($v1)
/* 00450F20 24630004 */  addiu $v1, $v1, 4
/* 00450F24 A048FFFD */  sb    $t0, -3($v0)
/* 00450F28 9069FFFE */  lbu   $t1, -2($v1)
/* 00450F2C 1605FFF5 */  bne   $s0, $a1, .L00450F04
/* 00450F30 A049FFFE */   sb    $t1, -2($v0)
.L00450F34:
/* 00450F34 02B35021 */  addu  $t2, $s5, $s3
.L00450F38:
/* 00450F38 01505821 */  addu  $t3, $t2, $s0
/* 00450F3C A160FFFF */  sb    $zero, -1($t3)
/* 00450F40 8F998690 */  lw    $t9, %call16(new)($gp)
/* 00450F44 24040400 */  li    $a0, 1024
/* 00450F48 0320F809 */  jalr  $t9
/* 00450F4C 00002825 */   move  $a1, $zero
/* 00450F50 8FBC0030 */  lw    $gp, 0x30($sp)
/* 00450F54 00402825 */  move  $a1, $v0
/* 00450F58 8F908DC4 */  lw     $s0, %got(cia_binasm_name)($gp)
/* 00450F5C 8F8C8D60 */  lw     $t4, %got(outname)($gp)
/* 00450F60 AE020000 */  sw    $v0, ($s0)
/* 00450F64 8D8C0000 */  lw    $t4, ($t4)
/* 00450F68 00407825 */  move  $t7, $v0
/* 00450F6C 258E03FC */  addiu $t6, $t4, 0x3fc
.L00450F70:
/* 00450F70 89810000 */  lwl   $at, ($t4)
/* 00450F74 99810003 */  lwr   $at, 3($t4)
/* 00450F78 258C000C */  addiu $t4, $t4, 0xc
/* 00450F7C A9E10000 */  swl   $at, ($t7)
/* 00450F80 B9E10003 */  swr   $at, 3($t7)
/* 00450F84 8981FFF8 */  lwl   $at, -8($t4)
/* 00450F88 9981FFFB */  lwr   $at, -5($t4)
/* 00450F8C 25EF000C */  addiu $t7, $t7, 0xc
/* 00450F90 A9E1FFF8 */  swl   $at, -8($t7)
/* 00450F94 B9E1FFFB */  swr   $at, -5($t7)
/* 00450F98 8981FFFC */  lwl   $at, -4($t4)
/* 00450F9C 9981FFFF */  lwr   $at, -1($t4)
/* 00450FA0 00000000 */  nop   
/* 00450FA4 A9E1FFFC */  swl   $at, -4($t7)
/* 00450FA8 158EFFF1 */  bne   $t4, $t6, .L00450F70
/* 00450FAC B9E1FFFF */   swr   $at, -1($t7)
/* 00450FB0 89810000 */  lwl   $at, ($t4)
/* 00450FB4 99810003 */  lwr   $at, 3($t4)
/* 00450FB8 8F848DB4 */  lw     $a0, %got(mainpath)($gp)
/* 00450FBC A9E10000 */  swl   $at, ($t7)
/* 00450FC0 B9E10003 */  swr   $at, 3($t7)
/* 00450FC4 8F998248 */  lw    $t9, %call16(call_as0)($gp)
/* 00450FC8 8C840000 */  lw    $a0, ($a0)
/* 00450FCC 0320F809 */  jalr  $t9
/* 00450FD0 02A03025 */   move  $a2, $s5
/* 00450FD4 8FBC0030 */  lw    $gp, 0x30($sp)
/* 00450FD8 1440000B */  bnez  $v0, .L00451008
/* 00450FDC 24060400 */   li    $a2, 1024
/* 00450FE0 8F9986BC */  lw    $t9, %call16(reset)($gp)
/* 00450FE4 8F848D68 */  lw     $a0, %got(cia_bfile)($gp)
/* 00450FE8 8E050000 */  lw    $a1, ($s0)
/* 00450FEC 0320F809 */  jalr  $t9
/* 00450FF0 24070010 */   li    $a3, 16
/* 00450FF4 8FBC0030 */  lw    $gp, 0x30($sp)
/* 00450FF8 24180001 */  li    $t8, 1
/* 00450FFC 8F818D6C */  lw     $at, %got(in_cia_binasm)($gp)
/* 00451000 00000000 */  nop   
/* 00451004 A0380000 */  sb    $t8, ($at)
.L00451008:
/* 00451008 8FBF0034 */  lw    $ra, 0x34($sp)
/* 0045100C 8FB00018 */  lw    $s0, 0x18($sp)
/* 00451010 8FB1001C */  lw    $s1, 0x1c($sp)
/* 00451014 8FB20020 */  lw    $s2, 0x20($sp)
/* 00451018 8FB30024 */  lw    $s3, 0x24($sp)
/* 0045101C 8FB40028 */  lw    $s4, 0x28($sp)
/* 00451020 8FB5002C */  lw    $s5, 0x2c($sp)
/* 00451024 03E00008 */  jr    $ra
/* 00451028 27BD0040 */   addiu $sp, $sp, 0x40

    .type parsecia, @function
    .size parsecia, .-parsecia
    .end parsecia

glabel parseafri
    .ent parseafri
    # 004594BC parsestmt
/* 0045102C 3C1C0FBE */  .cpload $t9
/* 00451030 279C9234 */  
/* 00451034 0399E021 */  
/* 00451038 27BDFF38 */  addiu $sp, $sp, -0xc8
/* 0045103C 8F838D64 */  lw     $v1, %got(binasmfyle)($gp)
/* 00451040 AFA400C8 */  sw    $a0, 0xc8($sp)
/* 00451044 97AE00CA */  lhu   $t6, 0xca($sp)
/* 00451048 24010164 */  li    $at, 356
/* 0045104C 8C630000 */  lw    $v1, ($v1)
/* 00451050 AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 00451054 15C10008 */  bne   $t6, $at, .L00451078
/* 00451058 AFBC00B0 */   sw    $gp, 0xb0($sp)
/* 0045105C 8F9984DC */  lw    $t9, %call16(parsecia)($gp)
/* 00451060 00000000 */  nop   
/* 00451064 0320F809 */  jalr  $t9
/* 00451068 00000000 */   nop   
/* 0045106C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00451070 100001E5 */  b     .L00451808
/* 00451074 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00451078:
/* 00451078 90780008 */  lbu   $t8, 8($v1)
/* 0045107C 8F898C28 */  lw     $t1, %got(diag_flag)($gp)
/* 00451080 8C6F000C */  lw    $t7, 0xc($v1)
/* 00451084 91290000 */  lbu   $t1, ($t1)
/* 00451088 0018CE00 */  sll   $t9, $t8, 0x18
/* 0045108C 00194642 */  srl   $t0, $t9, 0x19
/* 00451090 A3A800C7 */  sb    $t0, 0xc7($sp)
/* 00451094 1120005C */  beqz  $t1, .L00451208
/* 00451098 AFAF00C0 */   sw    $t7, 0xc0($sp)
/* 0045109C 8C6A0008 */  lw    $t2, 8($v1)
/* 004510A0 24010004 */  li    $at, 4
/* 004510A4 000A5B80 */  sll   $t3, $t2, 0xe
/* 004510A8 000B6702 */  srl   $t4, $t3, 0x1c
/* 004510AC 15810056 */  bne   $t4, $at, .L00451208
/* 004510B0 00000000 */   nop   
/* 004510B4 97AD00CA */  lhu   $t5, 0xca($sp)
/* 004510B8 240100CD */  li    $at, 205
/* 004510BC 11A10045 */  beq   $t5, $at, .L004511D4
/* 004510C0 03A05825 */   move  $t3, $sp
/* 004510C4 8F8E8070 */  lw    $t6, %got(RO_1001A2A0)($gp)
/* 004510C8 03A0C825 */  move  $t9, $sp
/* 004510CC 25CEA2A0 */  addiu $t6, %lo(RO_1001A2A0) # addiu $t6, $t6, -0x5d60
/* 004510D0 25D80048 */  addiu $t8, $t6, 0x48
.L004510D4:
/* 004510D4 89C10000 */  lwl   $at, ($t6)
/* 004510D8 99C10003 */  lwr   $at, 3($t6)
/* 004510DC 25CE000C */  addiu $t6, $t6, 0xc
/* 004510E0 AB210000 */  swl   $at, ($t9)
/* 004510E4 BB210003 */  swr   $at, 3($t9)
/* 004510E8 89C1FFF8 */  lwl   $at, -8($t6)
/* 004510EC 99C1FFFB */  lwr   $at, -5($t6)
/* 004510F0 2739000C */  addiu $t9, $t9, 0xc
/* 004510F4 AB21FFF8 */  swl   $at, -8($t9)
/* 004510F8 BB21FFFB */  swr   $at, -5($t9)
/* 004510FC 89C1FFFC */  lwl   $at, -4($t6)
/* 00451100 99C1FFFF */  lwr   $at, -1($t6)
/* 00451104 00000000 */  nop   
/* 00451108 AB21FFFC */  swl   $at, -4($t9)
/* 0045110C 15D8FFF1 */  bne   $t6, $t8, .L004510D4
/* 00451110 BB21FFFF */   swr   $at, -1($t9)
/* 00451114 89C10000 */  lwl   $at, ($t6)
/* 00451118 99C10003 */  lwr   $at, 3($t6)
/* 0045111C 8F888070 */  lw    $t0, %got(RO_1001A250)($gp)
/* 00451120 AB210000 */  swl   $at, ($t9)
/* 00451124 BB210003 */  swr   $at, 3($t9)
/* 00451128 89D80004 */  lwl   $t8, 4($t6)
/* 0045112C 99D80007 */  lwr   $t8, 7($t6)
/* 00451130 2508A250 */  addiu $t0, %lo(RO_1001A250) # addiu $t0, $t0, -0x5db0
/* 00451134 AB380004 */  swl   $t8, 4($t9)
/* 00451138 250A0048 */  addiu $t2, $t0, 0x48
/* 0045113C BB380007 */  swr   $t8, 7($t9)
.L00451140:
/* 00451140 89010000 */  lwl   $at, ($t0)
/* 00451144 99010003 */  lwr   $at, 3($t0)
/* 00451148 2508000C */  addiu $t0, $t0, 0xc
/* 0045114C A9610050 */  swl   $at, 0x50($t3)
/* 00451150 B9610053 */  swr   $at, 0x53($t3)
/* 00451154 8901FFF8 */  lwl   $at, -8($t0)
/* 00451158 9901FFFB */  lwr   $at, -5($t0)
/* 0045115C 256B000C */  addiu $t3, $t3, 0xc
/* 00451160 A9610048 */  swl   $at, 0x48($t3)
/* 00451164 B961004B */  swr   $at, 0x4b($t3)
/* 00451168 8901FFFC */  lwl   $at, -4($t0)
/* 0045116C 9901FFFF */  lwr   $at, -1($t0)
/* 00451170 00000000 */  nop   
/* 00451174 A961004C */  swl   $at, 0x4c($t3)
/* 00451178 150AFFF1 */  bne   $t0, $t2, .L00451140
/* 0045117C B961004F */   swr   $at, 0x4f($t3)
/* 00451180 89010000 */  lwl   $at, ($t0)
/* 00451184 99010003 */  lwr   $at, 3($t0)
/* 00451188 240C0107 */  li    $t4, 263
/* 0045118C A9610050 */  swl   $at, 0x50($t3)
/* 00451190 B9610053 */  swr   $at, 0x53($t3)
/* 00451194 890A0004 */  lwl   $t2, 4($t0)
/* 00451198 990A0007 */  lwr   $t2, 7($t0)
/* 0045119C 00000000 */  nop   
/* 004511A0 A96A0054 */  swl   $t2, 0x54($t3)
/* 004511A4 B96A0057 */  swr   $t2, 0x57($t3)
/* 004511A8 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 004511AC 8FA7000C */  lw    $a3, 0xc($sp)
/* 004511B0 8FA60008 */  lw    $a2, 8($sp)
/* 004511B4 8FA50004 */  lw    $a1, 4($sp)
/* 004511B8 8FA40000 */  lw    $a0, ($sp)
/* 004511BC AFA300B8 */  sw    $v1, 0xb8($sp)
/* 004511C0 0320F809 */  jalr  $t9
/* 004511C4 AFAC00A0 */   sw    $t4, 0xa0($sp)
/* 004511C8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004511CC 8FA300B8 */  lw    $v1, 0xb8($sp)
/* 004511D0 00000000 */  nop   
.L004511D4:
/* 004511D4 94660008 */  lhu   $a2, 8($v1)
/* 004511D8 8FA700C0 */  lw    $a3, 0xc0($sp)
/* 004511DC 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 004511E0 93A500C7 */  lbu   $a1, 0xc7($sp)
/* 004511E4 00066DC0 */  sll   $t5, $a2, 0x17
/* 004511E8 0007C403 */  sra   $t8, $a3, 0x10
/* 004511EC 3307FFFF */  andi  $a3, $t8, 0xffff
/* 004511F0 000D3642 */  srl   $a2, $t5, 0x19
/* 004511F4 0320F809 */  jalr  $t9
/* 004511F8 2404005A */   li    $a0, 90
/* 004511FC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00451200 10000181 */  b     .L00451808
/* 00451204 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00451208:
/* 00451208 8C790008 */  lw    $t9, 8($v1)
/* 0045120C 24010002 */  li    $at, 2
/* 00451210 00194B80 */  sll   $t1, $t9, 0xe
/* 00451214 00095702 */  srl   $t2, $t1, 0x1c
/* 00451218 11410045 */  beq   $t2, $at, .L00451330
/* 0045121C 03A0C825 */   move  $t9, $sp
/* 00451220 8F888070 */  lw    $t0, %got(RO_1001A200)($gp)
/* 00451224 03A06825 */  move  $t5, $sp
/* 00451228 2508A200 */  addiu $t0, %lo(RO_1001A200) # addiu $t0, $t0, -0x5e00
/* 0045122C 250C0048 */  addiu $t4, $t0, 0x48
.L00451230:
/* 00451230 89010000 */  lwl   $at, ($t0)
/* 00451234 99010003 */  lwr   $at, 3($t0)
/* 00451238 2508000C */  addiu $t0, $t0, 0xc
/* 0045123C A9A10000 */  swl   $at, ($t5)
/* 00451240 B9A10003 */  swr   $at, 3($t5)
/* 00451244 8901FFF8 */  lwl   $at, -8($t0)
/* 00451248 9901FFFB */  lwr   $at, -5($t0)
/* 0045124C 25AD000C */  addiu $t5, $t5, 0xc
/* 00451250 A9A1FFF8 */  swl   $at, -8($t5)
/* 00451254 B9A1FFFB */  swr   $at, -5($t5)
/* 00451258 8901FFFC */  lwl   $at, -4($t0)
/* 0045125C 9901FFFF */  lwr   $at, -1($t0)
/* 00451260 00000000 */  nop   
/* 00451264 A9A1FFFC */  swl   $at, -4($t5)
/* 00451268 150CFFF1 */  bne   $t0, $t4, .L00451230
/* 0045126C B9A1FFFF */   swr   $at, -1($t5)
/* 00451270 89010000 */  lwl   $at, ($t0)
/* 00451274 99010003 */  lwr   $at, 3($t0)
/* 00451278 8F8F8070 */  lw    $t7, %got(RO_1001A1B0)($gp)
/* 0045127C A9A10000 */  swl   $at, ($t5)
/* 00451280 B9A10003 */  swr   $at, 3($t5)
/* 00451284 890C0004 */  lwl   $t4, 4($t0)
/* 00451288 990C0007 */  lwr   $t4, 7($t0)
/* 0045128C 25EFA1B0 */  addiu $t7, %lo(RO_1001A1B0) # addiu $t7, $t7, -0x5e50
/* 00451290 A9AC0004 */  swl   $t4, 4($t5)
/* 00451294 25EE0048 */  addiu $t6, $t7, 0x48
/* 00451298 B9AC0007 */  swr   $t4, 7($t5)
.L0045129C:
/* 0045129C 89E10000 */  lwl   $at, ($t7)
/* 004512A0 99E10003 */  lwr   $at, 3($t7)
/* 004512A4 25EF000C */  addiu $t7, $t7, 0xc
/* 004512A8 AB210050 */  swl   $at, 0x50($t9)
/* 004512AC BB210053 */  swr   $at, 0x53($t9)
/* 004512B0 89E1FFF8 */  lwl   $at, -8($t7)
/* 004512B4 99E1FFFB */  lwr   $at, -5($t7)
/* 004512B8 2739000C */  addiu $t9, $t9, 0xc
/* 004512BC AB210048 */  swl   $at, 0x48($t9)
/* 004512C0 BB21004B */  swr   $at, 0x4b($t9)
/* 004512C4 89E1FFFC */  lwl   $at, -4($t7)
/* 004512C8 99E1FFFF */  lwr   $at, -1($t7)
/* 004512CC 00000000 */  nop   
/* 004512D0 AB21004C */  swl   $at, 0x4c($t9)
/* 004512D4 15EEFFF1 */  bne   $t7, $t6, .L0045129C
/* 004512D8 BB21004F */   swr   $at, 0x4f($t9)
/* 004512DC 89E10000 */  lwl   $at, ($t7)
/* 004512E0 99E10003 */  lwr   $at, 3($t7)
/* 004512E4 2409010C */  li    $t1, 268
/* 004512E8 AB210050 */  swl   $at, 0x50($t9)
/* 004512EC BB210053 */  swr   $at, 0x53($t9)
/* 004512F0 89EE0004 */  lwl   $t6, 4($t7)
/* 004512F4 99EE0007 */  lwr   $t6, 7($t7)
/* 004512F8 00000000 */  nop   
/* 004512FC AB2E0054 */  swl   $t6, 0x54($t9)
/* 00451300 BB2E0057 */  swr   $t6, 0x57($t9)
/* 00451304 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 00451308 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045130C 8FA60008 */  lw    $a2, 8($sp)
/* 00451310 8FA50004 */  lw    $a1, 4($sp)
/* 00451314 8FA40000 */  lw    $a0, ($sp)
/* 00451318 AFA300B8 */  sw    $v1, 0xb8($sp)
/* 0045131C 0320F809 */  jalr  $t9
/* 00451320 AFA900A0 */   sw    $t1, 0xa0($sp)
/* 00451324 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00451328 8FA300B8 */  lw    $v1, 0xb8($sp)
/* 0045132C 00000000 */  nop   
.L00451330:
/* 00451330 94620004 */  lhu   $v0, 4($v1)
/* 00451334 24010001 */  li    $at, 1
/* 00451338 000255C0 */  sll   $t2, $v0, 0x17
/* 0045133C 000A1742 */  srl   $v0, $t2, 0x1d
/* 00451340 1441007A */  bne   $v0, $at, .L0045152C
/* 00451344 24010006 */   li    $at, 6
/* 00451348 97AC00CA */  lhu   $t4, 0xca($sp)
/* 0045134C 240100CD */  li    $at, 205
/* 00451350 11810045 */  beq   $t4, $at, .L00451468
/* 00451354 03A05025 */   move  $t2, $sp
/* 00451358 8F888070 */  lw    $t0, %got(RO_1001A160)($gp)
/* 0045135C 03A07025 */  move  $t6, $sp
/* 00451360 2508A160 */  addiu $t0, %lo(RO_1001A160) # addiu $t0, $t0, -0x5ea0
/* 00451364 25180048 */  addiu $t8, $t0, 0x48
.L00451368:
/* 00451368 89010000 */  lwl   $at, ($t0)
/* 0045136C 99010003 */  lwr   $at, 3($t0)
/* 00451370 2508000C */  addiu $t0, $t0, 0xc
/* 00451374 A9C10000 */  swl   $at, ($t6)
/* 00451378 B9C10003 */  swr   $at, 3($t6)
/* 0045137C 8901FFF8 */  lwl   $at, -8($t0)
/* 00451380 9901FFFB */  lwr   $at, -5($t0)
/* 00451384 25CE000C */  addiu $t6, $t6, 0xc
/* 00451388 A9C1FFF8 */  swl   $at, -8($t6)
/* 0045138C B9C1FFFB */  swr   $at, -5($t6)
/* 00451390 8901FFFC */  lwl   $at, -4($t0)
/* 00451394 9901FFFF */  lwr   $at, -1($t0)
/* 00451398 00000000 */  nop   
/* 0045139C A9C1FFFC */  swl   $at, -4($t6)
/* 004513A0 1518FFF1 */  bne   $t0, $t8, .L00451368
/* 004513A4 B9C1FFFF */   swr   $at, -1($t6)
/* 004513A8 89010000 */  lwl   $at, ($t0)
/* 004513AC 99010003 */  lwr   $at, 3($t0)
/* 004513B0 8F8F8070 */  lw    $t7, %got(RO_1001A110)($gp)
/* 004513B4 A9C10000 */  swl   $at, ($t6)
/* 004513B8 B9C10003 */  swr   $at, 3($t6)
/* 004513BC 89180004 */  lwl   $t8, 4($t0)
/* 004513C0 99180007 */  lwr   $t8, 7($t0)
/* 004513C4 25EFA110 */  addiu $t7, %lo(RO_1001A110) # addiu $t7, $t7, -0x5ef0
/* 004513C8 A9D80004 */  swl   $t8, 4($t6)
/* 004513CC 25E90048 */  addiu $t1, $t7, 0x48
/* 004513D0 B9D80007 */  swr   $t8, 7($t6)
.L004513D4:
/* 004513D4 89E10000 */  lwl   $at, ($t7)
/* 004513D8 99E10003 */  lwr   $at, 3($t7)
/* 004513DC 25EF000C */  addiu $t7, $t7, 0xc
/* 004513E0 A9410050 */  swl   $at, 0x50($t2)
/* 004513E4 B9410053 */  swr   $at, 0x53($t2)
/* 004513E8 89E1FFF8 */  lwl   $at, -8($t7)
/* 004513EC 99E1FFFB */  lwr   $at, -5($t7)
/* 004513F0 254A000C */  addiu $t2, $t2, 0xc
/* 004513F4 A9410048 */  swl   $at, 0x48($t2)
/* 004513F8 B941004B */  swr   $at, 0x4b($t2)
/* 004513FC 89E1FFFC */  lwl   $at, -4($t7)
/* 00451400 99E1FFFF */  lwr   $at, -1($t7)
/* 00451404 00000000 */  nop   
/* 00451408 A941004C */  swl   $at, 0x4c($t2)
/* 0045140C 15E9FFF1 */  bne   $t7, $t1, .L004513D4
/* 00451410 B941004F */   swr   $at, 0x4f($t2)
/* 00451414 89E10000 */  lwl   $at, ($t7)
/* 00451418 99E10003 */  lwr   $at, 3($t7)
/* 0045141C 240B010E */  li    $t3, 270
/* 00451420 A9410050 */  swl   $at, 0x50($t2)
/* 00451424 B9410053 */  swr   $at, 0x53($t2)
/* 00451428 89E90004 */  lwl   $t1, 4($t7)
/* 0045142C 99E90007 */  lwr   $t1, 7($t7)
/* 00451430 00000000 */  nop   
/* 00451434 A9490054 */  swl   $t1, 0x54($t2)
/* 00451438 B9490057 */  swr   $t1, 0x57($t2)
/* 0045143C 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 00451440 8FA7000C */  lw    $a3, 0xc($sp)
/* 00451444 8FA60008 */  lw    $a2, 8($sp)
/* 00451448 8FA50004 */  lw    $a1, 4($sp)
/* 0045144C 8FA40000 */  lw    $a0, ($sp)
/* 00451450 AFA300B8 */  sw    $v1, 0xb8($sp)
/* 00451454 0320F809 */  jalr  $t9
/* 00451458 AFAB00A0 */   sw    $t3, 0xa0($sp)
/* 0045145C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00451460 8FA300B8 */  lw    $v1, 0xb8($sp)
/* 00451464 00000000 */  nop   
.L00451468:
/* 00451468 8C640000 */  lw    $a0, ($v1)
/* 0045146C AFA000BC */  sw    $zero, 0xbc($sp)
/* 00451470 10800007 */  beqz  $a0, .L00451490
/* 00451474 00000000 */   nop   
/* 00451478 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 0045147C 00000000 */  nop   
/* 00451480 0320F809 */  jalr  $t9
/* 00451484 00000000 */   nop   
/* 00451488 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045148C AFA200BC */  sw    $v0, 0xbc($sp)
.L00451490:
/* 00451490 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00451494 8FA500C0 */  lw    $a1, 0xc0($sp)
/* 00451498 0320F809 */  jalr  $t9
/* 0045149C 24040001 */   li    $a0, 1
/* 004514A0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004514A4 93A500C7 */  lbu   $a1, 0xc7($sp)
/* 004514A8 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 004514AC 2404005A */  li    $a0, 90
/* 004514B0 00003025 */  move  $a2, $zero
/* 004514B4 0320F809 */  jalr  $t9
/* 004514B8 00403825 */   move  $a3, $v0
/* 004514BC 8FA400BC */  lw    $a0, 0xbc($sp)
/* 004514C0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004514C4 1080000A */  beqz  $a0, .L004514F0
/* 004514C8 2405000D */   li    $a1, 13
/* 004514CC 8F8C8BB0 */  lw     $t4, %got(bbindex)($gp)
/* 004514D0 8F8D8B88 */  lw     $t5, %got(proc_instr_base)($gp)
/* 004514D4 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 004514D8 8D8C0000 */  lw    $t4, ($t4)
/* 004514DC 8DAD0000 */  lw    $t5, ($t5)
/* 004514E0 0320F809 */  jalr  $t9
/* 004514E4 018D3021 */   addu  $a2, $t4, $t5
/* 004514E8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004514EC 00000000 */  nop   
.L004514F0:
/* 004514F0 8F888AF0 */  lw     $t0, %got(nextrld)($gp)
/* 004514F4 8F988AF4 */  lw     $t8, %got(rld_list)($gp)
/* 004514F8 8D080000 */  lw    $t0, ($t0)
/* 004514FC 8F180000 */  lw    $t8, ($t8)
/* 00451500 00087080 */  sll   $t6, $t0, 2
/* 00451504 01C87023 */  subu  $t6, $t6, $t0
/* 00451508 000E70C0 */  sll   $t6, $t6, 3
/* 0045150C 8FB900C0 */  lw    $t9, 0xc0($sp)
/* 00451510 93A900C7 */  lbu   $t1, 0xc7($sp)
/* 00451514 030E1021 */  addu  $v0, $t8, $t6
/* 00451518 2442FFE8 */  addiu $v0, $v0, -0x18
/* 0045151C AC590014 */  sw    $t9, 0x14($v0)
/* 00451520 100000B8 */  b     .L00451804
/* 00451524 A0490011 */   sb    $t1, 0x11($v0)
/* 00451528 24010006 */  li    $at, 6
.L0045152C:
/* 0045152C 144100A0 */  bne   $v0, $at, .L004517B0
/* 00451530 97A900CA */   lhu   $t1, 0xca($sp)
/* 00451534 97AF00CA */  lhu   $t7, 0xca($sp)
/* 00451538 24010029 */  li    $at, 41
/* 0045153C 11E10045 */  beq   $t7, $at, .L00451654
/* 00451540 03A0C825 */   move  $t9, $sp
/* 00451544 8F8A8070 */  lw    $t2, %got(RO_1001A0C0)($gp)
/* 00451548 03A06825 */  move  $t5, $sp
/* 0045154C 254AA0C0 */  addiu $t2, %lo(RO_1001A0C0) # addiu $t2, $t2, -0x5f40
/* 00451550 254C0048 */  addiu $t4, $t2, 0x48
.L00451554:
/* 00451554 89410000 */  lwl   $at, ($t2)
/* 00451558 99410003 */  lwr   $at, 3($t2)
/* 0045155C 254A000C */  addiu $t2, $t2, 0xc
/* 00451560 A9A10000 */  swl   $at, ($t5)
/* 00451564 B9A10003 */  swr   $at, 3($t5)
/* 00451568 8941FFF8 */  lwl   $at, -8($t2)
/* 0045156C 9941FFFB */  lwr   $at, -5($t2)
/* 00451570 25AD000C */  addiu $t5, $t5, 0xc
/* 00451574 A9A1FFF8 */  swl   $at, -8($t5)
/* 00451578 B9A1FFFB */  swr   $at, -5($t5)
/* 0045157C 8941FFFC */  lwl   $at, -4($t2)
/* 00451580 9941FFFF */  lwr   $at, -1($t2)
/* 00451584 00000000 */  nop   
/* 00451588 A9A1FFFC */  swl   $at, -4($t5)
/* 0045158C 154CFFF1 */  bne   $t2, $t4, .L00451554
/* 00451590 B9A1FFFF */   swr   $at, -1($t5)
/* 00451594 89410000 */  lwl   $at, ($t2)
/* 00451598 99410003 */  lwr   $at, 3($t2)
/* 0045159C 8F888070 */  lw    $t0, %got(RO_1001A070)($gp)
/* 004515A0 A9A10000 */  swl   $at, ($t5)
/* 004515A4 B9A10003 */  swr   $at, 3($t5)
/* 004515A8 894C0004 */  lwl   $t4, 4($t2)
/* 004515AC 994C0007 */  lwr   $t4, 7($t2)
/* 004515B0 2508A070 */  addiu $t0, %lo(RO_1001A070) # addiu $t0, $t0, -0x5f90
/* 004515B4 A9AC0004 */  swl   $t4, 4($t5)
/* 004515B8 250E0048 */  addiu $t6, $t0, 0x48
/* 004515BC B9AC0007 */  swr   $t4, 7($t5)
.L004515C0:
/* 004515C0 89010000 */  lwl   $at, ($t0)
/* 004515C4 99010003 */  lwr   $at, 3($t0)
/* 004515C8 2508000C */  addiu $t0, $t0, 0xc
/* 004515CC AB210050 */  swl   $at, 0x50($t9)
/* 004515D0 BB210053 */  swr   $at, 0x53($t9)
/* 004515D4 8901FFF8 */  lwl   $at, -8($t0)
/* 004515D8 9901FFFB */  lwr   $at, -5($t0)
/* 004515DC 2739000C */  addiu $t9, $t9, 0xc
/* 004515E0 AB210048 */  swl   $at, 0x48($t9)
/* 004515E4 BB21004B */  swr   $at, 0x4b($t9)
/* 004515E8 8901FFFC */  lwl   $at, -4($t0)
/* 004515EC 9901FFFF */  lwr   $at, -1($t0)
/* 004515F0 00000000 */  nop   
/* 004515F4 AB21004C */  swl   $at, 0x4c($t9)
/* 004515F8 150EFFF1 */  bne   $t0, $t6, .L004515C0
/* 004515FC BB21004F */   swr   $at, 0x4f($t9)
/* 00451600 89010000 */  lwl   $at, ($t0)
/* 00451604 99010003 */  lwr   $at, 3($t0)
/* 00451608 2409011A */  li    $t1, 282
/* 0045160C AB210050 */  swl   $at, 0x50($t9)
/* 00451610 BB210053 */  swr   $at, 0x53($t9)
/* 00451614 890E0004 */  lwl   $t6, 4($t0)
/* 00451618 990E0007 */  lwr   $t6, 7($t0)
/* 0045161C 00000000 */  nop   
/* 00451620 AB2E0054 */  swl   $t6, 0x54($t9)
/* 00451624 BB2E0057 */  swr   $t6, 0x57($t9)
/* 00451628 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0045162C 8FA7000C */  lw    $a3, 0xc($sp)
/* 00451630 8FA60008 */  lw    $a2, 8($sp)
/* 00451634 8FA50004 */  lw    $a1, 4($sp)
/* 00451638 8FA40000 */  lw    $a0, ($sp)
/* 0045163C AFA300B8 */  sw    $v1, 0xb8($sp)
/* 00451640 0320F809 */  jalr  $t9
/* 00451644 AFA900A0 */   sw    $t1, 0xa0($sp)
/* 00451648 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045164C 8FA300B8 */  lw    $v1, 0xb8($sp)
/* 00451650 00000000 */  nop   
.L00451654:
/* 00451654 8C640000 */  lw    $a0, ($v1)
/* 00451658 03A04025 */  move  $t0, $sp
/* 0045165C 14800046 */  bnez  $a0, .L00451778
/* 00451660 00000000 */   nop   
/* 00451664 8F8F8070 */  lw    $t7, %got(RO_1001A020)($gp)
/* 00451668 03A05025 */  move  $t2, $sp
/* 0045166C 25EFA020 */  addiu $t7, %lo(RO_1001A020) # addiu $t7, $t7, -0x5fe0
/* 00451670 25EC0048 */  addiu $t4, $t7, 0x48
.L00451674:
/* 00451674 89E10000 */  lwl   $at, ($t7)
/* 00451678 99E10003 */  lwr   $at, 3($t7)
/* 0045167C 25EF000C */  addiu $t7, $t7, 0xc
/* 00451680 A9410000 */  swl   $at, ($t2)
/* 00451684 B9410003 */  swr   $at, 3($t2)
/* 00451688 89E1FFF8 */  lwl   $at, -8($t7)
/* 0045168C 99E1FFFB */  lwr   $at, -5($t7)
/* 00451690 254A000C */  addiu $t2, $t2, 0xc
/* 00451694 A941FFF8 */  swl   $at, -8($t2)
/* 00451698 B941FFFB */  swr   $at, -5($t2)
/* 0045169C 89E1FFFC */  lwl   $at, -4($t7)
/* 004516A0 99E1FFFF */  lwr   $at, -1($t7)
/* 004516A4 00000000 */  nop   
/* 004516A8 A941FFFC */  swl   $at, -4($t2)
/* 004516AC 15ECFFF1 */  bne   $t7, $t4, .L00451674
/* 004516B0 B941FFFF */   swr   $at, -1($t2)
/* 004516B4 89E10000 */  lwl   $at, ($t7)
/* 004516B8 99E10003 */  lwr   $at, 3($t7)
/* 004516BC 8F8D8070 */  lw    $t5, %got(RO_10019FD0)($gp)
/* 004516C0 A9410000 */  swl   $at, ($t2)
/* 004516C4 B9410003 */  swr   $at, 3($t2)
/* 004516C8 89EC0004 */  lwl   $t4, 4($t7)
/* 004516CC 99EC0007 */  lwr   $t4, 7($t7)
/* 004516D0 25AD9FD0 */  addiu $t5, %lo(RO_10019FD0) # addiu $t5, $t5, -0x6030
/* 004516D4 A94C0004 */  swl   $t4, 4($t2)
/* 004516D8 25AE0048 */  addiu $t6, $t5, 0x48
/* 004516DC B94C0007 */  swr   $t4, 7($t2)
.L004516E0:
/* 004516E0 89A10000 */  lwl   $at, ($t5)
/* 004516E4 99A10003 */  lwr   $at, 3($t5)
/* 004516E8 25AD000C */  addiu $t5, $t5, 0xc
/* 004516EC A9010050 */  swl   $at, 0x50($t0)
/* 004516F0 B9010053 */  swr   $at, 0x53($t0)
/* 004516F4 89A1FFF8 */  lwl   $at, -8($t5)
/* 004516F8 99A1FFFB */  lwr   $at, -5($t5)
/* 004516FC 2508000C */  addiu $t0, $t0, 0xc
/* 00451700 A9010048 */  swl   $at, 0x48($t0)
/* 00451704 B901004B */  swr   $at, 0x4b($t0)
/* 00451708 89A1FFFC */  lwl   $at, -4($t5)
/* 0045170C 99A1FFFF */  lwr   $at, -1($t5)
/* 00451710 00000000 */  nop   
/* 00451714 A901004C */  swl   $at, 0x4c($t0)
/* 00451718 15AEFFF1 */  bne   $t5, $t6, .L004516E0
/* 0045171C B901004F */   swr   $at, 0x4f($t0)
/* 00451720 89A10000 */  lwl   $at, ($t5)
/* 00451724 99A10003 */  lwr   $at, 3($t5)
/* 00451728 2419011C */  li    $t9, 284
/* 0045172C A9010050 */  swl   $at, 0x50($t0)
/* 00451730 B9010053 */  swr   $at, 0x53($t0)
/* 00451734 89AE0004 */  lwl   $t6, 4($t5)
/* 00451738 99AE0007 */  lwr   $t6, 7($t5)
/* 0045173C 00000000 */  nop   
/* 00451740 A90E0054 */  swl   $t6, 0x54($t0)
/* 00451744 B90E0057 */  swr   $t6, 0x57($t0)
/* 00451748 AFB900A0 */  sw    $t9, 0xa0($sp)
/* 0045174C 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 00451750 8FA7000C */  lw    $a3, 0xc($sp)
/* 00451754 8FA60008 */  lw    $a2, 8($sp)
/* 00451758 8FA50004 */  lw    $a1, 4($sp)
/* 0045175C 8FA40000 */  lw    $a0, ($sp)
/* 00451760 0320F809 */  jalr  $t9
/* 00451764 AFA300B8 */   sw    $v1, 0xb8($sp)
/* 00451768 8FA300B8 */  lw    $v1, 0xb8($sp)
/* 0045176C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00451770 8C640000 */  lw    $a0, ($v1)
/* 00451774 00000000 */  nop   
.L00451778:
/* 00451778 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 0045177C 00000000 */  nop   
/* 00451780 0320F809 */  jalr  $t9
/* 00451784 00000000 */   nop   
/* 00451788 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045178C 8FA400C0 */  lw    $a0, 0xc0($sp)
/* 00451790 8F99848C */  lw    $t9, %call16(loadimmed)($gp)
/* 00451794 93A500C7 */  lbu   $a1, 0xc7($sp)
/* 00451798 0320F809 */  jalr  $t9
/* 0045179C 00403025 */   move  $a2, $v0
/* 004517A0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004517A4 10000018 */  b     .L00451808
/* 004517A8 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 004517AC 97A900CA */  lhu   $t1, 0xca($sp)
.L004517B0:
/* 004517B0 240100CD */  li    $at, 205
/* 004517B4 1521000C */  bne   $t1, $at, .L004517E8
/* 004517B8 00000000 */   nop   
/* 004517BC 8FAB00C0 */  lw    $t3, 0xc0($sp)
/* 004517C0 93A500C7 */  lbu   $a1, 0xc7($sp)
/* 004517C4 15600008 */  bnez  $t3, .L004517E8
/* 004517C8 2404005A */   li    $a0, 90
/* 004517CC 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 004517D0 00003025 */  move  $a2, $zero
/* 004517D4 0320F809 */  jalr  $t9
/* 004517D8 01603825 */   move  $a3, $t3
/* 004517DC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004517E0 10000009 */  b     .L00451808
/* 004517E4 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L004517E8:
/* 004517E8 8F99848C */  lw    $t9, %call16(loadimmed)($gp)
/* 004517EC 8FA400C0 */  lw    $a0, 0xc0($sp)
/* 004517F0 93A500C7 */  lbu   $a1, 0xc7($sp)
/* 004517F4 0320F809 */  jalr  $t9
/* 004517F8 00003025 */   move  $a2, $zero
/* 004517FC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00451800 00000000 */  nop   
.L00451804:
/* 00451804 8FBF00B4 */  lw    $ra, 0xb4($sp)
.L00451808:
/* 00451808 27BD00C8 */  addiu $sp, $sp, 0xc8
/* 0045180C 03E00008 */  jr    $ra
/* 00451810 00000000 */   nop   

    .type parseafri, @function
    .size parseafri, .-parseafri
    .end parseafri

glabel parseafrrl
    .ent parseafrrl
    # 004594BC parsestmt
    # 00469164 func_00469164
/* 00451814 3C1C0FBE */  .cpload $t9
/* 00451818 279C8A4C */  
/* 0045181C 0399E021 */  
/* 00451820 8F8E89C4 */  lw     $t6, %got(cpalias_set)($gp)
/* 00451824 27BDFF30 */  addiu $sp, $sp, -0xd0
/* 00451828 91CE0000 */  lbu   $t6, ($t6)
/* 0045182C AFB000AC */  sw    $s0, 0xac($sp)
/* 00451830 3090FFFF */  andi  $s0, $a0, 0xffff
/* 00451834 AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 00451838 AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 0045183C AFA400D0 */  sw    $a0, 0xd0($sp)
/* 00451840 11C00008 */  beqz  $t6, .L00451864
/* 00451844 AFA500D4 */   sw    $a1, 0xd4($sp)
/* 00451848 8F9984D4 */  lw    $t9, %call16(init_cpalias)($gp)
/* 0045184C 00000000 */  nop   
/* 00451850 0320F809 */  jalr  $t9
/* 00451854 00000000 */   nop   
/* 00451858 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045185C 10000007 */  b     .L0045187C
/* 00451860 00000000 */   nop   
.L00451864:
/* 00451864 8F9984D0 */  lw    $t9, %call16(restore_gp)($gp)
/* 00451868 00000000 */  nop   
/* 0045186C 0320F809 */  jalr  $t9
/* 00451870 00000000 */   nop   
/* 00451874 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00451878 00000000 */  nop   
.L0045187C:
/* 0045187C 8F838D64 */  lw     $v1, %got(binasmfyle)($gp)
/* 00451880 8F818CB0 */  lw     $at, %got(branchpending)($gp)
/* 00451884 8C630000 */  lw    $v1, ($v1)
/* 00451888 240F0001 */  li    $t7, 1
/* 0045188C A02F0000 */  sb    $t7, ($at)
/* 00451890 90620008 */  lbu   $v0, 8($v1)
/* 00451894 00000000 */  nop   
/* 00451898 0002C600 */  sll   $t8, $v0, 0x18
/* 0045189C 0018CE42 */  srl   $t9, $t8, 0x19
/* 004518A0 2729FFE0 */  addiu $t1, $t9, -0x20
/* 004518A4 2D2A0020 */  sltiu $t2, $t1, 0x20
/* 004518A8 000A5823 */  negu  $t3, $t2
/* 004518AC 012B6004 */  sllv  $t4, $t3, $t1
/* 004518B0 05810046 */  bgez  $t4, .L004519CC
/* 004518B4 A3B900CF */   sb    $t9, 0xcf($sp)
/* 004518B8 8F8D8070 */  lw    $t5, %got(RO_1001A52A)($gp)
/* 004518BC 03A0C025 */  move  $t8, $sp
/* 004518C0 25ADA52A */  addiu $t5, %lo(RO_1001A52A) # addiu $t5, $t5, -0x5ad6
/* 004518C4 25AF0048 */  addiu $t7, $t5, 0x48
.L004518C8:
/* 004518C8 89A10000 */  lwl   $at, ($t5)
/* 004518CC 99A10003 */  lwr   $at, 3($t5)
/* 004518D0 25AD000C */  addiu $t5, $t5, 0xc
/* 004518D4 AB010000 */  swl   $at, ($t8)
/* 004518D8 BB010003 */  swr   $at, 3($t8)
/* 004518DC 89A1FFF8 */  lwl   $at, -8($t5)
/* 004518E0 99A1FFFB */  lwr   $at, -5($t5)
/* 004518E4 2718000C */  addiu $t8, $t8, 0xc
/* 004518E8 AB01FFF8 */  swl   $at, -8($t8)
/* 004518EC BB01FFFB */  swr   $at, -5($t8)
/* 004518F0 89A1FFFC */  lwl   $at, -4($t5)
/* 004518F4 99A1FFFF */  lwr   $at, -1($t5)
/* 004518F8 00000000 */  nop   
/* 004518FC AB01FFFC */  swl   $at, -4($t8)
/* 00451900 15AFFFF1 */  bne   $t5, $t7, .L004518C8
/* 00451904 BB01FFFF */   swr   $at, -1($t8)
/* 00451908 89A10000 */  lwl   $at, ($t5)
/* 0045190C 99A10003 */  lwr   $at, 3($t5)
/* 00451910 8F998070 */  lw    $t9, %got(RO_1001A4DA)($gp)
/* 00451914 AB010000 */  swl   $at, ($t8)
/* 00451918 BB010003 */  swr   $at, 3($t8)
/* 0045191C 89AF0004 */  lwl   $t7, 4($t5)
/* 00451920 99AF0007 */  lwr   $t7, 7($t5)
/* 00451924 2739A4DA */  addiu $t9, %lo(RO_1001A4DA) # addiu $t9, $t9, -0x5b26
/* 00451928 AB0F0004 */  swl   $t7, 4($t8)
/* 0045192C 272B0048 */  addiu $t3, $t9, 0x48
/* 00451930 03A04825 */  move  $t1, $sp
/* 00451934 BB0F0007 */  swr   $t7, 7($t8)
.L00451938:
/* 00451938 8B210000 */  lwl   $at, ($t9)
/* 0045193C 9B210003 */  lwr   $at, 3($t9)
/* 00451940 2739000C */  addiu $t9, $t9, 0xc
/* 00451944 A9210050 */  swl   $at, 0x50($t1)
/* 00451948 B9210053 */  swr   $at, 0x53($t1)
/* 0045194C 8B21FFF8 */  lwl   $at, -8($t9)
/* 00451950 9B21FFFB */  lwr   $at, -5($t9)
/* 00451954 2529000C */  addiu $t1, $t1, 0xc
/* 00451958 A9210048 */  swl   $at, 0x48($t1)
/* 0045195C B921004B */  swr   $at, 0x4b($t1)
/* 00451960 8B21FFFC */  lwl   $at, -4($t9)
/* 00451964 9B21FFFF */  lwr   $at, -1($t9)
/* 00451968 00000000 */  nop   
/* 0045196C A921004C */  swl   $at, 0x4c($t1)
/* 00451970 172BFFF1 */  bne   $t9, $t3, .L00451938
/* 00451974 B921004F */   swr   $at, 0x4f($t1)
/* 00451978 8B210000 */  lwl   $at, ($t9)
/* 0045197C 9B210003 */  lwr   $at, 3($t9)
/* 00451980 240C015D */  li    $t4, 349
/* 00451984 A9210050 */  swl   $at, 0x50($t1)
/* 00451988 B9210053 */  swr   $at, 0x53($t1)
/* 0045198C 8B2B0004 */  lwl   $t3, 4($t9)
/* 00451990 9B2B0007 */  lwr   $t3, 7($t9)
/* 00451994 00000000 */  nop   
/* 00451998 A92B0054 */  swl   $t3, 0x54($t1)
/* 0045199C B92B0057 */  swr   $t3, 0x57($t1)
/* 004519A0 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 004519A4 8FA7000C */  lw    $a3, 0xc($sp)
/* 004519A8 8FA60008 */  lw    $a2, 8($sp)
/* 004519AC 8FA50004 */  lw    $a1, 4($sp)
/* 004519B0 8FA40000 */  lw    $a0, ($sp)
/* 004519B4 AFA300B8 */  sw    $v1, 0xb8($sp)
/* 004519B8 0320F809 */  jalr  $t9
/* 004519BC AFAC00A0 */   sw    $t4, 0xa0($sp)
/* 004519C0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004519C4 8FA300B8 */  lw    $v1, 0xb8($sp)
/* 004519C8 00000000 */  nop   
.L004519CC:
/* 004519CC 94620004 */  lhu   $v0, 4($v1)
/* 004519D0 24010003 */  li    $at, 3
/* 004519D4 000275C0 */  sll   $t6, $v0, 0x17
/* 004519D8 000E1742 */  srl   $v0, $t6, 0x1d
/* 004519DC 14410006 */  bne   $v0, $at, .L004519F8
/* 004519E0 AFA000C8 */   sw    $zero, 0xc8($sp)
/* 004519E4 946D000A */  lhu   $t5, 0xa($v1)
/* 004519E8 00000000 */  nop   
/* 004519EC 31B83FFF */  andi  $t8, $t5, 0x3fff
/* 004519F0 10000019 */  b     .L00451A58
/* 004519F4 AFB800BC */   sw    $t8, 0xbc($sp)
.L004519F8:
/* 004519F8 24010004 */  li    $at, 4
/* 004519FC 14410008 */  bne   $v0, $at, .L00451A20
/* 00451A00 93AC00D7 */   lbu   $t4, 0xd7($sp)
/* 00451A04 946A000A */  lhu   $t2, 0xa($v1)
/* 00451A08 2419FFFF */  li    $t9, -1
/* 00451A0C 314B3FFF */  andi  $t3, $t2, 0x3fff
/* 00451A10 032B4823 */  subu  $t1, $t9, $t3
/* 00451A14 10000010 */  b     .L00451A58
/* 00451A18 AFA900BC */   sw    $t1, 0xbc($sp)
/* 00451A1C 93AC00D7 */  lbu   $t4, 0xd7($sp)
.L00451A20:
/* 00451A20 00000000 */  nop   
/* 00451A24 11800004 */  beqz  $t4, .L00451A38
/* 00451A28 00000000 */   nop   
/* 00451A2C 8C6E0000 */  lw    $t6, ($v1)
/* 00451A30 10000009 */  b     .L00451A58
/* 00451A34 AFAE00BC */   sw    $t6, 0xbc($sp)
.L00451A38:
/* 00451A38 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 00451A3C 8C640000 */  lw    $a0, ($v1)
/* 00451A40 0320F809 */  jalr  $t9
/* 00451A44 AFA300B8 */   sw    $v1, 0xb8($sp)
/* 00451A48 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00451A4C 8FA300B8 */  lw    $v1, 0xb8($sp)
/* 00451A50 AFA200C8 */  sw    $v0, 0xc8($sp)
/* 00451A54 AFA000BC */  sw    $zero, 0xbc($sp)
.L00451A58:
/* 00451A58 8C620008 */  lw    $v0, 8($v1)
/* 00451A5C 24010008 */  li    $at, 8
/* 00451A60 00027B80 */  sll   $t7, $v0, 0xe
/* 00451A64 000F1702 */  srl   $v0, $t7, 0x1c
/* 00451A68 14410007 */  bne   $v0, $at, .L00451A88
/* 00451A6C 00004025 */   move  $t0, $zero
/* 00451A70 94780008 */  lhu   $t8, 8($v1)
/* 00451A74 AFA000C0 */  sw    $zero, 0xc0($sp)
/* 00451A78 001855C0 */  sll   $t2, $t8, 0x17
/* 00451A7C 000ACE42 */  srl   $t9, $t2, 0x19
/* 00451A80 10000368 */  b     .L00452824
/* 00451A84 A3B900CE */   sb    $t9, 0xce($sp)
.L00451A88:
/* 00451A88 2401000C */  li    $at, 12
/* 00451A8C 14410007 */  bne   $v0, $at, .L00451AAC
/* 00451A90 03A05825 */   move  $t3, $sp
/* 00451A94 8C69000C */  lw    $t1, 0xc($v1)
/* 00451A98 240B0048 */  li    $t3, 72
/* 00451A9C A3AB00CE */  sb    $t3, 0xce($sp)
/* 00451AA0 24080001 */  li    $t0, 1
/* 00451AA4 1000035F */  b     .L00452824
/* 00451AA8 AFA900C0 */   sw    $t1, 0xc0($sp)
.L00451AAC:
/* 00451AAC 8F8C8070 */  lw    $t4, %got(RO_1001A48A)($gp)
/* 00451AB0 03A06825 */  move  $t5, $sp
/* 00451AB4 258CA48A */  addiu $t4, %lo(RO_1001A48A) # addiu $t4, $t4, -0x5b76
/* 00451AB8 258F0048 */  addiu $t7, $t4, 0x48
.L00451ABC:
/* 00451ABC 89810000 */  lwl   $at, ($t4)
/* 00451AC0 99810003 */  lwr   $at, 3($t4)
/* 00451AC4 258C000C */  addiu $t4, $t4, 0xc
/* 00451AC8 A9A10000 */  swl   $at, ($t5)
/* 00451ACC B9A10003 */  swr   $at, 3($t5)
/* 00451AD0 8981FFF8 */  lwl   $at, -8($t4)
/* 00451AD4 9981FFFB */  lwr   $at, -5($t4)
/* 00451AD8 25AD000C */  addiu $t5, $t5, 0xc
/* 00451ADC A9A1FFF8 */  swl   $at, -8($t5)
/* 00451AE0 B9A1FFFB */  swr   $at, -5($t5)
/* 00451AE4 8981FFFC */  lwl   $at, -4($t4)
/* 00451AE8 9981FFFF */  lwr   $at, -1($t4)
/* 00451AEC 00000000 */  nop   
/* 00451AF0 A9A1FFFC */  swl   $at, -4($t5)
/* 00451AF4 158FFFF1 */  bne   $t4, $t7, .L00451ABC
/* 00451AF8 B9A1FFFF */   swr   $at, -1($t5)
/* 00451AFC 89810000 */  lwl   $at, ($t4)
/* 00451B00 99810003 */  lwr   $at, 3($t4)
/* 00451B04 8F988070 */  lw    $t8, %got(RO_1001A43A)($gp)
/* 00451B08 A9A10000 */  swl   $at, ($t5)
/* 00451B0C B9A10003 */  swr   $at, 3($t5)
/* 00451B10 898F0004 */  lwl   $t7, 4($t4)
/* 00451B14 998F0007 */  lwr   $t7, 7($t4)
/* 00451B18 2718A43A */  addiu $t8, %lo(RO_1001A43A) # addiu $t8, $t8, -0x5bc6
/* 00451B1C A9AF0004 */  swl   $t7, 4($t5)
/* 00451B20 27190048 */  addiu $t9, $t8, 0x48
/* 00451B24 B9AF0007 */  swr   $t7, 7($t5)
.L00451B28:
/* 00451B28 8B010000 */  lwl   $at, ($t8)
/* 00451B2C 9B010003 */  lwr   $at, 3($t8)
/* 00451B30 2718000C */  addiu $t8, $t8, 0xc
/* 00451B34 A9610050 */  swl   $at, 0x50($t3)
/* 00451B38 B9610053 */  swr   $at, 0x53($t3)
/* 00451B3C 8B01FFF8 */  lwl   $at, -8($t8)
/* 00451B40 9B01FFFB */  lwr   $at, -5($t8)
/* 00451B44 256B000C */  addiu $t3, $t3, 0xc
/* 00451B48 A9610048 */  swl   $at, 0x48($t3)
/* 00451B4C B961004B */  swr   $at, 0x4b($t3)
/* 00451B50 8B01FFFC */  lwl   $at, -4($t8)
/* 00451B54 9B01FFFF */  lwr   $at, -1($t8)
/* 00451B58 00000000 */  nop   
/* 00451B5C A961004C */  swl   $at, 0x4c($t3)
/* 00451B60 1719FFF1 */  bne   $t8, $t9, .L00451B28
/* 00451B64 B961004F */   swr   $at, 0x4f($t3)
/* 00451B68 8B010000 */  lwl   $at, ($t8)
/* 00451B6C 9B010003 */  lwr   $at, 3($t8)
/* 00451B70 24090177 */  li    $t1, 375
/* 00451B74 A9610050 */  swl   $at, 0x50($t3)
/* 00451B78 B9610053 */  swr   $at, 0x53($t3)
/* 00451B7C 8B190004 */  lwl   $t9, 4($t8)
/* 00451B80 9B190007 */  lwr   $t9, 7($t8)
/* 00451B84 00000000 */  nop   
/* 00451B88 A9790054 */  swl   $t9, 0x54($t3)
/* 00451B8C B9790057 */  swr   $t9, 0x57($t3)
/* 00451B90 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 00451B94 8FA7000C */  lw    $a3, 0xc($sp)
/* 00451B98 8FA60008 */  lw    $a2, 8($sp)
/* 00451B9C 8FA50004 */  lw    $a1, 4($sp)
/* 00451BA0 8FA40000 */  lw    $a0, ($sp)
/* 00451BA4 AFA300B8 */  sw    $v1, 0xb8($sp)
/* 00451BA8 0320F809 */  jalr  $t9
/* 00451BAC AFA900A0 */   sw    $t1, 0xa0($sp)
/* 00451BB0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00451BB4 8FA300B8 */  lw    $v1, 0xb8($sp)
/* 00451BB8 93A800C5 */  lbu   $t0, 0xc5($sp)
/* 00451BBC 1000031A */  b     .L00452828
/* 00451BC0 2E01001B */   sltiu $at, $s0, 0x1b
.L00451BC4:
/* 00451BC4 11000031 */  beqz  $t0, .L00451C8C
/* 00451BC8 00107840 */   sll   $t7, $s0, 1
/* 00451BCC 8FAE00C0 */  lw    $t6, 0xc0($sp)
/* 00451BD0 93A500CF */  lbu   $a1, 0xcf($sp)
/* 00451BD4 15C0000D */  bnez  $t6, .L00451C0C
/* 00451BD8 00107840 */   sll   $t7, $s0, 1
/* 00451BDC 8F8C8D1C */  lw     $t4, %got(asm2op)($gp)
/* 00451BE0 8FAA00BC */  lw    $t2, 0xbc($sp)
/* 00451BE4 8F998468 */  lw    $t9, %call16(emitbene)($gp)
/* 00451BE8 01EC6821 */  addu  $t5, $t7, $t4
/* 00451BEC 95A40000 */  lhu   $a0, ($t5)
/* 00451BF0 8FA700C8 */  lw    $a3, 0xc8($sp)
/* 00451BF4 00003025 */  move  $a2, $zero
/* 00451BF8 0320F809 */  jalr  $t9
/* 00451BFC AFAA0010 */   sw    $t2, 0x10($sp)
/* 00451C00 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00451C04 10000322 */  b     .L00452890
/* 00451C08 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00451C0C:
/* 00451C0C 8F998BB4 */  lw     $t9, %got(atflag)($gp)
/* 00451C10 00000000 */  nop   
/* 00451C14 93390000 */  lbu   $t9, ($t9)
/* 00451C18 00000000 */  nop   
/* 00451C1C 17200007 */  bnez  $t9, .L00451C3C
/* 00451C20 00000000 */   nop   
/* 00451C24 8F9984C8 */  lw    $t9, %call16(macro_error)($gp)
/* 00451C28 00000000 */  nop   
/* 00451C2C 0320F809 */  jalr  $t9
/* 00451C30 00000000 */   nop   
/* 00451C34 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00451C38 00000000 */  nop   
.L00451C3C:
/* 00451C3C 8F99848C */  lw    $t9, %call16(loadimmed)($gp)
/* 00451C40 8FA400C0 */  lw    $a0, 0xc0($sp)
/* 00451C44 24050001 */  li    $a1, 1
/* 00451C48 0320F809 */  jalr  $t9
/* 00451C4C 00003025 */   move  $a2, $zero
/* 00451C50 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00451C54 0010C040 */  sll   $t8, $s0, 1
/* 00451C58 8F8B8D1C */  lw     $t3, %got(asm2op)($gp)
/* 00451C5C 8FAE00BC */  lw    $t6, 0xbc($sp)
/* 00451C60 8F998468 */  lw    $t9, %call16(emitbene)($gp)
/* 00451C64 030B4821 */  addu  $t1, $t8, $t3
/* 00451C68 95240000 */  lhu   $a0, ($t1)
/* 00451C6C 93A500CF */  lbu   $a1, 0xcf($sp)
/* 00451C70 8FA700C8 */  lw    $a3, 0xc8($sp)
/* 00451C74 24060001 */  li    $a2, 1
/* 00451C78 0320F809 */  jalr  $t9
/* 00451C7C AFAE0010 */   sw    $t6, 0x10($sp)
/* 00451C80 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00451C84 10000302 */  b     .L00452890
/* 00451C88 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00451C8C:
/* 00451C8C 8F8C8D1C */  lw     $t4, %got(asm2op)($gp)
/* 00451C90 8FAA00BC */  lw    $t2, 0xbc($sp)
/* 00451C94 8F998468 */  lw    $t9, %call16(emitbene)($gp)
/* 00451C98 01EC6821 */  addu  $t5, $t7, $t4
/* 00451C9C 95A40000 */  lhu   $a0, ($t5)
/* 00451CA0 93A500CF */  lbu   $a1, 0xcf($sp)
/* 00451CA4 93A600CE */  lbu   $a2, 0xce($sp)
/* 00451CA8 8FA700C8 */  lw    $a3, 0xc8($sp)
/* 00451CAC 0320F809 */  jalr  $t9
/* 00451CB0 AFAA0010 */   sw    $t2, 0x10($sp)
/* 00451CB4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00451CB8 100002F5 */  b     .L00452890
/* 00451CBC 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00451CC0:
/* 00451CC0 93B900CE */  lbu   $t9, 0xce($sp)
/* 00451CC4 93AB00CF */  lbu   $t3, 0xcf($sp)
/* 00451CC8 17200006 */  bnez  $t9, .L00451CE4
/* 00451CCC 240D0048 */   li    $t5, 72
/* 00451CD0 24180048 */  li    $t8, 72
/* 00451CD4 A3B800CE */  sb    $t8, 0xce($sp)
/* 00451CD8 24080001 */  li    $t0, 1
/* 00451CDC 10000047 */  b     .L00451DFC
/* 00451CE0 AFA000C0 */   sw    $zero, 0xc0($sp)
.L00451CE4:
/* 00451CE4 15600045 */  bnez  $t3, .L00451DFC
/* 00451CE8 244AFEE9 */   addiu $t2, $v0, -0x117
/* 00451CEC 8C690008 */  lw    $t1, 8($v1)
/* 00451CF0 24010008 */  li    $at, 8
/* 00451CF4 00097380 */  sll   $t6, $t1, 0xe
/* 00451CF8 000E7F02 */  srl   $t7, $t6, 0x1c
/* 00451CFC 15E1003F */  bne   $t7, $at, .L00451DFC
/* 00451D00 00000000 */   nop   
/* 00451D04 93AC00CE */  lbu   $t4, 0xce($sp)
/* 00451D08 2E010019 */  sltiu $at, $s0, 0x19
/* 00451D0C A3AD00CE */  sb    $t5, 0xce($sp)
/* 00451D10 24080001 */  li    $t0, 1
/* 00451D14 AFA000C0 */  sw    $zero, 0xc0($sp)
/* 00451D18 1420002C */  bnez  $at, .L00451DCC
/* 00451D1C A3AC00CF */   sb    $t4, 0xcf($sp)
/* 00451D20 2D41000C */  sltiu $at, $t2, 0xc
/* 00451D24 10200035 */  beqz  $at, .L00451DFC
/* 00451D28 00000000 */   nop   
/* 00451D2C 8F818070 */  lw    $at, %got(jtbl_1001A5A8)($gp)
/* 00451D30 000A5080 */  sll   $t2, $t2, 2
/* 00451D34 002A0821 */  addu  $at, $at, $t2
/* 00451D38 8C2AA5A8 */  lw    $t2, %lo(jtbl_1001A5A8)($at)
/* 00451D3C 00000000 */  nop   
/* 00451D40 015C5021 */  addu  $t2, $t2, $gp
/* 00451D44 01400008 */  jr    $t2
/* 00451D48 00000000 */   nop   
.L00451D4C:
/* 00451D4C 1000002B */  b     .L00451DFC
/* 00451D50 24100014 */   li    $s0, 20
.L00451D54:
/* 00451D54 10000029 */  b     .L00451DFC
/* 00451D58 24100017 */   li    $s0, 23
.L00451D5C:
/* 00451D5C 10000027 */  b     .L00451DFC
/* 00451D60 2410000E */   li    $s0, 14
.L00451D64:
/* 00451D64 10000025 */  b     .L00451DFC
/* 00451D68 24100011 */   li    $s0, 17
.L00451D6C:
/* 00451D6C 10000023 */  b     .L00451DFC
/* 00451D70 24100015 */   li    $s0, 21
.L00451D74:
/* 00451D74 10000021 */  b     .L00451DFC
/* 00451D78 24100018 */   li    $s0, 24
.L00451D7C:
/* 00451D7C 1000001F */  b     .L00451DFC
/* 00451D80 2410000F */   li    $s0, 15
.L00451D84:
/* 00451D84 1000001D */  b     .L00451DFC
/* 00451D88 24100012 */   li    $s0, 18
.L00451D8C:
/* 00451D8C 1000001B */  b     .L00451DFC
/* 00451D90 24100117 */   li    $s0, 279
.L00451D94:
/* 00451D94 10000019 */  b     .L00451DFC
/* 00451D98 2410011D */   li    $s0, 285
.L00451D9C:
/* 00451D9C 10000017 */  b     .L00451DFC
/* 00451DA0 24100121 */   li    $s0, 289
.L00451DA4:
/* 00451DA4 10000015 */  b     .L00451DFC
/* 00451DA8 2410011A */   li    $s0, 282
.L00451DAC:
/* 00451DAC 10000013 */  b     .L00451DFC
/* 00451DB0 24100118 */   li    $s0, 280
.L00451DB4:
/* 00451DB4 10000011 */  b     .L00451DFC
/* 00451DB8 2410011E */   li    $s0, 286
.L00451DBC:
/* 00451DBC 1000000F */  b     .L00451DFC
/* 00451DC0 24100122 */   li    $s0, 290
.L00451DC4:
/* 00451DC4 1000000D */  b     .L00451DFC
/* 00451DC8 2410011B */   li    $s0, 283
.L00451DCC:
/* 00451DCC 2459FFF2 */  addiu $t9, $v0, -0xe
/* 00451DD0 2F21000B */  sltiu $at, $t9, 0xb
/* 00451DD4 10200009 */  beqz  $at, .L00451DFC
/* 00451DD8 00000000 */   nop   
/* 00451DDC 8F818070 */  lw    $at, %got(jtbl_1001A57C)($gp)
/* 00451DE0 0019C880 */  sll   $t9, $t9, 2
/* 00451DE4 00390821 */  addu  $at, $at, $t9
/* 00451DE8 8C39A57C */  lw    $t9, %lo(jtbl_1001A57C)($at)
/* 00451DEC 00000000 */  nop   
/* 00451DF0 033CC821 */  addu  $t9, $t9, $gp
/* 00451DF4 03200008 */  jr    $t9
/* 00451DF8 00000000 */   nop   
.L00451DFC:
/* 00451DFC 110000C6 */  beqz  $t0, .L00452118
/* 00451E00 2E010019 */   sltiu $at, $s0, 0x19
/* 00451E04 8FB800C0 */  lw    $t8, 0xc0($sp)
/* 00451E08 00000000 */  nop   
/* 00451E0C 130000C2 */  beqz  $t8, .L00452118
/* 00451E10 00000000 */   nop   
/* 00451E14 100000A7 */  b     .L004520B4
/* 00451E18 02001025 */   move  $v0, $s0
.L00451E1C:
/* 00451E1C 8FAB00C0 */  lw    $t3, 0xc0($sp)
/* 00451E20 24010001 */  li    $at, 1
/* 00451E24 156100BC */  bne   $t3, $at, .L00452118
/* 00451E28 00000000 */   nop   
/* 00451E2C 24100011 */  li    $s0, 17
/* 00451E30 100000B9 */  b     .L00452118
/* 00451E34 AFA000C0 */   sw    $zero, 0xc0($sp)
.L00451E38:
/* 00451E38 8FA900C0 */  lw    $t1, 0xc0($sp)
/* 00451E3C 24010001 */  li    $at, 1
/* 00451E40 152100B5 */  bne   $t1, $at, .L00452118
/* 00451E44 00000000 */   nop   
/* 00451E48 24100012 */  li    $s0, 18
/* 00451E4C 100000B2 */  b     .L00452118
/* 00451E50 AFA000C0 */   sw    $zero, 0xc0($sp)
.L00451E54:
/* 00451E54 8FAE00C0 */  lw    $t6, 0xc0($sp)
/* 00451E58 24010001 */  li    $at, 1
/* 00451E5C 15C100AE */  bne   $t6, $at, .L00452118
/* 00451E60 00000000 */   nop   
/* 00451E64 24100014 */  li    $s0, 20
/* 00451E68 100000AB */  b     .L00452118
/* 00451E6C AFA000C0 */   sw    $zero, 0xc0($sp)
.L00451E70:
/* 00451E70 8FAF00C0 */  lw    $t7, 0xc0($sp)
/* 00451E74 24010001 */  li    $at, 1
/* 00451E78 15E100A7 */  bne   $t7, $at, .L00452118
/* 00451E7C 00000000 */   nop   
/* 00451E80 24100015 */  li    $s0, 21
/* 00451E84 100000A4 */  b     .L00452118
/* 00451E88 AFA000C0 */   sw    $zero, 0xc0($sp)
.L00451E8C:
/* 00451E8C 8FAC00C0 */  lw    $t4, 0xc0($sp)
/* 00451E90 3C017FFF */  lui   $at, 0x7fff
/* 00451E94 3421FFFF */  ori   $at, $at, 0xffff
/* 00451E98 1581000B */  bne   $t4, $at, .L00451EC8
/* 00451E9C 2404004B */   li    $a0, 75
/* 00451EA0 8FAD00BC */  lw    $t5, 0xbc($sp)
/* 00451EA4 8F998468 */  lw    $t9, %call16(emitbene)($gp)
/* 00451EA8 8FA700C8 */  lw    $a3, 0xc8($sp)
/* 00451EAC 00002825 */  move  $a1, $zero
/* 00451EB0 00003025 */  move  $a2, $zero
/* 00451EB4 0320F809 */  jalr  $t9
/* 00451EB8 AFAD0010 */   sw    $t5, 0x10($sp)
/* 00451EBC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00451EC0 10000273 */  b     .L00452890
/* 00451EC4 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00451EC8:
/* 00451EC8 8FAA00C0 */  lw    $t2, 0xc0($sp)
/* 00451ECC 24100017 */  li    $s0, 23
/* 00451ED0 25590001 */  addiu $t9, $t2, 1
/* 00451ED4 10000090 */  b     .L00452118
/* 00451ED8 AFB900C0 */   sw    $t9, 0xc0($sp)
.L00451EDC:
/* 00451EDC 8FB800C0 */  lw    $t8, 0xc0($sp)
/* 00451EE0 2401FFFF */  li    $at, -1
/* 00451EE4 1701000B */  bne   $t8, $at, .L00451F14
/* 00451EE8 2404004B */   li    $a0, 75
/* 00451EEC 8FAB00BC */  lw    $t3, 0xbc($sp)
/* 00451EF0 8F998468 */  lw    $t9, %call16(emitbene)($gp)
/* 00451EF4 8FA700C8 */  lw    $a3, 0xc8($sp)
/* 00451EF8 00002825 */  move  $a1, $zero
/* 00451EFC 00003025 */  move  $a2, $zero
/* 00451F00 0320F809 */  jalr  $t9
/* 00451F04 AFAB0010 */   sw    $t3, 0x10($sp)
/* 00451F08 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00451F0C 10000260 */  b     .L00452890
/* 00451F10 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00451F14:
/* 00451F14 8FA900C0 */  lw    $t1, 0xc0($sp)
/* 00451F18 24100018 */  li    $s0, 24
/* 00451F1C 252E0001 */  addiu $t6, $t1, 1
/* 00451F20 1000007D */  b     .L00452118
/* 00451F24 AFAE00C0 */   sw    $t6, 0xc0($sp)
.L00451F28:
/* 00451F28 8FAF00C0 */  lw    $t7, 0xc0($sp)
/* 00451F2C 3C017FFF */  lui   $at, 0x7fff
/* 00451F30 3421FFFF */  ori   $at, $at, 0xffff
/* 00451F34 11E10255 */  beq   $t7, $at, .L0045288C
/* 00451F38 2410000E */   li    $s0, 14
/* 00451F3C 25ED0001 */  addiu $t5, $t7, 1
/* 00451F40 10000075 */  b     .L00452118
/* 00451F44 AFAD00C0 */   sw    $t5, 0xc0($sp)
.L00451F48:
/* 00451F48 8FAA00C0 */  lw    $t2, 0xc0($sp)
/* 00451F4C 2401FFFF */  li    $at, -1
/* 00451F50 1141024E */  beq   $t2, $at, .L0045288C
/* 00451F54 2410000F */   li    $s0, 15
/* 00451F58 25580001 */  addiu $t8, $t2, 1
/* 00451F5C AFB800C0 */  sw    $t8, 0xc0($sp)
/* 00451F60 1000006D */  b     .L00452118
/* 00451F64 0140C825 */   move  $t9, $t2
.L00451F68:
/* 00451F68 8FAB00C0 */  lw    $t3, 0xc0($sp)
/* 00451F6C 24010001 */  li    $at, 1
/* 00451F70 15610069 */  bne   $t3, $at, .L00452118
/* 00451F74 00000000 */   nop   
/* 00451F78 2410011A */  li    $s0, 282
/* 00451F7C 10000066 */  b     .L00452118
/* 00451F80 AFA000C0 */   sw    $zero, 0xc0($sp)
.L00451F84:
/* 00451F84 8FA900C0 */  lw    $t1, 0xc0($sp)
/* 00451F88 24010001 */  li    $at, 1
/* 00451F8C 15210062 */  bne   $t1, $at, .L00452118
/* 00451F90 00000000 */   nop   
/* 00451F94 2410011B */  li    $s0, 283
/* 00451F98 1000005F */  b     .L00452118
/* 00451F9C AFA000C0 */   sw    $zero, 0xc0($sp)
.L00451FA0:
/* 00451FA0 8FAE00C0 */  lw    $t6, 0xc0($sp)
/* 00451FA4 24010001 */  li    $at, 1
/* 00451FA8 15C1005B */  bne   $t6, $at, .L00452118
/* 00451FAC 00000000 */   nop   
/* 00451FB0 24100117 */  li    $s0, 279
/* 00451FB4 10000058 */  b     .L00452118
/* 00451FB8 AFA000C0 */   sw    $zero, 0xc0($sp)
.L00451FBC:
/* 00451FBC 8FAF00C0 */  lw    $t7, 0xc0($sp)
/* 00451FC0 24010001 */  li    $at, 1
/* 00451FC4 15E10054 */  bne   $t7, $at, .L00452118
/* 00451FC8 00000000 */   nop   
/* 00451FCC 24100118 */  li    $s0, 280
/* 00451FD0 10000051 */  b     .L00452118
/* 00451FD4 AFA000C0 */   sw    $zero, 0xc0($sp)
.L00451FD8:
/* 00451FD8 8FAC00C0 */  lw    $t4, 0xc0($sp)
/* 00451FDC 3C017FFF */  lui   $at, 0x7fff
/* 00451FE0 3421FFFF */  ori   $at, $at, 0xffff
/* 00451FE4 1581000B */  bne   $t4, $at, .L00452014
/* 00451FE8 2404004F */   li    $a0, 79
/* 00451FEC 8FAD00BC */  lw    $t5, 0xbc($sp)
/* 00451FF0 8F998468 */  lw    $t9, %call16(emitbene)($gp)
/* 00451FF4 8FA700C8 */  lw    $a3, 0xc8($sp)
/* 00451FF8 00002825 */  move  $a1, $zero
/* 00451FFC 00003025 */  move  $a2, $zero
/* 00452000 0320F809 */  jalr  $t9
/* 00452004 AFAD0010 */   sw    $t5, 0x10($sp)
/* 00452008 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045200C 10000220 */  b     .L00452890
/* 00452010 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00452014:
/* 00452014 8FAA00C0 */  lw    $t2, 0xc0($sp)
/* 00452018 2410011D */  li    $s0, 285
/* 0045201C 25590001 */  addiu $t9, $t2, 1
/* 00452020 1000003D */  b     .L00452118
/* 00452024 AFB900C0 */   sw    $t9, 0xc0($sp)
.L00452028:
/* 00452028 8FB800C0 */  lw    $t8, 0xc0($sp)
/* 0045202C 2401FFFF */  li    $at, -1
/* 00452030 1701000B */  bne   $t8, $at, .L00452060
/* 00452034 2404004F */   li    $a0, 79
/* 00452038 8FAB00BC */  lw    $t3, 0xbc($sp)
/* 0045203C 8F998468 */  lw    $t9, %call16(emitbene)($gp)
/* 00452040 8FA700C8 */  lw    $a3, 0xc8($sp)
/* 00452044 00002825 */  move  $a1, $zero
/* 00452048 00003025 */  move  $a2, $zero
/* 0045204C 0320F809 */  jalr  $t9
/* 00452050 AFAB0010 */   sw    $t3, 0x10($sp)
/* 00452054 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452058 1000020D */  b     .L00452890
/* 0045205C 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00452060:
/* 00452060 8FA900C0 */  lw    $t1, 0xc0($sp)
/* 00452064 2410011E */  li    $s0, 286
/* 00452068 252E0001 */  addiu $t6, $t1, 1
/* 0045206C 1000002A */  b     .L00452118
/* 00452070 AFAE00C0 */   sw    $t6, 0xc0($sp)
.L00452074:
/* 00452074 8FAF00C0 */  lw    $t7, 0xc0($sp)
/* 00452078 3C017FFF */  lui   $at, 0x7fff
/* 0045207C 3421FFFF */  ori   $at, $at, 0xffff
/* 00452080 11E10202 */  beq   $t7, $at, .L0045288C
/* 00452084 24100121 */   li    $s0, 289
/* 00452088 25ED0001 */  addiu $t5, $t7, 1
/* 0045208C 10000022 */  b     .L00452118
/* 00452090 AFAD00C0 */   sw    $t5, 0xc0($sp)
.L00452094:
/* 00452094 8FAA00C0 */  lw    $t2, 0xc0($sp)
/* 00452098 2401FFFF */  li    $at, -1
/* 0045209C 114101FB */  beq   $t2, $at, .L0045288C
/* 004520A0 24100122 */   li    $s0, 290
/* 004520A4 25580001 */  addiu $t8, $t2, 1
/* 004520A8 AFB800C0 */  sw    $t8, 0xc0($sp)
/* 004520AC 1000001A */  b     .L00452118
/* 004520B0 0140C825 */   move  $t9, $t2
.L004520B4:
/* 004520B4 1420000D */  bnez  $at, .L004520EC
/* 004520B8 2449FFF2 */   addiu $t1, $v0, -0xe
/* 004520BC 244BFEE9 */  addiu $t3, $v0, -0x117
/* 004520C0 2D61000C */  sltiu $at, $t3, 0xc
/* 004520C4 10200014 */  beqz  $at, .L00452118
/* 004520C8 00000000 */   nop   
/* 004520CC 8F818070 */  lw    $at, %got(jtbl_1001A604)($gp)
/* 004520D0 000B5880 */  sll   $t3, $t3, 2
/* 004520D4 002B0821 */  addu  $at, $at, $t3
/* 004520D8 8C2BA604 */  lw    $t3, %lo(jtbl_1001A604)($at)
/* 004520DC 00000000 */  nop   
/* 004520E0 017C5821 */  addu  $t3, $t3, $gp
/* 004520E4 01600008 */  jr    $t3
/* 004520E8 00000000 */   nop   
.L004520EC:
/* 004520EC 2D21000B */  sltiu $at, $t1, 0xb
/* 004520F0 10200009 */  beqz  $at, .L00452118
/* 004520F4 00000000 */   nop   
/* 004520F8 8F818070 */  lw    $at, %got(jtbl_1001A5D8)($gp)
/* 004520FC 00094880 */  sll   $t1, $t1, 2
/* 00452100 00290821 */  addu  $at, $at, $t1
/* 00452104 8C29A5D8 */  lw    $t1, %lo(jtbl_1001A5D8)($at)
/* 00452108 00000000 */  nop   
/* 0045210C 013C4821 */  addu  $t1, $t1, $gp
/* 00452110 01200008 */  jr    $t1
/* 00452114 00000000 */   nop   
.L00452118:
/* 00452118 11000081 */  beqz  $t0, .L00452320
/* 0045211C 2E010019 */   sltiu $at, $s0, 0x19
/* 00452120 8FAE00C0 */  lw    $t6, 0xc0($sp)
/* 00452124 00000000 */  nop   
/* 00452128 15C0007E */  bnez  $t6, .L00452324
/* 0045212C 2E180140 */   sltiu $t8, $s0, 0x140
/* 00452130 10000044 */  b     .L00452244
/* 00452134 02001025 */   move  $v0, $s0
.L00452138:
/* 00452138 240F0036 */  li    $t7, 54
/* 0045213C A7AF00C6 */  sh    $t7, 0xc6($sp)
/* 00452140 10000059 */  b     .L004522A8
/* 00452144 24040036 */   li    $a0, 54
.L00452148:
/* 00452148 240C004E */  li    $t4, 78
/* 0045214C A7AC00C6 */  sh    $t4, 0xc6($sp)
/* 00452150 10000055 */  b     .L004522A8
/* 00452154 2404004E */   li    $a0, 78
.L00452158:
/* 00452158 240D004D */  li    $t5, 77
/* 0045215C A7AD00C6 */  sh    $t5, 0xc6($sp)
/* 00452160 10000051 */  b     .L004522A8
/* 00452164 2404004D */   li    $a0, 77
.L00452168:
/* 00452168 240A0035 */  li    $t2, 53
/* 0045216C A7AA00C6 */  sh    $t2, 0xc6($sp)
/* 00452170 1000004D */  b     .L004522A8
/* 00452174 24040035 */   li    $a0, 53
.L00452178:
/* 00452178 2419004B */  li    $t9, 75
/* 0045217C A7B900C6 */  sh    $t9, 0xc6($sp)
/* 00452180 A3A000CF */  sb    $zero, 0xcf($sp)
/* 00452184 10000048 */  b     .L004522A8
/* 00452188 2404004B */   li    $a0, 75
.L0045218C:
/* 0045218C 2418004C */  li    $t8, 76
/* 00452190 A7B800C6 */  sh    $t8, 0xc6($sp)
/* 00452194 10000044 */  b     .L004522A8
/* 00452198 2404004C */   li    $a0, 76
.L0045219C:
/* 0045219C 240B004B */  li    $t3, 75
/* 004521A0 A7AB00C6 */  sh    $t3, 0xc6($sp)
/* 004521A4 10000040 */  b     .L004522A8
/* 004521A8 2404004B */   li    $a0, 75
.L004521AC:
/* 004521AC 24090001 */  li    $t1, 1
/* 004521B0 A7A900C6 */  sh    $t1, 0xc6($sp)
/* 004521B4 1000003C */  b     .L004522A8
/* 004521B8 24040001 */   li    $a0, 1
.L004521BC:
/* 004521BC 240E0040 */  li    $t6, 64
/* 004521C0 A7AE00C6 */  sh    $t6, 0xc6($sp)
/* 004521C4 10000038 */  b     .L004522A8
/* 004521C8 24040040 */   li    $a0, 64
.L004521CC:
/* 004521CC 240F0052 */  li    $t7, 82
/* 004521D0 A7AF00C6 */  sh    $t7, 0xc6($sp)
/* 004521D4 10000034 */  b     .L004522A8
/* 004521D8 24040052 */   li    $a0, 82
.L004521DC:
/* 004521DC 240C0051 */  li    $t4, 81
/* 004521E0 A7AC00C6 */  sh    $t4, 0xc6($sp)
/* 004521E4 10000030 */  b     .L004522A8
/* 004521E8 24040051 */   li    $a0, 81
.L004521EC:
/* 004521EC 240D003F */  li    $t5, 63
/* 004521F0 A7AD00C6 */  sh    $t5, 0xc6($sp)
/* 004521F4 1000002C */  b     .L004522A8
/* 004521F8 2404003F */   li    $a0, 63
.L004521FC:
/* 004521FC 2404004F */  li    $a0, 79
/* 00452200 10000029 */  b     .L004522A8
/* 00452204 A3A000CF */   sb    $zero, 0xcf($sp)
.L00452208:
/* 00452208 240A0050 */  li    $t2, 80
/* 0045220C A7AA00C6 */  sh    $t2, 0xc6($sp)
/* 00452210 10000025 */  b     .L004522A8
/* 00452214 24040050 */   li    $a0, 80
.L00452218:
/* 00452218 2419004F */  li    $t9, 79
/* 0045221C A7B900C6 */  sh    $t9, 0xc6($sp)
/* 00452220 10000021 */  b     .L004522A8
/* 00452224 2404004F */   li    $a0, 79
.L00452228:
/* 00452228 24180001 */  li    $t8, 1
/* 0045222C A7B800C6 */  sh    $t8, 0xc6($sp)
/* 00452230 1000001D */  b     .L004522A8
/* 00452234 24040001 */   li    $a0, 1
.L00452238:
/* 00452238 97A400C6 */  lhu   $a0, 0xc6($sp)
.L0045223C:
/* 0045223C 1000001B */  b     .L004522AC
/* 00452240 248EFFC0 */   addiu $t6, $a0, -0x40
.L00452244:
/* 00452244 1420000D */  bnez  $at, .L0045227C
/* 00452248 2449FFF2 */   addiu $t1, $v0, -0xe
/* 0045224C 244BFEE9 */  addiu $t3, $v0, -0x117
/* 00452250 2D61000C */  sltiu $at, $t3, 0xc
/* 00452254 1020FFF9 */  beqz  $at, .L0045223C
/* 00452258 97A400C6 */   lhu   $a0, 0xc6($sp)
/* 0045225C 8F818070 */  lw    $at, %got(jtbl_1001A660)($gp)
/* 00452260 000B5880 */  sll   $t3, $t3, 2
/* 00452264 002B0821 */  addu  $at, $at, $t3
/* 00452268 8C2BA660 */  lw    $t3, %lo(jtbl_1001A660)($at)
/* 0045226C 00000000 */  nop   
/* 00452270 017C5821 */  addu  $t3, $t3, $gp
/* 00452274 01600008 */  jr    $t3
/* 00452278 00000000 */   nop   
.L0045227C:
/* 0045227C 2D21000B */  sltiu $at, $t1, 0xb
/* 00452280 1020FFEE */  beqz  $at, .L0045223C
/* 00452284 97A400C6 */   lhu   $a0, 0xc6($sp)
/* 00452288 8F818070 */  lw    $at, %got(jtbl_1001A634)($gp)
/* 0045228C 00094880 */  sll   $t1, $t1, 2
/* 00452290 00290821 */  addu  $at, $at, $t1
/* 00452294 8C29A634 */  lw    $t1, %lo(jtbl_1001A634)($at)
/* 00452298 00000000 */  nop   
/* 0045229C 013C4821 */  addu  $t1, $t1, $gp
/* 004522A0 01200008 */  jr    $t1
/* 004522A4 00000000 */   nop   
.L004522A8:
/* 004522A8 248EFFC0 */  addiu $t6, $a0, -0x40
.L004522AC:
/* 004522AC 2DCF0020 */  sltiu $t7, $t6, 0x20
/* 004522B0 3C010019 */  lui   $at, 0x19
/* 004522B4 34218000 */  ori   $at, $at, 0x8000
/* 004522B8 000F6023 */  negu  $t4, $t7
/* 004522BC 01816824 */  and   $t5, $t4, $at
/* 004522C0 01CD5004 */  sllv  $t2, $t5, $t6
/* 004522C4 0541000B */  bgez  $t2, .L004522F4
/* 004522C8 24010001 */   li    $at, 1
/* 004522CC 8FB900BC */  lw    $t9, 0xbc($sp)
/* 004522D0 93A500CF */  lbu   $a1, 0xcf($sp)
/* 004522D4 AFB90010 */  sw    $t9, 0x10($sp)
/* 004522D8 8F998468 */  lw    $t9, %call16(emitbene)($gp)
/* 004522DC 8FA700C8 */  lw    $a3, 0xc8($sp)
/* 004522E0 0320F809 */  jalr  $t9
/* 004522E4 00003025 */   move  $a2, $zero
/* 004522E8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004522EC 10000168 */  b     .L00452890
/* 004522F0 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L004522F4:
/* 004522F4 10810166 */  beq   $a0, $at, .L00452890
/* 004522F8 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 004522FC 8F998464 */  lw    $t9, %call16(emitbcond)($gp)
/* 00452300 93A500CF */  lbu   $a1, 0xcf($sp)
/* 00452304 8FA600C8 */  lw    $a2, 0xc8($sp)
/* 00452308 8FA700BC */  lw    $a3, 0xbc($sp)
/* 0045230C 0320F809 */  jalr  $t9
/* 00452310 00000000 */   nop   
/* 00452314 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452318 1000015D */  b     .L00452890
/* 0045231C 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00452320:
/* 00452320 2E180140 */  sltiu $t8, $s0, 0x140
.L00452324:
/* 00452324 13000009 */  beqz  $t8, .L0045234C
/* 00452328 00105943 */   sra   $t3, $s0, 5
/* 0045232C 8F8F8080 */  lw    $t7, %got(D_10004BB4)($gp)
/* 00452330 000B4880 */  sll   $t1, $t3, 2
/* 00452334 25EF4BB4 */  addiu $t7, %lo(D_10004BB4) # addiu $t7, $t7, 0x4bb4
/* 00452338 01E96021 */  addu  $t4, $t7, $t1
/* 0045233C 8D8D0000 */  lw    $t5, ($t4)
/* 00452340 00000000 */  nop   
/* 00452344 020D7004 */  sllv  $t6, $t5, $s0
/* 00452348 29D80000 */  slti  $t8, $t6, 0
.L0045234C:
/* 0045234C 13000004 */  beqz  $t8, .L00452360
/* 00452350 2E0F0120 */   sltiu $t7, $s0, 0x120
/* 00452354 2419001D */  li    $t9, 29
/* 00452358 10000003 */  b     .L00452368
/* 0045235C A7B900C6 */   sh    $t9, 0xc6($sp)
.L00452360:
/* 00452360 240B001C */  li    $t3, 28
/* 00452364 A7AB00C6 */  sh    $t3, 0xc6($sp)
.L00452368:
/* 00452368 11E00009 */  beqz  $t7, .L00452390
/* 0045236C 00104943 */   sra   $t1, $s0, 5
/* 00452370 8F8D8080 */  lw    $t5, %got(D_10004B90)($gp)
/* 00452374 00096080 */  sll   $t4, $t1, 2
/* 00452378 25AD4B90 */  addiu $t5, %lo(D_10004B90) # addiu $t5, $t5, 0x4b90
/* 0045237C 01AC7021 */  addu  $t6, $t5, $t4
/* 00452380 8DCA0000 */  lw    $t2, ($t6)
/* 00452384 00000000 */  nop   
/* 00452388 020AC004 */  sllv  $t8, $t2, $s0
/* 0045238C 2B0F0000 */  slti  $t7, $t8, 0
.L00452390:
/* 00452390 11E0004D */  beqz  $t7, .L004524C8
/* 00452394 93AD00CF */   lbu   $t5, 0xcf($sp)
/* 00452398 11000045 */  beqz  $t0, .L004524B0
/* 0045239C 03A0C825 */   move  $t9, $sp
/* 004523A0 8F8B8070 */  lw    $t3, %got(RO_1001A3EA)($gp)
/* 004523A4 03A06025 */  move  $t4, $sp
/* 004523A8 256BA3EA */  addiu $t3, %lo(RO_1001A3EA) # addiu $t3, $t3, -0x5c16
/* 004523AC 256D0048 */  addiu $t5, $t3, 0x48
.L004523B0:
/* 004523B0 89610000 */  lwl   $at, ($t3)
/* 004523B4 99610003 */  lwr   $at, 3($t3)
/* 004523B8 256B000C */  addiu $t3, $t3, 0xc
/* 004523BC A9810000 */  swl   $at, ($t4)
/* 004523C0 B9810003 */  swr   $at, 3($t4)
/* 004523C4 8961FFF8 */  lwl   $at, -8($t3)
/* 004523C8 9961FFFB */  lwr   $at, -5($t3)
/* 004523CC 258C000C */  addiu $t4, $t4, 0xc
/* 004523D0 A981FFF8 */  swl   $at, -8($t4)
/* 004523D4 B981FFFB */  swr   $at, -5($t4)
/* 004523D8 8961FFFC */  lwl   $at, -4($t3)
/* 004523DC 9961FFFF */  lwr   $at, -1($t3)
/* 004523E0 00000000 */  nop   
/* 004523E4 A981FFFC */  swl   $at, -4($t4)
/* 004523E8 156DFFF1 */  bne   $t3, $t5, .L004523B0
/* 004523EC B981FFFF */   swr   $at, -1($t4)
/* 004523F0 89610000 */  lwl   $at, ($t3)
/* 004523F4 99610003 */  lwr   $at, 3($t3)
/* 004523F8 8F8E8070 */  lw    $t6, %got(RO_1001A39A)($gp)
/* 004523FC A9810000 */  swl   $at, ($t4)
/* 00452400 B9810003 */  swr   $at, 3($t4)
/* 00452404 896D0004 */  lwl   $t5, 4($t3)
/* 00452408 996D0007 */  lwr   $t5, 7($t3)
/* 0045240C 25CEA39A */  addiu $t6, %lo(RO_1001A39A) # addiu $t6, $t6, -0x5c66
/* 00452410 A98D0004 */  swl   $t5, 4($t4)
/* 00452414 25D80048 */  addiu $t8, $t6, 0x48
/* 00452418 B98D0007 */  swr   $t5, 7($t4)
.L0045241C:
/* 0045241C 89C10000 */  lwl   $at, ($t6)
/* 00452420 99C10003 */  lwr   $at, 3($t6)
/* 00452424 25CE000C */  addiu $t6, $t6, 0xc
/* 00452428 AB210050 */  swl   $at, 0x50($t9)
/* 0045242C BB210053 */  swr   $at, 0x53($t9)
/* 00452430 89C1FFF8 */  lwl   $at, -8($t6)
/* 00452434 99C1FFFB */  lwr   $at, -5($t6)
/* 00452438 2739000C */  addiu $t9, $t9, 0xc
/* 0045243C AB210048 */  swl   $at, 0x48($t9)
/* 00452440 BB21004B */  swr   $at, 0x4b($t9)
/* 00452444 89C1FFFC */  lwl   $at, -4($t6)
/* 00452448 99C1FFFF */  lwr   $at, -1($t6)
/* 0045244C 00000000 */  nop   
/* 00452450 AB21004C */  swl   $at, 0x4c($t9)
/* 00452454 15D8FFF1 */  bne   $t6, $t8, .L0045241C
/* 00452458 BB21004F */   swr   $at, 0x4f($t9)
/* 0045245C 89C10000 */  lwl   $at, ($t6)
/* 00452460 99C10003 */  lwr   $at, 3($t6)
/* 00452464 240F0238 */  li    $t7, 568
/* 00452468 AB210050 */  swl   $at, 0x50($t9)
/* 0045246C BB210053 */  swr   $at, 0x53($t9)
/* 00452470 89D80004 */  lwl   $t8, 4($t6)
/* 00452474 99D80007 */  lwr   $t8, 7($t6)
/* 00452478 00000000 */  nop   
/* 0045247C AB380054 */  swl   $t8, 0x54($t9)
/* 00452480 BB380057 */  swr   $t8, 0x57($t9)
/* 00452484 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 00452488 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045248C 8FA60008 */  lw    $a2, 8($sp)
/* 00452490 8FA50004 */  lw    $a1, 4($sp)
/* 00452494 8FA40000 */  lw    $a0, ($sp)
/* 00452498 A3A800C5 */  sb    $t0, 0xc5($sp)
/* 0045249C 0320F809 */  jalr  $t9
/* 004524A0 AFAF00A0 */   sw    $t7, 0xa0($sp)
/* 004524A4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004524A8 93A800C5 */  lbu   $t0, 0xc5($sp)
/* 004524AC 00000000 */  nop   
.L004524B0:
/* 004524B0 93A900CF */  lbu   $t1, 0xcf($sp)
/* 004524B4 93A600CE */  lbu   $a2, 0xce($sp)
/* 004524B8 A3A900CC */  sb    $t1, 0xcc($sp)
/* 004524BC 10000018 */  b     .L00452520
/* 004524C0 A3A600CD */   sb    $a2, 0xcd($sp)
/* 004524C4 93AD00CF */  lbu   $t5, 0xcf($sp)
.L004524C8:
/* 004524C8 15000004 */  bnez  $t0, .L004524DC
/* 004524CC A3AD00CD */   sb    $t5, 0xcd($sp)
/* 004524D0 93AB00CE */  lbu   $t3, 0xce($sp)
/* 004524D4 10000012 */  b     .L00452520
/* 004524D8 A3AB00CC */   sb    $t3, 0xcc($sp)
.L004524DC:
/* 004524DC 8FAC00C0 */  lw    $t4, 0xc0($sp)
/* 004524E0 8FA400C0 */  lw    $a0, 0xc0($sp)
/* 004524E4 29818000 */  slti  $at, $t4, -0x8000
/* 004524E8 14200005 */  bnez  $at, .L00452500
/* 004524EC 24050001 */   li    $a1, 1
/* 004524F0 34018000 */  li    $at, 32768
/* 004524F4 0181082A */  slt   $at, $t4, $at
/* 004524F8 1420000A */  bnez  $at, .L00452524
/* 004524FC 93A600CD */   lbu   $a2, 0xcd($sp)
.L00452500:
/* 00452500 8F99848C */  lw    $t9, %call16(loadimmed)($gp)
/* 00452504 00003025 */  move  $a2, $zero
/* 00452508 0320F809 */  jalr  $t9
/* 0045250C A3A000C5 */   sb    $zero, 0xc5($sp)
/* 00452510 240A0001 */  li    $t2, 1
/* 00452514 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452518 93A800C5 */  lbu   $t0, 0xc5($sp)
/* 0045251C A3AA00CC */  sb    $t2, 0xcc($sp)
.L00452520:
/* 00452520 93A600CD */  lbu   $a2, 0xcd($sp)
.L00452524:
/* 00452524 11000014 */  beqz  $t0, .L00452578
/* 00452528 00000000 */   nop   
/* 0045252C 97B800C6 */  lhu   $t8, 0xc6($sp)
/* 00452530 2401001C */  li    $at, 28
/* 00452534 17010009 */  bne   $t8, $at, .L0045255C
/* 00452538 24040056 */   li    $a0, 86
/* 0045253C 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00452540 8FA700C0 */  lw    $a3, 0xc0($sp)
/* 00452544 24040055 */  li    $a0, 85
/* 00452548 0320F809 */  jalr  $t9
/* 0045254C 24050001 */   li    $a1, 1
/* 00452550 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452554 1000000F */  b     .L00452594
/* 00452558 00000000 */   nop   
.L0045255C:
/* 0045255C 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00452560 8FA700C0 */  lw    $a3, 0xc0($sp)
/* 00452564 0320F809 */  jalr  $t9
/* 00452568 24050001 */   li    $a1, 1
/* 0045256C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452570 10000008 */  b     .L00452594
/* 00452574 00000000 */   nop   
.L00452578:
/* 00452578 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 0045257C 97A400C6 */  lhu   $a0, 0xc6($sp)
/* 00452580 93A700CC */  lbu   $a3, 0xcc($sp)
/* 00452584 0320F809 */  jalr  $t9
/* 00452588 24050001 */   li    $a1, 1
/* 0045258C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452590 00000000 */  nop   
.L00452594:
/* 00452594 8F8E8BB4 */  lw     $t6, %got(atflag)($gp)
/* 00452598 00000000 */  nop   
/* 0045259C 91CE0000 */  lbu   $t6, ($t6)
/* 004525A0 00000000 */  nop   
/* 004525A4 15C00008 */  bnez  $t6, .L004525C8
/* 004525A8 2E190020 */   sltiu $t9, $s0, 0x20
/* 004525AC 8F9984C8 */  lw    $t9, %call16(macro_error)($gp)
/* 004525B0 00000000 */  nop   
/* 004525B4 0320F809 */  jalr  $t9
/* 004525B8 00000000 */   nop   
/* 004525BC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004525C0 00000000 */  nop   
/* 004525C4 2E190020 */  sltiu $t9, $s0, 0x20
.L004525C8:
/* 004525C8 3C010003 */  lui   $at, 3
/* 004525CC 34210C00 */  ori   $at, $at, 0xc00
/* 004525D0 00197823 */  negu  $t7, $t9
/* 004525D4 01E14824 */  and   $t1, $t7, $at
/* 004525D8 02096804 */  sllv  $t5, $t1, $s0
/* 004525DC 05A1000C */  bgez  $t5, .L00452610
/* 004525E0 2E0C0020 */   sltiu $t4, $s0, 0x20
/* 004525E4 8FAB00BC */  lw    $t3, 0xbc($sp)
/* 004525E8 8F998468 */  lw    $t9, %call16(emitbene)($gp)
/* 004525EC 8FA700C8 */  lw    $a3, 0xc8($sp)
/* 004525F0 2404004B */  li    $a0, 75
/* 004525F4 24050001 */  li    $a1, 1
/* 004525F8 00003025 */  move  $a2, $zero
/* 004525FC 0320F809 */  jalr  $t9
/* 00452600 AFAB0010 */   sw    $t3, 0x10($sp)
/* 00452604 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452608 100000A1 */  b     .L00452890
/* 0045260C 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00452610:
/* 00452610 000C5023 */  negu  $t2, $t4
/* 00452614 31586180 */  andi  $t8, $t2, 0x6180
/* 00452618 02187004 */  sllv  $t6, $t8, $s0
/* 0045261C 05C1000C */  bgez  $t6, .L00452650
/* 00452620 2602FF00 */   addiu $v0, $s0, -0x100
/* 00452624 8FB900BC */  lw    $t9, 0xbc($sp)
/* 00452628 8FA700C8 */  lw    $a3, 0xc8($sp)
/* 0045262C AFB90010 */  sw    $t9, 0x10($sp)
/* 00452630 8F998468 */  lw    $t9, %call16(emitbene)($gp)
/* 00452634 2404004C */  li    $a0, 76
/* 00452638 24050001 */  li    $a1, 1
/* 0045263C 0320F809 */  jalr  $t9
/* 00452640 00003025 */   move  $a2, $zero
/* 00452644 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452648 10000091 */  b     .L00452890
/* 0045264C 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00452650:
/* 00452650 2C4F0040 */  sltiu $t7, $v0, 0x40
/* 00452654 11E00009 */  beqz  $t7, .L0045267C
/* 00452658 00024943 */   sra   $t1, $v0, 5
/* 0045265C 8F8B8080 */  lw    $t3, %got(D_10004B88)($gp)
/* 00452660 00096880 */  sll   $t5, $t1, 2
/* 00452664 256B4B88 */  addiu $t3, %lo(D_10004B88) # addiu $t3, $t3, 0x4b88
/* 00452668 016D6021 */  addu  $t4, $t3, $t5
/* 0045266C 8D8A0000 */  lw    $t2, ($t4)
/* 00452670 00000000 */  nop   
/* 00452674 004AC004 */  sllv  $t8, $t2, $v0
/* 00452678 2B0F0000 */  slti  $t7, $t8, 0
.L0045267C:
/* 0045267C 11E0000C */  beqz  $t7, .L004526B0
/* 00452680 2C490020 */   sltiu $t1, $v0, 0x20
/* 00452684 8FB900BC */  lw    $t9, 0xbc($sp)
/* 00452688 8FA700C8 */  lw    $a3, 0xc8($sp)
/* 0045268C AFB90010 */  sw    $t9, 0x10($sp)
/* 00452690 8F998468 */  lw    $t9, %call16(emitbene)($gp)
/* 00452694 2404004F */  li    $a0, 79
/* 00452698 24050001 */  li    $a1, 1
/* 0045269C 0320F809 */  jalr  $t9
/* 004526A0 00003025 */   move  $a2, $zero
/* 004526A4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004526A8 10000079 */  b     .L00452890
/* 004526AC 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L004526B0:
/* 004526B0 00095823 */  negu  $t3, $t1
/* 004526B4 316D0036 */  andi  $t5, $t3, 0x36
/* 004526B8 004D6004 */  sllv  $t4, $t5, $v0
/* 004526BC 0581000B */  bgez  $t4, .L004526EC
/* 004526C0 24040050 */   li    $a0, 80
/* 004526C4 8FAA00BC */  lw    $t2, 0xbc($sp)
/* 004526C8 8F998468 */  lw    $t9, %call16(emitbene)($gp)
/* 004526CC 8FA700C8 */  lw    $a3, 0xc8($sp)
/* 004526D0 24050001 */  li    $a1, 1
/* 004526D4 00003025 */  move  $a2, $zero
/* 004526D8 0320F809 */  jalr  $t9
/* 004526DC AFAA0010 */   sw    $t2, 0x10($sp)
/* 004526E0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004526E4 1000006A */  b     .L00452890
/* 004526E8 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L004526EC:
/* 004526EC 8F988070 */  lw    $t8, %got(RO_1001A34A)($gp)
/* 004526F0 03A0C825 */  move  $t9, $sp
/* 004526F4 2718A34A */  addiu $t8, %lo(RO_1001A34A) # addiu $t8, $t8, -0x5cb6
/* 004526F8 270F0048 */  addiu $t7, $t8, 0x48
.L004526FC:
/* 004526FC 8B010000 */  lwl   $at, ($t8)
/* 00452700 9B010003 */  lwr   $at, 3($t8)
/* 00452704 2718000C */  addiu $t8, $t8, 0xc
/* 00452708 AB210000 */  swl   $at, ($t9)
/* 0045270C BB210003 */  swr   $at, 3($t9)
/* 00452710 8B01FFF8 */  lwl   $at, -8($t8)
/* 00452714 9B01FFFB */  lwr   $at, -5($t8)
/* 00452718 2739000C */  addiu $t9, $t9, 0xc
/* 0045271C AB21FFF8 */  swl   $at, -8($t9)
/* 00452720 BB21FFFB */  swr   $at, -5($t9)
/* 00452724 8B01FFFC */  lwl   $at, -4($t8)
/* 00452728 9B01FFFF */  lwr   $at, -1($t8)
/* 0045272C 00000000 */  nop   
/* 00452730 AB21FFFC */  swl   $at, -4($t9)
/* 00452734 170FFFF1 */  bne   $t8, $t7, .L004526FC
/* 00452738 BB21FFFF */   swr   $at, -1($t9)
/* 0045273C 8B010000 */  lwl   $at, ($t8)
/* 00452740 9B010003 */  lwr   $at, 3($t8)
/* 00452744 8F898070 */  lw    $t1, %got(RO_1001A2FA)($gp)
/* 00452748 AB210000 */  swl   $at, ($t9)
/* 0045274C BB210003 */  swr   $at, 3($t9)
/* 00452750 8B0F0004 */  lwl   $t7, 4($t8)
/* 00452754 9B0F0007 */  lwr   $t7, 7($t8)
/* 00452758 2529A2FA */  addiu $t1, %lo(RO_1001A2FA) # addiu $t1, $t1, -0x5d06
/* 0045275C AB2F0004 */  swl   $t7, 4($t9)
/* 00452760 252D0048 */  addiu $t5, $t1, 0x48
/* 00452764 03A06025 */  move  $t4, $sp
/* 00452768 BB2F0007 */  swr   $t7, 7($t9)
.L0045276C:
/* 0045276C 89210000 */  lwl   $at, ($t1)
/* 00452770 99210003 */  lwr   $at, 3($t1)
/* 00452774 2529000C */  addiu $t1, $t1, 0xc
/* 00452778 A9810050 */  swl   $at, 0x50($t4)
/* 0045277C B9810053 */  swr   $at, 0x53($t4)
/* 00452780 8921FFF8 */  lwl   $at, -8($t1)
/* 00452784 9921FFFB */  lwr   $at, -5($t1)
/* 00452788 258C000C */  addiu $t4, $t4, 0xc
/* 0045278C A9810048 */  swl   $at, 0x48($t4)
/* 00452790 B981004B */  swr   $at, 0x4b($t4)
/* 00452794 8921FFFC */  lwl   $at, -4($t1)
/* 00452798 9921FFFF */  lwr   $at, -1($t1)
/* 0045279C 00000000 */  nop   
/* 004527A0 A981004C */  swl   $at, 0x4c($t4)
/* 004527A4 152DFFF1 */  bne   $t1, $t5, .L0045276C
/* 004527A8 B981004F */   swr   $at, 0x4f($t4)
/* 004527AC 89210000 */  lwl   $at, ($t1)
/* 004527B0 99210003 */  lwr   $at, 3($t1)
/* 004527B4 240A025A */  li    $t2, 602
/* 004527B8 A9810050 */  swl   $at, 0x50($t4)
/* 004527BC B9810053 */  swr   $at, 0x53($t4)
/* 004527C0 892D0004 */  lwl   $t5, 4($t1)
/* 004527C4 992D0007 */  lwr   $t5, 7($t1)
/* 004527C8 00000000 */  nop   
/* 004527CC A98D0054 */  swl   $t5, 0x54($t4)
/* 004527D0 B98D0057 */  swr   $t5, 0x57($t4)
/* 004527D4 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 004527D8 8FA7000C */  lw    $a3, 0xc($sp)
/* 004527DC 8FA60008 */  lw    $a2, 8($sp)
/* 004527E0 8FA50004 */  lw    $a1, 4($sp)
/* 004527E4 8FA40000 */  lw    $a0, ($sp)
/* 004527E8 0320F809 */  jalr  $t9
/* 004527EC AFAA00A0 */   sw    $t2, 0xa0($sp)
/* 004527F0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004527F4 10000026 */  b     .L00452890
/* 004527F8 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L004527FC:
/* 004527FC 8F868070 */  lw    $a2, %got(RO_1001A2F0)($gp)
/* 00452800 8F99868C */  lw    $t9, %call16(caseerror)($gp)
/* 00452804 24040002 */  li    $a0, 2
/* 00452808 24050179 */  li    $a1, 377
/* 0045280C 2407000A */  li    $a3, 10
/* 00452810 0320F809 */  jalr  $t9
/* 00452814 24C6A2F0 */   addiu $a2, %lo(RO_1001A2F0) # addiu $a2, $a2, -0x5d10
/* 00452818 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045281C 1000001C */  b     .L00452890
/* 00452820 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00452824:
/* 00452824 2E01001B */  sltiu $at, $s0, 0x1b
.L00452828:
/* 00452828 1420000D */  bnez  $at, .L00452860
/* 0045282C 260FFFF3 */   addiu $t7, $s0, -0xd
/* 00452830 260EFEED */  addiu $t6, $s0, -0x113
/* 00452834 2DC10010 */  sltiu $at, $t6, 0x10
/* 00452838 1020FFF0 */  beqz  $at, .L004527FC
/* 0045283C 02001025 */   move  $v0, $s0
/* 00452840 8F818070 */  lw    $at, %got(jtbl_1001A6C8)($gp)
/* 00452844 000E7080 */  sll   $t6, $t6, 2
/* 00452848 002E0821 */  addu  $at, $at, $t6
/* 0045284C 8C2EA6C8 */  lw    $t6, %lo(jtbl_1001A6C8)($at)
/* 00452850 00000000 */  nop   
/* 00452854 01DC7021 */  addu  $t6, $t6, $gp
/* 00452858 01C00008 */  jr    $t6
/* 0045285C 00000000 */   nop   
.L00452860:
/* 00452860 2DE1000E */  sltiu $at, $t7, 0xe
/* 00452864 1020FFE5 */  beqz  $at, .L004527FC
/* 00452868 02001025 */   move  $v0, $s0
/* 0045286C 8F818070 */  lw    $at, %got(jtbl_1001A690)($gp)
/* 00452870 000F7880 */  sll   $t7, $t7, 2
/* 00452874 002F0821 */  addu  $at, $at, $t7
/* 00452878 8C2FA690 */  lw    $t7, %lo(jtbl_1001A690)($at)
/* 0045287C 00000000 */  nop   
/* 00452880 01FC7821 */  addu  $t7, $t7, $gp
/* 00452884 01E00008 */  jr    $t7
/* 00452888 00000000 */   nop   
.L0045288C:
/* 0045288C 8FBF00B4 */  lw    $ra, 0xb4($sp)
.L00452890:
/* 00452890 8FB000AC */  lw    $s0, 0xac($sp)
/* 00452894 03E00008 */  jr    $ra
/* 00452898 27BD00D0 */   addiu $sp, $sp, 0xd0

    .type parseafrrl, @function
    .size parseafrrl, .-parseafrrl
    .end parseafrrl

    .type func_0045289C, @function
func_0045289C:
    # 00452968 parseafrr
/* 0045289C 3C1C0FBD */  .cpload $t9
/* 004528A0 279C79C4 */  
/* 004528A4 0399E021 */  
/* 004528A8 8F8E8B14 */  lw     $t6, %got(bigendian)($gp)
/* 004528AC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 004528B0 91CE0000 */  lbu   $t6, ($t6)
/* 004528B4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 004528B8 AFBC0018 */  sw    $gp, 0x18($sp)
/* 004528BC 11C0000E */  beqz  $t6, .L004528F8
/* 004528C0 00401825 */   move  $v1, $v0
/* 004528C4 8F8F8C90 */  lw     $t7, %got(moxieflag)($gp)
/* 004528C8 00000000 */  nop   
/* 004528CC 91EF0000 */  lbu   $t7, ($t7)
/* 004528D0 00000000 */  nop   
/* 004528D4 15E00008 */  bnez  $t7, .L004528F8
/* 004528D8 00000000 */   nop   
/* 004528DC 9042FFFE */  lbu   $v0, -2($v0)
/* 004528E0 00000000 */  nop   
/* 004528E4 24460001 */  addiu $a2, $v0, 1
/* 004528E8 30D800FF */  andi  $t8, $a2, 0xff
/* 004528EC 03003025 */  move  $a2, $t8
/* 004528F0 10000006 */  b     .L0045290C
/* 004528F4 304700FF */   andi  $a3, $v0, 0xff
.L004528F8:
/* 004528F8 9066FFFE */  lbu   $a2, -2($v1)
/* 004528FC 00000000 */  nop   
/* 00452900 24C70001 */  addiu $a3, $a2, 1
/* 00452904 30F900FF */  andi  $t9, $a3, 0xff
/* 00452908 03203825 */  move  $a3, $t9
.L0045290C:
/* 0045290C 94680002 */  lhu   $t0, 2($v1)
/* 00452910 8F8A8D1C */  lw     $t2, %got(asm2op)($gp)
/* 00452914 9065FFFF */  lbu   $a1, -1($v1)
/* 00452918 00084840 */  sll   $t1, $t0, 1
/* 0045291C 8F998488 */  lw    $t9, %call16(emitmvcoproc)($gp)
/* 00452920 012A1021 */  addu  $v0, $t1, $t2
/* 00452924 94440000 */  lhu   $a0, ($v0)
/* 00452928 AFA20024 */  sw    $v0, 0x24($sp)
/* 0045292C A3A7002A */  sb    $a3, 0x2a($sp)
/* 00452930 0320F809 */  jalr  $t9
/* 00452934 AFA50020 */   sw    $a1, 0x20($sp)
/* 00452938 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0045293C 8FA20024 */  lw    $v0, 0x24($sp)
/* 00452940 8FA50020 */  lw    $a1, 0x20($sp)
/* 00452944 8F998488 */  lw    $t9, %call16(emitmvcoproc)($gp)
/* 00452948 93A6002A */  lbu   $a2, 0x2a($sp)
/* 0045294C 94440000 */  lhu   $a0, ($v0)
/* 00452950 0320F809 */  jalr  $t9
/* 00452954 24A50001 */   addiu $a1, $a1, 1
/* 00452958 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0045295C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00452960 03E00008 */  jr    $ra
/* 00452964 27BD0030 */   addiu $sp, $sp, 0x30

glabel parseafrr
    .ent parseafrr
    # 004594BC parsestmt
/* 00452968 3C1C0FBD */  .cpload $t9
/* 0045296C 279C78F8 */  
/* 00452970 0399E021 */  
/* 00452974 8F828D64 */  lw     $v0, %got(binasmfyle)($gp)
/* 00452978 27BDFF30 */  addiu $sp, $sp, -0xd0
/* 0045297C 8C420000 */  lw    $v0, ($v0)
/* 00452980 AFB000AC */  sw    $s0, 0xac($sp)
/* 00452984 8C430008 */  lw    $v1, 8($v0)
/* 00452988 24010005 */  li    $at, 5
/* 0045298C 00037380 */  sll   $t6, $v1, 0xe
/* 00452990 000E7F02 */  srl   $t7, $t6, 0x1c
/* 00452994 3090FFFF */  andi  $s0, $a0, 0xffff
/* 00452998 AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 0045299C AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 004529A0 11E10048 */  beq   $t7, $at, .L00452AC4
/* 004529A4 AFA400D0 */   sw    $a0, 0xd0($sp)
/* 004529A8 24010007 */  li    $at, 7
/* 004529AC 11E10045 */  beq   $t7, $at, .L00452AC4
/* 004529B0 03A06825 */   move  $t5, $sp
/* 004529B4 8F988070 */  lw    $t8, %got(RO_1001A802)($gp)
/* 004529B8 03A04825 */  move  $t1, $sp
/* 004529BC 2718A802 */  addiu $t8, %lo(RO_1001A802) # addiu $t8, $t8, -0x57fe
/* 004529C0 27080048 */  addiu $t0, $t8, 0x48
.L004529C4:
/* 004529C4 8B010000 */  lwl   $at, ($t8)
/* 004529C8 9B010003 */  lwr   $at, 3($t8)
/* 004529CC 2718000C */  addiu $t8, $t8, 0xc
/* 004529D0 A9210000 */  swl   $at, ($t1)
/* 004529D4 B9210003 */  swr   $at, 3($t1)
/* 004529D8 8B01FFF8 */  lwl   $at, -8($t8)
/* 004529DC 9B01FFFB */  lwr   $at, -5($t8)
/* 004529E0 2529000C */  addiu $t1, $t1, 0xc
/* 004529E4 A921FFF8 */  swl   $at, -8($t1)
/* 004529E8 B921FFFB */  swr   $at, -5($t1)
/* 004529EC 8B01FFFC */  lwl   $at, -4($t8)
/* 004529F0 9B01FFFF */  lwr   $at, -1($t8)
/* 004529F4 00000000 */  nop   
/* 004529F8 A921FFFC */  swl   $at, -4($t1)
/* 004529FC 1708FFF1 */  bne   $t8, $t0, .L004529C4
/* 00452A00 B921FFFF */   swr   $at, -1($t1)
/* 00452A04 8B010000 */  lwl   $at, ($t8)
/* 00452A08 9B010003 */  lwr   $at, 3($t8)
/* 00452A0C 8F8A8070 */  lw    $t2, %got(RO_1001A7B2)($gp)
/* 00452A10 A9210000 */  swl   $at, ($t1)
/* 00452A14 B9210003 */  swr   $at, 3($t1)
/* 00452A18 8B080004 */  lwl   $t0, 4($t8)
/* 00452A1C 9B080007 */  lwr   $t0, 7($t8)
/* 00452A20 254AA7B2 */  addiu $t2, %lo(RO_1001A7B2) # addiu $t2, $t2, -0x584e
/* 00452A24 A9280004 */  swl   $t0, 4($t1)
/* 00452A28 254C0048 */  addiu $t4, $t2, 0x48
/* 00452A2C B9280007 */  swr   $t0, 7($t1)
.L00452A30:
/* 00452A30 89410000 */  lwl   $at, ($t2)
/* 00452A34 99410003 */  lwr   $at, 3($t2)
/* 00452A38 254A000C */  addiu $t2, $t2, 0xc
/* 00452A3C A9A10050 */  swl   $at, 0x50($t5)
/* 00452A40 B9A10053 */  swr   $at, 0x53($t5)
/* 00452A44 8941FFF8 */  lwl   $at, -8($t2)
/* 00452A48 9941FFFB */  lwr   $at, -5($t2)
/* 00452A4C 25AD000C */  addiu $t5, $t5, 0xc
/* 00452A50 A9A10048 */  swl   $at, 0x48($t5)
/* 00452A54 B9A1004B */  swr   $at, 0x4b($t5)
/* 00452A58 8941FFFC */  lwl   $at, -4($t2)
/* 00452A5C 9941FFFF */  lwr   $at, -1($t2)
/* 00452A60 00000000 */  nop   
/* 00452A64 A9A1004C */  swl   $at, 0x4c($t5)
/* 00452A68 154CFFF1 */  bne   $t2, $t4, .L00452A30
/* 00452A6C B9A1004F */   swr   $at, 0x4f($t5)
/* 00452A70 89410000 */  lwl   $at, ($t2)
/* 00452A74 99410003 */  lwr   $at, 3($t2)
/* 00452A78 240E02AA */  li    $t6, 682
/* 00452A7C A9A10050 */  swl   $at, 0x50($t5)
/* 00452A80 B9A10053 */  swr   $at, 0x53($t5)
/* 00452A84 894C0004 */  lwl   $t4, 4($t2)
/* 00452A88 994C0007 */  lwr   $t4, 7($t2)
/* 00452A8C 00000000 */  nop   
/* 00452A90 A9AC0054 */  swl   $t4, 0x54($t5)
/* 00452A94 B9AC0057 */  swr   $t4, 0x57($t5)
/* 00452A98 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 00452A9C 8FA7000C */  lw    $a3, 0xc($sp)
/* 00452AA0 8FA60008 */  lw    $a2, 8($sp)
/* 00452AA4 8FA50004 */  lw    $a1, 4($sp)
/* 00452AA8 8FA40000 */  lw    $a0, ($sp)
/* 00452AAC AFA200C8 */  sw    $v0, 0xc8($sp)
/* 00452AB0 0320F809 */  jalr  $t9
/* 00452AB4 AFAE00A0 */   sw    $t6, 0xa0($sp)
/* 00452AB8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452ABC 8FA200C8 */  lw    $v0, 0xc8($sp)
/* 00452AC0 00000000 */  nop   
.L00452AC4:
/* 00452AC4 260FFFA0 */  addiu $t7, $s0, -0x60
/* 00452AC8 2DE800A0 */  sltiu $t0, $t7, 0xa0
/* 00452ACC 1100000A */  beqz  $t0, .L00452AF8
/* 00452AD0 AFAF00C0 */   sw    $t7, 0xc0($sp)
/* 00452AD4 8F8B8080 */  lw    $t3, %got(D_10004BDC)($gp)
/* 00452AD8 000FC143 */  sra   $t8, $t7, 5
/* 00452ADC 00184880 */  sll   $t1, $t8, 2
/* 00452AE0 256B4BDC */  addiu $t3, %lo(D_10004BDC) # addiu $t3, $t3, 0x4bdc
/* 00452AE4 01696021 */  addu  $t4, $t3, $t1
/* 00452AE8 8D8A0000 */  lw    $t2, ($t4)
/* 00452AEC 00000000 */  nop   
/* 00452AF0 01EA6804 */  sllv  $t5, $t2, $t7
/* 00452AF4 29A80000 */  slti  $t0, $t5, 0
.L00452AF8:
/* 00452AF8 1500004F */  bnez  $t0, .L00452C38
/* 00452AFC 00000000 */   nop   
/* 00452B00 904F0008 */  lbu   $t7, 8($v0)
/* 00452B04 00000000 */  nop   
/* 00452B08 000FC600 */  sll   $t8, $t7, 0x18
/* 00452B0C 00185E42 */  srl   $t3, $t8, 0x19
/* 00452B10 2569FFE0 */  addiu $t1, $t3, -0x20
/* 00452B14 2D2C0020 */  sltiu $t4, $t1, 0x20
/* 00452B18 000C5023 */  negu  $t2, $t4
/* 00452B1C 012AC804 */  sllv  $t9, $t2, $t1
/* 00452B20 07210045 */  bgez  $t9, .L00452C38
/* 00452B24 03A05025 */   move  $t2, $sp
/* 00452B28 8F8D8070 */  lw    $t5, %got(RO_1001A762)($gp)
/* 00452B2C 03A07825 */  move  $t7, $sp
/* 00452B30 25ADA762 */  addiu $t5, %lo(RO_1001A762) # addiu $t5, $t5, -0x589e
/* 00452B34 25A80048 */  addiu $t0, $t5, 0x48
.L00452B38:
/* 00452B38 89A10000 */  lwl   $at, ($t5)
/* 00452B3C 99A10003 */  lwr   $at, 3($t5)
/* 00452B40 25AD000C */  addiu $t5, $t5, 0xc
/* 00452B44 A9E10000 */  swl   $at, ($t7)
/* 00452B48 B9E10003 */  swr   $at, 3($t7)
/* 00452B4C 89A1FFF8 */  lwl   $at, -8($t5)
/* 00452B50 99A1FFFB */  lwr   $at, -5($t5)
/* 00452B54 25EF000C */  addiu $t7, $t7, 0xc
/* 00452B58 A9E1FFF8 */  swl   $at, -8($t7)
/* 00452B5C B9E1FFFB */  swr   $at, -5($t7)
/* 00452B60 89A1FFFC */  lwl   $at, -4($t5)
/* 00452B64 99A1FFFF */  lwr   $at, -1($t5)
/* 00452B68 00000000 */  nop   
/* 00452B6C A9E1FFFC */  swl   $at, -4($t7)
/* 00452B70 15A8FFF1 */  bne   $t5, $t0, .L00452B38
/* 00452B74 B9E1FFFF */   swr   $at, -1($t7)
/* 00452B78 89A10000 */  lwl   $at, ($t5)
/* 00452B7C 99A10003 */  lwr   $at, 3($t5)
/* 00452B80 8F988070 */  lw    $t8, %got(RO_1001A712)($gp)
/* 00452B84 A9E10000 */  swl   $at, ($t7)
/* 00452B88 B9E10003 */  swr   $at, 3($t7)
/* 00452B8C 89A80004 */  lwl   $t0, 4($t5)
/* 00452B90 99A80007 */  lwr   $t0, 7($t5)
/* 00452B94 2718A712 */  addiu $t8, %lo(RO_1001A712) # addiu $t8, $t8, -0x58ee
/* 00452B98 A9E80004 */  swl   $t0, 4($t7)
/* 00452B9C 270C0048 */  addiu $t4, $t8, 0x48
/* 00452BA0 B9E80007 */  swr   $t0, 7($t7)
.L00452BA4:
/* 00452BA4 8B010000 */  lwl   $at, ($t8)
/* 00452BA8 9B010003 */  lwr   $at, 3($t8)
/* 00452BAC 2718000C */  addiu $t8, $t8, 0xc
/* 00452BB0 A9410050 */  swl   $at, 0x50($t2)
/* 00452BB4 B9410053 */  swr   $at, 0x53($t2)
/* 00452BB8 8B01FFF8 */  lwl   $at, -8($t8)
/* 00452BBC 9B01FFFB */  lwr   $at, -5($t8)
/* 00452BC0 254A000C */  addiu $t2, $t2, 0xc
/* 00452BC4 A9410048 */  swl   $at, 0x48($t2)
/* 00452BC8 B941004B */  swr   $at, 0x4b($t2)
/* 00452BCC 8B01FFFC */  lwl   $at, -4($t8)
/* 00452BD0 9B01FFFF */  lwr   $at, -1($t8)
/* 00452BD4 00000000 */  nop   
/* 00452BD8 A941004C */  swl   $at, 0x4c($t2)
/* 00452BDC 170CFFF1 */  bne   $t8, $t4, .L00452BA4
/* 00452BE0 B941004F */   swr   $at, 0x4f($t2)
/* 00452BE4 8B010000 */  lwl   $at, ($t8)
/* 00452BE8 9B010003 */  lwr   $at, 3($t8)
/* 00452BEC 240902AC */  li    $t1, 684
/* 00452BF0 A9410050 */  swl   $at, 0x50($t2)
/* 00452BF4 B9410053 */  swr   $at, 0x53($t2)
/* 00452BF8 8B0C0004 */  lwl   $t4, 4($t8)
/* 00452BFC 9B0C0007 */  lwr   $t4, 7($t8)
/* 00452C00 00000000 */  nop   
/* 00452C04 A94C0054 */  swl   $t4, 0x54($t2)
/* 00452C08 B94C0057 */  swr   $t4, 0x57($t2)
/* 00452C0C 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 00452C10 8FA7000C */  lw    $a3, 0xc($sp)
/* 00452C14 8FA60008 */  lw    $a2, 8($sp)
/* 00452C18 8FA50004 */  lw    $a1, 4($sp)
/* 00452C1C 8FA40000 */  lw    $a0, ($sp)
/* 00452C20 AFA200C8 */  sw    $v0, 0xc8($sp)
/* 00452C24 0320F809 */  jalr  $t9
/* 00452C28 AFA900A0 */   sw    $t1, 0xa0($sp)
/* 00452C2C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452C30 8FA200C8 */  lw    $v0, 0xc8($sp)
/* 00452C34 00000000 */  nop   
.L00452C38:
/* 00452C38 90430008 */  lbu   $v1, 8($v0)
/* 00452C3C 8C480008 */  lw    $t0, 8($v0)
/* 00452C40 0003CE00 */  sll   $t9, $v1, 0x18
/* 00452C44 00086B80 */  sll   $t5, $t0, 0xe
/* 00452C48 00191E42 */  srl   $v1, $t9, 0x19
/* 00452C4C 000D7F02 */  srl   $t7, $t5, 0x1c
/* 00452C50 24010005 */  li    $at, 5
/* 00452C54 15E10007 */  bne   $t7, $at, .L00452C74
/* 00452C58 A3A300CF */   sb    $v1, 0xcf($sp)
/* 00452C5C 944B0008 */  lhu   $t3, 8($v0)
/* 00452C60 00000000 */  nop   
/* 00452C64 000B65C0 */  sll   $t4, $t3, 0x17
/* 00452C68 000CC642 */  srl   $t8, $t4, 0x19
/* 00452C6C 100000DA */  b     .L00452FD8
/* 00452C70 A3B800CE */   sb    $t8, 0xce($sp)
.L00452C74:
/* 00452C74 100000D8 */  b     .L00452FD8
/* 00452C78 A3A300CE */   sb    $v1, 0xce($sp)
.L00452C7C:
/* 00452C7C 8F998464 */  lw    $t9, %call16(emitbcond)($gp)
/* 00452C80 93A500CE */  lbu   $a1, 0xce($sp)
/* 00452C84 24040036 */  li    $a0, 54
/* 00452C88 00003025 */  move  $a2, $zero
/* 00452C8C 0320F809 */  jalr  $t9
/* 00452C90 24070002 */   li    $a3, 2
/* 00452C94 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452C98 93A500CF */  lbu   $a1, 0xcf($sp)
/* 00452C9C 8F898BB0 */  lw     $t1, %got(bbindex)($gp)
/* 00452CA0 8F8A8B40 */  lw     $t2, %got(pinstruction)($gp)
/* 00452CA4 8D290000 */  lw    $t1, ($t1)
/* 00452CA8 8D4A0000 */  lw    $t2, ($t2)
/* 00452CAC 0009C880 */  sll   $t9, $t1, 2
/* 00452CB0 0329C821 */  addu  $t9, $t9, $t1
/* 00452CB4 93B000CE */  lbu   $s0, 0xce($sp)
/* 00452CB8 0019C8C0 */  sll   $t9, $t9, 3
/* 00452CBC 01597021 */  addu  $t6, $t2, $t9
/* 00452CC0 12050014 */  beq   $s0, $a1, .L00452D14
/* 00452CC4 A1C00022 */   sb    $zero, 0x22($t6)
/* 00452CC8 8FA800C0 */  lw    $t0, 0xc0($sp)
/* 00452CCC 2401FFA0 */  li    $at, -96
/* 00452CD0 15010009 */  bne   $t0, $at, .L00452CF8
/* 00452CD4 24040025 */   li    $a0, 37
/* 00452CD8 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00452CDC 24040015 */  li    $a0, 21
/* 00452CE0 02003025 */  move  $a2, $s0
/* 00452CE4 0320F809 */  jalr  $t9
/* 00452CE8 00003825 */   move  $a3, $zero
/* 00452CEC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452CF0 1000000E */  b     .L00452D2C
/* 00452CF4 00000000 */   nop   
.L00452CF8:
/* 00452CF8 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00452CFC 02003025 */  move  $a2, $s0
/* 00452D00 0320F809 */  jalr  $t9
/* 00452D04 00003825 */   move  $a3, $zero
/* 00452D08 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452D0C 10000007 */  b     .L00452D2C
/* 00452D10 00000000 */   nop   
.L00452D14:
/* 00452D14 8F998448 */  lw    $t9, %call16(emitnop)($gp)
/* 00452D18 24040001 */  li    $a0, 1
/* 00452D1C 0320F809 */  jalr  $t9
/* 00452D20 00000000 */   nop   
/* 00452D24 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452D28 00000000 */  nop   
.L00452D2C:
/* 00452D2C 8F8F8BB0 */  lw     $t7, %got(bbindex)($gp)
/* 00452D30 8F8D8B40 */  lw     $t5, %got(pinstruction)($gp)
/* 00452D34 8DEF0000 */  lw    $t7, ($t7)
/* 00452D38 8DAD0000 */  lw    $t5, ($t5)
/* 00452D3C 000F5880 */  sll   $t3, $t7, 2
/* 00452D40 016F5821 */  addu  $t3, $t3, $t7
/* 00452D44 000B58C0 */  sll   $t3, $t3, 3
/* 00452D48 01AB6021 */  addu  $t4, $t5, $t3
/* 00452D4C A1800022 */  sb    $zero, 0x22($t4)
/* 00452D50 8FB800C0 */  lw    $t8, 0xc0($sp)
/* 00452D54 2401FFA0 */  li    $at, -96
/* 00452D58 1701000A */  bne   $t8, $at, .L00452D84
/* 00452D5C 24040026 */   li    $a0, 38
/* 00452D60 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00452D64 93A500CF */  lbu   $a1, 0xcf($sp)
/* 00452D68 24040016 */  li    $a0, 22
/* 00452D6C 00003025 */  move  $a2, $zero
/* 00452D70 0320F809 */  jalr  $t9
/* 00452D74 02003825 */   move  $a3, $s0
/* 00452D78 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452D7C 10000008 */  b     .L00452DA0
/* 00452D80 00000000 */   nop   
.L00452D84:
/* 00452D84 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00452D88 93A500CF */  lbu   $a1, 0xcf($sp)
/* 00452D8C 00003025 */  move  $a2, $zero
/* 00452D90 0320F809 */  jalr  $t9
/* 00452D94 02003825 */   move  $a3, $s0
/* 00452D98 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452D9C 00000000 */  nop   
.L00452DA0:
/* 00452DA0 8F8A8BB0 */  lw     $t2, %got(bbindex)($gp)
/* 00452DA4 8F898B40 */  lw     $t1, %got(pinstruction)($gp)
/* 00452DA8 8D4A0000 */  lw    $t2, ($t2)
/* 00452DAC 8D290000 */  lw    $t1, ($t1)
/* 00452DB0 000AC880 */  sll   $t9, $t2, 2
/* 00452DB4 032AC821 */  addu  $t9, $t9, $t2
/* 00452DB8 0019C8C0 */  sll   $t9, $t9, 3
/* 00452DBC 01397021 */  addu  $t6, $t1, $t9
/* 00452DC0 100000F9 */  b     .L004531A8
/* 00452DC4 A1C00022 */   sb    $zero, 0x22($t6)
.L00452DC8:
/* 00452DC8 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00452DCC 93A500CF */  lbu   $a1, 0xcf($sp)
/* 00452DD0 93A700CE */  lbu   $a3, 0xce($sp)
/* 00452DD4 24040016 */  li    $a0, 22
/* 00452DD8 0320F809 */  jalr  $t9
/* 00452DDC 00003025 */   move  $a2, $zero
/* 00452DE0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452DE4 100000F1 */  b     .L004531AC
/* 00452DE8 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00452DEC:
/* 00452DEC 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00452DF0 93A500CF */  lbu   $a1, 0xcf($sp)
/* 00452DF4 93A700CE */  lbu   $a3, 0xce($sp)
/* 00452DF8 0320F809 */  jalr  $t9
/* 00452DFC 00003025 */   move  $a2, $zero
/* 00452E00 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452E04 100000E9 */  b     .L004531AC
/* 00452E08 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00452E0C:
/* 00452E0C 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00452E10 93A500CF */  lbu   $a1, 0xcf($sp)
/* 00452E14 93A700CE */  lbu   $a3, 0xce($sp)
/* 00452E18 24040026 */  li    $a0, 38
/* 00452E1C 0320F809 */  jalr  $t9
/* 00452E20 00003025 */   move  $a2, $zero
/* 00452E24 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452E28 100000E0 */  b     .L004531AC
/* 00452E2C 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00452E30:
/* 00452E30 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00452E34 93A500CF */  lbu   $a1, 0xcf($sp)
/* 00452E38 93A700CE */  lbu   $a3, 0xce($sp)
/* 00452E3C 24040027 */  li    $a0, 39
/* 00452E40 0320F809 */  jalr  $t9
/* 00452E44 00003025 */   move  $a2, $zero
/* 00452E48 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452E4C 100000D7 */  b     .L004531AC
/* 00452E50 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00452E54:
/* 00452E54 2401003B */  li    $at, 59
.L00452E58:
/* 00452E58 16010009 */  bne   $s0, $at, .L00452E80
/* 00452E5C 24040010 */   li    $a0, 16
/* 00452E60 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00452E64 93A600CF */  lbu   $a2, 0xcf($sp)
/* 00452E68 93A700CE */  lbu   $a3, 0xce($sp)
/* 00452E6C 0320F809 */  jalr  $t9
/* 00452E70 00002825 */   move  $a1, $zero
/* 00452E74 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452E78 1000001F */  b     .L00452EF8
/* 00452E7C 00000000 */   nop   
.L00452E80:
/* 00452E80 2401003C */  li    $at, 60
/* 00452E84 16010009 */  bne   $s0, $at, .L00452EAC
/* 00452E88 24040011 */   li    $a0, 17
/* 00452E8C 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00452E90 93A600CF */  lbu   $a2, 0xcf($sp)
/* 00452E94 93A700CE */  lbu   $a3, 0xce($sp)
/* 00452E98 0320F809 */  jalr  $t9
/* 00452E9C 00002825 */   move  $a1, $zero
/* 00452EA0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452EA4 10000014 */  b     .L00452EF8
/* 00452EA8 00000000 */   nop   
.L00452EAC:
/* 00452EAC 24010140 */  li    $at, 320
/* 00452EB0 1601000A */  bne   $s0, $at, .L00452EDC
/* 00452EB4 24040032 */   li    $a0, 50
/* 00452EB8 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00452EBC 93A600CF */  lbu   $a2, 0xcf($sp)
/* 00452EC0 93A700CE */  lbu   $a3, 0xce($sp)
/* 00452EC4 24040031 */  li    $a0, 49
/* 00452EC8 0320F809 */  jalr  $t9
/* 00452ECC 00002825 */   move  $a1, $zero
/* 00452ED0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452ED4 10000008 */  b     .L00452EF8
/* 00452ED8 00000000 */   nop   
.L00452EDC:
/* 00452EDC 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00452EE0 93A600CF */  lbu   $a2, 0xcf($sp)
/* 00452EE4 93A700CE */  lbu   $a3, 0xce($sp)
/* 00452EE8 0320F809 */  jalr  $t9
/* 00452EEC 00002825 */   move  $a1, $zero
/* 00452EF0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452EF4 00000000 */  nop   
.L00452EF8:
/* 00452EF8 8F888B8C */  lw     $t0, %got(reorderflag)($gp)
/* 00452EFC 00000000 */  nop   
/* 00452F00 91080000 */  lbu   $t0, ($t0)
/* 00452F04 00000000 */  nop   
/* 00452F08 110000A8 */  beqz  $t0, .L004531AC
/* 00452F0C 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 00452F10 8F998448 */  lw    $t9, %call16(emitnop)($gp)
/* 00452F14 24040002 */  li    $a0, 2
/* 00452F18 0320F809 */  jalr  $t9
/* 00452F1C 00000000 */   nop   
/* 00452F20 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452F24 100000A1 */  b     .L004531AC
/* 00452F28 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00452F2C:
/* 00452F2C 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00452F30 93A500CF */  lbu   $a1, 0xcf($sp)
/* 00452F34 93A600CE */  lbu   $a2, 0xce($sp)
/* 00452F38 0320F809 */  jalr  $t9
/* 00452F3C 00003825 */   move  $a3, $zero
/* 00452F40 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452F44 10000099 */  b     .L004531AC
/* 00452F48 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00452F4C:
/* 00452F4C 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00452F50 93A500CF */  lbu   $a1, 0xcf($sp)
/* 00452F54 93A600CE */  lbu   $a2, 0xce($sp)
/* 00452F58 0320F809 */  jalr  $t9
/* 00452F5C 00003825 */   move  $a3, $zero
/* 00452F60 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452F64 93B000CE */  lbu   $s0, 0xce($sp)
/* 00452F68 8F828DB8 */  lw     $v0, %got(frame_ptr)($gp)
/* 00452F6C 93AD00CF */  lbu   $t5, 0xcf($sp)
/* 00452F70 904F0000 */  lbu   $t7, ($v0)
/* 00452F74 00000000 */  nop   
/* 00452F78 160F008C */  bne   $s0, $t7, .L004531AC
/* 00452F7C 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 00452F80 10000089 */  b     .L004531A8
/* 00452F84 A04D0000 */   sb    $t5, ($v0)
.L00452F88:
/* 00452F88 8F8C8D1C */  lw     $t4, %got(asm2op)($gp)
/* 00452F8C 00105840 */  sll   $t3, $s0, 1
/* 00452F90 8F998488 */  lw    $t9, %call16(emitmvcoproc)($gp)
/* 00452F94 016CC021 */  addu  $t8, $t3, $t4
/* 00452F98 97040000 */  lhu   $a0, ($t8)
/* 00452F9C 93A500CF */  lbu   $a1, 0xcf($sp)
/* 00452FA0 93A600CE */  lbu   $a2, 0xce($sp)
/* 00452FA4 0320F809 */  jalr  $t9
/* 00452FA8 00000000 */   nop   
/* 00452FAC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452FB0 1000007E */  b     .L004531AC
/* 00452FB4 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00452FB8:
/* 00452FB8 8F998028 */  lw    $t9, %got(func_0045289C)($gp)
/* 00452FBC 27A200D0 */  addiu $v0, $sp, 0xd0
/* 00452FC0 2739289C */  addiu $t9, %lo(func_0045289C) # addiu $t9, $t9, 0x289c
/* 00452FC4 0320F809 */  jalr  $t9
/* 00452FC8 00000000 */   nop   
/* 00452FCC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00452FD0 10000076 */  b     .L004531AC
/* 00452FD4 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00452FD8:
/* 00452FD8 2E0100E8 */  sltiu $at, $s0, 0xe8
/* 00452FDC 1420002B */  bnez  $at, .L0045308C
/* 00452FE0 2E01014C */   sltiu $at, $s0, 0x14c
/* 00452FE4 14200017 */  bnez  $at, .L00453044
/* 00452FE8 2E0101A6 */   sltiu $at, $s0, 0x1a6
/* 00452FEC 14200007 */  bnez  $at, .L0045300C
/* 00452FF0 2E0101AD */   sltiu $at, $s0, 0x1ad
/* 00452FF4 1020001B */  beqz  $at, .L00453064
/* 00452FF8 2E0101A9 */   sltiu $at, $s0, 0x1a9
/* 00452FFC 1020FFE2 */  beqz  $at, .L00452F88
/* 00453000 00000000 */   nop   
/* 00453004 10000017 */  b     .L00453064
/* 00453008 00000000 */   nop   
.L0045300C:
/* 0045300C 2E01016A */  sltiu $at, $s0, 0x16a
/* 00453010 10200060 */  beqz  $at, .L00453194
/* 00453014 260AFE99 */   addiu $t2, $s0, -0x167
/* 00453018 2D410003 */  sltiu $at, $t2, 3
/* 0045301C 10200011 */  beqz  $at, .L00453064
/* 00453020 00000000 */   nop   
/* 00453024 8F818070 */  lw    $at, %got(jtbl_1001A8AC)($gp)
/* 00453028 000A5080 */  sll   $t2, $t2, 2
/* 0045302C 002A0821 */  addu  $at, $at, $t2
/* 00453030 8C2AA8AC */  lw    $t2, %lo(jtbl_1001A8AC)($at)
/* 00453034 00000000 */  nop   
/* 00453038 015C5021 */  addu  $t2, $t2, $gp
/* 0045303C 01400008 */  jr    $t2
/* 00453040 00000000 */   nop   
.L00453044:
/* 00453044 2E0100FB */  sltiu $at, $s0, 0xfb
/* 00453048 14200042 */  bnez  $at, .L00453154
/* 0045304C 2608FF0A */   addiu $t0, $s0, -0xf6
/* 00453050 2E010142 */  sltiu $at, $s0, 0x142
/* 00453054 1020004A */  beqz  $at, .L00453180
/* 00453058 2E010140 */   sltiu $at, $s0, 0x140
/* 0045305C 1020FF7E */  beqz  $at, .L00452E58
/* 00453060 2401003B */   li    $at, 59
.L00453064:
/* 00453064 8F868070 */  lw    $a2, %got(RO_1001A708)($gp)
/* 00453068 8F99868C */  lw    $t9, %call16(caseerror)($gp)
/* 0045306C 24040002 */  li    $a0, 2
/* 00453070 240502B4 */  li    $a1, 692
/* 00453074 2407000A */  li    $a3, 10
/* 00453078 0320F809 */  jalr  $t9
/* 0045307C 24C6A708 */   addiu $a2, %lo(RO_1001A708) # addiu $a2, $a2, -0x58f8
/* 00453080 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453084 10000049 */  b     .L004531AC
/* 00453088 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L0045308C:
/* 0045308C 2E01003E */  sltiu $at, $s0, 0x3e
/* 00453090 14200020 */  bnez  $at, .L00453114
/* 00453094 2E010067 */   sltiu $at, $s0, 0x67
/* 00453098 1420000F */  bnez  $at, .L004530D8
/* 0045309C 240100DB */   li    $at, 219
/* 004530A0 1201FF52 */  beq   $s0, $at, .L00452DEC
/* 004530A4 24040017 */   li    $a0, 23
/* 004530A8 2609FF1F */  addiu $t1, $s0, -0xe1
/* 004530AC 2D210007 */  sltiu $at, $t1, 7
/* 004530B0 1020FFEC */  beqz  $at, .L00453064
/* 004530B4 A7B000D2 */   sh    $s0, 0xd2($sp)
/* 004530B8 8F818070 */  lw    $at, %got(jtbl_1001A87C)($gp)
/* 004530BC 00094880 */  sll   $t1, $t1, 2
/* 004530C0 00290821 */  addu  $at, $at, $t1
/* 004530C4 8C29A87C */  lw    $t1, %lo(jtbl_1001A87C)($at)
/* 004530C8 00000000 */  nop   
/* 004530CC 013C4821 */  addu  $t1, $t1, $gp
/* 004530D0 01200008 */  jr    $t1
/* 004530D4 00000000 */   nop   
.L004530D8:
/* 004530D8 2401005A */  li    $at, 90
/* 004530DC 1201FF93 */  beq   $s0, $at, .L00452F2C
/* 004530E0 2404001B */   li    $a0, 27
/* 004530E4 2619FFA0 */  addiu $t9, $s0, -0x60
/* 004530E8 2F210007 */  sltiu $at, $t9, 7
/* 004530EC 1020FFDD */  beqz  $at, .L00453064
/* 004530F0 00000000 */   nop   
/* 004530F4 8F818070 */  lw    $at, %got(jtbl_1001A860)($gp)
/* 004530F8 0019C880 */  sll   $t9, $t9, 2
/* 004530FC 00390821 */  addu  $at, $at, $t9
/* 00453100 8C39A860 */  lw    $t9, %lo(jtbl_1001A860)($at)
/* 00453104 00000000 */  nop   
/* 00453108 033CC821 */  addu  $t9, $t9, $gp
/* 0045310C 03200008 */  jr    $t9
/* 00453110 00000000 */   nop   
.L00453114:
/* 00453114 1200FED9 */  beqz  $s0, .L00452C7C
/* 00453118 24010031 */   li    $at, 49
/* 0045311C 1201FF8B */  beq   $s0, $at, .L00452F4C
/* 00453120 24040019 */   li    $a0, 25
/* 00453124 260EFFC5 */  addiu $t6, $s0, -0x3b
/* 00453128 2DC10003 */  sltiu $at, $t6, 3
/* 0045312C 1020FFCD */  beqz  $at, .L00453064
/* 00453130 00000000 */   nop   
/* 00453134 8F818070 */  lw    $at, %got(jtbl_1001A854)($gp)
/* 00453138 000E7080 */  sll   $t6, $t6, 2
/* 0045313C 002E0821 */  addu  $at, $at, $t6
/* 00453140 8C2EA854 */  lw    $t6, %lo(jtbl_1001A854)($at)
/* 00453144 00000000 */  nop   
/* 00453148 01DC7021 */  addu  $t6, $t6, $gp
/* 0045314C 01C00008 */  jr    $t6
/* 00453150 00000000 */   nop   
.L00453154:
/* 00453154 2D010005 */  sltiu $at, $t0, 5
/* 00453158 1020FFC2 */  beqz  $at, .L00453064
/* 0045315C 00000000 */   nop   
/* 00453160 8F818070 */  lw    $at, %got(jtbl_1001A898)($gp)
/* 00453164 00084080 */  sll   $t0, $t0, 2
/* 00453168 00280821 */  addu  $at, $at, $t0
/* 0045316C 8C28A898 */  lw    $t0, %lo(jtbl_1001A898)($at)
/* 00453170 00000000 */  nop   
/* 00453174 011C4021 */  addu  $t0, $t0, $gp
/* 00453178 01000008 */  jr    $t0
/* 0045317C 00000000 */   nop   
.L00453180:
/* 00453180 2E010146 */  sltiu $at, $s0, 0x146
/* 00453184 1020FF80 */  beqz  $at, .L00452F88
/* 00453188 00000000 */   nop   
/* 0045318C 1000FFB5 */  b     .L00453064
/* 00453190 00000000 */   nop   
.L00453194:
/* 00453194 2E0101A2 */  sltiu $at, $s0, 0x1a2
/* 00453198 1020FF7B */  beqz  $at, .L00452F88
/* 0045319C 00000000 */   nop   
/* 004531A0 1000FFB0 */  b     .L00453064
/* 004531A4 00000000 */   nop   
.L004531A8:
/* 004531A8 8FBF00B4 */  lw    $ra, 0xb4($sp)
.L004531AC:
/* 004531AC 8FB000AC */  lw    $s0, 0xac($sp)
/* 004531B0 03E00008 */  jr    $ra
/* 004531B4 27BD00D0 */   addiu $sp, $sp, 0xd0

    .type parseafrr, @function
    .size parseafrr, .-parseafrr
    .end parseafrr

glabel parseafa
    .ent parseafa
    # 004594BC parsestmt
/* 004531B8 3C1C0FBD */  .cpload $t9
/* 004531BC 279C70A8 */  
/* 004531C0 0399E021 */  
/* 004531C4 8F8E8D64 */  lw     $t6, %got(binasmfyle)($gp)
/* 004531C8 8F818CB0 */  lw     $at, %got(branchpending)($gp)
/* 004531CC 8F988AF8 */  lw     $t8, %got(picflag)($gp)
/* 004531D0 27BDFF30 */  addiu $sp, $sp, -0xd0
/* 004531D4 240F0001 */  li    $t7, 1
/* 004531D8 8DCE0000 */  lw    $t6, ($t6)
/* 004531DC 8F180000 */  lw    $t8, ($t8)
/* 004531E0 A02F0000 */  sb    $t7, ($at)
/* 004531E4 24010001 */  li    $at, 1
/* 004531E8 AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 004531EC AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 004531F0 AFA400D0 */  sw    $a0, 0xd0($sp)
/* 004531F4 A3A000C3 */  sb    $zero, 0xc3($sp)
/* 004531F8 17010011 */  bne   $t8, $at, .L00453240
/* 004531FC AFAE00BC */   sw    $t6, 0xbc($sp)
/* 00453200 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 00453204 8DC40000 */  lw    $a0, ($t6)
/* 00453208 0320F809 */  jalr  $t9
/* 0045320C 00000000 */   nop   
/* 00453210 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453214 1040000A */  beqz  $v0, .L00453240
/* 00453218 AFA200C4 */   sw    $v0, 0xc4($sp)
/* 0045321C 8F998428 */  lw    $t9, %call16(is_dso_static)($gp)
/* 00453220 8C440018 */  lw    $a0, 0x18($v0)
/* 00453224 0320F809 */  jalr  $t9
/* 00453228 00000000 */   nop   
/* 0045322C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453230 24010001 */  li    $at, 1
/* 00453234 14410002 */  bne   $v0, $at, .L00453240
/* 00453238 24080001 */   li    $t0, 1
/* 0045323C A3A800C3 */  sb    $t0, 0xc3($sp)
.L00453240:
/* 00453240 8FA900BC */  lw    $t1, 0xbc($sp)
/* 00453244 24010006 */  li    $at, 6
/* 00453248 8D220008 */  lw    $v0, 8($t1)
/* 0045324C 97AC00D2 */  lhu   $t4, 0xd2($sp)
/* 00453250 00025380 */  sll   $t2, $v0, 0xe
/* 00453254 000A1702 */  srl   $v0, $t2, 0x1c
/* 00453258 14410104 */  bne   $v0, $at, .L0045366C
/* 0045325C 24010007 */   li    $at, 7
/* 00453260 8F828AF8 */  lw     $v0, %got(picflag)($gp)
/* 00453264 24010023 */  li    $at, 35
/* 00453268 8C420000 */  lw    $v0, ($v0)
/* 0045326C 158100E5 */  bne   $t4, $at, .L00453604
/* 00453270 24090048 */   li    $t1, 72
/* 00453274 24010002 */  li    $at, 2
/* 00453278 10410007 */  beq   $v0, $at, .L00453298
/* 0045327C 24010001 */   li    $at, 1
/* 00453280 144100E1 */  bne   $v0, $at, .L00453608
/* 00453284 8FAF00BC */   lw    $t7, 0xbc($sp)
/* 00453288 93AD00C3 */  lbu   $t5, 0xc3($sp)
/* 0045328C 00000000 */  nop   
/* 00453290 15A000DD */  bnez  $t5, .L00453608
/* 00453294 8FAF00BC */   lw    $t7, 0xbc($sp)
.L00453298:
/* 00453298 8F9984D0 */  lw    $t9, %call16(restore_gp)($gp)
/* 0045329C 00000000 */  nop   
/* 004532A0 0320F809 */  jalr  $t9
/* 004532A4 00000000 */   nop   
/* 004532A8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004532AC 8FAF00BC */  lw    $t7, 0xbc($sp)
/* 004532B0 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 004532B4 8DE40000 */  lw    $a0, ($t7)
/* 004532B8 0320F809 */  jalr  $t9
/* 004532BC 00000000 */   nop   
/* 004532C0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004532C4 AFA200C4 */  sw    $v0, 0xc4($sp)
/* 004532C8 8F9985F4 */  lw    $t9, %call16(islocalsym)($gp)
/* 004532CC 00402025 */  move  $a0, $v0
/* 004532D0 0320F809 */  jalr  $t9
/* 004532D4 00000000 */   nop   
/* 004532D8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004532DC 1040004B */  beqz  $v0, .L0045340C
/* 004532E0 00000000 */   nop   
/* 004532E4 8FB800BC */  lw    $t8, 0xbc($sp)
/* 004532E8 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 004532EC 8F05000C */  lw    $a1, 0xc($t8)
/* 004532F0 0320F809 */  jalr  $t9
/* 004532F4 24040001 */   li    $a0, 1
/* 004532F8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004532FC 24050019 */  li    $a1, 25
/* 00453300 8F848D1C */  lw     $a0, %got(asm2op)($gp)
/* 00453304 8F878BF8 */  lw     $a3, %got(gpreg)($gp)
/* 00453308 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 0045330C 94840054 */  lhu   $a0, 0x54($a0)
/* 00453310 90E70000 */  lbu   $a3, ($a3)
/* 00453314 0320F809 */  jalr  $t9
/* 00453318 00403025 */   move  $a2, $v0
/* 0045331C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453320 8FA400C4 */  lw    $a0, 0xc4($sp)
/* 00453324 8F8E8BB0 */  lw     $t6, %got(bbindex)($gp)
/* 00453328 8F998B88 */  lw     $t9, %got(proc_instr_base)($gp)
/* 0045332C 8DCE0000 */  lw    $t6, ($t6)
/* 00453330 8F390000 */  lw    $t9, ($t9)
/* 00453334 2405000F */  li    $a1, 15
/* 00453338 01D93021 */  addu  $a2, $t6, $t9
/* 0045333C 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00453340 00000000 */  nop   
/* 00453344 0320F809 */  jalr  $t9
/* 00453348 00000000 */   nop   
/* 0045334C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453350 00000000 */  nop   
/* 00453354 8F888B8C */  lw     $t0, %got(reorderflag)($gp)
/* 00453358 00000000 */  nop   
/* 0045335C 91080000 */  lbu   $t0, ($t0)
/* 00453360 00000000 */  nop   
/* 00453364 15000011 */  bnez  $t0, .L004533AC
/* 00453368 8FAD00BC */   lw    $t5, 0xbc($sp)
/* 0045336C 8F998448 */  lw    $t9, %call16(emitnop)($gp)
/* 00453370 24040001 */  li    $a0, 1
/* 00453374 0320F809 */  jalr  $t9
/* 00453378 00000000 */   nop   
/* 0045337C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453380 00000000 */  nop   
/* 00453384 8F8A8BB0 */  lw     $t2, %got(bbindex)($gp)
/* 00453388 8F898B40 */  lw     $t1, %got(pinstruction)($gp)
/* 0045338C 8D4A0000 */  lw    $t2, ($t2)
/* 00453390 8D290000 */  lw    $t1, ($t1)
/* 00453394 000A5880 */  sll   $t3, $t2, 2
/* 00453398 016A5821 */  addu  $t3, $t3, $t2
/* 0045339C 000B58C0 */  sll   $t3, $t3, 3
/* 004533A0 012B6021 */  addu  $t4, $t1, $t3
/* 004533A4 A1800022 */  sb    $zero, 0x22($t4)
/* 004533A8 8FAD00BC */  lw    $t5, 0xbc($sp)
.L004533AC:
/* 004533AC 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 004533B0 8DA5000C */  lw    $a1, 0xc($t5)
/* 004533B4 0320F809 */  jalr  $t9
/* 004533B8 00002025 */   move  $a0, $zero
/* 004533BC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004533C0 24040054 */  li    $a0, 84
/* 004533C4 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 004533C8 24050019 */  li    $a1, 25
/* 004533CC 24060019 */  li    $a2, 25
/* 004533D0 0320F809 */  jalr  $t9
/* 004533D4 00403825 */   move  $a3, $v0
/* 004533D8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004533DC 8FA400C4 */  lw    $a0, 0xc4($sp)
/* 004533E0 8F8F8BB0 */  lw     $t7, %got(bbindex)($gp)
/* 004533E4 8F988B88 */  lw     $t8, %got(proc_instr_base)($gp)
/* 004533E8 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 004533EC 8DEF0000 */  lw    $t7, ($t7)
/* 004533F0 8F180000 */  lw    $t8, ($t8)
/* 004533F4 24050003 */  li    $a1, 3
/* 004533F8 0320F809 */  jalr  $t9
/* 004533FC 01F83021 */   addu  $a2, $t7, $t8
/* 00453400 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453404 1000005B */  b     .L00453574
/* 00453408 8FA800BC */   lw    $t0, 0xbc($sp)
.L0045340C:
/* 0045340C 8F8E8C94 */  lw     $t6, %got(big_got)($gp)
/* 00453410 00003025 */  move  $a2, $zero
/* 00453414 91CE0000 */  lbu   $t6, ($t6)
/* 00453418 24040069 */  li    $a0, 105
/* 0045341C 11C0002E */  beqz  $t6, .L004534D8
/* 00453420 24050019 */   li    $a1, 25
/* 00453424 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00453428 2404005A */  li    $a0, 90
/* 0045342C 24050019 */  li    $a1, 25
/* 00453430 0320F809 */  jalr  $t9
/* 00453434 00003825 */   move  $a3, $zero
/* 00453438 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045343C 8FA400C4 */  lw    $a0, 0xc4($sp)
/* 00453440 8F998BB0 */  lw     $t9, %got(bbindex)($gp)
/* 00453444 8F888B88 */  lw     $t0, %got(proc_instr_base)($gp)
/* 00453448 8F390000 */  lw    $t9, ($t9)
/* 0045344C 8D080000 */  lw    $t0, ($t0)
/* 00453450 24050018 */  li    $a1, 24
/* 00453454 03283021 */  addu  $a2, $t9, $t0
/* 00453458 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045345C 00000000 */  nop   
/* 00453460 0320F809 */  jalr  $t9
/* 00453464 00000000 */   nop   
/* 00453468 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045346C 24040015 */  li    $a0, 21
/* 00453470 8F878BF8 */  lw     $a3, %got(gpreg)($gp)
/* 00453474 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00453478 90E70000 */  lbu   $a3, ($a3)
/* 0045347C 24050019 */  li    $a1, 25
/* 00453480 0320F809 */  jalr  $t9
/* 00453484 24060019 */   li    $a2, 25
/* 00453488 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045348C 24040069 */  li    $a0, 105
/* 00453490 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00453494 24050019 */  li    $a1, 25
/* 00453498 00003025 */  move  $a2, $zero
/* 0045349C 0320F809 */  jalr  $t9
/* 004534A0 24070019 */   li    $a3, 25
/* 004534A4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004534A8 8FA400C4 */  lw    $a0, 0xc4($sp)
/* 004534AC 8F8A8BB0 */  lw     $t2, %got(bbindex)($gp)
/* 004534B0 8F898B88 */  lw     $t1, %got(proc_instr_base)($gp)
/* 004534B4 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 004534B8 8D4A0000 */  lw    $t2, ($t2)
/* 004534BC 8D290000 */  lw    $t1, ($t1)
/* 004534C0 24050019 */  li    $a1, 25
/* 004534C4 0320F809 */  jalr  $t9
/* 004534C8 01493021 */   addu  $a2, $t2, $t1
/* 004534CC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004534D0 10000012 */  b     .L0045351C
/* 004534D4 00000000 */   nop   
.L004534D8:
/* 004534D8 8F878BF8 */  lw     $a3, %got(gpreg)($gp)
/* 004534DC 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 004534E0 90E70000 */  lbu   $a3, ($a3)
/* 004534E4 0320F809 */  jalr  $t9
/* 004534E8 00003025 */   move  $a2, $zero
/* 004534EC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004534F0 8FA400C4 */  lw    $a0, 0xc4($sp)
/* 004534F4 8F8B8BB0 */  lw     $t3, %got(bbindex)($gp)
/* 004534F8 8F8C8B88 */  lw     $t4, %got(proc_instr_base)($gp)
/* 004534FC 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00453500 8D6B0000 */  lw    $t3, ($t3)
/* 00453504 8D8C0000 */  lw    $t4, ($t4)
/* 00453508 24050010 */  li    $a1, 16
/* 0045350C 0320F809 */  jalr  $t9
/* 00453510 016C3021 */   addu  $a2, $t3, $t4
/* 00453514 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453518 00000000 */  nop   
.L0045351C:
/* 0045351C 8F8D8B8C */  lw     $t5, %got(reorderflag)($gp)
/* 00453520 00000000 */  nop   
/* 00453524 91AD0000 */  lbu   $t5, ($t5)
/* 00453528 00000000 */  nop   
/* 0045352C 15A00011 */  bnez  $t5, .L00453574
/* 00453530 8FA800BC */   lw    $t0, 0xbc($sp)
/* 00453534 8F998448 */  lw    $t9, %call16(emitnop)($gp)
/* 00453538 24040001 */  li    $a0, 1
/* 0045353C 0320F809 */  jalr  $t9
/* 00453540 00000000 */   nop   
/* 00453544 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453548 00000000 */  nop   
/* 0045354C 8F988BB0 */  lw     $t8, %got(bbindex)($gp)
/* 00453550 8F8F8B40 */  lw     $t7, %got(pinstruction)($gp)
/* 00453554 8F180000 */  lw    $t8, ($t8)
/* 00453558 8DEF0000 */  lw    $t7, ($t7)
/* 0045355C 00187080 */  sll   $t6, $t8, 2
/* 00453560 01D87021 */  addu  $t6, $t6, $t8
/* 00453564 000E70C0 */  sll   $t6, $t6, 3
/* 00453568 01EEC821 */  addu  $t9, $t7, $t6
/* 0045356C A3200022 */  sb    $zero, 0x22($t9)
/* 00453570 8FA800BC */  lw    $t0, 0xbc($sp)
.L00453574:
/* 00453574 3C01FFFC */  lui   $at, 0xfffc
/* 00453578 8D0A0008 */  lw    $t2, 8($t0)
/* 0045357C 34213FFF */  ori   $at, $at, 0x3fff
/* 00453580 01414824 */  and   $t1, $t2, $at
/* 00453584 3C010001 */  lui   $at, 1
/* 00453588 3421C000 */  ori   $at, $at, 0xc000
/* 0045358C 8F8D89C4 */  lw     $t5, %got(cpalias_set)($gp)
/* 00453590 01215825 */  or    $t3, $t1, $at
/* 00453594 AD0B0008 */  sw    $t3, 8($t0)
/* 00453598 91AD0000 */  lbu   $t5, ($t5)
/* 0045359C 240C0019 */  li    $t4, 25
/* 004535A0 A3AC00CF */  sb    $t4, 0xcf($sp)
/* 004535A4 11A000AD */  beqz  $t5, .L0045385C
/* 004535A8 AFA000C8 */   sw    $zero, 0xc8($sp)
/* 004535AC 8F9889C8 */  lw     $t8, %got(cpalias_pending)($gp)
/* 004535B0 00000000 */  nop   
/* 004535B4 93180000 */  lbu   $t8, ($t8)
/* 004535B8 00000000 */  nop   
/* 004535BC 13000007 */  beqz  $t8, .L004535DC
/* 004535C0 00000000 */   nop   
/* 004535C4 8F9984D4 */  lw    $t9, %call16(init_cpalias)($gp)
/* 004535C8 00000000 */  nop   
/* 004535CC 0320F809 */  jalr  $t9
/* 004535D0 00000000 */   nop   
/* 004535D4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004535D8 00000000 */  nop   
.L004535DC:
/* 004535DC 8F878BF8 */  lw     $a3, %got(gpreg)($gp)
/* 004535E0 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 004535E4 90E70000 */  lbu   $a3, ($a3)
/* 004535E8 24040019 */  li    $a0, 25
/* 004535EC 2405001C */  li    $a1, 28
/* 004535F0 0320F809 */  jalr  $t9
/* 004535F4 00003025 */   move  $a2, $zero
/* 004535F8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004535FC 10000098 */  b     .L00453860
/* 00453600 93AC00CF */   lbu   $t4, 0xcf($sp)
.L00453604:
/* 00453604 8FAF00BC */  lw    $t7, 0xbc($sp)
.L00453608:
/* 00453608 24010001 */  li    $at, 1
/* 0045360C 8DEE000C */  lw    $t6, 0xc($t7)
/* 00453610 14410006 */  bne   $v0, $at, .L0045362C
/* 00453614 AFAE00C8 */   sw    $t6, 0xc8($sp)
/* 00453618 93B900C3 */  lbu   $t9, 0xc3($sp)
/* 0045361C 25CA000C */  addiu $t2, $t6, 0xc
/* 00453620 13200003 */  beqz  $t9, .L00453630
/* 00453624 8FAB00BC */   lw    $t3, 0xbc($sp)
/* 00453628 AFAA00C8 */  sw    $t2, 0xc8($sp)
.L0045362C:
/* 0045362C 8FAB00BC */  lw    $t3, 0xbc($sp)
.L00453630:
/* 00453630 A3A900CF */  sb    $t1, 0xcf($sp)
/* 00453634 8D640000 */  lw    $a0, ($t3)
/* 00453638 00000000 */  nop   
/* 0045363C 10800008 */  beqz  $a0, .L00453660
/* 00453640 00000000 */   nop   
/* 00453644 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 00453648 00000000 */  nop   
/* 0045364C 0320F809 */  jalr  $t9
/* 00453650 00000000 */   nop   
/* 00453654 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453658 10000080 */  b     .L0045385C
/* 0045365C AFA200C4 */   sw    $v0, 0xc4($sp)
.L00453660:
/* 00453660 1000007E */  b     .L0045385C
/* 00453664 AFA000C4 */   sw    $zero, 0xc4($sp)
/* 00453668 24010007 */  li    $at, 7
.L0045366C:
/* 0045366C 14410039 */  bne   $v0, $at, .L00453754
/* 00453670 03A05825 */   move  $t3, $sp
/* 00453674 8FA800BC */  lw    $t0, 0xbc($sp)
/* 00453678 2401001F */  li    $at, 31
/* 0045367C 91020008 */  lbu   $v0, 8($t0)
/* 00453680 97B800D2 */  lhu   $t8, 0xd2($sp)
/* 00453684 00026600 */  sll   $t4, $v0, 0x18
/* 00453688 000C1642 */  srl   $v0, $t4, 0x19
/* 0045368C 14410003 */  bne   $v0, $at, .L0045369C
/* 00453690 24010023 */   li    $at, 35
/* 00453694 1701002B */  bne   $t8, $at, .L00453744
/* 00453698 00000000 */   nop   
.L0045369C:
/* 0045369C 8F8F89C4 */  lw     $t7, %got(cpalias_set)($gp)
/* 004536A0 00000000 */  nop   
/* 004536A4 91EF0000 */  lbu   $t7, ($t7)
/* 004536A8 00000000 */  nop   
/* 004536AC 11E0001B */  beqz  $t7, .L0045371C
/* 004536B0 00000000 */   nop   
/* 004536B4 8F9989C8 */  lw     $t9, %got(cpalias_pending)($gp)
/* 004536B8 00000000 */  nop   
/* 004536BC 93390000 */  lbu   $t9, ($t9)
/* 004536C0 00000000 */  nop   
/* 004536C4 13200007 */  beqz  $t9, .L004536E4
/* 004536C8 00000000 */   nop   
/* 004536CC 8F9984D4 */  lw    $t9, %call16(init_cpalias)($gp)
/* 004536D0 00000000 */  nop   
/* 004536D4 0320F809 */  jalr  $t9
/* 004536D8 00000000 */   nop   
/* 004536DC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004536E0 00000000 */  nop   
.L004536E4:
/* 004536E4 8F878BF8 */  lw     $a3, %got(gpreg)($gp)
/* 004536E8 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 004536EC 90E70000 */  lbu   $a3, ($a3)
/* 004536F0 24040019 */  li    $a0, 25
/* 004536F4 2405001C */  li    $a1, 28
/* 004536F8 0320F809 */  jalr  $t9
/* 004536FC 00003025 */   move  $a2, $zero
/* 00453700 8FAE00BC */  lw    $t6, 0xbc($sp)
/* 00453704 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453708 91C20008 */  lbu   $v0, 8($t6)
/* 0045370C 00000000 */  nop   
/* 00453710 00025600 */  sll   $t2, $v0, 0x18
/* 00453714 1000000B */  b     .L00453744
/* 00453718 000A1642 */   srl   $v0, $t2, 0x19
.L0045371C:
/* 0045371C 8F9984D0 */  lw    $t9, %call16(restore_gp)($gp)
/* 00453720 00000000 */  nop   
/* 00453724 0320F809 */  jalr  $t9
/* 00453728 00000000 */   nop   
/* 0045372C 8FAB00BC */  lw    $t3, 0xbc($sp)
/* 00453730 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453734 91620008 */  lbu   $v0, 8($t3)
/* 00453738 00000000 */  nop   
/* 0045373C 00024600 */  sll   $t0, $v0, 0x18
/* 00453740 00081642 */  srl   $v0, $t0, 0x19
.L00453744:
/* 00453744 AFA000C8 */  sw    $zero, 0xc8($sp)
/* 00453748 AFA000C4 */  sw    $zero, 0xc4($sp)
/* 0045374C 10000043 */  b     .L0045385C
/* 00453750 A3A200CF */   sb    $v0, 0xcf($sp)
.L00453754:
/* 00453754 8F8D8070 */  lw    $t5, %got(RO_1001A9F8)($gp)
/* 00453758 03A0C825 */  move  $t9, $sp
/* 0045375C 25ADA9F8 */  addiu $t5, %lo(RO_1001A9F8) # addiu $t5, $t5, -0x5608
/* 00453760 25AF0048 */  addiu $t7, $t5, 0x48
.L00453764:
/* 00453764 89A10000 */  lwl   $at, ($t5)
/* 00453768 99A10003 */  lwr   $at, 3($t5)
/* 0045376C 25AD000C */  addiu $t5, $t5, 0xc
/* 00453770 AB210000 */  swl   $at, ($t9)
/* 00453774 BB210003 */  swr   $at, 3($t9)
/* 00453778 89A1FFF8 */  lwl   $at, -8($t5)
/* 0045377C 99A1FFFB */  lwr   $at, -5($t5)
/* 00453780 2739000C */  addiu $t9, $t9, 0xc
/* 00453784 AB21FFF8 */  swl   $at, -8($t9)
/* 00453788 BB21FFFB */  swr   $at, -5($t9)
/* 0045378C 89A1FFFC */  lwl   $at, -4($t5)
/* 00453790 99A1FFFF */  lwr   $at, -1($t5)
/* 00453794 00000000 */  nop   
/* 00453798 AB21FFFC */  swl   $at, -4($t9)
/* 0045379C 15AFFFF1 */  bne   $t5, $t7, .L00453764
/* 004537A0 BB21FFFF */   swr   $at, -1($t9)
/* 004537A4 89A10000 */  lwl   $at, ($t5)
/* 004537A8 99A10003 */  lwr   $at, 3($t5)
/* 004537AC 8F8E8070 */  lw    $t6, %got(RO_1001A9A8)($gp)
/* 004537B0 AB210000 */  swl   $at, ($t9)
/* 004537B4 BB210003 */  swr   $at, 3($t9)
/* 004537B8 89AF0004 */  lwl   $t7, 4($t5)
/* 004537BC 99AF0007 */  lwr   $t7, 7($t5)
/* 004537C0 25CEA9A8 */  addiu $t6, %lo(RO_1001A9A8) # addiu $t6, $t6, -0x5658
/* 004537C4 AB2F0004 */  swl   $t7, 4($t9)
/* 004537C8 25C90048 */  addiu $t1, $t6, 0x48
/* 004537CC BB2F0007 */  swr   $t7, 7($t9)
.L004537D0:
/* 004537D0 89C10000 */  lwl   $at, ($t6)
/* 004537D4 99C10003 */  lwr   $at, 3($t6)
/* 004537D8 25CE000C */  addiu $t6, $t6, 0xc
/* 004537DC A9610050 */  swl   $at, 0x50($t3)
/* 004537E0 B9610053 */  swr   $at, 0x53($t3)
/* 004537E4 89C1FFF8 */  lwl   $at, -8($t6)
/* 004537E8 99C1FFFB */  lwr   $at, -5($t6)
/* 004537EC 256B000C */  addiu $t3, $t3, 0xc
/* 004537F0 A9610048 */  swl   $at, 0x48($t3)
/* 004537F4 B961004B */  swr   $at, 0x4b($t3)
/* 004537F8 89C1FFFC */  lwl   $at, -4($t6)
/* 004537FC 99C1FFFF */  lwr   $at, -1($t6)
/* 00453800 00000000 */  nop   
/* 00453804 A961004C */  swl   $at, 0x4c($t3)
/* 00453808 15C9FFF1 */  bne   $t6, $t1, .L004537D0
/* 0045380C B961004F */   swr   $at, 0x4f($t3)
/* 00453810 89C10000 */  lwl   $at, ($t6)
/* 00453814 99C10003 */  lwr   $at, 3($t6)
/* 00453818 24080341 */  li    $t0, 833
/* 0045381C A9610050 */  swl   $at, 0x50($t3)
/* 00453820 B9610053 */  swr   $at, 0x53($t3)
/* 00453824 89C90004 */  lwl   $t1, 4($t6)
/* 00453828 99C90007 */  lwr   $t1, 7($t6)
/* 0045382C 00000000 */  nop   
/* 00453830 A9690054 */  swl   $t1, 0x54($t3)
/* 00453834 B9690057 */  swr   $t1, 0x57($t3)
/* 00453838 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0045383C 8FA7000C */  lw    $a3, 0xc($sp)
/* 00453840 8FA60008 */  lw    $a2, 8($sp)
/* 00453844 8FA50004 */  lw    $a1, 4($sp)
/* 00453848 8FA40000 */  lw    $a0, ($sp)
/* 0045384C 0320F809 */  jalr  $t9
/* 00453850 AFA800A0 */   sw    $t0, 0xa0($sp)
/* 00453854 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453858 00000000 */  nop   
.L0045385C:
/* 0045385C 93AC00CF */  lbu   $t4, 0xcf($sp)
.L00453860:
/* 00453860 24020048 */  li    $v0, 72
/* 00453864 1182005E */  beq   $t4, $v0, .L004539E0
/* 00453868 00000000 */   nop   
/* 0045386C 97B800D2 */  lhu   $t8, 0xd2($sp)
/* 00453870 24010022 */  li    $at, 34
/* 00453874 17010008 */  bne   $t8, $at, .L00453898
/* 00453878 24040008 */   li    $a0, 8
/* 0045387C 8F998480 */  lw    $t9, %call16(emitreg2)($gp)
/* 00453880 01802825 */  move  $a1, $t4
/* 00453884 0320F809 */  jalr  $t9
/* 00453888 24060048 */   li    $a2, 72
/* 0045388C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453890 100000E5 */  b     .L00453C28
/* 00453894 00000000 */   nop   
.L00453898:
/* 00453898 8F838D64 */  lw     $v1, %got(binasmfyle)($gp)
/* 0045389C 3C01FE03 */  lui   $at, 0xfe03
/* 004538A0 8C630000 */  lw    $v1, ($v1)
/* 004538A4 3421FFFF */  ori   $at, $at, 0xffff
/* 004538A8 94660008 */  lhu   $a2, 8($v1)
/* 004538AC 00000000 */  nop   
/* 004538B0 00067DC0 */  sll   $t7, $a2, 0x17
/* 004538B4 000F3642 */  srl   $a2, $t7, 0x19
/* 004538B8 1446000E */  bne   $v0, $a2, .L004538F4
/* 004538BC 93B800CF */   lbu   $t8, 0xcf($sp)
/* 004538C0 8C790008 */  lw    $t9, 8($v1)
/* 004538C4 8F8E8D64 */  lw     $t6, %got(binasmfyle)($gp)
/* 004538C8 03215024 */  and   $t2, $t9, $at
/* 004538CC 3C01007C */  lui   $at, 0x7c
/* 004538D0 01414825 */  or    $t1, $t2, $at
/* 004538D4 AC690008 */  sw    $t1, 8($v1)
/* 004538D8 8DCE0000 */  lw    $t6, ($t6)
/* 004538DC 00000000 */  nop   
/* 004538E0 95C60008 */  lhu   $a2, 8($t6)
/* 004538E4 00000000 */  nop   
/* 004538E8 00065DC0 */  sll   $t3, $a2, 0x17
/* 004538EC 000B3642 */  srl   $a2, $t3, 0x19
/* 004538F0 93B800CF */  lbu   $t8, 0xcf($sp)
.L004538F4:
/* 004538F4 00000000 */  nop   
/* 004538F8 17060032 */  bne   $t8, $a2, .L004539C4
/* 004538FC 00000000 */   nop   
/* 00453900 8F8C8070 */  lw    $t4, %got(RO_1001A958)($gp)
/* 00453904 03A0C825 */  move  $t9, $sp
/* 00453908 258CA958 */  addiu $t4, %lo(RO_1001A958) # addiu $t4, $t4, -0x56a8
/* 0045390C 258D0048 */  addiu $t5, $t4, 0x48
.L00453910:
/* 00453910 89810000 */  lwl   $at, ($t4)
/* 00453914 99810003 */  lwr   $at, 3($t4)
/* 00453918 258C000C */  addiu $t4, $t4, 0xc
/* 0045391C AB210000 */  swl   $at, ($t9)
/* 00453920 BB210003 */  swr   $at, 3($t9)
/* 00453924 8981FFF8 */  lwl   $at, -8($t4)
/* 00453928 9981FFFB */  lwr   $at, -5($t4)
/* 0045392C 2739000C */  addiu $t9, $t9, 0xc
/* 00453930 AB21FFF8 */  swl   $at, -8($t9)
/* 00453934 BB21FFFB */  swr   $at, -5($t9)
/* 00453938 8981FFFC */  lwl   $at, -4($t4)
/* 0045393C 9981FFFF */  lwr   $at, -1($t4)
/* 00453940 00000000 */  nop   
/* 00453944 AB21FFFC */  swl   $at, -4($t9)
/* 00453948 158DFFF1 */  bne   $t4, $t5, .L00453910
/* 0045394C BB21FFFF */   swr   $at, -1($t9)
/* 00453950 89810000 */  lwl   $at, ($t4)
/* 00453954 99810003 */  lwr   $at, 3($t4)
/* 00453958 8F8A8C68 */  lw     $t2, %got(emptystring)($gp)
/* 0045395C AB210000 */  swl   $at, ($t9)
/* 00453960 BB210003 */  swr   $at, 3($t9)
/* 00453964 898D0004 */  lwl   $t5, 4($t4)
/* 00453968 998D0007 */  lwr   $t5, 7($t4)
/* 0045396C 24090002 */  li    $t1, 2
/* 00453970 AB2D0004 */  swl   $t5, 4($t9)
/* 00453974 BB2D0007 */  swr   $t5, 7($t9)
/* 00453978 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0045397C 8D4A0000 */  lw    $t2, ($t2)
/* 00453980 8FA7000C */  lw    $a3, 0xc($sp)
/* 00453984 8FA60008 */  lw    $a2, 8($sp)
/* 00453988 8FA50004 */  lw    $a1, 4($sp)
/* 0045398C 8FA40000 */  lw    $a0, ($sp)
/* 00453990 AFA90054 */  sw    $t1, 0x54($sp)
/* 00453994 0320F809 */  jalr  $t9
/* 00453998 AFAA0050 */   sw    $t2, 0x50($sp)
/* 0045399C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004539A0 00000000 */  nop   
/* 004539A4 8F8E8D64 */  lw     $t6, %got(binasmfyle)($gp)
/* 004539A8 00000000 */  nop   
/* 004539AC 8DCE0000 */  lw    $t6, ($t6)
/* 004539B0 00000000 */  nop   
/* 004539B4 95C60008 */  lhu   $a2, 8($t6)
/* 004539B8 00000000 */  nop   
/* 004539BC 00065DC0 */  sll   $t3, $a2, 0x17
/* 004539C0 000B3642 */  srl   $a2, $t3, 0x19
.L004539C4:
/* 004539C4 8F998480 */  lw    $t9, %call16(emitreg2)($gp)
/* 004539C8 93A500CF */  lbu   $a1, 0xcf($sp)
/* 004539CC 0320F809 */  jalr  $t9
/* 004539D0 24040009 */   li    $a0, 9
/* 004539D4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004539D8 10000093 */  b     .L00453C28
/* 004539DC 00000000 */   nop   
.L004539E0:
/* 004539E0 8F828AF8 */  lw     $v0, %got(picflag)($gp)
/* 004539E4 24010002 */  li    $at, 2
/* 004539E8 8C420000 */  lw    $v0, ($v0)
/* 004539EC 8FAF00C8 */  lw    $t7, 0xc8($sp)
/* 004539F0 10410007 */  beq   $v0, $at, .L00453A10
/* 004539F4 24010001 */   li    $at, 1
/* 004539F8 1441006D */  bne   $v0, $at, .L00453BB0
/* 004539FC 97A900D2 */   lhu   $t1, 0xd2($sp)
/* 00453A00 93B800C3 */  lbu   $t8, 0xc3($sp)
/* 00453A04 00000000 */  nop   
/* 00453A08 17000069 */  bnez  $t8, .L00453BB0
/* 00453A0C 97A900D2 */   lhu   $t1, 0xd2($sp)
.L00453A10:
/* 00453A10 11E0002A */  beqz  $t7, .L00453ABC
/* 00453A14 00000000 */   nop   
/* 00453A18 8F8D8070 */  lw    $t5, %got(RO_1001A908)($gp)
/* 00453A1C 03A05025 */  move  $t2, $sp
/* 00453A20 25ADA908 */  addiu $t5, %lo(RO_1001A908) # addiu $t5, $t5, -0x56f8
/* 00453A24 25B90048 */  addiu $t9, $t5, 0x48
.L00453A28:
/* 00453A28 89A10000 */  lwl   $at, ($t5)
/* 00453A2C 99A10003 */  lwr   $at, 3($t5)
/* 00453A30 25AD000C */  addiu $t5, $t5, 0xc
/* 00453A34 A9410000 */  swl   $at, ($t2)
/* 00453A38 B9410003 */  swr   $at, 3($t2)
/* 00453A3C 89A1FFF8 */  lwl   $at, -8($t5)
/* 00453A40 99A1FFFB */  lwr   $at, -5($t5)
/* 00453A44 254A000C */  addiu $t2, $t2, 0xc
/* 00453A48 A941FFF8 */  swl   $at, -8($t2)
/* 00453A4C B941FFFB */  swr   $at, -5($t2)
/* 00453A50 89A1FFFC */  lwl   $at, -4($t5)
/* 00453A54 99A1FFFF */  lwr   $at, -1($t5)
/* 00453A58 00000000 */  nop   
/* 00453A5C A941FFFC */  swl   $at, -4($t2)
/* 00453A60 15B9FFF1 */  bne   $t5, $t9, .L00453A28
/* 00453A64 B941FFFF */   swr   $at, -1($t2)
/* 00453A68 89A10000 */  lwl   $at, ($t5)
/* 00453A6C 99A10003 */  lwr   $at, 3($t5)
/* 00453A70 8F898C68 */  lw     $t1, %got(emptystring)($gp)
/* 00453A74 A9410000 */  swl   $at, ($t2)
/* 00453A78 B9410003 */  swr   $at, 3($t2)
/* 00453A7C 89B90004 */  lwl   $t9, 4($t5)
/* 00453A80 99B90007 */  lwr   $t9, 7($t5)
/* 00453A84 240E0001 */  li    $t6, 1
/* 00453A88 A9590004 */  swl   $t9, 4($t2)
/* 00453A8C B9590007 */  swr   $t9, 7($t2)
/* 00453A90 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00453A94 8D290000 */  lw    $t1, ($t1)
/* 00453A98 8FA7000C */  lw    $a3, 0xc($sp)
/* 00453A9C 8FA60008 */  lw    $a2, 8($sp)
/* 00453AA0 8FA50004 */  lw    $a1, 4($sp)
/* 00453AA4 8FA40000 */  lw    $a0, ($sp)
/* 00453AA8 AFAE0054 */  sw    $t6, 0x54($sp)
/* 00453AAC 0320F809 */  jalr  $t9
/* 00453AB0 AFA90050 */   sw    $t1, 0x50($sp)
/* 00453AB4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453AB8 00000000 */  nop   
.L00453ABC:
/* 00453ABC 8F9985F4 */  lw    $t9, %call16(islocalsym)($gp)
/* 00453AC0 8FA400C4 */  lw    $a0, 0xc4($sp)
/* 00453AC4 0320F809 */  jalr  $t9
/* 00453AC8 00000000 */   nop   
/* 00453ACC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453AD0 1440002B */  bnez  $v0, .L00453B80
/* 00453AD4 00000000 */   nop   
/* 00453AD8 8F8B8070 */  lw    $t3, %got(RO_1001A8B8)($gp)
/* 00453ADC 03A07825 */  move  $t7, $sp
/* 00453AE0 256BA8B8 */  addiu $t3, %lo(RO_1001A8B8) # addiu $t3, $t3, -0x5748
/* 00453AE4 25780048 */  addiu $t8, $t3, 0x48
.L00453AE8:
/* 00453AE8 89610000 */  lwl   $at, ($t3)
/* 00453AEC 99610003 */  lwr   $at, 3($t3)
/* 00453AF0 256B000C */  addiu $t3, $t3, 0xc
/* 00453AF4 A9E10000 */  swl   $at, ($t7)
/* 00453AF8 B9E10003 */  swr   $at, 3($t7)
/* 00453AFC 8961FFF8 */  lwl   $at, -8($t3)
/* 00453B00 9961FFFB */  lwr   $at, -5($t3)
/* 00453B04 25EF000C */  addiu $t7, $t7, 0xc
/* 00453B08 A9E1FFF8 */  swl   $at, -8($t7)
/* 00453B0C B9E1FFFB */  swr   $at, -5($t7)
/* 00453B10 8961FFFC */  lwl   $at, -4($t3)
/* 00453B14 9961FFFF */  lwr   $at, -1($t3)
/* 00453B18 00000000 */  nop   
/* 00453B1C A9E1FFFC */  swl   $at, -4($t7)
/* 00453B20 1578FFF1 */  bne   $t3, $t8, .L00453AE8
/* 00453B24 B9E1FFFF */   swr   $at, -1($t7)
/* 00453B28 89610000 */  lwl   $at, ($t3)
/* 00453B2C 99610003 */  lwr   $at, 3($t3)
/* 00453B30 240A0001 */  li    $t2, 1
/* 00453B34 A9E10000 */  swl   $at, ($t7)
/* 00453B38 B9E10003 */  swr   $at, 3($t7)
/* 00453B3C 89780004 */  lwl   $t8, 4($t3)
/* 00453B40 99780007 */  lwr   $t8, 7($t3)
/* 00453B44 00000000 */  nop   
/* 00453B48 A9F80004 */  swl   $t8, 4($t7)
/* 00453B4C B9F80007 */  swr   $t8, 7($t7)
/* 00453B50 8FAC00C4 */  lw    $t4, 0xc4($sp)
/* 00453B54 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00453B58 8D81000C */  lw    $at, 0xc($t4)
/* 00453B5C 8FA7000C */  lw    $a3, 0xc($sp)
/* 00453B60 8FA60008 */  lw    $a2, 8($sp)
/* 00453B64 8FA50004 */  lw    $a1, 4($sp)
/* 00453B68 8FA40000 */  lw    $a0, ($sp)
/* 00453B6C AFAA0054 */  sw    $t2, 0x54($sp)
/* 00453B70 0320F809 */  jalr  $t9
/* 00453B74 AFA10050 */   sw    $at, 0x50($sp)
/* 00453B78 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453B7C 00000000 */  nop   
.L00453B80:
/* 00453B80 8F848D1C */  lw     $a0, %got(asm2op)($gp)
/* 00453B84 8F998468 */  lw    $t9, %call16(emitbene)($gp)
/* 00453B88 8FA700C4 */  lw    $a3, 0xc4($sp)
/* 00453B8C 948401B8 */  lhu   $a0, 0x1b8($a0)
/* 00453B90 00002825 */  move  $a1, $zero
/* 00453B94 00003025 */  move  $a2, $zero
/* 00453B98 0320F809 */  jalr  $t9
/* 00453B9C AFA00010 */   sw    $zero, 0x10($sp)
/* 00453BA0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453BA4 10000020 */  b     .L00453C28
/* 00453BA8 00000000 */   nop   
/* 00453BAC 97A900D2 */  lhu   $t1, 0xd2($sp)
.L00453BB0:
/* 00453BB0 24010022 */  li    $at, 34
/* 00453BB4 15210009 */  bne   $t1, $at, .L00453BDC
/* 00453BB8 2404004A */   li    $a0, 74
/* 00453BBC 8F998470 */  lw    $t9, %call16(emitjump)($gp)
/* 00453BC0 8FA600C8 */  lw    $a2, 0xc8($sp)
/* 00453BC4 24040049 */  li    $a0, 73
/* 00453BC8 0320F809 */  jalr  $t9
/* 00453BCC 00002825 */   move  $a1, $zero
/* 00453BD0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453BD4 10000008 */  b     .L00453BF8
/* 00453BD8 8FAE00C4 */   lw    $t6, 0xc4($sp)
.L00453BDC:
/* 00453BDC 8F998470 */  lw    $t9, %call16(emitjump)($gp)
/* 00453BE0 8FA600C8 */  lw    $a2, 0xc8($sp)
/* 00453BE4 0320F809 */  jalr  $t9
/* 00453BE8 00002825 */   move  $a1, $zero
/* 00453BEC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453BF0 00000000 */  nop   
/* 00453BF4 8FAE00C4 */  lw    $t6, 0xc4($sp)
.L00453BF8:
/* 00453BF8 24050006 */  li    $a1, 6
/* 00453BFC 11C0000A */  beqz  $t6, .L00453C28
/* 00453C00 01C02025 */   move  $a0, $t6
/* 00453C04 8F888BB0 */  lw     $t0, %got(bbindex)($gp)
/* 00453C08 8F988B88 */  lw     $t8, %got(proc_instr_base)($gp)
/* 00453C0C 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 00453C10 8D080000 */  lw    $t0, ($t0)
/* 00453C14 8F180000 */  lw    $t8, ($t8)
/* 00453C18 0320F809 */  jalr  $t9
/* 00453C1C 01183021 */   addu  $a2, $t0, $t8
/* 00453C20 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453C24 00000000 */  nop   
.L00453C28:
/* 00453C28 8F828AF8 */  lw     $v0, %got(picflag)($gp)
/* 00453C2C 24010002 */  li    $at, 2
/* 00453C30 8C420000 */  lw    $v0, ($v0)
/* 00453C34 97AF00D2 */  lhu   $t7, 0xd2($sp)
/* 00453C38 10410006 */  beq   $v0, $at, .L00453C54
/* 00453C3C 24010001 */   li    $at, 1
/* 00453C40 14410011 */  bne   $v0, $at, .L00453C88
/* 00453C44 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 00453C48 93AB00C3 */  lbu   $t3, 0xc3($sp)
/* 00453C4C 00000000 */  nop   
/* 00453C50 1560000C */  bnez  $t3, .L00453C84
.L00453C54:
/* 00453C54 24010022 */   li    $at, 34
/* 00453C58 11E1000B */  beq   $t7, $at, .L00453C88
/* 00453C5C 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 00453C60 8F998CA0 */  lw     $t9, %got(cprestore_offset)($gp)
/* 00453C64 2401FFFF */  li    $at, -1
/* 00453C68 8F390000 */  lw    $t9, ($t9)
/* 00453C6C 00000000 */  nop   
/* 00453C70 13210005 */  beq   $t9, $at, .L00453C88
/* 00453C74 8FBF00B4 */   lw    $ra, 0xb4($sp)
/* 00453C78 8F8189C0 */  lw     $at, %got(need_cprestore)($gp)
/* 00453C7C 240C0001 */  li    $t4, 1
/* 00453C80 A02C0000 */  sb    $t4, ($at)
.L00453C84:
/* 00453C84 8FBF00B4 */  lw    $ra, 0xb4($sp)
.L00453C88:
/* 00453C88 27BD00D0 */  addiu $sp, $sp, 0xd0
/* 00453C8C 03E00008 */  jr    $ra
/* 00453C90 00000000 */   nop   

    .type parseafa, @function
    .size parseafa, .-parseafa
    .end parseafa

glabel parseafrl
    .ent parseafrl
    # 004594BC parsestmt
/* 00453C94 3C1C0FBD */  .cpload $t9
/* 00453C98 279C65CC */  
/* 00453C9C 0399E021 */  
/* 00453CA0 8F8E89C4 */  lw     $t6, %got(cpalias_set)($gp)
/* 00453CA4 27BDFF30 */  addiu $sp, $sp, -0xd0
/* 00453CA8 91CE0000 */  lbu   $t6, ($t6)
/* 00453CAC AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 00453CB0 AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 00453CB4 11C00008 */  beqz  $t6, .L00453CD8
/* 00453CB8 AFA400D0 */   sw    $a0, 0xd0($sp)
/* 00453CBC 8F9984D4 */  lw    $t9, %call16(init_cpalias)($gp)
/* 00453CC0 00000000 */  nop   
/* 00453CC4 0320F809 */  jalr  $t9
/* 00453CC8 00000000 */   nop   
/* 00453CCC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453CD0 10000008 */  b     .L00453CF4
/* 00453CD4 97B800D2 */   lhu   $t8, 0xd2($sp)
.L00453CD8:
/* 00453CD8 8F9984D0 */  lw    $t9, %call16(restore_gp)($gp)
/* 00453CDC 00000000 */  nop   
/* 00453CE0 0320F809 */  jalr  $t9
/* 00453CE4 00000000 */   nop   
/* 00453CE8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453CEC 00000000 */  nop   
/* 00453CF0 97B800D2 */  lhu   $t8, 0xd2($sp)
.L00453CF4:
/* 00453CF4 8F818CB0 */  lw     $at, %got(branchpending)($gp)
/* 00453CF8 8F898D1C */  lw     $t1, %got(asm2op)($gp)
/* 00453CFC 240F0001 */  li    $t7, 1
/* 00453D00 0018C840 */  sll   $t9, $t8, 1
/* 00453D04 A02F0000 */  sb    $t7, ($at)
/* 00453D08 03294021 */  addu  $t0, $t9, $t1
/* 00453D0C 8F838D64 */  lw     $v1, %got(binasmfyle)($gp)
/* 00453D10 950A0000 */  lhu   $t2, ($t0)
/* 00453D14 8C630000 */  lw    $v1, ($v1)
/* 00453D18 2D4B0160 */  sltiu $t3, $t2, 0x160
/* 00453D1C 11600008 */  beqz  $t3, .L00453D40
/* 00453D20 000A6143 */   sra   $t4, $t2, 5
/* 00453D24 8F8E8D30 */  lw     $t6, %got(branchops)($gp)
/* 00453D28 000C6880 */  sll   $t5, $t4, 2
/* 00453D2C 01AE7821 */  addu  $t7, $t5, $t6
/* 00453D30 8DF80000 */  lw    $t8, ($t7)
/* 00453D34 00000000 */  nop   
/* 00453D38 0158C804 */  sllv  $t9, $t8, $t2
/* 00453D3C 2B2B0000 */  slti  $t3, $t9, 0
.L00453D40:
/* 00453D40 15600047 */  bnez  $t3, .L00453E60
/* 00453D44 03A04825 */   move  $t1, $sp
/* 00453D48 8F8C8070 */  lw    $t4, %got(RO_1001ABD8)($gp)
/* 00453D4C 03A07825 */  move  $t7, $sp
/* 00453D50 258CABD8 */  addiu $t4, %lo(RO_1001ABD8) # addiu $t4, $t4, -0x5428
/* 00453D54 258E0048 */  addiu $t6, $t4, 0x48
.L00453D58:
/* 00453D58 89810000 */  lwl   $at, ($t4)
/* 00453D5C 99810003 */  lwr   $at, 3($t4)
/* 00453D60 258C000C */  addiu $t4, $t4, 0xc
/* 00453D64 A9E10000 */  swl   $at, ($t7)
/* 00453D68 B9E10003 */  swr   $at, 3($t7)
/* 00453D6C 8981FFF8 */  lwl   $at, -8($t4)
/* 00453D70 9981FFFB */  lwr   $at, -5($t4)
/* 00453D74 25EF000C */  addiu $t7, $t7, 0xc
/* 00453D78 A9E1FFF8 */  swl   $at, -8($t7)
/* 00453D7C B9E1FFFB */  swr   $at, -5($t7)
/* 00453D80 8981FFFC */  lwl   $at, -4($t4)
/* 00453D84 9981FFFF */  lwr   $at, -1($t4)
/* 00453D88 00000000 */  nop   
/* 00453D8C A9E1FFFC */  swl   $at, -4($t7)
/* 00453D90 158EFFF1 */  bne   $t4, $t6, .L00453D58
/* 00453D94 B9E1FFFF */   swr   $at, -1($t7)
/* 00453D98 89810000 */  lwl   $at, ($t4)
/* 00453D9C 99810003 */  lwr   $at, 3($t4)
/* 00453DA0 8F988070 */  lw    $t8, %got(RO_1001AB88)($gp)
/* 00453DA4 A9E10000 */  swl   $at, ($t7)
/* 00453DA8 B9E10003 */  swr   $at, 3($t7)
/* 00453DAC 898E0004 */  lwl   $t6, 4($t4)
/* 00453DB0 998E0007 */  lwr   $t6, 7($t4)
/* 00453DB4 2718AB88 */  addiu $t8, %lo(RO_1001AB88) # addiu $t8, $t8, -0x5478
/* 00453DB8 A9EE0004 */  swl   $t6, 4($t7)
/* 00453DBC 27190048 */  addiu $t9, $t8, 0x48
/* 00453DC0 B9EE0007 */  swr   $t6, 7($t7)
.L00453DC4:
/* 00453DC4 8B010000 */  lwl   $at, ($t8)
/* 00453DC8 9B010003 */  lwr   $at, 3($t8)
/* 00453DCC 2718000C */  addiu $t8, $t8, 0xc
/* 00453DD0 A9210050 */  swl   $at, 0x50($t1)
/* 00453DD4 B9210053 */  swr   $at, 0x53($t1)
/* 00453DD8 8B01FFF8 */  lwl   $at, -8($t8)
/* 00453DDC 9B01FFFB */  lwr   $at, -5($t8)
/* 00453DE0 2529000C */  addiu $t1, $t1, 0xc
/* 00453DE4 A9210048 */  swl   $at, 0x48($t1)
/* 00453DE8 B921004B */  swr   $at, 0x4b($t1)
/* 00453DEC 8B01FFFC */  lwl   $at, -4($t8)
/* 00453DF0 9B01FFFF */  lwr   $at, -1($t8)
/* 00453DF4 00000000 */  nop   
/* 00453DF8 A921004C */  swl   $at, 0x4c($t1)
/* 00453DFC 1719FFF1 */  bne   $t8, $t9, .L00453DC4
/* 00453E00 B921004F */   swr   $at, 0x4f($t1)
/* 00453E04 8B010000 */  lwl   $at, ($t8)
/* 00453E08 9B010003 */  lwr   $at, 3($t8)
/* 00453E0C 240B0399 */  li    $t3, 921
/* 00453E10 A9210050 */  swl   $at, 0x50($t1)
/* 00453E14 B9210053 */  swr   $at, 0x53($t1)
/* 00453E18 8B190004 */  lwl   $t9, 4($t8)
/* 00453E1C 9B190007 */  lwr   $t9, 7($t8)
/* 00453E20 00000000 */  nop   
/* 00453E24 A9390054 */  swl   $t9, 0x54($t1)
/* 00453E28 B9390057 */  swr   $t9, 0x57($t1)
/* 00453E2C 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 00453E30 8FA7000C */  lw    $a3, 0xc($sp)
/* 00453E34 8FA60008 */  lw    $a2, 8($sp)
/* 00453E38 8FA50004 */  lw    $a1, 4($sp)
/* 00453E3C 8FA40000 */  lw    $a0, ($sp)
/* 00453E40 AFA800BC */  sw    $t0, 0xbc($sp)
/* 00453E44 AFA300C0 */  sw    $v1, 0xc0($sp)
/* 00453E48 0320F809 */  jalr  $t9
/* 00453E4C AFAB00A0 */   sw    $t3, 0xa0($sp)
/* 00453E50 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453E54 8FA300C0 */  lw    $v1, 0xc0($sp)
/* 00453E58 8FA800BC */  lw    $t0, 0xbc($sp)
/* 00453E5C 00000000 */  nop   
.L00453E60:
/* 00453E60 8C6D0008 */  lw    $t5, 8($v1)
/* 00453E64 24010009 */  li    $at, 9
/* 00453E68 000D7380 */  sll   $t6, $t5, 0xe
/* 00453E6C 000E6702 */  srl   $t4, $t6, 0x1c
/* 00453E70 11810047 */  beq   $t4, $at, .L00453F90
/* 00453E74 03A07025 */   move  $t6, $sp
/* 00453E78 8F8F8070 */  lw    $t7, %got(RO_1001AB38)($gp)
/* 00453E7C 03A0C025 */  move  $t8, $sp
/* 00453E80 25EFAB38 */  addiu $t7, %lo(RO_1001AB38) # addiu $t7, $t7, -0x54c8
/* 00453E84 25F90048 */  addiu $t9, $t7, 0x48
.L00453E88:
/* 00453E88 89E10000 */  lwl   $at, ($t7)
/* 00453E8C 99E10003 */  lwr   $at, 3($t7)
/* 00453E90 25EF000C */  addiu $t7, $t7, 0xc
/* 00453E94 AB010000 */  swl   $at, ($t8)
/* 00453E98 BB010003 */  swr   $at, 3($t8)
/* 00453E9C 89E1FFF8 */  lwl   $at, -8($t7)
/* 00453EA0 99E1FFFB */  lwr   $at, -5($t7)
/* 00453EA4 2718000C */  addiu $t8, $t8, 0xc
/* 00453EA8 AB01FFF8 */  swl   $at, -8($t8)
/* 00453EAC BB01FFFB */  swr   $at, -5($t8)
/* 00453EB0 89E1FFFC */  lwl   $at, -4($t7)
/* 00453EB4 99E1FFFF */  lwr   $at, -1($t7)
/* 00453EB8 00000000 */  nop   
/* 00453EBC AB01FFFC */  swl   $at, -4($t8)
/* 00453EC0 15F9FFF1 */  bne   $t7, $t9, .L00453E88
/* 00453EC4 BB01FFFF */   swr   $at, -1($t8)
/* 00453EC8 89E10000 */  lwl   $at, ($t7)
/* 00453ECC 99E10003 */  lwr   $at, 3($t7)
/* 00453ED0 8F898070 */  lw    $t1, %got(RO_1001AAE8)($gp)
/* 00453ED4 AB010000 */  swl   $at, ($t8)
/* 00453ED8 BB010003 */  swr   $at, 3($t8)
/* 00453EDC 89F90004 */  lwl   $t9, 4($t7)
/* 00453EE0 99F90007 */  lwr   $t9, 7($t7)
/* 00453EE4 2529AAE8 */  addiu $t1, %lo(RO_1001AAE8) # addiu $t1, $t1, -0x5518
/* 00453EE8 AB190004 */  swl   $t9, 4($t8)
/* 00453EEC 252D0048 */  addiu $t5, $t1, 0x48
/* 00453EF0 BB190007 */  swr   $t9, 7($t8)
.L00453EF4:
/* 00453EF4 89210000 */  lwl   $at, ($t1)
/* 00453EF8 99210003 */  lwr   $at, 3($t1)
/* 00453EFC 2529000C */  addiu $t1, $t1, 0xc
/* 00453F00 A9C10050 */  swl   $at, 0x50($t6)
/* 00453F04 B9C10053 */  swr   $at, 0x53($t6)
/* 00453F08 8921FFF8 */  lwl   $at, -8($t1)
/* 00453F0C 9921FFFB */  lwr   $at, -5($t1)
/* 00453F10 25CE000C */  addiu $t6, $t6, 0xc
/* 00453F14 A9C10048 */  swl   $at, 0x48($t6)
/* 00453F18 B9C1004B */  swr   $at, 0x4b($t6)
/* 00453F1C 8921FFFC */  lwl   $at, -4($t1)
/* 00453F20 9921FFFF */  lwr   $at, -1($t1)
/* 00453F24 00000000 */  nop   
/* 00453F28 A9C1004C */  swl   $at, 0x4c($t6)
/* 00453F2C 152DFFF1 */  bne   $t1, $t5, .L00453EF4
/* 00453F30 B9C1004F */   swr   $at, 0x4f($t6)
/* 00453F34 89210000 */  lwl   $at, ($t1)
/* 00453F38 99210003 */  lwr   $at, 3($t1)
/* 00453F3C 240C039A */  li    $t4, 922
/* 00453F40 A9C10050 */  swl   $at, 0x50($t6)
/* 00453F44 B9C10053 */  swr   $at, 0x53($t6)
/* 00453F48 892D0004 */  lwl   $t5, 4($t1)
/* 00453F4C 992D0007 */  lwr   $t5, 7($t1)
/* 00453F50 00000000 */  nop   
/* 00453F54 A9CD0054 */  swl   $t5, 0x54($t6)
/* 00453F58 B9CD0057 */  swr   $t5, 0x57($t6)
/* 00453F5C 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 00453F60 8FA7000C */  lw    $a3, 0xc($sp)
/* 00453F64 8FA60008 */  lw    $a2, 8($sp)
/* 00453F68 8FA50004 */  lw    $a1, 4($sp)
/* 00453F6C 8FA40000 */  lw    $a0, ($sp)
/* 00453F70 AFA800BC */  sw    $t0, 0xbc($sp)
/* 00453F74 AFA300C0 */  sw    $v1, 0xc0($sp)
/* 00453F78 0320F809 */  jalr  $t9
/* 00453F7C AFAC00A0 */   sw    $t4, 0xa0($sp)
/* 00453F80 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00453F84 8FA300C0 */  lw    $v1, 0xc0($sp)
/* 00453F88 8FA800BC */  lw    $t0, 0xbc($sp)
/* 00453F8C 00000000 */  nop   
.L00453F90:
/* 00453F90 90620008 */  lbu   $v0, 8($v1)
/* 00453F94 00000000 */  nop   
/* 00453F98 00025600 */  sll   $t2, $v0, 0x18
/* 00453F9C 000ACE42 */  srl   $t9, $t2, 0x19
/* 00453FA0 272FFFE0 */  addiu $t7, $t9, -0x20
/* 00453FA4 2DF80020 */  sltiu $t8, $t7, 0x20
/* 00453FA8 00185823 */  negu  $t3, $t8
/* 00453FAC 01EB6804 */  sllv  $t5, $t3, $t7
/* 00453FB0 05A10048 */  bgez  $t5, .L004540D4
/* 00453FB4 A3B900CF */   sb    $t9, 0xcf($sp)
/* 00453FB8 8F898070 */  lw    $t1, %got(RO_1001AA98)($gp)
/* 00453FBC 03A05025 */  move  $t2, $sp
/* 00453FC0 2529AA98 */  addiu $t1, %lo(RO_1001AA98) # addiu $t1, $t1, -0x5568
/* 00453FC4 252C0048 */  addiu $t4, $t1, 0x48
.L00453FC8:
/* 00453FC8 89210000 */  lwl   $at, ($t1)
/* 00453FCC 99210003 */  lwr   $at, 3($t1)
/* 00453FD0 2529000C */  addiu $t1, $t1, 0xc
/* 00453FD4 A9410000 */  swl   $at, ($t2)
/* 00453FD8 B9410003 */  swr   $at, 3($t2)
/* 00453FDC 8921FFF8 */  lwl   $at, -8($t1)
/* 00453FE0 9921FFFB */  lwr   $at, -5($t1)
/* 00453FE4 254A000C */  addiu $t2, $t2, 0xc
/* 00453FE8 A941FFF8 */  swl   $at, -8($t2)
/* 00453FEC B941FFFB */  swr   $at, -5($t2)
/* 00453FF0 8921FFFC */  lwl   $at, -4($t1)
/* 00453FF4 9921FFFF */  lwr   $at, -1($t1)
/* 00453FF8 00000000 */  nop   
/* 00453FFC A941FFFC */  swl   $at, -4($t2)
/* 00454000 152CFFF1 */  bne   $t1, $t4, .L00453FC8
/* 00454004 B941FFFF */   swr   $at, -1($t2)
/* 00454008 89210000 */  lwl   $at, ($t1)
/* 0045400C 99210003 */  lwr   $at, 3($t1)
/* 00454010 8F998070 */  lw    $t9, %got(RO_1001AA48)($gp)
/* 00454014 A9410000 */  swl   $at, ($t2)
/* 00454018 B9410003 */  swr   $at, 3($t2)
/* 0045401C 892C0004 */  lwl   $t4, 4($t1)
/* 00454020 992C0007 */  lwr   $t4, 7($t1)
/* 00454024 2739AA48 */  addiu $t9, %lo(RO_1001AA48) # addiu $t9, $t9, -0x55b8
/* 00454028 A94C0004 */  swl   $t4, 4($t2)
/* 0045402C 272B0048 */  addiu $t3, $t9, 0x48
/* 00454030 03A07825 */  move  $t7, $sp
/* 00454034 B94C0007 */  swr   $t4, 7($t2)
.L00454038:
/* 00454038 8B210000 */  lwl   $at, ($t9)
/* 0045403C 9B210003 */  lwr   $at, 3($t9)
/* 00454040 2739000C */  addiu $t9, $t9, 0xc
/* 00454044 A9E10050 */  swl   $at, 0x50($t7)
/* 00454048 B9E10053 */  swr   $at, 0x53($t7)
/* 0045404C 8B21FFF8 */  lwl   $at, -8($t9)
/* 00454050 9B21FFFB */  lwr   $at, -5($t9)
/* 00454054 25EF000C */  addiu $t7, $t7, 0xc
/* 00454058 A9E10048 */  swl   $at, 0x48($t7)
/* 0045405C B9E1004B */  swr   $at, 0x4b($t7)
/* 00454060 8B21FFFC */  lwl   $at, -4($t9)
/* 00454064 9B21FFFF */  lwr   $at, -1($t9)
/* 00454068 00000000 */  nop   
/* 0045406C A9E1004C */  swl   $at, 0x4c($t7)
/* 00454070 172BFFF1 */  bne   $t9, $t3, .L00454038
/* 00454074 B9E1004F */   swr   $at, 0x4f($t7)
/* 00454078 8B210000 */  lwl   $at, ($t9)
/* 0045407C 9B210003 */  lwr   $at, 3($t9)
/* 00454080 240D039C */  li    $t5, 924
/* 00454084 A9E10050 */  swl   $at, 0x50($t7)
/* 00454088 B9E10053 */  swr   $at, 0x53($t7)
/* 0045408C 8B2B0004 */  lwl   $t3, 4($t9)
/* 00454090 9B2B0007 */  lwr   $t3, 7($t9)
/* 00454094 00000000 */  nop   
/* 00454098 A9EB0054 */  swl   $t3, 0x54($t7)
/* 0045409C B9EB0057 */  swr   $t3, 0x57($t7)
/* 004540A0 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 004540A4 8FA7000C */  lw    $a3, 0xc($sp)
/* 004540A8 8FA60008 */  lw    $a2, 8($sp)
/* 004540AC 8FA50004 */  lw    $a1, 4($sp)
/* 004540B0 8FA40000 */  lw    $a0, ($sp)
/* 004540B4 AFA800BC */  sw    $t0, 0xbc($sp)
/* 004540B8 AFA300C0 */  sw    $v1, 0xc0($sp)
/* 004540BC 0320F809 */  jalr  $t9
/* 004540C0 AFAD00A0 */   sw    $t5, 0xa0($sp)
/* 004540C4 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004540C8 8FA300C0 */  lw    $v1, 0xc0($sp)
/* 004540CC 8FA800BC */  lw    $t0, 0xbc($sp)
/* 004540D0 00000000 */  nop   
.L004540D4:
/* 004540D4 94620004 */  lhu   $v0, 4($v1)
/* 004540D8 24010003 */  li    $at, 3
/* 004540DC 000275C0 */  sll   $t6, $v0, 0x17
/* 004540E0 000E1742 */  srl   $v0, $t6, 0x1d
/* 004540E4 AFA000C8 */  sw    $zero, 0xc8($sp)
/* 004540E8 14410006 */  bne   $v0, $at, .L00454104
/* 004540EC AFA000C4 */   sw    $zero, 0xc4($sp)
/* 004540F0 9469000A */  lhu   $t1, 0xa($v1)
/* 004540F4 95040000 */  lhu   $a0, ($t0)
/* 004540F8 312A3FFF */  andi  $t2, $t1, 0x3fff
/* 004540FC 10000012 */  b     .L00454148
/* 00454100 AFAA00C4 */   sw    $t2, 0xc4($sp)
.L00454104:
/* 00454104 24010004 */  li    $at, 4
/* 00454108 14410007 */  bne   $v0, $at, .L00454128
/* 0045410C 2419FFFF */   li    $t9, -1
/* 00454110 9478000A */  lhu   $t8, 0xa($v1)
/* 00454114 95040000 */  lhu   $a0, ($t0)
/* 00454118 330B3FFF */  andi  $t3, $t8, 0x3fff
/* 0045411C 032B7823 */  subu  $t7, $t9, $t3
/* 00454120 10000009 */  b     .L00454148
/* 00454124 AFAF00C4 */   sw    $t7, 0xc4($sp)
.L00454128:
/* 00454128 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 0045412C 8C640000 */  lw    $a0, ($v1)
/* 00454130 0320F809 */  jalr  $t9
/* 00454134 AFA800BC */   sw    $t0, 0xbc($sp)
/* 00454138 8FA800BC */  lw    $t0, 0xbc($sp)
/* 0045413C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00454140 95040000 */  lhu   $a0, ($t0)
/* 00454144 AFA200C8 */  sw    $v0, 0xc8($sp)
.L00454148:
/* 00454148 97AD00D2 */  lhu   $t5, 0xd2($sp)
/* 0045414C 93A500CF */  lbu   $a1, 0xcf($sp)
/* 00454150 25AEFF40 */  addiu $t6, $t5, -0xc0
/* 00454154 2DCC0060 */  sltiu $t4, $t6, 0x60
/* 00454158 11800009 */  beqz  $t4, .L00454180
/* 0045415C 000E4943 */   sra   $t1, $t6, 5
/* 00454160 8F988080 */  lw    $t8, %got(D_10004BF0)($gp)
/* 00454164 00095080 */  sll   $t2, $t1, 2
/* 00454168 27184BF0 */  addiu $t8, %lo(D_10004BF0) # addiu $t8, $t8, 0x4bf0
/* 0045416C 030AC821 */  addu  $t9, $t8, $t2
/* 00454170 8F2B0000 */  lw    $t3, ($t9)
/* 00454174 00000000 */  nop   
/* 00454178 01CB7804 */  sllv  $t7, $t3, $t6
/* 0045417C 29EC0000 */  slti  $t4, $t7, 0
.L00454180:
/* 00454180 11800009 */  beqz  $t4, .L004541A8
/* 00454184 00003025 */   move  $a2, $zero
/* 00454188 8FA900C4 */  lw    $t1, 0xc4($sp)
/* 0045418C 8F998468 */  lw    $t9, %call16(emitbene)($gp)
/* 00454190 8FA700C8 */  lw    $a3, 0xc8($sp)
/* 00454194 0320F809 */  jalr  $t9
/* 00454198 AFA90010 */   sw    $t1, 0x10($sp)
/* 0045419C 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004541A0 10000010 */  b     .L004541E4
/* 004541A4 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L004541A8:
/* 004541A8 8F988D1C */  lw     $t8, %got(asm2op)($gp)
/* 004541AC 00000000 */  nop   
/* 004541B0 271801C6 */  addiu $t8, $t8, 0x1c6
/* 004541B4 15180002 */  bne   $t0, $t8, .L004541C0
/* 004541B8 00000000 */   nop   
/* 004541BC A3A000CF */  sb    $zero, 0xcf($sp)
.L004541C0:
/* 004541C0 8F998464 */  lw    $t9, %call16(emitbcond)($gp)
/* 004541C4 93A500CF */  lbu   $a1, 0xcf($sp)
/* 004541C8 8FA600C8 */  lw    $a2, 0xc8($sp)
/* 004541CC 8FA700C4 */  lw    $a3, 0xc4($sp)
/* 004541D0 0320F809 */  jalr  $t9
/* 004541D4 00000000 */   nop   
/* 004541D8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 004541DC 00000000 */  nop   
/* 004541E0 8FBF00B4 */  lw    $ra, 0xb4($sp)
.L004541E4:
/* 004541E4 27BD00D0 */  addiu $sp, $sp, 0xd0
/* 004541E8 03E00008 */  jr    $ra
/* 004541EC 00000000 */   nop   

    .type parseafrl, @function
    .size parseafrl, .-parseafrl
    .end parseafrl

glabel parseafl
    .ent parseafl
    # 004594BC parsestmt
/* 004541F0 3C1C0FBD */  .cpload $t9
/* 004541F4 279C6070 */  
/* 004541F8 0399E021 */  
/* 004541FC 8F8E89C4 */  lw     $t6, %got(cpalias_set)($gp)
/* 00454200 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 00454204 91CE0000 */  lbu   $t6, ($t6)
/* 00454208 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0045420C AFBC0020 */  sw    $gp, 0x20($sp)
/* 00454210 AFB0001C */  sw    $s0, 0x1c($sp)
/* 00454214 11C00008 */  beqz  $t6, .L00454238
/* 00454218 AFA40038 */   sw    $a0, 0x38($sp)
/* 0045421C 8F9984D4 */  lw    $t9, %call16(init_cpalias)($gp)
/* 00454220 00000000 */  nop   
/* 00454224 0320F809 */  jalr  $t9
/* 00454228 00000000 */   nop   
/* 0045422C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00454230 10000007 */  b     .L00454250
/* 00454234 00000000 */   nop   
.L00454238:
/* 00454238 8F9984D0 */  lw    $t9, %call16(restore_gp)($gp)
/* 0045423C 00000000 */  nop   
/* 00454240 0320F809 */  jalr  $t9
/* 00454244 00000000 */   nop   
/* 00454248 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0045424C 00000000 */  nop   
.L00454250:
/* 00454250 8F838D64 */  lw     $v1, %got(binasmfyle)($gp)
/* 00454254 8F818CB0 */  lw     $at, %got(branchpending)($gp)
/* 00454258 8C630000 */  lw    $v1, ($v1)
/* 0045425C 240F0001 */  li    $t7, 1
/* 00454260 A02F0000 */  sb    $t7, ($at)
/* 00454264 94620004 */  lhu   $v0, 4($v1)
/* 00454268 24010003 */  li    $at, 3
/* 0045426C 0002C5C0 */  sll   $t8, $v0, 0x17
/* 00454270 00181742 */  srl   $v0, $t8, 0x1d
/* 00454274 14410006 */  bne   $v0, $at, .L00454290
/* 00454278 AFA00034 */   sw    $zero, 0x34($sp)
/* 0045427C 9470000A */  lhu   $s0, 0xa($v1)
/* 00454280 00000000 */  nop   
/* 00454284 32083FFF */  andi  $t0, $s0, 0x3fff
/* 00454288 10000011 */  b     .L004542D0
/* 0045428C 01008025 */   move  $s0, $t0
.L00454290:
/* 00454290 24010004 */  li    $at, 4
/* 00454294 14410006 */  bne   $v0, $at, .L004542B0
/* 00454298 00000000 */   nop   
/* 0045429C 9469000A */  lhu   $t1, 0xa($v1)
/* 004542A0 240BFFFF */  li    $t3, -1
/* 004542A4 312A3FFF */  andi  $t2, $t1, 0x3fff
/* 004542A8 10000009 */  b     .L004542D0
/* 004542AC 016A8023 */   subu  $s0, $t3, $t2
.L004542B0:
/* 004542B0 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 004542B4 8C640000 */  lw    $a0, ($v1)
/* 004542B8 0320F809 */  jalr  $t9
/* 004542BC AFA3002C */   sw    $v1, 0x2c($sp)
/* 004542C0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004542C4 8FA3002C */  lw    $v1, 0x2c($sp)
/* 004542C8 AFA20034 */  sw    $v0, 0x34($sp)
/* 004542CC 00008025 */  move  $s0, $zero
.L004542D0:
/* 004542D0 97A2003A */  lhu   $v0, 0x3a($sp)
/* 004542D4 24010004 */  li    $at, 4
/* 004542D8 1441000A */  bne   $v0, $at, .L00454304
/* 004542DC 2404004B */   li    $a0, 75
/* 004542E0 8F998468 */  lw    $t9, %call16(emitbene)($gp)
/* 004542E4 8FA70034 */  lw    $a3, 0x34($sp)
/* 004542E8 00002825 */  move  $a1, $zero
/* 004542EC 00003025 */  move  $a2, $zero
/* 004542F0 0320F809 */  jalr  $t9
/* 004542F4 AFB00010 */   sw    $s0, 0x10($sp)
/* 004542F8 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004542FC 10000020 */  b     .L00454380
/* 00454300 8FBF0024 */   lw    $ra, 0x24($sp)
.L00454304:
/* 00454304 8C6C0008 */  lw    $t4, 8($v1)
/* 00454308 24010009 */  li    $at, 9
/* 0045430C 000C6B80 */  sll   $t5, $t4, 0xe
/* 00454310 000D7702 */  srl   $t6, $t5, 0x1c
/* 00454314 15C1000F */  bne   $t6, $at, .L00454354
/* 00454318 00025840 */   sll   $t3, $v0, 1
/* 0045431C 8F988D1C */  lw     $t8, %got(asm2op)($gp)
/* 00454320 00027840 */  sll   $t7, $v0, 1
/* 00454324 01F8C821 */  addu  $t9, $t7, $t8
/* 00454328 90650008 */  lbu   $a1, 8($v1)
/* 0045432C 97240000 */  lhu   $a0, ($t9)
/* 00454330 8F998464 */  lw    $t9, %call16(emitbcond)($gp)
/* 00454334 8FA60034 */  lw    $a2, 0x34($sp)
/* 00454338 00054600 */  sll   $t0, $a1, 0x18
/* 0045433C 00082E42 */  srl   $a1, $t0, 0x19
/* 00454340 0320F809 */  jalr  $t9
/* 00454344 02003825 */   move  $a3, $s0
/* 00454348 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0045434C 1000000C */  b     .L00454380
/* 00454350 8FBF0024 */   lw    $ra, 0x24($sp)
.L00454354:
/* 00454354 8F8A8D1C */  lw     $t2, %got(asm2op)($gp)
/* 00454358 8F998464 */  lw    $t9, %call16(emitbcond)($gp)
/* 0045435C 016A6021 */  addu  $t4, $t3, $t2
/* 00454360 95840000 */  lhu   $a0, ($t4)
/* 00454364 8FA60034 */  lw    $a2, 0x34($sp)
/* 00454368 24050040 */  li    $a1, 64
/* 0045436C 0320F809 */  jalr  $t9
/* 00454370 02003825 */   move  $a3, $s0
/* 00454374 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00454378 00000000 */  nop   
/* 0045437C 8FBF0024 */  lw    $ra, 0x24($sp)
.L00454380:
/* 00454380 8FB0001C */  lw    $s0, 0x1c($sp)
/* 00454384 03E00008 */  jr    $ra
/* 00454388 27BD0038 */   addiu $sp, $sp, 0x38

    .type parseafl, @function
    .size parseafl, .-parseafl
    .end parseafl

glabel parseaforrr
    .ent parseaforrr
    # 004594BC parsestmt
/* 0045438C 3C1C0FBD */  .cpload $t9
/* 00454390 279C5ED4 */  
/* 00454394 0399E021 */  
/* 00454398 8F828D64 */  lw     $v0, %got(binasmfyle)($gp)
/* 0045439C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 004543A0 8F8F8D1C */  lw     $t7, %got(asm2op)($gp)
/* 004543A4 3086FFFF */  andi  $a2, $a0, 0xffff
/* 004543A8 8C420000 */  lw    $v0, ($v0)
/* 004543AC 00067040 */  sll   $t6, $a2, 1
/* 004543B0 8F99846C */  lw    $t9, %call16(emitcoproc)($gp)
/* 004543B4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 004543B8 AFBC0018 */  sw    $gp, 0x18($sp)
/* 004543BC AFA40020 */  sw    $a0, 0x20($sp)
/* 004543C0 01CFC021 */  addu  $t8, $t6, $t7
/* 004543C4 97040000 */  lhu   $a0, ($t8)
/* 004543C8 8C45000C */  lw    $a1, 0xc($v0)
/* 004543CC 0320F809 */  jalr  $t9
/* 004543D0 00000000 */   nop   
/* 004543D4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 004543D8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004543DC 03E00008 */  jr    $ra
/* 004543E0 27BD0020 */   addiu $sp, $sp, 0x20

    .type parseaforrr, @function
    .size parseaforrr, .-parseaforrr
    .end parseaforrr

glabel parseafr
    .ent parseafr
    # 004594BC parsestmt
/* 004543E4 3C1C0FBD */  .cpload $t9
/* 004543E8 279C5E7C */  
/* 004543EC 0399E021 */  
/* 004543F0 8F828D64 */  lw     $v0, %got(binasmfyle)($gp)
/* 004543F4 27BDFF40 */  addiu $sp, $sp, -0xc0
/* 004543F8 8C420000 */  lw    $v0, ($v0)
/* 004543FC 24010007 */  li    $at, 7
/* 00454400 8C4E0008 */  lw    $t6, 8($v0)
/* 00454404 AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 00454408 000E7B80 */  sll   $t7, $t6, 0xe
/* 0045440C 000FC702 */  srl   $t8, $t7, 0x1c
/* 00454410 AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 00454414 13010046 */  beq   $t8, $at, .L00454530
/* 00454418 AFA400C0 */   sw    $a0, 0xc0($sp)
/* 0045441C 8F998070 */  lw    $t9, %got(RO_1001AC78)($gp)
/* 00454420 03A05025 */  move  $t2, $sp
/* 00454424 2739AC78 */  addiu $t9, %lo(RO_1001AC78) # addiu $t9, $t9, -0x5388
/* 00454428 27290048 */  addiu $t1, $t9, 0x48
.L0045442C:
/* 0045442C 8B210000 */  lwl   $at, ($t9)
/* 00454430 9B210003 */  lwr   $at, 3($t9)
/* 00454434 2739000C */  addiu $t9, $t9, 0xc
/* 00454438 A9410000 */  swl   $at, ($t2)
/* 0045443C B9410003 */  swr   $at, 3($t2)
/* 00454440 8B21FFF8 */  lwl   $at, -8($t9)
/* 00454444 9B21FFFB */  lwr   $at, -5($t9)
/* 00454448 254A000C */  addiu $t2, $t2, 0xc
/* 0045444C A941FFF8 */  swl   $at, -8($t2)
/* 00454450 B941FFFB */  swr   $at, -5($t2)
/* 00454454 8B21FFFC */  lwl   $at, -4($t9)
/* 00454458 9B21FFFF */  lwr   $at, -1($t9)
/* 0045445C 00000000 */  nop   
/* 00454460 A941FFFC */  swl   $at, -4($t2)
/* 00454464 1729FFF1 */  bne   $t9, $t1, .L0045442C
/* 00454468 B941FFFF */   swr   $at, -1($t2)
/* 0045446C 8B210000 */  lwl   $at, ($t9)
/* 00454470 9B210003 */  lwr   $at, 3($t9)
/* 00454474 8F8B8070 */  lw    $t3, %got(RO_1001AC28)($gp)
/* 00454478 A9410000 */  swl   $at, ($t2)
/* 0045447C B9410003 */  swr   $at, 3($t2)
/* 00454480 8B290004 */  lwl   $t1, 4($t9)
/* 00454484 9B290007 */  lwr   $t1, 7($t9)
/* 00454488 256BAC28 */  addiu $t3, %lo(RO_1001AC28) # addiu $t3, $t3, -0x53d8
/* 0045448C A9490004 */  swl   $t1, 4($t2)
/* 00454490 256D0048 */  addiu $t5, $t3, 0x48
/* 00454494 03A07025 */  move  $t6, $sp
/* 00454498 B9490007 */  swr   $t1, 7($t2)
.L0045449C:
/* 0045449C 89610000 */  lwl   $at, ($t3)
/* 004544A0 99610003 */  lwr   $at, 3($t3)
/* 004544A4 256B000C */  addiu $t3, $t3, 0xc
/* 004544A8 A9C10050 */  swl   $at, 0x50($t6)
/* 004544AC B9C10053 */  swr   $at, 0x53($t6)
/* 004544B0 8961FFF8 */  lwl   $at, -8($t3)
/* 004544B4 9961FFFB */  lwr   $at, -5($t3)
/* 004544B8 25CE000C */  addiu $t6, $t6, 0xc
/* 004544BC A9C10048 */  swl   $at, 0x48($t6)
/* 004544C0 B9C1004B */  swr   $at, 0x4b($t6)
/* 004544C4 8961FFFC */  lwl   $at, -4($t3)
/* 004544C8 9961FFFF */  lwr   $at, -1($t3)
/* 004544CC 00000000 */  nop   
/* 004544D0 A9C1004C */  swl   $at, 0x4c($t6)
/* 004544D4 156DFFF1 */  bne   $t3, $t5, .L0045449C
/* 004544D8 B9C1004F */   swr   $at, 0x4f($t6)
/* 004544DC 89610000 */  lwl   $at, ($t3)
/* 004544E0 99610003 */  lwr   $at, 3($t3)
/* 004544E4 240F0406 */  li    $t7, 1030
/* 004544E8 A9C10050 */  swl   $at, 0x50($t6)
/* 004544EC B9C10053 */  swr   $at, 0x53($t6)
/* 004544F0 896D0004 */  lwl   $t5, 4($t3)
/* 004544F4 996D0007 */  lwr   $t5, 7($t3)
/* 004544F8 00000000 */  nop   
/* 004544FC A9CD0054 */  swl   $t5, 0x54($t6)
/* 00454500 B9CD0057 */  swr   $t5, 0x57($t6)
/* 00454504 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 00454508 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045450C 8FA60008 */  lw    $a2, 8($sp)
/* 00454510 8FA50004 */  lw    $a1, 4($sp)
/* 00454514 8FA40000 */  lw    $a0, ($sp)
/* 00454518 AFA200B8 */  sw    $v0, 0xb8($sp)
/* 0045451C 0320F809 */  jalr  $t9
/* 00454520 AFAF00A0 */   sw    $t7, 0xa0($sp)
/* 00454524 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00454528 8FA200B8 */  lw    $v0, 0xb8($sp)
/* 0045452C 00000000 */  nop   
.L00454530:
/* 00454530 97B900C2 */  lhu   $t9, 0xc2($sp)
/* 00454534 90450008 */  lbu   $a1, 8($v0)
/* 00454538 8F8C8D1C */  lw     $t4, %got(asm2op)($gp)
/* 0045453C 00195040 */  sll   $t2, $t9, 1
/* 00454540 8F998480 */  lw    $t9, %call16(emitreg2)($gp)
/* 00454544 0005C600 */  sll   $t8, $a1, 0x18
/* 00454548 014C6821 */  addu  $t5, $t2, $t4
/* 0045454C 00184642 */  srl   $t0, $t8, 0x19
/* 00454550 95A40000 */  lhu   $a0, ($t5)
/* 00454554 310500FF */  andi  $a1, $t0, 0xff
/* 00454558 0320F809 */  jalr  $t9
/* 0045455C 24060048 */   li    $a2, 72
/* 00454560 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00454564 8FBF00B4 */  lw    $ra, 0xb4($sp)
/* 00454568 8F8B8BB0 */  lw     $t3, %got(bbindex)($gp)
/* 0045456C 8F818C24 */  lw     $at, %got(pre_reorder_peepholes)($gp)
/* 00454570 8D6B0000 */  lw    $t3, ($t3)
/* 00454574 27BD00C0 */  addiu $sp, $sp, 0xc0
/* 00454578 03E00008 */  jr    $ra
/* 0045457C AC2B0010 */   sw    $t3, 0x10($at)

    .type parseafr, @function
    .size parseafr, .-parseafr
    .end parseafr

glabel parseafrrrr
    .ent parseafrrrr
    # 004594BC parsestmt
/* 00454580 3C1C0FBD */  .cpload $t9
/* 00454584 279C5CE0 */  
/* 00454588 0399E021 */  
/* 0045458C 8F828D64 */  lw     $v0, %got(binasmfyle)($gp)
/* 00454590 8F818C18 */  lw     $at, %got(fpop_src3)($gp)
/* 00454594 8C420000 */  lw    $v0, ($v0)
/* 00454598 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0045459C 904E000B */  lbu   $t6, 0xb($v0)
/* 004545A0 AFA40020 */  sw    $a0, 0x20($sp)
/* 004545A4 31CF007F */  andi  $t7, $t6, 0x7f
/* 004545A8 97B80022 */  lhu   $t8, 0x22($sp)
/* 004545AC A02F0000 */  sb    $t7, ($at)
/* 004545B0 8F888D1C */  lw     $t0, %got(asm2op)($gp)
/* 004545B4 0018C840 */  sll   $t9, $t8, 1
/* 004545B8 9447000A */  lhu   $a3, 0xa($v0)
/* 004545BC 94460008 */  lhu   $a2, 8($v0)
/* 004545C0 90450008 */  lbu   $a1, 8($v0)
/* 004545C4 03284821 */  addu  $t1, $t9, $t0
/* 004545C8 8F998460 */  lw    $t9, %call16(emitfpop)($gp)
/* 004545CC AFBF001C */  sw    $ra, 0x1c($sp)
/* 004545D0 AFBC0018 */  sw    $gp, 0x18($sp)
/* 004545D4 95240000 */  lhu   $a0, ($t1)
/* 004545D8 00077480 */  sll   $t6, $a3, 0x12
/* 004545DC 000665C0 */  sll   $t4, $a2, 0x17
/* 004545E0 00055600 */  sll   $t2, $a1, 0x18
/* 004545E4 000A2E42 */  srl   $a1, $t2, 0x19
/* 004545E8 000C3642 */  srl   $a2, $t4, 0x19
/* 004545EC 0320F809 */  jalr  $t9
/* 004545F0 000E3E42 */   srl   $a3, $t6, 0x19
/* 004545F4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 004545F8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004545FC 03E00008 */  jr    $ra
/* 00454600 27BD0020 */   addiu $sp, $sp, 0x20

    .type parseafrrrr, @function
    .size parseafrrrr, .-parseafrrrr
    .end parseafrrrr

glabel parsealign
    .ent parsealign
    # 004594BC parsestmt
/* 00454604 3C1C0FBD */  .cpload $t9
/* 00454608 279C5C5C */  
/* 0045460C 0399E021 */  
/* 00454610 8F8E8D64 */  lw     $t6, %got(binasmfyle)($gp)
/* 00454614 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 00454618 8DCE0000 */  lw    $t6, ($t6)
/* 0045461C AFBF0024 */  sw    $ra, 0x24($sp)
/* 00454620 AFBC0020 */  sw    $gp, 0x20($sp)
/* 00454624 8F998594 */  lw    $t9, %call16(power2)($gp)
/* 00454628 8DC40008 */  lw    $a0, 8($t6)
/* 0045462C 0320F809 */  jalr  $t9
/* 00454630 AFA4002C */   sw    $a0, 0x2c($sp)
/* 00454634 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00454638 24060001 */  li    $a2, 1
/* 0045463C 8F848BE8 */  lw     $a0, %got(currsegment)($gp)
/* 00454640 8FA7002C */  lw    $a3, 0x2c($sp)
/* 00454644 90840000 */  lbu   $a0, ($a0)
/* 00454648 00402825 */  move  $a1, $v0
/* 0045464C 10C40003 */  beq   $a2, $a0, .L0045465C
/* 00454650 24010002 */   li    $at, 2
/* 00454654 14810021 */  bne   $a0, $at, .L004546DC
/* 00454658 00000000 */   nop   
.L0045465C:
/* 0045465C 8F988D8C */  lw     $t8, %got(prev_sdata)($gp)
/* 00454660 00047880 */  sll   $t7, $a0, 2
/* 00454664 01E47821 */  addu  $t7, $t7, $a0
/* 00454668 000F7880 */  sll   $t7, $t7, 2
/* 0045466C 2718FFEC */  addiu $t8, $t8, -0x14
/* 00454670 01F81821 */  addu  $v1, $t7, $t8
/* 00454674 90790004 */  lbu   $t9, 4($v1)
/* 00454678 00000000 */  nop   
/* 0045467C 1320000D */  beqz  $t9, .L004546B4
/* 00454680 00000000 */   nop   
/* 00454684 8F888D64 */  lw     $t0, %got(binasmfyle)($gp)
/* 00454688 8C6A0008 */  lw    $t2, 8($v1)
/* 0045468C 8D080000 */  lw    $t0, ($t0)
/* 00454690 00000000 */  nop   
/* 00454694 8D090008 */  lw    $t1, 8($t0)
/* 00454698 00000000 */  nop   
/* 0045469C 0149082A */  slt   $at, $t2, $t1
/* 004546A0 10200002 */  beqz  $at, .L004546AC
/* 004546A4 00000000 */   nop   
/* 004546A8 01205025 */  move  $t2, $t1
.L004546AC:
/* 004546AC 1000000B */  b     .L004546DC
/* 004546B0 AC6A0008 */   sw    $t2, 8($v1)
.L004546B4:
/* 004546B4 8F8C8B64 */  lw     $t4, %got(currsegmentindex)($gp)
/* 004546B8 8F8B8AEC */  lw     $t3, %got(seg_ic)($gp)
/* 004546BC 8D8C0000 */  lw    $t4, ($t4)
/* 004546C0 8D6B0000 */  lw    $t3, ($t3)
/* 004546C4 000C6880 */  sll   $t5, $t4, 2
/* 004546C8 016D7021 */  addu  $t6, $t3, $t5
/* 004546CC 8DCF0000 */  lw    $t7, ($t6)
/* 004546D0 A0660004 */  sb    $a2, 4($v1)
/* 004546D4 AC620008 */  sw    $v0, 8($v1)
/* 004546D8 AC6F000C */  sw    $t7, 0xc($v1)
.L004546DC:
/* 004546DC 10800006 */  beqz  $a0, .L004546F8
/* 004546E0 24010002 */   li    $at, 2
/* 004546E4 10810004 */  beq   $a0, $at, .L004546F8
/* 004546E8 24010009 */   li    $at, 9
/* 004546EC 10810003 */  beq   $a0, $at, .L004546FC
/* 004546F0 0004C080 */   sll   $t8, $a0, 2
/* 004546F4 14C4000C */  bne   $a2, $a0, .L00454728
.L004546F8:
/* 004546F8 0004C080 */   sll   $t8, $a0, 2
.L004546FC:
/* 004546FC 8F998D90 */  lw     $t9, %got(prev_align)($gp)
/* 00454700 0304C021 */  addu  $t8, $t8, $a0
/* 00454704 0018C080 */  sll   $t8, $t8, 2
/* 00454708 03191821 */  addu  $v1, $t8, $t9
/* 0045470C 8C680008 */  lw    $t0, 8($v1)
/* 00454710 00000000 */  nop   
/* 00454714 0102082A */  slt   $at, $t0, $v0
/* 00454718 10200002 */  beqz  $at, .L00454724
/* 0045471C 00000000 */   nop   
/* 00454720 00404025 */  move  $t0, $v0
.L00454724:
/* 00454724 AC680008 */  sw    $t0, 8($v1)
.L00454728:
/* 00454728 1080000D */  beqz  $a0, .L00454760
/* 0045472C 2401000F */   li    $at, 15
/* 00454730 1081000B */  beq   $a0, $at, .L00454760
/* 00454734 0007482A */   slt   $t1, $zero, $a3
/* 00454738 8F848B64 */  lw     $a0, %got(currsegmentindex)($gp)
/* 0045473C 8F818B58 */  lw     $at, %got(aligning)($gp)
/* 00454740 8F9985C4 */  lw    $t9, %call16(definealabel)($gp)
/* 00454744 8C840000 */  lw    $a0, ($a0)
/* 00454748 00003025 */  move  $a2, $zero
/* 0045474C 0320F809 */  jalr  $t9
/* 00454750 A0290000 */   sb    $t1, ($at)
/* 00454754 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00454758 1000000B */  b     .L00454788
/* 0045475C 8FBF0024 */   lw    $ra, 0x24($sp)
.L00454760:
/* 00454760 8F9982E4 */  lw    $t9, %call16(fill_pseudo)($gp)
/* 00454764 2404000B */  li    $a0, 11
/* 00454768 00003025 */  move  $a2, $zero
/* 0045476C 00003825 */  move  $a3, $zero
/* 00454770 AFA00010 */  sw    $zero, 0x10($sp)
/* 00454774 0320F809 */  jalr  $t9
/* 00454778 AFA00014 */   sw    $zero, 0x14($sp)
/* 0045477C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00454780 00000000 */  nop   
/* 00454784 8FBF0024 */  lw    $ra, 0x24($sp)
.L00454788:
/* 00454788 27BD0030 */  addiu $sp, $sp, 0x30
/* 0045478C 03E00008 */  jr    $ra
/* 00454790 00000000 */   nop   

    .type parsealign, @function
    .size parsealign, .-parsealign
    .end parsealign

glabel parseascii
    .ent parseascii
    # 004594BC parsestmt
/* 00454794 3C1C0FBD */  .cpload $t9
/* 00454798 279C5ACC */  
/* 0045479C 0399E021 */  
/* 004547A0 27BDFE80 */  addiu $sp, $sp, -0x180
/* 004547A4 8F828BE8 */  lw     $v0, %got(currsegment)($gp)
/* 004547A8 8F8E8D84 */  lw     $t6, %got(realsegments)($gp)
/* 004547AC 90420000 */  lbu   $v0, ($v0)
/* 004547B0 8DCE0000 */  lw    $t6, ($t6)
/* 004547B4 2C4F0020 */  sltiu $t7, $v0, 0x20
/* 004547B8 000FC023 */  negu  $t8, $t7
/* 004547BC 01D8C824 */  and   $t9, $t6, $t8
/* 004547C0 00594004 */  sllv  $t0, $t9, $v0
/* 004547C4 AFBF00D4 */  sw    $ra, 0xd4($sp)
/* 004547C8 AFBE00D0 */  sw    $fp, 0xd0($sp)
/* 004547CC AFBC00CC */  sw    $gp, 0xcc($sp)
/* 004547D0 AFB700C8 */  sw    $s7, 0xc8($sp)
/* 004547D4 AFB600C4 */  sw    $s6, 0xc4($sp)
/* 004547D8 AFB500C0 */  sw    $s5, 0xc0($sp)
/* 004547DC AFB400BC */  sw    $s4, 0xbc($sp)
/* 004547E0 AFB300B8 */  sw    $s3, 0xb8($sp)
/* 004547E4 AFB200B4 */  sw    $s2, 0xb4($sp)
/* 004547E8 AFB100B0 */  sw    $s1, 0xb0($sp)
/* 004547EC AFB000AC */  sw    $s0, 0xac($sp)
/* 004547F0 05000049 */  bltz  $t0, .L00454918
/* 004547F4 AFA40180 */   sw    $a0, 0x180($sp)
/* 004547F8 8F898070 */  lw    $t1, %got(RO_1001AD18)($gp)
/* 004547FC 03A06025 */  move  $t4, $sp
/* 00454800 2529AD18 */  addiu $t1, %lo(RO_1001AD18) # addiu $t1, $t1, -0x52e8
/* 00454804 252B0048 */  addiu $t3, $t1, 0x48
.L00454808:
/* 00454808 89210000 */  lwl   $at, ($t1)
/* 0045480C 99210003 */  lwr   $at, 3($t1)
/* 00454810 2529000C */  addiu $t1, $t1, 0xc
/* 00454814 A9810000 */  swl   $at, ($t4)
/* 00454818 B9810003 */  swr   $at, 3($t4)
/* 0045481C 8921FFF8 */  lwl   $at, -8($t1)
/* 00454820 9921FFFB */  lwr   $at, -5($t1)
/* 00454824 258C000C */  addiu $t4, $t4, 0xc
/* 00454828 A981FFF8 */  swl   $at, -8($t4)
/* 0045482C B981FFFB */  swr   $at, -5($t4)
/* 00454830 8921FFFC */  lwl   $at, -4($t1)
/* 00454834 9921FFFF */  lwr   $at, -1($t1)
/* 00454838 00000000 */  nop   
/* 0045483C A981FFFC */  swl   $at, -4($t4)
/* 00454840 152BFFF1 */  bne   $t1, $t3, .L00454808
/* 00454844 B981FFFF */   swr   $at, -1($t4)
/* 00454848 89210000 */  lwl   $at, ($t1)
/* 0045484C 99210003 */  lwr   $at, 3($t1)
/* 00454850 8F8D8070 */  lw    $t5, %got(RO_1001ACC8)($gp)
/* 00454854 A9810000 */  swl   $at, ($t4)
/* 00454858 B9810003 */  swr   $at, 3($t4)
/* 0045485C 892B0004 */  lwl   $t3, 4($t1)
/* 00454860 992B0007 */  lwr   $t3, 7($t1)
/* 00454864 25ADACC8 */  addiu $t5, %lo(RO_1001ACC8) # addiu $t5, $t5, -0x5338
/* 00454868 A98B0004 */  swl   $t3, 4($t4)
/* 0045486C 25AE0048 */  addiu $t6, $t5, 0x48
/* 00454870 03A0C025 */  move  $t8, $sp
/* 00454874 B98B0007 */  swr   $t3, 7($t4)
.L00454878:
/* 00454878 89A10000 */  lwl   $at, ($t5)
/* 0045487C 99A10003 */  lwr   $at, 3($t5)
/* 00454880 25AD000C */  addiu $t5, $t5, 0xc
/* 00454884 AB010050 */  swl   $at, 0x50($t8)
/* 00454888 BB010053 */  swr   $at, 0x53($t8)
/* 0045488C 89A1FFF8 */  lwl   $at, -8($t5)
/* 00454890 99A1FFFB */  lwr   $at, -5($t5)
/* 00454894 2718000C */  addiu $t8, $t8, 0xc
/* 00454898 AB010048 */  swl   $at, 0x48($t8)
/* 0045489C BB01004B */  swr   $at, 0x4b($t8)
/* 004548A0 89A1FFFC */  lwl   $at, -4($t5)
/* 004548A4 99A1FFFF */  lwr   $at, -1($t5)
/* 004548A8 00000000 */  nop   
/* 004548AC AB01004C */  swl   $at, 0x4c($t8)
/* 004548B0 15AEFFF1 */  bne   $t5, $t6, .L00454878
/* 004548B4 BB01004F */   swr   $at, 0x4f($t8)
/* 004548B8 89A10000 */  lwl   $at, ($t5)
/* 004548BC 99A10003 */  lwr   $at, 3($t5)
/* 004548C0 24190442 */  li    $t9, 1090
/* 004548C4 AB010050 */  swl   $at, 0x50($t8)
/* 004548C8 BB010053 */  swr   $at, 0x53($t8)
/* 004548CC 89AE0004 */  lwl   $t6, 4($t5)
/* 004548D0 99AE0007 */  lwr   $t6, 7($t5)
/* 004548D4 00000000 */  nop   
/* 004548D8 AB0E0054 */  swl   $t6, 0x54($t8)
/* 004548DC BB0E0057 */  swr   $t6, 0x57($t8)
/* 004548E0 AFB900A0 */  sw    $t9, 0xa0($sp)
/* 004548E4 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 004548E8 8FA7000C */  lw    $a3, 0xc($sp)
/* 004548EC 8FA60008 */  lw    $a2, 8($sp)
/* 004548F0 8FA50004 */  lw    $a1, 4($sp)
/* 004548F4 8FA40000 */  lw    $a0, ($sp)
/* 004548F8 0320F809 */  jalr  $t9
/* 004548FC 00000000 */   nop   
/* 00454900 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00454904 00000000 */  nop   
/* 00454908 8F828BE8 */  lw     $v0, %got(currsegment)($gp)
/* 0045490C 00000000 */  nop   
/* 00454910 90420000 */  lbu   $v0, ($v0)
/* 00454914 00000000 */  nop   
.L00454918:
/* 00454918 1040000A */  beqz  $v0, .L00454944
/* 0045491C 2401000F */   li    $at, 15
/* 00454920 10410008 */  beq   $v0, $at, .L00454944
/* 00454924 24050001 */   li    $a1, 1
/* 00454928 8F848B64 */  lw     $a0, %got(currsegmentindex)($gp)
/* 0045492C 8F9985C4 */  lw    $t9, %call16(definealabel)($gp)
/* 00454930 8C840000 */  lw    $a0, ($a0)
/* 00454934 0320F809 */  jalr  $t9
/* 00454938 00003025 */   move  $a2, $zero
/* 0045493C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00454940 00000000 */  nop   
.L00454944:
/* 00454944 8F958D64 */  lw     $s5, %got(binasmfyle)($gp)
/* 00454948 00009825 */  move  $s3, $zero
/* 0045494C 8EA80000 */  lw    $t0, ($s5)
/* 00454950 24120011 */  li    $s2, 17
/* 00454954 8D160008 */  lw    $s6, 8($t0)
/* 00454958 24140001 */  li    $s4, 1
/* 0045495C 1AC0005B */  blez  $s6, .L00454ACC
/* 00454960 241E002C */   li    $fp, 44
/* 00454964 8F978AE0 */  lw     $s7, %got(memory)($gp)
/* 00454968 26D60001 */  addiu $s6, $s6, 1
.L0045496C:
/* 0045496C 24010011 */  li    $at, 17
/* 00454970 16410007 */  bne   $s2, $at, .L00454990
/* 00454974 00000000 */   nop   
/* 00454978 8F9985E8 */  lw    $t9, %call16(get_binasm)($gp)
/* 0045497C 02A02025 */  move  $a0, $s5
/* 00454980 0320F809 */  jalr  $t9
/* 00454984 00000000 */   nop   
/* 00454988 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0045498C 24120001 */  li    $s2, 1
.L00454990:
/* 00454990 8F828BE8 */  lw     $v0, %got(currsegment)($gp)
/* 00454994 2401000F */  li    $at, 15
/* 00454998 90420000 */  lbu   $v0, ($v0)
/* 0045499C 00000000 */  nop   
/* 004549A0 10400035 */  beqz  $v0, .L00454A78
/* 004549A4 00000000 */   nop   
/* 004549A8 10410034 */  beq   $v0, $at, .L00454A7C
/* 004549AC 2A610080 */   slti  $at, $s3, 0x80
/* 004549B0 8F838B64 */  lw     $v1, %got(currsegmentindex)($gp)
/* 004549B4 8F8A8AEC */  lw     $t2, %got(seg_ic)($gp)
/* 004549B8 8C630000 */  lw    $v1, ($v1)
/* 004549BC 8EE90000 */  lw    $t1, ($s7)
/* 004549C0 007E0019 */  multu $v1, $fp
/* 004549C4 8D4A0000 */  lw    $t2, ($t2)
/* 004549C8 00035880 */  sll   $t3, $v1, 2
/* 004549CC 014B2021 */  addu  $a0, $t2, $t3
/* 004549D0 8C910000 */  lw    $s1, ($a0)
/* 004549D4 24060001 */  li    $a2, 1
/* 004549D8 02202825 */  move  $a1, $s1
/* 004549DC 00006012 */  mflo  $t4
/* 004549E0 012C8021 */  addu  $s0, $t1, $t4
/* 004549E4 8E0F0004 */  lw    $t7, 4($s0)
/* 004549E8 00000000 */  nop   
/* 004549EC 022F082A */  slt   $at, $s1, $t7
/* 004549F0 14200016 */  bnez  $at, .L00454A4C
/* 004549F4 00000000 */   nop   
/* 004549F8 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 004549FC 8E070000 */  lw    $a3, ($s0)
/* 00454A00 26040004 */  addiu $a0, $s0, 4
/* 00454A04 0320F809 */  jalr  $t9
/* 00454A08 AFA00010 */   sw    $zero, 0x10($sp)
/* 00454A0C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00454A10 8EEE0000 */  lw    $t6, ($s7)
/* 00454A14 8F838B64 */  lw     $v1, %got(currsegmentindex)($gp)
/* 00454A18 8F988AEC */  lw     $t8, %got(seg_ic)($gp)
/* 00454A1C 8C630000 */  lw    $v1, ($v1)
/* 00454A20 00000000 */  nop   
/* 00454A24 007E0019 */  multu $v1, $fp
/* 00454A28 0003C880 */  sll   $t9, $v1, 2
/* 00454A2C 00006812 */  mflo  $t5
/* 00454A30 01CD8021 */  addu  $s0, $t6, $t5
/* 00454A34 AE020000 */  sw    $v0, ($s0)
/* 00454A38 8F180000 */  lw    $t8, ($t8)
/* 00454A3C 00000000 */  nop   
/* 00454A40 03192021 */  addu  $a0, $t8, $t9
/* 00454A44 8C910000 */  lw    $s1, ($a0)
/* 00454A48 00000000 */  nop   
.L00454A4C:
/* 00454A4C 8EA80000 */  lw    $t0, ($s5)
/* 00454A50 8E090000 */  lw    $t1, ($s0)
/* 00454A54 01125021 */  addu  $t2, $t0, $s2
/* 00454A58 914BFFFF */  lbu   $t3, -1($t2)
/* 00454A5C 01316021 */  addu  $t4, $t1, $s1
/* 00454A60 A18B0000 */  sb    $t3, ($t4)
/* 00454A64 8C8F0000 */  lw    $t7, ($a0)
/* 00454A68 00000000 */  nop   
/* 00454A6C 25EE0001 */  addiu $t6, $t7, 1
/* 00454A70 10000013 */  b     .L00454AC0
/* 00454A74 AC8E0000 */   sw    $t6, ($a0)
.L00454A78:
/* 00454A78 2A610080 */  slti  $at, $s3, 0x80
.L00454A7C:
/* 00454A7C 14200009 */  bnez  $at, .L00454AA4
/* 00454A80 00000000 */   nop   
/* 00454A84 8F9982E8 */  lw    $t9, %call16(fill_ascii_pseudo)($gp)
/* 00454A88 27A400F4 */  addiu $a0, $sp, 0xf4
/* 00454A8C 24050080 */  li    $a1, 128
/* 00454A90 00003025 */  move  $a2, $zero
/* 00454A94 0320F809 */  jalr  $t9
/* 00454A98 00009825 */   move  $s3, $zero
/* 00454A9C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00454AA0 00000000 */  nop   
.L00454AA4:
/* 00454AA4 8EAD0000 */  lw    $t5, ($s5)
/* 00454AA8 26730001 */  addiu $s3, $s3, 1
/* 00454AAC 01B2C021 */  addu  $t8, $t5, $s2
/* 00454AB0 9319FFFF */  lbu   $t9, -1($t8)
/* 00454AB4 27A800F3 */  addiu $t0, $sp, 0xf3
/* 00454AB8 02685021 */  addu  $t2, $s3, $t0
/* 00454ABC A1590000 */  sb    $t9, ($t2)
.L00454AC0:
/* 00454AC0 26940001 */  addiu $s4, $s4, 1
/* 00454AC4 1696FFA9 */  bne   $s4, $s6, .L0045496C
/* 00454AC8 26520001 */   addiu $s2, $s2, 1
.L00454ACC:
/* 00454ACC 8F828BE8 */  lw     $v0, %got(currsegment)($gp)
/* 00454AD0 8F978AE0 */  lw     $s7, %got(memory)($gp)
/* 00454AD4 90420000 */  lbu   $v0, ($v0)
/* 00454AD8 241E002C */  li    $fp, 44
/* 00454ADC 10400003 */  beqz  $v0, .L00454AEC
/* 00454AE0 2401000F */   li    $at, 15
/* 00454AE4 1441000E */  bne   $v0, $at, .L00454B20
/* 00454AE8 93AB0183 */   lbu   $t3, 0x183($sp)
.L00454AEC:
/* 00454AEC 1E600005 */  bgtz  $s3, .L00454B04
/* 00454AF0 27A400F4 */   addiu $a0, $sp, 0xf4
/* 00454AF4 93A90183 */  lbu   $t1, 0x183($sp)
/* 00454AF8 00000000 */  nop   
/* 00454AFC 11200008 */  beqz  $t1, .L00454B20
/* 00454B00 93AB0183 */   lbu   $t3, 0x183($sp)
.L00454B04:
/* 00454B04 8F9982E8 */  lw    $t9, %call16(fill_ascii_pseudo)($gp)
/* 00454B08 93A60183 */  lbu   $a2, 0x183($sp)
/* 00454B0C 0320F809 */  jalr  $t9
/* 00454B10 02602825 */   move  $a1, $s3
/* 00454B14 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00454B18 00000000 */  nop   
/* 00454B1C 93AB0183 */  lbu   $t3, 0x183($sp)
.L00454B20:
/* 00454B20 00000000 */  nop   
/* 00454B24 11600039 */  beqz  $t3, .L00454C0C
/* 00454B28 8FBF00D4 */   lw    $ra, 0xd4($sp)
/* 00454B2C 8F828BE8 */  lw     $v0, %got(currsegment)($gp)
/* 00454B30 2401000F */  li    $at, 15
/* 00454B34 90420000 */  lbu   $v0, ($v0)
/* 00454B38 00000000 */  nop   
/* 00454B3C 10400033 */  beqz  $v0, .L00454C0C
/* 00454B40 8FBF00D4 */   lw    $ra, 0xd4($sp)
/* 00454B44 10410031 */  beq   $v0, $at, .L00454C0C
/* 00454B48 8FBF00D4 */   lw    $ra, 0xd4($sp)
/* 00454B4C 8F838B64 */  lw     $v1, %got(currsegmentindex)($gp)
/* 00454B50 8F8C8AEC */  lw     $t4, %got(seg_ic)($gp)
/* 00454B54 8C630000 */  lw    $v1, ($v1)
/* 00454B58 8EEE0000 */  lw    $t6, ($s7)
/* 00454B5C 007E0019 */  multu $v1, $fp
/* 00454B60 8D8C0000 */  lw    $t4, ($t4)
/* 00454B64 00037880 */  sll   $t7, $v1, 2
/* 00454B68 018F2021 */  addu  $a0, $t4, $t7
/* 00454B6C 8C910000 */  lw    $s1, ($a0)
/* 00454B70 24060001 */  li    $a2, 1
/* 00454B74 02202825 */  move  $a1, $s1
/* 00454B78 00006812 */  mflo  $t5
/* 00454B7C 01CD8021 */  addu  $s0, $t6, $t5
/* 00454B80 8E180004 */  lw    $t8, 4($s0)
/* 00454B84 00000000 */  nop   
/* 00454B88 0238082A */  slt   $at, $s1, $t8
/* 00454B8C 14200016 */  bnez  $at, .L00454BE8
/* 00454B90 00000000 */   nop   
/* 00454B94 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 00454B98 8E070000 */  lw    $a3, ($s0)
/* 00454B9C 26040004 */  addiu $a0, $s0, 4
/* 00454BA0 0320F809 */  jalr  $t9
/* 00454BA4 AFA00010 */   sw    $zero, 0x10($sp)
/* 00454BA8 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00454BAC 8EE80000 */  lw    $t0, ($s7)
/* 00454BB0 8F838B64 */  lw     $v1, %got(currsegmentindex)($gp)
/* 00454BB4 8F8A8AEC */  lw     $t2, %got(seg_ic)($gp)
/* 00454BB8 8C630000 */  lw    $v1, ($v1)
/* 00454BBC 00000000 */  nop   
/* 00454BC0 007E0019 */  multu $v1, $fp
/* 00454BC4 00034880 */  sll   $t1, $v1, 2
/* 00454BC8 0000C812 */  mflo  $t9
/* 00454BCC 01198021 */  addu  $s0, $t0, $t9
/* 00454BD0 AE020000 */  sw    $v0, ($s0)
/* 00454BD4 8D4A0000 */  lw    $t2, ($t2)
/* 00454BD8 00000000 */  nop   
/* 00454BDC 01492021 */  addu  $a0, $t2, $t1
/* 00454BE0 8C910000 */  lw    $s1, ($a0)
/* 00454BE4 00000000 */  nop   
.L00454BE8:
/* 00454BE8 8E0B0000 */  lw    $t3, ($s0)
/* 00454BEC 00000000 */  nop   
/* 00454BF0 01716021 */  addu  $t4, $t3, $s1
/* 00454BF4 A1800000 */  sb    $zero, ($t4)
/* 00454BF8 8C8F0000 */  lw    $t7, ($a0)
/* 00454BFC 00000000 */  nop   
/* 00454C00 25EE0001 */  addiu $t6, $t7, 1
/* 00454C04 AC8E0000 */  sw    $t6, ($a0)
/* 00454C08 8FBF00D4 */  lw    $ra, 0xd4($sp)
.L00454C0C:
/* 00454C0C 8FB000AC */  lw    $s0, 0xac($sp)
/* 00454C10 8FB100B0 */  lw    $s1, 0xb0($sp)
/* 00454C14 8FB200B4 */  lw    $s2, 0xb4($sp)
/* 00454C18 8FB300B8 */  lw    $s3, 0xb8($sp)
/* 00454C1C 8FB400BC */  lw    $s4, 0xbc($sp)
/* 00454C20 8FB500C0 */  lw    $s5, 0xc0($sp)
/* 00454C24 8FB600C4 */  lw    $s6, 0xc4($sp)
/* 00454C28 8FB700C8 */  lw    $s7, 0xc8($sp)
/* 00454C2C 8FBE00D0 */  lw    $fp, 0xd0($sp)
/* 00454C30 03E00008 */  jr    $ra
/* 00454C34 27BD0180 */   addiu $sp, $sp, 0x180

    .type parseascii, @function
    .size parseascii, .-parseascii
    .end parseascii

glabel remember_symbol_size
    .ent remember_symbol_size
    # 00454CB0 parsebyte
    # 00458E18 parseword
    # 004594BC parsestmt
/* 00454C38 3C1C0FBD */  .cpload $t9
/* 00454C3C 279C5628 */  
/* 00454C40 0399E021 */  
/* 00454C44 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00454C48 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00454C4C AFBC0018 */  sw    $gp, 0x18($sp)
/* 00454C50 10800013 */  beqz  $a0, .L00454CA0
/* 00454C54 AFA50024 */   sw    $a1, 0x24($sp)
/* 00454C58 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 00454C5C 00000000 */  nop   
/* 00454C60 0320F809 */  jalr  $t9
/* 00454C64 00000000 */   nop   
/* 00454C68 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00454C6C 8FAF0024 */  lw    $t7, 0x24($sp)
/* 00454C70 8F8389D8 */  lw     $v1, %got(label_size)($gp)
/* 00454C74 00000000 */  nop   
/* 00454C78 8C6E0000 */  lw    $t6, ($v1)
/* 00454C7C 00000000 */  nop   
/* 00454C80 01CF2821 */  addu  $a1, $t6, $t7
/* 00454C84 AC650000 */  sw    $a1, ($v1)
/* 00454C88 8F99843C */  lw    $t9, %call16(reenter_symbol)($gp)
/* 00454C8C 8C44000C */  lw    $a0, 0xc($v0)
/* 00454C90 0320F809 */  jalr  $t9
/* 00454C94 00000000 */   nop   
/* 00454C98 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00454C9C 00000000 */  nop   
.L00454CA0:
/* 00454CA0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00454CA4 27BD0020 */  addiu $sp, $sp, 0x20
/* 00454CA8 03E00008 */  jr    $ra
/* 00454CAC 00000000 */   nop   

    .type remember_symbol_size, @function
    .size remember_symbol_size, .-remember_symbol_size
    .end remember_symbol_size

glabel parsebyte
    .ent parsebyte
    # 004594BC parsestmt
/* 00454CB0 3C1C0FBD */  .cpload $t9
/* 00454CB4 279C55B0 */  
/* 00454CB8 0399E021 */  
/* 00454CBC 27BDFF30 */  addiu $sp, $sp, -0xd0
/* 00454CC0 8F8489D4 */  lw     $a0, %got(last_globl_symno)($gp)
/* 00454CC4 8F99850C */  lw    $t9, %call16(remember_symbol_size)($gp)
/* 00454CC8 AFBF00CC */  sw    $ra, 0xcc($sp)
/* 00454CCC 8C840000 */  lw    $a0, ($a0)
/* 00454CD0 AFBC00C8 */  sw    $gp, 0xc8($sp)
/* 00454CD4 AFB600C4 */  sw    $s6, 0xc4($sp)
/* 00454CD8 AFB500C0 */  sw    $s5, 0xc0($sp)
/* 00454CDC AFB400BC */  sw    $s4, 0xbc($sp)
/* 00454CE0 AFB300B8 */  sw    $s3, 0xb8($sp)
/* 00454CE4 AFB200B4 */  sw    $s2, 0xb4($sp)
/* 00454CE8 AFB100B0 */  sw    $s1, 0xb0($sp)
/* 00454CEC AFB000AC */  sw    $s0, 0xac($sp)
/* 00454CF0 0320F809 */  jalr  $t9
/* 00454CF4 24050001 */   li    $a1, 1
/* 00454CF8 8FBC00C8 */  lw    $gp, 0xc8($sp)
/* 00454CFC 2401000F */  li    $at, 15
/* 00454D00 8F918BE8 */  lw     $s1, %got(currsegment)($gp)
/* 00454D04 8F908D64 */  lw     $s0, %got(binasmfyle)($gp)
/* 00454D08 92220000 */  lbu   $v0, ($s1)
/* 00454D0C 8E100000 */  lw    $s0, ($s0)
/* 00454D10 10400003 */  beqz  $v0, .L00454D20
/* 00454D14 24040010 */   li    $a0, 16
/* 00454D18 1441000B */  bne   $v0, $at, .L00454D48
/* 00454D1C 24050001 */   li    $a1, 1
.L00454D20:
/* 00454D20 8F9982E4 */  lw    $t9, %call16(fill_pseudo)($gp)
/* 00454D24 8E05000C */  lw    $a1, 0xc($s0)
/* 00454D28 8E060008 */  lw    $a2, 8($s0)
/* 00454D2C 00003825 */  move  $a3, $zero
/* 00454D30 AFA00010 */  sw    $zero, 0x10($sp)
/* 00454D34 0320F809 */  jalr  $t9
/* 00454D38 AFA00014 */   sw    $zero, 0x14($sp)
/* 00454D3C 8FBC00C8 */  lw    $gp, 0xc8($sp)
/* 00454D40 10000089 */  b     .L00454F68
/* 00454D44 8FBF00CC */   lw    $ra, 0xcc($sp)
.L00454D48:
/* 00454D48 8F968B64 */  lw     $s6, %got(currsegmentindex)($gp)
/* 00454D4C 8F9985C4 */  lw    $t9, %call16(definealabel)($gp)
/* 00454D50 8EC40000 */  lw    $a0, ($s6)
/* 00454D54 0320F809 */  jalr  $t9
/* 00454D58 00003025 */   move  $a2, $zero
/* 00454D5C 8FBC00C8 */  lw    $gp, 0xc8($sp)
/* 00454D60 922F0000 */  lbu   $t7, ($s1)
/* 00454D64 8F8E8D84 */  lw     $t6, %got(realsegments)($gp)
/* 00454D68 2DF80020 */  sltiu $t8, $t7, 0x20
/* 00454D6C 8DCE0000 */  lw    $t6, ($t6)
/* 00454D70 0018C823 */  negu  $t9, $t8
/* 00454D74 01D94024 */  and   $t0, $t6, $t9
/* 00454D78 01E84804 */  sllv  $t1, $t0, $t7
/* 00454D7C 05200043 */  bltz  $t1, .L00454E8C
/* 00454D80 03A04025 */   move  $t0, $sp
/* 00454D84 8F8A8070 */  lw    $t2, %got(RO_1001ADB8)($gp)
/* 00454D88 03A06825 */  move  $t5, $sp
/* 00454D8C 254AADB8 */  addiu $t2, %lo(RO_1001ADB8) # addiu $t2, $t2, -0x5248
/* 00454D90 254C0048 */  addiu $t4, $t2, 0x48
.L00454D94:
/* 00454D94 89410000 */  lwl   $at, ($t2)
/* 00454D98 99410003 */  lwr   $at, 3($t2)
/* 00454D9C 254A000C */  addiu $t2, $t2, 0xc
/* 00454DA0 A9A10000 */  swl   $at, ($t5)
/* 00454DA4 B9A10003 */  swr   $at, 3($t5)
/* 00454DA8 8941FFF8 */  lwl   $at, -8($t2)
/* 00454DAC 9941FFFB */  lwr   $at, -5($t2)
/* 00454DB0 25AD000C */  addiu $t5, $t5, 0xc
/* 00454DB4 A9A1FFF8 */  swl   $at, -8($t5)
/* 00454DB8 B9A1FFFB */  swr   $at, -5($t5)
/* 00454DBC 8941FFFC */  lwl   $at, -4($t2)
/* 00454DC0 9941FFFF */  lwr   $at, -1($t2)
/* 00454DC4 00000000 */  nop   
/* 00454DC8 A9A1FFFC */  swl   $at, -4($t5)
/* 00454DCC 154CFFF1 */  bne   $t2, $t4, .L00454D94
/* 00454DD0 B9A1FFFF */   swr   $at, -1($t5)
/* 00454DD4 89410000 */  lwl   $at, ($t2)
/* 00454DD8 99410003 */  lwr   $at, 3($t2)
/* 00454DDC 8F988070 */  lw    $t8, %got(RO_1001AD68)($gp)
/* 00454DE0 A9A10000 */  swl   $at, ($t5)
/* 00454DE4 B9A10003 */  swr   $at, 3($t5)
/* 00454DE8 894C0004 */  lwl   $t4, 4($t2)
/* 00454DEC 994C0007 */  lwr   $t4, 7($t2)
/* 00454DF0 2718AD68 */  addiu $t8, %lo(RO_1001AD68) # addiu $t8, $t8, -0x5298
/* 00454DF4 A9AC0004 */  swl   $t4, 4($t5)
/* 00454DF8 27190048 */  addiu $t9, $t8, 0x48
/* 00454DFC B9AC0007 */  swr   $t4, 7($t5)
.L00454E00:
/* 00454E00 8B010000 */  lwl   $at, ($t8)
/* 00454E04 9B010003 */  lwr   $at, 3($t8)
/* 00454E08 2718000C */  addiu $t8, $t8, 0xc
/* 00454E0C A9010050 */  swl   $at, 0x50($t0)
/* 00454E10 B9010053 */  swr   $at, 0x53($t0)
/* 00454E14 8B01FFF8 */  lwl   $at, -8($t8)
/* 00454E18 9B01FFFB */  lwr   $at, -5($t8)
/* 00454E1C 2508000C */  addiu $t0, $t0, 0xc
/* 00454E20 A9010048 */  swl   $at, 0x48($t0)
/* 00454E24 B901004B */  swr   $at, 0x4b($t0)
/* 00454E28 8B01FFFC */  lwl   $at, -4($t8)
/* 00454E2C 9B01FFFF */  lwr   $at, -1($t8)
/* 00454E30 00000000 */  nop   
/* 00454E34 A901004C */  swl   $at, 0x4c($t0)
/* 00454E38 1719FFF1 */  bne   $t8, $t9, .L00454E00
/* 00454E3C B901004F */   swr   $at, 0x4f($t0)
/* 00454E40 8B010000 */  lwl   $at, ($t8)
/* 00454E44 9B010003 */  lwr   $at, 3($t8)
/* 00454E48 240F0483 */  li    $t7, 1155
/* 00454E4C A9010050 */  swl   $at, 0x50($t0)
/* 00454E50 B9010053 */  swr   $at, 0x53($t0)
/* 00454E54 8B190004 */  lwl   $t9, 4($t8)
/* 00454E58 9B190007 */  lwr   $t9, 7($t8)
/* 00454E5C 00000000 */  nop   
/* 00454E60 A9190054 */  swl   $t9, 0x54($t0)
/* 00454E64 B9190057 */  swr   $t9, 0x57($t0)
/* 00454E68 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 00454E6C 8FA7000C */  lw    $a3, 0xc($sp)
/* 00454E70 8FA60008 */  lw    $a2, 8($sp)
/* 00454E74 8FA50004 */  lw    $a1, 4($sp)
/* 00454E78 8FA40000 */  lw    $a0, ($sp)
/* 00454E7C 0320F809 */  jalr  $t9
/* 00454E80 AFAF00A0 */   sw    $t7, 0xa0($sp)
/* 00454E84 8FBC00C8 */  lw    $gp, 0xc8($sp)
/* 00454E88 00000000 */  nop   
.L00454E8C:
/* 00454E8C 8E150008 */  lw    $s5, 8($s0)
/* 00454E90 8E12000C */  lw    $s2, 0xc($s0)
/* 00454E94 32A900FF */  andi  $t1, $s5, 0xff
/* 00454E98 1A400032 */  blez  $s2, .L00454F64
/* 00454E9C 0120A825 */   move  $s5, $t1
/* 00454EA0 8ECC0000 */  lw    $t4, ($s6)
/* 00454EA4 8F8B8AEC */  lw     $t3, %got(seg_ic)($gp)
/* 00454EA8 000CC880 */  sll   $t9, $t4, 2
/* 00454EAC 8F8D8AE0 */  lw     $t5, %got(memory)($gp)
/* 00454EB0 032CC823 */  subu  $t9, $t9, $t4
/* 00454EB4 0019C880 */  sll   $t9, $t9, 2
/* 00454EB8 8D6B0000 */  lw    $t3, ($t3)
/* 00454EBC 8DAD0000 */  lw    $t5, ($t5)
/* 00454EC0 032CC823 */  subu  $t9, $t9, $t4
/* 00454EC4 0019C880 */  sll   $t9, $t9, 2
/* 00454EC8 000C5080 */  sll   $t2, $t4, 2
/* 00454ECC 8F938AE0 */  lw     $s3, %got(memory)($gp)
/* 00454ED0 2414002C */  li    $s4, 44
/* 00454ED4 016A2021 */  addu  $a0, $t3, $t2
/* 00454ED8 01B98021 */  addu  $s0, $t5, $t9
.L00454EDC:
/* 00454EDC 8C910000 */  lw    $s1, ($a0)
/* 00454EE0 8E180004 */  lw    $t8, 4($s0)
/* 00454EE4 24060001 */  li    $a2, 1
/* 00454EE8 0238082A */  slt   $at, $s1, $t8
/* 00454EEC 14200014 */  bnez  $at, .L00454F40
/* 00454EF0 02202825 */   move  $a1, $s1
/* 00454EF4 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 00454EF8 8E070000 */  lw    $a3, ($s0)
/* 00454EFC 26040004 */  addiu $a0, $s0, 4
/* 00454F00 0320F809 */  jalr  $t9
/* 00454F04 AFA00010 */   sw    $zero, 0x10($sp)
/* 00454F08 8EC30000 */  lw    $v1, ($s6)
/* 00454F0C 8FBC00C8 */  lw    $gp, 0xc8($sp)
/* 00454F10 00740019 */  multu $v1, $s4
/* 00454F14 8E680000 */  lw    $t0, ($s3)
/* 00454F18 8F898AEC */  lw     $t1, %got(seg_ic)($gp)
/* 00454F1C 00036080 */  sll   $t4, $v1, 2
/* 00454F20 00007812 */  mflo  $t7
/* 00454F24 010F8021 */  addu  $s0, $t0, $t7
/* 00454F28 AE020000 */  sw    $v0, ($s0)
/* 00454F2C 8D290000 */  lw    $t1, ($t1)
/* 00454F30 00000000 */  nop   
/* 00454F34 012C2021 */  addu  $a0, $t1, $t4
/* 00454F38 8C910000 */  lw    $s1, ($a0)
/* 00454F3C 00000000 */  nop   
.L00454F40:
/* 00454F40 8E0B0000 */  lw    $t3, ($s0)
/* 00454F44 2652FFFF */  addiu $s2, $s2, -1
/* 00454F48 01715021 */  addu  $t2, $t3, $s1
/* 00454F4C A1550000 */  sb    $s5, ($t2)
/* 00454F50 8C8E0000 */  lw    $t6, ($a0)
/* 00454F54 00000000 */  nop   
/* 00454F58 25CD0001 */  addiu $t5, $t6, 1
/* 00454F5C 1640FFDF */  bnez  $s2, .L00454EDC
/* 00454F60 AC8D0000 */   sw    $t5, ($a0)
.L00454F64:
/* 00454F64 8FBF00CC */  lw    $ra, 0xcc($sp)
.L00454F68:
/* 00454F68 8FB000AC */  lw    $s0, 0xac($sp)
/* 00454F6C 8FB100B0 */  lw    $s1, 0xb0($sp)
/* 00454F70 8FB200B4 */  lw    $s2, 0xb4($sp)
/* 00454F74 8FB300B8 */  lw    $s3, 0xb8($sp)
/* 00454F78 8FB400BC */  lw    $s4, 0xbc($sp)
/* 00454F7C 8FB500C0 */  lw    $s5, 0xc0($sp)
/* 00454F80 8FB600C4 */  lw    $s6, 0xc4($sp)
/* 00454F84 03E00008 */  jr    $ra
/* 00454F88 27BD00D0 */   addiu $sp, $sp, 0xd0

    .type parsebyte, @function
    .size parsebyte, .-parsebyte
    .end parsebyte

glabel parsecomm
    .ent parsecomm
    # 004594BC parsestmt
/* 00454F8C 3C1C0FBD */  .cpload $t9
/* 00454F90 279C52D4 */  
/* 00454F94 0399E021 */  
/* 00454F98 8F838D64 */  lw     $v1, %got(binasmfyle)($gp)
/* 00454F9C 27BDFF38 */  addiu $sp, $sp, -0xc8
/* 00454FA0 8C630000 */  lw    $v1, ($v1)
/* 00454FA4 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 00454FA8 8C690008 */  lw    $t1, 8($v1)
/* 00454FAC AFA400C8 */  sw    $a0, 0xc8($sp)
/* 00454FB0 AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 00454FB4 8C640000 */  lw    $a0, ($v1)
/* 00454FB8 AFBC00B0 */  sw    $gp, 0xb0($sp)
/* 00454FBC AFA300B8 */  sw    $v1, 0xb8($sp)
/* 00454FC0 0320F809 */  jalr  $t9
/* 00454FC4 AFA900C0 */   sw    $t1, 0xc0($sp)
/* 00454FC8 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00454FCC 8FA300B8 */  lw    $v1, 0xb8($sp)
/* 00454FD0 8F998438 */  lw    $t9, %call16(enter_symbol)($gp)
/* 00454FD4 8C66000C */  lw    $a2, 0xc($v1)
/* 00454FD8 8C44000C */  lw    $a0, 0xc($v0)
/* 00454FDC 8C650008 */  lw    $a1, 8($v1)
/* 00454FE0 AFA200C4 */  sw    $v0, 0xc4($sp)
/* 00454FE4 0320F809 */  jalr  $t9
/* 00454FE8 AFA600BC */   sw    $a2, 0xbc($sp)
/* 00454FEC 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00454FF0 24040001 */  li    $a0, 1
/* 00454FF4 8F838AF8 */  lw     $v1, %got(picflag)($gp)
/* 00454FF8 8FA600BC */  lw    $a2, 0xbc($sp)
/* 00454FFC 8C630000 */  lw    $v1, ($v1)
/* 00455000 8FA800C4 */  lw    $t0, 0xc4($sp)
/* 00455004 8FA900C0 */  lw    $t1, 0xc0($sp)
/* 00455008 93AA00CB */  lbu   $t2, 0xcb($sp)
/* 0045500C 14830005 */  bne   $a0, $v1, .L00455024
/* 00455010 00000000 */   nop   
/* 00455014 910E003C */  lbu   $t6, 0x3c($t0)
/* 00455018 00000000 */  nop   
/* 0045501C 15C000DB */  bnez  $t6, .L0045538C
/* 00455020 24010008 */   li    $at, 8
.L00455024:
/* 00455024 91020034 */  lbu   $v0, 0x34($t0)
/* 00455028 2D41000A */  sltiu $at, $t2, 0xa
/* 0045502C 244FFFC0 */  addiu $t7, $v0, -0x40
/* 00455030 2DF80040 */  sltiu $t8, $t7, 0x40
/* 00455034 1300000A */  beqz  $t8, .L00455060
/* 00455038 00000000 */   nop   
/* 0045503C 8F8C8080 */  lw    $t4, %got(D_10004BFC)($gp)
/* 00455040 000FC943 */  sra   $t9, $t7, 5
/* 00455044 00195880 */  sll   $t3, $t9, 2
/* 00455048 258C4BFC */  addiu $t4, %lo(D_10004BFC) # addiu $t4, $t4, 0x4bfc
/* 0045504C 018B6821 */  addu  $t5, $t4, $t3
/* 00455050 8DAE0000 */  lw    $t6, ($t5)
/* 00455054 00000000 */  nop   
/* 00455058 01EEC804 */  sllv  $t9, $t6, $t7
/* 0045505C 2B380000 */  slti  $t8, $t9, 0
.L00455060:
/* 00455060 170000B7 */  bnez  $t8, .L00455340
/* 00455064 00000000 */   nop   
/* 00455068 8F8B8070 */  lw    $t3, %got(RO_1001AEA8)($gp)
/* 0045506C 03A07825 */  move  $t7, $sp
/* 00455070 256BAEA8 */  addiu $t3, %lo(RO_1001AEA8) # addiu $t3, $t3, -0x5158
/* 00455074 256E0048 */  addiu $t6, $t3, 0x48
.L00455078:
/* 00455078 89610000 */  lwl   $at, ($t3)
/* 0045507C 99610003 */  lwr   $at, 3($t3)
/* 00455080 256B000C */  addiu $t3, $t3, 0xc
/* 00455084 A9E10000 */  swl   $at, ($t7)
/* 00455088 B9E10003 */  swr   $at, 3($t7)
/* 0045508C 8961FFF8 */  lwl   $at, -8($t3)
/* 00455090 9961FFFB */  lwr   $at, -5($t3)
/* 00455094 25EF000C */  addiu $t7, $t7, 0xc
/* 00455098 A9E1FFF8 */  swl   $at, -8($t7)
/* 0045509C B9E1FFFB */  swr   $at, -5($t7)
/* 004550A0 8961FFFC */  lwl   $at, -4($t3)
/* 004550A4 9961FFFF */  lwr   $at, -1($t3)
/* 004550A8 00000000 */  nop   
/* 004550AC A9E1FFFC */  swl   $at, -4($t7)
/* 004550B0 156EFFF1 */  bne   $t3, $t6, .L00455078
/* 004550B4 B9E1FFFF */   swr   $at, -1($t7)
/* 004550B8 89610000 */  lwl   $at, ($t3)
/* 004550BC 99610003 */  lwr   $at, 3($t3)
/* 004550C0 24180001 */  li    $t8, 1
/* 004550C4 A9E10000 */  swl   $at, ($t7)
/* 004550C8 B9E10003 */  swr   $at, 3($t7)
/* 004550CC 896E0004 */  lwl   $t6, 4($t3)
/* 004550D0 996E0007 */  lwr   $t6, 7($t3)
/* 004550D4 00000000 */  nop   
/* 004550D8 A9EE0004 */  swl   $t6, 4($t7)
/* 004550DC B9EE0007 */  swr   $t6, 7($t7)
/* 004550E0 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 004550E4 8D01000C */  lw    $at, 0xc($t0)
/* 004550E8 8FA7000C */  lw    $a3, 0xc($sp)
/* 004550EC 8FA60008 */  lw    $a2, 8($sp)
/* 004550F0 8FA50004 */  lw    $a1, 4($sp)
/* 004550F4 8FA40000 */  lw    $a0, ($sp)
/* 004550F8 AFB80054 */  sw    $t8, 0x54($sp)
/* 004550FC 0320F809 */  jalr  $t9
/* 00455100 AFA10050 */   sw    $at, 0x50($sp)
/* 00455104 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00455108 100000B1 */  b     .L004553D0
/* 0045510C 8FBF00B4 */   lw    $ra, 0xb4($sp)
.L00455110:
/* 00455110 240D0043 */  li    $t5, 67
/* 00455114 240E000C */  li    $t6, 12
/* 00455118 A10D0034 */  sb    $t5, 0x34($t0)
/* 0045511C 14C4009A */  bne   $a2, $a0, .L00455388
/* 00455120 AD0E0030 */   sw    $t6, 0x30($t0)
/* 00455124 240B0045 */  li    $t3, 69
/* 00455128 10000097 */  b     .L00455388
/* 0045512C A10B0034 */   sb    $t3, 0x34($t0)
.L00455130:
/* 00455130 24010075 */  li    $at, 117
/* 00455134 14410003 */  bne   $v0, $at, .L00455144
/* 00455138 240F0062 */   li    $t7, 98
/* 0045513C 10000003 */  b     .L0045514C
/* 00455140 A10F0034 */   sb    $t7, 0x34($t0)
.L00455144:
/* 00455144 24190042 */  li    $t9, 66
/* 00455148 A1190034 */  sb    $t9, 0x34($t0)
.L0045514C:
/* 0045514C 18600007 */  blez  $v1, .L0045516C
/* 00455150 00000000 */   nop   
/* 00455154 910C0035 */  lbu   $t4, 0x35($t0)
/* 00455158 24180004 */  li    $t8, 4
/* 0045515C 11800003 */  beqz  $t4, .L0045516C
/* 00455160 00000000 */   nop   
/* 00455164 10000088 */  b     .L00455388
/* 00455168 AD180030 */   sw    $t8, 0x30($t0)
.L0045516C:
/* 0045516C 8F8D8B10 */  lw     $t5, %got(gprelsize)($gp)
/* 00455170 00000000 */  nop   
/* 00455174 8DAD0000 */  lw    $t5, ($t5)
/* 00455178 00000000 */  nop   
/* 0045517C 01A9082A */  slt   $at, $t5, $t1
/* 00455180 14200005 */  bnez  $at, .L00455198
/* 00455184 00000000 */   nop   
/* 00455188 19200003 */  blez  $t1, .L00455198
/* 0045518C 240E0003 */   li    $t6, 3
/* 00455190 1000007D */  b     .L00455388
/* 00455194 AD0E0030 */   sw    $t6, 0x30($t0)
.L00455198:
/* 00455198 14C40004 */  bne   $a2, $a0, .L004551AC
/* 0045519C 240F0004 */   li    $t7, 4
/* 004551A0 240B0003 */  li    $t3, 3
/* 004551A4 10000078 */  b     .L00455388
/* 004551A8 AD0B0030 */   sw    $t3, 0x30($t0)
.L004551AC:
/* 004551AC 10000076 */  b     .L00455388
/* 004551B0 AD0F0030 */   sw    $t7, 0x30($t0)
.L004551B4:
/* 004551B4 8F998B10 */  lw     $t9, %got(gprelsize)($gp)
/* 004551B8 00000000 */  nop   
/* 004551BC 8F390000 */  lw    $t9, ($t9)
/* 004551C0 00000000 */  nop   
/* 004551C4 0329082A */  slt   $at, $t9, $t1
/* 004551C8 14200007 */  bnez  $at, .L004551E8
/* 004551CC 00000000 */   nop   
/* 004551D0 19200005 */  blez  $t1, .L004551E8
/* 004551D4 240C000D */   li    $t4, 13
/* 004551D8 24180056 */  li    $t8, 86
/* 004551DC AD0C0030 */  sw    $t4, 0x30($t0)
/* 004551E0 10000069 */  b     .L00455388
/* 004551E4 A1180034 */   sb    $t8, 0x34($t0)
.L004551E8:
/* 004551E8 14C40006 */  bne   $a2, $a0, .L00455204
/* 004551EC 240B000C */   li    $t3, 12
/* 004551F0 240D000D */  li    $t5, 13
/* 004551F4 240E0056 */  li    $t6, 86
/* 004551F8 AD0D0030 */  sw    $t5, 0x30($t0)
/* 004551FC 10000062 */  b     .L00455388
/* 00455200 A10E0034 */   sb    $t6, 0x34($t0)
.L00455204:
/* 00455204 240F0055 */  li    $t7, 85
/* 00455208 AD0B0030 */  sw    $t3, 0x30($t0)
/* 0045520C 1000005E */  b     .L00455388
/* 00455210 A10F0034 */   sb    $t7, 0x34($t0)
/* 00455214 2401002D */  li    $at, 45
.L00455218:
/* 00455218 1141005B */  beq   $t2, $at, .L00455388
/* 0045521C 03A06025 */   move  $t4, $sp
/* 00455220 8F998070 */  lw    $t9, %got(RO_1001AE58)($gp)
/* 00455224 03A06825 */  move  $t5, $sp
/* 00455228 2739AE58 */  addiu $t9, %lo(RO_1001AE58) # addiu $t9, $t9, -0x51a8
/* 0045522C 27380048 */  addiu $t8, $t9, 0x48
.L00455230:
/* 00455230 8B210000 */  lwl   $at, ($t9)
/* 00455234 9B210003 */  lwr   $at, 3($t9)
/* 00455238 2739000C */  addiu $t9, $t9, 0xc
/* 0045523C A9A10000 */  swl   $at, ($t5)
/* 00455240 B9A10003 */  swr   $at, 3($t5)
/* 00455244 8B21FFF8 */  lwl   $at, -8($t9)
/* 00455248 9B21FFFB */  lwr   $at, -5($t9)
/* 0045524C 25AD000C */  addiu $t5, $t5, 0xc
/* 00455250 A9A1FFF8 */  swl   $at, -8($t5)
/* 00455254 B9A1FFFB */  swr   $at, -5($t5)
/* 00455258 8B21FFFC */  lwl   $at, -4($t9)
/* 0045525C 9B21FFFF */  lwr   $at, -1($t9)
/* 00455260 00000000 */  nop   
/* 00455264 A9A1FFFC */  swl   $at, -4($t5)
/* 00455268 1738FFF1 */  bne   $t9, $t8, .L00455230
/* 0045526C B9A1FFFF */   swr   $at, -1($t5)
/* 00455270 8B210000 */  lwl   $at, ($t9)
/* 00455274 9B210003 */  lwr   $at, 3($t9)
/* 00455278 8F8E8070 */  lw    $t6, %got(RO_1001AE08)($gp)
/* 0045527C A9A10000 */  swl   $at, ($t5)
/* 00455280 B9A10003 */  swr   $at, 3($t5)
/* 00455284 8B380004 */  lwl   $t8, 4($t9)
/* 00455288 9B380007 */  lwr   $t8, 7($t9)
/* 0045528C 25CEAE08 */  addiu $t6, %lo(RO_1001AE08) # addiu $t6, $t6, -0x51f8
/* 00455290 A9B80004 */  swl   $t8, 4($t5)
/* 00455294 25CF0048 */  addiu $t7, $t6, 0x48
/* 00455298 B9B80007 */  swr   $t8, 7($t5)
.L0045529C:
/* 0045529C 89C10000 */  lwl   $at, ($t6)
/* 004552A0 99C10003 */  lwr   $at, 3($t6)
/* 004552A4 25CE000C */  addiu $t6, $t6, 0xc
/* 004552A8 A9810050 */  swl   $at, 0x50($t4)
/* 004552AC B9810053 */  swr   $at, 0x53($t4)
/* 004552B0 89C1FFF8 */  lwl   $at, -8($t6)
/* 004552B4 99C1FFFB */  lwr   $at, -5($t6)
/* 004552B8 258C000C */  addiu $t4, $t4, 0xc
/* 004552BC A9810048 */  swl   $at, 0x48($t4)
/* 004552C0 B981004B */  swr   $at, 0x4b($t4)
/* 004552C4 89C1FFFC */  lwl   $at, -4($t6)
/* 004552C8 99C1FFFF */  lwr   $at, -1($t6)
/* 004552CC 00000000 */  nop   
/* 004552D0 A981004C */  swl   $at, 0x4c($t4)
/* 004552D4 15CFFFF1 */  bne   $t6, $t7, .L0045529C
/* 004552D8 B981004F */   swr   $at, 0x4f($t4)
/* 004552DC 89C10000 */  lwl   $at, ($t6)
/* 004552E0 99C10003 */  lwr   $at, 3($t6)
/* 004552E4 241804D9 */  li    $t8, 1241
/* 004552E8 A9810050 */  swl   $at, 0x50($t4)
/* 004552EC B9810053 */  swr   $at, 0x53($t4)
/* 004552F0 89CF0004 */  lwl   $t7, 4($t6)
/* 004552F4 99CF0007 */  lwr   $t7, 7($t6)
/* 004552F8 00000000 */  nop   
/* 004552FC A98F0054 */  swl   $t7, 0x54($t4)
/* 00455300 B98F0057 */  swr   $t7, 0x57($t4)
/* 00455304 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 00455308 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045530C 8FA60008 */  lw    $a2, 8($sp)
/* 00455310 8FA50004 */  lw    $a1, 4($sp)
/* 00455314 8FA40000 */  lw    $a0, ($sp)
/* 00455318 AFA900C0 */  sw    $t1, 0xc0($sp)
/* 0045531C AFA800C4 */  sw    $t0, 0xc4($sp)
/* 00455320 0320F809 */  jalr  $t9
/* 00455324 AFB800A0 */   sw    $t8, 0xa0($sp)
/* 00455328 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 0045532C 8FA800C4 */  lw    $t0, 0xc4($sp)
/* 00455330 8FA900C0 */  lw    $t1, 0xc0($sp)
/* 00455334 93AA00CB */  lbu   $t2, 0xcb($sp)
/* 00455338 10000014 */  b     .L0045538C
/* 0045533C 24010008 */   li    $at, 8
.L00455340:
/* 00455340 14200005 */  bnez  $at, .L00455358
/* 00455344 2401002D */   li    $at, 45
/* 00455348 1141FF9A */  beq   $t2, $at, .L004551B4
/* 0045534C 00000000 */   nop   
/* 00455350 1000FFB1 */  b     .L00455218
/* 00455354 2401002D */   li    $at, 45
.L00455358:
/* 00455358 2559FFF8 */  addiu $t9, $t2, -8
/* 0045535C 2F210002 */  sltiu $at, $t9, 2
/* 00455360 1020FFAD */  beqz  $at, .L00455218
/* 00455364 2401002D */   li    $at, 45
/* 00455368 8F818070 */  lw    $at, %got(jtbl_1001AEF8)($gp)
/* 0045536C 0019C880 */  sll   $t9, $t9, 2
/* 00455370 00390821 */  addu  $at, $at, $t9
/* 00455374 8C39AEF8 */  lw    $t9, %lo(jtbl_1001AEF8)($at)
/* 00455378 00000000 */  nop   
/* 0045537C 033CC821 */  addu  $t9, $t9, $gp
/* 00455380 03200008 */  jr    $t9
/* 00455384 00000000 */   nop   
.L00455388:
/* 00455388 24010008 */  li    $at, 8
.L0045538C:
/* 0045538C 11410004 */  beq   $t2, $at, .L004553A0
/* 00455390 240D0001 */   li    $t5, 1
/* 00455394 2401002D */  li    $at, 45
/* 00455398 15410003 */  bne   $t2, $at, .L004553A8
/* 0045539C 24010009 */   li    $at, 9
.L004553A0:
/* 004553A0 A10D0035 */  sb    $t5, 0x35($t0)
/* 004553A4 24010009 */  li    $at, 9
.L004553A8:
/* 004553A8 15410002 */  bne   $t2, $at, .L004553B4
/* 004553AC 240B0001 */   li    $t3, 1
/* 004553B0 A10B0037 */  sb    $t3, 0x37($t0)
.L004553B4:
/* 004553B4 8F8189D4 */  lw     $at, %got(last_globl_symno)($gp)
/* 004553B8 AD090028 */  sw    $t1, 0x28($t0)
/* 004553BC AC200000 */  sw    $zero, ($at)
/* 004553C0 8F8189D8 */  lw     $at, %got(label_size)($gp)
/* 004553C4 00000000 */  nop   
/* 004553C8 AC200000 */  sw    $zero, ($at)
/* 004553CC 8FBF00B4 */  lw    $ra, 0xb4($sp)
.L004553D0:
/* 004553D0 27BD00C8 */  addiu $sp, $sp, 0xc8
/* 004553D4 03E00008 */  jr    $ra
/* 004553D8 00000000 */   nop   

    .type parsecomm, @function
    .size parsecomm, .-parsecomm
    .end parsecomm

glabel parseseg
    .ent parseseg
    # 00455C74 parseedata
    # 004594BC parsestmt
/* 004553DC 3C1C0FBD */  .cpload $t9
/* 004553E0 279C4E84 */  
/* 004553E4 0399E021 */  
/* 004553E8 8F828BE8 */  lw     $v0, %got(currsegment)($gp)
/* 004553EC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 004553F0 90460000 */  lbu   $a2, ($v0)
/* 004553F4 24010001 */  li    $at, 1
/* 004553F8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 004553FC AFBC0020 */  sw    $gp, 0x20($sp)
/* 00455400 AFA40030 */  sw    $a0, 0x30($sp)
/* 00455404 10C10004 */  beq   $a2, $at, .L00455418
/* 00455408 308700FF */   andi  $a3, $a0, 0xff
/* 0045540C 24010002 */  li    $at, 2
/* 00455410 14C1000A */  bne   $a2, $at, .L0045543C
/* 00455414 00000000 */   nop   
.L00455418:
/* 00455418 8F9985C0 */  lw    $t9, %call16(add_data_to_gp_table)($gp)
/* 0045541C 00C02025 */  move  $a0, $a2
/* 00455420 24050001 */  li    $a1, 1
/* 00455424 0320F809 */  jalr  $t9
/* 00455428 A3A70033 */   sb    $a3, 0x33($sp)
/* 0045542C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00455430 93A70033 */  lbu   $a3, 0x33($sp)
/* 00455434 8F828BE8 */  lw     $v0, %got(currsegment)($gp)
/* 00455438 00000000 */  nop   
.L0045543C:
/* 0045543C 8F868D64 */  lw     $a2, %got(binasmfyle)($gp)
/* 00455440 8F8C8B64 */  lw     $t4, %got(currsegmentindex)($gp)
/* 00455444 8CCE0000 */  lw    $t6, ($a2)
/* 00455448 A0470000 */  sb    $a3, ($v0)
/* 0045544C AD870000 */  sw    $a3, ($t4)
/* 00455450 8DC90008 */  lw    $t1, 8($t6)
/* 00455454 14E00111 */  bnez  $a3, .L0045589C
/* 00455458 00000000 */   nop   
/* 0045545C 1120010F */  beqz  $t1, .L0045589C
/* 00455460 240F000F */   li    $t7, 15
/* 00455464 A04F0000 */  sb    $t7, ($v0)
/* 00455468 8F9985E8 */  lw    $t9, %call16(get_binasm)($gp)
/* 0045546C 00C02025 */  move  $a0, $a2
/* 00455470 0320F809 */  jalr  $t9
/* 00455474 AFA9002C */   sw    $t1, 0x2c($sp)
/* 00455478 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0045547C 8FA9002C */  lw    $t1, 0x2c($sp)
/* 00455480 8F878CD8 */  lw     $a3, %got(lastusertextseg)($gp)
/* 00455484 240BFFFF */  li    $t3, -1
/* 00455488 8CE50000 */  lw    $a1, ($a3)
/* 0045548C 8F868D64 */  lw     $a2, %got(binasmfyle)($gp)
/* 00455490 8F8C8B64 */  lw     $t4, %got(currsegmentindex)($gp)
/* 00455494 15650048 */  bne   $t3, $a1, .L004555B8
/* 00455498 00000000 */   nop   
/* 0045549C 8F988CD4 */  lw     $t8, %got(firstusertextseg)($gp)
/* 004554A0 25260001 */  addiu $a2, $t1, 1
/* 004554A4 8F180000 */  lw    $t8, ($t8)
/* 004554A8 00000000 */  nop   
/* 004554AC ACF80000 */  sw    $t8, ($a3)
/* 004554B0 19200034 */  blez  $t1, .L00455584
/* 004554B4 AD980000 */   sw    $t8, ($t4)
/* 004554B8 24C7FFFF */  addiu $a3, $a2, -1
/* 004554BC 30EE0003 */  andi  $t6, $a3, 3
/* 004554C0 11C00016 */  beqz  $t6, .L0045551C
/* 004554C4 24080001 */   li    $t0, 1
/* 004554C8 0018C880 */  sll   $t9, $t8, 2
/* 004554CC 0338C823 */  subu  $t9, $t9, $t8
/* 004554D0 0019C880 */  sll   $t9, $t9, 2
/* 004554D4 8F8F8AE0 */  lw     $t7, %got(memory)($gp)
/* 004554D8 0338C823 */  subu  $t9, $t9, $t8
/* 004554DC 8F988D64 */  lw     $t8, %got(binasmfyle)($gp)
/* 004554E0 8DEF0000 */  lw    $t7, ($t7)
/* 004554E4 8F180000 */  lw    $t8, ($t8)
/* 004554E8 0019C880 */  sll   $t9, $t9, 2
/* 004554EC 25C40001 */  addiu $a0, $t6, 1
/* 004554F0 01F97021 */  addu  $t6, $t7, $t9
/* 004554F4 01C81021 */  addu  $v0, $t6, $t0
/* 004554F8 03081821 */  addu  $v1, $t8, $t0
.L004554FC:
/* 004554FC 906FFFFF */  lbu   $t7, -1($v1)
/* 00455500 25080001 */  addiu $t0, $t0, 1
/* 00455504 24420001 */  addiu $v0, $v0, 1
/* 00455508 24630001 */  addiu $v1, $v1, 1
/* 0045550C 1488FFFB */  bne   $a0, $t0, .L004554FC
/* 00455510 A04F0007 */   sb    $t7, 7($v0)
/* 00455514 1106001A */  beq   $t0, $a2, .L00455580
/* 00455518 00000000 */   nop   
.L0045551C:
/* 0045551C 8D8E0000 */  lw    $t6, ($t4)
/* 00455520 8F998AE0 */  lw     $t9, %got(memory)($gp)
/* 00455524 000EC080 */  sll   $t8, $t6, 2
/* 00455528 030EC023 */  subu  $t8, $t8, $t6
/* 0045552C 0018C080 */  sll   $t8, $t8, 2
/* 00455530 030EC023 */  subu  $t8, $t8, $t6
/* 00455534 8F8E8D64 */  lw     $t6, %got(binasmfyle)($gp)
/* 00455538 8F390000 */  lw    $t9, ($t9)
/* 0045553C 8DCE0000 */  lw    $t6, ($t6)
/* 00455540 0018C080 */  sll   $t8, $t8, 2
/* 00455544 03387821 */  addu  $t7, $t9, $t8
/* 00455548 01E81021 */  addu  $v0, $t7, $t0
/* 0045554C 01C81821 */  addu  $v1, $t6, $t0
.L00455550:
/* 00455550 9079FFFF */  lbu   $t9, -1($v1)
/* 00455554 25080004 */  addiu $t0, $t0, 4
/* 00455558 A0590008 */  sb    $t9, 8($v0)
/* 0045555C 90780000 */  lbu   $t8, ($v1)
/* 00455560 24420004 */  addiu $v0, $v0, 4
/* 00455564 A0580005 */  sb    $t8, 5($v0)
/* 00455568 906F0001 */  lbu   $t7, 1($v1)
/* 0045556C 24630004 */  addiu $v1, $v1, 4
/* 00455570 A04F0006 */  sb    $t7, 6($v0)
/* 00455574 906EFFFE */  lbu   $t6, -2($v1)
/* 00455578 1506FFF5 */  bne   $t0, $a2, .L00455550
/* 0045557C A04E0007 */   sb    $t6, 7($v0)
.L00455580:
/* 00455580 AFA80028 */  sw    $t0, 0x28($sp)
.L00455584:
/* 00455584 8D980000 */  lw    $t8, ($t4)
/* 00455588 8F8A8AE0 */  lw     $t2, %got(memory)($gp)
/* 0045558C 00187880 */  sll   $t7, $t8, 2
/* 00455590 01F87823 */  subu  $t7, $t7, $t8
/* 00455594 000F7880 */  sll   $t7, $t7, 2
/* 00455598 8D590000 */  lw    $t9, ($t2)
/* 0045559C 01F87823 */  subu  $t7, $t7, $t8
/* 004555A0 8FA80028 */  lw    $t0, 0x28($sp)
/* 004555A4 000F7880 */  sll   $t7, $t7, 2
/* 004555A8 032F7021 */  addu  $t6, $t9, $t7
/* 004555AC 01C8C021 */  addu  $t8, $t6, $t0
/* 004555B0 100000BA */  b     .L0045589C
/* 004555B4 A3000008 */   sb    $zero, 8($t8)
.L004555B8:
/* 004555B8 8F838CD4 */  lw     $v1, %got(firstusertextseg)($gp)
/* 004555BC AD8B0000 */  sw    $t3, ($t4)
/* 004555C0 8C630000 */  lw    $v1, ($v1)
/* 004555C4 00000000 */  nop   
/* 004555C8 00A3082A */  slt   $at, $a1, $v1
/* 004555CC 14200026 */  bnez  $at, .L00455668
/* 004555D0 00000000 */   nop   
/* 004555D4 8F8A8AE0 */  lw     $t2, %got(memory)($gp)
/* 004555D8 00000000 */  nop   
.L004555DC:
/* 004555DC 19200018 */  blez  $t1, .L00455640
/* 004555E0 24080001 */   li    $t0, 1
/* 004555E4 00037880 */  sll   $t7, $v1, 2
/* 004555E8 01E37823 */  subu  $t7, $t7, $v1
/* 004555EC 000F7880 */  sll   $t7, $t7, 2
/* 004555F0 8D590000 */  lw    $t9, ($t2)
/* 004555F4 01E37823 */  subu  $t7, $t7, $v1
/* 004555F8 8CC40000 */  lw    $a0, ($a2)
/* 004555FC 000F7880 */  sll   $t7, $t7, 2
/* 00455600 032F1021 */  addu  $v0, $t9, $t7
/* 00455604 904E0009 */  lbu   $t6, 9($v0)
/* 00455608 90980000 */  lbu   $t8, ($a0)
/* 0045560C 00000000 */  nop   
/* 00455610 15D8000C */  bne   $t6, $t8, .L00455644
/* 00455614 0128082A */   slt   $at, $t1, $t0
.L00455618:
/* 00455618 25080001 */  addiu $t0, $t0, 1
/* 0045561C 0128082A */  slt   $at, $t1, $t0
/* 00455620 14200007 */  bnez  $at, .L00455640
/* 00455624 0048C821 */   addu  $t9, $v0, $t0
/* 00455628 00887021 */  addu  $t6, $a0, $t0
/* 0045562C 91D8FFFF */  lbu   $t8, -1($t6)
/* 00455630 932F0008 */  lbu   $t7, 8($t9)
/* 00455634 00000000 */  nop   
/* 00455638 11F8FFF7 */  beq   $t7, $t8, .L00455618
/* 0045563C 00000000 */   nop   
.L00455640:
/* 00455640 0128082A */  slt   $at, $t1, $t0
.L00455644:
/* 00455644 10200003 */  beqz  $at, .L00455654
/* 00455648 00000000 */   nop   
/* 0045564C AD830000 */  sw    $v1, ($t4)
/* 00455650 24A30001 */  addiu $v1, $a1, 1
.L00455654:
/* 00455654 24630001 */  addiu $v1, $v1, 1
/* 00455658 00A3082A */  slt   $at, $a1, $v1
/* 0045565C 1020FFDF */  beqz  $at, .L004555DC
/* 00455660 00000000 */   nop   
/* 00455664 AFA80028 */  sw    $t0, 0x28($sp)
.L00455668:
/* 00455668 8D990000 */  lw    $t9, ($t4)
/* 0045566C 8FA80028 */  lw    $t0, 0x28($sp)
/* 00455670 8F8A8AE0 */  lw     $t2, %got(memory)($gp)
/* 00455674 15790089 */  bne   $t3, $t9, .L0045589C
/* 00455678 00000000 */   nop   
/* 0045567C 8D580004 */  lw    $t8, 4($t2)
/* 00455680 24AE0001 */  addiu $t6, $a1, 1
/* 00455684 01D8082A */  slt   $at, $t6, $t8
/* 00455688 ACEE0000 */  sw    $t6, ($a3)
/* 0045568C AD8E0000 */  sw    $t6, ($t4)
/* 00455690 14200012 */  bnez  $at, .L004556DC
/* 00455694 01C05825 */   move  $t3, $t6
/* 00455698 8F848AE0 */  lw     $a0, %got(memory)($gp)
/* 0045569C 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 004556A0 8D470000 */  lw    $a3, ($t2)
/* 004556A4 01C02825 */  move  $a1, $t6
/* 004556A8 2406002C */  li    $a2, 44
/* 004556AC AFA00010 */  sw    $zero, 0x10($sp)
/* 004556B0 AFA80028 */  sw    $t0, 0x28($sp)
/* 004556B4 AFA9002C */  sw    $t1, 0x2c($sp)
/* 004556B8 0320F809 */  jalr  $t9
/* 004556BC 24840004 */   addiu $a0, $a0, 4
/* 004556C0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004556C4 8FA80028 */  lw    $t0, 0x28($sp)
/* 004556C8 8F8C8B64 */  lw     $t4, %got(currsegmentindex)($gp)
/* 004556CC 8F8A8AE0 */  lw     $t2, %got(memory)($gp)
/* 004556D0 8FA9002C */  lw    $t1, 0x2c($sp)
/* 004556D4 8D8B0000 */  lw    $t3, ($t4)
/* 004556D8 AD420000 */  sw    $v0, ($t2)
.L004556DC:
/* 004556DC 8F998AEC */  lw     $t9, %got(seg_ic)($gp)
/* 004556E0 01602825 */  move  $a1, $t3
/* 004556E4 8F390004 */  lw    $t9, 4($t9)
/* 004556E8 24060004 */  li    $a2, 4
/* 004556EC 0179082A */  slt   $at, $t3, $t9
/* 004556F0 14200012 */  bnez  $at, .L0045573C
/* 004556F4 00000000 */   nop   
/* 004556F8 8F878AEC */  lw     $a3, %got(seg_ic)($gp)
/* 004556FC 8F848AEC */  lw     $a0, %got(seg_ic)($gp)
/* 00455700 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 00455704 8CE70000 */  lw    $a3, ($a3)
/* 00455708 AFA00010 */  sw    $zero, 0x10($sp)
/* 0045570C AFA80028 */  sw    $t0, 0x28($sp)
/* 00455710 AFA9002C */  sw    $t1, 0x2c($sp)
/* 00455714 0320F809 */  jalr  $t9
/* 00455718 24840004 */   addiu $a0, $a0, 4
/* 0045571C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00455720 8FA80028 */  lw    $t0, 0x28($sp)
/* 00455724 8F818AEC */  lw     $at, %got(seg_ic)($gp)
/* 00455728 8F8C8B64 */  lw     $t4, %got(currsegmentindex)($gp)
/* 0045572C AC220000 */  sw    $v0, ($at)
/* 00455730 8FA9002C */  lw    $t1, 0x2c($sp)
/* 00455734 8D8B0000 */  lw    $t3, ($t4)
/* 00455738 00000000 */  nop   
.L0045573C:
/* 0045573C 8F8D8CDC */  lw     $t5, %got(nextlabelchain)($gp)
/* 00455740 01602825 */  move  $a1, $t3
/* 00455744 8DAE0004 */  lw    $t6, 4($t5)
/* 00455748 24060004 */  li    $a2, 4
/* 0045574C 016E082A */  slt   $at, $t3, $t6
/* 00455750 14200010 */  bnez  $at, .L00455794
/* 00455754 00000000 */   nop   
/* 00455758 8F848CDC */  lw     $a0, %got(nextlabelchain)($gp)
/* 0045575C 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 00455760 8DA70000 */  lw    $a3, ($t5)
/* 00455764 AFA00010 */  sw    $zero, 0x10($sp)
/* 00455768 AFA80028 */  sw    $t0, 0x28($sp)
/* 0045576C AFA9002C */  sw    $t1, 0x2c($sp)
/* 00455770 0320F809 */  jalr  $t9
/* 00455774 24840004 */   addiu $a0, $a0, 4
/* 00455778 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0045577C 8FA80028 */  lw    $t0, 0x28($sp)
/* 00455780 8F8C8B64 */  lw     $t4, %got(currsegmentindex)($gp)
/* 00455784 8F8D8CDC */  lw     $t5, %got(nextlabelchain)($gp)
/* 00455788 8FA9002C */  lw    $t1, 0x2c($sp)
/* 0045578C 8D8B0000 */  lw    $t3, ($t4)
/* 00455790 ADA20000 */  sw    $v0, ($t5)
.L00455794:
/* 00455794 8F8A8AE0 */  lw     $t2, %got(memory)($gp)
/* 00455798 25260001 */  addiu $a2, $t1, 1
/* 0045579C 8D4A0000 */  lw    $t2, ($t2)
/* 004557A0 1920002A */  blez  $t1, .L0045584C
/* 004557A4 24C7FFFF */   addiu $a3, $a2, -1
/* 004557A8 8F848D64 */  lw     $a0, %got(binasmfyle)($gp)
/* 004557AC 30EF0003 */  andi  $t7, $a3, 3
/* 004557B0 8C840000 */  lw    $a0, ($a0)
/* 004557B4 11E00011 */  beqz  $t7, .L004557FC
/* 004557B8 24080001 */   li    $t0, 1
/* 004557BC 000BC080 */  sll   $t8, $t3, 2
/* 004557C0 030BC023 */  subu  $t8, $t8, $t3
/* 004557C4 0018C080 */  sll   $t8, $t8, 2
/* 004557C8 030BC023 */  subu  $t8, $t8, $t3
/* 004557CC 0018C080 */  sll   $t8, $t8, 2
/* 004557D0 0158C821 */  addu  $t9, $t2, $t8
/* 004557D4 03281021 */  addu  $v0, $t9, $t0
/* 004557D8 25E50001 */  addiu $a1, $t7, 1
/* 004557DC 00881821 */  addu  $v1, $a0, $t0
.L004557E0:
/* 004557E0 906EFFFF */  lbu   $t6, -1($v1)
/* 004557E4 25080001 */  addiu $t0, $t0, 1
/* 004557E8 24420001 */  addiu $v0, $v0, 1
/* 004557EC 24630001 */  addiu $v1, $v1, 1
/* 004557F0 14A8FFFB */  bne   $a1, $t0, .L004557E0
/* 004557F4 A04E0007 */   sb    $t6, 7($v0)
/* 004557F8 11060014 */  beq   $t0, $a2, .L0045584C
.L004557FC:
/* 004557FC 000B7880 */   sll   $t7, $t3, 2
/* 00455800 01EB7823 */  subu  $t7, $t7, $t3
/* 00455804 000F7880 */  sll   $t7, $t7, 2
/* 00455808 01EB7823 */  subu  $t7, $t7, $t3
/* 0045580C 000F7880 */  sll   $t7, $t7, 2
/* 00455810 014FC021 */  addu  $t8, $t2, $t7
/* 00455814 03081021 */  addu  $v0, $t8, $t0
/* 00455818 00881821 */  addu  $v1, $a0, $t0
.L0045581C:
/* 0045581C 9079FFFF */  lbu   $t9, -1($v1)
/* 00455820 25080004 */  addiu $t0, $t0, 4
/* 00455824 A0590008 */  sb    $t9, 8($v0)
/* 00455828 906E0000 */  lbu   $t6, ($v1)
/* 0045582C 24420004 */  addiu $v0, $v0, 4
/* 00455830 A04E0005 */  sb    $t6, 5($v0)
/* 00455834 906F0001 */  lbu   $t7, 1($v1)
/* 00455838 24630004 */  addiu $v1, $v1, 4
/* 0045583C A04F0006 */  sb    $t7, 6($v0)
/* 00455840 9078FFFE */  lbu   $t8, -2($v1)
/* 00455844 1506FFF5 */  bne   $t0, $a2, .L0045581C
/* 00455848 A0580007 */   sb    $t8, 7($v0)
.L0045584C:
/* 0045584C 000BC880 */  sll   $t9, $t3, 2
/* 00455850 032BC823 */  subu  $t9, $t9, $t3
/* 00455854 0019C880 */  sll   $t9, $t9, 2
/* 00455858 032BC823 */  subu  $t9, $t9, $t3
/* 0045585C 0019C880 */  sll   $t9, $t9, 2
/* 00455860 01591021 */  addu  $v0, $t2, $t9
/* 00455864 00487021 */  addu  $t6, $v0, $t0
/* 00455868 A1C00008 */  sb    $zero, 8($t6)
/* 0045586C 8F988AEC */  lw     $t8, %got(seg_ic)($gp)
/* 00455870 240F000F */  li    $t7, 15
/* 00455874 A04F0008 */  sb    $t7, 8($v0)
/* 00455878 AC400004 */  sw    $zero, 4($v0)
/* 0045587C 8F180000 */  lw    $t8, ($t8)
/* 00455880 000B1880 */  sll   $v1, $t3, 2
/* 00455884 0303C821 */  addu  $t9, $t8, $v1
/* 00455888 AF200000 */  sw    $zero, ($t9)
/* 0045588C 8DAE0000 */  lw    $t6, ($t5)
/* 00455890 00000000 */  nop   
/* 00455894 01C37821 */  addu  $t7, $t6, $v1
/* 00455898 ADE00000 */  sw    $zero, ($t7)
.L0045589C:
/* 0045589C 8F828BE8 */  lw     $v0, %got(currsegment)($gp)
/* 004558A0 24190001 */  li    $t9, 1
/* 004558A4 90460000 */  lbu   $a2, ($v0)
/* 004558A8 00000000 */  nop   
/* 004558AC 10C00003 */  beqz  $a2, .L004558BC
/* 004558B0 2401000F */   li    $at, 15
/* 004558B4 14C10005 */  bne   $a2, $at, .L004558CC
/* 004558B8 00000000 */   nop   
.L004558BC:
/* 004558BC 8D980000 */  lw    $t8, ($t4)
/* 004558C0 8F818AE4 */  lw     $at, %got(currtextindex)($gp)
/* 004558C4 00000000 */  nop   
/* 004558C8 AC380000 */  sw    $t8, ($at)
.L004558CC:
/* 004558CC 8F818C8C */  lw     $at, %got(endofbasicb)($gp)
/* 004558D0 240E0001 */  li    $t6, 1
/* 004558D4 A0390000 */  sb    $t9, ($at)
/* 004558D8 8F818B58 */  lw     $at, %got(aligning)($gp)
/* 004558DC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 004558E0 A02E0000 */  sb    $t6, ($at)
/* 004558E4 8F8189D8 */  lw     $at, %got(label_size)($gp)
/* 004558E8 27BD0030 */  addiu $sp, $sp, 0x30
/* 004558EC 03E00008 */  jr    $ra
/* 004558F0 AC200000 */   sw    $zero, ($at)

    .type parseseg, @function
    .size parseseg, .-parseseg
    .end parseseg

    .type func_004558F4, @function
func_004558F4:
    # 00455B08 create_function_table
/* 004558F4 3C1C0FBD */  .cpload $t9
/* 004558F8 279C496C */  
/* 004558FC 0399E021 */  
/* 00455900 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 00455904 8F8E8AE8 */  lw     $t6, %got(sexchange)($gp)
/* 00455908 AFB10024 */  sw    $s1, 0x24($sp)
/* 0045590C 91CE0000 */  lbu   $t6, ($t6)
/* 00455910 00A08825 */  move  $s1, $a1
/* 00455914 AFBF002C */  sw    $ra, 0x2c($sp)
/* 00455918 AFBC0028 */  sw    $gp, 0x28($sp)
/* 0045591C AFB00020 */  sw    $s0, 0x20($sp)
/* 00455920 AFA40040 */  sw    $a0, 0x40($sp)
/* 00455924 11C0000E */  beqz  $t6, .L00455960
/* 00455928 AFA60048 */   sw    $a2, 0x48($sp)
/* 0045592C 00057E00 */  sll   $t7, $a1, 0x18
/* 00455930 3C01FF00 */  lui   $at, 0xff00
/* 00455934 01E1C024 */  and   $t8, $t7, $at
/* 00455938 0005CE02 */  srl   $t9, $a1, 0x18
/* 0045593C 332900FF */  andi  $t1, $t9, 0xff
/* 00455940 3C0100FF */  lui   $at, 0xff
/* 00455944 00055A00 */  sll   $t3, $a1, 8
/* 00455948 01616024 */  and   $t4, $t3, $at
/* 0045594C 03095021 */  addu  $t2, $t8, $t1
/* 00455950 00057202 */  srl   $t6, $a1, 8
/* 00455954 31CFFF00 */  andi  $t7, $t6, 0xff00
/* 00455958 014C6821 */  addu  $t5, $t2, $t4
/* 0045595C 01AF8821 */  addu  $s1, $t5, $t7
.L00455960:
/* 00455960 8F848AEC */  lw     $a0, %got(seg_ic)($gp)
/* 00455964 2401FFFC */  li    $at, -4
/* 00455968 8C840000 */  lw    $a0, ($a0)
/* 0045596C 24060001 */  li    $a2, 1
/* 00455970 8C900020 */  lw    $s0, 0x20($a0)
/* 00455974 00000000 */  nop   
/* 00455978 32190003 */  andi  $t9, $s0, 3
/* 0045597C 13200004 */  beqz  $t9, .L00455990
/* 00455980 00000000 */   nop   
/* 00455984 26100003 */  addiu $s0, $s0, 3
/* 00455988 0201C024 */  and   $t8, $s0, $at
/* 0045598C 03008025 */  move  $s0, $t8
.L00455990:
/* 00455990 8F838AE0 */  lw     $v1, %got(memory)($gp)
/* 00455994 02002825 */  move  $a1, $s0
/* 00455998 8C630000 */  lw    $v1, ($v1)
/* 0045599C 00000000 */  nop   
/* 004559A0 8C690164 */  lw    $t1, 0x164($v1)
/* 004559A4 00000000 */  nop   
/* 004559A8 0209082B */  sltu  $at, $s0, $t1
/* 004559AC 1420000F */  bnez  $at, .L004559EC
/* 004559B0 00000000 */   nop   
/* 004559B4 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 004559B8 8C670160 */  lw    $a3, 0x160($v1)
/* 004559BC 24640164 */  addiu $a0, $v1, 0x164
/* 004559C0 0320F809 */  jalr  $t9
/* 004559C4 AFA00010 */   sw    $zero, 0x10($sp)
/* 004559C8 8FBC0028 */  lw    $gp, 0x28($sp)
/* 004559CC 00000000 */  nop   
/* 004559D0 8F838AE0 */  lw     $v1, %got(memory)($gp)
/* 004559D4 8F848AEC */  lw     $a0, %got(seg_ic)($gp)
/* 004559D8 8C630000 */  lw    $v1, ($v1)
/* 004559DC 00000000 */  nop   
/* 004559E0 AC620160 */  sw    $v0, 0x160($v1)
/* 004559E4 8C840000 */  lw    $a0, ($a0)
/* 004559E8 00000000 */  nop   
.L004559EC:
/* 004559EC 8C6B0160 */  lw    $t3, 0x160($v1)
/* 004559F0 00105082 */  srl   $t2, $s0, 2
/* 004559F4 000A6080 */  sll   $t4, $t2, 2
/* 004559F8 016C7021 */  addu  $t6, $t3, $t4
/* 004559FC ADD10000 */  sw    $s1, ($t6)
/* 00455A00 93AF004B */  lbu   $t7, 0x4b($sp)
/* 00455A04 260D0004 */  addiu $t5, $s0, 4
/* 00455A08 11E0003A */  beqz  $t7, .L00455AF4
/* 00455A0C AC8D0020 */   sw    $t5, 0x20($a0)
/* 00455A10 8F918AF4 */  lw     $s1, %got(rld_list)($gp)
/* 00455A14 8F888AF0 */  lw     $t0, %got(nextrld)($gp)
/* 00455A18 8E390004 */  lw    $t9, 4($s1)
/* 00455A1C 8D080000 */  lw    $t0, ($t0)
/* 00455A20 24060018 */  li    $a2, 24
/* 00455A24 0119082A */  slt   $at, $t0, $t9
/* 00455A28 1420000D */  bnez  $at, .L00455A60
/* 00455A2C 01002825 */   move  $a1, $t0
/* 00455A30 8F848AF4 */  lw     $a0, %got(rld_list)($gp)
/* 00455A34 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 00455A38 8E270000 */  lw    $a3, ($s1)
/* 00455A3C AFA00010 */  sw    $zero, 0x10($sp)
/* 00455A40 0320F809 */  jalr  $t9
/* 00455A44 24840004 */   addiu $a0, $a0, 4
/* 00455A48 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00455A4C AE220000 */  sw    $v0, ($s1)
/* 00455A50 8F888AF0 */  lw     $t0, %got(nextrld)($gp)
/* 00455A54 00000000 */  nop   
/* 00455A58 8D080000 */  lw    $t0, ($t0)
/* 00455A5C 00000000 */  nop   
.L00455A60:
/* 00455A60 00084880 */  sll   $t1, $t0, 2
/* 00455A64 8E380000 */  lw    $t8, ($s1)
/* 00455A68 01284823 */  subu  $t1, $t1, $t0
/* 00455A6C 000948C0 */  sll   $t1, $t1, 3
/* 00455A70 03091821 */  addu  $v1, $t8, $t1
/* 00455A74 8F828DA0 */  lw     $v0, %got(currfunc_sym)($gp)
/* 00455A78 8F8A8AE4 */  lw     $t2, %got(currtextindex)($gp)
/* 00455A7C AC600000 */  sw    $zero, ($v1)
/* 00455A80 AC700004 */  sw    $s0, 4($v1)
/* 00455A84 8FAB0040 */  lw    $t3, 0x40($sp)
/* 00455A88 8C420000 */  lw    $v0, ($v0)
/* 00455A8C 8D4A0000 */  lw    $t2, ($t2)
/* 00455A90 1160000C */  beqz  $t3, .L00455AC4
/* 00455A94 AC4A0030 */   sw    $t2, 0x30($v0)
/* 00455A98 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 00455A9C 01602025 */  move  $a0, $t3
/* 00455AA0 0320F809 */  jalr  $t9
/* 00455AA4 AFA30030 */   sw    $v1, 0x30($sp)
/* 00455AA8 8FBC0028 */  lw    $gp, 0x28($sp)
/* 00455AAC 8FA30030 */  lw    $v1, 0x30($sp)
/* 00455AB0 8F888AF0 */  lw     $t0, %got(nextrld)($gp)
/* 00455AB4 AC620008 */  sw    $v0, 8($v1)
/* 00455AB8 8D080000 */  lw    $t0, ($t0)
/* 00455ABC 10000003 */  b     .L00455ACC
/* 00455AC0 8C620008 */   lw    $v0, 8($v1)
.L00455AC4:
/* 00455AC4 AC620008 */  sw    $v0, 8($v1)
/* 00455AC8 8C620008 */  lw    $v0, 8($v1)
.L00455ACC:
/* 00455ACC 8F818AF0 */  lw     $at, %got(nextrld)($gp)
/* 00455AD0 8C4C0020 */  lw    $t4, 0x20($v0)
/* 00455AD4 240D0008 */  li    $t5, 8
/* 00455AD8 258E0001 */  addiu $t6, $t4, 1
/* 00455ADC AC4E0020 */  sw    $t6, 0x20($v0)
/* 00455AE0 240F0008 */  li    $t7, 8
/* 00455AE4 AC6D000C */  sw    $t5, 0xc($v1)
/* 00455AE8 A06F0010 */  sb    $t7, 0x10($v1)
/* 00455AEC 25190001 */  addiu $t9, $t0, 1
/* 00455AF0 AC390000 */  sw    $t9, ($at)
.L00455AF4:
/* 00455AF4 8FBF002C */  lw    $ra, 0x2c($sp)
/* 00455AF8 8FB00020 */  lw    $s0, 0x20($sp)
/* 00455AFC 8FB10024 */  lw    $s1, 0x24($sp)
/* 00455B00 03E00008 */  jr    $ra
/* 00455B04 27BD0040 */   addiu $sp, $sp, 0x40

glabel create_function_table
    .ent create_function_table
    # 0041FE24 func_0041FE24
    # 0044AF18 main
/* 00455B08 3C1C0FBD */  .cpload $t9
/* 00455B0C 279C4758 */  
/* 00455B10 0399E021 */  
/* 00455B14 8F8E8CB4 */  lw     $t6, %got(excpt_opt)($gp)
/* 00455B18 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00455B1C 91CE0000 */  lbu   $t6, ($t6)
/* 00455B20 AFBF001C */  sw    $ra, 0x1c($sp)
/* 00455B24 11C0004F */  beqz  $t6, .L00455C64
/* 00455B28 AFBC0018 */   sw    $gp, 0x18($sp)
/* 00455B2C 8F988AE4 */  lw     $t8, %got(currtextindex)($gp)
/* 00455B30 8F8F8AEC */  lw     $t7, %got(seg_ic)($gp)
/* 00455B34 8F180000 */  lw    $t8, ($t8)
/* 00455B38 8DEF0000 */  lw    $t7, ($t7)
/* 00455B3C 0018C880 */  sll   $t9, $t8, 2
/* 00455B40 01F94021 */  addu  $t0, $t7, $t9
/* 00455B44 8F998028 */  lw    $t9, %got(func_004558F4)($gp)
/* 00455B48 8F858BCC */  lw     $a1, %got(currfunc_start)($gp)
/* 00455B4C 8D090000 */  lw    $t1, ($t0)
/* 00455B50 8F818D9C */  lw     $at, %got(currfunc_end)($gp)
/* 00455B54 273958F4 */  addiu $t9, %lo(func_004558F4) # addiu $t9, $t9, 0x58f4
/* 00455B58 8CA50000 */  lw    $a1, ($a1)
/* 00455B5C 00002025 */  move  $a0, $zero
/* 00455B60 24060001 */  li    $a2, 1
/* 00455B64 27A20020 */  addiu $v0, $sp, 0x20
/* 00455B68 0320F809 */  jalr  $t9
/* 00455B6C AC290000 */   sw    $t1, ($at)
/* 00455B70 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00455B74 00002025 */  move  $a0, $zero
/* 00455B78 8F858D9C */  lw     $a1, %got(currfunc_end)($gp)
/* 00455B7C 8F998028 */  lw    $t9, %got(func_004558F4)($gp)
/* 00455B80 8CA50000 */  lw    $a1, ($a1)
/* 00455B84 273958F4 */  addiu $t9, %lo(func_004558F4) # addiu $t9, $t9, 0x58f4
/* 00455B88 24060001 */  li    $a2, 1
/* 00455B8C 0320F809 */  jalr  $t9
/* 00455B90 27A20020 */   addiu $v0, $sp, 0x20
/* 00455B94 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00455B98 00002825 */  move  $a1, $zero
/* 00455B9C 8F848B68 */  lw     $a0, %got(currfunc_handle)($gp)
/* 00455BA0 8F868B70 */  lw     $a2, %got(currfunc_hasedata)($gp)
/* 00455BA4 8F998028 */  lw    $t9, %got(func_004558F4)($gp)
/* 00455BA8 8C840000 */  lw    $a0, ($a0)
/* 00455BAC 90C60000 */  lbu   $a2, ($a2)
/* 00455BB0 273958F4 */  addiu $t9, %lo(func_004558F4) # addiu $t9, $t9, 0x58f4
/* 00455BB4 0320F809 */  jalr  $t9
/* 00455BB8 27A20020 */   addiu $v0, $sp, 0x20
/* 00455BBC 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00455BC0 00002825 */  move  $a1, $zero
/* 00455BC4 8F848B6C */  lw     $a0, %got(currfunc_data)($gp)
/* 00455BC8 8F868B70 */  lw     $a2, %got(currfunc_hasedata)($gp)
/* 00455BCC 8F998028 */  lw    $t9, %got(func_004558F4)($gp)
/* 00455BD0 8C840000 */  lw    $a0, ($a0)
/* 00455BD4 90C60000 */  lbu   $a2, ($a2)
/* 00455BD8 273958F4 */  addiu $t9, %lo(func_004558F4) # addiu $t9, $t9, 0x58f4
/* 00455BDC 0320F809 */  jalr  $t9
/* 00455BE0 27A20020 */   addiu $v0, $sp, 0x20
/* 00455BE4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00455BE8 00002025 */  move  $a0, $zero
/* 00455BEC 8F858B78 */  lw     $a1, %got(currfunc_prolog)($gp)
/* 00455BF0 8F998028 */  lw    $t9, %got(func_004558F4)($gp)
/* 00455BF4 8CA50000 */  lw    $a1, ($a1)
/* 00455BF8 273958F4 */  addiu $t9, %lo(func_004558F4) # addiu $t9, $t9, 0x58f4
/* 00455BFC 24060001 */  li    $a2, 1
/* 00455C00 0320F809 */  jalr  $t9
/* 00455C04 27A20020 */   addiu $v0, $sp, 0x20
/* 00455C08 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00455C0C 00000000 */  nop   
/* 00455C10 8F818B74 */  lw     $at, %got(is_nonleaf)($gp)
/* 00455C14 00000000 */  nop   
/* 00455C18 A0200000 */  sb    $zero, ($at)
/* 00455C1C 8F818B70 */  lw     $at, %got(currfunc_hasedata)($gp)
/* 00455C20 00000000 */  nop   
/* 00455C24 A0200000 */  sb    $zero, ($at)
/* 00455C28 8F818BCC */  lw     $at, %got(currfunc_start)($gp)
/* 00455C2C 00000000 */  nop   
/* 00455C30 AC200000 */  sw    $zero, ($at)
/* 00455C34 8F818D9C */  lw     $at, %got(currfunc_end)($gp)
/* 00455C38 00000000 */  nop   
/* 00455C3C AC200000 */  sw    $zero, ($at)
/* 00455C40 8F818B78 */  lw     $at, %got(currfunc_prolog)($gp)
/* 00455C44 00000000 */  nop   
/* 00455C48 AC200000 */  sw    $zero, ($at)
/* 00455C4C 8F818B68 */  lw     $at, %got(currfunc_handle)($gp)
/* 00455C50 00000000 */  nop   
/* 00455C54 AC200000 */  sw    $zero, ($at)
/* 00455C58 8F818B6C */  lw     $at, %got(currfunc_data)($gp)
/* 00455C5C 00000000 */  nop   
/* 00455C60 AC200000 */  sw    $zero, ($at)
.L00455C64:
/* 00455C64 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00455C68 27BD0020 */  addiu $sp, $sp, 0x20
/* 00455C6C 03E00008 */  jr    $ra
/* 00455C70 00000000 */   nop   

    .type create_function_table, @function
    .size create_function_table, .-create_function_table
    .end create_function_table

glabel parseedata
    .ent parseedata
    # 004594BC parsestmt
/* 00455C74 3C1C0FBD */  .cpload $t9
/* 00455C78 279C45EC */  
/* 00455C7C 0399E021 */  
/* 00455C80 8F8E8CB4 */  lw     $t6, %got(excpt_opt)($gp)
/* 00455C84 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00455C88 91CE0000 */  lbu   $t6, ($t6)
/* 00455C8C AFBF001C */  sw    $ra, 0x1c($sp)
/* 00455C90 11C00027 */  beqz  $t6, .L00455D30
/* 00455C94 AFBC0018 */   sw    $gp, 0x18($sp)
/* 00455C98 8F828D64 */  lw     $v0, %got(binasmfyle)($gp)
/* 00455C9C 00000000 */  nop   
/* 00455CA0 8C420000 */  lw    $v0, ($v0)
/* 00455CA4 00000000 */  nop   
/* 00455CA8 8C4F0008 */  lw    $t7, 8($v0)
/* 00455CAC 00000000 */  nop   
/* 00455CB0 15E00008 */  bnez  $t7, .L00455CD4
/* 00455CB4 00000000 */   nop   
/* 00455CB8 8F998518 */  lw    $t9, %call16(parseseg)($gp)
/* 00455CBC 24040007 */  li    $a0, 7
/* 00455CC0 0320F809 */  jalr  $t9
/* 00455CC4 00000000 */   nop   
/* 00455CC8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00455CCC 10000019 */  b     .L00455D34
/* 00455CD0 8FBF001C */   lw    $ra, 0x1c($sp)
.L00455CD4:
/* 00455CD4 8F9985AC */  lw    $t9, %call16(enterstp)($gp)
/* 00455CD8 8C44000C */  lw    $a0, 0xc($v0)
/* 00455CDC 0320F809 */  jalr  $t9
/* 00455CE0 AFA20024 */   sw    $v0, 0x24($sp)
/* 00455CE4 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00455CE8 8FA20024 */  lw    $v0, 0x24($sp)
/* 00455CEC 8F818CF4 */  lw     $at, %got(lastsymno)($gp)
/* 00455CF0 8C580000 */  lw    $t8, ($v0)
/* 00455CF4 2408003D */  li    $t0, 61
/* 00455CF8 AC380000 */  sw    $t8, ($at)
/* 00455CFC 8F818DC8 */  lw     $at, %got(lastdata)($gp)
/* 00455D00 8C59000C */  lw    $t9, 0xc($v0)
/* 00455D04 24030001 */  li    $v1, 1
/* 00455D08 AC390000 */  sw    $t9, ($at)
/* 00455D0C 8F818CF0 */  lw     $at, %got(lastinstr)($gp)
/* 00455D10 00000000 */  nop   
/* 00455D14 A0280000 */  sb    $t0, ($at)
/* 00455D18 8F818CFC */  lw     $at, %got(pendinginstr)($gp)
/* 00455D1C 00000000 */  nop   
/* 00455D20 A0230000 */  sb    $v1, ($at)
/* 00455D24 8F818C8C */  lw     $at, %got(endofbasicb)($gp)
/* 00455D28 00000000 */  nop   
/* 00455D2C A0230000 */  sb    $v1, ($at)
.L00455D30:
/* 00455D30 8FBF001C */  lw    $ra, 0x1c($sp)
.L00455D34:
/* 00455D34 27BD0028 */  addiu $sp, $sp, 0x28
/* 00455D38 03E00008 */  jr    $ra
/* 00455D3C 00000000 */   nop   

    .type parseedata, @function
    .size parseedata, .-parseedata
    .end parseedata

glabel parsealloc
    .ent parsealloc
    # 004594BC parsestmt
/* 00455D40 3C1C0FBD */  .cpload $t9
/* 00455D44 279C4520 */  
/* 00455D48 0399E021 */  
/* 00455D4C 8F8E8DA8 */  lw     $t6, %got(adjust_frame_by_ld)($gp)
/* 00455D50 8F828D64 */  lw     $v0, %got(binasmfyle)($gp)
/* 00455D54 91CE0000 */  lbu   $t6, ($t6)
/* 00455D58 27BDFF40 */  addiu $sp, $sp, -0xc0
/* 00455D5C 8C420000 */  lw    $v0, ($v0)
/* 00455D60 AFBF00B4 */  sw    $ra, 0xb4($sp)
/* 00455D64 15C00046 */  bnez  $t6, .L00455E80
/* 00455D68 AFBC00B0 */   sw    $gp, 0xb0($sp)
/* 00455D6C 8F8F8070 */  lw    $t7, %got(RO_1001AF50)($gp)
/* 00455D70 03A04025 */  move  $t0, $sp
/* 00455D74 25EFAF50 */  addiu $t7, %lo(RO_1001AF50) # addiu $t7, $t7, -0x50b0
/* 00455D78 25F90048 */  addiu $t9, $t7, 0x48
.L00455D7C:
/* 00455D7C 89E10000 */  lwl   $at, ($t7)
/* 00455D80 99E10003 */  lwr   $at, 3($t7)
/* 00455D84 25EF000C */  addiu $t7, $t7, 0xc
/* 00455D88 A9010000 */  swl   $at, ($t0)
/* 00455D8C B9010003 */  swr   $at, 3($t0)
/* 00455D90 89E1FFF8 */  lwl   $at, -8($t7)
/* 00455D94 99E1FFFB */  lwr   $at, -5($t7)
/* 00455D98 2508000C */  addiu $t0, $t0, 0xc
/* 00455D9C A901FFF8 */  swl   $at, -8($t0)
/* 00455DA0 B901FFFB */  swr   $at, -5($t0)
/* 00455DA4 89E1FFFC */  lwl   $at, -4($t7)
/* 00455DA8 99E1FFFF */  lwr   $at, -1($t7)
/* 00455DAC 00000000 */  nop   
/* 00455DB0 A901FFFC */  swl   $at, -4($t0)
/* 00455DB4 15F9FFF1 */  bne   $t7, $t9, .L00455D7C
/* 00455DB8 B901FFFF */   swr   $at, -1($t0)
/* 00455DBC 89E10000 */  lwl   $at, ($t7)
/* 00455DC0 99E10003 */  lwr   $at, 3($t7)
/* 00455DC4 8F898070 */  lw    $t1, %got(RO_1001AF00)($gp)
/* 00455DC8 A9010000 */  swl   $at, ($t0)
/* 00455DCC B9010003 */  swr   $at, 3($t0)
/* 00455DD0 89F90004 */  lwl   $t9, 4($t7)
/* 00455DD4 99F90007 */  lwr   $t9, 7($t7)
/* 00455DD8 2529AF00 */  addiu $t1, %lo(RO_1001AF00) # addiu $t1, $t1, -0x5100
/* 00455DDC A9190004 */  swl   $t9, 4($t0)
/* 00455DE0 252B0048 */  addiu $t3, $t1, 0x48
/* 00455DE4 03A06025 */  move  $t4, $sp
/* 00455DE8 B9190007 */  swr   $t9, 7($t0)
.L00455DEC:
/* 00455DEC 89210000 */  lwl   $at, ($t1)
/* 00455DF0 99210003 */  lwr   $at, 3($t1)
/* 00455DF4 2529000C */  addiu $t1, $t1, 0xc
/* 00455DF8 A9810050 */  swl   $at, 0x50($t4)
/* 00455DFC B9810053 */  swr   $at, 0x53($t4)
/* 00455E00 8921FFF8 */  lwl   $at, -8($t1)
/* 00455E04 9921FFFB */  lwr   $at, -5($t1)
/* 00455E08 258C000C */  addiu $t4, $t4, 0xc
/* 00455E0C A9810048 */  swl   $at, 0x48($t4)
/* 00455E10 B981004B */  swr   $at, 0x4b($t4)
/* 00455E14 8921FFFC */  lwl   $at, -4($t1)
/* 00455E18 9921FFFF */  lwr   $at, -1($t1)
/* 00455E1C 00000000 */  nop   
/* 00455E20 A981004C */  swl   $at, 0x4c($t4)
/* 00455E24 152BFFF1 */  bne   $t1, $t3, .L00455DEC
/* 00455E28 B981004F */   swr   $at, 0x4f($t4)
/* 00455E2C 89210000 */  lwl   $at, ($t1)
/* 00455E30 99210003 */  lwr   $at, 3($t1)
/* 00455E34 240D0569 */  li    $t5, 1385
/* 00455E38 A9810050 */  swl   $at, 0x50($t4)
/* 00455E3C B9810053 */  swr   $at, 0x53($t4)
/* 00455E40 892B0004 */  lwl   $t3, 4($t1)
/* 00455E44 992B0007 */  lwr   $t3, 7($t1)
/* 00455E48 00000000 */  nop   
/* 00455E4C A98B0054 */  swl   $t3, 0x54($t4)
/* 00455E50 B98B0057 */  swr   $t3, 0x57($t4)
/* 00455E54 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 00455E58 8FA7000C */  lw    $a3, 0xc($sp)
/* 00455E5C 8FA60008 */  lw    $a2, 8($sp)
/* 00455E60 8FA50004 */  lw    $a1, 4($sp)
/* 00455E64 8FA40000 */  lw    $a0, ($sp)
/* 00455E68 AFA200B8 */  sw    $v0, 0xb8($sp)
/* 00455E6C 0320F809 */  jalr  $t9
/* 00455E70 AFAD00A0 */   sw    $t5, 0xa0($sp)
/* 00455E74 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00455E78 8FA200B8 */  lw    $v0, 0xb8($sp)
/* 00455E7C 00000000 */  nop   
.L00455E80:
/* 00455E80 8F99842C */  lw    $t9, %call16(st_add_deltasym)($gp)
/* 00455E84 8C460000 */  lw    $a2, ($v0)
/* 00455E88 2404001B */  li    $a0, 27
/* 00455E8C 0320F809 */  jalr  $t9
/* 00455E90 00002825 */   move  $a1, $zero
/* 00455E94 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00455E98 00402025 */  move  $a0, $v0
/* 00455E9C 8F9985AC */  lw    $t9, %call16(enterstp)($gp)
/* 00455EA0 00000000 */  nop   
/* 00455EA4 0320F809 */  jalr  $t9
/* 00455EA8 00000000 */   nop   
/* 00455EAC 8FBF00B4 */  lw    $ra, 0xb4($sp)
/* 00455EB0 8FBC00B0 */  lw    $gp, 0xb0($sp)
/* 00455EB4 03E00008 */  jr    $ra
/* 00455EB8 27BD00C0 */   addiu $sp, $sp, 0xc0

    .type parsealloc, @function
    .size parsealloc, .-parsealloc
    .end parsealloc

glabel parseprologue
    .ent parseprologue
    # 004594BC parsestmt
/* 00455EBC 3C1C0FBD */  .cpload $t9
/* 00455EC0 279C43A4 */  
/* 00455EC4 0399E021 */  
/* 00455EC8 8F8E8CB4 */  lw     $t6, %got(excpt_opt)($gp)
/* 00455ECC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00455ED0 91CE0000 */  lbu   $t6, ($t6)
/* 00455ED4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00455ED8 11C00010 */  beqz  $t6, .L00455F1C
/* 00455EDC AFBC0020 */   sw    $gp, 0x20($sp)
/* 00455EE0 8F988D64 */  lw     $t8, %got(binasmfyle)($gp)
/* 00455EE4 8F818C8C */  lw     $at, %got(endofbasicb)($gp)
/* 00455EE8 8F180000 */  lw    $t8, ($t8)
/* 00455EEC 240F0001 */  li    $t7, 1
/* 00455EF0 A02F0000 */  sb    $t7, ($at)
/* 00455EF4 8F9982E4 */  lw    $t9, %call16(fill_pseudo)($gp)
/* 00455EF8 8F050008 */  lw    $a1, 8($t8)
/* 00455EFC AFA00014 */  sw    $zero, 0x14($sp)
/* 00455F00 AFA00010 */  sw    $zero, 0x10($sp)
/* 00455F04 24040014 */  li    $a0, 20
/* 00455F08 00003025 */  move  $a2, $zero
/* 00455F0C 0320F809 */  jalr  $t9
/* 00455F10 00003825 */   move  $a3, $zero
/* 00455F14 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00455F18 00000000 */  nop   
.L00455F1C:
/* 00455F1C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 00455F20 27BD0028 */  addiu $sp, $sp, 0x28
/* 00455F24 03E00008 */  jr    $ra
/* 00455F28 00000000 */   nop   

    .type parseprologue, @function
    .size parseprologue, .-parseprologue
    .end parseprologue

glabel parseend
    .ent parseend
    # 004594BC parsestmt
/* 00455F2C 3C1C0FBD */  .cpload $t9
/* 00455F30 279C4334 */  
/* 00455F34 0399E021 */  
/* 00455F38 8F8E8D64 */  lw     $t6, %got(binasmfyle)($gp)
/* 00455F3C 8F828BB0 */  lw     $v0, %got(bbindex)($gp)
/* 00455F40 27BDFF78 */  addiu $sp, $sp, -0x88
/* 00455F44 8DCE0000 */  lw    $t6, ($t6)
/* 00455F48 8C420000 */  lw    $v0, ($v0)
/* 00455F4C AFBF0064 */  sw    $ra, 0x64($sp)
/* 00455F50 AFBC0060 */  sw    $gp, 0x60($sp)
/* 00455F54 AFA40088 */  sw    $a0, 0x88($sp)
/* 00455F58 1040002E */  beqz  $v0, .L00456014
/* 00455F5C AFAE007C */   sw    $t6, 0x7c($sp)
/* 00455F60 93AF008B */  lbu   $t7, 0x8b($sp)
/* 00455F64 3C017FFF */  lui   $at, 0x7fff
/* 00455F68 2DF80040 */  sltiu $t8, $t7, 0x40
/* 00455F6C 1300000A */  beqz  $t8, .L00455F98
/* 00455F70 00000000 */   nop   
/* 00455F74 8F898080 */  lw    $t1, %got(D_10004C04)($gp)
/* 00455F78 000FC943 */  sra   $t9, $t7, 5
/* 00455F7C 00194080 */  sll   $t0, $t9, 2
/* 00455F80 25294C04 */  addiu $t1, %lo(D_10004C04) # addiu $t1, $t1, 0x4c04
/* 00455F84 01285021 */  addu  $t2, $t1, $t0
/* 00455F88 8D4B0000 */  lw    $t3, ($t2)
/* 00455F8C 00000000 */  nop   
/* 00455F90 01EB6004 */  sllv  $t4, $t3, $t7
/* 00455F94 29980000 */  slti  $t8, $t4, 0
.L00455F98:
/* 00455F98 1700001E */  bnez  $t8, .L00456014
/* 00455F9C 00000000 */   nop   
/* 00455FA0 8F8E8B40 */  lw     $t6, %got(pinstruction)($gp)
/* 00455FA4 0002C880 */  sll   $t9, $v0, 2
/* 00455FA8 8DCE0000 */  lw    $t6, ($t6)
/* 00455FAC 0322C821 */  addu  $t9, $t9, $v0
/* 00455FB0 0019C8C0 */  sll   $t9, $t9, 3
/* 00455FB4 01D94821 */  addu  $t1, $t6, $t9
/* 00455FB8 8D280000 */  lw    $t0, ($t1)
/* 00455FBC 3421FFFF */  ori   $at, $at, 0xffff
/* 00455FC0 15010014 */  bne   $t0, $at, .L00456014
/* 00455FC4 00000000 */   nop   
/* 00455FC8 8F9982E0 */  lw    $t9, %call16(pseudo_type)($gp)
/* 00455FCC 00402025 */  move  $a0, $v0
/* 00455FD0 0320F809 */  jalr  $t9
/* 00455FD4 00000000 */   nop   
/* 00455FD8 2C4A0020 */  sltiu $t2, $v0, 0x20
/* 00455FDC 000A5823 */  negu  $t3, $t2
/* 00455FE0 316F01E0 */  andi  $t7, $t3, 0x1e0
/* 00455FE4 004F6004 */  sllv  $t4, $t7, $v0
/* 00455FE8 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00455FEC 05810009 */  bgez  $t4, .L00456014
/* 00455FF0 00000000 */   nop   
/* 00455FF4 8F828BE8 */  lw     $v0, %got(currsegment)($gp)
/* 00455FF8 93A9008B */  lbu   $t1, 0x8b($sp)
/* 00455FFC 90420000 */  lbu   $v0, ($v0)
/* 00456000 2401000F */  li    $at, 15
/* 00456004 10400105 */  beqz  $v0, .L0045641C
/* 00456008 00000000 */   nop   
/* 0045600C 10410104 */  beq   $v0, $at, .L00456420
/* 00456010 2D21001F */   sltiu $at, $t1, 0x1f
.L00456014:
/* 00456014 8F828BE8 */  lw     $v0, %got(currsegment)($gp)
/* 00456018 2401000F */  li    $at, 15
/* 0045601C 90420000 */  lbu   $v0, ($v0)
/* 00456020 00000000 */  nop   
/* 00456024 1040000A */  beqz  $v0, .L00456050
/* 00456028 00000000 */   nop   
/* 0045602C 10410008 */  beq   $v0, $at, .L00456050
/* 00456030 24050001 */   li    $a1, 1
/* 00456034 8F848B64 */  lw     $a0, %got(currsegmentindex)($gp)
/* 00456038 8F9985C4 */  lw    $t9, %call16(definealabel)($gp)
/* 0045603C 8C840000 */  lw    $a0, ($a0)
/* 00456040 0320F809 */  jalr  $t9
/* 00456044 00003025 */   move  $a2, $zero
/* 00456048 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045604C 00000000 */  nop   
.L00456050:
/* 00456050 8F818C8C */  lw     $at, %got(endofbasicb)($gp)
/* 00456054 24020001 */  li    $v0, 1
/* 00456058 A0220000 */  sb    $v0, ($at)
/* 0045605C 8F818CF0 */  lw     $at, %got(lastinstr)($gp)
/* 00456060 93AD008B */  lbu   $t5, 0x8b($sp)
/* 00456064 8FB8007C */  lw    $t8, 0x7c($sp)
/* 00456068 A02D0000 */  sb    $t5, ($at)
/* 0045606C 8F818CF4 */  lw     $at, %got(lastsymno)($gp)
/* 00456070 8F040000 */  lw    $a0, ($t8)
/* 00456074 00000000 */  nop   
/* 00456078 AC240000 */  sw    $a0, ($at)
/* 0045607C 8F818CFC */  lw     $at, %got(pendinginstr)($gp)
/* 00456080 00000000 */  nop   
/* 00456084 A0220000 */  sb    $v0, ($at)
/* 00456088 2401001B */  li    $at, 27
/* 0045608C 11A10003 */  beq   $t5, $at, .L0045609C
/* 00456090 2401002E */   li    $at, 46
/* 00456094 15A10046 */  bne   $t5, $at, .L004561B0
/* 00456098 93AC008B */   lbu   $t4, 0x8b($sp)
.L0045609C:
/* 0045609C 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 004560A0 00000000 */  nop   
/* 004560A4 0320F809 */  jalr  $t9
/* 004560A8 00000000 */   nop   
/* 004560AC 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004560B0 AFA20084 */  sw    $v0, 0x84($sp)
/* 004560B4 8F998430 */  lw    $t9, %call16(save_cur_proc_id)($gp)
/* 004560B8 8C44000C */  lw    $a0, 0xc($v0)
/* 004560BC 0320F809 */  jalr  $t9
/* 004560C0 00000000 */   nop   
/* 004560C4 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004560C8 00000000 */  nop   
/* 004560CC 8F8E8B08 */  lw     $t6, %got(verbose)($gp)
/* 004560D0 00000000 */  nop   
/* 004560D4 91CE0000 */  lbu   $t6, ($t6)
/* 004560D8 00000000 */  nop   
/* 004560DC 11C00034 */  beqz  $t6, .L004561B0
/* 004560E0 93AC008B */   lbu   $t4, 0x8b($sp)
/* 004560E4 8FB90084 */  lw    $t9, 0x84($sp)
/* 004560E8 00000000 */  nop   
/* 004560EC 8F29000C */  lw    $t1, 0xc($t9)
/* 004560F0 00000000 */  nop   
/* 004560F4 91280000 */  lbu   $t0, ($t1)
/* 004560F8 00000000 */  nop   
/* 004560FC 1100002C */  beqz  $t0, .L004561B0
/* 00456100 93AC008B */   lbu   $t4, 0x8b($sp)
/* 00456104 8F99865C */  lw    $t9, %call16(call_name_and_line)($gp)
/* 00456108 24040003 */  li    $a0, 3
/* 0045610C 0320F809 */  jalr  $t9
/* 00456110 00000000 */   nop   
/* 00456114 8FAA0084 */  lw    $t2, 0x84($sp)
/* 00456118 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045611C 8D44000C */  lw    $a0, 0xc($t2)
/* 00456120 00000000 */  nop   
/* 00456124 908B0000 */  lbu   $t3, ($a0)
/* 00456128 00000000 */  nop   
/* 0045612C 11600018 */  beqz  $t3, .L00456190
/* 00456130 00000000 */   nop   
/* 00456134 8F99818C */  lw    $t9, %call16(strlen)($gp)
/* 00456138 00000000 */  nop   
/* 0045613C 0320F809 */  jalr  $t9
/* 00456140 00000000 */   nop   
/* 00456144 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00456148 8FAF0084 */  lw    $t7, 0x84($sp)
/* 0045614C 8F848A10 */  lw     $a0, %got(err)($gp)
/* 00456150 8F9986A0 */  lw    $t9, %call16(write_string)($gp)
/* 00456154 8DE5000C */  lw    $a1, 0xc($t7)
/* 00456158 8C840000 */  lw    $a0, ($a0)
/* 0045615C 24060400 */  li    $a2, 1024
/* 00456160 0320F809 */  jalr  $t9
/* 00456164 00403825 */   move  $a3, $v0
/* 00456168 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045616C 24050020 */  li    $a1, 32
/* 00456170 8F848A10 */  lw     $a0, %got(err)($gp)
/* 00456174 8F99869C */  lw    $t9, %call16(write_char)($gp)
/* 00456178 8C840000 */  lw    $a0, ($a0)
/* 0045617C 24060001 */  li    $a2, 1
/* 00456180 0320F809 */  jalr  $t9
/* 00456184 2407000A */   li    $a3, 10
/* 00456188 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045618C 00000000 */  nop   
.L00456190:
/* 00456190 8F848A10 */  lw     $a0, %got(err)($gp)
/* 00456194 8F99817C */  lw    $t9, %call16(fflush)($gp)
/* 00456198 8C840000 */  lw    $a0, ($a0)
/* 0045619C 0320F809 */  jalr  $t9
/* 004561A0 00000000 */   nop   
/* 004561A4 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004561A8 00000000 */  nop   
/* 004561AC 93AC008B */  lbu   $t4, 0x8b($sp)
.L004561B0:
/* 004561B0 2401001B */  li    $at, 27
/* 004561B4 1581005F */  bne   $t4, $at, .L00456334
/* 004561B8 93A8008B */   lbu   $t0, 0x8b($sp)
/* 004561BC 8F988B18 */  lw     $t8, %got(debugflag)($gp)
/* 004561C0 00000000 */  nop   
/* 004561C4 8F180000 */  lw    $t8, ($t8)
/* 004561C8 00000000 */  nop   
/* 004561CC 1B000030 */  blez  $t8, .L00456290
/* 004561D0 00000000 */   nop   
/* 004561D4 8F8D8BBC */  lw     $t5, %got(currentfile)($gp)
/* 004561D8 2401FFFF */  li    $at, -1
/* 004561DC 8DAD0000 */  lw    $t5, ($t5)
/* 004561E0 00000000 */  nop   
/* 004561E4 15A1002A */  bne   $t5, $at, .L00456290
/* 004561E8 00000000 */   nop   
/* 004561EC 8F8E8070 */  lw    $t6, %got(RO_1001AFAA)($gp)
/* 004561F0 03A04025 */  move  $t0, $sp
/* 004561F4 25CEAFAA */  addiu $t6, %lo(RO_1001AFAA) # addiu $t6, $t6, -0x5056
/* 004561F8 25C90048 */  addiu $t1, $t6, 0x48
.L004561FC:
/* 004561FC 89C10000 */  lwl   $at, ($t6)
/* 00456200 99C10003 */  lwr   $at, 3($t6)
/* 00456204 25CE000C */  addiu $t6, $t6, 0xc
/* 00456208 A9010000 */  swl   $at, ($t0)
/* 0045620C B9010003 */  swr   $at, 3($t0)
/* 00456210 89C1FFF8 */  lwl   $at, -8($t6)
/* 00456214 99C1FFFB */  lwr   $at, -5($t6)
/* 00456218 2508000C */  addiu $t0, $t0, 0xc
/* 0045621C A901FFF8 */  swl   $at, -8($t0)
/* 00456220 B901FFFB */  swr   $at, -5($t0)
/* 00456224 89C1FFFC */  lwl   $at, -4($t6)
/* 00456228 99C1FFFF */  lwr   $at, -1($t6)
/* 0045622C 00000000 */  nop   
/* 00456230 A901FFFC */  swl   $at, -4($t0)
/* 00456234 15C9FFF1 */  bne   $t6, $t1, .L004561FC
/* 00456238 B901FFFF */   swr   $at, -1($t0)
/* 0045623C 89C10000 */  lwl   $at, ($t6)
/* 00456240 99C10003 */  lwr   $at, 3($t6)
/* 00456244 8F8A8C68 */  lw     $t2, %got(emptystring)($gp)
/* 00456248 A9010000 */  swl   $at, ($t0)
/* 0045624C B9010003 */  swr   $at, 3($t0)
/* 00456250 89C90004 */  lwl   $t1, 4($t6)
/* 00456254 99C90007 */  lwr   $t1, 7($t6)
/* 00456258 240B0002 */  li    $t3, 2
/* 0045625C A9090004 */  swl   $t1, 4($t0)
/* 00456260 B9090007 */  swr   $t1, 7($t0)
/* 00456264 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00456268 8D4A0000 */  lw    $t2, ($t2)
/* 0045626C 8FA7000C */  lw    $a3, 0xc($sp)
/* 00456270 8FA60008 */  lw    $a2, 8($sp)
/* 00456274 8FA50004 */  lw    $a1, 4($sp)
/* 00456278 8FA40000 */  lw    $a0, ($sp)
/* 0045627C AFAB0054 */  sw    $t3, 0x54($sp)
/* 00456280 0320F809 */  jalr  $t9
/* 00456284 AFAA0050 */   sw    $t2, 0x50($sp)
/* 00456288 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045628C 00000000 */  nop   
.L00456290:
/* 00456290 8F8189B8 */  lw     $at, %got(ignore_frames)($gp)
/* 00456294 8FAF007C */  lw    $t7, 0x7c($sp)
/* 00456298 A0200000 */  sb    $zero, ($at)
/* 0045629C 8F818B98 */  lw     $at, %got(currentent)($gp)
/* 004562A0 8DEC0000 */  lw    $t4, ($t7)
/* 004562A4 8FB80084 */  lw    $t8, 0x84($sp)
/* 004562A8 8F99818C */  lw    $t9, %call16(strlen)($gp)
/* 004562AC AC2C0000 */  sw    $t4, ($at)
/* 004562B0 8F04000C */  lw    $a0, 0xc($t8)
/* 004562B4 0320F809 */  jalr  $t9
/* 004562B8 00000000 */   nop   
/* 004562BC 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004562C0 00402025 */  move  $a0, $v0
/* 004562C4 8F9988C0 */  lw    $t9, %call16(xmalloc)($gp)
/* 004562C8 00000000 */  nop   
/* 004562CC 0320F809 */  jalr  $t9
/* 004562D0 00000000 */   nop   
/* 004562D4 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004562D8 8FAD0084 */  lw    $t5, 0x84($sp)
/* 004562DC 8F838B9C */  lw     $v1, %got(currentent_name)($gp)
/* 004562E0 00402025 */  move  $a0, $v0
/* 004562E4 AC620000 */  sw    $v0, ($v1)
/* 004562E8 8F9981A0 */  lw    $t9, %call16(strcpy)($gp)
/* 004562EC 8DA5000C */  lw    $a1, 0xc($t5)
/* 004562F0 0320F809 */  jalr  $t9
/* 004562F4 00000000 */   nop   
/* 004562F8 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004562FC 8FA90084 */  lw    $t1, 0x84($sp)
/* 00456300 8F998B9C */  lw     $t9, %got(currentent_name)($gp)
/* 00456304 8F818CF8 */  lw     $at, %got(lexicallevel)($gp)
/* 00456308 8F390000 */  lw    $t9, ($t9)
/* 0045630C 240EFFFF */  li    $t6, -1
/* 00456310 AD39000C */  sw    $t9, 0xc($t1)
/* 00456314 AC200000 */  sw    $zero, ($at)
/* 00456318 8F818CA0 */  lw     $at, %got(cprestore_offset)($gp)
/* 0045631C 00000000 */  nop   
/* 00456320 AC2E0000 */  sw    $t6, ($at)
/* 00456324 8F8189C8 */  lw     $at, %got(cpalias_pending)($gp)
/* 00456328 10000060 */  b     .L004564AC
/* 0045632C A0200000 */   sb    $zero, ($at)
/* 00456330 93A8008B */  lbu   $t0, 0x8b($sp)
.L00456334:
/* 00456334 24010018 */  li    $at, 24
/* 00456338 1501005D */  bne   $t0, $at, .L004564B0
/* 0045633C 8FBF0064 */   lw    $ra, 0x64($sp)
/* 00456340 8F8189B8 */  lw     $at, %got(ignore_frames)($gp)
/* 00456344 240AFFFF */  li    $t2, -1
/* 00456348 A0200000 */  sb    $zero, ($at)
/* 0045634C 8F818CA0 */  lw     $at, %got(cprestore_offset)($gp)
/* 00456350 00000000 */  nop   
/* 00456354 AC2A0000 */  sw    $t2, ($at)
/* 00456358 8F8189C8 */  lw     $at, %got(cpalias_pending)($gp)
/* 0045635C 00000000 */  nop   
/* 00456360 A0200000 */  sb    $zero, ($at)
/* 00456364 8F8189C0 */  lw     $at, %got(need_cprestore)($gp)
/* 00456368 10000050 */  b     .L004564AC
/* 0045636C A0200000 */   sb    $zero, ($at)
.L00456370:
/* 00456370 240B0017 */  li    $t3, 23
/* 00456374 1000003F */  b     .L00456474
/* 00456378 AFAB0080 */   sw    $t3, 0x80($sp)
.L0045637C:
/* 0045637C 240F0018 */  li    $t7, 24
/* 00456380 1000003C */  b     .L00456474
/* 00456384 AFAF0080 */   sw    $t7, 0x80($sp)
.L00456388:
/* 00456388 8F8C89C4 */  lw     $t4, %got(cpalias_set)($gp)
/* 0045638C 00000000 */  nop   
/* 00456390 918C0000 */  lbu   $t4, ($t4)
/* 00456394 00000000 */  nop   
/* 00456398 11800008 */  beqz  $t4, .L004563BC
/* 0045639C 8FB8007C */   lw    $t8, 0x7c($sp)
/* 004563A0 8F9984D4 */  lw    $t9, %call16(init_cpalias)($gp)
/* 004563A4 00000000 */  nop   
/* 004563A8 0320F809 */  jalr  $t9
/* 004563AC 00000000 */   nop   
/* 004563B0 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004563B4 00000000 */  nop   
/* 004563B8 8FB8007C */  lw    $t8, 0x7c($sp)
.L004563BC:
/* 004563BC 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 004563C0 8F040000 */  lw    $a0, ($t8)
/* 004563C4 0320F809 */  jalr  $t9
/* 004563C8 00000000 */   nop   
/* 004563CC 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004563D0 8FAD007C */  lw    $t5, 0x7c($sp)
/* 004563D4 8F9985B0 */  lw    $t9, %call16(enterlabel)($gp)
/* 004563D8 AFA20084 */  sw    $v0, 0x84($sp)
/* 004563DC 8DA40000 */  lw    $a0, ($t5)
/* 004563E0 0320F809 */  jalr  $t9
/* 004563E4 27A50084 */   addiu $a1, $sp, 0x84
/* 004563E8 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004563EC 24190019 */  li    $t9, 25
/* 004563F0 10000020 */  b     .L00456474
/* 004563F4 AFB90080 */   sw    $t9, 0x80($sp)
.L004563F8:
/* 004563F8 8F868070 */  lw    $a2, %got(RO_1001AFA0)($gp)
/* 004563FC 8F99868C */  lw    $t9, %call16(caseerror)($gp)
/* 00456400 240505C1 */  li    $a1, 1473
/* 00456404 2407000A */  li    $a3, 10
/* 00456408 0320F809 */  jalr  $t9
/* 0045640C 24C6AFA0 */   addiu $a2, %lo(RO_1001AFA0) # addiu $a2, $a2, -0x5060
/* 00456410 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00456414 10000018 */  b     .L00456478
/* 00456418 8FAA007C */   lw    $t2, 0x7c($sp)
.L0045641C:
/* 0045641C 2D21001F */  sltiu $at, $t1, 0x1f
.L00456420:
/* 00456420 14200006 */  bnez  $at, .L0045643C
/* 00456424 24040002 */   li    $a0, 2
/* 00456428 24010024 */  li    $at, 36
/* 0045642C 1121FFD6 */  beq   $t1, $at, .L00456388
/* 00456430 00000000 */   nop   
/* 00456434 1000FFF0 */  b     .L004563F8
/* 00456438 00000000 */   nop   
.L0045643C:
/* 0045643C 93AE008B */  lbu   $t6, 0x8b($sp)
/* 00456440 00000000 */  nop   
/* 00456444 25C8FFE3 */  addiu $t0, $t6, -0x1d
/* 00456448 2D010002 */  sltiu $at, $t0, 2
/* 0045644C 1020FFEA */  beqz  $at, .L004563F8
/* 00456450 00000000 */   nop   
/* 00456454 8F818070 */  lw    $at, %got(jtbl_1001AFFC)($gp)
/* 00456458 00084080 */  sll   $t0, $t0, 2
/* 0045645C 00280821 */  addu  $at, $at, $t0
/* 00456460 8C28AFFC */  lw    $t0, %lo(jtbl_1001AFFC)($at)
/* 00456464 00000000 */  nop   
/* 00456468 011C4021 */  addu  $t0, $t0, $gp
/* 0045646C 01000008 */  jr    $t0
/* 00456470 00000000 */   nop   
.L00456474:
/* 00456474 8FAA007C */  lw    $t2, 0x7c($sp)
.L00456478:
/* 00456478 8F868BB8 */  lw     $a2, %got(currentline)($gp)
/* 0045647C 8F878B18 */  lw     $a3, %got(debugflag)($gp)
/* 00456480 8FAB0084 */  lw    $t3, 0x84($sp)
/* 00456484 8F9982E4 */  lw    $t9, %call16(fill_pseudo)($gp)
/* 00456488 8D450000 */  lw    $a1, ($t2)
/* 0045648C 8FA40080 */  lw    $a0, 0x80($sp)
/* 00456490 8CC60000 */  lw    $a2, ($a2)
/* 00456494 8CE70000 */  lw    $a3, ($a3)
/* 00456498 AFA00014 */  sw    $zero, 0x14($sp)
/* 0045649C 0320F809 */  jalr  $t9
/* 004564A0 AFAB0010 */   sw    $t3, 0x10($sp)
/* 004564A4 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004564A8 00000000 */  nop   
.L004564AC:
/* 004564AC 8FBF0064 */  lw    $ra, 0x64($sp)
.L004564B0:
/* 004564B0 27BD0088 */  addiu $sp, $sp, 0x88
/* 004564B4 03E00008 */  jr    $ra
/* 004564B8 00000000 */   nop   

    .type parseend, @function
    .size parseend, .-parseend
    .end parseend

glabel parserepeat
    .ent parserepeat
    # 004594BC parsestmt
/* 004564BC 3C1C0FBD */  .cpload $t9
/* 004564C0 279C3DA4 */  
/* 004564C4 0399E021 */  
/* 004564C8 8F8E8070 */  lw    $t6, %got(RO_1001B004)($gp)
/* 004564CC 27BDFF98 */  addiu $sp, $sp, -0x68
/* 004564D0 25CEB004 */  addiu $t6, %lo(RO_1001B004) # addiu $t6, $t6, -0x4ffc
/* 004564D4 AFBF0064 */  sw    $ra, 0x64($sp)
/* 004564D8 AFBC0060 */  sw    $gp, 0x60($sp)
/* 004564DC 25D80048 */  addiu $t8, $t6, 0x48
/* 004564E0 03A0C825 */  move  $t9, $sp
.L004564E4:
/* 004564E4 89C10000 */  lwl   $at, ($t6)
/* 004564E8 99C10003 */  lwr   $at, 3($t6)
/* 004564EC 25CE000C */  addiu $t6, $t6, 0xc
/* 004564F0 AB210000 */  swl   $at, ($t9)
/* 004564F4 BB210003 */  swr   $at, 3($t9)
/* 004564F8 89C1FFF8 */  lwl   $at, -8($t6)
/* 004564FC 99C1FFFB */  lwr   $at, -5($t6)
/* 00456500 2739000C */  addiu $t9, $t9, 0xc
/* 00456504 AB21FFF8 */  swl   $at, -8($t9)
/* 00456508 BB21FFFB */  swr   $at, -5($t9)
/* 0045650C 89C1FFFC */  lwl   $at, -4($t6)
/* 00456510 99C1FFFF */  lwr   $at, -1($t6)
/* 00456514 00000000 */  nop   
/* 00456518 AB21FFFC */  swl   $at, -4($t9)
/* 0045651C 15D8FFF1 */  bne   $t6, $t8, .L004564E4
/* 00456520 BB21FFFF */   swr   $at, -1($t9)
/* 00456524 89C10000 */  lwl   $at, ($t6)
/* 00456528 99C10003 */  lwr   $at, 3($t6)
/* 0045652C 8F888C68 */  lw     $t0, %got(emptystring)($gp)
/* 00456530 AB210000 */  swl   $at, ($t9)
/* 00456534 BB210003 */  swr   $at, 3($t9)
/* 00456538 89D80004 */  lwl   $t8, 4($t6)
/* 0045653C 99D80007 */  lwr   $t8, 7($t6)
/* 00456540 24090001 */  li    $t1, 1
/* 00456544 AB380004 */  swl   $t8, 4($t9)
/* 00456548 BB380007 */  swr   $t8, 7($t9)
/* 0045654C 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00456550 8D080000 */  lw    $t0, ($t0)
/* 00456554 8FA7000C */  lw    $a3, 0xc($sp)
/* 00456558 8FA60008 */  lw    $a2, 8($sp)
/* 0045655C 8FA50004 */  lw    $a1, 4($sp)
/* 00456560 8FA40000 */  lw    $a0, ($sp)
/* 00456564 AFA90054 */  sw    $t1, 0x54($sp)
/* 00456568 0320F809 */  jalr  $t9
/* 0045656C AFA80050 */   sw    $t0, 0x50($sp)
/* 00456570 8FBF0064 */  lw    $ra, 0x64($sp)
/* 00456574 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00456578 03E00008 */  jr    $ra
/* 0045657C 27BD0068 */   addiu $sp, $sp, 0x68

    .type parserepeat, @function
    .size parserepeat, .-parserepeat
    .end parserepeat

glabel parseendrep
    .ent parseendrep
    # 004594BC parsestmt
/* 00456580 3C1C0FBD */  .cpload $t9
/* 00456584 279C3CE0 */  
/* 00456588 0399E021 */  
/* 0045658C 8F8E8070 */  lw    $t6, %got(RO_1001B054)($gp)
/* 00456590 27BDFF98 */  addiu $sp, $sp, -0x68
/* 00456594 25CEB054 */  addiu $t6, %lo(RO_1001B054) # addiu $t6, $t6, -0x4fac
/* 00456598 AFBF0064 */  sw    $ra, 0x64($sp)
/* 0045659C AFBC0060 */  sw    $gp, 0x60($sp)
/* 004565A0 25D80048 */  addiu $t8, $t6, 0x48
/* 004565A4 03A0C825 */  move  $t9, $sp
.L004565A8:
/* 004565A8 89C10000 */  lwl   $at, ($t6)
/* 004565AC 99C10003 */  lwr   $at, 3($t6)
/* 004565B0 25CE000C */  addiu $t6, $t6, 0xc
/* 004565B4 AB210000 */  swl   $at, ($t9)
/* 004565B8 BB210003 */  swr   $at, 3($t9)
/* 004565BC 89C1FFF8 */  lwl   $at, -8($t6)
/* 004565C0 99C1FFFB */  lwr   $at, -5($t6)
/* 004565C4 2739000C */  addiu $t9, $t9, 0xc
/* 004565C8 AB21FFF8 */  swl   $at, -8($t9)
/* 004565CC BB21FFFB */  swr   $at, -5($t9)
/* 004565D0 89C1FFFC */  lwl   $at, -4($t6)
/* 004565D4 99C1FFFF */  lwr   $at, -1($t6)
/* 004565D8 00000000 */  nop   
/* 004565DC AB21FFFC */  swl   $at, -4($t9)
/* 004565E0 15D8FFF1 */  bne   $t6, $t8, .L004565A8
/* 004565E4 BB21FFFF */   swr   $at, -1($t9)
/* 004565E8 89C10000 */  lwl   $at, ($t6)
/* 004565EC 99C10003 */  lwr   $at, 3($t6)
/* 004565F0 8F888C68 */  lw     $t0, %got(emptystring)($gp)
/* 004565F4 AB210000 */  swl   $at, ($t9)
/* 004565F8 BB210003 */  swr   $at, 3($t9)
/* 004565FC 89D80004 */  lwl   $t8, 4($t6)
/* 00456600 99D80007 */  lwr   $t8, 7($t6)
/* 00456604 24090001 */  li    $t1, 1
/* 00456608 AB380004 */  swl   $t8, 4($t9)
/* 0045660C BB380007 */  swr   $t8, 7($t9)
/* 00456610 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00456614 8D080000 */  lw    $t0, ($t0)
/* 00456618 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045661C 8FA60008 */  lw    $a2, 8($sp)
/* 00456620 8FA50004 */  lw    $a1, 4($sp)
/* 00456624 8FA40000 */  lw    $a0, ($sp)
/* 00456628 AFA90054 */  sw    $t1, 0x54($sp)
/* 0045662C 0320F809 */  jalr  $t9
/* 00456630 AFA80050 */   sw    $t0, 0x50($sp)
/* 00456634 8FBF0064 */  lw    $ra, 0x64($sp)
/* 00456638 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045663C 03E00008 */  jr    $ra
/* 00456640 27BD0068 */   addiu $sp, $sp, 0x68

    .type parseendrep, @function
    .size parseendrep, .-parseendrep
    .end parseendrep

glabel parsefile
    .ent parsefile
    # 004594BC parsestmt
/* 00456644 3C1C0FBD */  .cpload $t9
/* 00456648 279C3C1C */  
/* 0045664C 0399E021 */  
/* 00456650 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00456654 AFB2001C */  sw    $s2, 0x1c($sp)
/* 00456658 8F928D64 */  lw     $s2, %got(binasmfyle)($gp)
/* 0045665C AFBF0024 */  sw    $ra, 0x24($sp)
/* 00456660 8E4E0000 */  lw    $t6, ($s2)
/* 00456664 AFBC0020 */  sw    $gp, 0x20($sp)
/* 00456668 AFB10018 */  sw    $s1, 0x18($sp)
/* 0045666C AFB00014 */  sw    $s0, 0x14($sp)
/* 00456670 8DC20008 */  lw    $v0, 8($t6)
/* 00456674 24100001 */  li    $s0, 1
/* 00456678 2443000F */  addiu $v1, $v0, 0xf
/* 0045667C 04610003 */  bgez  $v1, .L0045668C
/* 00456680 00037903 */   sra   $t7, $v1, 4
/* 00456684 2461000F */  addiu $at, $v1, 0xf
/* 00456688 00017903 */  sra   $t7, $at, 4
.L0045668C:
/* 0045668C 19E00009 */  blez  $t7, .L004566B4
/* 00456690 25F10001 */   addiu $s1, $t7, 1
.L00456694:
/* 00456694 8F9985E8 */  lw    $t9, %call16(get_binasm)($gp)
/* 00456698 02402025 */  move  $a0, $s2
/* 0045669C 0320F809 */  jalr  $t9
/* 004566A0 00000000 */   nop   
/* 004566A4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004566A8 26100001 */  addiu $s0, $s0, 1
/* 004566AC 1611FFF9 */  bne   $s0, $s1, .L00456694
/* 004566B0 00000000 */   nop   
.L004566B4:
/* 004566B4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 004566B8 8FB00014 */  lw    $s0, 0x14($sp)
/* 004566BC 8FB10018 */  lw    $s1, 0x18($sp)
/* 004566C0 8FB2001C */  lw    $s2, 0x1c($sp)
/* 004566C4 03E00008 */  jr    $ra
/* 004566C8 27BD0028 */   addiu $sp, $sp, 0x28

    .type parsefile, @function
    .size parsefile, .-parsefile
    .end parsefile

glabel parseloc
    .ent parseloc
    # 004594BC parsestmt
/* 004566CC 3C1C0FBD */  .cpload $t9
/* 004566D0 279C3B94 */  
/* 004566D4 0399E021 */  
/* 004566D8 8F828BE8 */  lw     $v0, %got(currsegment)($gp)
/* 004566DC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 004566E0 90420000 */  lbu   $v0, ($v0)
/* 004566E4 AFBF001C */  sw    $ra, 0x1c($sp)
/* 004566E8 10400004 */  beqz  $v0, .L004566FC
/* 004566EC AFBC0018 */   sw    $gp, 0x18($sp)
/* 004566F0 2401000F */  li    $at, 15
/* 004566F4 14410053 */  bne   $v0, $at, .L00456844
/* 004566F8 8FBF001C */   lw    $ra, 0x1c($sp)
.L004566FC:
/* 004566FC 8F8E8BB0 */  lw     $t6, %got(bbindex)($gp)
/* 00456700 00000000 */  nop   
/* 00456704 8DCE0000 */  lw    $t6, ($t6)
/* 00456708 00000000 */  nop   
/* 0045670C 11C0002D */  beqz  $t6, .L004567C4
/* 00456710 00000000 */   nop   
/* 00456714 8F988D64 */  lw     $t8, %got(binasmfyle)($gp)
/* 00456718 8F838BBC */  lw     $v1, %got(currentfile)($gp)
/* 0045671C 8F180000 */  lw    $t8, ($t8)
/* 00456720 8C6F0000 */  lw    $t7, ($v1)
/* 00456724 8F190008 */  lw    $t9, 8($t8)
/* 00456728 00000000 */  nop   
/* 0045672C 11F90007 */  beq   $t7, $t9, .L0045674C
/* 00456730 00000000 */   nop   
/* 00456734 8F888CA4 */  lw     $t0, %got(initial_loc)($gp)
/* 00456738 00000000 */  nop   
/* 0045673C 91080000 */  lbu   $t0, ($t0)
/* 00456740 00000000 */  nop   
/* 00456744 11000017 */  beqz  $t0, .L004567A4
/* 00456748 00000000 */   nop   
.L0045674C:
/* 0045674C 8F898B1C */  lw     $t1, %got(optflag)($gp)
/* 00456750 00000000 */  nop   
/* 00456754 8D290000 */  lw    $t1, ($t1)
/* 00456758 00000000 */  nop   
/* 0045675C 19200019 */  blez  $t1, .L004567C4
/* 00456760 00000000 */   nop   
/* 00456764 8F8A8B8C */  lw     $t2, %got(reorderflag)($gp)
/* 00456768 00000000 */  nop   
/* 0045676C 914A0000 */  lbu   $t2, ($t2)
/* 00456770 00000000 */  nop   
/* 00456774 11400013 */  beqz  $t2, .L004567C4
/* 00456778 00000000 */   nop   
/* 0045677C 8F8B8B18 */  lw     $t3, %got(debugflag)($gp)
/* 00456780 3C019000 */  lui   $at, 0x9000
/* 00456784 8D6B0000 */  lw    $t3, ($t3)
/* 00456788 00000000 */  nop   
/* 0045678C 2D6C0020 */  sltiu $t4, $t3, 0x20
/* 00456790 000C6823 */  negu  $t5, $t4
/* 00456794 01A17024 */  and   $t6, $t5, $at
/* 00456798 016EC004 */  sllv  $t8, $t6, $t3
/* 0045679C 07000009 */  bltz  $t8, .L004567C4
/* 004567A0 00000000 */   nop   
.L004567A4:
/* 004567A4 8F818C8C */  lw     $at, %got(endofbasicb)($gp)
/* 004567A8 24030001 */  li    $v1, 1
/* 004567AC 8F828CA4 */  lw     $v0, %got(initial_loc)($gp)
/* 004567B0 A0230000 */  sb    $v1, ($at)
/* 004567B4 A0830000 */  sb    $v1, ($a0)
/* 004567B8 90420000 */  lbu   $v0, ($v0)
/* 004567BC 1000001B */  b     .L0045682C
/* 004567C0 00000000 */   nop   
.L004567C4:
/* 004567C4 8F828D64 */  lw     $v0, %got(binasmfyle)($gp)
/* 004567C8 8F818BB8 */  lw     $at, %got(currentline)($gp)
/* 004567CC 8C420000 */  lw    $v0, ($v0)
/* 004567D0 8F838BBC */  lw     $v1, %got(currentfile)($gp)
/* 004567D4 8C4F000C */  lw    $t7, 0xc($v0)
/* 004567D8 8F888BC8 */  lw     $t0, %got(fromas0)($gp)
/* 004567DC AC2F0000 */  sw    $t7, ($at)
/* 004567E0 8C590008 */  lw    $t9, 8($v0)
/* 004567E4 00000000 */  nop   
/* 004567E8 AC790000 */  sw    $t9, ($v1)
/* 004567EC 91080000 */  lbu   $t0, ($t0)
/* 004567F0 03202025 */  move  $a0, $t9
/* 004567F4 11000009 */  beqz  $t0, .L0045681C
/* 004567F8 00000000 */   nop   
/* 004567FC 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 00456800 00000000 */  nop   
/* 00456804 0320F809 */  jalr  $t9
/* 00456808 00000000 */   nop   
/* 0045680C 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00456810 10400002 */  beqz  $v0, .L0045681C
/* 00456814 24090046 */   li    $t1, 70
/* 00456818 A0490034 */  sb    $t1, 0x34($v0)
.L0045681C:
/* 0045681C 8F828CA4 */  lw     $v0, %got(initial_loc)($gp)
/* 00456820 00000000 */  nop   
/* 00456824 90420000 */  lbu   $v0, ($v0)
/* 00456828 00000000 */  nop   
.L0045682C:
/* 0045682C 10400005 */  beqz  $v0, .L00456844
/* 00456830 8FBF001C */   lw    $ra, 0x1c($sp)
/* 00456834 8F818CA4 */  lw     $at, %got(initial_loc)($gp)
/* 00456838 00000000 */  nop   
/* 0045683C A0200000 */  sb    $zero, ($at)
/* 00456840 8FBF001C */  lw    $ra, 0x1c($sp)
.L00456844:
/* 00456844 27BD0020 */  addiu $sp, $sp, 0x20
/* 00456848 03E00008 */  jr    $ra
/* 0045684C 00000000 */   nop   

    .type parseloc, @function
    .size parseloc, .-parseloc
    .end parseloc

glabel parseglobl
    .ent parseglobl
    # 004594BC parsestmt
/* 00456850 3C1C0FBD */  .cpload $t9
/* 00456854 279C3A10 */  
/* 00456858 0399E021 */  
/* 0045685C 8F858D64 */  lw     $a1, %got(binasmfyle)($gp)
/* 00456860 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 00456864 8CA50000 */  lw    $a1, ($a1)
/* 00456868 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0045686C AFBF001C */  sw    $ra, 0x1c($sp)
/* 00456870 8CA40000 */  lw    $a0, ($a1)
/* 00456874 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00456878 0320F809 */  jalr  $t9
/* 0045687C AFA50020 */   sw    $a1, 0x20($sp)
/* 00456880 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00456884 8FA50020 */  lw    $a1, 0x20($sp)
/* 00456888 8F8189D4 */  lw     $at, %got(last_globl_symno)($gp)
/* 0045688C 8CAE0000 */  lw    $t6, ($a1)
/* 00456890 240F0055 */  li    $t7, 85
/* 00456894 AC2E0000 */  sw    $t6, ($at)
/* 00456898 8F8189D8 */  lw     $at, %got(label_size)($gp)
/* 0045689C 240A0001 */  li    $t2, 1
/* 004568A0 AC200000 */  sw    $zero, ($at)
/* 004568A4 90430034 */  lbu   $v1, 0x34($v0)
/* 004568A8 24010020 */  li    $at, 32
/* 004568AC 14610004 */  bne   $v1, $at, .L004568C0
/* 004568B0 24010075 */   li    $at, 117
/* 004568B4 10000015 */  b     .L0045690C
/* 004568B8 A04F0034 */   sb    $t7, 0x34($v0)
/* 004568BC 24010075 */  li    $at, 117
.L004568C0:
/* 004568C0 14610003 */  bne   $v1, $at, .L004568D0
/* 004568C4 24180055 */   li    $t8, 85
/* 004568C8 10000010 */  b     .L0045690C
/* 004568CC A0580034 */   sb    $t8, 0x34($v0)
.L004568D0:
/* 004568D0 24010062 */  li    $at, 98
/* 004568D4 14610005 */  bne   $v1, $at, .L004568EC
/* 004568D8 24010064 */   li    $at, 100
/* 004568DC 24190042 */  li    $t9, 66
/* 004568E0 1000000A */  b     .L0045690C
/* 004568E4 A0590034 */   sb    $t9, 0x34($v0)
/* 004568E8 24010064 */  li    $at, 100
.L004568EC:
/* 004568EC 14610003 */  bne   $v1, $at, .L004568FC
/* 004568F0 24080044 */   li    $t0, 68
/* 004568F4 10000005 */  b     .L0045690C
/* 004568F8 A0480034 */   sb    $t0, 0x34($v0)
.L004568FC:
/* 004568FC 24010074 */  li    $at, 116
/* 00456900 14610002 */  bne   $v1, $at, .L0045690C
/* 00456904 24090054 */   li    $t1, 84
/* 00456908 A0490034 */  sb    $t1, 0x34($v0)
.L0045690C:
/* 0045690C A04A0035 */  sb    $t2, 0x35($v0)
/* 00456910 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00456914 27BD0028 */  addiu $sp, $sp, 0x28
/* 00456918 03E00008 */  jr    $ra
/* 0045691C 00000000 */   nop   

    .type parseglobl, @function
    .size parseglobl, .-parseglobl
    .end parseglobl

glabel parseweakext
    .ent parseweakext
    # 004594BC parsestmt
/* 00456920 3C1C0FBD */  .cpload $t9
/* 00456924 279C3940 */  
/* 00456928 0399E021 */  
/* 0045692C 8F838D64 */  lw     $v1, %got(binasmfyle)($gp)
/* 00456930 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 00456934 8C630000 */  lw    $v1, ($v1)
/* 00456938 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0045693C AFBF001C */  sw    $ra, 0x1c($sp)
/* 00456940 8C640000 */  lw    $a0, ($v1)
/* 00456944 AFBC0018 */  sw    $gp, 0x18($sp)
/* 00456948 0320F809 */  jalr  $t9
/* 0045694C AFA30020 */   sw    $v1, 0x20($sp)
/* 00456950 8FA30020 */  lw    $v1, 0x20($sp)
/* 00456954 8FBC0018 */  lw    $gp, 0x18($sp)
/* 00456958 240E0001 */  li    $t6, 1
/* 0045695C A04E003C */  sb    $t6, 0x3c($v0)
/* 00456960 8C6F0008 */  lw    $t7, 8($v1)
/* 00456964 00000000 */  nop   
/* 00456968 AC4F0044 */  sw    $t7, 0x44($v0)
/* 0045696C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00456970 27BD0028 */  addiu $sp, $sp, 0x28
/* 00456974 03E00008 */  jr    $ra
/* 00456978 00000000 */   nop   

    .type parseweakext, @function
    .size parseweakext, .-parseweakext
    .end parseweakext

glabel parseglobabs
    .ent parseglobabs
    # 004594BC parsestmt
/* 0045697C 3C1C0FBD */  .cpload $t9
/* 00456980 279C38E4 */  
/* 00456984 0399E021 */  
/* 00456988 8F828D64 */  lw     $v0, %got(binasmfyle)($gp)
/* 0045698C 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 00456990 8C420000 */  lw    $v0, ($v0)
/* 00456994 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00456998 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0045699C 8C440000 */  lw    $a0, ($v0)
/* 004569A0 0320F809 */  jalr  $t9
/* 004569A4 AFBC0018 */   sw    $gp, 0x18($sp)
/* 004569A8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004569AC 240E0041 */  li    $t6, 65
/* 004569B0 8F8F8D64 */  lw     $t7, %got(binasmfyle)($gp)
/* 004569B4 A04E0034 */  sb    $t6, 0x34($v0)
/* 004569B8 8DEF0000 */  lw    $t7, ($t7)
/* 004569BC 24190001 */  li    $t9, 1
/* 004569C0 8DF80008 */  lw    $t8, 8($t7)
/* 004569C4 A0590035 */  sb    $t9, 0x35($v0)
/* 004569C8 AC580010 */  sw    $t8, 0x10($v0)
/* 004569CC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 004569D0 27BD0020 */  addiu $sp, $sp, 0x20
/* 004569D4 03E00008 */  jr    $ra
/* 004569D8 00000000 */   nop   

    .type parseglobabs, @function
    .size parseglobabs, .-parseglobabs
    .end parseglobabs

glabel parse_option
    .ent parse_option
    # 004594BC parsestmt
/* 004569DC 3C1C0FBD */  .cpload $t9
/* 004569E0 279C3884 */  
/* 004569E4 0399E021 */  
/* 004569E8 8F838D64 */  lw     $v1, %got(binasmfyle)($gp)
/* 004569EC 27BDFF88 */  addiu $sp, $sp, -0x78
/* 004569F0 8C630000 */  lw    $v1, ($v1)
/* 004569F4 24010001 */  li    $at, 1
/* 004569F8 90640006 */  lbu   $a0, 6($v1)
/* 004569FC AFBF0064 */  sw    $ra, 0x64($sp)
/* 00456A00 00047600 */  sll   $t6, $a0, 0x18
/* 00456A04 000E2782 */  srl   $a0, $t6, 0x1e
/* 00456A08 14810052 */  bne   $a0, $at, .L00456B54
/* 00456A0C AFBC0060 */   sw    $gp, 0x60($sp)
/* 00456A10 8C62000C */  lw    $v0, 0xc($v1)
/* 00456A14 00000000 */  nop   
/* 00456A18 0440004E */  bltz  $v0, .L00456B54
/* 00456A1C 28410005 */   slti  $at, $v0, 5
/* 00456A20 1020004D */  beqz  $at, .L00456B58
/* 00456A24 24010002 */   li    $at, 2
/* 00456A28 8F988B1C */  lw     $t8, %got(optflag)($gp)
/* 00456A2C 24040020 */  li    $a0, 32
/* 00456A30 8F180000 */  lw    $t8, ($t8)
/* 00456A34 00000000 */  nop   
/* 00456A38 10580043 */  beq   $v0, $t8, .L00456B48
/* 00456A3C 00000000 */   nop   
/* 00456A40 8F998690 */  lw    $t9, %call16(new)($gp)
/* 00456A44 00002825 */  move  $a1, $zero
/* 00456A48 0320F809 */  jalr  $t9
/* 00456A4C AFA30070 */   sw    $v1, 0x70($sp)
/* 00456A50 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00456A54 8FA30070 */  lw    $v1, 0x70($sp)
/* 00456A58 8F998334 */  lw    $t9, %call16(ltoa)($gp)
/* 00456A5C 8C64000C */  lw    $a0, 0xc($v1)
/* 00456A60 AFA20074 */  sw    $v0, 0x74($sp)
/* 00456A64 0320F809 */  jalr  $t9
/* 00456A68 00402825 */   move  $a1, $v0
/* 00456A6C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00456A70 03A05025 */  move  $t2, $sp
/* 00456A74 8F998070 */  lw    $t9, %got(RO_1001B1E4)($gp)
/* 00456A78 00000000 */  nop   
/* 00456A7C 2739B1E4 */  addiu $t9, %lo(RO_1001B1E4) # addiu $t9, $t9, -0x4e1c
/* 00456A80 27290048 */  addiu $t1, $t9, 0x48
.L00456A84:
/* 00456A84 8B210000 */  lwl   $at, ($t9)
/* 00456A88 9B210003 */  lwr   $at, 3($t9)
/* 00456A8C 2739000C */  addiu $t9, $t9, 0xc
/* 00456A90 A9410000 */  swl   $at, ($t2)
/* 00456A94 B9410003 */  swr   $at, 3($t2)
/* 00456A98 8B21FFF8 */  lwl   $at, -8($t9)
/* 00456A9C 9B21FFFB */  lwr   $at, -5($t9)
/* 00456AA0 254A000C */  addiu $t2, $t2, 0xc
/* 00456AA4 A941FFF8 */  swl   $at, -8($t2)
/* 00456AA8 B941FFFB */  swr   $at, -5($t2)
/* 00456AAC 8B21FFFC */  lwl   $at, -4($t9)
/* 00456AB0 9B21FFFF */  lwr   $at, -1($t9)
/* 00456AB4 00000000 */  nop   
/* 00456AB8 A941FFFC */  swl   $at, -4($t2)
/* 00456ABC 1729FFF1 */  bne   $t9, $t1, .L00456A84
/* 00456AC0 B941FFFF */   swr   $at, -1($t2)
/* 00456AC4 8B210000 */  lwl   $at, ($t9)
/* 00456AC8 9B210003 */  lwr   $at, 3($t9)
/* 00456ACC 240C0002 */  li    $t4, 2
/* 00456AD0 A9410000 */  swl   $at, ($t2)
/* 00456AD4 B9410003 */  swr   $at, 3($t2)
/* 00456AD8 8B290004 */  lwl   $t1, 4($t9)
/* 00456ADC 9B290007 */  lwr   $t1, 7($t9)
/* 00456AE0 00000000 */  nop   
/* 00456AE4 A9490004 */  swl   $t1, 4($t2)
/* 00456AE8 B9490007 */  swr   $t1, 7($t2)
/* 00456AEC 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00456AF0 8FAB0074 */  lw    $t3, 0x74($sp)
/* 00456AF4 8FA7000C */  lw    $a3, 0xc($sp)
/* 00456AF8 8FA60008 */  lw    $a2, 8($sp)
/* 00456AFC 8FA50004 */  lw    $a1, 4($sp)
/* 00456B00 8FA40000 */  lw    $a0, ($sp)
/* 00456B04 AFAC0054 */  sw    $t4, 0x54($sp)
/* 00456B08 0320F809 */  jalr  $t9
/* 00456B0C AFAB0050 */   sw    $t3, 0x50($sp)
/* 00456B10 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00456B14 8FA40074 */  lw    $a0, 0x74($sp)
/* 00456B18 8F998694 */  lw    $t9, %call16(dispose)($gp)
/* 00456B1C 24050020 */  li    $a1, 32
/* 00456B20 0320F809 */  jalr  $t9
/* 00456B24 00000000 */   nop   
/* 00456B28 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00456B2C 00000000 */  nop   
/* 00456B30 8F8D8D64 */  lw     $t5, %got(binasmfyle)($gp)
/* 00456B34 00000000 */  nop   
/* 00456B38 8DAD0000 */  lw    $t5, ($t5)
/* 00456B3C 00000000 */  nop   
/* 00456B40 8DA2000C */  lw    $v0, 0xc($t5)
/* 00456B44 00000000 */  nop   
.L00456B48:
/* 00456B48 8F818B1C */  lw     $at, %got(optflag)($gp)
/* 00456B4C 100000EB */  b     .L00456EFC
/* 00456B50 AC220000 */   sw    $v0, ($at)
.L00456B54:
/* 00456B54 24010002 */  li    $at, 2
.L00456B58:
/* 00456B58 148100BF */  bne   $a0, $at, .L00456E58
/* 00456B5C 00000000 */   nop   
/* 00456B60 8C62000C */  lw    $v0, 0xc($v1)
/* 00456B64 00000000 */  nop   
/* 00456B68 044000BB */  bltz  $v0, .L00456E58
/* 00456B6C 28410004 */   slti  $at, $v0, 4
/* 00456B70 102000B9 */  beqz  $at, .L00456E58
/* 00456B74 00000000 */   nop   
/* 00456B78 8F8E8C98 */  lw     $t6, %got(saw_pic_flag)($gp)
/* 00456B7C 00000000 */  nop   
/* 00456B80 91CE0000 */  lbu   $t6, ($t6)
/* 00456B84 00000000 */  nop   
/* 00456B88 11C00043 */  beqz  $t6, .L00456C98
/* 00456B8C 00000000 */   nop   
/* 00456B90 8F868AF8 */  lw     $a2, %got(picflag)($gp)
/* 00456B94 24040020 */  li    $a0, 32
/* 00456B98 8CCF0000 */  lw    $t7, ($a2)
/* 00456B9C 00000000 */  nop   
/* 00456BA0 104F003D */  beq   $v0, $t7, .L00456C98
/* 00456BA4 00000000 */   nop   
/* 00456BA8 8F998690 */  lw    $t9, %call16(new)($gp)
/* 00456BAC 00002825 */  move  $a1, $zero
/* 00456BB0 0320F809 */  jalr  $t9
/* 00456BB4 AFA30070 */   sw    $v1, 0x70($sp)
/* 00456BB8 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00456BBC 8FA30070 */  lw    $v1, 0x70($sp)
/* 00456BC0 8F998334 */  lw    $t9, %call16(ltoa)($gp)
/* 00456BC4 8C64000C */  lw    $a0, 0xc($v1)
/* 00456BC8 AFA20074 */  sw    $v0, 0x74($sp)
/* 00456BCC 0320F809 */  jalr  $t9
/* 00456BD0 00402825 */   move  $a1, $v0
/* 00456BD4 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00456BD8 03A0C825 */  move  $t9, $sp
/* 00456BDC 8F988070 */  lw    $t8, %got(RO_1001B194)($gp)
/* 00456BE0 00000000 */  nop   
/* 00456BE4 2718B194 */  addiu $t8, %lo(RO_1001B194) # addiu $t8, $t8, -0x4e6c
/* 00456BE8 27090048 */  addiu $t1, $t8, 0x48
.L00456BEC:
/* 00456BEC 8B010000 */  lwl   $at, ($t8)
/* 00456BF0 9B010003 */  lwr   $at, 3($t8)
/* 00456BF4 2718000C */  addiu $t8, $t8, 0xc
/* 00456BF8 AB210000 */  swl   $at, ($t9)
/* 00456BFC BB210003 */  swr   $at, 3($t9)
/* 00456C00 8B01FFF8 */  lwl   $at, -8($t8)
/* 00456C04 9B01FFFB */  lwr   $at, -5($t8)
/* 00456C08 2739000C */  addiu $t9, $t9, 0xc
/* 00456C0C AB21FFF8 */  swl   $at, -8($t9)
/* 00456C10 BB21FFFB */  swr   $at, -5($t9)
/* 00456C14 8B01FFFC */  lwl   $at, -4($t8)
/* 00456C18 9B01FFFF */  lwr   $at, -1($t8)
/* 00456C1C 00000000 */  nop   
/* 00456C20 AB21FFFC */  swl   $at, -4($t9)
/* 00456C24 1709FFF1 */  bne   $t8, $t1, .L00456BEC
/* 00456C28 BB21FFFF */   swr   $at, -1($t9)
/* 00456C2C 8B010000 */  lwl   $at, ($t8)
/* 00456C30 9B010003 */  lwr   $at, 3($t8)
/* 00456C34 240B0002 */  li    $t3, 2
/* 00456C38 AB210000 */  swl   $at, ($t9)
/* 00456C3C BB210003 */  swr   $at, 3($t9)
/* 00456C40 8B090004 */  lwl   $t1, 4($t8)
/* 00456C44 9B090007 */  lwr   $t1, 7($t8)
/* 00456C48 00000000 */  nop   
/* 00456C4C AB290004 */  swl   $t1, 4($t9)
/* 00456C50 BB290007 */  swr   $t1, 7($t9)
/* 00456C54 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00456C58 8FAA0074 */  lw    $t2, 0x74($sp)
/* 00456C5C 8FA7000C */  lw    $a3, 0xc($sp)
/* 00456C60 8FA60008 */  lw    $a2, 8($sp)
/* 00456C64 8FA50004 */  lw    $a1, 4($sp)
/* 00456C68 8FA40000 */  lw    $a0, ($sp)
/* 00456C6C AFAB0054 */  sw    $t3, 0x54($sp)
/* 00456C70 0320F809 */  jalr  $t9
/* 00456C74 AFAA0050 */   sw    $t2, 0x50($sp)
/* 00456C78 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00456C7C 8FA40074 */  lw    $a0, 0x74($sp)
/* 00456C80 8F998694 */  lw    $t9, %call16(dispose)($gp)
/* 00456C84 24050020 */  li    $a1, 32
/* 00456C88 0320F809 */  jalr  $t9
/* 00456C8C 00000000 */   nop   
/* 00456C90 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00456C94 00000000 */  nop   
.L00456C98:
/* 00456C98 8F8289D0 */  lw     $v0, %got(saw_option_pic)($gp)
/* 00456C9C 8F868AF8 */  lw     $a2, %got(picflag)($gp)
/* 00456CA0 904C0000 */  lbu   $t4, ($v0)
/* 00456CA4 24190001 */  li    $t9, 1
/* 00456CA8 1180002B */  beqz  $t4, .L00456D58
/* 00456CAC 00000000 */   nop   
/* 00456CB0 8F8D8070 */  lw    $t5, %got(RO_1001B144)($gp)
/* 00456CB4 03A04025 */  move  $t0, $sp
/* 00456CB8 25ADB144 */  addiu $t5, %lo(RO_1001B144) # addiu $t5, $t5, -0x4ebc
/* 00456CBC 25AF0048 */  addiu $t7, $t5, 0x48
.L00456CC0:
/* 00456CC0 89A10000 */  lwl   $at, ($t5)
/* 00456CC4 99A10003 */  lwr   $at, 3($t5)
/* 00456CC8 25AD000C */  addiu $t5, $t5, 0xc
/* 00456CCC A9010000 */  swl   $at, ($t0)
/* 00456CD0 B9010003 */  swr   $at, 3($t0)
/* 00456CD4 89A1FFF8 */  lwl   $at, -8($t5)
/* 00456CD8 99A1FFFB */  lwr   $at, -5($t5)
/* 00456CDC 2508000C */  addiu $t0, $t0, 0xc
/* 00456CE0 A901FFF8 */  swl   $at, -8($t0)
/* 00456CE4 B901FFFB */  swr   $at, -5($t0)
/* 00456CE8 89A1FFFC */  lwl   $at, -4($t5)
/* 00456CEC 99A1FFFF */  lwr   $at, -1($t5)
/* 00456CF0 00000000 */  nop   
/* 00456CF4 A901FFFC */  swl   $at, -4($t0)
/* 00456CF8 15AFFFF1 */  bne   $t5, $t7, .L00456CC0
/* 00456CFC B901FFFF */   swr   $at, -1($t0)
/* 00456D00 89A10000 */  lwl   $at, ($t5)
/* 00456D04 99A10003 */  lwr   $at, 3($t5)
/* 00456D08 8F898C68 */  lw     $t1, %got(emptystring)($gp)
/* 00456D0C A9010000 */  swl   $at, ($t0)
/* 00456D10 B9010003 */  swr   $at, 3($t0)
/* 00456D14 89AF0004 */  lwl   $t7, 4($t5)
/* 00456D18 99AF0007 */  lwr   $t7, 7($t5)
/* 00456D1C 24180002 */  li    $t8, 2
/* 00456D20 A90F0004 */  swl   $t7, 4($t0)
/* 00456D24 B90F0007 */  swr   $t7, 7($t0)
/* 00456D28 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00456D2C 8D290000 */  lw    $t1, ($t1)
/* 00456D30 8FA7000C */  lw    $a3, 0xc($sp)
/* 00456D34 8FA60008 */  lw    $a2, 8($sp)
/* 00456D38 8FA50004 */  lw    $a1, 4($sp)
/* 00456D3C 8FA40000 */  lw    $a0, ($sp)
/* 00456D40 AFB80054 */  sw    $t8, 0x54($sp)
/* 00456D44 0320F809 */  jalr  $t9
/* 00456D48 AFA90050 */   sw    $t1, 0x50($sp)
/* 00456D4C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00456D50 1000006B */  b     .L00456F00
/* 00456D54 8FBF0064 */   lw    $ra, 0x64($sp)
.L00456D58:
/* 00456D58 8F8A8D64 */  lw     $t2, %got(binasmfyle)($gp)
/* 00456D5C A0590000 */  sb    $t9, ($v0)
/* 00456D60 8D4A0000 */  lw    $t2, ($t2)
/* 00456D64 24010002 */  li    $at, 2
/* 00456D68 8D4B000C */  lw    $t3, 0xc($t2)
/* 00456D6C 00000000 */  nop   
/* 00456D70 15610062 */  bne   $t3, $at, .L00456EFC
/* 00456D74 ACCB0000 */   sw    $t3, ($a2)
/* 00456D78 8F8E8C9C */  lw     $t6, %got(saw_cap_g)($gp)
/* 00456D7C 00000000 */  nop   
/* 00456D80 91CE0000 */  lbu   $t6, ($t6)
/* 00456D84 00000000 */  nop   
/* 00456D88 11C0005D */  beqz  $t6, .L00456F00
/* 00456D8C 8FBF0064 */   lw    $ra, 0x64($sp)
/* 00456D90 8F8F8B10 */  lw     $t7, %got(gprelsize)($gp)
/* 00456D94 00000000 */  nop   
/* 00456D98 8DEF0000 */  lw    $t7, ($t7)
/* 00456D9C 00000000 */  nop   
/* 00456DA0 11E00057 */  beqz  $t7, .L00456F00
/* 00456DA4 8FBF0064 */   lw    $ra, 0x64($sp)
/* 00456DA8 8F8D8070 */  lw    $t5, %got(RO_1001B0F4)($gp)
/* 00456DAC 03A0C025 */  move  $t8, $sp
/* 00456DB0 25ADB0F4 */  addiu $t5, %lo(RO_1001B0F4) # addiu $t5, $t5, -0x4f0c
/* 00456DB4 25A90048 */  addiu $t1, $t5, 0x48
.L00456DB8:
/* 00456DB8 89A10000 */  lwl   $at, ($t5)
/* 00456DBC 99A10003 */  lwr   $at, 3($t5)
/* 00456DC0 25AD000C */  addiu $t5, $t5, 0xc
/* 00456DC4 AB010000 */  swl   $at, ($t8)
/* 00456DC8 BB010003 */  swr   $at, 3($t8)
/* 00456DCC 89A1FFF8 */  lwl   $at, -8($t5)
/* 00456DD0 99A1FFFB */  lwr   $at, -5($t5)
/* 00456DD4 2718000C */  addiu $t8, $t8, 0xc
/* 00456DD8 AB01FFF8 */  swl   $at, -8($t8)
/* 00456DDC BB01FFFB */  swr   $at, -5($t8)
/* 00456DE0 89A1FFFC */  lwl   $at, -4($t5)
/* 00456DE4 99A1FFFF */  lwr   $at, -1($t5)
/* 00456DE8 00000000 */  nop   
/* 00456DEC AB01FFFC */  swl   $at, -4($t8)
/* 00456DF0 15A9FFF1 */  bne   $t5, $t1, .L00456DB8
/* 00456DF4 BB01FFFF */   swr   $at, -1($t8)
/* 00456DF8 89A10000 */  lwl   $at, ($t5)
/* 00456DFC 99A10003 */  lwr   $at, 3($t5)
/* 00456E00 8F998C68 */  lw     $t9, %got(emptystring)($gp)
/* 00456E04 AB010000 */  swl   $at, ($t8)
/* 00456E08 BB010003 */  swr   $at, 3($t8)
/* 00456E0C 89A90004 */  lwl   $t1, 4($t5)
/* 00456E10 99A90007 */  lwr   $t1, 7($t5)
/* 00456E14 240A0002 */  li    $t2, 2
/* 00456E18 AB090004 */  swl   $t1, 4($t8)
/* 00456E1C BB090007 */  swr   $t1, 7($t8)
/* 00456E20 8F390000 */  lw    $t9, ($t9)
/* 00456E24 8FA7000C */  lw    $a3, 0xc($sp)
/* 00456E28 AFB90050 */  sw    $t9, 0x50($sp)
/* 00456E2C 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00456E30 8FA60008 */  lw    $a2, 8($sp)
/* 00456E34 8FA50004 */  lw    $a1, 4($sp)
/* 00456E38 8FA40000 */  lw    $a0, ($sp)
/* 00456E3C 0320F809 */  jalr  $t9
/* 00456E40 AFAA0054 */   sw    $t2, 0x54($sp)
/* 00456E44 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00456E48 00000000 */  nop   
/* 00456E4C 8F818B10 */  lw     $at, %got(gprelsize)($gp)
/* 00456E50 1000002A */  b     .L00456EFC
/* 00456E54 AC200000 */   sw    $zero, ($at)
.L00456E58:
/* 00456E58 8F8B8070 */  lw    $t3, %got(RO_1001B0A4)($gp)
/* 00456E5C 03A07825 */  move  $t7, $sp
/* 00456E60 256BB0A4 */  addiu $t3, %lo(RO_1001B0A4) # addiu $t3, $t3, -0x4f5c
/* 00456E64 256E0048 */  addiu $t6, $t3, 0x48
.L00456E68:
/* 00456E68 89610000 */  lwl   $at, ($t3)
/* 00456E6C 99610003 */  lwr   $at, 3($t3)
/* 00456E70 256B000C */  addiu $t3, $t3, 0xc
/* 00456E74 A9E10000 */  swl   $at, ($t7)
/* 00456E78 B9E10003 */  swr   $at, 3($t7)
/* 00456E7C 8961FFF8 */  lwl   $at, -8($t3)
/* 00456E80 9961FFFB */  lwr   $at, -5($t3)
/* 00456E84 25EF000C */  addiu $t7, $t7, 0xc
/* 00456E88 A9E1FFF8 */  swl   $at, -8($t7)
/* 00456E8C B9E1FFFB */  swr   $at, -5($t7)
/* 00456E90 8961FFFC */  lwl   $at, -4($t3)
/* 00456E94 9961FFFF */  lwr   $at, -1($t3)
/* 00456E98 00000000 */  nop   
/* 00456E9C A9E1FFFC */  swl   $at, -4($t7)
/* 00456EA0 156EFFF1 */  bne   $t3, $t6, .L00456E68
/* 00456EA4 B9E1FFFF */   swr   $at, -1($t7)
/* 00456EA8 89610000 */  lwl   $at, ($t3)
/* 00456EAC 99610003 */  lwr   $at, 3($t3)
/* 00456EB0 8F888C68 */  lw     $t0, %got(emptystring)($gp)
/* 00456EB4 A9E10000 */  swl   $at, ($t7)
/* 00456EB8 B9E10003 */  swr   $at, 3($t7)
/* 00456EBC 896E0004 */  lwl   $t6, 4($t3)
/* 00456EC0 996E0007 */  lwr   $t6, 7($t3)
/* 00456EC4 00000000 */  nop   
/* 00456EC8 A9EE0004 */  swl   $t6, 4($t7)
/* 00456ECC B9EE0007 */  swr   $t6, 7($t7)
/* 00456ED0 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00456ED4 8D080000 */  lw    $t0, ($t0)
/* 00456ED8 8FA7000C */  lw    $a3, 0xc($sp)
/* 00456EDC 8FA60008 */  lw    $a2, 8($sp)
/* 00456EE0 8FA50004 */  lw    $a1, 4($sp)
/* 00456EE4 8FA40000 */  lw    $a0, ($sp)
/* 00456EE8 AFA00054 */  sw    $zero, 0x54($sp)
/* 00456EEC 0320F809 */  jalr  $t9
/* 00456EF0 AFA80050 */   sw    $t0, 0x50($sp)
/* 00456EF4 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00456EF8 00000000 */  nop   
.L00456EFC:
/* 00456EFC 8FBF0064 */  lw    $ra, 0x64($sp)
.L00456F00:
/* 00456F00 27BD0078 */  addiu $sp, $sp, 0x78
/* 00456F04 03E00008 */  jr    $ra
/* 00456F08 00000000 */   nop   

    .type parse_option, @function
    .size parse_option, .-parse_option
    .end parse_option

    .type func_00456F0C, @function
func_00456F0C:
    # 00456FEC parse_alias
/* 00456F0C 3C1C0FBD */  .cpload $t9
/* 00456F10 279C3354 */  
/* 00456F14 0399E021 */  
/* 00456F18 27BDFF98 */  addiu $sp, $sp, -0x68
/* 00456F1C 2C810020 */  sltiu $at, $a0, 0x20
/* 00456F20 AFBF0064 */  sw    $ra, 0x64($sp)
/* 00456F24 AFBC0060 */  sw    $gp, 0x60($sp)
/* 00456F28 10200003 */  beqz  $at, .L00456F38
/* 00456F2C AFA40068 */   sw    $a0, 0x68($sp)
/* 00456F30 1000002A */  b     .L00456FDC
/* 00456F34 24030001 */   li    $v1, 1
.L00456F38:
/* 00456F38 8F8E8070 */  lw    $t6, %got(RO_1001B234)($gp)
/* 00456F3C 03A0C825 */  move  $t9, $sp
/* 00456F40 25CEB234 */  addiu $t6, %lo(RO_1001B234) # addiu $t6, $t6, -0x4dcc
/* 00456F44 25D80048 */  addiu $t8, $t6, 0x48
.L00456F48:
/* 00456F48 89C10000 */  lwl   $at, ($t6)
/* 00456F4C 99C10003 */  lwr   $at, 3($t6)
/* 00456F50 25CE000C */  addiu $t6, $t6, 0xc
/* 00456F54 AB210000 */  swl   $at, ($t9)
/* 00456F58 BB210003 */  swr   $at, 3($t9)
/* 00456F5C 89C1FFF8 */  lwl   $at, -8($t6)
/* 00456F60 99C1FFFB */  lwr   $at, -5($t6)
/* 00456F64 2739000C */  addiu $t9, $t9, 0xc
/* 00456F68 AB21FFF8 */  swl   $at, -8($t9)
/* 00456F6C BB21FFFB */  swr   $at, -5($t9)
/* 00456F70 89C1FFFC */  lwl   $at, -4($t6)
/* 00456F74 99C1FFFF */  lwr   $at, -1($t6)
/* 00456F78 00000000 */  nop   
/* 00456F7C AB21FFFC */  swl   $at, -4($t9)
/* 00456F80 15D8FFF1 */  bne   $t6, $t8, .L00456F48
/* 00456F84 BB21FFFF */   swr   $at, -1($t9)
/* 00456F88 89C10000 */  lwl   $at, ($t6)
/* 00456F8C 99C10003 */  lwr   $at, 3($t6)
/* 00456F90 8F888C68 */  lw     $t0, %got(emptystring)($gp)
/* 00456F94 AB210000 */  swl   $at, ($t9)
/* 00456F98 BB210003 */  swr   $at, 3($t9)
/* 00456F9C 89D80004 */  lwl   $t8, 4($t6)
/* 00456FA0 99D80007 */  lwr   $t8, 7($t6)
/* 00456FA4 24090001 */  li    $t1, 1
/* 00456FA8 AB380004 */  swl   $t8, 4($t9)
/* 00456FAC BB380007 */  swr   $t8, 7($t9)
/* 00456FB0 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00456FB4 8D080000 */  lw    $t0, ($t0)
/* 00456FB8 8FA7000C */  lw    $a3, 0xc($sp)
/* 00456FBC 8FA60008 */  lw    $a2, 8($sp)
/* 00456FC0 8FA50004 */  lw    $a1, 4($sp)
/* 00456FC4 8FA40000 */  lw    $a0, ($sp)
/* 00456FC8 AFA90054 */  sw    $t1, 0x54($sp)
/* 00456FCC 0320F809 */  jalr  $t9
/* 00456FD0 AFA80050 */   sw    $t0, 0x50($sp)
/* 00456FD4 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00456FD8 00001825 */  move  $v1, $zero
.L00456FDC:
/* 00456FDC 8FBF0064 */  lw    $ra, 0x64($sp)
/* 00456FE0 27BD0068 */  addiu $sp, $sp, 0x68
/* 00456FE4 03E00008 */  jr    $ra
/* 00456FE8 00601025 */   move  $v0, $v1

glabel parse_alias
    .ent parse_alias
    # 004594BC parsestmt
/* 00456FEC 3C1C0FBD */  .cpload $t9
/* 00456FF0 279C3274 */  
/* 00456FF4 0399E021 */  
/* 00456FF8 8F8E8D64 */  lw     $t6, %got(binasmfyle)($gp)
/* 00456FFC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00457000 8DCE0000 */  lw    $t6, ($t6)
/* 00457004 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00457008 AFBC0020 */  sw    $gp, 0x20($sp)
/* 0045700C AFA40028 */  sw    $a0, 0x28($sp)
/* 00457010 8F998028 */  lw    $t9, %got(func_00456F0C)($gp)
/* 00457014 91C40006 */  lbu   $a0, 6($t6)
/* 00457018 27396F0C */  addiu $t9, %lo(func_00456F0C) # addiu $t9, $t9, 0x6f0c
/* 0045701C 00047E00 */  sll   $t7, $a0, 0x18
/* 00457020 000F2642 */  srl   $a0, $t7, 0x19
/* 00457024 0320F809 */  jalr  $t9
/* 00457028 27A20028 */   addiu $v0, $sp, 0x28
/* 0045702C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00457030 10400021 */  beqz  $v0, .L004570B8
/* 00457034 8FBF0024 */   lw    $ra, 0x24($sp)
/* 00457038 8F998D64 */  lw     $t9, %got(binasmfyle)($gp)
/* 0045703C 27A20028 */  addiu $v0, $sp, 0x28
/* 00457040 8F390000 */  lw    $t9, ($t9)
/* 00457044 00000000 */  nop   
/* 00457048 97240006 */  lhu   $a0, 6($t9)
/* 0045704C 8F998028 */  lw    $t9, %got(func_00456F0C)($gp)
/* 00457050 000445C0 */  sll   $t0, $a0, 0x17
/* 00457054 27396F0C */  addiu $t9, %lo(func_00456F0C) # addiu $t9, $t9, 0x6f0c
/* 00457058 0320F809 */  jalr  $t9
/* 0045705C 00082642 */   srl   $a0, $t0, 0x19
/* 00457060 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00457064 10400013 */  beqz  $v0, .L004570B4
/* 00457068 00003825 */   move  $a3, $zero
/* 0045706C 8F828D64 */  lw     $v0, %got(binasmfyle)($gp)
/* 00457070 93A4002B */  lbu   $a0, 0x2b($sp)
/* 00457074 8C420000 */  lw    $v0, ($v0)
/* 00457078 8F9982E4 */  lw    $t9, %call16(fill_pseudo)($gp)
/* 0045707C 90450006 */  lbu   $a1, 6($v0)
/* 00457080 94460006 */  lhu   $a2, 6($v0)
/* 00457084 388A0030 */  xori  $t2, $a0, 0x30
/* 00457088 2D4A0001 */  sltiu $t2, $t2, 1
/* 0045708C 00055E00 */  sll   $t3, $a1, 0x18
/* 00457090 00066DC0 */  sll   $t5, $a2, 0x17
/* 00457094 000D3642 */  srl   $a2, $t5, 0x19
/* 00457098 000B2E42 */  srl   $a1, $t3, 0x19
/* 0045709C 2544001B */  addiu $a0, $t2, 0x1b
/* 004570A0 AFA00010 */  sw    $zero, 0x10($sp)
/* 004570A4 0320F809 */  jalr  $t9
/* 004570A8 AFA00014 */   sw    $zero, 0x14($sp)
/* 004570AC 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004570B0 00000000 */  nop   
.L004570B4:
/* 004570B4 8FBF0024 */  lw    $ra, 0x24($sp)
.L004570B8:
/* 004570B8 27BD0028 */  addiu $sp, $sp, 0x28
/* 004570BC 03E00008 */  jr    $ra
/* 004570C0 00000000 */   nop   

    .type parse_alias, @function
    .size parse_alias, .-parse_alias
    .end parse_alias

glabel parseset
    .ent parseset
    # 004594BC parsestmt
/* 004570C4 3C1C0FBD */  .cpload $t9
/* 004570C8 279C319C */  
/* 004570CC 0399E021 */  
/* 004570D0 8F828D64 */  lw     $v0, %got(binasmfyle)($gp)
/* 004570D4 27BDFF98 */  addiu $sp, $sp, -0x68
/* 004570D8 8C420000 */  lw    $v0, ($v0)
/* 004570DC AFBF0064 */  sw    $ra, 0x64($sp)
/* 004570E0 9043000B */  lbu   $v1, 0xb($v0)
/* 004570E4 AFBC0060 */  sw    $gp, 0x60($sp)
/* 004570E8 246EFFFF */  addiu $t6, $v1, -1
/* 004570EC 2DC10010 */  sltiu $at, $t6, 0x10
/* 004570F0 10200113 */  beqz  $at, .L00457540
/* 004570F4 240506A6 */   li    $a1, 1702
/* 004570F8 8F818070 */  lw    $at, %got(jtbl_1001B380)($gp)
/* 004570FC 000E7080 */  sll   $t6, $t6, 2
/* 00457100 002E0821 */  addu  $at, $at, $t6
/* 00457104 8C2EB380 */  lw    $t6, %lo(jtbl_1001B380)($at)
/* 00457108 00000000 */  nop   
/* 0045710C 01DC7021 */  addu  $t6, $t6, $gp
/* 00457110 01C00008 */  jr    $t6
/* 00457114 00000000 */   nop   
.L00457118:
/* 00457118 8F838B8C */  lw     $v1, %got(reorderflag)($gp)
/* 0045711C 00000000 */  nop   
/* 00457120 906F0000 */  lbu   $t7, ($v1)
/* 00457124 00000000 */  nop   
/* 00457128 15E0000C */  bnez  $t7, .L0045715C
/* 0045712C 00000000 */   nop   
/* 00457130 8F988BB0 */  lw     $t8, %got(bbindex)($gp)
/* 00457134 00000000 */  nop   
/* 00457138 8F180000 */  lw    $t8, ($t8)
/* 0045713C 00000000 */  nop   
/* 00457140 13000006 */  beqz  $t8, .L0045715C
/* 00457144 00000000 */   nop   
/* 00457148 8F818C8C */  lw     $at, %got(endofbasicb)($gp)
/* 0045714C 24020001 */  li    $v0, 1
/* 00457150 A0220000 */  sb    $v0, ($at)
/* 00457154 10000102 */  b     .L00457560
/* 00457158 A0820000 */   sb    $v0, ($a0)
.L0045715C:
/* 0045715C 8F998C88 */  lw     $t9, %got(macroflag)($gp)
/* 00457160 24020001 */  li    $v0, 1
/* 00457164 A0620000 */  sb    $v0, ($v1)
/* 00457168 93390000 */  lbu   $t9, ($t9)
/* 0045716C 00000000 */  nop   
/* 00457170 172000FC */  bnez  $t9, .L00457564
/* 00457174 8FBF0064 */   lw    $ra, 0x64($sp)
/* 00457178 8F888070 */  lw    $t0, %got(RO_1001B32E)($gp)
/* 0045717C 03A05825 */  move  $t3, $sp
/* 00457180 2508B32E */  addiu $t0, %lo(RO_1001B32E) # addiu $t0, $t0, -0x4cd2
/* 00457184 250A0048 */  addiu $t2, $t0, 0x48
.L00457188:
/* 00457188 89010000 */  lwl   $at, ($t0)
/* 0045718C 99010003 */  lwr   $at, 3($t0)
/* 00457190 2508000C */  addiu $t0, $t0, 0xc
/* 00457194 A9610000 */  swl   $at, ($t3)
/* 00457198 B9610003 */  swr   $at, 3($t3)
/* 0045719C 8901FFF8 */  lwl   $at, -8($t0)
/* 004571A0 9901FFFB */  lwr   $at, -5($t0)
/* 004571A4 256B000C */  addiu $t3, $t3, 0xc
/* 004571A8 A961FFF8 */  swl   $at, -8($t3)
/* 004571AC B961FFFB */  swr   $at, -5($t3)
/* 004571B0 8901FFFC */  lwl   $at, -4($t0)
/* 004571B4 9901FFFF */  lwr   $at, -1($t0)
/* 004571B8 00000000 */  nop   
/* 004571BC A961FFFC */  swl   $at, -4($t3)
/* 004571C0 150AFFF1 */  bne   $t0, $t2, .L00457188
/* 004571C4 B961FFFF */   swr   $at, -1($t3)
/* 004571C8 89010000 */  lwl   $at, ($t0)
/* 004571CC 99010003 */  lwr   $at, 3($t0)
/* 004571D0 8F8C8C68 */  lw     $t4, %got(emptystring)($gp)
/* 004571D4 A9610000 */  swl   $at, ($t3)
/* 004571D8 B9610003 */  swr   $at, 3($t3)
/* 004571DC 890A0004 */  lwl   $t2, 4($t0)
/* 004571E0 990A0007 */  lwr   $t2, 7($t0)
/* 004571E4 240D0002 */  li    $t5, 2
/* 004571E8 A96A0004 */  swl   $t2, 4($t3)
/* 004571EC B96A0007 */  swr   $t2, 7($t3)
/* 004571F0 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 004571F4 8D8C0000 */  lw    $t4, ($t4)
/* 004571F8 8FA7000C */  lw    $a3, 0xc($sp)
/* 004571FC 8FA60008 */  lw    $a2, 8($sp)
/* 00457200 8FA50004 */  lw    $a1, 4($sp)
/* 00457204 8FA40000 */  lw    $a0, ($sp)
/* 00457208 AFAD0054 */  sw    $t5, 0x54($sp)
/* 0045720C 0320F809 */  jalr  $t9
/* 00457210 AFAC0050 */   sw    $t4, 0x50($sp)
/* 00457214 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00457218 100000D2 */  b     .L00457564
/* 0045721C 8FBF0064 */   lw    $ra, 0x64($sp)
.L00457220:
/* 00457220 8F818CB8 */  lw     $at, %got(has_noreorder)($gp)
/* 00457224 8F838B2C */  lw     $v1, %got(non_reorg_flag)($gp)
/* 00457228 24020001 */  li    $v0, 1
/* 0045722C A0220000 */  sb    $v0, ($at)
/* 00457230 8C6E0000 */  lw    $t6, ($v1)
/* 00457234 240F4000 */  li    $t7, 16384
/* 00457238 15C00002 */  bnez  $t6, .L00457244
/* 0045723C 00000000 */   nop   
/* 00457240 AC6F0000 */  sw    $t7, ($v1)
.L00457244:
/* 00457244 8F838B8C */  lw     $v1, %got(reorderflag)($gp)
/* 00457248 00000000 */  nop   
/* 0045724C 90780000 */  lbu   $t8, ($v1)
/* 00457250 00000000 */  nop   
/* 00457254 1300000C */  beqz  $t8, .L00457288
/* 00457258 00000000 */   nop   
/* 0045725C 8F998BB0 */  lw     $t9, %got(bbindex)($gp)
/* 00457260 00000000 */  nop   
/* 00457264 8F390000 */  lw    $t9, ($t9)
/* 00457268 00000000 */  nop   
/* 0045726C 13200006 */  beqz  $t9, .L00457288
/* 00457270 00000000 */   nop   
/* 00457274 8F818C8C */  lw     $at, %got(endofbasicb)($gp)
/* 00457278 00000000 */  nop   
/* 0045727C A0220000 */  sb    $v0, ($at)
/* 00457280 100000B7 */  b     .L00457560
/* 00457284 A0820000 */   sb    $v0, ($a0)
.L00457288:
/* 00457288 100000B5 */  b     .L00457560
/* 0045728C A0600000 */   sb    $zero, ($v1)
.L00457290:
/* 00457290 8F838B90 */  lw     $v1, %got(transform_flag)($gp)
/* 00457294 24020001 */  li    $v0, 1
/* 00457298 90690000 */  lbu   $t1, ($v1)
/* 0045729C 00000000 */  nop   
/* 004572A0 1520000C */  bnez  $t1, .L004572D4
/* 004572A4 00000000 */   nop   
/* 004572A8 8F8A8BB0 */  lw     $t2, %got(bbindex)($gp)
/* 004572AC 00000000 */  nop   
/* 004572B0 8D4A0000 */  lw    $t2, ($t2)
/* 004572B4 00000000 */  nop   
/* 004572B8 11400006 */  beqz  $t2, .L004572D4
/* 004572BC 00000000 */   nop   
/* 004572C0 8F818C8C */  lw     $at, %got(endofbasicb)($gp)
/* 004572C4 24020001 */  li    $v0, 1
/* 004572C8 A0220000 */  sb    $v0, ($at)
/* 004572CC 100000A4 */  b     .L00457560
/* 004572D0 A0820000 */   sb    $v0, ($a0)
.L004572D4:
/* 004572D4 100000A2 */  b     .L00457560
/* 004572D8 A0620000 */   sb    $v0, ($v1)
.L004572DC:
/* 004572DC 8F838B90 */  lw     $v1, %got(transform_flag)($gp)
/* 004572E0 00000000 */  nop   
/* 004572E4 90680000 */  lbu   $t0, ($v1)
/* 004572E8 00000000 */  nop   
/* 004572EC 1100000C */  beqz  $t0, .L00457320
/* 004572F0 00000000 */   nop   
/* 004572F4 8F8B8BB0 */  lw     $t3, %got(bbindex)($gp)
/* 004572F8 00000000 */  nop   
/* 004572FC 8D6B0000 */  lw    $t3, ($t3)
/* 00457300 00000000 */  nop   
/* 00457304 11600006 */  beqz  $t3, .L00457320
/* 00457308 00000000 */   nop   
/* 0045730C 8F818C8C */  lw     $at, %got(endofbasicb)($gp)
/* 00457310 24020001 */  li    $v0, 1
/* 00457314 A0220000 */  sb    $v0, ($at)
/* 00457318 10000091 */  b     .L00457560
/* 0045731C A0820000 */   sb    $v0, ($a0)
.L00457320:
/* 00457320 1000008F */  b     .L00457560
/* 00457324 A0600000 */   sb    $zero, ($v1)
.L00457328:
/* 00457328 8F818C88 */  lw     $at, %got(macroflag)($gp)
/* 0045732C 24020001 */  li    $v0, 1
/* 00457330 1000008B */  b     .L00457560
/* 00457334 A0220000 */   sb    $v0, ($at)
.L00457338:
/* 00457338 8F818C88 */  lw     $at, %got(macroflag)($gp)
/* 0045733C 8F838B8C */  lw     $v1, %got(reorderflag)($gp)
/* 00457340 A0200000 */  sb    $zero, ($at)
/* 00457344 906C0000 */  lbu   $t4, ($v1)
/* 00457348 00000000 */  nop   
/* 0045734C 11800085 */  beqz  $t4, .L00457564
/* 00457350 8FBF0064 */   lw    $ra, 0x64($sp)
/* 00457354 8F8D8070 */  lw    $t5, %got(RO_1001B2DE)($gp)
/* 00457358 03A0C025 */  move  $t8, $sp
/* 0045735C 25ADB2DE */  addiu $t5, %lo(RO_1001B2DE) # addiu $t5, $t5, -0x4d22
/* 00457360 25AF0048 */  addiu $t7, $t5, 0x48
.L00457364:
/* 00457364 89A10000 */  lwl   $at, ($t5)
/* 00457368 99A10003 */  lwr   $at, 3($t5)
/* 0045736C 25AD000C */  addiu $t5, $t5, 0xc
/* 00457370 AB010000 */  swl   $at, ($t8)
/* 00457374 BB010003 */  swr   $at, 3($t8)
/* 00457378 89A1FFF8 */  lwl   $at, -8($t5)
/* 0045737C 99A1FFFB */  lwr   $at, -5($t5)
/* 00457380 2718000C */  addiu $t8, $t8, 0xc
/* 00457384 AB01FFF8 */  swl   $at, -8($t8)
/* 00457388 BB01FFFB */  swr   $at, -5($t8)
/* 0045738C 89A1FFFC */  lwl   $at, -4($t5)
/* 00457390 99A1FFFF */  lwr   $at, -1($t5)
/* 00457394 00000000 */  nop   
/* 00457398 AB01FFFC */  swl   $at, -4($t8)
/* 0045739C 15AFFFF1 */  bne   $t5, $t7, .L00457364
/* 004573A0 BB01FFFF */   swr   $at, -1($t8)
/* 004573A4 89A10000 */  lwl   $at, ($t5)
/* 004573A8 99A10003 */  lwr   $at, 3($t5)
/* 004573AC 8F998C68 */  lw     $t9, %got(emptystring)($gp)
/* 004573B0 AB010000 */  swl   $at, ($t8)
/* 004573B4 BB010003 */  swr   $at, 3($t8)
/* 004573B8 89AF0004 */  lwl   $t7, 4($t5)
/* 004573BC 99AF0007 */  lwr   $t7, 7($t5)
/* 004573C0 24090002 */  li    $t1, 2
/* 004573C4 AB0F0004 */  swl   $t7, 4($t8)
/* 004573C8 BB0F0007 */  swr   $t7, 7($t8)
/* 004573CC 8F390000 */  lw    $t9, ($t9)
/* 004573D0 8FA7000C */  lw    $a3, 0xc($sp)
/* 004573D4 AFB90050 */  sw    $t9, 0x50($sp)
/* 004573D8 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 004573DC 8FA60008 */  lw    $a2, 8($sp)
/* 004573E0 8FA50004 */  lw    $a1, 4($sp)
/* 004573E4 8FA40000 */  lw    $a0, ($sp)
/* 004573E8 0320F809 */  jalr  $t9
/* 004573EC AFA90054 */   sw    $t1, 0x54($sp)
/* 004573F0 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004573F4 1000005B */  b     .L00457564
/* 004573F8 8FBF0064 */   lw    $ra, 0x64($sp)
.L004573FC:
/* 004573FC 8F818BB4 */  lw     $at, %got(atflag)($gp)
/* 00457400 24020001 */  li    $v0, 1
/* 00457404 10000056 */  b     .L00457560
/* 00457408 A0220000 */   sb    $v0, ($at)
.L0045740C:
/* 0045740C 8F818BB4 */  lw     $at, %got(atflag)($gp)
/* 00457410 10000053 */  b     .L00457560
/* 00457414 A0200000 */   sb    $zero, ($at)
.L00457418:
/* 00457418 8F838B2C */  lw     $v1, %got(non_reorg_flag)($gp)
/* 0045741C 24020001 */  li    $v0, 1
/* 00457420 8C6A0000 */  lw    $t2, ($v1)
/* 00457424 24084000 */  li    $t0, 16384
/* 00457428 15400002 */  bnez  $t2, .L00457434
/* 0045742C 00000000 */   nop   
/* 00457430 AC680000 */  sw    $t0, ($v1)
.L00457434:
/* 00457434 8F818C10 */  lw     $at, %got(volatileflag)($gp)
/* 00457438 10000049 */  b     .L00457560
/* 0045743C A0220000 */   sb    $v0, ($at)
.L00457440:
/* 00457440 8F818C10 */  lw     $at, %got(volatileflag)($gp)
/* 00457444 10000046 */  b     .L00457560
/* 00457448 A0200000 */   sb    $zero, ($at)
.L0045744C:
/* 0045744C 8F818C14 */  lw     $at, %got(movableflag)($gp)
/* 00457450 24020001 */  li    $v0, 1
/* 00457454 10000042 */  b     .L00457560
/* 00457458 A0220000 */   sb    $v0, ($at)
.L0045745C:
/* 0045745C 8F838B2C */  lw     $v1, %got(non_reorg_flag)($gp)
/* 00457460 240C4000 */  li    $t4, 16384
/* 00457464 8C6B0000 */  lw    $t3, ($v1)
/* 00457468 03A0C025 */  move  $t8, $sp
/* 0045746C 15600002 */  bnez  $t3, .L00457478
/* 00457470 00000000 */   nop   
/* 00457474 AC6C0000 */  sw    $t4, ($v1)
.L00457478:
/* 00457478 8F8E8070 */  lw    $t6, %got(RO_1001B28E)($gp)
/* 0045747C 8F818C14 */  lw     $at, %got(movableflag)($gp)
/* 00457480 25CEB28E */  addiu $t6, %lo(RO_1001B28E) # addiu $t6, $t6, -0x4d72
/* 00457484 25CD0048 */  addiu $t5, $t6, 0x48
/* 00457488 A0200000 */  sb    $zero, ($at)
.L0045748C:
/* 0045748C 89C10000 */  lwl   $at, ($t6)
/* 00457490 99C10003 */  lwr   $at, 3($t6)
/* 00457494 25CE000C */  addiu $t6, $t6, 0xc
/* 00457498 AB010000 */  swl   $at, ($t8)
/* 0045749C BB010003 */  swr   $at, 3($t8)
/* 004574A0 89C1FFF8 */  lwl   $at, -8($t6)
/* 004574A4 99C1FFFB */  lwr   $at, -5($t6)
/* 004574A8 2718000C */  addiu $t8, $t8, 0xc
/* 004574AC AB01FFF8 */  swl   $at, -8($t8)
/* 004574B0 BB01FFFB */  swr   $at, -5($t8)
/* 004574B4 89C1FFFC */  lwl   $at, -4($t6)
/* 004574B8 99C1FFFF */  lwr   $at, -1($t6)
/* 004574BC 00000000 */  nop   
/* 004574C0 AB01FFFC */  swl   $at, -4($t8)
/* 004574C4 15CDFFF1 */  bne   $t6, $t5, .L0045748C
/* 004574C8 BB01FFFF */   swr   $at, -1($t8)
/* 004574CC 89C10000 */  lwl   $at, ($t6)
/* 004574D0 99C10003 */  lwr   $at, 3($t6)
/* 004574D4 8F998C68 */  lw     $t9, %got(emptystring)($gp)
/* 004574D8 AB010000 */  swl   $at, ($t8)
/* 004574DC BB010003 */  swr   $at, 3($t8)
/* 004574E0 89CD0004 */  lwl   $t5, 4($t6)
/* 004574E4 99CD0007 */  lwr   $t5, 7($t6)
/* 004574E8 24090002 */  li    $t1, 2
/* 004574EC AB0D0004 */  swl   $t5, 4($t8)
/* 004574F0 BB0D0007 */  swr   $t5, 7($t8)
/* 004574F4 8F390000 */  lw    $t9, ($t9)
/* 004574F8 8FA7000C */  lw    $a3, 0xc($sp)
/* 004574FC AFB90050 */  sw    $t9, 0x50($sp)
/* 00457500 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00457504 8FA60008 */  lw    $a2, 8($sp)
/* 00457508 8FA50004 */  lw    $a1, 4($sp)
/* 0045750C 8FA40000 */  lw    $a0, ($sp)
/* 00457510 0320F809 */  jalr  $t9
/* 00457514 AFA90054 */   sw    $t1, 0x54($sp)
/* 00457518 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045751C 10000011 */  b     .L00457564
/* 00457520 8FBF0064 */   lw    $ra, 0x64($sp)
.L00457524:
/* 00457524 8F818B94 */  lw     $at, %got(opts)($gp)
/* 00457528 24020001 */  li    $v0, 1
/* 0045752C 1000000C */  b     .L00457560
/* 00457530 A0220004 */   sb    $v0, 4($at)
.L00457534:
/* 00457534 8F818B94 */  lw     $at, %got(opts)($gp)
/* 00457538 10000009 */  b     .L00457560
/* 0045753C A0200004 */   sb    $zero, 4($at)
.L00457540:
/* 00457540 8F868070 */  lw    $a2, %got(RO_1001B284)($gp)
/* 00457544 8F99868C */  lw    $t9, %call16(caseerror)($gp)
/* 00457548 24040002 */  li    $a0, 2
/* 0045754C 2407000A */  li    $a3, 10
/* 00457550 0320F809 */  jalr  $t9
/* 00457554 24C6B284 */   addiu $a2, %lo(RO_1001B284) # addiu $a2, $a2, -0x4d7c
/* 00457558 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045755C 00000000 */  nop   
.L00457560:
/* 00457560 8FBF0064 */  lw    $ra, 0x64($sp)
.L00457564:
/* 00457564 27BD0068 */  addiu $sp, $sp, 0x68
/* 00457568 03E00008 */  jr    $ra
/* 0045756C 00000000 */   nop   

    .type parseset, @function
    .size parseset, .-parseset
    .end parseset

glabel parsespace
    .ent parsespace
    # 004594BC parsestmt
/* 00457570 3C1C0FBD */  .cpload $t9
/* 00457574 279C2CF0 */  
/* 00457578 0399E021 */  
/* 0045757C 27BDFF30 */  addiu $sp, $sp, -0xd0
/* 00457580 AFB100B0 */  sw    $s1, 0xb0($sp)
/* 00457584 8F918BE8 */  lw     $s1, %got(currsegment)($gp)
/* 00457588 AFB000AC */  sw    $s0, 0xac($sp)
/* 0045758C 8F908D64 */  lw     $s0, %got(binasmfyle)($gp)
/* 00457590 92220000 */  lbu   $v0, ($s1)
/* 00457594 8E100000 */  lw    $s0, ($s0)
/* 00457598 AFBF00CC */  sw    $ra, 0xcc($sp)
/* 0045759C AFBC00C8 */  sw    $gp, 0xc8($sp)
/* 004575A0 AFB600C4 */  sw    $s6, 0xc4($sp)
/* 004575A4 AFB500C0 */  sw    $s5, 0xc0($sp)
/* 004575A8 AFB400BC */  sw    $s4, 0xbc($sp)
/* 004575AC AFB300B8 */  sw    $s3, 0xb8($sp)
/* 004575B0 10400004 */  beqz  $v0, .L004575C4
/* 004575B4 AFB200B4 */   sw    $s2, 0xb4($sp)
/* 004575B8 2401000F */  li    $at, 15
/* 004575BC 1441000C */  bne   $v0, $at, .L004575F0
/* 004575C0 24050001 */   li    $a1, 1
.L004575C4:
/* 004575C4 8F9982E4 */  lw    $t9, %call16(fill_pseudo)($gp)
/* 004575C8 8E050008 */  lw    $a1, 8($s0)
/* 004575CC 2404000D */  li    $a0, 13
/* 004575D0 00003025 */  move  $a2, $zero
/* 004575D4 00003825 */  move  $a3, $zero
/* 004575D8 AFA00010 */  sw    $zero, 0x10($sp)
/* 004575DC 0320F809 */  jalr  $t9
/* 004575E0 AFA00014 */   sw    $zero, 0x14($sp)
/* 004575E4 8FBC00C8 */  lw    $gp, 0xc8($sp)
/* 004575E8 100000C1 */  b     .L004578F0
/* 004575EC 8FBF00CC */   lw    $ra, 0xcc($sp)
.L004575F0:
/* 004575F0 8F968B64 */  lw     $s6, %got(currsegmentindex)($gp)
/* 004575F4 8F9985C4 */  lw    $t9, %call16(definealabel)($gp)
/* 004575F8 8EC40000 */  lw    $a0, ($s6)
/* 004575FC 0320F809 */  jalr  $t9
/* 00457600 00003025 */   move  $a2, $zero
/* 00457604 8FBC00C8 */  lw    $gp, 0xc8($sp)
/* 00457608 922F0000 */  lbu   $t7, ($s1)
/* 0045760C 8F8E8D84 */  lw     $t6, %got(realsegments)($gp)
/* 00457610 2DF80020 */  sltiu $t8, $t7, 0x20
/* 00457614 8DCE0000 */  lw    $t6, ($t6)
/* 00457618 0018C823 */  negu  $t9, $t8
/* 0045761C 01D94024 */  and   $t0, $t6, $t9
/* 00457620 01E84804 */  sllv  $t1, $t0, $t7
/* 00457624 05200043 */  bltz  $t1, .L00457734
/* 00457628 03A04025 */   move  $t0, $sp
/* 0045762C 8F8A8070 */  lw    $t2, %got(RO_1001B460)($gp)
/* 00457630 03A06825 */  move  $t5, $sp
/* 00457634 254AB460 */  addiu $t2, %lo(RO_1001B460) # addiu $t2, $t2, -0x4ba0
/* 00457638 254C0048 */  addiu $t4, $t2, 0x48
.L0045763C:
/* 0045763C 89410000 */  lwl   $at, ($t2)
/* 00457640 99410003 */  lwr   $at, 3($t2)
/* 00457644 254A000C */  addiu $t2, $t2, 0xc
/* 00457648 A9A10000 */  swl   $at, ($t5)
/* 0045764C B9A10003 */  swr   $at, 3($t5)
/* 00457650 8941FFF8 */  lwl   $at, -8($t2)
/* 00457654 9941FFFB */  lwr   $at, -5($t2)
/* 00457658 25AD000C */  addiu $t5, $t5, 0xc
/* 0045765C A9A1FFF8 */  swl   $at, -8($t5)
/* 00457660 B9A1FFFB */  swr   $at, -5($t5)
/* 00457664 8941FFFC */  lwl   $at, -4($t2)
/* 00457668 9941FFFF */  lwr   $at, -1($t2)
/* 0045766C 00000000 */  nop   
/* 00457670 A9A1FFFC */  swl   $at, -4($t5)
/* 00457674 154CFFF1 */  bne   $t2, $t4, .L0045763C
/* 00457678 B9A1FFFF */   swr   $at, -1($t5)
/* 0045767C 89410000 */  lwl   $at, ($t2)
/* 00457680 99410003 */  lwr   $at, 3($t2)
/* 00457684 8F988070 */  lw    $t8, %got(RO_1001B410)($gp)
/* 00457688 A9A10000 */  swl   $at, ($t5)
/* 0045768C B9A10003 */  swr   $at, 3($t5)
/* 00457690 894C0004 */  lwl   $t4, 4($t2)
/* 00457694 994C0007 */  lwr   $t4, 7($t2)
/* 00457698 2718B410 */  addiu $t8, %lo(RO_1001B410) # addiu $t8, $t8, -0x4bf0
/* 0045769C A9AC0004 */  swl   $t4, 4($t5)
/* 004576A0 27190048 */  addiu $t9, $t8, 0x48
/* 004576A4 B9AC0007 */  swr   $t4, 7($t5)
.L004576A8:
/* 004576A8 8B010000 */  lwl   $at, ($t8)
/* 004576AC 9B010003 */  lwr   $at, 3($t8)
/* 004576B0 2718000C */  addiu $t8, $t8, 0xc
/* 004576B4 A9010050 */  swl   $at, 0x50($t0)
/* 004576B8 B9010053 */  swr   $at, 0x53($t0)
/* 004576BC 8B01FFF8 */  lwl   $at, -8($t8)
/* 004576C0 9B01FFFB */  lwr   $at, -5($t8)
/* 004576C4 2508000C */  addiu $t0, $t0, 0xc
/* 004576C8 A9010048 */  swl   $at, 0x48($t0)
/* 004576CC B901004B */  swr   $at, 0x4b($t0)
/* 004576D0 8B01FFFC */  lwl   $at, -4($t8)
/* 004576D4 9B01FFFF */  lwr   $at, -1($t8)
/* 004576D8 00000000 */  nop   
/* 004576DC A901004C */  swl   $at, 0x4c($t0)
/* 004576E0 1719FFF1 */  bne   $t8, $t9, .L004576A8
/* 004576E4 B901004F */   swr   $at, 0x4f($t0)
/* 004576E8 8B010000 */  lwl   $at, ($t8)
/* 004576EC 9B010003 */  lwr   $at, 3($t8)
/* 004576F0 240F0701 */  li    $t7, 1793
/* 004576F4 A9010050 */  swl   $at, 0x50($t0)
/* 004576F8 B9010053 */  swr   $at, 0x53($t0)
/* 004576FC 8B190004 */  lwl   $t9, 4($t8)
/* 00457700 9B190007 */  lwr   $t9, 7($t8)
/* 00457704 00000000 */  nop   
/* 00457708 A9190054 */  swl   $t9, 0x54($t0)
/* 0045770C B9190057 */  swr   $t9, 0x57($t0)
/* 00457710 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 00457714 8FA7000C */  lw    $a3, 0xc($sp)
/* 00457718 8FA60008 */  lw    $a2, 8($sp)
/* 0045771C 8FA50004 */  lw    $a1, 4($sp)
/* 00457720 8FA40000 */  lw    $a0, ($sp)
/* 00457724 0320F809 */  jalr  $t9
/* 00457728 AFAF00A0 */   sw    $t7, 0xa0($sp)
/* 0045772C 8FBC00C8 */  lw    $gp, 0xc8($sp)
/* 00457730 00000000 */  nop   
.L00457734:
/* 00457734 8E030008 */  lw    $v1, 8($s0)
/* 00457738 2413002C */  li    $s3, 44
/* 0045773C 1860006B */  blez  $v1, .L004578EC
/* 00457740 00608825 */   move  $s1, $v1
/* 00457744 8EC40000 */  lw    $a0, ($s6)
/* 00457748 8F898AEC */  lw     $t1, %got(seg_ic)($gp)
/* 0045774C 00045080 */  sll   $t2, $a0, 2
/* 00457750 8F8C8AE0 */  lw     $t4, %got(memory)($gp)
/* 00457754 01445023 */  subu  $t2, $t2, $a0
/* 00457758 000A5080 */  sll   $t2, $t2, 2
/* 0045775C 8D290000 */  lw    $t1, ($t1)
/* 00457760 8D8C0000 */  lw    $t4, ($t4)
/* 00457764 01445023 */  subu  $t2, $t2, $a0
/* 00457768 000A5080 */  sll   $t2, $t2, 2
/* 0045776C 00045880 */  sll   $t3, $a0, 2
/* 00457770 8F958AEC */  lw     $s5, %got(seg_ic)($gp)
/* 00457774 8F948C68 */  lw     $s4, %got(emptystring)($gp)
/* 00457778 8F928AE0 */  lw     $s2, %got(memory)($gp)
/* 0045777C 012B1021 */  addu  $v0, $t1, $t3
/* 00457780 018A8021 */  addu  $s0, $t4, $t2
.L00457784:
/* 00457784 8C430000 */  lw    $v1, ($v0)
/* 00457788 8E0D0004 */  lw    $t5, 4($s0)
/* 0045778C 24060001 */  li    $a2, 1
/* 00457790 006D082A */  slt   $at, $v1, $t5
/* 00457794 1420000D */  bnez  $at, .L004577CC
/* 00457798 00602825 */   move  $a1, $v1
/* 0045779C 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 004577A0 8E070000 */  lw    $a3, ($s0)
/* 004577A4 26040004 */  addiu $a0, $s0, 4
/* 004577A8 0320F809 */  jalr  $t9
/* 004577AC AFA00010 */   sw    $zero, 0x10($sp)
/* 004577B0 8EC40000 */  lw    $a0, ($s6)
/* 004577B4 8E4E0000 */  lw    $t6, ($s2)
/* 004577B8 00930019 */  multu $a0, $s3
/* 004577BC 8FBC00C8 */  lw    $gp, 0xc8($sp)
/* 004577C0 0000C812 */  mflo  $t9
/* 004577C4 01D98021 */  addu  $s0, $t6, $t9
/* 004577C8 AE020000 */  sw    $v0, ($s0)
.L004577CC:
/* 004577CC 8E030000 */  lw    $v1, ($s0)
/* 004577D0 00000000 */  nop   
/* 004577D4 14600039 */  bnez  $v1, .L004578BC
/* 004577D8 00000000 */   nop   
/* 004577DC 8F988070 */  lw    $t8, %got(RO_1001B3C0)($gp)
/* 004577E0 03A04825 */  move  $t1, $sp
/* 004577E4 2718B3C0 */  addiu $t8, %lo(RO_1001B3C0) # addiu $t8, $t8, -0x4c40
/* 004577E8 270F0048 */  addiu $t7, $t8, 0x48
.L004577EC:
/* 004577EC 8B010000 */  lwl   $at, ($t8)
/* 004577F0 9B010003 */  lwr   $at, 3($t8)
/* 004577F4 2718000C */  addiu $t8, $t8, 0xc
/* 004577F8 A9210000 */  swl   $at, ($t1)
/* 004577FC B9210003 */  swr   $at, 3($t1)
/* 00457800 8B01FFF8 */  lwl   $at, -8($t8)
/* 00457804 9B01FFFB */  lwr   $at, -5($t8)
/* 00457808 2529000C */  addiu $t1, $t1, 0xc
/* 0045780C A921FFF8 */  swl   $at, -8($t1)
/* 00457810 B921FFFB */  swr   $at, -5($t1)
/* 00457814 8B01FFFC */  lwl   $at, -4($t8)
/* 00457818 9B01FFFF */  lwr   $at, -1($t8)
/* 0045781C 00000000 */  nop   
/* 00457820 A921FFFC */  swl   $at, -4($t1)
/* 00457824 170FFFF1 */  bne   $t8, $t7, .L004577EC
/* 00457828 B921FFFF */   swr   $at, -1($t1)
/* 0045782C 8B010000 */  lwl   $at, ($t8)
/* 00457830 9B010003 */  lwr   $at, 3($t8)
/* 00457834 240A0001 */  li    $t2, 1
/* 00457838 A9210000 */  swl   $at, ($t1)
/* 0045783C B9210003 */  swr   $at, 3($t1)
/* 00457840 8B0F0004 */  lwl   $t7, 4($t8)
/* 00457844 9B0F0007 */  lwr   $t7, 7($t8)
/* 00457848 00000000 */  nop   
/* 0045784C A92F0004 */  swl   $t7, 4($t1)
/* 00457850 B92F0007 */  swr   $t7, 7($t1)
/* 00457854 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00457858 8E810000 */  lw    $at, ($s4)
/* 0045785C 8FA7000C */  lw    $a3, 0xc($sp)
/* 00457860 8FA60008 */  lw    $a2, 8($sp)
/* 00457864 8FA50004 */  lw    $a1, 4($sp)
/* 00457868 8FA40000 */  lw    $a0, ($sp)
/* 0045786C AFAA0054 */  sw    $t2, 0x54($sp)
/* 00457870 0320F809 */  jalr  $t9
/* 00457874 AFA10050 */   sw    $at, 0x50($sp)
/* 00457878 8FBC00C8 */  lw    $gp, 0xc8($sp)
/* 0045787C 24040001 */  li    $a0, 1
/* 00457880 8F998688 */  lw    $t9, %call16(exit)($gp)
/* 00457884 00000000 */  nop   
/* 00457888 0320F809 */  jalr  $t9
/* 0045788C 00000000 */   nop   
/* 00457890 8EC40000 */  lw    $a0, ($s6)
/* 00457894 8E4D0000 */  lw    $t5, ($s2)
/* 00457898 00047080 */  sll   $t6, $a0, 2
/* 0045789C 01C47023 */  subu  $t6, $t6, $a0
/* 004578A0 000E7080 */  sll   $t6, $t6, 2
/* 004578A4 01C47023 */  subu  $t6, $t6, $a0
/* 004578A8 000E7080 */  sll   $t6, $t6, 2
/* 004578AC 01AE8021 */  addu  $s0, $t5, $t6
/* 004578B0 8E030000 */  lw    $v1, ($s0)
/* 004578B4 8FBC00C8 */  lw    $gp, 0xc8($sp)
/* 004578B8 00000000 */  nop   
.L004578BC:
/* 004578BC 8EB90000 */  lw    $t9, ($s5)
/* 004578C0 00044080 */  sll   $t0, $a0, 2
/* 004578C4 03281021 */  addu  $v0, $t9, $t0
/* 004578C8 8C4F0000 */  lw    $t7, ($v0)
/* 004578CC 2631FFFF */  addiu $s1, $s1, -1
/* 004578D0 006FC021 */  addu  $t8, $v1, $t7
/* 004578D4 A3000000 */  sb    $zero, ($t8)
/* 004578D8 8C490000 */  lw    $t1, ($v0)
/* 004578DC 00000000 */  nop   
/* 004578E0 252B0001 */  addiu $t3, $t1, 1
/* 004578E4 1620FFA7 */  bnez  $s1, .L00457784
/* 004578E8 AC4B0000 */   sw    $t3, ($v0)
.L004578EC:
/* 004578EC 8FBF00CC */  lw    $ra, 0xcc($sp)
.L004578F0:
/* 004578F0 8FB000AC */  lw    $s0, 0xac($sp)
/* 004578F4 8FB100B0 */  lw    $s1, 0xb0($sp)
/* 004578F8 8FB200B4 */  lw    $s2, 0xb4($sp)
/* 004578FC 8FB300B8 */  lw    $s3, 0xb8($sp)
/* 00457900 8FB400BC */  lw    $s4, 0xbc($sp)
/* 00457904 8FB500C0 */  lw    $s5, 0xc0($sp)
/* 00457908 8FB600C4 */  lw    $s6, 0xc4($sp)
/* 0045790C 03E00008 */  jr    $ra
/* 00457910 27BD00D0 */   addiu $sp, $sp, 0xd0

    .type parsespace, @function
    .size parsespace, .-parsespace
    .end parsespace

glabel doword
    .ent doword
    # 0041C3FC func_0041C3FC
    # 00458E18 parseword
/* 00457914 3C1C0FBD */  .cpload $t9
/* 00457918 279C294C */  
/* 0045791C 0399E021 */  
/* 00457920 27BDFF08 */  addiu $sp, $sp, -0xf8
/* 00457924 AFB400BC */  sw    $s4, 0xbc($sp)
/* 00457928 8F9985C4 */  lw    $t9, %call16(definealabel)($gp)
/* 0045792C 0080A025 */  move  $s4, $a0
/* 00457930 AFBE00D0 */  sw    $fp, 0xd0($sp)
/* 00457934 AFB500C0 */  sw    $s5, 0xc0($sp)
/* 00457938 00C0A825 */  move  $s5, $a2
/* 0045793C 00A0F025 */  move  $fp, $a1
/* 00457940 AFBF00D4 */  sw    $ra, 0xd4($sp)
/* 00457944 AFB300B8 */  sw    $s3, 0xb8($sp)
/* 00457948 8FA40108 */  lw    $a0, 0x108($sp)
/* 0045794C 00E09825 */  move  $s3, $a3
/* 00457950 AFBC00CC */  sw    $gp, 0xcc($sp)
/* 00457954 AFB700C8 */  sw    $s7, 0xc8($sp)
/* 00457958 AFB600C4 */  sw    $s6, 0xc4($sp)
/* 0045795C AFB200B4 */  sw    $s2, 0xb4($sp)
/* 00457960 AFB100B0 */  sw    $s1, 0xb0($sp)
/* 00457964 AFB000AC */  sw    $s0, 0xac($sp)
/* 00457968 02802825 */  move  $a1, $s4
/* 0045796C 0320F809 */  jalr  $t9
/* 00457970 00003025 */   move  $a2, $zero
/* 00457974 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00457978 24010002 */  li    $at, 2
/* 0045797C 16810013 */  bne   $s4, $at, .L004579CC
/* 00457980 24100002 */   li    $s0, 2
/* 00457984 8F8E8B60 */  lw     $t6, %got(shftaddr)($gp)
/* 00457988 24010001 */  li    $at, 1
/* 0045798C 8DCE0000 */  lw    $t6, ($t6)
/* 00457990 24100001 */  li    $s0, 1
/* 00457994 15C10002 */  bne   $t6, $at, .L004579A0
/* 00457998 00157843 */   sra   $t7, $s5, 1
/* 0045799C 01E0A825 */  move  $s5, $t7
.L004579A0:
/* 004579A0 8F998AE8 */  lw     $t9, %got(sexchange)($gp)
/* 004579A4 32B8FFFF */  andi  $t8, $s5, 0xffff
/* 004579A8 93390000 */  lbu   $t9, ($t9)
/* 004579AC 0300A825 */  move  $s5, $t8
/* 004579B0 13200016 */  beqz  $t9, .L00457A0C
/* 004579B4 00184200 */   sll   $t0, $t8, 8
/* 004579B8 00185202 */  srl   $t2, $t8, 8
/* 004579BC 314B00FF */  andi  $t3, $t2, 0xff
/* 004579C0 3109FF00 */  andi  $t1, $t0, 0xff00
/* 004579C4 10000011 */  b     .L00457A0C
/* 004579C8 012BA821 */   addu  $s5, $t1, $t3
.L004579CC:
/* 004579CC 8F8C8AE8 */  lw     $t4, %got(sexchange)($gp)
/* 004579D0 00156E00 */  sll   $t5, $s5, 0x18
/* 004579D4 918C0000 */  lbu   $t4, ($t4)
/* 004579D8 3C01FF00 */  lui   $at, 0xff00
/* 004579DC 1180000B */  beqz  $t4, .L00457A0C
/* 004579E0 01A17024 */   and   $t6, $t5, $at
/* 004579E4 00157E02 */  srl   $t7, $s5, 0x18
/* 004579E8 31F800FF */  andi  $t8, $t7, 0xff
/* 004579EC 00154200 */  sll   $t0, $s5, 8
/* 004579F0 3C0100FF */  lui   $at, 0xff
/* 004579F4 01015024 */  and   $t2, $t0, $at
/* 004579F8 01D8C821 */  addu  $t9, $t6, $t8
/* 004579FC 00155A02 */  srl   $t3, $s5, 8
/* 00457A00 316CFF00 */  andi  $t4, $t3, 0xff00
/* 00457A04 032A4821 */  addu  $t1, $t9, $t2
/* 00457A08 012CA821 */  addu  $s5, $t1, $t4
.L00457A0C:
/* 00457A0C 8FAD0108 */  lw    $t5, 0x108($sp)
/* 00457A10 8F8E8AE0 */  lw     $t6, %got(memory)($gp)
/* 00457A14 000D7880 */  sll   $t7, $t5, 2
/* 00457A18 01ED7823 */  subu  $t7, $t7, $t5
/* 00457A1C 000F7880 */  sll   $t7, $t7, 2
/* 00457A20 01ED7823 */  subu  $t7, $t7, $t5
/* 00457A24 8DCE0000 */  lw    $t6, ($t6)
/* 00457A28 000F7880 */  sll   $t7, $t7, 2
/* 00457A2C AFAF00E0 */  sw    $t7, 0xe0($sp)
/* 00457A30 01CFC021 */  addu  $t8, $t6, $t7
/* 00457A34 93080008 */  lbu   $t0, 8($t8)
/* 00457A38 8F8B8D84 */  lw     $t3, %got(realsegments)($gp)
/* 00457A3C 2D190020 */  sltiu $t9, $t0, 0x20
/* 00457A40 8D6B0000 */  lw    $t3, ($t3)
/* 00457A44 00195023 */  negu  $t2, $t9
/* 00457A48 016A4824 */  and   $t1, $t3, $t2
/* 00457A4C 01096004 */  sllv  $t4, $t1, $t0
/* 00457A50 05800043 */  bltz  $t4, .L00457B60
/* 00457A54 03A04825 */   move  $t1, $sp
/* 00457A58 8F8D8070 */  lw    $t5, %got(RO_1001B5F0)($gp)
/* 00457A5C 03A0C025 */  move  $t8, $sp
/* 00457A60 25ADB5F0 */  addiu $t5, %lo(RO_1001B5F0) # addiu $t5, $t5, -0x4a10
/* 00457A64 25AF0048 */  addiu $t7, $t5, 0x48
.L00457A68:
/* 00457A68 89A10000 */  lwl   $at, ($t5)
/* 00457A6C 99A10003 */  lwr   $at, 3($t5)
/* 00457A70 25AD000C */  addiu $t5, $t5, 0xc
/* 00457A74 AB010000 */  swl   $at, ($t8)
/* 00457A78 BB010003 */  swr   $at, 3($t8)
/* 00457A7C 89A1FFF8 */  lwl   $at, -8($t5)
/* 00457A80 99A1FFFB */  lwr   $at, -5($t5)
/* 00457A84 2718000C */  addiu $t8, $t8, 0xc
/* 00457A88 AB01FFF8 */  swl   $at, -8($t8)
/* 00457A8C BB01FFFB */  swr   $at, -5($t8)
/* 00457A90 89A1FFFC */  lwl   $at, -4($t5)
/* 00457A94 99A1FFFF */  lwr   $at, -1($t5)
/* 00457A98 00000000 */  nop   
/* 00457A9C AB01FFFC */  swl   $at, -4($t8)
/* 00457AA0 15AFFFF1 */  bne   $t5, $t7, .L00457A68
/* 00457AA4 BB01FFFF */   swr   $at, -1($t8)
/* 00457AA8 89A10000 */  lwl   $at, ($t5)
/* 00457AAC 99A10003 */  lwr   $at, 3($t5)
/* 00457AB0 8F998070 */  lw    $t9, %got(RO_1001B5A0)($gp)
/* 00457AB4 AB010000 */  swl   $at, ($t8)
/* 00457AB8 BB010003 */  swr   $at, 3($t8)
/* 00457ABC 89AF0004 */  lwl   $t7, 4($t5)
/* 00457AC0 99AF0007 */  lwr   $t7, 7($t5)
/* 00457AC4 2739B5A0 */  addiu $t9, %lo(RO_1001B5A0) # addiu $t9, $t9, -0x4a60
/* 00457AC8 AB0F0004 */  swl   $t7, 4($t8)
/* 00457ACC 272A0048 */  addiu $t2, $t9, 0x48
/* 00457AD0 BB0F0007 */  swr   $t7, 7($t8)
.L00457AD4:
/* 00457AD4 8B210000 */  lwl   $at, ($t9)
/* 00457AD8 9B210003 */  lwr   $at, 3($t9)
/* 00457ADC 2739000C */  addiu $t9, $t9, 0xc
/* 00457AE0 A9210050 */  swl   $at, 0x50($t1)
/* 00457AE4 B9210053 */  swr   $at, 0x53($t1)
/* 00457AE8 8B21FFF8 */  lwl   $at, -8($t9)
/* 00457AEC 9B21FFFB */  lwr   $at, -5($t9)
/* 00457AF0 2529000C */  addiu $t1, $t1, 0xc
/* 00457AF4 A9210048 */  swl   $at, 0x48($t1)
/* 00457AF8 B921004B */  swr   $at, 0x4b($t1)
/* 00457AFC 8B21FFFC */  lwl   $at, -4($t9)
/* 00457B00 9B21FFFF */  lwr   $at, -1($t9)
/* 00457B04 00000000 */  nop   
/* 00457B08 A921004C */  swl   $at, 0x4c($t1)
/* 00457B0C 172AFFF1 */  bne   $t9, $t2, .L00457AD4
/* 00457B10 B921004F */   swr   $at, 0x4f($t1)
/* 00457B14 8B210000 */  lwl   $at, ($t9)
/* 00457B18 9B210003 */  lwr   $at, 3($t9)
/* 00457B1C 2408072E */  li    $t0, 1838
/* 00457B20 A9210050 */  swl   $at, 0x50($t1)
/* 00457B24 B9210053 */  swr   $at, 0x53($t1)
/* 00457B28 8B2A0004 */  lwl   $t2, 4($t9)
/* 00457B2C 9B2A0007 */  lwr   $t2, 7($t9)
/* 00457B30 00000000 */  nop   
/* 00457B34 A92A0054 */  swl   $t2, 0x54($t1)
/* 00457B38 B92A0057 */  swr   $t2, 0x57($t1)
/* 00457B3C 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 00457B40 8FA7000C */  lw    $a3, 0xc($sp)
/* 00457B44 8FA60008 */  lw    $a2, 8($sp)
/* 00457B48 8FA50004 */  lw    $a1, 4($sp)
/* 00457B4C 8FA40000 */  lw    $a0, ($sp)
/* 00457B50 0320F809 */  jalr  $t9
/* 00457B54 AFA800A0 */   sw    $t0, 0xa0($sp)
/* 00457B58 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00457B5C 00000000 */  nop   
.L00457B60:
/* 00457B60 8FAC0108 */  lw    $t4, 0x108($sp)
/* 00457B64 8F8F8AEC */  lw     $t7, %got(seg_ic)($gp)
/* 00457B68 000C7080 */  sll   $t6, $t4, 2
/* 00457B6C 8DEF0000 */  lw    $t7, ($t7)
/* 00457B70 AFAE00D8 */  sw    $t6, 0xd8($sp)
/* 00457B74 01EE6821 */  addu  $t5, $t7, $t6
/* 00457B78 8DB80000 */  lw    $t8, ($t5)
/* 00457B7C 268BFFFF */  addiu $t3, $s4, -1
/* 00457B80 030B5024 */  and   $t2, $t8, $t3
/* 00457B84 11400064 */  beqz  $t2, .L00457D18
/* 00457B88 00000000 */   nop   
/* 00457B8C 8F898B58 */  lw     $t1, %got(aligning)($gp)
/* 00457B90 24190001 */  li    $t9, 1
/* 00457B94 91290000 */  lbu   $t1, ($t1)
/* 00457B98 A3B900F3 */  sb    $t9, 0xf3($sp)
/* 00457B9C 1120005F */  beqz  $t1, .L00457D1C
/* 00457BA0 00000000 */   nop   
/* 00457BA4 8F888B94 */  lw     $t0, %got(opts)($gp)
/* 00457BA8 00000000 */  nop   
/* 00457BAC 9108001C */  lbu   $t0, 0x1c($t0)
/* 00457BB0 00000000 */  nop   
/* 00457BB4 0110082B */  sltu  $at, $t0, $s0
/* 00457BB8 14200058 */  bnez  $at, .L00457D1C
/* 00457BBC 24010002 */   li    $at, 2
/* 00457BC0 1681002B */  bne   $s4, $at, .L00457C70
/* 00457BC4 00000000 */   nop   
/* 00457BC8 8F8C8070 */  lw    $t4, %got(RO_1001B550)($gp)
/* 00457BCC 03A06825 */  move  $t5, $sp
/* 00457BD0 258CB550 */  addiu $t4, %lo(RO_1001B550) # addiu $t4, $t4, -0x4ab0
/* 00457BD4 258E0048 */  addiu $t6, $t4, 0x48
.L00457BD8:
/* 00457BD8 89810000 */  lwl   $at, ($t4)
/* 00457BDC 99810003 */  lwr   $at, 3($t4)
/* 00457BE0 258C000C */  addiu $t4, $t4, 0xc
/* 00457BE4 A9A10000 */  swl   $at, ($t5)
/* 00457BE8 B9A10003 */  swr   $at, 3($t5)
/* 00457BEC 8981FFF8 */  lwl   $at, -8($t4)
/* 00457BF0 9981FFFB */  lwr   $at, -5($t4)
/* 00457BF4 25AD000C */  addiu $t5, $t5, 0xc
/* 00457BF8 A9A1FFF8 */  swl   $at, -8($t5)
/* 00457BFC B9A1FFFB */  swr   $at, -5($t5)
/* 00457C00 8981FFFC */  lwl   $at, -4($t4)
/* 00457C04 9981FFFF */  lwr   $at, -1($t4)
/* 00457C08 00000000 */  nop   
/* 00457C0C A9A1FFFC */  swl   $at, -4($t5)
/* 00457C10 158EFFF1 */  bne   $t4, $t6, .L00457BD8
/* 00457C14 B9A1FFFF */   swr   $at, -1($t5)
/* 00457C18 89810000 */  lwl   $at, ($t4)
/* 00457C1C 99810003 */  lwr   $at, 3($t4)
/* 00457C20 8F988C68 */  lw     $t8, %got(emptystring)($gp)
/* 00457C24 A9A10000 */  swl   $at, ($t5)
/* 00457C28 B9A10003 */  swr   $at, 3($t5)
/* 00457C2C 898E0004 */  lwl   $t6, 4($t4)
/* 00457C30 998E0007 */  lwr   $t6, 7($t4)
/* 00457C34 240B0001 */  li    $t3, 1
/* 00457C38 A9AE0004 */  swl   $t6, 4($t5)
/* 00457C3C B9AE0007 */  swr   $t6, 7($t5)
/* 00457C40 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00457C44 8F180000 */  lw    $t8, ($t8)
/* 00457C48 8FA7000C */  lw    $a3, 0xc($sp)
/* 00457C4C 8FA60008 */  lw    $a2, 8($sp)
/* 00457C50 8FA50004 */  lw    $a1, 4($sp)
/* 00457C54 8FA40000 */  lw    $a0, ($sp)
/* 00457C58 AFAB0054 */  sw    $t3, 0x54($sp)
/* 00457C5C 0320F809 */  jalr  $t9
/* 00457C60 AFB80050 */   sw    $t8, 0x50($sp)
/* 00457C64 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00457C68 1000002C */  b     .L00457D1C
/* 00457C6C 00000000 */   nop   
.L00457C70:
/* 00457C70 8F8A8070 */  lw    $t2, %got(RO_1001B500)($gp)
/* 00457C74 03A04025 */  move  $t0, $sp
/* 00457C78 254AB500 */  addiu $t2, %lo(RO_1001B500) # addiu $t2, $t2, -0x4b00
/* 00457C7C 25490048 */  addiu $t1, $t2, 0x48
.L00457C80:
/* 00457C80 89410000 */  lwl   $at, ($t2)
/* 00457C84 99410003 */  lwr   $at, 3($t2)
/* 00457C88 254A000C */  addiu $t2, $t2, 0xc
/* 00457C8C A9010000 */  swl   $at, ($t0)
/* 00457C90 B9010003 */  swr   $at, 3($t0)
/* 00457C94 8941FFF8 */  lwl   $at, -8($t2)
/* 00457C98 9941FFFB */  lwr   $at, -5($t2)
/* 00457C9C 2508000C */  addiu $t0, $t0, 0xc
/* 00457CA0 A901FFF8 */  swl   $at, -8($t0)
/* 00457CA4 B901FFFB */  swr   $at, -5($t0)
/* 00457CA8 8941FFFC */  lwl   $at, -4($t2)
/* 00457CAC 9941FFFF */  lwr   $at, -1($t2)
/* 00457CB0 00000000 */  nop   
/* 00457CB4 A901FFFC */  swl   $at, -4($t0)
/* 00457CB8 1549FFF1 */  bne   $t2, $t1, .L00457C80
/* 00457CBC B901FFFF */   swr   $at, -1($t0)
/* 00457CC0 89410000 */  lwl   $at, ($t2)
/* 00457CC4 99410003 */  lwr   $at, 3($t2)
/* 00457CC8 8F8F8C68 */  lw     $t7, %got(emptystring)($gp)
/* 00457CCC A9010000 */  swl   $at, ($t0)
/* 00457CD0 B9010003 */  swr   $at, 3($t0)
/* 00457CD4 89490004 */  lwl   $t1, 4($t2)
/* 00457CD8 99490007 */  lwr   $t1, 7($t2)
/* 00457CDC 240E0001 */  li    $t6, 1
/* 00457CE0 A9090004 */  swl   $t1, 4($t0)
/* 00457CE4 B9090007 */  swr   $t1, 7($t0)
/* 00457CE8 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00457CEC 8DEF0000 */  lw    $t7, ($t7)
/* 00457CF0 8FA7000C */  lw    $a3, 0xc($sp)
/* 00457CF4 8FA60008 */  lw    $a2, 8($sp)
/* 00457CF8 8FA50004 */  lw    $a1, 4($sp)
/* 00457CFC 8FA40000 */  lw    $a0, ($sp)
/* 00457D00 AFAE0054 */  sw    $t6, 0x54($sp)
/* 00457D04 0320F809 */  jalr  $t9
/* 00457D08 AFAF0050 */   sw    $t7, 0x50($sp)
/* 00457D0C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00457D10 10000002 */  b     .L00457D1C
/* 00457D14 00000000 */   nop   
.L00457D18:
/* 00457D18 A3A000F3 */  sb    $zero, 0xf3($sp)
.L00457D1C:
/* 00457D1C 1BC000AD */  blez  $fp, .L00457FD4
/* 00457D20 8FBF00D4 */   lw    $ra, 0xd4($sp)
/* 00457D24 8F8C8AEC */  lw     $t4, %got(seg_ic)($gp)
/* 00457D28 8FAD00D8 */  lw    $t5, 0xd8($sp)
/* 00457D2C 8D8C0000 */  lw    $t4, ($t4)
/* 00457D30 8F978AF4 */  lw     $s7, %got(rld_list)($gp)
/* 00457D34 8F968AF0 */  lw     $s6, %got(nextrld)($gp)
/* 00457D38 018D1821 */  addu  $v1, $t4, $t5
.L00457D3C:
/* 00457D3C 8C720000 */  lw    $s2, ($v1)
/* 00457D40 12600067 */  beqz  $s3, .L00457EE0
/* 00457D44 93AD00F3 */   lbu   $t5, 0xf3($sp)
/* 00457D48 8ED10000 */  lw    $s1, ($s6)
/* 00457D4C 8EF80004 */  lw    $t8, 4($s7)
/* 00457D50 8EF00000 */  lw    $s0, ($s7)
/* 00457D54 0238082A */  slt   $at, $s1, $t8
/* 00457D58 1420000C */  bnez  $at, .L00457D8C
/* 00457D5C 02202825 */   move  $a1, $s1
/* 00457D60 8F848AF4 */  lw     $a0, %got(rld_list)($gp)
/* 00457D64 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 00457D68 24060018 */  li    $a2, 24
/* 00457D6C 02003825 */  move  $a3, $s0
/* 00457D70 AFA00010 */  sw    $zero, 0x10($sp)
/* 00457D74 0320F809 */  jalr  $t9
/* 00457D78 24840004 */   addiu $a0, $a0, 4
/* 00457D7C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00457D80 8ED10000 */  lw    $s1, ($s6)
/* 00457D84 AEE20000 */  sw    $v0, ($s7)
/* 00457D88 00408025 */  move  $s0, $v0
.L00457D8C:
/* 00457D8C 00115880 */  sll   $t3, $s1, 2
/* 00457D90 01715823 */  subu  $t3, $t3, $s1
/* 00457D94 000B58C0 */  sll   $t3, $t3, 3
/* 00457D98 020B1021 */  addu  $v0, $s0, $t3
/* 00457D9C AC400000 */  sw    $zero, ($v0)
/* 00457DA0 AC520004 */  sw    $s2, 4($v0)
/* 00457DA4 AC530008 */  sw    $s3, 8($v0)
/* 00457DA8 8E790020 */  lw    $t9, 0x20($s3)
/* 00457DAC 8FA80108 */  lw    $t0, 0x108($sp)
/* 00457DB0 240A0001 */  li    $t2, 1
/* 00457DB4 27290001 */  addiu $t1, $t9, 1
/* 00457DB8 AE690020 */  sw    $t1, 0x20($s3)
/* 00457DBC A26A003D */  sb    $t2, 0x3d($s3)
/* 00457DC0 24010002 */  li    $at, 2
/* 00457DC4 1681000B */  bne   $s4, $at, .L00457DF4
/* 00457DC8 AC48000C */   sw    $t0, 0xc($v0)
/* 00457DCC 8F8F8B60 */  lw     $t7, %got(shftaddr)($gp)
/* 00457DD0 24010001 */  li    $at, 1
/* 00457DD4 8DEF0000 */  lw    $t7, ($t7)
/* 00457DD8 240E000C */  li    $t6, 12
/* 00457DDC 15E10003 */  bne   $t7, $at, .L00457DEC
/* 00457DE0 240C000A */   li    $t4, 10
/* 00457DE4 1000003B */  b     .L00457ED4
/* 00457DE8 A04E0010 */   sb    $t6, 0x10($v0)
.L00457DEC:
/* 00457DEC 10000039 */  b     .L00457ED4
/* 00457DF0 A04C0010 */   sb    $t4, 0x10($v0)
.L00457DF4:
/* 00457DF4 93AD010F */  lbu   $t5, 0x10f($sp)
/* 00457DF8 24180012 */  li    $t8, 18
/* 00457DFC 11A00034 */  beqz  $t5, .L00457ED0
/* 00457E00 240E0008 */   li    $t6, 8
/* 00457E04 8F9985F4 */  lw    $t9, %call16(islocalsym)($gp)
/* 00457E08 A0580010 */  sb    $t8, 0x10($v0)
/* 00457E0C 0320F809 */  jalr  $t9
/* 00457E10 02602025 */   move  $a0, $s3
/* 00457E14 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00457E18 1440002A */  bnez  $v0, .L00457EC4
/* 00457E1C 00000000 */   nop   
/* 00457E20 8F8B8070 */  lw    $t3, %got(RO_1001B4B0)($gp)
/* 00457E24 03A05025 */  move  $t2, $sp
/* 00457E28 256BB4B0 */  addiu $t3, %lo(RO_1001B4B0) # addiu $t3, $t3, -0x4b50
/* 00457E2C 25690048 */  addiu $t1, $t3, 0x48
.L00457E30:
/* 00457E30 89610000 */  lwl   $at, ($t3)
/* 00457E34 99610003 */  lwr   $at, 3($t3)
/* 00457E38 256B000C */  addiu $t3, $t3, 0xc
/* 00457E3C A9410000 */  swl   $at, ($t2)
/* 00457E40 B9410003 */  swr   $at, 3($t2)
/* 00457E44 8961FFF8 */  lwl   $at, -8($t3)
/* 00457E48 9961FFFB */  lwr   $at, -5($t3)
/* 00457E4C 254A000C */  addiu $t2, $t2, 0xc
/* 00457E50 A941FFF8 */  swl   $at, -8($t2)
/* 00457E54 B941FFFB */  swr   $at, -5($t2)
/* 00457E58 8961FFFC */  lwl   $at, -4($t3)
/* 00457E5C 9961FFFF */  lwr   $at, -1($t3)
/* 00457E60 00000000 */  nop   
/* 00457E64 A941FFFC */  swl   $at, -4($t2)
/* 00457E68 1569FFF1 */  bne   $t3, $t1, .L00457E30
/* 00457E6C B941FFFF */   swr   $at, -1($t2)
/* 00457E70 89610000 */  lwl   $at, ($t3)
/* 00457E74 99610003 */  lwr   $at, 3($t3)
/* 00457E78 8F888C68 */  lw     $t0, %got(emptystring)($gp)
/* 00457E7C A9410000 */  swl   $at, ($t2)
/* 00457E80 B9410003 */  swr   $at, 3($t2)
/* 00457E84 89690004 */  lwl   $t1, 4($t3)
/* 00457E88 99690007 */  lwr   $t1, 7($t3)
/* 00457E8C 240F0001 */  li    $t7, 1
/* 00457E90 A9490004 */  swl   $t1, 4($t2)
/* 00457E94 B9490007 */  swr   $t1, 7($t2)
/* 00457E98 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00457E9C 8D080000 */  lw    $t0, ($t0)
/* 00457EA0 8FA7000C */  lw    $a3, 0xc($sp)
/* 00457EA4 8FA60008 */  lw    $a2, 8($sp)
/* 00457EA8 8FA50004 */  lw    $a1, 4($sp)
/* 00457EAC 8FA40000 */  lw    $a0, ($sp)
/* 00457EB0 AFAF0054 */  sw    $t7, 0x54($sp)
/* 00457EB4 0320F809 */  jalr  $t9
/* 00457EB8 AFA80050 */   sw    $t0, 0x50($sp)
/* 00457EBC 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00457EC0 00000000 */  nop   
.L00457EC4:
/* 00457EC4 8ED10000 */  lw    $s1, ($s6)
/* 00457EC8 10000003 */  b     .L00457ED8
/* 00457ECC 262C0001 */   addiu $t4, $s1, 1
.L00457ED0:
/* 00457ED0 A04E0010 */  sb    $t6, 0x10($v0)
.L00457ED4:
/* 00457ED4 262C0001 */  addiu $t4, $s1, 1
.L00457ED8:
/* 00457ED8 AECC0000 */  sw    $t4, ($s6)
/* 00457EDC 93AD00F3 */  lbu   $t5, 0xf3($sp)
.L00457EE0:
/* 00457EE0 8FA40108 */  lw    $a0, 0x108($sp)
/* 00457EE4 11A0000D */  beqz  $t5, .L00457F1C
/* 00457EE8 02A02825 */   move  $a1, $s5
/* 00457EEC 8F998588 */  lw    $t9, %call16(byte_at_a_time)($gp)
/* 00457EF0 02403025 */  move  $a2, $s2
/* 00457EF4 0320F809 */  jalr  $t9
/* 00457EF8 02803825 */   move  $a3, $s4
/* 00457EFC 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00457F00 8FB900D8 */  lw    $t9, 0xd8($sp)
/* 00457F04 8F988AEC */  lw     $t8, %got(seg_ic)($gp)
/* 00457F08 8F818B60 */  lw     $at, %got(shftaddr)($gp)
/* 00457F0C 8F180000 */  lw    $t8, ($t8)
/* 00457F10 AC200000 */  sw    $zero, ($at)
/* 00457F14 1000002A */  b     .L00457FC0
/* 00457F18 03191821 */   addu  $v1, $t8, $t9
.L00457F1C:
/* 00457F1C 8F898AE0 */  lw     $t1, %got(memory)($gp)
/* 00457F20 8FAB00E0 */  lw    $t3, 0xe0($sp)
/* 00457F24 8D290000 */  lw    $t1, ($t1)
/* 00457F28 02402825 */  move  $a1, $s2
/* 00457F2C 012B8021 */  addu  $s0, $t1, $t3
/* 00457F30 8E0A0004 */  lw    $t2, 4($s0)
/* 00457F34 26040004 */  addiu $a0, $s0, 4
/* 00457F38 024A082B */  sltu  $at, $s2, $t2
/* 00457F3C 1420000D */  bnez  $at, .L00457F74
/* 00457F40 24060001 */   li    $a2, 1
/* 00457F44 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 00457F48 8E070000 */  lw    $a3, ($s0)
/* 00457F4C 0320F809 */  jalr  $t9
/* 00457F50 AFA00010 */   sw    $zero, 0x10($sp)
/* 00457F54 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00457F58 8FAF00E0 */  lw    $t7, 0xe0($sp)
/* 00457F5C 8F888AE0 */  lw     $t0, %got(memory)($gp)
/* 00457F60 00000000 */  nop   
/* 00457F64 8D080000 */  lw    $t0, ($t0)
/* 00457F68 00000000 */  nop   
/* 00457F6C 010F8021 */  addu  $s0, $t0, $t7
/* 00457F70 AE020000 */  sw    $v0, ($s0)
.L00457F74:
/* 00457F74 8F8E8AEC */  lw     $t6, %got(seg_ic)($gp)
/* 00457F78 8FAC00D8 */  lw    $t4, 0xd8($sp)
/* 00457F7C 8F818B60 */  lw     $at, %got(shftaddr)($gp)
/* 00457F80 8DCE0000 */  lw    $t6, ($t6)
/* 00457F84 3A820002 */  xori  $v0, $s4, 2
/* 00457F88 AC200000 */  sw    $zero, ($at)
/* 00457F8C 14400007 */  bnez  $v0, .L00457FAC
/* 00457F90 01CC1821 */   addu  $v1, $t6, $t4
/* 00457F94 8E0D0000 */  lw    $t5, ($s0)
/* 00457F98 0012C042 */  srl   $t8, $s2, 1
/* 00457F9C 0018C840 */  sll   $t9, $t8, 1
/* 00457FA0 01B94821 */  addu  $t1, $t5, $t9
/* 00457FA4 10000006 */  b     .L00457FC0
/* 00457FA8 A5350000 */   sh    $s5, ($t1)
.L00457FAC:
/* 00457FAC 8E0B0000 */  lw    $t3, ($s0)
/* 00457FB0 00125082 */  srl   $t2, $s2, 2
/* 00457FB4 000A4080 */  sll   $t0, $t2, 2
/* 00457FB8 01687821 */  addu  $t7, $t3, $t0
/* 00457FBC ADF50000 */  sw    $s5, ($t7)
.L00457FC0:
/* 00457FC0 02547021 */  addu  $t6, $s2, $s4
/* 00457FC4 27DEFFFF */  addiu $fp, $fp, -1
/* 00457FC8 17C0FF5C */  bnez  $fp, .L00457D3C
/* 00457FCC AC6E0000 */   sw    $t6, ($v1)
/* 00457FD0 8FBF00D4 */  lw    $ra, 0xd4($sp)
.L00457FD4:
/* 00457FD4 8FB000AC */  lw    $s0, 0xac($sp)
/* 00457FD8 8FB100B0 */  lw    $s1, 0xb0($sp)
/* 00457FDC 8FB200B4 */  lw    $s2, 0xb4($sp)
/* 00457FE0 8FB300B8 */  lw    $s3, 0xb8($sp)
/* 00457FE4 8FB400BC */  lw    $s4, 0xbc($sp)
/* 00457FE8 8FB500C0 */  lw    $s5, 0xc0($sp)
/* 00457FEC 8FB600C4 */  lw    $s6, 0xc4($sp)
/* 00457FF0 8FB700C8 */  lw    $s7, 0xc8($sp)
/* 00457FF4 8FBE00D0 */  lw    $fp, 0xd0($sp)
/* 00457FF8 03E00008 */  jr    $ra
/* 00457FFC 27BD00F8 */   addiu $sp, $sp, 0xf8

    .type doword, @function
    .size doword, .-doword
    .end doword

glabel dodword
    .ent dodword
    # 0041C3FC func_0041C3FC
    # 00458E18 parseword
    # 004590C0 emit_dword_item
/* 00458000 3C1C0FBD */  .cpload $t9
/* 00458004 279C2260 */  
/* 00458008 0399E021 */  
/* 0045800C 27BDFF00 */  addiu $sp, $sp, -0x100
/* 00458010 AFA40100 */  sw    $a0, 0x100($sp)
/* 00458014 8F9985C4 */  lw    $t9, %call16(definealabel)($gp)
/* 00458018 AFA50104 */  sw    $a1, 0x104($sp)
/* 0045801C AFBF00D4 */  sw    $ra, 0xd4($sp)
/* 00458020 AFA60108 */  sw    $a2, 0x108($sp)
/* 00458024 8FA50100 */  lw    $a1, 0x100($sp)
/* 00458028 8FA40114 */  lw    $a0, 0x114($sp)
/* 0045802C AFBE00D0 */  sw    $fp, 0xd0($sp)
/* 00458030 AFBC00CC */  sw    $gp, 0xcc($sp)
/* 00458034 AFB700C8 */  sw    $s7, 0xc8($sp)
/* 00458038 AFB600C4 */  sw    $s6, 0xc4($sp)
/* 0045803C AFB500C0 */  sw    $s5, 0xc0($sp)
/* 00458040 AFB400BC */  sw    $s4, 0xbc($sp)
/* 00458044 AFB300B8 */  sw    $s3, 0xb8($sp)
/* 00458048 AFB200B4 */  sw    $s2, 0xb4($sp)
/* 0045804C AFB100B0 */  sw    $s1, 0xb0($sp)
/* 00458050 AFB000AC */  sw    $s0, 0xac($sp)
/* 00458054 AFA7010C */  sw    $a3, 0x10c($sp)
/* 00458058 0320F809 */  jalr  $t9
/* 0045805C 00003025 */   move  $a2, $zero
/* 00458060 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00458064 8FAF0108 */  lw    $t7, 0x108($sp)
/* 00458068 8F8E8AE8 */  lw     $t6, %got(sexchange)($gp)
/* 0045806C 3C03FF00 */  lui   $v1, 0xff00
/* 00458070 91CE0000 */  lbu   $t6, ($t6)
/* 00458074 000FC600 */  sll   $t8, $t7, 0x18
/* 00458078 11C0001A */  beqz  $t6, .L004580E4
/* 0045807C 0303C824 */   and   $t9, $t8, $v1
/* 00458080 000F4E02 */  srl   $t1, $t7, 0x18
/* 00458084 3C0400FF */  lui   $a0, 0xff
/* 00458088 312A00FF */  andi  $t2, $t1, 0xff
/* 0045808C 000F6200 */  sll   $t4, $t7, 8
/* 00458090 01846824 */  and   $t5, $t4, $a0
/* 00458094 032A5821 */  addu  $t3, $t9, $t2
/* 00458098 8FB9010C */  lw    $t9, 0x10c($sp)
/* 0045809C 8FAC010C */  lw    $t4, 0x10c($sp)
/* 004580A0 016D7021 */  addu  $t6, $t3, $t5
/* 004580A4 000FC202 */  srl   $t8, $t7, 8
/* 004580A8 3309FF00 */  andi  $t1, $t8, 0xff00
/* 004580AC 00195600 */  sll   $t2, $t9, 0x18
/* 004580B0 01437824 */  and   $t7, $t2, $v1
/* 004580B4 000C5E02 */  srl   $t3, $t4, 0x18
/* 004580B8 01C91021 */  addu  $v0, $t6, $t1
/* 004580BC 316D00FF */  andi  $t5, $t3, 0xff
/* 004580C0 0019C200 */  sll   $t8, $t9, 8
/* 004580C4 03047024 */  and   $t6, $t8, $a0
/* 004580C8 01ED4021 */  addu  $t0, $t7, $t5
/* 004580CC 000C5202 */  srl   $t2, $t4, 8
/* 004580D0 314BFF00 */  andi  $t3, $t2, 0xff00
/* 004580D4 010E4821 */  addu  $t1, $t0, $t6
/* 004580D8 012B7821 */  addu  $t7, $t1, $t3
/* 004580DC AFAF0108 */  sw    $t7, 0x108($sp)
/* 004580E0 AFA2010C */  sw    $v0, 0x10c($sp)
.L004580E4:
/* 004580E4 8FB70114 */  lw    $s7, 0x114($sp)
/* 004580E8 8F988AE0 */  lw     $t8, %got(memory)($gp)
/* 004580EC 00176880 */  sll   $t5, $s7, 2
/* 004580F0 01B76823 */  subu  $t5, $t5, $s7
/* 004580F4 000D6880 */  sll   $t5, $t5, 2
/* 004580F8 8F180000 */  lw    $t8, ($t8)
/* 004580FC 01B76823 */  subu  $t5, $t5, $s7
/* 00458100 000DB880 */  sll   $s7, $t5, 2
/* 00458104 03174021 */  addu  $t0, $t8, $s7
/* 00458108 910E0008 */  lbu   $t6, 8($t0)
/* 0045810C 8F998D84 */  lw     $t9, %got(realsegments)($gp)
/* 00458110 2DCC0020 */  sltiu $t4, $t6, 0x20
/* 00458114 8F390000 */  lw    $t9, ($t9)
/* 00458118 000C5023 */  negu  $t2, $t4
/* 0045811C 032A4824 */  and   $t1, $t9, $t2
/* 00458120 01C95804 */  sllv  $t3, $t1, $t6
/* 00458124 05600043 */  bltz  $t3, .L00458234
/* 00458128 03A04825 */   move  $t1, $sp
/* 0045812C 8F8F8070 */  lw    $t7, %got(RO_1001B6E0)($gp)
/* 00458130 03A04025 */  move  $t0, $sp
/* 00458134 25EFB6E0 */  addiu $t7, %lo(RO_1001B6E0) # addiu $t7, $t7, -0x4920
/* 00458138 25F80048 */  addiu $t8, $t7, 0x48
.L0045813C:
/* 0045813C 89E10000 */  lwl   $at, ($t7)
/* 00458140 99E10003 */  lwr   $at, 3($t7)
/* 00458144 25EF000C */  addiu $t7, $t7, 0xc
/* 00458148 A9010000 */  swl   $at, ($t0)
/* 0045814C B9010003 */  swr   $at, 3($t0)
/* 00458150 89E1FFF8 */  lwl   $at, -8($t7)
/* 00458154 99E1FFFB */  lwr   $at, -5($t7)
/* 00458158 2508000C */  addiu $t0, $t0, 0xc
/* 0045815C A901FFF8 */  swl   $at, -8($t0)
/* 00458160 B901FFFB */  swr   $at, -5($t0)
/* 00458164 89E1FFFC */  lwl   $at, -4($t7)
/* 00458168 99E1FFFF */  lwr   $at, -1($t7)
/* 0045816C 00000000 */  nop   
/* 00458170 A901FFFC */  swl   $at, -4($t0)
/* 00458174 15F8FFF1 */  bne   $t7, $t8, .L0045813C
/* 00458178 B901FFFF */   swr   $at, -1($t0)
/* 0045817C 89E10000 */  lwl   $at, ($t7)
/* 00458180 99E10003 */  lwr   $at, 3($t7)
/* 00458184 8F8C8070 */  lw    $t4, %got(RO_1001B690)($gp)
/* 00458188 A9010000 */  swl   $at, ($t0)
/* 0045818C B9010003 */  swr   $at, 3($t0)
/* 00458190 89F80004 */  lwl   $t8, 4($t7)
/* 00458194 99F80007 */  lwr   $t8, 7($t7)
/* 00458198 258CB690 */  addiu $t4, %lo(RO_1001B690) # addiu $t4, $t4, -0x4970
/* 0045819C A9180004 */  swl   $t8, 4($t0)
/* 004581A0 258A0048 */  addiu $t2, $t4, 0x48
/* 004581A4 B9180007 */  swr   $t8, 7($t0)
.L004581A8:
/* 004581A8 89810000 */  lwl   $at, ($t4)
/* 004581AC 99810003 */  lwr   $at, 3($t4)
/* 004581B0 258C000C */  addiu $t4, $t4, 0xc
/* 004581B4 A9210050 */  swl   $at, 0x50($t1)
/* 004581B8 B9210053 */  swr   $at, 0x53($t1)
/* 004581BC 8981FFF8 */  lwl   $at, -8($t4)
/* 004581C0 9981FFFB */  lwr   $at, -5($t4)
/* 004581C4 2529000C */  addiu $t1, $t1, 0xc
/* 004581C8 A9210048 */  swl   $at, 0x48($t1)
/* 004581CC B921004B */  swr   $at, 0x4b($t1)
/* 004581D0 8981FFFC */  lwl   $at, -4($t4)
/* 004581D4 9981FFFF */  lwr   $at, -1($t4)
/* 004581D8 00000000 */  nop   
/* 004581DC A921004C */  swl   $at, 0x4c($t1)
/* 004581E0 158AFFF1 */  bne   $t4, $t2, .L004581A8
/* 004581E4 B921004F */   swr   $at, 0x4f($t1)
/* 004581E8 89810000 */  lwl   $at, ($t4)
/* 004581EC 99810003 */  lwr   $at, 3($t4)
/* 004581F0 240E0780 */  li    $t6, 1920
/* 004581F4 A9210050 */  swl   $at, 0x50($t1)
/* 004581F8 B9210053 */  swr   $at, 0x53($t1)
/* 004581FC 898A0004 */  lwl   $t2, 4($t4)
/* 00458200 998A0007 */  lwr   $t2, 7($t4)
/* 00458204 00000000 */  nop   
/* 00458208 A92A0054 */  swl   $t2, 0x54($t1)
/* 0045820C B92A0057 */  swr   $t2, 0x57($t1)
/* 00458210 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 00458214 8FA7000C */  lw    $a3, 0xc($sp)
/* 00458218 8FA60008 */  lw    $a2, 8($sp)
/* 0045821C 8FA50004 */  lw    $a1, 4($sp)
/* 00458220 8FA40000 */  lw    $a0, ($sp)
/* 00458224 0320F809 */  jalr  $t9
/* 00458228 AFAE00A0 */   sw    $t6, 0xa0($sp)
/* 0045822C 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00458230 00000000 */  nop   
.L00458234:
/* 00458234 8FAB0114 */  lw    $t3, 0x114($sp)
/* 00458238 8F988AEC */  lw     $t8, %got(seg_ic)($gp)
/* 0045823C 000B6880 */  sll   $t5, $t3, 2
/* 00458240 8F180000 */  lw    $t8, ($t8)
/* 00458244 8FB90100 */  lw    $t9, 0x100($sp)
/* 00458248 AFAD00DC */  sw    $t5, 0xdc($sp)
/* 0045824C 030D7821 */  addu  $t7, $t8, $t5
/* 00458250 8DE80000 */  lw    $t0, ($t7)
/* 00458254 272AFFFF */  addiu $t2, $t9, -1
/* 00458258 010A6024 */  and   $t4, $t0, $t2
/* 0045825C 1180002B */  beqz  $t4, .L0045830C
/* 00458260 00001025 */   move  $v0, $zero
/* 00458264 8F898070 */  lw    $t1, %got(RO_1001B640)($gp)
/* 00458268 03A0C025 */  move  $t8, $sp
/* 0045826C 2529B640 */  addiu $t1, %lo(RO_1001B640) # addiu $t1, $t1, -0x49c0
/* 00458270 252B0048 */  addiu $t3, $t1, 0x48
.L00458274:
/* 00458274 89210000 */  lwl   $at, ($t1)
/* 00458278 99210003 */  lwr   $at, 3($t1)
/* 0045827C 2529000C */  addiu $t1, $t1, 0xc
/* 00458280 AB010000 */  swl   $at, ($t8)
/* 00458284 BB010003 */  swr   $at, 3($t8)
/* 00458288 8921FFF8 */  lwl   $at, -8($t1)
/* 0045828C 9921FFFB */  lwr   $at, -5($t1)
/* 00458290 2718000C */  addiu $t8, $t8, 0xc
/* 00458294 AB01FFF8 */  swl   $at, -8($t8)
/* 00458298 BB01FFFB */  swr   $at, -5($t8)
/* 0045829C 8921FFFC */  lwl   $at, -4($t1)
/* 004582A0 9921FFFF */  lwr   $at, -1($t1)
/* 004582A4 00000000 */  nop   
/* 004582A8 AB01FFFC */  swl   $at, -4($t8)
/* 004582AC 152BFFF1 */  bne   $t1, $t3, .L00458274
/* 004582B0 BB01FFFF */   swr   $at, -1($t8)
/* 004582B4 89210000 */  lwl   $at, ($t1)
/* 004582B8 99210003 */  lwr   $at, 3($t1)
/* 004582BC 8F8D8C68 */  lw     $t5, %got(emptystring)($gp)
/* 004582C0 AB010000 */  swl   $at, ($t8)
/* 004582C4 BB010003 */  swr   $at, 3($t8)
/* 004582C8 892B0004 */  lwl   $t3, 4($t1)
/* 004582CC 992B0007 */  lwr   $t3, 7($t1)
/* 004582D0 240F0001 */  li    $t7, 1
/* 004582D4 AB0B0004 */  swl   $t3, 4($t8)
/* 004582D8 BB0B0007 */  swr   $t3, 7($t8)
/* 004582DC 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 004582E0 8DAD0000 */  lw    $t5, ($t5)
/* 004582E4 8FA7000C */  lw    $a3, 0xc($sp)
/* 004582E8 8FA60008 */  lw    $a2, 8($sp)
/* 004582EC 8FA50004 */  lw    $a1, 4($sp)
/* 004582F0 8FA40000 */  lw    $a0, ($sp)
/* 004582F4 AFAF0054 */  sw    $t7, 0x54($sp)
/* 004582F8 0320F809 */  jalr  $t9
/* 004582FC AFAD0050 */   sw    $t5, 0x50($sp)
/* 00458300 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00458304 10000001 */  b     .L0045830C
/* 00458308 24020001 */   li    $v0, 1
.L0045830C:
/* 0045830C 144000BC */  bnez  $v0, .L00458600
/* 00458310 8FBF00D4 */   lw    $ra, 0xd4($sp)
/* 00458314 8FB90104 */  lw    $t9, 0x104($sp)
/* 00458318 241E0007 */  li    $fp, 7
/* 0045831C 1B2000B7 */  blez  $t9, .L004585FC
/* 00458320 03201825 */   move  $v1, $t9
/* 00458324 8F888AEC */  lw     $t0, %got(seg_ic)($gp)
/* 00458328 8FAA00DC */  lw    $t2, 0xdc($sp)
/* 0045832C 8D080000 */  lw    $t0, ($t0)
/* 00458330 8F968AF4 */  lw     $s6, %got(rld_list)($gp)
/* 00458334 8F958AF0 */  lw     $s5, %got(nextrld)($gp)
/* 00458338 8FB40110 */  lw    $s4, 0x110($sp)
/* 0045833C AFA30104 */  sw    $v1, 0x104($sp)
/* 00458340 010A1021 */  addu  $v0, $t0, $t2
.L00458344:
/* 00458344 8C530000 */  lw    $s3, ($v0)
/* 00458348 12800035 */  beqz  $s4, .L00458420
/* 0045834C 00000000 */   nop   
/* 00458350 8EB20000 */  lw    $s2, ($s5)
/* 00458354 8ECC0004 */  lw    $t4, 4($s6)
/* 00458358 8ED10000 */  lw    $s1, ($s6)
/* 0045835C 024C082A */  slt   $at, $s2, $t4
/* 00458360 1420000C */  bnez  $at, .L00458394
/* 00458364 02402825 */   move  $a1, $s2
/* 00458368 8F848AF4 */  lw     $a0, %got(rld_list)($gp)
/* 0045836C 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 00458370 24060018 */  li    $a2, 24
/* 00458374 02203825 */  move  $a3, $s1
/* 00458378 AFA00010 */  sw    $zero, 0x10($sp)
/* 0045837C 0320F809 */  jalr  $t9
/* 00458380 24840004 */   addiu $a0, $a0, 4
/* 00458384 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 00458388 8EB20000 */  lw    $s2, ($s5)
/* 0045838C AEC20000 */  sw    $v0, ($s6)
/* 00458390 00408825 */  move  $s1, $v0
.L00458394:
/* 00458394 00127080 */  sll   $t6, $s2, 2
/* 00458398 01D27023 */  subu  $t6, $t6, $s2
/* 0045839C 000E70C0 */  sll   $t6, $t6, 3
/* 004583A0 022E1021 */  addu  $v0, $s1, $t6
/* 004583A4 AC400000 */  sw    $zero, ($v0)
/* 004583A8 AC530004 */  sw    $s3, 4($v0)
/* 004583AC AC540008 */  sw    $s4, 8($v0)
/* 004583B0 8E8B0020 */  lw    $t3, 0x20($s4)
/* 004583B4 8FB80114 */  lw    $t8, 0x114($sp)
/* 004583B8 25690001 */  addiu $t1, $t3, 1
/* 004583BC 8F8D8B28 */  lw     $t5, %got(sixtyfour_bit)($gp)
/* 004583C0 AE890020 */  sw    $t1, 0x20($s4)
/* 004583C4 AC58000C */  sw    $t8, 0xc($v0)
/* 004583C8 91AD0000 */  lbu   $t5, ($t5)
/* 004583CC 264A0001 */  addiu $t2, $s2, 1
/* 004583D0 11A00009 */  beqz  $t5, .L004583F8
/* 004583D4 00000000 */   nop   
/* 004583D8 8F8F8CC8 */  lw     $t7, %got(elf_flag)($gp)
/* 004583DC 00000000 */  nop   
/* 004583E0 91EF0000 */  lbu   $t7, ($t7)
/* 004583E4 00000000 */  nop   
/* 004583E8 11E00003 */  beqz  $t7, .L004583F8
/* 004583EC 00000000 */   nop   
/* 004583F0 1000000A */  b     .L0045841C
/* 004583F4 A05E0010 */   sb    $fp, 0x10($v0)
.L004583F8:
/* 004583F8 8F998AE8 */  lw     $t9, %got(sexchange)($gp)
/* 004583FC 24080008 */  li    $t0, 8
/* 00458400 93390000 */  lbu   $t9, ($t9)
/* 00458404 00000000 */  nop   
/* 00458408 13200003 */  beqz  $t9, .L00458418
/* 0045840C 00000000 */   nop   
/* 00458410 10000002 */  b     .L0045841C
/* 00458414 A0480010 */   sb    $t0, 0x10($v0)
.L00458418:
/* 00458418 A05E0010 */  sb    $fp, 0x10($v0)
.L0045841C:
/* 0045841C AEAA0000 */  sw    $t2, ($s5)
.L00458420:
/* 00458420 8F8C8AE0 */  lw     $t4, %got(memory)($gp)
/* 00458424 02602825 */  move  $a1, $s3
/* 00458428 8D8C0000 */  lw    $t4, ($t4)
/* 0045842C 24060001 */  li    $a2, 1
/* 00458430 01978021 */  addu  $s0, $t4, $s7
/* 00458434 8E0E0004 */  lw    $t6, 4($s0)
/* 00458438 26040004 */  addiu $a0, $s0, 4
/* 0045843C 026E082B */  sltu  $at, $s3, $t6
/* 00458440 1420000D */  bnez  $at, .L00458478
/* 00458444 00000000 */   nop   
/* 00458448 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 0045844C 8E070000 */  lw    $a3, ($s0)
/* 00458450 0320F809 */  jalr  $t9
/* 00458454 AFA00010 */   sw    $zero, 0x10($sp)
/* 00458458 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0045845C 00000000 */  nop   
/* 00458460 8F8B8AE0 */  lw     $t3, %got(memory)($gp)
/* 00458464 00000000 */  nop   
/* 00458468 8D6B0000 */  lw    $t3, ($t3)
/* 0045846C 00000000 */  nop   
/* 00458470 01778021 */  addu  $s0, $t3, $s7
/* 00458474 AE020000 */  sw    $v0, ($s0)
.L00458478:
/* 00458478 8E180000 */  lw    $t8, ($s0)
/* 0045847C 00136882 */  srl   $t5, $s3, 2
/* 00458480 8FA90108 */  lw    $t1, 0x108($sp)
/* 00458484 000D7880 */  sll   $t7, $t5, 2
/* 00458488 8F888B28 */  lw     $t0, %got(sixtyfour_bit)($gp)
/* 0045848C 030FC821 */  addu  $t9, $t8, $t7
/* 00458490 AF290000 */  sw    $t1, ($t9)
/* 00458494 91080000 */  lbu   $t0, ($t0)
/* 00458498 00000000 */  nop   
/* 0045849C 11000007 */  beqz  $t0, .L004584BC
/* 004584A0 00000000 */   nop   
/* 004584A4 8F8A8CC8 */  lw     $t2, %got(elf_flag)($gp)
/* 004584A8 00000000 */  nop   
/* 004584AC 914A0000 */  lbu   $t2, ($t2)
/* 004584B0 00000000 */  nop   
/* 004584B4 1540002D */  bnez  $t2, .L0045856C
/* 004584B8 00000000 */   nop   
.L004584BC:
/* 004584BC 1280002B */  beqz  $s4, .L0045856C
/* 004584C0 00000000 */   nop   
/* 004584C4 8EB20000 */  lw    $s2, ($s5)
/* 004584C8 8ECC0004 */  lw    $t4, 4($s6)
/* 004584CC 8ED10000 */  lw    $s1, ($s6)
/* 004584D0 024C082A */  slt   $at, $s2, $t4
/* 004584D4 1420000F */  bnez  $at, .L00458514
/* 004584D8 02402825 */   move  $a1, $s2
/* 004584DC 8F848AF4 */  lw     $a0, %got(rld_list)($gp)
/* 004584E0 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 004584E4 24060018 */  li    $a2, 24
/* 004584E8 02203825 */  move  $a3, $s1
/* 004584EC AFA00010 */  sw    $zero, 0x10($sp)
/* 004584F0 0320F809 */  jalr  $t9
/* 004584F4 24840004 */   addiu $a0, $a0, 4
/* 004584F8 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 004584FC AEC20000 */  sw    $v0, ($s6)
/* 00458500 8F8E8AE0 */  lw     $t6, %got(memory)($gp)
/* 00458504 8EB20000 */  lw    $s2, ($s5)
/* 00458508 8DCE0000 */  lw    $t6, ($t6)
/* 0045850C 00408825 */  move  $s1, $v0
/* 00458510 01D78021 */  addu  $s0, $t6, $s7
.L00458514:
/* 00458514 00125880 */  sll   $t3, $s2, 2
/* 00458518 01725823 */  subu  $t3, $t3, $s2
/* 0045851C 000B58C0 */  sll   $t3, $t3, 3
/* 00458520 022B1021 */  addu  $v0, $s1, $t3
/* 00458524 266D0004 */  addiu $t5, $s3, 4
/* 00458528 AC400000 */  sw    $zero, ($v0)
/* 0045852C AC4D0004 */  sw    $t5, 4($v0)
/* 00458530 AC540008 */  sw    $s4, 8($v0)
/* 00458534 8E980020 */  lw    $t8, 0x20($s4)
/* 00458538 8FA90114 */  lw    $t1, 0x114($sp)
/* 0045853C 270F0001 */  addiu $t7, $t8, 1
/* 00458540 8F998AE8 */  lw     $t9, %got(sexchange)($gp)
/* 00458544 AE8F0020 */  sw    $t7, 0x20($s4)
/* 00458548 AC49000C */  sw    $t1, 0xc($v0)
/* 0045854C 93390000 */  lbu   $t9, ($t9)
/* 00458550 24080008 */  li    $t0, 8
/* 00458554 13200003 */  beqz  $t9, .L00458564
/* 00458558 264A0001 */   addiu $t2, $s2, 1
/* 0045855C 10000002 */  b     .L00458568
/* 00458560 A05E0010 */   sb    $fp, 0x10($v0)
.L00458564:
/* 00458564 A0480010 */  sb    $t0, 0x10($v0)
.L00458568:
/* 00458568 AEAA0000 */  sw    $t2, ($s5)
.L0045856C:
/* 0045856C 8E0C0004 */  lw    $t4, 4($s0)
/* 00458570 26710004 */  addiu $s1, $s3, 4
/* 00458574 022C082B */  sltu  $at, $s1, $t4
/* 00458578 1420000F */  bnez  $at, .L004585B8
/* 0045857C 26040004 */   addiu $a0, $s0, 4
/* 00458580 8F998684 */  lw    $t9, %call16(grow_array)($gp)
/* 00458584 8E070000 */  lw    $a3, ($s0)
/* 00458588 02202825 */  move  $a1, $s1
/* 0045858C 24060001 */  li    $a2, 1
/* 00458590 0320F809 */  jalr  $t9
/* 00458594 AFA00010 */   sw    $zero, 0x10($sp)
/* 00458598 8FBC00CC */  lw    $gp, 0xcc($sp)
/* 0045859C 00000000 */  nop   
/* 004585A0 8F8E8AE0 */  lw     $t6, %got(memory)($gp)
/* 004585A4 00000000 */  nop   
/* 004585A8 8DCE0000 */  lw    $t6, ($t6)
/* 004585AC 00000000 */  nop   
/* 004585B0 01D78021 */  addu  $s0, $t6, $s7
/* 004585B4 AE020000 */  sw    $v0, ($s0)
.L004585B8:
/* 004585B8 8E0D0000 */  lw    $t5, ($s0)
/* 004585BC 0011C082 */  srl   $t8, $s1, 2
/* 004585C0 8FAB010C */  lw    $t3, 0x10c($sp)
/* 004585C4 00187880 */  sll   $t7, $t8, 2
/* 004585C8 01AF4821 */  addu  $t1, $t5, $t7
/* 004585CC AD2B0000 */  sw    $t3, ($t1)
/* 004585D0 8F998AEC */  lw     $t9, %got(seg_ic)($gp)
/* 004585D4 8FAE0104 */  lw    $t6, 0x104($sp)
/* 004585D8 8FAA0100 */  lw    $t2, 0x100($sp)
/* 004585DC 8FA800DC */  lw    $t0, 0xdc($sp)
/* 004585E0 8F390000 */  lw    $t9, ($t9)
/* 004585E4 25D8FFFF */  addiu $t8, $t6, -1
/* 004585E8 026A6021 */  addu  $t4, $s3, $t2
/* 004585EC 03281021 */  addu  $v0, $t9, $t0
/* 004585F0 AC4C0000 */  sw    $t4, ($v0)
/* 004585F4 1700FF53 */  bnez  $t8, .L00458344
/* 004585F8 AFB80104 */   sw    $t8, 0x104($sp)
.L004585FC:
/* 004585FC 8FBF00D4 */  lw    $ra, 0xd4($sp)
.L00458600:
/* 00458600 8FB000AC */  lw    $s0, 0xac($sp)
/* 00458604 8FB100B0 */  lw    $s1, 0xb0($sp)
/* 00458608 8FB200B4 */  lw    $s2, 0xb4($sp)
/* 0045860C 8FB300B8 */  lw    $s3, 0xb8($sp)
/* 00458610 8FB400BC */  lw    $s4, 0xbc($sp)
/* 00458614 8FB500C0 */  lw    $s5, 0xc0($sp)
/* 00458618 8FB600C4 */  lw    $s6, 0xc4($sp)
/* 0045861C 8FB700C8 */  lw    $s7, 0xc8($sp)
/* 00458620 8FBE00D0 */  lw    $fp, 0xd0($sp)
/* 00458624 03E00008 */  jr    $ra
/* 00458628 27BD0100 */   addiu $sp, $sp, 0x100

    .type dodword, @function
    .size dodword, .-dodword
    .end dodword

glabel parsecpload
    .ent parsecpload
    # 004594BC parsestmt
/* 0045862C 3C1C0FBD */  .cpload $t9
/* 00458630 279C1C34 */  
/* 00458634 0399E021 */  
/* 00458638 8F8E8B8C */  lw     $t6, %got(reorderflag)($gp)
/* 0045863C 27BDFF90 */  addiu $sp, $sp, -0x70
/* 00458640 91CE0000 */  lbu   $t6, ($t6)
/* 00458644 AFBF0064 */  sw    $ra, 0x64($sp)
/* 00458648 11C0002A */  beqz  $t6, .L004586F4
/* 0045864C AFBC0060 */   sw    $gp, 0x60($sp)
/* 00458650 8F8F8070 */  lw    $t7, %got(RO_1001B730)($gp)
/* 00458654 03A04025 */  move  $t0, $sp
/* 00458658 25EFB730 */  addiu $t7, %lo(RO_1001B730) # addiu $t7, $t7, -0x48d0
/* 0045865C 25F90048 */  addiu $t9, $t7, 0x48
.L00458660:
/* 00458660 89E10000 */  lwl   $at, ($t7)
/* 00458664 99E10003 */  lwr   $at, 3($t7)
/* 00458668 25EF000C */  addiu $t7, $t7, 0xc
/* 0045866C A9010000 */  swl   $at, ($t0)
/* 00458670 B9010003 */  swr   $at, 3($t0)
/* 00458674 89E1FFF8 */  lwl   $at, -8($t7)
/* 00458678 99E1FFFB */  lwr   $at, -5($t7)
/* 0045867C 2508000C */  addiu $t0, $t0, 0xc
/* 00458680 A901FFF8 */  swl   $at, -8($t0)
/* 00458684 B901FFFB */  swr   $at, -5($t0)
/* 00458688 89E1FFFC */  lwl   $at, -4($t7)
/* 0045868C 99E1FFFF */  lwr   $at, -1($t7)
/* 00458690 00000000 */  nop   
/* 00458694 A901FFFC */  swl   $at, -4($t0)
/* 00458698 15F9FFF1 */  bne   $t7, $t9, .L00458660
/* 0045869C B901FFFF */   swr   $at, -1($t0)
/* 004586A0 89E10000 */  lwl   $at, ($t7)
/* 004586A4 99E10003 */  lwr   $at, 3($t7)
/* 004586A8 8F898C68 */  lw     $t1, %got(emptystring)($gp)
/* 004586AC A9010000 */  swl   $at, ($t0)
/* 004586B0 B9010003 */  swr   $at, 3($t0)
/* 004586B4 89F90004 */  lwl   $t9, 4($t7)
/* 004586B8 99F90007 */  lwr   $t9, 7($t7)
/* 004586BC 240A0001 */  li    $t2, 1
/* 004586C0 A9190004 */  swl   $t9, 4($t0)
/* 004586C4 B9190007 */  swr   $t9, 7($t0)
/* 004586C8 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 004586CC 8D290000 */  lw    $t1, ($t1)
/* 004586D0 8FA7000C */  lw    $a3, 0xc($sp)
/* 004586D4 8FA60008 */  lw    $a2, 8($sp)
/* 004586D8 8FA50004 */  lw    $a1, 4($sp)
/* 004586DC 8FA40000 */  lw    $a0, ($sp)
/* 004586E0 AFAA0054 */  sw    $t2, 0x54($sp)
/* 004586E4 0320F809 */  jalr  $t9
/* 004586E8 AFA90050 */   sw    $t1, 0x50($sp)
/* 004586EC 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004586F0 00000000 */  nop   
.L004586F4:
/* 004586F4 8F8B8AF8 */  lw     $t3, %got(picflag)($gp)
/* 004586F8 00000000 */  nop   
/* 004586FC 8D6B0000 */  lw    $t3, ($t3)
/* 00458700 00000000 */  nop   
/* 00458704 1960005B */  blez  $t3, .L00458874
/* 00458708 8FBF0064 */   lw    $ra, 0x64($sp)
/* 0045870C 8F8C8C08 */  lw     $t4, %got(profileflag)($gp)
/* 00458710 8F8D8CA8 */  lw     $t5, %got(gp_disp_address)($gp)
/* 00458714 8F818C08 */  lw     $at, %got(profileflag)($gp)
/* 00458718 8D8C0000 */  lw    $t4, ($t4)
/* 0045871C 8DAD0000 */  lw    $t5, ($t5)
/* 00458720 AC200000 */  sw    $zero, ($at)
/* 00458724 15A00010 */  bnez  $t5, .L00458768
/* 00458728 AFAC0068 */   sw    $t4, 0x68($sp)
/* 0045872C 8F998344 */  lw    $t9, %call16(l_addr)($gp)
/* 00458730 8F8489CC */  lw     $a0, %got(gp_disp_sym)($gp)
/* 00458734 0320F809 */  jalr  $t9
/* 00458738 00000000 */   nop   
/* 0045873C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00458740 00402025 */  move  $a0, $v0
/* 00458744 8F9985B8 */  lw    $t9, %call16(enter_undef_sym)($gp)
/* 00458748 00000000 */  nop   
/* 0045874C 0320F809 */  jalr  $t9
/* 00458750 00000000 */   nop   
/* 00458754 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00458758 00000000 */  nop   
/* 0045875C 8F818CA8 */  lw     $at, %got(gp_disp_address)($gp)
/* 00458760 00000000 */  nop   
/* 00458764 AC220000 */  sw    $v0, ($at)
.L00458768:
/* 00458768 8F8E8D64 */  lw     $t6, %got(binasmfyle)($gp)
/* 0045876C 24040001 */  li    $a0, 1
/* 00458770 8DCE0000 */  lw    $t6, ($t6)
/* 00458774 00002825 */  move  $a1, $zero
/* 00458778 91D80008 */  lbu   $t8, 8($t6)
/* 0045877C 00000000 */  nop   
/* 00458780 0018CE00 */  sll   $t9, $t8, 0x18
/* 00458784 00197E42 */  srl   $t7, $t9, 0x19
/* 00458788 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 0045878C A3AF006F */  sb    $t7, 0x6f($sp)
/* 00458790 0320F809 */  jalr  $t9
/* 00458794 00000000 */   nop   
/* 00458798 8FBC0060 */  lw    $gp, 0x60($sp)
/* 0045879C 2404005A */  li    $a0, 90
/* 004587A0 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 004587A4 2405001C */  li    $a1, 28
/* 004587A8 00003025 */  move  $a2, $zero
/* 004587AC 0320F809 */  jalr  $t9
/* 004587B0 00403825 */   move  $a3, $v0
/* 004587B4 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004587B8 24050002 */  li    $a1, 2
/* 004587BC 8F888BB0 */  lw     $t0, %got(bbindex)($gp)
/* 004587C0 8F898B88 */  lw     $t1, %got(proc_instr_base)($gp)
/* 004587C4 8F848CA8 */  lw     $a0, %got(gp_disp_address)($gp)
/* 004587C8 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 004587CC 8D080000 */  lw    $t0, ($t0)
/* 004587D0 8D290000 */  lw    $t1, ($t1)
/* 004587D4 8C840000 */  lw    $a0, ($a0)
/* 004587D8 0320F809 */  jalr  $t9
/* 004587DC 01093021 */   addu  $a2, $t0, $t1
/* 004587E0 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004587E4 00002025 */  move  $a0, $zero
/* 004587E8 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 004587EC 00002825 */  move  $a1, $zero
/* 004587F0 0320F809 */  jalr  $t9
/* 004587F4 00000000 */   nop   
/* 004587F8 8FBC0060 */  lw    $gp, 0x60($sp)
/* 004587FC 24040054 */  li    $a0, 84
/* 00458800 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00458804 2405001C */  li    $a1, 28
/* 00458808 2406001C */  li    $a2, 28
/* 0045880C 0320F809 */  jalr  $t9
/* 00458810 00403825 */   move  $a3, $v0
/* 00458814 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00458818 24050003 */  li    $a1, 3
/* 0045881C 8F8A8BB0 */  lw     $t2, %got(bbindex)($gp)
/* 00458820 8F8B8B88 */  lw     $t3, %got(proc_instr_base)($gp)
/* 00458824 8F848CA8 */  lw     $a0, %got(gp_disp_address)($gp)
/* 00458828 8F9985D0 */  lw    $t9, %call16(_setrld)($gp)
/* 0045882C 8D4A0000 */  lw    $t2, ($t2)
/* 00458830 8D6B0000 */  lw    $t3, ($t3)
/* 00458834 8C840000 */  lw    $a0, ($a0)
/* 00458838 0320F809 */  jalr  $t9
/* 0045883C 014B3021 */   addu  $a2, $t2, $t3
/* 00458840 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00458844 93A7006F */  lbu   $a3, 0x6f($sp)
/* 00458848 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 0045884C 24040015 */  li    $a0, 21
/* 00458850 2405001C */  li    $a1, 28
/* 00458854 0320F809 */  jalr  $t9
/* 00458858 2406001C */   li    $a2, 28
/* 0045885C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00458860 8FAC0068 */  lw    $t4, 0x68($sp)
/* 00458864 8F818C08 */  lw     $at, %got(profileflag)($gp)
/* 00458868 00000000 */  nop   
/* 0045886C AC2C0000 */  sw    $t4, ($at)
/* 00458870 8FBF0064 */  lw    $ra, 0x64($sp)
.L00458874:
/* 00458874 27BD0070 */  addiu $sp, $sp, 0x70
/* 00458878 03E00008 */  jr    $ra
/* 0045887C 00000000 */   nop   

    .type parsecpload, @function
    .size parsecpload, .-parsecpload
    .end parsecpload

glabel parsecpadd
    .ent parsecpadd
    # 004594BC parsestmt
/* 00458880 3C1C0FBD */  .cpload $t9
/* 00458884 279C19E0 */  
/* 00458888 0399E021 */  
/* 0045888C 8F8E8AF8 */  lw     $t6, %got(picflag)($gp)
/* 00458890 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 00458894 8DCE0000 */  lw    $t6, ($t6)
/* 00458898 24010002 */  li    $at, 2
/* 0045889C AFBF001C */  sw    $ra, 0x1c($sp)
/* 004588A0 15C1001F */  bne   $t6, $at, .L00458920
/* 004588A4 AFBC0018 */   sw    $gp, 0x18($sp)
/* 004588A8 8F8F8D64 */  lw     $t7, %got(binasmfyle)($gp)
/* 004588AC 8F8989C4 */  lw     $t1, %got(cpalias_set)($gp)
/* 004588B0 8DEF0000 */  lw    $t7, ($t7)
/* 004588B4 91290000 */  lbu   $t1, ($t1)
/* 004588B8 91E50008 */  lbu   $a1, 8($t7)
/* 004588BC 24040015 */  li    $a0, 21
/* 004588C0 0005C600 */  sll   $t8, $a1, 0x18
/* 004588C4 0018CE42 */  srl   $t9, $t8, 0x19
/* 004588C8 11200007 */  beqz  $t1, .L004588E8
/* 004588CC 332500FF */   andi  $a1, $t9, 0xff
/* 004588D0 8F8A89C8 */  lw     $t2, %got(cpalias_pending)($gp)
/* 004588D4 00A03025 */  move  $a2, $a1
/* 004588D8 914A0000 */  lbu   $t2, ($t2)
/* 004588DC 00000000 */  nop   
/* 004588E0 11400008 */  beqz  $t2, .L00458904
/* 004588E4 00000000 */   nop   
.L004588E8:
/* 004588E8 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 004588EC 00A03025 */  move  $a2, $a1
/* 004588F0 0320F809 */  jalr  $t9
/* 004588F4 2407001C */   li    $a3, 28
/* 004588F8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 004588FC 10000009 */  b     .L00458924
/* 00458900 8FBF001C */   lw    $ra, 0x1c($sp)
.L00458904:
/* 00458904 8F878DCC */  lw     $a3, %got(cpalias_register)($gp)
/* 00458908 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 0045890C 90E70000 */  lbu   $a3, ($a3)
/* 00458910 0320F809 */  jalr  $t9
/* 00458914 24040015 */   li    $a0, 21
/* 00458918 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0045891C 00000000 */  nop   
.L00458920:
/* 00458920 8FBF001C */  lw    $ra, 0x1c($sp)
.L00458924:
/* 00458924 27BD0020 */  addiu $sp, $sp, 0x20
/* 00458928 03E00008 */  jr    $ra
/* 0045892C 00000000 */   nop   

    .type parsecpadd, @function
    .size parsecpadd, .-parsecpadd
    .end parsecpadd

glabel parsecprestore
    .ent parsecprestore
    # 004594BC parsestmt
/* 00458930 3C1C0FBD */  .cpload $t9
/* 00458934 279C1930 */  
/* 00458938 0399E021 */  
/* 0045893C 8F828D64 */  lw     $v0, %got(binasmfyle)($gp)
/* 00458940 27BDFF98 */  addiu $sp, $sp, -0x68
/* 00458944 8C420000 */  lw    $v0, ($v0)
/* 00458948 2401000F */  li    $at, 15
/* 0045894C 90430005 */  lbu   $v1, 5($v0)
/* 00458950 AFBF0064 */  sw    $ra, 0x64($sp)
/* 00458954 306E003F */  andi  $t6, $v1, 0x3f
/* 00458958 AFBC0060 */  sw    $gp, 0x60($sp)
/* 0045895C 15C10006 */  bne   $t6, $at, .L00458978
/* 00458960 01C01825 */   move  $v1, $t6
/* 00458964 8F8F89C4 */  lw     $t7, %got(cpalias_set)($gp)
/* 00458968 00000000 */  nop   
/* 0045896C 91EF0000 */  lbu   $t7, ($t7)
/* 00458970 00000000 */  nop   
/* 00458974 15E00009 */  bnez  $t7, .L0045899C
.L00458978:
/* 00458978 24010021 */   li    $at, 33
/* 0045897C 14610039 */  bne   $v1, $at, .L00458A64
/* 00458980 2401000F */   li    $at, 15
/* 00458984 8F988CA0 */  lw     $t8, %got(cprestore_offset)($gp)
/* 00458988 2401FFFF */  li    $at, -1
/* 0045898C 8F180000 */  lw    $t8, ($t8)
/* 00458990 00000000 */  nop   
/* 00458994 13010033 */  beq   $t8, $at, .L00458A64
/* 00458998 2401000F */   li    $at, 15
.L0045899C:
/* 0045899C 8F998070 */  lw    $t9, %got(RO_1001B820)($gp)
/* 004589A0 03A05025 */  move  $t2, $sp
/* 004589A4 2739B820 */  addiu $t9, %lo(RO_1001B820) # addiu $t9, $t9, -0x47e0
/* 004589A8 27290048 */  addiu $t1, $t9, 0x48
.L004589AC:
/* 004589AC 8B210000 */  lwl   $at, ($t9)
/* 004589B0 9B210003 */  lwr   $at, 3($t9)
/* 004589B4 2739000C */  addiu $t9, $t9, 0xc
/* 004589B8 A9410000 */  swl   $at, ($t2)
/* 004589BC B9410003 */  swr   $at, 3($t2)
/* 004589C0 8B21FFF8 */  lwl   $at, -8($t9)
/* 004589C4 9B21FFFB */  lwr   $at, -5($t9)
/* 004589C8 254A000C */  addiu $t2, $t2, 0xc
/* 004589CC A941FFF8 */  swl   $at, -8($t2)
/* 004589D0 B941FFFB */  swr   $at, -5($t2)
/* 004589D4 8B21FFFC */  lwl   $at, -4($t9)
/* 004589D8 9B21FFFF */  lwr   $at, -1($t9)
/* 004589DC 00000000 */  nop   
/* 004589E0 A941FFFC */  swl   $at, -4($t2)
/* 004589E4 1729FFF1 */  bne   $t9, $t1, .L004589AC
/* 004589E8 B941FFFF */   swr   $at, -1($t2)
/* 004589EC 8B210000 */  lwl   $at, ($t9)
/* 004589F0 9B210003 */  lwr   $at, 3($t9)
/* 004589F4 8F8B8C68 */  lw     $t3, %got(emptystring)($gp)
/* 004589F8 A9410000 */  swl   $at, ($t2)
/* 004589FC B9410003 */  swr   $at, 3($t2)
/* 00458A00 8B290004 */  lwl   $t1, 4($t9)
/* 00458A04 9B290007 */  lwr   $t1, 7($t9)
/* 00458A08 240C0001 */  li    $t4, 1
/* 00458A0C A9490004 */  swl   $t1, 4($t2)
/* 00458A10 B9490007 */  swr   $t1, 7($t2)
/* 00458A14 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00458A18 8D6B0000 */  lw    $t3, ($t3)
/* 00458A1C 8FA7000C */  lw    $a3, 0xc($sp)
/* 00458A20 8FA60008 */  lw    $a2, 8($sp)
/* 00458A24 8FA50004 */  lw    $a1, 4($sp)
/* 00458A28 8FA40000 */  lw    $a0, ($sp)
/* 00458A2C AFAC0054 */  sw    $t4, 0x54($sp)
/* 00458A30 0320F809 */  jalr  $t9
/* 00458A34 AFAB0050 */   sw    $t3, 0x50($sp)
/* 00458A38 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00458A3C 00000000 */  nop   
/* 00458A40 8F828D64 */  lw     $v0, %got(binasmfyle)($gp)
/* 00458A44 00000000 */  nop   
/* 00458A48 8C420000 */  lw    $v0, ($v0)
/* 00458A4C 00000000 */  nop   
/* 00458A50 90430005 */  lbu   $v1, 5($v0)
/* 00458A54 00000000 */  nop   
/* 00458A58 306D003F */  andi  $t5, $v1, 0x3f
/* 00458A5C 01A01825 */  move  $v1, $t5
/* 00458A60 2401000F */  li    $at, 15
.L00458A64:
/* 00458A64 1461003D */  bne   $v1, $at, .L00458B5C
/* 00458A68 24010021 */   li    $at, 33
/* 00458A6C 8F868CA0 */  lw     $a2, %got(cprestore_offset)($gp)
/* 00458A70 2401FFFF */  li    $at, -1
/* 00458A74 8CC60000 */  lw    $a2, ($a2)
/* 00458A78 00000000 */  nop   
/* 00458A7C 10C10037 */  beq   $a2, $at, .L00458B5C
/* 00458A80 24010021 */   li    $at, 33
/* 00458A84 8C4E0008 */  lw    $t6, 8($v0)
/* 00458A88 00000000 */  nop   
/* 00458A8C 11C60033 */  beq   $t6, $a2, .L00458B5C
/* 00458A90 24010021 */   li    $at, 33
/* 00458A94 8F8F8070 */  lw    $t7, %got(RO_1001B7D0)($gp)
/* 00458A98 03A04825 */  move  $t1, $sp
/* 00458A9C 25EFB7D0 */  addiu $t7, %lo(RO_1001B7D0) # addiu $t7, $t7, -0x4830
/* 00458AA0 25E80048 */  addiu $t0, $t7, 0x48
.L00458AA4:
/* 00458AA4 89E10000 */  lwl   $at, ($t7)
/* 00458AA8 99E10003 */  lwr   $at, 3($t7)
/* 00458AAC 25EF000C */  addiu $t7, $t7, 0xc
/* 00458AB0 A9210000 */  swl   $at, ($t1)
/* 00458AB4 B9210003 */  swr   $at, 3($t1)
/* 00458AB8 89E1FFF8 */  lwl   $at, -8($t7)
/* 00458ABC 99E1FFFB */  lwr   $at, -5($t7)
/* 00458AC0 2529000C */  addiu $t1, $t1, 0xc
/* 00458AC4 A921FFF8 */  swl   $at, -8($t1)
/* 00458AC8 B921FFFB */  swr   $at, -5($t1)
/* 00458ACC 89E1FFFC */  lwl   $at, -4($t7)
/* 00458AD0 99E1FFFF */  lwr   $at, -1($t7)
/* 00458AD4 00000000 */  nop   
/* 00458AD8 A921FFFC */  swl   $at, -4($t1)
/* 00458ADC 15E8FFF1 */  bne   $t7, $t0, .L00458AA4
/* 00458AE0 B921FFFF */   swr   $at, -1($t1)
/* 00458AE4 89E10000 */  lwl   $at, ($t7)
/* 00458AE8 99E10003 */  lwr   $at, 3($t7)
/* 00458AEC 8F998C68 */  lw     $t9, %got(emptystring)($gp)
/* 00458AF0 A9210000 */  swl   $at, ($t1)
/* 00458AF4 B9210003 */  swr   $at, 3($t1)
/* 00458AF8 89E80004 */  lwl   $t0, 4($t7)
/* 00458AFC 99E80007 */  lwr   $t0, 7($t7)
/* 00458B00 240A0001 */  li    $t2, 1
/* 00458B04 A9280004 */  swl   $t0, 4($t1)
/* 00458B08 B9280007 */  swr   $t0, 7($t1)
/* 00458B0C 8F390000 */  lw    $t9, ($t9)
/* 00458B10 8FA7000C */  lw    $a3, 0xc($sp)
/* 00458B14 AFB90050 */  sw    $t9, 0x50($sp)
/* 00458B18 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00458B1C 8FA60008 */  lw    $a2, 8($sp)
/* 00458B20 8FA50004 */  lw    $a1, 4($sp)
/* 00458B24 8FA40000 */  lw    $a0, ($sp)
/* 00458B28 0320F809 */  jalr  $t9
/* 00458B2C AFAA0054 */   sw    $t2, 0x54($sp)
/* 00458B30 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00458B34 00000000 */  nop   
/* 00458B38 8F828D64 */  lw     $v0, %got(binasmfyle)($gp)
/* 00458B3C 00000000 */  nop   
/* 00458B40 8C420000 */  lw    $v0, ($v0)
/* 00458B44 00000000 */  nop   
/* 00458B48 90430005 */  lbu   $v1, 5($v0)
/* 00458B4C 00000000 */  nop   
/* 00458B50 306B003F */  andi  $t3, $v1, 0x3f
/* 00458B54 01601825 */  move  $v1, $t3
/* 00458B58 24010021 */  li    $at, 33
.L00458B5C:
/* 00458B5C 14610037 */  bne   $v1, $at, .L00458C3C
/* 00458B60 00000000 */   nop   
/* 00458B64 8F8C89C4 */  lw     $t4, %got(cpalias_set)($gp)
/* 00458B68 00000000 */  nop   
/* 00458B6C 918C0000 */  lbu   $t4, ($t4)
/* 00458B70 00000000 */  nop   
/* 00458B74 11800031 */  beqz  $t4, .L00458C3C
/* 00458B78 00000000 */   nop   
/* 00458B7C 904D0008 */  lbu   $t5, 8($v0)
/* 00458B80 8F888DCC */  lw     $t0, %got(cpalias_register)($gp)
/* 00458B84 000D7600 */  sll   $t6, $t5, 0x18
/* 00458B88 91080000 */  lbu   $t0, ($t0)
/* 00458B8C 000EC642 */  srl   $t8, $t6, 0x19
/* 00458B90 1308002A */  beq   $t8, $t0, .L00458C3C
/* 00458B94 00000000 */   nop   
/* 00458B98 8F8F8070 */  lw    $t7, %got(RO_1001B780)($gp)
/* 00458B9C 03A05025 */  move  $t2, $sp
/* 00458BA0 25EFB780 */  addiu $t7, %lo(RO_1001B780) # addiu $t7, $t7, -0x4880
/* 00458BA4 25F90048 */  addiu $t9, $t7, 0x48
.L00458BA8:
/* 00458BA8 89E10000 */  lwl   $at, ($t7)
/* 00458BAC 99E10003 */  lwr   $at, 3($t7)
/* 00458BB0 25EF000C */  addiu $t7, $t7, 0xc
/* 00458BB4 A9410000 */  swl   $at, ($t2)
/* 00458BB8 B9410003 */  swr   $at, 3($t2)
/* 00458BBC 89E1FFF8 */  lwl   $at, -8($t7)
/* 00458BC0 99E1FFFB */  lwr   $at, -5($t7)
/* 00458BC4 254A000C */  addiu $t2, $t2, 0xc
/* 00458BC8 A941FFF8 */  swl   $at, -8($t2)
/* 00458BCC B941FFFB */  swr   $at, -5($t2)
/* 00458BD0 89E1FFFC */  lwl   $at, -4($t7)
/* 00458BD4 99E1FFFF */  lwr   $at, -1($t7)
/* 00458BD8 00000000 */  nop   
/* 00458BDC A941FFFC */  swl   $at, -4($t2)
/* 00458BE0 15F9FFF1 */  bne   $t7, $t9, .L00458BA8
/* 00458BE4 B941FFFF */   swr   $at, -1($t2)
/* 00458BE8 89E10000 */  lwl   $at, ($t7)
/* 00458BEC 99E10003 */  lwr   $at, 3($t7)
/* 00458BF0 8F8B8C68 */  lw     $t3, %got(emptystring)($gp)
/* 00458BF4 A9410000 */  swl   $at, ($t2)
/* 00458BF8 B9410003 */  swr   $at, 3($t2)
/* 00458BFC 89F90004 */  lwl   $t9, 4($t7)
/* 00458C00 99F90007 */  lwr   $t9, 7($t7)
/* 00458C04 240C0001 */  li    $t4, 1
/* 00458C08 A9590004 */  swl   $t9, 4($t2)
/* 00458C0C B9590007 */  swr   $t9, 7($t2)
/* 00458C10 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00458C14 8D6B0000 */  lw    $t3, ($t3)
/* 00458C18 8FA7000C */  lw    $a3, 0xc($sp)
/* 00458C1C 8FA60008 */  lw    $a2, 8($sp)
/* 00458C20 8FA50004 */  lw    $a1, 4($sp)
/* 00458C24 8FA40000 */  lw    $a0, ($sp)
/* 00458C28 AFAC0054 */  sw    $t4, 0x54($sp)
/* 00458C2C 0320F809 */  jalr  $t9
/* 00458C30 AFAB0050 */   sw    $t3, 0x50($sp)
/* 00458C34 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00458C38 00000000 */  nop   
.L00458C3C:
/* 00458C3C 8F8D8AF8 */  lw     $t5, %got(picflag)($gp)
/* 00458C40 00000000 */  nop   
/* 00458C44 8DAD0000 */  lw    $t5, ($t5)
/* 00458C48 00000000 */  nop   
/* 00458C4C 19A0006F */  blez  $t5, .L00458E0C
/* 00458C50 8FBF0064 */   lw    $ra, 0x64($sp)
/* 00458C54 8F828D64 */  lw     $v0, %got(binasmfyle)($gp)
/* 00458C58 2401000F */  li    $at, 15
/* 00458C5C 8C420000 */  lw    $v0, ($v0)
/* 00458C60 00000000 */  nop   
/* 00458C64 904E0005 */  lbu   $t6, 5($v0)
/* 00458C68 00000000 */  nop   
/* 00458C6C 31D8003F */  andi  $t8, $t6, 0x3f
/* 00458C70 1701005A */  bne   $t8, $at, .L00458DDC
/* 00458C74 00000000 */   nop   
/* 00458C78 8C480008 */  lw    $t0, 8($v0)
/* 00458C7C 8F818CA0 */  lw     $at, %got(cprestore_offset)($gp)
/* 00458C80 8F868CA0 */  lw     $a2, %got(cprestore_offset)($gp)
/* 00458C84 AC280000 */  sw    $t0, ($at)
/* 00458C88 8CC60000 */  lw    $a2, ($a2)
/* 00458C8C 00000000 */  nop   
/* 00458C90 28C18000 */  slti  $at, $a2, -0x8000
/* 00458C94 1420000B */  bnez  $at, .L00458CC4
/* 00458C98 34018000 */   li    $at, 32768
/* 00458C9C 00C1082A */  slt   $at, $a2, $at
/* 00458CA0 10200008 */  beqz  $at, .L00458CC4
/* 00458CA4 24040070 */   li    $a0, 112
/* 00458CA8 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00458CAC 2405001C */  li    $a1, 28
/* 00458CB0 0320F809 */  jalr  $t9
/* 00458CB4 2407001D */   li    $a3, 29
/* 00458CB8 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00458CBC 10000053 */  b     .L00458E0C
/* 00458CC0 8FBF0064 */   lw    $ra, 0x64($sp)
.L00458CC4:
/* 00458CC4 8F898BB4 */  lw     $t1, %got(atflag)($gp)
/* 00458CC8 34018000 */  li    $at, 32768
/* 00458CCC 91290000 */  lbu   $t1, ($t1)
/* 00458CD0 00C1082A */  slt   $at, $a2, $at
/* 00458CD4 15200008 */  bnez  $t1, .L00458CF8
/* 00458CD8 00000000 */   nop   
/* 00458CDC 8F9984C8 */  lw    $t9, %call16(macro_error)($gp)
/* 00458CE0 00000000 */  nop   
/* 00458CE4 0320F809 */  jalr  $t9
/* 00458CE8 00000000 */   nop   
/* 00458CEC 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00458CF0 10000046 */  b     .L00458E0C
/* 00458CF4 8FBF0064 */   lw    $ra, 0x64($sp)
.L00458CF8:
/* 00458CF8 14200015 */  bnez  $at, .L00458D50
/* 00458CFC 3401FFFF */   li    $at, 65535
/* 00458D00 00C1082A */  slt   $at, $a2, $at
/* 00458D04 10200012 */  beqz  $at, .L00458D50
/* 00458D08 24040054 */   li    $a0, 84
/* 00458D0C 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00458D10 24050001 */  li    $a1, 1
/* 00458D14 2406001D */  li    $a2, 29
/* 00458D18 0320F809 */  jalr  $t9
/* 00458D1C 24077FFF */   li    $a3, 32767
/* 00458D20 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00458D24 24040070 */  li    $a0, 112
/* 00458D28 8F868CA0 */  lw     $a2, %got(cprestore_offset)($gp)
/* 00458D2C 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00458D30 8CC60000 */  lw    $a2, ($a2)
/* 00458D34 2405001C */  li    $a1, 28
/* 00458D38 24070001 */  li    $a3, 1
/* 00458D3C 0320F809 */  jalr  $t9
/* 00458D40 24C68001 */   addiu $a2, $a2, -0x7fff
/* 00458D44 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00458D48 10000030 */  b     .L00458E0C
/* 00458D4C 8FBF0064 */   lw    $ra, 0x64($sp)
.L00458D50:
/* 00458D50 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00458D54 24040001 */  li    $a0, 1
/* 00458D58 0320F809 */  jalr  $t9
/* 00458D5C 00C02825 */   move  $a1, $a2
/* 00458D60 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00458D64 2404005A */  li    $a0, 90
/* 00458D68 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00458D6C 24050001 */  li    $a1, 1
/* 00458D70 00003025 */  move  $a2, $zero
/* 00458D74 0320F809 */  jalr  $t9
/* 00458D78 00403825 */   move  $a3, $v0
/* 00458D7C 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00458D80 24040015 */  li    $a0, 21
/* 00458D84 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00458D88 24050001 */  li    $a1, 1
/* 00458D8C 24060001 */  li    $a2, 1
/* 00458D90 0320F809 */  jalr  $t9
/* 00458D94 2407001D */   li    $a3, 29
/* 00458D98 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00458D9C 00002025 */  move  $a0, $zero
/* 00458DA0 8F858CA0 */  lw     $a1, %got(cprestore_offset)($gp)
/* 00458DA4 8F9984CC */  lw    $t9, %call16(disp)($gp)
/* 00458DA8 8CA50000 */  lw    $a1, ($a1)
/* 00458DAC 0320F809 */  jalr  $t9
/* 00458DB0 00000000 */   nop   
/* 00458DB4 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00458DB8 24040070 */  li    $a0, 112
/* 00458DBC 8F998474 */  lw    $t9, %call16(emitloadstore)($gp)
/* 00458DC0 2405001C */  li    $a1, 28
/* 00458DC4 00403025 */  move  $a2, $v0
/* 00458DC8 0320F809 */  jalr  $t9
/* 00458DCC 24070001 */   li    $a3, 1
/* 00458DD0 8FBC0060 */  lw    $gp, 0x60($sp)
/* 00458DD4 1000000D */  b     .L00458E0C
/* 00458DD8 8FBF0064 */   lw    $ra, 0x64($sp)
.L00458DDC:
/* 00458DDC 8F8189C4 */  lw     $at, %got(cpalias_set)($gp)
/* 00458DE0 24030001 */  li    $v1, 1
/* 00458DE4 A0230000 */  sb    $v1, ($at)
/* 00458DE8 8F8189C8 */  lw     $at, %got(cpalias_pending)($gp)
/* 00458DEC 00000000 */  nop   
/* 00458DF0 A0230000 */  sb    $v1, ($at)
/* 00458DF4 90590008 */  lbu   $t9, 8($v0)
/* 00458DF8 8F818DCC */  lw     $at, %got(cpalias_register)($gp)
/* 00458DFC 00197E00 */  sll   $t7, $t9, 0x18
/* 00458E00 000F5642 */  srl   $t2, $t7, 0x19
/* 00458E04 A02A0000 */  sb    $t2, ($at)
/* 00458E08 8FBF0064 */  lw    $ra, 0x64($sp)
.L00458E0C:
/* 00458E0C 27BD0068 */  addiu $sp, $sp, 0x68
/* 00458E10 03E00008 */  jr    $ra
/* 00458E14 00000000 */   nop   

    .type parsecprestore, @function
    .size parsecprestore, .-parsecprestore
    .end parsecprestore

glabel parseword
    .ent parseword
    # 004594BC parsestmt
/* 00458E18 3C1C0FBD */  .cpload $t9
/* 00458E1C 279C1448 */  
/* 00458E20 0399E021 */  
/* 00458E24 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 00458E28 AFA40040 */  sw    $a0, 0x40($sp)
/* 00458E2C 8F8489D4 */  lw     $a0, %got(last_globl_symno)($gp)
/* 00458E30 8F99850C */  lw    $t9, %call16(remember_symbol_size)($gp)
/* 00458E34 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00458E38 8FA50040 */  lw    $a1, 0x40($sp)
/* 00458E3C 8C840000 */  lw    $a0, ($a0)
/* 00458E40 0320F809 */  jalr  $t9
/* 00458E44 AFBC0020 */   sw    $gp, 0x20($sp)
/* 00458E48 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00458E4C 00000000 */  nop   
/* 00458E50 8F858D64 */  lw     $a1, %got(binasmfyle)($gp)
/* 00458E54 00000000 */  nop   
/* 00458E58 8CA30000 */  lw    $v1, ($a1)
/* 00458E5C 00000000 */  nop   
/* 00458E60 8C640000 */  lw    $a0, ($v1)
/* 00458E64 00000000 */  nop   
/* 00458E68 1080000A */  beqz  $a0, .L00458E94
/* 00458E6C 00000000 */   nop   
/* 00458E70 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 00458E74 AFA30030 */  sw    $v1, 0x30($sp)
/* 00458E78 0320F809 */  jalr  $t9
/* 00458E7C 00000000 */   nop   
/* 00458E80 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00458E84 8FA30030 */  lw    $v1, 0x30($sp)
/* 00458E88 8F858D64 */  lw     $a1, %got(binasmfyle)($gp)
/* 00458E8C 10000002 */  b     .L00458E98
/* 00458E90 AFA2003C */   sw    $v0, 0x3c($sp)
.L00458E94:
/* 00458E94 AFA0003C */  sw    $zero, 0x3c($sp)
.L00458E98:
/* 00458E98 90680005 */  lbu   $t0, 5($v1)
/* 00458E9C 2401000F */  li    $at, 15
/* 00458EA0 310E003F */  andi  $t6, $t0, 0x3f
/* 00458EA4 39CF0010 */  xori  $t7, $t6, 0x10
/* 00458EA8 2DE80001 */  sltiu $t0, $t7, 1
/* 00458EAC 11000007 */  beqz  $t0, .L00458ECC
/* 00458EB0 00000000 */   nop   
/* 00458EB4 8F888AF8 */  lw     $t0, %got(picflag)($gp)
/* 00458EB8 00000000 */  nop   
/* 00458EBC 8D080000 */  lw    $t0, ($t0)
/* 00458EC0 00000000 */  nop   
/* 00458EC4 39180002 */  xori  $t8, $t0, 2
/* 00458EC8 2F080001 */  sltiu $t0, $t8, 1
.L00458ECC:
/* 00458ECC 8F828BE8 */  lw     $v0, %got(currsegment)($gp)
/* 00458ED0 8FAF0040 */  lw    $t7, 0x40($sp)
/* 00458ED4 90420000 */  lbu   $v0, ($v0)
/* 00458ED8 00000000 */  nop   
/* 00458EDC 1040002C */  beqz  $v0, .L00458F90
/* 00458EE0 00000000 */   nop   
/* 00458EE4 1041002B */  beq   $v0, $at, .L00458F94
/* 00458EE8 2DE10005 */   sltiu $at, $t7, 5
/* 00458EEC 8FB90040 */  lw    $t9, 0x40($sp)
/* 00458EF0 8FA40040 */  lw    $a0, 0x40($sp)
/* 00458EF4 2F210005 */  sltiu $at, $t9, 5
/* 00458EF8 14200019 */  bnez  $at, .L00458F60
/* 00458EFC 310E00FF */   andi  $t6, $t0, 0xff
/* 00458F00 8C690008 */  lw    $t1, 8($v1)
/* 00458F04 8F9985E8 */  lw    $t9, %call16(get_binasm)($gp)
/* 00458F08 00A02025 */  move  $a0, $a1
/* 00458F0C AFA30030 */  sw    $v1, 0x30($sp)
/* 00458F10 0320F809 */  jalr  $t9
/* 00458F14 AFA90034 */   sw    $t1, 0x34($sp)
/* 00458F18 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00458F1C 8FA30030 */  lw    $v1, 0x30($sp)
/* 00458F20 8F8A8D64 */  lw     $t2, %got(binasmfyle)($gp)
/* 00458F24 8F8C8B64 */  lw     $t4, %got(currsegmentindex)($gp)
/* 00458F28 8D4A0000 */  lw    $t2, ($t2)
/* 00458F2C 8FAB003C */  lw    $t3, 0x3c($sp)
/* 00458F30 8F998560 */  lw    $t9, %call16(dodword)($gp)
/* 00458F34 8D8C0000 */  lw    $t4, ($t4)
/* 00458F38 8D470008 */  lw    $a3, 8($t2)
/* 00458F3C 8FA40040 */  lw    $a0, 0x40($sp)
/* 00458F40 8FA60034 */  lw    $a2, 0x34($sp)
/* 00458F44 8C65000C */  lw    $a1, 0xc($v1)
/* 00458F48 AFAB0010 */  sw    $t3, 0x10($sp)
/* 00458F4C 0320F809 */  jalr  $t9
/* 00458F50 AFAC0014 */   sw    $t4, 0x14($sp)
/* 00458F54 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00458F58 10000056 */  b     .L004590B4
/* 00458F5C 8FBF0024 */   lw    $ra, 0x24($sp)
.L00458F60:
/* 00458F60 8F8D8B64 */  lw     $t5, %got(currsegmentindex)($gp)
/* 00458F64 8F99855C */  lw    $t9, %call16(doword)($gp)
/* 00458F68 8DAD0000 */  lw    $t5, ($t5)
/* 00458F6C 8C65000C */  lw    $a1, 0xc($v1)
/* 00458F70 8C660008 */  lw    $a2, 8($v1)
/* 00458F74 8FA7003C */  lw    $a3, 0x3c($sp)
/* 00458F78 AFAE0014 */  sw    $t6, 0x14($sp)
/* 00458F7C 0320F809 */  jalr  $t9
/* 00458F80 AFAD0010 */   sw    $t5, 0x10($sp)
/* 00458F84 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00458F88 1000004A */  b     .L004590B4
/* 00458F8C 8FBF0024 */   lw    $ra, 0x24($sp)
.L00458F90:
/* 00458F90 2DE10005 */  sltiu $at, $t7, 5
.L00458F94:
/* 00458F94 14200016 */  bnez  $at, .L00458FF0
/* 00458F98 00A02025 */   move  $a0, $a1
/* 00458F9C 8C780008 */  lw    $t8, 8($v1)
/* 00458FA0 8F9985E8 */  lw    $t9, %call16(get_binasm)($gp)
/* 00458FA4 AFA30030 */  sw    $v1, 0x30($sp)
/* 00458FA8 0320F809 */  jalr  $t9
/* 00458FAC AFB80034 */   sw    $t8, 0x34($sp)
/* 00458FB0 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00458FB4 8FA30030 */  lw    $v1, 0x30($sp)
/* 00458FB8 8F998D64 */  lw     $t9, %got(binasmfyle)($gp)
/* 00458FBC 8FA9003C */  lw    $t1, 0x3c($sp)
/* 00458FC0 8F390000 */  lw    $t9, ($t9)
/* 00458FC4 8FA60034 */  lw    $a2, 0x34($sp)
/* 00458FC8 8F270008 */  lw    $a3, 8($t9)
/* 00458FCC 8F9982E4 */  lw    $t9, %call16(fill_pseudo)($gp)
/* 00458FD0 8C65000C */  lw    $a1, 0xc($v1)
/* 00458FD4 AFA00014 */  sw    $zero, 0x14($sp)
/* 00458FD8 24040012 */  li    $a0, 18
/* 00458FDC 0320F809 */  jalr  $t9
/* 00458FE0 AFA90010 */   sw    $t1, 0x10($sp)
/* 00458FE4 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00458FE8 10000032 */  b     .L004590B4
/* 00458FEC 8FBF0024 */   lw    $ra, 0x24($sp)
.L00458FF0:
/* 00458FF0 8FAA0040 */  lw    $t2, 0x40($sp)
/* 00458FF4 24010002 */  li    $at, 2
/* 00458FF8 15410015 */  bne   $t2, $at, .L00459050
/* 00458FFC 310C00FF */   andi  $t4, $t0, 0xff
/* 00459000 8F8B8B60 */  lw     $t3, %got(shftaddr)($gp)
/* 00459004 24010001 */  li    $at, 1
/* 00459008 8D6B0000 */  lw    $t3, ($t3)
/* 0045900C 24040011 */  li    $a0, 17
/* 00459010 1561000E */  bne   $t3, $at, .L0045904C
/* 00459014 00002825 */   move  $a1, $zero
/* 00459018 8F9982E4 */  lw    $t9, %call16(fill_pseudo)($gp)
/* 0045901C 24060001 */  li    $a2, 1
/* 00459020 00003825 */  move  $a3, $zero
/* 00459024 AFA00010 */  sw    $zero, 0x10($sp)
/* 00459028 AFA00014 */  sw    $zero, 0x14($sp)
/* 0045902C AFA30030 */  sw    $v1, 0x30($sp)
/* 00459030 0320F809 */  jalr  $t9
/* 00459034 AFA8002C */   sw    $t0, 0x2c($sp)
/* 00459038 8FBC0020 */  lw    $gp, 0x20($sp)
/* 0045903C 8FA30030 */  lw    $v1, 0x30($sp)
/* 00459040 8F818B60 */  lw     $at, %got(shftaddr)($gp)
/* 00459044 8FA8002C */  lw    $t0, 0x2c($sp)
/* 00459048 AC200000 */  sw    $zero, ($at)
.L0045904C:
/* 0045904C 310C00FF */  andi  $t4, $t0, 0xff
.L00459050:
/* 00459050 1180000D */  beqz  $t4, .L00459088
/* 00459054 2404000F */   li    $a0, 15
/* 00459058 8FAD003C */  lw    $t5, 0x3c($sp)
/* 0045905C 8F9982E4 */  lw    $t9, %call16(fill_pseudo)($gp)
/* 00459060 8C65000C */  lw    $a1, 0xc($v1)
/* 00459064 8C660008 */  lw    $a2, 8($v1)
/* 00459068 8FA70040 */  lw    $a3, 0x40($sp)
/* 0045906C 24040016 */  li    $a0, 22
/* 00459070 AFA00014 */  sw    $zero, 0x14($sp)
/* 00459074 0320F809 */  jalr  $t9
/* 00459078 AFAD0010 */   sw    $t5, 0x10($sp)
/* 0045907C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00459080 1000000C */  b     .L004590B4
/* 00459084 8FBF0024 */   lw    $ra, 0x24($sp)
.L00459088:
/* 00459088 8FAE003C */  lw    $t6, 0x3c($sp)
/* 0045908C 8F9982E4 */  lw    $t9, %call16(fill_pseudo)($gp)
/* 00459090 8C65000C */  lw    $a1, 0xc($v1)
/* 00459094 8C660008 */  lw    $a2, 8($v1)
/* 00459098 8FA70040 */  lw    $a3, 0x40($sp)
/* 0045909C AFA00014 */  sw    $zero, 0x14($sp)
/* 004590A0 0320F809 */  jalr  $t9
/* 004590A4 AFAE0010 */   sw    $t6, 0x10($sp)
/* 004590A8 8FBC0020 */  lw    $gp, 0x20($sp)
/* 004590AC 00000000 */  nop   
/* 004590B0 8FBF0024 */  lw    $ra, 0x24($sp)
.L004590B4:
/* 004590B4 27BD0040 */  addiu $sp, $sp, 0x40
/* 004590B8 03E00008 */  jr    $ra
/* 004590BC 00000000 */   nop   

    .type parseword, @function
    .size parseword, .-parseword
    .end parseword

glabel emit_dword_item
    .ent emit_dword_item
    # 004591BC parse_dli_dla
    # 00464528 parseafra
/* 004590C0 3C1C0FBD */  .cpload $t9
/* 004590C4 279C11A0 */  
/* 004590C8 0399E021 */  
/* 004590CC 8F828B64 */  lw     $v0, %got(currsegmentindex)($gp)
/* 004590D0 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 004590D4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 004590D8 8C4F0000 */  lw    $t7, ($v0)
/* 004590DC 906E0000 */  lbu   $t6, ($v1)
/* 004590E0 24180009 */  li    $t8, 9
/* 004590E4 24190009 */  li    $t9, 9
/* 004590E8 AC590000 */  sw    $t9, ($v0)
/* 004590EC A0780000 */  sb    $t8, ($v1)
/* 004590F0 8F998404 */  lw    $t9, %call16(idn_for_data)($gp)
/* 004590F4 AFBF0024 */  sw    $ra, 0x24($sp)
/* 004590F8 AFBC0020 */  sw    $gp, 0x20($sp)
/* 004590FC AFA40040 */  sw    $a0, 0x40($sp)
/* 00459100 AFA50044 */  sw    $a1, 0x44($sp)
/* 00459104 AFA60048 */  sw    $a2, 0x48($sp)
/* 00459108 AFAF0034 */  sw    $t7, 0x34($sp)
/* 0045910C 0320F809 */  jalr  $t9
/* 00459110 A3AE003B */   sb    $t6, 0x3b($sp)
/* 00459114 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00459118 AFA2002C */  sw    $v0, 0x2c($sp)
/* 0045911C 8F9985AC */  lw    $t9, %call16(enterstp)($gp)
/* 00459120 00402025 */  move  $a0, $v0
/* 00459124 0320F809 */  jalr  $t9
/* 00459128 00000000 */   nop   
/* 0045912C 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00459130 8FA4002C */  lw    $a0, 0x2c($sp)
/* 00459134 8F9985B0 */  lw    $t9, %call16(enterlabel)($gp)
/* 00459138 27A50030 */  addiu $a1, $sp, 0x30
/* 0045913C 0320F809 */  jalr  $t9
/* 00459140 00000000 */   nop   
/* 00459144 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00459148 8FA4002C */  lw    $a0, 0x2c($sp)
/* 0045914C 8F868B64 */  lw     $a2, %got(currsegmentindex)($gp)
/* 00459150 8F9985C8 */  lw    $t9, %call16(defineasym)($gp)
/* 00459154 8FA50030 */  lw    $a1, 0x30($sp)
/* 00459158 8CC60000 */  lw    $a2, ($a2)
/* 0045915C 0320F809 */  jalr  $t9
/* 00459160 00000000 */   nop   
/* 00459164 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00459168 8FA80048 */  lw    $t0, 0x48($sp)
/* 0045916C 8F998560 */  lw    $t9, %call16(dodword)($gp)
/* 00459170 8FA60040 */  lw    $a2, 0x40($sp)
/* 00459174 8FA70044 */  lw    $a3, 0x44($sp)
/* 00459178 24090009 */  li    $t1, 9
/* 0045917C AFA90014 */  sw    $t1, 0x14($sp)
/* 00459180 24040008 */  li    $a0, 8
/* 00459184 24050001 */  li    $a1, 1
/* 00459188 0320F809 */  jalr  $t9
/* 0045918C AFA80010 */   sw    $t0, 0x10($sp)
/* 00459190 8FBC0020 */  lw    $gp, 0x20($sp)
/* 00459194 93AA003B */  lbu   $t2, 0x3b($sp)
/* 00459198 8F818BE8 */  lw     $at, %got(currsegment)($gp)
/* 0045919C 8FAB0034 */  lw    $t3, 0x34($sp)
/* 004591A0 A02A0000 */  sb    $t2, ($at)
/* 004591A4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 004591A8 8F818B64 */  lw     $at, %got(currsegmentindex)($gp)
/* 004591AC 8FA20030 */  lw    $v0, 0x30($sp)
/* 004591B0 27BD0040 */  addiu $sp, $sp, 0x40
/* 004591B4 03E00008 */  jr    $ra
/* 004591B8 AC2B0000 */   sw    $t3, ($at)

    .type emit_dword_item, @function
    .size emit_dword_item, .-emit_dword_item
    .end emit_dword_item

glabel parse_dli_dla
    .ent parse_dli_dla
    # 004594BC parsestmt
    # 00464528 parseafra
/* 004591BC 3C1C0FBD */  .cpload $t9
/* 004591C0 279C10A4 */  
/* 004591C4 0399E021 */  
/* 004591C8 8F848D64 */  lw     $a0, %got(binasmfyle)($gp)
/* 004591CC 27BDFF30 */  addiu $sp, $sp, -0xd0
/* 004591D0 8C820000 */  lw    $v0, ($a0)
/* 004591D4 AFB100B4 */  sw    $s1, 0xb4($sp)
/* 004591D8 8C4E0008 */  lw    $t6, 8($v0)
/* 004591DC 24010002 */  li    $at, 2
/* 004591E0 000E7B80 */  sll   $t7, $t6, 0xe
/* 004591E4 000FC702 */  srl   $t8, $t7, 0x1c
/* 004591E8 AFBF00BC */  sw    $ra, 0xbc($sp)
/* 004591EC AFBC00B8 */  sw    $gp, 0xb8($sp)
/* 004591F0 AFB000B0 */  sw    $s0, 0xb0($sp)
/* 004591F4 AFA000C4 */  sw    $zero, 0xc4($sp)
/* 004591F8 17010064 */  bne   $t8, $at, .L0045938C
/* 004591FC 24110048 */   li    $s1, 72
/* 00459200 8C59000C */  lw    $t9, 0xc($v0)
/* 00459204 00000000 */  nop   
/* 00459208 AFB900CC */  sw    $t9, 0xcc($sp)
/* 0045920C 8F9985E8 */  lw    $t9, %call16(get_binasm)($gp)
/* 00459210 00000000 */  nop   
/* 00459214 0320F809 */  jalr  $t9
/* 00459218 00000000 */   nop   
/* 0045921C 8FBC00B8 */  lw    $gp, 0xb8($sp)
/* 00459220 24010002 */  li    $at, 2
/* 00459224 8F828D64 */  lw     $v0, %got(binasmfyle)($gp)
/* 00459228 00000000 */  nop   
/* 0045922C 8C420000 */  lw    $v0, ($v0)
/* 00459230 00000000 */  nop   
/* 00459234 90480008 */  lbu   $t0, 8($v0)
/* 00459238 8C4B0008 */  lw    $t3, 8($v0)
/* 0045923C 00084E00 */  sll   $t1, $t0, 0x18
/* 00459240 000B6380 */  sll   $t4, $t3, 0xe
/* 00459244 00095642 */  srl   $t2, $t1, 0x19
/* 00459248 000C6F02 */  srl   $t5, $t4, 0x1c
/* 0045924C 8C50000C */  lw    $s0, 0xc($v0)
/* 00459250 11A10044 */  beq   $t5, $at, .L00459364
/* 00459254 A3AA00C3 */   sb    $t2, 0xc3($sp)
/* 00459258 8F8E8070 */  lw    $t6, %got(RO_1001B8C0)($gp)
/* 0045925C 03A0C825 */  move  $t9, $sp
/* 00459260 25CEB8C0 */  addiu $t6, %lo(RO_1001B8C0) # addiu $t6, $t6, -0x4740
/* 00459264 25D80048 */  addiu $t8, $t6, 0x48
.L00459268:
/* 00459268 89C10000 */  lwl   $at, ($t6)
/* 0045926C 99C10003 */  lwr   $at, 3($t6)
/* 00459270 25CE000C */  addiu $t6, $t6, 0xc
/* 00459274 AB210000 */  swl   $at, ($t9)
/* 00459278 BB210003 */  swr   $at, 3($t9)
/* 0045927C 89C1FFF8 */  lwl   $at, -8($t6)
/* 00459280 99C1FFFB */  lwr   $at, -5($t6)
/* 00459284 2739000C */  addiu $t9, $t9, 0xc
/* 00459288 AB21FFF8 */  swl   $at, -8($t9)
/* 0045928C BB21FFFB */  swr   $at, -5($t9)
/* 00459290 89C1FFFC */  lwl   $at, -4($t6)
/* 00459294 99C1FFFF */  lwr   $at, -1($t6)
/* 00459298 00000000 */  nop   
/* 0045929C AB21FFFC */  swl   $at, -4($t9)
/* 004592A0 15D8FFF1 */  bne   $t6, $t8, .L00459268
/* 004592A4 BB21FFFF */   swr   $at, -1($t9)
/* 004592A8 89C10000 */  lwl   $at, ($t6)
/* 004592AC 99C10003 */  lwr   $at, 3($t6)
/* 004592B0 8F888070 */  lw    $t0, %got(RO_1001B870)($gp)
/* 004592B4 AB210000 */  swl   $at, ($t9)
/* 004592B8 BB210003 */  swr   $at, 3($t9)
/* 004592BC 89D80004 */  lwl   $t8, 4($t6)
/* 004592C0 99D80007 */  lwr   $t8, 7($t6)
/* 004592C4 2508B870 */  addiu $t0, %lo(RO_1001B870) # addiu $t0, $t0, -0x4790
/* 004592C8 AB380004 */  swl   $t8, 4($t9)
/* 004592CC 250A0048 */  addiu $t2, $t0, 0x48
/* 004592D0 03A05825 */  move  $t3, $sp
/* 004592D4 BB380007 */  swr   $t8, 7($t9)
.L004592D8:
/* 004592D8 89010000 */  lwl   $at, ($t0)
/* 004592DC 99010003 */  lwr   $at, 3($t0)
/* 004592E0 2508000C */  addiu $t0, $t0, 0xc
/* 004592E4 A9610050 */  swl   $at, 0x50($t3)
/* 004592E8 B9610053 */  swr   $at, 0x53($t3)
/* 004592EC 8901FFF8 */  lwl   $at, -8($t0)
/* 004592F0 9901FFFB */  lwr   $at, -5($t0)
/* 004592F4 256B000C */  addiu $t3, $t3, 0xc
/* 004592F8 A9610048 */  swl   $at, 0x48($t3)
/* 004592FC B961004B */  swr   $at, 0x4b($t3)
/* 00459300 8901FFFC */  lwl   $at, -4($t0)
/* 00459304 9901FFFF */  lwr   $at, -1($t0)
/* 00459308 00000000 */  nop   
/* 0045930C A961004C */  swl   $at, 0x4c($t3)
/* 00459310 150AFFF1 */  bne   $t0, $t2, .L004592D8
/* 00459314 B961004F */   swr   $at, 0x4f($t3)
/* 00459318 89010000 */  lwl   $at, ($t0)
/* 0045931C 99010003 */  lwr   $at, 3($t0)
/* 00459320 240C0876 */  li    $t4, 2166
/* 00459324 A9610050 */  swl   $at, 0x50($t3)
/* 00459328 B9610053 */  swr   $at, 0x53($t3)
/* 0045932C 890A0004 */  lwl   $t2, 4($t0)
/* 00459330 990A0007 */  lwr   $t2, 7($t0)
/* 00459334 00000000 */  nop   
/* 00459338 A96A0054 */  swl   $t2, 0x54($t3)
/* 0045933C B96A0057 */  swr   $t2, 0x57($t3)
/* 00459340 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 00459344 8FA7000C */  lw    $a3, 0xc($sp)
/* 00459348 8FA60008 */  lw    $a2, 8($sp)
/* 0045934C 8FA50004 */  lw    $a1, 4($sp)
/* 00459350 8FA40000 */  lw    $a0, ($sp)
/* 00459354 0320F809 */  jalr  $t9
/* 00459358 AFAC00A0 */   sw    $t4, 0xa0($sp)
/* 0045935C 8FBC00B8 */  lw    $gp, 0xb8($sp)
/* 00459360 00000000 */  nop   
.L00459364:
/* 00459364 8F998300 */  lw    $t9, %call16(ll_load_immed)($gp)
/* 00459368 8FA400CC */  lw    $a0, 0xcc($sp)
/* 0045936C 93A600C3 */  lbu   $a2, 0xc3($sp)
/* 00459370 0320F809 */  jalr  $t9
/* 00459374 02002825 */   move  $a1, $s0
/* 00459378 8FBC00B8 */  lw    $gp, 0xb8($sp)
/* 0045937C 1040002F */  beqz  $v0, .L0045943C
/* 00459380 00000000 */   nop   
/* 00459384 10000049 */  b     .L004594AC
/* 00459388 8FBF00BC */   lw    $ra, 0xbc($sp)
.L0045938C:
/* 0045938C 904D0008 */  lbu   $t5, 8($v0)
/* 00459390 94510008 */  lhu   $s1, 8($v0)
/* 00459394 8C50000C */  lw    $s0, 0xc($v0)
/* 00459398 000D7E00 */  sll   $t7, $t5, 0x18
/* 0045939C 001175C0 */  sll   $t6, $s1, 0x17
/* 004593A0 000FC642 */  srl   $t8, $t7, 0x19
/* 004593A4 000ECE42 */  srl   $t9, $t6, 0x19
/* 004593A8 A3B800C3 */  sb    $t8, 0xc3($sp)
/* 004593AC 06010004 */  bgez  $s0, .L004593C0
/* 004593B0 333100FF */   andi  $s1, $t9, 0xff
/* 004593B4 240AFFFF */  li    $t2, -1
/* 004593B8 10000002 */  b     .L004593C4
/* 004593BC AFAA00CC */   sw    $t2, 0xcc($sp)
.L004593C0:
/* 004593C0 AFA000CC */  sw    $zero, 0xcc($sp)
.L004593C4:
/* 004593C4 8C440000 */  lw    $a0, ($v0)
/* 004593C8 24010048 */  li    $at, 72
/* 004593CC 1080000A */  beqz  $a0, .L004593F8
/* 004593D0 00000000 */   nop   
/* 004593D4 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 004593D8 00000000 */  nop   
/* 004593DC 0320F809 */  jalr  $t9
/* 004593E0 00000000 */   nop   
/* 004593E4 8FBC00B8 */  lw    $gp, 0xb8($sp)
/* 004593E8 AFA200C4 */  sw    $v0, 0xc4($sp)
/* 004593EC 24080001 */  li    $t0, 1
/* 004593F0 10000012 */  b     .L0045943C
/* 004593F4 A048003D */   sb    $t0, 0x3d($v0)
.L004593F8:
/* 004593F8 12210010 */  beq   $s1, $at, .L0045943C
/* 004593FC 00000000 */   nop   
/* 00459400 1220000E */  beqz  $s1, .L0045943C
/* 00459404 2A018000 */   slti  $at, $s0, -0x8000
/* 00459408 1420000C */  bnez  $at, .L0045943C
/* 0045940C 34018000 */   li    $at, 32768
/* 00459410 0201082A */  slt   $at, $s0, $at
/* 00459414 10200009 */  beqz  $at, .L0045943C
/* 00459418 24040062 */   li    $a0, 98
/* 0045941C 8F998450 */  lw    $t9, %call16(emitalui)($gp)
/* 00459420 93A500C3 */  lbu   $a1, 0xc3($sp)
/* 00459424 02203025 */  move  $a2, $s1
/* 00459428 0320F809 */  jalr  $t9
/* 0045942C 02003825 */   move  $a3, $s0
/* 00459430 8FBC00B8 */  lw    $gp, 0xb8($sp)
/* 00459434 1000001D */  b     .L004594AC
/* 00459438 8FBF00BC */   lw    $ra, 0xbc($sp)
.L0045943C:
/* 0045943C 8F998574 */  lw    $t9, %call16(emit_dword_item)($gp)
/* 00459440 8FA400CC */  lw    $a0, 0xcc($sp)
/* 00459444 8FA600C4 */  lw    $a2, 0xc4($sp)
/* 00459448 0320F809 */  jalr  $t9
/* 0045944C 02002825 */   move  $a1, $s0
/* 00459450 8FBC00B8 */  lw    $gp, 0xb8($sp)
/* 00459454 93A500C3 */  lbu   $a1, 0xc3($sp)
/* 00459458 8F99861C */  lw    $t9, %call16(do_parseafra)($gp)
/* 0045945C 240B0048 */  li    $t3, 72
/* 00459460 AFAB0010 */  sw    $t3, 0x10($sp)
/* 00459464 2404006C */  li    $a0, 108
/* 00459468 00403025 */  move  $a2, $v0
/* 0045946C 0320F809 */  jalr  $t9
/* 00459470 00003825 */   move  $a3, $zero
/* 00459474 8FBC00B8 */  lw    $gp, 0xb8($sp)
/* 00459478 24010048 */  li    $at, 72
/* 0045947C 1221000B */  beq   $s1, $at, .L004594AC
/* 00459480 8FBF00BC */   lw    $ra, 0xbc($sp)
/* 00459484 12200008 */  beqz  $s1, .L004594A8
/* 00459488 24040025 */   li    $a0, 37
/* 0045948C 93A600C3 */  lbu   $a2, 0xc3($sp)
/* 00459490 8F99844C */  lw    $t9, %call16(emitalu3)($gp)
/* 00459494 02203825 */  move  $a3, $s1
/* 00459498 0320F809 */  jalr  $t9
/* 0045949C 00C02825 */   move  $a1, $a2
/* 004594A0 8FBC00B8 */  lw    $gp, 0xb8($sp)
/* 004594A4 00000000 */  nop   
.L004594A8:
/* 004594A8 8FBF00BC */  lw    $ra, 0xbc($sp)
.L004594AC:
/* 004594AC 8FB000B0 */  lw    $s0, 0xb0($sp)
/* 004594B0 8FB100B4 */  lw    $s1, 0xb4($sp)
/* 004594B4 03E00008 */  jr    $ra
/* 004594B8 27BD00D0 */   addiu $sp, $sp, 0xd0

    .type parse_dli_dla, @function
    .size parse_dli_dla, .-parse_dli_dla
    .end parse_dli_dla

glabel parsestmt
    .ent parsestmt
    # 0044AF18 main
/* 004594BC 3C1C0FBD */  .cpload $t9
/* 004594C0 279C0DA4 */  
/* 004594C4 0399E021 */  
/* 004594C8 27BDFF00 */  addiu $sp, $sp, -0x100
/* 004594CC 8F818C8C */  lw     $at, %got(endofbasicb)($gp)
/* 004594D0 8F828CFC */  lw     $v0, %got(pendinginstr)($gp)
/* 004594D4 A0200000 */  sb    $zero, ($at)
/* 004594D8 8F818CB0 */  lw     $at, %got(branchpending)($gp)
/* 004594DC AFBF00C4 */  sw    $ra, 0xc4($sp)
/* 004594E0 A0200000 */  sb    $zero, ($at)
/* 004594E4 904E0000 */  lbu   $t6, ($v0)
/* 004594E8 AFBC00C0 */  sw    $gp, 0xc0($sp)
/* 004594EC AFB300BC */  sw    $s3, 0xbc($sp)
/* 004594F0 AFB200B8 */  sw    $s2, 0xb8($sp)
/* 004594F4 AFB100B4 */  sw    $s1, 0xb4($sp)
/* 004594F8 AFB000B0 */  sw    $s0, 0xb0($sp)
/* 004594FC AFA000E4 */  sw    $zero, 0xe4($sp)
/* 00459500 AFA000E8 */  sw    $zero, 0xe8($sp)
/* 00459504 AFA000EC */  sw    $zero, 0xec($sp)
/* 00459508 11C00067 */  beqz  $t6, .L004596A8
/* 0045950C AFA000F0 */   sw    $zero, 0xf0($sp)
/* 00459510 8F8F8BC8 */  lw     $t7, %got(fromas0)($gp)
/* 00459514 A0400000 */  sb    $zero, ($v0)
/* 00459518 91EF0000 */  lbu   $t7, ($t7)
/* 0045951C 00000000 */  nop   
/* 00459520 15E00061 */  bnez  $t7, .L004596A8
/* 00459524 00000000 */   nop   
/* 00459528 8F908CF0 */  lw     $s0, %got(lastinstr)($gp)
/* 0045952C 2401003D */  li    $at, 61
/* 00459530 92030000 */  lbu   $v1, ($s0)
/* 00459534 00003825 */  move  $a3, $zero
/* 00459538 1461000D */  bne   $v1, $at, .L00459570
/* 0045953C 00000000 */   nop   
/* 00459540 8F858CF4 */  lw     $a1, %got(lastsymno)($gp)
/* 00459544 8F868DC8 */  lw     $a2, %got(lastdata)($gp)
/* 00459548 8F9982E4 */  lw    $t9, %call16(fill_pseudo)($gp)
/* 0045954C 8CA50000 */  lw    $a1, ($a1)
/* 00459550 8CC60000 */  lw    $a2, ($a2)
/* 00459554 24040013 */  li    $a0, 19
/* 00459558 AFA00010 */  sw    $zero, 0x10($sp)
/* 0045955C 0320F809 */  jalr  $t9
/* 00459560 AFA00014 */   sw    $zero, 0x14($sp)
/* 00459564 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459568 1000004F */  b     .L004596A8
/* 0045956C 00000000 */   nop   
.L00459570:
/* 00459570 1000001B */  b     .L004595E0
/* 00459574 306200FF */   andi  $v0, $v1, 0xff
.L00459578:
/* 00459578 3878002E */  xori  $t8, $v1, 0x2e
.L0045957C:
/* 0045957C 8F8889B4 */  lw     $t0, %got(which_ent)($gp)
/* 00459580 2F180001 */  sltiu $t8, $t8, 1
/* 00459584 0018C880 */  sll   $t9, $t8, 2
/* 00459588 03284821 */  addu  $t1, $t9, $t0
/* 0045958C 8D2A0000 */  lw    $t2, ($t1)
/* 00459590 10000034 */  b     .L00459664
/* 00459594 AFAA00F4 */   sw    $t2, 0xf4($sp)
.L00459598:
/* 00459598 240B0002 */  li    $t3, 2
/* 0045959C 10000031 */  b     .L00459664
/* 004595A0 AFAB00F4 */   sw    $t3, 0xf4($sp)
.L004595A4:
/* 004595A4 240C0017 */  li    $t4, 23
/* 004595A8 1000002E */  b     .L00459664
/* 004595AC AFAC00F4 */   sw    $t4, 0xf4($sp)
.L004595B0:
/* 004595B0 240D0018 */  li    $t5, 24
/* 004595B4 1000002B */  b     .L00459664
/* 004595B8 AFAD00F4 */   sw    $t5, 0xf4($sp)
.L004595BC:
/* 004595BC 8F848CF4 */  lw     $a0, %got(lastsymno)($gp)
/* 004595C0 8F9985B0 */  lw    $t9, %call16(enterlabel)($gp)
/* 004595C4 8C840000 */  lw    $a0, ($a0)
/* 004595C8 0320F809 */  jalr  $t9
/* 004595CC 27A500FC */   addiu $a1, $sp, 0xfc
/* 004595D0 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 004595D4 240E0019 */  li    $t6, 25
/* 004595D8 10000022 */  b     .L00459664
/* 004595DC AFAE00F4 */   sw    $t6, 0xf4($sp)
.L004595E0:
/* 004595E0 2C410025 */  sltiu $at, $v0, 0x25
/* 004595E4 14200005 */  bnez  $at, .L004595FC
/* 004595E8 2401002E */   li    $at, 46
/* 004595EC 1041FFE3 */  beq   $v0, $at, .L0045957C
/* 004595F0 3878002E */   xori  $t8, $v1, 0x2e
/* 004595F4 10000012 */  b     .L00459640
/* 004595F8 00000000 */   nop   
.L004595FC:
/* 004595FC 2C41001F */  sltiu $at, $v0, 0x1f
/* 00459600 1020000C */  beqz  $at, .L00459634
/* 00459604 244FFFE8 */   addiu $t7, $v0, -0x18
/* 00459608 2DE10007 */  sltiu $at, $t7, 7
/* 0045960C 1020000C */  beqz  $at, .L00459640
/* 00459610 00000000 */   nop   
/* 00459614 8F818070 */  lw    $at, %got(jtbl_1001BDCC)($gp)
/* 00459618 000F7880 */  sll   $t7, $t7, 2
/* 0045961C 002F0821 */  addu  $at, $at, $t7
/* 00459620 8C2FBDCC */  lw    $t7, %lo(jtbl_1001BDCC)($at)
/* 00459624 00000000 */  nop   
/* 00459628 01FC7821 */  addu  $t7, $t7, $gp
/* 0045962C 01E00008 */  jr    $t7
/* 00459630 00000000 */   nop   
.L00459634:
/* 00459634 24010024 */  li    $at, 36
/* 00459638 1041FFE0 */  beq   $v0, $at, .L004595BC
/* 0045963C 00000000 */   nop   
.L00459640:
/* 00459640 8F868070 */  lw    $a2, %got(RO_1001BDC0)($gp)
/* 00459644 8F99868C */  lw    $t9, %call16(caseerror)($gp)
/* 00459648 24040002 */  li    $a0, 2
/* 0045964C 240508AF */  li    $a1, 2223
/* 00459650 2407000A */  li    $a3, 10
/* 00459654 0320F809 */  jalr  $t9
/* 00459658 24C6BDC0 */   addiu $a2, %lo(RO_1001BDC0) # addiu $a2, $a2, -0x4240
/* 0045965C 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459660 00000000 */  nop   
.L00459664:
/* 00459664 8F858CF4 */  lw     $a1, %got(lastsymno)($gp)
/* 00459668 8F868BB8 */  lw     $a2, %got(currentline)($gp)
/* 0045966C 8F878B18 */  lw     $a3, %got(debugflag)($gp)
/* 00459670 8FB800FC */  lw    $t8, 0xfc($sp)
/* 00459674 8F9982E4 */  lw    $t9, %call16(fill_pseudo)($gp)
/* 00459678 8FA400F4 */  lw    $a0, 0xf4($sp)
/* 0045967C 8CA50000 */  lw    $a1, ($a1)
/* 00459680 8CC60000 */  lw    $a2, ($a2)
/* 00459684 8CE70000 */  lw    $a3, ($a3)
/* 00459688 AFA00014 */  sw    $zero, 0x14($sp)
/* 0045968C 0320F809 */  jalr  $t9
/* 00459690 AFB80010 */   sw    $t8, 0x10($sp)
/* 00459694 92190000 */  lbu   $t9, ($s0)
/* 00459698 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045969C 24010018 */  li    $at, 24
/* 004596A0 1321076F */  beq   $t9, $at, .L0045B460
/* 004596A4 8FBF00C4 */   lw    $ra, 0xc4($sp)
.L004596A8:
/* 004596A8 8F908CF0 */  lw     $s0, %got(lastinstr)($gp)
/* 004596AC 8F848C6C */  lw     $a0, %got(binasm_file)($gp)
/* 004596B0 A2000000 */  sb    $zero, ($s0)
/* 004596B4 8F9986AC */  lw    $t9, %call16(eof)($gp)
/* 004596B8 8C840000 */  lw    $a0, ($a0)
/* 004596BC 0320F809 */  jalr  $t9
/* 004596C0 00000000 */   nop   
/* 004596C4 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 004596C8 14400765 */  bnez  $v0, .L0045B460
/* 004596CC 8FBF00C4 */   lw    $ra, 0xc4($sp)
/* 004596D0 8F938C68 */  lw     $s3, %got(emptystring)($gp)
/* 004596D4 8F928BB0 */  lw     $s2, %got(bbindex)($gp)
/* 004596D8 24110001 */  li    $s1, 1
.L004596DC:
/* 004596DC 8F828D64 */  lw     $v0, %got(binasmfyle)($gp)
/* 004596E0 27A800E4 */  addiu $t0, $sp, 0xe4
/* 004596E4 8C420000 */  lw    $v0, ($v0)
/* 004596E8 00000000 */  nop   
/* 004596EC 8C410000 */  lw    $at, ($v0)
/* 004596F0 00408025 */  move  $s0, $v0
/* 004596F4 AD010000 */  sw    $at, ($t0)
/* 004596F8 8C4A0004 */  lw    $t2, 4($v0)
/* 004596FC 00000000 */  nop   
/* 00459700 AD0A0004 */  sw    $t2, 4($t0)
/* 00459704 8C410008 */  lw    $at, 8($v0)
/* 00459708 00000000 */  nop   
/* 0045970C AD010008 */  sw    $at, 8($t0)
/* 00459710 8C4A000C */  lw    $t2, 0xc($v0)
/* 00459714 00000000 */  nop   
/* 00459718 AD0A000C */  sw    $t2, 0xc($t0)
/* 0045971C 8FAB00E4 */  lw    $t3, 0xe4($sp)
/* 00459720 00000000 */  nop   
/* 00459724 1160001D */  beqz  $t3, .L0045979C
/* 00459728 00000000 */   nop   
/* 0045972C 904C0005 */  lbu   $t4, 5($v0)
/* 00459730 24010018 */  li    $at, 24
/* 00459734 318D003F */  andi  $t5, $t4, 0x3f
/* 00459738 11A10018 */  beq   $t5, $at, .L0045979C
/* 0045973C 00000000 */   nop   
/* 00459740 8F8E8D6C */  lw     $t6, %got(in_cia_binasm)($gp)
/* 00459744 00000000 */  nop   
/* 00459748 91CE0000 */  lbu   $t6, ($t6)
/* 0045974C 00000000 */  nop   
/* 00459750 11C0000C */  beqz  $t6, .L00459784
/* 00459754 00000000 */   nop   
/* 00459758 8F99824C */  lw    $t9, %call16(fixup_symno)($gp)
/* 0045975C 01602025 */  move  $a0, $t3
/* 00459760 0320F809 */  jalr  $t9
/* 00459764 00000000 */   nop   
/* 00459768 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045976C AFA200E4 */  sw    $v0, 0xe4($sp)
/* 00459770 8F8F8D64 */  lw     $t7, %got(binasmfyle)($gp)
/* 00459774 00000000 */  nop   
/* 00459778 8DEF0000 */  lw    $t7, ($t7)
/* 0045977C 00000000 */  nop   
/* 00459780 ADE20000 */  sw    $v0, ($t7)
.L00459784:
/* 00459784 8F9985AC */  lw    $t9, %call16(enterstp)($gp)
/* 00459788 8FA400E4 */  lw    $a0, 0xe4($sp)
/* 0045978C 0320F809 */  jalr  $t9
/* 00459790 00000000 */   nop   
/* 00459794 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459798 00000000 */  nop   
.L0045979C:
/* 0045979C 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 004597A0 92040005 */  lbu   $a0, 5($s0)
/* 004597A4 90630000 */  lbu   $v1, ($v1)
/* 004597A8 3098003F */  andi  $t8, $a0, 0x3f
/* 004597AC 10600004 */  beqz  $v1, .L004597C0
/* 004597B0 03002025 */   move  $a0, $t8
/* 004597B4 2401000F */  li    $at, 15
/* 004597B8 14610040 */  bne   $v1, $at, .L004598BC
/* 004597BC 00000000 */   nop   
.L004597C0:
/* 004597C0 8F998AF8 */  lw     $t9, %got(picflag)($gp)
/* 004597C4 2C890040 */  sltiu $t1, $a0, 0x40
/* 004597C8 8F390000 */  lw    $t9, ($t9)
/* 004597CC 00000000 */  nop   
/* 004597D0 1B20003A */  blez  $t9, .L004598BC
/* 004597D4 00000000 */   nop   
/* 004597D8 11200009 */  beqz  $t1, .L00459800
/* 004597DC 00044143 */   sra   $t0, $a0, 5
/* 004597E0 8F8C8080 */  lw    $t4, %got(D_10004C1C)($gp)
/* 004597E4 00085080 */  sll   $t2, $t0, 2
/* 004597E8 258C4C1C */  addiu $t4, %lo(D_10004C1C) # addiu $t4, $t4, 0x4c1c
/* 004597EC 018A6821 */  addu  $t5, $t4, $t2
/* 004597F0 8DAE0000 */  lw    $t6, ($t5)
/* 004597F4 00000000 */  nop   
/* 004597F8 008E5804 */  sllv  $t3, $t6, $a0
/* 004597FC 29690000 */  slti  $t1, $t3, 0
.L00459800:
/* 00459800 1120002E */  beqz  $t1, .L004598BC
/* 00459804 00000000 */   nop   
/* 00459808 8F988070 */  lw    $t8, %got(RO_1001BD70)($gp)
/* 0045980C 03A06025 */  move  $t4, $sp
/* 00459810 2718BD70 */  addiu $t8, %lo(RO_1001BD70) # addiu $t8, $t8, -0x4290
/* 00459814 27080048 */  addiu $t0, $t8, 0x48
.L00459818:
/* 00459818 8B010000 */  lwl   $at, ($t8)
/* 0045981C 9B010003 */  lwr   $at, 3($t8)
/* 00459820 2718000C */  addiu $t8, $t8, 0xc
/* 00459824 A9810000 */  swl   $at, ($t4)
/* 00459828 B9810003 */  swr   $at, 3($t4)
/* 0045982C 8B01FFF8 */  lwl   $at, -8($t8)
/* 00459830 9B01FFFB */  lwr   $at, -5($t8)
/* 00459834 258C000C */  addiu $t4, $t4, 0xc
/* 00459838 A981FFF8 */  swl   $at, -8($t4)
/* 0045983C B981FFFB */  swr   $at, -5($t4)
/* 00459840 8B01FFFC */  lwl   $at, -4($t8)
/* 00459844 9B01FFFF */  lwr   $at, -1($t8)
/* 00459848 00000000 */  nop   
/* 0045984C A981FFFC */  swl   $at, -4($t4)
/* 00459850 1708FFF1 */  bne   $t8, $t0, .L00459818
/* 00459854 B981FFFF */   swr   $at, -1($t4)
/* 00459858 8B010000 */  lwl   $at, ($t8)
/* 0045985C 9B010003 */  lwr   $at, 3($t8)
/* 00459860 00000000 */  nop   
/* 00459864 A9810000 */  swl   $at, ($t4)
/* 00459868 B9810003 */  swr   $at, 3($t4)
/* 0045986C 8B080004 */  lwl   $t0, 4($t8)
/* 00459870 9B080007 */  lwr   $t0, 7($t8)
/* 00459874 00000000 */  nop   
/* 00459878 A9880004 */  swl   $t0, 4($t4)
/* 0045987C B9880007 */  swr   $t0, 7($t4)
/* 00459880 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 00459884 8E610000 */  lw    $at, ($s3)
/* 00459888 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045988C 8FA60008 */  lw    $a2, 8($sp)
/* 00459890 8FA50004 */  lw    $a1, 4($sp)
/* 00459894 8FA40000 */  lw    $a0, ($sp)
/* 00459898 AFB10054 */  sw    $s1, 0x54($sp)
/* 0045989C 0320F809 */  jalr  $t9
/* 004598A0 AFA10050 */   sw    $at, 0x50($sp)
/* 004598A4 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 004598A8 92040005 */  lbu   $a0, 5($s0)
/* 004598AC 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 004598B0 308E003F */  andi  $t6, $a0, 0x3f
/* 004598B4 90630000 */  lbu   $v1, ($v1)
/* 004598B8 01C02025 */  move  $a0, $t6
.L004598BC:
/* 004598BC 10600003 */  beqz  $v1, .L004598CC
/* 004598C0 2401000F */   li    $at, 15
/* 004598C4 14610032 */  bne   $v1, $at, .L00459990
/* 004598C8 308200FF */   andi  $v0, $a0, 0xff
.L004598CC:
/* 004598CC 8E4B0000 */  lw    $t3, ($s2)
/* 004598D0 2C8F0040 */  sltiu $t7, $a0, 0x40
/* 004598D4 1960002E */  blez  $t3, .L00459990
/* 004598D8 308200FF */   andi  $v0, $a0, 0xff
/* 004598DC 11E00009 */  beqz  $t7, .L00459904
/* 004598E0 00044943 */   sra   $t1, $a0, 5
/* 004598E4 8F888080 */  lw    $t0, %got(D_10004C14)($gp)
/* 004598E8 0009C880 */  sll   $t9, $t1, 2
/* 004598EC 25084C14 */  addiu $t0, %lo(D_10004C14) # addiu $t0, $t0, 0x4c14
/* 004598F0 0119C021 */  addu  $t8, $t0, $t9
/* 004598F4 8F0C0000 */  lw    $t4, ($t8)
/* 004598F8 00000000 */  nop   
/* 004598FC 008C5004 */  sllv  $t2, $t4, $a0
/* 00459900 294F0000 */  slti  $t7, $t2, 0
.L00459904:
/* 00459904 11E00021 */  beqz  $t7, .L0045998C
/* 00459908 24010004 */   li    $at, 4
/* 0045990C 1481000F */  bne   $a0, $at, .L0045994C
/* 00459910 2401000B */   li    $at, 11
/* 00459914 8F998594 */  lw    $t9, %call16(power2)($gp)
/* 00459918 8E040008 */  lw    $a0, 8($s0)
/* 0045991C 0320F809 */  jalr  $t9
/* 00459920 00000000 */   nop   
/* 00459924 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459928 00402025 */  move  $a0, $v0
/* 0045992C 8F9982F4 */  lw    $t9, %call16(fixup_preceding_labels)($gp)
/* 00459930 00000000 */  nop   
/* 00459934 0320F809 */  jalr  $t9
/* 00459938 00000000 */   nop   
/* 0045993C 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459940 1000000C */  b     .L00459974
/* 00459944 00000000 */   nop   
/* 00459948 2401000B */  li    $at, 11
.L0045994C:
/* 0045994C 10810003 */  beq   $a0, $at, .L0045995C
/* 00459950 2401002C */   li    $at, 44
/* 00459954 14810007 */  bne   $a0, $at, .L00459974
/* 00459958 00000000 */   nop   
.L0045995C:
/* 0045995C 8F9982F4 */  lw    $t9, %call16(fixup_preceding_labels)($gp)
/* 00459960 24040008 */  li    $a0, 8
/* 00459964 0320F809 */  jalr  $t9
/* 00459968 00000000 */   nop   
/* 0045996C 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459970 00000000 */  nop   
.L00459974:
/* 00459974 8F818B5C */  lw     $at, %got(last_bb)($gp)
/* 00459978 A3B100E3 */  sb    $s1, 0xe3($sp)
/* 0045997C A0200002 */  sb    $zero, 2($at)
/* 00459980 8F818C8C */  lw     $at, %got(endofbasicb)($gp)
/* 00459984 10000692 */  b     .L0045B3D0
/* 00459988 A0310000 */   sb    $s1, ($at)
.L0045998C:
/* 0045998C 308200FF */  andi  $v0, $a0, 0xff
.L00459990:
/* 00459990 2C41003F */  sltiu $at, $v0, 0x3f
/* 00459994 1020062D */  beqz  $at, .L0045B24C
/* 00459998 A3A000E3 */   sb    $zero, 0xe3($sp)
/* 0045999C 8F818070 */  lw    $at, %got(jtbl_1001BE2C)($gp)
/* 004599A0 00027080 */  sll   $t6, $v0, 2
/* 004599A4 002E0821 */  addu  $at, $at, $t6
/* 004599A8 8C2EBE2C */  lw    $t6, %lo(jtbl_1001BE2C)($at)
/* 004599AC 00000000 */  nop   
/* 004599B0 01DC7021 */  addu  $t6, $t6, $gp
/* 004599B4 01C00008 */  jr    $t6
/* 004599B8 00000000 */   nop   
.L004599BC:
/* 004599BC 8F998504 */  lw    $t9, %call16(parsealign)($gp)
/* 004599C0 00000000 */  nop   
/* 004599C4 0320F809 */  jalr  $t9
/* 004599C8 00000000 */   nop   
/* 004599CC 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 004599D0 00000000 */  nop   
/* 004599D4 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 004599D8 00000000 */  nop   
/* 004599DC 90630000 */  lbu   $v1, ($v1)
/* 004599E0 10000661 */  b     .L0045B368
/* 004599E4 00000000 */   nop   
.L004599E8:
/* 004599E8 8F998508 */  lw    $t9, %call16(parseascii)($gp)
/* 004599EC 00002025 */  move  $a0, $zero
/* 004599F0 0320F809 */  jalr  $t9
/* 004599F4 00000000 */   nop   
/* 004599F8 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 004599FC 00000000 */  nop   
/* 00459A00 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459A04 00000000 */  nop   
/* 00459A08 90630000 */  lbu   $v1, ($v1)
/* 00459A0C 10000656 */  b     .L0045B368
/* 00459A10 00000000 */   nop   
.L00459A14:
/* 00459A14 8F998508 */  lw    $t9, %call16(parseascii)($gp)
/* 00459A18 02202025 */  move  $a0, $s1
/* 00459A1C 0320F809 */  jalr  $t9
/* 00459A20 00000000 */   nop   
/* 00459A24 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459A28 00000000 */  nop   
/* 00459A2C 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459A30 00000000 */  nop   
/* 00459A34 90630000 */  lbu   $v1, ($v1)
/* 00459A38 1000064B */  b     .L0045B368
/* 00459A3C 00000000 */   nop   
.L00459A40:
/* 00459A40 8F998510 */  lw    $t9, %call16(parsebyte)($gp)
/* 00459A44 00000000 */  nop   
/* 00459A48 0320F809 */  jalr  $t9
/* 00459A4C 00000000 */   nop   
/* 00459A50 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459A54 00000000 */  nop   
/* 00459A58 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459A5C 00000000 */  nop   
/* 00459A60 90630000 */  lbu   $v1, ($v1)
/* 00459A64 10000640 */  b     .L0045B368
/* 00459A68 00000000 */   nop   
.L00459A6C:
/* 00459A6C 8F998514 */  lw    $t9, %call16(parsecomm)($gp)
/* 00459A70 24040008 */  li    $a0, 8
/* 00459A74 0320F809 */  jalr  $t9
/* 00459A78 00000000 */   nop   
/* 00459A7C 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459A80 00000000 */  nop   
/* 00459A84 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459A88 00000000 */  nop   
/* 00459A8C 90630000 */  lbu   $v1, ($v1)
/* 00459A90 10000635 */  b     .L0045B368
/* 00459A94 00000000 */   nop   
.L00459A98:
/* 00459A98 8F998514 */  lw    $t9, %call16(parsecomm)($gp)
/* 00459A9C 2404002D */  li    $a0, 45
/* 00459AA0 0320F809 */  jalr  $t9
/* 00459AA4 00000000 */   nop   
/* 00459AA8 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459AAC 00000000 */  nop   
/* 00459AB0 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459AB4 00000000 */  nop   
/* 00459AB8 90630000 */  lbu   $v1, ($v1)
/* 00459ABC 1000062A */  b     .L0045B368
/* 00459AC0 00000000 */   nop   
.L00459AC4:
/* 00459AC4 8F998518 */  lw    $t9, %call16(parseseg)($gp)
/* 00459AC8 24040002 */  li    $a0, 2
/* 00459ACC 0320F809 */  jalr  $t9
/* 00459AD0 00000000 */   nop   
/* 00459AD4 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459AD8 00000000 */  nop   
/* 00459ADC 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459AE0 00000000 */  nop   
/* 00459AE4 90630000 */  lbu   $v1, ($v1)
/* 00459AE8 1000061F */  b     .L0045B368
/* 00459AEC 00000000 */   nop   
.L00459AF0:
/* 00459AF0 8F998518 */  lw    $t9, %call16(parseseg)($gp)
/* 00459AF4 02202025 */  move  $a0, $s1
/* 00459AF8 0320F809 */  jalr  $t9
/* 00459AFC 00000000 */   nop   
/* 00459B00 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459B04 00000000 */  nop   
/* 00459B08 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459B0C 00000000 */  nop   
/* 00459B10 90630000 */  lbu   $v1, ($v1)
/* 00459B14 10000614 */  b     .L0045B368
/* 00459B18 00000000 */   nop   
.L00459B1C:
/* 00459B1C 8F998518 */  lw    $t9, %call16(parseseg)($gp)
/* 00459B20 24040009 */  li    $a0, 9
/* 00459B24 0320F809 */  jalr  $t9
/* 00459B28 00000000 */   nop   
/* 00459B2C 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459B30 00000000 */  nop   
/* 00459B34 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459B38 00000000 */  nop   
/* 00459B3C 90630000 */  lbu   $v1, ($v1)
/* 00459B40 10000609 */  b     .L0045B368
/* 00459B44 00000000 */   nop   
.L00459B48:
/* 00459B48 8F998520 */  lw    $t9, %call16(parseedata)($gp)
/* 00459B4C 00000000 */  nop   
/* 00459B50 0320F809 */  jalr  $t9
/* 00459B54 00000000 */   nop   
/* 00459B58 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459B5C 00000000 */  nop   
/* 00459B60 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459B64 00000000 */  nop   
/* 00459B68 90630000 */  lbu   $v1, ($v1)
/* 00459B6C 100005FE */  b     .L0045B368
/* 00459B70 00000000 */   nop   
.L00459B74:
/* 00459B74 2401000D */  li    $at, 13
/* 00459B78 14810009 */  bne   $a0, $at, .L00459BA0
/* 00459B7C 00000000 */   nop   
/* 00459B80 8F8489D4 */  lw     $a0, %got(last_globl_symno)($gp)
/* 00459B84 8F99850C */  lw    $t9, %call16(remember_symbol_size)($gp)
/* 00459B88 8C840000 */  lw    $a0, ($a0)
/* 00459B8C 0320F809 */  jalr  $t9
/* 00459B90 24050004 */   li    $a1, 4
/* 00459B94 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459B98 10000009 */  b     .L00459BC0
/* 00459B9C 92040005 */   lbu   $a0, 5($s0)
.L00459BA0:
/* 00459BA0 8F8489D4 */  lw     $a0, %got(last_globl_symno)($gp)
/* 00459BA4 8F99850C */  lw    $t9, %call16(remember_symbol_size)($gp)
/* 00459BA8 8C840000 */  lw    $a0, ($a0)
/* 00459BAC 0320F809 */  jalr  $t9
/* 00459BB0 24050008 */   li    $a1, 8
/* 00459BB4 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459BB8 00000000 */  nop   
/* 00459BBC 92040005 */  lbu   $a0, 5($s0)
.L00459BC0:
/* 00459BC0 8F9984AC */  lw    $t9, %call16(parsefpconst)($gp)
/* 00459BC4 308B003F */  andi  $t3, $a0, 0x3f
/* 00459BC8 0320F809 */  jalr  $t9
/* 00459BCC 01602025 */   move  $a0, $t3
/* 00459BD0 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459BD4 00000000 */  nop   
/* 00459BD8 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459BDC 00000000 */  nop   
/* 00459BE0 90630000 */  lbu   $v1, ($v1)
/* 00459BE4 100005E0 */  b     .L0045B368
/* 00459BE8 00000000 */   nop   
.L00459BEC:
/* 00459BEC 8F998538 */  lw    $t9, %call16(parsefile)($gp)
/* 00459BF0 00000000 */  nop   
/* 00459BF4 0320F809 */  jalr  $t9
/* 00459BF8 00000000 */   nop   
/* 00459BFC 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459C00 00000000 */  nop   
/* 00459C04 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459C08 00000000 */  nop   
/* 00459C0C 90630000 */  lbu   $v1, ($v1)
/* 00459C10 100005D5 */  b     .L0045B368
/* 00459C14 00000000 */   nop   
.L00459C18:
/* 00459C18 8F998540 */  lw    $t9, %call16(parseglobl)($gp)
/* 00459C1C 00000000 */  nop   
/* 00459C20 0320F809 */  jalr  $t9
/* 00459C24 00000000 */   nop   
/* 00459C28 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459C2C 00000000 */  nop   
/* 00459C30 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459C34 00000000 */  nop   
/* 00459C38 90630000 */  lbu   $v1, ($v1)
/* 00459C3C 100005CA */  b     .L0045B368
/* 00459C40 00000000 */   nop   
.L00459C44:
/* 00459C44 8F998544 */  lw    $t9, %call16(parseweakext)($gp)
/* 00459C48 00000000 */  nop   
/* 00459C4C 0320F809 */  jalr  $t9
/* 00459C50 00000000 */   nop   
/* 00459C54 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459C58 00000000 */  nop   
/* 00459C5C 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459C60 00000000 */  nop   
/* 00459C64 90630000 */  lbu   $v1, ($v1)
/* 00459C68 100005BF */  b     .L0045B368
/* 00459C6C 00000000 */   nop   
.L00459C70:
/* 00459C70 8F998548 */  lw    $t9, %call16(parseglobabs)($gp)
/* 00459C74 00000000 */  nop   
/* 00459C78 0320F809 */  jalr  $t9
/* 00459C7C 00000000 */   nop   
/* 00459C80 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459C84 00000000 */  nop   
/* 00459C88 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459C8C 00000000 */  nop   
/* 00459C90 90630000 */  lbu   $v1, ($v1)
/* 00459C94 100005B4 */  b     .L0045B368
/* 00459C98 00000000 */   nop   
.L00459C9C:
/* 00459C9C 8F998570 */  lw    $t9, %call16(parseword)($gp)
/* 00459CA0 24040002 */  li    $a0, 2
/* 00459CA4 0320F809 */  jalr  $t9
/* 00459CA8 00000000 */   nop   
/* 00459CAC 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459CB0 00000000 */  nop   
/* 00459CB4 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459CB8 00000000 */  nop   
/* 00459CBC 90630000 */  lbu   $v1, ($v1)
/* 00459CC0 100005A9 */  b     .L0045B368
/* 00459CC4 00000000 */   nop   
.L00459CC8:
/* 00459CC8 8F8189D8 */  lw     $at, %got(label_size)($gp)
/* 00459CCC 8F8989D4 */  lw     $t1, %got(last_globl_symno)($gp)
/* 00459CD0 AC200000 */  sw    $zero, ($at)
/* 00459CD4 8E080000 */  lw    $t0, ($s0)
/* 00459CD8 8D290000 */  lw    $t1, ($t1)
/* 00459CDC 00000000 */  nop   
/* 00459CE0 11280004 */  beq   $t1, $t0, .L00459CF4
/* 00459CE4 00000000 */   nop   
/* 00459CE8 8F8189D4 */  lw     $at, %got(last_globl_symno)($gp)
/* 00459CEC 00000000 */  nop   
/* 00459CF0 AC200000 */  sw    $zero, ($at)
.L00459CF4:
/* 00459CF4 8F9989C4 */  lw     $t9, %got(cpalias_set)($gp)
/* 00459CF8 00000000 */  nop   
/* 00459CFC 93390000 */  lbu   $t9, ($t9)
/* 00459D00 00000000 */  nop   
/* 00459D04 13200007 */  beqz  $t9, .L00459D24
/* 00459D08 00000000 */   nop   
/* 00459D0C 8F9984D4 */  lw    $t9, %call16(init_cpalias)($gp)
/* 00459D10 00000000 */  nop   
/* 00459D14 0320F809 */  jalr  $t9
/* 00459D18 00000000 */   nop   
/* 00459D1C 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459D20 00000000 */  nop   
.L00459D24:
/* 00459D24 8E420000 */  lw    $v0, ($s2)
/* 00459D28 3C017FFF */  lui   $at, 0x7fff
/* 00459D2C 18400015 */  blez  $v0, .L00459D84
/* 00459D30 00026080 */   sll   $t4, $v0, 2
/* 00459D34 8F988B40 */  lw     $t8, %got(pinstruction)($gp)
/* 00459D38 01826021 */  addu  $t4, $t4, $v0
/* 00459D3C 8F180000 */  lw    $t8, ($t8)
/* 00459D40 000C60C0 */  sll   $t4, $t4, 3
/* 00459D44 030C5021 */  addu  $t2, $t8, $t4
/* 00459D48 8D4D0000 */  lw    $t5, ($t2)
/* 00459D4C 3421FFFF */  ori   $at, $at, 0xffff
/* 00459D50 15A10009 */  bne   $t5, $at, .L00459D78
/* 00459D54 00000000 */   nop   
/* 00459D58 8F9982E0 */  lw    $t9, %call16(pseudo_type)($gp)
/* 00459D5C 00402025 */  move  $a0, $v0
/* 00459D60 0320F809 */  jalr  $t9
/* 00459D64 00000000 */   nop   
/* 00459D68 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459D6C 2401001A */  li    $at, 26
/* 00459D70 10410004 */  beq   $v0, $at, .L00459D84
/* 00459D74 00000000 */   nop   
.L00459D78:
/* 00459D78 8F818C8C */  lw     $at, %got(endofbasicb)($gp)
/* 00459D7C 100005B7 */  b     .L0045B45C
/* 00459D80 A0310000 */   sb    $s1, ($at)
.L00459D84:
/* 00459D84 8F818B5C */  lw     $at, %got(last_bb)($gp)
/* 00459D88 8F9985B0 */  lw    $t9, %call16(enterlabel)($gp)
/* 00459D8C A0200002 */  sb    $zero, 2($at)
/* 00459D90 8E040000 */  lw    $a0, ($s0)
/* 00459D94 0320F809 */  jalr  $t9
/* 00459D98 27A500FC */   addiu $a1, $sp, 0xfc
/* 00459D9C 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459DA0 8FAF00FC */  lw    $t7, 0xfc($sp)
/* 00459DA4 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459DA8 2401000F */  li    $at, 15
/* 00459DAC 90630000 */  lbu   $v1, ($v1)
/* 00459DB0 2404001A */  li    $a0, 26
/* 00459DB4 10600003 */  beqz  $v1, .L00459DC4
/* 00459DB8 00000000 */   nop   
/* 00459DBC 1461000D */  bne   $v1, $at, .L00459DF4
/* 00459DC0 00000000 */   nop   
.L00459DC4:
/* 00459DC4 8F868BB8 */  lw     $a2, %got(currentline)($gp)
/* 00459DC8 8F878B18 */  lw     $a3, %got(debugflag)($gp)
/* 00459DCC 8F9982E4 */  lw    $t9, %call16(fill_pseudo)($gp)
/* 00459DD0 8E050000 */  lw    $a1, ($s0)
/* 00459DD4 8CC60000 */  lw    $a2, ($a2)
/* 00459DD8 8CE70000 */  lw    $a3, ($a3)
/* 00459DDC AFAF0010 */  sw    $t7, 0x10($sp)
/* 00459DE0 0320F809 */  jalr  $t9
/* 00459DE4 AFA00014 */   sw    $zero, 0x14($sp)
/* 00459DE8 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459DEC 1000000A */  b     .L00459E18
/* 00459DF0 00000000 */   nop   
.L00459DF4:
/* 00459DF4 8F868B64 */  lw     $a2, %got(currsegmentindex)($gp)
/* 00459DF8 8F9985C8 */  lw    $t9, %call16(defineasym)($gp)
/* 00459DFC 8E040000 */  lw    $a0, ($s0)
/* 00459E00 8FA500FC */  lw    $a1, 0xfc($sp)
/* 00459E04 8CC60000 */  lw    $a2, ($a2)
/* 00459E08 0320F809 */  jalr  $t9
/* 00459E0C 00000000 */   nop   
/* 00459E10 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459E14 00000000 */  nop   
.L00459E18:
/* 00459E18 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459E1C 00000000 */  nop   
/* 00459E20 90630000 */  lbu   $v1, ($v1)
/* 00459E24 10000550 */  b     .L0045B368
/* 00459E28 00000000 */   nop   
.L00459E2C:
/* 00459E2C 8F998514 */  lw    $t9, %call16(parsecomm)($gp)
/* 00459E30 24040009 */  li    $a0, 9
/* 00459E34 0320F809 */  jalr  $t9
/* 00459E38 00000000 */   nop   
/* 00459E3C 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459E40 00000000 */  nop   
/* 00459E44 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459E48 00000000 */  nop   
/* 00459E4C 90630000 */  lbu   $v1, ($v1)
/* 00459E50 10000545 */  b     .L0045B368
/* 00459E54 00000000 */   nop   
.L00459E58:
/* 00459E58 8F99854C */  lw    $t9, %call16(parse_option)($gp)
/* 00459E5C 00000000 */  nop   
/* 00459E60 0320F809 */  jalr  $t9
/* 00459E64 00000000 */   nop   
/* 00459E68 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459E6C 00000000 */  nop   
/* 00459E70 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459E74 00000000 */  nop   
/* 00459E78 90630000 */  lbu   $v1, ($v1)
/* 00459E7C 1000053A */  b     .L0045B368
/* 00459E80 00000000 */   nop   
.L00459E84:
/* 00459E84 8F998550 */  lw    $t9, %call16(parse_alias)($gp)
/* 00459E88 00000000 */  nop   
/* 00459E8C 0320F809 */  jalr  $t9
/* 00459E90 00000000 */   nop   
/* 00459E94 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459E98 00000000 */  nop   
/* 00459E9C 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459EA0 00000000 */  nop   
/* 00459EA4 90630000 */  lbu   $v1, ($v1)
/* 00459EA8 1000052F */  b     .L0045B368
/* 00459EAC 00000000 */   nop   
.L00459EB0:
/* 00459EB0 8F828D64 */  lw     $v0, %got(binasmfyle)($gp)
/* 00459EB4 8F9982E4 */  lw    $t9, %call16(fill_pseudo)($gp)
/* 00459EB8 8C420000 */  lw    $v0, ($v0)
/* 00459EBC 24040015 */  li    $a0, 21
/* 00459EC0 8C450008 */  lw    $a1, 8($v0)
/* 00459EC4 8C46000C */  lw    $a2, 0xc($v0)
/* 00459EC8 00003825 */  move  $a3, $zero
/* 00459ECC AFA00010 */  sw    $zero, 0x10($sp)
/* 00459ED0 0320F809 */  jalr  $t9
/* 00459ED4 AFA00014 */   sw    $zero, 0x14($sp)
/* 00459ED8 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459EDC 00000000 */  nop   
/* 00459EE0 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459EE4 00000000 */  nop   
/* 00459EE8 90630000 */  lbu   $v1, ($v1)
/* 00459EEC 1000051E */  b     .L0045B368
/* 00459EF0 00000000 */   nop   
.L00459EF4:
/* 00459EF4 8F998554 */  lw    $t9, %call16(parseset)($gp)
/* 00459EF8 27A400E3 */  addiu $a0, $sp, 0xe3
/* 00459EFC 0320F809 */  jalr  $t9
/* 00459F00 00000000 */   nop   
/* 00459F04 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459F08 00000000 */  nop   
/* 00459F0C 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459F10 00000000 */  nop   
/* 00459F14 90630000 */  lbu   $v1, ($v1)
/* 00459F18 10000513 */  b     .L0045B368
/* 00459F1C 00000000 */   nop   
.L00459F20:
/* 00459F20 8F818BC8 */  lw     $at, %got(fromas0)($gp)
/* 00459F24 10000510 */  b     .L0045B368
/* 00459F28 A0310000 */   sb    $s1, ($at)
.L00459F2C:
/* 00459F2C 8F998558 */  lw    $t9, %call16(parsespace)($gp)
/* 00459F30 00000000 */  nop   
/* 00459F34 0320F809 */  jalr  $t9
/* 00459F38 00000000 */   nop   
/* 00459F3C 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459F40 00000000 */  nop   
/* 00459F44 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459F48 00000000 */  nop   
/* 00459F4C 90630000 */  lbu   $v1, ($v1)
/* 00459F50 10000505 */  b     .L0045B368
/* 00459F54 00000000 */   nop   
.L00459F58:
/* 00459F58 8F9985B4 */  lw    $t9, %call16(entersym)($gp)
/* 00459F5C 8E040000 */  lw    $a0, ($s0)
/* 00459F60 0320F809 */  jalr  $t9
/* 00459F64 27A500FC */   addiu $a1, $sp, 0xfc
/* 00459F68 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459F6C 00000000 */  nop   
/* 00459F70 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459F74 00000000 */  nop   
/* 00459F78 90630000 */  lbu   $v1, ($v1)
/* 00459F7C 100004FA */  b     .L0045B368
/* 00459F80 00000000 */   nop   
.L00459F84:
/* 00459F84 8F998518 */  lw    $t9, %call16(parseseg)($gp)
/* 00459F88 00002025 */  move  $a0, $zero
/* 00459F8C 0320F809 */  jalr  $t9
/* 00459F90 00000000 */   nop   
/* 00459F94 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459F98 00000000 */  nop   
/* 00459F9C 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459FA0 00000000 */  nop   
/* 00459FA4 90630000 */  lbu   $v1, ($v1)
/* 00459FA8 100004EF */  b     .L0045B368
/* 00459FAC 00000000 */   nop   
.L00459FB0:
/* 00459FB0 8F9983BC */  lw    $t9, %call16(parse_mtag)($gp)
/* 00459FB4 8E040008 */  lw    $a0, 8($s0)
/* 00459FB8 8E05000C */  lw    $a1, 0xc($s0)
/* 00459FBC 0320F809 */  jalr  $t9
/* 00459FC0 00000000 */   nop   
/* 00459FC4 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459FC8 00000000 */  nop   
/* 00459FCC 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 00459FD0 00000000 */  nop   
/* 00459FD4 90630000 */  lbu   $v1, ($v1)
/* 00459FD8 100004E3 */  b     .L0045B368
/* 00459FDC 00000000 */   nop   
.L00459FE0:
/* 00459FE0 8F9983C0 */  lw    $t9, %call16(parse_malias)($gp)
/* 00459FE4 8E040008 */  lw    $a0, 8($s0)
/* 00459FE8 8E05000C */  lw    $a1, 0xc($s0)
/* 00459FEC 0320F809 */  jalr  $t9
/* 00459FF0 00000000 */   nop   
/* 00459FF4 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 00459FF8 00000000 */  nop   
/* 00459FFC 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045A000 00000000 */  nop   
/* 0045A004 90630000 */  lbu   $v1, ($v1)
/* 0045A008 100004D7 */  b     .L0045B368
/* 0045A00C 00000000 */   nop   
.L0045A010:
/* 0045A010 8F998570 */  lw    $t9, %call16(parseword)($gp)
/* 0045A014 24040004 */  li    $a0, 4
/* 0045A018 0320F809 */  jalr  $t9
/* 0045A01C 00000000 */   nop   
/* 0045A020 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A024 00000000 */  nop   
/* 0045A028 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045A02C 00000000 */  nop   
/* 0045A030 90630000 */  lbu   $v1, ($v1)
/* 0045A034 100004CC */  b     .L0045B368
/* 0045A038 00000000 */   nop   
.L0045A03C:
/* 0045A03C 8F998570 */  lw    $t9, %call16(parseword)($gp)
/* 0045A040 24040008 */  li    $a0, 8
/* 0045A044 0320F809 */  jalr  $t9
/* 0045A048 00000000 */   nop   
/* 0045A04C 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A050 00000000 */  nop   
/* 0045A054 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045A058 00000000 */  nop   
/* 0045A05C 90630000 */  lbu   $v1, ($v1)
/* 0045A060 100004C1 */  b     .L0045B368
/* 0045A064 00000000 */   nop   
.L0045A068:
/* 0045A068 8F818DA8 */  lw     $at, %got(adjust_frame_by_ld)($gp)
/* 0045A06C 2402FFFF */  li    $v0, -1
/* 0045A070 A0200000 */  sb    $zero, ($at)
/* 0045A074 8F818D7C */  lw     $at, %got(known_framesize)($gp)
/* 0045A078 8F9985F8 */  lw    $t9, %call16(init_multi_relocinst)($gp)
/* 0045A07C AC220000 */  sw    $v0, ($at)
/* 0045A080 8F818D80 */  lw     $at, %got(max_arg_build)($gp)
/* 0045A084 240E001D */  li    $t6, 29
/* 0045A088 AC220000 */  sw    $v0, ($at)
/* 0045A08C 8F818DB8 */  lw     $at, %got(frame_ptr)($gp)
/* 0045A090 0320F809 */  jalr  $t9
/* 0045A094 A02E0000 */   sb    $t6, ($at)
/* 0045A098 92040005 */  lbu   $a0, 5($s0)
/* 0045A09C 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A0A0 2401001B */  li    $at, 27
/* 0045A0A4 308B003F */  andi  $t3, $a0, 0x3f
/* 0045A0A8 1561000A */  bne   $t3, $at, .L0045A0D4
/* 0045A0AC 01602025 */   move  $a0, $t3
/* 0045A0B0 8F9983B8 */  lw    $t9, %call16(init_malias_table)($gp)
/* 0045A0B4 00000000 */  nop   
/* 0045A0B8 0320F809 */  jalr  $t9
/* 0045A0BC 00000000 */   nop   
/* 0045A0C0 92040005 */  lbu   $a0, 5($s0)
/* 0045A0C4 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A0C8 3089003F */  andi  $t1, $a0, 0x3f
/* 0045A0CC 10000019 */  b     .L0045A134
/* 0045A0D0 01202025 */   move  $a0, $t1
.L0045A0D4:
/* 0045A0D4 2401002E */  li    $at, 46
/* 0045A0D8 14810016 */  bne   $a0, $at, .L0045A134
/* 0045A0DC 00000000 */   nop   
/* 0045A0E0 8F888C04 */  lw     $t0, %got(ent_pending)($gp)
/* 0045A0E4 8F8189B8 */  lw     $at, %got(ignore_frames)($gp)
/* 0045A0E8 91080000 */  lbu   $t0, ($t0)
/* 0045A0EC A0310000 */  sb    $s1, ($at)
/* 0045A0F0 11000010 */  beqz  $t0, .L0045A134
/* 0045A0F4 00000000 */   nop   
/* 0045A0F8 8E590000 */  lw    $t9, ($s2)
/* 0045A0FC 02402025 */  move  $a0, $s2
/* 0045A100 27380001 */  addiu $t8, $t9, 1
/* 0045A104 AE580000 */  sw    $t8, ($s2)
/* 0045A108 8F9982DC */  lw    $t9, %call16(initbb)($gp)
/* 0045A10C 00000000 */  nop   
/* 0045A110 0320F809 */  jalr  $t9
/* 0045A114 00000000 */   nop   
/* 0045A118 8E4C0000 */  lw    $t4, ($s2)
/* 0045A11C 92040005 */  lbu   $a0, 5($s0)
/* 0045A120 258AFFFF */  addiu $t2, $t4, -1
/* 0045A124 308D003F */  andi  $t5, $a0, 0x3f
/* 0045A128 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A12C 01A02025 */  move  $a0, $t5
/* 0045A130 AE4A0000 */  sw    $t2, ($s2)
.L0045A134:
/* 0045A134 8F818C04 */  lw     $at, %got(ent_pending)($gp)
/* 0045A138 8F99852C */  lw    $t9, %call16(parseend)($gp)
/* 0045A13C A0310000 */  sb    $s1, ($at)
/* 0045A140 8F818B5C */  lw     $at, %got(last_bb)($gp)
/* 0045A144 0320F809 */  jalr  $t9
/* 0045A148 A0200002 */   sb    $zero, 2($at)
/* 0045A14C 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A150 00000000 */  nop   
/* 0045A154 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045A158 00000000 */  nop   
/* 0045A15C 90630000 */  lbu   $v1, ($v1)
/* 0045A160 10000481 */  b     .L0045B368
/* 0045A164 00000000 */   nop   
.L0045A168:
/* 0045A168 8F998528 */  lw    $t9, %call16(parseprologue)($gp)
/* 0045A16C 00000000 */  nop   
/* 0045A170 0320F809 */  jalr  $t9
/* 0045A174 00000000 */   nop   
/* 0045A178 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A17C 00000000 */  nop   
/* 0045A180 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045A184 00000000 */  nop   
/* 0045A188 90630000 */  lbu   $v1, ($v1)
/* 0045A18C 10000476 */  b     .L0045B368
/* 0045A190 00000000 */   nop   
.L0045A194:
/* 0045A194 8F99852C */  lw    $t9, %call16(parseend)($gp)
/* 0045A198 00000000 */  nop   
/* 0045A19C 0320F809 */  jalr  $t9
/* 0045A1A0 00000000 */   nop   
/* 0045A1A4 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A1A8 00000000 */  nop   
/* 0045A1AC 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045A1B0 00000000 */  nop   
/* 0045A1B4 90630000 */  lbu   $v1, ($v1)
/* 0045A1B8 1000046B */  b     .L0045B368
/* 0045A1BC 00000000 */   nop   
.L0045A1C0:
/* 0045A1C0 8F998530 */  lw    $t9, %call16(parserepeat)($gp)
/* 0045A1C4 00000000 */  nop   
/* 0045A1C8 0320F809 */  jalr  $t9
/* 0045A1CC 00000000 */   nop   
/* 0045A1D0 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A1D4 00000000 */  nop   
/* 0045A1D8 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045A1DC 00000000 */  nop   
/* 0045A1E0 90630000 */  lbu   $v1, ($v1)
/* 0045A1E4 10000460 */  b     .L0045B368
/* 0045A1E8 00000000 */   nop   
.L0045A1EC:
/* 0045A1EC 8F998534 */  lw    $t9, %call16(parseendrep)($gp)
/* 0045A1F0 00000000 */  nop   
/* 0045A1F4 0320F809 */  jalr  $t9
/* 0045A1F8 00000000 */   nop   
/* 0045A1FC 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A200 00000000 */  nop   
/* 0045A204 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045A208 00000000 */  nop   
/* 0045A20C 90630000 */  lbu   $v1, ($v1)
/* 0045A210 10000455 */  b     .L0045B368
/* 0045A214 00000000 */   nop   
.L0045A218:
/* 0045A218 8F8F89B8 */  lw     $t7, %got(ignore_frames)($gp)
/* 0045A21C 00000000 */  nop   
/* 0045A220 91EF0000 */  lbu   $t7, ($t7)
/* 0045A224 00000000 */  nop   
/* 0045A228 15E0044F */  bnez  $t7, .L0045B368
/* 0045A22C 00000000 */   nop   
/* 0045A230 8F8E8BC8 */  lw     $t6, %got(fromas0)($gp)
/* 0045A234 24040007 */  li    $a0, 7
/* 0045A238 91CE0000 */  lbu   $t6, ($t6)
/* 0045A23C 00000000 */  nop   
/* 0045A240 15C00010 */  bnez  $t6, .L0045A284
/* 0045A244 00000000 */   nop   
/* 0045A248 8F878B18 */  lw     $a3, %got(debugflag)($gp)
/* 0045A24C 8F9982E4 */  lw    $t9, %call16(fill_pseudo)($gp)
/* 0045A250 8E050008 */  lw    $a1, 8($s0)
/* 0045A254 8E06000C */  lw    $a2, 0xc($s0)
/* 0045A258 8CE70000 */  lw    $a3, ($a3)
/* 0045A25C AFA00010 */  sw    $zero, 0x10($sp)
/* 0045A260 0320F809 */  jalr  $t9
/* 0045A264 AFA00014 */   sw    $zero, 0x14($sp)
/* 0045A268 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A26C 00000000 */  nop   
/* 0045A270 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045A274 00000000 */  nop   
/* 0045A278 90630000 */  lbu   $v1, ($v1)
/* 0045A27C 1000043A */  b     .L0045B368
/* 0045A280 00000000 */   nop   
.L0045A284:
/* 0045A284 8F848B98 */  lw     $a0, %got(currentent)($gp)
/* 0045A288 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 0045A28C 8C840000 */  lw    $a0, ($a0)
/* 0045A290 0320F809 */  jalr  $t9
/* 0045A294 00000000 */   nop   
/* 0045A298 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A29C 1440002F */  bnez  $v0, .L0045A35C
/* 0045A2A0 AFA200FC */   sw    $v0, 0xfc($sp)
/* 0045A2A4 8F8B8070 */  lw    $t3, %got(RO_1001BD20)($gp)
/* 0045A2A8 03A0C825 */  move  $t9, $sp
/* 0045A2AC 256BBD20 */  addiu $t3, %lo(RO_1001BD20) # addiu $t3, $t3, -0x42e0
/* 0045A2B0 25680048 */  addiu $t0, $t3, 0x48
.L0045A2B4:
/* 0045A2B4 89610000 */  lwl   $at, ($t3)
/* 0045A2B8 99610003 */  lwr   $at, 3($t3)
/* 0045A2BC 256B000C */  addiu $t3, $t3, 0xc
/* 0045A2C0 AB210000 */  swl   $at, ($t9)
/* 0045A2C4 BB210003 */  swr   $at, 3($t9)
/* 0045A2C8 8961FFF8 */  lwl   $at, -8($t3)
/* 0045A2CC 9961FFFB */  lwr   $at, -5($t3)
/* 0045A2D0 2739000C */  addiu $t9, $t9, 0xc
/* 0045A2D4 AB21FFF8 */  swl   $at, -8($t9)
/* 0045A2D8 BB21FFFB */  swr   $at, -5($t9)
/* 0045A2DC 8961FFFC */  lwl   $at, -4($t3)
/* 0045A2E0 9961FFFF */  lwr   $at, -1($t3)
/* 0045A2E4 00000000 */  nop   
/* 0045A2E8 AB21FFFC */  swl   $at, -4($t9)
/* 0045A2EC 1568FFF1 */  bne   $t3, $t0, .L0045A2B4
/* 0045A2F0 BB21FFFF */   swr   $at, -1($t9)
/* 0045A2F4 89610000 */  lwl   $at, ($t3)
/* 0045A2F8 99610003 */  lwr   $at, 3($t3)
/* 0045A2FC 00000000 */  nop   
/* 0045A300 AB210000 */  swl   $at, ($t9)
/* 0045A304 BB210003 */  swr   $at, 3($t9)
/* 0045A308 89680004 */  lwl   $t0, 4($t3)
/* 0045A30C 99680007 */  lwr   $t0, 7($t3)
/* 0045A310 00000000 */  nop   
/* 0045A314 AB280004 */  swl   $t0, 4($t9)
/* 0045A318 BB280007 */  swr   $t0, 7($t9)
/* 0045A31C 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0045A320 8E610000 */  lw    $at, ($s3)
/* 0045A324 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045A328 8FA60008 */  lw    $a2, 8($sp)
/* 0045A32C 8FA50004 */  lw    $a1, 4($sp)
/* 0045A330 8FA40000 */  lw    $a0, ($sp)
/* 0045A334 AFB10054 */  sw    $s1, 0x54($sp)
/* 0045A338 0320F809 */  jalr  $t9
/* 0045A33C AFA10050 */   sw    $at, 0x50($sp)
/* 0045A340 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A344 00000000 */  nop   
/* 0045A348 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045A34C 00000000 */  nop   
/* 0045A350 90630000 */  lbu   $v1, ($v1)
/* 0045A354 10000404 */  b     .L0045B368
/* 0045A358 00000000 */   nop   
.L0045A35C:
/* 0045A35C A051003A */  sb    $s1, 0x3a($v0)
/* 0045A360 8E0A0008 */  lw    $t2, 8($s0)
/* 0045A364 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045A368 AC4A004C */  sw    $t2, 0x4c($v0)
/* 0045A36C 8E0D000C */  lw    $t5, 0xc($s0)
/* 0045A370 00000000 */  nop   
/* 0045A374 AC4D0050 */  sw    $t5, 0x50($v0)
/* 0045A378 90630000 */  lbu   $v1, ($v1)
/* 0045A37C 100003FA */  b     .L0045B368
/* 0045A380 00000000 */   nop   
.L0045A384:
/* 0045A384 8F8F89B8 */  lw     $t7, %got(ignore_frames)($gp)
/* 0045A388 00000000 */  nop   
/* 0045A38C 91EF0000 */  lbu   $t7, ($t7)
/* 0045A390 00000000 */  nop   
/* 0045A394 15E003F4 */  bnez  $t7, .L0045B368
/* 0045A398 00000000 */   nop   
/* 0045A39C 8F8E8BC8 */  lw     $t6, %got(fromas0)($gp)
/* 0045A3A0 24040008 */  li    $a0, 8
/* 0045A3A4 91CE0000 */  lbu   $t6, ($t6)
/* 0045A3A8 00000000 */  nop   
/* 0045A3AC 15C00010 */  bnez  $t6, .L0045A3F0
/* 0045A3B0 00000000 */   nop   
/* 0045A3B4 8F878B18 */  lw     $a3, %got(debugflag)($gp)
/* 0045A3B8 8F9982E4 */  lw    $t9, %call16(fill_pseudo)($gp)
/* 0045A3BC 8E050008 */  lw    $a1, 8($s0)
/* 0045A3C0 8E06000C */  lw    $a2, 0xc($s0)
/* 0045A3C4 8CE70000 */  lw    $a3, ($a3)
/* 0045A3C8 AFA00010 */  sw    $zero, 0x10($sp)
/* 0045A3CC 0320F809 */  jalr  $t9
/* 0045A3D0 AFA00014 */   sw    $zero, 0x14($sp)
/* 0045A3D4 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A3D8 00000000 */  nop   
/* 0045A3DC 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045A3E0 00000000 */  nop   
/* 0045A3E4 90630000 */  lbu   $v1, ($v1)
/* 0045A3E8 100003DF */  b     .L0045B368
/* 0045A3EC 00000000 */   nop   
.L0045A3F0:
/* 0045A3F0 8F848B98 */  lw     $a0, %got(currentent)($gp)
/* 0045A3F4 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 0045A3F8 8C840000 */  lw    $a0, ($a0)
/* 0045A3FC 0320F809 */  jalr  $t9
/* 0045A400 00000000 */   nop   
/* 0045A404 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A408 1440002F */  bnez  $v0, .L0045A4C8
/* 0045A40C AFA200FC */   sw    $v0, 0xfc($sp)
/* 0045A410 8F898070 */  lw    $t1, %got(RO_1001BCD0)($gp)
/* 0045A414 03A0C825 */  move  $t9, $sp
/* 0045A418 2529BCD0 */  addiu $t1, %lo(RO_1001BCD0) # addiu $t1, $t1, -0x4330
/* 0045A41C 252B0048 */  addiu $t3, $t1, 0x48
.L0045A420:
/* 0045A420 89210000 */  lwl   $at, ($t1)
/* 0045A424 99210003 */  lwr   $at, 3($t1)
/* 0045A428 2529000C */  addiu $t1, $t1, 0xc
/* 0045A42C AB210000 */  swl   $at, ($t9)
/* 0045A430 BB210003 */  swr   $at, 3($t9)
/* 0045A434 8921FFF8 */  lwl   $at, -8($t1)
/* 0045A438 9921FFFB */  lwr   $at, -5($t1)
/* 0045A43C 2739000C */  addiu $t9, $t9, 0xc
/* 0045A440 AB21FFF8 */  swl   $at, -8($t9)
/* 0045A444 BB21FFFB */  swr   $at, -5($t9)
/* 0045A448 8921FFFC */  lwl   $at, -4($t1)
/* 0045A44C 9921FFFF */  lwr   $at, -1($t1)
/* 0045A450 00000000 */  nop   
/* 0045A454 AB21FFFC */  swl   $at, -4($t9)
/* 0045A458 152BFFF1 */  bne   $t1, $t3, .L0045A420
/* 0045A45C BB21FFFF */   swr   $at, -1($t9)
/* 0045A460 89210000 */  lwl   $at, ($t1)
/* 0045A464 99210003 */  lwr   $at, 3($t1)
/* 0045A468 00000000 */  nop   
/* 0045A46C AB210000 */  swl   $at, ($t9)
/* 0045A470 BB210003 */  swr   $at, 3($t9)
/* 0045A474 892B0004 */  lwl   $t3, 4($t1)
/* 0045A478 992B0007 */  lwr   $t3, 7($t1)
/* 0045A47C 00000000 */  nop   
/* 0045A480 AB2B0004 */  swl   $t3, 4($t9)
/* 0045A484 BB2B0007 */  swr   $t3, 7($t9)
/* 0045A488 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0045A48C 8E610000 */  lw    $at, ($s3)
/* 0045A490 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045A494 8FA60008 */  lw    $a2, 8($sp)
/* 0045A498 8FA50004 */  lw    $a1, 4($sp)
/* 0045A49C 8FA40000 */  lw    $a0, ($sp)
/* 0045A4A0 AFB10054 */  sw    $s1, 0x54($sp)
/* 0045A4A4 0320F809 */  jalr  $t9
/* 0045A4A8 AFA10050 */   sw    $at, 0x50($sp)
/* 0045A4AC 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A4B0 00000000 */  nop   
/* 0045A4B4 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045A4B8 00000000 */  nop   
/* 0045A4BC 90630000 */  lbu   $v1, ($v1)
/* 0045A4C0 100003A9 */  b     .L0045B368
/* 0045A4C4 00000000 */   nop   
.L0045A4C8:
/* 0045A4C8 A051003B */  sb    $s1, 0x3b($v0)
/* 0045A4CC 8E0A0008 */  lw    $t2, 8($s0)
/* 0045A4D0 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045A4D4 AC4A0054 */  sw    $t2, 0x54($v0)
/* 0045A4D8 8E0D000C */  lw    $t5, 0xc($s0)
/* 0045A4DC 00000000 */  nop   
/* 0045A4E0 AC4D0058 */  sw    $t5, 0x58($v0)
/* 0045A4E4 90630000 */  lbu   $v1, ($v1)
/* 0045A4E8 1000039F */  b     .L0045B368
/* 0045A4EC 00000000 */   nop   
.L0045A4F0:
/* 0045A4F0 8F828B18 */  lw     $v0, %got(debugflag)($gp)
/* 0045A4F4 24040006 */  li    $a0, 6
/* 0045A4F8 8C420000 */  lw    $v0, ($v0)
/* 0045A4FC 00000000 */  nop   
/* 0045A500 18400399 */  blez  $v0, .L0045B368
/* 0045A504 00000000 */   nop   
/* 0045A508 92070008 */  lbu   $a3, 8($s0)
/* 0045A50C 8F9983F4 */  lw    $t9, %call16(st_pseudo)($gp)
/* 0045A510 8E050000 */  lw    $a1, ($s0)
/* 0045A514 8E06000C */  lw    $a2, 0xc($s0)
/* 0045A518 00077E00 */  sll   $t7, $a3, 0x18
/* 0045A51C 000F3E42 */  srl   $a3, $t7, 0x19
/* 0045A520 AFA00010 */  sw    $zero, 0x10($sp)
/* 0045A524 0320F809 */  jalr  $t9
/* 0045A528 AFA20014 */   sw    $v0, 0x14($sp)
/* 0045A52C 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A530 00000000 */  nop   
/* 0045A534 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045A538 00000000 */  nop   
/* 0045A53C 90630000 */  lbu   $v1, ($v1)
/* 0045A540 10000389 */  b     .L0045B368
/* 0045A544 00000000 */   nop   
.L0045A548:
/* 0045A548 8F99853C */  lw    $t9, %call16(parseloc)($gp)
/* 0045A54C 27A400E3 */  addiu $a0, $sp, 0xe3
/* 0045A550 0320F809 */  jalr  $t9
/* 0045A554 00000000 */   nop   
/* 0045A558 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A55C 00000000 */  nop   
/* 0045A560 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045A564 00000000 */  nop   
/* 0045A568 90630000 */  lbu   $v1, ($v1)
/* 0045A56C 1000037E */  b     .L0045B368
/* 0045A570 00000000 */   nop   
.L0045A574:
/* 0045A574 8E080008 */  lw    $t0, 8($s0)
/* 0045A578 24010003 */  li    $at, 3
/* 0045A57C 1101037A */  beq   $t0, $at, .L0045B368
/* 0045A580 00000000 */   nop   
/* 0045A584 8F8B8070 */  lw    $t3, %got(RO_1001BC80)($gp)
/* 0045A588 03A0C025 */  move  $t8, $sp
/* 0045A58C 256BBC80 */  addiu $t3, %lo(RO_1001BC80) # addiu $t3, $t3, -0x4380
/* 0045A590 25790048 */  addiu $t9, $t3, 0x48
.L0045A594:
/* 0045A594 89610000 */  lwl   $at, ($t3)
/* 0045A598 99610003 */  lwr   $at, 3($t3)
/* 0045A59C 256B000C */  addiu $t3, $t3, 0xc
/* 0045A5A0 AB010000 */  swl   $at, ($t8)
/* 0045A5A4 BB010003 */  swr   $at, 3($t8)
/* 0045A5A8 8961FFF8 */  lwl   $at, -8($t3)
/* 0045A5AC 9961FFFB */  lwr   $at, -5($t3)
/* 0045A5B0 2718000C */  addiu $t8, $t8, 0xc
/* 0045A5B4 AB01FFF8 */  swl   $at, -8($t8)
/* 0045A5B8 BB01FFFB */  swr   $at, -5($t8)
/* 0045A5BC 8961FFFC */  lwl   $at, -4($t3)
/* 0045A5C0 9961FFFF */  lwr   $at, -1($t3)
/* 0045A5C4 00000000 */  nop   
/* 0045A5C8 AB01FFFC */  swl   $at, -4($t8)
/* 0045A5CC 1579FFF1 */  bne   $t3, $t9, .L0045A594
/* 0045A5D0 BB01FFFF */   swr   $at, -1($t8)
/* 0045A5D4 89610000 */  lwl   $at, ($t3)
/* 0045A5D8 99610003 */  lwr   $at, 3($t3)
/* 0045A5DC 240D0002 */  li    $t5, 2
/* 0045A5E0 AB010000 */  swl   $at, ($t8)
/* 0045A5E4 BB010003 */  swr   $at, 3($t8)
/* 0045A5E8 89790004 */  lwl   $t9, 4($t3)
/* 0045A5EC 99790007 */  lwr   $t9, 7($t3)
/* 0045A5F0 00000000 */  nop   
/* 0045A5F4 AB190004 */  swl   $t9, 4($t8)
/* 0045A5F8 BB190007 */  swr   $t9, 7($t8)
/* 0045A5FC 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0045A600 8E610000 */  lw    $at, ($s3)
/* 0045A604 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045A608 8FA60008 */  lw    $a2, 8($sp)
/* 0045A60C 8FA50004 */  lw    $a1, 4($sp)
/* 0045A610 8FA40000 */  lw    $a0, ($sp)
/* 0045A614 AFAD0054 */  sw    $t5, 0x54($sp)
/* 0045A618 0320F809 */  jalr  $t9
/* 0045A61C AFA10050 */   sw    $at, 0x50($sp)
/* 0045A620 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A624 00000000 */  nop   
/* 0045A628 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045A62C 00000000 */  nop   
/* 0045A630 90630000 */  lbu   $v1, ($v1)
/* 0045A634 1000034C */  b     .L0045B368
/* 0045A638 00000000 */   nop   
.L0045A63C:
/* 0045A63C 8F8F89B8 */  lw     $t7, %got(ignore_frames)($gp)
/* 0045A640 00000000 */  nop   
/* 0045A644 91EF0000 */  lbu   $t7, ($t7)
/* 0045A648 00000000 */  nop   
/* 0045A64C 15E00346 */  bnez  $t7, .L0045B368
/* 0045A650 00000000 */   nop   
/* 0045A654 8F8E8BC8 */  lw     $t6, %got(fromas0)($gp)
/* 0045A658 00000000 */  nop   
/* 0045A65C 91CE0000 */  lbu   $t6, ($t6)
/* 0045A660 00000000 */  nop   
/* 0045A664 11C00042 */  beqz  $t6, .L0045A770
/* 0045A668 00000000 */   nop   
/* 0045A66C 8F848B98 */  lw     $a0, %got(currentent)($gp)
/* 0045A670 8F9985A4 */  lw    $t9, %call16(stp)($gp)
/* 0045A674 8C840000 */  lw    $a0, ($a0)
/* 0045A678 0320F809 */  jalr  $t9
/* 0045A67C 00000000 */   nop   
/* 0045A680 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A684 1440002B */  bnez  $v0, .L0045A734
/* 0045A688 AFA200FC */   sw    $v0, 0xfc($sp)
/* 0045A68C 8F888070 */  lw    $t0, %got(RO_1001BC30)($gp)
/* 0045A690 03A05825 */  move  $t3, $sp
/* 0045A694 2508BC30 */  addiu $t0, %lo(RO_1001BC30) # addiu $t0, $t0, -0x43d0
/* 0045A698 25190048 */  addiu $t9, $t0, 0x48
.L0045A69C:
/* 0045A69C 89010000 */  lwl   $at, ($t0)
/* 0045A6A0 99010003 */  lwr   $at, 3($t0)
/* 0045A6A4 2508000C */  addiu $t0, $t0, 0xc
/* 0045A6A8 A9610000 */  swl   $at, ($t3)
/* 0045A6AC B9610003 */  swr   $at, 3($t3)
/* 0045A6B0 8901FFF8 */  lwl   $at, -8($t0)
/* 0045A6B4 9901FFFB */  lwr   $at, -5($t0)
/* 0045A6B8 256B000C */  addiu $t3, $t3, 0xc
/* 0045A6BC A961FFF8 */  swl   $at, -8($t3)
/* 0045A6C0 B961FFFB */  swr   $at, -5($t3)
/* 0045A6C4 8901FFFC */  lwl   $at, -4($t0)
/* 0045A6C8 9901FFFF */  lwr   $at, -1($t0)
/* 0045A6CC 00000000 */  nop   
/* 0045A6D0 A961FFFC */  swl   $at, -4($t3)
/* 0045A6D4 1519FFF1 */  bne   $t0, $t9, .L0045A69C
/* 0045A6D8 B961FFFF */   swr   $at, -1($t3)
/* 0045A6DC 89010000 */  lwl   $at, ($t0)
/* 0045A6E0 99010003 */  lwr   $at, 3($t0)
/* 0045A6E4 00000000 */  nop   
/* 0045A6E8 A9610000 */  swl   $at, ($t3)
/* 0045A6EC B9610003 */  swr   $at, 3($t3)
/* 0045A6F0 89190004 */  lwl   $t9, 4($t0)
/* 0045A6F4 99190007 */  lwr   $t9, 7($t0)
/* 0045A6F8 00000000 */  nop   
/* 0045A6FC A9790004 */  swl   $t9, 4($t3)
/* 0045A700 B9790007 */  swr   $t9, 7($t3)
/* 0045A704 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0045A708 8E610000 */  lw    $at, ($s3)
/* 0045A70C 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045A710 8FA60008 */  lw    $a2, 8($sp)
/* 0045A714 8FA50004 */  lw    $a1, 4($sp)
/* 0045A718 8FA40000 */  lw    $a0, ($sp)
/* 0045A71C AFB10054 */  sw    $s1, 0x54($sp)
/* 0045A720 0320F809 */  jalr  $t9
/* 0045A724 AFA10050 */   sw    $at, 0x50($sp)
/* 0045A728 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A72C 10000031 */  b     .L0045A7F4
/* 0045A730 920E000C */   lbu   $t6, 0xc($s0)
.L0045A734:
/* 0045A734 A0510039 */  sb    $s1, 0x39($v0)
/* 0045A738 8E0A0008 */  lw    $t2, 8($s0)
/* 0045A73C 00000000 */  nop   
/* 0045A740 AC4A0048 */  sw    $t2, 0x48($v0)
/* 0045A744 920D000C */  lbu   $t5, 0xc($s0)
/* 0045A748 00000000 */  nop   
/* 0045A74C 000D7E00 */  sll   $t7, $t5, 0x18
/* 0045A750 000F7642 */  srl   $t6, $t7, 0x19
/* 0045A754 A04E003F */  sb    $t6, 0x3f($v0)
/* 0045A758 9609000C */  lhu   $t1, 0xc($s0)
/* 0045A75C 00000000 */  nop   
/* 0045A760 0009CDC0 */  sll   $t9, $t1, 0x17
/* 0045A764 00194642 */  srl   $t0, $t9, 0x19
/* 0045A768 10000021 */  b     .L0045A7F0
/* 0045A76C A0480040 */   sb    $t0, 0x40($v0)
.L0045A770:
/* 0045A770 9602000C */  lhu   $v0, 0xc($s0)
/* 0045A774 24010048 */  li    $at, 72
/* 0045A778 00025DC0 */  sll   $t3, $v0, 0x17
/* 0045A77C 000BC642 */  srl   $t8, $t3, 0x19
/* 0045A780 1301000F */  beq   $t8, $at, .L0045A7C0
/* 0045A784 24040009 */   li    $a0, 9
/* 0045A788 9205000C */  lbu   $a1, 0xc($s0)
/* 0045A78C 8F878B18 */  lw     $a3, %got(debugflag)($gp)
/* 0045A790 8F9982E4 */  lw    $t9, %call16(fill_pseudo)($gp)
/* 0045A794 8E060008 */  lw    $a2, 8($s0)
/* 0045A798 00056600 */  sll   $t4, $a1, 0x18
/* 0045A79C 8CE70000 */  lw    $a3, ($a3)
/* 0045A7A0 000C2E42 */  srl   $a1, $t4, 0x19
/* 0045A7A4 24040009 */  li    $a0, 9
/* 0045A7A8 AFA00010 */  sw    $zero, 0x10($sp)
/* 0045A7AC 0320F809 */  jalr  $t9
/* 0045A7B0 AFB80014 */   sw    $t8, 0x14($sp)
/* 0045A7B4 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A7B8 1000000E */  b     .L0045A7F4
/* 0045A7BC 920E000C */   lbu   $t6, 0xc($s0)
.L0045A7C0:
/* 0045A7C0 9205000C */  lbu   $a1, 0xc($s0)
/* 0045A7C4 8F878B18 */  lw     $a3, %got(debugflag)($gp)
/* 0045A7C8 8F9982E4 */  lw    $t9, %call16(fill_pseudo)($gp)
/* 0045A7CC 8E060008 */  lw    $a2, 8($s0)
/* 0045A7D0 00056E00 */  sll   $t5, $a1, 0x18
/* 0045A7D4 8CE70000 */  lw    $a3, ($a3)
/* 0045A7D8 000D2E42 */  srl   $a1, $t5, 0x19
/* 0045A7DC AFA00010 */  sw    $zero, 0x10($sp)
/* 0045A7E0 0320F809 */  jalr  $t9
/* 0045A7E4 AFA00014 */   sw    $zero, 0x14($sp)
/* 0045A7E8 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A7EC 00000000 */  nop   
.L0045A7F0:
/* 0045A7F0 920E000C */  lbu   $t6, 0xc($s0)
.L0045A7F4:
/* 0045A7F4 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045A7F8 8F8189BC */  lw     $at, %got(framereg_for_cprestore)($gp)
/* 0045A7FC 000E4E00 */  sll   $t1, $t6, 0x18
/* 0045A800 0009CE42 */  srl   $t9, $t1, 0x19
/* 0045A804 90630000 */  lbu   $v1, ($v1)
/* 0045A808 100002D7 */  b     .L0045B368
/* 0045A80C A0390000 */   sb    $t9, ($at)
.L0045A810:
/* 0045A810 1060002C */  beqz  $v1, .L0045A8C4
/* 0045A814 2401000F */   li    $at, 15
/* 0045A818 1061002A */  beq   $v1, $at, .L0045A8C4
/* 0045A81C 00000000 */   nop   
/* 0045A820 8F888070 */  lw    $t0, %got(RO_1001BBE0)($gp)
/* 0045A824 03A06025 */  move  $t4, $sp
/* 0045A828 2508BBE0 */  addiu $t0, %lo(RO_1001BBE0) # addiu $t0, $t0, -0x4420
/* 0045A82C 25180048 */  addiu $t8, $t0, 0x48
.L0045A830:
/* 0045A830 89010000 */  lwl   $at, ($t0)
/* 0045A834 99010003 */  lwr   $at, 3($t0)
/* 0045A838 2508000C */  addiu $t0, $t0, 0xc
/* 0045A83C A9810000 */  swl   $at, ($t4)
/* 0045A840 B9810003 */  swr   $at, 3($t4)
/* 0045A844 8901FFF8 */  lwl   $at, -8($t0)
/* 0045A848 9901FFFB */  lwr   $at, -5($t0)
/* 0045A84C 258C000C */  addiu $t4, $t4, 0xc
/* 0045A850 A981FFF8 */  swl   $at, -8($t4)
/* 0045A854 B981FFFB */  swr   $at, -5($t4)
/* 0045A858 8901FFFC */  lwl   $at, -4($t0)
/* 0045A85C 9901FFFF */  lwr   $at, -1($t0)
/* 0045A860 00000000 */  nop   
/* 0045A864 A981FFFC */  swl   $at, -4($t4)
/* 0045A868 1518FFF1 */  bne   $t0, $t8, .L0045A830
/* 0045A86C B981FFFF */   swr   $at, -1($t4)
/* 0045A870 89010000 */  lwl   $at, ($t0)
/* 0045A874 99010003 */  lwr   $at, 3($t0)
/* 0045A878 00000000 */  nop   
/* 0045A87C A9810000 */  swl   $at, ($t4)
/* 0045A880 B9810003 */  swr   $at, 3($t4)
/* 0045A884 89180004 */  lwl   $t8, 4($t0)
/* 0045A888 99180007 */  lwr   $t8, 7($t0)
/* 0045A88C 00000000 */  nop   
/* 0045A890 A9980004 */  swl   $t8, 4($t4)
/* 0045A894 B9980007 */  swr   $t8, 7($t4)
/* 0045A898 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0045A89C 8E610000 */  lw    $at, ($s3)
/* 0045A8A0 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045A8A4 8FA60008 */  lw    $a2, 8($sp)
/* 0045A8A8 8FA50004 */  lw    $a1, 4($sp)
/* 0045A8AC 8FA40000 */  lw    $a0, ($sp)
/* 0045A8B0 AFB10054 */  sw    $s1, 0x54($sp)
/* 0045A8B4 0320F809 */  jalr  $t9
/* 0045A8B8 AFA10050 */   sw    $at, 0x50($sp)
/* 0045A8BC 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A8C0 00000000 */  nop   
.L0045A8C4:
/* 0045A8C4 8F998564 */  lw    $t9, %call16(parsecpload)($gp)
/* 0045A8C8 00000000 */  nop   
/* 0045A8CC 0320F809 */  jalr  $t9
/* 0045A8D0 00000000 */   nop   
/* 0045A8D4 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A8D8 00000000 */  nop   
/* 0045A8DC 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045A8E0 00000000 */  nop   
/* 0045A8E4 90630000 */  lbu   $v1, ($v1)
/* 0045A8E8 1000029F */  b     .L0045B368
/* 0045A8EC 00000000 */   nop   
.L0045A8F0:
/* 0045A8F0 8F998568 */  lw    $t9, %call16(parsecpadd)($gp)
/* 0045A8F4 00000000 */  nop   
/* 0045A8F8 0320F809 */  jalr  $t9
/* 0045A8FC 00000000 */   nop   
/* 0045A900 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A904 00000000 */  nop   
/* 0045A908 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045A90C 00000000 */  nop   
/* 0045A910 90630000 */  lbu   $v1, ($v1)
/* 0045A914 10000294 */  b     .L0045B368
/* 0045A918 00000000 */   nop   
.L0045A91C:
/* 0045A91C 1060002C */  beqz  $v1, .L0045A9D0
/* 0045A920 2401000F */   li    $at, 15
/* 0045A924 1061002A */  beq   $v1, $at, .L0045A9D0
/* 0045A928 00000000 */   nop   
/* 0045A92C 8F8F8070 */  lw    $t7, %got(RO_1001BB90)($gp)
/* 0045A930 03A0C825 */  move  $t9, $sp
/* 0045A934 25EFBB90 */  addiu $t7, %lo(RO_1001BB90) # addiu $t7, $t7, -0x4470
/* 0045A938 25E90048 */  addiu $t1, $t7, 0x48
.L0045A93C:
/* 0045A93C 89E10000 */  lwl   $at, ($t7)
/* 0045A940 99E10003 */  lwr   $at, 3($t7)
/* 0045A944 25EF000C */  addiu $t7, $t7, 0xc
/* 0045A948 AB210000 */  swl   $at, ($t9)
/* 0045A94C BB210003 */  swr   $at, 3($t9)
/* 0045A950 89E1FFF8 */  lwl   $at, -8($t7)
/* 0045A954 99E1FFFB */  lwr   $at, -5($t7)
/* 0045A958 2739000C */  addiu $t9, $t9, 0xc
/* 0045A95C AB21FFF8 */  swl   $at, -8($t9)
/* 0045A960 BB21FFFB */  swr   $at, -5($t9)
/* 0045A964 89E1FFFC */  lwl   $at, -4($t7)
/* 0045A968 99E1FFFF */  lwr   $at, -1($t7)
/* 0045A96C 00000000 */  nop   
/* 0045A970 AB21FFFC */  swl   $at, -4($t9)
/* 0045A974 15E9FFF1 */  bne   $t7, $t1, .L0045A93C
/* 0045A978 BB21FFFF */   swr   $at, -1($t9)
/* 0045A97C 89E10000 */  lwl   $at, ($t7)
/* 0045A980 99E10003 */  lwr   $at, 3($t7)
/* 0045A984 00000000 */  nop   
/* 0045A988 AB210000 */  swl   $at, ($t9)
/* 0045A98C BB210003 */  swr   $at, 3($t9)
/* 0045A990 89E90004 */  lwl   $t1, 4($t7)
/* 0045A994 99E90007 */  lwr   $t1, 7($t7)
/* 0045A998 00000000 */  nop   
/* 0045A99C AB290004 */  swl   $t1, 4($t9)
/* 0045A9A0 BB290007 */  swr   $t1, 7($t9)
/* 0045A9A4 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0045A9A8 8E610000 */  lw    $at, ($s3)
/* 0045A9AC 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045A9B0 8FA60008 */  lw    $a2, 8($sp)
/* 0045A9B4 8FA50004 */  lw    $a1, 4($sp)
/* 0045A9B8 8FA40000 */  lw    $a0, ($sp)
/* 0045A9BC AFB10054 */  sw    $s1, 0x54($sp)
/* 0045A9C0 0320F809 */  jalr  $t9
/* 0045A9C4 AFA10050 */   sw    $at, 0x50($sp)
/* 0045A9C8 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A9CC 00000000 */  nop   
.L0045A9D0:
/* 0045A9D0 8F99856C */  lw    $t9, %call16(parsecprestore)($gp)
/* 0045A9D4 00000000 */  nop   
/* 0045A9D8 0320F809 */  jalr  $t9
/* 0045A9DC 00000000 */   nop   
/* 0045A9E0 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045A9E4 00000000 */  nop   
/* 0045A9E8 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045A9EC 00000000 */  nop   
/* 0045A9F0 90630000 */  lbu   $v1, ($v1)
/* 0045A9F4 1000025C */  b     .L0045B368
/* 0045A9F8 00000000 */   nop   
.L0045A9FC:
/* 0045A9FC 8E080008 */  lw    $t0, 8($s0)
/* 0045AA00 8F818B4C */  lw     $at, %got(gjaldef)($gp)
/* 0045AA04 01006027 */  not   $t4, $t0
/* 0045AA08 AC2C0000 */  sw    $t4, ($at)
/* 0045AA0C 8E0A000C */  lw    $t2, 0xc($s0)
/* 0045AA10 8F818B4C */  lw     $at, %got(gjaldef)($gp)
/* 0045AA14 01406827 */  not   $t5, $t2
/* 0045AA18 10000253 */  b     .L0045B368
/* 0045AA1C AC2D0004 */   sw    $t5, 4($at)
.L0045AA20:
/* 0045AA20 8E0E0008 */  lw    $t6, 8($s0)
/* 0045AA24 8F818B50 */  lw     $at, %got(gjallive)($gp)
/* 0045AA28 00000000 */  nop   
/* 0045AA2C AC2E0000 */  sw    $t6, ($at)
/* 0045AA30 8E09000C */  lw    $t1, 0xc($s0)
/* 0045AA34 8F818B50 */  lw     $at, %got(gjallive)($gp)
/* 0045AA38 1000024B */  b     .L0045B368
/* 0045AA3C AC290004 */   sw    $t1, 4($at)
.L0045AA40:
/* 0045AA40 8E0F0008 */  lw    $t7, 8($s0)
/* 0045AA44 8F818BC0 */  lw     $at, %got(gjrlive)($gp)
/* 0045AA48 00000000 */  nop   
/* 0045AA4C AC2F0000 */  sw    $t7, ($at)
/* 0045AA50 8E19000C */  lw    $t9, 0xc($s0)
/* 0045AA54 8F818BC0 */  lw     $at, %got(gjrlive)($gp)
/* 0045AA58 10000243 */  b     .L0045B368
/* 0045AA5C AC390004 */   sw    $t9, 4($at)
.L0045AA60:
/* 0045AA60 8F818B60 */  lw     $at, %got(shftaddr)($gp)
/* 0045AA64 240B0001 */  li    $t3, 1
/* 0045AA68 1000023F */  b     .L0045B368
/* 0045AA6C AC2B0000 */   sw    $t3, ($at)
.L0045AA70:
/* 0045AA70 8F818CC4 */  lw     $at, %got(restext)($gp)
/* 0045AA74 1000023C */  b     .L0045B368
/* 0045AA78 A0310000 */   sb    $s1, ($at)
.L0045AA7C:
/* 0045AA7C 8F988B8C */  lw     $t8, %got(reorderflag)($gp)
/* 0045AA80 00000000 */  nop   
/* 0045AA84 93180000 */  lbu   $t8, ($t8)
/* 0045AA88 00000000 */  nop   
/* 0045AA8C 13000236 */  beqz  $t8, .L0045B368
/* 0045AA90 00000000 */   nop   
/* 0045AA94 8F888B1C */  lw     $t0, %got(optflag)($gp)
/* 0045AA98 00000000 */  nop   
/* 0045AA9C 8D080000 */  lw    $t0, ($t0)
/* 0045AAA0 00000000 */  nop   
/* 0045AAA4 19000230 */  blez  $t0, .L0045B368
/* 0045AAA8 00000000 */   nop   
/* 0045AAAC 8F818C1C */  lw     $at, %got(liveset)($gp)
/* 0045AAB0 240C0001 */  li    $t4, 1
/* 0045AAB4 AC2C0000 */  sw    $t4, ($at)
/* 0045AAB8 8E0A0008 */  lw    $t2, 8($s0)
/* 0045AABC 8F818C20 */  lw     $at, %got(binlive)($gp)
/* 0045AAC0 00000000 */  nop   
/* 0045AAC4 AC2A0000 */  sw    $t2, ($at)
/* 0045AAC8 8E0D000C */  lw    $t5, 0xc($s0)
/* 0045AACC 8F818D94 */  lw     $at, %got(fltlive)($gp)
/* 0045AAD0 10000225 */  b     .L0045B368
/* 0045AAD4 AC2D0000 */   sw    $t5, ($at)
.L0045AAD8:
/* 0045AAD8 8F998524 */  lw    $t9, %call16(parsealloc)($gp)
/* 0045AADC 00000000 */  nop   
/* 0045AAE0 0320F809 */  jalr  $t9
/* 0045AAE4 00000000 */   nop   
/* 0045AAE8 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045AAEC 00000000 */  nop   
/* 0045AAF0 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045AAF4 00000000 */  nop   
/* 0045AAF8 90630000 */  lbu   $v1, ($v1)
/* 0045AAFC 1000021A */  b     .L0045B368
/* 0045AB00 00000000 */   nop   
.L0045AB04:
/* 0045AB04 1060002C */  beqz  $v1, .L0045ABB8
/* 0045AB08 2401000F */   li    $at, 15
/* 0045AB0C 1061002A */  beq   $v1, $at, .L0045ABB8
/* 0045AB10 00000000 */   nop   
/* 0045AB14 8F8E8070 */  lw    $t6, %got(RO_1001BB40)($gp)
/* 0045AB18 03A0C825 */  move  $t9, $sp
/* 0045AB1C 25CEBB40 */  addiu $t6, %lo(RO_1001BB40) # addiu $t6, $t6, -0x44c0
/* 0045AB20 25CF0048 */  addiu $t7, $t6, 0x48
.L0045AB24:
/* 0045AB24 89C10000 */  lwl   $at, ($t6)
/* 0045AB28 99C10003 */  lwr   $at, 3($t6)
/* 0045AB2C 25CE000C */  addiu $t6, $t6, 0xc
/* 0045AB30 AB210000 */  swl   $at, ($t9)
/* 0045AB34 BB210003 */  swr   $at, 3($t9)
/* 0045AB38 89C1FFF8 */  lwl   $at, -8($t6)
/* 0045AB3C 99C1FFFB */  lwr   $at, -5($t6)
/* 0045AB40 2739000C */  addiu $t9, $t9, 0xc
/* 0045AB44 AB21FFF8 */  swl   $at, -8($t9)
/* 0045AB48 BB21FFFB */  swr   $at, -5($t9)
/* 0045AB4C 89C1FFFC */  lwl   $at, -4($t6)
/* 0045AB50 99C1FFFF */  lwr   $at, -1($t6)
/* 0045AB54 00000000 */  nop   
/* 0045AB58 AB21FFFC */  swl   $at, -4($t9)
/* 0045AB5C 15CFFFF1 */  bne   $t6, $t7, .L0045AB24
/* 0045AB60 BB21FFFF */   swr   $at, -1($t9)
/* 0045AB64 89C10000 */  lwl   $at, ($t6)
/* 0045AB68 99C10003 */  lwr   $at, 3($t6)
/* 0045AB6C 00000000 */  nop   
/* 0045AB70 AB210000 */  swl   $at, ($t9)
/* 0045AB74 BB210003 */  swr   $at, 3($t9)
/* 0045AB78 89CF0004 */  lwl   $t7, 4($t6)
/* 0045AB7C 99CF0007 */  lwr   $t7, 7($t6)
/* 0045AB80 00000000 */  nop   
/* 0045AB84 AB2F0004 */  swl   $t7, 4($t9)
/* 0045AB88 BB2F0007 */  swr   $t7, 7($t9)
/* 0045AB8C 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0045AB90 8E610000 */  lw    $at, ($s3)
/* 0045AB94 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045AB98 8FA60008 */  lw    $a2, 8($sp)
/* 0045AB9C 8FA50004 */  lw    $a1, 4($sp)
/* 0045ABA0 8FA40000 */  lw    $a0, ($sp)
/* 0045ABA4 AFB10054 */  sw    $s1, 0x54($sp)
/* 0045ABA8 0320F809 */  jalr  $t9
/* 0045ABAC AFA10050 */   sw    $at, 0x50($sp)
/* 0045ABB0 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045ABB4 00000000 */  nop   
.L0045ABB8:
/* 0045ABB8 96040006 */  lhu   $a0, 6($s0)
/* 0045ABBC 240101AD */  li    $at, 429
/* 0045ABC0 00044580 */  sll   $t0, $a0, 0x16
/* 0045ABC4 000825C2 */  srl   $a0, $t0, 0x17
/* 0045ABC8 14810032 */  bne   $a0, $at, .L0045AC94
/* 0045ABCC 00000000 */   nop   
/* 0045ABD0 8F8A8070 */  lw    $t2, %got(RO_1001BAF0)($gp)
/* 0045ABD4 03A07825 */  move  $t7, $sp
/* 0045ABD8 254ABAF0 */  addiu $t2, %lo(RO_1001BAF0) # addiu $t2, $t2, -0x4510
/* 0045ABDC 25490048 */  addiu $t1, $t2, 0x48
.L0045ABE0:
/* 0045ABE0 89410000 */  lwl   $at, ($t2)
/* 0045ABE4 99410003 */  lwr   $at, 3($t2)
/* 0045ABE8 254A000C */  addiu $t2, $t2, 0xc
/* 0045ABEC A9E10000 */  swl   $at, ($t7)
/* 0045ABF0 B9E10003 */  swr   $at, 3($t7)
/* 0045ABF4 8941FFF8 */  lwl   $at, -8($t2)
/* 0045ABF8 9941FFFB */  lwr   $at, -5($t2)
/* 0045ABFC 25EF000C */  addiu $t7, $t7, 0xc
/* 0045AC00 A9E1FFF8 */  swl   $at, -8($t7)
/* 0045AC04 B9E1FFFB */  swr   $at, -5($t7)
/* 0045AC08 8941FFFC */  lwl   $at, -4($t2)
/* 0045AC0C 9941FFFF */  lwr   $at, -1($t2)
/* 0045AC10 00000000 */  nop   
/* 0045AC14 A9E1FFFC */  swl   $at, -4($t7)
/* 0045AC18 1549FFF1 */  bne   $t2, $t1, .L0045ABE0
/* 0045AC1C B9E1FFFF */   swr   $at, -1($t7)
/* 0045AC20 89410000 */  lwl   $at, ($t2)
/* 0045AC24 99410003 */  lwr   $at, 3($t2)
/* 0045AC28 00000000 */  nop   
/* 0045AC2C A9E10000 */  swl   $at, ($t7)
/* 0045AC30 B9E10003 */  swr   $at, 3($t7)
/* 0045AC34 89490004 */  lwl   $t1, 4($t2)
/* 0045AC38 99490007 */  lwr   $t1, 7($t2)
/* 0045AC3C 00000000 */  nop   
/* 0045AC40 A9E90004 */  swl   $t1, 4($t7)
/* 0045AC44 B9E90007 */  swr   $t1, 7($t7)
/* 0045AC48 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0045AC4C 8E610000 */  lw    $at, ($s3)
/* 0045AC50 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045AC54 8FA60008 */  lw    $a2, 8($sp)
/* 0045AC58 8FA50004 */  lw    $a1, 4($sp)
/* 0045AC5C 8FA40000 */  lw    $a0, ($sp)
/* 0045AC60 AFB10054 */  sw    $s1, 0x54($sp)
/* 0045AC64 0320F809 */  jalr  $t9
/* 0045AC68 AFA10050 */   sw    $at, 0x50($sp)
/* 0045AC6C 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045AC70 00000000 */  nop   
/* 0045AC74 8F818C8C */  lw     $at, %got(endofbasicb)($gp)
/* 0045AC78 8F9985E8 */  lw    $t9, %call16(get_binasm)($gp)
/* 0045AC7C 8F848D64 */  lw     $a0, %got(binasmfyle)($gp)
/* 0045AC80 0320F809 */  jalr  $t9
/* 0045AC84 A0310000 */   sb    $s1, ($at)
/* 0045AC88 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045AC8C 100001F4 */  b     .L0045B460
/* 0045AC90 8FBF00C4 */   lw    $ra, 0xc4($sp)
.L0045AC94:
/* 0045AC94 8F988CB0 */  lw     $t8, %got(branchpending)($gp)
/* 0045AC98 8E4B0000 */  lw    $t3, ($s2)
/* 0045AC9C 8F888D20 */  lw     $t0, %got(asm2asmformat)($gp)
/* 0045ACA0 93180000 */  lbu   $t8, ($t8)
/* 0045ACA4 AFAB00F8 */  sw    $t3, 0xf8($sp)
/* 0045ACA8 00886021 */  addu  $t4, $a0, $t0
/* 0045ACAC A3B800E2 */  sb    $t8, 0xe2($sp)
/* 0045ACB0 91820000 */  lbu   $v0, ($t4)
/* 0045ACB4 00000000 */  nop   
/* 0045ACB8 2C410011 */  sltiu $at, $v0, 0x11
/* 0045ACBC 1020006B */  beqz  $at, .L0045AE6C
/* 0045ACC0 00000000 */   nop   
/* 0045ACC4 8F818070 */  lw    $at, %got(jtbl_1001BDE8)($gp)
/* 0045ACC8 00026880 */  sll   $t5, $v0, 2
/* 0045ACCC 002D0821 */  addu  $at, $at, $t5
/* 0045ACD0 8C2DBDE8 */  lw    $t5, %lo(jtbl_1001BDE8)($at)
/* 0045ACD4 00000000 */  nop   
/* 0045ACD8 01BC6821 */  addu  $t5, $t5, $gp
/* 0045ACDC 01A00008 */  jr    $t5
/* 0045ACE0 00000000 */   nop   
.L0045ACE4:
/* 0045ACE4 8F9984D8 */  lw    $t9, %call16(parseaf)($gp)
/* 0045ACE8 00000000 */  nop   
/* 0045ACEC 0320F809 */  jalr  $t9
/* 0045ACF0 00000000 */   nop   
/* 0045ACF4 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045ACF8 100000A0 */  b     .L0045AF7C
/* 0045ACFC 93AD00E2 */   lbu   $t5, 0xe2($sp)
.L0045AD00:
/* 0045AD00 8F9984EC */  lw    $t9, %call16(parseafa)($gp)
/* 0045AD04 00000000 */  nop   
/* 0045AD08 0320F809 */  jalr  $t9
/* 0045AD0C 00000000 */   nop   
/* 0045AD10 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045AD14 10000099 */  b     .L0045AF7C
/* 0045AD18 93AD00E2 */   lbu   $t5, 0xe2($sp)
.L0045AD1C:
/* 0045AD1C 8F9984FC */  lw    $t9, %call16(parseafr)($gp)
/* 0045AD20 00000000 */  nop   
/* 0045AD24 0320F809 */  jalr  $t9
/* 0045AD28 00000000 */   nop   
/* 0045AD2C 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045AD30 10000092 */  b     .L0045AF7C
/* 0045AD34 93AD00E2 */   lbu   $t5, 0xe2($sp)
.L0045AD38:
/* 0045AD38 8F9984E8 */  lw    $t9, %call16(parseafrr)($gp)
/* 0045AD3C 00000000 */  nop   
/* 0045AD40 0320F809 */  jalr  $t9
/* 0045AD44 00000000 */   nop   
/* 0045AD48 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045AD4C 1000008B */  b     .L0045AF7C
/* 0045AD50 93AD00E2 */   lbu   $t5, 0xe2($sp)
.L0045AD54:
/* 0045AD54 8F998648 */  lw    $t9, %call16(parseafrrr)($gp)
/* 0045AD58 00000000 */  nop   
/* 0045AD5C 0320F809 */  jalr  $t9
/* 0045AD60 00000000 */   nop   
/* 0045AD64 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045AD68 10000084 */  b     .L0045AF7C
/* 0045AD6C 93AD00E2 */   lbu   $t5, 0xe2($sp)
.L0045AD70:
/* 0045AD70 8F998624 */  lw    $t9, %call16(parseafra)($gp)
/* 0045AD74 00000000 */  nop   
/* 0045AD78 0320F809 */  jalr  $t9
/* 0045AD7C 00000000 */   nop   
/* 0045AD80 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045AD84 1000007D */  b     .L0045AF7C
/* 0045AD88 93AD00E2 */   lbu   $t5, 0xe2($sp)
.L0045AD8C:
/* 0045AD8C 8F9984E0 */  lw    $t9, %call16(parseafri)($gp)
/* 0045AD90 00000000 */  nop   
/* 0045AD94 0320F809 */  jalr  $t9
/* 0045AD98 00000000 */   nop   
/* 0045AD9C 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045ADA0 10000076 */  b     .L0045AF7C
/* 0045ADA4 93AD00E2 */   lbu   $t5, 0xe2($sp)
.L0045ADA8:
/* 0045ADA8 8F998628 */  lw    $t9, %call16(parseafri_fp)($gp)
/* 0045ADAC 00000000 */  nop   
/* 0045ADB0 0320F809 */  jalr  $t9
/* 0045ADB4 00000000 */   nop   
/* 0045ADB8 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045ADBC 1000006F */  b     .L0045AF7C
/* 0045ADC0 93AD00E2 */   lbu   $t5, 0xe2($sp)
.L0045ADC4:
/* 0045ADC4 8F9984F4 */  lw    $t9, %call16(parseafl)($gp)
/* 0045ADC8 00000000 */  nop   
/* 0045ADCC 0320F809 */  jalr  $t9
/* 0045ADD0 00000000 */   nop   
/* 0045ADD4 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045ADD8 10000068 */  b     .L0045AF7C
/* 0045ADDC 93AD00E2 */   lbu   $t5, 0xe2($sp)
.L0045ADE0:
/* 0045ADE0 8F9984F0 */  lw    $t9, %call16(parseafrl)($gp)
/* 0045ADE4 00000000 */  nop   
/* 0045ADE8 0320F809 */  jalr  $t9
/* 0045ADEC 00000000 */   nop   
/* 0045ADF0 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045ADF4 10000061 */  b     .L0045AF7C
/* 0045ADF8 93AD00E2 */   lbu   $t5, 0xe2($sp)
.L0045ADFC:
/* 0045ADFC 8F9984E4 */  lw    $t9, %call16(parseafrrl)($gp)
/* 0045AE00 00002825 */  move  $a1, $zero
/* 0045AE04 0320F809 */  jalr  $t9
/* 0045AE08 00000000 */   nop   
/* 0045AE0C 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045AE10 1000005A */  b     .L0045AF7C
/* 0045AE14 93AD00E2 */   lbu   $t5, 0xe2($sp)
.L0045AE18:
/* 0045AE18 8F9984F8 */  lw    $t9, %call16(parseaforrr)($gp)
/* 0045AE1C 00000000 */  nop   
/* 0045AE20 0320F809 */  jalr  $t9
/* 0045AE24 00000000 */   nop   
/* 0045AE28 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045AE2C 10000053 */  b     .L0045AF7C
/* 0045AE30 93AD00E2 */   lbu   $t5, 0xe2($sp)
.L0045AE34:
/* 0045AE34 8F998578 */  lw    $t9, %call16(parse_dli_dla)($gp)
/* 0045AE38 00000000 */  nop   
/* 0045AE3C 0320F809 */  jalr  $t9
/* 0045AE40 00000000 */   nop   
/* 0045AE44 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045AE48 1000004C */  b     .L0045AF7C
/* 0045AE4C 93AD00E2 */   lbu   $t5, 0xe2($sp)
.L0045AE50:
/* 0045AE50 8F998500 */  lw    $t9, %call16(parseafrrrr)($gp)
/* 0045AE54 00000000 */  nop   
/* 0045AE58 0320F809 */  jalr  $t9
/* 0045AE5C 00000000 */   nop   
/* 0045AE60 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045AE64 10000045 */  b     .L0045AF7C
/* 0045AE68 93AD00E2 */   lbu   $t5, 0xe2($sp)
.L0045AE6C:
/* 0045AE6C 8F898070 */  lw    $t1, %got(RO_1001BAA0)($gp)
/* 0045AE70 03A07025 */  move  $t6, $sp
/* 0045AE74 2529BAA0 */  addiu $t1, %lo(RO_1001BAA0) # addiu $t1, $t1, -0x4560
/* 0045AE78 252F0048 */  addiu $t7, $t1, 0x48
.L0045AE7C:
/* 0045AE7C 89210000 */  lwl   $at, ($t1)
/* 0045AE80 99210003 */  lwr   $at, 3($t1)
/* 0045AE84 2529000C */  addiu $t1, $t1, 0xc
/* 0045AE88 A9C10000 */  swl   $at, ($t6)
/* 0045AE8C B9C10003 */  swr   $at, 3($t6)
/* 0045AE90 8921FFF8 */  lwl   $at, -8($t1)
/* 0045AE94 9921FFFB */  lwr   $at, -5($t1)
/* 0045AE98 25CE000C */  addiu $t6, $t6, 0xc
/* 0045AE9C A9C1FFF8 */  swl   $at, -8($t6)
/* 0045AEA0 B9C1FFFB */  swr   $at, -5($t6)
/* 0045AEA4 8921FFFC */  lwl   $at, -4($t1)
/* 0045AEA8 9921FFFF */  lwr   $at, -1($t1)
/* 0045AEAC 00000000 */  nop   
/* 0045AEB0 A9C1FFFC */  swl   $at, -4($t6)
/* 0045AEB4 152FFFF1 */  bne   $t1, $t7, .L0045AE7C
/* 0045AEB8 B9C1FFFF */   swr   $at, -1($t6)
/* 0045AEBC 89210000 */  lwl   $at, ($t1)
/* 0045AEC0 99210003 */  lwr   $at, 3($t1)
/* 0045AEC4 8F998070 */  lw    $t9, %got(RO_1001BA50)($gp)
/* 0045AEC8 A9C10000 */  swl   $at, ($t6)
/* 0045AECC B9C10003 */  swr   $at, 3($t6)
/* 0045AED0 892F0004 */  lwl   $t7, 4($t1)
/* 0045AED4 992F0007 */  lwr   $t7, 7($t1)
/* 0045AED8 2739BA50 */  addiu $t9, %lo(RO_1001BA50) # addiu $t9, $t9, -0x45b0
/* 0045AEDC A9CF0004 */  swl   $t7, 4($t6)
/* 0045AEE0 27380048 */  addiu $t8, $t9, 0x48
/* 0045AEE4 03A04025 */  move  $t0, $sp
/* 0045AEE8 B9CF0007 */  swr   $t7, 7($t6)
.L0045AEEC:
/* 0045AEEC 8B210000 */  lwl   $at, ($t9)
/* 0045AEF0 9B210003 */  lwr   $at, 3($t9)
/* 0045AEF4 2739000C */  addiu $t9, $t9, 0xc
/* 0045AEF8 A9010050 */  swl   $at, 0x50($t0)
/* 0045AEFC B9010053 */  swr   $at, 0x53($t0)
/* 0045AF00 8B21FFF8 */  lwl   $at, -8($t9)
/* 0045AF04 9B21FFFB */  lwr   $at, -5($t9)
/* 0045AF08 2508000C */  addiu $t0, $t0, 0xc
/* 0045AF0C A9010048 */  swl   $at, 0x48($t0)
/* 0045AF10 B901004B */  swr   $at, 0x4b($t0)
/* 0045AF14 8B21FFFC */  lwl   $at, -4($t9)
/* 0045AF18 9B21FFFF */  lwr   $at, -1($t9)
/* 0045AF1C 00000000 */  nop   
/* 0045AF20 A901004C */  swl   $at, 0x4c($t0)
/* 0045AF24 1738FFF1 */  bne   $t9, $t8, .L0045AEEC
/* 0045AF28 B901004F */   swr   $at, 0x4f($t0)
/* 0045AF2C 8B210000 */  lwl   $at, ($t9)
/* 0045AF30 9B210003 */  lwr   $at, 3($t9)
/* 0045AF34 240C09EA */  li    $t4, 2538
/* 0045AF38 A9010050 */  swl   $at, 0x50($t0)
/* 0045AF3C B9010053 */  swr   $at, 0x53($t0)
/* 0045AF40 8B380004 */  lwl   $t8, 4($t9)
/* 0045AF44 9B380007 */  lwr   $t8, 7($t9)
/* 0045AF48 00000000 */  nop   
/* 0045AF4C A9180054 */  swl   $t8, 0x54($t0)
/* 0045AF50 B9180057 */  swr   $t8, 0x57($t0)
/* 0045AF54 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0045AF58 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045AF5C 8FA60008 */  lw    $a2, 8($sp)
/* 0045AF60 8FA50004 */  lw    $a1, 4($sp)
/* 0045AF64 8FA40000 */  lw    $a0, ($sp)
/* 0045AF68 0320F809 */  jalr  $t9
/* 0045AF6C AFAC00A0 */   sw    $t4, 0xa0($sp)
/* 0045AF70 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045AF74 00000000 */  nop   
/* 0045AF78 93AD00E2 */  lbu   $t5, 0xe2($sp)
.L0045AF7C:
/* 0045AF7C 00000000 */  nop   
/* 0045AF80 11A0003A */  beqz  $t5, .L0045B06C
/* 0045AF84 00000000 */   nop   
/* 0045AF88 8F818C8C */  lw     $at, %got(endofbasicb)($gp)
/* 0045AF8C 8F8A8B40 */  lw     $t2, %got(pinstruction)($gp)
/* 0045AF90 A0310000 */  sb    $s1, ($at)
/* 0045AF94 8E420000 */  lw    $v0, ($s2)
/* 0045AF98 8D4A0000 */  lw    $t2, ($t2)
/* 0045AF9C 00027880 */  sll   $t7, $v0, 2
/* 0045AFA0 01E27821 */  addu  $t7, $t7, $v0
/* 0045AFA4 000F78C0 */  sll   $t7, $t7, 3
/* 0045AFA8 014F4821 */  addu  $t1, $t2, $t7
/* 0045AFAC A1200022 */  sb    $zero, 0x22($t1)
/* 0045AFB0 8FAE00F8 */  lw    $t6, 0xf8($sp)
/* 0045AFB4 00000000 */  nop   
/* 0045AFB8 25CB0001 */  addiu $t3, $t6, 1
/* 0045AFBC 1162005E */  beq   $t3, $v0, .L0045B138
/* 0045AFC0 00000000 */   nop   
/* 0045AFC4 8F988070 */  lw    $t8, %got(RO_1001BA00)($gp)
/* 0045AFC8 03A06025 */  move  $t4, $sp
/* 0045AFCC 2718BA00 */  addiu $t8, %lo(RO_1001BA00) # addiu $t8, $t8, -0x4600
/* 0045AFD0 27080048 */  addiu $t0, $t8, 0x48
.L0045AFD4:
/* 0045AFD4 8B010000 */  lwl   $at, ($t8)
/* 0045AFD8 9B010003 */  lwr   $at, 3($t8)
/* 0045AFDC 2718000C */  addiu $t8, $t8, 0xc
/* 0045AFE0 A9810000 */  swl   $at, ($t4)
/* 0045AFE4 B9810003 */  swr   $at, 3($t4)
/* 0045AFE8 8B01FFF8 */  lwl   $at, -8($t8)
/* 0045AFEC 9B01FFFB */  lwr   $at, -5($t8)
/* 0045AFF0 258C000C */  addiu $t4, $t4, 0xc
/* 0045AFF4 A981FFF8 */  swl   $at, -8($t4)
/* 0045AFF8 B981FFFB */  swr   $at, -5($t4)
/* 0045AFFC 8B01FFFC */  lwl   $at, -4($t8)
/* 0045B000 9B01FFFF */  lwr   $at, -1($t8)
/* 0045B004 00000000 */  nop   
/* 0045B008 A981FFFC */  swl   $at, -4($t4)
/* 0045B00C 1708FFF1 */  bne   $t8, $t0, .L0045AFD4
/* 0045B010 B981FFFF */   swr   $at, -1($t4)
/* 0045B014 8B010000 */  lwl   $at, ($t8)
/* 0045B018 9B010003 */  lwr   $at, 3($t8)
/* 0045B01C 240F0002 */  li    $t7, 2
/* 0045B020 A9810000 */  swl   $at, ($t4)
/* 0045B024 B9810003 */  swr   $at, 3($t4)
/* 0045B028 8B080004 */  lwl   $t0, 4($t8)
/* 0045B02C 9B080007 */  lwr   $t0, 7($t8)
/* 0045B030 00000000 */  nop   
/* 0045B034 A9880004 */  swl   $t0, 4($t4)
/* 0045B038 B9880007 */  swr   $t0, 7($t4)
/* 0045B03C 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0045B040 8E610000 */  lw    $at, ($s3)
/* 0045B044 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045B048 8FA60008 */  lw    $a2, 8($sp)
/* 0045B04C 8FA50004 */  lw    $a1, 4($sp)
/* 0045B050 8FA40000 */  lw    $a0, ($sp)
/* 0045B054 AFAF0054 */  sw    $t7, 0x54($sp)
/* 0045B058 0320F809 */  jalr  $t9
/* 0045B05C AFA10050 */   sw    $at, 0x50($sp)
/* 0045B060 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045B064 10000034 */  b     .L0045B138
/* 0045B068 00000000 */   nop   
.L0045B06C:
/* 0045B06C 8F898C88 */  lw     $t1, %got(macroflag)($gp)
/* 0045B070 8FAE00F8 */  lw    $t6, 0xf8($sp)
/* 0045B074 91290000 */  lbu   $t1, ($t1)
/* 0045B078 00000000 */  nop   
/* 0045B07C 1520002E */  bnez  $t1, .L0045B138
/* 0045B080 00000000 */   nop   
/* 0045B084 8E590000 */  lw    $t9, ($s2)
/* 0045B088 25CB0001 */  addiu $t3, $t6, 1
/* 0045B08C 1179002A */  beq   $t3, $t9, .L0045B138
/* 0045B090 00000000 */   nop   
/* 0045B094 8F888070 */  lw    $t0, %got(RO_1001B9B0)($gp)
/* 0045B098 03A06825 */  move  $t5, $sp
/* 0045B09C 2508B9B0 */  addiu $t0, %lo(RO_1001B9B0) # addiu $t0, $t0, -0x4650
/* 0045B0A0 250C0048 */  addiu $t4, $t0, 0x48
.L0045B0A4:
/* 0045B0A4 89010000 */  lwl   $at, ($t0)
/* 0045B0A8 99010003 */  lwr   $at, 3($t0)
/* 0045B0AC 2508000C */  addiu $t0, $t0, 0xc
/* 0045B0B0 A9A10000 */  swl   $at, ($t5)
/* 0045B0B4 B9A10003 */  swr   $at, 3($t5)
/* 0045B0B8 8901FFF8 */  lwl   $at, -8($t0)
/* 0045B0BC 9901FFFB */  lwr   $at, -5($t0)
/* 0045B0C0 25AD000C */  addiu $t5, $t5, 0xc
/* 0045B0C4 A9A1FFF8 */  swl   $at, -8($t5)
/* 0045B0C8 B9A1FFFB */  swr   $at, -5($t5)
/* 0045B0CC 8901FFFC */  lwl   $at, -4($t0)
/* 0045B0D0 9901FFFF */  lwr   $at, -1($t0)
/* 0045B0D4 00000000 */  nop   
/* 0045B0D8 A9A1FFFC */  swl   $at, -4($t5)
/* 0045B0DC 150CFFF1 */  bne   $t0, $t4, .L0045B0A4
/* 0045B0E0 B9A1FFFF */   swr   $at, -1($t5)
/* 0045B0E4 89010000 */  lwl   $at, ($t0)
/* 0045B0E8 99010003 */  lwr   $at, 3($t0)
/* 0045B0EC 24090002 */  li    $t1, 2
/* 0045B0F0 A9A10000 */  swl   $at, ($t5)
/* 0045B0F4 B9A10003 */  swr   $at, 3($t5)
/* 0045B0F8 890C0004 */  lwl   $t4, 4($t0)
/* 0045B0FC 990C0007 */  lwr   $t4, 7($t0)
/* 0045B100 00000000 */  nop   
/* 0045B104 A9AC0004 */  swl   $t4, 4($t5)
/* 0045B108 B9AC0007 */  swr   $t4, 7($t5)
/* 0045B10C 8F998668 */  lw    $t9, %call16(posterror)($gp)
/* 0045B110 8E610000 */  lw    $at, ($s3)
/* 0045B114 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045B118 8FA60008 */  lw    $a2, 8($sp)
/* 0045B11C 8FA50004 */  lw    $a1, 4($sp)
/* 0045B120 8FA40000 */  lw    $a0, ($sp)
/* 0045B124 AFA90054 */  sw    $t1, 0x54($sp)
/* 0045B128 0320F809 */  jalr  $t9
/* 0045B12C AFA10050 */   sw    $at, 0x50($sp)
/* 0045B130 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045B134 00000000 */  nop   
.L0045B138:
/* 0045B138 8F8E8CB0 */  lw     $t6, %got(branchpending)($gp)
/* 0045B13C 00000000 */  nop   
/* 0045B140 91CE0000 */  lbu   $t6, ($t6)
/* 0045B144 00000000 */  nop   
/* 0045B148 11C00028 */  beqz  $t6, .L0045B1EC
/* 0045B14C 00000000 */   nop   
/* 0045B150 8F8B8B8C */  lw     $t3, %got(reorderflag)($gp)
/* 0045B154 00000000 */  nop   
/* 0045B158 916B0000 */  lbu   $t3, ($t3)
/* 0045B15C 00000000 */  nop   
/* 0045B160 11600022 */  beqz  $t3, .L0045B1EC
/* 0045B164 00000000 */   nop   
/* 0045B168 8F998448 */  lw    $t9, %call16(emitnop)($gp)
/* 0045B16C 24040001 */  li    $a0, 1
/* 0045B170 0320F809 */  jalr  $t9
/* 0045B174 00000000 */   nop   
/* 0045B178 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045B17C 00000000 */  nop   
/* 0045B180 8F818C8C */  lw     $at, %got(endofbasicb)($gp)
/* 0045B184 8F998B40 */  lw     $t9, %got(pinstruction)($gp)
/* 0045B188 A0310000 */  sb    $s1, ($at)
/* 0045B18C 8F818CB0 */  lw     $at, %got(branchpending)($gp)
/* 0045B190 8F390000 */  lw    $t9, ($t9)
/* 0045B194 A0200000 */  sb    $zero, ($at)
/* 0045B198 8E580000 */  lw    $t8, ($s2)
/* 0045B19C 00000000 */  nop   
/* 0045B1A0 00186080 */  sll   $t4, $t8, 2
/* 0045B1A4 01986021 */  addu  $t4, $t4, $t8
/* 0045B1A8 000C60C0 */  sll   $t4, $t4, 3
/* 0045B1AC 032C1021 */  addu  $v0, $t9, $t4
/* 0045B1B0 9448FFFC */  lhu   $t0, -4($v0)
/* 0045B1B4 00000000 */  nop   
/* 0045B1B8 2D0D0160 */  sltiu $t5, $t0, 0x160
/* 0045B1BC 11A00008 */  beqz  $t5, .L0045B1E0
/* 0045B1C0 00085143 */   sra   $t2, $t0, 5
/* 0045B1C4 8F898D2C */  lw     $t1, %got(br_likely_ops)($gp)
/* 0045B1C8 000A7880 */  sll   $t7, $t2, 2
/* 0045B1CC 01E97021 */  addu  $t6, $t7, $t1
/* 0045B1D0 8DCB0000 */  lw    $t3, ($t6)
/* 0045B1D4 00000000 */  nop   
/* 0045B1D8 010BC004 */  sllv  $t8, $t3, $t0
/* 0045B1DC 2B0D0000 */  slti  $t5, $t8, 0
.L0045B1E0:
/* 0045B1E0 11A00002 */  beqz  $t5, .L0045B1EC
/* 0045B1E4 00000000 */   nop   
/* 0045B1E8 A0400022 */  sb    $zero, 0x22($v0)
.L0045B1EC:
/* 0045B1EC 8F8C8C1C */  lw     $t4, %got(liveset)($gp)
/* 0045B1F0 24010002 */  li    $at, 2
/* 0045B1F4 8D8C0000 */  lw    $t4, ($t4)
/* 0045B1F8 2404001D */  li    $a0, 29
/* 0045B1FC 1581000E */  bne   $t4, $at, .L0045B238
/* 0045B200 00003825 */   move  $a3, $zero
/* 0045B204 8F858C20 */  lw     $a1, %got(binlive)($gp)
/* 0045B208 8F868D94 */  lw     $a2, %got(fltlive)($gp)
/* 0045B20C 8F9982E4 */  lw    $t9, %call16(fill_pseudo)($gp)
/* 0045B210 8CA50000 */  lw    $a1, ($a1)
/* 0045B214 8CC60000 */  lw    $a2, ($a2)
/* 0045B218 AFA00010 */  sw    $zero, 0x10($sp)
/* 0045B21C 0320F809 */  jalr  $t9
/* 0045B220 AFA00014 */   sw    $zero, 0x14($sp)
/* 0045B224 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045B228 00000000 */  nop   
/* 0045B22C 8F818C1C */  lw     $at, %got(liveset)($gp)
/* 0045B230 00000000 */  nop   
/* 0045B234 AC200000 */  sw    $zero, ($at)
.L0045B238:
/* 0045B238 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045B23C 00000000 */  nop   
/* 0045B240 90630000 */  lbu   $v1, ($v1)
/* 0045B244 10000048 */  b     .L0045B368
/* 0045B248 00000000 */   nop   
.L0045B24C:
/* 0045B24C 8F8A8070 */  lw    $t2, %got(RO_1001B960)($gp)
/* 0045B250 03A07025 */  move  $t6, $sp
/* 0045B254 254AB960 */  addiu $t2, %lo(RO_1001B960) # addiu $t2, $t2, -0x46a0
/* 0045B258 25490048 */  addiu $t1, $t2, 0x48
.L0045B25C:
/* 0045B25C 89410000 */  lwl   $at, ($t2)
/* 0045B260 99410003 */  lwr   $at, 3($t2)
/* 0045B264 254A000C */  addiu $t2, $t2, 0xc
/* 0045B268 A9C10000 */  swl   $at, ($t6)
/* 0045B26C B9C10003 */  swr   $at, 3($t6)
/* 0045B270 8941FFF8 */  lwl   $at, -8($t2)
/* 0045B274 9941FFFB */  lwr   $at, -5($t2)
/* 0045B278 25CE000C */  addiu $t6, $t6, 0xc
/* 0045B27C A9C1FFF8 */  swl   $at, -8($t6)
/* 0045B280 B9C1FFFB */  swr   $at, -5($t6)
/* 0045B284 8941FFFC */  lwl   $at, -4($t2)
/* 0045B288 9941FFFF */  lwr   $at, -1($t2)
/* 0045B28C 00000000 */  nop   
/* 0045B290 A9C1FFFC */  swl   $at, -4($t6)
/* 0045B294 1549FFF1 */  bne   $t2, $t1, .L0045B25C
/* 0045B298 B9C1FFFF */   swr   $at, -1($t6)
/* 0045B29C 89410000 */  lwl   $at, ($t2)
/* 0045B2A0 99410003 */  lwr   $at, 3($t2)
/* 0045B2A4 8F8B8070 */  lw    $t3, %got(RO_1001B910)($gp)
/* 0045B2A8 A9C10000 */  swl   $at, ($t6)
/* 0045B2AC B9C10003 */  swr   $at, 3($t6)
/* 0045B2B0 89490004 */  lwl   $t1, 4($t2)
/* 0045B2B4 99490007 */  lwr   $t1, 7($t2)
/* 0045B2B8 256BB910 */  addiu $t3, %lo(RO_1001B910) # addiu $t3, $t3, -0x46f0
/* 0045B2BC A9C90004 */  swl   $t1, 4($t6)
/* 0045B2C0 25780048 */  addiu $t8, $t3, 0x48
/* 0045B2C4 03A0C825 */  move  $t9, $sp
/* 0045B2C8 B9C90007 */  swr   $t1, 7($t6)
.L0045B2CC:
/* 0045B2CC 89610000 */  lwl   $at, ($t3)
/* 0045B2D0 99610003 */  lwr   $at, 3($t3)
/* 0045B2D4 256B000C */  addiu $t3, $t3, 0xc
/* 0045B2D8 AB210050 */  swl   $at, 0x50($t9)
/* 0045B2DC BB210053 */  swr   $at, 0x53($t9)
/* 0045B2E0 8961FFF8 */  lwl   $at, -8($t3)
/* 0045B2E4 9961FFFB */  lwr   $at, -5($t3)
/* 0045B2E8 2739000C */  addiu $t9, $t9, 0xc
/* 0045B2EC AB210048 */  swl   $at, 0x48($t9)
/* 0045B2F0 BB21004B */  swr   $at, 0x4b($t9)
/* 0045B2F4 8961FFFC */  lwl   $at, -4($t3)
/* 0045B2F8 9961FFFF */  lwr   $at, -1($t3)
/* 0045B2FC 00000000 */  nop   
/* 0045B300 AB21004C */  swl   $at, 0x4c($t9)
/* 0045B304 1578FFF1 */  bne   $t3, $t8, .L0045B2CC
/* 0045B308 BB21004F */   swr   $at, 0x4f($t9)
/* 0045B30C 89610000 */  lwl   $at, ($t3)
/* 0045B310 99610003 */  lwr   $at, 3($t3)
/* 0045B314 240D0A10 */  li    $t5, 2576
/* 0045B318 AB210050 */  swl   $at, 0x50($t9)
/* 0045B31C BB210053 */  swr   $at, 0x53($t9)
/* 0045B320 89780004 */  lwl   $t8, 4($t3)
/* 0045B324 99780007 */  lwr   $t8, 7($t3)
/* 0045B328 00000000 */  nop   
/* 0045B32C AB380054 */  swl   $t8, 0x54($t9)
/* 0045B330 BB380057 */  swr   $t8, 0x57($t9)
/* 0045B334 8F99866C */  lw    $t9, %call16(p_assertion_failed)($gp)
/* 0045B338 8FA7000C */  lw    $a3, 0xc($sp)
/* 0045B33C 8FA60008 */  lw    $a2, 8($sp)
/* 0045B340 8FA50004 */  lw    $a1, 4($sp)
/* 0045B344 8FA40000 */  lw    $a0, ($sp)
/* 0045B348 0320F809 */  jalr  $t9
/* 0045B34C AFAD00A0 */   sw    $t5, 0xa0($sp)
/* 0045B350 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045B354 00000000 */  nop   
/* 0045B358 8F838BE8 */  lw     $v1, %got(currsegment)($gp)
/* 0045B35C 00000000 */  nop   
/* 0045B360 90630000 */  lbu   $v1, ($v1)
/* 0045B364 00000000 */  nop   
.L0045B368:
/* 0045B368 12230003 */  beq   $s1, $v1, .L0045B378
/* 0045B36C 24010002 */   li    $at, 2
/* 0045B370 14610018 */  bne   $v1, $at, .L0045B3D4
/* 0045B374 93AE00E3 */   lbu   $t6, 0xe3($sp)
.L0045B378:
/* 0045B378 920C0005 */  lbu   $t4, 5($s0)
/* 0045B37C 00000000 */  nop   
/* 0045B380 318F003F */  andi  $t7, $t4, 0x3f
/* 0045B384 2DE90040 */  sltiu $t1, $t7, 0x40
/* 0045B388 11200009 */  beqz  $t1, .L0045B3B0
/* 0045B38C 000F5143 */   sra   $t2, $t7, 5
/* 0045B390 8F888080 */  lw    $t0, %got(D_10004C0C)($gp)
/* 0045B394 000A7080 */  sll   $t6, $t2, 2
/* 0045B398 25084C0C */  addiu $t0, %lo(D_10004C0C) # addiu $t0, $t0, 0x4c0c
/* 0045B39C 010EC021 */  addu  $t8, $t0, $t6
/* 0045B3A0 8F0B0000 */  lw    $t3, ($t8)
/* 0045B3A4 00000000 */  nop   
/* 0045B3A8 01EBC804 */  sllv  $t9, $t3, $t7
/* 0045B3AC 2B290000 */  slti  $t1, $t9, 0
.L0045B3B0:
/* 0045B3B0 11200007 */  beqz  $t1, .L0045B3D0
/* 0045B3B4 00036080 */   sll   $t4, $v1, 2
/* 0045B3B8 8F8A8D8C */  lw     $t2, %got(prev_sdata)($gp)
/* 0045B3BC 01836021 */  addu  $t4, $t4, $v1
/* 0045B3C0 000C6080 */  sll   $t4, $t4, 2
/* 0045B3C4 254AFFEC */  addiu $t2, $t2, -0x14
/* 0045B3C8 018A4021 */  addu  $t0, $t4, $t2
/* 0045B3CC A1000004 */  sb    $zero, 4($t0)
.L0045B3D0:
/* 0045B3D0 93AE00E3 */  lbu   $t6, 0xe3($sp)
.L0045B3D4:
/* 0045B3D4 00000000 */  nop   
/* 0045B3D8 15C00007 */  bnez  $t6, .L0045B3F8
/* 0045B3DC 00000000 */   nop   
/* 0045B3E0 8F9985E8 */  lw    $t9, %call16(get_binasm)($gp)
/* 0045B3E4 8F848D64 */  lw     $a0, %got(binasmfyle)($gp)
/* 0045B3E8 0320F809 */  jalr  $t9
/* 0045B3EC 00000000 */   nop   
/* 0045B3F0 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045B3F4 00000000 */  nop   
.L0045B3F8:
/* 0045B3F8 8F8B8BFC */  lw     $t3, %got(num_pseudo)($gp)
/* 0045B3FC 8E580000 */  lw    $t8, ($s2)
/* 0045B400 8D6B0000 */  lw    $t3, ($t3)
/* 0045B404 00000000 */  nop   
/* 0045B408 256F0118 */  addiu $t7, $t3, 0x118
/* 0045B40C 01F8082A */  slt   $at, $t7, $t8
/* 0045B410 10200004 */  beqz  $at, .L0045B424
/* 0045B414 00000000 */   nop   
/* 0045B418 8F818C8C */  lw     $at, %got(endofbasicb)($gp)
/* 0045B41C 00000000 */  nop   
/* 0045B420 A0310000 */  sb    $s1, ($at)
.L0045B424:
/* 0045B424 8F998C8C */  lw     $t9, %got(endofbasicb)($gp)
/* 0045B428 00000000 */  nop   
/* 0045B42C 93390000 */  lbu   $t9, ($t9)
/* 0045B430 00000000 */  nop   
/* 0045B434 1720000A */  bnez  $t9, .L0045B460
/* 0045B438 8FBF00C4 */   lw    $ra, 0xc4($sp)
/* 0045B43C 8F848C6C */  lw     $a0, %got(binasm_file)($gp)
/* 0045B440 8F9986AC */  lw    $t9, %call16(eof)($gp)
/* 0045B444 8C840000 */  lw    $a0, ($a0)
/* 0045B448 0320F809 */  jalr  $t9
/* 0045B44C 00000000 */   nop   
/* 0045B450 8FBC00C0 */  lw    $gp, 0xc0($sp)
/* 0045B454 1040F8A1 */  beqz  $v0, .L004596DC
/* 0045B458 00000000 */   nop   
.L0045B45C:
/* 0045B45C 8FBF00C4 */  lw    $ra, 0xc4($sp)
.L0045B460:
/* 0045B460 8FB000B0 */  lw    $s0, 0xb0($sp)
/* 0045B464 8FB100B4 */  lw    $s1, 0xb4($sp)
/* 0045B468 8FB200B8 */  lw    $s2, 0xb8($sp)
/* 0045B46C 8FB300BC */  lw    $s3, 0xbc($sp)
/* 0045B470 03E00008 */  jr    $ra
/* 0045B474 27BD0100 */   addiu $sp, $sp, 0x100
    .type parsestmt, @function
    .size parsestmt, .-parsestmt
    .end parsestmt
)"");
