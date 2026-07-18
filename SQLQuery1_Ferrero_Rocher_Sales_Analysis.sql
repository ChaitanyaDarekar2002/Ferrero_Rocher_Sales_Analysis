-- 1. Display all records from the sales table.

select * from Ferrero_Clean_Data

-- 2. Display only the Date, Country, Store, and Revenue columns.

select Date,Country,Store,Revenue from Ferrero_Clean_Data

-- 3. Find the total number of records in the dataset.

select COUNT(*) as Total_Dataset from Ferrero_Clean_Data

-- 4. Display all unique countries.

SELECT DISTINCT Country FROM Ferrero_Clean_Data;

-- 5. Find the earliest and latest date in the dataset.

SELECT
    MIN(Date) AS Start_Date,
    MAX(Date) AS End_Date
FROM Ferrero_Clean_Data;

-- 6. Display all sales where Revenue is greater than 5000.

select SKU,Revenue from Ferrero_Clean_Data where Revenue>5000

-- 7. Display all sales made in the country 'India'.

select * from Ferrero_Clean_Data where Country='India'

-- 8. Display all sales where the sales channel is 'Online'.

select * from Ferrero_Clean_Data where Channel='Online'

-- 9. Find all transactions where a promotion was applied.

select * from Ferrero_Clean_Data Where Promotion <> 0

-- 10. Display all records where Units Sold are greater than 100.

select * from Ferrero_Clean_Data where Units_Sold > 100

-- 11. Calculate the total revenue generated.

select sum(Revenue) as Total_Revenue from Ferrero_Clean_Data

-- 12. Calculate the average revenue per transaction.

select Store,Country,SKU,Units_Sold,AVG(Revenue) as Avg_revenue from Ferrero_Clean_Data
group by Store,Country,SKU,Units_Sold
order by Avg_revenue desc

-- 13. Find the highest and lowest revenue.

SELECT
    MAX(Revenue) AS Highest_Revenue,
    MIN(Revenue) AS Lowest_Revenue
FROM Ferrero_Clean_Data;

-- 14. Calculate the total units sold.

select sum(Units_Sold) as Total_Unit_Sold from Ferrero_Clean_Data

-- 15. Calculate the total revenue for each country.

select Country,sum(Revenue) as Total_revenue from Ferrero_Clean_Data
group by Country
order by Total_revenue desc

-- 16. Calculate the total revenue for each store.

select Store,sum(Revenue) as Total_revenue from Ferrero_Clean_Data
group by Store
order by Total_revenue desc

-- 17. Find the average revenue for each sales channel.

select Channel,round(avg(Revenue),2) as Total_revenue from Ferrero_Clean_Data
group by Channel
order by Total_revenue desc

-- 18. Count the number of transactions for each promotion type.

SELECT
    Promotion,
    COUNT(*) AS Total_Transactions
FROM Ferrero_Clean_Data
GROUP BY Promotion;

-- 19. Find the top 5 countries by total revenue.

select top 5 Country,sum(Revenue) as Total_Revenue from Ferrero_Clean_Data
group by Country
order by Total_Revenue desc

-- 20. Calculate the total revenue for each month and display the results in chronological order.

SELECT
    YEAR(Date) AS Sales_Year,
    MONTH(Date) AS Sales_Month,
    SUM(Revenue) AS Total_Revenue
FROM Ferrero_Clean_Data
GROUP BY YEAR(Date), MONTH(Date)
ORDER BY Sales_Year, Sales_Month;