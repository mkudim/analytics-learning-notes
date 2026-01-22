SELECT
    count(DISTINCT event_id)
FROM dm.events;

SELECT
    event_id,
    COUNT(*) AS cnt
FROM dm.events
GROUP BY event_id
HAVING COUNT(*) > 1
ORDER BY cnt DESC, event_id;