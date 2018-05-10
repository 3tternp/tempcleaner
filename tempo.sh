#!/bin/bash 
#This script will automatically delete temporary files
echo "Are you sure to delete temporary f!l3 ?"
echo "Enter your choice:"

read count
 
if [ $count = "Y" ]
then
rm -rf /tmp/*
rm -rf /var/tmp/*
find ~ -type f \( -name '*.swp' -o -name '*~' -o -name '*.bak' -o -name '.netrwhist' \) -delete
set dir=~/tmp/vim-swap-files//,/var/tmp//
rm -rf ~/.local/share/Trash/*

echo "Hurrey Temporary file are cleared"
exit
elif [ $count = "N" ]
then
  echo "No Temporary files are deleted !!!!"
exit
fi

