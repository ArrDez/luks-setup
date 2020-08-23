#!/usr/bin/env bash

#cryptdrive UUID= none luks,tries=0,discard,loud

nano /etc/crypttab

mount -t proc proc /proc
mount -t sysfs sys /sys
mount -t devpts devpts /dev/pts
update-initramfs -k all -c


