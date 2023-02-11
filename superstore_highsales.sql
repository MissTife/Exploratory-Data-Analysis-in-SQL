--TO GET HIGHEST SALES IN THE STORE--
/*this includes the days,months,state and region that generate the highest amount of sales   */


SELECT TOP(5)
DATENAME(WEEKDAY,Order_Date) AS Days,
DATENAME(month,Order_Date) AS Months,
Sales,Order_ID,Category,Product_Name,State,Region
FROM [dbo].['Sample - Superstore$']
ORDER BY Sales DESC

