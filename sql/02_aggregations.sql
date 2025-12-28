-- Aggregation queries coming next
--GOAL: Aggregate revenue and volume by site.
--1) How many total orders exist?
SELECT 
COUNT(DISTINCT order_id) AS total_orders
FROM `bigquery-public-data.thelook_ecommerce.order_items`;
--2)What is the price for each item sold? This gives me all combinations of product_ID and sale_price
SELECT DISTINCT
  product_id,
  sale_price
FROM `bigquery-public-data.thelook_ecommerce.order_items`
ORDER BY 
  product_id,
  sale_price;
--3)What are the top 5 revenue-generating products?
SELECT
  product_id,
  SUM (sale_price) AS total_revenue
FROM
  `bigquery-public-data.thelook_ecommerce.order_items`
GROUP BY
  product_id
ORDER BY
  total_revenue DESC
LIMIT 5
--4)For each product, how many items were sold and how much total revenue did that product generate?
SELECT
  product_id,
  COUNT(*) AS quantity_sold,
  SUM (sale_price) AS total_revenue
FROM
  `bigquery-public-data.thelook_ecommerce.order_items`
GROUP BY
  product_id
--5)What are the top 10 most returned products?
SELECT
  product_id,
  COUNTIF(status = "Returned") AS items_returned
FROM
  `bigquery-public-data.thelook_ecommerce.order_items`
GROUP BY
  product_id
ORDER BY
  items_returned DESC
LIMIT 10
