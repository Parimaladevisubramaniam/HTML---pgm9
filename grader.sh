#!/bin/bash

echo "======================================"
echo " CSS Selector Assignment Autograder"
echo "======================================"

MARKS=0


# 1. Check index.html exists (5 Marks)

if [ -f index.html ]
then
    echo "PASS: index.html exists"
    MARKS=$((MARKS+5))
else
    echo "FAIL: index.html missing"
    echo "Final Marks : $MARKS/50"
    exit 1
fi



# 2. Check DOCTYPE (5 Marks)

if grep -q "<!DOCTYPE html>" index.html
then
    echo "PASS: DOCTYPE found"
    MARKS=$((MARKS+5))
else
    echo "FAIL: DOCTYPE missing"
fi



# 3. Check main section (5 Marks)

if grep -q "<main>" index.html
then
    echo "PASS: Main section found"
    MARKS=$((MARKS+5))
else
    echo "FAIL: Main section missing"
fi



# 4. Check heading (5 Marks)

if grep -q "<h1>" index.html
then
    echo "PASS: Heading found"
    MARKS=$((MARKS+5))
else
    echo "FAIL: Heading missing"
fi



# 5. Check speaker details (5 Marks)

if grep -q "Jeffrey Toobin" index.html && 
   grep -q "Andrew Ross Sorkin" index.html
then
    echo "PASS: Speaker names found"
    MARKS=$((MARKS+5))
else
    echo "FAIL: Speaker names missing"
fi



# 6. Check Universal Selector (5 Marks)

if grep -qE "^\s*\*" index.html
then
    echo "PASS: Universal selector used"
    MARKS=$((MARKS+5))
else
    echo "FAIL: Universal selector missing"
fi



# 7. Check ID Selector (5 Marks)

if grep -q "#copyright" index.html
then
    echo "PASS: ID selector found"
    MARKS=$((MARKS+5))
else
    echo "FAIL: ID selector missing"
fi



# 8. Check Blue Class Selector (5 Marks)

if grep -q "\.blue" index.html
then
    echo "PASS: Blue class selector found"
    MARKS=$((MARKS+5))
else
    echo "FAIL: Blue class missing"
fi



# 9. Check Right Class Selector (5 Marks)

if grep -q "\.right" index.html
then
    echo "PASS: Right class selector found"
    MARKS=$((MARKS+5))
else
    echo "FAIL: Right class missing"
fi



# 10. Check Copyright Text (5 Marks)

if grep -q "Copyright 2015" index.html
then
    echo "PASS: Copyright text found"
    MARKS=$((MARKS+5))
else
    echo "FAIL: Copyright missing"
fi



echo "======================================"
echo "Final Marks : $MARKS/50"
echo "======================================"


# Return status for GitHub Actions

if [ $MARKS -eq 50 ]
then
    echo "Assignment Completed Successfully"
    exit 0
else
    echo "Some requirements are missing"
    exit 1
fi