use tech;

# execute normal stored procedure

call new11();

# execute in stored procedure

call in_procedure(7902);

# execute out stored procedure

call out_procedure(@var1);
select @var1;

set @v1="smith";
call inout_procedure(@v1);
select @v1;


# create procedure for getting totla sal of given department name

select * from dept;

set @v2="sales";
call total_sal (@v2);
select @v2;


