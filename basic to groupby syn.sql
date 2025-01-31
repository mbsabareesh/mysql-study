create database tech;# one time exection
use tech;# multi time exection
# if we get error no database selected then execute above query
/* Syntax of create table
create table table_name(col1 datatype constraints,col2 datatype constraints........coln datatype constraints;*/

create table student
(studentid int primary key, studentname varchar(30) not null,
phone_num char(10) unique not null,gender varchar(15), place varchar(30) not null);

#above query is one time execution

select * from student;# to display entire table

describe student;


/*syntax of alter command
alter table table_name conditions; */

select * from student;

alter table student add column email varchar(100) unique not null;

select*from student;

/* syntax of insert 
insert into table_name values(val1,val2....valn) */

insert into student values(1,"Pawan","9900473640","Male","Bangalore","hafh@gmail.com");
# insert is one time execution

insert into student values
(2,"Kiran","8197315626","Male","Bangalore","bjhdvmhs@gmail.com"),
(3,"Ravi","8887772345","Male","Bangalore","gfyegau");
select * from student;

/*syntax
update table_name set col_name=new_value where reference_col_name=value;*/



update student set place="Tamilnadu" where studentid=3;
update student set gender="female" where studentid=2;
select* from student;

set sql_safe_update=0;
# when we get using safe update mode we need to execute above query

/* delete table table_name where condition */

delete from student where studentid=2;
select*from student;

#syntax of truncate
/* truncate table table_name*/

truncate table student;
select * from student;

/* syntav of drop*/
#drop table table_name

drop table student;

/* TCL commands
commit and rollback*/

use tech;
commit;
select * from student;




use tech;
CREATE TABLE Sales (
    TransactionID INT PRIMARY KEY,
    Date DATE,
    ProductID VARCHAR(10),
    ProductName VARCHAR(50),
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    TotalPrice DECIMAL(10, 2),
    CustomerID VARCHAR(10),
    CustomerName VARCHAR(50),
    SalesRep VARCHAR(50)
);

