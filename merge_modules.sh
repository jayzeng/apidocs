#!/bin/sh

cat base/base.md > apiary.apib

for f in modules/*.md
do
    echo >> apiary.apib
    cat $f >> apiary.apib
done

echo "Merged modules"
