
SELECT * FROM 
WorldHealth..RiskFactor
ORDER BY 3,4

-- calculating average death caused by these factors in North America
SELECT entity, AVG(Unsafe_water_source) as UnsafeWater,
	AVG(High_systolic_blood_pressure) as HighBloodPressure, AVG(Smoking) AS Smoking,
	AVG(Alcohol_use) AS AlcoholUse, AVG(Drug_use) AS DrugUse, AVG(Diet_high_in_sodium)
	AS DietHighInSodium, AVG(Household_air_pollution_from_solid_fuels) AS HouseholdAirPollution,
	AVG(Child_wasting) AS ChildWasting, AVG(Secondhand_smoke) AS SecondHandSmoke,
	AVG(Outdoor_air_pollution) AS OutdoorAirPollution, AVG(Diet_low_in_whole_grains) AS DietLowInWholeGrains,
	AVG(High_fasting_plasma_glucose) AS HighFastingPlasmaGlucose
FROM WorldHealth..RiskFactor
WHERE entity = 'North America'
GROUP BY entity

-- calculating total death caused by these factors yearly
SELECT entity, year, 
	SUM(High_systolic_blood_pressure) as HighBloodPressure, SUM(Smoking) AS Smoking,
	SUM(Alcohol_use) AS AlcoholUse, SUM(Drug_use) AS DrugUse, SUM(Diet_high_in_sodium) AS DietHighInSodium,
	SUM(Household_air_pollution_from_solid_fuels) AS HouseholdAirPollution,
	SUM(Child_wasting) AS ChildWasting, SUM(Secondhand_smoke) AS SecondHandSmoke,
	SUM(Outdoor_air_pollution) AS OutdoorAirPollution, SUM(Diet_low_in_whole_grains) AS DietLowInWholeGrains,
	SUM(High_fasting_plasma_glucose) AS HighFastingPlasmaGlucose
FROM WorldHealth..RiskFactor
WHERE Entity = 'North America'
GROUP BY Entity, year

-- Average death caused by these factors in the world
SELECT entity, AVG(Unsafe_water_source) as UnsafeWater,
	AVG(High_systolic_blood_pressure) as HighBloodPressure, AVG(Smoking) AS Smoking,
	AVG(Alcohol_use) AS AlcoholUse, AVG(Drug_use) AS DrugUse, AVG(Diet_high_in_sodium)
	AS DietHighInSodium, AVG(Household_air_pollution_from_solid_fuels) AS HouseholdAirPollution,
	AVG(Child_wasting) AS ChildWasting, AVG(Secondhand_smoke) AS SecondHandSmoke,
	AVG(Outdoor_air_pollution) AS OutdoorAirPollution, AVG(Diet_low_in_whole_grains) AS DietLowInWholeGrains,
	AVG(High_fasting_plasma_glucose) AS HighFastingPlasmaGlucose
FROM WorldHealth..RiskFactor
GROUP BY entity

-- Total death caused by these factors yearly in the world
SELECT entity, year, 
	SUM(High_systolic_blood_pressure) as HighBloodPressure, SUM(Smoking) AS Smoking,
	SUM(Alcohol_use) AS AlcoholUse, SUM(Drug_use) AS DrugUse, SUM(Diet_high_in_sodium)
	AS DietHighInSodium, SUM(Household_air_pollution_from_solid_fuels) AS HouseholdAirPollution,
	SUM(Child_wasting) AS ChildWasting, SUM(Secondhand_smoke) AS SecondHandSmoke,
	SUM(Outdoor_air_pollution) AS OutdoorAirPollution, SUM(Diet_low_in_whole_grains) AS DietLowInWholeGrains,
	SUM(High_fasting_plasma_glucose) AS HighFastingPlasmaGlucose
FROM WorldHealth..RiskFactor
GROUP BY Entity, year