INSERT INTO Sales (TransactionID, Date, ProductID, ProductName, Quantity, UnitPrice, TotalPrice, CustomerID, CustomerName, SalesRep) VALUES
(1, '2024-04-01', 'PROD001', 'Laptop', 2, null, 2000.00, 'CUST001', 'John Smith', 'Sarah Johnson'),
(2, '2024-04-02', 'PROD002', 'Smartphone', 3, 500.00, 1500.00, 'CUST002', 'Emma Davis', 'Mike Wilson'),
(3, '2024-04-03', 'PROD003', 'Tablet', 1, 700.00, 700.00, 'CUST003', 'Michael Brown', 'Emily Miller'),
(4, '2024-04-04', 'PROD004', 'Headphones', 5, 50.00, 250.00, 'CUST004', 'Sophia Lee', 'David Clark'),
(5, '2024-04-05', 'PROD005', 'Smartwatch', 2, 300.00, 600.00, 'CUST005', 'Olivia Garcia', 'Sarah Johnson'),
(6, '2024-04-06', 'PROD001', 'Laptop', 1, 1000.00, 1000.00, 'CUST006', 'Ethan Martinez', 'Mike Wilson'),
(7, '2024-04-07', 'PROD002', 'Smartphone', 2, 500.00, 1000.00, 'CUST007', 'Mia Rodriguez', 'Emily Miller'),
(8, '2024-04-08', 'PROD003', 'Tablet', 3, 700.00, 2100.00, 'CUST008', 'Charlotte Adams', 'David Clark'),
(9, '2024-04-09', 'PROD004', 'Headphones', 1, 50.00, 50.00, 'CUST009', 'Benjamin Hernandez', 'Sarah Johnson'),
(10, '2024-04-10', 'PROD005', 'Smartwatch', 4, 300.00, 1200.00, 'CUST010', 'Amelia Taylor', 'Mike Wilson'),
(11, '2024-04-11', 'PROD001', 'Laptop', 2, 1000.00, 2000.00, 'CUST011', 'William Thompson', 'Emily Miller'),
(12, '2024-04-12', 'PROD002', 'Smartphone', 1, 500.00, 500.00, 'CUST012', 'Harper Anderson', 'David Clark'),
(13, '2024-04-13', 'PROD003', 'Tablet', 2, 700.00, 1400.00, 'CUST013', 'Evelyn White', 'Sarah Johnson'),
(14, '2024-04-14', 'PROD004', 'Headphones', 3, 50.00, 150.00, 'CUST014', 'James Wilson', 'Mike Wilson'),
(15, '2024-04-15', 'PROD005', 'Smartwatch', 1, 300.00, 300.00, 'CUST015', 'Aiden Moore', 'Emily Miller'),
(16, '2024-04-16', 'PROD001', 'Laptop', 3, 1000.00, 3000.00, 'CUST016', 'Abigail Hall', 'David Clark'),
(17, '2024-04-17', 'PROD002', 'Smartphone', 2, 500.00, 1000.00, 'CUST017', 'Evelyn Martinez', 'Sarah Johnson'),
(18, '2024-04-18', 'PROD003', 'Tablet', 1, 700.00, 700.00, 'CUST018', 'Logan Thompson', 'Mike Wilson'),
(19, '2024-04-19', 'PROD004', 'Headphones', 2, 50.00, 100.00, 'CUST019', 'Grace Parker', 'Emily Miller'),
(20, '2024-04-20', 'PROD005', 'Smartwatch', 4, 300.00, 1200.00, 'CUST020', 'Daniel Wright', 'David Clark'),
(21, '2024-04-21', 'PROD001', 'Laptop', 1, 1000.00, 1000.00, 'CUST021', 'Zoey Scott', 'Sarah Johnson'),
(22, '2024-04-22', 'PROD002', 'Smartphone', 2, 500.00, 1000.00, 'CUST022', 'Sebastian Brown', 'Mike Wilson'),
(23, '2024-04-23', 'PROD003', 'Tablet', 3, 700.00, 2100.00, 'CUST023', 'Riley Wood', 'Emily Miller'),
(24, '2024-04-24', 'PROD004', 'Headphones', 1, 50.00, 50.00, 'CUST024', 'Luna Lopez', 'David Clark'),
(25, '2024-04-25', 'PROD005', 'Smartwatch', 2, 300.00, 600.00, 'CUST025', 'Eli Perez', 'Sarah Johnson'),
(26, '2024-04-26', 'PROD001', 'Laptop', 1, 1000.00, 1000.00, 'CUST026', 'Sawyer Rivera', 'Mike Wilson'),
(27, '2024-04-27', 'PROD002', 'Smartphone', 4, 500.00, 2000.00, 'CUST027', 'Nova Gonzales', 'Emily Miller'),
(28, '2024-04-28', 'PROD003', 'Tablet', 2, 700.00, 1400.00, 'CUST028', 'Roman Stewart', 'David Clark'),
(29, '2024-04-29', 'PROD004', 'Headphones', 1, 50.00, 50.00, 'CUST029', 'Elena Cook', 'Sarah Johnson');

select*from sales;

/* write a quer to display trancationid, productname, and quanity*/
select transactionid,productname,quantity from sales;

select transactionID, productname, quantity from sales;

/* projection means select particular attributes/col from table with all the records/rows/


/*syntax of projection
#select /*col_name/expression from table_name;

# order of execution
1.from clause:select the table and send that table under execution
2.select clause:this is responsible for preparing result table

1.from:
2.select:(row-by-row)
selection
this will select praticular rows with particular columns
/* select */col_name/expression
from table_name
where condition;

order of execution for selection
1.from
2.where(row-by-row)
3.select(row-by-row)

/*WAQID details of transaction id of 10? */
select * from sales where TransactionID=10;



select productname,quantity
from sales
where transactionsid=10;
select * from sales;


/* where clause will filter the records*/
/WAQID date, productid,productname from sales table/
select date,productid,productname from sales;

select productname,quantity from sales where customerid="CUST015";

/* WAQTD date, productname,unitprice,totalprice,customerID of Emma davis from sales table */

select date,productname, unitprice,totalprice,customerid from sales
where customername="emma davis";
select*from sales;

/* display productname and totalprice and 5% discount on totalprice */
select productname as pn,totalprice,totalprice*0.05 as discount
from sales;

/* wAQTD the details of laptop */
select * from sales where productname="laptop";

/* claculate 13% of tax for unitprice*/

