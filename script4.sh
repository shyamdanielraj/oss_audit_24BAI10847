#!/bin/bash
# Script 4: Log File Analyzer
# Implements a do-while style retry to handle empty or missing logs.
LOGFILE=$1
KEYWORD=${2:-"ERROR"}
COUNT=0
# Do-While Style Retry if file is empty or missing
while [ ! -s "$LOGFILE" ]; do
echo "Target log $LOGFILE is empty or missing. Retrying in 5 seconds..."
sleep 5
done
echo "Analyzing $LOGFILE for '$KEYWORD'..."
COUNT=$(grep -ic "$KEYWORD" "$LOGFILE")
echo "Total occurrences of $KEYWORD: $COUNT"
echo "--- Last 5 matching entries ---"
tail -n 100 "$LOGFILE" | grep -i "$KEYWORD" | tail -n 5
