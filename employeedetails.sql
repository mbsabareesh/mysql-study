create database empl;
use empl;

create table employeedetails (
    studentid int primary key,
    studentname varchar(50),
    gender varchar(10),
    phonenum varchar(10) unique not null,
    collegename varchar(100),
    location varchar(100),
    jobrole varchar(100),
    placeornot varchar(100)
);

select * from employeedetails;

insert into employeedetails values
(1, "raja", "male", "9087654321", "snr", "erode", "webdev", "placed");

select * from employeedetails;

insert into employeedetails values
(2, "sabareesh", "male", "8907654321", "snr", "molasi", "webdev", "notplaced"),
(3, "mathanraj", "male", "8970654321", "snr", "namakkal", "dataany", "placed"),
(4, "banu", "male", "1234567890", "rd", "erode", "bpo", "notplaced"),
(5, "ooviya", "female", "7890654321", "psg", "erode", "account", "placed"),
(6, "stalini", "female", "6789054321", "psg", "erode", "account", "placed");


select * from employeedetails;

insert into employeedetails values
(7, "sabareeshwaran", "male", "8307654321", "snr", "molasi", "webdev", "notplaced"),
(8, "mathan", "male", "897065441", "snr", "namakkal", "dataany", "placed"),
(9, "banupranesh", "male", "1234557890", "rd", "erode", "bpo", "notplaced"),
(10, "kaviya", "female", "7890654341", "psg", "erode", "account", "placed"),
(11, "stalinipriya", "female", "6789054323", "psg", "erode", "account", "placed");


select * from employeedetails;

update employeedetails set location="namakkal" where studentid=1;

select * from employeedetails;

update employeedetails set collegename="ksr" where studentid=2;

select * from employeedetails;

delete from employeedetails where studentid=2;

select * from employeedetails;

select studentid,studentname from employeedetails;

select studentid,studentname from employeedetails where studentname="mathan";

select studentid, studentname from employeedetails where studentname like '%aj%';

select studentid,studentname from employeedetails where studentname like '%a';

select studentid, studentname from employeedetails where studentname like 'm%';


insert into employeedetails values(12,"hari","male","8907640231","snr","theni","bpo","placed");

select * from employeedetails;

insert into employeedetails values("sab","male","7891234560","pkp","erode","bpo","placed");

alter table employeedetails modify studentid int auto_increment;

select * from employeedetails;

select * from employeedetails;

insert into employeedetails values( "boopathi","male","9943573446","pkp","molasi","bpo","placed");

insert into employeedetails (studentname, gender, phonenum, collegename, location, jobrole, placeornot) 
values ("boopathi", "male", "9943573446", "pkp", "molasi", "bpo", "placed");



select * from employeedetails;

insert into employeedetails (studentname, gender, phonenum, collegename, location, jobrole, placeornot) 
values ("boopathiraja", "male", "9943573496", "pkp", "molasi", "bpo", "placed");

select * from employeedetails;

insert into employeedetails (studentname, gender, phonenum, collegename, location, jobrole, placeornot) 
values ("giriraja", "male", "9943533496", "pkp", "molasi", "bpo", "placed"),
("peiya","female","9802224456","rd","erode","it","pleced");

select * from employeedetails;

insert into employeedetails (studentname, gender, phonenum, collegename, location, jobrole, placeornot) 
values ("rajavel", "male", "9942333496", "pkp", "molasi", "bpo", "placed"),
("peiyavel","female","9802224126","rd","erode","it","pleced"),
("harshini","female","9802220126","rd","erode","it","pleced"),
("vishnupriya","female","9802229406","rd","erode","it","pleced");

select * from employeedetails;

alter table employeedetails add column salary int;
select * from employeedetails;

select max(salary) from employeedetails;

update employeedetails set salary=90000 where studentid=3;
update employeedetails set salary=9000 where studentid=6;

