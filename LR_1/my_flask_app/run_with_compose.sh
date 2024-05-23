#!/bin/bash

# Зупинка та видалення існуючих контейнерів
docker-compose down

# Запуск нових контейнерів
docker-compose up -d

# Виведення списку запущених контейнерів
docker ps
