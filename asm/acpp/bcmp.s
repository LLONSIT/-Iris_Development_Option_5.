/* Generated by spimdisasm 1.9.1 */

glabel bcmp # 66
/* 00EC7C 0040EC7C 0006102A */  slt         $v0, $zero, $a2
/* 00EC80 0040EC80 1040000B */  beqz        $v0, .L0040ECB0
/* 00EC84 0040EC84 24C6FFFF */   addiu      $a2, $a2, -0x1
.L0040EC88:
/* 00EC88 0040EC88 908E0000 */  lbu         $t6, 0x0($a0)
/* 00EC8C 0040EC8C 90AF0000 */  lbu         $t7, 0x0($a1)
/* 00EC90 0040EC90 24840001 */  addiu       $a0, $a0, 0x1
/* 00EC94 0040EC94 11CF0003 */  beq         $t6, $t7, .L0040ECA4
/* 00EC98 0040EC98 24A50001 */   addiu      $a1, $a1, 0x1
/* 00EC9C 0040EC9C 03E00008 */  jr          $ra
/* 00ECA0 0040ECA0 24020001 */   addiu      $v0, $zero, 0x1
.L0040ECA4:
/* 00ECA4 0040ECA4 0006102A */  slt         $v0, $zero, $a2
/* 00ECA8 0040ECA8 1440FFF7 */  bnez        $v0, .L0040EC88
/* 00ECAC 0040ECAC 24C6FFFF */   addiu      $a2, $a2, -0x1
.L0040ECB0:
/* 00ECB0 0040ECB0 00001025 */  move        $v0, $zero
/* 00ECB4 0040ECB4 03E00008 */  jr          $ra
/* 00ECB8 0040ECB8 00000000 */   nop
