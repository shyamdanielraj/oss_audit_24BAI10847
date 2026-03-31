#!/bin/bash
# Script 1: System Identity Report
# Author: Senior Architect | Course: OSS
# Uses command substitution and variables to identify the environment.
KERNEL=$(uname -r)
DISTRO=$(grep "PRETTY_NAME" /etc/os-release | cut -d'"' -f2)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE_NOW=$(date)
echo "================================"
echo " System Identity Report "
echo "================================"
echo "Distribution : $DISTRO"
echo "Kernel Ver : $KERNEL"
echo "Active User : $USER_NAME"
echo "Uptime : $UPTIME"
echo "Audit Date : $DATE_NOW"
echo "License : Covered by the GPL v2 (General Public License)"
