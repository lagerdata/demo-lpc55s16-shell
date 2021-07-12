tar ext :3333
mon reset halt
file boards/lpcxpresso55s16/demo_apps/shell/armgcc/debug/shell.elf
load
b main
c
