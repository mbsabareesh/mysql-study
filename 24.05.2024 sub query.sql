use tech;
select * from emp;

/* display the employee who were earning more than 1000 */
select ename,sal from emp 
where sal> 1000;



/* display the employee who were earning more than miller */
select ename,sal from emp where sal> (select sal from emp where ename="miller");
select ename,sal from emp where sal<(select sal from emp where ename="miller"); 
select ename,sal from emp where sal>(select sal from emp where ename="miller");

select ename, sal from emp 
where sal> (select sal from emp
                    where ename="miller"); 
                    
                    
                    
/* display name,deptno,hiredate of employee who were hired after miller */
select ename,deptno,hierdate from emp where hierdate>(select hierdate from emp where ename='miller');
select ename,deptno,hierdate from emp where hierdate >(select hierdate from emp where ename="miller");

select ename,deptno from emp where hierdate<(select hierdate from emp where ename="miller");

select ename,deptno,hierdate from emp
where hierdate> (select hierdate from emp where ename="miller");

/* display the details employee who were working in the same designation of adans */
select ename,job from emp where job=(select job from emp where ename='adams');
select ename,job from emp where job=(select job from emp where ename="james");
select ename,job,deptno from emp where job=(select job from emp where ename='adams');

select ename,job from emp where job=(select job from emp where ename="adams");

select * from emp where job=(select job from emp where ename="adams");


/* display name,sal, deptno of the employee if the earn more than 2000 and work is same dept as james */

select ename,sal,deptno from emp where sal>2000 and deptno=(select deptno from emp where ename='james');
select ename,sal deptno from emp where sal>2000 and deptno=(select deptno from emp where ename="james");

/* display employee who were earning more than smith and less than king */

select ename,sal from emp where sal>(select sal from emp where ename="smith") and sal< (select sal from emp where ename="king");
select ename,sal from emp where sal>(select sal from emp where ename="smith") and sal< ( select sal from emp where ename="king");


		#or use between method
        
select ename, sal from emp 
where sal between (select sal from emp where ename="smith") and (select sal from emp where ename="king");
select ename ,sal from emp where sal between (select sal from emp where ename="smith") and (select sal from emp where ename="king");

select * from emp;
/* display the name,sal and deptno of the employees if the employee is earning commesion in dept 20 and earning sal more than scott */
select ename,sal,deptno from emp where comm is not null and deptno=20 and sal>(select sal from emp where ename="scott");
select ename,sal,deptno from emp where comm is not null and deptno=20 and sal<(select sal from emp where ename="scott");

/* display name and hiredate of the employee who name end with s and hired date james */

select ename,hierdate from emp where ename like"%s" and hierdate >(select  hierdate from emp where ename="james");
select ename,hierdate from emp where ename like"s%" and hierdate>(select hierdate from emp where ename="james");



# 27.05.2024 monday 

select * from emp;

/* display name of the employee working in the same dept as james and earnoing salary more than adams and working in the
 same job role as miller and hering after martian */
 select ename from emp where deptno=(select deptno from emp where ename="james") and sal<(select sal from emp where ename="adams") 
 and job=(select job from emp where ename="miller") and hierdate<(select hierdate from emp where ename="martian");
 
 select ename from emp where deptno=(select deptno from emp where ename="james")and sal>(select sal from emp where ename="adams") and 
 job=(select job from emp where ename="miller") and
 hierdate>(select hierdate from emp where ename="martin");
 
 /* display all details of the employee working as salesman in the dept 20 and earning commision more than smith and hired after king */
 
 select * from emp where job="salesman" and deptno=20 and 
 comm > (select comm from emp where ename='smith') and
 hierdate>(select hierdate from emp where ename='king');
 select * from emp where job="salesmam" and deptno=20 and comm>(select comm from emp where ename="smith") and
 hierdate>(select hierdate from emp where ename="king");
 
 /* display number of employee earning more than smith and less than marthin */
 
 select count(*)from emp where sal>(select sal from emp where ename='smith') and
 sal < (select sal from emp where ename='martin');
 

 
 /* display all details of the employee workinh manager */
 
