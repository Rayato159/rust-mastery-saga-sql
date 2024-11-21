begin;
	update adventurers set level = level + 2 where name = 'Shelldon';
	insert into items (item_name, item_type, rarity, adventurer_id) 
	values ('Tidal Staff', 'Weapon', 'Epic', 2);
commit;
