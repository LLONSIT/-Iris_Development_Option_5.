

__asm__(R""(
.macro glabel label
    .global \label
    .balign 4
    \label:
.endm

.set noat

glabel __getrnge # 37
/* 007C00 0F9A7C00 90CF0000 */  lbu         $t7, 0x0($a2)
/* 007C04 0F9A7C04 2401FFFF */  addiu       $at, $zero, -0x1
/* 007C08 0F9A7C08 AC8F0000 */  sw          $t7, 0x0($a0)
/* 007C0C 0F9A7C0C 90C20001 */  lbu         $v0, 0x1($a2)
/* 007C10 0F9A7C10 24C60001 */  addiu       $a2, $a2, 0x1
/* 007C14 0F9A7C14 14410004 */  bne         $v0, $at, .L0F9A7C28
/* 007C18 0F9A7C18 24184E20 */   addiu      $t8, $zero, 0x4E20
/* 007C1C 0F9A7C1C ACB80000 */  sw          $t8, 0x0($a1)
/* 007C20 0F9A7C20 03E00008 */  jr          $ra
/* 007C24 0F9A7C24 24020001 */   addiu      $v0, $zero, 0x1
.L0F9A7C28:
/* 007C28 0F9A7C28 8C880000 */  lw          $t0, 0x0($a0)
/* 007C2C 0F9A7C2C 305900FF */  andi        $t9, $v0, 0xFF
/* 007C30 0F9A7C30 03284823 */  subu        $t1, $t9, $t0
/* 007C34 0F9A7C34 ACA90000 */  sw          $t1, 0x0($a1)
/* 007C38 0F9A7C38 03E00008 */  jr          $ra
/* 007C3C 0F9A7C3C 24020001 */   addiu      $v0, $zero, 0x1
/* 007C40 0F9A7C40 00000000 */  nop

)"");
