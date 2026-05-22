CREATE TABLE IF NOT EXISTS Superstore (
    Order_ID VARCHAR(50),
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode VARCHAR(50),
    Customer_ID VARCHAR(50),
    Customer_Name VARCHAR(100),
    Segment VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Postal_Code INT,
    Region VARCHAR(50),
    Product_ID VARCHAR(50),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Product_Name VARCHAR(255),
    Sales DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(4,2),
    Profit DECIMAL(10,2)
);
-- Total Sales by Category
SELECT Category,
       SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Top 5 Cities by Sales
SELECT City,
       SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 5;

-- Sales by Segment
SELECT Segment,
       SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- Monthly Sales Trend
SELECT MONTH(Order_Date) AS Month,
       SUM(Sales) AS Monthly_Sales
FROM Superstore
GROUP BY MONTH(Order_Date)
ORDER BY Month;

-- Profit by Region
SELECT Region,
       SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY Region
ORDER BY Total_Profit DESC;
