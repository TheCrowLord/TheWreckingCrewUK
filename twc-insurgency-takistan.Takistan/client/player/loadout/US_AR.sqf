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
player forceAddUniform "rhs_uniform_cu_ocp";
player addItemToUniform "ACRE_PRC148_ID_1";
player addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 10 do {player addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 5 do {player addItemToUniform "ACE_morphine";};
player addItemToUniform "UK3CB_BAF_Eotech";
player addVest "rhsusf_iotv_ocp_SAW";
for "_i" from 1 to 2 do {player addItemToVest "rhsusf_200Rnd_556x45_soft_pouch";};
for "_i" from 1 to 2 do {player addItemToVest "HandGrenade";};
player addBackpack "rhsusf_assault_eagleaiii_ocp";
for "_i" from 1 to 2 do {player addItemToBackpack "rhs_200rnd_556x45_M_SAW";};
for "_i" from 1 to 3 do {player addItemToBackpack "SmokeShell";};
player addHeadgear "rhsusf_ach_helmet_ESS_ocp";

comment "Add weapons";
player addWeapon "rhs_weap_m249_pip";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
player addPrimaryWeaponItem "rhsusf_acc_ELCAN";
player addWeapon "UK3CB_BAF_AT4_AP_Launcher";

comment "Add items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "rhsusf_ANPVS_14";