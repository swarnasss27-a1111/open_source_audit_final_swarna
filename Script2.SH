#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: S.Swarna Shree
# Course: Open Source Software

PACKAGE="libreoffice"

echo "=============================================="
echo "        FOSS PACKAGE INSPECTOR"
echo "=============================================="

if rpm -q $PACKAGE &>/dev/null; then
    echo "$PACKAGE IS INSTALLED."
    echo ""

    rpm -qi $PACKAGE | grep -E 'Name|Version|Release|License|Summary'

else
    echo "$PACKAGE IS NOT INSTALLED."
fi

echo ""
echo "PHILOSOPHY NOTE"
echo "---------------"

case $PACKAGE in
    libreoffice)
        echo "LibreOffice: a community-driven office suite that protects user freedom."
        ;;
    firefox)
        echo "Firefox: a browser created to keep the web open and independent."
        ;;
    git)
        echo "Git: version control built to support open collaboration."
        ;;
    vlc)
        echo "VLC: media software that proves open source can be universal."
        ;;
    *)
        echo "Unknown package."
        ;;
esac
