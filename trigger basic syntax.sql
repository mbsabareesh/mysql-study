/* TRIGGER IN DETAILS */
/* Trigger:
1. A Mysql trigger is a database object that is associated with the table, 
it will be activated when a define action is executed for the table.
2. The trigger can be executed when you run one of the following Mysql statements on the table 
insert,update,delete and it can be invoke before or after the event.

Syntax:
DELIMITER //
create trigger trigger_name
(before|after)
[insert|update|delete]
on (table_name)
[for each row|for each column]
[trigger_body]
END //
*/



