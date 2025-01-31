create database indiandairy;
use indiandairy;

create table indiadiary(
Location varchar(100),
Number_of_Cows int,
Farm_Size varchar(100),
Product_Name varchar(100),
Brand varchar(100),	
Price_per_Unit decimal(10,2),
Quantity_liters_kg decimal(10,2),
Total_Value	decimal(10,2),
Shelf_Life_days int,
Storage_Condition varchar(100),
Quantity_Sold_liters_kg	 decimal(10,2),
Price_per_Unit_sold	decimal(10,2),
Approx_Total_Revenue_INR decimal(10,2),
Customer_Location varchar(100),
Sales_Channel varchar(100),	
Quantity_in_Stock_liters_kg	decimal(10,2),
Minimum_Stock_Threshold_liters_kg decimal(10,2),
Reorder_Quantity_liters_kg decimal (10,2));

select * from indiadiary;

insert into indiadiary values('Telangana',	96,	'Medium',	'Ice Cream','Dodla Dairy',	85.72,	222.4,	
19064.128,	25,	'Frozen',	7 ,	82.24, 575.68,	'Madhya Pradesh',	'Wholesale',	215,	19.55,	64.03);

insert into indiadiary 
(Location, Number_of_Cows, Farm_Size, Product_Name, Brand, Price_per_Unit, Quantity_liters_kg, Total_Value, Shelf_Life_days, 
 Storage_Condition, Quantity_Sold_liters_kg, Price_per_Unit_sold, Approx_Total_Revenue_INR, Customer_Location, Sales_Channel, 
 Quantity_in_Stock_liters_kg, Minimum_Stock_Threshold_liters_kg, Reorder_Quantity_liters_kg)
