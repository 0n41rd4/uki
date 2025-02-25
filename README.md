Usage:

make prepare && make install

The binary linuxriscv64.efi.stub.noinitrd is a
customized systemd EFI stub so that:
1. Does not contain an initrd
2. It accepts more PE sections than the default,
   as ukify will add one .dtbauto PE section per
   device-tree in the system.
