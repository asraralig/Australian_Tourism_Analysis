select top 5 
Country,
SUM(Visitors) as Total_visitors,
AVG(Visitors) as avg_visitor_per_country,
count(DISTINCT [Month]) as month_in_data
from Visitor_Arrivals
GROUP by country 
order by Total_visitors DESC
