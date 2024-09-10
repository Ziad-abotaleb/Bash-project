#!/bin/bash

# Sourcing functions
source list-db
source drop-db
source create-db
source connect-db

# Create the Database directory if it doesn't exist
DBs="Databases"
mkdir -p "$DBs"

# Function to display the menu
menu() {
   # clear
    echo "=========================="
    echo "   Database Management"
    echo "=========================="
    echo "Pick your choice:"
    echo "1 - Create Database"
    echo "2 - List Databases"
    echo "3 - Connect to Database"
    echo "4 - Drop Database"
    echo "5 - Exit"
    echo "=========================="
    
    read -p "Enter your choice [1-5]: " choice
    case "$choice" in
        1) create-db ;;
        2) list-db ;;
        3) connect-db ;;
        4) drop-db ;;
        5) echo "Goodbye!"; exit ;;
        *) echo "Invalid choice. Please try again."; menu ;;
    esac
}

# Display the menu
menu
