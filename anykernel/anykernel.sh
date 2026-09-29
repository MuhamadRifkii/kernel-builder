# AnyKernel3 Ramdisk Mod Script
# Stripped to just kernel flasher for Sony maple

## AnyKernel setup
# begin properties
properties() { '
kernel.string=Maple Kernel
do.devicecheck=1
do.modules=0
do.systemless=0
do.cleanup=1
do.cleanuponabort=0
device.name1=maple
device.name2=maple_dsds
device.name3=G8141
device.name4=G8142
supported.versions=
supported.patchlevels=
'; } # end properties

# shell variables
block=auto;
is_slot_device=0;
ramdisk_compression=auto;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## AnyKernel install
dump_boot;

# begin ramdisk changes
# end ramdisk changes

write_boot;
## end install
