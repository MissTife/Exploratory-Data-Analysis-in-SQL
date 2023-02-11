--LEAST SALES IN THIS STORE--
/* this indicates the period,,category,products,region and state with the lowest sales*/

SELECT TOP(5)
DATENAME(WEEKDAY,Order_Date) AS Days,
DATENAME(month,Order_Date) AS Months,
Sales,Order_ID,Category,Product_Name,State,Region
FROM [dbo].['Sample - Superstore$']
ORDER BY Sales 

 