#!/bin/bash
#Made by Artur Krawczyk

read -p "Podaj nazwę grupy: " group_name
    
if grep -q "^$group_name:" /etc/group; then
    echo "Group already exist."
else
    sudo groupadd "$group_name"
    echo "Grupa została dodana."
fi

bash menu.bash
