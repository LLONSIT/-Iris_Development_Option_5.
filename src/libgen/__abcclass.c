__asm__(R""(
.macro glabel label
    .global \label
    .balign 4
    \label:
.endm

.set noat

glabel __abcclass # 34
/* 007A44 0F9A7A44 8CA30000 */  lw          $v1, 0x0($a1)
/* 007A48 0F9A7A48 27BDFFF8 */  addiu       $sp, $sp, -0x8
/* 007A4C 0F9A7A4C 90670000 */  lbu         $a3, 0x0($v1)
/* 007A50 0F9A7A50 2402FFFF */  addiu       $v0, $zero, -0x1
/* 007A54 0F9A7A54 14E00003 */  bnez        $a3, .L0F9A7A64
/* 007A58 0F9A7A58 24630001 */   addiu      $v1, $v1, 0x1
/* 007A5C 0F9A7A5C 10000027 */  b           .L0F9A7AFC
/* 007A60 0F9A7A60 ACA30000 */   sw         $v1, 0x0($a1)
.L0F9A7A64:
/* 007A64 0F9A7A64 ACA30000 */  sw          $v1, 0x0($a1)
/* 007A68 0F9A7A68 90820000 */  lbu         $v0, 0x0($a0)
/* 007A6C 0F9A7A6C 24840001 */  addiu       $a0, $a0, 0x1
/* 007A70 0F9A7A70 1C400003 */  bgtz        $v0, .L0F9A7A80
/* 007A74 0F9A7A74 00821821 */   addu       $v1, $a0, $v0
/* 007A78 0F9A7A78 10000020 */  b           .L0F9A7AFC
/* 007A7C 0F9A7A7C 2CC20001 */   sltiu      $v0, $a2, 0x1
.L0F9A7A80:
/* 007A80 0F9A7A80 2442FFFF */  addiu       $v0, $v0, -0x1
/* 007A84 0F9A7A84 0440001C */  bltz        $v0, .L0F9A7AF8
/* 007A88 0F9A7A88 00000000 */   nop
/* 007A8C 0F9A7A8C 93A80001 */  lbu         $t0, 0x1($sp)
/* 007A90 0F9A7A90 24090010 */  addiu       $t1, $zero, 0x10
.L0F9A7A94:
/* 007A94 0F9A7A94 0083082B */  sltu        $at, $a0, $v1
/* 007A98 0F9A7A98 14200003 */  bnez        $at, .L0F9A7AA8
/* 007A9C 0F9A7A9C 00000000 */   nop
/* 007AA0 0F9A7AA0 10000016 */  b           .L0F9A7AFC
/* 007AA4 0F9A7AA4 2CC20001 */   sltiu      $v0, $a2, 0x1
.L0F9A7AA8:
/* 007AA8 0F9A7AA8 90850000 */  lbu         $a1, 0x0($a0)
/* 007AAC 0F9A7AAC 24840001 */  addiu       $a0, $a0, 0x1
/* 007AB0 0F9A7AB0 1525000A */  bne         $t1, $a1, .L0F9A7ADC
/* 007AB4 0F9A7AB4 00E8082A */   slt        $at, $a3, $t0
/* 007AB8 0F9A7AB8 90850000 */  lbu         $a1, 0x0($a0)
/* 007ABC 0F9A7ABC 24840001 */  addiu       $a0, $a0, 0x1
/* 007AC0 0F9A7AC0 14200006 */  bnez        $at, .L0F9A7ADC
/* 007AC4 0F9A7AC4 2442FFFE */   addiu      $v0, $v0, -0x2
/* 007AC8 0F9A7AC8 00A7082A */  slt         $at, $a1, $a3
/* 007ACC 0F9A7ACC 14200003 */  bnez        $at, .L0F9A7ADC
/* 007AD0 0F9A7AD0 00000000 */   nop
/* 007AD4 0F9A7AD4 10000009 */  b           .L0F9A7AFC
/* 007AD8 0F9A7AD8 00C01025 */   move       $v0, $a2
.L0F9A7ADC:
/* 007ADC 0F9A7ADC 14E50003 */  bne         $a3, $a1, .L0F9A7AEC
/* 007AE0 0F9A7AE0 2442FFFF */   addiu      $v0, $v0, -0x1
/* 007AE4 0F9A7AE4 10000005 */  b           .L0F9A7AFC
/* 007AE8 0F9A7AE8 00C01025 */   move       $v0, $a2
.L0F9A7AEC:
/* 007AEC 0F9A7AEC 0441FFE9 */  bgez        $v0, .L0F9A7A94
/* 007AF0 0F9A7AF0 30A800FF */   andi       $t0, $a1, 0xFF
/* 007AF4 0F9A7AF4 A3A80001 */  sb          $t0, 0x1($sp)
.L0F9A7AF8:
/* 007AF8 0F9A7AF8 2CC20001 */  sltiu       $v0, $a2, 0x1
.L0F9A7AFC:
/* 007AFC 0F9A7AFC 03E00008 */  jr          $ra
/* 007B00 0F9A7B00 27BD0008 */   addiu      $sp, $sp, 0x8
)"");
