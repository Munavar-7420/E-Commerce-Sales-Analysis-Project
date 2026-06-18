CREATE DATABASE E_Commerce_Sales_Analysis;
USE E_Commerce_Sales_Analysis;

--Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM Superstore;

--Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM Superstore;

--Sales by Category
SELECT Category, SUM(Sales) AS Total_Sales
		FROM Superstore
		GROUP BY Category
		ORDER BY Total_Sales DESC;

--Profit by Category
		SELECT Category,
		SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

--Top 10 Products
SELECT TOP 10
       [Product Name],
       SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY [Product Name]
ORDER BY Total_Sales DESC;

--Regional Performance
SELECT Region,
       SUM(Sales) AS Sales,
       SUM(Profit) AS Profit
FROM Superstore
GROUP BY Region
ORDER BY Sales DESC;

--Segment Analysis
SELECT Segment,
       SUM(Sales) AS Sales,
       SUM(Profit) AS Profit
FROM Superstore
GROUP BY Segment;