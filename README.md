# E-commerce Sales Analysis (MySQL + Excel)

SQL analysis of e-commerce order data to find which regions, categories, products and discount levels drive or hurt profit. The Excel Pivot Table results were re-checked with MySQL queries.

## Tools
MySQL Workbench, Microsoft Excel (Pivot Tables, dashboards)

## Dataset
order records with order date, region, category, product, customer, sales, quantity, discount and profit.

## Questions answered
1. Sales and profit by region
2. Which products lose money?
3. Yearly sales and profit trend
4. Profit margin by category
5. Does a higher discount reduce profit?
6. Who are the top 10 customers by sales?

## SQL concepts used
GROUP BY, HAVING, ORDER BY, LIMIT, aggregate functions (SUM, AVG, COUNT), ROUND, STR_TO_DATE (converting text dates to real dates)

## Key findings
- **West** was the most profitable region (profit 1,434). **East** (-889) and **South** (-134) were loss-making.
- **Furniture** had a margin of -13.1%, compared with 16.3% for Office Supplies and 14.4% for Technology.
- One bookcase product lost 1,665, more than the whole dataset's total profit (about 496).
- Orders with 0-20% discount stayed profitable on average. At 30% and above, average profit per order turned negative (small order counts, so treat this as a pattern, not proof).
- The top 2 customers made up about 24.5% of total sales.

## Recommendations
- Review the discount limits above 20%.
- Re-price or drop the heavily loss-making products.
- Investigate why the East region has high sales but negative profit.

## Files
- `ecommerce_sales_queries.sql`: all queries with comments
- `screenshots/`: query outputs
