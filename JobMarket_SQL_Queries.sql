create database JobMarketAnalysis

use JobMarketAnalysis

-- Viewing All Data
SELECT * FROM JobMarket

-- Total Number of Jobs
SELECT COUNT(*) AS Total_Jobs FROM JobMarket

-- Total Companies
SELECT COUNT(DISTINCT[Company_Name]) AS Total_Companies
FROM JobMarket

-- Total Locations
SELECT COUNT(DISTINCT[Location]) AS Locations
FROM JobMarket

-- Top 10 Job Titles
SELECT TOP 10 [Job_Title],COUNT(*) AS Total_Jobs
FROM JobMarket
GROUP BY [Job_Title]
ORDER BY Total_Jobs DESC

-- Top Hiring Companies
SELECT TOP 10 [Company_Name],COUNT(*) AS Total_Hiring
FROM JobMarket
GROUP BY [Company_Name]
ORDER BY Total_Hiring DESC

-- Top Hiring Locations
SELECT TOP 10 [Location],COUNT(*) AS Total_Jobs
FROM JobMarket
GROUP BY [Location]
ORDER BY Total_Jobs DESC

-- Industry Wise Jobs
SELECT Industry,COUNT(*) AS Total_Jobs
FROM JobMarket
GROUP BY Industry
ORDER BY Total_Jobs DESC

-- Sector Wise Jobs
SELECT Sector,COUNT(*) AS Total_Jobs
FROM JobMarket
GROUP BY Sector
ORDER BY Total_Jobs DESC

-- Company Size Analysis
SELECT Size,COUNT(*) AS Total_Companies
FROM JobMarket
GROUP BY Size
ORDER BY Total_Companies DESC

-- Company Type Analysis
SELECT [Type_of_ownership],COUNT(*) AS Total
FROM JobMarket
GROUP BY [Type_of_ownership]
ORDER BY Total DESC

-- Revenue Analysis
SELECT Revenue,COUNT(*) AS Total_Companies
FROM JobMarket
GROUP BY Revenue
ORDER BY Total_Companies DESC

-- HeadQuarters Analysis
SELECT Headquarters,COUNT(*) AS Companies
FROM JobMarket
GROUP BY Headquarters
ORDER BY Companies DESC

-- Company Rating Analysis
SELECT AVG(Rating) AS Average_Rating
FROM JobMarket

-- Highest Rated Companies
SELECT TOP 10[Company_Name],Rating
FROM JobMarket
ORDER BY Rating DESC

-- Low Rated Companies
SELECT TOP 10[Company_Name],Rating
FROM JobMarket
ORDER BY Rating

-- Average Rating by Industry
SELECT Industry,AVG(Rating) AS Avg_Rating
FROM JobMarket
GROUP BY Industry
ORDER BY Avg_Rating DESC

-- Top 5 Industries by Average Rating
SELECT TOP 5 Industry,AVG(Rating) AS Avg_rating
FROM JobMarket
GROUP BY Industry
ORDER BY Avg_rating DESC

-- Average Rating by Sector
SELECT Sector,AVG(Rating) AS Avg_Rating
FROM JobMarket
GROUP BY Sector
ORDER BY Avg_Rating DESC

-- Top 5 Sectors by Average Rating
SELECT TOP 5 Sector,AVG(Rating) AS Avg_rating
FROM JobMarket
GROUP BY Sector
ORDER BY Avg_rating DESC

-- Job Count by Rating
SELECT Rating,COUNT(*) AS Jobs
FROM JobMarket
GROUP BY Rating
ORDER BY Rating DESC

-- Founded Year Analysis
SELECT Founded,COUNT(*) AS Companies
FROM JobMarket
GROUP BY Founded
ORDER BY Companies DESC

SELECT Founded,COUNT(*) AS Companies
FROM JobMarket
GROUP BY Founded
ORDER BY Founded

-- Companies Found After 2000
SELECT [Company_Name],Founded
FROM JobMarket
WHERE Founded>2000

-- Companies Found Before 2000
SELECT [Company_Name],Founded
FROM JobMarket
WHERE Founded<2000

-- Easy Apply Analysis
SELECT [Easy_Apply],COUNT(*) AS Total_Jobs
FROM JobMarket
GROUP BY [Easy_Apply]

SELECT * FROM JobMarket
WHERE Easy_Apply='TRUE'

SELECT * FROM JobMarket
WHERE Easy_Apply='FALSE'

-- Comapnies in New York
SELECT * FROM JobMarket
WHERE Location LIKE '%NEW%'

-- Comapnies in IND
SELECT * FROM JobMarket
WHERE Location LIKE '%INDIA%'

-- Job Titles Containing 'Data Analyst'
SELECT * FROM JobMarket
WHERE Job_Title LIKE '%Data Analyst%'