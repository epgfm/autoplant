#! /bin/bash

PREV="0"
caca=true
while true; do
    declare -A sums
    for f in `ls *.d`; do

        NEW=`sha256sum $f | cut -d' ' -f1`

        if ! [ ${sums[$f]+isset} ]; then
            sums[$f]="TRYAGAIN"
        else
            if [ ${sums[$f]} != $NEW ]; then
                sums[$f]=$NEW
                echo -en "\nRefreshing $f...  "
                ./node_modules/.bin/puml generate --svg --output $f.svg.new $f && \
                mv $f.svg.new $f.svg || sums[$f]="TRYAGAIN"
                echo -e "Done. [$NEW] Waiting for change..."
            fi
        fi

    done
    echo -n "."
    sleep 1
done
