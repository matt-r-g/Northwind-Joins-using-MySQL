



-- Retrieve all products belonging to the meat/poultry category

select categories.categoryname,products.productname,products.unit,products.price
from categories
inner join products on products.categoryid = categories.categoryid
where categories.categoryname = "Meat/Poultry";



-- Retrieve the order ID, order date, customer name, and employee name for all orders.

select orders.orderid,orders.orderdate,customers.customername,employees.firstname,employees.lastname
from orders
inner join customers on customers.customerid = orders.customerid
inner join employees on employees.employeeid = orders.employeeid;

-- Retrieve the product name, category name, and supplier name for all products.

select categories.categoryname,products.productname, suppliers.suppliername
from categories
inner join products on products.categoryid = categories.categoryid
inner join suppliers on products.supplierid = suppliers.supplierid;

-- Create a report for all the orders of 1996 and their Customers.

select*
from orders
inner join customers on orders.customerid = customers.customerid
where orders.orderdate like '1996%';


-- Retrieve all categories along with the number of products in each category.



select categories.categoryname, count(*) as total_number
from categories
inner join products on products.categoryid = categories.categoryid
group by categories.categoryid
order by total_number desc;


