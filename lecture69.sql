# show all access_logs
-- select * from access_logs;

-- select * from access_logs where request_month >= '2017-01-01' and request_month < '2017-07-01'
# show number of requests every month
-- select request_month, count(*) from access_logs group by request_month

#show more than 1000 access 
select request_month, count(*) from access_logs group by request_month having count(*) >= 1000

