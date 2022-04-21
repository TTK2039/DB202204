-- DB基礎20220413_演習課題_SQL1_発展


CREATE TABLE customer (
customer_id INT PRIMARY KEY
,customer_name VARCHAR(50)
);
-- 2.customerテーブルを作成

CREATE TABLE sales (
    sales_id INT PRIMARY KEY
    ,order_date DATE
    ,customer_id INT NOT NULL REFERENCES customer(customer_id)
    ,amount DECIMAL
);
-- 3.salesテーブルを作成

INSERT INTO customer
VALUES (1, '田中')
,(2, '鈴木')
,(3, '田中')
,(4, '田島');
-- 4.customerテーブルへデータ登録

INSERT INTO sales
VALUES (1, '2018/11/01', 1, 3000)
,(2, '2018/10/01', 3, 5000)
,(3, '2018/10/01', 4, 6000)
,(4, '2018/11/02', 2, 2000)
,(5, '2018/11/15', 2, NULL);
-- 5.salesテーブルへデータ登録

SELECT * FROM sales
WHERE amount < 5000;
-- 6.salesテーブルに対し、amountが5000より小さいレコードを取得

SELECT * FROM sales
WHERE amount >= 5000;
-- 7.salesテーブルに対し、amountが5000以上のレコードを取得

SELECT *, amount * 1.1 FROM sales;
-- 8.salesテーブルに対して、すべてのカラムと、amountに1.1を掛けたカラムを取得

SELECT * FROM sales
WHERE amount IS NOT NULL;
-- 9.salesテーブルに対して、amountがNULLでないレコードを取得

SELECT * FROM customer
WHERE customer_name != '田中';
-- 10.customerテーブルに対して、customer_nameが田中ではないレコードを取得

UPDATE sales
    SET order_date = '2018/11/05', customer_id = '4'
WHERE sales_id = 4;
-- 11.salesテーブルの特定のレコードを更新

DELETE FROM sales
WHERE amount IS NULL;
-- 12.salesテーブルに対し、amountがNULLのレコードを削除
