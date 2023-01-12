#include "libmld.h"
/*
00488BB0 st_currentifd
00488C1C st_setfd
00488C8C st_fdadd
0048932C st_auxadd
00489458 st_pdadd
004895E4 st_lineadd
0048970C st_stradd
00489AA0 st_str_iss
00489CA0 st_symadd
00489F38 st_ifd_pcfd
0048A194 st_paux_iaux
0048A5E8 _md_st_str_iss
0048A6B4 _md_st_currentifd
0048A86C _md_st_setfd
*/
CFDR* pcfdcur;


/*
0040BCA0 path_blockno
0048A260 st_str_ifd_iss
0048A330 st_ppd_ifd_isym
0048A954 st_extadd
0048B120 st_endallfiles
0048B2F0 st_fileend
0048BA18 st_procend
0048BC7C st_procbegin
0048D0E0 st_readst
0048E1D8 st_writest
*/
CFDR *st_pcfd_ifd(int ifd) {
    if (st_pchdr->pcfd == NULL) {
        _md_st_internal("routine: you didn't initialize with st_cuinit or st_readst\n", ifd);
    }
    if (ifd < 0 || ifd >= st_pchdr->cfd) {
        _md_st_internal("st_pcfd_ifd: ifd (%d) out of range\n", ifd);
    }
    return &st_pchdr->pcfd[ifd];
}

/*
0040BAE0 func_0040BAE0
0040BCA0 path_blockno
0048B120 st_endallfiles
0048B2F0 st_fileend
0048B83C st_blockend
0048BA18 st_procend
0048BE8C st_sym_idn
0048BF74 st_str_idn
0048C008 st_fglobal_idn
0048C0B0 st_psym_idn_offset
0048C494 st_fixiss
*/
SYMR *st_psym_ifd_isym(int ifd, int isym) {

    if (st_pchdr->pcfd == NULL) {
        _md_st_internal("routine: you didn't initialize with st_cuinit or st_readst\n");
    }
    if (ifd == ST_EXTIFD) {
        return &st_pext_iext(isym)->asym;
    }

    if (ifd < 0 || isym < 0 || ifd >= st_pchdr->cfd || isym >= st_pchdr->pcfd[ifd].pfd->csym) {
        _md_st_internal("st_psym_ifd_isym: ifd (%d) or isym (%d) out of range\n", ifd, isym);
    }
    return &st_pchdr->pcfd[ifd].psym[isym];
}

