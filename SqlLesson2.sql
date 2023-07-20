--Завдання 1

--Створіть БД з ім'ям HomeWork,
create database HomeWork
--у якій створіть таблицю Product з колонками: ProductId, Name, ProductNumber, Cost, Count, SellStartDate.
use homework
create table Product
(
	ProductId int identity not null,
	[Name] varChar(20) not null,
	ProductNumber varchar(20) not null,
	Cost decimal(5,3) not null,
	Currency char(1) null,
	[Count] int not null,
	SellStartDate date not null
)
go
--У таблицю Product запишіть 10 записів про товари:

--Name               ProductNum    Cost     Count   SellStartDate

--Корона             AK-53818         5$        50        08/15/2011

--Мілка              AM-51122         6.1$      50        07/15/2011

--Оленка             AA-52211         2.5$      20        06/15/2011

--Snickers           BS-32118         2.8$      50        08/15/2011

--Snickers           BSL-3818         5$        100       08/20/2011

--Bounty              BB-38218         3$        100       08/01/2011

--Nuts                 BN-37818         3$        100       08/21/2011

--Mars                 BM-3618           2.5$      50        08/24/2011

--Світоч             AS-54181         5$        100       08/12/2011

--Світоч             AS-54182         5$        100       08/12/2011

insert into Product
([Name], ProductNumber, Cost,Currency, [Count], SellStartDate)
values
('Корона', 'AK-53818',5 ,'$',50 , '08.15.2011'),
('Мілка','AM-51122', 6.1, '$', 50,'07.15.2011'),
('Оленка', 'AA-52211', 2.5, '$',20,'06.15.2011'),
('Snickers', 'BS-32118', 2.8, '$', 50, '08.15.2011'),
('Snickers', 'BSL-3818', 5, '$', 100, '08.20.2011'),
('Bounty', 'BB-38218', 3, '$', 100 ,'08.01.2011'),
('Nuts', 'BN-37818', 3, '$', 100, '08.21.2011'),
('Mars', 'BM-3618', 2.5, '$', 50, '08.24.2011'),
('Світоч', 'AS-54181', 5, '$', 100 , '08.12.2011'),
('Світоч', 'AS-54182', 5, '$' , 100, '08.12.2011')
go
--Завдання 2

--Зробіть вибірку для продукції, кількість якої більше 59 шт.

select * from Product
where [Count]>59
go
--Зробіть вибірку для продукції, ціна якої більше 3$ та надійшли на продаж з 20/08/2011.

select * from Product
where SellStartDate >='08/20/2011' and Cost >3
go
--Завдання 3

--Шоколад Світоч подорожчав на 25 центів, змініть запис.
update Product
set Cost = (Cost+0.25)
where Name = 'Світоч'
select * from Product
go

--truncate table Product
--where [name] = 'Snickers'
