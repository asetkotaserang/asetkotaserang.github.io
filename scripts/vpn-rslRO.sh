#!/bin/bash
#
echo sadmin@123 | sudo -S pptpsetup --create rslro --server 45.64.96.131 --username rijal --password rijal@123 --encrypt --start
count=0
until false
do
((count))
if ! ping -Q 1 -c 1 -t 1 10.66.66.1; then
echo aset123 | sudo -S pppd call rslro
sleep 7
fi
sleep 9
echo aset123 | sudo -S pppd call rslro
sleep 3
done
