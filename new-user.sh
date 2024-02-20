#!/bin/bash

# Create a new user with superuser privileges
# Создание нового пользователя с суперправами
sudo useradd -m -s /bin/bash userroot

# Set the password for the new user
# Установка пароля для нового пользователя
echo "userroot:passwordroot" | sudo chpasswd

# Retrieve the external IP address
# Получение внешнего IP-адреса
external_ip=$(curl -s ifconfig.me)

# Port for connection (you can change it to your desired port)
# Порт для подключения (можно изменить на нужный вам порт)
port=22

# Print out the connection details
# Вывод данных для подключения
echo "Use the following details for connection:"
echo "IP Address: $external_ip"
echo "Username: userroot"
echo "Password: passwordroot"
echo "Port: $port"
