#!/bin/bash
if [ (id -i) -eq 0 ] ; then
    read -p “Inserisci username: “ username
    read -s -p “Inserisci password: “ password
    grep -q $username /etc/passwd
    if [ $? -eq 1 ]; then
        useradd -m “$username” -p “$password”
        [ $? -eq 0 ] && echo -e “\nutente aggiunto” || echo -e “n\No”
    else
        echo -e “\nUsername $username già presente!”
        exit 1
    fi
else
    echo “Attenzione! Solo root può aggiungere un utente al sistema”
    exit 2
fi
