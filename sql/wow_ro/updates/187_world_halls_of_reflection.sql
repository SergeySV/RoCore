ALTER TABLE db_version CHANGE COLUMN required_183_world_wintergrasp required_187_world_halls_of_reflection bit;

-- Cleanup first
UPDATE `creature_template` SET `Scriptname`=' ' WHERE `entry` IN (38112,38113,37221,37223,38175,38172,38567,38177,38173,38176);
UPDATE `instance_template` SET `script`='instance_hall_of_reflection' WHERE (`map`='668');

update `creature_template` set `speed_walk`='1.5', `speed_run`='2.0' where `entry` in (36954, 37226);
update `creature_template` set `AIName`='', `Scriptname`='npc_jaina_and_sylvana_HRintro' where `entry` in (37221, 37223);
update `creature_template` set `AIName`='', `Scriptname`='boss_falric' where `entry` in (38112);
update `creature_template` set `AIName`='', `Scriptname`='boss_marwyn' where `entry` in (38113);
update `creature_template` set `AIName`='', `Scriptname`='npc_lich_king_hr' where `entry` in (36954);
update `creature_template` set `AIName`='', `Scriptname`='boss_lich_king_hor' where `entry` in (37226);
update `creature_template` set `AIName`='', `Scriptname`='npc_jaina_and_sylvana_HRextro' where `entry` in (36955, 37554);
update `creature_template` set `AIName`='', `Scriptname`='npc_raging_gnoul' where `entry` in (36940);
update `creature_template` set `AIName`='', `Scriptname`='npc_risen_witch_doctor' where `entry` in (36941);
update `creature_template` set `AIName`='', `Scriptname`='npc_abon' where `entry` in (37069);
update `creature_template` set `scale`='0.8', `equipment_id`='1221' where `entry` in (37221, 36955);
update `creature_template` set `equipment_id`='1290' where `entry` in (37223, 37554);
update `creature_template` set `equipment_id`='0' where `entry`=36954;
update `creature_template` set `scale`='1' where `entry` in (37223);
update `creature_template` set `scale`='0.8' where `entry` in (36658, 37225, 37223, 37226, 37554);
update `gameobject_template` set `faction`='1375' where `entry` in (197341, 202302, 201385, 201596);
update `creature_template` set `unit_flags`='768', `type_flags`='268435564' where `entry` in (38177, 38176, 38173, 38172, 38567, 38175);
update `creature_template` set `AIName`='', `Scriptname`='npc_frostworn_general' where `entry`=36723;

REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('70464', '1', '36881');
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('69708', '1', '37226');
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('70194', '1', '37226');
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('69784', '1', '37014');

REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('69784', '1', '37014');
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('70224', '1', '37014');
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('70225', '1', '37014');

REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('69431', '1', '37497');
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('69431', '1', '37496');
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('69431', '1', '37496');

REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('69431', '1', '37588');
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('69431', '1', '37584');
REPLACE INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES ('69431', '1', '37587');

REPLACE INTO `creature_equip_template` VALUES ('38112', '50249', '49777', '0'); #Falric
update `creature_template` set `equipment_id`='38112' where `entry` in (38112);
REPLACE INTO `creature_equip_template` VALUES ('38113', '50248', '50248', '0'); #Marwyn
update `creature_template` set `equipment_id`='38113' where `entry` in (38113);

REPLACE INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (14531739, 201596, 668, 1, 128, 5275.28, 1694.23, 786.147, 0.981225, 0, 0, 0.471166, 0.882044, 25, 0, 1);

delete from `creature` where `id`=36955;
insert INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (135349, 36955, 668, 3, 128, 0, 0, 5547.27, 2256.95, 733.011, 0.835987, 7200, 0, 0, 252000, 881400, 0, 0);

delete from `creature` where `id`=37554;
insert INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (135345, 37554, 668, 3, 64, 0, 0, 5547.27, 2256.95, 733.011, 0.835987, 7200, 0, 0, 252000, 881400, 0, 0);

