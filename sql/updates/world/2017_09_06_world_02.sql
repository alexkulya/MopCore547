-- Script: alexkulya
-- Progress: not 100%
-- Comment: custom dummy creature, no localization, missed some emotes, no information portal dummy aura or model

-- Lady Alistra - Text Event

-- Adding Creatures
DELETE FROM `creature_template` WHERE `entry`=44138;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(44138, 0, 0, 0, 0, 0, 169, 0, 0, 0, 'Lady Alistra Portal Dummy', '', '', 0, 80, 80, 0, 35, 0, 1.2, 1.14286, 1, 0, 104, 138, 0, 252, 1, 2000, 2000, 1, 33554688, 2048, 0, 0, 0, 0, 0, 0, 72, 106, 26, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 4, 1, 0.5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 16384, 128, '', 12340);

-- Disciple of the Unholy SAI
SET @ENTRY := 28491;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-128551, -128552, -128553) AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(-128551, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 80, 2849100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Disciple of the Unholy - On Data 1 1 - Start Script"),
(-128552, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 80, 2849100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Disciple of the Unholy - On Data 1 1 - Start Script"),
(-128553, 0, 0, 0, 38, 0, 100, 0, 1, 1, 0, 0, 80, 2849100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Disciple of the Unholy - On Data 1 1 - Start Script");

-- Actionlist SAI
SET @ENTRY := 2849100;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 9, 0, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 11, 50444, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Disciple of the Unholy - On Script - Cast Spell 'Corpse Explosion Effect'"),
(@ENTRY, 9, 1, 0, 0, 0, 100, 0, 500, 500, 0, 0, 51, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Disciple of the Unholy - On Script - Kill Self");

-- Shadow Construct SAI
SET @ENTRY := 29231;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 2923100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Shadow Construct - On Just Summoned - Start Script"),
(@ENTRY, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 41, 6000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Shadow Construct - On Death - Force Despawn (6000 ms)");

-- Actionlist SAI
SET @ENTRY := 2923100;
DELETE FROM `smart_scripts` WHERE `entryorguid`=2923100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(2923100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Shadow Construct - On Script - Combat Movement (0)"),
(2923100, 9, 1, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 12471, 0, 0, 0, 0, 0, 19, 28471, 20, 0, 0, 0, 0, 0, "Shadow Construct - On Script - Cast Spell 'Shadow Bolt'"),
(2923100, 9, 2, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 12471, 0, 0, 0, 0, 0, 19, 28471, 20, 0, 0, 0, 0, 0, "Shadow Construct - On Script - Cast Spell 'Shadow Bolt'"),
(2923100, 9, 3, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 12471, 0, 0, 0, 0, 0, 19, 28471, 20, 0, 0, 0, 0, 0, "Shadow Construct - On Script - Cast Spell 'Shadow Bolt'"),
(2923100, 9, 4, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 12471, 0, 0, 0, 0, 0, 19, 28471, 20, 0, 0, 0, 0, 0, "Shadow Construct - On Script - Cast Spell 'Shadow Bolt'"),
(2923100, 9, 5, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 12471, 0, 0, 0, 0, 0, 19, 28471, 20, 0, 0, 0, 0, 0, "Shadow Construct - On Script - Cast Spell 'Shadow Bolt'"),
(2923100, 9, 6, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 12471, 0, 0, 0, 0, 0, 19, 28471, 20, 0, 0, 0, 0, 0, "Shadow Construct - On Script - Cast Spell 'Shadow Bolt'"),
(2923100, 9, 7, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 12471, 0, 0, 0, 0, 0, 19, 28471, 20, 0, 0, 0, 0, 0, "Shadow Construct - On Script - Cast Spell 'Shadow Bolt'"),
(2923100, 9, 8, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 12471, 0, 0, 0, 0, 0, 19, 28471, 20, 0, 0, 0, 0, 0, "Shadow Construct - On Script - Cast Spell 'Shadow Bolt'"),
(2923100, 9, 9, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 12471, 0, 0, 0, 0, 0, 19, 28471, 20, 0, 0, 0, 0, 0, "Shadow Construct - On Script - Cast Spell 'Shadow Bolt'"),
(2923100, 9, 10, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 12471, 0, 0, 0, 0, 0, 19, 28471, 20, 0, 0, 0, 0, 0, "Shadow Construct - On Script - Cast Spell 'Shadow Bolt'"),
(2923100, 9, 11, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 12471, 0, 0, 0, 0, 0, 19, 28471, 20, 0, 0, 0, 0, 0, "Shadow Construct - On Script - Cast Spell 'Shadow Bolt'"),
(2923100, 9, 12, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 12471, 0, 0, 0, 0, 0, 19, 28471, 20, 0, 0, 0, 0, 0, "Shadow Construct - On Script - Cast Spell 'Shadow Bolt'"),
(2923100, 9, 13, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 12471, 0, 0, 0, 0, 0, 19, 28471, 20, 0, 0, 0, 0, 0, "Shadow Construct - On Script - Cast Spell 'Shadow Bolt'"),
(2923100, 9, 14, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 12471, 0, 0, 0, 0, 0, 19, 28471, 20, 0, 0, 0, 0, 0, "Shadow Construct - On Script - Cast Spell 'Shadow Bolt'"),
(2923100, 9, 15, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 12471, 0, 0, 0, 0, 0, 19, 28471, 20, 0, 0, 0, 0, 0, "Shadow Construct - On Script - Cast Spell 'Shadow Bolt'"),
(2923100, 9, 16, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 12471, 0, 0, 0, 0, 0, 19, 28471, 20, 0, 0, 0, 0, 0, "Shadow Construct - On Script - Cast Spell 'Shadow Bolt'"),
(2923100, 9, 17, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 12471, 0, 0, 0, 0, 0, 19, 28471, 20, 0, 0, 0, 0, 0, "Shadow Construct - On Script - Cast Spell 'Shadow Bolt'"),
(2923100, 9, 18, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 12471, 0, 0, 0, 0, 0, 19, 28471, 20, 0, 0, 0, 0, 0, "Shadow Construct - On Script - Cast Spell 'Shadow Bolt'"),
(2923100, 9, 19, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 12471, 0, 0, 0, 0, 0, 19, 28471, 20, 0, 0, 0, 0, 0, "Shadow Construct - On Script - Cast Spell 'Shadow Bolt'");

-- Forgotten Servant SAI
SET @ENTRY := 29232;
UPDATE `creature_template` SET `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 80, 2923200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Forgotten Servant - On Just Summoned - Start Script"),
(@ENTRY, 0, 1, 0, 6, 0, 100, 0, 0, 0, 0, 0, 41, 6000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Forgotten Servant - On Death - Force Despawn (6000 ms)");

-- Actionlist SAI
SET @ENTRY := 2923200;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(2923200, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Forgotten Servant - On Script - Set React State 'Passive'"),
(2923200, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 17, 373, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Forgotten Servant - On Script - Set Emote State 373"),
(2923200, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 11, 26047, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Forgotten Servant - On Script - Cast 'Birth'"),
(2923200, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 17, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Forgotten Servant - On Script - Set Emote State 0");

-- Lady Alistra SAI
SET @ENTRY := 28471;
UPDATE `creature_template` SET `unit_flags`=32768, `AIName`="SmartAI" WHERE `entry`=@ENTRY;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 0, 0, 0, 34, 0, 100, 0, 2, 2, 0, 0, 80, 2847100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Reached WP 2 - Start Script"),
(@ENTRY, 0, 1, 0, 34, 0, 100, 0, 2, 4, 0, 0, 80, 2847101, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Reached WP 4 - Start Script");

-- Actionlist SAI
SET @ENTRY   := 2847100;
SET @ENTRY_2 := 2847101;
SET @ENTRY_3 := 2847102;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (@ENTRY, @ENTRY_2, @ENTRY_3) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(@ENTRY, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Set React State 'Passive'"),
(@ENTRY, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Combat Movement (0)"),
(@ENTRY, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Remove NPC Flags Gossip, Quest Giver, Trainer & Class Trainer"),
(@ENTRY, 9, 3, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Say Text Line 0"),
(@ENTRY, 9, 4, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 11, 53765, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Cast Spell 'Open Shadow Portal'"),
(@ENTRY, 9, 5, 0, 0, 0, 100, 0, 3400, 3400, 0, 0, 12, 44138, 3, 6000, 0, 0, 0, 8, 0, 0, 0, 2503.625, -5658.723, 377.0364, 5.2703, "Lady Alistra - On Script - Summon Creature (44138)"),
(@ENTRY, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 44138, 3, 6000, 0, 0, 0, 8, 0, 0, 0, 2506.489, -5658.546, 377.0327, 5.2703, "Lady Alistra - On Script - Summon Creature (44138)"),
(@ENTRY, 9, 7, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 44138, 3, 6000, 0, 0, 0, 8, 0, 0, 0, 2502.377, -5660.958, 377.0406, 5.2703, "Lady Alistra - On Script - Summon Creature (44138)"),
(@ENTRY, 9, 8, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 12, 29231, 7, 0, 0, 0, 0, 8, 0, 0, 0, 2503.625, -5658.723, 377.0364, 5.2703, "Lady Alistra - On Script - Summon Creature (29231)"),
(@ENTRY, 9, 9, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 29231, 7, 0, 0, 0, 0, 8, 0, 0, 0, 2506.489, -5658.546, 377.0327, 5.2703, "Lady Alistra - On Script - Summon Creature (29231)"),
(@ENTRY, 9, 10, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 29231, 7, 0, 0, 0, 0, 8, 0, 0, 0, 2502.377, -5660.958, 377.0406, 5.2703, "Lady Alistra - On Script - Summon Creature (29231)"),
(@ENTRY, 9, 11, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Say Text Line 1"),
(@ENTRY, 9, 12, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 11, 53766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Cast Spell 'Anti-Magic Shell'"),
(@ENTRY, 9, 13, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Say Text Line 2"),
(@ENTRY, 9, 14, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Say Text Line 3"),
(@ENTRY, 9, 15, 0, 0, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Auto Attack (0)"),
(@ENTRY, 9, 16, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Set React State 'Defensive'"),
(@ENTRY, 9, 17, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 11, 53769, 0, 0, 0, 0, 0, 19, 29231, 20, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Cast Spell 'Death Coil'"),
(@ENTRY, 9, 18, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 53769, 0, 0, 0, 0, 0, 19, 29231, 20, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Cast Spell 'Death Coil'"),
(@ENTRY, 9, 19, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 11, 53769, 0, 0, 0, 0, 0, 19, 29231, 20, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Cast Spell 'Death Coil'"),
(@ENTRY, 9, 20, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 11, 53769, 0, 0, 0, 0, 0, 19, 29231, 20, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Cast Spell 'Death Coil'"),
(@ENTRY, 9, 21, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 11, 53769, 0, 0, 0, 0, 0, 19, 29231, 20, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Cast Spell 'Death Coil'"),
(@ENTRY, 9, 22, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 11, 53769, 0, 0, 0, 0, 0, 19, 29231, 20, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Cast Spell 'Death Coil'"),
(@ENTRY, 9, 23, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 11, 53769, 0, 0, 0, 0, 0, 19, 29231, 20, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Cast Spell 'Death Coil'"),
(@ENTRY, 9, 24, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 11, 53769, 0, 0, 0, 0, 0, 19, 29231, 20, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Cast Spell 'Death Coil'"),
(@ENTRY, 9, 25, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 11, 53769, 0, 0, 0, 0, 0, 19, 29231, 20, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Cast Spell 'Death Coil'"),
(@ENTRY, 9, 26, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 11, 53769, 0, 0, 0, 0, 0, 19, 29231, 20, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Cast Spell 'Death Coil'"),
(@ENTRY, 9, 27, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 11, 53769, 0, 0, 0, 0, 0, 19, 29231, 20, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Cast Spell 'Death Coil'"),
(@ENTRY, 9, 28, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 11, 53769, 0, 0, 0, 0, 0, 19, 29231, 20, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Cast Spell 'Death Coil'"),
(@ENTRY, 9, 29, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Set React State 'Passive'"),
(@ENTRY, 9, 30, 0, 0, 0, 100, 0, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Auto Attack (1)"),
(@ENTRY, 9, 31, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Say Text Line 4"),
(@ENTRY, 9, 32, 0, 0, 0, 100, 0, 0, 0, 0, 0, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Combat Movement (1)"),
(@ENTRY, 9, 33, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 81, 51, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Set NPC Flags Gossip, Quest Giver, Trainer & Class Trainer"),

(@ENTRY_2, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Set React State 'Passive'"),
(@ENTRY_2, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 81, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Remove NPC Flags Gossip, Quest Giver, Trainer & Class Trainer"),
(@ENTRY_2, 9, 2, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Say Text Line 0"),
(@ENTRY_2, 9, 3, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 11, 53765, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Cast Spell 'Open Shadow Portal'"),
(@ENTRY_2, 9, 4, 0, 0, 0, 100, 0, 3400, 3400, 0, 0, 12, 44138, 3, 6000, 0, 0, 0, 8, 0, 0, 0, 2503.62, -5658.72, 377.036, 5.2703, "Lady Alistra - On Script - Summon Creature (44138)"),
(@ENTRY_2, 9, 5, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 44138, 3, 6000, 0, 0, 0, 8, 0, 0, 0, 2506.49, -5658.55, 377.033, 5.2703, "Lady Alistra - On Script - Summon Creature (44138)"),
(@ENTRY_2, 9, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 44138, 3, 6000, 0, 0, 0, 8, 0, 0, 0, 2502.38, -5660.96, 377.041, 5.2703, "Lady Alistra - On Script - Summon Creature (44138)"),
(@ENTRY_2, 9, 7, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 12, 29232, 7, 0, 0, 0, 0, 8, 0, 0, 0, 2503.62, -5658.72, 377.036, 5.2703, "Lady Alistra - On Script - Summon Creature (29232)"),
(@ENTRY_2, 9, 8, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 29232, 7, 0, 0, 0, 0, 8, 0, 0, 0, 2506.49, -5658.55, 377.033, 5.2703, "Lady Alistra - On Script - Summon Creature (29232)"),
(@ENTRY_2, 9, 9, 0, 0, 0, 100, 0, 0, 0, 0, 0, 12, 29232, 7, 0, 0, 0, 0, 8, 0, 0, 0, 2502.38, -5660.96, 377.041, 5.2703, "Lady Alistra - On Script - Summon Creature (29232)"),
(@ENTRY_2, 9, 10, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 19, 29232, 20, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Say Text Line 0 (29232)"),
(@ENTRY_2, 9, 11, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 1, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Say Text Line 5"),
(@ENTRY_2, 9, 12, 0, 0, 0, 100, 0, 4500, 4500, 0, 0, 1, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Say Text Line 6"),
(@ENTRY_2, 9, 13, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Set React State 'Defensive'"),
(@ENTRY_2, 9, 14, 0, 0, 0, 100, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Auto Attack (0)"),
(@ENTRY_2, 9, 15, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 11, 49938, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Cast Spell 'Death and Decay'"),
(@ENTRY_2, 9, 16, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 19, 29232, 20, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Say Text Line 1 (29232)"),
(@ENTRY_2, 9, 17, 0, 0, 0, 100, 0, 11500, 11500, 0, 0, 1, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Say Text Line 7"),
(@ENTRY_2, 9, 18, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 11, 53717, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Cast Spell 'Corpse Explosion'"),
(@ENTRY_2, 9, 19, 0, 0, 0, 100, 0, 2400, 2400, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, 128553, 28491, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Set Data 1 1 (GUID: 128553)"),
(@ENTRY_2, 9, 20, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, 128552, 28491, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Set Data 1 1 (GUID: 128552)"),
(@ENTRY_2, 9, 21, 0, 0, 0, 100, 0, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 10, 128551, 28491, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Set Data 1 1 (GUID: 128551)"),
(@ENTRY_2, 9, 22, 0, 0, 0, 100, 0, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Set Active (1)"),
(@ENTRY_2, 9, 23, 0, 0, 0, 100, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Set React State 'Passive'"),
(@ENTRY_2, 9, 24, 0, 0, 0, 100, 0, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Auto Attack (1)"),
(@ENTRY_2, 9, 25, 0, 0, 0, 100, 0, 3500, 3500, 0, 0, 1, 8, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Say Text Line 8"),
(@ENTRY_2, 9, 26, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 1, 9, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Say Text Line 9"),
(@ENTRY_2, 9, 27, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Set Run (0)"),
(@ENTRY_2, 9, 28, 0, 0, 0, 100, 0, 2000, 2000, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 2488.78, -5654.11, 376.9505, 2.6212, "Lady Alistra - On Script - Move To Position"),
(@ENTRY_2, 9, 29, 0, 0, 0, 100, 0, 9000, 9000, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 2506.22, -5663.2, 377.036, 5.8257, "Lady Alistra - On Script - Move To Position"),
(@ENTRY_2, 9, 30, 0, 0, 0, 100, 0, 9000, 9000, 0, 0, 66, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 2.23402, "Lady Alistra - On Script - Set Orientation (2.23402)"),
(@ENTRY_2, 9, 31, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 59, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Set Run (1)"),
(@ENTRY_2, 9, 32, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 81, 51, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, "Lady Alistra - On Script - Set NPC Flags Gossip, Quest Giver, Trainer & Class Trainer");

-- Lady Alistra - WP
SET @NPC := 128505;
SET @PATH := @NPC * 10;
UPDATE `creature` SET `spawndist`=0,`MovementType`=2 WHERE `guid`=@NPC;
DELETE FROM `creature_addon` WHERE `guid`=@NPC;
INSERT INTO `creature_addon` (`guid`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`auras`) VALUES (@NPC,@PATH,0,0,1,0, '');
DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`,`point`,`position_x`,`position_y`,`position_z`, `orientation`, `delay`) VALUES
(@PATH, 1, 2506.22, -5663.2, 377.036, 2.23402, 50000),
(@PATH, 2, 2506.22, -5663.2, 377.036, 2.23402, 0),
(@PATH, 3, 2506.22, -5663.2, 377.036, 2.23402, 300000),
(@PATH, 4, 2506.22, -5663.2, 377.036, 2.23402, 0),
(@PATH, 5, 2506.22, -5663.2, 377.036, 2.23402, 300000),
(@PATH, 6, 2506.22, -5663.2, 377.036, 2.23402, 0);

-- Lady Alistra Texts
SET @ENTRY                   := 28471;
SET @FORGOTTEN_SERVANT_ENTRY := 29232;
SET @CENARION_SCOUT_ENTRY    := 29220;

DELETE FROM `creature_text` WHERE `entry` IN (@ENTRY, @FORGOTTEN_SERVANT_ENTRY, @CENARION_SCOUT_ENTRY);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`language`,`probability`,`emote`,`duration`,`sound`,`comment`) VALUES
-- Summoning
(@ENTRY, 0, 0, 'Moving on...',                                                                                                                                           12, 0, 100, 0, 0, 0, 'Lady Alistra'),
(@ENTRY, 0, 1, 'Dearest shadow realm, grace us with the presense of one of your many denizens.',                                                                         12, 0, 100, 0, 0, 0, 'Lady Alistra'),
(@ENTRY, 0, 2, 'What beast lies in store for us...',                                                                                                                     12, 0, 100, 0, 0, 0, 'Lady Alistra'),
(@ENTRY, 0, 3, 'Let us coldly greet another inhabitant of the shadow realm...',                                                                                          12, 0, 100, 0, 0, 0, 'Lady Alistra'),
(@ENTRY, 0, 4, 'There are many lessons left to learn, let us move onto our next subject...',                                                                             12, 0, 100, 0, 0, 0, 'Lady Alistra'),
(@ENTRY, 0, 5, 'Let us see what atrocity we can pull from the shadow realm this time...',                                                                                12, 0, 100, 0, 0, 0, 'Lady Alistra'),
-- Shadow Constructs
(@ENTRY, 1, 0, 'Skeletal mages. A perfect opportunity to display the utility of some of our powers.',                                                                    12, 0, 100, 0, 0, 0, 'Lady Alistra'),
(@ENTRY, 2, 0, 'Your spells will not be as potent as mine, but you will find anti-magic shells to be entirely invaluable against a large number of magical attacks.',    12, 0, 100, 0, 0, 0, 'Lady Alistra'),
(@ENTRY, 3, 0, 'The power you absorb from spells with your shell can be used to counter with your other attacks.',                                                       12, 0, 100, 0, 0, 0, 'Lady Alistra'),
(@ENTRY, 4, 0, 'Mages fear our kind... with reason. Play upon this fear, disciples.',                                                                                    12, 0, 100, 0, 0, 0, 'Lady Alistra'),
-- Forgotten Servants
(@ENTRY, 5, 0, 'Ghouls? We have quite enough of those already.',                                                                                                         12, 0, 100, 0, 0, 0, 'Lady Alistra'),
(@ENTRY, 6, 0, 'I often find the trouble with ghouls is that they outlive their usefulness too quickly. Let us let death and decay reclaim these.',                      12, 0, 100, 0, 0, 0, 'Lady Alistra'),
(@ENTRY, 7, 0, 'At times, their corpses can prove more useful than the ghouls were themselves.',                                                                         12, 0, 100, 0, 0, 0, 'Lady Alistra'),
(@ENTRY, 8, 0, 'Hmm...',                                                                                                                                                 12, 0, 100, 0, 0, 0, 'Lady Alistra'),
(@ENTRY, 9, 0, 'Unfortunate.',                                                                                                                                           12, 0, 100, 0, 0, 0, 'Lady Alistra'),
-- Cenarion Scout
(@ENTRY, 10, 0, 'A druid! How curious... I wonder how it got in there.',                                                                                                 12, 0, 100, 0, 0, 0, 'Lady Alistra'),
(@ENTRY, 11, 0, 'Disciples... you will find with time that many healing spells fall victim to the degeneration of our strikes.',                                         12, 0, 100, 0, 0, 0, 'Lady Alistra'),
(@ENTRY, 12, 0, 'Some healers lack the knowledge to counter the diseases that we master.',                                                                               12, 0, 100, 0, 0, 0, 'Lady Alistra'),
(@ENTRY, 13, 0, 'This lack of knowledge is just one more weakness among many. There is little hope against the power of death itself.',                                  12, 0, 100, 0, 0, 0, 'Lady Alistra'),

(@FORGOTTEN_SERVANT_ENTRY, 0, 0, 'Me... back... master...',                                                                                                              12, 0, 100, 0, 0, 0, 'Forgotten Servant'),
(@FORGOTTEN_SERVANT_ENTRY, 0, 1, 'Me come back... master. Me... loyal servant.',                                                                                         12, 0, 100, 0, 0, 0, 'Forgotten Servant'),
(@FORGOTTEN_SERVANT_ENTRY, 0, 2, 'Sorry... me gone... so long... master.',                                                                                               12, 0, 100, 0, 0, 0, 'Forgotten Servant'),
(@FORGOTTEN_SERVANT_ENTRY, 0, 3, 'Finally... home...',                                                                                                                   12, 0, 100, 0, 0, 0, 'Forgotten Servant'),

(@FORGOTTEN_SERVANT_ENTRY, 1, 0, 'Master?',                                                                                                                              12, 0, 100, 0, 0, 0, 'Forgotten Servant'),
(@FORGOTTEN_SERVANT_ENTRY, 1, 1, 'Me... bad?',                                                                                                                           12, 0, 100, 0, 0, 0, 'Forgotten Servant'),
(@FORGOTTEN_SERVANT_ENTRY, 1, 2, 'It hurts...',                                                                                                                          12, 0, 100, 0, 0, 0, 'Forgotten Servant'),

(@CENARION_SCOUT_ENTRY,    0, 0, 'Wha... where am I?',                                                                                                                   12, 0, 100, 0, 0, 0, 'Cenarion Scout');
