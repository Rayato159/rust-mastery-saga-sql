-- Use JOIN to Connect Tables (Link Adventures Together)
-- Crabby wants to see which adventurer is assigned to each quest.
SELECT q.quest_name, a.name AS adventurer_name
FROM quests q
JOIN adventurers a ON q.assigned_adventurer_id = a.adventurer_id;

-- Aggregate Functions (Count the Treasure)
-- Crabby wants to count how many items each adventurer has.
SELECT a.name, COUNT(i.item_id) AS total_items
FROM adventurers a
LEFT JOIN items i ON a.adventurer_id = i.adventurer_id
GROUP BY a.name;

-- HAVING Clause (Filter the Treasure Rooms)
-- Crabby only wants to see adventurers with more than 1 item.
SELECT a.name, COUNT(i.item_id) AS total_items
FROM adventurers a
LEFT JOIN items i ON a.adventurer_id = i.adventurer_id
GROUP BY a.name
HAVING COUNT(i.item_id) > 1;

-- Order the Data (Arrange the Loot)
-- Crabby wants to see the adventurers sorted by level in descending order.
SELECT * FROM adventurers ORDER BY level DESC;

-- Limit the Results (Only the Best)
-- Crabby wants to see just the top 2 highest-level adventurers.
SELECT * FROM adventurers ORDER BY level DESC LIMIT 2;