#ifdef BLAH
__asm__(R""(
.set noat
.set noreorder

glabel st_paux_iaux
    .ent st_paux_iaux
    # 0048BA18 st_procend
    # 0048C6F0 st_tqhigh_iaux
    # 0048C7CC st_shifttq
    # 0048CBC4 st_changeaux
    # 0048CC08 st_addtq
    # 0048CD18 st_changeauxrndx
    # 0048CF54 st_auxbtsize
    # 0048CFF8 st_addcontinued
/* 0048A194 3C1C0FB9 */  .cpload $t9
/* 0048A198 279C00FC */  
/* 0048A19C 0399E021 */  
/* 0048A1A0 8F8E8CB8 */  lw     $t6, %got(st_pchdr)($gp)
/* 0048A1A4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0048A1A8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0048A1AC 8DCE0000 */  lw    $t6, ($t6)
/* 0048A1B0 AFBC0018 */  sw    $gp, 0x18($sp)
/* 0048A1B4 AFA40020 */  sw    $a0, 0x20($sp)
/* 0048A1B8 8DCF0004 */  lw    $t7, 4($t6)
/* 0048A1BC 15E00006 */  bnez  $t7, .L0048A1D8
/* 0048A1C0 00000000 */   nop   
/* 0048A1C4 8F9987D0 */  lw    $t9, %call16(_md_st_internal)($gp)
/* 0048A1C8 8F848044 */  lw    $a0, %got(D_10011A10)($gp)
/* 0048A1CC 0320F809 */  jalr  $t9
/* 0048A1D0 24841A10 */   addiu $a0, %lo(D_10011A10) # addiu $a0, $a0, 0x1a10
/* 0048A1D4 8FBC0018 */  lw    $gp, 0x18($sp)
.L0048A1D8:
/* 0048A1D8 8F988CBC */  lw     $t8, %got(pcfdcur)($gp)
/* 0048A1DC 8F180000 */  lw    $t8, ($t8)
/* 0048A1E0 57000007 */  bnezl $t8, .L0048A200
/* 0048A1E4 8FB90020 */   lw    $t9, 0x20($sp)
/* 0048A1E8 8F9987D0 */  lw    $t9, %call16(_md_st_internal)($gp)
/* 0048A1EC 8F848044 */  lw    $a0, %got(D_10011A4C)($gp)
/* 0048A1F0 0320F809 */  jalr  $t9
/* 0048A1F4 24841A4C */   addiu $a0, %lo(D_10011A4C) # addiu $a0, $a0, 0x1a4c
/* 0048A1F8 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0048A1FC 8FB90020 */  lw    $t9, 0x20($sp)
.L0048A200:
/* 0048A200 07200008 */  bltz  $t9, .L0048A224
/* 0048A204 00000000 */   nop   
/* 0048A208 8F838CBC */  lw     $v1, %got(pcfdcur)($gp)
/* 0048A20C 8C630000 */  lw    $v1, ($v1)
/* 0048A210 8C680000 */  lw    $t0, ($v1)
/* 0048A214 8D090030 */  lw    $t1, 0x30($t0)
/* 0048A218 0329082A */  slt   $at, $t9, $t1
/* 0048A21C 5420000A */  bnezl $at, .L0048A248
/* 0048A220 8FAB0020 */   lw    $t3, 0x20($sp)
.L0048A224:
/* 0048A224 8F9987D0 */  lw    $t9, %call16(_md_st_internal)($gp)
/* 0048A228 8F848044 */  lw    $a0, %got(RO_1000EF2C)($gp)
/* 0048A22C 8FA50020 */  lw    $a1, 0x20($sp)
/* 0048A230 0320F809 */  jalr  $t9
/* 0048A234 2484EF2C */   addiu $a0, %lo(RO_1000EF2C) # addiu $a0, $a0, -0x10d4
/* 0048A238 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0048A23C 8F838CBC */  lw     $v1, %got(pcfdcur)($gp)
/* 0048A240 8C630000 */  lw    $v1, ($v1)
/* 0048A244 8FAB0020 */  lw    $t3, 0x20($sp)
.L0048A248:
/* 0048A248 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0048A24C 8C6A000C */  lw    $t2, 0xc($v1)
/* 0048A250 000B6080 */  sll   $t4, $t3, 2
/* 0048A254 27BD0020 */  addiu $sp, $sp, 0x20
/* 0048A258 03E00008 */  jr    $ra
/* 0048A25C 014C1021 */   addu  $v0, $t2, $t4
    .type st_paux_iaux, @function
    .size st_paux_iaux, .-st_paux_iaux
    .end st_paux_iaux
)"");
#endif

/*
0040BAE0 func_0040BAE0
0040BCA0 path_blockno
0048AE84 st_filebegin
0048BE8C st_sym_idn
0048BF74 st_str_idn
0048C56C st_file_idn
*/
char *st_str_ifd_iss(int ifd, int iss) {
    CFDR *cfd;

    if (st_pchdr->pcfd == NULL) {
        _md_st_internal("routine: you didn't initialize with st_cuinit or st_readst\n");
    }

    if (ifd == ST_EXTIFD) {
        return _md_st_str_extiss(iss);
    }

    cfd = st_pcfd_ifd(ifd);
    if (cfd->pfd->cbSs != 0 && iss < cfd->pfd->cbSs) {
        return &cfd->pss[iss];
    }
    return NULL;
}

