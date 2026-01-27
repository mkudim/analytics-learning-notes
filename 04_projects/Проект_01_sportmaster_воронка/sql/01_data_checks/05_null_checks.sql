SELECT
    event_id
FROM dm.events
WHERE event_id IS NULL;

SELECT
    user_id
FROM dm.events
WHERE user_id IS NULL;

SELECT
    product_id
FROM dm.events
WHERE product_id IS NULL;