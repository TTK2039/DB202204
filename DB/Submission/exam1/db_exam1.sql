-- DB基礎20220413_演習課題_SQL1_基本


create databese db_exam;
\c db_exam
-- 1.データベースを作成

CREATE TABLE major (
    major_id INT PRIMARY KEY
    ,major_name VARCHAR(50)
);
-- 2.majorテーブルを作成

CREATE TABLE student (
    student_id INT PRIMARY KEY
    ,student_name VARCHAR(50)
    ,grade INT
    ,hometown VARCHAR(50)
    ,major_id INT NOT NULL REFERENCES major(major_id)
);
-- 3.studentテーブルを作成

INSERT INTO major
(major_id, major_name)
VALUES(1, '英文学');
-- 4.majorテーブルに一つ目のデータを登録

INSERT INTO major
VALUES
(2, '応用科学')
,(3, '情報工学')
,(4, '経済学')
,(5, '国際文化');
-- 4.majorテーブルに残りのデータをまとめて登録,カラム指定は省略可

INSERT INTO student
VALUES
(1, '山田', 1, '宮城', 1);
-- 5.studentテーブルに一つ目のデータを登録

INSERT INTO student
VALUES
(2, '田中', 1, '東京', 2)
,(3, '佐藤', 1, '東京', 3)
,(4, '鈴木', 2, '鹿児島', 1)
,(5, '高橋', 2, '北海道', 2)
,(6, '吉田', 2, '東京', 1)
,(7, '伊藤', 3, '鹿児島', 2)
,(8, '山本', 3, '神奈川', 3)
,(9, '森本', 4, '沖縄', 4)
,(10, ' 吉岡', 4, '神奈川', 5);
-- 5.studentテーブルに残りのデータを登録

UPDATE student
    SET student_name = '吉岡'
WHERE student_id = 10;
-- 5.student_id 10 吉岡のstudent_nameを修正

SELECT * FROM student
WHERE grade = 1;
-- 6.studentテーブルに対し、gradeが1のレコードを取得

SELECT * FROM student
WHERE hometown = '東京';
-- 7.studentテーブルに対し、hometownが東京のレコードを取得

SELECT major_name
FROM major;
-- 8.majorテーブルに対し、全レコードのmajor_nameのみを取得

UPDATE student
    SET grade = 3
WHERE student_id=10;
-- 9.studentテーブルに対し、student_idが10のレコードのgradeを3へ更新

DELETE FROM student
WHERE student_id = 10;
-- 10.studentテーブルに対し、student_idが10のレコードを削除
