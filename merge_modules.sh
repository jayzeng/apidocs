#!/bin/sh

cat base/base.md > apiary.apib
cat modules/*.md >> apiary.apib

echo "Merged modules"
