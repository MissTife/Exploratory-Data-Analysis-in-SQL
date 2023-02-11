--TO SEE THE HIGHEST PROFIT MADE IN THIS STORE--
/*this sshows the customers,product,region,category and state with the highest profit and 
as well as the exact profit which
includes the month and days*/
SELECT TOP(5)
DATENAME(WEEKDAY,Order_Date) AS Days,
DATENAME(month,Order_Date) AS Months,
Profit,Category,Customer_ID,Customer_Name,Sales,Region,State
Product_Name,State
FROM [dbo].['Sample - Superstore$']
ORDER BY Profits DESC