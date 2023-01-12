#ifndef __GL_PDEVICE_H__
#define __GL_PDEVICE_H__
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

/*
 * Device name space partitioning
 *
 *  16#0000 -> 16#0fff	devices defined by SGI
 *    16#0001 -> 16#00ff	    buttons
 *    16#0100 -> 16#01ff	    valuators
 *    16#0200 -> 16#02ff	    pseudo devices
 *    16#0300 -> 16#0eff	    reserved
 *    16#0f00 -> 16#0fff	    additional buttons
 *
 *  16#1000 -> 16#7fff	devices defined by users
 *    16#1000 -> 16#2fff	    buttons
 *    16#3000 -> 16#3fff	    valuators
 *    16#4000 -> 16#7fff	    pseudo devices
 *
 *  16#8000 -> 16#ffff	can not be used
 */

/* macros to test valuator and button numbers */

#define ISBUTTON(b)	(((b) >= BUTOFFSET) and ((b) < VALOFFSET) or \
			 ((b) >= BUT2OFFSET) and ((b) < USERVALOFFSET))
#define ISVALUATOR(b)	(((b) >= VALOFFSET) and ((b) < PSEUDOFFSET) or \
			 ((b) >= USERVALOFFSET) and ((b) < USERPSEUDOFFSET))

#define ISTIMER(t)	(((t) >= TIMOFFSET) and ((t) < (TIMCOUNT+TIMOFFSET)))
#define ISDIAL(t)	(((t) >= DIAL0) and ((t) <= DIAL8))
#define ISLPEN(t)	(((t) = LPENX) or ((t) = LPENY))
#define ISLPENBUT(t)	((t) = LPENBUT)
#define ISBPADBUT(t)	(((t) >= BPAD0) and ((t) <= BPAD3))
#define ISSW(t)		(((t) >= SW0) and ((t) <= SW31))
#define ISSTDKEYBD(t)	(((t) >= BUT0) and ((t) <= MAXKBDBUT))
#define ISXKEYBD(t)	(((t) >= XKBDOFFSET) and ((t) < (XKBDCOUNT+XKBDOFFSET)))
#define ISKEYBD(t)	(ISSTDKEYBD(t) or ISXKEYBD(t))
#define ISSBALL(t)	(((t) >= SBTX) and ((t) <= SBPERIOD))
#define ISSBALLBUT(t)	(((t) >= SBPICK) and ((t) <= SBBUT8))
#define ISVIDEO(t)	((t) = VIDEO)


const NULLDEV 		= 0;
const BUTOFFSET 	= 1;
const VALOFFSET 	= 256; 	/* 16#0100 */
const PSEUDOFFSET 	= 512; 	/* 16#0200 */
const BUT2OFFSET 	= 3840; 	/* 16#0f00 */

const TIMOFFSET 	= 515;
const XKBDOFFSET 	= 143;

const BUTCOUNT 		= 255;
const VALCOUNT 		= 256;

const TIMCOUNT 		= 4;
const XKBDCOUNT 	= 28;

const USERBUTOFFSET 	= 4096; 	/* 16#1000 */
const USERVALOFFSET 	= 12288; 	/* 16#3000 */
const USERPSEUDOFFSET 	= 16384; 	/* 16#4000 */

/*
 * Button definitions for the base US keyboards
 *
 *                    button         button      kbd
 *                    number         offset      hex  key
 *                    ======       ===========   ===  ===== */
