#!/bin/bash
#
# Convert File Size to Human Readble value
#
# https://en.wikipedia.org/wiki/File_size
#
# (c) 2019-07 Antonio Pos-de-Mina

# file size
file_size=$(($1 * 1))
file_unit='B'

# File scale B,kB,MB,GB,TB,PB,EB,ZB,YB
for file_unit in B kB MB GB TB PB EB ZB YB
do
    if [ $file_size -gt 1024 ]
    then
        file_size=$(($file_size/1024))
    else
        break
    fi
done

echo "File size $1[B] is converted in Human Readable size to $file_size[$file_unit]."
