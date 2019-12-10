#!/bin/bash

if mountpoint -q -- "/home/quincey/emporium/backups"; then
    rsync -r /home/quincey/.password-store/. /home/quincey/emporium/backups/stargazer/.password-store
    printf '%s\n' "Done with backup of pwstore" | dmenu
else
    printf '%s\n' "Backup folder not mounted" | dmenu
fi
