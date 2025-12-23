-- 01_basic_counts.sql
-- Goal: Basic counts to understand the dataset
--Questions:
-- 1) How many orders exist?
SELECT 
  COUNT(*) AS total_orders
FROM 
  `bigquery-public-data.thelook_ecommerce.orders`;
-- 2) How many users exist?
SELECT 
  COUNT(*) AS total_users
FROM 
  `bigquery-public-data.thelook_ecommerce.users`;
-- 3) How many distinct users exist?
SELECT
  COUNT(DISTINCT id) AS distinct_users
FROM
  `bigquery-public-data.thelook_ecommerce.users`;
-- 4) How many products exist?
SELECT 
  COUNT(*) AS total_products
FROM 
  `bigquery-public-data.thelook_ecommerce.products`;

--Goal - Write 5 Queries that pull revenue by location. 
--Use a variety of the following commands: AND, OR, DISTINCT, WHERE, LIMIT
--1)How many total orders exist in the dataset?
SELECT
  COUNT(*)
FROM
  `bigquery-public-data.thelook_ecommerce.orders`;
--2)How many orders exist in each order status (completed, shipped, processing, cancelled, etc.)?
SELECT 
  status,
  COUNT(*) AS count_status
FROM
  `bigquery-public-data.thelook_ecommerce.orders`;
GROUP BY
  status;
--3)How many unique customers have placed an order?
SELECT 
  COUNT(DISTINCT user_id) AS distinct_users
FROM
  `bigquery-public-data.thelook_ecommerce.orders`;
--4) How many unique products have ever been sold?
SELECT 
  COUNT(DISTINCT product_id) AS distinct_products
FROM
  `bigquery-public-data.thelook_ecommerce.order_items`;
--5)For each product, how many distinct prices has it been sold at?
SELECT 
  COUNT(DISTINCT sale_price) AS distinct_sale_price
FROM
  `bigquery-public-data.thelook_ecommerce.order_items`
GROUP BY
  product_id;
