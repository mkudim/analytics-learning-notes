SELECT
    COUNT(*)                       AS events,
    COUNT(DISTINCT user_id)        AS users,
    COUNT(*) FILTER (WHERE add_to_cart) AS add_to_cart_events,
    COUNT(*) FILTER (WHERE create_order) AS orders
FROM dm.events;