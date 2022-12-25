#! /usr/bin/bash
#connect
export PS3="#database# $1"
source cd $1
echo "you are in your database"
pwd
export LC_COLLATE=C
shopt -s extglob
select choice in "create table" "drop table" "insert table" "select table" "delete table" "list table" "update table"
do
 case $choice  in
        "create table")
       source create.sh
        ;;
        "drop table")
        source droptb.sh
        ;;
       "insert table")
       source inserttb.sh
        ;;
        "select table")
       source selecttb.sh
        ;;
        "list table")
       ls
       ;;
       "delete table")
       source deletetb.sh
        ;;
       "update table")
        source updatetb.sh
       ;;
        *)
        echo "enter right number"
esac
done