select * from employeedetails;
update employeedetails set salary=900 where studentid=1;
select * from employeedetails;
update employeedetails set salary=100000 where studentid=4;
update employeedetails set salary=89000 where studentid=5;
update employeedetails set salary=10000 where studentid=7;
update employeedetails set salary=20000 where studentid=8;
update employeedetails set salary=20500 where studentid=9;
update employeedetails set salary=78000 where studentid=10;
update employeedetails set salary=99000 where studentid=11;
update employeedetails set salary=76000 where studentid=12;
update employeedetails set salary=23000 where studentid=15;
update employeedetails set salary=300 where studentid=17;
update employeedetails set salary=56000 where studentid=18;
update employeedetails set salary=150000 where studentid=19;
update employeedetails set salary=45000 where studentid=20;
update employeedetails set salary=76000 where studentid=21;
update employeedetails set salary=67890 where studentid=22;
update employeedetails set salary=9000 where studentid=23;

select * from employeedetails;

select max(salary) from employeedetails;

select min(salary) from employeedetails;

select * from employeedetails where salary>50000;

select * from employeedetails where salary<50000;

select * from employeedetails where salary=100000;

select sum(salary) from employeedetails;

select * from employeedetails;

select sum(salary),collegename from employeedetails group by collegename;

 select count(/*distinct */ studentname),collegename from employeedetails  group by collegename;
 
 
select studentid,studentname from employeedetails where collegename="snr";

select * from employeedetails;

create table empnow(
studentid int primary key ,
offerletter varchar(100),
callletter varchar(100));

select * from empnow;
insert into empnow values(1,"yes","no");
insert into empnow values(2,"no","no"),(3,"no","no"),(4,"yes","yes"),(5,"no","no"),(6,"no","no"),(7,"yes","no");

select * from empnow;

alter table empnow modify studentid int auto_increment;
insert into empnow (offerletter, callletter) values ("yes", "no");
insert into empnow (offerletter, callletter) values ("yes", "no"),("yes", "no"),("yes", "no"),("yes", "no"),("no","no"),("no","no"),("no","no"),("no","no"),
("no","no"),("no","no"),("no","no");

insert into empnow (offerletter, callletter) values ("yes", "no"),("yes", "no"),("yes", "no"),("yes", "no"),("no","no"),("no","no");
select * from empnow;



/* join query */

select * from employeedetails;
select * from empnow;

select studentname from employeedetails inner join empnow on employeedetails.studentid=empnow.studentid;

select studentname
from employeedetails inner join empnow on employeedetails.studentid=empnow.studentid 
where collegename="snr";

select studentname
from employeedetails inner join empnow on employeedetails.studentid=empnow.studentid 
where offerletter="no";

select studentname
from employeedetails inner join empnow on employeedetails.studentid=empnow.studentid 
where offerletter="yes";

select studentname
from employeedetails inner join empnow on employeedetails.studentid=empnow.studentid 
where callletter="yes";

select studentname
from employeedetails inner join empnow on employeedetails.studentid=empnow.studentid 
where callletter="no";

select studentname,offerletter,callletter from employeedetails 
left outer join empnow on employeedetails.studentid = empnow.studentid;

select concat(studentname,' - ',offerletter,' - ',callletter) as student_offer_call from employeedetails 
right outer join empnow on employeedetails.studentid = empnow.studentid;


select studentname,offerletter,callletter from employeedetails
left outer join empnow on employeedetails.studentid = empnow.studentid

union 

select studentname,offerletter,callletter from employeedetails
right outer join empnow on employeedetails.studentid = empnow.studentid
order by studentname;

select studentname,offerletter,callletter from employeedetails
left outer join empnow on employeedetails.studentid = empnow.studentid

union all

select studentname,offerletter,callletter from employeedetails
right outer join empnow on employeedetails.studentid = empnow.studentid
order by studentname;

select studentname,offerletter from employeedetails right outer join empnow on employeedetails.studentid = empnow.studentid
order by studentname desc;

select studentname,offerletter from employeedetails right outer join empnow on employeedetails.studentid = empnow.studentid
order by studentname asc;

