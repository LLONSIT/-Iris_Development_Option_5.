#ifndef __GL_PGL_H__
#define __GL_PGL_H__
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


/* Graphics Libary constants */





/* various hardware/software limits */
const ATTRIBSTACKDEPTH 	= 10;
const VPSTACKDEPTH 	= 8;
const MATRIXSTACKDEPTH 	= 32;
const NAMESTACKDEPTH 	= 1025;

/* special pre-defined tags */
const STARTTAG 		= -2;
const ENDTAG 		= -3;

/* names for colors in color map loaded by greset */
const BLACK 		= 0;
const RED 		= 1;
const GREEN 		= 2;
const YELLOW 		= 3;
const BLUE 		= 4;
const MAGENTA 		= 5;
const CYAN 		= 6;
const WHITE 		= 7;

/* popup colors */
const PUP_CLEAR 	= 0;
const PUP_COLOR 	= 1;
const PUP_BLACK 	= 2;
const PUP_WHITE 	= 3;

/* defines for drawmode and mswapbuffers*/
const NORMALDRAW 	= 16#010;
const PUPDRAW 		= 16#020;
const OVERDRAW 		= 16#040;
const UNDERDRAW 	= 16#080;
const CURSORDRAW 	= 16#100;
const DUALDRAW 		= 16#200; 	/* obselete skywriter only */
const GANGDRAW 		= 16#200; 	/* not available on skywriter */
const HYPER0 		= 16#10000;
const HYPER1 		= 16#20000;
const HYPER2 		= 16#40000;

/* defines for defpattern */
const PATTERN_16 	= 16;
const PATTERN_32 	= 32;
const PATTERN_64 	= 64;

const PATTERN_16_SIZE 	= 16;
const PATTERN_32_SIZE 	= 64;
const PATTERN_64_SIZE 	= 256;

/* defines for readsource */
const SRC_NULL 		= -1;
const SRC_AUTO 		= 0;
const SRC_FRONT 	= 1;
const SRC_FRONTLEFT 	= 1;
const SRC_BACK 		= 2;
const SRC_BACKLEFT 	= 2;
const SRC_ZBUFFER 	= 3;
const SRC_PUP 		= 4;
const SRC_OVER 		= 5;
const SRC_UNDER 	= 6;
const SRC_FRAMEGRABBER 	= 7;
const SRC_FRONTRIGHT 	= 8;
const SRC_BACKRIGHT 	= 9;
const SRC_ILBUFFER_1 	= 1000;
const SRC_ILBUFFER_2 	= 1001;
const SRC_ILBUFFER_3 	= 1002;
const SRC_ILBUFFER_4 	= 1003;
const SRC_ILBUFFER_5 	= 1004;
const SRC_ILBUFFER_6 	= 1005;
const SRC_ILBUFFER_7 	= 1006;
const SRC_ILBUFFER_8 	= 1007;
const SRC_ILBUFFER_9 	= 1008;
const SRC_ILBUFFER_10 	= 1009;
const SRC_ILBUFFER_11 	= 1010;
const SRC_ILBUFFER_12 	= 1011;
const SRC_ILBUFFER_13 	= 1012;
const SRC_ILBUFFER_14 	= 1013;
const SRC_ILBUFFER_15 	= 1014;
const SRC_ILBUFFER_16 	= 1015;

/* minmax */
const MINMAX_ENABLE 	= 0;
const MINMAX_DISABLE 	= 1;
const MINMAX_INIT 	= 2;

/* histogram */
const HIST_ENABLE 	= 0;
const HIST_DISABLE 	= 1;
const HIST_CLEAR 	= 2;

/* defines for readcomponent */
const RC_ABGR 		= 4;
const RC_ALPHA 		= 0;
const RC_BLUE 		= 1;
const RC_GREEN 		= 2;
const RC_RED 		= 3;

/* defines for blendfunction */
const BF_ZERO 		= 0;
const BF_ONE 		= 1;
const BF_DC 		= 2;
const BF_SC 		= 2;
const BF_MDC 		= 3;
const BF_MSC 		= 3;
const BF_SA 		= 4;
const BF_MSA 		= 5;
const BF_DA 		= 6;
const BF_MDA 		= 7;
const BF_MIN_SA_MDA 	= 8;
const BF_CA 		= 9;
const BF_MCA 		= 10;
const BF_CC 		= 11;
const BF_MCC 		= 12;
const BF_MIN 		= 13;
const BF_MAX 		= 14;

/* defines for afunction */
const AF_NEVER 		= 0;
const AF_LESS 		= 1;
const AF_EQUAL 		= 2;
const AF_LEQUAL 	= 3;
const AF_GREATER 	= 4;
const AF_NOTEQUAL 	= 5;
const AF_GEQUAL 	= 6;
const AF_ALWAYS 	= 7;

/* defines for zfunction */
const ZF_NEVER 		= 0;
const ZF_LESS 		= 1;
const ZF_EQUAL 		= 2;
const ZF_LEQUAL 	= 3;
const ZF_GREATER 	= 4;
const ZF_NOTEQUAL 	= 5;
const ZF_GEQUAL 	= 6;
const ZF_ALWAYS 	= 7;

/* defines for zsource */
const ZSRC_DEPTH 	= 0;
const ZSRC_COLOR 	= 1;

/* defines for pntsmooth */
const SMP_OFF 		= 16#0;
const SMP_ON 		= 16#1;
const SMP_SMOOTHER 	= 16#2;

/* defines for linesmooth */
const SML_OFF 		= 16#0;
const SML_ON 		= 16#1;
const SML_SMOOTHER 	= 16#2;
const SML_END_CORRECT 	= 16#4;

/* defines for polysmooth, NOTE, these must be decimal to allow
 * macros in STAPUFT pe ucode (modes.m) to build
 */
const PYSM_OFF 		= 0;
const PYSM_ON 		= 1;
const PYSM_SHRINK 	= 2;

/* defines for msalpha */
const MSA_MASK 		= 16#0;
const MSA_MASK_ONE 	= 16#1;
const MSA_ALPHA 	= 16#2;

/* defines for mssample */
const MSS_POINT 	= 16#0;
const MSS_AREA 		= 16#1;
const MSS_CENTER_POINT 	= 16#2;

/* defines for mspattern */
const MSP_DEFAULT 	= 16#0;
const MSP_2PASS_0 	= 16#1;
const MSP_2PASS_1 	= 16#2;
const MSP_4PASS_0 	= 16#3;
const MSP_4PASS_1 	= 16#4;
const MSP_4PASS_2 	= 16#5;
const MSP_4PASS_3 	= 16#6;

/* dither modes	*/
const DT_OFF 		= 0;
const DT_ON 		= 1;

/* defines for setpup */
const PUP_NONE 		= 0;
const PUP_GREY 		= 16#1;
const PUP_BOX 		= 16#2;
const PUP_CHECK 	= 16#4;

/* defines for glcompat */
const GLC_OLDPOLYGON 	= 0;
const GLC_ZRANGEMAP 	= 1;
const GLC_MQUEUERATE 	= 2;
const GLC_SOFTATTACH 	= 3;
const GLC_MANAGEBG 	= 4;
const GLC_SLOWMAPCOLORS = 5;
const GLC_INPUTCHANGEBUG = 6;
const GLC_NOBORDERBUG 	= 7;
const GLC_SET_VSYNC 	= 8;
const GLC_GET_VSYNC 	= 9;
const GLC_VSYNC_SLEEP 	= 10;
const GLC_FORCECIMAP 	= 11;
const GLC_TABLETSCALE 	= 12;
const GLC_ILCMD 	= 1008;
const GLC_IL_READCOMPONENT = 0;
const GLC_IL_RECTZOOMOFF = 1;
const GLC_IL_CONVOLVE 	= 2;
const GLC_IL_LRECTPROC 	= 3;
const GLC_IL_HISTOGRAM 	= 4;
const GLC_IL_GETHISTOGRAM = 5;
const GLC_IL_MINMAX 	= 6;
const GLC_IL_GETMINMAX 	= 7;
const GLC_IL_PIXELMAP 	= 8;
const GLC_IL_PIXELTRANSFER = 9;
const GLC_IL_ILBUFFER 	= 16#a;
const GLC_IL_ILDRAW 	= 16#b;
const GLC_IL_SUBTEXLOAD = 16#c;
const GLC_IL_LEFTBUFFER = 16#d;
const GLC_IL_RIGHTBUFFER = 16#e;
const GLC_IL_STEREOBUFFER = 16#f;
const GLC_IL_MONOBUFFER = 16#10;
const GLC_IL_FBSUBTEXLOAD = 16#11;
const GLC_IL_ISTEXLOADED = 16#12;
const GLC_IL_BLENDCOLOR = 16#13;

/* value for GLC_MQUEUERATE which is compatible with 3.3 */
const GLC_COMPATRATE 	= 15;
/* value for GLC_MQUEUERATE which causes maximum compression */
const GLC_CMPRESS 	= 1;

/* defines for curstype */
const C16X1 		= 0;
const C16X2 		= 1;
const C32X1 		= 2;
const C32X2 		= 3;
const CCROSS 		= 4;

/* defines for shademodel */
const FLAT 		= 0; 	/* For compatibility */
const GOURAUD 		= 1; 	/* For compatibility */

/* defines for logicop */
const LO_ZERO 		= 16#0;
const LO_AND 		= 16#1;
const LO_ANDR 		= 16#2;
const LO_SRC 		= 16#3;
const LO_ANDI 		= 16#4;
const LO_DST 		= 16#5;
const LO_XOR 		= 16#6;
const LO_OR 		= 16#7;
const LO_NOR 		= 16#8;
const LO_XNOR 		= 16#9;
const LO_NDST 		= 16#a;
const LO_ORR 		= 16#b;
const LO_NSRC 		= 16#c;
const LO_ORI 		= 16#d;
const LO_NAND 		= 16#e;
const LO_ONE 		= 16#f;

