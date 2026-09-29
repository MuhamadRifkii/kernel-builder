# AnyKernel3 Ramdisk Mod Script
# Stripped to just kernel flasher - no device checks

## AnyKernel setup
# begin properties
properties() { '
kernel.string=Maple Kernel
do.devicecheck=0
do.modules=0
do.systemless=0
do.cleanup=1
do.cleanuponabort=0
device.name1=maple
supported.versions=
supported.patchlevels=
'; } # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

## AnyKernel methods (utilities)
# import patching libraries
. tools/ak3-core.sh;

## AnyKernel install
dump_boot;

# begin ramdisk changes
# end ramdisk changes

write_boot;
## end install
