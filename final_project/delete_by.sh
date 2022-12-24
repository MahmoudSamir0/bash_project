#! /usr/bin/bash
select choice in "delete by id" "delete by another column information"  "back"
do
 case $choice  in
  "delete by id")
    read -p "enter the id to delete  "  ds
    sed -i '/'^$ds'/d' $1    #don't forget
    echo "==============done=============== "
  ;;
"delete by another column information")

    read -p "enter name to delete  "  uu
    read -p "enter age to delete  "  uo
    sed -i '/'$uo'/{/'$uu'/d}' $1 #don't forget
    echo "==============done=============== "
  ;;
"back")
source deletetb.sh
  ;;
  *)
esac
done
