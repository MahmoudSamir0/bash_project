#!/usr/bin/bash
export LC_COLLATE=C
shopt -s extglob
 read -p "enter the id to delete or click enter to update all match "  did
read -p "Enter the old value: " search
read -p "Enter the new value: " replace
# echo " update $filename set $se " 
if [[ $search != "" && $replace != "" ]]; then
sed -i "$did s/$search/$replace/" 5
fi
echo "==============done=============== "