delete from `creature` where `id`=37226;
insert INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (135344, 37226, 668, 3, 1, 0, 0, 5551.29, 2261.33, 733.012, 4.0452, 604800, 0, 0, 27890000, 0, 0, 0);

REPLACE INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid_A`, `modelid_A2`, `modelid_H`, `modelid_H2`, `name`, `subname`, `IconName`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `unk16`, `unk17`, `RacialLeader`, `questItem1`, `questItem2`, `questItem3`, `questItem4`, `questItem5`, `questItem6`, `movementId`, `RegenHealth`, `equipment_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES (37014, 0, 0, 0, 0, 0, 169, 16925, 169, 0, 'Ice Wall Target', '', '', 1, 1, 1, 1, 0, 0, 17, 35, 35, 0, 1, 0, 1, 2, 0, 0, 1, 2000, 2000, 1, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1.35, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '');

DELETE FROM `creature` WHERE `id`=38177;
DELETE FROM `creature` WHERE `id`=38176;
DELETE FROM `creature` WHERE `id`=38173;
DELETE FROM `creature` WHERE `id`=38172;
DELETE FROM `creature` WHERE `id`=38567;
DELETE FROM `creature` WHERE `id`=38175;
DELETE FROM `creature` WHERE `id`=36940;
DELETE FROM `creature` WHERE `id`=36941;
DELETE FROM `creature` WHERE `id`=37069;

DELETE FROM `gameobject` WHERE `id`=201385;
#INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES (3485, 201385, 668, 3, 1, 5540.39, 2086.48, 731.066, 1.00057, 0, 0, 0.479677, 0.877445, 604800, 0, 0);

#hall of reflection
REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (135341, 38112, 668, 3, 1, 0, 0, 5276.81, 2037.45, 709.32, 5.58779, 604800, 0, 0, 377468, 0, 0, 0);

REPLACE INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (135342, 38113, 668, 3, 1, 0, 0, 5341.72, 1975.74, 709.32, 2.40694, 604800, 0, 0, 539240, 0, 0, 0);


