  #!/usr/bin/bash
export LC_COLLATE=C
shopt -s extglob
read -p "enter table name " ext
select choice in "select all " "select by columns" "select some of row "
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
*)
esac
exit
done

