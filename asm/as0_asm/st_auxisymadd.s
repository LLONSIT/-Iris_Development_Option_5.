/* Generated by spimdisasm 1.10.3 */

glabel st_auxisymadd # 204
# _gp_disp: 0xFBF9EB0
.set noreorder; .cpload $t9; # .set reorder
/* 016C1C 00416C1C 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 016C20 00416C20 8F998258 */  lw          $t9, %call16(st_auxadd)($gp)
/* 016C24 00416C24 AFBF001C */  sw          $ra, 0x1C($sp)
/* 016C28 00416C28 AFBC0018 */  sw          $gp, 0x18($sp)
/* 016C2C 00416C2C AFA40024 */  sw          $a0, 0x24($sp)
/* 016C30 00416C30 0320F809 */  jalr        $t9
/* 016C34 00416C34 AFA40000 */   sw         $a0, 0x0($sp)
/* 016C38 00416C38 8FBF001C */  lw          $ra, 0x1C($sp)
/* 016C3C 00416C3C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 016C40 00416C40 03E00008 */  jr          $ra
/* 016C44 00416C44 27BD0028 */   addiu      $sp, $sp, 0x28