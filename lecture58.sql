# 2017年1月のデータのみを摘出
#select * from orders where order_time >='2017-01-01 00:00:00' and order_time < '2017-02-01 00:00:00'
# 2017年1月の売上を計算する
select sum(amount) from orders where order_time >='2017-01-01 00:00:00' and order_time < '2017-02-01 00:00:00'
