.section .rodata
glabel STR_10001AA8
/* 013AA8 10001AA8 */ .asciz "%s: "
                      .balign 4

glabel STR_10001AB0
/* 013AB0 10001AB0 */ .asciz "%s: %s\n"
                      .balign 4

glabel STR_10001AB8
/* 013AB8 10001AB8 */ .asciz "%s: undocumented I/O error\n"
                      .balign 4


.section .text
/* Generated by spimdisasm 1.9.1 */

glabel perror_with_name # 68
# _gp_disp: 0xFBFBAC0
.set noreorder; .cpload $t9; # .set reorder
/* 00ED6C 0040ED6C 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00ED70 0040ED70 8F868308 */  lw          $a2, %got(progname)($gp)
/* 00ED74 0040ED74 AFA40020 */  sw          $a0, 0x20($sp)
/* 00ED78 0040ED78 8F848074 */  lw          $a0, %got(__iob)($gp)
/* 00ED7C 0040ED7C 8F85804C */  lw          $a1, %got(STR_10001AA8)($gp)
/* 00ED80 0040ED80 8F9980B4 */  lw          $t9, %call16(fprintf)($gp)
/* 00ED84 0040ED84 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00ED88 0040ED88 8CC60000 */  lw          $a2, 0x0($a2)
/* 00ED8C 0040ED8C AFBC0018 */  sw          $gp, 0x18($sp)
/* 00ED90 0040ED90 24840020 */  addiu       $a0, $a0, 0x20
/* 00ED94 0040ED94 0320F809 */  jalr        $t9
/* 00ED98 0040ED98 24A51AA8 */   addiu      $a1, $a1, %lo(STR_10001AA8)
/* 00ED9C 0040ED9C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EDA0 0040EDA0 8FA60020 */  lw          $a2, 0x20($sp)
/* 00EDA4 0040EDA4 8F828088 */  lw          $v0, %got(errno)($gp)
/* 00EDA8 0040EDA8 8F8E8070 */  lw          $t6, %got(sys_nerr)($gp)
/* 00EDAC 0040EDAC 8C420000 */  lw          $v0, 0x0($v0)
/* 00EDB0 0040EDB0 8DCE0000 */  lw          $t6, 0x0($t6)
/* 00EDB4 0040EDB4 8F848074 */  lw          $a0, %got(__iob)($gp)
/* 00EDB8 0040EDB8 004E082A */  slt         $at, $v0, $t6
/* 00EDBC 0040EDBC 1020000C */  beqz        $at, .L0040EDF0
/* 00EDC0 0040EDC0 24840020 */   addiu      $a0, $a0, 0x20
/* 00EDC4 0040EDC4 8F98807C */  lw          $t8, %got(sys_errlist)($gp)
/* 00EDC8 0040EDC8 00027880 */  sll         $t7, $v0, 2
/* 00EDCC 0040EDCC 01F8C821 */  addu        $t9, $t7, $t8
/* 00EDD0 0040EDD0 8F270000 */  lw          $a3, 0x0($t9)
/* 00EDD4 0040EDD4 8F9980B4 */  lw          $t9, %call16(fprintf)($gp)
/* 00EDD8 0040EDD8 8F85804C */  lw          $a1, %got(STR_10001AB0)($gp)
/* 00EDDC 0040EDDC 0320F809 */  jalr        $t9
/* 00EDE0 0040EDE0 24A51AB0 */   addiu      $a1, $a1, %lo(STR_10001AB0)
/* 00EDE4 0040EDE4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EDE8 0040EDE8 10000008 */  b           .L0040EE0C
/* 00EDEC 0040EDEC 00000000 */   nop
.L0040EDF0:
/* 00EDF0 0040EDF0 8F85804C */  lw          $a1, %got(STR_10001AB8)($gp)
/* 00EDF4 0040EDF4 8F9980B4 */  lw          $t9, %call16(fprintf)($gp)
/* 00EDF8 0040EDF8 24A51AB8 */  addiu       $a1, $a1, %lo(STR_10001AB8)
/* 00EDFC 0040EDFC 0320F809 */  jalr        $t9
/* 00EE00 0040EE00 00000000 */   nop
/* 00EE04 0040EE04 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00EE08 0040EE08 00000000 */  nop
.L0040EE0C:
/* 00EE0C 0040EE0C 8F8282C8 */  lw          $v0, %got(errors)($gp)
/* 00EE10 0040EE10 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00EE14 0040EE14 8C480000 */  lw          $t0, 0x0($v0)
/* 00EE18 0040EE18 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00EE1C 0040EE1C 25090001 */  addiu       $t1, $t0, 0x1
/* 00EE20 0040EE20 03E00008 */  jr          $ra
/* 00EE24 0040EE24 AC490000 */   sw         $t1, 0x0($v0)