const BUT0 		= 1; 	/* 0+BUTOFFSET, 0, "break" (83-key) */
const BUT1 		= 2; 	/* 1+BUTOFFSET, 1, "setup" (83-key) */
const BUT2 		= 3; 	/* 2+BUTOFFSET, 2, "left ctrl" */
const BUT3 		= 4; 	/* 3+BUTOFFSET, 3, "caps lock" */
const BUT4 		= 5; 	/* 4+BUTOFFSET, 4, "right shift" */
const BUT5 		= 6; 	/* 5+BUTOFFSET, 5, "left shift" */
const BUT6 		= 7; 	/* 6+BUTOFFSET, 6, "escape" */
const BUT7 		= 8; 	/* 7+BUTOFFSET, 7, "1" */
const BUT8 		= 9; 	/* 8+BUTOFFSET, 8, "tab" */
const BUT9 		= 10; 	/* 9+BUTOFFSET, 9, "Q" */
const BUT10 		= 11; 	/* 10+BUTOFFSET, A, "A" */
const BUT11 		= 12; 	/* 11+BUTOFFSET, B, "S" */
const BUT12 		= 13; 	/* 12+BUTOFFSET, C, "no scroll" (83-key) */
const BUT13 		= 14; 	/* 13+BUTOFFSET, D, "2" */
const BUT14 		= 15; 	/* 14+BUTOFFSET, E, "3" */
const BUT15 		= 16; 	/* 15+BUTOFFSET, F, "W" */
const BUT16 		= 17; 	/* 16+BUTOFFSET, 10, "E" */
const BUT17 		= 18; 	/* 17+BUTOFFSET, 11, "D" */
const BUT18 		= 19; 	/* 18+BUTOFFSET, 12, "F" */
const BUT19 		= 20; 	/* 19+BUTOFFSET, 13, "Z" */
const BUT20 		= 21; 	/* 20+BUTOFFSET, 14, "X" */
const BUT21 		= 22; 	/* 21+BUTOFFSET, 15, "4" */
const BUT22 		= 23; 	/* 22+BUTOFFSET, 16, "5" */
const BUT23 		= 24; 	/* 23+BUTOFFSET, 17, "R" */
const BUT24 		= 25; 	/* 24+BUTOFFSET, 18, "T" */
const BUT25 		= 26; 	/* 25+BUTOFFSET, 19, "G" */
const BUT26 		= 27; 	/* 26+BUTOFFSET, 1A, "H" */
const BUT27 		= 28; 	/* 27+BUTOFFSET, 1B, "C" */
const BUT28 		= 29; 	/* 28+BUTOFFSET, 1C, "V" */
const BUT29 		= 30; 	/* 29+BUTOFFSET, 1D, "6" */
const BUT30 		= 31; 	/* 30+BUTOFFSET, 1E, "7" */
const BUT31 		= 32; 	/* 31+BUTOFFSET, 1F, "Y" */
const BUT32 		= 33; 	/* 32+BUTOFFSET, 20, "U" */
const BUT33 		= 34; 	/* 33+BUTOFFSET, 21, "J" */
const BUT34 		= 35; 	/* 34+BUTOFFSET, 22, "K" */
const BUT35 		= 36; 	/* 35+BUTOFFSET, 23, "B" */
const BUT36 		= 37; 	/* 36+BUTOFFSET, 24, "N" */
const BUT37 		= 38; 	/* 37+BUTOFFSET, 25, "8" */
const BUT38 		= 39; 	/* 38+BUTOFFSET, 26, "9" */
const BUT39 		= 40; 	/* 39+BUTOFFSET, 27, "I" */
const BUT40 		= 41; 	/* 40+BUTOFFSET, 28, "O" */
const BUT41 		= 42; 	/* 41+BUTOFFSET, 29, "L" */
const BUT42 		= 43; 	/* 42+BUTOFFSET, 2A, ";" */
const BUT43 		= 44; 	/* 43+BUTOFFSET, 2B, "M" */
const BUT44 		= 45; 	/* 44+BUTOFFSET, 2C, "," */
const BUT45 		= 46; 	/* 45+BUTOFFSET, 2D, "0" */
const BUT46 		= 47; 	/* 46+BUTOFFSET, 2E, "-" */
const BUT47 		= 48; 	/* 47+BUTOFFSET, 2F, "P" */
const BUT48 		= 49; 	/* 48+BUTOFFSET, 30, "[" */
const BUT49 		= 50; 	/* 49+BUTOFFSET, 31, "'" */
const BUT50 		= 51; 	/* 50+BUTOFFSET, 32, "return" */
const BUT51 		= 52; 	/* 51+BUTOFFSET, 33, "." */
const BUT52 		= 53; 	/* 52+BUTOFFSET, 34, "/" */
const BUT53 		= 54; 	/* 53+BUTOFFSET, 35, "=" */
const BUT54 		= 55; 	/* 54+BUTOFFSET, 36, "`" */
const BUT55 		= 56; 	/* 55+BUTOFFSET, 37, "]" */
const BUT56 		= 57; 	/* 56+BUTOFFSET, 38, "\" */
const BUT57 		= 58; 	/* 57+BUTOFFSET, 39, num pad "1" */
const BUT58 		= 59; 	/* 58+BUTOFFSET, 3A, num pad "0" */
const BUT59 		= 60; 	/* 59+BUTOFFSET, 3B, "line feed" (83-key) */
const BUT60 		= 61; 	/* 60+BUTOFFSET, 3C, "back space" */
const BUT61 		= 62; 	/* 61+BUTOFFSET, 3D, "delete" */
const BUT62 		= 63; 	/* 62+BUTOFFSET, 3E, num pad "4" */
const BUT63 		= 64; 	/* 63+BUTOFFSET, 3F, num pad "2" */
const BUT64 		= 65; 	/* 64+BUTOFFSET, 40, num pad "3" */
const BUT65 		= 66; 	/* 65+BUTOFFSET, 41, num pad "." */
const BUT66 		= 67; 	/* 66+BUTOFFSET, 42, num pad "7" */
const BUT67 		= 68; 	/* 67+BUTOFFSET, 43, num pad "8" */
const BUT68 		= 69; 	/* 68+BUTOFFSET, 44, num pad "5" */
const BUT69 		= 70; 	/* 69+BUTOFFSET, 45, num pad "6" */
const BUT70 		= 71; 	/* 70+BUTOFFSET, 46, num pad "pf2" (83-key) */
const BUT71 		= 72; 	/* 71+BUTOFFSET, 47, num pad "pf1" (83-key) */
const BUT72 		= 73; 	/* 72+BUTOFFSET, 48, "left arrow" */
const BUT73 		= 74; 	/* 73+BUTOFFSET, 49, "down arrow" */
const BUT74 		= 75; 	/* 74+BUTOFFSET, 4A, num pad "9" */
const BUT75 		= 76; 	/* 75+BUTOFFSET, 4B, num pad "-" */
const BUT76 		= 77; 	/* 76+BUTOFFSET, 4C, num pad "," (83-key) */
const BUT77 		= 78; 	/* 77+BUTOFFSET, 4D, num pad "pf4" (83-key) */
const BUT78 		= 79; 	/* 78+BUTOFFSET, 4E, num pad "pf3" (83-key) */
const BUT79 		= 80; 	/* 79+BUTOFFSET, 4F, "right arrow" */
const BUT80 		= 81; 	/* 80+BUTOFFSET, 50, "up arrow" */
const BUT81 		= 82; 	/* 81+BUTOFFSET, 51, num pad "enter" */
const BUT82 		= 83; 	/* 82+BUTOFFSET, 52, "space" */
const MAXKBDBUT 	= 83; 	/* BUT82 */