select concat(studentname, '_', offerletter)
from employeedetails inner join empnow on employeedetails.studentid = empnow.studentid;

select concat(studentname, '_', callletter,'-',offerletter)
from employeedetails inner join empnow on employeedetails.studentid = empnow.studentid;

select concat(studentname, ' $ ', callletter,' ₹ ',offerletter)
from employeedetails inner join empnow on employeedetails.studentid = empnow.studentid;

select studentname
from employeedetails inner join empnow on employeedetails.studentid=empnow.studentid 
where offerletter="no" order by studentname  limit 7;


select employeedetails.studentname, empnow.offerletter from employeedetails 
inner join empnow on employeedetails.studentid = empnow.studentid where empnow.offerletter = 'no'
order by employeedetails.studentname desc limit 5;



-- Start the transaction
START TRANSACTION;

-- Step 1: Insert a new employee into employeedetails
INSERT INTO employeedetails (studentname, gender, phonenum, collegename, location, jobrole, placeornot, salary)
VALUES ("John Doe", "male", "9998887776", "ABC College", "City A", "Developer", "placed", 75000);

select * from employeedetails;

-- Step 2: Insert the corresponding record into empnow
INSERT INTO empnow ( offerletter, callletter)
VALUES ( "yes", "no");

select * from empnow;
-- Commit the transaction if both queries are successful
commit;

-- If an error occurs during the transaction, rollback
rollback;

select * from empnow;


start transaction;
insert into  employeedetails (studentname, gender, phonenum, collegename, location, jobrole, placeornot, salary)
VALUES ("vikaram", "male", "9998087776", "abc", "salem", "Dev", "placed", 75000);

commit;

rollback;


select * from employeedetails;

delete from employeedetails where studentid=24;

start transaction;

insert into employeedetails (studentname, gender, phonenum, collegename, location, jobrole, placeornot, salary)
values ("arun", "male", "997087776", "xyz", "chennai", "QA", "notplaced", 60000);

commit;

rollback;

select * from employeedetails;



delete from employeedetails where studentid=26;

select * from employeedetails;




start transaction;

insert into employeedetails (studentname, gender, phonenum, collegename, location, jobrole, placeornot, salary)
values ("harshini", "male", "997087776", "xyz", "chennai", "QA", "notplaced", 60000);

rollback;
commit;

select * from employeedetails;

start transaction;

insert into employeedetails (studentname, gender, phonenum, collegename, location, jobrole, placeornot, salary)
values ("harshinir", "male", "997087776", "xyz", "chennai", "QA", "notplaced", 60000);

rollback;
commit;

select * from employeedetails;
START TRANSACTION;

INSERT INTO employeedetails (studentname, gender, phonenum, collegename, location, jobrole, placeornot, salary)
VALUES ("priya", "female", "997287776", "XYZ College", "Chennai", "QA", "notplaced", 60000);


ROLLBACK;

COMMIT;

SELECT * FROM employeedetails;

start transaction;

insert into employeedetails (studentname, gender, phonenum, collegename, location, jobrole, placeornot, salary)
values ("bothi", "male", "997187776", "xyz", "chennai", "QA", "notplaced", 60000);

rollback;
commit;

select * from employeedetails;


start transaction;

insert into employeedetails (studentname, gender, phonenum, collegename, location, jobrole, placeornot, salary)
values ("pranesh", "male", "907187776", "xyz", "chennai", "QA", "notplaced", 60000);

rollback;
commit;

select * from employeedetails;

ALTER TABLE employeedetails AUTO_INCREMENT = 36;

start transaction;

insert into employeedetails (studentname, gender, phonenum, collegename, location, jobrole, placeornot, salary)
values ("selva", "male", "807187776", "xyz", "chennai", "QA", "notplaced", 60000);

rollback;
commit;

select * from employeedetails;

ALTER TABLE employeedetails AUTO_INCREMENT = 37;

start transaction;