select *from emp where job='manager';

# special operator question;

select * from emp where hierdate like "%-02-%";




/* task*/

use tech;
create table DEPT(deptno int primary key,
dname varchar(100),
loc varchar(100));
insert into DEPT(deptno,dname,loc)values
(10,"ACCOUNTING","NEW YORK"),
(20,"RESEARCH","DALLAS"),
(30,"SALES","CHICAGO"),
(40,"OPERATIONS","BOSTON");
select * from DEPT;

select dname,loc from dept;

/* what dname of the employee whoese name is miller */

select dname from DEPT where deptno=(select deptno from emp where ename='miller');



/*28.05.2024 class*/

# what ename,sal,and designation of the employee whos annual salary is more than smith and less than king

select ename,sal,job from emp where sal*12> (select sal*12 from emp where ename="smith")
and sal*12<(select sal*12 from emp where ename="king");

/**** important question ****/

/*whqtd location adams */
select * from emp;
select * from dept;

select loc from DEPT where deptno=(select deptno from emp where ename="adams");
select loc from dept where deptno=(select deptno from emp where ename="adams");

/* whqtd name sof the employee workinh=g in location l2 */

select ename from emp where deptno=(select deptno from dept where loc="NEW YORK");
select ename from emp where deptno=(select deptno from dept where loc="new york");

/* WHQTD number of employee working in dept D3 mean research*/

select count(*) from emp where deptno=(select deptno from dept where dname="RESEARCH");

/* WHQTD ename,sal of the all the employee earning more than scott and working in dept 20 */
select ename,sal from emp where deptno=20 and sal>(select sal from emp where ename="SCOTT");

/* WHQTD all the details of the employee working as a manager in the dept accounting */

select * from emp where job="mamager" and deptno=(select deptno from dept where dname='ACCOUNTING');

select * from emp where job="manager" and deptno=(select deptno from dept where deptno=10);

/* all the details of the employee working in the same designation as miller and work in loc new york */
select * from emp where job=(select job from emp where ename="miller") and deptno=(select deptno from dept where loc="NEW YORK");

/* WHQT number of employee working as a clerk in the same deptno as smith and
 earning more than king hired after martin in the location boston */
 
 select count(*) from emp where job="clerk" and deptno =(select deptno from dept where ename="smith") and
sal>(select sal from emp where ename="king")and hierdate>(select hierdate from emp where ename="martin")and 
deptno=(select deptno from dept where loc="BOSTON");

/*WHQTD maximum sal given to a person working in dallas */
select max(sal) from emp where deptno=(select deptno from dept where loc="DALLAS");
select min(sal) from emp where deptno=(select deptno from dept where loc="dallas");




# ASSIGNMENT DATE OF 27.05.2024 


select * from emp;
select * from dept;

/*1 WHQTD NAME OF THE EMPLOYEE EARNING MORE THAN ADAMS */
select ename from emp where sal>(select sal from emp where ename="adams");

/* 2 WHQTD NAME AND SAL OFTHE EMPLOYEES EARNING LESS THAN KING */
select ename,sal from emp where sal<(select sal from emp where ename="KING");

/* 3 WHQTD NAME AND DEPTNO OF THE EMPLOYEES IF THEY ARE WORKING IN THE SAME DEPT AS JONES */
select ename,deptno from emp where deptno=(select deptno from emp where deptno="JONES");
select ename,deptno from emp where deptno=(select deptno from emp where deptno="king");
select ename,deptno from emp where deptno=(select deptno from emp where deptno="king");

/*4 WHQTD NAME AND JOB OF ALL THE EMPLOYEE WORKING IN THE SAME DESIGNATION AS JAMES */
select*from emp;
select ename,job from emp where job=(select job from emp where job="JAMES");
select ename,job from emp where job=(select job from emp where job="james");

