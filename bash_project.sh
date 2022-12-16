#!/usr/bin/bash
export LC_COLLATE=C
shopt -s extglob
read -p 'enter your database name ' name
case $name in 
    +([0-9]) )
        echo "the Databse name start with number "
        echo "wrong name" exit
        
    ;;
    +(["."][","]["#"]["%"]["&"]["^"]["*"]["_"]["-"]["="]["+"][";"][":"]['/']['!']) )
         echo "name of database contains special characters"
         exit 
    ;;
     [" "])
         echo "name of database spaces" exit
         
    ;;
    +([a-zA-Z]) )
    if [ -e $name ];then
         read -p "there a database have Same Name please change the name or do you want to open it press yes to open it or no to exit "  answer
             case $answer in 
             "Y" | "y" | "YES" | "Yes" | "yes")
               cd $HOME/$name
             ;;
            "N" | "n" | "No" | "NO" | "no" | "nO")
            exit
             ;;   
             *) 
            esac
    else
    mkdir $name
    echo "your database is here now "
    read -p "do you want to open your database press y or n"  ans
     case $answer in 
             "Y" | "y" | "YES" | "Yes" | "yes" )
               cd $HOME/$name
             ;;
            "N" | "n" | "No" | "NO" | "no" | "nO" )
              exit
             ;;   
             *)  
             esac
    fi
     ;;
   *)
   echo " your name contain wrong name"
    esac 
 