insert into employeedetails (studentname, gender, phonenum, collegename, location, jobrole, placeornot, salary)
values ("kaviya", "male", "707187776", "xyz", "chennai", "QA", "notplaced", 60000);

rollback;
commit;

select * from employeedetails;

ALTER TABLE employeedetails AUTO_INCREMENT = 38;

start transaction;

insert into employeedetails (studentname, gender, phonenum, collegename, location, jobrole, placeornot, salary)
values ("kav", "female", "897187776", "xyz", "chennai", "QA", "notplaced", 60000);

rollback;
commit;

select * from employeedetails;


                            -- my sql function --
                              # string function
                            
select * from employeedetails;

SELECT studentname,CHAR_LENGTH(studentname) AS LengthOfString from employeedetails;

select studentname, char_length(concat(studentname,collegename,location)) from employeedetails;

SELECT studentname, CHAR_LENGTH(studentname) AS LengthOfStudentName, 
       collegename, CHAR_LENGTH(collegename) AS LengthOfCollegeName
FROM employeedetails;


select studentname, field('a','b','a') from employeedetails;

select studentname, FIELD(studentname, 'raja', 'mathanraj', 'banu','stalini','ooviya') 
from employeedetails;


select studentname, ucase(concat(studentname,' ',collegename)) from employeedetails;

select studentname, length(studentname) from employeedetails;

select studentname, mid(studentname,2,5) from employeedetails;

select * from employeedetails;

SELECT studentname, POSITION('a' IN studentname) AS position_of_a
FROM employeedetails;

insert into employeedetails (studentname, gender, phonenum, collegename, location, jobrole, placeornot) 
values ("don", "male", "7893573446", "pkp", "molasi", "bpo", "placed");

select * from employeedetails;

SELECT studentname, POSITION('o' IN studentname) AS position_of_a
FROM employeedetails;

SELECT studentname, POSITION('a' IN studentname) AS position_of_a
FROM employeedetails;

select studentname, repeat(studentname,3) 
from employeedetails;

select studentname, reverse(studentname) from employeedetails;


select studentname, RPAD(studentname, 15, ' ') 
from employeedetails;

select studentname, LPAD(studentname, 18, ' ') 
from employeedetails;


                -- Date Functions
                
select * from employeedetails;

