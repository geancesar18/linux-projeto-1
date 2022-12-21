#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuarios..."

usaradd carlos -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_ADM
usaradd maria -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_ADM
usaradd joao -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_ADM

usaradd debora -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_VEN
usaradd sebastiao -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_VEN
usaradd roberto -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_VEN

usaradd joseina -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_SEC
usaradd amanda -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_SEC
usaradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_SEC

echo "Especificando permissões dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM...."



