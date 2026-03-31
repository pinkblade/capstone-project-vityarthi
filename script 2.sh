#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    git) echo "Git: Distributed version control system powering open source collaboration" ;;
    apache2) echo "Apache: backbone of the web" ;;
    mysql) echo "MySQL: database engine" ;;
    vlc) echo "VLC: universal media player" ;;
esac