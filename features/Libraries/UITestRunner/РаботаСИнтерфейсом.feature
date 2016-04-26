﻿# encoding: utf-8
# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOn837


Функционал: Я хочу работать с командным интерфейсом 1С 8.3.x

Как Разработчик я хочу
Чтобы у меня была библиотека для стандартных команд 1С при работе с UI 1С 8.3.x
чтобы я мог запускать автосгенерированные фичи по действиям пользователя без написания кода


Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
	
Сценарий: Работа с гиперссылкой	
	Когда Я нажимаю кнопку командного интерфейса "Основная"
	Когда Я нажимаю кнопку командного интерфейса "Справочник1"
	Тогда открылось окно "Справочник1"
	И     В открытой форме я нажимаю на кнопку с заголовком "Создать"
	Тогда открылось окно "Справочник1 (создание)"
	И     В открытой форме в поле с именем "Наименование" я ввожу текст "111"
	И     В открытой форме я перехожу к закладке с заголовком "Вспомогательная"
	Тогда элемент формы с именем "Наименование" стал равен "111"
	И     В открытой форме я нажимаю на гиперссылку с заголовком "Гиперссылка"
	Тогда открылось окно "1С:Предприятие"
	И     В открытой форме я нажимаю на кнопку с заголовком "OK"
	Тогда открылось окно "Справочник1 (создание) *"
	И     В открытой форме я нажимаю на кнопку с заголовком "Записать и закрыть"

	
	
Сценарий: Работа с группой элементов формы
	Когда Я нажимаю кнопку командного интерфейса "Основная"
	Когда Я нажимаю кнопку командного интерфейса "Справочник1"
	Тогда открылось окно "Справочник1"
	И     В открытой форме я нажимаю на кнопку с заголовком "Создать"
	Тогда открылось окно "Справочник1 (создание)"
	И     В открытой форме в поле с именем "Наименование" я ввожу текст "111"
	И     В открытой форме я перехожу к закладке с заголовком "Вспомогательная"
	И     В открытой форме я сворачиваю группу с заголовком "СворачиваемаяГруппа"
	И     В открытой форме я разворачиваю группу с заголовком "СворачиваемаяГруппа"
	И     В открытой форме я нажимаю на кнопку с заголовком "Записать и закрыть"
	
	
	
Сценарий: Работа с иерархией групп справочников
	Когда Я нажимаю кнопку командного интерфейса "Основная"
	Когда Я нажимаю кнопку командного интерфейса "Справочник1"
	Тогда открылось окно "Справочник1"
	И     В открытой форме я нажимаю на кнопку с заголовком "Создать"
	Тогда открылось окно "Справочник1 (создание)"
	И     В открытой форме в поле с именем "Наименование" я ввожу текст "Тест"
	И     В открытой форме я открываю выпадающий список с заголовком "Реквизит2"
	И     В открытой форме я выбираю значение реквизита с заголовком "Реквизит2" из формы списка
	Тогда открылось окно "Справочник2"
	И     В форме "Справочник2" в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000004' | 'Группа2'      |
		
	И     В форме "Справочник2" в ТЧ "Список" я выбираю текущую строку	
	И     В форме "Справочник2" в таблице "Список" я перехожу к строке:
		| Код       | Наименование |
		| 000000008 | Группа2Элем2 |
		
	И     В форме "Справочник2" в ТЧ "Список" я выбираю текущую строку
	Тогда открылось окно "Справочник1 (создание) *"
	
	И     В открытой форме я перехожу к закладке с заголовком "Вспомогательная"
	
	И     В открытой форме я нажимаю на кнопку с заголовком "Записать и закрыть"
	И     Есть элемент справочника "Справочник1" с наименованием "Тест" и  реквизитом "Реквизит2" равным "Группа2Элем2"


Сценарий: Основной сценарий работы с элементами формы
	Когда Я нажимаю кнопку командного интерфейса "Основная"
	И     Я нажимаю кнопку командного интерфейса "Справочник1"
	Тогда открылось окно "Справочник1"
	И     В форме "Справочник1" в таблице "Список" я перехожу к строке:
		| Код       | Наименование       |
		| 000000002 | Тестовый Элемент 2 |
	И     В форме "Справочник1" в ТЧ "Список" я выбираю текущую строку
	И     открылось окно "Тестовый Элемент * (Справочник1)"
	И     В открытой форме я открываю выпадающий список с заголовком "Реквизит1"
	И     В открытой форме из выпадающего списка я выбираю "ЗначениеПеречисления1"
	И     В открытой форме я выбираю значение реквизита с заголовком "Реквизит2" из формы списка
	Тогда открылось окно "Справочник2"
	И     В форме "Справочник2" в таблице "Список" я перехожу к строке:
		| Наименование      |
		| ТестовыйЭлемент21 |
	И     В форме "Справочник2" в ТЧ "Список" я выбираю текущую строку
	Тогда открылось окно "Тестовый Элемент * (Справочник1) *"
	И     В открытой форме в поле с именем "РеквизитЧисло" я ввожу текст "12.34"
	И     В открытой форме в поле с именем "РеквизитСтрока" я ввожу текст "тест"
	И     В открытой форме в поле с именем "РеквизитДата" я ввожу текст "08.04.1981"
	И     В открытой форме я изменяю флаг с заголовком "Реквизит булево"
	И     В открытой форме я меняю значение переключателя с заголовком "Реквизит переключатель" на "Первое значение"
	
	#Работа с ТЧ
	
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" я нажимаю на кнопку с заголовком "Добавить"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" в поле с заголовком "Реквизит число" я ввожу текст "56,78"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" в поле с заголовком "Реквизит строка" я ввожу текст "ТестСтрока"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" в поле с заголовком "Реквизит дата" я ввожу текст "11.09.1983"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" из выпадающего списка с заголовком "Реквизит справочник" я выбираю "ТестовыйЭлемент21"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" я изменяю флаг с заголовком "Реквизит булево"
	И     В открытой форме в ТЧ "ТабличнаяЧасть1" я выбираю значение реквизита с заголовком "Реквизит справочник выбор из формы списка" из формы списка
	Тогда открылось окно "Справочник2"
	И     В форме "Справочник2" в таблице "Список" я перехожу к строке:
		| Наименование      |
		| ТестовыйЭлемент21 |
	И     В форме "Справочник2" в ТЧ "Список" я выбираю текущую строку

	
	И     В открытой форме я нажимаю на кнопку с заголовком "Записать и закрыть"
	И     Элемент Справочника1 с именем "Тестовый Элемент 2" записался корректно


	
#Сценарий: Закрыть сеанс 1С с ключом TESTCLIENT	
#	Дано я закрываю сеанс TESTCLIENT	
	