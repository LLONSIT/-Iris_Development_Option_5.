.section .rodata
glabel STR_10004F5C
/* 023F5C 10004F5C */ .asciz "ill-formed symbolic expression"
                      .balign 4


.section .text
/* Generated by spimdisasm 1.10.3 */

glabel func_00405B54 # 19
# _gp_disp: 0xFC0AF6C
.set noreorder; .cpload $t9; # .set reorder
/* 005B60 00405B60 8F828378 */  lw          $v0, %got(Tokench)($gp)
/* 005B64 00405B64 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 005B68 00405B68 90420000 */  lbu         $v0, 0x0($v0)
/* 005B6C 00405B6C 2401003A */  addiu       $at, $zero, 0x3A
/* 005B70 00405B70 AFBF001C */  sw          $ra, 0x1C($sp)
/* 005B74 00405B74 AFBC0018 */  sw          $gp, 0x18($sp)
/* 005B78 00405B78 1441000F */  bne         $v0, $at, .L00405BB8
/* 005B7C 00405B7C AFA60028 */   sw         $a2, 0x28($sp)
/* 005B80 00405B80 8F99817C */  lw          $t9, %call16(nexttoken)($gp)
/* 005B84 00405B84 00000000 */  nop
/* 005B88 00405B88 0320F809 */  jalr        $t9
/* 005B8C 00405B8C 00000000 */   nop
/* 005B90 00405B90 8FBC0018 */  lw          $gp, 0x18($sp)
/* 005B94 00405B94 00000000 */  nop
/* 005B98 00405B98 8F998194 */  lw          $t9, %call16(GetExpr)($gp)
/* 005B9C 00405B9C 00000000 */  nop
/* 005BA0 00405BA0 0320F809 */  jalr        $t9
/* 005BA4 00405BA4 00000000 */   nop
/* 005BA8 00405BA8 8FAE0028 */  lw          $t6, 0x28($sp)
/* 005BAC 00405BAC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 005BB0 00405BB0 10000019 */  b           .L00405C18
/* 005BB4 00405BB4 ADC20000 */   sw         $v0, 0x0($t6)
.L00405BB8:
/* 005BB8 00405BB8 2401002B */  addiu       $at, $zero, 0x2B
/* 005BBC 00405BBC 10410003 */  beq         $v0, $at, .L00405BCC
/* 005BC0 00405BC0 2401002D */   addiu      $at, $zero, 0x2D
/* 005BC4 00405BC4 14410009 */  bne         $v0, $at, .L00405BEC
/* 005BC8 00405BC8 24010023 */   addiu      $at, $zero, 0x23
.L00405BCC:
/* 005BCC 00405BCC 8F9981A4 */  lw          $t9, %call16(dw_GetItem)($gp)
/* 005BD0 00405BD0 8FA60028 */  lw          $a2, 0x28($sp)
/* 005BD4 00405BD4 0320F809 */  jalr        $t9
/* 005BD8 00405BD8 00000000 */   nop
/* 005BDC 00405BDC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 005BE0 00405BE0 1000000E */  b           .L00405C1C
/* 005BE4 00405BE4 8FBF001C */   lw         $ra, 0x1C($sp)
/* 005BE8 00405BE8 24010023 */  addiu       $at, $zero, 0x23
.L00405BEC:
/* 005BEC 00405BEC 1041000A */  beq         $v0, $at, .L00405C18
/* 005BF0 00405BF0 2401002C */   addiu      $at, $zero, 0x2C
/* 005BF4 00405BF4 10410008 */  beq         $v0, $at, .L00405C18
/* 005BF8 00405BF8 00002825 */   move       $a1, $zero
/* 005BFC 00405BFC 8F848050 */  lw          $a0, %got(STR_10004F5C)($gp)
/* 005C00 00405C00 8F9981C8 */  lw          $t9, %call16(posterror)($gp)
/* 005C04 00405C04 24060001 */  addiu       $a2, $zero, 0x1
/* 005C08 00405C08 0320F809 */  jalr        $t9
/* 005C0C 00405C0C 24844F5C */   addiu      $a0, $a0, %lo(STR_10004F5C)
/* 005C10 00405C10 8FBC0018 */  lw          $gp, 0x18($sp)
/* 005C14 00405C14 00000000 */  nop
.L00405C18:
/* 005C18 00405C18 8FBF001C */  lw          $ra, 0x1C($sp)
.L00405C1C:
/* 005C1C 00405C1C 27BD0020 */  addiu       $sp, $sp, 0x20
/* 005C20 00405C20 03E00008 */  jr          $ra
/* 005C24 00405C24 00000000 */   nop