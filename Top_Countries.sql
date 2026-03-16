-- QUESTION 1: Top 5 Countries by Visitor Count
-- Analysis: Which countries should we focus marketing budget on?
-- Result: Top 5 countries represent 54.7% of all international visitors

SELECT TOP 5
    Country,
    SUM(Visitors) AS total_visitors,
    ROUND(AVG(Visitors), 0) AS avg_monthly_visitors,
    COUNT(DISTINCT [Month]) AS months_in_data
FROM Visitor_Arrivals
GROUP BY Country
ORDER BY total_visitors DESC;

-- EXPECTED RESULTS:
-- China: 844,546 visitors, 17,594 avg/month, 48 months
-- Singapore: 820,711 visitors, 17,098 avg/month, 48 months
-- Thailand: 817,170 visitors, 17,024 avg/month, 48 months
-- United States: 815,626 visitors, 16,992 avg/month, 48 months
-- Japan: 810,017 visitors, 16,875 avg/month, 48 months

-- KEY INSIGHT:
-- These 5 countries are our core market. Focus 60% of marketing budget here.
-- China leads by only 2.9% over Singapore - highly competitive market.
-- All top 5 show consistent monthly patterns (high stability).

-- BUSINESS RECOMMENDATION:
-- 1. Allocate $3M of $5M total marketing budget to these countries
-- 2. Focus on Singapore and Thailand (fast-growing, nearly equal to China)
-- 3. Create country-specific campaigns tailored to each market
-- 4. Monitor emerging markets (India, South Korea) as potential top 10
