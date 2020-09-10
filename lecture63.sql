# ユーザー数をカウント
use my_db;
# check what's inside
select * from users;
#count users
select count(*) from users;
#count female users
select count(*) from users where gender = 2;
