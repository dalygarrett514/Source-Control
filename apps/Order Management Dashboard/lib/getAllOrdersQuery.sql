-- Get all orders for table
SELECT id, order_id, user_id, user_name, user_email, product_id, quantity, total_price, refund_amount, refunded, order_date
FROM barkorders
ORDER BY order_date DESC;