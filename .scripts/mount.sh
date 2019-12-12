#!/bin/bash



dir=$(showmount -e emporium.qkroode.nl | tail -n +2 | awk '{print $1}' | dmenu)
subdir=$(echo $dir | awk -F/ '{print $3}')

if mountpoint -q -- "/home/quincey/emporium/$subdir"; then
    SUDO_ASKPASS=/home/quincey/.scripts/dpass sudo -A umount /home/quincey/emporium/$subdir
    printf '%s: %s %s\n' $dir "unmounting" $subdir | dmenu
else
    SUDO_ASKPASS=/home/quincey/.scripts/dpass sudo -A mount emporium.qkroode.nl:$dir /home/quincey/emporium/$subdir
    printf '%s: %s %s\n' $dir "mounting" $subdir | dmenu
fi
