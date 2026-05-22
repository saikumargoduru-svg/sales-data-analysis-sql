# Sales Data Analysis using SQL

## Project Overview
Performed sales data analysis using SQL queries on a retail sales dataset.

## Dataset Used
- Superstore Dataset

## Skills Used
- SQL
- GROUP BY
- ORDER BY
- Aggregate Functions
- Data Analysis

## Analysis Performed
- Sales by Category
- Top Cities by Sales
- Sales by Segment
- Monthly Sales Trend
- Profit by Region

## Tools Used
- MySQL
- CSV Dataset
- SQL Queries

## Sample Query

```sql
SELECT Category,
       SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY Category
ORDER BY Total_Sales DESC;
```
## Dashboard

![Dashboard](dashboard.png)
