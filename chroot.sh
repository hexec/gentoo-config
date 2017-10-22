#!/bin/sh
mount --rbind /dev/ dev
mount --make-rslave  dev
mount --rbind /sys/ sys
mount --make-rslave sys
mount -t proc /proc  proc
mount --rbind /tmp tmp
chroot . /bin/bash


