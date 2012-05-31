#!/bin/bash

# CONFIG VARS
DATABASE=MY_DATABASE_NAME
DESTINY=/Users/luiz/Desktop/
MYSQLDUMP=/Applications/XAMPP/xamppfiles/bin/mysqldump
TIME=$(date +%Y-%m-%d--%H-%M-%S) 

$MYSQLDUMP --add-drop-table -u root $DATABASE > $DESTINY$DATABASE'-'$TIME.sql  
