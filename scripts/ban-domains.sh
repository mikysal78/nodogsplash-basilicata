#!/bin/sh

BANNED=$PWD/banned.txt

if ! iptables -t nat -L ndsOUT > /dev/null
then
   iptables -t nat -N ndsOUT
else
   iptables -t nat -F ndsOUT
fi

echo "" > /tmp/ips.txt


for domain in `cat $BANNED`; do
        dig @8.8.8.8 $domain | egrep [0-9] | grep IN| awk {'print $5'} >> /tmp/ips.txt
done

for ip in `cat /tmp/ips.txt`; do
        iptables -t nat -I ndsOUT -p tcp -s 192.168.20.0/24 -d $ip -j DNAT --to 192.168.20.1:2050
done

echo "for check use: iptables -t nat -L -n"
