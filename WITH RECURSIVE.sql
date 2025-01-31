create database day12;
use day12;

create table employe (
empid int primary key,
empname varchar(100),
managerid varchar(10) );

select * from employe;

insert into employe (empid,empname,managerid)values (1,"sabareesh",'');

insert into employe (empid,empname,managerid)values (2,"raja",'1'),
(3,"ooviya",'2'),(4,"pooja",'3'),(5,"banu",'4');

SELECT e1.empname AS 'Employee', e2.empname AS 'Manager'
FROM employe e1
LEFT JOIN employe e2
ON e1.managerid = e2.empid;






-- WITH RECURSIVE


create table employee(
empid int primary key,
empname varchar(100),
managerid int );


insert into employee (empid,empname,managerid) values ('1','sabareesh',null),('2','raja','1'),('3','ooviya','2'),('4','pooja','3'),
('5','banu','4'),('6','pranesh','2'),('7','priya','3'); 

select * from employee;


with recursive employeehiro as(
select empid,empname,managerid from employee
where managerid = 1

union all

select e.empid,e.empname,e.managerid 
from employee as e 
join employeehiro as eh on eh.managerid = eh.empid
)
select * from employeehiro;



with employeecte  as (
select empid,empname,managerid from employee
where managerid = 1)
select *from employeecte;

