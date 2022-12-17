#!/usr/bin/bash 
#create columm name of table
export LC_COLLATE=C
shopt -s extglob
read -p "enter number of column you want" ncolumn   
for (( i=1 ; i<=ncolumn ; i++ ))
do
read -p "enter name of your coulmn name $i"  columm
echo -e $columm"\t"|tr "\n" " ">>$1
done
echo -e "\n">>$1
