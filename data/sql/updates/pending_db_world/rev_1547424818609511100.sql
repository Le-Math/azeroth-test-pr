INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1547424818609511100');

UPDATE `creature_template`
SET
`AIName` = 'SmartAI',
`unit_flags` = 131076,
`unit_flags2` = 34816,
`flags_extra` = 2
WHERE `entry` = 20214;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 20214;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`)
VALUES
(20214,0,0,1,11,0,100,0,0,0,0,0,11,35788,0,0,0,0,0,1,0,0,0,0,0,0,0,'Arakkoa Egg - On Respawn - Cast Spell ''Arakkoa Egg Debuff'' (35788) on self'),
(20214,0,1,2,10,0,100,0,0,6,20000,20000,11,35788,0,0,0,0,0,1,0,0,0,0,0,0,0,'Arakkoa Egg - Within 6 Range OOC LoS - Cast Spell ''Arakkoa Egg Debuff'' (35788) on self'),
(20214,0,2,0,26,0,100,0,0,6,20000,20000,11,35788,0,0,0,0,0,1,0,0,0,0,0,0,0,'Arakkoa Egg - Within 6 Range IC LoS - Cast Spell ''Arakkoa Egg Debuff'' (35788) on self');