SELECT *
FROM zara_sales;

--Identify the number of products in the men's and women's department
SELECT section AS gender, COUNT(*)
FROM zara_sales
GROUP BY section

--What is the average price, total sales volume, and total revenue by Product Type?
--Round the average price to two decimal places.
--Order by total revenue in descending order.
SELECT
	product_type,
	ROUND(AVG(price), 2) AS avg_price,
	SUM(sales_volume) AS total_volume,
	SUM(price * sales_volume) AS revenue
FROM zara_sales
GROUP BY product_type
ORDER BY revenue DESC;

--What is the average price, total sales volume, and total revenue by gender section?
--Round the average price to two decimal places.
--Order by total revenue in descending order.
SELECT
	section AS gender,
	ROUND(AVG(price), 2) AS avg_price,
	SUM(sales_volume) AS total_volume,
	SUM(price * sales_volume) AS revenue
FROM zara_sales
GROUP BY section
ORDER BY revenue DESC;

--What is the average price, total sales volume, and total revenue by promotion status?
--Round the average price to two decimal places.
--Order by total revenue in descending order.
SELECT
	promotion,
	ROUND(AVG(price), 2) AS avg_price,
	SUM(sales_volume) AS total_volume,
	SUM(price * sales_volume) AS revenue
FROM zara_sales
GROUP BY promotion
ORDER BY revenue DESC;

--What is the average price, total sales volume, and total revenue by seasonal status?
--Round the average price to two decimal places.
--Order by total revenue in descending order.
SELECT
	seasonal,
	ROUND(AVG(price), 2) AS avg_price,
	SUM(sales_volume) AS total_volume,
	SUM(price * sales_volume) AS revenue
FROM zara_sales
GROUP BY seasonal
ORDER BY revenue DESC;

--What is the average sales volume for products placed in different store positions?
--Determine which positions in the store yield higher sales.
--Round the average sales volume to two decimal points.
--Order by revenue in descending order.
SELECT
	position,
	ROUND(AVG(sales_volume), 2) AS avg_volume,
	SUM(price * sales_volume) AS revenue
FROM zara_sales
GROUP BY position
ORDER BY avg_volume DESC;

--Calculate the total revenue (Sales Volume × Price) by product name.
--Change the capitalization of the name to title format.
--Order by revenue from highest to lowest amount.
SELECT 
	INITCAP(name) AS name,
	SUM(sales_volume * price) AS revenue
FROM zara_sales
GROUP BY name
ORDER BY revenue DESC;

--Are cheaper products selling more than the expensive products?
--Compare the sales volume and revenue of the top 5 cheapest and the top 5 most expensive products.
--Capitalize the first letter of every word in the product name.
WITH cheap AS (SELECT name, price FROM zara_sales ORDER BY price LIMIT 5),
	 expensive AS (SELECT name, price FROM zara_sales ORDER BY price DESC LIMIT 5)
SELECT 
	INITCAP(z.name) AS name,
	z.price,
	SUM(sales_volume) AS total_volume,
	SUM(sales_volume * z.price) AS revenue
FROM zara_sales AS z
LEFT JOIN cheap AS c ON c.name = z.name
LEFT JOIN expensive AS e ON e.name = z.name
WHERE z.price IN (c.price, e.price)
GROUP BY z.name, z.price
ORDER BY total_volume DESC, revenue DESC;
	
--Do promotional products by product type sell at lower prices?
--Round the average price to two decimal places.
SELECT 
	product_type,
	promotion,
	ROUND(AVG(price), 2) AS avg_price
FROM zara_sales
GROUP BY product_type, promotion
ORDER BY product_type, promotion;