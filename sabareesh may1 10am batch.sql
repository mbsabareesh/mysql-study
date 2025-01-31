/*  Mock Test Questions
1. Find the total quantity of products for each categoryname.
2. Retrieve the names of suppliers who supply more than one product.
3. List products with a price higher than the average price of all products.
4. Find the supplier of the most expensive product.
5. Get the average price of products in each category.
6. Retrieve products that are supplied by 'TechSupplier Inc.
7. Find categories that have more than 100 products in total.
8. add a new product to table.
9. write a syntax of trigger.
10. Create a trigger to update the `updated_at` timestamp before updating a product.
11. List products along with their category names and supplier names.
12. Find the total number of products supplied by each supplier.
13. List the names of categories that have products priced above $100.
14. Find the maximum and minimum price of products in each category.
15. Create a trigger to prevent the deletion of products with a quantity greater than 50.
16. write complete MySQL syntax and order of execution
 */
-- Note: for above all questions print productname,categoryname and suppliername insted of ID's 

create database mock_test;
use mock_test;

CREATE TABLE Suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    supplier_name VARCHAR(100) NOT NULL,
    contact_info VARCHAR(255)
);

INSERT INTO Suppliers (supplier_name, contact_info) VALUES
('TechSupplier Inc.', 'tech@example.com'),
('Fashion Co.', 'fashion@example.com'),
('OfficeSupplies Ltd.', 'office@example.com'),
('MobileTech Corp.', 'mobile@example.com');

select * from suppliers;

CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

INSERT INTO Categories (category_name) VALUES
('Electronics'),
('Clothing'),
('Furniture');
select * from Categories;

CREATE TABLE Inventory (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    description TEXT,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category_id INT,
    supplier_id INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id),
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

INSERT INTO Inventory (product_name, description, quantity, price, category_id, supplier_id) VALUES
('Laptop', '15-inch display, 8GB RAM, 256GB SSD', 50, 799.99, 1, 1),
('T-Shirt', '100% cotton, size L', 200, 19.99, 2, 2),
('Desk Chair', 'Ergonomic office chair', 75, 129.99, 3, 3),
('Smartphone', 'Latest model, 128GB storage', 100, 699.99, 1, 4),
('Gaming Laptop', '17-inch display, 16GB RAM, 512GB SSD', 30, 1299.99, 1, 1),
('Casual Shirt', 'Slim fit, size M', 150, 29.99, 2, 2),
('Office Desk', 'L-shaped office desk', 40, 249.99, 3, 3),
('Tablet', '10-inch display, 64GB storage', 60, 399.99, 1, 4),
('Bluetooth Speaker', 'Portable speaker with rich sound', 120, 49.99, 1, 1),
('Jeans', 'Blue denim, size 32', 100, 39.99, 2, 2),
('Bookshelf', '5-tier wooden bookshelf', 20, 89.99, 3, 3),
('Wireless Headphones', 'Noise-canceling headphones', 80, 199.99, 1, 4),
('Sweater', 'Wool blend, size L', 75, 59.99, 2, 2),
('Standing Desk', 'Adjustable height standing desk', 25, 399.99, 3, 3),
('Smartwatch', 'Fitness tracker with heart rate monitor', 90, 149.99, 1, 4);

select * from inventory;



# QUESTION OF MOCK TEST 

# 1. Find the total quantity of products for each categoryname.

select count(quantity) from inventory group by category_id in(select category_id from categories where 'category_name');

select * from Categories;
select * from inventory;
select * from suppliers;

# 2.Retrieve the names of suppliers who supply more than one product.
select 


#3. List products with a price higher than the average price of all products.

select product_name, max(price) ,avg(price)from inventory where max(price) < avg(price);

#4. Find the supplier of the most expensive product.
select * from Categories;
select * from inventory;
select * from suppliers;
select




#5. Get the average price of products in each category.
select avg(price),category_id from inventory group by category_id;

#6. Retrieve products that are supplied by 'TechSupplier Inc.
select * from Categories;
select * from inventory;
select * from suppliers;

select product_name from inventory where supplier_id in(select supplier_id from suppliers where supplier_name="TechSupplier Inc");

# 7. Find categories that have more than 100 products in total.
select category_id from inventory where quantity<100;

# 8.  add a new product to table
select * from Categories;
select * from inventory;
select * from suppliers;

INSERT INTO Inventory (product_name, description, quantity, price, category_id, supplier_id) VALUES
('ring', 'gold, 1kg ', 50, 10000.99, 1, 1);
select * from inventory;

# 9. write a syntax of trigger
/* DELIMITER //
create trigger trigger_name
before
insert
on (table_name)
for each row
trigger_body
END //  */

# 13. List the names of categories that have products priced above $100.

select category_name from categories where category_id in(select category_id from inventory where price<100);



# 14. Find the maximum and minimum price of products in each category.
select min(price), max(price) from inventory group by category_id;


 
 
 
 
 
