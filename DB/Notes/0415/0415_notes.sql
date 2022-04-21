-- ファンクションの定義
-- items_bkにレコードを登録するファンクション
CREATE OR REPLACE FUNCTION items_update_trigger()
RETURNS trigger
LANGUAGE plpgsql
AS $$
DECLARE
BEGIN
    INSERT INTO items_bk(item_id, item_name, price, update_dt) 
        VALUES (OLD.item_id, OLD.item_name, OLD.price, now());
    RETURN NULL;
END;
$$;

-- トリガーの定義
-- itemsテーブルにUPDATEされた時に、更新前に上記のファンクションが動作させるようにする
CREATE TRIGGER item_bk_trigger BEFORE UPDATE ON items
FOR EACH ROW
EXECUTE PROCEDURE CREATE OR REPLACE FUNCTION items_update_trigger();

