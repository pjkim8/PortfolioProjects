SELECT *
FROM SuperMarket..supermarketsales

-- Calculate total revenue for each branch 
SELECT Branch, SUM(Total_Price) AS TotBranchRev
FROM SuperMarket..supermarketsales
GROUP BY Branch
ORDER BY TotBranchRev DESC

-- Money spent based on gender
SELECT Gender, SUM(Total_Price) AS MoneySpent
FROM SuperMarket..supermarketsales
GROUP BY Gender
ORDER BY MoneySpent DESC

-- Calculating total revene for each product line
SELECT Product_line, SUM(Total_Price) AS TotProductRev
FROM SuperMarket..supermarketsales
GROUP BY Product_line
ORDER BY TotProductRev DESC

-- Average rating for each branch
SELECT Branch, AVG(Rating) AS BranchRating
FROM SuperMarket..supermarketsales
GROUP BY Branch
ORDER BY BranchRating DESC

-- Total gross income for each branch
SELECT Branch, SUM(gross_income) AS TotGrossIncome
FROM SuperMarket..supermarketsales
GROUP BY Branch
ORDER BY TotGrossIncome DESC

-- Compare what payment type is used
SELECT Payment, count(Invoice_ID) AS PaymentTypeCount
FROM SuperMarket..supermarketsales
GROUP BY Payment

-- Total revenue on each day by Branch
SELECT Branch, Date, SUM(Total_Price) TotRevOnDay
FROM SuperMarket..supermarketsales
GROUP BY Date, Branch
ORDER BY Date 

-- Average rating given to each product line
SELECT Product_line, AVG(Rating) AS RatingOnProduct
FROM SuperMarket..supermarketsales
GROUP BY Product_line 
ORDER BY RatingOnProduct DESC

-- Gross income for each Product
SELECT Product_line, SUM(gross_income) AS ProductIncome
FROM SuperMarket..supermarketsales
GROUP BY Product_line 
ORDER BY ProductIncome DESC