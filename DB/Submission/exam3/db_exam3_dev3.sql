-- データベース作成
create database db_exam4;

-- 書籍テーブル作成
create table books (
    book_id int  primary key
    ,book_name text
    ,publisher_id int
    ,price int
    ,issue DATE
    ,author_id int
);

-- 出版社テーブル作成
create table publisher (
    publisher_id int
    ,publisher_name text
);

-- 著者テーブル作成
create table author (
    author_id int 
    ,author_name text
);

-- データを入れる
insert into books
values
(1001, '猫の秘密', 101, 600, '2018/1/1', 101)
,(1002, '犬にたかられる人', 101, 600, '2020/4/1', 101)
,(1003, '星の歌', 102, 1100, '2015/5/2', 102)
,(1004, '凹凸', 102, 750, '2012/3/4', 103)
,(1005, 'こころ', 102, 3850, '2019/2/18', 104)
,(1006, '教師', 101, 800, '2005/12/12', 104)
,(1007, '欠けない月はない', 101, 1800, '1992/7/7', 105)
,(1008, '開けない夜もある', 102, 2530, '2001/9/4', 105)
;

insert into publisher 
values
(101, 'テクノ出版')
,(102, 'axiz文庫');

insert into author
values
(101, 'アクシズ')
,(102, '山田太郎')
,(103, '鈴木次郎')
,(104, '手久乃弧亜')
,(105, '坂田三郎');
