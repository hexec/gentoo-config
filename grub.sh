#!/bin/sh
dosfsck -w -r -l -a -v -t /dev/sda2
fsck /dev/sda4
grub-install --target=x86_64-efi --efi-directory=/boot /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
