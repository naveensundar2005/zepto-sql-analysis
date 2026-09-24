create database zepto_SQL_project;
use zepto_SQL_project;

create table zepto(sku_id serial primary key, 
category varchar(120), name varchar(150) not null,
mrp numeric(8,2), discountPercent numeric(5,2),
availableQuality integer,discountedSellingPrice numeric(8,2), 
weightInGms integer,outOfStock boolean, quantity integer);

-- count of rows
select count(*) from zepto;

-- sample data 
select * from zepto limit 10;

-- null values
select * from zepto where category is null or 
name is null or mrp is null or
discountPercent is null or availableQuantity is null or
discountedSellingPrice is null or weightInGms is null or
outOfStock is null or quantity is null;

-- different products in category
select distinct category from zepto order by category;

-- products in stock vs out of stock
select outofstock ,count(*) from zepto 
group by outofstock;

-- product names with mrp and selling price
select name,mrp,discountedSellingPrice from zepto;

-- data cleaning 
-- products with price = 0
select * from zepto where mrp = 0 or discountedSellingPrice = 0;

-- converting paise to rupees
select name,truncate(mrp/100,2) as mrp from zepto;

SET SQL_SAFE_UPDATES = 0;
update  zepto set mrp = mrp/100.0 , discountedSellingPrice = discountedSellingPrice/100.0 
where mrp > 0 or discountedSellingPrice > 0;

-- Q1. top 10 products based on discount percentage
select name,mrp,discountedSellingPrice from zepto 
order by discountedSellingPrice desc limit 10;

-- Q2. minimum selling price in each category
SELECT category, MIN(discountedSellingPrice) AS min_price
FROM zepto
GROUP BY category;

-- Q3. total quantity in each category
SELECT category, SUM(quantity) AS total_quantity
FROM zepto
GROUP BY category;

-- Q4. Calculate discount amount
SELECT name,mrp,discountPercent,
mrp - discountedSellingPrice AS discount_amount
FROM zepto;

-- Q5. total quantity in each category
SELECT category, SUM(quantity) AS total_quantity
FROM zepto
GROUP BY category;

-- Q6. total value of available stock
SELECT name,availableQuantity,discountedSellingPrice,
availableQuantity * discountedSellingPrice AS stock_value
FROM zepto;

-- Q7. Categorize products based on MRP
SELECT name,mrp,
    CASE
        WHEN mrp >= 5000 THEN 'Expensive'
        WHEN mrp >= 2500 THEN 'Medium'
        ELSE 'Cheap'
    END AS price_category
FROM zepto;

-- Q8. Product having the highest MRP
SELECT * FROM zepto WHERE mrp = (
    SELECT MAX(mrp)
    FROM zepto
);

-- Q9. Top 5 products based on discount
SELECT *
FROM zepto
ORDER BY discountPercent DESC
LIMIT 5;

-- Q10. Rank products within each category
SELECT category,name,mrp,
    RANK() OVER (
        PARTITION BY category
        ORDER BY mrp DESC
    ) AS category_rank
FROM zepto;
