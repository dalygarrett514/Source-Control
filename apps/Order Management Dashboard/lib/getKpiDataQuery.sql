-- Aggregated KPIs for orders
SELECT 
  COALESCE(SUM(total_price), 0) AS total_revenue,
  COUNT(*) AS order_count,
  COALESCE(AVG(total_price), 0) AS avg_order_value,
  COALESCE(SUM(CASE WHEN COALESCE(refunded, '') IN ('true','TRUE','yes','YES','y','Y') OR COALESCE(refund_amount, 0) > 0 THEN 1 ELSE 0 END), 0)::float / NULLIF(COUNT(*), 0) AS refund_rate
FROM barkorders;