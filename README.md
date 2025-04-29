# Sales-Trend-Analysis

## Objective
Analyze monthly revenue and order volume from the `online_sales` dataset using SQL aggregation techniques.

## SQL Script
The `sales_trend_analysis.sql` file contains the SQL query used to calculate:
- **Total Revenue** for each month.
- **Order Volume** (the number of distinct orders) for each month.

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

## Results
The results show the monthly total revenue and order volume.

## Notes
- You can use this script with PostgreSQL, MySQL, or SQLite databases.
