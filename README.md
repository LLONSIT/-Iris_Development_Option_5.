# Iris_Development_Option_5.3

This project aims to decompile and understand the 'Iris Development Option 5.3' compiler, keep in mind that this repository is not stable, there are some reimplementations that can break things etc, for now what it is aiming for is to gradually recompile and reimplement the compiler

# Build system

- For now the only "stable" binary is usplit, which still hasn't been matched its functions (main), but works perfectly with the ido5.3 environment, keep in mind that things like tools/irix (ido7.1) will be changed

- Important thing: you need qemu-irix

- To make it 
  `make ARCH=mips #default`  
  
  - About x86 support, This support is very experimental, and to make it stable certain reimplementations are needed, it is not a priority.
  - If you want to try it
  
   `make ARCH=x86`
