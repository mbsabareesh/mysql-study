create database ranks;
use ranks;
create table ranker(
id int auto_increment primary key,
name varchar(100),
score decimal(5,2));

select*from ranker;

insert into ranker (name,score)value("sabbareesg",90.00);
insert into ranker (name,score)value("sab",91.00),
("sab",94.00),
("sab",100.00),
("sab",99.00);

select * from ranker;

select id,name,score, rank() over(order by score desc)
from ranker;

insert into ranker (name,score)value("b",91.00),
("raj",92.00);

select id,name,score, dense_rank() over(order by score desc)
from ranker;

SELECT 
    id,
    name,
    score,
    AVG(score) OVER () AS avg_score,
    COUNT(*) OVER () AS total_rankers,
    SUM(score) OVER () AS total_score,
    RANK() OVER (ORDER BY score DESC)
FROM 
    ranker;
