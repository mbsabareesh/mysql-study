create database company;
use company;


CREATE TABLE pm_company_master_name (
    com_id INT PRIMARY KEY,
    com_company_name VARCHAR(100)
);


SELECT * FROM pm_company_master_name;

insert into pm_company_master_name value(1,"MAGIVA");
insert into pm_company_master_name value(2,"dell");


CREATE TABLE pm_employee_master_table (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    emp_active_id INT,
    emp_com_id INT,
    FOREIGN KEY (emp_com_id) REFERENCES pm_company_master_name(com_id) 
);

insert into pm_employee_master_table (emp_id,emp_name,emp_active_id,emp_com_id)value
(1,"sabareesh",1,1);
insert into pm_employee_master_table (emp_id,emp_name,emp_active_id,emp_com_id)value(2,"raja",2,2);



SELECT * FROM pm_employee_master_table;


CREATE TABLE pm_user_master_table (
    user_id INT PRIMARY KEY,
    user_emp_id INT,
    user_company_id INT,
    user_com_login_id VARCHAR(100),
    user_login_id VARCHAR(100),
    user_role VARCHAR(50),
    user_password VARCHAR(100),
    FOREIGN KEY (user_emp_id) REFERENCES pm_employee_master_table(emp_id),  
    FOREIGN KEY (user_company_id) REFERENCES pm_company_master_name(com_id) 
);

ALTER TABLE pm_user_master_table CHANGE user_com_login_id user_comp_login_id VARCHAR(100);


insert into pm_user_master_table value(1,1,1,"123magiva","saba123","js developer","123-magive");
insert into pm_user_master_table value(2,2,2,"456magiva","raja456","web developer","567-magiva");

UPDATE pm_user_master_table
SET user_comp_login_id = 'sab123magiva'
WHERE user_comp_login_id = '1';


SELECT * FROM pm_user_master_table;



select pm_company_master_name.com_company_name, emp_id, emp_name, emp_active_id, emp_com_id, user_id, user_emp_id, user_company_id,
user_com_login_id, user_login_id, user_role, user_password 
from pm_user_master_table umt
join pm_employee_master_table emt on umt.user_emp_id = emt.emp_id
join pm_company_master_name on emt.emp_com_id = pm_company_master_name.com_id
where emt.emp_name = 'sabareesh';


SELECT (SELECT cmt.com_company_name 
	FROM pm_company_master_name cmt 
	WHERE cmt.com_id = emt.emp_com_id),     emt.emp_id, 
    emt.emp_name, emt.emp_active_id, emt.emp_com_id,    umt.user_id, umt.user_emp_id, umt.user_company_id, umt.user_com_login_id, 
    umt.user_login_id, umt.user_role, umt.user_password
    FROM pm_user_master_table umt
    JOIN pm_employee_master_table emt ON umt.user_emp_id = emt.emp_id
    WHERE umt.user_role = "web developer";


select user_id , user_emp_id , user_company_id , user_comp_login_id , user_login_id , user_role 
from pm_user_master_table where user_emp_id = 1;

select tab1.* ,emt.emp_name from (select user_id , user_emp_id , user_company_id , user_comp_login_id , user_login_id , user_role 
from pm_user_master_table where user_emp_id = 1) as tab1 left join pm_employee_master_table as emt on tab1.user_emp_id=emt.emp_id;

select tab2.*,cmn.com_company_name from(select user_id , user_emp_id , user_company_id , user_comp_login_id , user_login_id , user_role 
from pm_user_master_table where user_emp_id = 1) as tab2 left join pm_company_master_name as cmn on tab2.user_company_id=cmn.com_id;

select tab3.*,cmn.com_company_name from(select emp_id, emp_name, emp_active_id, emp_com_id from pm_employee_master_table
 where emp_id = 2) as tab3 right join pm_company_master_name as cmn on tab3.emp_id=cmn.com_id;
 
 select tab3.*,cmn.com_company_name from(select emp_id, emp_name, emp_active_id, emp_com_id from pm_employee_master_table
 where emp_id = 2) as tab3 inner join pm_company_master_name as cmn on tab3.emp_id=cmn.com_id;
 
 select tab4.*,umt.user_role from(select com_id,com_company_name from pm_company_master_name 
 where com_id =1) as tab4 join pm_user_master_table as umt on tab4.com_id=umt.user_id;
 
 select tab2.*,cmn.com_company_name from(select tab1.* ,emt.emp_name from (select user_id , user_emp_id , user_company_id ,
user_comp_login_id , user_login_id ,
user_role from pm_user_master_table where user_emp_id = 1) as tab1 left join pm_employee_master_table as emt
on tab1.user_emp_id=emt.emp_id) as tab2 join pm_company_master_name as cmn on tab2.user_company_id=cmn.com_id;

select tab2.*, cmn.com_company_name from(select tab1.*,emt.emp_name from(select user_id,user_emp_id,user_company_id,user_comp_login_id,
user_login_id,user_role from pm_user_master_table where user_emp_id=1) as tab1  join pm_employee_master_table as emt
on tab1.user_emp_id= emt.emp_id=1) as tab2 join pm_company_master_name as cmn on tab2.user_company_id=cmn.com_id;

select tab2.*,emt.emp_name from(select tab1.* ,cmn.com_company_name from(select user_id,user_emp_id,user_company_id,user_comp_login_id,user_login_id,user_role from 
pm_user_master_table where user_emp_id=1) as tab1 join pm_company_master_name as cmn on tab1.user_company_id=cmn.com_id)as tab2 join 
pm_employee_master_table as emt on tab2.user_company_id= emt.emp_com_id;




 
 
 
 
 
 



