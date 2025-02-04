#!/bin/bash

clear
echo "=================================="
echo "       CUSTOM TERMINAL SETUP      "
echo "=================================="
echo "1) Kali Linux"
echo "2) Termux"
read -p "Select an option (1/2): " choice

clear
echo "=============================="
echo "         LOADING...          "
echo "=============================="
sleep 2

if [ "$choice" -eq 1 ]; then
    pkg install figlet -y
    echo "figlet Kali Linux" >> ~/.bashrc
    echo "PS1='[\e[34mKali Linux\e[0m]$ '" >> ~/.bashrc
elif [ "$choice" -eq 2 ]; then
    pkg install figlet -y
    echo "figlet Termux" >> ~/.bashrc
    echo "PS1='[\e[32mTermux\e[0m]$ '" >> ~/.bashrc
else
    echo "Invalid option!"
    exit 1
fi

echo "=============================="
echo "      SETUP COMPLETED!       "
echo "=============================="
echo "Restart your terminal to see changes."
