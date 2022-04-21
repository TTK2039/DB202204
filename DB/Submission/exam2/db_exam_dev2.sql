
-- 1.CREATE
CREATE TABLE sales_old (
sales_id int PRIMARY KEY
,order_date DATE
,customer_id int NOT NULL references customer(customer_id)
,amount DECIMAL   
);

-- 2.INSERT
insert into sales_old
VALUES(6, '2018/09/02', 2, 20000)
,(7, '2018/09/02', 1, 5000)
,(8, '018/09/02', 3, 6000)
,(9, '2018/09/05', 1, 3000);

-- 3.INSERT, SELECT
INSERT INTO sales
SELECT * FROM sales_old;



-- 4.DROP
drop table sales_old;

-- 5.CASE WHEN, 別名
SELECT
sales_id
, order_date
, (CASE
when order_date < '2018/10/01' then '〇'
else '' end) is_old
from sales
order by order_date ;

-- 6.文字列結合, 別名
select
customer_id || ':' || customer_name customer_id_name
from customer
order by customer_id;

-- 7.LIMIT
select * 
from sales
where customer_id = 1
order by order_date LIMIT 2;

-- 8.GROUP BY, MIN, SUM, サブクエリ, 別名
select
order_date
,sum(amount) sum_amount
from sales
where order_date = (select
                     min(order_date)
                     from sales)
group by order_date;

-- 9.GROUP BY, JOIN, AVG TRUNC, 別名

select
c.customer_id
,customer_name
,trunc(avg(amount)) avg_amount
from customer c
join (select 
    customer_id
    ,avg(amount) amount
    from sales
    group by customer_id) a
    on c.customer_id = a.customer_id
group by c.customer_id
order by customer_id;


-- 10.BETWEEN, LIMIT, サブクエリ
select
*
from sales
WHERE sales_id = (select
        sales_id
        from sales
        order by amount desc limit 1
);
