-- ============================================================
-- E-COMMERCE SALES & PROFITABILITY ANALYSIS
-- SQL ANALYSIS
-- ============================================================
-- Purpose:
-- Explore profitability, customer performance, product
-- performance, discount behaviour and loss-making transactions.
--
-- Table:
-- Ecommerce_Sales
-- ============================================================


-- ============================================================
-- 1. IDENTIFY LOSS-MAKING TRANSACTIONS
-- Business Question:
-- How many orders are loss-making, how much sales do they
-- represent, and what is the total loss?
-- ============================================================

SELECT
    COUNT(*) AS Loss_Making_Orders,
    ROUND(SUM(Total_Sales), 2) AS Sales_From_Loss_Orders,
    ROUND(SUM(Profit), 2) AS Total_Loss
FROM Ecommerce_Sales
WHERE Profit < 0;


-- ============================================================
-- 2. LOSS-MAKING ORDERS BY PRODUCT CATEGORY
-- Business Question:
-- Which product categories are responsible for the greatest
-- number and value of loss-making transactions?
-- ============================================================

SELECT
    Product_Category,
    COUNT(*) AS Loss_Making_Orders,
    ROUND(SUM(Total_Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Loss
FROM Ecommerce_Sales
WHERE Profit < 0
GROUP BY Product_Category
ORDER BY Total_Loss ASC;


-- ============================================================
-- 3. DISCOUNT-LEVEL PERFORMANCE
-- Business Question:
-- How do order volume, sales and profit change as discount
-- levels increase?
-- ============================================================

SELECT
    Discount_Percent,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Total_Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Ecommerce_Sales
GROUP BY Discount_Percent
ORDER BY Discount_Percent;


-- ============================================================
-- 4. TOP 10 PRODUCTS BY PROFIT
-- Business Question:
-- Which products generate the highest total profit?
-- ============================================================

SELECT
    Product_Name,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Total_Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Ecommerce_Sales
GROUP BY Product_Name
ORDER BY Total_Profit DESC
LIMIT 10;


-- ============================================================
-- 5. CUSTOMER SEGMENT PERFORMANCE
-- Business Question:
-- Which customer segments contribute the most orders,
-- sales and profit?
-- ============================================================

SELECT
    Customer_Segment,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Total_Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Ecommerce_Sales
GROUP BY Customer_Segment
ORDER BY Total_Profit DESC;


-- ============================================================
-- 6. TOP 5 COUNTRIES BY PROFIT
-- Business Question:
-- Which countries generate the highest total profit?
-- ============================================================

SELECT
    Country,
    COUNT(*) AS Total_Orders,
    ROUND(SUM(Total_Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Ecommerce_Sales
GROUP BY Country
ORDER BY Total_Profit DESC
LIMIT 5;
