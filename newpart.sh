#!/usr/bin/bash
export LC_COLLATE=C
shopt -s extglob
read -p 'enter your database name ' name
case $name in 
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
    if [ -e $name ];then
    read -p "there a database have Same Name please change the name or do you want to open it press yes to open it or no to exit "  answer
    case $answer in 
    "Y" | "y" | "YES" | "Yes" | "yes")
    source cd $HOME/$name
    select choice in "creat database" "list database" "drop database" "connect database"
    do
    case $choice  in
    "creat database")
    pwd
     ;;
    "list database")
    echo "hello from 2"
    ;;
     "drop database")
     echo "hello from 3"
      ;;
    "connect database")
      exit
      ;;
      *)
      echo "Nothing"
      esac
      done

      ;;
     "N" | "n" | "No" | "NO" | "no" | "nO")
      exit
      ;;   
      *) 
    esac
    else
    mkdir $name
    echo "your database is here now "
    read -p "do you want to open your new database press y or n"  ans
     case $ans in 
      "Y" | "y" | "YES" | "Yes" | "yes" )
    source cd $HOME/$name
    select choice in "creat database" "list database" "drop database" "connect database"
    do
    case $choice  in
    "creat database")
    pwd
     ;;
    "list database")
    echo "hello from 2"
    ;;
    "drop database")
     echo "hello from 3"
      ;;
    "connect database")
     exit
      ;;
      *)
    echo "Nothing"
    esac
    done
    ;;
   "N" | "n" | "No" | "NO" | "no" | "nO" )
   exit
   ;;   
   *)  
    esac
    fi
     ;;
   *)
   echo " error your name contain  special characters or number or spaces "
    esac 
 

