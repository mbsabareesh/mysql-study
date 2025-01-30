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

select group_concat(Brand_name,'')as stringaggregate ,location,Brand_name from indiadiary where location="Telangana" group by Brand_name;
 
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

INSERT INTO indiadiary (Location, Number_of_Cows, Farm_Size, Product_Name, Brand_name, Price_per_Unit, Quantity_liters_kg, Total_Value, Shelf_Life_days, 
Storage_Condition, Quantity_Sold_liters_kg, Price_per_Unit_sold, Approx_Total_Revenue_INR, Customer_Location, Sales_Channel, 
Quantity_in_Stock_liters_kg, Minimum_Stock_Threshold_liters_kg, Reorder_Quantity_liters_kg)
VALUES
('Jharkhand', 65, 'Medium', 'Buttermilk', 'Mother Dairy', 41.31, 410.48, 16956.9288, 11, 'Refrigerated', 141, 43.02, 6065.82, 'Delhi', 'Online', 269, 62.67, 83.4),
('Rajasthan', 53, 'Large', 'Ice Cream', 'Dodla Dairy', 58.25, 351.11, 20452.1575, 29, 'Frozen', 305, 62.31, 19004.55, 'Rajasthan', 'Online', 46, 51.48, 147.89),
('Rajasthan', 79, 'Large', 'Buttermilk', 'Mother Dairy', 62.03, 83.31, 5167.7193, 13, 'Refrigerated', 62, 65.24, 4044.88, 'West Bengal', 'Retail', 21, 21.47, 112.76),
('Delhi', 32, 'Medium', 'Butter', 'Amul', 89.8, 30.69, 2755.962, 29, 'Frozen', 22, 92.23, 2029.06, 'Uttar Pradesh', 'Retail', 8, 27.1, 22.11),
('Kerala', 76, 'Small', 'Paneer', 'Sudha', 82.89, 9.78, 810.6642, 14, 'Refrigerated', 2, 85.42, 170.84, 'Madhya Pradesh', 'Wholesale', 7, 50.62, 197.39),
('Maharashtra', 12, 'Small', 'Cheese', 'Passion Cheese', 48.71, 953.21, 46430.8591, 42, 'Refrigerated', 705, 45.04, 31753.2, 'Chandigarh', 'Retail', 248, 11.47, 68.17),
('Telangana', 98, 'Small', 'Lassi', 'Amul', 98.37, 707.2, 69567.264, 12, 'Refrigerated', 145, 101.64, 14737.8, 'Kerala', 'Retail', 562, 65.74, 122.35),
('Maharashtra', 48, 'Medium', 'Curd', 'Raj', 56.07, 839.1, 47048.337, 6, 'Refrigerated', 11, 58.17, 639.87, 'Gujarat', 'Online', 828, 25.18, 144.48),
('Delhi', 19, 'Medium', 'Ghee', 'Mother Dairy', 68.66, 960.28, 65932.8248, 137, 'Ambient', 956, 69.79, 66719.24, 'Tamil Nadu', 'Wholesale', 4, 38.11, 199.68),
('Telangana', 19, 'Large', 'Yogurt', 'Palle2patnam', 82.43, 65.8, 5423.894, 30, 'Frozen', 26, 84.9, 2207.4, 'Maharashtra', 'Online', 39, 67.7, 95.52),
('Rajasthan', 20, 'Large', 'Ghee', 'Sudha', 92.97, 685.84, 63762.5448, 143, 'Ambient', 634, 95.09, 60287.06, 'Chandigarh', 'Retail', 51, 78.67, 99.91),
('Delhi', 31, 'Small', 'Yogurt', 'Dodla Dairy', 20.21, 754.25, 15243.3925, 28, 'Frozen', 290, 21.16, 6136.4, 'Rajasthan', 'Online', 464, 75.4, 82.78),
('Chandigarh', 74, 'Small', 'Ice Cream', 'Palle2patnam', 86.58, 750.7, 64995.606, 26, 'Frozen', 696, 83.73, 58276.08, 'Delhi', 'Wholesale', 54, 31.69, 187.36),
('Chandigarh', 90, 'Large', 'Ghee', 'Amul', 61.21, 838.85, 51346.0085, 147, 'Ambient', 392, 61.22, 23998.24, 'Jharkhand', 'Wholesale', 446, 34.63, 46),
('Delhi', 94, 'Small', 'Butter', 'Mother Dairy', 45.01, 791.17, 35610.5617, 37, 'Frozen', 534, 48.01, 25637.34, 'Chandigarh', 'Wholesale', 257, 80.22, 59.28),
('Uttar Pradesh', 100, 'Medium', 'Milk', 'Mother Dairy', 95.03, 62.79, 5966.9337, 21, 'Tetra Pack', 16, 93.22, 1491.52, 'Bihar', 'Wholesale', 46, 10.47, 152.91),
('Gujarat', 58, 'Large', 'Yogurt', 'Amul', 45.36, 931.71, 42262.3656, 26, 'Refrigerated', 834, 40.97, 34168.98, 'Gujarat', 'Wholesale', 97, 47.75, 30.21),
('Uttar Pradesh', 77, 'Large', 'Lassi', 'Raj', 22.2, 398.09, 8837.598, 14, 'Refrigerated', 304, 23.26, 7071.04, 'Uttar Pradesh', 'Online', 94, 89.77, 81.83),
('Rajasthan', 22, 'Medium', 'Yogurt', 'Mother Dairy', 27.07, 548.97, 14860.6179, 25, 'Refrigerated', 386, 25.29, 9761.94, 'Telangana', 'Online', 162, 28.6, 140.82),
('Maharashtra', 79, 'Medium', 'Yogurt', 'Amul', 68.17, 357.6, 24377.592, 27, 'Frozen', 9, 65.87, 592.83, 'Chandigarh', 'Wholesale', 348, 82.26, 113.24),
('Chandigarh', 19, 'Medium', 'Ghee', 'Raj', 44.64, 455.19, 20319.6816, 144, 'Ambient', 420, 48.13, 20214.6, 'Madhya Pradesh', 'Online', 35, 40.44, 148.64),
('Jharkhand', 40, 'Large', 'Milk', 'Raj', 81.7, 156.97, 12824.449, 1, 'Polythene Packet', 103, 80.26, 8266.78, 'Chandigarh', 'Retail', 53, 38.15, 44.82),
('Bihar', 38, 'Large', 'Curd', 'Sudha', 44.7, 120.72, 5396.184, 5, 'Refrigerated', 78, 48.75, 3802.5, 'Bihar', 'Online', 42, 25.08, 69.37),
('Karnataka', 23, 'Small', 'Buttermilk', 'Sudha', 53.76, 23.96, 1288.0896, 11, 'Refrigerated', 23, 56.57, 1301.11, 'Madhya Pradesh', 'Online', 0, 41.42, 186.26),
('Delhi', 35, 'Large', 'Milk', 'Sudha', 38.88, 373.21, 14510.4048, 1, 'Polythene Packet', 166, 36.18, 6005.88, 'Rajasthan', 'Retail', 207, 26.68, 44.52),
('Chandigarh', 38, 'Small', 'Curd', 'Mother Dairy', 64.01, 551.14, 35278.4714, 5, 'Refrigerated', 203, 65.1, 13215.3, 'Telangana', 'Wholesale', 348, 89.68, 119.95),
('Maharashtra', 28, 'Medium', 'Yogurt', 'Mother Dairy', 35.46, 595.93, 21131.6778, 27, 'Frozen', 54, 34.78, 1878.12, 'Madhya Pradesh', 'Online', 541, 74.07, 155.47),
('Haryana', 32, 'Medium', 'Milk', 'Amul', 50.94, 928.93, 47319.6942, 22, 'Tetra Pack', 869, 54.74, 47569.06, 'Jharkhand', 'Online', 59, 97.61, 158.99),
('Karnataka', 24, 'Medium', 'Buttermilk', 'Raj', 20.18, 118.22, 2385.6796, 12, 'Refrigerated', 84, 15.64, 1313.76, 'Jharkhand', 'Online', 34, 40.9, 157.94),
('Uttar Pradesh', 90, 'Large', 'Cheese', 'Amul', 99.96, 197.25, 19717.11, 29, 'Refrigerated', 150, 100.74, 15111, 'Jharkhand', 'Wholesale', 47, 28.23, 93.72),
('Gujarat', 41, 'Small', 'Ice Cream', 'Palle2patnam', 95.3, 69.59, 6631.927, 28, 'Frozen', 36, 98.67, 3552.12, 'Gujarat', 'Retail', 33, 62.77, 87.86),
('Uttar Pradesh', 38, 'Small', 'Butter', 'Amul', 77.71, 705.44, 54819.7424, 40, 'Refrigerated', 279, 80.91, 22573.89, 'Tamil Nadu', 'Retail', 426, 10.55, 66.62),
('Jharkhand', 69, 'Large', 'Curd', 'Amul', 65.23, 336.47, 21947.9381, 6, 'Refrigerated', 108, 61.59, 6651.72, 'West Bengal', 'Wholesale', 228, 63.42, 100.69),
('Jharkhand', 39, 'Large', 'Yogurt', 'Mother Dairy', 80.74, 616.07, 49741.4918, 27, 'Frozen', 362, 83.85, 30353.7, 'Uttar Pradesh', 'Wholesale', 254, 61.49, 132.2),
('West Bengal', 54, 'Small', 'Ghee', 'Mother Dairy', 43.79, 343.94, 15061.1326, 135, 'Ambient', 320, 43.76, 14003.2, 'Karnataka', 'Retail', 23, 44.92, 24.81),
('Jharkhand', 95, 'Medium', 'Milk', 'Sudha', 49.06, 999.78, 49049.2068, 2, 'Polythene Packet', 499, 48.14, 24021.86, 'Rajasthan', 'Online', 500, 39.56, 41.02),
('Rajasthan', 98, 'Medium', 'Cheese', 'Amul', 63.08, 211.51, 13342.0508, 59, 'Refrigerated', 206, 64.22, 13229.32, 'West Bengal', 'Online', 5, 81.94, 85.62),
('Uttar Pradesh', 78, 'Large', 'Yogurt', 'Palle2patnam', 76.58, 504.33, 38621.5914, 28, 'Refrigerated', 490, 81.37, 39871.3, 'Delhi', 'Retail', 14, 73.82, 49.34),
('Gujarat', 17, 'Medium', 'Butter', 'Parag Milk Foods', 13.66, 535.1, 7309.466, 39, 'Frozen', 18, 8.83, 158.94, 'Jharkhand', 'Retail', 517, 32.01, 46.46),
('Uttar Pradesh', 30, 'Large', 'Ghee', 'Sudha', 16.37, 729.21, 11937.1677, 85, 'Ambient', 458, 12.86, 5889.88, 'Rajasthan', 'Wholesale', 271, 52.59, 188.98),
('Maharashtra', 62, 'Medium', 'Buttermilk', 'Sudha', 86.32, 149.16, 12875.4912, 13, 'Refrigerated', 140, 81.47, 11405.8, 'Uttar Pradesh', 'Online', 9, 25.63, 185.72),
('Gujarat', 61, 'Small', 'Paneer', 'Raj', 43.22, 674.12, 29135.4664, 11, 'Refrigerated', 230, 42.79, 9841.7, 'Gujarat', 'Retail', 444, 99.99, 131.43),
('Tamil Nadu', 55, 'Large', 'Cheese', 'Dynamix Dairies', 28.93, 627.29, 18147.4997, 30, 'Refrigerated', 465, 29.8, 13857, 'West Bengal', 'Online', 162, 27.19, 46.76),
('Madhya Pradesh', 77, 'Small', 'Curd', 'Raj', 45.95, 865.53, 39771.1035, 7, 'Refrigerated', 581, 49.38, 28689.78, 'Telangana', 'Wholesale', 284, 51.12, 123.76),
('West Bengal', 89, 'Large', 'Buttermilk', 'Raj', 52.51, 582.19, 30570.7969, 13, 'Refrigerated', 556, 53.75, 29885, 'Madhya Pradesh', 'Retail', 26, 21.15, 91.16),
('Karnataka', 94, 'Large', 'Milk', 'Sudha', 78.72, 280.1, 22049.472, 29, 'Tetra Pack', 163, 75.83, 12360.29, 'Rajasthan', 'Retail', 117, 39.3, 119.41),
('Kerala', 66, 'Medium', 'Lassi', 'Sudha', 67.3, 331.3, 22296.49, 12, 'Refrigerated', 135, 67.91, 9167.85, 'Delhi', 'Retail', 196, 82.87, 190.42),
('Delhi', 29, 'Large', 'Milk', 'Sudha', 29.49, 229.17, 6758.2233, 28, 'Tetra Pack', 159, 34.04, 5412.36, 'Kerala', 'Wholesale', 70, 28.29, 22.58),
('West Bengal', 88, 'Medium', 'Cheese', 'Dynamix Dairies', 75.82, 38.2, 2896.324, 44, 'Refrigerated', 3, 77.91, 233.73, 'Rajasthan', 'Online', 35, 72.22, 38.25),
('Gujarat', 66, 'Medium', 'Curd', 'Amul', 26.85, 242.26, 6504.681, 7, 'Refrigerated', 158, 25.72, 4063.76, 'Jharkhand', 'Retail', 84, 58.3, 186.84),
('Madhya Pradesh', 48, 'Medium', 'Cheese', 'Britannia Industries', 25.44, 898.01, 22845.3744, 82, 'Frozen', 674, 27.1, 18265.4, 'Uttar Pradesh', 'Online', 224, 70.14, 111.3),
('Chandigarh', 73, 'Large', 'Lassi', 'Amul', 99.03, 648.13, 64184.3139, 16, 'Refrigerated', 597, 103.49, 61783.53, 'Kerala', 'Retail', 51, 84.53, 83.17),
('Tamil Nadu', 29, 'Medium', 'Ghee', 'Mother Dairy', 35.1, 303.9, 10666.89, 147, 'Ambient', 296, 36.16, 10703.36, 'Rajasthan', 'Wholesale', 7, 87.43, 112.99),
('Uttar Pradesh', 58, 'Medium', 'Butter', 'Parag Milk Foods', 95.65, 615.24, 58847.706, 28, 'Frozen', 281, 96.42, 27094.02, 'Delhi', 'Retail', 334, 46.01, 130.83),
('Gujarat', 14, 'Large', 'Milk', 'Raj', 27.19, 105.47, 2867.7293, 1, 'Polythene Packet', 50, 27, 1350, 'West Bengal', 'Wholesale', 55, 79.2, 64.33),
('Chandigarh', 46, 'Large', 'Yogurt', 'Amul', 82.34, 928.58, 76459.2772, 24, 'Refrigerated', 552, 78.38, 43265.76, 'Gujarat', 'Retail', 376, 15.44, 24.86),
('Karnataka', 43, 'Large', 'Yogurt', 'Dodla Dairy', 98.65, 862.73, 85108.3145, 23, 'Refrigerated', 7, 99.66, 697.62, 'Chandigarh', 'Online', 855, 14.71, 51.89),
('Jharkhand', 66, 'Large', 'Milk', 'Sudha', 21.58, 904.53, 19519.7574, 2, 'Polythene Packet', 129, 22.4, 2889.6, 'Maharashtra', 'Online', 775, 97.75, 180.13),
('Karnataka', 37, 'Small', 'Paneer', 'Mother Dairy', 61.34, 969.09, 59443.9806, 7, 'Refrigerated', 779, 60.15, 46856.85, 'Kerala', 'Wholesale', 190, 32.08, 128.68),
('Rajasthan', 72, 'Large', 'Cheese', 'Amul', 27.78, 215.99, 6000.2022, 74, 'Refrigerated', 39, 23.87, 930.93, 'Madhya Pradesh', 'Wholesale', 176, 89.31, 132.49),
('Delhi', 82, 'Large', 'Buttermilk', 'Sudha', 85.32, 394.68, 33674.0976, 12, 'Refrigerated', 104, 81.24, 8448.96, 'West Bengal', 'Online', 290, 68.67, 94),
('Chandigarh', 23, 'Large', 'Milk', 'Mother Dairy', 48.91, 86.33, 4222.4003, 28, 'Tetra Pack', 84, 45.16, 3793.44, 'Rajasthan', 'Online', 2, 32.22, 91.81),
('Chandigarh', 28, 'Large', 'Cheese', 'Amul', 64.9, 448.41, 29101.809, 39, 'Refrigerated', 36, 63.9, 2300.4, 'Madhya Pradesh', 'Wholesale', 176, 89.31, 132.49);

select * from indiadiary;

select Location,Approx_Total_Revenue_INR, rank () over(order by Approx_Total_Revenue_INR desc) from indiadiary;

select Location,Approx_Total_Revenue_INR,quantity_sold_liters_kg, rank () over(order by quantity_sold_liters_kg desc) from indiadiary;

select product_name,rank() over(order by product_name desc) from indiadiary group by product_name;

select * from indiadiary;

select concat(Location,' - ',Number_of_cows,' * ',Reorder_Quantity_liters_kg) from indiadiary;

select location, count(reorder_quantity_liters_kg) from indiadiary group by location;



