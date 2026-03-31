#!/bin/bash
# Script 4: Log File Analyzer
# Author: S.Swarna Shree
# Course: Open Source Software

LOGFILE=$1
KEYWORD=${2:-"error"}

echo "=============================================="
echo "              LOG FILE ANALYZER"
echo "=============================================="

if [ ! -f "$LOGFILE" ]; then
    echo "Error: FILE $LOGFILE NOT FOUND."
    exit 1
fi

COUNT=$(grep -i "$KEYWORD" "$LOGFILE" | wc -l)

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
