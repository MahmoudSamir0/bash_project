  #!/usr/bin/bash
export LC_COLLATE=C
shopt -s extglob
  read -p" enter name of table " drop
    if [ -f $drop ] ; then
    rm  $drop
    echo "done"
    else 
    echo "This table is not here. Check the table name again"
    fi

        #select choice in "drop all table" "drop coulmns" "drop database" "connect database"
