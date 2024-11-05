-- Crabby needs to set up tables to store data about his adventures, items, and quests.
CREATE TABLE adventurers (
    adventurer_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    level INTEGER DEFAULT 1,
    class VARCHAR(30) NOT NULL
);

CREATE TABLE items (
    item_id SERIAL PRIMARY KEY,
    item_name VARCHAR(50) NOT NULL,
    item_type VARCHAR(30),
    rarity VARCHAR(20),
    adventurer_id INTEGER REFERENCES adventurers(adventurer_id)
);

CREATE TABLE quests (
    quest_id SERIAL PRIMARY KEY,
    quest_name VARCHAR(100) NOT NULL,
    difficulty VARCHAR(20),
    reward VARCHAR(100),
    assigned_adventurer_id INTEGER REFERENCES adventurers(adventurer_id)
);
