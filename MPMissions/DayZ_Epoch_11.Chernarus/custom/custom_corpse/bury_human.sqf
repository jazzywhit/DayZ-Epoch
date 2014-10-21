private["_corpse","_type","_isBuried","_mound","_cross","_gun"];

if(DZE_ActionInProgress) exitWith { cutText ["You can't perform burial rites right now", "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

_corpse = _this select 3;
_type = typeOf _corpse;
_isBuried = _corpse getVariable["isBuried",false];
_hasHarvested = _corpse getVariable["meatHarvested",false];
_name = _corpse getVariable["bodyName","unknown"];

player removeAction s_player_bury_human;
s_player_bury_human = 1;

if (!_isBuried) then {
    if (!_hasHarvested) then {
		// Get body position and direction
        _position = getPosATL _corpse;
        _dir = getDir _corpse;
		
		// Check if the body is on a road and exit if it is
		if (isOnRoad _position) exitWith { 
			DZE_ActionInProgress = false; 
			s_player_bury_human = -1; 
			cutText ["You can't perform burial rites here!", "PLAIN DOWN"]; 
		};
		
		// Corpse can be buried, set variables and play action
        _corpse setVariable["isBuried",true,true];
        player playActionNow "Medic";
		[player,"tentunpack",0,false] call dayz_zombieSpeak;
        sleep 10;

		// Gather backpack and prepare to move items from body
		private ["_newBackpackType","_backpackWpn","_backpackMag"];
        dayz_myBackpack = unitBackpack _corpse;
		_newBackpackType = (typeOf dayz_myBackpack);
        _corpse; private ["_weapons","_magazines","_primweapon","_secweapon"];
        _weapons = weapons _corpse;
        _magazines = magazines _corpse;
		
        if(_newBackpackType != "") then {
			_backpackWpn = getWeaponCargo unitBackpack _corpse;
			_backpackMag = getMagazineCargo unitBackpack _corpse;
		};
		
		_box = createVehicle ["Foodbox0", _position, [], 0, "CAN_COLLIDE"];
        _box setpos [(getposATL _box select 0),(getposATL _box select 1)+1.2, 0];
        clearWeaponCargoGlobal _box;
        clearMagazineCargoGlobal _box;
        { _box addWeaponCargoGlobal [_x, 1] } forEach weapons _corpse;
        { _box addMagazineCargoGlobal [_x ,1] } forEach magazines _corpse;
		deleteVehicle _corpse;

        _mound = createVehicle ["Grave", _position, [], 0, "CAN_COLLIDE"];
        _mound setpos [(getposATL _mound select 0),(getposATL _mound select 1), 0];
        _crosstype = ["GraveCross1","GraveCross2","GraveCrossHelmet"]  call BIS_fnc_selectRandom;
        _cross = createVehicle [_crosstype, _position, [], 0, "CAN_COLLIDE"];
        _cross setpos [(getposATL _cross select 0),(getposATL _cross select 1)-1.2, 0];

        if(_newBackpackType != "") then {
            _backpackWpnTypes = [];
            _backpackWpnQtys = [];
            if (count _backpackWpn > 0) then {
                _backpackWpnTypes = _backpackWpn select 0;
                _backpackWpnQtys = _backpackWpn select 1;
            };
            _countr = 0;
            { _box addWeaponCargoGlobal [_x,(_backpackWpnQtys select _countr)];
            _countr = _countr + 1;
            } forEach _backpackWpnTypes;
            _backpackmagTypes = [];
            _backpackmagQtys = [];
            if (count _backpackmag > 0) then {
                _backpackmagTypes = _backpackMag select 0;
                _backpackmagQtys = _backpackMag select 1;
            };
            _countr = 0; { _box addMagazineCargoGlobal [_x,(_backpackmagQtys select _countr)];
            _countr = _countr + 1;
            } forEach _backpackmagTypes;
            _box addBackpackCargoGlobal [_newBackpackType, 1];
        };

        //Permaloot
        _box setVariable ["permaLoot", true];

        _deathMessage = format["Rest in Peace, %1...",_name];
        cutText [_deathMessage, "PLAIN DOWN"];
        [player,100] call player_humanityChange;
        _id = [player,50,true,(getPosATL player)] spawn player_alertZombies;
        player playMove "AmovPercMstpSlowWrflDnon_Salute";
		
	} else {
		cutText ["The poor bastard has been eaten, there's not enough left  much left to bury", "PLAIN DOWN"];
	};
} else {
	cutText ["This man is currently being buried", "PLAIN DOWN"];
};

s_player_bury_human = -1;
DZE_ActionInProgress = false;