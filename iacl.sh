#!/bin/bash

echo "Criando Ambiente..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos..."

groupadd GR_ADM
groupadd GR_VEN
groupadd GR_SEC

echo "Usuários provicionados..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GR_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GR_ADM
useradd jao -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GR_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GR_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GR_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GR_VEN
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GR_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GR_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GR_SEC

echo "Gerenciamento de grupos..."

chown root:GR_ADM /adm
chown root:GR_VEN /ven
chown root:GR_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Ambiente Pronto!"
