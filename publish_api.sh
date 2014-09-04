#!/bin/sh

git checkout apiary.apib
git pull
./merge_modules.sh

git commit apiary.apib -m "Update"
git push
