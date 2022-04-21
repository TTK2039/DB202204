-- from句のないSQL
SELECT 'aaa', 10;

-- 四則演算ができます
SELECT 10 + 20 和, 100 - 50 差, 10 * 10 積, 10 / 2 商;

-- エイリアス（別名をつけること
SELECT
name 企業名, short_name AS 略称 -- ASは略可（企業名がの部分では略した。
From company;

-- 関数
SELECT name, pg_score, db_score
, (pg_score+db_score) 合計
,trunc ((pg_score + db_score) / 2, 0) 平均 --trunc関数 小数点を切り捨てする
FROM student;

-- CASE式 感覚的にはif文に近い
SELECT name
, CASE
    WHEN gender = 1 THEN '男性'
    WHEN gender = 2 THEN '女性'
    ELSE 'その他'
END 性別 FROM student; -- ENDでCASE式を閉じて、エイリアスで性別をつける。

-- ORDER BY カラムを指定することで並び替えることができる。
-- DESCをすると降順。指定しない場合とASCを指定した場合は昇順になる。
SELECT name, pg_score FROM student
ORDER BY pg_score;

--降順
SELECT name, pg_score FROM student
ORDER BY pg_score DESC;

-- pg_scoreの降順で並べた後、同じpg_scoreの値があった場合はその中でdb_scoreの昇順で並べる
SELECT name, pg_score, db_score
FROM student
ORDER BY pg_score DESC, db_score;

--集約関数
SELECT
sum(pg_score) 合計,
avg(pg_score) 平均,
max(pg_score) 最高,
min(pg_score) 最低,
count(*) 件数
FROM student;-- 通常の関数と違い、複数のレコードをまとめて一つの結果になる。

--集約関数
SELECT
gender
, sum(pg_score) PG合計
, avg(pg_score) PG平均
FROM student
GROUP BY gender; --GROUP BY　指定したカラムをもとに集約できる

--集約関数
SELECT
company_id
, gender
, sum(pg_score) PG合計
, avg(pg_score) PG平均
FROM student
GROUP BY company_id, gender --GROUP BY でカラムを複数指定
ORDER BY company_id, gender;

-- 集約関数
SELECT
company_id
, sum(pg_score) PG合計
, avg(pg_score) PG平均
FROM student
GROUP BY company_id
HAVING avg(pg_score) >= 40; --集計した結果で絞り込みを行うことができる

-- 結合
SELECT s.name short_name
,c.name c_name
FROM student s
INNER JOIN company c -- FROMで呼び出したstudentにJOINでcompanyを結合
ON s.company_id = c.id; -- それぞれのテーブルで対応するカラムをONで教える

-- 内部結合　対応するレコードがない場合は記述しない
-- JOIN テーブル名
-- 外部結合　結合対象となるレコードがない場合もNULLを結合して出力する。
-- LEFT JOIN テーブル名

-- サブクエリ　SQL分の一部に別のSELECT文がある
SELECT name, company_id
FROM student
WHERE company_id = (SELECT id  -- このセレクトは、whereに渡される
                    FROM company
                    WHERE short_name = 'ABC');

-- サブクエリ
SELECT name, company_id
FROM student
WHERE company_id IN -- サブクエリの結果が複数レコードになる場合、INを使った条件になる
                    (SELECT id
                    FROM company
                    WHERE name like '株式会社%');-- like演算子

-- 相関サブクエリ 上のサブクエリを、existsを用いて書く
SELECT name, company_id
from student s
WHERE exists (SELECT id
                FROM company
                WHERE short_name = 'ABC'
                AND company_id = s.company_id);
                

