/*
        Different Ammobox v 1.0
        by Demonized.

        1: place a marker named DMZ_DA anywhere you want the players to see their ammobox, all will see their box in same position.
        2: place this in init line of any unit.
                _null = this execVM "DMZ_DA.sqf";
        3: save this script as DMZ_DA.sqf and place it in your mission folder.

        For more classnames on ammoboxes or weapons and magazines go here:
                http://forums.bistudio.com/showthread.php?t=73241&page=2
				edited by FakeMatty
*/

_marker = "crate";  // marker used to spawn.
_boxType = "I_supplyCrate_F";  // the type of ammobox used.
_timer = 240;  // time in seconds until box is refilled.
 
_weapons = [];
_magazines = [["SmokeShell",5], ["SmokeShellYellow",5], ["SmokeShellRed",5], ["SmokeShellGreen",5], ["SmokeShellPurple",5], ["SmokeShellBlue",5], ["SmokeShellOrange",5], ["HandGrenade",5], ["Chemlight_green",5], ["Chemlight_yellow",5], ["Chemlight_red",5], ["Chemlight_blue",5]];
_items = [["ACE_EarPlugs",1],["ACE_MapTools",1],["CUP_NVG_PVS7",1],["ACE_Flashlight_XL50", 1],["ACE_IR_Strobe_Item",1],["ACE_HandFlare_White",5],["ACE_HandFlare_Green",5],["ACE_CableTie",2]];

_tmp_weapons = [];
_tmp_magazines = [];
_tmp_items = [];

// load available to Section Commander only.
if (g_class == "BAF_SL") then {
    _tmp_weapons =
		[
		["CUP_arifle_L85A2",1],
		["ACE_Vector",1],
		["CUP_hgun_Glock17",1]
    ];
    _tmp_magazines =
	[
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",50],
        ["CUP_17Rnd_9x19_glock17",15]
	];
	_tmp_items = 
	[
        ["ACE_MapTools",1],
        ["ACE_fieldDressing",20],
        ["ACE_morphine",10],
		["ACE_epinephrine",5],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",1],
		["ACE_M26_Clacker",1],
		["CUP_optic_Elcan_reflex",1],
		["CUP_optic_HoloBlack",1],
		["ACE_DAGR",1],
		["ACRE_PRC343",1],
		["ACE_SpraypaintBlack",1],
		["ACE_SpraypaintRed",1],
		["ACE_SpraypaintGreen",1],
		["ACE_SpraypaintBlue",1]
	];
};

// load available to Rifleman only.
 if (g_class == "BAF_RF") then {
    _tmp_weapons =
    [
		["CUP_arifle_L85A2",1],
		["CUP_sgun_M1014",1],
		["CUP_hgun_Glock17",1],
		["launch_NLAW_F",2],
		["CUP_launch_M136",2]
	];
	_tmp_magazines =
    [								
		["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",50],
		["CUP_8Rnd_B_Beneli_74Slug",10],
		["CUP_8Rnd_B_Beneli_74Pellets",10],
        ["CUP_17Rnd_9x19_glock17",15]
	];
	_tmp_items = 
	[
		["ACE_MapTools",1],
		["ACE_fieldDressing",20],
		["ACE_morphine",10],
		["CUP_optic_Elcan_reflex",1],
		["CUP_optic_HoloBlack",1],
		["ACRE_PRC343",1]
	];
};

// load available to Grenadier only.
 if (g_class == "BAF_GRN") then {
    _tmp_weapons =
    [
        ["CUP_arifle_L85A2_GL",1],
        ["ACE_Vector",1],
		["CUP_hgun_Glock17",1],
		["CUP_launch_M136",2]
	];
	_tmp_magazines =
    [            
		["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",50],
		["CUP_17Rnd_9x19_glock17",15],
		["1Rnd_HE_Grenade_shell", 40],
		["1Rnd_Smoke_Grenade_shell", 10],
		["1Rnd_SmokeRed_Grenade_shell", 10],
		["1Rnd_SmokeGreen_Grenade_shell", 10],
		["1Rnd_SmokeYellow_Grenade_shell", 10],
		["1Rnd_SmokePurple_Grenade_shell", 10],
		["1Rnd_SmokeBlue_Grenade_shell", 10]
    ];
	_tmp_items =
	[
        ["ACE_MapTools",1],
        ["ACE_fieldDressing",20],
        ["ACE_morphine",10],
		["CUP_optic_Elcan_reflex",1],
		["CUP_optic_HoloBlack",1],
		["ACRE_PRC343",1]
	];
};

