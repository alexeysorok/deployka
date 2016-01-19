
///////////////////////////////////////////////////////////////////////////////////////////////////
// Прикладной интерфейс

Процедура ЗарегистрироватьКоманду(Знач ИмяКоманды, Знач Парсер) Экспорт
	
	ОписаниеКоманды = Парсер.ОписаниеКоманды(ИмяКоманды, "Загрузка/обновление конфигурации");
	Парсер.ДобавитьКоманду(ОписаниеКоманды);

	Парсер.ДобавитьПозиционныйПараметрКоманды(ОписаниеКоманды, "СтрокаПодключения", "Строка подключения к рабочему контуру");
    Парсер.ДобавитьПозиционныйПараметрКоманды(ОписаниеКоманды, "ПутьДистрибутива", "Путь к дистрибутиву в виде каталога версии или zip-архива");
    Парсер.ДобавитьПараметрФлагКоманды(ОписаниеКоманды, "-usecf", "Использовать только CF для обновления контура");
    Парсер.ДобавитьПараметрФлагКоманды(ОписаниеКоманды, "-usecfu", "Использовать только CFU для обновления контура");

КонецПроцедуры

Функция ВыполнитьКоманду(Знач ПараметрыКоманды) Экспорт
    Возврат МенеджерКомандПриложения.РезультатКоманды().НеРеализована;
КонецФункции