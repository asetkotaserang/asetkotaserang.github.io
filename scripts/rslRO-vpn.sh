read -p "Enter IP Address: " ipaddr
count=0
until false
do
((count))
if ! ping -Q 1 -c 3 -t 1 $ipaddr; then
echo sadmin@123 | sudo -S service strongswan restart
echo sadmin@123 | sudo -S service xl2tpd restart
echo sadmin@123 | sudo -S start-vpn
sleep 5
fi
sleep 9
done

