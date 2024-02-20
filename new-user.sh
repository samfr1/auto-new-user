```bash
#!/bin/bash

# Create a new user with superuser privileges
# Создание нового пользователя с суперправами
sudo useradd -m -s /bin/bash userroot

# Set the password for the new user
# Установка пароля для нового пользователя
echo "userroot:passwordroot" | sudo chpasswd

# Retrieve the external IPv4 address
# Получение внешнего IPv4-адреса
external_ip=$(curl -s ifconfig.me)

# Port for connection (you can change it to your desired port)
# Порт для подключения (можно изменить на нужный вам порт)
port=22

# Print out the connection details in English
# Вывод данных для подключения на английском
echo "Use the following details for connection:"
echo "IP Address: $external_ip"
echo "Username: userroot"
echo "Password: passwordroot"
echo "Port: $port"
```
