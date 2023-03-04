#!/bin/sh
# arranque de imagen en qemu
 qemu-system-x86_64 \
   -accel kvm \
   -boot order=d,menu=on,reboot-timeout=5000 \
   -m size=3072,slots=0,maxmem=$((3072*1024*1024)) \
   -k en \
   -name archiso,process=archiso_0 \
   -drive file=/path/to/archlinux-yyyy.mm.dd-x86_64.iso,media=cdrom,readonly=on \
   -display sdl \
   -vga virtio \
   -enable-kvm \
   -no-reboot \
   -no-shutdown