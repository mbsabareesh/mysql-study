create database markentry;
use markentry;

create table markentry (student_name varchar(100),
student_mark int,
department varchar(100));
select*from markentry;

insert into markentry values
('raja',40,'bcomca'),
('ooviya',80,'bcomca'),
('opiy',50,'cse'),
('kaviya',60,'ca'),
('priya',70,'bcom'),
('madhu',80,'bcom'),
('nithiya',20,'bcomaf');

select*from markentry;

select student_name,student_mark from markentry order by student_mark desc;

select count(student_name),department from markentry group by department;

use markentry;
create table employeess(
employeeid int,
firstname varchar(100),
lastname varchar(100),
department varchar(100),
salary int );
select*from employeess;

insert into employeess values
(1,'ooviya','rajavel','bcomca',55000),
(2,'raja','bagadesh','bcomca',80999),
(3,'sabareesh','aia','bcomca',89098),
(4,'banu','pranesh','it',45000),
(5,'kumar','sanjay','hr',30000),
(6,'sanjay','ramasamy','hr',40000),
(7,'hari','haran','it',70000);

select * from employeess;
select * from employeess order by lastname asc;
select*from employeess where department ="it" order by salary desc;
select count(*),department from employeess group by department;
select avg(salary),department from employeess group by department;
 
 






