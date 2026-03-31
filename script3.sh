#!/bin/bash
# Script 3: Disk and Permission Auditor
# Loops through critical paths to audit security footprint.
DIRS=("/etc" "/var/log" "/home" "/boot" "/lib/modules")
echo "Kernel & System Directory Audit"
echo "------------------------------"
for DIR in "${DIRS[@]}"; do
if [ -d "$DIR" ]; then
PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
echo "$DIR -> Permissions: $PERMS | Size: $SIZE"
fi
done
# Specific check for Kernel Configuration Path
GRUB_CONFIG="/boot/grub"
if [ -d "$GRUB_CONFIG" ]; then
echo "------------------------------"
echo "CRITICAL PATH AUDIT: $GRUB_CONFIG"
ls -ld "$GRUB_CONFIG" | awk '{print "Owner: "$3" | Permissions: "$1}'
fi
