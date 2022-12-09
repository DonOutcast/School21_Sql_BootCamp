begin; --Начало --Session1;
select * from pizzeria where name  = 'Pizza Hut'; --Session1;
UPDATE pizzeria set rating = 4 where name = 'Pizza Hut'; -- Измениенеие таблицы --Session1;
commit ; -- Установка изменений --Session1;
select * from pizzeria where name  = 'Pizza Hut'; --Session1;

begin; --Session2;
select * from pizzeria where name  = 'Pizza Hut'; --Session2;
UPDATE pizzeria set rating = 3.6 where name = 'Pizza Hut'; UPDATE pizzeria set rating = 3.6 where name = 'Pizza Hut'; --Session2;
commit; --Session2;
select * from pizzeria where name  = 'Pizza Hut'; --Session2;
