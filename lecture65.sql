# show users
select * from users;
# 県別ごとのユーザー数を表示
select prefecture_id, count(*) from users group by prefecture_id
#  access logs を表示
select * from access_logs;
# specify 2017
select 8 from access_logs where request_month >= '2017-01-01' and request_month < '2018-01-01';
# group by request month
select request_month, count(distinct user_id) from access_logs where request_month >= '2017-01-01' and request_month < '2018-01-01' group by request_month;
