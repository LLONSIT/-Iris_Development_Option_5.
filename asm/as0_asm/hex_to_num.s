/* Generated by spimdisasm 1.10.3 */

glabel hex_to_num # 98
# _gp_disp: 0xFC018F0
.set noreorder; .cpload $t9; # .set reorder
/* 00F1DC 0040F1DC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00F1E0 0040F1E0 8F99808C */  lw          $t9, %call16(tolower)($gp)
/* 00F1E4 0040F1E4 AFA40020 */  sw          $a0, 0x20($sp)
/* 00F1E8 0040F1E8 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00F1EC 0040F1EC 93A40023 */  lbu         $a0, 0x23($sp)
/* 00F1F0 0040F1F0 0320F809 */  jalr        $t9
/* 00F1F4 0040F1F4 AFBC0018 */   sw         $gp, 0x18($sp)
/* 00F1F8 0040F1F8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00F1FC 0040F1FC 93AE0023 */  lbu         $t6, 0x23($sp)
/* 00F200 0040F200 8F8F8078 */  lw          $t7, %got(__ctype)($gp)
/* 00F204 0040F204 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00F208 0040F208 01CFC021 */  addu        $t8, $t6, $t7
/* 00F20C 0040F20C 93190001 */  lbu         $t9, 0x1($t8)
/* 00F210 0040F210 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00F214 0040F214 33280004 */  andi        $t0, $t9, 0x4
/* 00F218 0040F218 11000003 */  beqz        $t0, .L0040F228
/* 00F21C 0040F21C 00402025 */   move       $a0, $v0
/* 00F220 0040F220 10000002 */  b           .L0040F22C
/* 00F224 0040F224 24030030 */   addiu      $v1, $zero, 0x30
.L0040F228:
/* 00F228 0040F228 24030057 */  addiu       $v1, $zero, 0x57
.L0040F22C:
/* 00F22C 0040F22C 03E00008 */  jr          $ra
/* 00F230 0040F230 00831023 */   subu       $v0, $a0, $v1