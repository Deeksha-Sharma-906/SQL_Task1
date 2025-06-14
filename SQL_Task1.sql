/*
INTERNSHIP TASK -1
=======================================================================================================================================================================================
JOINS PRACTICE

PERFORM INNER, LEFT, RIGHT, AND  FULL JOINS ON TABLES TO COMBINE DATA MEANINGFULLY
=======================================================================================================================================================================================
*/

create database CodTech

use CodTech

create table Customer (
"Salesmanld" int,
"Customerld" int,
"CustomerName" varchar(50) not null,
"PurchaseAmount" int
);

insert into Customer Values
(101,2345,'Andrew',550),
(103,1575,'Lucky',4500),
(104,2345,'Andrew',4000),
(107,3747,'Remona',2700),
(110,4004,'Julia',4545),
(102,2345,'Eden',550),
(105,1575,'Lucy',4500);


create table orders(
"Orderld" int not null,
"Customerld" int,
"Salesmanld" int,
"OrderDate" date,
"Amount" int);

insert into orders values
(5001,2345,101,'2021-07-04', 550),
(5003,1234,105,'2022-02-15',1500),
(5002,3747,107,'2023-01-30',1500);


-- Inner Join
select * from Customer
Inner Join orders
on Customer.Customerld = orders.Customerld

--Left Join
select * from Customer
Left Join orders
on Customer.Customerld = orders.Customerld

--Right Join
select * from Customer
Right Join orders
on Customer.Customerld = orders.Customerld

--Full Join
select * from Customer
Full Join orders
on Customer.Customerld = orders.Customerld


