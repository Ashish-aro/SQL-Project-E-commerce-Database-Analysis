-- Creating customers table and importing the data in that table by using olist_customers_dataset.csv file.
create table customers(
	customer_id varchar(60) primary key,
	customer_unique_id varchar(60),
	customer_zip_code_prefix int,
	customer_city varchar(60),
	customer_state varchar(6)
);

-- Creating orders table and importing the data in that table by using olist_orders_dataset.csv file.
create table orders(
	order_id varchar(60) primary key,
	customer_id varchar(60),
	order_status varchar (30),
	order_purchase_timestamp timestamp,
	order_approved_at timestamp,
	order_delivered_customer_date timestamp,
	order_estimated_delivery_date timestamp,
	foreign key (customer_id) references customers(customer_id)
);

-- Creating orders table and importing the data in that table by using olist_products_dataset.csv file
create table products(
	product_id varchar(60) primary key,
	product_category_name varchar(60),
	product_name_lenght int,
	product_description_lenght int,
	product_photos_qty int,
	product_weight_g int,
	product_length_cm int,
	product_height_cm int,
	product_width_cm int	
);

-- Creating orders table and importing the data in that table by using olist_order_items_dataset.csv file
create table order_items(
	order_id varchar(60),
	product_id varchar(60),
	seller_id varchar(60),
	price numeric,
	freight_value numeric
);

-- Creating orders table and importing the data in that table by using olist_payments_dataset.csv file
create table payments(
	order_id varchar(60),
	payment_type varchar(30),
	payment_installments int,
	payment_value numeric
);

-- Creating orders table and importing the data in that table by using olist_reviews_dataset.csv file
create table reviews(
	order_id varchar(60),
	review_score int
);

--Verifying all tables data
select * from customers;
select * from orders;
select * from products;
select * from order_items;
select * from payments;
select * from reviews;