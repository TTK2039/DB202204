| テーブル一覧 |                  |                    |                        |          |            |      | 
| ------------ | ---------------- | ------------------ | ---------------------- | -------- | ---------- | ---- | 
| No.          | 論理テーブル名   | 物理テーブル名     | 備考                   |          |            |      | 
| 1            | 企業名テーブル   | public.company     |                        |          |            |      | 
| 2            | 商品テーブル     | public.goods       |                        |          |            |      | 
| 3            | 購入テーブル     | public.marchandise |                        |          |            |      | 
| 4            | 支払方法テーブル | public.paymethod   |                        |          |            |      | 
| 5            | レシートテーブル | public.receipt     |                        |          |            |      | 
| 6            | レジテーブル     | public.register    |                        |          |            |      | 
| 7            | 責任者テーブル   | public.res         |                        |          |            |      | 
| 8            | 店舗テーブル     | public.store       |                        |          |            |      | 
|              |                  |                    |                        |          |            |      | 
|              | company          |                    |                        |          |            |      | 
| No.          | 論理名           | 物理名             | データ型               | Not Null | デフォルト | 備考 | 
| 1            | 会社No           | company_no         | integer                | Yes (PK) |            |      | 
| 2            | 会社名           | company_name       | character varying(50)  |          |            |      | 
|              |                  |                    |                        |          |            |      | 
|              | goods            |                    |                        |          |            |      | 
| No.          | 論理名           | 物理名             | データ型               | Not Null | デフォルト | 備考 | 
| 1            | 商品No           | goods_id           | integer                | Yes (PK) |            |      | 
| 2            | 商品名           | goods_name         | character varying(50)  |          |            |      | 
| 3            | 商品単価         | unit_price         | integer                |          |            |      | 
|              |                  |                    |                        |          |            |      | 
|              | marchandise      |                    |                        |          |            |      | 
| No.          | 論理名           | 物理名             | データ型               | Not Null | デフォルト | 備考 | 
| 1            | 伝票番号         | receipt_no         | integer                |          |            |      | 
| 2            | 商品No           | goods_no           | integer                |          |            |      | 
| 3            | 商品合計数       | unit_amount        | integer                |          |            |      | 
| 4            | 値引き           | discount           | integer                |          |            |      | 
|              |                  |                    |                        |          |            |      | 
|              | paymethod        |                    |                        |          |            |      | 
| No.          | 論理名           | 物理名             | データ型               | Not Null | デフォルト | 備考 | 
| 1            | 支払方法No       | paymethod_id       | integer                | Yes (PK) |            |      | 
| 2            | 支払方法名前     | paymethod_name     | character varying(20)  |          |            |      | 
|              |                  |                    |                        |          |            |      | 
|              | receipt          |                    |                        |          |            |      | 
| No.          | 論理名           | 物理名             | データ型               | Not Null | デフォルト | 備考 | 
| 1            | 伝票番号         | receipt_no         | integer                | Yes (PK) |            |      | 
| 2            | 店舗No           | store_no           | integer                |          |            |      | 
| 3            | レジNo           | register_no        | integer                |          |            |      | 
| 4            | 購入日           | buy_date           | date                   |          |            |      | 
| 5            | 購入曜日         | dayofweek          | character varying(1)   |          |            |      | 
| 6            | 購入時間         | buy_time           | time without time zone |          |            |      | 
| 7            | 責任者No         | res_no             | integer                |          |            |      | 
| 8            | 支払方法No       | paymethod          | integer                |          |            |      | 
|              |                  |                    |                        |          |            |      | 
|              | register         |                    |                        |          |            |      | 
| No.          | 論理名           | 物理名             | データ型               | Not Null | デフォルト | 備考 | 
| 1            | レジNo           | register_id        | integer                | Yes (PK) |            |      | 
| 2            | レジ名前         | register_name      | character varying(30)  |          |            |      | 
|              |                  |                    |                        |          |            |      | 
|              | res              |                    |                        |          |            |      | 
| No.          | 論理名           | 物理名             | データ型               | Not Null | デフォルト | 備考 | 
| 1            | 責任者No         | res_id             | integer                | Yes (PK) |            |      | 
| 2            | 責任者名前       | res_name           | character varying(30)  |          |            |      | 
|              |                  |                    |                        |          |            |      | 
|              | store            |                    |                        |          |            |      | 
| No.          | 論理名           | 物理名             | データ型               | Not Null | デフォルト | 備考 | 
| 1            | 店舗No           | store_no           | integer                | Yes (PK) |            |      | 
| 2            | 店舗名           | store_name         | character varying(50)  |          |            |      | 
| 3            | 店舗住所         | store_address      | character varying(50)  |          |            |      | 
| 4            | 電話番号         | store_tel          | character varying(20)  |          |            |      | 
| 5            | 会社No           | company_no         | integer                |          |            |      | 
|              | 