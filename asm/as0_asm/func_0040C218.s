/* Generated by spimdisasm 1.10.3 */

glabel func_0040C218 # 67
# _gp_disp: 0xFC048A8
.set noreorder; .cpload $t9; # .set reorder
/* 00C224 0040C224 8F818358 */  lw          $at, %got(invent_locs)($gp)
/* 00C228 0040C228 8F8283A0 */  lw          $v0, %got(binasm_rec)($gp)
/* 00C22C 0040C22C AC200000 */  sw          $zero, 0x0($at)
/* 00C230 0040C230 904E0005 */  lbu         $t6, 0x5($v0)
/* 00C234 0040C234 AC400000 */  sw          $zero, 0x0($v0)
/* 00C238 0040C238 31CFFFC0 */  andi        $t7, $t6, 0xFFC0
/* 00C23C 0040C23C 35F8001C */  ori         $t8, $t7, 0x1C
/* 00C240 0040C240 A0580005 */  sb          $t8, 0x5($v0)
/* 00C244 0040C244 8F998194 */  lw          $t9, %call16(GetExpr)($gp)
/* 00C248 0040C248 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00C24C 0040C24C AFBF001C */  sw          $ra, 0x1C($sp)
/* 00C250 0040C250 0320F809 */  jalr        $t9
/* 00C254 0040C254 AFBC0018 */   sw         $gp, 0x18($sp)
/* 00C258 0040C258 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C25C 0040C25C 00000000 */  nop
/* 00C260 0040C260 8F99836C */  lw          $t9, %got(CurrentFile)($gp)
/* 00C264 0040C264 8F8183A0 */  lw          $at, %got(binasm_rec)($gp)
/* 00C268 0040C268 8F888378 */  lw          $t0, %got(Tokench)($gp)
/* 00C26C 0040C26C 8F390000 */  lw          $t9, 0x0($t9)
/* 00C270 0040C270 91080000 */  lbu         $t0, 0x0($t0)
/* 00C274 0040C274 AC390008 */  sw          $t9, 0x8($at)
/* 00C278 0040C278 2401003A */  addiu       $at, $zero, 0x3A
/* 00C27C 0040C27C 15010007 */  bne         $t0, $at, .L0040C29C
/* 00C280 0040C280 00000000 */   nop
/* 00C284 0040C284 8F99817C */  lw          $t9, %call16(nexttoken)($gp)
/* 00C288 0040C288 00000000 */  nop
/* 00C28C 0040C28C 0320F809 */  jalr        $t9
/* 00C290 0040C290 00000000 */   nop
/* 00C294 0040C294 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C298 0040C298 00000000 */  nop
.L0040C29C:
/* 00C29C 0040C29C 8F998194 */  lw          $t9, %call16(GetExpr)($gp)
/* 00C2A0 0040C2A0 00000000 */  nop
/* 00C2A4 0040C2A4 0320F809 */  jalr        $t9
/* 00C2A8 0040C2A8 00000000 */   nop
/* 00C2AC 0040C2AC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C2B0 0040C2B0 00000000 */  nop
/* 00C2B4 0040C2B4 8F838370 */  lw          $v1, %got(CurrentLine)($gp)
/* 00C2B8 0040C2B8 8F8183A0 */  lw          $at, %got(binasm_rec)($gp)
/* 00C2BC 0040C2BC AC620000 */  sw          $v0, 0x0($v1)
/* 00C2C0 0040C2C0 8F9981A8 */  lw          $t9, %call16(put_binasmfyle)($gp)
/* 00C2C4 0040C2C4 AC22000C */  sw          $v0, 0xC($at)
/* 00C2C8 0040C2C8 0320F809 */  jalr        $t9
/* 00C2CC 0040C2CC 00000000 */   nop
/* 00C2D0 0040C2D0 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00C2D4 0040C2D4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C2D8 0040C2D8 03E00008 */  jr          $ra
/* 00C2DC 0040C2DC 27BD0020 */   addiu      $sp, $sp, 0x20