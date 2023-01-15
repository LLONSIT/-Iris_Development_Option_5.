.section .rodata
glabel STR_10008610
/* 027610 10008610 */ .asciz "st_extstradd: you didn't initialize with cuinit or readst\n"
                      .balign 4

glabel STR_1000864C
/* 02764C 1000864C */ .asciz "st_extstradd: argument is nil\n"
                      .balign 4


.section .text
/* Generated by spimdisasm 1.10.3 */

glabel st_extstradd # 226
# _gp_disp: 0xFBF85D8
.set noreorder; .cpload $t9; # .set reorder
/* 0184F4 004184F4 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 0184F8 004184F8 AFB10018 */  sw          $s1, 0x18($sp)
/* 0184FC 004184FC 8F9183CC */  lw          $s1, %got(st_pchdr)($gp)
/* 018500 00418500 AFBF0024 */  sw          $ra, 0x24($sp)
/* 018504 00418504 8E2E0000 */  lw          $t6, 0x0($s1)
/* 018508 00418508 AFBC0020 */  sw          $gp, 0x20($sp)
/* 01850C 0041850C AFB2001C */  sw          $s2, 0x1C($sp)
/* 018510 00418510 AFB00014 */  sw          $s0, 0x14($sp)
/* 018514 00418514 15C00008 */  bnez        $t6, .L00418538
/* 018518 00418518 AFA40028 */   sw         $a0, 0x28($sp)
/* 01851C 0041851C 8F848054 */  lw          $a0, %got(STR_10008610)($gp)
/* 018520 00418520 8F9981B8 */  lw          $t9, %call16(st_internal)($gp)
/* 018524 00418524 24848610 */  addiu       $a0, $a0, %lo(STR_10008610)
/* 018528 00418528 0320F809 */  jalr        $t9
/* 01852C 0041852C 00000000 */   nop
/* 018530 00418530 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018534 00418534 00000000 */  nop
.L00418538:
/* 018538 00418538 8FAF0028 */  lw          $t7, 0x28($sp)
/* 01853C 0041853C 00000000 */  nop
/* 018540 00418540 15E00008 */  bnez        $t7, .L00418564
/* 018544 00418544 00000000 */   nop
/* 018548 00418548 8F848054 */  lw          $a0, %got(STR_1000864C)($gp)
/* 01854C 0041854C 8F9981B0 */  lw          $t9, %call16(st_error)($gp)
/* 018550 00418550 2484864C */  addiu       $a0, $a0, %lo(STR_1000864C)
/* 018554 00418554 0320F809 */  jalr        $t9
/* 018558 00418558 00000000 */   nop
/* 01855C 0041855C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 018560 00418560 00000000 */  nop
.L00418564:
/* 018564 00418564 8F9980F8 */  lw          $t9, %call16(strlen)($gp)
/* 018568 00418568 8FA40028 */  lw          $a0, 0x28($sp)
/* 01856C 0041856C 0320F809 */  jalr        $t9
/* 018570 00418570 00000000 */   nop
/* 018574 00418574 8E300000 */  lw          $s0, 0x0($s1)
/* 018578 00418578 8FBC0020 */  lw          $gp, 0x20($sp)
/* 01857C 0041857C 8E030028 */  lw          $v1, 0x28($s0)
/* 018580 00418580 8E18002C */  lw          $t8, 0x2C($s0)
/* 018584 00418584 0062C821 */  addu        $t9, $v1, $v0
/* 018588 00418588 0338082A */  slt         $at, $t9, $t8
/* 01858C 0041858C 14200012 */  bnez        $at, .L004185D8
/* 018590 00418590 24520001 */   addiu      $s2, $v0, 0x1
.L00418594:
/* 018594 00418594 8F998268 */  lw          $t9, %call16(st_malloc)($gp)
/* 018598 00418598 8E040024 */  lw          $a0, 0x24($s0)
/* 01859C 0041859C 2605002C */  addiu       $a1, $s0, 0x2C
/* 0185A0 004185A0 24060001 */  addiu       $a2, $zero, 0x1
/* 0185A4 004185A4 0320F809 */  jalr        $t9
/* 0185A8 004185A8 24070200 */   addiu      $a3, $zero, 0x200
/* 0185AC 004185AC 8E280000 */  lw          $t0, 0x0($s1)
/* 0185B0 004185B0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0185B4 004185B4 AD020024 */  sw          $v0, 0x24($t0)
/* 0185B8 004185B8 8E300000 */  lw          $s0, 0x0($s1)
/* 0185BC 004185BC 00000000 */  nop
/* 0185C0 004185C0 8E030028 */  lw          $v1, 0x28($s0)
/* 0185C4 004185C4 8E09002C */  lw          $t1, 0x2C($s0)
/* 0185C8 004185C8 00725021 */  addu        $t2, $v1, $s2
/* 0185CC 004185CC 012A082A */  slt         $at, $t1, $t2
/* 0185D0 004185D0 1420FFF0 */  bnez        $at, .L00418594
/* 0185D4 004185D4 00000000 */   nop
.L004185D8:
/* 0185D8 004185D8 8E0B0024 */  lw          $t3, 0x24($s0)
/* 0185DC 004185DC 8F998104 */  lw          $t9, %call16(strcpy)($gp)
/* 0185E0 004185E0 8FA50028 */  lw          $a1, 0x28($sp)
/* 0185E4 004185E4 0320F809 */  jalr        $t9
/* 0185E8 004185E8 01632021 */   addu       $a0, $t3, $v1
/* 0185EC 004185EC 8E300000 */  lw          $s0, 0x0($s1)
/* 0185F0 004185F0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 0185F4 004185F4 8E020028 */  lw          $v0, 0x28($s0)
/* 0185F8 004185F8 00000000 */  nop
/* 0185FC 004185FC 00526021 */  addu        $t4, $v0, $s2
/* 018600 00418600 AE0C0028 */  sw          $t4, 0x28($s0)
/* 018604 00418604 8FBF0024 */  lw          $ra, 0x24($sp)
/* 018608 00418608 8FB2001C */  lw          $s2, 0x1C($sp)
/* 01860C 0041860C 8FB10018 */  lw          $s1, 0x18($sp)
/* 018610 00418610 8FB00014 */  lw          $s0, 0x14($sp)
/* 018614 00418614 03E00008 */  jr          $ra
/* 018618 00418618 27BD0028 */   addiu      $sp, $sp, 0x28