// load available to Automatic Rifleman only.
 if (g_class == "BAF_AR") then {
    _tmp_weapons =
    [
        ["CUP_lmg_L110A1",1],
		["CUP_hgun_Glock17",1],
		["CUP_launch_M136",2]
	];
	_tmp_magazines =
    [            
		["CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1",20],
        ["CUP_17Rnd_9x19_glock17",15]
    ];
	_tmp_items =
	[
        ["ACE_MapTools",1],
        ["ACE_fieldDressing",20],
        ["ACE_morphine",10],
		["CUP_optic_Elcan_reflex",1],
		["CUP_optic_HoloBlack",1],
		["STKR_Predator",1],
		["ACRE_PRC343",1]
	];
};

// load available to Section Medic
 if (g_class == "BAF_MED") then {
    _tmp_weapons =
    [
		["CUP_arifle_L85A2",1],
		["CUP_hgun_Glock17",1]
	];
	_tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",50],
        ["CUP_17Rnd_9x19_glock17",15]
    ];
	_tmp_items =
	[
		["ACE_fieldDressing",50],
		["ACE_morphine",50],
		["ACE_epinephrine",50],
		["ACE_bloodIV",50],
		["ACE_bodyBag",10],
		["CUP_optic_Elcan_reflex",1],
		["CUP_optic_HoloBlack",1],
		["ACRE_PRC343",1]
	];
};

//class availible to Bravo Section Lead
if (g_class == "US_SL") then {
    _tmp_weapons =
    [
        ["CUP_arifle_M4A1_BUIS_GL",1],
        ["ACE_Vector",1],
		["CUP_hgun_Colt1911",1]
	];
	_tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",15],
		["1Rnd_HE_Grenade_shell", 40],
		["1Rnd_Smoke_Grenade_shell", 10],
		["1Rnd_SmokeRed_Grenade_shell", 10],
		["1Rnd_SmokeGreen_Grenade_shell", 10],
		["1Rnd_SmokeYellow_Grenade_shell", 10],
		["1Rnd_SmokePurple_Grenade_shell", 10],
		["1Rnd_SmokeBlue_Grenade_shell", 10],
        ["CUP_7Rnd_45ACP_1911",15]
	];
	_tmp_items =
	[
		["ACE_MapTools",1],
        ["ACE_fieldDressing",20],
        ["ACE_morphine",10],
		["ACE_epinephrine",5],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",1],
		["ACE_M26_Clacker",1],
		["CUP_optic_ACOG",1],
		["CUP_optic_HoloBlack",1],
		["ACE_DAGR",1],
		["ACRE_PRC148",1],
		["ACE_SpraypaintBlack",1],
		["ACE_SpraypaintRed",1],
		["ACE_SpraypaintGreen",1],
		["ACE_SpraypaintBlue",1]
	];
};

// load available to Automatic Rifleman only.
 if (g_class == "US_RF") then {
    _tmp_weapons =
    [
        ["CUP_arifle_M4A1",1],
		["CUP_launch_MAAWS",1],
		["CUP_sgun_M1014",1],
		["CUP_launch_M136",2],
		["CUP_hgun_Colt1911",1]
	];
	_tmp_magazines =
    [
		["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",15],
		["CUP_MAAWS_HEDP_M",2],
		["CUP_MAAWS_HEAT_M",2],
		["CUP_8Rnd_B_Beneli_74Slug",10],
		["CUP_8Rnd_B_Beneli_74Pellets",10],
        ["CUP_7Rnd_45ACP_1911",15]
    ];
	_tmp_items =
	[
        ["ACE_MapTools",1],
        ["ACE_fieldDressing",20],
        ["ACE_morphine",10],
		["CUP_optic_ACOG",1],
		["CUP_optic_HoloBlack",1],
		["CUP_optic_MAAWS_Scope",1],
		["ACRE_PRC148",1]
	];
};