/*5 WHQTD EMPNO AND ENAME ALONG WITH ANNUAL SALARY OF THE EMPLOYEE 
IF THEIR ANNUAL SALARY IS GREATER THAN WARDS ANNUAL SALARY */
select empno,ename,sal*12 from emp where sal*12> (select sal*12 from emp where ename="WARDS");
select empno,ename,sal*12 from emp where sal*12>(select sal*12 from emp where ename="wards");

SELECT EMPNO, ENAME, SAL * 12 AS ANNUAL_SALARY
FROM EMP
WHERE SAL * 12 > (
    SELECT SAL * 12
    FROM EMP
    WHERE ENAME = 'WARD'
);

select * from emp;

/*6 WHQTD NAME AND HIERDATE OF THE EMPLOYEES IF THEY ARE HIERD BEFORE SCOTT */
select ename,hierdate from emp where hierdate<(select hierdate from emp where ename="SCOTT");

/* 7 WHQTD NAME AND HIERDATE OFTHE EMPLOYEE IF THEY ARE HIERD AFTER THE PRESIDENT */
select ename,hierdate from emp where hierdate>(select hierdate from emp where job="PRESIDENT");

/* 8 WHQTD NAME AND SAL OF THE EMPLOYEE IF THEY ARE EARNING SAL LESS THAN EMPLOYEE WHOS EMPNO IS 7839 */
select ename,sal from emp where sal>(select sal from emp where empno="7839");

/* 9 WHQTD ALL THE DETAILS OF THE EMPLOYEES IF THE EMPLOYEE ARE HIERD BEFORE MILLER */
select * from emp where hierdate<=(select hierdate from emp where ename="MILLER");

/* 11 WHQTD ENAME AND EMPNO OF THE EMPLOYEE IF EMPLOYEE WHO ARE EARNING MORE THAN MILLER BUT LESS THAN ALLEN */
select ename,empno from emp where sal>(select sal from emp where ename="miller")and sal<(select sal from emp where ename="ALLEN");

/*12 WHQTD ALL THE DETAILS OF THE EMPLOYEE WORKING IN DEPT 20 AND WORKING IN THE SAME DESIGNATION AS SMITH */
select*from emp;
select * from emp where deptno=20 and job=(select job from emp where ename="smith");

/*13 WHQTD ALL THE DETAILS OF THE EMPLOYEE WORKING IN THE SAME DEPT AS TURNER */
select* from emp where deptno=(select deptno from emp where ename="turner");

/*14 WHQTD NAME AND HIERDATE OF THE EMPLOYEE HIERD AFTER 1980 AND BEFORE KING */
select ename,hierdate from emp where hierdate>'1980-01-01' and hierdate<(select hierdate from emp where ename<="king");

SELECT Name, HireDate
FROM Employees
WHERE HireDate > '1980-01-01' 
AND HireDate < (
    SELECT MIN(StartDate)
    FROM Reigns
    WHERE King LIKE 'Min%'
);

/*15 WHQTD NAME AND SAL ALONG WITH ANNUAL SAL FOR ALL EMPLOYEES WHOSE SAL IS LESS THAN BLAKE AND MORE THEN 35000 */
select * from emp;
select ename,sal*12 from emp where ename>(select ename from emp where ename="BLAKE") and sal<(select sal from emp where sal=35000);
select ename,sal*12 from emp where sal>35000 and sal<(select sal from emp where ename="blake");

SELECT Name, Salary, Salary * 12 AS AnnualSalary
FROM Employees
WHERE Salary > 35000 
AND Salary < (
    SELECT Salary
    FROM Employees
    WHERE Name = 'Blake'
)

/*16 WHQTD ALL THE DETAILS OF EMPLOYEE WHO EARN MORE THAN SCOTT BUT LESS THAN KING */

select *from emp where sal>(select sal from emp where ename='scott') and sal<(select sal from emp where ename='KING');

select*from emp where sal>(select sal from emp where ename="scott") and sal<(select sal from emp where ename="king");


