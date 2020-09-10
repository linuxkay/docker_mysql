# count uniqueユーザー　in January
#check what's inside of tables
-- select * from access_logs;
# 2017 Jan access users
select count(distinct user_id) from access_logs where request_month = "2017-01-01";
