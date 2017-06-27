NoDogSplash Basilicata
=============

Introduzione
------------

Questo repository contiene i file di configurazione per far funzionare NoDogSplash su Lede ed OpenWRT.

E' stato testato sul firmeare realizzato per Ninux Basilicata con la funzione di HotSpot.
Tale script per la generazione del firmware e reperibile da qui:

https://github.com/ninuxorg/ansible-nnxx
I firmware già compilati si possono scaricare da qui:

https://downloads.nnxx.ninux.org/hotspot/basilicata/latest/


Come usare questo git
---------------

Copiare i file presenti in 'config' nella tua path '/etc/config' sostituendo quelli attuale. (leggi i file e adattali alla tua rete)

Copiare i file presenti in 'nodogsplash/htdocs' nella tua path '/etc/nodogsplash/htdocs'

Se hai scaricato il firmware hotspot_olsrd2 puoi lanciare lo script presente in root, dopo il primo reboot puoi anche cancellare.
Si consiglia il reboot anche per ripulire la dir /tmp dai file di installazione


Escludere l'accesso a determinati siti web
---------------

Copiare i file presenti in 'scripts' nella directory /root e dare i permessi di esecuzione al file 'ban-domains.sh'
Modificare il file 'banned.txt' a proprio piacimento per negare l'accesso a determinati siti web

---------------

Si ringrazia Claud43 di Palermo per il contributo con queste configurazioni
