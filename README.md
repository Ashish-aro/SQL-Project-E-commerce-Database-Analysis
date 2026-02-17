# 🛒 E-Commerce Database Analysis (SQL Project)

## 📌 Project Overview

This project builds and analyzes an **E-Commerce database** using the publicly available **Olist dataset**.
The goal is to extract meaningful **business insights** using SQL, including revenue trends, top product categories, order patterns, delivery performance, and customer behavior. ([GitHub][1])

This analysis is done entirely using **PostgreSQL (or another SQL engine)** with multiple analytical queries written in `Analysis.sql`. ([GitHub][2])

---

## 📂 Repository Structure

```
📁 SQL-Project-E-commerce-Database-Analysis
│
├── creating necessary tables.sql
│   └── SQL script to create tables using the Olist CSV files
│
├── Analysis.sql
│   └── SQL queries that generate business insights
│
├── olist_customers_dataset.csv
│   └── Customer demographic data
│
├── olist_orders_dataset.csv
│   └── Order lifecycle data
│
├── olist_order_items_dataset.csv
│   └── Order item pricing and product linkage
│
├── olist_payments_dataset.csv
│   └── Payment method details and values
│
├── olist_products_dataset.csv
│   └── Product attributes and category info
│
├── olist_reviews_dataset.csv
│   └── Customer review scores for orders
│
└── README.md
    └── This documentation
```

---

## 🧱 Database Schema

### Tables Created

All tables are created with columns closely matching the original Olist CSVs: ([GitHub][1])

**customers**

* customer_id (PK)
* customer_unique_id
* customer_zip_code_prefix
* customer_city
* customer_state

**orders**

* order_id (PK)
* customer_id (FK to customers)
* order_status
* order_purchase_timestamp
* order_approved_at
* order_delivered_customer_date
* order_estimated_delivery_date

**products**

* product_id (PK)
* product_category_name
* product_name_lenght
* product_description_lenght
* product_photos_qty
* product_weight_g
* product_length_cm
* product_height_cm
* product_width_cm

**order_items**

* order_id
* product_id
* seller_id
* price
* freight_value

**payments**

* order_id
* payment_type
* payment_installments
* payment_value

**reviews**

* order_id
* review_score

---

## 📊 Key Analytics Queries

The `Analysis.sql` file contains analytical SQL queries that answer important business questions:

### 🔹 Revenue & Sales Trends

* **Total revenue and total number of orders**
* **Monthly sales trend (orders & revenue)** ([GitHub][2])

### 🔹 Product & Category Performance

* **Top product categories by revenue**
* **Top sellers by revenue** ([GitHub][2])

### 🔹 Customer & City Insights

* **Top cities by order count**
* **Repeat customer identification** ([GitHub][2])

### 🔹 Delivery & Satisfaction

* **Average delivery time**
* **Delivery status distribution**
* **Review score vs delivery time analysis** ([GitHub][2])

### 🔹 Payment Behavior

* **Payment method distribution and revenue totals** ([GitHub][2])

---

## 🚀 How to Run This Project

### 1. Clone the Repository

```bash
git clone https://github.com/Ashish-aro/SQL-Project-E-commerce-Database-Analysis.git
```

### 2. Create the Database & Load Tables

Using your SQL engine (PostgreSQL, SQLite, etc.):

```sql
\i creating\ necessary\ tables.sql
```

Then import the CSV data into the newly created tables.

---

### 3. Run the Analysis Queries

Execute:

```sql
\i Analysis.sql
```

This will output analytical insights such as total revenue, sales trends, and more.

---

## 📌 Project Insights (What You Can Learn)

This project helps answer questions like:

✔ What are the **top selling product categories**?
✔ Which **cities contribute most to sales**?
✔ How does **delivery performance** relate to customer satisfaction?
✔ Which **payment methods** drive most revenue?

These insights support data-driven decisions in e-commerce operations and strategy.

---

## 👤 Author

**Ashish-aro**
SQL Data Analytics | Business Intelligence | PostgreSQL

---

## 📌 Acknowledgements

This project uses the publicly available **Olist dataset**, a commonly used e-commerce transactional dataset for analytics and SQL learning exercises.

---
