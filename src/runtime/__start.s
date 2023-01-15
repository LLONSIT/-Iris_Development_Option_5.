#include <sys/regdef.h>
#include <sys/asm.h>
.set noat /* Allow the use of $at */
.set noreorder
 .cpload ra

LEAF(__start)
  move        t0, ra
  bal         .branch
  nop
.branch:

  move        ra, t0
  lw          a0, 0x0(sp)
  lui         AT, %hi(_environ)
  addiu       a1, sp, 0x4
  addu        AT, AT, gp
  lw          AT, %lo(_environ)(AT)
  addiu       a2, a1, 0x4
  sll         v0, a0, 2
  addu        a2, a2, v0
  sw          a2, 0x0(AT)
  lui         AT, %hi(__Argc)
  addu        AT, AT, gp
  lw          AT, %lo(__Argc)(AT)
  lui         t9, %hi(__istart)
  sw          a0, 0x0(AT)
  lui         AT, %hi(__Argv)
  addu        AT, AT, gp
  lw          AT, %lo(__Argv)(AT)
  addu        t9, t9, gp
  lw          t9, %lo(__istart)(t9)
  addiu       sp, sp, -0x18
  sw          gp, 0x10(sp)
  sw          zero, 0x14(sp)
  move        fp, zero
  jalr        t9
  sw         a1, 0x0(AT)
  lw          gp, 0x10(sp)
  lui         t9, %hi(__readenv_sigfpe)
  addu        t9, t9, gp
  lw          t9, %lo(__readenv_sigfpe)(t9)
  nop
  jalr        t9
  nop
  lw          gp, 0x10(sp)
  lui         a0, %hi(__Argc)
  lui         a1, %hi(__Argv)
  lui         a2, %hi(_environ)
  lui         t9, %hi(main)
  addu        a0, a0, gp
  addu        a1, a1, gp
  addu        a2, a2, gp
  lw          a0, %lo(__Argc)(a0)
  lw          a1, %lo(__Argv)(a1)
  lw          a2, %lo(_environ)(a2)
  addu        t9, t9, gp
  lw          t9, %lo(main)(t9)
  lw          a0, 0x0(a0)
  lw          a1, 0x0(a1)
  lw          a2, 0x0(a2)
  jalr        t9
  nop
  lw          gp, 0x10(sp)
  lui         t9, %hi(exit)
  addu        t9, t9, gp
  lw          t9, %lo(exit)(t9)
  move        a0, v0
  jalr        t9
  nop
  lw          gp, 0x10(sp)
  break       0
END(__start)
