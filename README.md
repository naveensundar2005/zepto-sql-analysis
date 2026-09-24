# zepto-sql-analysis

SQL data analysis project using the Zepto product dataset



\# 🛒 Zepto SQL Data Analysis Project



\## 📌 Project Overview



This project analyzes a Zepto product dataset using \*\*MySQL\*\* to explore product pricing, discounts, inventory, stock availability, and category-wise product information.



The project focuses on using SQL to clean, transform, analyze, and extract meaningful insights from the dataset.



\---



\## 📂 Project Structure



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



\---



\## 📊 Dataset Description



The dataset contains information about products available on Zepto.



\### Main Columns



| Column                   | Description                                   |

| ------------------------ | --------------------------------------------- |

| `category`               | Product category                              |

| `name`                   | Product name                                  |

| `mrp`                    | Maximum Retail Price                          |

| `discountPercent`        | Discount percentage                           |

| `availableQuantity`      | Available inventory quantity                  |

| `discountedSellingPrice` | Selling price after discount                  |

| `weightInGms`            | Product weight in grams                       |

| `outOfStock`             | Indicates whether the product is out of stock |

| `quantity`               | Product quantity                              |



\---



\## 🛠️ Tools \& Technologies



\* \*\*MySQL\*\*

\* \*\*MySQL Workbench\*\*

\* \*\*SQL\*\*

\* \*\*Git\*\*

\* \*\*GitHub\*\*



\---



\## 🧹 Data Cleaning



The project includes SQL operations for preparing the dataset for analysis, including:



\* Checking product data

\* Handling pricing values

\* Converting price values into appropriate amounts

\* Checking stock availability

\* Filtering invalid or unwanted records

\* Verifying discount and selling price information



\---



\## 🔎 SQL Concepts Used



This project demonstrates several SQL concepts:



\### Basic SQL



\* `SELECT`

\* `WHERE`

\* `DISTINCT`

\* `ORDER BY`

\* `LIMIT`



\### Filtering \& Conditions



\* Comparison operators

\* `AND`

\* `OR`

\* `BETWEEN`

\* `LIKE`



\### Aggregate Functions



\* `COUNT()`

\* `SUM()`

\* `AVG()`

\* `MIN()`

\* `MAX()`



\### Grouping



\* `GROUP BY`

\* `HAVING`



\### Conditional Logic



\* `CASE`



\### Subqueries



\* Single-row subqueries

\* Aggregate subqueries



\### Advanced SQL



\* Window Functions

\* `RANK()`

\* `DENSE\_RANK()`

\* `ROW\_NUMBER()`

\* `PARTITION BY`



\---



\## 📈 Analysis Performed



The project includes analysis such as:



\* Finding the highest and lowest priced products

\* Finding products with the highest discounts

\* Finding average product prices

\* Finding total product quantities

\* Category-wise product analysis

\* Category-wise average MRP

\* Identifying low-stock products

\* Identifying out-of-stock products

\* Calculating discount amounts

\* Calculating inventory value

\* Ranking products based on price

\* Ranking products within each category

\* Finding top products based on different metrics



\---



\## 💡 Example SQL Analysis



\### Find the top 5 most expensive products



```sql

SELECT name, mrp

FROM zepto

ORDER BY mrp DESC

LIMIT 5;

```



\### Find average MRP by category



```sql

SELECT category,

      AVG(mrp) AS average\_mrp

FROM zepto

GROUP BY category;

```



\### Rank products within each category



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



\---



\## 📸 Project Screenshots



Screenshots of SQL queries and results are available in the `screenshots` folder.



\---



\## 🎯 Project Objective



The main objective of this project is to demonstrate practical SQL skills by working with a real-world e-commerce product dataset.



The project helps analyze:



\*\*Products → Pricing → Discounts → Inventory → Stock → Categories\*\*



\---



\## 🚀 Skills Demonstrated



\* SQL Data Analysis

\* Data Cleaning

\* Data Filtering

\* Aggregation

\* Grouping

\* Subqueries

\* Window Functions

\* Inventory Analysis

\* E-commerce Data Analysis

\* MySQL Workbench

\* Git \& GitHub



\---



\## 👨‍💻 Author



Naveen S

GitHub : https://github.com/naveensundar2005

Email: naveenpanimalar2022@gmail.com



