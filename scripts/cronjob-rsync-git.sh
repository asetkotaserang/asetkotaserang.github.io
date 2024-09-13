#!/bin/bash
#
pushd /home/sadmin/.scripts/
echo "Start:$( date '+%F_%H-%M-%S' )" >> cronjob-rsync-git.sh.log
echo "sadmin@123" | sudo -S su root -c "bash ./rsync-backup.sh wet >> rsync-backup.sh.log"
sleep 2
bash ./git-compush.sh >> git-compush.sh.log
sleep 1
echo "Stop:$( date '+%F_%H-%M-%S' )" >> cronjob-rsync-git.sh.log
echo All Well Done.
sleep 2
