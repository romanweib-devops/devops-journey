# Получаем первую цифру из load average
LOAD=$(uptime | awk -F'load average: ' '{print $2}' | cut -d',' -f1)

# Убираем точку, чтобы сравнивать (0.75 -> 75)
LOAD_INT=$(echo "$LOAD * 100" | bc | cut -d'.' -f1)

# Текущая дата
NOW=$(date "+%Y-%m-%d %H:%M:%S")

# Если больше 70% - пишем в лог
if [ "$LOAD_INT" -gt 70 ]; then
	echo "$NOW - Высокая загрузка CPU: $LOAD" >> ~/devops-journey/high_cpu.log
fi
