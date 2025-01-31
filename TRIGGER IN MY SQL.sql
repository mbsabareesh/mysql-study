create database trig;
use trig;

CREATE TABLE emptrig (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    hire_date DATE,
    job_id VARCHAR(10),
    salary DECIMAL(10, 2)
);
select*from emptrig;

INSERT INTO emptrig (employee_id, first_name, last_name, email, hire_date, job_id, salary)
VALUES (1, 'John', 'Doe', 'john.doe@example.com', '2022-01-15', 'DEV', 60000.00);

INSERT INTO emptrig (employee_id, first_name, last_name, email, hire_date, job_id, salary)
VALUES (2, 'Jane', 'Smith', 'jane.smith@example.com', '2023-03-10', 'QA', 50000.00);

INSERT INTO emptrig (employee_id, first_name, last_name, email, hire_date, job_id, salary)
VALUES (3, 'Emily', 'Johnson', 'emily.johnson@example.com', '2021-05-20', 'HR', 45000.00);

INSERT INTO emptrig (employee_id, first_name, last_name, email, hire_date, job_id, salary)
VALUES (4, 'Michael', 'Brown', 'michael.brown@example.com', '2020-08-30', 'DEV', 70000.00);

INSERT INTO emptrig (employee_id, first_name, last_name, email, hire_date, job_id, salary)
VALUES (5, 'Jessica', 'Williams', 'jessica.williams@example.com', '2019-11-12', 'FIN', 65000.00);
select * from emptrig;


CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10, 2)
);

INSERT INTO orders (product_name, quantity, price) VALUES
('Smartphone', 2, 599.99),
('Laptop', 1, 1299.99),
('Headphones', 3, 149.99);


CREATE TABLE order_logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    action VARCHAR(50)
);


CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2),
    department VARCHAR(100)
);
select * from  emptrig;
describe employees;


INSERT INTO employ (name, salary, department) VALUES
('John Doe', 50000.00, 'Sales'),
('Jane Smith', 60000.00, 'Marketing'),
('Michael Johnson', 75000.00, 'Engineering');


CREATE TABLE audit_salary_changes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    old_salary DECIMAL(10, 2),
    new_salary DECIMAL(10, 2),
    change_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
describe audit_salary_changes;

/* create a trigger to insert value into audit_salary_change if old salary<> new salary */

DELIMITER //
CREATE TRIGGER after_salary_update
AFTER UPDATE ON employees
FOR EACH ROW
BEGIN
   IF OLD.salary <> NEW.salary THEN
   INSERT INTO audit_salary_changes (employee_id,old_salary,new_salary)
   VALUE (NEW.id, OLD.salary, NEW.salary);
END IF;
END;
DELIMITER //
select * from employees;

CREATE TABLE audit_deleted_employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    deleted_name VARCHAR(100),
    deleted_salary DECIMAL(10, 2),
    deleted_department VARCHAR(100),
    deletion_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
select * from audit_deleted_employees;

DELIMITER //
CREATE TRIGGER audit_deleted_employee_trigger
AFTER DELETE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO audit_deleted_employees (employee_id, deleted_name, deleted_salary, deleted_department)
    VALUES (OLD.id, OLD.name, OLD.salary, OLD.department);
END;
DELIMITER //

DATE : 11.06.2024 class trigger

/*create a trigger for delete any fin people it as to throught a error msg "cant delete fin people", else it as to delete that record */
DELIMITER //
create trigger delete_emp
before delete on emptrig
for each row
begin
     if old.job_id="FIN" then
     signal sqlstate "45000"
     set message_text ="can't delete FIN people";
     end if;
end; 
//

delete from emptrig where employee_id=5;

