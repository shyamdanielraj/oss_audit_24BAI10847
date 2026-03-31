#!/bin/bash
# Script 5: Manifesto Generator
# Generates a persistent record of software values.
echo "Open Source Manifesto Creation Tool"
read -p "Primary Tool of Choice: " TOOL
read -p "Define Freedom in one word: " FREEDOM
read -p "Your contribution goal: " BUILD
OUTPUT="manifesto_$(whoami).txt"
TIMESTAMP=$(date '+%Y-%m-%d %H:%M')
echo "--- THE OPEN SOURCE MANIFESTO ---" > "$OUTPUT"
echo "Issued on: $TIMESTAMP" >> "$OUTPUT"
echo "I utilize $TOOL to secure my digital $FREEDOM." >> "$OUTPUT"
echo "My mission in the FOSS community is to build $BUILD." >> "$OUTPUT"
echo "Manifesto generated successfully in $OUTPUT"
