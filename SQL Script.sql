CREATE DATABASE online_sales;
USE online_sales;

CREATE TABLE orders (
	order_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id VARCHAR(20)
);

SELECT 
	YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM
    online_sales.orders
GROUP BY
    YEAR(order_date),
    MONTH(order_date)
ORDER BY
    order_year ASC,
    order_month ASC;