#!/bin/bash

# Kickoff auto install
# based on oil ( fuelphp.com )
# autor: luiz alberto <madeinnordeste@gmail.com>
#
# example of use:
# ./kickoff create /home/luiz/sites/blog
# 
# this script download kickoff and set permission in cache and log folders.

if [ "$1" == "create" ]; then
	
    if [ ! `which git` ]; then 
        echo ' - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'
        echo "For this installer to work you'll need to install Git."
        echo '        http://git-scm.com/'
        echo ' - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'
    fi
		
    #git clone --recursive git://github.com/madeinnordeste/kickoff.git "./$2"
    git clone --recursive git://github.com/madeinnordeste/kickoff.git "$2" 
    chmod 0777 "$2/application/logs"
    chmod 0777 "$2/application/cache"
    #mv "$2/install.php" "$2/-install.php"
    
else
    echo ' - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'
    echo 'This is not a valid kickoff installation.'
    echo '      Use ./kickoff.sh create YOU_PROJECT_DIRECTORY'
    echo '      or visite https://github.com/madeinnordeste/kickoff'
    echo ' - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'
fi