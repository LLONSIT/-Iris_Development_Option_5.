#include <stdio.h>
#include <stdlib.h>
#include <errno.h>

int dont_repeat_files;
int pedantic;
int instack;
int indepth;
int savestring;

//should rename error as acpp_error

void do_sccs(void) {
    if (pedantic != 0) {
        error("ANSI C does not allow #sccs");
    }
}


__asm__(R""(

.set noat

do_once:
# _gp_disp: 0xFC007B4
.set noreorder; .cpload $t9; # .set reorder
/* 00A078 0040A078 8F83829C */  lw          $v1, %got(indepth)($gp)
/* 00A07C 0040A07C 27BDFFD0 */  addiu       $sp, $sp, -0x30
/* 00A080 0040A080 8C630000 */  lw          $v1, 0x0($v1)
/* 00A084 0040A084 AFBF001C */  sw          $ra, 0x1C($sp)
/* 00A088 0040A088 AFBC0018 */  sw          $gp, 0x18($sp)
/* 00A08C 0040A08C 04600010 */  bltz        $v1, .L0040A0D0
/* 00A090 0040A090 00002825 */   move       $a1, $zero
/* 00A094 0040A094 000370C0 */  sll         $t6, $v1, 3
/* 00A098 0040A098 01C37021 */  addu        $t6, $t6, $v1
/* 00A09C 0040A09C 8F838340 */  lw          $v1, %got(instack)($gp)
/* 00A0A0 0040A0A0 000E7080 */  sll         $t6, $t6, 2
/* 00A0A4 0040A0A4 01C31021 */  addu        $v0, $t6, $v1
.L0040A0A8:
/* 00A0A8 0040A0A8 8C580000 */  lw          $t8, 0x0($v0)
/* 00A0AC 0040A0AC 00000000 */  nop
/* 00A0B0 0040A0B0 13000003 */  beqz        $t8, .L0040A0C0
/* 00A0B4 0040A0B4 00000000 */   nop
/* 00A0B8 0040A0B8 10000005 */  b           .L0040A0D0
/* 00A0BC 0040A0BC 00402825 */   move       $a1, $v0
.L0040A0C0:
/* 00A0C0 0040A0C0 2442FFDC */  addiu       $v0, $v0, -0x24
/* 00A0C4 0040A0C4 0043082B */  sltu        $at, $v0, $v1
/* 00A0C8 0040A0C8 1020FFF7 */  beqz        $at, .L0040A0A8
/* 00A0CC 0040A0CC 00000000 */   nop
.L0040A0D0:
/* 00A0D0 0040A0D0 10A00015 */  beqz        $a1, .L0040A128
/* 00A0D4 0040A0D4 8FBF001C */   lw         $ra, 0x1C($sp)
/* 00A0D8 0040A0D8 8F998248 */  lw          $t9, %call16(xmalloc)($gp)
/* 00A0DC 0040A0DC 24040008 */  addiu       $a0, $zero, 0x8
/* 00A0E0 0040A0E0 0320F809 */  jalr        $t9
/* 00A0E4 0040A0E4 AFA50028 */   sw         $a1, 0x28($sp)
/* 00A0E8 0040A0E8 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A0EC 0040A0EC 8FA50028 */  lw          $a1, 0x28($sp)
/* 00A0F0 0040A0F0 8F8382B8 */  lw          $v1, %got(dont_repeat_files)($gp)
/* 00A0F4 0040A0F4 AFA20024 */  sw          $v0, 0x24($sp)
/* 00A0F8 0040A0F8 8C790000 */  lw          $t9, 0x0($v1)
/* 00A0FC 0040A0FC 00000000 */  nop
/* 00A100 0040A100 AC590000 */  sw          $t9, 0x0($v0)
/* 00A104 0040A104 AC620000 */  sw          $v0, 0x0($v1)
/* 00A108 0040A108 8F998254 */  lw          $t9, %call16(savestring)($gp)
/* 00A10C 0040A10C 8CA40000 */  lw          $a0, 0x0($a1)
/* 00A110 0040A110 0320F809 */  jalr        $t9
/* 00A114 0040A114 00000000 */   nop
/* 00A118 0040A118 8FA80024 */  lw          $t0, 0x24($sp)
/* 00A11C 0040A11C 8FBC0018 */  lw          $gp, 0x18($sp)
/* 00A120 0040A120 AD020004 */  sw          $v0, 0x4($t0)
/* 00A124 0040A124 8FBF001C */  lw          $ra, 0x1C($sp)
.L0040A128:
/* 00A128 0040A128 27BD0030 */  addiu       $sp, $sp, 0x30
/* 00A12C 0040A12C 03E00008 */  jr          $ra
/* 00A130 0040A130 00000000 */   nop
)"");