select*from emp;

/*17 WHQTD NAME OF THE EMPLOYEE WHOS NAME START WITH A AND WORKS IN THE SAME DEPT AS BLAKE */
select ename from emp where ename like'a%'and deptno=(select deptno from emp where ename='BLAKE');

/* 18 WHQTD NAME AND COMM IF EMPLOYEE EARN COMMISSION AND WORK IN THE SAME DESIGNATION AS SMITH */
select ename,comm from emp where job=(select job from emp where ename="SMITH");

SELECT Name, Commission
FROM Employees
WHERE Commission IS NOT NULL
AND Designation = (
    SELECT Designation
    FROM Employees
    WHERE Name = 'Smith'
);

/* 19 WHQTD DETAILS OF ALL THE EMPLOYEES WORKING AS CLERK IN THE SAME DEPT AS TURNER */
select * from emp;
select * from emp where job='clerk'and deptno=(select job from emp where ename='TURNER');

/* 20 WHQTD ENAME,SAL AND DESIGNATION OF THE EMPLOYEE WHOS ANNUAL SALARY IS MORE THAN SMITH AND LESS THAN KING */
select ename,sal,job from emp where sal*12>(select sal*12 from emp where ename='smith')and 
sal*12<(select sal*12 from emp where ename='king');



/*ASSIGNEMENT DATE OF 28.05.2024 */

/* 21 wHQTD DNAME OF THE EMPLOYEES WHO NAME IS SMITH */
select * from emp;
select * from dept;
select dname from dept where deptno=(select deptno from emp where ename="smith");


/* 22 WHQTD dname and loc of the employee who ename is king */

select dname,loc from dept where deptno=(select deptno from emp where ename="king");

/* 23 WHQTD LOC OF THE EMP WHO EMPLOYEE NUMBER IS 7902 */
select loc from dept where deptno=(select deptno from emp where empno=7902);

/* 24 WHQTD DNAME AND LOC ALONG WITH DEPTNO OF THE EMPLOYEE WHOS NAME END WITH R */

Select deptno,dname,loc from dept where deptno=(
            select deptno from emp where ename like "%R");
select * from dept;

SELECT D.DEPTNO, D.DNAME, D.LOC
FROM DEPT D
WHERE D.DEPTNO = (
    SELECT E.DEPTNO
    FROM EMP E
    WHERE E.ENAME LIKE '%R'
);


/* 25 WHQTD DNAME OF THE EMPLOYEE WHOS DESIGNATION IS PRESIDENT */

select dname from dept where deptno=(select deptno from emp where job="president");

/* 26 WHQTD NAME OF THE EMPLOYEE WORKING IN ACCOUNTING DEPARTMENT */
select ename from emp where deptno=(select deptno from dept where dname="ACCOUNTING");

/*27 WHQTD ENAME AND SALARIES OF THE EMPLOYEE WHO ARE WORKING IN THE LOCATION CHICAGO */
select ename,sal from emp where deptno=(select deptno FROM DEPT where loc="CHICAGO");

/*28 WHQTD DETAILS OF THE EMPLOYEE WORKING IS SALES */
select * from sales;
select * from dept;
select * from emp where deptno=(select deptno from dept where dname="SALES");

/* 29 WHQTD DETAILS OF THE EMPLOYEE ALONG WITH ANNUAL SALARY IF EMPLOYEES ARE WORKING IN NEW YORK */
select * ,sal*12 from emp where deptno=(select deptno from dept where loc="new york");

/* 30 WHQTD NAMES OF EMPLOYEE WORKING IN OPERATIONS DEPARTMENT */
select ename from emp where deptno=(select deptno from dept where dname="OPERATION");


# 29.05.2024 ASSIGNMENT  give for 30.05.2024 in class



/*31 WHQTD NAME OF THE EMPLOYEE EARNING MORE THAN SCOTT IN ACCOUNT DEPT */
select ename from emp where sal>(select sal from emp where ename='scott') and deptno=(select deptno from dept where dname="accounting");
select*from emp;
select*from dept;

