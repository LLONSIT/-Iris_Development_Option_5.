/* Generated by spimdisasm 1.10.3 */

glabel __sgi_mld_st_commonbegin # 176
# _gp_disp: 0xFBFC04C
.set noreorder; .cpload $t9; # .set reorder
/* 014A80 00414A80 8F818304 */  lw          $at, %got(__sgi_common_dummy_file)($gp)
/* 014A84 00414A84 8F99821C */  lw          $t9, %call16(st_filebegin)($gp)
/* 014A88 00414A88 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 014A8C 00414A8C AFBF001C */  sw          $ra, 0x1C($sp)
/* 014A90 00414A90 240E0001 */  addiu       $t6, $zero, 0x1
/* 014A94 00414A94 AFBC0018 */  sw          $gp, 0x18($sp)
/* 014A98 00414A98 0320F809 */  jalr        $t9
/* 014A9C 00414A9C AC2E0000 */   sw         $t6, 0x0($at)
/* 014AA0 00414AA0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 014AA4 00414AA4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 014AA8 00414AA8 8F818304 */  lw          $at, %got(__sgi_common_dummy_file)($gp)
/* 014AAC 00414AAC 27BD0020 */  addiu       $sp, $sp, 0x20
/* 014AB0 00414AB0 03E00008 */  jr          $ra
/* 014AB4 00414AB4 AC200000 */   sw         $zero, 0x0($at)