#!/bin/bash

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -c "carlos" -m -s /bin/bash -p $(openssl passwd -crypt 12345) -G GRP_ADM
useradd maria -c "maria" -m -s /bin/bash -p $(openssl passwd -crypt 12345) -G GRP_ADM
useradd joao -c "joao" -m -s /bin/bash -p $(openssl passwd -crypt 12345) -G GRP_ADM
useradd debora -c "debora" -m -s /bin/bash -p $(openssl passwd -crypt 12345) -G GRP_VEN
useradd sebastiana -c "sebastiana" -m -s /bin/bash -p $(openssl passwd -crypt 12345) -G GRP_VEN
useradd roberto -c "roberto" -m -s /bin/bash -p $(openssl passwd -crypt 12345) -G GRP_VEN
useradd amanda -c "amanda" -m -s /bin/bash -p $(openssl passwd -crypt 12345) -G GRP_SEC
useradd rogerio -c "rogerio" -m -s /bin/bash -p $(openssl passwd -crypt 12345) -G GRP_SEC
useradd josefina -c "josefina" -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_SEC


mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

chown root:root /publico/
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/