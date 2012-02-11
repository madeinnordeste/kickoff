#!/bin/bash

# Kickoff auto install  instalador automatico
# Baseado no oil ( fuelphp.com )
# Autor: luiz alberto <madeinnordeste@gmail.com>
#
# exemplo de uso:
# ./kickoff create /home/luiz/sites/blog
# 
# Este script fara download do kickoff e setará as permissões
# nos diretórios de cache e logs

if [ "$1" == "create" ]; then
	
    if [ ! `which git` ]; then 
        echo ' - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'
        echo "For this installer to work you'll need to install Git."
        echo '        http://git-scm.com/'
        echo ' - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'
    fi
		
    # Clona o projeto do github
    git clone --recursive git://github.com/madeinnordeste/kickoff.git "$2"
    
    # seta as permissoes iniciais necessarias do projeto 
    chmod 0777 "$2/application/logs"
    chmod 0777 "$2/application/cache"
    chmod 0777 "$2/uploads"
    chmod 0777 "$2/static/minify"
    
    # remove o diretorio .git
    rm -Rf "$2/.git"
    
    #mv "$2/install.php" "$2/-install.php"
    
else
    echo ' - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'
    echo 'This is not a valid kickoff installation.'
    echo '      Use ./kickoff.sh create YOU_PROJECT_DIRECTORY'
    echo '      or visite https://github.com/madeinnordeste/kickoff'
    echo ' - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'
fi