  #!/usr/bin/bash
export LC_COLLATE=C
shopt -s extglob
read -p "enter table name to select" ext
 if [ -e $ext ];then
 export PS3="#database##select table#$ext#"
select choice in "select all " "select by columns" "select some of row " "back"
do
 case $choice  in
  "select all ")
    cat $ext
  ;;

"select by columns")
echo "you can choose more than column  enter like this 1,2"
read -p "enter your coulmn number you want to display " selec
cut -d " " -f$selec $ext
;;

"select some of row ")
source select_by_row.sh $ext 
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
else
echo "No such table with this name here "
fi
