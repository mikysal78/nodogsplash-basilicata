#/bin/sh
INSTALL=/tmp/nodogsplash-basilicata-master

rm -rf /etc/nodogsplash/htdocs/*
mv $INSTALL/nodogsplash/htdocs/* /etc/nodogsplash/htdocs/

mv /etc/config/nodogsplash /etc/config/nodogsplash.orig
cat $INSTALL/config/nodogsplash > /etc/config/nodogsplash

mv /etc/config/sqm /etc/config/sqm.orig
cat $INSTALL/config/sqm > /etc/config/sqm


mv $INSTALL/scripts/* /root/
chmod +x /root/*.sh

opkg update
opkg install bind-dig

sh /root/setup.sh

rm -rf /root/setup.sh

echo "done"