/* define for scrnselect */
const INFOCUSSCRN 	= -2;

/* defines for stencil */
const ST_KEEP 		= 0;
const ST_ZERO 		= 1;
const ST_REPLACE 	= 2;
const ST_INCR 		= 3;
const ST_DECR 		= 4;
const ST_INVERT 	= 5;
const SF_NEVER 		= 0;
const SF_LESS 		= 1;
const SF_EQUAL 		= 2;
const SF_LEQUAL 	= 3;
const SF_GREATER 	= 4;
const SF_NOTEQUAL 	= 5;
const SF_GEQUAL 	= 6;
const SF_ALWAYS 	= 7;

/* defines for scrsubdivide */
const SS_OFF 		= 0;
const SS_DEPTH 		= 1;

/* defines for polymode */
const PYM_FILL 		= 1;
const PYM_POINT 	= 2;
const PYM_LINE 		= 3;
const PYM_HOLLOW 	= 4;
const PYM_LINE_FAST 	= 5;

/* defines for fogvertex */
const FG_OFF 		= 0;
const FG_ON 		= 1;
const FG_DEFINE 	= 2;
const FG_VTX_EXP 	= 2; 	/* aka FG_DEFINE*/
const FG_VTX_LIN 	= 3;
const FG_PIX_EXP 	= 4;
const FG_PIX_LIN 	= 5;
const FG_VTX_EXP2 	= 6;
const FG_PIX_EXP2 	= 7;

/* defines for pixmode */
const PM_SHIFT 		= 0;
const PM_EXPAND 	= 1;
const PM_C0 		= 2;
const PM_C1 		= 3;
const PM_ADD24 		= 4;
const PM_SIZE 		= 5;
const PM_OFFSET 	= 6;
const PM_STRIDE 	= 7;
const PM_TTOB 		= 8;
const PM_RTOL 		= 9;
const PM_ZDATA 		= 10;
const PM_WARP 		= 11;
const PM_RDX 		= 12;
const PM_RDY 		= 13;
const PM_CDX 		= 14;
const PM_CDY 		= 15;
const PM_XSTART 	= 16;
const PM_YSTART 	= 17;
const PM_VO1 		= 1000; 	/* internal use only */

/* defines for VENICE float path pixels/texels */
const PM_INPUT_FORMAT 	= 11;
const PM_INPUT_TYPE 	= 12;
const PM_OUTPUT_FORMAT 	= 13;
const PM_OUTPUT_TYPE 	= 14;
const PM_ABGR 		= 0;
const PM_BGR 		= 1;
const PM_RGBA 		= 2;
const PM_RGB 		= 3;
const PM_LUMINANCE 	= 4;
const PM_LUMINANCEA 	= 5;
const PM_ALPHA 		= 6;
const PM_COLOR_INDEX 	= 7;
const PM_STENCIL_INDEX 	= 8;
const PM_DEPTH 		= 9;
const PM_RED 		= 10;
const PM_GREEN 		= 11;
const PM_BLUE 		= 12;


const PM_BITMAP 	= 0;
const PM_BYTE 		= 1;
const PM_UNSIGNED_BYTE 	= 2;
const PM_SHORT_12 	= 3;
const PM_UNSIGNED_SHORT_12 = 4;
const PM_SHORT 		= 5;
const PM_UNSIGNED_SHORT = 6;
const PM_INT 		= 7;
const PM_UNSIGNED_INT 	= 8;
const PM_FLOAT 		= 9;

/* defines for convolve */
const CV_OFF 		= 0;
const CV_GENERAL 	= 1;
const CV_SEPARABLE 	= 2;
const CV_REDUCE 	= 1;

/* defines for pixelmap */
const MAP_I_TO_I 	= 0;
const MAP_I_TO_R 	= 1;
const MAP_I_TO_G 	= 2;
const MAP_I_TO_B 	= 3;
const MAP_I_TO_A 	= 4;
const MAP_R_TO_R 	= 5;
const MAP_G_TO_G 	= 6;
const MAP_B_TO_B 	= 7;
const MAP_A_TO_A 	= 8;

/* defines for pixeltransfer */
const PT_MAP_COLOR 	= 0;
const PT_MAP_DISABLE 	= 0;
const PT_MAP_CLAMP 	= 1;
const PT_MAP_ENABLE 	= 2;

const PT_RED_SCALE 	= 1;
const PT_RED_BIAS 	= 2;
const PT_GREEN_SCALE 	= 3;
const PT_GREEN_BIAS 	= 4;
const PT_BLUE_SCALE 	= 5;
const PT_BLUE_BIAS 	= 6;
const PT_ALPHA_SCALE 	= 7;
const PT_ALPHA_BIAS 	= 8;

/* defines for nmode */
const NAUTO 		= 0;
const NNORMALIZE 	= 1;

/* defines for acbuf */
const AC_CLEAR 		= 0;
const AC_ACCUMULATE 	= 1;
const AC_CLEAR_ACCUMULATE = 2;
const AC_RETURN 	= 3;
const AC_MULT 		= 4;
const AC_ADD 		= 5;

/* defines for clipplane */
const CP_OFF 		= 0;
const CP_ON 		= 1;
const CP_DEFINE 	= 2;

/* defines for scrbox */
const SB_RESET 		= 0;
const SB_TRACK 		= 1;
const SB_HOLD 		= 2;


/* defines for readdisplay */
const RD_FREEZE 	= 16#00000001;
const RD_ALPHAONE 	= 16#00000002;
const RD_IGNORE_UNDERLAY = 16#00000004;
const RD_IGNORE_OVERLAY = 16#00000008;
const RD_IGNORE_PUP 	= 16#00000010;
const RD_OFFSCREEN 	= 16#00000020;

/* defines for getgconfig */
const GC_BITS_CMODE 	= 0;
const GC_BITS_RED 	= 1;
const GC_BITS_GREEN 	= 2;
const GC_BITS_BLUE 	= 3;
const GC_BITS_ALPHA 	= 4;
const GC_BITS_ZBUFFER 	= 5;
const GC_ZMIN 		= 6;
const GC_ZMAX 		= 7;
const GC_BITS_STENCIL 	= 8;
const GC_BITS_ACBUF 	= 9;
const GC_MS_SAMPLES 	= 10;
const GC_BITS_MS_ZBUFFER = 11;
const GC_MS_ZMIN 	= 12;
const GC_MS_ZMAX 	= 13;
const GC_BITS_MS_STENCIL = 14;
const GC_STEREO 	= 15;
const GC_DOUBLE 	= 16;


/* 
 * START defines for getgdesc 
 */

const GD_XPMAX 		= 0;
const GD_YPMAX 		= 1;
const GD_XMMAX 		= 2;
const GD_YMMAX 		= 3;
const GD_ZMIN 		= 4;
const GD_ZMAX 		= 5;
const GD_BITS_NORM_SNG_RED = 6;
const GD_BITS_NORM_SNG_GREEN = 7;
const GD_BITS_NORM_SNG_BLUE = 8;
const GD_BITS_NORM_DBL_RED = 9;
const GD_BITS_NORM_DBL_GREEN = 10;
const GD_BITS_NORM_DBL_BLUE = 11;
const GD_BITS_NORM_SNG_CMODE = 12;
const GD_BITS_NORM_DBL_CMODE = 13;
const GD_BITS_NORM_SNG_MMAP = 14;
const GD_BITS_NORM_DBL_MMAP = 15;
const GD_BITS_NORM_ZBUFFER = 16;
const GD_BITS_OVER_SNG_CMODE = 17;
const GD_BITS_UNDR_SNG_CMODE = 18;
const GD_BITS_PUP_SNG_CMODE = 19;
const GD_BITS_NORM_SNG_ALPHA = 21;
const GD_BITS_NORM_DBL_ALPHA = 22;
const GD_BITS_CURSOR 	= 23;
const GD_OVERUNDER_SHARED = 24;
const GD_BLEND 		= 25;
const GD_CIFRACT 	= 26;
const GD_CROSSHAIR_CINDEX = 27;
const GD_DITHER 	= 28;
const GD_LINESMOOTH_CMODE = 30;
const GD_LINESMOOTH_RGB = 31;
const GD_LOGICOP 	= 33;
const GD_NSCRNS 	= 35;
const GD_NURBS_ORDER 	= 36;
const GD_NBLINKS 	= 37;
const GD_NVERTEX_POLY 	= 39;
const GD_PATSIZE_64 	= 40;
const GD_PNTSMOOTH_CMODE = 41;
const GD_PNTSMOOTH_RGB 	= 42;
const GD_PUP_TO_OVERUNDER = 43;
const GD_READSOURCE 	= 44;
const GD_READSOURCE_ZBUFFER = 48;
const GD_STEREO 	= 50;
const GD_SUBPIXEL_LINE 	= 51;
const GD_SUBPIXEL_PNT 	= 52;
const GD_SUBPIXEL_POLY 	= 53;
const GD_TRIMCURVE_ORDER = 54;
const GD_WSYS 		= 55;
const GD_ZDRAW_GEOM 	= 57;
const GD_ZDRAW_PIXELS 	= 58;
const GD_SCRNTYPE 	= 61;
const GD_TEXTPORT 	= 62;
const GD_NMMAPS 	= 63;
const GD_FRAMEGRABBER 	= 64;
const GD_TIMERHZ 	= 66;
const GD_DBBOX 		= 67;
const GD_AFUNCTION 	= 68;
const GD_ALPHA_OVERUNDER = 69;
const GD_BITS_ACBUF 	= 70;
const GD_BITS_ACBUF_HW 	= 71;
const GD_BITS_STENCIL 	= 72;
const GD_CLIPPLANES 	= 73;
const GD_FOGVERTEX 	= 74;
const GD_LIGHTING_TWOSIDE = 76;
const GD_POLYMODE 	= 77;
const GD_POLYSMOOTH 	= 78;
const GD_SCRBOX 	= 79;
const GD_TEXTURE 	= 80;
const GD_FOGPIXEL 	= 81;
const GD_TEXTURE_PERSP 	= 82;
const GD_MUXPIPES 	= 83;
const GD_MULTISAMPLE 	= 84;
const GD_TEXTURE_3D 	= 85;
const GD_TEXTURE_LUT 	= 86;
const GD_TEXTURE_SHARP 	= 87;
const GD_TEXTURE_DETAIL = 88;
const GD_STEREO_IN_WINDOW = 89;
const GD_BLENDCOLOR 	= 90;
const GD_LIGHTING_SPOTLIGHT = 91;
const GD_LIGHTING_ATT2 	= 92;
const GD_AFUNCTION_MODES = 93;


