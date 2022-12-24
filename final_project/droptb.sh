  #!/usr/bin/bash
export LC_COLLATE=C
shopt -s extglob
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
      if [ $vat == "1" ] ;then
      echo "you can't drop primary key "
      else 
      sed -i -r  "s/\S+//$vat" $dro #don't forget file name
      echo "==============done=============== "
      fi
    ;;
    "back")
     read -p "enter name of your database you need to connect"  databas
     if [ -e $databas ]; then 
     source connectdb.sh $databas
     else 
     echo "you entre wrong name "
     fi
    ;;
*)
esac
exit
done