/* Mouse buttons, etc. */
const BUT100 		= 101; 	/* 100+BUTOFFSET, Mouse button 1 */
const BUT101 		= 102; 	/* 101+BUTOFFSET, Mouse button 2 */
const BUT102 		= 103; 	/* 102+BUTOFFSET, Mouse button 3 */
const BUT103 		= 104; 	/* Light Pen Button */
const BUT104 		= 105; 	/* Bitpad Button 0 */
const BUT105 		= 106; 	/* Bitpad Button 1 */
const BUT106 		= 107; 	/* Bitpad Button 2 */
const BUT107 		= 108; 	/* Bitpad Button 3 */
const BUT108 		= 109; 	/* Light Pen Valid */
const BUT109 		= 110; 	/* UNUSED */

/* Button box definitions */
const BUT110 		= 111; 	/* 110+BUTOFFSET, Button box switch 0 */
const BUT111 		= 112; 	/* 111+BUTOFFSET, Button box switch 1 */
const BUT112 		= 113; 	/* 112+BUTOFFSET, Button box switch 2 */
const BUT113 		= 114; 	/* 113+BUTOFFSET, Button box switch 3 */
const BUT114 		= 115; 	/* 114+BUTOFFSET, Button box switch 4 */
const BUT115 		= 116; 	/* 115+BUTOFFSET, Button box switch 5 */
const BUT116 		= 117; 	/* 116+BUTOFFSET, Button box switch 6 */
const BUT117 		= 118; 	/* 117+BUTOFFSET, Button box switch 7 */
const BUT118 		= 119; 	/* 118+BUTOFFSET, Button box switch 8 */
const BUT119 		= 120; 	/* 119+BUTOFFSET, Button box switch 9 */
const BUT120 		= 121; 	/* 120+BUTOFFSET, Button box switch 10 */
const BUT121 		= 122; 	/* 121+BUTOFFSET, Button box switch 11 */
const BUT122 		= 123; 	/* 122+BUTOFFSET, Button box switch 12 */
const BUT123 		= 124; 	/* 123+BUTOFFSET, Button box switch 13 */
const BUT124 		= 125; 	/* 124+BUTOFFSET, Button box switch 14 */
const BUT125 		= 126; 	/* 125+BUTOFFSET, Button box switch 15 */
const BUT126 		= 127; 	/* 126+BUTOFFSET, Button box switch 16 */
const BUT127 		= 128; 	/* 127+BUTOFFSET, Button box switch 17 */
const BUT128 		= 129; 	/* 128+BUTOFFSET, Button box switch 18 */
const BUT129 		= 130; 	/* 129+BUTOFFSET, Button box switch 19 */
const BUT130 		= 131; 	/* 130+BUTOFFSET, Button box switch 20 */
const BUT131 		= 132; 	/* 131+BUTOFFSET, Button box switch 21 */
const BUT132 		= 133; 	/* 132+BUTOFFSET, Button box switch 22 */
const BUT133 		= 134; 	/* 133+BUTOFFSET, Button box switch 23 */
const BUT134 		= 135; 	/* 134+BUTOFFSET, Button box switch 24 */
const BUT135 		= 136; 	/* 135+BUTOFFSET, Button box switch 25 */
const BUT136 		= 137; 	/* 136+BUTOFFSET, Button box switch 26 */
const BUT137 		= 138; 	/* 137+BUTOFFSET, Button box switch 27 */
const BUT138 		= 139; 	/* 138+BUTOFFSET, Button box switch 28 */
const BUT139 		= 140; 	/* 139+BUTOFFSET, Button box switch 29 */
const BUT140 		= 141; 	/* 140+BUTOFFSET, Button box switch 30 */
const BUT141 		= 142; 	/* 141+BUTOFFSET, Button box switch 31 */

