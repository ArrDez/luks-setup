#!/usr/bin/env bash

DEV_NAME="nvme0n1p6"
LVM_NAME="int"

sudo blkid /dev/$DEV_NAME

sudo mount /dev/mapper/$LVM_NAME-root /mnt
sudo mount /dev/nvme0n1p2 /mnt/boot
sudo mount --bind /dev /mnt/dev
sudo chroot /mnt

