.section .rodata
glabel STR_100056AC
/* 0246AC 100056AC */ .asciz ".cpalias requires a register argument"
                      .balign 4


.section .text
/* Generated by spimdisasm 1.10.3 */

glabel func_0040A160 # 46
# _gp_disp: 0xFC06960
.set noreorder; .cpload $t9; # .set reorder
/* 00A16C 0040A16C 8F8283A0 */  lw          $v0, %got(binasm_rec)($gp)
/* 00A170 0040A170 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00A174 0040A174 904E0005 */  lbu         $t6, 0x5($v0)
/* 00A178 0040A178 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00A17C 0040A17C 31CFFFC0 */  andi        $t7, $t6, 0xFFC0
/* 00A180 0040A180 35F80021 */  ori         $t8, $t7, 0x21
/* 00A184 0040A184 A0580005 */  sb          $t8, 0x5($v0)
/* 00A188 0040A188 8F998190 */  lw          $t9, %call16(GetRegister)($gp)
/* 00A18C 0040A18C AFBC0018 */  sw          $gp, 0x18($sp)
/* 00A190 0040A190 0320F809 */  jalr        $t9
/* 00A194 0040A194 00000000 */   nop
/* 00A198 0040A198 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A19C 0040A19C 1440000B */  bnez        $v0, .L0040A1CC
/* 00A1A0 0040A1A0 00401825 */   move       $v1, $v0
/* 00A1A4 0040A1A4 8F848050 */  lw          $a0, %got(STR_100056AC)($gp)
/* 00A1A8 0040A1A8 8F9981C8 */  lw          $t9, %call16(posterror)($gp)
/* 00A1AC 0040A1AC 00002825 */  move        $a1, $zero
/* 00A1B0 0040A1B0 24060001 */  addiu       $a2, $zero, 0x1
/* 00A1B4 0040A1B4 AFA20024 */  sw          $v0, 0x24($sp)
/* 00A1B8 0040A1B8 0320F809 */  jalr        $t9
/* 00A1BC 0040A1BC 248456AC */   addiu      $a0, $a0, %lo(STR_100056AC)
/* 00A1C0 0040A1C0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A1C4 0040A1C4 8FA30024 */  lw          $v1, 0x24($sp)
/* 00A1C8 0040A1C8 00000000 */  nop
.L0040A1CC:
/* 00A1CC 0040A1CC 8F8283A0 */  lw          $v0, %got(binasm_rec)($gp)
/* 00A1D0 0040A1D0 8C680014 */  lw          $t0, 0x14($v1)
/* 00A1D4 0040A1D4 904B0008 */  lbu         $t3, 0x8($v0)
/* 00A1D8 0040A1D8 00085040 */  sll         $t2, $t0, 1
/* 00A1DC 0040A1DC 316CFF01 */  andi        $t4, $t3, 0xFF01
/* 00A1E0 0040A1E0 014C6825 */  or          $t5, $t2, $t4
/* 00A1E4 0040A1E4 A04D0008 */  sb          $t5, 0x8($v0)
/* 00A1E8 0040A1E8 8F9981A8 */  lw          $t9, %call16(put_binasmfyle)($gp)
/* 00A1EC 0040A1EC 00000000 */  nop
/* 00A1F0 0040A1F0 0320F809 */  jalr        $t9
/* 00A1F4 0040A1F4 00000000 */   nop
/* 00A1F8 0040A1F8 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00A1FC 0040A1FC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A200 0040A200 03E00008 */  jr          $ra
/* 00A204 0040A204 27BD0028 */   addiu      $sp, $sp, 0x28