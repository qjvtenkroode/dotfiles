#!/bin/bash

while true;
do
    # grab the hostname
    h=$(hostname)
    # grab the date and time
    d=$(date '+%a %b %d, %H:%M:%S');
    # grab cpu temperature
    cpu_temp=$(cat /sys/class/thermal/thermal_zone0/temp)
    t=$(echo $cpu_temp | cut -b -2).$(echo $cpu_temp | cut -b 3)C
    # grab disk usage
    disks=$(df | grep -E "/dev/sda(3|4)")
    diskl1=$(echo $disks | awk '{ print $6 }')
    diskp1=$(echo $disks | awk '{ print $5 }')
    diskl2=$(echo $disks | awk '{ print $12 }')
    diskp2=$(echo $disks | awk '{ print $11 }')
    
    xsetroot -name "$diskl1:$diskp1 $diskl2:$diskp2 | $t | $d | $h";
    sleep 0.1;
done;
