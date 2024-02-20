#!/bin/bash

# Проверка наличия прав root
if [ "$(id -u)" -ne "0" ]; then
    echo "Этот скрипт должен быть запущен от имени пользователя с правами root." 1>&2
    exit 1
fi

# Создание нового пользователя с суперправами
useradd -m -s /bin/bash userroot

# Установка пароля для нового пользователя
echo "userroot:passwordroot" | chpasswd

# Получение внешнего IP-адреса
external_ip=$(curl -s ifconfig.me)

# Порт для подключения (можно изменить на нужный вам порт)
port=22

# Вывод данных для подключения
echo "Use the following details for connection:"
echo "IP Address: $external_ip"
echo "Username: userroot"
echo "Password: passwordroot"
echo "Port: $port"
