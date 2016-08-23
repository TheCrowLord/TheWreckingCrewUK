/*
* Created by [TWC] jayman Using code form [TWC] WiredTiger
*
* Pre-Compiled as twc_spawnAIUnits
*
* Description:
* twc_townSetup passes along the marker waves and group radius which then has the morale
* added to the waves before spawning in the group. Unfortunently waves are predefined here.
*/

params ["_pos","_waves","_groupradius","_thisList"];
_waves = _waves - floor InsP_enemyMorale;
_sleep = 10;
if (_waves < 1) then {
	_waves = 0;
};
[_waves,_sleep,_pos,_groupradius,_thisList]spawn{
	_waves = (_this select 0);
	_sleep = (_this select 1);
	_pos = (_this select 2);
	_groupradius = (_this select 3);
	_thisList = (_this select 4);
	for "_i" from 1 to _waves do {
		sleep _sleep;
		_spawnPos = [_pos,_groupradius] call SHK_pos;
	
		_ready = 0;
		while{_ready == 0}do{
			_ready = 1;
			{
				if(_x in (nearestObjects [player,["man"],200]))exitWith{_ready = 0};
			}forEach _thisList;
			_spawnPos = [_pos,_groupradius] call SHK_pos;
		};
	
		_groupSpawn = [_spawnPos, East, townSquadWave] call BIS_fnc_spawnGroup;
	
		_buildings = nearestObjects[_pos,["house","buildings"],400];
		_spawnPos = _buildings call BIS_fnc_selectRandom;
		_spawnPos = getPos _spawnPos;
		[_groupSpawn, _spawnPos, 40] call CBA_fnc_taskAttack;	
		{
			_x addMPEventHandler ["MPKilled",{
				if (side (_this select 1) == WEST) then{
					InsP_enemyMorale = InsP_enemyMorale + 0.06; publicVariable "InsP_enemyMorale";
				};
			}];
			_x addMagazines ["handGrenade",2];
		}forEach units _groupSpawn;
	};
};

if ((count PlayableUnits) > 5) then{
	_spawnPos = [_pos, _groupradius,[0,360],0,[2,200]] call shk_pos;
	_groupSpawn =  [_spawnPos, East, enemyTechnical] call BIS_fnc_spawnGroup;
	[_groupSpawn, (_pos), 40] call CBA_fnc_taskAttack;
	{
		_x addMPEventHandler ["MPKilled",{
			if (side (_this select 1) == WEST) then{
				InsP_enemyMorale = InsP_enemyMorale + 0.1; publicVariable "InsP_enemyMorale";
			};
		}];
	}forEach units _groupSpawn;
};