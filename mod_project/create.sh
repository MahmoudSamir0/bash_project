#! /usr/bin/bash
#create table for database using for loop and enter number of table 
export LC_COLLATE=C
shopt -s extglob
read -p "enter number of table you want" ntable
for (( i=1 ; i<=$ntable ; i++ ))
        do
        read -p "enter your table name" nameoftable
case $nameoftable in 
    +([0-9]) )
         exit
    ;;
    +(["."][","]["#"]["%"]["&"]["^"]["*"]["_"]["-"]["="]["+"][";"][":"]['/']['!']) )
         exit 
    ;;
     [" "])
          exit
    ;;
    +([a-zA-Z]) )
    if [ -e $nameoftable ];then
    echo  "there a table have Same Name please change the name"

    else 
    echo "you will made new table in your database"$i
        touch $nameoftable
        read -p "do you want to enter column  name for your database" fr
    case $fr in 
    "Y" | "y" | "YES" | "Yes" | "yes")
source addcolumn.sh $nameoftable
    ;;
    "N" | "n" | "No" | "NO" | "no" | "nO")
    echo "continue in your database"

    ;;
    *)
     esac
    fi
    ;;
     *)
    echo "Nothing"
     esac
    done
        