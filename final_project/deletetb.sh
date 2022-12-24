  #!/usr/bin/bash
export LC_COLLATE=C
shopt -s extglob
select choice in "delete all data" "delete by column information" "back"
do
case $choice in
"delete all data")
read -p "Enter table name : " sea
sed -i '2,$d' $sea   #file name     #don't forget

 echo "==============done=============== "
;;
"delete by column information")
read -p "Enter table name : " se
source delete_by.sh $se
;;
"back")
    source cd  ..
     read -p "enter name of your database you need to connect"  databas
     if [ -e $databas ]; then 
     source connectdb.sh $databas
     else 
     echo "you entre wrong name "
     fi
;;
*)
esac
done