/* Generated by spimdisasm 1.10.3 */

glabel func_00404108 # 6
# _gp_disp: 0xFC0C9B8
.set noreorder; .cpload $t9; # .set reorder
/* 004114 00404114 27BDFFD8 */  addiu       $sp, $sp, -0x28
/* 004118 00404118 8F998168 */  lw          $t9, %call16(hash)($gp)
/* 00411C 0040411C AFBF001C */  sw          $ra, 0x1C($sp)
/* 004120 00404120 AFA40028 */  sw          $a0, 0x28($sp)
/* 004124 00404124 AFBC0018 */  sw          $gp, 0x18($sp)
/* 004128 00404128 AFA5002C */  sw          $a1, 0x2C($sp)
/* 00412C 0040412C AFA60030 */  sw          $a2, 0x30($sp)
/* 004130 00404130 0320F809 */  jalr        $t9
/* 004134 00404134 00A02025 */   move       $a0, $a1
/* 004138 00404138 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00413C 0040413C AFA20020 */  sw          $v0, 0x20($sp)
/* 004140 00404140 8F998184 */  lw          $t9, %call16(alloc_new_sym)($gp)
/* 004144 00404144 00000000 */  nop
/* 004148 00404148 0320F809 */  jalr        $t9
/* 00414C 0040414C 00000000 */   nop
/* 004150 00404150 8FBC0018 */  lw          $gp, 0x18($sp)
/* 004154 00404154 8FAE0020 */  lw          $t6, 0x20($sp)
/* 004158 00404158 8F988394 */  lw          $t8, %got(hashtable)($gp)
/* 00415C 0040415C 000E7880 */  sll         $t7, $t6, 2
/* 004160 00404160 01F81821 */  addu        $v1, $t7, $t8
/* 004164 00404164 8C790000 */  lw          $t9, 0x0($v1)
/* 004168 00404168 00000000 */  nop
/* 00416C 0040416C AC590000 */  sw          $t9, 0x0($v0)
/* 004170 00404170 8FA8002C */  lw          $t0, 0x2C($sp)
/* 004174 00404174 AC40000C */  sw          $zero, 0xC($v0)
/* 004178 00404178 AC400010 */  sw          $zero, 0x10($v0)
/* 00417C 0040417C AC480004 */  sw          $t0, 0x4($v0)
/* 004180 00404180 8FA90030 */  lw          $t1, 0x30($sp)
/* 004184 00404184 00000000 */  nop
/* 004188 00404188 AC490008 */  sw          $t1, 0x8($v0)
/* 00418C 0040418C 8FAA0028 */  lw          $t2, 0x28($sp)
/* 004190 00404190 00000000 */  nop
/* 004194 00404194 AC4A0014 */  sw          $t2, 0x14($v0)
/* 004198 00404198 8FBF001C */  lw          $ra, 0x1C($sp)
/* 00419C 0040419C AC620000 */  sw          $v0, 0x0($v1)
/* 0041A0 004041A0 03E00008 */  jr          $ra
/* 0041A4 004041A4 27BD0028 */   addiu      $sp, $sp, 0x28