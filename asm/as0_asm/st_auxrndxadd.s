/* Generated by spimdisasm 1.10.3 */

glabel st_auxrndxadd # 205
# _gp_disp: 0xFBF9E78
.set noreorder; .cpload $t9; # .set reorder
/* 016C54 00416C54 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 016C58 00416C58 97AF002C */  lhu         $t7, 0x2C($sp)
/* 016C5C 00416C5C 3C01000F */  lui         $at, (0xFFFFF >> 16)
/* 016C60 00416C60 35F8FFF0 */  ori         $t8, $t7, 0xFFF0
/* 016C64 00416C64 A7B8002C */  sh          $t8, 0x2C($sp)
/* 016C68 00416C68 8FA8002C */  lw          $t0, 0x2C($sp)
/* 016C6C 00416C6C 3421FFFF */  ori         $at, $at, (0xFFFFF & 0xFFFF)
/* 016C70 00416C70 00A1C824 */  and         $t9, $a1, $at
/* 016C74 00416C74 03284826 */  xor         $t1, $t9, $t0
/* 016C78 00416C78 00095300 */  sll         $t2, $t1, 12
/* 016C7C 00416C7C 000A5B02 */  srl         $t3, $t2, 12
/* 016C80 00416C80 01686026 */  xor         $t4, $t3, $t0
/* 016C84 00416C84 AFBF001C */  sw          $ra, 0x1C($sp)
/* 016C88 00416C88 AFBC0018 */  sw          $gp, 0x18($sp)
/* 016C8C 00416C8C AFA40030 */  sw          $a0, 0x30($sp)
/* 016C90 00416C90 AFAC002C */  sw          $t4, 0x2C($sp)
/* 016C94 00416C94 27AD002C */  addiu       $t5, $sp, 0x2C
/* 016C98 00416C98 8DA40000 */  lw          $a0, 0x0($t5)
/* 016C9C 00416C9C 8F998258 */  lw          $t9, %call16(st_auxadd)($gp)
/* 016CA0 00416CA0 27A20028 */  addiu       $v0, $sp, 0x28
/* 016CA4 00416CA4 AC440000 */  sw          $a0, 0x0($v0)
/* 016CA8 00416CA8 0320F809 */  jalr        $t9
/* 016CAC 00416CAC AFA40000 */   sw         $a0, 0x0($sp)
/* 016CB0 00416CB0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 016CB4 00416CB4 8FA40030 */  lw          $a0, 0x30($sp)
/* 016CB8 00416CB8 8F998240 */  lw          $t9, %call16(st_auxisymadd)($gp)
/* 016CBC 00416CBC AFA20024 */  sw          $v0, 0x24($sp)
/* 016CC0 00416CC0 0320F809 */  jalr        $t9
/* 016CC4 00416CC4 00000000 */   nop
/* 016CC8 00416CC8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 016CCC 00416CCC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 016CD0 00416CD0 8FA20024 */  lw          $v0, 0x24($sp)
/* 016CD4 00416CD4 03E00008 */  jr          $ra
/* 016CD8 00416CD8 27BD0030 */   addiu      $sp, $sp, 0x30