# 32 WHQTD DETAIL OF THE EMPLOYEE WORKING MANAGER IN THE LOCATION CHICAGO 
select * from emp where job="manager" and deptno=(select deptno from dept where loc ='chicago');


#33.WAQTD NAME AND SAL OF THE EMPLOYEES EARNING MORE THAN KING IN THE DEPT ACCOUNTING
select ename,sal from emp where sal>(select sal from emp where ename="king") and deptno=(select deptno from dept where dname="accounting");

#34.WAQTD DETAILS OF THE EMPLOYEES WORKING AS SALESMAN IN THE DEPARTEMENT SALES
select * from emp where job="salesman" and deptno=(select deptno from dept where dname="sales");
select * from emp where job="salesman" and deptno=(select deptno from dept where dname="sales");

#35.WAQTD NAME, SAL, JOB, HIREDATE OF THE EMPLOYEES WORKING IN OPERATIONS DEPARTMENT AND HIRED BEFORE KING
select ename,sal,job,hierdate from emp where deptno=(select deptno from dept where dname="operations")
and hierdate <(select hierdate from emp where ename="king");

#36.DISPLAY ALL THE EMLOYEES WHOSE DEPARTMET NAMES ENDING 'S'
select * from emp where deptno in(select deptno from dept where dname like "%S");

#37.WAQTD DNAME OF THE EMPLOYEES WHOS NAMES HAS CHARACTER ‘A’ IN IT
select dname from dept where deptno in(select deptno from emp where ename like "%A%");

#38.WAQTD DNAME AND LOC OF THE EMPLOYEES WHOS SALARY IS RUPEES 800
select dname,loc from dept where deptno=(select deptno from emp where sal=800);

#39.WAQTD DNAME OF THE EMPLOYEES WHO EARN COMISSION
select dname from dept where deptno in(select deptno from emp where comm is not null);

#40.WAQTD LOC OF THE EMPLOYEES IF THEY EARN COMISSION IN DEPT 40
select loc from dept where deptno in(select deptno from emp where comm is not null) and deptno=40;






# 30.05.2024 class
use tech;
# 1 what max salary of employee.
select max(sal)from emp;

#2 what name of the employee getting maximum salary

select ename from emp where sal=(select max(sal) from emp);
select ename from emp where sal=(select max(sal) from emp);

#3 name and salary earned by the employee getting minimum salary.

select ename,sal from emp where sal=(select min(sal) from emp);



#ASSIGNEMENT on max min

#41 name of the employee  earning maximum salary.
select ename from emp where sal=(select max(sal) from emp);

#42 name of the employee earning minimum salary.
select ename from emp where sal=(select min(sal) from emp);

#43 name and hierdate of the employee hired before all the employees(first hired)
select ename,hierdate from emp where hierdate=(select min(hierdate) from emp);

#44 name and hiredate of the employee hired at the last.
select ename,hierdate from emp where hierdate=(select max(hierdate) from emp);

#45 name comm of the employee who earn min commision.
select ename,comm from emp where comm=(select min(comm) from emp);
select * from emp;
select ename, sal from emp where sal=(select min(sal) from emp);

#46 name sal commision of the employee earning maximum commision.
select ename,sal,comm from emp where comm=(select max(comm) from emp);
select ename,sal,comm from emp where comm=(select min(comm) from emp);

#47 details of the employee who has greatest empno.
select*from emp;
select*from emp where empno=(select max(empno) from emp);
select * from emp where empno=(select min(empno) from emp);

#48 details of the employee having least hiredate.
select * from emp where hierdate=(select min(hierdate) from emp);

#49 detail of the employee earning least annual salary.
select*from emp where sal*12=(select min(sal*12) from emp);

#50 name,annual salary of the employee if their annual salary is more than all sal.
select ename,sal*12 from emp where sal*12=(select max(sal*12) from emp);