values
('Uttar Pradesh', 44, 'Large', 'Milk', 'Amul', 42.61, 687.48, 29293.5228, 22, 'Tetra Pack', 558, 39.24, 21895.92, 'Kerala', 'Wholesale', 129, 43.17, 181.1),
('Tamil Nadu', 24, 'Medium', 'Yogurt', 'Dodla Dairy', 36.5, 503.48, 18377.02, 30, 'Refrigerated', 256, 33.81, 8655.36, 'Madhya Pradesh', 'Online', 247, 15.1, 140.83),
('Telangana', 89, 'Small', 'Cheese', 'Britannia Industries', 26.52, 823.36, 21835.5072, 72, 'Frozen', 601, 28.92, 17380.92, 'Rajasthan', 'Online', 222, 74.5, 57.68),
('Maharashtra', 21, 'Medium', 'Buttermilk', 'Mother Dairy', 83.85, 147.77, 12390.5145, 11, 'Refrigerated', 145, 83.07, 12045.15, 'Jharkhand', 'Retail', 2, 76.02, 33.4),
('Telangana', 51, 'Medium', 'Curd', 'Raj', 85.54, 593.92, 50803.9168, 5, 'Refrigerated', 74, 84.75, 6271.5, 'Gujarat', 'Retail', 519, 55.6, 139.59),
('Karnataka', 74, 'Small', 'Cheese', 'Dynamix Dairies', 36.83, 757.14, 27885.4662, 83, 'Frozen', 410, 32.66, 13390.6, 'Karnataka', 'Online', 347, 49.82, 105.86),
('Bihar', 77, 'Medium', 'Paneer', 'Mother Dairy', 29.08, 203.36, 5913.7088, 14, 'Refrigerated', 15, 29.09, 436.35, 'Haryana', 'Online', 188, 10.9, 25.14),
('West Bengal', 76, 'Medium', 'Curd', 'Raj', 22.79, 949.12, 21630.4448, 6, 'Refrigerated', 860, 24.77, 21302.2, 'Jharkhand', 'Wholesale', 89, 85.71, 32.03),
('Telangana', 36, 'Large', 'Buttermilk', 'Mother Dairy', 42.08, 385.64, 16227.7312, 9, 'Refrigerated', 108, 46.15, 4984.2, 'Tamil Nadu', 'Retail', 277, 93.61, 66.26),
('Madhya Pradesh', 82, 'Small', 'Yogurt', 'Dodla Dairy', 67.23, 52.62, 3537.6426, 24, 'Refrigerated', 22, 68.09, 1497.98, 'Kerala', 'Wholesale', 30, 81.34, 118.57),
('Chandigarh', 99, 'Small', 'Lassi', 'Sudha', 84.6, 653.04, 55247.184, 14, 'Refrigerated', 345, 88.05, 30377.25, 'Karnataka', 'Online', 308, 26.65, 24.68),
('Delhi', 81, 'Large', 'Cheese', 'Passion Cheese', 58.28, 12.39, 722.0892, 69, 'Refrigerated', 1, 58.09, 58.09, 'West Bengal', 'Retail', 11, 31.99, 69.19),
('Telangana', 39, 'Large', 'Ice Cream', 'Mother Dairy', 94.43, 612.16, 57806.2688, 25, 'Frozen', 80, 94.32, 7545.6, 'Madhya Pradesh', 'Online', 532, 47.95, 198.99),
('Gujarat', 70, 'Medium', 'Ice Cream', 'Dodla Dairy', 88.66, 797.69, 70723.1954, 28, 'Frozen', 645, 93.51, 60313.95, 'Karnataka', 'Retail', 152, 83.86, 144.3),
('Kerala', 71, 'Small', 'Milk', 'Mother Dairy', 11.58, 821.52, 9513.2016, 1, 'Polythene Packet', 778, 8.69, 6760.82, 'Gujarat', 'Retail', 43, 89.45, 28.11),
('Madhya Pradesh', 95, 'Large', 'Ghee', 'Mother Dairy', 48.83, 663.34, 32390.8922, 138, 'Ambient', 438, 52.79, 23122.02, 'Tamil Nadu', 'Retail', 225, 86.28, 91.7),
('Kerala', 88, 'Medium', 'Curd', 'Amul', 26.18, 385.41, 10090.0338, 6, 'Refrigerated', 270, 30.27, 8172.9, 'Madhya Pradesh', 'Online', 115, 52.16, 20.14),
('Madhya Pradesh', 25, 'Large', 'Buttermilk', 'Amul', 41.05, 367.14, 15071.097, 10, 'Refrigerated', 309, 40.75, 12591.75, 'West Bengal', 'Online', 58, 37.27, 79.56),
('Tamil Nadu', 52, 'Medium', 'Milk', 'Amul', 93.72, 896.89, 84056.5308, 28, 'Tetra Pack', 486, 96.08, 46694.88, 'Telangana', 'Wholesale', 410, 26.87, 92.23);


select * from indiadiary;

select count(Brand) from indiadiary;

select Brand,sum(Number_of_Cows) from indiadiary where Brand='Amul';

select * from indiadiary;

alter table indiadiary rename column Brand to Brand_name;

select * from indiadiary;

select product_name,sum(price_per_unit) from indiadiary where product_name='Milk';

select concat(location,'_',Number_of_Cows),Shelf_Life_days from indiadiary where Shelf_Life_days>20;

select concat(location,'_',Number_of_Cows),Shelf_Life_days from indiadiary where Shelf_Life_days<20;

select group_concat(Brand_name,''),location,Brand_name from indiadiary where location="Telangana" group by Brand_name;
 
select * from indiadiary;

select Location,Number_of_Cows,Farm_Size,Brand_name,Total_value,rank() over (order by Number_of_Cows desc) from indiadiary;

select  * from indiadiary where Number_of_Cows between 20 and 50;

select * from indiadiary where Customer_Location = "Kerala";

select * from indiadiary;

select sum(Quantity_in_stock_liters_kg),Sales_Channel from indiadiary group by Sales_Channel;

select count(Farm_Size),Location from indiadiary group by Location;

select max(Shelf_Life_days),Brand_name from indiadiary group by Brand_name;

select min(Approx_Total_Revenue_INR),Brand_name,Location from indiadiary group by Brand_name,Location;

select * from indiadiary;

