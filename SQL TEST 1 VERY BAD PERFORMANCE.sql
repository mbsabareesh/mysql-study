QUESTUON 
MySQL TEST MAY 10AM BATCH
1. Select all unique categories from the products table.
2. Select the Product Name and Price, but display the Price with a 10% discount as `Discounted Price`.
3. Find all products with a price greater than $500.
4. Count the number of products in each category.
5. Find the average price of products in the 'Electronics' category.
6. Select products where the quantity in stock is between 10 and 50.
7. Find the product with the highest price.
8. Select products that have 'Apple' in their name.
9. Calculate the total value of the inventory for each product and display it as `Total_Value`.
10. List products with a price less than $200 and order them by Price in ascending order.
11. Find the maximum quantity in stock across all products.
12. Find the sum of prices for all products in the 'Gaming' category.
13. Select the first five products based on their product ID in descending order.
14. Find the minimum price of products in each category.
15. Select products where the quantity in stock is not equal to 50.
16. Find the total number of products in the inventory.
17. List all products and their respective categories, but display the category as `Product_Category`.
18. Find the average quantity in stock for each category but only for categories with an average quantity greater
than 30.
19. Select all products with a price between $100 and $500, inclusive.
20. Find the number of different categories in the table.
21. Find products with a price that is not between $200 and $400.
22. Select the total quantity in stock for each category.
23. Find the product with the second highest price.
24. Select all products whose name starts with 'Sony'.
25. Find the categories where the maximum price of products is more than $1000.
26. List all products along with their price after a 15% increase, labeled as `Increased_Price`.
27. Select products in the 'Wearables' category and order them by Quantity_in_Stock in descending order.
28. Find the product with the lowest quantity in stock.
29. Select the total value of inventory for the 'Computers' category.
30. Find products whose price is more than the average price of all products.





MySQL TEST ANSWER
1. Select all unique categories from the products table.

 SELECT DISTINCT Category FROM products;

2. Select the Product Name and Price, but display the Price with a 10% discount as `Discounted Price`.

 SELECT Product_Name, Price, Price * 0.9 AS Discounted_Price FROM products;

3. Find all products with a price greater than $500.

 SELECT * FROM products WHERE Price > 500;

4. Count the number of products in each category.

 SELECT Category, COUNT(*) AS Product_Count FROM products GROUP BY Category;

5. Find the average price of products in the 'Electronics' category.

 SELECT AVG(Price) AS Avg_Price FROM products WHERE Category = 'Electronics';

6. Select products where the quantity in stock is between 10 and 50.

 SELECT * FROM products WHERE Quantity_in_Stock BETWEEN 10 AND 50;

7. Find the product with the highest price.

 SELECT * FROM products ORDER BY Price DESC LIMIT 1;

8. Select products that have 'Apple' in their name.

 SELECT * FROM products WHERE Product_Name LIKE '%Apple%';

9. Calculate the total value of the inventory (Price * Quantity_in_Stock) for each product and display it as
`Total_Value`.

 SELECT Product_ID, Product_Name, Price, Quantity_in_Stock, (Price * Quantity_in_Stock) AS Total_Value FROM
products;

10. List products with a price less than $200 and order them by Price in ascending order.

 SELECT * FROM products WHERE Price < 200 ORDER BY Price ASC;

11. Find the maximum quantity in stock across all products.

 SELECT MAX(Quantity_in_Stock) AS Max_Quantity FROM products;

12. Find the sum of prices for all products in the 'Gaming' category.

 SELECT SUM(Price) AS Total_Price FROM products WHERE Category = 'Gaming';

13. Select the first five products based on their product ID in descending order.

 SELECT * FROM products ORDER BY Product_ID DESC LIMIT 5;

14. Find the minimum price of products in each category.

 SELECT Category, MIN(Price) AS Min_Price FROM products GROUP BY Category;

15. Select products where the quantity in stock is not equal to 50.

 SELECT * FROM products WHERE Quantity_in_Stock <> 50;

16. Find the total number of products in the inventory.

 SELECT COUNT(*) AS Total_Products FROM products;

17. List all products and their respective categories, but display the category as `Product_Category`.

 SELECT Product_Name, Category AS Product_Category FROM products;

18. Find the average quantity in stock for each category but only for categories with an average quantity
greater than 30.

 SELECT Category, AVG(Quantity_in_Stock) AS Avg_Quantity FROM products GROUP BY Category HAVING
AVG(Quantity_in_Stock) > 30;

19. Select all products with a price between $100 and $500, inclusive.

 SELECT * FROM products WHERE Price BETWEEN 100 AND 500;

20. Find the number of different categories in the table.

 SELECT COUNT(DISTINCT Category) AS Category_Count FROM products;

21. Find products with a price that is not between $200 and $400.

 SELECT * FROM products WHERE Price NOT BETWEEN 200 AND 400;

22. Select the total quantity in stock for each category.

 SELECT Category, SUM(Quantity_in_Stock) AS Total_Quantity FROM products GROUP BY Category;

23. Find the product with the second highest price.

 SELECT * FROM products ORDER BY Price DESC LIMIT 1 OFFSET 1;

24. Select all products whose name starts with 'Sony'.

 SELECT * FROM products WHERE Product_Name LIKE 'Sony%';

25. Find the categories where the maximum price of products is more than $1000.

 SELECT Category FROM products GROUP BY Category HAVING MAX(Price) > 1000;

