.section .rodata
glabel STR_10007BE4
/* 026BE4 10007BE4 */ .asciz "libmld--"
                      .balign 4

glabel STR_10007BF0
/* 026BF0 10007BF0 */ .asciz "\n"
                      .balign 4


.section .text
/* Generated by spimdisasm 1.10.3 */

glabel st_error # 137
# _gp_disp: 0xFBFDD68
.set noreorder; .cpload $t9; # .set reorder
/* 012D64 00412D64 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 012D68 00412D68 AFA40028 */  sw          $a0, 0x28($sp)
/* 012D6C 00412D6C AFA5002C */  sw          $a1, 0x2C($sp)
/* 012D70 00412D70 8F858050 */  lw          $a1, %got(STR_10007BE4)($gp)
/* 012D74 00412D74 8F84807C */  lw          $a0, %got(__iob)($gp)
/* 012D78 00412D78 8F998090 */  lw          $t9, %call16(fprintf)($gp)
/* 012D7C 00412D7C AFBF0024 */  sw          $ra, 0x24($sp)
/* 012D80 00412D80 AFBC0020 */  sw          $gp, 0x20($sp)
/* 012D84 00412D84 AFA60030 */  sw          $a2, 0x30($sp)
/* 012D88 00412D88 AFA70034 */  sw          $a3, 0x34($sp)
/* 012D8C 00412D8C 24A57BE4 */  addiu       $a1, $a1, %lo(STR_10007BE4)
/* 012D90 00412D90 0320F809 */  jalr        $t9
/* 012D94 00412D94 24840020 */   addiu      $a0, $a0, 0x20
/* 012D98 00412D98 8FBC0020 */  lw          $gp, 0x20($sp)
/* 012D9C 00412D9C 24040001 */  addiu       $a0, $zero, 0x1
/* 012DA0 00412DA0 8F9981BC */  lw          $t9, %call16(call_name_and_line)($gp)
/* 012DA4 00412DA4 00000000 */  nop
/* 012DA8 00412DA8 0320F809 */  jalr        $t9
/* 012DAC 00412DAC 00000000 */   nop
/* 012DB0 00412DB0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 012DB4 00412DB4 8FAE0034 */  lw          $t6, 0x34($sp)
/* 012DB8 00412DB8 8FAF0038 */  lw          $t7, 0x38($sp)
/* 012DBC 00412DBC 8F84807C */  lw          $a0, %got(__iob)($gp)
/* 012DC0 00412DC0 8F998090 */  lw          $t9, %call16(fprintf)($gp)
/* 012DC4 00412DC4 8FA50028 */  lw          $a1, 0x28($sp)
/* 012DC8 00412DC8 8FA6002C */  lw          $a2, 0x2C($sp)
/* 012DCC 00412DCC 8FA70030 */  lw          $a3, 0x30($sp)
/* 012DD0 00412DD0 AFAE0010 */  sw          $t6, 0x10($sp)
/* 012DD4 00412DD4 AFAF0014 */  sw          $t7, 0x14($sp)
/* 012DD8 00412DD8 0320F809 */  jalr        $t9
/* 012DDC 00412DDC 24840020 */   addiu      $a0, $a0, 0x20
/* 012DE0 00412DE0 8FBC0020 */  lw          $gp, 0x20($sp)
/* 012DE4 00412DE4 00000000 */  nop
/* 012DE8 00412DE8 8F84807C */  lw          $a0, %got(__iob)($gp)
/* 012DEC 00412DEC 8F858050 */  lw          $a1, %got(STR_10007BF0)($gp)
/* 012DF0 00412DF0 8F998090 */  lw          $t9, %call16(fprintf)($gp)
/* 012DF4 00412DF4 24840020 */  addiu       $a0, $a0, 0x20
/* 012DF8 00412DF8 0320F809 */  jalr        $t9
/* 012DFC 00412DFC 24A57BF0 */   addiu      $a1, $a1, %lo(STR_10007BF0)
/* 012E00 00412E00 8FBC0020 */  lw          $gp, 0x20($sp)
/* 012E04 00412E04 24040001 */  addiu       $a0, $zero, 0x1
/* 012E08 00412E08 8F9980F4 */  lw          $t9, %call16(exit)($gp)
/* 012E0C 00412E0C 00000000 */  nop
/* 012E10 00412E10 0320F809 */  jalr        $t9
/* 012E14 00412E14 00000000 */   nop
/* 012E18 00412E18 8FBF0024 */  lw          $ra, 0x24($sp)
/* 012E1C 00412E1C 8FBC0020 */  lw          $gp, 0x20($sp)
/* 012E20 00412E20 03E00008 */  jr          $ra
/* 012E24 00412E24 27BD0028 */   addiu      $sp, $sp, 0x28