/* Button definitions for the extended keyboard.  Although current keyboards
 * are 101 or 102 keys, there are 112 positions and so that many values are
 * reserved.
 *
 *                    button         button      kbd
 *                    number         offset      hex  key
 *                    ======       ===========   ===  ===== */
const BUT142 		= 143; 	/* 142+BUTOFFSET, 53 "left ALT" */
const BUT143 		= 144; 	/* 143+BUTOFFSET, 54 "right ALT" */
const BUT144 		= 145; 	/* 144+BUTOFFSET, 55 "right ctrl" */
const BUT145 		= 146; 	/* 145+BUTOFFSET, 56 "F1" */
const BUT146 		= 147; 	/* 146+BUTOFFSET, 57 "F2" */
const BUT147 		= 148; 	/* 147+BUTOFFSET, 58 "F3" */
const BUT148 		= 149; 	/* 148+BUTOFFSET, 59 "F4" */
const BUT149 		= 150; 	/* 149+BUTOFFSET, 5A "F5" */
const BUT150 		= 151; 	/* 150+BUTOFFSET, 5B "F6" */
const BUT151 		= 152; 	/* 151+BUTOFFSET, 5C "F7" */
const BUT152 		= 153; 	/* 152+BUTOFFSET, 5D "F8" */
const BUT153 		= 154; 	/* 153+BUTOFFSET, 5E "F9" */
const BUT154 		= 155; 	/* 154+BUTOFFSET, 5F "F10" */
const BUT155 		= 156; 	/* 155+BUTOFFSET, 60 "F11" */
const BUT156 		= 157; 	/* 156+BUTOFFSET, 61 "F12" */
const BUT157 		= 158; 	/* 157+BUTOFFSET, 62 "print screen" */
const BUT158 		= 159; 	/* 158+BUTOFFSET, 63 "scroll lock" */
const BUT159 		= 160; 	/* 159+BUTOFFSET, 64 "pause" */
const BUT160 		= 161; 	/* 160+BUTOFFSET, 65 "insert" */
const BUT161 		= 162; 	/* 161+BUTOFFSET, 66 "home" */
const BUT162 		= 163; 	/* 162+BUTOFFSET, 67 "page up" */
const BUT163 		= 164; 	/* 163+BUTOFFSET, 68 "end" */
const BUT164 		= 165; 	/* 164+BUTOFFSET, 69 "page down" */
const BUT165 		= 166; 	/* 165+BUTOFFSET, 6A "num lock" */
const BUT166 		= 167; 	/* 166+BUTOFFSET, 6B num pad "/" */
const BUT167 		= 168; 	/* 167+BUTOFFSET, 6C num pad "*" */
const BUT168 		= 169; 	/* 168+BUTOFFSET, 6D num pad "+" */

