#!/bin/bash
pushd /home/sadmin/.deb-bak/snapshot/
sleep 2
git fetch
git clean -f
git add .
git status
#git commit -a
sleep 2
git commit -m "$( date '+%F_%H-%M-%S' )"
git push origin main
sleep 1
echo Well Done.
