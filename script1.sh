#!/bin/bash

STUDENT_NAME="Sparsh Gupta"
SOFTWARE_CHOICE="Mozilla Firefox"

KERNEL=$(uname -r)
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date)

echo "========================================"
echo " Open Source Audit — $STUDENT_NAME"
echo "========================================"
echo "Software     : $SOFTWARE_CHOICE"
echo "Distribution : $DISTRO"
echo "Kernel       : $KERNEL"
echo "User         : $USER_NAME"
echo "Home Dir     : $HOME_DIR"
echo "Uptime       : $UPTIME"
echo "Date & Time  : $CURRENT_DATE"
echo ""
echo "Linux uses GNU GPL license"
echo "Firefox uses Mozilla Public License (MPL 2.0)"
echo "========================================"