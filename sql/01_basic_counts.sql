-- 01_basic_counts.sql
-- Goal: Basic counts to understand the dataset

SELECT COUNT(*) AS total_orders
FROM `bigquery-public-data.thelook_ecommerce.orders`;

SELECT COUNT(*) AS total_users
FROM `bigquery-public-data.thelook_ecommerce.users`;