#ifdef BLAH
__asm__(R""(
.set noat
.set noreorder

glabel st_ppd_ifd_isym
    .ent st_ppd_ifd_isym
/* 0048A330 3C1C0FB9 */  .cpload $t9
/* 0048A334 279CFF60 */  
/* 0048A338 0399E021 */  
/* 0048A33C 8F8E8CB8 */  lw     $t6, %got(st_pchdr)($gp)
/* 0048A340 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0048A344 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0048A348 8DCE0000 */  lw    $t6, ($t6)
/* 0048A34C AFBC0018 */  sw    $gp, 0x18($sp)
/* 0048A350 AFA40020 */  sw    $a0, 0x20($sp)
/* 0048A354 8DCF0004 */  lw    $t7, 4($t6)
/* 0048A358 00A03825 */  move  $a3, $a1
/* 0048A35C 15E00008 */  bnez  $t7, .L0048A380
/* 0048A360 00000000 */   nop   
/* 0048A364 8F9987D0 */  lw    $t9, %call16(_md_st_internal)($gp)
/* 0048A368 8F848044 */  lw    $a0, %got(D_10011A10)($gp)
/* 0048A36C AFA50024 */  sw    $a1, 0x24($sp)
/* 0048A370 0320F809 */  jalr  $t9
/* 0048A374 24841A10 */   addiu $a0, %lo(D_10011A10) # addiu $a0, $a0, 0x1a10
/* 0048A378 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0048A37C 8FA70024 */  lw    $a3, 0x24($sp)
.L0048A380:
/* 0048A380 8F9987BC */  lw    $t9, %call16(st_pcfd_ifd)($gp)
/* 0048A384 8FA40020 */  lw    $a0, 0x20($sp)
/* 0048A388 AFA70024 */  sw    $a3, 0x24($sp)
/* 0048A38C 0320F809 */  jalr  $t9
/* 0048A390 00000000 */   nop   
/* 0048A394 8C580000 */  lw    $t8, ($v0)
/* 0048A398 8FBC0018 */  lw    $gp, 0x18($sp)
/* 0048A39C 8FA70024 */  lw    $a3, 0x24($sp)
/* 0048A3A0 9719002A */  lhu   $t9, 0x2a($t8)
/* 0048A3A4 00403025 */  move  $a2, $v0
/* 0048A3A8 00001825 */  move  $v1, $zero
/* 0048A3AC 13200011 */  beqz  $t9, .L0048A3F4
/* 0048A3B0 8FBF001C */   lw    $ra, 0x1c($sp)
/* 0048A3B4 00002825 */  move  $a1, $zero
/* 0048A3B8 8C440034 */  lw    $a0, 0x34($v0)
/* 0048A3BC 8C880004 */  lw    $t0, 4($a0)
.L0048A3C0:
/* 0048A3C0 54E80005 */  bnel  $a3, $t0, .L0048A3D8
/* 0048A3C4 8CCA0000 */   lw    $t2, ($a2)
/* 0048A3C8 8CC90034 */  lw    $t1, 0x34($a2)
/* 0048A3CC 1000000A */  b     .L0048A3F8
/* 0048A3D0 01251021 */   addu  $v0, $t1, $a1
/* 0048A3D4 8CCA0000 */  lw    $t2, ($a2)
.L0048A3D8:
/* 0048A3D8 24630001 */  addiu $v1, $v1, 1
/* 0048A3DC 24A50034 */  addiu $a1, $a1, 0x34
/* 0048A3E0 954B002A */  lhu   $t3, 0x2a($t2)
/* 0048A3E4 24840034 */  addiu $a0, $a0, 0x34
/* 0048A3E8 006B082B */  sltu  $at, $v1, $t3
/* 0048A3EC 5420FFF4 */  bnezl $at, .L0048A3C0
/* 0048A3F0 8C880004 */   lw    $t0, 4($a0)
.L0048A3F4:
/* 0048A3F4 00001025 */  move  $v0, $zero
.L0048A3F8:
/* 0048A3F8 03E00008 */  jr    $ra
/* 0048A3FC 27BD0020 */   addiu $sp, $sp, 0x20
    .type st_ppd_ifd_isym, @function
    .size st_ppd_ifd_isym, .-st_ppd_ifd_isym
    .end st_ppd_ifd_isym
)"");
#endif
