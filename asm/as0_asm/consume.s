/* Generated by spimdisasm 1.10.3 */

glabel consume # 108
# _gp_disp: 0xFC00F04
.set noreorder; .cpload $t9; # .set reorder
/* 00FBC8 0040FBC8 8F838380 */  lw          $v1, %got(Tstringlength)($gp)
/* 00FBCC 0040FBCC 00000000 */  nop
/* 00FBD0 0040FBD0 8C620000 */  lw          $v0, 0x0($v1)
/* 00FBD4 0040FBD4 00000000 */  nop
/* 00FBD8 0040FBD8 284103FF */  slti        $at, $v0, 0x3FF
/* 00FBDC 0040FBDC 10200009 */  beqz        $at, .L0040FC04
/* 00FBE0 0040FBE0 00000000 */   nop
/* 00FBE4 0040FBE4 8F848364 */  lw          $a0, %got(nextinline)($gp)
/* 00FBE8 0040FBE8 8F8F8368 */  lw          $t7, %got(line)($gp)
/* 00FBEC 0040FBEC 8C8E0000 */  lw          $t6, 0x0($a0)
/* 00FBF0 0040FBF0 8F888384 */  lw          $t0, %got(token_tmp)($gp)
/* 00FBF4 0040FBF4 01CFC021 */  addu        $t8, $t6, $t7
/* 00FBF8 0040FBF8 93190000 */  lbu         $t9, 0x0($t8)
/* 00FBFC 0040FBFC 00484821 */  addu        $t1, $v0, $t0
/* 00FC00 0040FC00 A1390000 */  sb          $t9, 0x0($t1)
.L0040FC04:
/* 00FC04 0040FC04 8F848364 */  lw          $a0, %got(nextinline)($gp)
/* 00FC08 0040FC08 244A0001 */  addiu       $t2, $v0, 0x1
/* 00FC0C 0040FC0C 8C8B0000 */  lw          $t3, 0x0($a0)
/* 00FC10 0040FC10 AC6A0000 */  sw          $t2, 0x0($v1)
/* 00FC14 0040FC14 256C0001 */  addiu       $t4, $t3, 0x1
/* 00FC18 0040FC18 03E00008 */  jr          $ra
/* 00FC1C 0040FC1C AC8C0000 */   sw         $t4, 0x0($a0)