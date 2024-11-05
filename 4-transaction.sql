-- Crabby wants to make multiple changes safely in case something goes wrong.
BEGIN;
    UPDATE adventurers SET level = level + 2 WHERE name = 'Shelldon';
    INSERT INTO items (item_name, item_type, rarity, adventurer_id) VALUES ('Tidal Staff', 'Weapon', 'Epic', 2);
    -- Oops! Let's roll back the changes.
ROLLBACK;

-- Crabby tries again and this time commits.
BEGIN;
    UPDATE adventurers SET level = level + 2 WHERE name = 'Shelldon';
    INSERT INTO items (item_name, item_type, rarity, adventurer_id) VALUES ('Tidal Staff', 'Weapon', 'Epic', 2);
COMMIT;