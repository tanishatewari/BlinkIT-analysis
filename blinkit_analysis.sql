create database blinkit_analysis;

use blinkit_analysis;

select * from blinkit_data;

select count(*) from blinkit_data;

-- 1. Total sales
select sum(sales) AS total_sales from blinkit_data;

-- 2. Average sales
select avg(sales) as avg_sales from blinkit_data;

-- 3. Number of items
select count('Item Identifier') as no_of_items from blinkit_data;

-- 4. Average rating
select avg(Rating) as avg_rating from blinkit_data;

-- 1. Total sales by fat content
select `Item Fat Content`,sum(sales) as total_sales from blinkit_data
group by `Item Fat Content`
order by total_sales;

-- 2. Total sales by item type
select `item type`, sum(sales) as total_sales from blinkit_data
group by `item type`;

-- 3. Fat content by outlet for total sales
select `outlet identifier`, `item fat content`, sum(sales) as total_sales from blinkit_data
group by `outlet identifier`, `item fat content`;

-- 4. Total sales by outlet establishment
select `outlet establishment year`, sum(sales) as total_sales from blinkit_data
group by `outlet establishment year`;

-- 5. Sales by outlet size
select `outlet size`, sum(sales) as total_sales from blinkit_data
group by `outlet size`;

-- 6. Sales by outlet location 
select `outlet location type`, sum(sales) as total_sales from blinkit_data
group by `outlet location type`;

-- 7. All metrics by outlet type
select `outlet location type`, count(`item identifier`) as total_items, sum(sales) as total_sales, avg(sales) as avg_sales,
avg(rating) as avg_rating, avg(`item weight`) as avg_item_weight, avg(`item visibility`) as avg_item_visibility from blinkit_data
group by `outlet location type`
order by total_sales;










