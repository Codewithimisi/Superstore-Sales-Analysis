-- 1. Retrieve the total number of orders placed.
 select count(Order_ID) as total_orders
 from sales;
 
-- 2. Calculate the total revenue generated from all orders.
select sum(sales) as total_revenue
from sales;

-- 3. List the top 10 best-selling products.
select product, sum(sales) as total_sales
from sales
group by product
order by total_sales desc
limit 10;

 -- 4. Find the total quantity of each product sold.
 select product, sum(quantity_ordered) as total_quantity
 from sales
 group by product;
 
 -- 5. Identify the customers who made the highest number of purchases.
select CustomerID, sum(Quantity_Ordered) as total_purchases
from sales
group by customerID
order by total_purchases desc;

 -- 6. Determine the average order value.
 select (sum(sales)/count(Order_ID)) as average_ordervalue
 from sales;
 
-- 7. List all orders placed on a specific date.
 select Order_ID
 from sales
 where order_date= '12/30/2019';
 
-- 8. Find the customers who have not placed any orders yet.
select CustomerID
from sales
where Order_ID is null;

-- 9. Identify the city with the highest total sales revenue.
select city, sum(sales) as total_sales
from sales
group by city
order by total_sales desc
limit 1;

-- 10. Find the average quantity of products ordered per order.
select order_id, avg(quantity_ordered) as average_quantity
from sales
group by order_id;

-- 11. Identify the peak hours for order placement.
select hour, count(order_id) as orders_count
from sales
group by hour
order by orders_count desc;

 -- 12. List the products that have never been ordered.
 select product 
 from sales
 where order_id is null;
 
 -- 13. Find the total number of orders placed in each month
 select Month, count(order_id) as total_orders
 from sales
 group by Month;
 
 -- 14. Retrieve the month with the highest sales.
 select month, sum(sales) as total_sales
 from sales
 group by month
 order by total_sales desc
 limit 1;
 
 