/* return value for inquiries when there is no limit */
const GD_NOLIMIT 	= -2;

/* return values for GD_WSYS */
const GD_WSYS_NONE 	= 0;
const GD_WSYS_4S 	= 1;

/* return values for GD_SCRNTYPE */
const GD_SCRNTYPE_WM 	= 0;
const GD_SCRNTYPE_NOWM 	= 1;

/* 
 * END defines for getgdesc 
 */


/* 
 * START NURBS interface definitions 
 */

/* NURBS Rendering Properties */
const N_PIXEL_TOLERANCE = 1;
const N_CULLING 	= 2;
const N_DISPLAY 	= 3;
const N_ERRORCHECKING 	= 4;
const N_SUBDIVISIONS 	= 5;
const N_S_STEPS 	= 6;
const N_T_STEPS 	= 7;
const N_TILES 		= 8;
const N_TMP1 		= 9;
const N_TMP2 		= 10;
const N_TMP3 		= 11;
const N_TMP4 		= 12;
const N_TMP5 		= 13;
const N_TMP6 		= 14;

const N_FILL 		= 1.0;
const N_OUTLINE_POLY 	= 2.0;
const N_OUTLINE_PATCH 	= 5.0;
const N_ISOLINE_S 	= 12.0;

/*---------------------------------------------------------------------------
 * FLAGS FOR NURBS SURFACES AND CURVES			
 * WARNING: Any changes to these flags should be checked against the 
 * decoding macros in nurbs.h.
 *
 * Bit: 876 5432 10 
 *     |ttt|nnnn|rr|   :  rr - 2 bits = 1 if rational coordinate exists
 *		       : nnn - 4 bits for number of coordinates
 *		       : ttt - 3 bits for type of data (color, position, etc.)
 *	
 *
 * NURBS data type
 * N_T_ST	 	0	 parametric space data
 * N_T_XYZ		1	 model space data
 * N_T_TEX		2	 texture coordinate data
 * N_T_RGBA		3	 color data
 *
 * Number of coordinates per datum
 * N_COORD2	 	2	 2 coords
 * N_COORD3		3	 3 coords
 * N_COORD4		4	 4 coords
 * N_COORD5		5	 5 coords
 *
 * rational or non-rational data and position in memory 
 * N_NONRATIONAL	0	 non-rational data
 * N_RATIONAL		1	 rational data with rat coord after rest
 *
 * N_MKFLAG(t,n,r) ((t<<6) | (n<<2) | r)
 *	
 *---------------------------------------------------------------------------
 */
const N_ST 		= 16#8; 	/* N_MKFLAG( N_T_ST, N_COORD2, N_NONRATIONAL ) */
const N_STW 		= 16#d; 	/* N_MKFLAG( N_T_ST, N_COORD3, N_RATIONAL ) */
const N_XYZ 		= 16#4c; 	/* N_MKFLAG( N_T_XYZ, N_COORD3, N_NONRATIONAL ) */
const N_XYZW 		= 16#51; 	/* N_MKFLAG( N_T_XYZ, N_COORD4, N_RATIONAL ) */
const N_TEX 		= 16#88; 	/* N_MKFLAG( N_T_TEX, N_COORD2, N_NONRATIONAL ) */
const N_TEXW 		= 16#8d; 	/* N_MKFLAG( N_T_TEX, N_COORD3, N_RATIONAL ) */
const N_RGBA 		= 16#d0; 	/* N_MKFLAG( N_T_RGBA, N_COORD4, N_NONRATIONAL ) */
const N_RGBAW 		= 16#d5; 	/* N_MKFLAG( N_T_RGBA, N_COORD5, N_RATIONAL ) */

/* New versions of above constants */

const N_P2D 		= 16#8; 	/* N_MKFLAG( N_T_ST, N_COORD2, N_NONRATIONAL ) */
const N_P2DR 		= 16#d; 	/* N_MKFLAG( N_T_ST, N_COORD3, N_RATIONAL ) */
const N_V3D 		= 16#4c; 	/* N_MKFLAG( N_T_XYZ, N_COORD3, N_NONRATIONAL ) */
const N_V3DR 		= 16#51; 	/* N_MKFLAG( N_T_XYZ, N_COORD4, N_RATIONAL ) */
const N_T2D 		= 16#88; 	/* N_MKFLAG( N_T_TEX, N_COORD2, N_NONRATIONAL ) */
const N_T2DR 		= 16#8d; 	/* N_MKFLAG( N_T_TEX, N_COORD3, N_RATIONAL ) */
const N_C4D 		= 16#d0; 	/* N_MKFLAG( N_T_RGBA, N_COORD4, N_NONRATIONAL ) */
const N_C4DR 		= 16#d5; 	/* N_MKFLAG( N_T_RGBA, N_COORD5, N_RATIONAL ) */

/* 
 * END NURBS interface definitions 
 */


/* 
 * START lighting model defines 
 */

const LMNULL 		= 0.0;

/* MATRIX modes	*/
const MSINGLE 		= 0;
const MPROJECTION 	= 1;
const MVIEWING 		= 2;
const MTEXTURE 		= 3;

/* LIGHT constants */
const MAXLIGHTS 	= 8;
const MAXRESTRICTIONS 	= 4;

/* MATERIAL properties */
const DEFMATERIAL 	= 0;
const EMISSION 		= 1;
const AMBIENT 		= 2;
const DIFFUSE 		= 3;
const SPECULAR 		= 4;
const SHININESS 	= 5;
const COLORINDEXES 	= 6;
const ALPHA 		= 7;

/* LIGHT properties */
const DEFLIGHT 		= 100;
const LCOLOR 		= 101;
const POSITION 		= 102;
const SPOTDIRECTION 	= 103;
const SPOTLIGHT 	= 104;


/* LIGHTINGMODEL properties */
const DEFLMODEL 	= 200;
const LOCALVIEWER 	= 201;
const ATTENUATION 	= 202;
const ATTENUATION2 	= 203;
const TWOSIDE 		= 204;


/* TARGET constants */
const MATERIAL 		= 1000;
const BACKMATERIAL 	= 1001;
const LIGHT0 		= 1100;
const LIGHT1 		= 1101;
const LIGHT2 		= 1102;
const LIGHT3 		= 1103;
const LIGHT4 		= 1104;
const LIGHT5 		= 1105;
const LIGHT6 		= 1106;
const LIGHT7 		= 1107;
const LMODEL 		= 1200;

/* lmcolor modes */
const LMC_COLOR 	= 0;
const LMC_EMISSION 	= 1;
const LMC_AMBIENT 	= 2;
const LMC_DIFFUSE 	= 3;
const LMC_SPECULAR 	= 4;
const LMC_AD 		= 5;
const LMC_NULL 		= 6;

/*
 * END lighting model defines 
 */


/* 
 * START texturing defines 
 */

/* texdef param token values */
const TX_MINFILTER 	= 16#100;
const TX_MAGFILTER 	= 16#200;
const TX_MAGFILTER_COLOR = 16#a00;
const TX_MAGFILTER_ALPHA = 16#b00;
const TX_WRAP 		= 16#300;
const TX_WRAP_S 	= 16#310;
const TX_WRAP_T 	= 16#320;
const TX_WRAP_R 	= 16#330;
const TX_TILE 		= 16#400;
const TX_BORDER 	= 16#500;
const TX_DETAIL 	= 16#e00;
const TX_FAST_DEFINE 	= 16#0f00;
const TX_NOCOPY 	= TX_FAST_DEFINE; 	/* obsolete */
const TX_FRAMEBUFFER_SRC = 16#1000; 	/* obsolete */
const TX_SUBTEXLOAD 	= 16#2000; 	/* obsolete */
const TX_FORMATTED_16bit_64x64 = 16#2000;
const TX_FORMATTED_ABGR_8_128x128 = 16#2010;
const TX_CONTROL_POINT 	= 16#c00;
const TX_CONTROL_CLAMP 	= 16#d00;
const TX_NULL 		= 16#000;

/* texture external formats */
const TX_EXTERNAL_FORMAT = 16#700;
const TX_PACK_8 	= 16#710; 	/* just like STAPUFT 4.0 */
const TX_PACK_16 	= 16#720; 	/* */
const TX_NOPACK_12 	= 16#730; 	/* 12 bits in 12 lsb bits of short */
const TX_PIXMODE 	= 16#3000;
const TX_BICUBIC_FILTER = 16#4000; 	/* user bicubic kernel parameters */

const TX_INTERNAL_FORMAT = 16#600;
/* choices for TX_INTERNAL_FORMAT */
const TX_I_12 		= 16#610; 	/* 1-comp full speed */
const TX_I_12A_4 	= 16#610; 	/* 2-comp full speed */
const TX_I_8 		= 16#620; 	/* 1-comp full speed */
const TX_IA_8 		= 16#620; 	/* 2-comp full speed */
const TX_RGB_5 		= 16#630; 	/* 3-comp full speed */
const TX_RGBA_4 	= 16#640; 	/* 4-comp full speed */
const TX_IA_12 		= 16#650; 	/* 2-comp half speed */
const TX_RGBA_8 	= 16#660; 	/* 4-comp half speed */
const TX_RGB_8 		= 16#660; 	/* 3-comp half speed */
const TX_RGB_12 	= 16#680; 	/* 3-comp third speed */
const TX_RGBA_12 	= 16#670; 	/* 4-comp quarter speed */
const TX_I_16 		= 16#690; 	/* should only be used in SHADOW mode */


