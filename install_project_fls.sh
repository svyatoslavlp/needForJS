#!/bin/bash

GREEN='\033[0;32m'
NORMAL='\033[0m'
echo -en "${GREEN}"
dirproject="$(pwd)"
echo -en "${GREEN}Путь установки: $dirproject${NORMAL}\n"
mkdir _src
cd _src
mkdir scss fonts img js
touch index.html
cd js
touch script.js
cd ..
cd scss
touch style.scss
cd ../..
echo -en "${GREEN}Инициализация проекта${NORMAL}\n"
npm init
echo -en "${GREEN}Локальная установка gulp${NORMAL}\n"
npm i gulp --save-dev

# echo -en "${GREEN}Локальная установка gulp-concat - конкатенация (слияние) файлов${NORMAL}\n"
# npm i gulp-concat --save-dev

# echo -en "${GREEN}Локальная установка gulp-cache${NORMAL}\n"
# npm i gulp-cache --save-dev

echo -en "${GREEN}Локальная установка browser-sync - локального сервера для браузеров - live reload${NORMAL}\n"
npm i browser-sync --save-dev
echo -en "${GREEN}Локальная установка gulp-file-include - подключение файлов${NORMAL}\n"
npm i gulp-file-include --save-dev
echo -en "${GREEN}Локальная установка del - удаление файлов${NORMAL}\n"
npm i del --save-dev
echo -en "${GREEN}Локальная установка gulp-sass - преобразование scss|sass в css${NORMAL}\n"
npm i gulp-sass --save-dev
echo -en "${GREEN}Локальная установка gulp-autoprefixer - добавление вендорных префиксов${NORMAL}\n"
npm i gulp-autoprefixer --save-dev
echo -en "${GREEN}Локальная установка gulp-group-css-media-queries - групирование медиа запросов${NORMAL}\n"
npm i gulp-group-css-media-queries --save-dev
echo -en "${GREEN}Локальная установка gulp-clean-css - сжатие и оптимизация css${NORMAL}\n"
npm i gulp-clean-css --save-dev
echo -en "${GREEN}Локальная установка gulp-rename - переименование файлов${NORMAL}\n"
npm i gulp-rename --save-dev
echo -en "${GREEN}Локальная установка gulp-uglify-es - минификация (сжатие) JavaScript файлов${NORMAL}\n"
npm i gulp-uglify-es --save-dev
echo -en "${GREEN}Локальная установка gulp-imagemin - минификация (сжатие) файлов изображений${NORMAL}\n"
npm i gulp-imagemin --save-dev
echo -en "${GREEN}Локальная установка gulp-webp - конвертирование изображений в формат webp${NORMAL}\n"
npm i gulp-webp --save-dev
echo -en "${GREEN}Локальная установка gulp-webp-html - автоматическое подключение изображений в формате webp${NORMAL}\n"
npm i gulp-webp-html --save-dev
echo -en "${GREEN}Локальная установка gulp-webpcss - автоматическое подключение стилей изображений в формате webp${NORMAL}\n"
npm i gulp-webpcss --save-dev

echo -en "${GREEN}Полный список установленных в проекте локальных пакетов верхного уровня${NORMAL}\n"
npm list --depth=0
if [ -w .gitignore ]
then
echo -en "${GREEN}.gitignore существует и доступен для записи${NORMAL}\n"
echo "node_modules" >> .gitignore
echo -en "${GREEN}node_modules добавлен в .gitignore${NORMAL}\n"
else
echo "node_modules" > .gitignore
echo -en "${GREEN}.gitignore создан и node_modules добавлен в .gitignore${NORMAL}\n"
fi
