-- テーブル削除
-- drop table company;
-- drop table student;

-- 会社
create table company(
    id int primary key
    , name varchar(50)
    , short_name varchar(20)
);

-- 研修生
create table student (
    id int primary key
    , name varchar(30)
    , kana varchar(30)
    , gender int -- 性別 1：男性、2：女性ß
    , company_id int
    , pg_score int -- PGのスコア
    , db_score int -- DBのスコア
);

-- companyデータ登録
insert into company(id, name, short_name)
values 
(1, '株式会社ABC', 'ABC')
, (2, 'EFG株式会社', 'EFG')
, (3, '株式会社HIJ', 'HIJ')
, (4, '株式会社KLM', 'KLM');

-- studentデータ登録
insert into student values(1,'黒木 れいな','クロキ レイナ',2,1,round(random() * 100), round(random() * 100));
insert into student values(2,'小島 戴三','コジマ タイゾウ',1,1,round(random() * 100), round(random() * 100));
insert into student values(3,'齋藤 奈緒美','サイトウ ナオミ',2,1,round(random() * 100), round(random() * 100));
insert into student values(4,'土屋 勝行','ツチヤ カツユキ',1,1,round(random() * 100), round(random() * 100));
insert into student values(5,'村山 直幸','ムラヤマ ナオユキ',1,1,round(random() * 100), round(random() * 100));
insert into student values(6,'松永 栄理子','マツナガ エリコ',2,1,round(random() * 100), round(random() * 100));
insert into student values(7,'田辺 春実','タナベ ハルミ',2,1,round(random() * 100), round(random() * 100));
insert into student values(8,'手塚 英造','テヅカ エイゾウ',1,1,round(random() * 100), round(random() * 100));
insert into student values(9,'柳沢 耕介','ヤナギサワ コウスケ',1,1,round(random() * 100), round(random() * 100));
insert into student values(10,'西田 鎮雄','ニシタ シズオ',1,1,round(random() * 100), round(random() * 100));
insert into student values(11,'渡辺 今朝雄','ワタナベ ケサオ',1,2,round(random() * 100), round(random() * 100));
insert into student values(12,'瀬戸 紀子','セト トシコ',2,2,round(random() * 100), round(random() * 100));
insert into student values(13,'杉田 澄夫','スギタ スミオ',1,2,round(random() * 100), round(random() * 100));
insert into student values(14,'山本 清名','ヤマモト セイナ',2,2,round(random() * 100), round(random() * 100));
insert into student values(15,'原 淳子','ハラ ジュンコ',2,2,round(random() * 100), round(random() * 100));
insert into student values(16,'山内 直広','ヤマウチ ナオヒロ',1,3,round(random() * 100), round(random() * 100));
insert into student values(17,'宮内 敬正','ミヤウチ ヨシマサ',1,3,round(random() * 100), round(random() * 100));
insert into student values(18,'林田 真希','ハヤシダ マキ',2,3,round(random() * 100), round(random() * 100));
insert into student values(19,'川原 菊子','カワハラ キクコ',2,5,round(random() * 100), round(random() * 100));
insert into student values(20,'大石 さやか','オオイシ サヤカ',2,5,round(random() * 100), round(random() * 100));