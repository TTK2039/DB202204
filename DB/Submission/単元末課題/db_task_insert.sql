-- companyテーブルへのデータ登録
insert into company
values(1, 'LinelyMart');

-- 店舗テーブルへのデータ登録
insert into store 
values(1, '日本橋店', '東京都中央区日本橋 1-1-1', '03-111-2222');

-- 購入商品テーブル
insert into marchandise 
values(00000001, 1, 1, -10);

-- 商品ごとのテーブル
insert into goods
values(1, 'いろはす天然水', 100)
,(2, 'ツナマヨおにぎり',120)
,(3, 'ファブリーズ', 400);

-- 支払方法テーブル
insert into paymethod
values(1, 'paypay支払')
,(2, '現金支払い');

--責任者テーブル
insert into res
values(001, '責任者#001');

-- レジテーブル
insert into register
values(1, 'レジ#1');


--　レシートテーブルへのデータ登録
insert into receipt
values(00000001, 1, 1, '2022/04/01', '金', '19:00', '001', 1);
