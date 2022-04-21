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

-- 税込み価格を計算してくれるファンクション
CREATE OR REPLACE FUNCTION tax_include(amount integer) RETURNS integer
 LANGUAGE plpgsql
AS $function$
declare

begin
    return trunc(amount * 1.1, 0);
end;
$function$;