/*
 * BUT169 (=170) through BUT179 (=180) are reserved for the remainder of
 * the 112 key positions.
 */

/*
 * BUT181 through BUT189 are used for the nine buttons of the Space Ball.
 *
 * Codes through 255 inclusive are reserved for future use by SGI.
 */
const BUT181 		= 182; 	/* 181+BUTOFFSET, space ball button 0 */
const BUT182 		= 183; 	/* 182+BUTOFFSET, space ball button 1 */
const BUT183 		= 184; 	/* 183+BUTOFFSET, space ball button 2 */
const BUT184 		= 185; 	/* 184+BUTOFFSET, space ball button 3 */
const BUT185 		= 186; 	/* 185+BUTOFFSET, space ball button 4 */
const BUT186 		= 187; 	/* 186+BUTOFFSET, space ball button 5 */
const BUT187 		= 188; 	/* 187+BUTOFFSET, space ball button 6 */
const BUT188 		= 189; 	/* 188+BUTOFFSET, space ball button 7 */
const BUT189 		= 190; 	/* 189+BUTOFFSET, space ball button 8 */

/* other buttons */

const MOUSE1 		= 101; 	/* BUT100 */
const MOUSE2 		= 102; 	/* BUT101 */
const MOUSE3 		= 103; 	/* BUT102 */
const LEFTMOUSE 	= 103; 	/* BUT102 */
const MIDDLEMOUSE 	= 102; 	/* BUT101 */
const RIGHTMOUSE 	= 101; 	/* BUT100 */
const LPENBUT 		= 104; 	/* LIGHT PEN BUTTON */
const BPAD0 		= 105; 	/* BITPAD BUTTON 0 */
const BPAD1 		= 106; 	/* BITPAD BUTTON 1 */
const BPAD2 		= 107; 	/* BITPAD BUTTON 2 */
const BPAD3 		= 108; 	/* BITPAD BUTTON 3 */
const LPENVALID 	= 109; 	/* LIGHT PEN VALID */

/* button box */

const SWBASE 		= 111; 	/* BUT110 */
const SW0 		= 111; 	/* SWBASE */
const SW1 		= 112; 	/* SWBASE+1 */
const SW2 		= 113; 	/* SWBASE+2 */
const SW3 		= 114; 	/* SWBASE+3 */
const SW4 		= 115; 	/* SWBASE+4 */
const SW5 		= 116; 	/* SWBASE+5 */
const SW6 		= 117; 	/* SWBASE+6 */
const SW7 		= 118; 	/* SWBASE+7 */
const SW8 		= 119; 	/* SWBASE+8 */
const SW9 		= 120; 	/* SWBASE+9 */
const SW10 		= 121; 	/* SWBASE+10 */
const SW11 		= 122; 	/* SWBASE+11 */
const SW12 		= 123; 	/* SWBASE+12 */
const SW13 		= 124; 	/* SWBASE+13 */
const SW14 		= 125; 	/* SWBASE+14 */
const SW15 		= 126; 	/* SWBASE+15 */
const SW16 		= 127; 	/* SWBASE+16 */
const SW17 		= 128; 	/* SWBASE+17 */
const SW18 		= 129; 	/* SWBASE+18 */
const SW19 		= 130; 	/* SWBASE+19 */
const SW20 		= 131; 	/* SWBASE+20 */
const SW21 		= 132; 	/* SWBASE+21 */
const SW22 		= 133; 	/* SWBASE+22 */
const SW23 		= 134; 	/* SWBASE+23 */
const SW24 		= 135; 	/* SWBASE+24 */
const SW25 		= 136; 	/* SWBASE+25 */
const SW26 		= 137; 	/* SWBASE+26 */
const SW27 		= 138; 	/* SWBASE+27 */
const SW28 		= 139; 	/* SWBASE+28 */
const SW29 		= 140; 	/* SWBASE+29 */
const SW30 		= 141; 	/* SWBASE+30 */
const SW31 		= 142; 	/* SWBASE+31 */

