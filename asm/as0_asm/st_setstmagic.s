/* Generated by spimdisasm 1.10.3 */

glabel st_setstmagic # 240
# _gp_disp: 0xFBF5B1C
.set noreorder; .cpload $t9; # .set reorder
/* 01AFB0 0041AFB0 8F81830C */  lw          $at, %got(stmagic)($gp)
/* 01AFB4 0041AFB4 AFA40000 */  sw          $a0, 0x0($sp)
/* 01AFB8 0041AFB8 03E00008 */  jr          $ra
/* 01AFBC 0041AFBC A4240000 */   sh         $a0, 0x0($at)
/* 01AFC0 0041AFC0 00000000 */  nop