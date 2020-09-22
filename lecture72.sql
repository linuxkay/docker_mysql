use my_db;
# order by highest price. order id by smallest id if the price is same.
select * from products order by price desc, id asc;