const TX_MIPMAP_FILTER_KERNEL = 16#900; 	/* seperable 8x8x8 filter kernel */

/* texture filter choices */
const TX_POINT 		= 16#110;
const TX_BILINEAR 	= 16#220;
const TX_MIPMAP 	= 16#120;
const TX_MIPMAP_POINT 	= 16#121;
const TX_MIPMAP_LINEAR 	= 16#122;
const TX_MIPMAP_BILINEAR = 16#123;
const TX_MIPMAP_TRILINEAR = 16#124;
const TX_BICUBIC 	= 16#230;
const TX_SHARPEN 	= 16#240;
const TX_MODULATE_DETAIL = 16#250;
const TX_ADD_DETAIL 	= 16#260;
const TX_TRILINEAR 	= 16#270;
const TX_MIPMAP_QUADLINEAR = 16#280;
const TX_BICUBIC_GEQUAL = 16#290;
const TX_BICUBIC_LEQUAL = 16#2a0;
const TX_BILINEAR_GEQUAL = 16#2b0;
const TX_BILINEAR_LEQUAL = 16#2c0;


/* texture wrapping access choices */
const TX_REPEAT 	= 16#301;
const TX_CLAMP 		= 16#302;
const TX_SELECT 	= 16#303;

/* texture targets */
const TX_TEXTURE_0 	= 0;
const TX_TEXTURE_DETAIL = 1; 	/* This binds a texture to the DETAIL texture resource */
const TX_TEXTURE_IDLE 	= 2;

/* texture environment definitions */
const TV_MODULATE 	= 16#101;
const TV_BLEND 		= 16#102;
const TV_DECAL 		= 16#103;
const TV_COLOR 		= 16#200;
const TV_SHADOW 	= 16#104;
const TV_ALPHA 		= 16#105;
const TV_COMPONENT_SELECT = 16#300;
const TV_I_GETS_R 	= 16#310;
const TV_I_GETS_G 	= 16#320;
const TV_I_GETS_B 	= 16#330;
const TV_I_GETS_A 	= 16#340;
const TV_IA_GETS_RG 	= 16#350;
const TV_IA_GETS_BA 	= 16#360;
const TV_I_GETS_I 	= 16#370;
const TV_NULL 		= 16#000;

/* texture lookup table definitions */
const TL_NULL 		= 16#0;
const TL_TLUT_0 	= 0;

/* texture environment targets */
const TV_ENV0 		= 0;

/* defines for texgen */
const TX_S 		= 0;
const TX_T 		= 1;
const TX_R 		= 2;
const TX_Q 		= 3;
const TG_OFF 		= 0;
const TG_ON 		= 1;
const TG_CONTOUR 	= 2;
const TG_LINEAR 	= 3;
const TG_SPHEREMAP 	= 4;
const TG_REFRACTMAP 	= 5; 	/* not yet approved! */

/*
 * END texturing defines 
 */

/* 
 * START multi-byte character types for lcharstr and lstrwidth
 */

const STR_B 		= 16#000;
const STR_2B 		= 16#001;
const STR_3B 		= 16#010;
const STR_4B 		= 16#011;
const STR_16 		= 16#100;
const STR_32 		= 16#101;

/* 
 * END mbcharstr defines
 */

/* 
 * START Distributed Graphics Library defines 
 */

const DGLSINK 		= 0; 	/* sink connection */
const DGLLOCAL 		= 1; 	/* local connection */
const DGLTSOCKET 	= 2; 	/* tcp socket connection*/
const DGL4DDN 		= 3; 	/* 4DDN (DECnet) */

/* 
 * END Distributed Graphics Library defines 
 */


/* 
 * START obsolete defines - included for backwards compatibility 
 */

#define GLDEF 		 __GL_GL_H__

const PUP_CURSOR 	= 1;

const FATAL 		= 1; 	/* exit from program after printing message */
const WARNING 		= 2; 	/* print message and continue */
const ASK_CONT 		= 3; 	/* ask if program should continue */
const ASK_RESTART 	= 4; 	/* ask if program should be restarted */

/* high-resolution monitor */
const XMAXSCREEN 	= 1279;
const YMAXSCREEN 	= 1023;

/* medium-resolution monitor */
const XMAXMEDIUM 	= 1023;
const YMAXMEDIUM 	= 767;

/* RS-170 */
const XMAX170 		= 645;
const YMAX170 		= 484;

/* PAL */
const XMAXPAL 		= 779;
const YMAXPAL 		= 574;

/* 
 * END obsolete defines
 */


/* type declarations for Pascal */

type longint =		integer;
type UnsignedByte =	0..255;
type SignedByte =	-128..127;
type Byte =		UnsignedByte;
type Short =		-32768..32767;
type UnsignedShort =	0..65535;
type UnsignedLong =	cardinal;
type Angle =		Short;
type Screencoord =	Short; 
type Icoord =		longint;
type Scoord =		Short;
type Coord =		real;
type Strng =		packed array[1..128] of char;
type pstring =		^Strng;
type string128 = 	packed array[1..128] of char;
type pstring128 = 	^string128;

type Matrix =		array[0..3,0..3] of real;

type Device =		UnsignedShort;

type Pattern16 =	array [0..PATTERN_16_SIZE-1] of UnsignedShort;
type Pattern32 =	array [0..PATTERN_32_SIZE-1] of UnsignedShort;
type Pattern64 =	array [0..PATTERN_64_SIZE-1] of UnsignedShort;

type Colorindex = 	UnsignedShort;
type RGBvalue =		Byte;

type Linestyle =	UnsignedShort;
type Fontchar = record
                	offst:	UnsignedShort;
                	w:	Byte;
                	h:	Byte;
                	xoff:	SignedByte;
                	yoff:	SignedByte;
                	width:	Short;
            	end;

type Lfontchar = record
                	value:	UnsignedLong;
                	offst:	UnsignedLong;
                	w:	Short;
                	h:	Short;
                	xoff:	Short;
                	yoff:	Short;
                	xmove:	Short;
                	ymove:	Short;
            	end;

type Object =		longint;
type Tag =		longint;
type Offset =		longint;


/* obsolete types */
type Cursor =		array [0..15] of UnsignedShort;	    /* a C16X1 cursor */


/* Pascal function and procedure external declarations and wrappers */

