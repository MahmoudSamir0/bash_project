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
read -p "enter your coulmn number you want to display " selec
awk    -F " " -v var="$selec"'{if(var==3){print $3}}' 5
;;
"select some of row ")
read -p "enter start of row you want display "  art
read -p "enter end of row you want display "  nd
awk '{if(NR<='$nd' && NR>='$art')
    print NR,$0}'
;;
*)
esac

done
#awk -F " " '{print $2}' 5

