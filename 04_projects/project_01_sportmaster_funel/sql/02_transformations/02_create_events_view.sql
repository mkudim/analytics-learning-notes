CREATE OR REPLACE VIEW dm.events_v AS
SELECT
    -- идентификаторы
    event_id,
    user_id,
    product_id,
    location_id,
    -- время
    event_time,
    -- пользователь и устройство
    device_type,
    user_is_authorized,
    -- товарные признаки
    product_category,
    product_gender,
    product_age,
    brand_lvl,
    -- availability
    product_is_pick_up,
    product_is_pick_point,
    product_is_delivery,
    product_is_now,
    -- вычисляемые availability
    (
        product_is_pick_up IS FALSE
        AND product_is_pick_point IS FALSE
        AND product_is_delivery IS FALSE
        AND product_is_now IS FALSE
    ) AS availability_none,
    -- цены
    product_price,
    ret_discount,
    -- вычисляемые денежные поля
    (product_price - ret_discount) AS net_price,
    (ret_discount > 0) AS discount_flag,
    -- воронка
    add_to_cart,
    create_order
FROM dm.events;
