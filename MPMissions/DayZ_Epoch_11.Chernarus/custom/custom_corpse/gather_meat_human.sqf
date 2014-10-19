private["_corpse","_type","_isBuried","_gun"];
_corpse = _this select 3;
_type = typeOf _corpse;
_isBuried = _corpse getVariable["isBuried",false];
_hasHarvested = _corpse getVariable["meatHarvested",false];
_name = _corpse getVariable["bodyName","unknown"];

player removeAction s_player_butcher_human;
s_player_butcher_human = -1;

if (!_isBuried) then {
    if (!_hasHarvested) then {

		_corpse setVariable["isBuried",true,true];
        player playActionNow "Medic";
        sleep 10;
		
		_loop = true;
		_rnd = random 1;
	 
		//player playActionNow "Medic";
		[player,"gut",0,false] call dayz_zombieSpeak;
		//_item setVariable["meatHarvested",true,true];
 
		if (_rnd < 0.1) then {
			r_player_inpain = true;
			player setVariable["USEC_inPain",true,true];
			r_player_blood = r_player_blood - 1000;
			cutText ["You cut yourself while removing the meat", "PLAIN DOWN"];
		};

        //_position = getPosATL _corpse;
        //_dir = getDir _corpse;
		//private ["_newBackpackType","_backpackWpn","_backpackMag"];
		
        // dayz_myBackpack = unitBackpack _corpse;
		// _newBackpackType = (typeOf dayz_myBackpack);
        // _corpse; private ["_weapons","_magazines","_primweapon","_secweapon"];
        // _weapons = weapons _corpse;
        // _magazines = magazines _corpse;
		
        // if(_newBackpackType != "") then {
			// _backpackWpn = getWeaponCargo unitBackpack _corpse;
			// _backpackMag = getMagazineCargo unitBackpack _corpse;
		// };
		
		//_box = createVehicle ["MedBox0", _position, [], 0, "CAN_COLLIDE"];
        //_box setpos [(getposATL _box select 0),(getposATL _box select 1)+1.2, 0];
        //clearWeaponCargoGlobal _box;
        //clearMagazineCargoGlobal _box;
        //{ _box addWeaponCargoGlobal [_x, 1] } forEach weapons _corpse;
        //{ _box addMagazineCargoGlobal [_x ,1] } forEach magazines _corpse;
		//deleteVehicle _corpse;

		// if(_newBackpackType != "") then {
		// _backpackWpnTypes = [];
		// _backpackWpnQtys = [];
		
		// if (count _backpackWpn > 0) then {
			// _backpackWpnTypes = _backpackWpn select 0;
			// _backpackWpnQtys = _backpackWpn select 1;
		// };
		
		// _countr = 0;
		// { _box addWeaponCargoGlobal [_x,(_backpackWpnQtys select _countr)];
		// _countr = _countr + 1;
		// } forEach _backpackWpnTypes;
		
		// _backpackmagTypes = [];
		// _backpackmagQtys = [];
		
		// if (count _backpackmag > 0) then {
			// _backpackmagTypes = _backpackMag select 0;
			// _backpackmagQtys = _backpackMag select 1;
		// };
		
		// _countr = 0; { _box addMagazineCargoGlobal [_x,(_backpackmagQtys select _countr)];
		// _countr = _countr + 1;
		
		//} forEach _backpackmagTypes;
		//	_box addBackpackCargoGlobal [_newBackpackType, 1];
		//};

        //Permaloot
        //_box setVariable ["permaLoot", true];

        //_deathMessage = format["Nom Nom Nom, you taste like chicken, %1...",_name];
        //cutText [_deathMessage, "PLAIN DOWN"];
        //[player,-200] call player_humanityChange;
        //_id = [player,50,true,(getPosATL player)] spawn player_alertZombies;
		
		_qty = (random 3);
		_id = [player,50,true,(getPosATL player)] spawn player_alertZombies;
		dayzHumanity = [player,-500];
		_id = dayzHumanity spawn player_humanityChange;
	 
		_array = [_item,_qty];
		_meat = "FoodSteakRaw";
		for "_x" from 1 to _qty do {
			_item addMagazine "FoodSteakRaw";
			_result = [player,_meat] call BIS_fnc_invAdd;
			if (_result) then {

			} else {
				cutText ["You didn't have enough room to store the meat :(", "PLAIN DOWN"];
				_x = _qty;
			}
		};
	 
		sleep 8;
		cutText ["You have gutted a human your hands are covered with blood, you feel your humanity lower.", "PLAIN DOWN"];
	} else {
		cutText ["The poor bastards already been eaten", "PLAIN DOWN"];
    };
};