/* TYPE OF SUB QUERY */
use tech;

/* display dnames of allen and smith */
select  * from dept;
select * from emp;
select dname from dept where deptno in
(select deptno from emp where ename in("allen","smith"));

select dname from dept where deptno in (select deptno from emp where ename in("scott"));

/* rought*/
# sub query operator 

/* dispaly employee who is earning more than dept employee */

select ename from emp where sal>all(select max(sal) from emp where deptno=20);

/* display name of the employee if ythe employee earn less than the employee working as salesman */

select ename from emp where sal<all(select min(sal) from emp where job in("salesman"));

select ename from emp where sal<all(select min(sal) from emp where job="salesman");


/* name of the employee if the employee earn less than at least a salesman, */
select ename from emp where sal<any(select sal from emp where job in ("salesman"));

/* name of the employee earning more than adams */
select ename from emp where sal>all(select sal from emp where ename in ("adams"));


# ASSIGNEMENT ON TYPE OF SUB QUERY

 
#WHQTD NAME OF THE EMPLOYEE EARNING SALARY MORE THAN THE SALESMAN.
select ename from emp where sal>all(select sal from emp where job in ("salesman"));

# 52 WHQTD DETAILS OF THE EMPLOYEE HIRED AFTER ALL THE CLERKS.
select ename from emp where hierdate>all(select hierdate from emp where job in ("clerks"));

# 53 WHQTD NAME AND SALARY FOR ALL THE EMPLOYEE IF THEY ARE EARNING LESS THAN ATLEST A MANAGER.
select ename,sal from emp where sal<all(select min(sal) from emp where job in ("manager"));

# 54 WHQTD NAME AND HIERDATE OF EMPLOYEE HIRED BEFORE ALL THE MANAGER 
select ename,hierdate from emp where hierdate<all(select min(hierdate) from emp where job in ("manager"));

#55 WHQTD NAMES OF THE EMPLOYEE HIREDATE AFETR ALL THE MANAGER AND EARNING SALARY MORE THAN ALL CLERKS.
select ename from emp where hierdate>all(select hierdate from emp where job ="manager" and 
sal< all(select sal from emp where job = "clerks"));

SELECT ename
FROM emp
WHERE hierdate > ALL (
    SELECT hierdate
    FROM emp
    WHERE job = 'MANAGER'
)
AND sal > ALL (
    SELECT sal
    FROM emp
    WHERE job = 'CLERK'
);

#56c WAQTD DETAILS OF THE EMPLOYEE WORKING AS CLERK AND HIERD BEFORE ATLEST A SALESMAN 

select * from emp where job ="clerk" and hierdate<all(select min(hierdate) from emp where job in ("salesman"));

#57 WHQTD DETAILS OF THE EMPLOYEE WORKING IN ACCOUNT OR SALES DEPT
SELECT * FROM EMP;
SELECT * FROM DEPT;
select * from emp where deptno= any (select deptno from dept where dname="accounting" and dname="sales");

#58 WAQTD DEPERTMENT NAME OF THE EMPLOYEE WITH NAME SMITH,KING AND MILLER.
select*from emp where deptno =ANY (select deptno from dept where ename in ("smith","king","miller"));

#59 WAQTD DEATILS OF EMPLOYEE WORKING NEWYORK OR CHICAGO
select * from emp where deptno=any(select deptno from dept where loc in("new york","chicago"));

