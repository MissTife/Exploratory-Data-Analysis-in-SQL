--CONTEXT
--With growing demands and cut-throat competitions in the market, 
--a Superstore Giant is seeking your knowledge in understanding what works best for them. 
--They would like to understand which products, regions, categories and customer segments they should target or avoid.
--make sure to provide some business insights to improve. 
--Column description
--Row ID => Unique ID for each row.
--Order ID => Unique Order ID for each Customer.
--Order Date => Order Date of the product.
--Ship Date => Shipping Date of the Product.
--Ship Mode=> Shipping Mode specified by the Customer.
--Customer ID => Unique ID to identify each Customer.
--Customer Name => Name of the Customer.
--Segment => The segment where the Customer belongs.
--Country => Country of residence of the Customer.
--City => City of residence of of the Customer.
--State => State of residence of the Customer.
--Postal Code => Postal Code of every Customer.
--Region => Region where the Customer belong.
--Product ID => Unique ID of the Product.
--Category => Category of the product ordered.
--Sub-Category => Sub-Category of the product ordered.
--Product Name => Name of the Product
--Sales => Sales of the Product.
--Quantity => Quantity of the Product.
--Discount => Discount provided.
--Profit => Profit/Loss incurred.



/****** An overview of the data.  ******/
SELECT TOP (50) [Row_ID]
      ,[Order_ID]
      ,[Order_Date]
      ,[Ship_Date]
      ,[Ship_Mode]
      ,[Customer_ID]
      ,[Customer_Name]
      ,[Segment]
      ,[Country]
      ,[City]
      ,[State]
      ,[Postal_Code]
      ,[Region]
      ,[Product ID]
      ,[Category]
      ,[Sub-Category]
      ,[Product_Name]
      ,[Sales]
      ,[Quantity]
      ,[Discount]
      ,[Profit]
  FROM [superstore].[dbo].['Sample - Superstore$']
  GO


  --TO SEE THE HIGHEST PROFIT MADE IN THIS STORE--
/*this shows the customers,product,region,category and state with the highest profit and 
as well as the exact profit which
includes the month and days*/
SELECT TOP(5)
DATENAME(WEEKDAY,Order_date) AS Days,
DATENAME(month,Order_Date) AS Months,
Profit,Category,Customer_ID,Customer_Name,Sales,Region,State
Product_Name,State
FROM [dbo].['Sample - Superstore$']
ORDER BY Profit DESC
GO

 --LOSS MADE IN THIS STORE--
/*This includes the product and category that losses were made on and exact amount of loses.
Note that all the negative numbers in the profit column represent the loss*/
SELECT TOP(5)
DATENAME(WEEKDAY,Order_Date) AS Days,
DATENAME(month,Order_Date) AS Months,
Profit AS loss
,Region,Discount,
Product_Name,Category,State
FROM [dbo].['Sample - Superstore$']
ORDER BY Profit
GO


--TO GET HIGHEST SALES IN THE STORE--
/*this includes the days,months,state and region that generate the highest amount of sales   */


SELECT TOP(5)
DATENAME(WEEKDAY,Order_Date) AS Days,
DATENAME(month,Order_Date) AS Months,
Sales,Order_ID,Category,Product_Name,State,Region
FROM [dbo].['Sample - Superstore$']
ORDER BY Sales DESC
GO

--LEAST SALES IN THIS STORE--
/* this indicates the period,,category,products,region and state with the lowest sales*/

SELECT TOP(5)
DATENAME(WEEKDAY,Order_Date) AS Days,
DATENAME(month,Order_Date) AS Months,
Sales,Order_ID,Category,Product_Name,State,Region
FROM [dbo].['Sample - Superstore$']
ORDER BY Sales
GO

 

