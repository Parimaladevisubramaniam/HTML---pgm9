#!/usr/bin/env bash
set -u

FILE="index.html"
TOTAL=50
MARKS=0

echo "=============================================="
echo " CSS Selectors Assignment - Autograder"
echo "=============================================="

if [ ! -f "$FILE" ]; then
    echo "FAIL: $FILE not found"
    echo "Score: 0/$TOTAL"
    exit 1
fi

# Use Python standard library only; no third-party packages are required.
python3 grader.py
exit $?
