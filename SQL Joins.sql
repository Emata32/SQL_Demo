use bestbuy;

/* joins: select all the computers from the products table:

using the products table and the categories table, return the product name and the category name */
select p.name as product, c.name as category
from products as p
inner join categories as c
on p.categoryid = c.categoryid
where c.name = "computers";
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
select p.name, p.price, r.rating
from products as p
inner join reviews as r
on p.productid = r.productid
where r.Rating = 5;

/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
select concat(e.firstname, e.lastname) as Employee, sum(s.quantity) as total
from employees as e
inner join sales as s
on e.employeeID = s.employeeID
group by e.employeeID
order by total desc
limit 5;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
select d.name as department, c.name as category from categories as c
inner join departments as d 
on d.departmentid = c.departmentid  
where c.name = "appliances" or c.Name = "ames";


/* joins: find the product name, total # sold, and total price sold,

 for Eagles: Hotel California --You may need to use SUM() */
 select p.Name as product , sum(S.Quantity)as totalQuantity, sum(s.priceperunit * s.quantity)as totalvalue  
 from products as p
 inner join sales as s 
 on p.ProductID = s.ProductID
where p.name = "Eagles: Hotel California";

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */

-- ------------------------------------------ Extra - May be difficult
select p.name as product , r.reviewer, r.rating, r.comment
from reviews as r 
inner join products as p
on p.productid = r.productid
where p.name = "Visio TV"
order by r.rating 
limit 1;


/* Your goal is to write a query that serves as an employee sales report.

This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */
