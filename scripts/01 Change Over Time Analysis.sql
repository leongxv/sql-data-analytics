--Change-Over-Time Trends

-- Order by year and month in two columns
SELECT
	YEAR(order_date) as order_date,
	MONTH(order_date) as order_month,
	SUM(sales_amount) as total_Sales,
	COUNT(DISTINCT customer_key) as total_customers,
	SUM(quantity) as total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY YEAR(order_date), MONTH(order_date)

-- Order by date
SELECT 
	DATETRUNC(month, order_date) as order_date,
	SUM(sales_amount) as total_Sales,
	COUNT(DISTINCT customer_key) as total_customers,
	SUM(quantity) as total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY DATETRUNC(month, order_date)
ORDER BY DATETRUNC(month, order_date)

/*
	- Order by custom format 'yyyy-MMM'
	- Order by year and alphabetical order of month 
*/
SELECT 
	FORMAT(order_date, 'yyyy-MMM') as order_date,
	SUM(sales_amount) as total_Sales,
	COUNT(DISTINCT customer_key) as total_customers,
	SUM(quantity) as total_quantity
FROM gold.fact_sales
WHERE order_date IS NOT NULL
GROUP BY FORMAT(order_date, 'yyyy-MMM')
ORDER BY FORMAT(order_date, 'yyyy-MMM')

-- How many new customers were added each year?
SELECT
	DATETRUNC(year, create_date) as create_year,
	COUNT(customer_key) as tota_customer
FROM gold.dim_customers
GROUP BY DATETRUNC(year, create_date)
ORDER BY DATETRUNC(year, create_date)
