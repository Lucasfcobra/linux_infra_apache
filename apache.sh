#!/bin/bash
 echo "Atualizando Linux Server..." 
apt-get update -y  
apt-get upgrade -y 
echo "Atualizações baixadas e instaladas com sucesso!!!"
 
echo "instalando apache e unzip..."
apt-get install apache2 -y
apt-get install unzip -y
echo "instalado com sucesso!!!"

cd /tmp

echo "baixando e descompactando o projeto na pasta tmp..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip -o  main.zip
echo "feito!!!"


echo "movendo para o repositório correto..." 
cd linux-site-dio-main 
cp -R * /var/www/html/ 
echo "Sucesso!!!"

