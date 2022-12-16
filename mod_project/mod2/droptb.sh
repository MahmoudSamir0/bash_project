  #!/usr/bin/bash
export LC_COLLATE=C
shopt -s extglob
  read -p" enter name of table " drop
    if [ -d $drop ] ; then
    rm  $drop
    echo "done"
    else 
    echo "This table is not here. Check the table name again"
    fi