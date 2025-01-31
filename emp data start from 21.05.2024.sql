DATE 21-05-2024

use tech;

create table EMP (EMPNO int primary key,ENAME varchar(30) null,JOB 
varchar(20) not null,HIERDATE date,MGR int,SAL decimal not null,COMM decimal,DEPTNO int);

insert into emp values(7369,'SMITH','CLERK','1980-12-17',7902,800,NULL,20);
insert into emp values(7499,'ALLEN','SALESMAN','1981-02-20',7698,1600,300,30);
insert into emp values(7521,'WARD','SALESMAN','1981-02-22',7698,1250,500,30);
insert into emp values(7566,'JONES','MANAGER','1981-04-02',7839,2975,NULL,20);
insert into emp values(7654,'MARTIN','SALESMAN','1981-09-28',7698,1250,1400,30);
insert into emp values(7698,'BLAKE','MANAGER','1981-05-01',7839,2850,NULL,30);
insert into emp values(7782,'CLARK','MANAGER','1981-06-09',7839,2450,NULL,10);
insert into emp values(7788,'SCOTT','ANALYST','1987-04-19',7566,3000,NULL,20);
insert into emp values(7839,'KING','PRESIDENT','1981-11-17',NULL,5000,NULL,10);
insert into emp values(7844,'TURNER','SALESMAN','1981-09-08',7698,1500,NULL,30);
insert into emp values(7876,'ADAMS','CLERK','1987-05-23',7788,1100,NULL,20);
insert into emp values(7900,'JAMES','CLERK','1981-12-03',7698,950,NULL,30);
insert into emp values(7902,'FORD','ANALYST','1981-12-03',7566,3000,NULL,20);
insert into emp values(7934,'MILLER','CLERK','1982-01-23',7782,1300,NULL,10);

select distinct deptno from emp;
insert into emp values(7901,'PRIYANKA','ANALYST','1981-12-03',7566,3000,NULL,50);
insert into emp values(7944,'KAMALA','CLERK','1982-01-23',7782,1300,NULL,50);

select*from emp;
select*from emp;

/* display ename sal and annualsalary */

select * from emp;
select ename,sal,sal*12 as annual_salary from emp;

/* display maximum salary given to manager */

select max(sal) from emp where job="manager";

/* display total number of employee working in dept 20 and salary should be >1500 */

select ename from emp where sal>1500 and deptno=20;
select ename from emp where sal>1500 and deptno=30;

select count(*) as num_of_emp from emp where DEPTNO=20 and sal>1500;

/* display how many employee are getting commision */

select count(sal) from emp where comm;

select count(comm) from emp;

/*display number of employee working in each det except employee working as analysts */

select count(*),DEPTNO from emp where job not in ('analyst') group by DEPTNO;

/* display maxium salary given to each job */

select max(sal),job from emp group by job;

/* display total salary need to pay for each job expect dept 20 */

select sum(sal),job from emp where deptno <> 20 group by job;
select sum(sal),job from emp where deptno <> 50 group by job;

/* display the designation in which there are at least 2 employees present */

select count(*),job from emp group by job having count(*)>=2;
select count(*),job from emp group by job having count(*)>=3;





# ASSIGNEMENT maay 22 2024 WHERE CLAUSE


select sal*12 from emp where ename="SMITH";
select * from emp;

select * from emp;

select ename from emp where job="clerk";

select  sal from emp where job="SALESMAN";

select count(ename) from emp where sal >=2000;

select * from  emp;

select* from emp where ename="JONES";

select * from emp where HIERDATE >=1981-01-01;

select ename,sal,sal*12 as annual_salary from emp where sal*12>12000;
select ename ,sal,sal*12 as annualincome from emp where sal*12>1500;

select* from emp;

select * from emp where deptno=50;

select ename,hierdate from emp where hierdate <='1981-01-01';

select * from emp where job="manager";

select ename,sal from emp 
where comm=1400;

select * from emp where comm >=sal;

select empno from emp where hierdate <='1987-01-01';

select * from emp where job="analyst";

select * from emp;

select * from emp where sal*12<2000;

#having clause
#date 22-05-2025

/* display tha names which are repeated exactly twice */

select ename from emp group by ename having count(*)=2;

select deptno from emp group by deptno having count(20)=2;

/* display number of employee working in each dept having at least 2 emp's character 'A' OR 's' in their names */

select count(*), deptno from emp where ename like '%a%' or ename like '%s%' group by deptno having count(*)>=2;

/* display the salary that is repeated */

select sal, count(*) from emp group by sal having count(*)>=2;


/* display job and total salary of each job if the total salary ofeach job is greater than 3450 */

select job,sum(sal) from emp group by job having sum(sal)>3450;


/* display job and salary of the employee are earning more than 1500 */

select job,sal from emp Where sal>1500;

select * from emp;




# orderby


select * from emp order by deptno asc;

select avg(sal),deptno from emp group by deptno;

select count(*),deptno from emp group by deptno order by count(*) asc;

select  count(*),job from emp group by job;

select * from emp;


#ASSIGNMENT group by  may 22 2024


#1 question
select count(*),deptno from emp
where job <>"PRESIDENT" group by deptno;

select count(*),job from emp 
where deptno <>'20' group by job;

select * from emp;


#2 question
/*  total salary needed to pay all the employee in each jon */
select sum(sal),job from emp group by job;

select sum(sal),deptno from emp group by deptno;



#3 question
/*  number of employee working as manager in each department*/
select count(*),deptno from emp
where job="MANAGER" group by deptno;
select count(*),job from emp
where deptno='20' group by job;

#4 question

select avg(sal),deptno from emp where deptno<>'20' group by deptno;

select avg(sal), deptno from emp where deptno<>'50' group by deptno;

#5 question
/* number of employee  having character 'a' in their name in each job */
select * from emp;
select count(*),job from emp
where ename like'%A%' group by job;
select count(*),ename from emp
where job like'%e%' group by ename;

#6 question
/* number of employee and avg salary needee to pay employee who salary in geathert than 2000 in each dept */

select count(*),avg(sal),deptno from emp
where sal >'2000'
group by deptno;

select count(*), avg(sal),deptno from emp
where sal >'3000' group by deptno;

#7 question
/* total salary needed to pay and number of saleman in each deptmant */
select sum(sal),deptno from emp
where job="salesman" group by deptno;

/*  question dubts*/

select * from emp;

#8 question
/* number of employee with their max salary in each job */

select count(job), max(sal) from emp
group by job;

#9 
/* max salaries given to an employee working in each deptment */

select max(sal),deptno from emp
group by deptno;

select min(sal),deptno from emp
group by deptno;

#10 question
/*number of times the salaries present in employee table */
select * from emp;
select count(*) from emp group by sal;


















