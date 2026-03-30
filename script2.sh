#!/bin/bash


PACKAGE="firefox"


# Use dpkg to list all installed packages and search for the specific one
if dpkg -l | grep -qw $PACKAGE; then
   echo "$PACKAGE is installed."
   apt show $PACKAGE 2>/dev/null | grep -E 'Version|Maintainer|Description'
else
   echo "$PACKAGE is NOT installed."
fi


case $PACKAGE in
   firefox) echo "Firefox: promotes privacy and open web" ;;
   vlc) echo "VLC: open-source media player" ;;
   git) echo "Git: version control system" ;;
   apache2) echo "Apache: web server software" ;;
   *) echo "Unknown package" ;;
esac
