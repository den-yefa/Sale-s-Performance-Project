 --		EXPLORATORY DATA ANALYSIS 
 --Caclulated column total revenue 
 select 
 Price * Order_Qty as total_revenue 
 FROM Sale_data;

 -- Top selling product category 
 select 
 Product_Category,
 sum(Price* Order_Qty) as maximum_cost
 from Sale_data sd 
 join Sales_category pc on sd.ProductSubCategoryKey= pc.ProductSubCategoryKey
 group by Product_Category
 order by maximum_cost desc; 

 --Top selling products 
  select 
 ProductName,
 SUM(Price* Order_Qty) as SUM0FPRODUCT
 from Sale_data sd 
 join product_name pn on sd.ProductKey= pn.ProductKey
 group by ProductName
 order by SUM0FPRODUCT desc;

  select 
 ProductName,
 Count(Order_QTY) as ORDERS
 from Sale_data sd 
 join product_name pn on sd.ProductKey= pn.ProductKey
 group by ProductName
 order by ORDERS desc;

 -- Top state with the most order volume 
 select
 State,
 Count(Order_Qty) as orders 
 from Sale_data sd
 JOIN Sales_state ss ON sd.StateID = ss.StateID
 group by state
 -- Top state generating revenue
  select
 State,
 SUM(Price* Order_Qty) as Total_revenue
 from Sale_data sd
 JOIN Sales_state ss ON sd.StateID = ss.StateID
 group by state
 Order by Total_revenue desc 

 --Zone generating more revenue 
  select
 Zone,
 SUM(Price* Order_Qty) as Total_revenue
 from Sale_data sd
 JOIN Sales_state ss ON sd.StateID = ss.StateID
 group by Zone
 order by Total_revenue desc

 -- Total revenue per year 
  select year(Order_Date) as Year,
 sum(Price* Order_Qty) as Total_revenue
 from Sale_data
 group by year(Order_Date);

 --Rolling total revenue 

WITH rolling_totalrevenue AS (
    SELECT 
        SUBSTRING(CONVERT(VARCHAR, Order_Date, 23), 1, 7) AS month, 
        SUM(Price * Order_Qty) AS total_revenue
    FROM Sale_data
    WHERE Order_Date IS NOT NULL 
    GROUP BY SUBSTRING(CONVERT(VARCHAR, Order_Date, 23), 1, 7) 
   
)
SELECT 
    month,
    total_revenue,
    SUM(total_revenue) OVER (ORDER BY month) AS rolling_total_revenue 
FROM rolling_totalrevenue;
