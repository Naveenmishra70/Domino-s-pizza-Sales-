use project;
select * from pizza;
select round(sum(total_price)) as Total_revenue from pizza;

-- Total pizza Sold
select sum(Quantity) as Total_pizza_sold from pizza;

-- avg order values
select round((sum(total_price)/count(distinct order_id))) as Avg_order_value from pizza;

-- hour wise Sales
select hour(order_time) as order_hours, sum(quantity) as total_pizza_sales from pizza
group by hour(order_time) order by hour(order_time);

-- top 5 pizza sales
select pizza_name, sum(quantity) as total_pizza_sold from pizza group by pizza_name
order by total_pizza_sold desc limit 5;

-- bottom 5 pizza sales
select pizza_name, sum(quantity) as total_pizza_sold from pizza group by pizza_name
order by total_pizza_sold limit 5;

-- top 5 pizza revenue
select pizza_name, sum(total_price) as total_pizza_revenue from pizza group by pizza_name
order by total_pizza_revenue desc limit 5;