/* space ball buttons */

const SBBASE 		= 182; 	/* BUT181 */
const SBPICK 		= 182; 	/* SBBASE */
const SBBUT1 		= 183; 	/* SBBASE+1 */
const SBBUT2 		= 184; 	/* SBBASE+2 */
const SBBUT3 		= 185; 	/* SBBASE+3 */
const SBBUT4 		= 186; 	/* SBBASE+4 */
const SBBUT5 		= 187; 	/* SBBASE+5 */
const SBBUT6 		= 188; 	/* SBBASE+6 */
const SBBUT7 		= 189; 	/* SBBASE+7 */
const SBBUT8 		= 190; 	/* SBBASE+8 */

/* standard keyboard */

const AKEY 		= 11; 	/* BUT10 */
const BKEY 		= 36; 	/* BUT35 */
const CKEY 		= 28; 	/* BUT27 */
const DKEY 		= 18; 	/* BUT17 */
const EKEY 		= 17; 	/* BUT16 */
const FKEY 		= 19; 	/* BUT18 */
const GKEY 		= 26; 	/* BUT25 */
const HKEY 		= 27; 	/* BUT26 */
const IKEY 		= 40; 	/* BUT39 */
const JKEY 		= 34; 	/* BUT33 */
const KKEY 		= 35; 	/* BUT34 */
const LKEY 		= 42; 	/* BUT41 */
const MKEY 		= 44; 	/* BUT43 */
const NKEY 		= 37; 	/* BUT36 */
const OKEY 		= 41; 	/* BUT40 */
const PKEY 		= 48; 	/* BUT47 */
const QKEY 		= 10; 	/* BUT9 */
const RKEY 		= 24; 	/* BUT23 */
const SKEY 		= 12; 	/* BUT11 */
const TKEY 		= 25; 	/* BUT24 */
const UKEY 		= 33; 	/* BUT32 */
const VKEY 		= 29; 	/* BUT28 */
const WKEY 		= 16; 	/* BUT15 */
const XKEY 		= 21; 	/* BUT20 */
const YKEY 		= 32; 	/* BUT31 */
const ZKEY 		= 20; 	/* BUT19 */
const ZEROKEY 		= 46; 	/* BUT45 */
const ONEKEY 		= 8; 	/* BUT7 */
const TWOKEY 		= 14; 	/* BUT13 */
const THREEKEY 		= 15; 	/* BUT14 */
const FOURKEY 		= 22; 	/* BUT21 */
const FIVEKEY 		= 23; 	/* BUT22 */
const SIXKEY 		= 30; 	/* BUT29 */
const SEVENKEY 		= 31; 	/* BUT30 */
const EIGHTKEY 		= 38; 	/* BUT37 */
const NINEKEY 		= 39; 	/* BUT38 */
const BREAKKEY 		= 1; 	/* BUT0 */
const SETUPKEY 		= 2; 	/* BUT1 */
const CTRLKEY 		= 3; 	/* BUT2 */
const LEFTCTRLKEY 	= 3; 	/* BUT2 */
const CAPSLOCKKEY 	= 4; 	/* BUT3 */
const RIGHTSHIFTKEY 	= 5; 	/* BUT4 */
const LEFTSHIFTKEY 	= 6; 	/* BUT5 */
const NOSCRLKEY 	= 13; 	/* BUT12 */
const ESCKEY 		= 7; 	/* BUT6 */
const TABKEY 		= 9; 	/* BUT8 */
const RETKEY 		= 51; 	/* BUT50 */
const SPACEKEY 		= 83; 	/* BUT82 */
const LINEFEEDKEY 	= 60; 	/* BUT59 */
const BACKSPACEKEY 	= 61; 	/* BUT60 */
const DELKEY 		= 62; 	/* BUT61 */
const SEMICOLONKEY 	= 43; 	/* BUT42 */
const PERIODKEY 	= 52; 	/* BUT51 */
const COMMAKEY 		= 45; 	/* BUT44 */
const QUOTEKEY 		= 50; 	/* BUT49 */
const ACCENTGRAVEKEY 	= 55; 	/* BUT54 */
const MINUSKEY 		= 47; 	/* BUT46 */
const VIRGULEKEY 	= 53; 	/* BUT52 */
const BACKSLASHKEY 	= 57; 	/* BUT56 */
const EQUALKEY 		= 54; 	/* BUT53 */
const LEFTBRACKETKEY 	= 49; 	/* BUT48 */
const RIGHTBRACKETKEY 	= 56; 	/* BUT55 */
const LEFTARROWKEY 	= 73; 	/* BUT72 */
const DOWNARROWKEY 	= 74; 	/* BUT73 */
const RIGHTARROWKEY 	= 80; 	/* BUT79 */
const UPARROWKEY 	= 81; 	/* BUT80 */
const PAD0 		= 59; 	/* BUT58 */
const PAD1 		= 58; 	/* BUT57 */
const PAD2 		= 64; 	/* BUT63 */
const PAD3 		= 65; 	/* BUT64 */
const PAD4 		= 63; 	/* BUT62 */
const PAD5 		= 69; 	/* BUT68 */
const PAD6 		= 70; 	/* BUT69 */
const PAD7 		= 67; 	/* BUT66 */
const PAD8 		= 68; 	/* BUT67 */
const PAD9 		= 75; 	/* BUT74 */
const PADPF1 		= 72; 	/* BUT71 */
const PADPF2 		= 71; 	/* BUT70 */
const PADPF3 		= 79; 	/* BUT78 */
const PADPF4 		= 78; 	/* BUT77 */
const PADPERIOD 	= 66; 	/* BUT65 */
const PADMINUS 		= 76; 	/* BUT75 */
const PADCOMMA 		= 77; 	/* BUT76 */
const PADENTER 		= 82; 	/* BUT81 */

