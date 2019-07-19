#!/bin/bash

file=$1
suff=$2
dest=$3
echo Extract $file to $dest
echo $suff
case $suff in
    *.tgz)    tar   -xzf "$file" -C "$dest" ;;
    *.tar.gz) tar   -xzf "$file" -C "$dest" ;;
    *.zip)    unzip      "$file" -d "$dest" ;;
esac