// load available to Section 2IC only.
 if (g_class == "US_AR") then {
    _tmp_weapons =
    [
		["CUP_lmg_M249_E2",1],
		["CUP_launch_M136",2],
		["CUP_hgun_Colt1911",1]
	];
	_tmp_magazines =
    [
         ["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",20],
        ["CUP_7Rnd_45ACP_1911",15]		 
    ];
	_tmp_items =
	[
        ["ACE_MapTools",1],
        ["ACE_fieldDressing",20],
        ["ACE_morphine",10],
		["CUP_optic_ElcanM145",1],
		["CUP_optic_HoloBlack",1],
		["ACRE_PRC148",1]
	];
};

// load available to GREN only.
 if (g_class == "US_GRN") then {
    _tmp_weapons =
    [
        ["CUP_arifle_M4A1_BUIS_GL",1],
		["ACE_Vector",1],
		["CUP_launch_M136",2],
		["CUP_hgun_Colt1911",1]

		];
	_tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
        ["1Rnd_HE_Grenade_shell", 40],
	    ["1Rnd_Smoke_Grenade_shell", 10],
	    ["1Rnd_SmokeRed_Grenade_shell", 10],
	    ["1Rnd_SmokeGreen_Grenade_shell", 10],
	    ["1Rnd_SmokeYellow_Grenade_shell", 10],
	    ["1Rnd_SmokePurple_Grenade_shell", 10],
         ["1Rnd_SmokeBlue_Grenade_shell", 10],
        ["CUP_7Rnd_45ACP_1911",15]
    ];
	_tmp_items =
	[
        ["ACE_MapTools",1],
        ["ACE_fieldDressing",20],
        ["ACE_morphine",10],
		["CUP_optic_ACOG",1],
		["CUP_optic_HoloBlack",1],
		["ACRE_PRC148",1]
	];
};
//load availible to US Med ONLY
 if (g_class == "US_MED") then {
    _tmp_weapons =
    [
		["CUP_arifle_M4A1",1],
		["CUP_hgun_Colt1911",1]
	];
	_tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",15],
        ["CUP_7Rnd_45ACP_1911",15]
    ];
	_tmp_items =
	[
		["ACE_fieldDressing",50],
		["ACE_morphine",50],
		["ACE_epinephrine",50],
		["ACE_bloodIV",50],
		["ACE_bodyBag",10],
		["CUP_optic_ACOG",1],
		["CUP_optic_HoloBlack",1],
		["ACRE_PRC148",1]
	];
};

//loadout availible to charlie section leader
 if (g_class == "USMC_SL") then {
    _tmp_weapons =
    [
        ["CUP_arifle_M16A4_GL",1],
        ["ACE_Vector",1],
		["CUP_hgun_Colt1911",1]
	];
	_tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",10],
		["1Rnd_HE_Grenade_shell", 40],
		["1Rnd_Smoke_Grenade_shell", 10],
		["1Rnd_SmokeRed_Grenade_shell", 10],
		["1Rnd_SmokeGreen_Grenade_shell", 10],
		["1Rnd_SmokeYellow_Grenade_shell", 10],
		["1Rnd_SmokePurple_Grenade_shell", 10],
		["1Rnd_SmokeBlue_Grenade_shell", 10],
        ["CUP_7Rnd_45ACP_1911",15]
    ];
	_tmp_items = 
	[
		["ACE_MapTools",1],
		["ACE_fieldDressing",20],
		["ACE_morphine",10],
		["ACE_epinephrine",5],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",1],
		["ACE_M26_Clacker",1],
		["CUP_optic_ACOG",1],
		["CUP_optic_HoloBlack",1],
		["CUP_acc_ANPEQ_15",1],
		["ACE_DAGR",1],
		["ACRE_PRC148",1],
		["ACE_SpraypaintBlack",1],
		["ACE_SpraypaintRed",1],
		["ACE_SpraypaintGreen",1],
		["ACE_SpraypaintBlue",1]
		];
};

