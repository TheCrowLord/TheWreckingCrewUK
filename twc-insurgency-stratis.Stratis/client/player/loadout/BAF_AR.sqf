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
player forceAddUniform "CUP_U_B_BAF_DDPM_Tshirt";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "ACE_EarPlugs";
player addItemToUniform "ACRE_PRC343";
player addVest "CUP_V_BAF_Osprey_Mk2_DDPM_Soldier2";
for "_i" from 1 to 2 do {player addItemToVest "CUP_HandGrenade_L109A1_HE";};
for "_i" from 1 to 3 do {player addItemToVest "SmokeShell";};
for "_1" from 1 to 2 do {player addItemToVest "CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1";};
player addBackpack "CUP_B_Bergen_BAF";
for "_i" from 1 to 2 do {player addItemToBackpack "CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1";};
for "_i" from 1 to 2 do {player addItemToBackpack "HandGrenade";};
player addHeadgear "CUP_H_BAF_Helmet_2_DDPM";

comment "Add weapons";
player addWeapon "CUP_lmg_L110A1";
player addPrimaryWeaponItem "CUP_optic_Elcan_reflex";
player addWeapon "CUP_launch_M136";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadioAcreFlagged";
player linkItem "CUP_NVG_PVS7";
