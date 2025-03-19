#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd enzo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd mateus -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd aparecida -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd marcos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd alfredo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd miguel -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd marcelo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rodrigo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado!"