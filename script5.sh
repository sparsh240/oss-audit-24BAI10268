#!/bin/bash

echo "Answer questions"

read -p "Tool: " TOOL
read -p "Freedom: " FREEDOM
read -p "Build: " BUILD

DATE=$(date '+%d %B %Y')
USER=$(whoami)
OUTPUT="manifesto_$USER.txt"

echo "On $DATE, I use $TOOL and believe in $FREEDOM." > $OUTPUT
echo "I will build $BUILD and share it freely." >> $OUTPUT

echo "Saved to $OUTPUT"
cat $OUTPUT