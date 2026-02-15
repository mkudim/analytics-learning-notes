ALTER TABLE dm.events
ALTER COLUMN event_id TYPE uuid
USING event_id::uuid;