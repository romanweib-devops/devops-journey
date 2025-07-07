# Используем официальный образ Ubuntu
FROM ubuntu:22.04

# Установим необходимые утилиты
RUN apt update && apt install -y bash coreutils procps bc

# Копируем все скрипты в контейнер
COPY . /app
WORKDIR /app

# Делаем скрипты исполняемыми
RUN chmod +x *.sh

# Запуск скрипта по умолчанию (напримерб hello.sh
CMD ["./hello.sh"]
