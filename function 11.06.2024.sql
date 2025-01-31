# 11.06.2024 class
FUNCTION
# single row function

# text function
1. concat()
2. ucase()
3. upper()
4. mid()
5. substring()
6. length()








use tech;
select ename,job from emp;
smith :- clerk

select concat(ename,":-",job) from emp;

sabareesh boopathi

select concat("sabareesh ","boopathi") from dual;

# print hi good morning and their names who were working as manager 
select concat("hi good morning ",ename) from emp where job="manager";

sabareesh
select ucase("sabareesh");
select upper("sabareesh");

s a b a r e e s h 
1 2 3 4 5 6 7 8 9 
select mid('sabareesh',4,3);
select substring('sabareesh',4,3);

select length("sabareesh");

# NUMERIC FUNCTIONS

ABS
CEIL
ROUND
FLOOR
POWER
MOD

# ABS
select ABS(-25);
select ABS(-30);

# CEIL,  ROUND , FLOOR
3.8
select ceil(3.8);
select floor(3.8);
select round(3.8);

# POWER 
select power(4,2);
select power(4,4);
select power(8,2);
select power(9,8);

select power( sal,2) from emp;

# MOD 
select mod(25,7);
select mod(25,5);
select sal from emp where mod(empno,2)=0;

# DATE FUNCTION
NOW
CURDATE
CURTIME
DATE_ADD
DATEDIFF
DAYNAME

#NOW 
select now();

#curdate
select curdate();

#curtime
select curtime();

#date add
select date_add(curdate(),interval 5 month);

# datediff
select datediff(curdate(),"2024-01-01");

# dayname
select dayname(curdate());


SABAR write query to print 1st half name
EESH write query to print 2nd half name