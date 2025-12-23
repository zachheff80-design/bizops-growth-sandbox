-- Aggregation queries coming next
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
--3)
