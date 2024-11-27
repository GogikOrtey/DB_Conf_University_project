##  Запросы 

# Основной запрос с информацией:

SELECT  CONCAT(last_name, '.', SUBSTRING(first_name, 1, 1), '.', SUBSTRING(thrests_name, 1, 1)) as "ФИО", partType as "Человек", name_conf as "Название конференции", speechTopic as "Тема доклада"
FROM part_info_main NATURAL JOIN conf_part_main NATURAL JOIN name_of_conf

/*

1. Вывести фамилии участников конференции, которые не оплатили орг. взнос
2. Вывести фамилии участников, которые отправили заявку, но не прислали тезисы, или не участвовали в конференции
3. Вывести учёные степени, и количество раз, которое они встречаются у участников
4. Сколько дней прошло, с момента поступления заявки, до даты приезда участника
5. Участник из какого города задержался дольше всех на конференции (вывести максимальное количество времени пребывания, в днях для каждого города)
6. Участник из какого вуза заплатил самый большой орг. взнос (вывести максимальную сумму взноса для каждого вуза)
7. Участники с какими учёной степенью и званием, не нуждались в гостинице

*/


#1 
SELECT last_name, first_name, thrests_name, feeAmount
FROM conf_part_detail NATURAL JOIN part_info_main
WHERE feeAmount <= 0

#2
SELECT last_name, first_name, thrests_name, absReceived, arrivalDate, departureDate
FROM conf_part_add NATURAL JOIN conf_part_main NATURAL JOIN part_info_main
WHERE arrivalDate IS NULL;

#3
SELECT post, COUNT(*) as count
FROM workinfo
GROUP BY post

#4
SELECT id, applicationReceiptDate, arrivalDate
FROM conf_part_detail NATURAL JOIN conf_part_add
WHERE arrivalDate IS NOT NULL

UNION SELECT id, applicationReceiptDate, "Не приехал"
FROM conf_part_detail NATURAL JOIN conf_part_add
WHERE arrivalDate IS NULL
ORDER BY arrivalDate

#5

SELECT MAX(DATEDIFF(departureDate, arrivalDate)) AS max_days, last_name, name_sity 
FROM conf_part_add NATURAL JOIN part_info_main NATURAL JOIN pers_info JOIN sity 
ON pers_info.id_city = sity.id_sity 
WHERE arrivalDate IS NOT NULL 
GROUP BY name_sity, last_name;

--- Почему не все города в выборке:

SELECT * 
FROM Pers_Info NATURAL JOIN Conf_Part_Add JOIN sity
ON sity.id_sity = Pers_Info.id_city

#6
SELECT ROW_NUMBER() OVER (ORDER BY name_univer) AS row_num, last_name, MAX(feeAmount), name_univer 
FROM conf_part_detail 
NATURAL JOIN part_info_main 
NATURAL JOIN workinfo 
JOIN university ON workinfo.id_univer = university.id_univer 
GROUP BY name_univer, last_name

#7
SELECT last_name, first_name, thrests_name, scien_degree, scien_title, "Не нуждается в гостинице" as "Нуждается в гостинице?"
FROM workinfo NATURAL JOIN conf_part_add NATURAL JOIN part_info_main
WHERE hotelNeeded = false






















----

/* 6. Участник из какого вуза заплатил самый большой орг. взнос */

SELECT last_name, name_univer, MAX(feeAmount) as summ
FROM conf_part_detail 
NATURAL JOIN part_info_main 
NATURAL JOIN workinfo 
JOIN university ON workinfo.id_univer = university.id_univer 
GROUP BY name_univer, last_name
HAVING MAX(feeAmount) = (
  SELECT MAX(feeAmount)
  FROM conf_part_detail 
  NATURAL JOIN part_info_main 
  NATURAL JOIN workinfo 
  JOIN university ON workinfo.id_univer = university.id_univer 
)



