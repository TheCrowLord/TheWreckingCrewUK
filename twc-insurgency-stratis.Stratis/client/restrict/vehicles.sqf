//Script by Sa-Matra, heavily modified by Tacticles
true spawn {
    //helicopters
    _apachecrew = ["B_helicrew_F"];
	_apache = ["CUP_B_AH64D_USA"];
	
    _blackhawk = ["CUP_B_UH60M_US"];
	_blackhawkpilot = ["B_HeliPilot_F"];
	
	//armour crew
	_armourCrew = ["B_crew_f"];
	_ifv = ["CUP_B_LAV25_USMC"];


	//Enemy Vehicles

	_shilka = ["CUP_I_ZU23_NAPA"];
    _crewblacklist = ["C_man_1"];

    //Wait until player is fully loaded
    waitUntil {player == player};

    //Assigning units to variables used below
	_iamapachecrew = ({typeOf player == _x} count _apachecrew) > 0;
    _iamblackhawkcrew = ({typeOf player == _x} count _blackhawkpilot) > 0;
	_iamarmourcrew = ({typeOf player == _x} count _armourcrew) > 0;

	_blacklist = ({typeOf player == _x} count _crewblacklist) > 0;
    //While loop
    while{true} do {
        //Wait until player's vehicle changed
        _oldvehicle = vehicle player;
        waitUntil {vehicle player != _oldvehicle};

        //If player is inside vehicle and not on foot
        if(vehicle player != player) then {
            _veh = vehicle player;



            //Vehicle check for IFV
            if(({typeOf _veh == _x} count _ifv) > 0 && !_iamarmourcrew) then {
                //Forbidden seats: copilot, gunner, pilot
                _forbidden =  [gunner _veh] + [driver _veh] + [commander _veh];
                if(player in _forbidden) then {
                    systemChat "You are not part of this vehicle crew!";
                    player action ["getout", _veh];
					player action ["eject", _veh];
                };
            };
			
			 //Vehicle Pilot Check for helicopter
            if(({typeOf _veh == _x} count _blackhawk) > 0 && !_iamblackhawkcrew) then {
                //Forbidden seats: copilot, gunner, pilot
                _forbidden =  [gunner _veh] + [commander _veh] + [driver _veh];
                if(player in _forbidden) then {
                    systemChat "You are not pilot and not allowed to pilot or gun this helicopter";
                    player action ["getout", _veh];
					player action ["eject", _veh];
                };
            };

			 //Vehicle Pilot Check for Apache
            if(({typeOf _veh == _x} count _apache) > 0 && !_iamapachecrew) then {
                //Forbidden seats: copilot, gunner, pilot
                _forbidden =  [gunner _veh] + [commander _veh] + [driver _veh];
                if(player in _forbidden) then {
                    systemChat "You are not pilot and not allowed to pilot or gun this helicopter";
                    player action ["getout", _veh];
					player action ["eject", _veh];
                };
            };


           //restrict Russian vehicles


		   //restrict Shilka
            if(({typeOf _veh == _x} count _shilka) > 0 && !_blacklist) then {
                //Forbidden seats: copilot, gunner, pilot
                _forbidden = [commander _veh] + [gunner _veh] + [driver _veh];
                if(player in _forbidden) then {
                    systemChat "This is a Russian vehicle!";
                    player action ["eject", _veh];
					player action ["getout", _veh];
                };
            };

        };
    };
};