#!/bin/bash

# Список вебсайтів для перевірки
websites=(
    "https://www.google.com"
    "https://www.facebook.com"
    "https://www.twitter.com"
)

# Назва файлу для логів
log_file="website_status.log"

# Очищення файлу логів, якщо він вже існує
> "$log_file"

# Функція для перевірки доступності сайту
check_website() {
    local url=$1
    # Виконання запиту з перенаправленням (для обробки переадресації) і перевірка статус-коду
    http_status=$(curl -s -o /dev/null -w "%{http_code}" "$url")
    
    if [ "$http_status" -eq 200 ]; then
        echo "$url is UP"
    else
        echo "$url is DOWN"
    fi
}

# Перебір усіх вебсайтів у списку
for website in "${websites[@]}"; do
    status=$(check_website "$website")
    echo "$status" >> "$log_file"
done

# Виведення повідомлення про завершення роботи
echo "Результати записані у файл $log_file"
