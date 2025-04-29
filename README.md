# Sales-Trend-Analysis

## Objective
Analyze monthly revenue and order volume from the `online_sales` dataset using SQL aggregation techniques.

## SQL Script
The `sales_trend_analysis.sql` file contains the SQL query used to calculate:
- **Total Revenue** for each month.
- **Order Volume** (the number of distinct orders) for each month.

The `top_3_months_by_sales.sql` file contains a query that extracts:
- **Top 3 Months by Total Revenue** using `ORDER BY total_revenue DESC LIMIT 3`.

## Dataset
The dataset `online_sales.csv` contains order data with the following columns:
- `order_id`: The unique ID of the order.
- `order_date`: The date the order was placed.
- `amount`: The total amount of the order.
- `product_id`: The product associated with the order.

## Steps Followed
1. **Extracted** the year and month from the `order_date` using `EXTRACT()`.
2. **Grouped** the data by year and month.
3. **Summed** the `amount` to calculate total revenue.
4. **Counted** the distinct `order_id` to get the order volume.
5. **Ordered** the result by year and month for a chronological view.
6. **Filtered** the results using `ORDER BY total_revenue DESC` and `LIMIT 3` to get the top 3 months by sales.

## Results
The results show:
- Monthly total revenue and order volume.
- The top 3 highest-grossing months based on total sales.

## Notes
- You can use this script with PostgreSQL, MySQL, or SQLite databases.
