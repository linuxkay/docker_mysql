# search word start by 中 
select * from users where last_name like '中%';
# search world including 中
select * from users where last_name like '%中%';
# search word ends by 子
select * from users where first_name like '%子';
# search word ends by 子 but 3chars.
select * from users where first_name like '__子';
