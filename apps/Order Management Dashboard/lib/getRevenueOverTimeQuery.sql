-- Daily revenue aggregation for line chart
SELECT order_date, COALESCE(SUM(total_price), 0) AS revenue
FROM barkorders
GROUP BY order_date
ORDER BY order_date ASC;