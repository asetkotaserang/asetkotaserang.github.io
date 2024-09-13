#!/bin/bash
echo "*- Params: 'wet' or 'dry'"
if [[ "$1" == "wet" ]]
 then
  echo "sadmin@123" | sudo -S su root -c "rsync -zarmuv -R --max-size=49m --exclude='/home/sadmin/.deb-bak/' --include-from="/home/sadmin/.scripts/rsync-includes.conf" --exclude='*' / /home/sadmin/.deb-bak/snapshot/$(hostname)"
 else
  echo "sadmin@123" | sudo -S su root -c "rsync -zarmuv -R --max-size=49m --exclude='/home/sadmin/.deb-bak/' --include-from="/home/sadmin/.scripts/rsync-includes.conf" --exclude='*' --dry-run / /home/sadmin/.deb-bak/snapshot/$(hostname)"
fi
sleep 2
echo Changing Owner.
echo "sadmin@123" | sudo -S su root -c "sudo chown -R sadmin:sadmin /home/sadmin/.deb-bak/snapshot/"
sleep 1
echo Folder Size:
du -hs /home/sadmin/.deb-bak/snapshot/ >> rsync-backup.sh.log
sleep 1
echo Well Done.
