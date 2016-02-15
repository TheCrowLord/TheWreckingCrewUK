/*
/ Required parameters
/ 0 - Mortar Name
/ 1 - Marker name which the mortar fires on
/ 
/ Additional Parameters
/ 2 - Radius on which rounds will land around the marker, default: 200
/ 3 - How many Rounds, default: 5
/ 4 - What type of round you would like to use, Options: "HE", "SMOKE", "ILLUM"
*/

private ["_mortarn","_marker","_radius2","rounds"];
if (isServer) then {	
Params ["_mortar","_marker",["_radius",200],["_rounds",5],["_Roundselect",""],["_delay",10]];
_Roundtype = 0;
switch (_Roundselect) do {
    case "HE": {_Roundtype = 0;};
    case "SMOKE": {_Roundtype = 2;};
	case "ILLUM": {_Roundtype = 1;};
    default { _Roundtype =  0;};
};


	for "_i" from 0 to _rounds do {  //--- 5 = how many rounds you want fired

					   //--- name of the mortar
		_center = markerPos _marker;  //--- central point around which the mortar rounds will hit

	_pos = [
		(_center select 0) - _radius + (2 * random _radius),
		(_center select 1) - _radius + (2 * random _radius),
		0
		];

	_mortar commandArtilleryFire [
						_pos,
						getArtilleryAmmo [_mortar] select _Roundtype,
						1
					];

	sleep _delay; //--- delay between rounds

	};	 
};
