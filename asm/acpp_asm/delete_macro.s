/* Generated by spimdisasm 1.9.1 */

glabel delete_macro # 54
# _gp_disp: 0xFBFC880
.set noreorder; .cpload $t9; # .set reorder
/* 00DFAC 0040DFAC 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00DFB0 0040DFB0 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00DFB4 0040DFB4 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00DFB8 0040DFB8 8C820004 */  lw          $v0, 0x4($a0)
/* 00DFBC 0040DFBC 00000000 */  nop
/* 00DFC0 0040DFC0 10400004 */  beqz        $v0, .L0040DFD4
/* 00DFC4 0040DFC4 00000000 */   nop
/* 00DFC8 0040DFC8 8C8E0000 */  lw          $t6, 0x0($a0)
/* 00DFCC 0040DFCC 00000000 */  nop
/* 00DFD0 0040DFD0 AC4E0000 */  sw          $t6, 0x0($v0)
.L0040DFD4:
/* 00DFD4 0040DFD4 8C820000 */  lw          $v0, 0x0($a0)
/* 00DFD8 0040DFD8 00000000 */  nop
/* 00DFDC 0040DFDC 10400004 */  beqz        $v0, .L0040DFF0
/* 00DFE0 0040DFE0 00000000 */   nop
/* 00DFE4 0040DFE4 8C8F0004 */  lw          $t7, 0x4($a0)
/* 00DFE8 0040DFE8 00000000 */  nop
/* 00DFEC 0040DFEC AC4F0004 */  sw          $t7, 0x4($v0)
.L0040DFF0:
/* 00DFF0 0040DFF0 8C820008 */  lw          $v0, 0x8($a0)
/* 00DFF4 0040DFF4 00000000 */  nop
/* 00DFF8 0040DFF8 8C580000 */  lw          $t8, 0x0($v0)
/* 00DFFC 0040DFFC 00000000 */  nop
/* 00E000 0040E000 14980004 */  bne         $a0, $t8, .L0040E014
/* 00E004 0040E004 00000000 */   nop
/* 00E008 0040E008 8C990000 */  lw          $t9, 0x0($a0)
/* 00E00C 0040E00C 00000000 */  nop
/* 00E010 0040E010 AC590000 */  sw          $t9, 0x0($v0)
.L0040E014:
/* 00E014 0040E014 8F99808C */  lw          $t9, %call16(free)($gp)
/* 00E018 0040E018 00000000 */  nop
/* 00E01C 0040E01C 0320F809 */  jalr        $t9
/* 00E020 0040E020 00000000 */   nop
/* 00E024 0040E024 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00E028 0040E028 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00E02C 0040E02C 03E00008 */  jr          $ra
/* 00E030 0040E030 27BD0020 */   addiu      $sp, $sp, 0x20