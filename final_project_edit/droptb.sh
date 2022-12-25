  #!/usr/bin/bash
export LC_COLLATE=C
shopt -s extglob
while true
do
select choice in "drop table" "drop coulmns" "back"
do
case $choice  in
  "drop table")
  read -p" enter name of table " drop
    if [ -f $drop ] ; then
    rm  $drop
      echo "==============done=============== "
    else 
    echo "This table is not here. Check the table name again"
    fi
    ;;
    "drop coulmns")
      read -p" enter name of table " dro
      read -p "enter number of your coulmn  to drop it " vat
      if (($vat >= 2 )); then 
      sed -i -r  "s/\S+//$vat" $dro #don't forget file name
      echo "==============done=============== "     
      else 
      echo "you enter wrong number or you try to drop primary key you can't drop primary key "
      fi
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
done