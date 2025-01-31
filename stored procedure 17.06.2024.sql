/* syntax of stored procedure */

delimiter $$
create procedure procedure_name
[[in | out | inout] parameter_name datatype]

begin
declaration_section
executable_section
end $$
delimiter;

use tech;

create procedure 'new11' ()
begin
select * from emp where deptno=10 and job="analyst" and sal>1000;
end
