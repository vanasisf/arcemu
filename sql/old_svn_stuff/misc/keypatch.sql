-- key fixes
ALTER TABLE `ai_agents` DROP INDEX `a`;
ALTER TABLE `ai_agents` DROP PRIMARY KEY, ADD PRIMARY KEY (`entry`, `spell`);
ALTER TABLE `ai_threattospellid` DROP INDEX `a`;
ALTER TABLE `areatriggers` DROP INDEX `a`;
ALTER TABLE `auctionhouse` DROP INDEX `a`;
ALTER TABLE `banned_phrases` DROP INDEX `a`;
ALTER TABLE `clientaddons` DROP INDEX `a`;
ALTER TABLE `command_overrides` DROP INDEX `a`;
ALTER TABLE `creature_formations` DROP INDEX `a`;
ALTER TABLE `creature_names` DROP INDEX `a`;
ALTER TABLE `creature_names_localized` DROP INDEX `lol`;
ALTER TABLE `creature_proto` DROP INDEX `ID`;
ALTER TABLE `creature_spawns` DROP INDEX `a`, DROP INDEX `b`;
ALTER TABLE `creature_staticspawns` DROP INDEX `id`, DROP INDEX `a`;
ALTER TABLE `creature_waypoints` DROP INDEX `a`;
ALTER TABLE `creatureloot` DROP PRIMARY KEY, ADD PRIMARY KEY (`entryid`, `itemid`);
ALTER TABLE `disenchantingloot` DROP PRIMARY KEY, ADD PRIMARY KEY (`entryid`, `itemid`), ADD UNIQUE `index` (`index`);
ALTER TABLE `fishing` DROP INDEX `Zone`, ADD PRIMARY KEY (`Zone`);
ALTER TABLE `fishingloot` DROP PRIMARY KEY, ADD PRIMARY KEY (`itemid`, `entryid`);
ALTER TABLE `gameobject_names` DROP INDEX `entry`, ADD PRIMARY KEY (`entry`);
ALTER TABLE `gameobject_names_localized` DROP INDEX `lol`;
ALTER TABLE `gameobject_quest_item_binding` ADD PRIMARY KEY (`entry`, `item`, `quest`);
ALTER TABLE `gameobject_quest_pickup_binding` ADD PRIMARY KEY (`entry`, `quest`);
ALTER TABLE `gameobject_spawns` DROP INDEX `Map`;
ALTER TABLE `graveyards` DROP INDEX `index`;
ALTER TABLE `item_quest_association` DROP INDEX `item`, ADD PRIMARY KEY (`item`, `quest`);
ALTER TABLE `itemloot` DROP PRIMARY KEY, ADD PRIMARY KEY (`entryid`, `itemid`), DROP INDEX `index`, ADD UNIQUE `index` (`index`), DROP INDEX `i_gameobj_loot_entry`;
ALTER TABLE `itempages` DROP INDEX `entry`, ADD PRIMARY KEY (`entry`);
ALTER TABLE `itempages_localized` DROP INDEX `a`;
ALTER TABLE `items` DROP INDEX `entry`;
ALTER TABLE `items_localized` ADD PRIMARY KEY (`entry`, `language_code`);
ALTER TABLE `npc_gossip_textid` DROP INDEX `index`;
ALTER TABLE `npc_monstersay` ADD PRIMARY KEY (`entry`, `event`);
ALTER TABLE `npc_text` DROP INDEX `entry`, ADD PRIMARY KEY (`entry`);
ALTER TABLE `npc_text_localized` DROP INDEX `lol`;
ALTER TABLE `objectloot` DROP PRIMARY KEY, ADD PRIMARY KEY (`entryid`, `itemid`), DROP INDEX `index`, ADD UNIQUE `index` (`index`), DROP INDEX `entryid`;
ALTER TABLE `pickpocketingloot` DROP PRIMARY KEY, ADD PRIMARY KEY (`entryid`, `itemid`);
ALTER TABLE `playercreateinfo` DROP PRIMARY KEY, ADD PRIMARY KEY (`class`, `race`), ADD UNIQUE `index` (`Index`);
ALTER TABLE `playercreateinfo_items` ADD PRIMARY KEY (`indexid`, `protoid`);
ALTER TABLE `playercreateinfo_skills` ADD PRIMARY KEY (`indexid`, `skillid`);
ALTER TABLE `playercreateinfo_spells` ADD PRIMARY KEY (`indexid`, `spellid`);
ALTER TABLE `professiondiscoveries` ADD PRIMARY KEY (`skillid`, `spellid`);
ALTER TABLE `prospectingloot` DROP PRIMARY KEY, ADD PRIMARY KEY (`itemid`, `entryid`), ADD UNIQUE `index` (`index`);
ALTER TABLE `quests` DROP INDEX `entry`;
ALTER TABLE `quests_localized` DROP INDEX `lol`;
ALTER TABLE `reputation_creature_onkill` DROP INDEX `index`, ADD PRIMARY KEY (`creature_id`);
ALTER TABLE `reputation_faction_onkill` DROP INDEX `factindex`, ADD PRIMARY KEY (`faction_id`);
ALTER TABLE `reputation_instance_onkill` ADD PRIMARY KEY (`mapid`);
ALTER TABLE `skinningloot` DROP PRIMARY KEY, ADD PRIMARY KEY (`itemid`, `entryid`);
ALTER TABLE `trainer_defs` DROP INDEX `entry`, DROP INDEX `entry_2`;
ALTER TABLE `trainer_spells` DROP INDEX `entry`;
ALTER TABLE `vendors` ADD PRIMARY KEY (`entry`, `item`);
ALTER TABLE `zoneguards` ADD PRIMARY KEY (`alliance_entry`, `horde_entry`, `zone`);
