#! /bin/bash

echo "Atualizando o servidor ..."

apt-get update 
apt-get upgrade -y

echo "Instalando o Apache ..."

apt-get install apache2 -y

echo "Instalando o Unzip ..."

apt-get install unzip -y

echo "Baixando aplicação site Linux-DIO ..."

apt-get install wget -y

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivos ..."

unzip main.zip

echo "Copiando arquivos para diretório do Apache ..."

cd linux-site-dio-main
cp -R * /var/www/html/

echo "Provisionando versão no Github ..."



