use tech;
select * from emp;

#HAVING CLAUSE 

select deptno, count(*) from emp where job="clerk" group by deptno having count(*)>=2;
select deptno,count(*) from emp where job='clerk' group by deptno having count(*)>=2;
select deptno,count(*) from emp where job="clerk" group by deptno having count(*)>=2;

select count(*),deptno from emp group by deptno having count(*)>=2;

select deptno,sum(sal) from emp group by deptno having count(*)>=4; 

select count(*),job from emp where sal>'1200' group by job having sum(sal)>=3800;

/* display deptno and number of emp working only if there are 2 emp working in each dep as manager */
select deptno,count(*) from emp where job='manager' group by deptno having count(*)=2; 

select deptno,count(*)
from emp
where job="manager"
group by deptno
having count(*)=2;

/* what min and max salaries of each job if min sal is more than 1000 and max sal is less than 5000 */
select min(sal),max(sal) from emp where sal>1000 and sal<5000  group by job  having max(sal)>1000 or min(sal)<5000;
select min(sal),max(sal) from emp where sal>1000 and sal<5000 group by job
having min(sal)>1000 or max(sal)<5000;

#23.05.2024

/* dis employee name in asc order */

select ename from emp order by ename asc;
select ename from emp order by ename desc;

5 select
1 from 
2 where 
3 group by 
4 having 
6 order by 


select * from emp;

select * from emp order by empno desc;

* Consider a table called carrecords with the following structure:
name (type: TEXT)
price(type: INT)
color(type: TEXT)
vehicletype (type: TEXT) eg : SEDAN/SUv

A customer wants to see the details(name, price, color, vehicletype) of the vehicles that 
suit his preferences. This is what he says:

"If its a black sedan, I'm ready to pay 10,000, but if its red or white,
then no more than 8,000. For any other color  won't go above 7,000,
except if its an SUv, in which case my budget is upto 15,000 for a
black one or upto 14,000 for any other colour"

# Write a query that return desired information in ascending order of price
*/

#Create Table carrecords (carname text, price int(20), color text, vehicletype text);
Select name, price, color, vehicletype
from carrecords 
where (vehicletype = "sedan" and color = "black" and price <= 10000)
or (vehicletype = "sedan" and color in ('red', 'white') and price <= 8000)
or (vehicletype = "sedan" and color not in ('black', 'red', 'white') and price <= 7000)
or (vehicletype = "suv" and color = 'black' and price <= 15000)
or (vehicletype = "suv" and color <> 'black' and price <= 14000)
order by price asc;

# ASSIGNMENT OF HAVING CLAUSE
-- 1. WAQTD DNO AND NUMBER OF EMP WORKING IN EACH DEPT IF THERE ARE ATLEAST 2 CLERKS IN EACH DEPT
SELECT deptno, COUNT(*) as num_of_emp
FROM emp
WHERE job = 'CLERK'
GROUP BY deptno
HAVING COUNT(*) >= 2;

-- 2. WAQTD DNO AND TOTAL SALARY NEEDED TO PAY ALL EMP IN EACH DEPT IF THERE ARE ATLEAST 4 EMP IN EACH DEPT
SELECT deptno, SUM(sal) 
FROM emp
GROUP BY deptno
HAVING COUNT(*) >= 4;

-- 3. WAQTD NUMBER OF EMP EARNING SAL MORE THAN 1200 IN EACH JOB AND THE TOTAL SAL NEEDED TO PAY EMP OF EACH JOB MUST EXCEED 3800
SELECT job, COUNT(*) as num_of_emp, SUM(sal) 
FROM emp
WHERE sal > 1200
GROUP BY job
HAVING SUM(sal) > 3800;

-- 4. WAQTD DEPTNO AND NUMBER OF EMP WORKING ONLY IF THERE ARE 2 EMP WORKING IN EACH DEPT AS MANAGER
SELECT deptno, COUNT(*) as num_of_emp
FROM emp
WHERE job = 'MANAGER'
GROUP BY deptno
HAVING COUNT(*) = 2;

-- 5. WAQTD JOB AND MAX SAL OF EMP IN EACH JOB IF THE MAX SAL EXCEEDS 2600
SELECT job, MAX(sal) as max_salary
FROM emp
GROUP BY job
HAVING MAX(sal) > 2600;

-- 6. WAQTD THE SALARIES WHICH ARE REPEATED IN EMP TABLE
SELECT sal
FROM emp
GROUP BY sal
HAVING COUNT(*) > 1;

-- 7. WAQTD THE HIREDATE WHICH ARE DUPLICATED IN EMP TABLE
SELECT hierdate
FROM emp
GROUP BY hierdate
HAVING COUNT(*) > 1;

-- 8. WAQTD AVG SALARY OF EACH DEPT IF AVG SAL IS LESS THAN 3000
SELECT deptno, AVG(sal) as avg_salary
FROM emp
GROUP BY deptno
HAVING AVG(sal) < 3000;

-- 9. WAQTD DEPTNO IF THERE ARE ATLEAST 3 EMP IN EACH DEPT WHOSE NAME HAS CHAR 'A' OR 'S'
SELECT deptno
FROM emp
WHERE ename LIKE '%A%' OR ename LIKE '%S%'
GROUP BY deptno
HAVING COUNT(*) >= 3;

-- 10. WAQTD MIN AND MAX SALARIES OF EACH JOB IF MIN SAL IS MORE THAN 1000 AND MAX SAL IS LESS THAN 5000
SELECT job, MIN(sal) as min_salary, MAX(sal) as max_salary
FROM emp
GROUP BY job
HAVING MIN(sal) > 1000 AND MAX(sal) < 5000;

