#!/bin/bash

# Перевірка, чи існує контейнер
if [ $(docker ps -a -q -f name=myapp_container) ]; then
    echo "Зупинка та видалення існуючого контейнера..."
    docker stop myapp_container
    docker rm myapp_container
fi

# Запуск нового контейнера з використанням volumes
echo "Запуск нового контейнера..."
docker run -d -p 5000:5000 -v myapp_data:/app/data --name myapp_container myapp:latest

# Виведення списку запущених контейнерів
docker ps