//loadout availible to charlie grenadier only
 if (g_class == "USMC_GRN") then {
    _tmp_weapons =
    [
        ["CUP_arifle_M16A4_GL",1],
        ["ACE_Vector",1],
		["CUP_launch_M136",2],
		["CUP_hgun_Colt1911",1]
	];
	_tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",10],
		["1Rnd_HE_Grenade_shell", 40],
	    ["1Rnd_Smoke_Grenade_shell", 10],
	    ["1Rnd_SmokeRed_Grenade_shell", 10],
	    ["1Rnd_SmokeGreen_Grenade_shell", 10],
	    ["1Rnd_SmokeYellow_Grenade_shell", 10],
	    ["1Rnd_SmokePurple_Grenade_shell", 10],
        ["1Rnd_SmokeBlue_Grenade_shell", 10],
        ["CUP_7Rnd_45ACP_1911",15],
        ["CUP_7Rnd_45ACP_1911",15]
	];
	_tmp_items = 
	[
		["ACE_MapTools",1],
		["ACE_fieldDressing",20],
        ["ACE_morphine",10],
		["CUP_optic_ACOG",1],
		["CUP_optic_HoloBlack",1],
		["CUP_acc_ANPEQ_15",1],
		["ACE_DAGR",1],
		["ACRE_PRC148",1]
	];
};

// load available to Section 2IC only.
 if (g_class == "USMC_RF") then {
    _tmp_weapons =
    [
        ["CUP_arifle_M16A4_Base",1],
		["CUP_sgun_M1014",1],
		["CUP_hgun_Colt1911",1],
		["CUP_launch_M136",2],
		["CUP_launch_Mk153Mod0",1],
		["CUP_hgun_Colt1911",1]
	];
	_tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",10],
		["CUP_8Rnd_B_Beneli_74Slug",10],
		["CUP_8Rnd_B_Beneli_74Pellets",10],
		["CUP_SMAW_Spotting",5],
		["CUP_SMAW_HEDP_M",5],
        ["CUP_7Rnd_45ACP_1911",15]
	];
	_tmp_items =
	[
        ["ACE_MapTools",1],
        ["ACE_fieldDressing",20],
        ["ACE_morphine",10],
		["CUP_optic_ACOG",1],
		["CUP_optic_HoloBlack",1],
		["CUP_acc_ANPEQ_15",1],
		["CUP_optic_SMAW_Scope",1],
		["ACRE_PRC148",1]
	];
};

//loadout availible to Marine Automatic Rifleman Only
if (g_class == "USMC_AR") then {
       _tmp_weapons =
    [
		["CUP_lmg_M240",1],
        ["CUP_lmg_M249_E2",1],
		["CUP_launch_M136",2],
		["CUP_hgun_Colt1911",1]
	];
	_tmp_magazines =
    [
		["CUP_200Rnd_TE4_Red_Tracer_556x45_M249",10],
		["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M",10],
		["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M",5],
        ["CUP_7Rnd_45ACP_1911",15]
    ];
	_tmp_items =
	[
        ["ACE_MapTools",1],
        ["ACE_fieldDressing",20],
        ["ACE_morphine",10],
		["CUP_optic_HoloBlack",1],
		["CUP_acc_ANPEQ_15",1],
		["CUP_optic_ElcanM145",1],
		["ACRE_PRC148",1]
	];
};

//loadout availible to Marine Medic only
 if (g_class == "USMC_MED") then {
    _tmp_weapons =
    [
        ["CUP_arifle_M16A4_Base",1],
		["CUP_hgun_Colt1911",1]
	];
	_tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",10],
        ["CUP_7Rnd_45ACP_1911",15]
    ];
	_tmp_items =
	[
		["ACE_fieldDressing",50],
		["ACE_morphine",50],
		["ACE_epinephrine",50],
		["ACE_bloodIV",50],
		["CUP_optic_ACOG",1],
		["CUP_optic_HoloBlack",1],
		["CUP_acc_ANPEQ_15",1],
		["ACRE_PRC148",1]
	];
};

// load available to Section Commander only.
if (g_class == "ANA_SL") then {
    _tmp_weapons =
    [
        ["CUP_arifle_M16A2",1],
		["binocular",1]
	];
	_tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",10]
	];
	_tmp_items = 
	[
		["ACE_MapTools",1],
        ["ACE_fieldDressing",20],
        ["ACE_morphine",10],
		["ACE_epinephrine",5],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",1],
		["ACE_M26_Clacker",1],
		["ACE_SpraypaintBlack",1],
		["ACE_SpraypaintRed",1],
		["ACE_SpraypaintGreen",1],
		["ACE_SpraypaintBlue",1]
	];
};

// load available to Rifleman only.
 if (g_class == "ANA_RF") then {
    _tmp_weapons =
    [
		["CUP_arifle_M16A2",1]
    ];
	_tmp_magazines =
    [
		["30Rnd_556x45_Stanag",50]
	];
	_tmp_items = 
	[
		["ACE_MapTools",1],
        ["ACE_fieldDressing",20],
        ["ACE_morphine",10]
	];
};

