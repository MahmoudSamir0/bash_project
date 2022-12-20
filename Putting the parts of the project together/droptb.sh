  #!/usr/bin/bash
export LC_COLLATE=C
shopt -s extglob
select choice in "drop table" "drop coulmns" 
do
case $choice  in
  "drop table")
  read -p" enter name of table " drop
    if [ -f $drop ] ; then
    rm  $drop
    echo "done"
    else 
    echo "This table is not here. Check the table name again"
    fi
    ;;
    "drop coulmns")
    ;;
*)
esac
exit
done
