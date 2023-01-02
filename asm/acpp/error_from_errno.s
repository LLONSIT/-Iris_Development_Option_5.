.section .rodata
glabel STR_10001918
/* 013918 10001918 */ .asciz "%s:%d: "
                      .balign 4

glabel STR_10001920
/* 013920 10001920 */ .asciz "%s: Too many open files (%ld files is too many.  Does some #include include itself (directly or indirectly)?)\n"
                      .balign 4

glabel STR_10001990
/* 013990 10001990 */ .asciz "%s: %s\n"
                      .balign 4

glabel STR_10001998
/* 013998 10001998 */ .asciz "%s: undocumented I/O error\n"
                      .balign 4


.section .text
/* Generated by spimdisasm 1.9.1 */

glabel error_from_errno # 47
# _gp_disp: 0xFBFD000
#.set noreorder; .cpload $t9; # .set reorder
/* 00D82C 0040D82C 8F83829C */  lw          $v1, %got(indepth)($gp)
/* 00D830 0040D830 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 00D834 0040D834 8C630000 */  lw          $v1, 0x0($v1)
/* 00D838 0040D838 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00D83C 0040D83C AFBC0018 */  sw          $gp, 0x18($sp)
/* 00D840 0040D840 AFA40020 */  sw          $a0, 0x20($sp)
/* 00D844 0040D844 04600010 */  bltz        $v1, .L0040D888
/* 00D848 0040D848 00004025 */   move       $t0, $zero
/* 00D84C 0040D84C 000370C0 */  sll         $t6, $v1, 3
/* 00D850 0040D850 01C37021 */  addu        $t6, $t6, $v1
/* 00D854 0040D854 8F838340 */  lw          $v1, %got(instack)($gp)
/* 00D858 0040D858 000E7080 */  sll         $t6, $t6, 2
/* 00D85C 0040D85C 01C31021 */  addu        $v0, $t6, $v1
.L0040D860:
/* 00D860 0040D860 8C580000 */  lw          $t8, 0x0($v0)
/* 00D864 0040D864 00000000 */  nop
/* 00D868 0040D868 13000003 */  beqz        $t8, .L0040D878
/* 00D86C 0040D86C 00000000 */   nop
/* 00D870 0040D870 10000005 */  b           .L0040D888
/* 00D874 0040D874 00404025 */   move       $t0, $v0
.L0040D878:
/* 00D878 0040D878 2442FFDC */  addiu       $v0, $v0, -0x24
/* 00D87C 0040D87C 0043082B */  sltu        $at, $v0, $v1
/* 00D880 0040D880 1020FFF7 */  beqz        $at, .L0040D860
/* 00D884 0040D884 00000000 */   nop
.L0040D888:
/* 00D888 0040D888 1100000B */  beqz        $t0, .L0040D8B8
/* 00D88C 0040D88C 00000000 */   nop
/* 00D890 0040D890 8F848074 */  lw          $a0, %got(__iob)($gp)
/* 00D894 0040D894 8F85804C */  lw          $a1, %got(STR_10001918)($gp)
/* 00D898 0040D898 8F9980B4 */  lw          $t9, %call16(fprintf)($gp)
/* 00D89C 0040D89C 8D060000 */  lw          $a2, 0x0($t0)
/* 00D8A0 0040D8A0 8D070004 */  lw          $a3, 0x4($t0)
/* 00D8A4 0040D8A4 24840020 */  addiu       $a0, $a0, 0x20
/* 00D8A8 0040D8A8 0320F809 */  jalr        $t9
/* 00D8AC 0040D8AC 24A51918 */   addiu      $a1, $a1, %lo(STR_10001918)
/* 00D8B0 0040D8B0 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D8B4 0040D8B4 00000000 */  nop
.L0040D8B8:
/* 00D8B8 0040D8B8 8F828088 */  lw          $v0, %got(errno)($gp)
/* 00D8BC 0040D8BC 8F998070 */  lw          $t9, %got(sys_nerr)($gp)
/* 00D8C0 0040D8C0 8C420000 */  lw          $v0, 0x0($v0)
/* 00D8C4 0040D8C4 8F390000 */  lw          $t9, 0x0($t9)
/* 00D8C8 0040D8C8 8F848074 */  lw          $a0, %got(__iob)($gp)
/* 00D8CC 0040D8CC 0059082A */  slt         $at, $v0, $t9
/* 00D8D0 0040D8D0 1020001E */  beqz        $at, .L0040D94C
/* 00D8D4 0040D8D4 24840020 */   addiu      $a0, $a0, 0x20
/* 00D8D8 0040D8D8 24010018 */  addiu       $at, $zero, 0x18
/* 00D8DC 0040D8DC 14410010 */  bne         $v0, $at, .L0040D920
/* 00D8E0 0040D8E0 00024880 */   sll        $t1, $v0, 2
/* 00D8E4 0040D8E4 8F87829C */  lw          $a3, %got(indepth)($gp)
/* 00D8E8 0040D8E8 00000000 */  nop
/* 00D8EC 0040D8EC 8CE70000 */  lw          $a3, 0x0($a3)
/* 00D8F0 0040D8F0 00000000 */  nop
/* 00D8F4 0040D8F4 28E1000B */  slti        $at, $a3, 0xB
/* 00D8F8 0040D8F8 14200009 */  bnez        $at, .L0040D920
/* 00D8FC 0040D8FC 00000000 */   nop
/* 00D900 0040D900 8F85804C */  lw          $a1, %got(STR_10001920)($gp)
/* 00D904 0040D904 8F9980B4 */  lw          $t9, %call16(fprintf)($gp)
/* 00D908 0040D908 8FA60020 */  lw          $a2, 0x20($sp)
/* 00D90C 0040D90C 0320F809 */  jalr        $t9
/* 00D910 0040D910 24A51920 */   addiu      $a1, $a1, %lo(STR_10001920)
/* 00D914 0040D914 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D918 0040D918 10000013 */  b           .L0040D968
/* 00D91C 0040D91C 00000000 */   nop
.L0040D920:
/* 00D920 0040D920 8F8A807C */  lw          $t2, %got(sys_errlist)($gp)
/* 00D924 0040D924 8F85804C */  lw          $a1, %got(STR_10001990)($gp)
/* 00D928 0040D928 8F9980B4 */  lw          $t9, %call16(fprintf)($gp)
/* 00D92C 0040D92C 012A5821 */  addu        $t3, $t1, $t2
/* 00D930 0040D930 8D670000 */  lw          $a3, 0x0($t3)
/* 00D934 0040D934 8FA60020 */  lw          $a2, 0x20($sp)
/* 00D938 0040D938 0320F809 */  jalr        $t9
/* 00D93C 0040D93C 24A51990 */   addiu      $a1, $a1, %lo(STR_10001990)
/* 00D940 0040D940 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D944 0040D944 10000008 */  b           .L0040D968
/* 00D948 0040D948 00000000 */   nop
.L0040D94C:
/* 00D94C 0040D94C 8F85804C */  lw          $a1, %got(STR_10001998)($gp)
/* 00D950 0040D950 8F9980B4 */  lw          $t9, %call16(fprintf)($gp)
/* 00D954 0040D954 8FA60020 */  lw          $a2, 0x20($sp)
/* 00D958 0040D958 0320F809 */  jalr        $t9
/* 00D95C 0040D95C 24A51998 */   addiu      $a1, $a1, %lo(STR_10001998)
/* 00D960 0040D960 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00D964 0040D964 00000000 */  nop
.L0040D968:
/* 00D968 0040D968 8F8382C8 */  lw          $v1, %got(errors)($gp)
/* 00D96C 0040D96C 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00D970 0040D970 8C6C0000 */  lw          $t4, 0x0($v1)
/* 00D974 0040D974 27BD0020 */  addiu       $sp, $sp, 0x20
/* 00D978 0040D978 258D0001 */  addiu       $t5, $t4, 0x1
/* 00D97C 0040D97C 00001025 */  move        $v0, $zero
/* 00D980 0040D980 03E00008 */  jr          $ra
/* 00D984 0040D984 AC6D0000 */   sw         $t5, 0x0($v1)
