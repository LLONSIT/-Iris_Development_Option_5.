.section .rodata
glabel STR_10004F7C
/* 023F7C 10004F7C */ .asciz "Bad id in expression"
                      .balign 4


.section .text
/* Generated by spimdisasm 1.10.3 */

glabel func_00405DE4 # 21
# _gp_disp: 0xFC0ACDC
.set noreorder; .cpload $t9; # .set reorder
/* 005DF0 00405DF0 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 005DF4 00405DF4 8F828378 */  lw          $v0, %got(Tokench)($gp)
/* 005DF8 00405DF8 24010069 */  addiu       $at, $zero, 0x69
/* 005DFC 00405DFC 90420000 */  lbu         $v0, 0x0($v0)
/* 005E00 00405E00 AFBF001C */  sw          $ra, 0x1C($sp)
/* 005E04 00405E04 AFBC0018 */  sw          $gp, 0x18($sp)
/* 005E08 00405E08 AFA40030 */  sw          $a0, 0x30($sp)
/* 005E0C 00405E0C AFA50034 */  sw          $a1, 0x34($sp)
/* 005E10 00405E10 AFA60038 */  sw          $a2, 0x38($sp)
/* 005E14 00405E14 14410041 */  bne         $v0, $at, .L00405F1C
/* 005E18 00405E18 AFA7003C */   sw         $a3, 0x3C($sp)
/* 005E1C 00405E1C 8F99816C */  lw          $t9, %call16(LookUp)($gp)
/* 005E20 00405E20 8F84837C */  lw          $a0, %got(Tstring)($gp)
/* 005E24 00405E24 0320F809 */  jalr        $t9
/* 005E28 00405E28 27A5002C */   addiu      $a1, $sp, 0x2C
/* 005E2C 00405E2C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 005E30 00405E30 14400007 */  bnez        $v0, .L00405E50
/* 005E34 00405E34 27A5002C */   addiu      $a1, $sp, 0x2C
/* 005E38 00405E38 8F99818C */  lw          $t9, %call16(EnterSym)($gp)
/* 005E3C 00405E3C 8F84837C */  lw          $a0, %got(Tstring)($gp)
/* 005E40 00405E40 0320F809 */  jalr        $t9
/* 005E44 00405E44 24060001 */   addiu      $a2, $zero, 0x1
/* 005E48 00405E48 8FBC0018 */  lw          $gp, 0x18($sp)
/* 005E4C 00405E4C 00000000 */  nop
.L00405E50:
/* 005E50 00405E50 8FAE002C */  lw          $t6, 0x2C($sp)
/* 005E54 00405E54 24010004 */  addiu       $at, $zero, 0x4
/* 005E58 00405E58 8DC20010 */  lw          $v0, 0x10($t6)
/* 005E5C 00405E5C 8FA40034 */  lw          $a0, 0x34($sp)
/* 005E60 00405E60 1441000A */  bne         $v0, $at, .L00405E8C
/* 005E64 00405E64 24010003 */   addiu      $at, $zero, 0x3
/* 005E68 00405E68 8F9981A4 */  lw          $t9, %call16(dw_GetItem)($gp)
/* 005E6C 00405E6C 8FA50038 */  lw          $a1, 0x38($sp)
/* 005E70 00405E70 8FA6003C */  lw          $a2, 0x3C($sp)
/* 005E74 00405E74 0320F809 */  jalr        $t9
/* 005E78 00405E78 00000000 */   nop
/* 005E7C 00405E7C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 005E80 00405E80 1000005B */  b           .L00405FF0
/* 005E84 00405E84 00000000 */   nop
/* 005E88 00405E88 24010003 */  addiu       $at, $zero, 0x3
.L00405E8C:
/* 005E8C 00405E8C 14410015 */  bne         $v0, $at, .L00405EE4
/* 005E90 00405E90 00002825 */   move       $a1, $zero
/* 005E94 00405E94 8FAF002C */  lw          $t7, 0x2C($sp)
/* 005E98 00405E98 8FB90030 */  lw          $t9, 0x30($sp)
/* 005E9C 00405E9C 8DF80018 */  lw          $t8, 0x18($t7)
/* 005EA0 00405EA0 00000000 */  nop
/* 005EA4 00405EA4 AF380000 */  sw          $t8, 0x0($t9)
/* 005EA8 00405EA8 8F99817C */  lw          $t9, %call16(nexttoken)($gp)
/* 005EAC 00405EAC 00000000 */  nop
/* 005EB0 00405EB0 0320F809 */  jalr        $t9
/* 005EB4 00405EB4 00000000 */   nop
/* 005EB8 00405EB8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 005EBC 00405EBC 8FA40034 */  lw          $a0, 0x34($sp)
/* 005EC0 00405EC0 8F998014 */  lw          $t9, %got(func_00405B54)($gp)
/* 005EC4 00405EC4 8FA50038 */  lw          $a1, 0x38($sp)
/* 005EC8 00405EC8 8FA6003C */  lw          $a2, 0x3C($sp)
/* 005ECC 00405ECC 27395B54 */  addiu       $t9, $t9, %lo(func_00405B54)
/* 005ED0 00405ED0 0320F809 */  jalr        $t9
/* 005ED4 00405ED4 00000000 */   nop
/* 005ED8 00405ED8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 005EDC 00405EDC 10000044 */  b           .L00405FF0
/* 005EE0 00405EE0 00000000 */   nop
.L00405EE4:
/* 005EE4 00405EE4 8F848050 */  lw          $a0, %got(STR_10004F7C)($gp)
/* 005EE8 00405EE8 8F9981C8 */  lw          $t9, %call16(posterror)($gp)
/* 005EEC 00405EEC 24060001 */  addiu       $a2, $zero, 0x1
/* 005EF0 00405EF0 0320F809 */  jalr        $t9
/* 005EF4 00405EF4 24844F7C */   addiu      $a0, $a0, %lo(STR_10004F7C)
/* 005EF8 00405EF8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 005EFC 00405EFC 00000000 */  nop
/* 005F00 00405F00 8F99817C */  lw          $t9, %call16(nexttoken)($gp)
/* 005F04 00405F04 00000000 */  nop
/* 005F08 00405F08 0320F809 */  jalr        $t9
/* 005F0C 00405F0C 00000000 */   nop
/* 005F10 00405F10 8FBC0018 */  lw          $gp, 0x18($sp)
/* 005F14 00405F14 10000043 */  b           .L00406024
/* 005F18 00405F18 00001025 */   move       $v0, $zero
.L00405F1C:
/* 005F1C 00405F1C 24010022 */  addiu       $at, $zero, 0x22
/* 005F20 00405F20 14410016 */  bne         $v0, $at, .L00405F7C
/* 005F24 00405F24 00000000 */   nop
/* 005F28 00405F28 8F9980F8 */  lw          $t9, %call16(strlen)($gp)
/* 005F2C 00405F2C 8F84837C */  lw          $a0, %got(Tstring)($gp)
/* 005F30 00405F30 0320F809 */  jalr        $t9
/* 005F34 00405F34 00000000 */   nop
/* 005F38 00405F38 8FBC0018 */  lw          $gp, 0x18($sp)
/* 005F3C 00405F3C 8FA60034 */  lw          $a2, 0x34($sp)
/* 005F40 00405F40 8F998014 */  lw          $t9, %got(func_00405C28)($gp)
/* 005F44 00405F44 8FA70038 */  lw          $a3, 0x38($sp)
/* 005F48 00405F48 8F84837C */  lw          $a0, %got(Tstring)($gp)
/* 005F4C 00405F4C 27395C28 */  addiu       $t9, $t9, %lo(func_00405C28)
/* 005F50 00405F50 0320F809 */  jalr        $t9
/* 005F54 00405F54 00402825 */   move       $a1, $v0
/* 005F58 00405F58 8FBC0018 */  lw          $gp, 0x18($sp)
/* 005F5C 00405F5C 00000000 */  nop
/* 005F60 00405F60 8F99817C */  lw          $t9, %call16(nexttoken)($gp)
/* 005F64 00405F64 00000000 */  nop
/* 005F68 00405F68 0320F809 */  jalr        $t9
/* 005F6C 00405F6C 00000000 */   nop
/* 005F70 00405F70 8FBC0018 */  lw          $gp, 0x18($sp)
/* 005F74 00405F74 10000008 */  b           .L00405F98
/* 005F78 00405F78 00000000 */   nop
.L00405F7C:
/* 005F7C 00405F7C 8F998198 */  lw          $t9, %call16(dw_GetExpr)($gp)
/* 005F80 00405F80 8FA40034 */  lw          $a0, 0x34($sp)
/* 005F84 00405F84 8FA50038 */  lw          $a1, 0x38($sp)
/* 005F88 00405F88 0320F809 */  jalr        $t9
/* 005F8C 00405F8C 00000000 */   nop
/* 005F90 00405F90 8FBC0018 */  lw          $gp, 0x18($sp)
/* 005F94 00405F94 00000000 */  nop
.L00405F98:
/* 005F98 00405F98 8F888378 */  lw          $t0, %got(Tokench)($gp)
/* 005F9C 00405F9C 2401003A */  addiu       $at, $zero, 0x3A
/* 005FA0 00405FA0 91080000 */  lbu         $t0, 0x0($t0)
/* 005FA4 00405FA4 8FAB003C */  lw          $t3, 0x3C($sp)
/* 005FA8 00405FA8 15010010 */  bne         $t0, $at, .L00405FEC
/* 005FAC 00405FAC 240A0001 */   addiu      $t2, $zero, 0x1
/* 005FB0 00405FB0 8F99817C */  lw          $t9, %call16(nexttoken)($gp)
/* 005FB4 00405FB4 00000000 */  nop
/* 005FB8 00405FB8 0320F809 */  jalr        $t9
/* 005FBC 00405FBC 00000000 */   nop
/* 005FC0 00405FC0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 005FC4 00405FC4 00000000 */  nop
/* 005FC8 00405FC8 8F998194 */  lw          $t9, %call16(GetExpr)($gp)
/* 005FCC 00405FCC 00000000 */  nop
/* 005FD0 00405FD0 0320F809 */  jalr        $t9
/* 005FD4 00405FD4 00000000 */   nop
/* 005FD8 00405FD8 8FA9003C */  lw          $t1, 0x3C($sp)
/* 005FDC 00405FDC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 005FE0 00405FE0 10000003 */  b           .L00405FF0
/* 005FE4 00405FE4 AD220000 */   sw         $v0, 0x0($t1)
/* 005FE8 00405FE8 240A0001 */  addiu       $t2, $zero, 0x1
.L00405FEC:
/* 005FEC 00405FEC AD6A0000 */  sw          $t2, 0x0($t3)
.L00405FF0:
/* 005FF0 00405FF0 8F8C8378 */  lw          $t4, %got(Tokench)($gp)
/* 005FF4 00405FF4 2401002C */  addiu       $at, $zero, 0x2C
/* 005FF8 00405FF8 918C0000 */  lbu         $t4, 0x0($t4)
/* 005FFC 00405FFC 00000000 */  nop
/* 006000 00406000 15810008 */  bne         $t4, $at, .L00406024
/* 006004 00406004 24020001 */   addiu      $v0, $zero, 0x1
/* 006008 00406008 8F99817C */  lw          $t9, %call16(nexttoken)($gp)
/* 00600C 0040600C 00000000 */  nop
/* 006010 00406010 0320F809 */  jalr        $t9
/* 006014 00406014 00000000 */   nop
/* 006018 00406018 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00601C 0040601C 00000000 */  nop
/* 006020 00406020 24020001 */  addiu       $v0, $zero, 0x1
.L00406024:
/* 006024 00406024 8FBF001C */  lw          $ra, 0x1C($sp)
/* 006028 00406028 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00602C 0040602C 03E00008 */  jr          $ra
/* 006030 00406030 00000000 */   nop