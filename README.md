# Zepto SQL Data Analysis

## About the Project

This project is a SQL-based analysis of a Zepto product dataset. I used **MySQL and MySQL Workbench** to explore the data and understand different aspects of the products, such as pricing, discounts, stock availability, quantity, and product categories.

The main goal of this project was to practice SQL on a real-world e-commerce dataset and use queries to answer practical business questions.

## Dataset

The dataset contains product-level information from Zepto, including:

* Product category and name
* MRP
* Discount percentage
* Discounted selling price
* Available quantity
* Product weight
* Stock availability

The original dataset is available in the `dataset` folder.

## What I Worked On

I started by importing the dataset into MySQL and checking the structure and quality of the data. I then performed data cleaning and used SQL queries to analyze the products.

Some of the analysis includes:

* Finding the highest and lowest priced products
* Finding products with the highest discounts
* Calculating average product prices
* Checking stock availability
* Finding products with low stock
* Analyzing products category-wise
* Calculating total inventory value
* Comparing MRP with discounted selling price
* Finding top products based on price and quantity
* Ranking products within each category

## SQL Concepts Used

Throughout the project, I worked with different SQL concepts, including:

* `SELECT` and `WHERE`
* `DISTINCT`
* `ORDER BY`
* `LIMIT`
* `LIKE`
* `BETWEEN`
* `AND` / `OR`
* Aggregate functions such as `COUNT`, `SUM`, `AVG`, `MIN`, and `MAX`
* `GROUP BY`
* `HAVING`
* `CASE`
* Subqueries
* Window functions
* `RANK()`
* `DENSE_RANK()`
* `ROW_NUMBER()`
* `PARTITION BY`

## Example Queries

### Finding the most expensive products

```sql
SELECT name, mrp
FROM zepto
ORDER BY mrp DESC
LIMIT 5;
```

### Average price by category

```sql
SELECT category,
       AVG(mrp) AS average_mrp
FROM zepto
GROUP BY category;
```

### Ranking products within each category

```sql
SELECT
    category,
    name,
    mrp,
    RANK() OVER (
        PARTITION BY category
        ORDER BY mrp DESC
    ) AS price_rank
FROM zepto;
```

## Project Files

```text
zepto_sql_project/
│
├── dataset/
│   └── zepto_v2.csv
│
├── queries/
│   └── zepto_sql_queries.sql
│
├── screenshots/
│   ├── ss1.png
│   ├── ss2.png
│   ├── ss3.png
│   ├── ss4.png
│   ├── ss5.png
│   ├── ss6.png
│   └── ss7.png
│
└── README.md
```

The `queries` folder contains the SQL queries I used for the analysis, while the `screenshots` folder contains screenshots of my work in MySQL Workbench.

## Tools Used

* MySQL
* MySQL Workbench
* SQL
* Git
* GitHub

## What I Learned

Working on this project helped me get more comfortable with writing SQL queries and applying them to a real dataset. In particular, I got practical experience with **aggregations, grouping, subqueries, and window functions**, along with basic data cleaning and analysis.

## Author

Naveen S

GitHub : https://github.com/naveensundar2005

Email: naveenpanimalar2022@gmail.com



