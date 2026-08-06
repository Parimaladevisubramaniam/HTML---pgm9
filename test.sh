#!/bin/bash

echo "======================================"
echo " CSS Selector Assignment Autograder"
echo "======================================"

MARKS=0


if [ -f index.html ]
then
    echo "? index.html exists"
    MARKS=$((MARKS+5))
else
    echo "? index.html missing"
    echo "Marks : $MARKS/50"
    exit 1
fi


# Check HTML structure

if grep -q "<!DOCTYPE html>" index.html
then
    echo "? DOCTYPE found"
    MARKS=$((MARKS+5))
else
    echo "? DOCTYPE missing"
fi


if grep -q "<main>" index.html
then
    echo "? Main section found"
    MARKS=$((MARKS+5))
else
    echo "? Main section missing"
fi


if grep -q "<h1>" index.html
then
    echo "? Heading tag found"
    MARKS=$((MARKS+5))
else
    echo "? Heading missing"
fi


# Check content

if grep -q "Jeffrey Toobin" index.html
then
    echo "? October speaker added"
    MARKS=$((MARKS+5))
else
    echo "? October speaker missing"
fi


if grep -q "Andrew Ross Sorkin" index.html
then
    echo "? November speaker added"
    MARKS=$((MARKS+5))
else
    echo "? November speaker missing"
fi



# CSS Selector checking

if grep -q "\*" index.html
then
    echo "? Universal selector used"
    MARKS=$((MARKS+5))
else
    echo "? Universal selector missing"
fi



if grep -q "#copyright" index.html
then
    echo "? ID selector found"
    MARKS=$((MARKS+5))
else
    echo "? ID selector missing"
fi



if grep -q ".blue" index.html
then
    echo "? Class selector blue found"
    MARKS=$((MARKS+5))
else
    echo "? Blue class missing"
fi



if grep -q ".right" index.html
then
    echo "? Right alignment class found"
    MARKS=$((MARKS+5))
else
    echo "? Right class missing"
fi



if grep -q "Copyright 2015" index.html
then
    echo "? Copyright text found"
    MARKS=$((MARKS+5))
else
    echo "? Copyright missing"
fi



echo "======================================"
echo "Final Marks : $MARKS/50"
echo "======================================"