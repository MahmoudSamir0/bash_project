#!/usr/bin/bash 
#create columm name of table
export LC_COLLATE=C
shopt -s extglob
read -p "enter name of your table " gad
read -p "enter number of row you want to enter "  cl
read -p "enter number of column " ndata 
for (( j=1 ; j<=cl; j++ ))
do
for (( i=1 ; i<=ndata; i++ ))
do
read -p "enter  your column  $i for your row number $j"  dat
echo -e $dat"\t"|tr "\n" " ">>$gad #make a coulmn to row  in file
done
echo -e "\n">>$gad      #make new line 
done
sed -i '/^$/d' $gad    #after finish this code delete empty row 