/* the extended keyboard */

const LEFTALTKEY 	= 143;
const RIGHTALTKEY 	= 144;
const RIGHTCTRLKEY 	= 145;
const F1KEY 		= 146;
const F2KEY 		= 147;
const F3KEY 		= 148;
const F4KEY 		= 149;
const F5KEY 		= 150;
const F6KEY 		= 151;
const F7KEY 		= 152;
const F8KEY 		= 153;
const F9KEY 		= 154;
const F10KEY 		= 155;
const F11KEY 		= 156;
const F12KEY 		= 157;
const PRINTSCREENKEY 	= 158;
const SCROLLLOCKKEY 	= 159;
const PAUSEKEY 		= 160;
const INSERTKEY 	= 161;
const HOMEKEY 		= 162;
const PAGEUPKEY 	= 163;
const ENDKEY 		= 164;
const PAGEDOWNKEY 	= 165;
const NUMLOCKKEY 	= 166;
const PADVIRGULEKEY 	= 167;
const PADASTERKEY 	= 168;
const PADPLUSKEY 	= 169;

/* 
 * By rights, we should define symbolic entries here for all of the new
 * characters brought to us by ISO 8859-1.  In fact, since there is no
 * current convention to avoid making new symbols that are unique, the
 * danger of collison with existing user symbols is too high. 
 */


/* valuators */