DELETE FROM `script_texts` WHERE `comment` = 67234;
insert into `script_texts` (`entry`,`content_default`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
# SCENE - Hall Of Reflection (Intro) - PreUther
(-1594433, 'g', '��� �� ��� �������... ����� ������ � �����.', 16631,1,0,1, '67234'),
(-1594434, 'g', '�... � �� ���� ����� ������. ������� ������ ����� ���� ��� ������ ������! ��� � ������� ����. ������ �����!', 17049,1,0,1, '67234'),
(-1594435, 'g', '��� ��� ��� � ������? �������? ������ �����!', 16632,1,0,1, '67234'),
(-1594436, 'g', '������� ������, ������ ����������� ���� �����������.', 16633,1,0,1, '67234'),
(-1594437, 'g', '���� ����� ������������ ����, ����� � ��� ������ ���� ���, �������� � ���� �����.', 17050,1,0,1, '67234'),
(-1594438, 'g', '��������. ��� ��� �������� ����� ������ ������� ���� �� ������ ����. � ��������� ���������� � ������ ������������ � ������� ������. ������������... ���� �����! �����.', 16634,1,0,1, '67234'),
(-1594439, 'g', '� �� ���� ��� ���������. �����! ���������! � �������� ���������� ����� � �����. �������� �������� ��������� ������!', 17051,1,0,1, '67234'),
# SCENE - Hall Of Reflection (Intro) - UtherDialog
(-1594440, 'g', '������? ������� ��� ��?', 16666,1,0,1, '67234'),
(-1594441, 'g', '���������� �������! ������� ��� ��� �������� ��� ���� ��������� ��� ����� ��� ������. �������� ������ � �� ������� ��� �� ����� �����.', 16659,1,0,1, '67234'),
(-1594442, 'g', '����? ����� ����! ���... ��� ��� ����.', 16635,1,0,1, '67234'),
(-1594443, 'g', '����? ��� �����������? ���...', 17052,1,0,1, '67234'),
(-1594444, 'g', '������ � ��� ���� �������. ������ - ��� ����� ��� ��� ����� ������� ������ ������ �� ����� �����.', 16667,1,0,1, '67234'),
(-1594445, 'g', '� ��� ���� �������. ������ - ��� ����� ��� ��� ����� ������� ������ ������ �� ����� �����.', 16660,1,0,1, '67234'),
(-1594446, 'g', '����� �����? ����� �...', 16636,1,0,1, '67234'),
(-1594447, 'g', '������ - ��� �����? ������ ��� ������ ������� �������!', 17053,1,0,1, '67234'),
(-1594448, 'g', '��� �������. ������ ����� ���. ����� ���� ���� ���������� � �������� ������ - ����. ������� ����.', 16668,1,0,1, '67234'),
(-1594449, 'g', '��� �� �������� ������ - ����. ��������� ���� �� �����, ����� � ��������. �� ����� ����� ���������� � ��������� �� ��� ������ �����. �� ��� �� ���� ��������, �� ������� ���� ������ ��� �������� ��� � ������� ���.', 16661,1,0,1, '67234'),
(-1594450, 'g', '�� ���� ���� �������� ������� ������� ������... � ������ ����������!', 16637,1,0,1, '67234'),
(-1594451, 'g', '������ ���� ������!', 17054,1,0,1, '67234'),
(-1594452, 'g', '������ �������� ����. ��� ����� ���������� ������ - ����. � ��� ������ ������������. �� ����� ��� ���� � ��������� � �������������� ������ �����.', 16669,1,0,1, '67234'),
(-1594453, 'g', '��������... �� ����! ������ - ��� ������ ���� ������. ���� ���� �� ������ ������ ��� �� ������ ����� ������ ��� �����. ��������� ��������� ����� ������� �� ��� ��� ���� ������� � ��������� ��� �� ����� ����.', 16662,1,0,1, '67234'),
(-1594454, 'g', '�� ��� ����? ��� ��� ����� ����� ������, �����...', 16638,1,0,1, '67234'),
(-1594455, 'g', '���� �� ����� ����� �����?', 17055,1,0,1, '67234'),
(-1594456, 'g', '������ �� ���� �������. ������ - ���� ����� ���������� �� ��� �����, ��� �� ������ � ��������. �� ����� �������, � �������� �����!', 16670,1,0,1, '67234'),
(-1594457, 'g', '������ �������� �����... ���� �� �� �����, ������� ��� ����������� ������ ������ - ����, ����� ����� �� ��� ���������� ������.', 16663,1,0,1, '67234'),
(-1594458, 'g', '�� ���� ���� ������ ����. � ������ ��� �� ���� �����. �� ��������� ���� ����� ������ � �������, ������� ��������� � ������ � �������� ������� ������.', 16639,1,0,1, '67234'),
(-1594459, 'g', '���� ����� ����� ��� ��� ��� � ������ - ����. ����� �� ������ ����� �� ��� ��������, ���� ���� �� ������ ������ - ����, ��� �� ������ ����� ������ ��� �����. ��� ������ ����� �� ����� �� ��� ��� ���� ������� � ��������� ��� �����.', 16671,1,0,1, '67234'),
(-1594460, 'g', '��� ����������� ������ ������� ������ - ���� ��� ����� ��� ��� ��� �� ��� ��������.', 16664,1,0,1, '67234'),
(-1594461, 'g', '���� �� ����� ����� �����?', 16640,1,0,1, '67234'),
(-1594462, 'g', '������� ����!', 17056,1,0,1, '67234'),
(-1594463, 'g', '������� ������, ����������� ����.', 16672,1,0,1, '67234'),
(-1594464, 'g', '������ ������... ��� ������� ���� �� �� �����, ������� ��� ��� �������� ������ ������ - ����, ����� ����� �� ��� ���������� ������.', 16673,1,0,1, '67234'),
(-1594465, 'g', '�� ����� ��� ���� �������?', 16641,1,0,1, '67234'),
(-1594466, 'g', '��� ������... �����... ��... �� ������������... ��... �� ������...', 16674,1,0,1, '67234'),
(-1594467, 'g', '��... �����... ��... �� ������������... ��... �� ������...', 16665,1,0,1, '67234'),
(-1594468, 'g', '������� �������.', 17225,1,0,0, '67234'),
(-1594469, 'g', '��� �� ������ ���������� � ��������? ��� ������ �����!', 17226,1,0,0, '67234'),
(-1594470, 'g', '������, ������, ����� ��������� ��������� �� ���� � ��� �����.', 17227,1,0,0, '67234'),
(-1594471, 'g', '�� �� ���� �� ����������� �����. � ������ ������, � ������ �����.', 16642,1,0,1, '67234'),
(-1594472, 'g', '�� ��� ������ �� ���� �� ������ �����. � ������ ����!', 17057,1,0,1, '67234'),
(-1594473, 'g', '������ ��������! ��� ���� �� ����� ����� ����! ������ �� ���� �������, ������ ������ � ���� ��������!', 17229,1,0,0, '67234'),
(-1594474, 'g', '� �� ������� ������� ������ ��������. �� ���� ��� ���� �� ��������, �� �� ��������� ����� ������� � ������ ���� ���� ������ ��������!', 17228,1,0,0, '67234'),
(-1594475, 'g', '��� ��������� ��� ��������!', 16717,1,0,0, '67234'),
(-1594476, 'g', '��� ��������� ��� ��������!', 16741,1,0,0, '67234'),
# SCENE - Hall Of Reflection (Extro) - PreEscape
(-1594477, 'g', '���� �������� ������� ������! ��� �� � �������... ��������... ��� �� ������� �������� ��������� �����...', 17212,1,0,0, '67234'),
(-1594478, 'g', '� �� ������� ������� ������ ��������! �� ���� ��� ���� �� ��������. �� ��� ������ ������� ��� ����� ������...', 17213,1,0,0, '67234'),
(-1594479, 'g', '�� ������� �����. �� ������ ��������� �� ���� ��� ����� ������. ��� ����� �������� ��� �� �� �����, ������� �����...', 16644,1,0,1, '67234'),
(-1594480, 'g', '�� ������� �����. ����� ������, �� ����. �� ������ ��������� �� ���� �� ��������. � ���������� ��� ��������� ���� �� ����� �������.', 17058,1,0,1, '67234'),
# SCENE - Hall Of Reflection (Extro) - Escape
(-1594481, 'g', '������ ������������ ������� �������!', 17221,1,0,0, '67234'),
(-1594482, 'g', '���������� �����������, �� ����� �� �������!', 17216,1,0,0, '67234'),
(-1594483, 'g', '�������� ��! ��������� ��� �� ����!', 17222,1,0,0, '67234'),
(-1594484, 'g', '������� ���!', 17214,1,0,0, '67234'),
(-1594485, 'g', '������� � �������.', 17215,1,0,0, '67234'),
(-1594486, 'g', '������ ������!', 17217,1,0,0, '67234'),
(-1594487, 'g', '� ������� ��� ��������, � �� ����������� ������ �� ����������!', 16607,1,0,0, '67234'),
(-1594488, 'g', '������� ����� �� ������� �������� �����. ������� ������ �� ���������� � ������� ��� ��������.', 17029,1,0,0, '67234'),
(-1594489, 'g', '����� ������� �����... � ������� ��, ������ �� ����� ������ �������� ��� ����������...', 16608,1,0,0, '67234'),
(-1594490, 'g', '��� ���� ��������. ��������� �����! � ������� ��� �����!', 17030,1,0,0, '67234'),
(-1594491, 'g', '���������� ��������� ������!', 17218,1,0,0, '67234'),
(-1594492, 'g', '�� � �������!', 17219,1,0,0, '67234'),
(-1594493, 'g', '��� ����� �� ������� ��������������?', 17220,1,0,0, '67234'),
(-1594494, 'g', '�� � ���� ������. �  ������ ��� ��� ������ ����� ��� ����������� �� �����!', 16609,1,0,0, '67234'),
(-1594495, 'g', '���� �������� ������ �� �������� ���, ��������. � ����� �� � ����!', 16610,1,0,0, '67234'),
(-1594496, 'g', '� ������ �� ���� ��� ����� ���� ����� �� ��������� ����!', 17031,1,0,0, '67234'),
(-1594497, 'g', '�� �� ��������� ��� ���� ������. ����������� ������ � � �������� ��� ��������.', 17032,1,0,0, '67234'),
(-1594498, 'g', '� ���� ����� ������!', 16645,1,0,0, '67234'),
(-1594499, 'g', '�� ����� ���������, �� ����������!', 16646,1,0,0, '67234'),
(-1594500, 'g', '� ���� ����� ������!', 17059,1,0,0, '67234'),
(-1594501, 'g', '�� ����� ���������, �� ����������!', 17060,1,0,0, '67234'),
(-1594502, 'g', '������ ������ ������. ������ ��� �������� ���������, ��� ���� ��������� �����!', 16647,1,0,0, '67234'),
(-1594503, 'g', '��������� �����, ������ ��� ���������� �����. ��������� ����� ��� ���� ��������� �����.', 17061,1,0,0, '67234'),
(-1594504, 'g', '������... ������ ������ ������ �� ���!', 17223,1,0,0, '67234'),
(-1594505, 'g', '������� ��������� ��������� �� ���� ���������!', 16714,1,0,0, '67234'),
(-1594506, 'g', '�������� �������� ���� ����������� � ������� ��� ��������! ��� ��� ��� ������� � �������, ������� ���� ������!', 16738,1,0,0, '67234'),

#Falric
(-1594507, 'g', '�������, ������� � ����... ����� �� ������� ����� ���������. �� ��������� �� ������!', 16710,1,0,0, '67234'),
(-1594508, 'g', '������... ����� ��...', 16713,1,0,0, '67234'),
(-1594509, 'g', '�������� ������!', 16711,1,0,0, '67234'),
(-1594510, 'g', '�������������� ������� � �� ��������� ��������!', 16712,1,0,0, '67234'),
(-1594511, 'g', '��� ��������� ��������!', 16715,1,0,0, '67234'),
(-1594512, 'g', '��� ������� �����!', 16716,1,0,0, '67234'),

#Marwyn
(-1594513, 'g', '�� ������� ����� ���� ������!', 16734,1,0,0, '67234'),
(-1594514, 'g', '�����... ��... ������ �� ������� ������. �� �������� � �������� ������� ���� ���...', 16737,1,0,0, '67234'),
(-1594515, 'g', '� �������� ��� ����� �� ������ � ��� ������, �� ����� �� ��� ��������... ����������...', 16735,1,0,0, '67234'),
(-1594516, 'g', '���������� ����������!', 16736,1,0,0, '67234'),
(-1594517, 'g', '�� ������� ��� ����������� ���� �����!', 16739,1,0,0, '67234'),
(-1594518, 'g', '������� ��� �����!', 16740,1,0,0, '67234'),

#FrostWorn General
(-1594519, 'g', '�� �� �������� ��������� ����� ������� - �����!', 16921,1,0,0, '67234'),
(-1594520, 'g', '��������... � ������ ���...', 16922,1,0,0, '67234');

DELETE FROM script_waypoint WHERE entry=36955;
DELETE FROM script_waypoint WHERE entry=37226;
DELETE FROM script_waypoint WHERE entry=37554;
INSERT INTO script_waypoint VALUES
#Jaina

   (36955, 0, 5587.682,2228.586,733.011, 0, 'WP1'),
   (36955, 1, 5600.715,2209.058,731.618, 0, 'WP2'),
   (36955, 2, 5606.417,2193.029,731.129, 0, 'WP3'),
   (36955, 3, 5598.562,2167.806,730.918, 0, 'WP4 - Summon IceWall 01'), 
   (36955, 4, 5556.436,2099.827,731.827, 0, 'WP5 - Spell Channel'),
   (36955, 5, 5543.498,2071.234,731.702, 0, 'WP6'),
   (36955, 6, 5528.969,2036.121,731.407, 0, 'WP7'),
   (36955, 7, 5512.045,1996.702,735.122, 0, 'WP8'),
   (36955, 8, 5504.490,1988.789,735.886, 0, 'WP9 - Spell Channel'),
   (36955, 9, 5489.645,1966.389,737.653, 0, 'WP10'),
   (36955, 10, 5475.517,1943.176,741.146, 0, 'WP11'),
   (36955, 11, 5466.930,1926.049,743.536, 0, 'WP12'),
   (36955, 12, 5445.157,1894.955,748.757, 0, 'WP13 - Spell Channel'),
   (36955, 13, 5425.907,1869.708,753.237, 0, 'WP14'),
   (36955, 14, 5405.118,1833.937,757.486, 0, 'WP15'),
   (36955, 15, 5370.324,1799.375,761.007, 0, 'WP16'),
   (36955, 16, 5335.422,1766.951,767.635, 0, 'WP17 - Spell Channel'),
   (36955, 17, 5311.438,1739.390,774.165, 0, 'WP18'),
   (36955, 18, 5283.589,1703.755,784.176, 0, 'WP19'),
   (36955, 19, 5260.400,1677.775,784.301, 3000, 'WP20'),
   (36955, 20, 5262.439,1680.410,784.294, 0, 'WP21'),
   (36955, 21, 5260.400,1677.775,784.301, 0, 'WP22'),

#Sylvana

   (37554, 0, 5587.682,2228.586,733.011, 0, 'WP1'),
   (37554, 1, 5600.715,2209.058,731.618, 0, 'WP2'),
   (37554, 2, 5606.417,2193.029,731.129, 0, 'WP3'),
   (37554, 3, 5598.562,2167.806,730.918, 0, 'WP4 - Summon IceWall 01'), 
   (37554, 4, 5556.436,2099.827,731.827, 0, 'WP5 - Spell Channel'),
   (37554, 5, 5543.498,2071.234,731.702, 0, 'WP6'),
   (37554, 6, 5528.969,2036.121,731.407, 0, 'WP7'),
   (37554, 7, 5512.045,1996.702,735.122, 0, 'WP8'),
   (37554, 8, 5504.490,1988.789,735.886, 0, 'WP9 - Spell Channel'),
   (37554, 9, 5489.645,1966.389,737.653, 0, 'WP10'),
   (37554, 10, 5475.517,1943.176,741.146, 0, 'WP11'),
   (37554, 11, 5466.930,1926.049,743.536, 0, 'WP12'),
   (37554, 12, 5445.157,1894.955,748.757, 0, 'WP13 - Spell Channel'),
   (37554, 13, 5425.907,1869.708,753.237, 0, 'WP14'),
   (37554, 14, 5405.118,1833.937,757.486, 0, 'WP15'),
   (37554, 15, 5370.324,1799.375,761.007, 0, 'WP16'),
   (37554, 16, 5335.422,1766.951,767.635, 0, 'WP17 - Spell Channel'),
   (37554, 17, 5311.438,1739.390,774.165, 0, 'WP18'),
   (37554, 18, 5283.589,1703.755,784.176, 0, 'WP19'),
   (37554, 19, 5260.400,1677.775,784.301, 3000, 'WP20'),
   (37554, 20, 5262.439,1680.410,784.294, 0, 'WP21'),
   (37554, 21, 5260.400,1677.775,784.301, 0, 'WP22'),

#Lich King

   (37226, 0, 5577.187,2236.003,733.012, 0, 'WP1'),
   (37226, 1, 5587.682,2228.586,733.011, 0, 'WP2'),
   (37226, 2, 5600.715,2209.058,731.618, 0, 'WP3'),
   (37226, 3, 5606.417,2193.029,731.129, 0, 'WP4'),
   (37226, 4, 5598.562,2167.806,730.918, 0, 'WP5'), 
   (37226, 5, 5559.218,2106.802,731.229, 0, 'WP6'),
   (37226, 6, 5543.498,2071.234,731.702, 0, 'WP7'),
   (37226, 7, 5528.969,2036.121,731.407, 0, 'WP8'),
   (37226, 8, 5512.045,1996.702,735.122, 0, 'WP9'),
   (37226, 9, 5504.490,1988.789,735.886, 0, 'WP10'),

   (37226, 10, 5489.645,1966.389,737.653, 0, 'WP10'),
   (37226, 11, 5475.517,1943.176,741.146, 0, 'WP11'),
   (37226, 12, 5466.930,1926.049,743.536, 0, 'WP12'),
   (37226, 13, 5445.157,1894.955,748.757, 0, 'WP13'),
   (37226, 14, 5425.907,1869.708,753.237, 0, 'WP14'),
   (37226, 15, 5405.118,1833.937,757.486, 0, 'WP15'),
   (37226, 16, 5370.324,1799.375,761.007, 0, 'WP16'),
   (37226, 17, 5335.422,1766.951,767.635, 0, 'WP17'),
   (37226, 18, 5311.438,1739.390,774.165, 0, 'WP18'),
   (37226, 19, 5283.589,1703.755,784.176, 0, 'WP19'),
   (37226, 20, 5278.694,1697.912,785.692, 0, 'WP20'),
   (37226, 21, 5283.589,1703.755,784.176, 0, 'WP19');

INSERT INTO `creature_template` (`entry`, `modelid1`, `name`, `faction_A`, `faction_H`, `rank`, `unit_class`, `type`, `type_flags`, `Health_mod`, `Mana_mod`, `movementId`, `ScriptName`, `WDBVerified`) 
VALUES ('37228', '30721', 'The Lich King', '35', '35', '3', '1', '6', '36', '2000', '500', '151', 'arthas2', '11403');

DELETE FROM `gameobject` WHERE `id`=201911;
INSERT INTO `gameobject` (`id`,`map`,`spawnMask`,`phaseMask`,`position_x`,`position_y`,`position_z`,`orientation`,`rotation0`,`rotation1`,`rotation2`,`rotation3`,`spawntimesecs`,`animprogress`,`state`) VALUES
(201911, 668, 1, 1, 5517.24, 2031.8, 731.932, 4.53518, 0, 0, 0.766905, -0.64176, 300, 0, 1),
(201911, 668, 1, 1, 5533.66, 2073.37, 730.984, 4.30898, 0, 0, 0.834433, -0.55111, 300, 0, 1),
(201911, 668, 1, 1, 5444.72, 1893.8, 749.007, 4.04508, 0, 0, 0.899686, -0.436537, 300, 0, 1),
(201911, 668, 1, 1, 5304.27, 1734.61, 775.811, 4.0011, 0, 0, 0.909068, -0.416648, 300, 0, 1),
(201911, 668, 1, 1, 5553.35, 2066.69, 733.295, 4.50297, 0, 0, 0.777139, -0.62933, 300, 0, 1),
(201911, 668, 1, 1, 5535.42, 2026.25, 732.39, 4.25396, 0, 0, 0.849276, -0.527949, 300, 0, 1),
(201911, 668, 1, 1, 5462, 1889.82, 752.294, 4.22254, 0, 0, 0.857464, -0.514544, 300, 0, 1);