// load available to Grenadier only.
 if (g_class == "ANA_GRN") then {
    _tmp_weapons =
    [
        ["CUP_arifle_M16A2",1],
		["CUP_launch_RPG7V",1]
	];
	_tmp_magazines =
    [
		["30Rnd_556x45_Stanag",50],
		["CUP_PG7V_M",15]
    ];
	_tmp_items =
	[
		["ACE_MapTools",1],
        ["ACE_fieldDressing",20],
        ["ACE_morphine",10]
	];
};

// load available to Automatic Rifleman only.
 if (g_class == "ANA_AR") then {
    _tmp_weapons =
    [
        ["CUP_lmg_PKM",1]
	];
	_tmp_magazines =
    [
		["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",10]
    ];
	_tmp_items =
	[
		["ACE_MapTools",1],
        ["ACE_fieldDressing",20],
        ["ACE_morphine",10]
	];
};

// load available to Section Medic
 if (g_class == "ANA_MED") then {
    _tmp_weapons =
    [
        ["CUP_arifle_M16A2",1]
	];
	_tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50]
    ];
	_tmp_items =
	[
		["ACE_fieldDressing",50],
		["ACE_morphine",50],
		["ACE_epinephrine",50],
		["ACE_bloodIV",50],
		["ACE_bodyBag",10]
	];
};
 
 //load availible to pilots only
 if (g_class == "PLT") then {
    _tmp_weapons =
    [
		["CUP_hgun_Colt1911",1]
	];
	_tmp_magazines =
    [
		["CUP_7Rnd_45ACP_1911",15]
    ];
	_tmp_items =
	[
		["ACE_DAGR",1],
        ["ACE_MapTools",1],
        ["ACE_fieldDressing",20],
        ["ACE_morphine",10],
		["ACRE_PRC148",1]
	];
};
 //load availible to pilot Crew only
 if (g_class == "PLT_CREW") then {
    _tmp_weapons =
    [
		["CUP_hgun_Colt1911",1]
	];
	_tmp_magazines =
    [
		["CUP_7Rnd_45ACP_1911",15]
    ];
	_tmp_items =
	[
		["ACE_DAGR",1],
        ["ACE_MapTools",1],
        ["ACE_fieldDressing",20],
        ["ACE_morphine",10],
		["ACRE_PRC148",1]
	];
};

//load avaible to armour commander only
 if (g_class == "ARMR_CO") then {
    _tmp_weapons =
    [
		["CUP_arifle_M16A4_Base",1],
		["ACE_Vector",1]
	];
	_tmp_magazines =
	[
		["30Rnd_556x45_Stanag",15],
		["30Rnd_556x45_Stanag_Tracer_Red",5]
    ];
	_tmp_items =
	[
		["CUP_acc_ANPEQ_15",1],
        ["ACE_MapTools",1],
        ["ACE_fieldDressing",20],
        ["ACE_morphine",10],
		["ACRE_PRC148",1]
	];
};

//load avaible to armor crew only
 if (g_class == "ARMR_CREW") then {
    _tmp_weapons =
    [
		["CUP_arifle_M16A4_Base",1],
		["CUP_launch_M136",2]
	];
	_tmp_magazines =
    [
		["30Rnd_556x45_Stanag",15]
    ];
	_tmp_items =
	[
		["CUP_acc_ANPEQ_15",1],
		["ACE_MapTools",1],
        ["ACE_fieldDressing",20],
        ["ACE_morphine",10],
		["ACRE_PRC148",1]
	];
};


// load available to Section Commander only.
if (g_class == "GER_SL") then {
    _tmp_weapons =
		[
		["CUP_arifle_G36A",1],
		["ACE_Vector",1],
		["CUP_hgun_Glock17",1]
    ];
    _tmp_magazines =
	[
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",50],
        ["CUP_17Rnd_9x19_glock17",15]
	];
	_tmp_items = 
	[
        ["ACE_MapTools",1],
        ["ACE_fieldDressing",20],
        ["ACE_morphine",10],
		["ACE_epinephrine",5],
		["SatchelCharge_Remote_Mag",1],
		["DemoCharge_Remote_Mag",1],
		["ACE_M26_Clacker",1],
		["ACE_DAGR",1],
		["ACRE_PRC148",1],
		["ACE_SpraypaintBlack",1],
		["ACE_SpraypaintRed",1],
		["ACE_SpraypaintGreen",1],
		["ACE_SpraypaintBlue",1]
	];
};

