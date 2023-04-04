-- Дополнительное задание 2
-- Работа с массивами
-- 1. Объедините все элементы массива [192, 168, 10, 10] в строку, разделяя их с помощью символа точка (.)
SELECT array_to_string(array[192, 168, 10, 10]::integer[], '.');

-- 2. Объедините все элементы массива ['Привет', NULL, 'специалисты', 'по БД'],
-- разделяя их с помощью символа пробел.
-- Значения NULL должны быть заменены на символ запятая (,)
SELECT array_to_string(array['Привет', NULL, 'специалисты', 'по БД'], ' ', ',');

-- 3. Даны  2 массива  {"sql", "sqlserver"}  и {"database", "plsql"}.
-- a. Объедините эти массивы в один массив
select '{"sql", "sqlserver"}'::text[] || '{"database", "plsql"}'::text[];
-- b. Верните из объединенного массива 3 элемент
select ('{"sql", "sqlserver"}'::text[] || '{"database", "plsql"}'::text[])[3];
-- c. Замените в массиве элемент sqlserver на  postgres
select array_replace('{"sql", "sqlserver"}'::text[] || '{"database", "plsql"}'::text[], 'sqlserver'::text, 'postgres'::text);
-- d. Верните из полученного массива последний элемент
select ((array_replace(
	'{"sql", "sqlserver"}'::text[] || '{"database", "plsql"}'::text[], 'sqlserver'::text, 'postgres'::text))::text[])[4];

-- 4. Дана строка «Ваша_Фамилия, Ваше_Имя»
-- с помощью функций преобразования строки в массив
-- выполните разделение строки на элементы массива и верните отдельно Фамилию и Имя
--Пример: 'Городецкая, Светлана'
select b
from (
	select (string_to_array(a[1], '_') || string_to_array(a[2], '_')) 
	from string_to_array('Ваша_Фамилия, Ваше_Имя', ', ') as a
--	;
) as b;
















