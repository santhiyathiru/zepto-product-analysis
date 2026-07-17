create schema zepto;
CREATE TABLE zep (
    sku_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    category VARCHAR(120),
    name VARCHAR(150) NOT NULL,
    mrp DECIMAL(10,2),
    discountPercent DECIMAL(5,2),
    availableQuantity INT,
    discountedSellingPrice DECIMAL(10,2),
    weightInGms INT,
    outOfStock VARCHAR(5),
    quantity INT
);

select count(*) from zep;
select *from zep
limit 20;
  -- null value--
select * from zep
where name is null
or
sku_id is null
or
category is null
or
mrp is null
or
discountPercent is null
or
availableQuantity is null
or
discountedSellingPrice is null
or
weightInGms is null
or
outOfStock is null
or
quantity is null;

select distinct category
from zep
order by category;

select outOfStock ,count(sku_id)
from zep
group by outOfStock;

select name, count(sku_id) as"Number of SKUs"
from zep
group by name
having count(sku_id) >1
order by count(sku_id) desc;

select * from zep 
where mrp =0 or discountedSellingPrice =0;

delete from zep
where mrp = 0;

update zep
set mrp = mrp/100.0,
discountedSellingPrice=discountedSellingPrice/100.0;

select mrp, discountedSellingPrice from zep;
-- Find the top 10 best-value products based on the discount percentage.
select distinct name,mrp,discountPercent
from zep order by discountPercent desc
limit 10;

-- What are the products with High MRP but Out of Stock?
select distinct name ,mrp
from zep
where outOfStock = true and mrp >300
order by  mrp desc;
-- Calculate Estimated Revenue for each category.

select category,
sum(discountedSellingPrice * availableQuantity) as total_revenue
from zep group by category
order by total_revenue; 

-- Find all products where MRP is greater than ₹500 and discount is less than 10%.
select distinct name,mrp,discountPercent
from zep 
where mrp > 500 and   discountPercent < 10
order by mrp desc, discountPercent desc;

-- Identify the top 5 categories offering the highest average discount percentage.

select category,
round(avg(discountPercent),2) as avg_discount
from zep
group by category
order by avg_discount desc
limit 5;
-- Find the price per gram for products above 100g and sort by best value.

select distinct name, weightInGms, discountedSellingPrice,
round(discountedSellingPrice/weightInGms,2) as price_per_gram
from zep
where weightInGms >= 100
order by price_per_gram;


-- Group the products into categories like Low, Medium, Bulk.
select distinct name, weightInGms,
case when weightInGms < 1000 then 'low'
     when weightInGms < 5000 then 'medium'
     else 'bulk'
     end as weight_category
from zep;

-- What is the Total Inventory Weight Per Category

select category,
sum(weightInGms * availableQuantity) as total_weight
from zep
group by category
order by total_weight;



