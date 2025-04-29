-- Monthly Sales Trend Analysis
CREATE DATABASE sales_db;
use sales_db;

SHOW DATABASES;

CREATE TABLE online_sales (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);

INSERT INTO online_sales (order_id, order_date, amount, product_id)
VALUES
(1, '2023-01-15', 100.00, 101),
(2, '2023-01-18', 150.50, 102),
(3, '2023-02-20', 200.00, 103),
(4, '2023-02-25', 300.75, 101),
(5, '2023-03-05', 250.00, 104),
(6, '2023-03-15', 180.50, 105),
(7, '2023-04-10', 130.00, 106),
(8, '2023-04-20', 225.00, 107),
(9, '2023-05-03', 190.50, 108),
(10, '2023-05-15', 210.75, 109);

SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS order_volume
FROM
  online_sales
GROUP BY
  EXTRACT(YEAR FROM order_date),
  EXTRACT(MONTH FROM order_date)
ORDER BY
  year,
  month;



SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS total_revenue
FROM
  online_sales
GROUP BY
  EXTRACT(YEAR FROM order_date),
  EXTRACT(MONTH FROM order_date)
ORDER BY
  total_revenue DESC
LIMIT 3;