INSERT INTO indiadiary 
(Location, Number_of_Cows, Farm_Size, Product_Name, Brand_name, Price_per_Unit, Quantity_liters_kg, Total_Value, Shelf_Life_days, 
Storage_Condition, Quantity_Sold_liters_kg, Price_per_Unit_sold, Approx_Total_Revenue_INR, Customer_Location, Sales_Channel, 
Quantity_in_Stock_liters_kg, Minimum_Stock_Threshold_liters_kg, Reorder_Quantity_liters_kg)
VALUES
('Jharkhand', 24, 'Large', 'Paneer', 'Raj', 87.53, 88.69, 7763.0357, 10, 'Refrigerated', 26, 87.3, 2269.8, 'Chandigarh', 'Wholesale', 62, 31.49, 106.59),
('Bihar', 85, 'Small', 'Cheese', 'Britannia Industries', 13.94, 220.03, 3067.2182, 43, 'Frozen', 62, 14.13, 876.06, 'Telangana', 'Online', 158, 29.59, 193.62),
('Gujarat', 41, 'Large', 'Yogurt', 'Amul', 84.48, 524.57, 44315.6736, 28, 'Frozen', 173, 89.32, 15452.36, 'Tamil Nadu', 'Retail', 351, 92.88, 37.73),
('Karnataka', 79, 'Small', 'Cheese', 'Britannia Industries', 90.1, 879.11, 79207.811, 36, 'Frozen', 610, 91.05, 55540.5, 'Rajasthan', 'Online', 269, 48.9, 86.16),
('Maharashtra', 80, 'Small', 'Curd', 'Sudha', 81.31, 212.56, 17283.2536, 5, 'Refrigerated', 55, 76.37, 4200.35, 'Tamil Nadu', 'Online', 157, 18.64, 64.06),
('Rajasthan', 12, 'Large', 'Paneer', 'Sudha', 62.21, 886.35, 55139.8335, 8, 'Refrigerated', 845, 66.7, 56361.5, 'Jharkhand', 'Wholesale', 41, 46.25, 70.4),
('Madhya Pradesh', 27, 'Small', 'Butter', 'Warana', 89.64, 430.46, 38586.4344, 37, 'Frozen', 47, 92.96, 4369.12, 'Maharashtra', 'Wholesale', 383, 21.55, 184.32),
('Jharkhand', 90, 'Small', 'Butter', 'Warana', 77.46, 440.42, 34114.9332, 36, 'Frozen', 246, 77.53, 19072.38, 'Chandigarh', 'Retail', 194, 88.03, 53.81),
('Chandigarh', 45, 'Medium', 'Curd', 'Mother Dairy', 86.39, 565.23, 48830.2197, 6, 'Refrigerated', 305, 84.57, 25793.85, 'Maharashtra', 'Retail', 260, 25.75, 124.9),
('Kerala', 87, 'Small', 'Lassi', 'Sudha', 18.99, 101.56, 1928.6244, 14, 'Refrigerated', 26, 21.19, 550.94, 'Tamil Nadu', 'Retail', 75, 52.26, 113.92),
('Chandigarh', 57, 'Large', 'Paneer', 'Amul', 80.1, 770.27, 61698.627, 7, 'Refrigerated', 557, 81.76, 45540.32, 'Madhya Pradesh', 'Retail', 213, 83.63, 79.83),
('Delhi', 41, 'Large', 'Butter', 'Amul', 92.69, 985.95, 91387.7055, 28, 'Refrigerated', 56, 96.86, 5424.16, 'Rajasthan', 'Retail', 929, 37.94, 187.73),
('Bihar', 100, 'Medium', 'Paneer', 'Mother Dairy', 44.3, 595.79, 26393.497, 12, 'Refrigerated', 137, 46.82, 6414.34, 'Madhya Pradesh', 'Wholesale', 458, 91.23, 73.05),
('Tamil Nadu', 97, 'Medium', 'Ghee', 'Amul', 43.88, 581.5, 25516.22, 136, 'Ambient', 86, 41.49, 3568.14, 'Delhi', 'Wholesale', 495, 54.72, 156.21),
('Karnataka', 65, 'Small', 'Yogurt', 'Dodla Dairy', 97.87, 332.87, 32577.9869, 22, 'Frozen', 95, 101.56, 9648.2, 'Karnataka', 'Retail', 237, 75.91, 59.2),
('Bihar', 25, 'Large', 'Milk', 'Raj', 61.24, 652.4, 39952.976, 1, 'Polythene Packet', 389, 65.53, 25491.17, 'Telangana', 'Retail', 263, 45.01, 121.01),
('Chandigarh', 81, 'Small', 'Ghee', 'Amul', 27.23, 486.43, 13245.4889, 129, 'Ambient', 384, 25.51, 9795.84, 'Kerala', 'Online', 102, 99.86, 189.33),
('Maharashtra', 52, 'Large', 'Lassi', 'Sudha', 49.39, 524.71, 25915.4269, 17, 'Refrigerated', 167, 45.86, 7658.62, 'Gujarat', 'Retail', 357, 33.58, 118.33),
('Karnataka', 77, 'Large', 'Lassi', 'Sudha', 36.87, 675.65, 24911.2155, 12, 'Refrigerated', 671, 32.92, 22089.32, 'Rajasthan', 'Wholesale', 4, 10.25, 55.87),
('Jharkhand', 79, 'Medium', 'Curd', 'Amul', 27.31, 267.21, 7297.5051, 6, 'Refrigerated', 116, 22.62, 2623.92, 'Kerala', 'Wholesale', 151, 53.34, 42.38),
('Chandigarh', 42, 'Medium', 'Buttermilk', 'Mother Dairy', 34.8, 801.25, 27883.5, 14, 'Refrigerated', 292, 38.9, 11358.8, 'Telangana', 'Wholesale', 509, 46.12, 32.45),
('Delhi', 42, 'Large', 'Lassi', 'Raj', 91.62, 112.8, 10334.736, 13, 'Refrigerated', 104, 93.93, 9768.72, 'Bihar', 'Retail', 8, 92.48, 104.82),
('Tamil Nadu', 88, 'Medium', 'Lassi', 'Sudha', 92.04, 797.52, 73403.7408, 13, 'Refrigerated', 715, 89.08, 63692.2, 'Haryana', 'Wholesale', 82, 17.51, 21.64),
('Chandigarh', 36, 'Large', 'Ice Cream', 'Amul', 52.35, 675.77, 35376.5595, 24, 'Frozen', 6, 54.41, 326.46, 'Gujarat', 'Wholesale', 669, 15.3, 106.03),
('Rajasthan', 98, 'Medium', 'Milk', 'Sudha', 46.37, 865.01, 40110.5137, 2, 'Polythene Packet', 302, 42.34, 12786.68, 'Delhi', 'Retail', 563, 70.1, 170.61),
('Chandigarh', 67, 'Medium', 'Butter', 'Amul', 90.79, 8.47, 768.9913, 38, 'Refrigerated', 3, 87.28, 261.84, 'Delhi', 'Retail', 5, 54.58, 128.52),
('Madhya Pradesh', 21, 'Small', 'Paneer', 'Amul', 23.83, 381.78, 9097.8174, 10, 'Refrigerated', 82, 20.25,12786.68, 'Delhi', 'Retail', 563, 70.1, 170.61);



select * from indiadiary;

select Location,Approx_Total_Revenue_INR, rank () over(order by Approx_Total_Revenue_INR desc) from indiadiary;

select Location,Approx_Total_Revenue_INR,quantity_sold_liters_kg, rank () over(order by quantity_sold_liters_kg desc) from indiadiary;

select product_name,rank() over(order by product_name desc) from indiadiary group by product_name;

select * from indiadiary;

select concat(Location,' - ',Number_of_cows,' * ',Reorder_Quantity_liters_kg) from indiadiary;

select location, count(reorder_quantity_liters_kg) from indiadiary group by location;

select * from indiadiary where location like '%e';
select * from indiadiary where location like '%T';
select * from indiadiary where location like 'T%';
select * from indiadiary where location like 'k%';
select * from indiadiary where location like '%A';

