/* Generated by spimdisasm 1.10.3 */

glabel func_0041244C # 127
# _gp_disp: 0xFBFE674
.set noreorder; .cpload $t9; # .set reorder
/* 012458 00412458 27BDFFC8 */  addiu       $sp, $sp, -0x38
/* 01245C 0041245C 8F998018 */  lw          $t9, %got(func_00411ECC)($gp)
/* 012460 00412460 AFBF0034 */  sw          $ra, 0x34($sp)
/* 012464 00412464 27391ECC */  addiu       $t9, $t9, %lo(func_00411ECC)
/* 012468 00412468 AFBC0030 */  sw          $gp, 0x30($sp)
/* 01246C 0041246C AFB5002C */  sw          $s5, 0x2C($sp)
/* 012470 00412470 AFB40028 */  sw          $s4, 0x28($sp)
/* 012474 00412474 AFB30024 */  sw          $s3, 0x24($sp)
/* 012478 00412478 AFB20020 */  sw          $s2, 0x20($sp)
/* 01247C 0041247C AFB1001C */  sw          $s1, 0x1C($sp)
/* 012480 00412480 0320F809 */  jalr        $t9
/* 012484 00412484 AFB00018 */   sw         $s0, 0x18($sp)
/* 012488 00412488 8FBC0030 */  lw          $gp, 0x30($sp)
/* 01248C 0041248C 2413002B */  addiu       $s3, $zero, 0x2B
/* 012490 00412490 8F958378 */  lw          $s5, %got(Tokench)($gp)
/* 012494 00412494 00409025 */  move        $s2, $v0
/* 012498 00412498 92A40000 */  lbu         $a0, 0x0($s5)
/* 01249C 0041249C 2414002D */  addiu       $s4, $zero, 0x2D
/* 0124A0 004124A0 12640003 */  beq         $s3, $a0, .L004124B0
/* 0124A4 004124A4 00801825 */   move       $v1, $a0
/* 0124A8 004124A8 1683001E */  bne         $s4, $v1, .L00412524
/* 0124AC 004124AC 8FBF0034 */   lw         $ra, 0x34($sp)
.L004124B0:
/* 0124B0 004124B0 8F99817C */  lw          $t9, %call16(nexttoken)($gp)
/* 0124B4 004124B4 2414002D */  addiu       $s4, $zero, 0x2D
/* 0124B8 004124B8 02408025 */  move        $s0, $s2
/* 0124BC 004124BC 0320F809 */  jalr        $t9
/* 0124C0 004124C0 309100FF */   andi       $s1, $a0, 0xFF
/* 0124C4 004124C4 8FBC0030 */  lw          $gp, 0x30($sp)
/* 0124C8 004124C8 00000000 */  nop
/* 0124CC 004124CC 8F998018 */  lw          $t9, %got(func_00411ECC)($gp)
/* 0124D0 004124D0 00000000 */  nop
/* 0124D4 004124D4 27391ECC */  addiu       $t9, $t9, %lo(func_00411ECC)
/* 0124D8 004124D8 0320F809 */  jalr        $t9
/* 0124DC 004124DC 00000000 */   nop
/* 0124E0 004124E0 8FBC0030 */  lw          $gp, 0x30($sp)
/* 0124E4 004124E4 12710005 */  beq         $s3, $s1, .L004124FC
/* 0124E8 004124E8 00000000 */   nop
/* 0124EC 004124EC 12340005 */  beq         $s1, $s4, .L00412504
/* 0124F0 004124F0 00000000 */   nop
/* 0124F4 004124F4 10000005 */  b           .L0041250C
/* 0124F8 004124F8 92A40000 */   lbu        $a0, 0x0($s5)
.L004124FC:
/* 0124FC 004124FC 10000002 */  b           .L00412508
/* 012500 00412500 02029021 */   addu       $s2, $s0, $v0
.L00412504:
/* 012504 00412504 02029023 */  subu        $s2, $s0, $v0
.L00412508:
/* 012508 00412508 92A40000 */  lbu         $a0, 0x0($s5)
.L0041250C:
/* 01250C 0041250C 00000000 */  nop
/* 012510 00412510 1264FFE7 */  beq         $s3, $a0, .L004124B0
/* 012514 00412514 00801825 */   move       $v1, $a0
/* 012518 00412518 1283FFE5 */  beq         $s4, $v1, .L004124B0
/* 01251C 0041251C 00000000 */   nop
/* 012520 00412520 8FBF0034 */  lw          $ra, 0x34($sp)
.L00412524:
/* 012524 00412524 02401025 */  move        $v0, $s2
/* 012528 00412528 8FB20020 */  lw          $s2, 0x20($sp)
/* 01252C 0041252C 8FB00018 */  lw          $s0, 0x18($sp)
/* 012530 00412530 8FB1001C */  lw          $s1, 0x1C($sp)
/* 012534 00412534 8FB30024 */  lw          $s3, 0x24($sp)
/* 012538 00412538 8FB40028 */  lw          $s4, 0x28($sp)
/* 01253C 0041253C 8FB5002C */  lw          $s5, 0x2C($sp)
/* 012540 00412540 03E00008 */  jr          $ra
/* 012544 00412544 27BD0038 */   addiu      $sp, $sp, 0x38