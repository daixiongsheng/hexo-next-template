#! /bin/bash
cd $PWD/source/_posts/
path=$PWD/source/_posts/

files=`ls -Al | grep .md | awk '{print \$NF}'`

for i in $files; do
    date=`stat -F -t "%Y%m" $i | awk '{print $6}'`
    if [[ ! -d $date ]]; then
        mkdir $date
    fi
    echo "mv $i $date/"
    mv $i $date/
done
