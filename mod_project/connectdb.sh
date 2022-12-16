#! /usr/bin/bash
#connect
#export PS3="Select from the options above>"
source cd $1
echo "you are in your database"
pwd
#[mahmoud_samir@elzero ~]$  column -s: -t -n ROCK -N USERNAME,PASS,UID,GID,NAME,HOMEDIR,SHELL -T UID ls.txt
export LC_COLLATE=C
shopt -s extglob
select choice in "create table" "drop table" "insert table" "select table" "delete table" "list table" "update table"
do
 case $choice  in
        "create table")
       source create.sh
        ;;
        "drop table")
       ls -a 
        ;;
       "insert table")
       source inserttb.sh
        ;;
        "select table")
       ls -a 
        ;;
        "list table")
       ls
       ;;
       "delete table")
       exit
       ;;
       "update table")
       exit
       ;;
        *)
        echo "Nothing"
esac
done
