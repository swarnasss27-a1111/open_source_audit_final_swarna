#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: S.Swarna Shree
# Course: Open Source Software

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=============================================="
echo "      DISK AND PERMISSION AUDITOR"
echo "=============================================="

for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "$DIR"
        echo "Permissions : $PERMS"
        echo "Size        : $SIZE"
        echo "--------------------------------------"
    else
        echo "$DIR does not exist."
    fi
done

echo ""
echo "LibreOffice Configuration Directory"
echo "-----------------------------------"

CONFIG="/etc/libreoffice"

if [ -d "$CONFIG" ]; then
    ls -ld "$CONFIG"
else
    echo "$CONFIG NOT FOUND."
fi
