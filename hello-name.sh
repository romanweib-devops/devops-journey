#!/bin/bash

while true; do

	#Запрашиваем имя
	echo -n "Как тебя зовут? "
	read NAME

	#Проверяем, ввёл ли пользователь что-то

	if [ -n "$NAME" ]; then
		break
	else
		echo "Имя не может быть пустым. Попробуй ещё раз."
	fi
done



#Получаем дату и время
NOW = $(date "+%Y-%m-%d %H:%M:%S")

#Выводим приветствие
echo "Привет, $NAME! Сейчас $NOW"
