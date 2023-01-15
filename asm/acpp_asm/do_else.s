.section .rodata
glabel STR_10001728
/* 013728 10001728 */ .asciz "text following #else violates ANSI standard"
                      .balign 4

glabel STR_10001754
/* 013754 10001754 */ .asciz "#else not within a conditional"
                      .balign 4

glabel STR_10001774
/* 013774 10001774 */ .asciz "#else after #else"
                      .balign 4

glabel STR_10001788
/* 013788 10001788 */ .asciz " (matches line %d"
                      .balign 4

glabel STR_1000179C
/* 01379C 1000179C */ .asciz ", file %s"
                      .balign 4

glabel STR_100017A8
/* 0137A8 100017A8 */ .asciz ")\n"
                      .balign 4


.section .text
/* Generated by spimdisasm 1.9.1 */

glabel do_else # 36
# _gp_disp: 0xFBFF7C0
.set noreorder; .cpload $t9; # .set reorder
/* 00B06C 0040B06C 8F8E829C */  lw          $t6, %got(indepth)($gp)
/* 00B070 0040B070 8F998324 */  lw          $t9, %got(pedantic)($gp)
/* 00B074 0040B074 8DCE0000 */  lw          $t6, 0x0($t6)
/* 00B078 0040B078 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 00B07C 0040B07C 000E78C0 */  sll         $t7, $t6, 3
/* 00B080 0040B080 8F988340 */  lw          $t8, %got(instack)($gp)
/* 00B084 0040B084 01EE7821 */  addu        $t7, $t7, $t6
/* 00B088 0040B088 8F390000 */  lw          $t9, 0x0($t9)
/* 00B08C 0040B08C AFA70034 */  sw          $a3, 0x34($sp)
/* 00B090 0040B090 000F7880 */  sll         $t7, $t7, 2
/* 00B094 0040B094 01F83821 */  addu        $a3, $t7, $t8
/* 00B098 0040B098 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00B09C 0040B09C AFBC0018 */  sw          $gp, 0x18($sp)
/* 00B0A0 0040B0A0 AFA60030 */  sw          $a2, 0x30($sp)
/* 00B0A4 0040B0A4 1320002F */  beqz        $t9, .L0040B164
/* 00B0A8 0040B0A8 AFA70024 */   sw         $a3, 0x24($sp)
/* 00B0AC 0040B0AC 8F828354 */  lw          $v0, %got(is_hor_space)($gp)
/* 00B0B0 0040B0B0 90880000 */  lbu         $t0, 0x0($a0)
/* 00B0B4 0040B0B4 00000000 */  nop
/* 00B0B8 0040B0B8 00484821 */  addu        $t1, $v0, $t0
/* 00B0BC 0040B0BC 912A0000 */  lbu         $t2, 0x0($t1)
/* 00B0C0 0040B0C0 00000000 */  nop
/* 00B0C4 0040B0C4 11400008 */  beqz        $t2, .L0040B0E8
/* 00B0C8 0040B0C8 00000000 */   nop
.L0040B0CC:
/* 00B0CC 0040B0CC 908B0001 */  lbu         $t3, 0x1($a0)
/* 00B0D0 0040B0D0 24840001 */  addiu       $a0, $a0, 0x1
/* 00B0D4 0040B0D4 004B6021 */  addu        $t4, $v0, $t3
/* 00B0D8 0040B0D8 918D0000 */  lbu         $t5, 0x0($t4)
/* 00B0DC 0040B0DC 00000000 */  nop
/* 00B0E0 0040B0E0 15A0FFFA */  bnez        $t5, .L0040B0CC
/* 00B0E4 0040B0E4 00000000 */   nop
.L0040B0E8:
/* 00B0E8 0040B0E8 1085001E */  beq         $a0, $a1, .L0040B164
/* 00B0EC 0040B0EC 00000000 */   nop
/* 00B0F0 0040B0F0 8F8E8328 */  lw          $t6, %got(warnings_off)($gp)
/* 00B0F4 0040B0F4 00000000 */  nop
/* 00B0F8 0040B0F8 8DCE0000 */  lw          $t6, 0x0($t6)
/* 00B0FC 0040B0FC 00000000 */  nop
/* 00B100 0040B100 15C00018 */  bnez        $t6, .L0040B164
/* 00B104 0040B104 00000000 */   nop
/* 00B108 0040B108 8CE3000C */  lw          $v1, 0xC($a3)
/* 00B10C 0040B10C 00000000 */  nop
/* 00B110 0040B110 14600013 */  bnez        $v1, .L0040B160
/* 00B114 0040B114 24680001 */   addiu      $t0, $v1, 0x1
/* 00B118 0040B118 8F84804C */  lw          $a0, %got(STR_10001728)($gp)
/* 00B11C 0040B11C 8F9981EC */  lw          $t9, %call16(warning)($gp)
/* 00B120 0040B120 24841728 */  addiu       $a0, $a0, %lo(STR_10001728)
/* 00B124 0040B124 0320F809 */  jalr        $t9
/* 00B128 0040B128 00000000 */   nop
/* 00B12C 0040B12C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B130 0040B130 00000000 */  nop
/* 00B134 0040B134 8F8F829C */  lw          $t7, %got(indepth)($gp)
/* 00B138 0040B138 8F998340 */  lw          $t9, %got(instack)($gp)
/* 00B13C 0040B13C 8DEF0000 */  lw          $t7, 0x0($t7)
/* 00B140 0040B140 00000000 */  nop
/* 00B144 0040B144 000FC0C0 */  sll         $t8, $t7, 3
/* 00B148 0040B148 030FC021 */  addu        $t8, $t8, $t7
/* 00B14C 0040B14C 0018C080 */  sll         $t8, $t8, 2
/* 00B150 0040B150 03193821 */  addu        $a3, $t8, $t9
/* 00B154 0040B154 8CE3000C */  lw          $v1, 0xC($a3)
/* 00B158 0040B158 00000000 */  nop
/* 00B15C 0040B15C 24680001 */  addiu       $t0, $v1, 0x1
.L0040B160:
/* 00B160 0040B160 ACE8000C */  sw          $t0, 0xC($a3)
.L0040B164:
/* 00B164 0040B164 8F8382D0 */  lw          $v1, %got(if_stack)($gp)
/* 00B168 0040B168 8CE9001C */  lw          $t1, 0x1C($a3)
/* 00B16C 0040B16C 8C630000 */  lw          $v1, 0x0($v1)
/* 00B170 0040B170 00000000 */  nop
/* 00B174 0040B174 14690009 */  bne         $v1, $t1, .L0040B19C
/* 00B178 0040B178 00000000 */   nop
/* 00B17C 0040B17C 8F84804C */  lw          $a0, %got(STR_10001754)($gp)
/* 00B180 0040B180 8F9981E4 */  lw          $t9, %call16(error)($gp)
/* 00B184 0040B184 24841754 */  addiu       $a0, $a0, %lo(STR_10001754)
/* 00B188 0040B188 0320F809 */  jalr        $t9
/* 00B18C 0040B18C 00000000 */   nop
/* 00B190 0040B190 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B194 0040B194 10000054 */  b           .L0040B2E8
/* 00B198 0040B198 8FBF001C */   lw         $ra, 0x1C($sp)
.L0040B19C:
/* 00B19C 0040B19C 8C620010 */  lw          $v0, 0x10($v1)
/* 00B1A0 0040B1A0 24010005 */  addiu       $at, $zero, 0x5
/* 00B1A4 0040B1A4 10410036 */  beq         $v0, $at, .L0040B280
/* 00B1A8 0040B1A8 24010008 */   addiu      $at, $zero, 0x8
/* 00B1AC 0040B1AC 10410035 */  beq         $v0, $at, .L0040B284
/* 00B1B0 0040B1B0 240E0006 */   addiu      $t6, $zero, 0x6
/* 00B1B4 0040B1B4 8F84804C */  lw          $a0, %got(STR_10001774)($gp)
/* 00B1B8 0040B1B8 8F9981E4 */  lw          $t9, %call16(error)($gp)
/* 00B1BC 0040B1BC 24841774 */  addiu       $a0, $a0, %lo(STR_10001774)
/* 00B1C0 0040B1C0 0320F809 */  jalr        $t9
/* 00B1C4 0040B1C4 00000000 */   nop
/* 00B1C8 0040B1C8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B1CC 0040B1CC 00000000 */  nop
/* 00B1D0 0040B1D0 8F8A82D0 */  lw          $t2, %got(if_stack)($gp)
/* 00B1D4 0040B1D4 8F848074 */  lw          $a0, %got(__iob)($gp)
/* 00B1D8 0040B1D8 8D4A0000 */  lw          $t2, 0x0($t2)
/* 00B1DC 0040B1DC 8F85804C */  lw          $a1, %got(STR_10001788)($gp)
/* 00B1E0 0040B1E0 8F9980B4 */  lw          $t9, %call16(fprintf)($gp)
/* 00B1E4 0040B1E4 8D460008 */  lw          $a2, 0x8($t2)
/* 00B1E8 0040B1E8 24840020 */  addiu       $a0, $a0, 0x20
/* 00B1EC 0040B1EC 0320F809 */  jalr        $t9
/* 00B1F0 0040B1F0 24A51788 */   addiu      $a1, $a1, %lo(STR_10001788)
/* 00B1F4 0040B1F4 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B1F8 0040B1F8 8FAC0024 */  lw          $t4, 0x24($sp)
/* 00B1FC 0040B1FC 8F8B82D0 */  lw          $t3, %got(if_stack)($gp)
/* 00B200 0040B200 8F9980B8 */  lw          $t9, %call16(strcmp)($gp)
/* 00B204 0040B204 8D6B0000 */  lw          $t3, 0x0($t3)
/* 00B208 0040B208 8D850000 */  lw          $a1, 0x0($t4)
/* 00B20C 0040B20C 8D640004 */  lw          $a0, 0x4($t3)
/* 00B210 0040B210 0320F809 */  jalr        $t9
/* 00B214 0040B214 00000000 */   nop
/* 00B218 0040B218 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B21C 0040B21C 1040000C */  beqz        $v0, .L0040B250
/* 00B220 0040B220 00000000 */   nop
/* 00B224 0040B224 8F8D82D0 */  lw          $t5, %got(if_stack)($gp)
/* 00B228 0040B228 8F848074 */  lw          $a0, %got(__iob)($gp)
/* 00B22C 0040B22C 8DAD0000 */  lw          $t5, 0x0($t5)
/* 00B230 0040B230 8F85804C */  lw          $a1, %got(STR_1000179C)($gp)
/* 00B234 0040B234 8F9980B4 */  lw          $t9, %call16(fprintf)($gp)
/* 00B238 0040B238 8DA60004 */  lw          $a2, 0x4($t5)
/* 00B23C 0040B23C 24840020 */  addiu       $a0, $a0, 0x20
/* 00B240 0040B240 0320F809 */  jalr        $t9
/* 00B244 0040B244 24A5179C */   addiu      $a1, $a1, %lo(STR_1000179C)
/* 00B248 0040B248 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B24C 0040B24C 00000000 */  nop
.L0040B250:
/* 00B250 0040B250 8F848074 */  lw          $a0, %got(__iob)($gp)
/* 00B254 0040B254 8F85804C */  lw          $a1, %got(STR_100017A8)($gp)
/* 00B258 0040B258 8F9980B4 */  lw          $t9, %call16(fprintf)($gp)
/* 00B25C 0040B25C 24840020 */  addiu       $a0, $a0, 0x20
/* 00B260 0040B260 0320F809 */  jalr        $t9
/* 00B264 0040B264 24A517A8 */   addiu      $a1, $a1, %lo(STR_100017A8)
/* 00B268 0040B268 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B26C 0040B26C 00000000 */  nop
/* 00B270 0040B270 8F8382D0 */  lw          $v1, %got(if_stack)($gp)
/* 00B274 0040B274 00000000 */  nop
/* 00B278 0040B278 8C630000 */  lw          $v1, 0x0($v1)
/* 00B27C 0040B27C 00000000 */  nop
.L0040B280:
/* 00B280 0040B280 240E0006 */  addiu       $t6, $zero, 0x6
.L0040B284:
/* 00B284 0040B284 AC6E0010 */  sw          $t6, 0x10($v1)
/* 00B288 0040B288 8F8382D0 */  lw          $v1, %got(if_stack)($gp)
/* 00B28C 0040B28C 24060001 */  addiu       $a2, $zero, 0x1
/* 00B290 0040B290 8C630000 */  lw          $v1, 0x0($v1)
/* 00B294 0040B294 00000000 */  nop
/* 00B298 0040B298 8C62000C */  lw          $v0, 0xC($v1)
/* 00B29C 0040B29C 00000000 */  nop
/* 00B2A0 0040B2A0 10400008 */  beqz        $v0, .L0040B2C4
/* 00B2A4 0040B2A4 244F0001 */   addiu      $t7, $v0, 0x1
/* 00B2A8 0040B2A8 8F9981B8 */  lw          $t9, %call16(skip_if_group)($gp)
/* 00B2AC 0040B2AC 8FA40024 */  lw          $a0, 0x24($sp)
/* 00B2B0 0040B2B0 0320F809 */  jalr        $t9
/* 00B2B4 0040B2B4 00002825 */   move       $a1, $zero
/* 00B2B8 0040B2B8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B2BC 0040B2BC 1000000A */  b           .L0040B2E8
/* 00B2C0 0040B2C0 8FBF001C */   lw         $ra, 0x1C($sp)
.L0040B2C4:
/* 00B2C4 0040B2C4 AC6F000C */  sw          $t7, 0xC($v1)
/* 00B2C8 0040B2C8 8F9981D0 */  lw          $t9, %call16(output_line_command)($gp)
/* 00B2CC 0040B2CC 8FA50030 */  lw          $a1, 0x30($sp)
/* 00B2D0 0040B2D0 8FA40024 */  lw          $a0, 0x24($sp)
/* 00B2D4 0040B2D4 0320F809 */  jalr        $t9
/* 00B2D8 0040B2D8 00003825 */   move       $a3, $zero
/* 00B2DC 0040B2DC 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00B2E0 0040B2E0 00000000 */  nop
/* 00B2E4 0040B2E4 8FBF001C */  lw          $ra, 0x1C($sp)
.L0040B2E8:
/* 00B2E8 0040B2E8 27BD0028 */  addiu       $sp, $sp, 0x28
/* 00B2EC 0040B2EC 03E00008 */  jr          $ra
/* 00B2F0 0040B2F0 00000000 */   nop