#!/bin/bash
#Desenvolvido por Henrique Duarte
# Script de automação criado para o Desafio de Projeto do Bootcamp "Jornada DevOps com AWS - Impulso"
# Infraestrutura como código: Script de provisionamento de um servidor web (apache) 



# Início do Script
echo "Atualizando o servidor e instalando Apache e Unzip"

#Atualiza o servidor
apt update -y && apt upgrade -y
apt install apache2 unzip -y

#Download da aplicação

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main

#Movendo arquivos aplicação ara o diretório do Apache
cp -R * /var/www/html

#Final do script
