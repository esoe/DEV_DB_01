-- Работа с json
-- Дан json, имеющий следующую структуру:
--{ "company_name": "Poupkine and Sons", "offices":
--	[ 
--		{ "name": "Главный", "city": "Париж", "area": 1000 }, 
--		{ "name": "Запасной", "city": "Москва", "area" : 200 }
--	]
--}
select '{ "company_name": "Poupkine and Sons", 
	"offices": [ { "name": "Главный", "city": "Париж", "area": 1000 }, 
				{ "name": "Запасной", "city": "Москва", "area" : 200 } ] }'::json #>>'{0}';


SELECT'[{"a":"foo"},{"b":"bar"},{"c":"baz"}]'::json-> 2;