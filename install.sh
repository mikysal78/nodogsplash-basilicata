#/bin/sh

rm -rf /etc/nodogsplash/htdocs/*
mv nodogsplash/htdocs/* /etc/nodogsplash/htdocs/

mv /etc/config/nodogsplash /etc/config/nodogsplash.orig
cat config/nodogsplash > /etc/config/nodogsplash

mv /etc/config/sqm /etc/config/sqm.orig
cat config/sqm > /etc/config/sqm


mv scripts/* /root/
chmod +x /root/*.sh

opkg update
opkg install bind-dig

sh /root/setup.sh

rm -rf /root/setup.sh

echo "Ora pio cancellare la directory di installazione con il comando:"
echo "rm -rf /root/nodogsplash-basilicata"
