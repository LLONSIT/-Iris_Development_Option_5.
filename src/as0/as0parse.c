#include <stdio.h>
#include <stdlib.h>
#include "as0_common.h"
#include "common_types.h"


void func_0040FB2C(void) {
    if (linelength >= nextinline) {
        if (((isalpha(line[nextinline]))) || (line[nextinline] == 0x39)) {
            posterror("Badly delimited numeric literal", 0, 1);
        }
    }
}

void func_00404B80(s32 arg0, s32 arg1, s32 arg2) {
    u32 var_v0;

    switch (arg0) {                                 /* switch 1; irregular */
    default:                                        /* switch 1 */
    case 1:                                         /* switch 1 */
        var_v0 = asm_info[arg2].unk4 << 0x11  >> 0x1B;
        break;
    case 2:                                         /* switch 1 */
        var_v0 = asm_info[arg2].unk4 << 0x16 >> 0x1B;
        break;
    case 3:                                         /* switch 1 */
        var_v0 = asm_info[arg2].unk4 & 0x1F;
        break;
    }
    switch (var_v0) {
    case 0: break;
    case 1:
        if ((atflag != 0) && (arg1 == 1)) {
            posterror("Used $at without .set noat", D_10000004[arg0], 2, arg0);
        } else if ((arg1 < 0) || (arg1 >= 0x20)) {
            posterror("Should be gp register", D_10000004[arg0], 1, arg0);
        }
        break;
    case 2:
        if (((s32) isa < 3) && ((arg1 < 0) || (arg1 >= 0x20) || (arg1 & UNK_FLAG))) {
            posterror("Should be even gp register", D_10000004[arg0], 1, arg0);
        }
        break;
    case 3:
        if (((arg1 < 0) || (arg1 >= 0x20)) && (arg1 != 0x48)) {
            posterror("Should be gp register", D_10000004[arg0], 1, arg0);
        } else if (atflag != 0) {
            if (arg1 == 1) {
                posterror("Used $at without .set noat", D_10000004[arg0], 2, arg0);
            }
        }
        break;
    case 7:
        if ((arg1 < 0) || (arg1 >= 0x20)) {
            posterror("Should be coprocessor register", D_10000004[arg0], 1, arg0);
        }
        break;
    case 8:
        if (((s32) isa < 3) && ((arg1 < 0) || (arg1 >= 0x20) || (arg1 & UNK_FLAG))) {
            posterror("Should be even coprocessor register", D_10000004[arg0], 1, arg0);
        }
        break;
    case 4:
        if ((arg1 < 0x20) || (arg1 >= 0x40)) {
            posterror("Should be floating point register", D_10000004[arg0], 1, arg0);
        }
        break;
    case 5:
        if ((s32) isa < 3) {
            if ((arg1 < 0x20) || (arg1 >= 0x40) || (arg1 & UNK_FLAG)) {
                posterror("Should be even floating point register", D_10000004[arg0], 1, arg0);
            }
        }
        break;
    case 6:
        if ((s32) isa >= 3) {
            if ((arg1 < 0x20) || (arg1 >= 0x40) || (arg1 & UNK_FLAG)) {
                posterror("Should be even floating point register", D_10000004[arg0], 1, arg0);
            }
        } else if ((arg1 < 0x20) || (arg1 >= 0x40) || (arg1 & 3)) {
            posterror("Should be multiple-of-4 floating point register", D_10000004[arg0], 1, arg0);
        }
        break;
    case 9:
        if (((s32) isa < 3) && (arg1 >= 0x20) && (arg1 & UNK_FLAG)) {
            posterror("Should be fp double or gp single register", D_10000004[arg0], 1, arg0);
        }
        break;
    case 10:
        if ((s32) isa < 3) {
            if (arg1 & UNK_FLAG) {
                posterror("Should be multiple-of-2 register", D_10000004[arg0], 1, arg0);
            }
        }
        break;
    case 11:
        if ((s32) isa >= 3) {
            if (arg1 & UNK_FLAG) {
                posterror("Should be multiple-of-2 register", D_10000004[arg0], 1, arg0);
            }
        } else if (arg1 & 3) {
            posterror("Should be multiple-of-4 register", D_10000004[arg0], 1, arg0);
        }
        break;
    case 12:
        if ((arg1 < 0x40) || (arg1 >= 0x48)) {
            posterror("Should be floating point condition code register", D_10000004[arg0], 1, arg0);
        }
        break;
    }
}
