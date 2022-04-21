--演習問題-SQL2-基本

-- 1.AND条件、並べ替え
select * from student
where grade = 1 AND hometown = '東京'
order by student_id;

-- 2.OR条件、LIKE指定、並べ替え
select * from student
where grade = 1 OR student_name like '%本'
order by student_id DESC;

-- 3.GROUP_BY MAX
select
major_id
, max(grade) max
FROM student
GROUP BY major_id
ORDER BY major_id;

-- 4.GROUP_BY COUNT HAVING
SELECT
hometown
,count (*) count
FROM student
GROUP BY hometown
HAVING count(*) >= 2
ORDER BY hometown;

-- 5.JOIN 並べ替え
select
s.student_name
,m.major_name
from student s
join major m
on s.major_id = m.major_id
order by major_name, student_name;

-- 6.JOIN 条件指定 並び替え
select
s.student_id
,s.student_name
,s.hometown
,m.major_name
from student s
join major m
ON s.major_id = m.major_id
WHERE hometown != '東京'
order by major_name, student_id

-- 7.サブクエリ-その1
SELECT
student_id
,student_name
,grade
FROM student
WHERE major_id = (SELECT major_id
                    FROM major
                    WHERE major_name = '英文学');

-- 8.サブクエリ-その2 IN
SELECT
student_id
,student_name
,major_id
from student
WHERE major_id IN (SELECT major_id
                    FROM student
                   GROUP BY major_id
                   HAVING
                    COUNT(major_id) >=3)
ORDER BY major_id,student_id;

