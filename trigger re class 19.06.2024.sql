use trig;

CREATE TABLE products(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL
);


CREATE TABLE product_audit (
    id INT AUTO_INCREMENT PRIMARY KEY,
    action VARCHAR(50) NOT NULL,
    product_id INT NOT NULL,
    action_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES products(id)
);

# adjust the price of a new product before the insert operation is performanced by adding a 10% markup

delimiter //
create trigger trig
before insert
on products
for each row
begin
     set new.price = new.price+(new.price*0.1);
end //



insert into products (name,price,stock)
values ('product A',1000.00,50),
('product B',1500.00,30),
('product C',2000.00,20);

select * from products;

delimiter //
create trigger price_update
before update
on products
for each row
begin
      if new.price < old.price then
      signal  sqlstate '45000'
      set message_text ="new price should be greater than present price";
end if ;
end //

update products set price=1500 where id=1;
select * from products;


delimiter //
create trigger trig_1
after insert
on products
for each row
begin
      insert into product_audit (action,product_id) values ("insert",new.id);
end //

drop trigger after_insert;
insert into products (name,price,stock)
values ('product D',1900.00,30);
select * from products;

delimiter //
create trigger trig_2
after update
on products
for each row
begin
      insert into product_audit (action,product_id) values ("insert",new.id);
end //


drop trigger trig_2;

update  products set price=10000 where id=1;

delimiter //
create trigger trig_3
after update
on products
for each row
begin
      insert into product_audit (action,product_id) values ("insert",old.id);
end //

set sql_safe_updates=0;
