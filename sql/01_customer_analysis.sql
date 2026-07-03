-- ============================================================
-- 01_customer_analysis.sql
-- Customer Performance Analysis
-- ============================================================

---------------------------------------------------------------
-- Query 1: Top 20 Customers by Total Sales
---------------------------------------------------------------

SELECT
    [Customer Name],
    ROUND(SUM(Sales),2) AS Total_Sales,
    SUM(Quantity) AS Total_Quantity,
    ROUND(AVG(Price),2) AS Average_Price
FROM pharma_sales
GROUP BY [Customer Name]
ORDER BY Total_Sales DESC
LIMIT 20;

---------------------------------------------------------------
-- Query 2: Customer Engagement
-- Number of months each customer placed an order
---------------------------------------------------------------

SELECT
    [Customer Name],
    COUNT(DISTINCT Year || '-' || Month) AS Active_Months,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM pharma_sales
GROUP BY [Customer Name]
ORDER BY Active_Months DESC;

---------------------------------------------------------------
-- Query 3: Average Revenue per Active Month
---------------------------------------------------------------

SELECT
    [Customer Name],
    ROUND(SUM(Sales),2) AS Total_Sales,
    COUNT(DISTINCT Year || '-' || Month) AS Active_Months,
    ROUND(
        SUM(Sales) * 1.0 /
        COUNT(DISTINCT Year || '-' || Month),
        2
    ) AS Revenue_Per_Active_Month
FROM pharma_sales
GROUP BY [Customer Name]
ORDER BY Revenue_Per_Active_Month DESC;

---------------------------------------------------------------
-- Query 4: Top Customers by Product Variety
---------------------------------------------------------------

SELECT
    [Customer Name],
    COUNT(DISTINCT [Product Name]) AS Products_Purchased,
    ROUND(SUM(Sales),2) AS Total_Sales
FROM pharma_sales
GROUP BY [Customer Name]
ORDER BY Products_Purchased DESC;

---------------------------------------------------------------
-- Query 5: Customer Purchase Frequency
---------------------------------------------------------------

SELECT
    [Customer Name],
    COUNT(*) AS Total_Transactions,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(AVG(Sales),2) AS Average_Order_Value
FROM pharma_sales
GROUP BY [Customer Name]
ORDER BY Total_Transactions DESC;