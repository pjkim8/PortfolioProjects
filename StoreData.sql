SELECT TOP 100* FROM StoreData..SalesData

SELECT TOP 100* FROM StoreData..FeaturesData

SELECT Store, Date, Weekly_Sales
FROM StoreData..SalesData
ORDER BY Date DESC

-- Joining tables together
SELECT Top 100 * FROM StoreData..SalesData AS s
JOIN StoreData..FeaturesData AS f
ON s.Store = f.Store

-- Average unemployment based on store
SELECT Top 100 s.store, AVG(f.Unemployment) AS StoreUnemployment
FROM StoreData..SalesData AS s
JOIN StoreData..FeaturesData AS f
	ON s.Store = f.Store
GROUP BY s.store
ORDER BY StoreUnemployment DESC

-- Average unemployment by dept
SELECT Top 100 s.Dept, AVG(f.Unemployment) AS DeptUnemployment
FROM StoreData..SalesData AS s
JOIN StoreData..FeaturesData AS f
	ON s.Store = f.Store
GROUP BY s.Dept
ORDER BY DeptUnemployment DESC

-- Trying to see if the size of a store has an effect on unemployment
SELECT Top 10 s.store, AVG(sd.size) AS StoreSize, 
AVG(f.Unemployment) AS StoreUnemployment
FROM StoreData..SalesData AS s
JOIN StoreData..FeaturesData AS f
	ON s.Store = f.Store
JOIN StoreData..StoresData AS sd
	ON s.Store = sd.Store
GROUP BY s.store
ORDER BY StoreSize DESC


-- Trying to see if store unemployment can have an effect on sales
SELECT Top 20 s.store, 
	AVG(f.Unemployment) AS StoreUnemployment, 
	AVG(s.Weekly_Sales) AS StoreWeeklySales
FROM StoreData..SalesData AS s
JOIN StoreData..FeaturesData AS f
	ON s.Store = f.Store
GROUP BY s.store
ORDER BY StoreWeeklySales DESC

-- Trying to see if fuel prices have an effect on sales
SELECT Top 15 s.store, AVG(s.Weekly_Sales) AS AvgWeeklySales, 
AVG(f.Fuel_Price) AS AvgFuelPrice
FROM StoreData..SalesData AS s
JOIN StoreData..FeaturesData AS f
	ON s.Store = f.Store
GROUP BY s.store 
ORDER BY AvgWeeklySales DESC


