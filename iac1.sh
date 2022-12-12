#!/bin/bash
#Desenvolvido por Henrique Duarte
#Script de automação criado para o Desafio de Projeto do Bootcamp "Jornada DevOps com AWS - Impulso"
#Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões


#Início do Script

#Cria diretórios dos setores
echo "Criando diretórios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

#Cria grupos do setores
echo "Criando grupos"
groupadd GRP_ADM
groupadd GRP_VEN 
groupadd GRP_SEC

#Cria os usuários já nos grupos dos seus setores
echo "Criando usuários em seus respectivos grupos"
useradd carlos -m -s /bin/bin/bash -p $(openssl passwd -crypt Mudar1234) -G GRP_ADM
useradd maria -m -s /bin/bin/bash -p $(openssl passwd -crypt Mudar1234) -G GRP_ADM
useradd joao -m -s /bin/bin/bash -p $(openssl passwd -crypt Mudar1234) -G GRP_ADM

useradd debora -m -s /bin/bin/bash -p $(openssl passwd -crypt Mudar1234)  -G GRP_VEN
useradd sebastiana -m -s /bin/bin/bash -p $(openssl passwd -crypt Mudar1234) -G GRP_VEN
useradd roberto -m -s /bin/bin/bash -p $(openssl passwd -crypt Mudar1234) -G GRP_VEN

useradd josefina -m -s /bin/bin/bash -p $(openssl passwd -crypt Mudar1234) -G GRP_SEC
useradd amanda -m -s /bin/bin/bash -p $(openssl passwd -crypt Mudar1234) -G GRP_SEC
useradd rogerio -m -s /bin/bin/bash -p $(openssl passwd -crypt Mudar1234) -G GRP_SEC

#Define permissões nas pastas dos setores
echo "Definindo permissões nos diretórios"

chown root:root /publico
chown root:GRP_ADM /adm
chown root:GRP_SEC /ven
chown root:GRP_VEN /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Configurações finalizadas"

#Final do Script
