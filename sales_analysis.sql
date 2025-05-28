create database COMPANY;
use COMPANY;
select * from sales;

-- find all orders shipped via economy mode with a total amount  greater than 25000
SELECT *
FROM sales
WHERE Ship_Mode = 'Economy'
  AND Total_Amount > 25000;
  
  
 -- retrive all sales data for technology category in ireland made after 2020-01-01. i need query 
  SELECT *
FROM sales
WHERE Category = 'Technology'
  AND Country = 'Ireland'
  AND Order_Date > '2020-01-01';
  
  -- list the top 10 most profitable sales transactions in descending order.
  
  select * from sales order by Unit_Profit desc limit 10;
  
  select * from sales order by unit_profit desc limit 10, 20;
  
  -- find all customers whose name starts with 'j' and ends with 'n'
 SELECT Customer_Name
FROM Sales
WHERE Customer_Name LIKE 'J%n';


-- retrieve all product names that contain 'Acco' anywhere in the name 

SELECT *
FROM Sales
WHERE Product_Name LIKE '%ACCO%';

-- get the top 5 cities with the highest total sales amount.

SELECT City, SUM(Total_Amount) AS Total_Sales
FROM Sales
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 5; 

-- display the second set of 10 records for customer_name and total_amount in descresing order 
SELECT Customer_Name, Total_Amount
FROM Sales
ORDER BY Total_Amount DESC
LIMIT 10 OFFSET 10;

-- find the total revenue, average unit cost, and total number of orders .

SELECT 
    SUM(Total_Amount) AS Total_Revenue,
    AVG(Unit_Cost) AS Average_Unit_Cost,
    COUNT(Order_ID) AS Total_Orders
FROM Sales;

-- count unique number of regions.

SELECT COUNT(DISTINCT Region) AS Unique_Regions
FROM Sales;

-- find the number of orders placed by each customer.
SELECT Customer_Name, COUNT(DISTINCT Order_ID) AS Orders_Placed
FROM Sales
GROUP BY Customer_Name;

-- rank 5 products based on total sales using Rank().
SELECT Product_Name, 
       SUM(Total_Amount) AS Total_Sales,
       RANK() OVER (ORDER BY SUM(Total_Amount) DESC) AS Sales_Rank
FROM Sales
GROUP BY Product_Name
ORDER BY Sales_Rank
LIMIT 5;














  
  
  
  
  

  
   



