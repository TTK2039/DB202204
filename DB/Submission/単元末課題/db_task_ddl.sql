-- データベースの作成
create database db_exam_ex;

-- 企業名テーブルの作成
create table company (
    company_no int primary key
    ,company_name varchar(50)
);

-- 店舗テーブルの作成
create table store (
    store_no int primary key
    ,store_name varchar(50)
    ,store_address varchar(50)
    ,store_tel int
);

alter table store 
add 
company_no int references company(company_no);

-- レシートテーブルの作成
create table receipt (
    receipt_no int primary key
    ,store_no int references store(store_no)
    ,register_no int references register(register_id)
    ,buy_date date
    ,dayofweek varchar(1)
    ,buy_time time
    ,res_no int references res(res_id)
    ,paymethod int references paymethod(paymethod_id)
);

-- 購入商品テーブルの作成
create table marchandise (
    receipt_no int references receipt(receipt_no)
    ,goods_no int references goods(goods_id) 
    ,unit_amount int
    ,discount int
);

-- 商品ごとのテーブル
create table goods(
    goods_id int primary key
    ,goods_name varchar(50)
    ,unit_price int
);

-- 支払方法テーブル
create table paymethod(
    paymethod_id int primary key
    ,paymethod_name varchar(10)
);

-- 責任者テーブル
create table res (
    res_id int primary key
    ,res_name varchar(30)
);

-- レジテーブル
create table register (
    register_id int primary key
    ,register_name varchar(30)
);
