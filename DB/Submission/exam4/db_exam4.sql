-- 1-1.major_nameに対するインデックスの作成
create index nameindex on major (major_name);

-- 1-2.student_nameに対するインデックスの作成
create index studentindex on student (student_name);

-- 1-3.garade, student_nameに対するインデックスの作成
create index studentmulti on student (grade, student_name);

-- 2.ビューの作成
create view v_student as
select 
s.student_id
,s.student_name
,s.hometown
,m.major_name
from 
student s
join major m
on s.major_id = m.major_id
where hometown != '東京';

-- マテリアルズド・ビュー
create materialized view mv_student as
select 
s.student_id
,s.student_name
,s.hometown
,m.major_name
from 
student s
join major m
on s.major_id = m.major_id
where hometown != '東京';

-- ファンクション
--税込み金額を返すファンクション 
CREATE OR REPLACE FUNCTION tax(price decimal) RETURNS decimal
 LANGUAGE plpgsql
AS $function$
declare

begin
    return trunc(price * 1.1, 0);
end;
$function$;

-- シーケンス
create table users (
    id serial primary key
    ,name varchar(50)
);

insert into users(name)
values ('abc');

select * from users_id_seq;

select setval('users_id_seq', 100, true);

