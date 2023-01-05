
__asm__(R""(
.macro glabel label
    .global \label
    .balign 4
    \label:
.endm

.set noat

glabel _radvance # 21
# _gp_disp: 0x13EEC
.set noreorder; .cpload $t9; # .set reorder
/* 0045C0 0F9A45C0 8F998014 */  lw          $t9, %got(func_0F9A45F4)($gp)
/* 0045C4 0F9A45C4 8F81805C */  lw          $at, %got(B_F9B0F38)($gp)
/* 0045C8 0F9A45C8 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 0045CC 0F9A45CC AFBF001C */  sw          $ra, 0x1C($sp)
/* 0045D0 0F9A45D0 273945F4 */  addiu       $t9, $t9, %lo(func_0F9A45F4)
/* 0045D4 0F9A45D4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 0045D8 0F9A45D8 24A50001 */  addiu       $a1, $a1, 0x1
/* 0045DC 0F9A45DC 0320F809 */  jalr        $t9
/* 0045E0 0F9A45E0 AC240F38 */   sw         $a0, %lo(B_F9B0F38)($at)
/* 0045E4 0F9A45E4 8FBF001C */  lw          $ra, 0x1C($sp)
/* 0045E8 0F9A45E8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 0045EC 0F9A45EC 03E00008 */  jr          $ra
/* 0045F0 0F9A45F0 27BD0020 */   addiu      $sp, $sp, 0x20
)"");

