--�������� 1

--������� �� � ��'�� HomeWork,
create database HomeWork
--� ��� ������� ������� Product � ���������: ProductId, Name, ProductNumber, Cost, Count, SellStartDate.
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
--� ������� Product �������� 10 ������ ��� ������:

--Name               ProductNum    Cost     Count   SellStartDate

--������             AK-53818         5$        50        08/15/2011

--̳���              AM-51122         6.1$      50        07/15/2011

--������             AA-52211         2.5$      20        06/15/2011

--Snickers           BS-32118         2.8$      50        08/15/2011

--Snickers           BSL-3818         5$        100       08/20/2011

--Bounty              BB-38218         3$        100       08/01/2011

--Nuts                 BN-37818         3$        100       08/21/2011

--Mars                 BM-3618           2.5$      50        08/24/2011

--�����             AS-54181         5$        100       08/12/2011

--�����             AS-54182         5$        100       08/12/2011

insert into Product
([Name], ProductNumber, Cost,Currency, [Count], SellStartDate)
values
('������', 'AK-53818',5 ,'$',50 , '08.15.2011'),
('̳���','AM-51122', 6.1, '$', 50,'07.15.2011'),
('������', 'AA-52211', 2.5, '$',20,'06.15.2011'),
('Snickers', 'BS-32118', 2.8, '$', 50, '08.15.2011'),
('Snickers', 'BSL-3818', 5, '$', 100, '08.20.2011'),
('Bounty', 'BB-38218', 3, '$', 100 ,'08.01.2011'),
('Nuts', 'BN-37818', 3, '$', 100, '08.21.2011'),
('Mars', 'BM-3618', 2.5, '$', 50, '08.24.2011'),
('�����', 'AS-54181', 5, '$', 100 , '08.12.2011'),
('�����', 'AS-54182', 5, '$' , 100, '08.12.2011')
go
--�������� 2

--������ ������ ��� ���������, ������� ��� ����� 59 ��.

select * from Product
where [Count]>59
go
--������ ������ ��� ���������, ���� ��� ����� 3$ �� ������� �� ������ � 20/08/2011.

select * from Product
where SellStartDate >='08/20/2011' and Cost >3
go
--�������� 3

--������� ����� ���������� �� 25 �����, ����� �����.
update Product
set Cost = (Cost+0.25)
where Name = '�����'
select * from Product
go

--truncate table Product
--where [name] = 'Snickers'
