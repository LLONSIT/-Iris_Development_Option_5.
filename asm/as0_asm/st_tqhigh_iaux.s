/* Generated by spimdisasm 1.10.3 */

glabel st_tqhigh_iaux # 197
# _gp_disp: 0xFBFA67C
.set noreorder; .cpload $t9; # .set reorder
/* 016450 00416450 8F998200 */  lw          $t9, %call16(st_paux_iaux)($gp)
/* 016454 00416454 27BDFFE0 */  addiu       $sp, $sp, -0x20
/* 016458 00416458 AFBF001C */  sw          $ra, 0x1C($sp)
/* 01645C 0041645C 0320F809 */  jalr        $t9
/* 016460 00416460 AFBC0018 */   sw         $gp, 0x18($sp)
/* 016464 00416464 944E0000 */  lhu         $t6, 0x0($v0)
/* 016468 00416468 8FBC0018 */  lw          $gp, 0x18($sp)
/* 01646C 0041646C 31CF000F */  andi        $t7, $t6, 0xF
/* 016470 00416470 11E00006 */  beqz        $t7, .L0041648C
/* 016474 00416474 00401825 */   move       $v1, $v0
/* 016478 00416478 94620000 */  lhu         $v0, 0x0($v1)
/* 01647C 0041647C 00000000 */  nop
/* 016480 00416480 3058000F */  andi        $t8, $v0, 0xF
/* 016484 00416484 10000033 */  b           .L00416554
/* 016488 00416488 03001025 */   move       $v0, $t8
.L0041648C:
/* 01648C 0041648C 90590001 */  lbu         $t9, 0x1($v0)
/* 016490 00416490 00000000 */  nop
/* 016494 00416494 00194102 */  srl         $t0, $t9, 4
/* 016498 00416498 11000006 */  beqz        $t0, .L004164B4
/* 01649C 0041649C 00000000 */   nop
/* 0164A0 004164A0 90620001 */  lbu         $v0, 0x1($v1)
/* 0164A4 004164A4 00000000 */  nop
/* 0164A8 004164A8 00024902 */  srl         $t1, $v0, 4
/* 0164AC 004164AC 10000029 */  b           .L00416554
/* 0164B0 004164B0 01201025 */   move       $v0, $t1
.L004164B4:
/* 0164B4 004164B4 8C4A0000 */  lw          $t2, 0x0($v0)
/* 0164B8 004164B8 00000000 */  nop
/* 0164BC 004164BC 314B000F */  andi        $t3, $t2, 0xF
/* 0164C0 004164C0 11600006 */  beqz        $t3, .L004164DC
/* 0164C4 004164C4 00000000 */   nop
/* 0164C8 004164C8 8C620000 */  lw          $v0, 0x0($v1)
/* 0164CC 004164CC 00000000 */  nop
/* 0164D0 004164D0 304C000F */  andi        $t4, $v0, 0xF
/* 0164D4 004164D4 1000001F */  b           .L00416554
/* 0164D8 004164D8 01801025 */   move       $v0, $t4
.L004164DC:
/* 0164DC 004164DC 904D0003 */  lbu         $t5, 0x3($v0)
/* 0164E0 004164E0 00000000 */  nop
/* 0164E4 004164E4 000D7102 */  srl         $t6, $t5, 4
/* 0164E8 004164E8 11C00006 */  beqz        $t6, .L00416504
/* 0164EC 004164EC 00000000 */   nop
/* 0164F0 004164F0 90620003 */  lbu         $v0, 0x3($v1)
/* 0164F4 004164F4 00000000 */  nop
/* 0164F8 004164F8 00027902 */  srl         $t7, $v0, 4
/* 0164FC 004164FC 10000015 */  b           .L00416554
/* 016500 00416500 01E01025 */   move       $v0, $t7
.L00416504:
/* 016504 00416504 90580002 */  lbu         $t8, 0x2($v0)
/* 016508 00416508 00000000 */  nop
/* 01650C 0041650C 3319000F */  andi        $t9, $t8, 0xF
/* 016510 00416510 13200006 */  beqz        $t9, .L0041652C
/* 016514 00416514 00000000 */   nop
/* 016518 00416518 90620002 */  lbu         $v0, 0x2($v1)
/* 01651C 0041651C 00000000 */  nop
/* 016520 00416520 3048000F */  andi        $t0, $v0, 0xF
/* 016524 00416524 1000000B */  b           .L00416554
/* 016528 00416528 01001025 */   move       $v0, $t0
.L0041652C:
/* 01652C 0041652C 94490002 */  lhu         $t1, 0x2($v0)
/* 016530 00416530 00001025 */  move        $v0, $zero
/* 016534 00416534 00095302 */  srl         $t2, $t1, 12
/* 016538 00416538 11400006 */  beqz        $t2, .L00416554
/* 01653C 0041653C 00000000 */   nop
/* 016540 00416540 94620002 */  lhu         $v0, 0x2($v1)
/* 016544 00416544 00000000 */  nop
/* 016548 00416548 00025B02 */  srl         $t3, $v0, 12
/* 01654C 0041654C 10000001 */  b           .L00416554
/* 016550 00416550 01601025 */   move       $v0, $t3
.L00416554:
/* 016554 00416554 8FBF001C */  lw          $ra, 0x1C($sp)
/* 016558 00416558 27BD0020 */  addiu       $sp, $sp, 0x20
/* 01655C 0041655C 03E00008 */  jr          $ra
/* 016560 00416560 00000000 */   nop