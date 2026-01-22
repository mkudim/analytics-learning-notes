SELECT
    create_order
FROM dm.events
WHERE create_order IS true;

SELECT
    event_id
FROM dm.events
WHERE create_order IS true AND add_to_cart IS false;

SELECT
    COUNT(*) AS zero_availability_events,
    ROUND(
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM dm.events),
        2
    ) AS zero_availability_pct
FROM dm.events
WHERE product_is_pick_up IS FALSE
  AND product_is_pick_point IS FALSE
  AND product_is_delivery IS FALSE
  AND product_is_now IS FALSE;