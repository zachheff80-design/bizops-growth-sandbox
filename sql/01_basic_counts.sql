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
