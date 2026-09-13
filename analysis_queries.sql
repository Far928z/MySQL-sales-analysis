USE sales_analysis;

-- Question 1:
-- What is the total revenue and total profit from all sales?

SELECT
    SUM(Total_Sales) AS Total_Revenue,
    SUM(Profit) AS Total_Profit
FROM sales;

-- Question 2:
-- Which product generated the highest total revenue?

SELECT
    Product,
    SUM(Total_Sales) AS Total_Revenue
FROM sales
GROUP BY Product
ORDER BY Total_Revenue DESC;

-- Question 3:
-- Which region generated the highest total profit?

SELECT
    Region,
    SUM(Profit) AS Total_Profit
FROM sales
GROUP BY Region
ORDER BY Total_Profit DESC;

-- Question 4:
-- Which category sold the highest total quantity?

SELECT
    Category,
    SUM(Quantity) AS Total_Quantity
FROM sales
GROUP BY Category
ORDER BY Total_Quantity DESC;

-- Question 5:
-- What was the total revenue for each month in 2026?

SELECT
    DATE_FORMAT(Sale_Date, '%Y-%m') AS Month,
    SUM(Total_Sales) AS Total_Revenue
FROM sales
GROUP BY DATE_FORMAT(Sale_Date, '%Y-%m')
ORDER BY Month;
