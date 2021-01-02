-- total number of unique customers
select count(distinct (customer_code)) as total_unique_customers from customers ;

-- total number of ecommerce customers
select count(customer_type) as ecommerce_type from customers where customer_type="E-commerce";

-- total number of brick & mortar customers
select count(customer_type) as brick_mortar from customers where customer_type="brick & mortar";

-- the total transactions
select count(*) from transactions;

 -- display the total sales between 2017 and 2020 in a descending order
select format (sum(sales_amount), 0) as total_sales, year from date
join transactions on date.date=transactions.order_date
group by year
order by sum(sales_amount) desc;
 
 -- display the total sales quantity  between 2017 and 2020
select sum(sales_qty), year from date
join transactions on date.date=transactions.order_date
group by year
order by year asc;

-- display total transactions for different markets in a descending order
select count(market_code), market_code from date
join transactions on date.date=transactions.order_date
group by market_code
order by count(market_code) desc;


