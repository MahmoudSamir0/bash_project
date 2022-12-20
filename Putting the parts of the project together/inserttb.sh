#!/usr/bin/bash 
#create columm name of table
export LC_COLLATE=C
shopt -s extglob
read -p "enter name of your table " gad
read -p "enter number of row you want to enter "  cl
for (( j=1 ; j<=cl; j++ ))
do
read -p "enter number of data you want" ndata 
for (( i=1 ; i<=ndata; i++ ))
do
read -p "enter  your date $i"  dat
echo -e $dat"\t"|tr "\n" " ">>$gad #make a coulmn to row  in file
done
echo -e "\n">>$gad #make new line 
done