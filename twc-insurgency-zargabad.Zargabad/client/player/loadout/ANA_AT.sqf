comment "Exported from Arsenal by Paddock";

comment "Remove existing items";
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

comment "Add containers";
player forceAddUniform "rhs_uniform_mvd_izlom";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "ACE_EarPlugs";
player addVest "CUP_V_BAF_Osprey_Mk2_DPM_Empty";
for "_i" from 1 to 8 do {player addItemToVest "CUP_30Rnd_545x39_AK_M";};
player addBackpack "rhs_assault_umbts";
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShell";};
for "_i" from 1 to 3 do {player addItemToBackpack "rhs_rpg7_PG7VL_mag";};
player addHeadgear "rhs_6b7_1m";

comment "Add weapons";
player addWeapon "CUP_arifle_AK74";
player addWeapon "rhs_weap_rpg7";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
