#ifndef	__GL_PGET_H__
#define	__GL_PGET_H__
/**************************************************************************
 *									  *
 * 		 Copyright (C) 1984, Silicon Graphics, Inc.		  *
 *									  *
 *  These coded instructions, statements, and computer programs  contain  *
 *  unpublished  proprietary  information of Silicon Graphics, Inc., and  *
 *  are protected by Federal copyright law.  They  may  not be disclosed  *
 *  to  third  parties  or copied or duplicated in any form, in whole or  *
 *  in part, without the prior written consent of Silicon Graphics, Inc.  *
 *									  *
 **************************************************************************/


/* definitions for returned values of get* routines */


/* bits in value returned by getbuffer */

const BCKBUFFER 	= 16#1;
const FRNTBUFFER 	= 16#2;
const DRAWZBUFFER 	= 16#4;

/* values returned by getdisplaymode */

const DMRGB 		= 0; 	/* RGB single buffer */
const DMSINGLE 		= 1; 	/* color map single buffer */
const DMDOUBLE 		= 2; 	/* color map double buffer */
const DMRGBDOUBLE 	= 5; 	/* RGB double buffer */

/* values returned by getmonitor */

const HZ30 		= 0; 	/* 30 HZ monitor */
const HZ60 		= 1; 	/* std 60 HZ monitor */
const NTSC 		= 2; 	/* RS 170 monitor */
const HDTV 		= 3; 	/* high definition TV */
const VGA 		= 4; 	/* VGA 640 x 496 non'laced */
const IRIS3K 		= 5; 	/* 3000 series format 1024 x 768 */
const PR60 		= 6; 	/* 1/4 resolution HZ60 (replicated) */
const PAL 		= 9; 	/* PAL/SECAM monitor */
const HZ30_SG 		= 11; 	/* 30 HZ with sync on green */
const A343 		= 14; 	/* RS 343 monitor GT 959 vis lines */
const STR_RECT 		= 15; 	/* StereoGraphics Stereo, 12816#492x2 */
const VOF0 		= 16; 	/* User defined video format 0 */
const VOF1 		= 17; 	/* User defined video format 1 */
const VOF2 		= 18; 	/* User defined video format 2 */
const VOF3 		= 19; 	/* User defined video format 3 */
const SGI0 		= 20; 	/* SGI format 650 x 650 non'laced */
const SGI1 		= 21; 	/* SGI format 1280 x 485 'laced */
const SGI2 		= 22; 	/* SGI format 645 x 485 non'laced */
const HZ72 		= 23; 	/* multi-scan 72 HZ monitor */
const HZ50 		= 24; 	/* 50HZ monitor timing*/
const HZ76 		= 25; 	/* 76HZ monitor timing*/
const HZ70 		= 26; 	/* 70HZ monitor timing*/
const STR_BOT 		= 27; 	/* Stereo, bottom buffer primary */
const STR_TOP 		= 28; 	/* Stereo, top buffer primary */
const PRESENTER 	= 29; 	/* IndyPresenter */
const HZ48 		= 30; 	/* 48HZ, framelock to movie cameras */
const SGI_VIDEO_FORMAT_OTHER = 999; 	/* undefined video format */
/* VOF IDs from 1000 on are reserved for custom customer codes */

/* values returned by getvideo(GLVIDEO_REG) */

const GL_VIDEO_REG 	= 16#00800000;
const GLV_GENLOCK 	= 16#00000001; 	/* genlock to external signal */
const GLV_UNBLANK 	= 16#00000002; 	/* unblank the screen */
const GLV_SRED 		= 16#00000004; 	/* provide sync on red */
const GLV_SGREEN 	= 16#00000008; 	/* provide sync on green */
const GLV_SBLUE 	= 16#00000010; 	/* provide sync on blue */
const GLV_SALPHA 	= 16#00000020; 	/* provide sync on alpha */
const GLV_TTLGENLOCK 	= 16#00000080; 	/* expect TTL level genlock source */
					/* otherwise, its normal video level */
const GLV_TTLSYNC 	= GLV_TTLGENLOCK; 	/* OBSOLETE, keep for compatibility */
const GLV_GREENGENLOCK 	= 16#0000100; 	/* expect genlock source on green input */
					/* otherwise, its on sync input */

/* individual hit bits returned by gethitcode */

const LEFTPLANE 	= 16#0001;
const RIGHTPLANE 	= 16#0002;
const BOTTOMPLANE 	= 16#0004;
const TOPPLANE 		= 16#0008;
const NEARPLANE 	= 16#0010;
const FARPLANE 		= 16#0020;


/* obsolete symbols */

#define GETDEF 		 __GL_PGET_H__

const NOBUFFER 		= 16#0;
const BOTHBUFFERS 	= 16#3;

const DMINTENSITYSINGLE = 3;
const DMINTENSITYDOUBLE = 4;

const MONSPECIAL 	= 16#20;
const MONA 		= 5;
const MONB 		= 6;
const MONC 		= 7;
const MOND 		= 8;

const MON_ALL 		= 12;
const MON_GEN_ALL 	= 13;

const CMAPMULTI 	= 0;
const CMAPONE 		= 1;

#endif	/* !__GL_PGET_H__ */
