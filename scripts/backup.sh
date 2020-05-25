#!/bin/bash

read -p "Which files to backup:" file_suffix
read -p "destination to backup:" test

test -d $/Users/antyagi/Desktop/Shell/$test || mkdir -m 777 $/Users/antyagi/Desktop/Shell/book/$test

find $/Users/antyagi/Desktop/Shell/$test -path $/Users/antyagi/Desktop/Shell/$test -prune -o \
-name "*$file_suffix" -exec cp {} $/Users/antyagi/Desktop/Shell/$test \;

exit 0
