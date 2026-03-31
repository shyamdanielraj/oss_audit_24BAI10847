#!/bin/bash
# Script 2: Package Inspector
# Uses case statements to define the philosophical purpose of software.
PACKAGE="linux-image-$(uname -r)"
if dpkg -l | grep -q "$PACKAGE"; then
echo "VERIFIED: $PACKAGE is present on the system."
else
echo "ERROR: Kernel package not found in DPKG/Apt."
fi
case $PACKAGE in
linux-image*)
echo "Philosophy: The foundation of software freedom and system control."
;;
apache2|httpd)
echo "Philosophy: The web server that built the open internet." ;;
mysql*|mariadb*)
echo "Philosophy: Relational data management for the masses." ;;
*)
echo "Philosophy: A critical component of the FOSS ecosystem." ;;
esac
