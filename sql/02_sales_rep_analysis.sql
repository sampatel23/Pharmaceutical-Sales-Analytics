-- ============================================================
-- 02_sales_rep_analysis.sql
-- Sales Representative & Team Performance Analysis
-- ============================================================

---------------------------------------------------------------
-- Query 1: Sales Representative Performance
---------------------------------------------------------------

SELECT
    [Name of Sales Rep],
    ROUND(SUM(Sales),2) AS Total_Sales,
    SUM(Quantity) AS Total_Quantity,
    ROUND(AVG(Price),2) AS Average_Price,
    COUNT(DISTINCT [Customer Name]) AS Customers_Handled
FROM pharma_sales
GROUP BY [Name of Sales Rep]
ORDER BY Total_Sales DESC;

---------------------------------------------------------------
-- Query 2: Sales Team Performance
---------------------------------------------------------------

SELECT
    [Sales Team],
    ROUND(SUM(Sales),2) AS Total_Sales,
    SUM(Quantity) AS Total_Quantity,
    COUNT(DISTINCT [Customer Name]) AS Total_Customers,
    ROUND(AVG(Price),2) AS Average_Price
FROM pharma_sales
GROUP BY [Sales Team]
ORDER BY Total_Sales DESC;

---------------------------------------------------------------
-- Query 3: Manager Performance
---------------------------------------------------------------

SELECT
    Manager,
    ROUND(SUM(Sales),2) AS Team_Sales,
    SUM(Quantity) AS Total_Quantity,
    COUNT(DISTINCT [Name of Sales Rep]) AS Total_Reps
FROM pharma_sales
GROUP BY Manager
ORDER BY Team_Sales DESC;

---------------------------------------------------------------
-- Query 4: Sales Rep by Product Class
---------------------------------------------------------------

SELECT
    [Name of Sales Rep],
    [Product Class],
    ROUND(SUM(Sales),2) AS Total_Sales
FROM pharma_sales
GROUP BY
    [Name of Sales Rep],
    [Product Class]
ORDER BY
    [Name of Sales Rep],
    Total_Sales DESC;

---------------------------------------------------------------
-- Query 5: Top Performing Sales Representatives
---------------------------------------------------------------

SELECT
    [Name of Sales Rep],
    ROUND(SUM(Sales),2) AS Total_Sales
FROM pharma_sales
GROUP BY [Name of Sales Rep]
ORDER BY Total_Sales DESC
LIMIT 10;

---------------------------------------------------------------
-- Query 6: Average Revenue per Customer by Sales Rep
---------------------------------------------------------------

SELECT
    [Name of Sales Rep],
    ROUND(
        SUM(Sales) /
        COUNT(DISTINCT [Customer Name]),
        2
    ) AS Revenue_Per_Customer
FROM pharma_sales
GROUP BY [Name of Sales Rep]
ORDER BY Revenue_Per_Customer DESC;