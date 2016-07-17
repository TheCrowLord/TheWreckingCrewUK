comment "Exported from Arsenal by jayman";

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
player forceAddUniform "UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve";
player addItemToUniform "ACRE_PRC343_ID_2";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "ACE_EarPlugs";
player addVest "UK3CB_BAF_V_Osprey_Marksman_A";
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
for "_i" from 1 to 8 do {player addItemToVest "UK3CB_BAF_20Rnd";};
for "_i" from 1 to 2 do {player addItemToVest "UK3CB_BAF_20Rnd_T";};
player addBackpack "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_A";
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShell";};
player addHeadgear "UK3CB_BAF_H_Mk7_Scrim_E";

comment "Add weapons";
player addWeapon "UK3CB_BAF_L129A1_FGrip";
player addPrimaryWeaponItem "UK3CB_BAF_LLM_IR_Black";
player addPrimaryWeaponItem "UK3CB_BAF_TA648_308";
player addWeapon "UK3CB_BAF_NLAW_Launcher";
player addWeapon "ACE_Vector";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadioAcreFlagged";
player linkItem "rhsusf_ANPVS_14";
