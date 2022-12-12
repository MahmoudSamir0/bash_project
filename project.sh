#!/usr/bin/bash 
while true
read -p " enter your database name " $name
case $name in 
    [0-9])
        echo "the Databse name start with number "
        echo "wrong name"
    ;;
    +[.,!#$%^&*_-?/><,+:;]) )

    *)
        echo "Default" 
esac 
     if [ -e $name ];then
     echo "there a database have Same Name please change the name "
     else 
     mkdir $name
     fi
done 
