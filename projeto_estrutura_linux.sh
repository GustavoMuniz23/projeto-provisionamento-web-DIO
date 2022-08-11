#!/bin/bash

#Criando Usuários

#Usarei a encriptação -6 pois tentei usar a -crypt e não estava conseguindo,
#utilizei o comando $(openssl passwd -help) e vi que existia a possibilidade de usar o SHA512.

echo "Criando usuários:"

useradd carlos -m -c "Carlos Santos" -s /bin/bash -p $(openssl passwd -6 Senha123)

useradd maria -m -c "Maria Oliveira" -s /bin/bash -p $(openssl passwd -6 Senha123)

useradd joao -m -c "João Gusmão" -s /bin/bash -p $(openssl passwd -6 Senha123)

useradd debora -m -c "Debora Pereira" -s /bin/bash -p $(openssl passwd -6 Senha123)

useradd sebastiana -m -c "Sebastiana Muniz" -s /bin/bash -p $(openssl passwd -6 Senha123)

useradd roberto -m -c "Roberto Silva" -s /bin/bash -p $(openssl passwd -6 Senha123)

useradd josefina -m -c "Josefina Ferraz" -s /bin/bash -p $(openssl passwd -6 Senha123)

useradd amanda -m -c "Amanda Ferreira" -s /bin/bash -p $(openssl passwd -6 Senha123)

useradd rogerio -m -c "Rogerio Macedo" -s /bin/bash -p $(openssl passwd -6 Senha123)

echo "Usuários Criados."

#Criando Grupos

echo "Criando Grupos:"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos Criados."

#Criando Diretórios

echo "Criando Diretórios:"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios Criados."

#Atualizando os privilégios

echo "Atualizando donos, grupos e privilégios:"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Atualizados."

#Alocando usuários nos grupos

echo "Alocando os usuários nos grupos:"

usermod carlos -G GRP_ADM
usermod maria -G GRP_ADM
usermod joao -G GRP_ADM
usermod debora -G GRP_VEN
usermod sebastiana -G GRP_VEN
usermod roberto -G GRP_VEN
usermod josefina -G GRP_SEC
usermod amanda -G GRP_SEC
usermod rogerio -G GRP_SEC

echo "Alocamento concluído."
echo "Processo concluído."



