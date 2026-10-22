use ecommerce_project;
select region, round(sum(Sales),2) AS total_sales, round(sum(Profit),2) AS total_profit
from sales_data
group by Region
order by total_profit desc;

select `Product Name`, round(sum(profit),2) as total_profit
from sales_data
group by `Product Name`
Having sum(Profit) < 0
order by total_profit;

SELECT Year, round(sum(sales),2) as total_sales, round(sum(Profit),2) as total_profit
from sales_data
group by Year
order by Year;

select Category, round(sum(Profit)/SUM(Sales)*100,2) AS profit_margin_pct
from sales_data
group by Category
order by profit_margin_pct desc;

select Discount, count(*) as orders, round(avg(Profit),2) as avg_profit
from sales_data
group by Discount
order by Discount;

select `Customer Name`, round(sum(Sales),2) as total_sales
from sales_data
group by `Customer Name`
order by total_sales DESC
LIMIT 10;

select `Order Date`, str_to_date(`Order Date`, '%d-%b-%y') as clean_date
from sales_data
LIMIT 5;