// load available to Rifleman only.
 if (g_class == "GER_RF") then {
    _tmp_weapons =
    [
		["CUP_arifle_G36A",1],
		["CUP_sgun_M1014",1],
		["CUP_hgun_Glock17",1],
		["CUP_launch_MAAWS",1],
		["CUP_launch_M136",2]
	];
	_tmp_magazines =
    [								
		["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",50],
		["CUP_8Rnd_B_Beneli_74Slug",10],
		["CUP_8Rnd_B_Beneli_74Pellets",10],
		["CUP_MAAWS_HEAT_M",5],
		["CUP_MAAWS_HEDP_M",5],
        ["CUP_17Rnd_9x19_glock17",15]
	];
	_tmp_items = 
	[
		["ACE_MapTools",1],
		["ACE_fieldDressing",20],
		["ACE_morphine",10],
		["CUP_optic_MAAWS_Scope",1],
		["ACRE_PRC148",1]
	];
};

// load available to Grenadier only.
 if (g_class == "GER_AAR") then {
    _tmp_weapons =
    [
        ["CUP_arifle_G36A",1],
		["CUP_hgun_Glock17",1],
		["CUP_launch_M136",2]
	];
	_tmp_magazines =
    [            
		["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",50],
		["CUP_100Rnd_556x45_BetaCMag",10],
		["CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag",10],
		["CUP_17Rnd_9x19_glock17",15]
    ];
	_tmp_items =
	[
        ["ACE_MapTools",1],
        ["ACE_fieldDressing",20],
        ["ACE_morphine",10],
		["ACRE_PRC148",1]
	];
};

// load available to Automatic Rifleman only.
 if (g_class == "GER_AR") then {
    _tmp_weapons =
    [
        ["CUP_arifle_MG36",1],
		["CUP_hgun_Glock17",1],
		["CUP_launch_M136",2]
	];
	_tmp_magazines =
    [            
		["CUP_100Rnd_556x45_BetaCMag",10],
		["CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag",10],
        ["CUP_17Rnd_9x19_glock17",15]
    ];
	_tmp_items =
	[
        ["ACE_MapTools",1],
        ["ACE_fieldDressing",20],
        ["ACE_morphine",10],
		["CUP_optic_ACOG",1],
		["CUP_optic_HoloBlack",1],
		["ACRE_PRC148",1]
	];
};

// load available to Section Medic
 if (g_class == "GER_MED") then {
    _tmp_weapons =
    [
		["CUP_arifle_G36A",1],
		["CUP_hgun_Glock17",1]
	];
	_tmp_magazines =
    [
        ["30Rnd_556x45_Stanag",50],
		["30Rnd_556x45_Stanag_Tracer_Red",50],
        ["CUP_17Rnd_9x19_glock17",15]
    ];
	_tmp_items =
	[
		["ACE_fieldDressing",50],
		["ACE_morphine",50],
		["ACE_epinephrine",50],
		["ACE_bloodIV",50],
		["ACE_bodyBag",10],
		["ACRE_PRC148",1]
	];
};

{
        _weapons set [count _weapons, _x];
} forEach _tmp_weapons;

{
        _magazines set [count _magazines, _x];
} forEach _tmp_magazines;

{
        _items set [count _items, _x];
} forEach _tmp_items;


// create and fill the box.
_box = _boxType createVehicleLocal (getMarkerPos _marker);
_box setPosATL (getMarkerPos _marker);
_box allowDamage false;
while {true} do {
        refill_box = false;
        // empty it.
        clearWeaponCargo _box;
        clearMagazineCargo _box;
        clearItemCargo _box;
		clearbackPackCargo _box;

        // add in all weapons.
        {_box addWeaponCargo [(_x select 0),(_x select 1)]} foreach _weapons;

        // add in all magazines.
        {_box addMagazineCargo [(_x select 0),(_x select 1)]} foreach _magazines;

        {_box addItemCargo [(_x select 0),(_x select 1)]} foreach _items;



        // wait x amount of seconds then refill box.
        sleep _timer;
};
