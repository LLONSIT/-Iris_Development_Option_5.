#include "types.h"

static s32 *child_process[4];

/******************************


  Only in the nice irix libc




*****************************/

#ifdef __sgi
s32 p2open(s32 arg0, u8* arg1[]) {
    s32 sp3C;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 var_v1;

    if ((_pipe(&sp38) < 0) || (_pipe(&sp30) < 0)) {
        return -1;
    }
    if ((sp3C >= 0x100) || (sp30 >= 0x100)) {
        _close(sp38);
        _close(sp3C);
        _close(sp30);
        _close(sp34);
        return -1;
    }

   
    if ((var_v1 = _fork()) == 0) {
        sp2C = var_v1;
        _close(sp3C);
        _close(0);
        _fcntl(sp38, 0, 0);
        _close(sp38);
        _close(sp30);
        _close(1);
        _fcntl(sp34, 0, 1);
        _close(sp34);
        _execl("/sbin/sh", "sh", "-c", arg0, 0); //preparing
        _exit(1);
        var_v1 = sp2C;
    }
    if (var_v1 == -1) {
        return -1;
    }
    child_process[sp3C] = var_v1;
    child_process[sp30] = var_v1;
    _close(sp38);
    _close(sp34);
    //opening
    arg1[0] = _fdopen(sp3C, "w"); 
    arg1[1] = _fdopen(sp30, "r");
    return 0;
}
#else
s32 p2open(s32 arg0, u8* arg1[]) {
    s32 sp3C;
    s32 sp38;
    s32 sp34;
    s32 sp30;
    s32 sp2C;
    s32 var_v1;

    if ((pipe(&sp38) < 0) || (pipe(&sp30) < 0)) {
        return -1;
    }
    if ((sp3C >= 0x100) || (sp30 >= 0x100)) {
         close(sp38);
         close(sp3C);
         close(sp30);
         close(sp34);
        return -1;
    }

   
    if ((var_v1 = fork()) == 0) {
        sp2C = var_v1;
         close(sp3C);
         close(0);
         fcntl(sp38, 0, 0);
         close(sp38);
         close(sp30);
         close(1);
         fcntl(sp34, 0, 1);
         close(sp34);
         execl("/sbin/sh", "sh", "-c", arg0, 0); //preparing
         exit(1);
        var_v1 = sp2C;
    }
    if (var_v1 == -1) {
        return -1;
    }
    child_process[sp3C] = var_v1;
    child_process[sp30] = var_v1;
     close(sp38);
     close(sp34);
    //opening
    arg1[0] =  fdopen(sp3C, "w"); 
    arg1[1] =  fdopen(sp30, "r");
    return 0;
}
#endif
