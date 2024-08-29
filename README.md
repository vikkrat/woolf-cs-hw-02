# woolf-cs-hw-02

### Завдання 1:

- Скрипт написано на Bash.

- Використано цикл для обходу всіх сайтів у списку.

- Використано команду curl для перевірки HTTP-відповідей.

- Надано файлу права на виконання:
    
    ```chmod +x check_websites.sh```

- Запущено скрипт:
    
    ```./check_websites.sh```

- Результати перевірки записані у файл логів, виведено про це повідомлення.

![01_check_websites_results](01_check_websites/01_check_websites_results.jpg)


### Завдання 2:

- Клоновано репозиторій (https://github.com/GoIT-Python-Web/Computer-Systems-hw02), створено Dockerfile для створення образу Docker застосунку.

![dockerfile-result](Computer-Systems-hw02/dockerfile-result.jpg)

- Написано docker-compose.yaml з конфігурацією для застосунку та PostgreSQL.

![docker-compose-result](Computer-Systems-hw02/docker-compose-result.jpg)

- Використано Docker Compose, команду ```docker-compose up --build``` для побудови та запуску середовища.

- Застосунок є функціональним, а база даних — доступною, що підтверджується натисканням кнопки Перевірити БД.

**Before push button:**
![result-before-push-btn](Computer-Systems-hw02/result-before-push-btn.jpg)

**After push button:**
![result-after-push-btn](Computer-Systems-hw02/result-after-push-btn.jpg)