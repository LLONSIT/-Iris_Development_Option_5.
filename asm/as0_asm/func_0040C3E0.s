/* Generated by spimdisasm 1.10.3 */

glabel func_0040C3E0 # 70
# _gp_disp: 0xFC046E0
.set noreorder; .cpload $t9; # .set reorder
/* 00C3EC 0040C3EC 8F8283A0 */  lw          $v0, %got(binasm_rec)($gp)
/* 00C3F0 0040C3F0 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00C3F4 0040C3F4 904E0005 */  lbu         $t6, 0x5($v0)
/* 00C3F8 0040C3F8 AC400000 */  sw          $zero, 0x0($v0)
/* 00C3FC 0040C3FC 31CFFFC0 */  andi        $t7, $t6, 0xFFC0
/* 00C400 0040C400 35F80033 */  ori         $t8, $t7, 0x33
/* 00C404 0040C404 A0580005 */  sb          $t8, 0x5($v0)
/* 00C408 0040C408 8F998194 */  lw          $t9, %call16(GetExpr)($gp)
/* 00C40C 0040C40C AFBF001C */  sw          $ra, 0x1C($sp)
/* 00C410 0040C410 0320F809 */  jalr        $t9
/* 00C414 0040C414 AFBC0018 */   sw         $gp, 0x18($sp)
/* 00C418 0040C418 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C41C 0040C41C 00000000 */  nop
/* 00C420 0040C420 8F8183A0 */  lw          $at, %got(binasm_rec)($gp)
/* 00C424 0040C424 8F998194 */  lw          $t9, %call16(GetExpr)($gp)
/* 00C428 0040C428 AC220008 */  sw          $v0, 0x8($at)
/* 00C42C 0040C42C 0320F809 */  jalr        $t9
/* 00C430 0040C430 00000000 */   nop
/* 00C434 0040C434 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C438 0040C438 00000000 */  nop
/* 00C43C 0040C43C 8F8183A0 */  lw          $at, %got(binasm_rec)($gp)
/* 00C440 0040C440 8F9981A8 */  lw          $t9, %call16(put_binasmfyle)($gp)
/* 00C444 0040C444 AC22000C */  sw          $v0, 0xC($at)
/* 00C448 0040C448 0320F809 */  jalr        $t9
/* 00C44C 0040C44C 00000000 */   nop
/* 00C450 0040C450 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00C454 0040C454 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00C458 0040C458 03E00008 */  jr          $ra
/* 00C45C 0040C45C 27BD0020 */   addiu      $sp, $sp, 0x20