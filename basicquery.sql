use northwind;

select *

from categories;

select customername, country, city
FROM customers;

select ProductID, Productname

FROM Products;

select distinct country
from customers;


select count(distinct country)
from customers;

select count(country)
from customers;

select *
from customers
where country = 'mexico' ;

select count(*)
from customers
where country = 'USA';

select*
from products
where price > 100;

select*
from customers
where country = 'germany' and city = 'berlin' ;

select *
from suppliers
order by city desc ;

select firstname,lastname,birthdate
from employees
order by lastname, birthdate desc ;

select *
from products
where price >20
limit 10 ;

select *
from customers
where city = 'london'
order by customerid asc
limit 3 ;

select max(orderdate)
from orders ;

select*
from customers
where customername like 'a%' ;

select*
from customers
where customerID IN(select customerID from Orders);

select*
from order_details
where  quantity between 5 and 15;

select*
from customers;

select customername,city 
from customers;

select distinct city 
from customers;

select* 
from products 
where price>50;

select* 
from customers 
where country in('usa','uk');

select* 
from orders 
order by orderdate desc;

select* 
from products 
where price between 20 and 50 
order by price desc;

select* 
from customers 
where country='usa' in(city='portland','kirkland')
order by customername asc;

select* 
from products 
where categoryid in('1','2') 
order by productname asc;

select* 
from customers 
where country='uk' in(city='london') 
order by customername desc;



