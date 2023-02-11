--LOSS MADE IN THIS STORE--
/*This includes the product and category that losses were made on an d exact5 amount of loses */
SELECT TOP(5)
DATENAME(WEEKDAY,Order_Date) AS Days,
DATENAME(month,Order_Date) AS Months,
Profit AS loss
,Region,Discount,
Product_Name,Category,State
FROM [dbo].['Sample - Superstore$']
ORDER BY Profit 