#60 WHQDT EMP NAME IF EMPLOYEE ARE HIRED AFTER ALL THE EMPLOYEES OF DEPT 10
 select ename from emp where hierdate>all(select hierdate from emp where deptno=10);
 
 
 # 31.05.2024 class
 
 /* NESTED SUB QUERY */
 #1 what max sal given to an emp
 
 select max(sal) from emp;
 
 #2 WAQTD SECOND MAX SALARY GIVEN TO AN EXAMPLE .
 select max(sal) from emp where sal<(select max(sal) from emp);
 select min(sal) from emp where sal>(select min(sal) from emp);
 select max(sal) from emp where sal<(select max(sal) from emp);
 
 # WAQTD 3 MAX SALARY .
 select max(sal) from emp where sal<(select max(sal) from emp where sal<(select max(sal) from emp));
 select max(sal) from emp where sal<(select max(sal) from emp where sal<(select max(sal) from emp));
 
 # WAQTD 3 MIN SALARY BUT MAM SAY USE 4 MIN SAL
 select min(sal) from emp  where sal>(select min(sal) from emp where sal>(select min(sal)from emp));
 
 #fourth min salary of the employee.
 select min(sal) from emp where sal>(select min(sal) from emp where sal>(select min(sal)from emp where sal>(select min(sal) from emp )));
 
 # 6 WAQTD DEPT NAMEOF THE EMPLOYEE GETTING 2 MIN SALARY.
 select*from emp;
 select dname from dept where deptno in(select deptno from emp where sal=(select min(sal) from emp where sal>(select min(sal) from emp))); 
 
 ------------------------------------------------------------------------------------------------------------------------------------------
 #EMPLOYEE AND MANAGER RELATION:

#1 waqtd name of allen manager
select * from emp;
select ename from emp where empno=(select mgr from emp where ename="allen");
select ename from emp where empno=(select mgr from emp where ename="adams");
#2 WAQTD NAME OF SMITH  MANAGER
select ename from emp where empno=(select mgr from emp where ename="smith");

#3 WAQTD NAME OF SMITH MANAGERS MANAGER
select * from emp;
select ename from emp where empno=(select mgr from emp where empno=(select mgr from emp where ename="miller"));

select ename from emp where empno=(select mgr from emp where empno=(select mgr from emp where ename="ward"));

select ename from emp where empno=(select mgr from emp where empno=(select mgr from emp where ename="smith"));
select ename from emp where empno=(select mgr from emp where empno=(select mgr from emp where ename="smith"));


#4 WAQTD DNAME OF BLAKE MANAGER 
select * from emp;
select dname from dept where deptno=(select deptno from emp where empno=(select mgr from emp where ename="blake"));
select dname from dept where deptno=(select deptno from emp where empno=(select mgr from emp where ename="blake"));




select dname from dept where deptno=(select deptno from emp where empno=(select mgr from emp where ename="blake"));


select dname from dept where deptno=(select deptno from emp where empno=(select mgr from emp where ename="blake"));
select dname from dept where deptno=(select deptno from emp where empno=(select mgr from emp where ename="blake"));

# WAQTD LOCATION OF ADAMS MANAGERS MANAGER.
select loc from dept where deptno=(select deptno from emp where empno=(select mgr from emp where ename="adams"));
select loc from dept where deptno=(select deptno from emp where empno=(select mgr from emp where ename="adams"));
select * from dept;
select * from emp;
select loc from dept where deptno=(select deptno from emp where empno=(select mgr from emp where ename="adams"));
select loc from dept where deptno=(select deptno from emp where empno=(select mgr from emp where empno=(select mgr from emp where ename="adams")));

#WAQTD NAMEOF THE EMPLOYEE REPORTING TO KING.

select ename from emp where mgr=(select empno from emp where ename="king");
select ename from emp where mgr=(select empno from emp where ename="king");

use tech;

/* WAQTD NAME AND SALARY GIVEN TO THE EMPLOYEE REPORTING TO JAMES */
select ename,sal from emp where mgr=(select empno from emp where ename="james");

/* WAQTD DNAME OF THE EMPLOYEE REPORTING TO PRESIDENT */
select dname from dept where deptno in(select deptno from emp where MGR=(SELECT EMPNO FROM EMP WHERE JOB="president"));
select * from dept;
select * from emp;

/* WAQTD DEPARTMENT DETAILS OF THE EMPLOYEE WHO ARE REPORTING TO MILLER */
select deptno from emp where deptno=(select deptno from emp where mgr=(select empno from emp where ename="miller"));


                    