# Sales2020


<h2>Cleaning process<h2> 
 

<p>Filtered the data of the Sales Amount at least $1</p>
<p>Excluded the Markets Code of Mark099 & Mark097 </p>
<p> Created a Normalized Amount column and converted US dollar to INR </p>

<h2>Data analysis</h2>

<h4>1.total number of unique customers </h4>

<code>select count(distinct (customer_code)) as total_unique_customers from customers ; </code>

<h4>2. total number of ecommerce customers </h4>
<code> select count(customer_type) as ecommerce_type from customers where customer_type="E-commerce"; </code>

<h4>3. total number of brick & mortar customers </h4>
<code>select count(customer_type) as brick_mortar from customers where customer_type="brick & mortar"; </code>

<h4>4. the total transactions </h4>
<code>select count(*) from transactions; </code>
 
 <h4>5. display the total sales between 2017 and 2020 in a descending order</h4>
<code>select format (sum(sales_amount), 0) as total_sales, year from date
join transactions on date.date=transactions.order_date
group by year
order by sum(sales_amount) desc; </code>
 
<h4>6. display the total sales quantity  between 2017 and 2020 </h4>
<code> select sum(sales_qty), year from date
join transactions on date.date=transactions.order_date
group by year
order by year asc; </code>

<h4>7. display total transactions for different markets in a descending order </h4>
<code> select count(market_code), market_code from date
join transactions on date.date=transactions.order_date
group by market_code
order by count(market_code) desc; </code>


Data provided by https://github.com/codebasics/DataAnalysisProjects/blob/master/2_SalesInsightsTableau/README.md
