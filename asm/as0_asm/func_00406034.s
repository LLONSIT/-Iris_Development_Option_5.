/* Generated by spimdisasm 1.10.3 */

glabel func_00406034 # 22
# _gp_disp: 0xFC0AA8C
.set noreorder; .cpload $t9; # .set reorder
/* 006040 00406040 27BDFFA8 */  addiu       $sp, $sp, -0x58
/* 006044 00406044 8F8E8344 */  lw          $t6, %got(LastLabel)($gp)
/* 006048 00406048 AFBF003C */  sw          $ra, 0x3C($sp)
/* 00604C 0040604C 8DCE0000 */  lw          $t6, 0x0($t6)
/* 006050 00406050 AFBE0038 */  sw          $fp, 0x38($sp)
/* 006054 00406054 AFBC0034 */  sw          $gp, 0x34($sp)
/* 006058 00406058 AFB70030 */  sw          $s7, 0x30($sp)
/* 00605C 0040605C AFB6002C */  sw          $s6, 0x2C($sp)
/* 006060 00406060 AFB50028 */  sw          $s5, 0x28($sp)
/* 006064 00406064 AFB40024 */  sw          $s4, 0x24($sp)
/* 006068 00406068 AFB30020 */  sw          $s3, 0x20($sp)
/* 00606C 0040606C AFB2001C */  sw          $s2, 0x1C($sp)
/* 006070 00406070 AFB10018 */  sw          $s1, 0x18($sp)
/* 006074 00406074 11C00008 */  beqz        $t6, .L00406098
/* 006078 00406078 AFB00014 */   sw         $s0, 0x14($sp)
/* 00607C 0040607C 8F998014 */  lw          $t9, %got(func_00405574)($gp)
/* 006080 00406080 24040002 */  addiu       $a0, $zero, 0x2
/* 006084 00406084 27395574 */  addiu       $t9, $t9, %lo(func_00405574)
/* 006088 00406088 0320F809 */  jalr        $t9
/* 00608C 0040608C 00000000 */   nop
/* 006090 00406090 8FBC0034 */  lw          $gp, 0x34($sp)
/* 006094 00406094 00000000 */  nop
.L00406098:
/* 006098 00406098 8F9E8378 */  lw          $fp, %got(Tokench)($gp)
/* 00609C 0040609C 8F96833C */  lw          $s6, %got(isStruct)($gp)
/* 0060A0 004060A0 8F918340 */  lw          $s1, %got(StructOrg)($gp)
/* 0060A4 004060A4 8F9083A0 */  lw          $s0, %got(binasm_rec)($gp)
/* 0060A8 004060A8 24170023 */  addiu       $s7, $zero, 0x23
/* 0060AC 004060AC 27B50050 */  addiu       $s5, $sp, 0x50
/* 0060B0 004060B0 27B40048 */  addiu       $s4, $sp, 0x48
/* 0060B4 004060B4 27B3004C */  addiu       $s3, $sp, 0x4C
/* 0060B8 004060B8 27B20054 */  addiu       $s2, $sp, 0x54
.L004060BC:
/* 0060BC 004060BC 8F998014 */  lw          $t9, %got(func_00405DE4)($gp)
/* 0060C0 004060C0 240F0001 */  addiu       $t7, $zero, 0x1
/* 0060C4 004060C4 27395DE4 */  addiu       $t9, $t9, %lo(func_00405DE4)
/* 0060C8 004060C8 AFA0004C */  sw          $zero, 0x4C($sp)
/* 0060CC 004060CC AFA00048 */  sw          $zero, 0x48($sp)
/* 0060D0 004060D0 AFAF0050 */  sw          $t7, 0x50($sp)
/* 0060D4 004060D4 AFA00054 */  sw          $zero, 0x54($sp)
/* 0060D8 004060D8 02402025 */  move        $a0, $s2
/* 0060DC 004060DC 02602825 */  move        $a1, $s3
/* 0060E0 004060E0 02803025 */  move        $a2, $s4
/* 0060E4 004060E4 0320F809 */  jalr        $t9
/* 0060E8 004060E8 02A03825 */   move       $a3, $s5
/* 0060EC 004060EC 8FBC0034 */  lw          $gp, 0x34($sp)
/* 0060F0 004060F0 10400036 */  beqz        $v0, .L004061CC
/* 0060F4 004060F4 8FBF003C */   lw         $ra, 0x3C($sp)
/* 0060F8 004060F8 8ED80000 */  lw          $t8, 0x0($s6)
/* 0060FC 004060FC 8FAA0054 */  lw          $t2, 0x54($sp)
/* 006100 00406100 1300000F */  beqz        $t8, .L00406140
/* 006104 00406104 00000000 */   nop
/* 006108 00406108 8FA20050 */  lw          $v0, 0x50($sp)
/* 00610C 0040610C 00000000 */  nop
/* 006110 00406110 0002C880 */  sll         $t9, $v0, 2
/* 006114 00406114 2B210004 */  slti        $at, $t9, 0x4
/* 006118 00406118 10200003 */  beqz        $at, .L00406128
/* 00611C 0040611C 03201025 */   move       $v0, $t9
/* 006120 00406120 10000002 */  b           .L0040612C
/* 006124 00406124 24030004 */   addiu      $v1, $zero, 0x4
.L00406128:
/* 006128 00406128 00401825 */  move        $v1, $v0
.L0040612C:
/* 00612C 0040612C 8E280000 */  lw          $t0, 0x0($s1)
/* 006130 00406130 00000000 */  nop
/* 006134 00406134 00684821 */  addu        $t1, $v1, $t0
/* 006138 00406138 1000001F */  b           .L004061B8
/* 00613C 0040613C AE290000 */   sw         $t1, 0x0($s1)
.L00406140:
/* 006140 00406140 920B0005 */  lbu         $t3, 0x5($s0)
/* 006144 00406144 8FAE004C */  lw          $t6, 0x4C($sp)
/* 006148 00406148 8FAF0050 */  lw          $t7, 0x50($sp)
/* 00614C 0040614C 316CFFC0 */  andi        $t4, $t3, 0xFFC0
/* 006150 00406150 358D003B */  ori         $t5, $t4, 0x3B
/* 006154 00406154 AE0A0000 */  sw          $t2, 0x0($s0)
/* 006158 00406158 A20D0005 */  sb          $t5, 0x5($s0)
/* 00615C 0040615C AE0E0008 */  sw          $t6, 0x8($s0)
/* 006160 00406160 AE0F000C */  sw          $t7, 0xC($s0)
/* 006164 00406164 8F9981A8 */  lw          $t9, %call16(put_binasmfyle)($gp)
/* 006168 00406168 00000000 */  nop
/* 00616C 0040616C 0320F809 */  jalr        $t9
/* 006170 00406170 00000000 */   nop
/* 006174 00406174 92190005 */  lbu         $t9, 0x5($s0)
/* 006178 00406178 8FB80054 */  lw          $t8, 0x54($sp)
/* 00617C 0040617C 8FAA0048 */  lw          $t2, 0x48($sp)
/* 006180 00406180 8FAB0050 */  lw          $t3, 0x50($sp)
/* 006184 00406184 3328FFC0 */  andi        $t0, $t9, 0xFFC0
/* 006188 00406188 8FBC0034 */  lw          $gp, 0x34($sp)
/* 00618C 0040618C 3509003B */  ori         $t1, $t0, 0x3B
/* 006190 00406190 A2090005 */  sb          $t1, 0x5($s0)
/* 006194 00406194 AE180000 */  sw          $t8, 0x0($s0)
/* 006198 00406198 AE0A0008 */  sw          $t2, 0x8($s0)
/* 00619C 0040619C AE0B000C */  sw          $t3, 0xC($s0)
/* 0061A0 004061A0 8F9981A8 */  lw          $t9, %call16(put_binasmfyle)($gp)
/* 0061A4 004061A4 00000000 */  nop
/* 0061A8 004061A8 0320F809 */  jalr        $t9
/* 0061AC 004061AC 00000000 */   nop
/* 0061B0 004061B0 8FBC0034 */  lw          $gp, 0x34($sp)
/* 0061B4 004061B4 00000000 */  nop
.L004061B8:
/* 0061B8 004061B8 93CC0000 */  lbu         $t4, 0x0($fp)
/* 0061BC 004061BC 00000000 */  nop
/* 0061C0 004061C0 16ECFFBE */  bne         $s7, $t4, .L004060BC
/* 0061C4 004061C4 00000000 */   nop
/* 0061C8 004061C8 8FBF003C */  lw          $ra, 0x3C($sp)
.L004061CC:
/* 0061CC 004061CC 8FB00014 */  lw          $s0, 0x14($sp)
/* 0061D0 004061D0 8FB10018 */  lw          $s1, 0x18($sp)
/* 0061D4 004061D4 8FB2001C */  lw          $s2, 0x1C($sp)
/* 0061D8 004061D8 8FB30020 */  lw          $s3, 0x20($sp)
/* 0061DC 004061DC 8FB40024 */  lw          $s4, 0x24($sp)
/* 0061E0 004061E0 8FB50028 */  lw          $s5, 0x28($sp)
/* 0061E4 004061E4 8FB6002C */  lw          $s6, 0x2C($sp)
/* 0061E8 004061E8 8FB70030 */  lw          $s7, 0x30($sp)
/* 0061EC 004061EC 8FBE0038 */  lw          $fp, 0x38($sp)
/* 0061F0 004061F0 03E00008 */  jr          $ra
/* 0061F4 004061F4 27BD0058 */   addiu      $sp, $sp, 0x58