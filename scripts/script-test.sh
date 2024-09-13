#!/bin/bash
#
echo "sadmin@123" | sudo -S su root -c "apt update"
echo "sadmin@123" | sudo -S apt update
echo "sadmin@123" | sudo -S su root -c "rsync -zarRmuv --exclude='/home/sadmin/.deb-bak/' --include={'*/','*.conf','*.cnf','*.sh','/etc/network/interfaces.d/setup','/var/www/html/.apps/nextcloud/config/config.*','/home/sadmin/.gitconfig','/home/sadmin/.config/**','/home/sadmin/.bash*','/home/sadmin/.fancyprompts/**'} --exclude='*' --dry-run / /home/sadmin/.deb-bak/snapshot/$(hostname)"
sleep 2