alter table employeedetails add column dates date;
select * from employeedetails;                
UPDATE employeedetails SET dates = '2024-11-10' WHERE studentid = 1;
UPDATE employeedetails SET dates = '2024-11-10' WHERE studentid = 3;
UPDATE employeedetails SET dates = '2024-11-10' WHERE studentid = 4;
UPDATE employeedetails SET dates = '2024-11-11' WHERE studentid = 5;
UPDATE employeedetails SET dates = '2024-11-11' WHERE studentid = 6;
UPDATE employeedetails SET dates = '2024-11-11' WHERE studentid = 7;
UPDATE employeedetails SET dates = '2024-11-11' WHERE studentid = 8;
UPDATE employeedetails SET dates = '2024-11-12' WHERE studentid = 9;
UPDATE employeedetails SET dates = '2024-11-12' WHERE studentid = 10;
UPDATE employeedetails SET dates = '2024-11-12' WHERE studentid = 11;
UPDATE employeedetails SET dates = '2024-11-12' WHERE studentid = 12;
UPDATE employeedetails SET dates = '2024-11-12' WHERE studentid = 13;
UPDATE employeedetails SET dates = '2024-11-13' WHERE studentid = 14;
UPDATE employeedetails SET dates = '2024-11-13' WHERE studentid = 15;
UPDATE employeedetails SET dates = '2024-11-13' WHERE studentid = 16;
UPDATE employeedetails SET dates = '2024-11-13' WHERE studentid = 17;
UPDATE employeedetails SET dates = '2024-11-13' WHERE studentid = 18;
UPDATE employeedetails SET dates = '2024-11-13' WHERE studentid = 19;
UPDATE employeedetails SET dates = '2024-11-13' WHERE studentid = 20;
UPDATE employeedetails SET dates = '2024-11-13' WHERE studentid = 21;
UPDATE employeedetails SET dates = '2024-11-13' WHERE studentid = 22;
UPDATE employeedetails SET dates = '2024-11-14' WHERE studentid = 23;
UPDATE employeedetails SET dates = '2024-11-14' WHERE studentid = 24;
UPDATE employeedetails SET dates = '2024-11-14' WHERE studentid = 25;
UPDATE employeedetails SET dates = '2024-11-14' WHERE studentid = 26;
UPDATE employeedetails SET dates = '2024-11-14' WHERE studentid = 27;
UPDATE employeedetails SET dates = '2024-11-14' WHERE studentid = 28;
UPDATE employeedetails SET dates = '2024-11-14' WHERE studentid = 29;
UPDATE employeedetails SET dates = '2024-11-15' WHERE studentid = 30;
UPDATE employeedetails SET dates = '2024-11-15' WHERE studentid = 31;
UPDATE employeedetails SET dates = '2024-11-15' WHERE studentid = 32;
UPDATE employeedetails SET dates = '2024-11-15' WHERE studentid = 33;
UPDATE employeedetails SET dates = '2024-11-15' WHERE studentid = 34;
UPDATE employeedetails SET dates = '2024-11-15' WHERE studentid = 35;
UPDATE employeedetails SET dates = '2024-11-15' WHERE studentid = 36;
UPDATE employeedetails SET dates = '2024-11-17' WHERE studentid = 37;
UPDATE employeedetails SET dates = '2024-11-17' WHERE studentid = 38;
UPDATE employeedetails SET dates = '2024-11-17' WHERE studentid = 39;
UPDATE employeedetails SET dates = '2024-11-17' WHERE studentid = 40;
UPDATE employeedetails SET dates = '2024-11-17' WHERE studentid = 41;

select * from employeedetails;

select adddate(dates,interval 10 day) from employeedetails where studentid=1;

SELECT ADDDATE(dates, INTERVAL 12 DAY) FROM employeedetails WHERE studentid = 1;

select curdate();

select current_date();

select current_time();

select curtime();

select current_user();

select studentid,studentname,dates,curdate(), datediff(curdate(),dates) from employeedetails where studentid;

select date_format('2025-09-09','%y');

select date_format(dates,'%d') from employeedetails where studentid;

select date_format(dates,'%y-%d') from employeedetails where studentid;

select date_sub(dates, interval 2 day) from employeedetails where studentid = 1;

select dates,dayname(dates) from employeedetails where studentid ;

select dates,dayofmonth(dates),dayofweek(dates),dayofyear(dates) from employeedetails where studentid;

select studentname,dates,monthname(dates) from employeedetails where studentid;

select * from employeedetails;

update employeedetails set dates="2024-10-10" where studentid=1;

select * from employeedetails;

select studentname,dates,monthname(dates) from employeedetails where studentid;

select studentname,dates,quarter(dates)as which_quater from employeedetails where  studentid; 


                       -- my sql views
                       
create view placed_students as select studentid, studentname, jobrole, collegename from employeedetails
where placeornot = 'Placed';

select * from placed_students;

create view job_role as select studentid, studentname, jobrole, collegename from employeedetails
where jobrole = 'account';

select * from job_role;

drop view placed_students;


select * from employeedetails;


select studentname,salary from  employeedetails where salary between '10000'and'50000';

select * from empnow;
select * from employeedetails;

select studentname,salary,placeornot from employeedetails 
where exists(select offerletter from empnow where placeornot ="placed");

select studentname,salary,placeornot from employeedetails 
where exists(select offerletter from empnow where salary>'50000');


select * from employeedetails;
select * from empnow;

select studentname,jobrole from employeedetails where studentid =
any (select studentid from empnow where jobrole="account");

select studentname,jobrole from employeedetails where studentid =
all (select studentid from empnow where jobrole="account");






