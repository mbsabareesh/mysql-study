use tech;
select * from emp;
select * from dept;
select ename,dname from emp inner join dept on emp.deptno=dept.deptno;

/* WAQTD ENAME AND LOC FOR ALL EMPLOYEE WORKING AS MANAGERA */
select ename,loc 
from emp inner join dept on emp.deptno=dept.deptno 
where job="manager";

select ename,loc from emp join dept on emp.deptno=dept.deptno where job="manager";


/* WAQTD ENAME,SALARY AMD DNAME OF THE EMPLOYEE WORKING AS CLERK IN DEPT 20 WITH A SALARY OF MORE THAN 1800 */
select * from dept;
select emp.ename, emp.sal, dept.dname from emp join dept on
emp.deptno = dept.deptno where
emp.job = "Clerk" and
emp.deptno = 20 and
emp.sal < 1800;
select emp.ename,emp.sal,dept.dname from emp join dept on
emp.deptno = dept.deptno where
emp.job="clerk";

/* WAQTD ENAME DEPTNO,DNAME ALD LOC OF THE EMPLOYEE EARNING MORE THAN 2000 IN NEW YORK */
select emp.ename,emp.deptno,dept.dname,dept.loc from emp 
join dept on emp.deptno = dept.deptno where sal>2000 and loc="new york";

/*NAME OF THE EMPLOYEE AND HIS LOCATION OF ALL THE EMPLOYEE */
select ename,loc from emp inner join dept on emp.deptno = dept.deptno;

SELECT emp.ename, dept.loc
FROM emp
INNER JOIN dept ON emp.deptno = dept.deptno;

/* WAQTD DNAME AND SALARY FOR ALL THE EMPLOYEE WORKING IN ACCOUNTING.*/
select dept.dname,emp.sal from dept inner join emp on dept.deptno = emp.deptno where dname="accounting";

SELECT dept.dname, emp.sal 
FROM dept 
INNER JOIN emp ON dept.deptno = emp.deptno 
WHERE dept.dname = "ACCOUNTING";

/*WAQTD DNAME AND ANNUAL SALARY FOR ALL EMPLOYEES WHOS SALARY IS MORE THAN 2340 */
select dname,sal*12 from dept inner join emp on dept.deptno = emp.deptno where sal<2340;

select dname,sal*12 from dept inner join emp on dept.deptno = emp.deptno where sal>2340;

/* WAQTD ENAME AND DNAME FOR EMPLOYEE HAVING CHARACTER 'A' IN THE DNAME */
select ename,dname from dept inner join emp on dept.deptno =emp.deptno where dname like'%a%'; 
select ename,dname from dept inner join emp on dept.deptno =emp.deptno where dname like'a%'; 
select ename,dname from dept inner join emp on dept.deptno =emp.deptno where dname like'%a'; 

/* 5 WAQTD ENAME AND DNAME FOR ALL THE EMPLOYEE WORKING AS SALESMAN */
select ename,dname from emp inner join dept on dept.deptno = emp.deptno where job="salesman";

/* 6 WAQTD DNAME AND JOB FOR ALL THE EMPLOYEES WHOS JOB AND DNAME START WITH CHARRACTER 'S'*/
select dname,job ,ename from dept inner join emp on dept.deptno = emp.deptno where dname like "S%" and job like"s%";

/* 7 WAQTD DNAME AND MGR NO FOR EMPLOYEES REPORTING TO 7839*/
select ename,dname,mgr from dept inner join emp on dept.deptno = emp.deptno where mgr=7839;

/* 8 WAQTD DNAME AND HIREDATE FOR EMPLOYEE HIRED AFETR 83 INTO ACCOUNTING OR RESEARCH DEPT */
select dname,hierdate from dept inner join emp on dept.deptno = emp.deptno where hierdate> "1983-12-31" and (dname="accounting" or dname="research");

select * from emp;
select dname,hierdate from dept inner join emp on dept.deptno = emp.deptno where hierdate > 01-01-1982 and (dname="accounting" or dname="research");

/* WAQTD ENAME AND DNAME OF THE EMPLOYEE WHO ARE GETTING COMM IN DEPT 10 OR 30 */
select ename,dname from emp inner join dept on dept.deptno = emp.deptno where COMM is not null and (emp.deptno=10 or emp.deptno=30);

/* 10 WAQTD DNAME AND EMPLOYEE FOR ALL THE EMPLOYEE WHO EMPNO ARE (7839,7902) AND  ARE WORKING IN LOC NEW YORK */
select dname,ename from emp inner join dept on dept.deptno = emp.deptno where ( emp.empno=7839 or emp.empno=7902) and loc="newyork";

SELECT dept.dname, emp.ename
FROM emp
JOIN dept ON emp.deptno = dept.deptno
WHERE (emp.empno = 7839 OR emp.empno = 7902)
AND loc = 'NEW YORK';

# 04.06.2024 class 

# left outer join:
# it will give matched record along unmatvhed record from left table:
 
 # RIGNT OUTER JOIN 
 # SELECT COL
 /* FROM TABLE RIGHT OUTER JOIN TABLE
 ON <JOIN> */

 /* WAQTD NAME AND DNAME OF ALL THE EMPLOYEE EVEN YHOUGHT THE EMPLOYEE DO NOT WORK IN ANY DEPT */
 
 select ename,dname from emp left outer join dept on emp.deptno = dept.deptno;
 
 /* WAQTD NAME AND DNAME OF ALL THE EMPLOTEE EVEN THOUGHT THE THREE ARE NO EMPLOYEE IN A DEPT */
 select ename,dname from emp right outer join dept on emp.deptno= dept.deptno;
 
 /* WAQTD NAME AND DNAME OF ALL THE EMPLOYEE SAN DEPTS EVEN THOUGHT THE EMPLOYEE DO NOT WORK IN ANY DEPT AND A DEPT HAVING NO EMPLOTEE */
  (select ename,dname from emp left outer join dept on emp.deptno = dept.deptno) union
  ( select ename,dname from emp right outer join dept on emp.deptno= dept.deptno);
  
  /* OUTER JOIN ABS */
  
  -- waqtd names and dnames of all emp even through the emp do not work in any dept
select ename,dname from emp left outer join dept on emp.deptno = dept.deptno ;

 -- waqtd names and dnames of all the emp even through there are no emp in a dept
select ename,dname from emp right outer join dept on emp.deptno = dept.deptno;

-- waqtd names and dnames of all emp and dept even through the emp do not work in any dept and a dept having no emp
select ename,dname from emp left outer join dept on emp.deptno = dept.deptno union select ename,dname from emp right outer join dept on emp.deptno = dept.deptno;

 
 
 
 
 
 
 
 




 













