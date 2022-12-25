#!/usr/bin/bash
export LC_COLLATE=C
shopt -s extglob
source cd $HOME
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
    ###################################################################################main folder
    if [ -e $name ];then
    read -p "there a database have Same Name please change the name or do you want to open it press yes to open it or no to exit "  answer
    case $answer in 
    "Y" | "y" | "YES" | "Yes" | "yes")
    source cd $HOME/$name
    ##################################################################################################
    select choice in "creat database" "list database" "drop database" "connect database"
    do
    case $choice  in
    "creat database")
read -p 'enter your database name ' nam
case $nam in 
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
    if [ -e $nam ];then
    echo "there a database have Same Name please press 4 to connect to your database " 
    else
    source cd $HOME
    mkdir $nam
    echo "your database is here now please press 4 to connect to your database  "
    fi
     ;;
   *)
   echo " error your name contain  special characters or number or spaces "
    esac 
     ;;
     "list database")
     ls -F|grep /
    ;;
    "drop database")
    read -p" enter name of database " data
    if [ -d $data ] ; then
    rm -r $data
      echo "==============done=============== "     
    else 
    echo "This database is not here. Check the database name again"
    fi
      ;;
      ##################################
    "connect database")
      read -p "enter name of your database "  databas
     if [ -e $databas ]; then 
     source connectdb.sh $databas
     else 
     echo "you entre wrong name"
     fi
      ##################################################
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
    source cd $HOME
    mkdir $name
    echo "your database is here now "
    read -p "do you want to open your new database press y or n"  ans
     case $ans in 
      "Y" | "y" | "YES" | "Yes" | "yes" )
    source cd $HOME/$name
    select choice in "creat database" "list database" "drop database" "connect database"
    do
    #####################################################################subfolder
    case $choice  in
    "creat database")
    read -p 'enter your database name ' nam
case $nam in 
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
    if [ -e $nam ];then
    echo "there a database have Same Name please press 4 to connect to your database " 
    else
    mkdir $nam
    echo "your database is here now please press 4 to connect to your database  "
    fi
     ;;
   *)
   echo " error your name contain  special characters or number or spaces "
    esac 
     ;;
    "list database")
     ls -F|grep /
    ;;
    "drop database")
    read -p" enter name of database " data
    if [ -d $data ] ; then
    rm -r $data
      echo "==============done=============== "     
    else 
    echo "This database is not here. Check the database name again"
    fi
      ;;
################################
    "connect database")
    
     read -p "enter name of your database "  databas
     if [ -e $databas ]; then 
     source connectdb.sh $databas
     else 
     echo "you entre wrong name"
     fi
#####################################
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