#!/bin/bash

echo "Atualizando o servidor"

apt update
apt upgrade -y

echo "Instalando apache2"

apt install apache2 -y

echo "Instalando Unzip"

apt install unzip -y

echo "Baixando arquivos da aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Extraindo arquivos da aplicação"

unzip main.zip

echo "Copiando arquivos"

cd /var/www/html/
rm index.html

cd /tmp/linux-site-dio-main
cp -R * /var/www/html/

echo "Operação Completa"
