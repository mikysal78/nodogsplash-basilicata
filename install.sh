#/bin/sh

rm -rf /etc/nodogsplash/htdocs/*
mv nodogsplash/htdocs/* /etc/nodogsplash/htdocs/

mv /etc/config/nodogsplash /etc/config/nodogsplash.orig
cat config/nodogsplash > /etc/config/nodogsplash

mv scripts/* /root/
chmod +x /root/*.sh

sh /root/setup.sh

rm -rf /root/setup.sh

echo "Ora pio cancellare la directory di installazione con il comando:"
echo "rm -rf /root/nodogsplash-basilicata"
