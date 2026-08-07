-- ==========================================================
-- PROJECT: ECOMMERCE SALES DATA ANALYSIS
-- ==========================================================
-- Student Name : Alexander Peter Echo
-- Database     : ecommerce_project
-- Table        : sales_data
-- Dataset      : Ecommerce Sales Dataset
-- Tool         : MySQL Workbench
--
-- Objective:
-- To analyze an e-commerce sales dataset using SQL queries to
-- retrieve, filter, sort, group, and summarize data in order to
-- generate meaningful business insights by applying:
-- SELECT
-- WHERE
-- ORDER BY
-- GROUP BY
-- COUNT()
-- SUM()
-- AVG()
-- ==========================================================
-- LESSON 1: DISPLAY ALL RECORDS
-- =======================================================


SELECT *
FROM ecommerce_project.sales_data;

-- Concept:
-- The SELECT statement is used to retrieve data from a database.
-- The asterisk (*) tells SQL to return all columns from the table.

-- Explanation:
-- This query displays every row and every column stored in the
-- sales_data table. It is commonly used at the beginning of a
-- project to inspect the dataset and understand its structure.

-- Observation:
-- The query returned all records and all columns in the table.
-- Although the table contains 1,200 records, MySQL Workbench
-- displays only the first 1,000 rows by default for performance
-- reasons.

-- Business Insight:
-- Viewing all records helps the analyst understand the dataset
-- before performing further analysis. It allows verification of
-- the imported data, identification of available columns, and
-- confirmation that the dataset is complete and ready for analysis.

-- ==========================================================
-- LESSON 2: SELECT SPECIFIC COLUMNS
-- ==========================================================

SELECT
    CustomerID,
    Product,
    Quantity
FROM ecommerce_project.sales_data;

-- Concept:
-- Retrieve only the columns required for analysis instead of
-- displaying all columns.

-- Purpose:
-- Display CustomerID, Product and Quantity for all orders.

-- Observation:
-- The query returned only the CustomerID, Product and Quantity
-- columns while excluding all other columns.

-- Business Insight:
-- Selecting only the required columns makes the output easier
-- to read and improves query performance by retrieving only the
-- information needed for analysis.

-- ==========================================================
-- LESSON 3: FILTERING DATA USING WHERE
-- ==========================================================

-- Concept:
-- The WHERE clause is used to filter records.
-- It returns only the rows that satisfy a given condition.

-- Purpose:
-- Display all orders where the product purchased is 'Laptop'.

SELECT *
FROM ecommerce_project.sales_data
WHERE Product = 'Laptop';

-- Observation:
-- The query returned only records where the Product is
-- 'Laptop'. All other products were excluded.
-- Business Insight:
-- Filtering data enables analysts to focus on specific
-- products, customers, or transactions without being
-- distracted by unrelated records.

SELECT *
FROM ecommerce_project.sales_data
WHERE Quantity > 1;


SELECT *
FROM ecommerce_project.sales_data
WHERE Product = 'Laptop'
AND Quantity < 2;

-- Observation:
-- The query returned only orders where the product was
-- Laptop and the quantity purchased was less than 2.

-- Business Insight:
-- Combining multiple conditions allows analysts to focus on
-- very specific business scenarios, helping managers identify
-- targeted customer behaviors and purchasing patterns.

SELECT *
FROM ecommerce_project.sales_data
WHERE Product = 'Phone'
AND TotalPrice > 500;

-- Observation:
-- The query returned only orders where the product was
-- Phone and the TotalPrice exceeded 500.

-- Business Insight:
-- Combining product and revenue conditions helps identify
-- high-value sales for a specific product, which can support
-- pricing, marketing, and inventory decisions.


-- ==========================================================
-- LESSON 4: SORTING DATA USING ORDER BY
-- ==========================================================

-- Concept:
-- ORDER BY is used to sort records in ascending or descending order.

-- Purpose:
-- Display all orders sorted by TotalPrice from highest to lowest.

SELECT *
FROM ecommerce_project.sales_data
ORDER BY TotalPrice DESC;

-- Observation:
-- The query sorted all orders from the highest TotalPrice
-- to the lowest TotalPrice.
-- Business Insight:
-- Sorting sales by TotalPrice helps management quickly identify
-- high-value transactions and supports revenue analysis and
-- decision-making.

-- ==========================================================
-- LESSON 5: GROUPING DATA USING GROUP BY
-- ==========================================================

-- Concept:
-- GROUP BY combines rows that have the same value in a column,
-- allowing SQL to calculate summaries for each group.

-- Purpose:
-- Display the total quantity sold for each product.

SELECT
    Product,
    SUM(Quantity) AS Quantity_Sold
FROM ecommerce_project.sales_data
GROUP BY Product;

-- Observation:
-- The query grouped all records by Product and calculated
-- the total quantity sold for each product.
-- Business Insight:
-- Grouping products by quantity sold helps the business
-- identify its best-selling products, improve inventory
-- planning, and make better purchasing decisions.

SELECT
    Product,
    COUNT(*) AS Total_Orders
FROM ecommerce_project.sales_data
GROUP BY Product;

-- Observation:
-- The query groups all sales records by Product and counts
-- the total number of orders placed for each product.

-- Business Insight:
-- This analysis helps identify the products that receive the
-- highest number of customer orders. The business can use this
-- information to determine popular products, improve inventory
-- planning, optimize stock levels, and support marketing and
-- sales strategies.

SELECT
    Product,
    AVG(TotalPrice) AS Average_Sale
FROM ecommerce_project.sales_data
GROUP BY Product;

-- Observation:
-- The query groups all sales records by Product and calculates
-- the average TotalPrice for each product.
-- Business Insight:
-- This analysis helps the business understand the average sales
-- value of each product. Comparing the average selling price
-- across products can support pricing decisions, evaluate product
-- performance, and identify high-value or low-value product
-- categories for future marketing and sales strategies.

-- ==========================================================
-- PROJECT CONCLUSION
-- ==========================================================

-- Summary:
-- This project demonstrated the use of SQL to retrieve,
-- filter, sort, group, and summarize data from an
-- e-commerce sales dataset.

-- SQL concepts applied:
-- 1. SELECT
-- 2. FROM
-- 3. WHERE
-- 4. ORDER BY
-- 5. GROUP BY
-- 6. COUNT()
-- 7. SUM()
-- 8. AVG()

-- Overall Business Insight:
-- The analysis provided valuable insights into product
-- performance, customer purchasing patterns, sales trends,
-- and revenue generation. These findings can support
-- management in making informed decisions regarding
-- inventory management, pricing strategies, marketing
-- campaigns, and overall business growth.

-- ==========================================================
-- END OF PROJECT
-- ==========================================================
--
-- This project successfully demonstrated the use of SQL
-- fundamentals to analyze an e-commerce sales dataset.

-- Author:
-- Alexander Peter Echo
--
-- Thank you.