26. List all products along with their price after a 15% increase, labeled as `Increased_Price`.

 SELECT Product_Name, Price, Price * 1.15 AS Increased_Price FROM products;

27. Select products in the 'Wearables' category and order them by Quantity_in_Stock in descending
order.

 SELECT * FROM products WHERE Category = 'Wearables' ORDER BY Quantity_in_Stock DESC;

28. Find the product with the lowest quantity in stock.

 SELECT * FROM products ORDER BY Quantity_in_Stock ASC LIMIT 1;

29. Select the total value of inventory for the 'Computers' category.

 SELECT Category, SUM(Price * Quantity_in_Stock) AS Total_Inventory_Value FROM products WHERE Category
= 'Computers' GROUP BY Category;

30. Find products whose price is more than the average price of all products.

 SELECT * FROM products WHERE Price > (SELECT AVG(Price) FROM products);
 
 
 
 
 
/* TASK DO IT IN TEST QUESTION  */
 
 create database productstable;
 use productstable;
 
 create table product(productid int primary key,
 productname varchar(100),
 category varchar(100),
 quantity_in_stock varchar(100),
 price varchar(100));
 
 select * from product;
 insert into product(productid,productname,category,quantity_in_stock,price)values
 (102,'samsung galaxy s21','electronic',45,'$699'),
 (103,'sony wh-1000xm4','electronic',30, '$350'),
 (104,'dell xps 13','computer',20,'$999'),
 (105,'hp spectre x360','computer',15,'$1,199'),
 (106,'apple macbook pro','computer',25,'$1,299'),
 (107,'lenova thinkpad x1','computer',10,'$1,049'),
 (108,'asus rog zephyrus','computer',5,'$1,499'),
 (109,'nike air max 270','footware',100,'$150'),
 (110,'adidas ultraboost','footware',80,'$180'),
 (111,'puma rs-x','footwear',60,'$120'),
 (112,'reebok classic','footwear',70,'$100'),
 (113,'sony playstation 5','gaming',40,'$499'),
 (114,'xbox seriesx','gaming',35,'$499'),
 (115,'nintendo switch','gaming',60,'$299'),
 (116,'apple watch series 7','wearbles',25,'$399'),
 (117,'fitbit charge 5','wearbles',50,'$150'),
 (118,'garming forerunner 245','wearbles',30,'$250'),
 (119,'samsung galaxy','wearles',40,'$249'),
 (120,'gopro hero10','camera',20,'$499');
 select*from product;
 
 # QUESTION 
 #1 select all unique categories from the products table.
 
 select distinct category from product;
 
select distinct productid from product;

select distinct productname from product;

#2 select the product name and price but display the price with 10% discount as discounted price .

select * from product;
select productname,price,price*0.10 as discountedprice from product;

select productid,price,price*0.15 as discounted from product;

#3 find all product with price greater than $500.
select productname from product where price> '$500';

select productid,price as dollar from product where price< '$500';

#4 count the number of product in each category 

select*from product;
 select category ,count(*) from product group by category;
 select category,count(*) from product group by category;
 
 #5 find the average price of products in the electronic category.
 select avg(price) from product where category="electronic";
 select min(price) from product where category="electronic";
 select sum(price) from product where category="electronic";
 select max(price) from product where category="electronic";
 
 #6 select products where the quantity in stock is between 10 and 50.
 select * from product where quantity_in_stock between 10 and 50;
 select * from product where quantity_in_stock between 20 and 40;
 select productname,quantity_in_stock from product where quantity_in_stock between 20 and 30;
 
 #7 find the product with the higher price.
 select*from product order by price desc limit 1;
 select * from product order by price asc limit 1;
 
 #8 select product that have 'applp' in their name 
 select*from product where productname like "%apple%";
 select * from product where category like "%computer%";
 
 #9 calculate the total value of the inventory for each product and display it as total_value.
 select productid,productname,quantity_in_stock,(price*quantity_in_stock) from product;
 
 #10 list product with a price less than $200 and order them price in ascending order.
 select * from product where price<"$200" order by price asc;
 select * from product where price>"$200" order by price desc;
 
 #11 find the maxmium quantity in stock across all product.
 select * from product;
 select max(quantity_in_stock) from product;
 select min(quantity_in_stock) from product;
 select max(price)as dollar from product;
 select min(price) as dollar from product;
 
 #12 find the sum of price for all products in the gaming category.
 select sum(price) from product where category="gaming";
 select sum(price) from product where category ="electronic";
 
 #13 select the first five product based on their product id in descending order.
 select*from product;
 select * from product order by productid desc limit 5;
 select * from product order by productid asc limit 5;
 select * from product order by price asc limit 5;
 select * from product order by price desc limit 6;
 
 #14 find the minium price of product in each category.
 select min(price) from product group by category;
 select max(price) from product group by category;
 select min(price) from product group by quantity_in_stock;
 select sum(quantity_in_stock) from product group by category;
 
 #15 select product where the quantity in stock is not equal to 50.
 select * from product;
 select * from product where quantity_in_stock <> 50;
 select * from product where quantity_in_stock != 40;
 select * from product where quantity_in_stock not between 50 and 40;
 
 #16 find the total number of product in the inventory.
 select count(*)from product;
 select count(*) from product;
 
 #17 list all product and their respective category but display the category as product_category.
 select category as product_category from product;
SELECT ProductName, Category AS Product_Category FROM product;
 
 
 