select unitprice*0.13 as tax_13_per from sales;

select * from sales where quantity>2;

select* from sales where unitprice<700;

select* from sales where salesRep="Sarah Johnson";

select * from sales where quantity>=2 and quantity<=4;

select* from sales where totalprice<=1000;

select* from sales where salesRep in ("Mike Wilson","Emily Miller");

select* from sales where customerID <> 'CUST001';

select * from sales where productID in ('PROD001','PROD002');

select* from sales where totalprice > 2* unitprice;

select*from sales where date <= '2024-04-15';

select * from sales where customername <> 'John Smith' and unitprice < 1000;

select* from sales where customername=("John Smith','Emma Davi");

select * from sales where totalprice = quantity*unitprice;

select*from sales where productName="laptop" and quantity=2;

select* from sales where productname="smartphone" or productname="headphones";

select* from sales where productid="PROD005" or quantity=2;

select * from sales where productname != "tablet" and productname != "smartphone";

/*important

/*display the details of the products witnin the renge of 1000rs to 200rs*/


select* from sales
where unitprice>=1000 and unitprice<=2000;

# special operator between

select* from sales where unitprice between 1000 and 2000;


/* display the details of laptop smartphone and tablet*/

select* from sales where productname in ("smartphone","laptop","tablet");

# special operator in not between

/* display the details of the products of the products which are notin range of 1000 to 2000*/

select* from sales where unitprice not between 1000 and 2000;


# is null
/* displat the details of the product whoes unitprice is null */

select* from sales where unitprice is null;

# is not null

/* displat the details of the product whoes unitprice is not null */

select * from sales where unitprice is not null;

# special letter in where like 
/* dispaly the details to product laptop which is start from H character */

select* from sales where productname like "h%" ;

#start with s and end with e

select * from sales where productname like"s%e";

#assignement 3 task 15-05-2023 for special operators

select*from sales where productname like"smart%";

select*from sales where customername like"%son";

select*from sales where productID like"%003";

select*from sales where customerid !="CUST001";

select*from sales where customername="john smith";

select*from sales where productname in ("laptop","smartphone");

select* from sales where customername <>"sarah johnson";

select* from sales where salesrep <>"mike wilson";

select*from sales where productname<>"tablet";

select* from sales where customername like "%e%";

select* from sales where salesrep in ("sarah johnson","mike wilson");

select * from sales where productname <>"smartwatch";

select*from sales where salesrep="Emily Miller";

select*from sales where salesrep is not null;


select*from sales where productname is null;

select* from sales where unitprice is null;

#16.05.2024 class


select distinct productname from sales;

select*from sales;
select distinct salesrep from sales;


FUNCTIONS
/* function are the block of codes, there have two type
1 single row function
2 multi row function. */
see the notes;

/* display maximum unit price of the product */

select max(unitprice) from sales;

/* display maximum total price of product laptop*/

select max(totalprice)  from sales where productname="laptop";

/* display product whose totalprice is grather than maxof totalprice */

select * from sales where unitprice>max(totalprice); 
wrong query dont

/* display totalunit price and total price of sales table */
select sum(unitprice),sum(totalprice) from sales;

select min(unitprice) from sales;

select max(unitprice) from sales;

select * from sales;

20.05.2024 monday

/* display total and average of unitprice and total price and total number of products */

select sum(unitprice),avg(unitprice),sum(totalprice),avg(totalprice),count(distinct productname) from sales;



#GROUP BY

/*display total unitprice of each product*/
select * from sales; 

select sum(unitprice),productname from sales group by productname;
select sum(unitprice),quantity from sales group by Quantity;
 
 select sum(unitprice),productid from sales group by productid;
 
 /* display total number of sales of a each sales person */
 select sum(quantity),salesrep from sales group by salesrep;
 select sum(quantity),salesrep from sales group by salesrep;
 
 /* total unitprice of product laptop and smartwatch */
 
select sum(unitprice) , productname from sales where productname in ('laptop','smartwatch') group by productname;
select * from sales;

select sum(unitprice),salesrep from sales where salesrep in ('mike wilson','emily miller') group by salesrep;

/* number of unique product sold by each sales rep */
 
 select count(distinct productname),salesrep from sales  group by salesrep;



















































