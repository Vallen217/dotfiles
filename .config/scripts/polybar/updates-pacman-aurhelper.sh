#!/bin/sh

# credit: https://github.com/polybar/polybar-scripts/blob/master/polybar-scripts/updates-pacman-aurhelper

if ! updates_arch=$(checkupdates 2> /dev/null | wc -l ); then
    updates_arch=0
fi

if ! updates_aur=$(paru -Qum 2> /dev/null | wc -l); then
    updates_aur=0
fi

updates=$((updates_arch + updates_aur))

if [ "$updates" -gt 0 ]; then
    echo "# $updates"
else
    echo ""
fi
