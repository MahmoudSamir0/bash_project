  #!/usr/bin/bash
while true
do
select choice in "select group of row" "select by id " "select by Comparison Operators" "back"
do
case $choice  in
"select group of row")
read -p "enter your start row " y
read -p "enter your end row " x
awk -v myvar="$x" var="$y"'{if(NR<=myvar && NR>=var)
    print $0}' $1 #file name 
;;
"select by id ")
read -p "enter id "  io
awk -v val="$io" '
BEGIN{FS=" "}
{
    if($1==val)
    {
        print  $1,$2,$3,$4 
    }
} 
END{}  ' $1 #file name 
;;
"select by Comparison Operators")
source select_by $1
;;
"back")
source selecttb.sh

;;
*)
esac
done
done