procedure acbuf(op: longint; value: real); external;
procedure acsize(planes: longint); external;
#define addtopup(pup, str, arg) addtopup_(pup, G_P2CSTR(str), arg)
procedure addtopup_(pup: longint; str: pstring128; arg: longint); external;
procedure afunction(ref, func: longint); external;
procedure arcfi(x, y, radius: Icoord; startang, endang: Angle); external;
procedure arcfs(x, y, radius: Scoord; startang, endang: Angle); external;
procedure arcf(x, y, radius: Coord; startang, endang: Angle); external;
procedure arci(x, y, radius: Icoord; startang, endang: Angle); external;
procedure arcs(x, y, radius: Scoord; startang, endang: Angle); external;
procedure arc(x, y, radius: Coord; startang, endang: Angle); external;
procedure attachcursor(vx, vy: Device); external;
procedure backbuffer(b: Boolean); external;
procedure backface(b: Boolean); external;
procedure bbox2i(xmin, ymin: Screencoord; x1, y1, x2, y2: Icoord); external;
procedure bbox2s(xmin, ymin: Screencoord; x1, y1, x2, y2: Scoord); external;
procedure bbox2(xmin, ymin: Screencoord; x1, y1, x2, y2: Coord); external;
procedure bgnclosedline(); external;
procedure bgncurve(); external;
procedure bgnline(); external;
procedure bgnpoint(); external;
procedure bgnpolygon(); external;
procedure bgnqstrip(); external;
procedure bgnsurface(); external;
procedure bgntmesh(); external;
procedure bgntrim(); external;
procedure blankscreen(bool: Boolean); external;
procedure blanktime(n: longint); external;
procedure blendcolor(r, g, b, a: real); external;
procedure blendfunction(sfactor, dfactor: longint); external;
procedure blink(rate: Short; c: Colorindex; red, green, blue: Short); external;
#define blkqread(data, n) _blkqread_p_(data, n)
function _blkqread_p_(var data: array[_lb1_.._ub1_:integer] of Short; n: Short): longint; external;
procedure _c3f_p_(var vp: array[_lb1_.._ub1_:integer] of real); external;
#define c3f(vp) _c3f_p_(vp)
procedure _c3i_p_(var vp: array[_lb1_.._ub1_:integer] of longint); external;
#define c3i(vp) _c3i_p_(vp)
procedure _c3s_p_(var vp: array[_lb1_.._ub1_:integer] of Short); external;
#define c3s(vp) _c3s_p_(vp)
procedure _c4f_p_(var vp: array[_lb1_.._ub1_:integer] of real); external;
#define c4f(vp) _c4f_p_(vp)
procedure _c4i_p_(var vp: array[_lb1_.._ub1_:integer] of longint); external;
#define c4i(vp) _c4i_p_(vp)
procedure _c4s_p_(var vp: array[_lb1_.._ub1_:integer] of Short); external;
#define c4s(vp) _c4s_p_(vp)
procedure callobj(obj: Object); external;
#define charstr(str) charstr_(G_P2CSTR(str))
procedure charstr_(str: pstring128); external;
procedure chunksize(chunk: longint); external;
procedure circfi(x, y, radius: Icoord); external;
procedure circfs(x, y, radius: Scoord); external;
procedure circf(x, y, radius: Coord); external;
procedure circi(x, y, radius: Icoord); external;
procedure circs(x, y, radius: Scoord); external;
procedure circ(x, y, radius: Coord); external;
procedure clear(); external;
procedure clearhitcode(); external;                     /* not recommended */
#define clipplane(index, mode, params) _clipplane_p_(index, mode, params)
procedure _clipplane_p_(index, mode: longint; var params: array[_lb3_.._ub3_:integer] of real); external;
procedure clkoff(); external;
procedure clkon(); external;
procedure closeobj(); external;
procedure cmode(); external;
procedure cmov2i(x, y: Icoord); external;
procedure cmov2s(x, y: Scoord); external;
procedure cmov2(x, y: Coord); external;
procedure cmovi(x, y, z: Icoord); external;
procedure cmovs(x, y, z: Scoord); external;
procedure cmov(x, y, z: Coord); external;
procedure color(c: Colorindex); external;
procedure colorf(c: real); external;
procedure compactify(obj: Object); external;
procedure concave(b: Boolean); external;
#define convolve(convop, border, xksize, yksize, kernel, bias) _convolve_p_(convop, border, xksize, yksize, kernel, bias)
procedure _convolve_p_(convop, border, xksize, yksize: longint; var kernel: array[_lb5_.._ub5_:integer] of real; bias: real); external;
procedure cpack(abgr: cardinal); external;
#define crv(geom) _crv_p_(geom)
#define crvn(n, geom) _crvn_p_(n, geom)
procedure _crvn_p_(n: longint; var geom: array[_lb2_.._ub2_:integer] of Coord); external;
procedure _crv_p_(var geom: array[_lb1_.._ub1_:integer] of Coord); external;
procedure curorigin(n, xorigin, yorigin: Short); external;
procedure cursoff(); external;
procedure curson(); external;
procedure curstype(typ: longint); external;
procedure curvebasis(basisid: Short); external;
procedure curveit(iterationcount: Short); external;
procedure curveprecision(nsegments: Short); external;
procedure cyclemap(duration, map, nextmap: Short); external;
procedure czclear(cval: cardinal; zval: longint); external;
procedure _dbtext_p_(var str: array[_lb1_.._ub1_:integer] of Byte); external;
#define dbtext(str) _dbtext_p_(str)
procedure defbasis(id: Short; var mat: Matrix); external;
#define defcursor(n, curs) _defcursor_p_(n, curs)
procedure _defcursor_p_(n: Short; var curs: array[_lb2_.._ub2_:integer] of UnsignedShort); external;
#define deflfont(n, nc, chars, nr, raster) _deflfont_p_(n, nc, chars, nr, raster)
procedure _deflfont_p_(n, nc: Short; var chars: array[_lb3_.._ub3_:integer] of Lfontchar; nr: longint; var raster: array[_lb5_.._ub5_:integer] of UnsignedShort); external;
procedure deflinestyle(n: Short; ls: Linestyle); external;
#define defpattern(n, size, mask) _defpattern_p_(n, size, mask)
procedure _defpattern_p_(n, size: Short; var mask: array[_lb3_.._ub3_:integer] of UnsignedShort); external;
#define defrasterfont(n, ht, nc, chars, nr, raster) _defrasterfont_p_(n, ht, nc, chars, nr, raster)
procedure _defrasterfont_p_(n, ht, nc: Short; var chars: array[_lb4_.._ub4_:integer] of Fontchar; nr: Short; var raster: array[_lb6_.._ub6_:integer] of UnsignedShort); external;
procedure delobj(obj: Object); external;
procedure deltag(t: Tag); external;
procedure depthcue(mode: Boolean); external;
procedure dglclose(sid: longint); external;
#define dglopen(svname, gctype) dglopen_(G_P2CSTR(svname), gctype)
function dglopen_(svname: pstring128; gctype: longint): longint; external;
procedure displacepolygon(scalefactor: real); external;
procedure dither(ditmode: longint); external;
function dopup(pup: longint): longint; external;
procedure doublebuffer(); external;
procedure draw2i(x, y: Icoord); external;
procedure draw2s(x, y: Scoord); external;
procedure draw2(x, y: Coord); external;
procedure drawi(x, y, z: Icoord); external;
procedure drawmode(mode: longint); external;
procedure draws(x, y, z: Scoord); external;
procedure draw(x, y, z: Coord); external;
procedure editobj(obj: Object); external;
procedure endclosedline(); external;
procedure endcurve(); external;
#define endfeedback(buffer) _endfeedback_p_(buffer)
function _endfeedback_p_(var buffer: array[_lb1_.._ub1_:integer] of Short): longint; external;
procedure endfullscrn(); external;
procedure endline(); external;
#define endpick(buffer) _endpick_p_(buffer)
function _endpick_p_(var buffer: array[_lb1_.._ub1_:integer] of Short): longint; external;
procedure endpoint(); external;
procedure endpolygon(); external;
procedure endpupmode(); external;                       /* obsolete */
procedure endqstrip(); external;
#define endselect(buffer) _endselect_p_(buffer)
function _endselect_p_(var buffer: array[_lb1_.._ub1_:integer] of Short): longint; external;
procedure endsurface(); external;
procedure endtmesh(); external;
procedure endtrim(); external;
procedure fbsubtexload(src_x, src_y, target, index: longint; l, r, b, t: real; flags: cardinal); external;
#define feedback(buffer, size) _feedback_p_(buffer, size)
procedure _feedback_p_(var buffer: array[_lb1_.._ub1_:integer] of Short; size: longint); external;
procedure finish(); external;
#define fogvertex(mode, params) _fogvertex_p_(mode, params)
procedure _fogvertex_p_(mode: longint; var params: array[_lb2_.._ub2_:integer] of real); external;
procedure font(fntnum: Short); external;
procedure foreground(); external;
procedure freepup(pup: longint); external;
procedure frontbuffer(b: Boolean); external;
procedure frontface(b: Boolean); external;
procedure fudge(xfudge, yfudge: longint); external;
procedure fullscrn(); external;
procedure _gammaramp_p_(var r, g, b: array[_lb3_.._ub3_:integer] of Short); external;
#define gammaramp(r, g, b) _gammaramp_p_(r, g, b)
procedure gbegin(); external;                           /* not recommended */
procedure gconfig(); external;
function genobj(): Object; external;
function gentag(): Tag; external;
function getbackface(): longint; external;
function getbuffer(): longint; external;
function getbutton(num: Device): Boolean; external;
function getcmmode(): Boolean; external;
function getcolor(): longint; external;
procedure getcpos(var ix, iy: Short); external;
procedure getcursor(var index: Short; var c, wtm: Colorindex; var b: Boolean); external;
function getdcm(): Boolean; external;
procedure getdepth(var znear, zfar: Screencoord); external; /* obsolete */
function getdescender(): longint; external;
#define getdev(n, devs, vals) _getdev_p_(n, devs, vals)
procedure _getdev_p_(n: longint; var devs: array[_lb2_.._ub2_:integer] of Device; var vals: array[_lb3_.._ub3_:integer] of Short); external;
function getdisplaymode(): longint; external;
function getdrawmode(): longint; external;
function getfont(): longint; external;
function getgconfig(buffer: longint): longint; external;
function getgdesc(inquiry: longint): longint; external;
procedure getgpos(var fx, fy, fz, fw: Coord); external;
function getheight(): longint; external;
#define gethgram(parray) _gethgram_p_(parray)
procedure _gethgram_p_(var parray: array[_lb1_.._ub1_:integer] of cardinal); external;
function gethitcode(): longint; external;               /* not recommended */
function getlsbackup(): Boolean; external;              /* not recommended */
function getlsrepeat(): longint; external;
function getlstyle(): longint; external;
function getlwidth(): longint; external;
function getmap(): longint; external;
procedure getmatrix(var m: Matrix); external;
procedure getmcolor(c: Colorindex; var r, g, b: Short); external;
#define getminmax(parray) _getminmax_p_(parray)
procedure _getminmax_p_(var parray: array[_lb1_.._ub1_:integer] of real); external;
function getmmode(): longint; external;
function getmonitor(): longint; external;
function getmultisample(): Boolean; external;
procedure getnurbsproperty(property: longint; var value: real); external;
function getopenobj(): Object; external;
procedure getorigin(var x, y: longint); external;
function getothermonitor(): longint; external;          /* obsolete */
function getpattern(): longint; external;
function getplanes(): longint; external;
#define getport(arg) getport_(G_P2CSTR(arg))            /* obsolete */
procedure getport_(arg: pstring128); external;
function getresetls(): Boolean; external;               /* not recommended */
procedure getscrbox(var left, right, bottom, top: longint); external;
procedure getscrmask(var left, right, bottom, top: Screencoord); external;
function getshade(): longint; external;                 /* obsolete */
procedure getsize(var x, y: longint); external;
function getsm(): longint; external;
function getvaluator(val: Device): longint; external;
function getvideo(reg: longint): longint; external;
procedure getviewport(var left, right, bottom, top: Screencoord); external;
function getwritemask(): longint; external;
function getwscrn(): longint; external;
function getzbuffer(): Boolean; external;
procedure gexit(); external;
procedure gflush(); external;
procedure ginit(); external;                            /* not recommended */
procedure glcompat(mode, value: longint); external;
function G_P2CSTR(str: string128): pointer; external;
procedure greset(); external;                           /* not recommended */
#define gRGBcolor(red, green, blue) gRGBcolor_(red, green, blue)
procedure gRGBcolor_(var red, green, blue: Short); external;
#define gRGBcursor(index, red, green, blue, redm, greenm, bluem, b) gRGBcursor_(index, red, green, blue, redm, greenm, bluem, b) /* obsolete */
procedure gRGBcursor_(var index, red, green, blue, redm, greenm, bluem: Short; var b: Boolean); external;
#define gRGBmask(redm, greenm, bluem) gRGBmask_(redm, greenm, bluem)
procedure gRGBmask_(var redm, greenm, bluem: Short); external;
#define gselect(buffer, numnames) _gselect_p_(buffer, numnames)
procedure _gselect_p_(var buffer: array[_lb1_.._ub1_:integer] of Short; numnames: longint); external;
procedure gsync(); external;
function _gversion_p_(var v: array[_lb1_.._ub1_:integer] of Byte): longint; external;
#define gversion(v) _gversion_p_(v)
procedure hgram(a, b: cardinal); external;
procedure iconsize(x, y: longint); external;
#define icontitle(name) icontitle_(G_P2CSTR(name))
procedure icontitle_(name: pstring128); external;
function ilbuffer(buffers: cardinal): longint; external;
procedure ildraw(buffer: cardinal); external;
procedure imakebackground(); external;
procedure initnames(); external;
function ismex(): Boolean; external;                    /* obsolete */
function isobj(obj: Object): Boolean; external;
function isqueued(arg: Device): Boolean; external;
function istag(t: Tag): Boolean; external;
function istexloaded(target, id: longint): longint; external;
procedure keepaspect(x, y: longint); external;
procedure lampoff(lamps: Byte); external;               /* not recommended */
procedure lampon(lamps: Byte); external;                /* not recommended */
#define lcharstr(typ, str) lcharstr_(typ, G_P2CSTR(str))
procedure lcharstr_(typ: longint; str: pstring128); external;
procedure leftbuffer(enable: Boolean); external;
procedure linesmooth(mode: cardinal); external;
procedure linewidthf(n: real); external;
procedure linewidth(n: Short); external;
procedure lmbind(target, indx: Short); external;
procedure lmcolor(mode: longint); external;
#define lmdef(deftype, indx, np, proparray) _lmdef_p_(deftype, indx, np, proparray)
procedure _lmdef_p_(deftype, indx, np: Short; var proparray: array[_lb4_.._ub4_:integer] of real); external;
procedure loadmatrix(var m: Matrix); external;
procedure loadname(name: Short); external;
procedure logicop(opcode: longint); external;
procedure lookat(vx, vy, vz, px, py, pz: Coord; twist: Angle); external;
function _lrectread_p_(x1, y1, x2, y2: Screencoord; var pixels: array[_lb5_.._ub5_:integer] of cardinal): longint; external;
#define lrectread(x1, y1, x2, y2, pixels) _lrectread_p_(x1, y1, x2, y2, pixels)
procedure _lrectwrite_p_(x1, y1, x2, y2: Screencoord; var parray: array[_lb5_.._ub5_:integer] of cardinal); external;
#define lrectwrite(x1, y1, x2, y2, parray) _lrectwrite_p_(x1, y1, x2, y2, parray)
#define lRGBrange(rmin, gmin, bmin, rmax, gmax, bmax, zmin, zmax) lRGBrange_(rmin, gmin, bmin, rmax, gmax, bmax, zmin, zmax)
procedure lRGBrange_(rmin, gmin, bmin, rmax, gmax, bmax: Short; zmin, zmax: longint); external;
procedure lsbackup(b: Boolean); external;               /* not recommended */
procedure lsetdepth(zmin, zmax: longint); external;
procedure lshaderange(imin, imax: Colorindex; zmin, zmax: longint); external;
procedure lsrepeat(factor: longint); external;
#define lstrwidth(typ, str) lstrwidth_(typ, G_P2CSTR(str))
function lstrwidth_(typ: longint; str: pstring128): longint; external;
procedure makeobj(obj: Object); external;
procedure maketag(t: Tag); external;
procedure mapcolor(c: Colorindex; red, green, blue: Short); external;
procedure mapw2(vobj: Object; sx, sy: Screencoord; var wx, wy: Coord); external;
procedure mapw(vobj: Object; sx, sy: Screencoord; var wx1, wy1, wz1, wx2, wy2, wz2: Coord); external;
procedure maxsize(x, y: longint); external;
procedure minmax(a, b: cardinal); external;
procedure minsize(x, y: longint); external;
procedure mmode(m: Short); external;
procedure monobuffer(); external;
procedure move2i(x, y: Icoord); external;
procedure move2s(x, y: Scoord); external;
procedure move2(x, y: Coord); external;
procedure movei(x, y, z: Icoord); external;
procedure moves(x, y, z: Scoord); external;
procedure move(x, y, z: Coord); external;
procedure msalpha(mode: longint); external;
procedure msmask(mask: real; flag: Boolean); external;
procedure mspattern(pattern: longint); external;
procedure mssample(mode: longint); external;
procedure mssize(samples, zsize, ssize: longint); external;
procedure mswapbuffers(fbuf: longint); external;
procedure multimap(); external;
procedure multisample(enable: Boolean); external;
procedure multmatrix(var m: Matrix); external;
procedure _n3f_p_(var v: array[_lb1_.._ub1_:integer] of real); external;
#define n3f(v) _n3f_p_(v)
function newpup(): longint; external;
procedure newtag(newtg, oldtg: Tag; offst: Offset); external;
procedure nmode(mode: longint); external;
procedure noborder(); external;
procedure noise(v: Device; delta: Short); external;
procedure noport(); external;
#define normal(fa) _normal_p_(fa)                       /* obsolete */
procedure _normal_p_(var fa: array[_lb1_.._ub1_:integer] of Coord); external;
#define nurbscurve(knot_count, knot_list, byte_size, ctlarray, order, typ) _nurbscurve_p_(knot_count, knot_list, byte_size, ctlarray, order, typ)
procedure _nurbscurve_p_(knot_count: longint; var knot_list: array[_lb2_.._ub2_:integer] of double; byte_size: longint; var ctlarray: array[_lb4_.._ub4_:integer] of double; order, typ: longint); external;
procedure _nurbssurface_p_(sknot_count: longint; var s_knot: array[_lb2_.._ub2_:integer] of double; tknot_count: longint; var t_knot: array[_lb4_.._ub4_:integer] of double; s_byte_size, t_byte_size: longint; var ctlarray: array[_lb7_.._ub7_:integer] of double; s_order, t_order, typ: longint); external;
#define nurbssurface(sknot_count, s_knot, tknot_count, t_knot, s_byte_size, t_byte_size, ctlarray, s_order, t_order, typ) _nurbssurface_p_(sknot_count, s_knot, tknot_count, t_knot, s_byte_size, t_byte_size, ctlarray, s_order, t_order, typ)
procedure objdelete(tag1, tag2: Tag); external;
procedure objinsert(t: Tag); external;
procedure objreplace(t: Tag); external;
procedure onemap(); external;
procedure ortho2(left, right, bottom, top: Coord); external;
procedure ortho(left, right, bottom, top, znear, zfar: Coord); external;
procedure overlay(planes: longint); external;
procedure pagecolor(c: Colorindex); external;           /* not recommended */
procedure passthrough(token: Short); external;
procedure patchbasis(uid, vid: longint); external;
procedure patchcurves(ucurves, vcurves: longint); external;
procedure patchprecision(usegments, vsegments: longint); external;
procedure patch(var geomx, geomy, geomz: Matrix); external;
procedure pclos(); external;
procedure pdr2i(x, y: Icoord); external;
procedure pdr2s(x, y: Scoord); external;
procedure pdr2(x, y: Coord); external;
procedure pdri(x, y, z: Icoord); external;
procedure pdrs(x, y, z: Scoord); external;
procedure pdr(x, y, z: Coord); external;
procedure perspective(fovy: Angle; aspect: real; znear, zfar: Coord); external;
#define pick(buffer, numnames) _pick_p_(buffer, numnames)
procedure _pick_p_(var buffer: array[_lb1_.._ub1_:integer] of Short; numnames: longint); external;
procedure picksize(deltax, deltay: Short); external;
#define pixelmap(map, size, parray) _pixelmap_p_(map, size, parray)
procedure _pixelmap_p_(map, size: longint; var parray: array[_lb3_.._ub3_:integer] of UnsignedShort); external;
procedure pixeltransfer(a: longint; b: real); external;
procedure pixmodef(mode: longint; value: real); external;
procedure pixmode(mode, value: longint); external;
procedure pmv2i(x, y: Icoord); external;
procedure pmv2s(x, y: Scoord); external;
procedure pmv2(x, y: Coord); external;
procedure pmvi(x, y, z: Icoord); external;
procedure pmvs(x, y, z: Scoord); external;
procedure pmv(x, y, z: Coord); external;
procedure pnt2i(x, y: Icoord); external;
procedure pnt2s(x, y: Scoord); external;
procedure pnt2(x, y: Coord); external;
procedure pnti(x, y, z: Icoord); external;
procedure pntsizef(n: real); external;
procedure pntsize(n: Short); external;
procedure pntsmooth(mode: cardinal); external;
procedure pnts(x, y, z: Scoord); external;
procedure pnt(x, y, z: Coord); external;
procedure polarview(dist: Coord; azim, inc, twist: Angle); external;
#define polf2i(n, parray) _polf2i_p_(n, parray)
procedure _polf2i_p_(n: longint; var parray: array[_lb2_.._ub2_:integer] of Icoord); external;
#define polf2(n, parray) _polf2_p_(n, parray)
procedure _polf2_p_(n: longint; var parray: array[_lb2_.._ub2_:integer] of Coord); external;
#define polf2s(n, parray) _polf2s_p_(n, parray)
procedure _polf2s_p_(n: longint; var parray: array[_lb2_.._ub2_:integer] of Scoord); external;
#define polfi(n, parray) _polfi_p_(n, parray)
procedure _polfi_p_(n: longint; var parray: array[_lb2_.._ub2_:integer] of Icoord); external;
#define polf(n, parray) _polf_p_(n, parray)
procedure _polf_p_(n: longint; var parray: array[_lb2_.._ub2_:integer] of Coord); external;
#define polfs(n, parray) _polfs_p_(n, parray)
procedure _polfs_p_(n: longint; var parray: array[_lb2_.._ub2_:integer] of Scoord); external;
#define poly2i(n, parray) _poly2i_p_(n, parray)
procedure _poly2i_p_(n: longint; var parray: array[_lb2_.._ub2_:integer] of Icoord); external;
#define poly2(n, parray) _poly2_p_(n, parray)
procedure _poly2_p_(n: longint; var parray: array[_lb2_.._ub2_:integer] of Coord); external;
#define poly2s(n, parray) _poly2s_p_(n, parray)
procedure _poly2s_p_(n: longint; var parray: array[_lb2_.._ub2_:integer] of Scoord); external;
#define polyi(n, parray) _polyi_p_(n, parray)
procedure _polyi_p_(n: longint; var parray: array[_lb2_.._ub2_:integer] of Icoord); external;
procedure polymode(mode: longint); external;
#define poly(n, parray) _poly_p_(n, parray)
procedure _poly_p_(n: longint; var parray: array[_lb2_.._ub2_:integer] of Coord); external;
procedure polysmooth(mode: longint); external;
#define polys(n, parray) _polys_p_(n, parray)
procedure _polys_p_(n: longint; var parray: array[_lb2_.._ub2_:integer] of Scoord); external;
procedure popattributes(); external;
procedure popmatrix(); external;
procedure popname(); external;
procedure popviewport(); external;
procedure prefposition(x1, x2, y1, y2: longint); external;
procedure prefsize(x, y: longint); external;
procedure pupmode(); external;                          /* obsolete */
procedure pushattributes(); external;
procedure pushmatrix(); external;
procedure pushname(name: Short); external;
procedure pushviewport(); external;
#define pwlcurve(cont, data_array, byte_size, typ) _pwlcurve_p_(cont, data_array, byte_size, typ)
procedure _pwlcurve_p_(cont: longint; var data_array: array[_lb2_.._ub2_:integer] of double; byte_size, typ: longint); external;
procedure qdevice(v: Device); external;
procedure qenter(qtype: Device; val: Short); external;
function qgetfd(): longint; external;
function qread(var data: Short): longint; external;
procedure qreset(); external;
function qtest(): longint; external;
#define rcrv(geom) _rcrv_p_(geom)
#define rcrvn(n, geom) _rcrvn_p_(n, geom)
procedure _rcrvn_p_(n: longint; var geom: array[_lb2_.._ub2_:integer] of Coord); external;
procedure _rcrv_p_(var geom: array[_lb1_.._ub1_:integer] of Coord); external;
procedure rdr2(dx, dy: Coord); external;
procedure rdr2i(dx, dy: Icoord); external;
procedure rdr2s(dx, dy: Scoord); external;
procedure rdr(dx, dy, dz: Coord); external;
procedure rdri(dx, dy, dz: Icoord); external;
procedure rdrs(dx, dy, dz: Scoord); external;
procedure readcomponent(mode: longint); external;
function _readdisplay_p_(x1, y1, x2, y2: Screencoord; var pixels: array[_lb5_.._ub5_:integer] of cardinal; hints: cardinal): longint; external;
#define readdisplay(x1, y1, x2, y2, pixels, hints) _readdisplay_p_(x1, y1, x2, y2, pixels, hints)
#define readpixels(n, colors) _readpixels_p_(n, colors)
function _readpixels_p_(n: Short; var colors: array[_lb2_.._ub2_:integer] of Colorindex): longint; external;
#define readRGB(n, red, green, blue) _readRGB_p_(n, red, green, blue)
function _readRGB_p_(n: Short; var red, green, blue: array[_lb4_.._ub4_:integer] of RGBvalue): longint; external;
procedure readsource(mode: longint); external;
procedure rectcopy(x1, y1, x2, y2, newx, newy: Screencoord); external;
procedure rectfi(x1, y1, x2, y2: Icoord); external;
procedure rectfs(x1, y1, x2, y2: Scoord); external;
procedure rectf(x1, y1, x2, y2: Coord); external;
procedure recti(x1, y1, x2, y2: Icoord); external;
function _rectread_p_(x1, y1, x2, y2: Screencoord; var pixels: array[_lb5_.._ub5_:integer] of Colorindex): longint; external;
#define rectread(x1, y1, x2, y2, pixels) _rectread_p_(x1, y1, x2, y2, pixels)
procedure rects(x1, y1, x2, y2: Scoord); external;
procedure _rectwrite_p_(x1, y1, x2, y2: Screencoord; var parray: array[_lb5_.._ub5_:integer] of Colorindex); external;
#define rectwrite(x1, y1, x2, y2, parray) _rectwrite_p_(x1, y1, x2, y2, parray)
procedure rect(x1, y1, x2, y2: Coord); external;
procedure rectzoom(xfactor, yfactor: real); external;
procedure resetls(b: Boolean); external;                /* not recommended */
procedure reshapeviewport(); external;
#define RGBcolor(red, green, blue) RGBcolor_(red, green, blue)
procedure RGBcolor_(red, green, blue: Short); external;
#define RGBcursor(index, red, green, blue, redm, greenm, bluem) RGBcursor_(index, red, green, blue, redm, greenm, bluem) /* obsolete */
procedure RGBcursor_(index, red, green, blue, redm, greenm, bluem: Short); external;
#define RGBmode RGBmode_
procedure RGBmode_(); external;
#define RGBrange(rmin, gmin, bmin, rmax, gmax, bmax, zmin, zmax) RGBrange_(rmin, gmin, bmin, rmax, gmax, bmax, zmin, zmax) /* obsolete */
procedure RGBrange_(rmin, gmin, bmin, rmax, gmax, bmax: Short; zmin, zmax: Screencoord); external;
#define RGBsize(mode) RGBsize_(mode)
procedure RGBsize_(mode: cardinal); external;
#define RGBwritemask(red, green, blue) RGBwritemask_(red, green, blue)
procedure RGBwritemask_(red, green, blue: Short); external;
procedure rightbuffer(enable: Boolean); external;
procedure ringbell(); external;
procedure rmv2(dx, dy: Coord); external;
procedure rmv2i(dx, dy: Icoord); external;
procedure rmv2s(dx, dy: Scoord); external;
procedure rmv(dx, dy, dz: Coord); external;
procedure rmvi(dx, dy, dz: Icoord); external;
procedure rmvs(dx, dy, dz: Scoord); external;
procedure rot(angle: real; axis: char); external;
procedure rotate(a: Angle; axis: char); external;
procedure rpatch(var geomx, geomy, geomz, geomw: Matrix); external;
procedure rpdr2(dx, dy: Coord); external;
procedure rpdr2i(dx, dy: Icoord); external;
procedure rpdr2s(dx, dy: Scoord); external;
procedure rpdr(dx, dy, dz: Coord); external;
procedure rpdri(dx, dy, dz: Icoord); external;
procedure rpdrs(dx, dy, dz: Scoord); external;
procedure rpmv2(dx, dy: Coord); external;
procedure rpmv2i(dx, dy: Icoord); external;
procedure rpmv2s(dx, dy: Scoord); external;
procedure rpmv(dx, dy, dz: Coord); external;
procedure rpmvi(dx, dy, dz: Icoord); external;
procedure rpmvs(dx, dy, dz: Scoord); external;
procedure sboxfi(x1, y1, x2, y2: Icoord); external;
procedure sboxfs(x1, y1, x2, y2: Scoord); external;
procedure sboxf(x1, y1, x2, y2: Coord); external;
procedure sboxi(x1, y1, x2, y2: Icoord); external;
procedure sboxs(x1, y1, x2, y2: Scoord); external;
procedure sbox(x1, y1, x2, y2: Coord); external;
procedure scale(x, y, z: real); external;
procedure sclear(sval: cardinal); external;
procedure scrbox(arg: longint); external;
procedure screenspace(); external;
procedure scrmask(left, right, bottom, top: Screencoord); external;
function scrnattach(gsnr: longint): longint; external;
function scrnselect(gsnr: longint): longint; external;
#define scrsubdivide(mode, params) _scrsubdivide_p_(mode, params)
procedure _scrsubdivide_p_(mode: longint; var params: array[_lb2_.._ub2_:integer] of real); external;
procedure setbell(mode: Byte); external;
procedure setcursor(index: Short; c, wtm: Colorindex); external;
procedure setdblights(mask: cardinal); external;
procedure setdepth(znear, zfar: Screencoord); external; /* obsolete */
procedure setlinestyle(index: Short); external;
procedure setmap(mapnum: Short); external;
procedure setmonitor(montype: Short); external;
procedure setnurbsproperty(property: longint; value: real); external;
procedure setpattern(index: Short); external;
procedure setpup(pup, menuindex: longint; mode: cardinal); external;
procedure setshade(shade: Colorindex); external;
procedure setvaluator(v: Device; init, vmin, vmax: Short); external;
procedure setvideo(reg, value: longint); external;
procedure shademodel(mode: longint); external;
procedure shaderange(lowindex, highindex: Colorindex; z1, z2: Screencoord); external; /* obsolete */
procedure singlebuffer(); external;
procedure smoothline(mode: longint); external;          /* obsolete */
procedure spclos(); external;                           /* obsolete */
#define splf2i(n, parray, iarray) _splf2i_p_(n, parray, iarray)
procedure _splf2i_p_(n: longint; var parray: array[_lb2_.._ub2_:integer] of Icoord; var iarray: array[_lb3_.._ub3_:integer] of Colorindex); external;
#define splf2(n, parray, iarray) _splf2_p_(n, parray, iarray)
procedure _splf2_p_(n: longint; var parray: array[_lb2_.._ub2_:integer] of Coord; var iarray: array[_lb3_.._ub3_:integer] of Colorindex); external;
#define splf2s(n, parray, iarray) _splf2s_p_(n, parray, iarray)
procedure _splf2s_p_(n: longint; var parray: array[_lb2_.._ub2_:integer] of Scoord; var iarray: array[_lb3_.._ub3_:integer] of Colorindex); external;
#define splfi(n, parray, iarray) _splfi_p_(n, parray, iarray)
procedure _splfi_p_(n: longint; var parray: array[_lb2_.._ub2_:integer] of Icoord; var iarray: array[_lb3_.._ub3_:integer] of Colorindex); external;
#define splf(n, parray, iarray) _splf_p_(n, parray, iarray)
procedure _splf_p_(n: longint; var parray: array[_lb2_.._ub2_:integer] of Coord; var iarray: array[_lb3_.._ub3_:integer] of Colorindex); external;
#define splfs(n, parray, iarray) _splfs_p_(n, parray, iarray)
procedure _splfs_p_(n: longint; var parray: array[_lb2_.._ub2_:integer] of Scoord; var iarray: array[_lb3_.._ub3_:integer] of Colorindex); external;
procedure stencil(enable: longint; ref: cardinal; func: longint; mask: cardinal; fail, pass, zpass: longint); external;
procedure stensize(planes: longint); external;
procedure stepunit(xunit, yunit: longint); external;
procedure stereobuffer(); external;
#define strwidth(str) strwidth_(G_P2CSTR(str))
function strwidth_(str: pstring128): longint; external;
procedure subpixel(flag: Boolean); external;
procedure _subtexload_p_(target, index: longint; l, r, b, t: real; nt: longint; var texels: array[_lb8_.._ub8_:integer] of cardinal; flags: cardinal); external;
#define subtexload(target, index, l, r, b, t, nt, texels, flags) _subtexload_p_(target, index, l, r, b, t, nt, texels, flags)
procedure swapbuffers(); external;
procedure swapinterval(i: Short); external;
procedure swaptmesh(); external;
function swinopen(wid: longint): longint; external;
procedure swritemask(mask: cardinal); external;
procedure _t2d_p_(var v: array[_lb1_.._ub1_:integer] of double); external;
#define t2d(v) _t2d_p_(v)
procedure _t2f_p_(var v: array[_lb1_.._ub1_:integer] of real); external;
#define t2f(v) _t2f_p_(v)
procedure _t2i_p_(var v: array[_lb1_.._ub1_:integer] of longint); external;
#define t2i(v) _t2i_p_(v)
procedure _t2s_p_(var v: array[_lb1_.._ub1_:integer] of Short); external;
#define t2s(v) _t2s_p_(v)
procedure _t3d_p_(var v: array[_lb1_.._ub1_:integer] of double); external;
#define t3d(v) _t3d_p_(v)
procedure _t3f_p_(var v: array[_lb1_.._ub1_:integer] of real); external;
#define t3f(v) _t3f_p_(v)
procedure _t3i_p_(var v: array[_lb1_.._ub1_:integer] of longint); external;
#define t3i(v) _t3i_p_(v)
procedure _t3s_p_(var v: array[_lb1_.._ub1_:integer] of Short); external;
#define t3s(v) _t3s_p_(v)
procedure _t4d_p_(var v: array[_lb1_.._ub1_:integer] of double); external;
#define t4d(v) _t4d_p_(v)
procedure _t4f_p_(var v: array[_lb1_.._ub1_:integer] of real); external;
#define t4f(v) _t4f_p_(v)
procedure _t4i_p_(var v: array[_lb1_.._ub1_:integer] of longint); external;
#define t4i(v) _t4i_p_(v)
procedure _t4s_p_(var v: array[_lb1_.._ub1_:integer] of Short); external;
#define t4s(v) _t4s_p_(v)
procedure tevbind(target, index: longint); external;
#define tevdef(index, np, props) _tevdef_p_(index, np, props)
procedure _tevdef_p_(index, np: longint; var props: array[_lb3_.._ub3_:integer] of real); external;
procedure texbind(target, index: longint); external;
#define texdef2d(n, nc, width, height, image, np, param) _texdef2d_p_(n, nc, width, height, image, np, param)
procedure _texdef2d_p_(n, nc, width, height: longint; var image: array[_lb5_.._ub5_:integer] of cardinal; np: longint; var param: array[_lb7_.._ub7_:integer] of real); external;
#define texdef3d(n, nc, width, height, depth, image, np, param) _texdef3d_p_(n, nc, width, height, depth, image, np, param)
procedure _texdef3d_p_(n, nc, width, height, depth: longint; var image: array[_lb6_.._ub6_:integer] of cardinal; np: longint; var param: array[_lb8_.._ub8_:integer] of real); external;
#define texgen(coord, mode, params) _texgen_p_(coord, mode, params)
procedure _texgen_p_(coord, mode: longint; var params: array[_lb3_.._ub3_:integer] of real); external;
procedure textcolor(c: Colorindex); external;           /* not recommended */
procedure textinit(); external;                         /* not recommended */
procedure textport(left, right, bottom, top: Screencoord); external; /* not recommended */
procedure tie(b, v1, v2: Device); external;
procedure tlutbind(target, index: longint); external;
#define tlutdef(index, nc, len, table, np, props) _tlutdef_p_(index, nc, len, table, np, props)
procedure _tlutdef_p_(index, nc, len: longint; var table: array[_lb4_.._ub4_:integer] of cardinal; np: longint; var props: array[_lb6_.._ub6_:integer] of real); external;
procedure tpoff(); external;                            /* not recommended */
procedure tpon(); external;                             /* not recommended */
procedure translate(x, y, z: Coord); external;
procedure underlay(planes: longint); external;
procedure unqdevice(v: Device); external;
procedure _v2d_p_(var v: array[_lb1_.._ub1_:integer] of double); external;
#define v2d(v) _v2d_p_(v)
procedure _v2f_p_(var v: array[_lb1_.._ub1_:integer] of real); external;
#define v2f(v) _v2f_p_(v)
procedure _v2i_p_(var v: array[_lb1_.._ub1_:integer] of longint); external;
#define v2i(v) _v2i_p_(v)
procedure _v2s_p_(var v: array[_lb1_.._ub1_:integer] of Short); external;
#define v2s(v) _v2s_p_(v)
procedure _v3d_p_(var v: array[_lb1_.._ub1_:integer] of double); external;
#define v3d(v) _v3d_p_(v)
procedure _v3f_p_(var v: array[_lb1_.._ub1_:integer] of real); external;
#define v3f(v) _v3f_p_(v)
procedure _v3i_p_(var v: array[_lb1_.._ub1_:integer] of longint); external;
#define v3i(v) _v3i_p_(v)
procedure _v3s_p_(var v: array[_lb1_.._ub1_:integer] of Short); external;
#define v3s(v) _v3s_p_(v)
procedure _v4d_p_(var v: array[_lb1_.._ub1_:integer] of double); external;
#define v4d(v) _v4d_p_(v)
procedure _v4f_p_(var v: array[_lb1_.._ub1_:integer] of real); external;
#define v4f(v) _v4f_p_(v)
procedure _v4i_p_(var v: array[_lb1_.._ub1_:integer] of longint); external;
#define v4i(v) _v4i_p_(v)
procedure _v4s_p_(var v: array[_lb1_.._ub1_:integer] of Short); external;
#define v4s(v) _v4s_p_(v)
procedure videocmd(cmd: longint); external;
procedure viewport(left, right, bottom, top: Screencoord); external;
function winattach(): longint; external;                /* obsolete */
procedure winclose(wid: longint); external;
procedure winconstraints(); external;
function windepth(wid: longint): longint; external;
procedure window(left, right, bottom, top, znear, zfar: Coord); external;
function winget(): longint; external;
procedure winmove(orgx, orgy: longint); external;
#define winopen(name) winopen_(G_P2CSTR(name))
function winopen_(name: pstring128): longint; external;
procedure winpop(); external;
procedure winposition(x1, x2, y1, y2: longint); external;
procedure winpush(); external;
procedure winset(wid: longint); external;
#define wintitle(name) wintitle_(G_P2CSTR(name))
procedure wintitle_(name: pstring128); external;
procedure wmpack(abgr: cardinal); external;
procedure writemask(wtm: Colorindex); external;
#define writepixels(n, colors) _writepixels_p_(n, colors)
procedure _writepixels_p_(n: Short; var colors: array[_lb2_.._ub2_:integer] of Colorindex); external;
#define writeRGB(n, red, green, blue) _writeRGB_p_(n, red, green, blue)
procedure _writeRGB_p_(n: Short; var red, green, blue: array[_lb4_.._ub4_:integer] of RGBvalue); external;
procedure xfpt2i(x, y: Icoord); external;               /* not recommended */
procedure xfpt2s(x, y: Scoord); external;               /* not recommended */
procedure xfpt2(x, y: Coord); external;                 /* not recommended */
procedure xfpt4i(x, y, z, w: Icoord); external;         /* not recommended */
procedure xfpt4s(x, y, z, w: Scoord); external;         /* not recommended */
procedure xfpt4(x, y, z, w: Coord); external;           /* not recommended */
procedure xfpti(x, y, z: Icoord); external;             /* not recommended */
procedure xfpts(x, y, z: Scoord); external;             /* not recommended */
procedure xfpt(x, y, z: Coord); external;               /* not recommended */
procedure zbsize(planes: longint); external;
procedure zbuffer(bool: Boolean); external;
procedure zclear(); external;
procedure zdraw(flag: Boolean); external;
procedure zfunction(func: longint); external;
procedure zsource(zsrc: longint); external;             /* not recommended */
procedure zwritemask(mask: cardinal); external;
#endif /* !__GL_PGL_H__ */
