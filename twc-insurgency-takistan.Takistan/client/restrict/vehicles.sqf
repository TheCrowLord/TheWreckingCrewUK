/*
Script by [TWC] jayman. Vehicle restriction through event handlers. Should cause literally like no lag
The old one by Sa-Matra relied on a while{true}do{} loop which is shitty.
*/
_specialCases = ["helo1","helo2","helo3","helo4","p33","p34","mert_helo","tank1","tank2","tank3"];
if(str player in _specialCases)then{
	if(str player == "helo1" || str player == "helo2")then{
		player addEventHandler ["getInMan",{
			if((_this select 1) != "cargo")then{
				if((_this select 2) isKindOf "Air")then{
					if(typeOf (_this select 2) == "UK3CB_BAF_Wildcat_AH1_CAS_8A" || typeOf (_this select 2) == "CUP_B_CH47F_GB")then{
						
					}else{
						hint "You are a BAF Pilot. You may only fly BAF helicopters";
						(_this select 0) action ["eject", (_this select 2)];
						(_this select 0) action ["getout", (_this select 2)];
					};
				};
			};
		}];
	};


	if(str player == "helo3" || str player == "helo4")then{
		player addEventHandler ["getInMan",{
			if((_this select 1) != "cargo")then{
				if((_this select 2) isKindOf "Air")then{
					if(typeOf (_this select 2) == "RHS_UH60M_D" || typeOf (_this select 2) == "CUP_B_MV22_USMC_RAMPGUN")then{
			
					}else{
						hint "You are a US pilot. You may only fly US helicopters";
						(_this select 0) action ["eject", (_this select 2)];
						(_this select 0) action ["getout", (_this select 2)];
					};
				};
			};
		}];
	};

	if(str player == "p33" || str player == "p34")then{
		player addEventHandler ["getInMan",{
			if((_this select 1) != "cargo")then{
				if((_this select 2) isKindOf "Air")then{
					if(typeOf (_this select 2) == "UK3CB_BAF_Apache_AH1_CAS")then{
			
					}else{
						hint "You are an Apache Pilot/Gunner. You may only fly/gun the Apache";
						(_this select 0) action ["eject", (_this select 2)];
						(_this select 0) action ["getout", (_this select 2)];
					};
				};
			};
		}];
	};
	
	if(str player == "mert_helo")then{
		player addEventHandler ["getInMan",{
			if((_this select 1) != "cargo")then{
				if((_this select 2) isKindOf "Air")then{
					if(typeOf (_this select 2) == "UK3CB_BAF_Merlin_HC3_CSAR")then{
			
					}else{
						hint "You are the MERT pilot. You may only fly the MERT helicopter";
						(_this select 0) action ["eject", (_this select 2)];
						(_this select 0) action ["getout", (_this select 2)];
					};
				};
			};
		}];
	};
	
	if(str player == "tank1" || str player == "tank2" || str player == "tank3")then{
		player addEventHandler ["getInMan",{
			if((_this select 1) != "cargo")then{
				if((_this select 2) isKindOf "Tank")then{
					if(typeOf (_this select 2) == "RHS_M2A3_BUSKIII")then{
			
					}else{
						hint "You are the armour crew. You may only Gun,Drive,Command the armour crew vehicle";
						(_this select 0) action ["eject", (_this select 2)];
						(_this select 0) action ["getout", (_this select 2)];
					};
				};
			};
		}];
	};
}else{
	player addEventHandler ["getInMan",{
		if((_this select 1) != "cargo")then{
			if((_this select 2) isKindOf "Tank" || (_this select 2) isKindOf "Air")then{
				hint "You are a grunt. You may only be a passenger in helicopters and armour";
				(_this select 0) action ["eject", (_this select 2)];
				(_this select 0) action ["getout", (_this select 2)];
			};
		};
	}];
};