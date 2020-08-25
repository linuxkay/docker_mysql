select * from products;

select * from products where id =1;

select * from products where price > 1000;

select * from products where price < 1000;

select * from products where price <> 100;

select * from products where price != 100;

select * from products where id in(1, 2, 3);

select * from products where id not in(1,2,3);

select * from products where price is not null;

select * from products where price is null;

select * from products where price between 1000 and 1900;

select * from products where price >= 1000 and  price <= 1900;

select * from products where price = 1000 or price = 2000;
