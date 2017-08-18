	class Early_ColdWar_Base: I_Soldier_F
	{
		scope=1;
		displayName="Base";
		faction="twc_faction_independent";
		editorSubcategory = "Men_1956";
		vehicleClass="Men_1956";
		nakedUniform="U_BasicBody";
		uniformClass="fow_u_uk_parasmock";
		linkedItems[]=
		{
        "TWC_Vest_WW2_Base",
		"fow_h_uk_mk2",
		"ItemMap",
		"ItemCompass",
		"ItemWatch"
		};
		respawnLinkedItems[]=
		{
        "TWC_Vest_WW2_Base",
		"fow_h_uk_mk2",
		"ItemMap",
		"ItemCompass",
		"ItemWatch"
		};
		Items[]=
		{
			"ACE_EarPlugs",
			"ACE_fieldDressing",
			"ACE_fieldDressing",
			"ACE_fieldDressing",
			"ACE_fieldDressing",
			"ACE_packingBandage",
			"ACE_packingBandage",
			"ACE_packingBandage",
			"ACE_packingBandage",
			"ACE_packingBandage",
			"ACE_elasticBandage",
			"ACE_elasticBandage",
			"ACE_elasticBandage",
			"ACE_elasticBandage",
			"ACE_elasticBandage",
			"ACE_quikclot",
			"ACE_quikclot",
			"ACE_morphine",
			"ACE_epinephrine",
			"ACE_tourniquet",
			"ACE_tourniquet"
		};
		respawntems[]=
		{
			"ACE_EarPlugs",
			"ACE_fieldDressing",
			"ACE_fieldDressing",
			"ACE_fieldDressing",
			"ACE_fieldDressing",
			"ACE_packingBandage",
			"ACE_packingBandage",
			"ACE_packingBandage",
			"ACE_packingBandage",
			"ACE_packingBandage",
			"ACE_elasticBandage",
			"ACE_elasticBandage",
			"ACE_elasticBandage",
			"ACE_elasticBandage",
			"ACE_elasticBandage",
			"ACE_quikclot",
			"ACE_quikclot",
			"ACE_morphine",
			"ACE_epinephrine",
			"ACE_tourniquet",
			"ACE_tourniquet"
		};
	};
	class Early_ColdWar_Platoon_Commander: Early_ColdWar_Base
	{
		scope=2;
		displayName="Platoon Commander";
		uniformClass="fow_u_uk_bd40_01_lieutenant";
		backpack="TWC_Backpack_1956_SL";
		class EventHandlers: EventHandlers
		{
			init = "(_this select 0) setVariable [""twc_keepMap"",true]";
		};
		linkedItems[]=
		{
        "TWC_Vest_WW2_Officer",
		"fow_h_uk_mk3",
		"ItemMap",
		"ItemCompass",
		"ItemWatch"
		};
		respawnLinkedItems[]=
		{
        "TWC_Vest_WW2_Officer",
		"fow_h_uk_mk3",
		"ItemMap",
		"ItemCompass",
		"ItemWatch"
		};
		weapons[]=
		{
		"Throw",
		"Put",
		"Binocular",
		"fow_w_sten_mk2"
		};
		respawnweapons[]=
		{
		"Throw",
		"Put",
		"Binocular",
		"fow_w_sten_mk2"
		};
		magazines[]=
		{
		"fow_32Rnd_9x19_sten",
		"fow_32Rnd_9x19_sten",
		"fow_32Rnd_9x19_sten",
		"fow_32Rnd_9x19_sten",
		"SmokeShell",
		"SmokeShell",
		"SmokeShell"
		};
		Respawnmagazines[]=
		{
		"fow_32Rnd_9x19_sten",
		"fow_32Rnd_9x19_sten",
		"fow_32Rnd_9x19_sten",
		"fow_32Rnd_9x19_sten",
		"SmokeShell",
		"SmokeShell",
		"SmokeShell"
		};
	};
	class Early_ColdWar_Sergeant: Early_ColdWar_Platoon_Commander
	{
		scope=2;
		displayName="Platoon Sergeant";
		uniformClass="fow_u_uk_bd40_01_sergeant";
		backpack="TWC_Backpack_1956_Sergeant";
		weapons[]=
		{
			"Throw",
			"Put",
			"Binocular",
			"fow_w_leeenfield_no4mk1"
		};
		respawnweapons[]=
		{
			"Throw",
			"Put",
			"Binocular",
			"fow_w_leeenfield_no4mk1"
		};
		magazines[]=
		{
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_e_no36mk1",
			"fow_e_no36mk1"
		};
		Respawnmagazines[]=
		{
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_e_no36mk1",
			"fow_e_no36mk1"

		};
	};
	class Early_ColdWar_Medic: Early_ColdWar_Base
	{
		scope=2;
		displayName="Medic";
		uniformClass="fow_u_uk_bd40_01_private";
		backpack="TWC_Backpack_WW2_Medic";
		linkedItems[]=
		{
			"TWC_Vest_WW2_Sten",
			"fow_h_uk_mk2",
			"ItemMap",
			"ItemCompass",
			"ItemWatch"
		};
		respawnLinkedItems[]=
		{
			"TWC_Vest_WW2_Sten",
			"fow_h_uk_mk2",
			"ItemMap",
			"ItemCompass",
			"ItemWatch"
		};
		weapons[]=
		{
			"Throw",
			"Put",
			"fow_w_sten_mk2"
		};
		respawnweapons[]=
		{
			"Throw",
			"Put",
			"fow_w_sten_mk2"
		};
		magazines[]=
		{
			"fow_32Rnd_9x19_sten",
			"fow_32Rnd_9x19_sten",
			"SmokeShell",
			"SmokeShell",
			"SmokeShell"
		};
		Respawnmagazines[]=
		{
			"fow_32Rnd_9x19_sten",
			"fow_32Rnd_9x19_sten",
			"SmokeShell",
			"SmokeShell",
			"SmokeShell"
		};
	};
	class Early_ColdWar_Section_Leader: Early_ColdWar_Base
	{
		scope=2;
		displayName="Section Commander";
		icon="iconManLeader";
		nakedUniform="U_BasicBody";
		uniformClass="fow_u_uk_bd40_01_corporal";
		backpack="TWC_Backpack_1956_SL";
		class EventHandlers: EventHandlers
		{
			init = "(_this select 0) setVariable [""twc_keepMap"",true]";
		};
		linkedItems[]=
		{
			"TWC_Vest_WW2_Sten",
			"fow_h_uk_mk2_net",
			"ItemMap",
			"ItemCompass",
			"ItemWatch"
		};
		respawnLinkedItems[]=
		{
			"TWC_Vest_WW2_Sten",
			"fow_h_uk_mk2_net",
			"ItemMap",
			"ItemCompass",
			"ItemWatch"
		};
		weapons[]=
		{
			"Throw",
			"Put",
			"fow_w_leeenfield_no4mk1"
		};
		respawnweapons[]=
		{
			"Throw",
			"Put",
			"fow_w_leeenfield_no4mk1"
		};
		magazines[]=
		{
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren",
			"fow_e_no36mk1",
			"fow_e_no36mk1",
			"SmokeShell",
			"SmokeShell",
			"SmokeShell"
		};
		Respawnmagazines[]=
		{
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren",
			"fow_e_no36mk1",
			"fow_e_no36mk1",
			"SmokeShell",
			"SmokeShell",
			"SmokeShell"
		};
	};
	class EarlyColdWar_Rifleman: Early_ColdWar_Base
	{
		scope=2;
		displayName="Rifleman";
		uniformClass="fow_u_uk_bd40_01_private";
		weapons[]=
		{
			"Throw",
			"Put",
			"UK3CB_BAF_L1A1_Wood"
		};
		respawnweapons[]=
		{
			"Throw",
			"Put",
			"UK3CB_BAF_L1A1_Wood"
		};
		magazines[]=
		{
			"UK3CB_BAF_762_20Rnd",
			"UK3CB_BAF_762_20Rnd",
			"UK3CB_BAF_762_20Rnd",
			"UK3CB_BAF_762_20Rnd",
			"UK3CB_BAF_762_20Rnd",
			"UK3CB_BAF_762_20Rnd",
			"fow_e_no36mk1",
			"fow_e_no36mk1",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren"
		};
		Respawnmagazines[]=
		{
			"UK3CB_BAF_762_20Rnd",
			"UK3CB_BAF_762_20Rnd",
			"UK3CB_BAF_762_20Rnd",
			"UK3CB_BAF_762_20Rnd",
			"UK3CB_BAF_762_20Rnd",
			"UK3CB_BAF_762_20Rnd",
			"UK3CB_BAF_762_20Rnd",
			"fow_e_no36mk1",
			"fow_e_no36mk1",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren"

		};
	};
	class Early_ColdWar_2IC: Early_ColdWar_Base
	{
		displayName="2IC";
		uniformClass="fow_u_uk_bd40_01_lance_corporal";
		backpack="TWC_Backpack_1956_2IC";
		weapons[]=
		{
			"Throw",
			"Put",
			"fow_w_leeenfield_no4mk1"
		};
		respawnweapons[]=
		{
			"Throw",
			"Put",
			"fow_w_leeenfield_no4mk1"
		};
		magazines[]=
		{
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_e_no36mk1",
			"fow_e_no36mk1",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren"
		};
		Respawnmagazines[]=
		{
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_e_no36mk1",
			"fow_e_no36mk1",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren"

		};
	};
	class Early_ColdWar_MG: Early_ColdWar_Base
	{
		scope=2;
		displayName="Machine Gunner";
		icon="iconManMG";
		uniformClass="fow_u_uk_bd40_01_private";
		linkedItems[]=
		{
        "TWC_Vest_WW2_Bren",
		"fow_h_uk_mk2",
		"ItemMap",
		"ItemCompass",
		"ItemWatch"
		};
		respawnLinkedItems[]=
		{
        "TWC_Vest_WW2_Bren",
		"fow_h_uk_mk2",
		"ItemMap",
		"ItemCompass",
		"ItemWatch"
		};
		weapons[]=
		{
		"Throw",
		"Put",
		"TWC_Bren"
		};
		respawnweapons[]=
		{
		"Throw",
		"Put",
		"TWC_Bren"
		};
		magazines[]=
		{
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren"
		};
		Respawnmagazines[]=
		{
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren"
		};
	};
	class Early_ColdWar_MG_AS: Early_ColdWar_Base
	{
		displayName="Machine Gunner Assistant";
		backpack="TWC_Backpack_WW2_MGASS";
		weapons[]=
		{
			"Throw",
			"Put",
			"fow_w_leeenfield_no4mk1"
		};
		respawnweapons[]=
		{
			"Throw",
			"Put",
			"fow_w_leeenfield_no4mk1"
		};
		linkedItems[]=
		{
			"TWC_Vest_WW2_Bren",
			"fow_h_uk_mk2",
			"ItemMap",
			"ItemCompass",
			"ItemWatch"
		};
		respawnLinkedItems[]=
		{
			"fow_v_uk_bren",
			"fow_h_uk_mk2",
			"ItemMap",
			"ItemCompass",
			"ItemWatch"
		};
		magazines[]=
		{
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_e_no36mk1",
			"fow_e_no36mk1",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren"
		};
		Respawnmagazines[]=
		{
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_10Rnd_303",
			"fow_e_no36mk1",
			"fow_e_no36mk1",
			"fow_30Rnd_303_bren",
			"fow_30Rnd_303_bren"

		};
	};
	class Early_ColdWar_AT: Early_ColdWar_Base
	{
		scope=2;
		displayName="AT Gunner";
		uniformClass="fow_u_uk_bd40_01_private";
		backpack="TWC_Backpack_1956_AT";
		weapons[]=
		{
			"Throw",
			"Put",
			"fow_w_sten_mk2",
			"fow_w_m1a1_bazooka"
		};
		respawnweapons[]=
		{
			"Throw",
			"Put",
			"fow_w_sten_mk2",
			"fow_w_m1a1_bazooka"
		};
		magazines[]=
		{
			"fow_32Rnd_9x19_sten",
			"fow_32Rnd_9x19_sten",
			"fow_32Rnd_9x19_sten",
			"fow_32Rnd_9x19_sten",
			"fow_1Rnd_m6a1"
		};
		Respawnmagazines[]=
		{
			"fow_32Rnd_9x19_sten",
			"fow_32Rnd_9x19_sten",
			"fow_32Rnd_9x19_sten",
			"fow_32Rnd_9x19_sten",
			"fow_1Rnd_m6a1"

		};
	};
	class Early_ColdWar_AT_Ass: EarlyColdWar_Rifleman
	{
		scope=2;
		displayName="AT Gunner Assistant";
		uniformClass="fow_u_uk_bd40_01_private";
		backpack="TWC_Backpack_1956_AT";
		weapons[]=
		{
			"Throw",
			"Put",
			"fow_w_sten_mk2"
		};
		respawnweapons[]=
		{
			"Throw",
			"Put",
			"fow_w_sten_mk2"
		};
		magazines[]=
		{
			"fow_32Rnd_9x19_sten",
			"fow_32Rnd_9x19_sten",
			"fow_32Rnd_9x19_sten",
			"fow_32Rnd_9x19_sten"
		};
		Respawnmagazines[]=
		{
			"fow_32Rnd_9x19_sten",
			"fow_32Rnd_9x19_sten",
			"fow_32Rnd_9x19_sten",
			"fow_32Rnd_9x19_sten"

		};
	};