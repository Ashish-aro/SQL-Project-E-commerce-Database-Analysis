-- Total Revenue and Orders
select sum(payment_value) as total_revenue,count(distinct order_id) as total_orders from payments;

-- Monthly Sales Trend
select 
date_trunc('month',o.order_purchase_timestamp) as month, 
count(distinct o.order_id) as total_orders,
sum(p.payment_value) as total_revenue from orders as o inner join payments as p 
on o.order_id = p.order_id group by month order by month asc; 

-- Top Product Categories by revenue
select p.product_category_name, sum(o.price) as revenue from order_items as o
inner join products as p on o.product_id = p.product_id 
group by p.product_category_name order by revenue desc limit 10;

-- Top Cities by Orders
select c.customer_city, count(distinct o.order_id) as total_orders from customers as c
inner join orders as o on c.customer_id = o.customer_id 
group by c.customer_city order by total_orders desc limit 10;

-- Average Delivery Time
select avg(order_delivered_customer_date - order_purchase_timestamp) as avg_delivery_days from orders
where order_delivered_customer_date is not null;

-- Late Delivery Analysis
select order_status, count(*) from orders group by order_status;

-- Customer Satisfaction vs Delivery
select review_score, avg(order_delivered_customer_date - order_purchase_timestamp) as avg_delivery_days
from reviews as r inner join orders as o on r.order_id = o.order_id group by review_score;

-- Payment Method Distribution
select payment_type, count(*), sum(payment_value) as revenue from payments 
group by payment_type order by revenue desc;

-- Repeat Customers
select c.customer_unique_id, count(distinct o.order_id) as total_orders 
from customers as c inner join orders as o on c.customer_id = o.customer_id
group by c.customer_unique_id having count(distinct order_id) > 1 
order by total_orders desc;

-- Seller Performance(Revenue)
select seller_id, sum(price) as total_revenue from order_items group by seller_id order by total_revenue desc limit 10;
