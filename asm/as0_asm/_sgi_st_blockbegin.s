/* Generated by spimdisasm 1.10.3 */

glabel _sgi_st_blockbegin # 181
# _gp_disp: 0xFBFB884
.set noreorder; .cpload $t9; # .set reorder
/* 015248 00415248 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 01524C 0041524C 24020001 */  addiu       $v0, $zero, 0x1
/* 015250 00415250 AFBF0024 */  sw          $ra, 0x24($sp)
/* 015254 00415254 AFBC0020 */  sw          $gp, 0x20($sp)
/* 015258 00415258 AFA60040 */  sw          $a2, 0x40($sp)
/* 01525C 0041525C 14C2000A */  bne         $a2, $v0, .L00415288
/* 015260 00415260 AFA70044 */   sw         $a3, 0x44($sp)
/* 015264 00415264 8F8F8064 */  lw          $t7, %got(B_1000A824)($gp)
/* 015268 00415268 3C08000F */  lui         $t0, (0xFFFFF >> 16)
/* 01526C 0041526C 8DEFA824 */  lw          $t7, %lo(B_1000A824)($t7)
/* 015270 00415270 3508FFFF */  ori         $t0, $t0, (0xFFFFF & 0xFFFF)
/* 015274 00415274 11E00004 */  beqz        $t7, .L00415288
/* 015278 00415278 00000000 */   nop
/* 01527C 0041527C 8F818060 */  lw          $at, %got(D_10001384)($gp)
/* 015280 00415280 10000008 */  b           .L004152A4
/* 015284 00415284 AC221384 */   sw         $v0, %lo(D_10001384)($at)
.L00415288:
/* 015288 00415288 8F9981F0 */  lw          $t9, %call16(st_symadd)($gp)
/* 01528C 0041528C 8FA60044 */  lw          $a2, 0x44($sp)
/* 015290 00415290 8FA70040 */  lw          $a3, 0x40($sp)
/* 015294 00415294 0320F809 */  jalr        $t9
/* 015298 00415298 AFA00010 */   sw         $zero, 0x10($sp)
/* 01529C 0041529C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0152A0 004152A0 00404025 */  move        $t0, $v0
.L004152A4:
/* 0152A4 004152A4 8F998248 */  lw          $t9, %call16(st_currentifd)($gp)
/* 0152A8 004152A8 AFA80034 */  sw          $t0, 0x34($sp)
/* 0152AC 004152AC 0320F809 */  jalr        $t9
/* 0152B0 004152B0 00000000 */   nop
/* 0152B4 004152B4 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0152B8 004152B8 8FA80034 */  lw          $t0, 0x34($sp)
/* 0152BC 004152BC 8F858064 */  lw          $a1, %got(B_1000A828)($gp)
/* 0152C0 004152C0 8F898064 */  lw          $t1, %got(B_1000A824)($gp)
/* 0152C4 004152C4 24A5A828 */  addiu       $a1, $a1, %lo(B_1000A828)
/* 0152C8 004152C8 2529A824 */  addiu       $t1, $t1, %lo(B_1000A824)
/* 0152CC 004152CC 8D230000 */  lw          $v1, 0x0($t1)
/* 0152D0 004152D0 8CB80000 */  lw          $t8, 0x0($a1)
/* 0152D4 004152D4 AFA2002C */  sw          $v0, 0x2C($sp)
/* 0152D8 004152D8 0078082A */  slt         $at, $v1, $t8
/* 0152DC 004152DC 14200010 */  bnez        $at, .L00415320
/* 0152E0 004152E0 AFA80030 */   sw         $t0, 0x30($sp)
/* 0152E4 004152E4 8F848064 */  lw          $a0, %got(B_1000A820)($gp)
/* 0152E8 004152E8 8F998268 */  lw          $t9, %call16(st_malloc)($gp)
/* 0152EC 004152EC 8C84A820 */  lw          $a0, %lo(B_1000A820)($a0)
/* 0152F0 004152F0 24060008 */  addiu       $a2, $zero, 0x8
/* 0152F4 004152F4 24070019 */  addiu       $a3, $zero, 0x19
/* 0152F8 004152F8 0320F809 */  jalr        $t9
/* 0152FC 004152FC AFA80034 */   sw         $t0, 0x34($sp)
/* 015300 00415300 8FBC0020 */  lw          $gp, 0x20($sp)
/* 015304 00415304 8FA80034 */  lw          $t0, 0x34($sp)
/* 015308 00415308 8F838064 */  lw          $v1, %got(B_1000A824)($gp)
/* 01530C 0041530C 8F818064 */  lw          $at, %got(B_1000A820)($gp)
/* 015310 00415310 8F898064 */  lw          $t1, %got(B_1000A824)($gp)
/* 015314 00415314 8C63A824 */  lw          $v1, %lo(B_1000A824)($v1)
/* 015318 00415318 AC22A820 */  sw          $v0, %lo(B_1000A820)($at)
/* 01531C 0041531C 2529A824 */  addiu       $t1, $t1, %lo(B_1000A824)
.L00415320:
/* 015320 00415320 8F998064 */  lw          $t9, %got(B_1000A820)($gp)
/* 015324 00415324 27A2002C */  addiu       $v0, $sp, 0x2C
/* 015328 00415328 8F39A820 */  lw          $t9, %lo(B_1000A820)($t9)
/* 01532C 0041532C 8C410000 */  lw          $at, 0x0($v0)
/* 015330 00415330 000350C0 */  sll         $t2, $v1, 3
/* 015334 00415334 032A5821 */  addu        $t3, $t9, $t2
/* 015338 00415338 AD610000 */  sw          $at, 0x0($t3)
/* 01533C 0041533C 8C4E0004 */  lw          $t6, 0x4($v0)
/* 015340 00415340 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 015344 00415344 AD6E0004 */  sw          $t6, 0x4($t3)
/* 015348 00415348 8D2F0000 */  lw          $t7, 0x0($t1)
/* 01534C 0041534C 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 015350 00415350 25F80001 */  addiu       $t8, $t7, 0x1
/* 015354 00415354 15010003 */  bne         $t0, $at, .L00415364
/* 015358 00415358 AD380000 */   sw         $t8, 0x0($t1)
/* 01535C 0041535C 10000009 */  b           .L00415384
/* 015360 00415360 00001025 */   move       $v0, $zero
.L00415364:
/* 015364 00415364 8C440000 */  lw          $a0, 0x0($v0)
/* 015368 00415368 8F998278 */  lw          $t9, %call16(st_idn_dn)($gp)
/* 01536C 0041536C AFA40000 */  sw          $a0, 0x0($sp)
/* 015370 00415370 8C450004 */  lw          $a1, 0x4($v0)
/* 015374 00415374 0320F809 */  jalr        $t9
/* 015378 00415378 AFA50004 */   sw         $a1, 0x4($sp)
/* 01537C 0041537C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 015380 00415380 00000000 */  nop
.L00415384:
/* 015384 00415384 8FBF0024 */  lw          $ra, 0x24($sp)
/* 015388 00415388 27BD0038 */  addiu       $sp, $sp, 0x38
/* 01538C 0041538C 03E00008 */  jr          $ra
/* 015390 00415390 00000000 */   nop