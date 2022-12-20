  #!/usr/bin/bash
export LC_COLLATE=C
shopt -s extglob
select choice in "select all " "select by columns" "select some of row "
do
 case $choice  in
  "select all ")
    cat 5
  ;;

"select by columns")
echo "you can choose more than column  enter like this 1,2"
read -p "enter your coulmn number you want to display " selec
cut -d " " -f$selec 5
;;

"select some of row ")
source select_by_row.sh 
;;
*)
esac
exit
done

