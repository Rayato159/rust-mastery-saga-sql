-- Insert Data (Populate the Castle Rooms)
-- Crabby is populating the tables with adventurers, items, and quests.
INSERT INTO adventurers (name, level, class) VALUES
('Crabby', 10, 'Knight'),
('Shelldon', 5, 'Mage'),
('Hermie', 7, 'Ranger');

INSERT INTO items (item_name, item_type, rarity, adventurer_id) VALUES
('Sword of the Seas', 'Weapon', 'Epic', 1),
('Shell Shield', 'Armor', 'Rare', 1),
('Mystic Pearl', 'Magic Item', 'Legendary', 2),
('Bow of Tides', 'Weapon', 'Uncommon', 3);

INSERT INTO quests (quest_name, difficulty, reward, assigned_adventurer_id) VALUES
('Defend the Coral Reef', 'Medium', 'Golden Trident', 1),
('Retrieve the Mystic Pearl', 'Hard', 'Enchanted Necklace', 2),
('Scout the Shoreline', 'Easy', 'Bag of Coins', 3);

-- Select Data (Explore the Rooms)
-- Crabby wants to see all the adventurers and their levels.
SELECT * FROM adventurers;

-- Use WHERE to Filter Data (Find Hidden Items)
-- Find all items that are 'Epic' or 'Legendary'.
SELECT * FROM items WHERE rarity = 'Epic';
SELECT * FROM items WHERE (rarity = 'Magic Item' AND item_type = 'Weapon');
SELECT * FROM items WHERE (rarity = 'Legendary' OR rarity = 'Rare');
SELECT * FROM items WHERE rarity IN ('Epic', 'Legendary');
SELECT * FROM items WHERE rarity NOT IN ('Common', 'Uncommon');
SELECT * FROM items WHERE item_name LIKE '%of%';

-- Update Data (Level Up!)
-- Crabby has leveled up after a victorious battle!
UPDATE adventurers SET level = level + 1 WHERE name = 'Crabby';

-- Delete Data (Retire Old Items)
-- Crabby decides to retire the 'Shell Shield'.
DELETE FROM items WHERE item_name = 'Shell Shield';