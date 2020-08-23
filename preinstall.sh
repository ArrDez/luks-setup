#!/usr/bin/env bash

DEV_NAME="nvme0n1p6"
LVM_NAME="int"

sudo cryptsetup luksFormat /dev/$DEV_NAME
sudo cryptsetup luksOpen /dev/$DEV_NAME cryptdrive

sudo pvcreate /dev/mapper/cryptdrive
sudo vgcreate $LVM_NAME /dev/mapper/cryptdrive
sudo lvcreate -n swap -L 16g $LVM_NAME
sudo lvcreate -n root -l 100%FREE $LVM_NAME
