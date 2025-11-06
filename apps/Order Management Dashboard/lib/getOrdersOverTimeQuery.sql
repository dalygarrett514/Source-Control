-- Daily order count for bar chart
SELECT order_date, COUNT(*) AS orders
FROM barkorders
GROUP BY order_date
ORDER BY order_date ASC;