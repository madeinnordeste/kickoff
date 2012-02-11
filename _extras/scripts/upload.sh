#!/bin/bash

# Faz upload dos arquivos modificados para o servidor através do rsync
# é necessário ter o rsync instalado ( http://rsync.samba.org )

# diretorio onde encontra-se seu projeto
ORIGEN=/home/luiz/sites/kickoff/

# destino do projeto onde:
# SSH_USER = seu usuário de acesso ssh
# IP_SERVER = Endereco IP ou dominio para onde o projeto ser enviado
DESTINO=SSH_USER@IP_SERVER:public_html/

# upload/exclude.txt são os arquivos que devem ser ignorado durante o envio
rsync -Crvz --update --progress --exclude-from 'upload/exclude.txt' $ORIGEN $DESTINO