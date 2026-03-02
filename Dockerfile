# 1. Берем базовый образ Python
FROM python:3.14

# 2. Указываем, где в контейнере будут лежать файлы
WORKDIR /usr/src/app

# 3. Копируем файл со списком библиотек
COPY requirements.txt ./

# 4. Устанавливаем библиотеки из этого файла
RUN pip install --no-cache-dir -r requirements.txt

# 5. Копируем всё остальное (код и тесты)
COPY . .

# 6. Команда для запуска тестов
CMD [ "python", "-m", "pytest" ]