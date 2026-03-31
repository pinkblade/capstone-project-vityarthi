#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer the questions"

read -p "Tool you use: " TOOL
read -p "Freedom means: " FREEDOM
read -p "What will you build: " BUILD

DATE=$(date)
OUTPUT="manifesto.txt"

echo "On $DATE, I believe in open source. Using $TOOL daily, I value $FREEDOM. I aim to build $BUILD and share it freely." > $OUTPUT

echo "Saved to $OUTPUT"
cat $OUTPUT