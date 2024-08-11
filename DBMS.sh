#!/bin/bash
#sourcing functions 
. list-db
source drop-db
. create-db
#create Database directory
DBs="Databases"
mkdir $DBs


# function to display menu
menu(){
echo "pick your choice: "
echo "1-create Database"
echo "2-List Databases"
echo "3-connect To Database"
echo "4-Drop Database"
echo "5-Exit"
read choice 
 case "$choice" in
	 "1")create-db;;
         "2")list-db;;
          "3")connect-db;;
          "4")drop-db;;
          "5")exit;;
         *) echo "Try Again... you choose invalid choice"
 esac 		 


}
menu

