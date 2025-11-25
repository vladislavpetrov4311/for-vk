#!/bin/bash

if ! docker ps --filter "name=for-vk" --filter "status=running" --format "{{.Names}}" | grep -w 'for-vk' > /dev/null; then
    echo "Запуск make start $(date +"%Y-%m-%d %H:%M:%S")" >> .log
    make start
    echo "Приложение успешно запустилось $(date +"%Y-%m-%d %H:%M:%S")" >> .log
else
    echo "Запуск приложения не требуется $(date +"%Y-%m-%d %H:%M:%S")" >> .log
fi