const SGIRESERVED 	= 256; 	/* 0+VALOFFSET */
const DIAL0 		= 257; 	/* 1+VALOFFSET */
const DIAL1 		= 258; 	/* 2+VALOFFSET */
const DIAL2 		= 259; 	/* 3+VALOFFSET */
const DIAL3 		= 260; 	/* 4+VALOFFSET */
const DIAL4 		= 261; 	/* 5+VALOFFSET */
const DIAL5 		= 262; 	/* 6+VALOFFSET */
const DIAL6 		= 263; 	/* 7+VALOFFSET */
const DIAL7 		= 264; 	/* 8+VALOFFSET */
const DIAL8 		= 265; 	/* 9+VALOFFSET */
const MOUSEX 		= 266; 	/* 10+VALOFFSET */
const MOUSEY 		= 267; 	/* 11+VALOFFSET */
const LPENX 		= 268; 	/* 12+VALOFFSET */
const LPENY 		= 269; 	/* 13+VALOFFSET */
const BPADX 		= 270; 	/* 14+VALOFFSET */
const BPADY 		= 271; 	/* 15+VALOFFSET */
const CURSORX 		= 272; 	/* 16+VALOFFSET */
const CURSORY 		= 273; 	/* 17+VALOFFSET */
const GHOSTX 		= 274; 	/* 18+VALOFFSET */
const GHOSTY 		= 275; 	/* 19+VALOFFSET */

/* Space Ball valuators */

const SBTX 		= 276; 	/* 20+VALOFFSET */
const SBTY 		= 277; 	/* 21+VALOFFSET */
const SBTZ 		= 278; 	/* 22+VALOFFSET */
const SBRX 		= 279; 	/* 23+VALOFFSET */
const SBRY 		= 280; 	/* 24+VALOFFSET */
const SBRZ 		= 281; 	/* 25+VALOFFSET */
const SBPERIOD 		= 282; 	/* 26+VALOFFSET */

/* timers */

const TIMER0 		= 515; 	/* 0+TIMOFFSET */
const TIMER1 		= 516; 	/* 1+TIMOFFSET */
const TIMER2 		= 517; 	/* 2+TIMOFFSET */
const TIMER3 		= 518; 	/* 3+TIMOFFSET */

/* misc devices */

const KEYBD 		= 513; 	/* keyboard */
const RAWKEYBD 		= 514; 	/* raw keyboard for keyboard manager */
const VALMARK 		= 523; 	/* valuator mark */
const REDRAW 		= 528; 	/* used by port manager to signal redraws */
const INPUTCHANGE 	= 534; 	/* input connected or disconnected */
const QFULL 		= 535; 	/* queue was filled */
const QREADERROR 	= 538; 	/* qread error */
const WINFREEZE 	= 539; 	/* user wants process in this win to shut up */
const WINTHAW 		= 540; 	/* user wants process in this win to go again */
const REDRAWICONIC 	= 541; 	/* used to signal redraw as an icon */
const WINQUIT 		= 542; 	/* signal from user that app is to go away */
const DEPTHCHANGE 	= 543; 	/* window stacking order changed */
const WINSHUT 		= 546; 	/* window shutdown */
const DRAWOVERLAY 	= 547; 	/* overlay planes have been damaged */
const VIDEO 		= 548; 	/* video notification */

const MENUBUTTON 	= 101; 	/* the button used by dopup */


/* 
 * obsolete symbols 
 */

#define DEVICEDEF 	 __GL_PDEVICE_H__

const WINCLOSED 	= 537; 	/* window close */
const KEYBDFNAMES 	= 544; 	/* function key names */
const KEYBDFSTRINGS 	= 545; 	/* function key strings */
const MAXSGIDEVICE 	= 20000;

/* these events only occur when using the mex window manager (3K Series) */
const GERROR 		= 524; 	/* errors device */
const WMSEND 		= 529; 	/* data in proc's shmem */
const WMREPLY 		= 530; 	/* reply from port manager */
const WMGFCLOSE 	= 531; 	/* graphport is no longer being used */
const WMTXCLOSE 	= 532; 	/* textport is no longer being used */
const MODECHANGE 	= 533; 	/* the display mode has changed */
const PIECECHANGE 	= 536; 	/* change in the window pieces */


#endif	/* !__GL_PDEVICE_H__ */
