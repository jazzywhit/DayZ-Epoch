private["_corpse","_type","_isBuried", "_hasHarvested", "_name", "_rnd", "_mound","_cross","_gun", "_position", "_dir","_humanity_value"];

if(DZE_ActionInProgress) exitWith { cutText ["You cannot butcher this man right now", "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

_corpse = _this select 3;
_type = typeOf _corpse;
_isBuried = _corpse getVariable["isBuried",false];
_hasHarvested = _corpse getVariable["meatHarvested",false];
_humanity_value = -100;

//Check if the corpse was a player
_corpseID = _corpse getVariable ["CharacterID", "0"];
_isPlayer = true;
if (_corpseID == "0") then { _isPlayer = false };
diag_log(format["butcher_human.sqf - CorpseID: %1", _corpseID]);

player removeAction s_player_butcher_human;
s_player_butcher_human = 1;

if (!_isBuried) then {
    if (!_hasHarvested) then {

		_corpse setVariable["meatHarvested",true,true];
        player playActionNow "Medic";
		[player,"gut",0,false] call dayz_zombieSpeak;
        sleep 8;

		_rnd = random 1;
		if (_rnd < 0.1) then {
			r_player_inpain = true;
			player setVariable["USEC_inPain",true,true];
			r_player_blood = r_player_blood - 1000;
			cutText ["You cut yourself while removing the meat!", "PLAIN DOWN"];
		};

		// Replace the person with a bone pile
        _position = getPosATL _corpse;
        _dir = getDir _corpse;
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
		
		_box = createVehicle ["GraveDZE", _position, [], 0, "CAN_COLLIDE"];
        _box setpos [(getposATL _box select 0),(getposATL _box select 1)+1.2, 0];
        clearWeaponCargoGlobal _box;
        clearMagazineCargoGlobal _box;
        { _box addWeaponCargoGlobal [_x, 1] } forEach weapons _corpse;
        { _box addMagazineCargoGlobal [_x ,1] } forEach magazines _corpse;
        _box addMagazineCargoGlobal ["FoodbaconRaw",1]; //Add Food
		if (_isPlayer) then {
		    cutText ["You have documented your kill, someone will want to see this...", "PLAIN DOWN"];
			_box addWeaponCargoGlobal ["Kostey_notebook",1]; //Add Kill Record
			_humanity_value = -500;
		};
		
        // Delete Body
		deleteVehicle _corpse;

        // Sort through backpack and empty it into bone pile
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

        cutText ["You have gutted a human and your hands are covered with blood", "PLAIN DOWN"];
        [player,_humanity_value] call player_humanityChange;
        _id = [player,50,true,(getPosATL player)] spawn player_alertZombies;
    } else {
        cutText ["The worms have already had their fill", "PLAIN DOWN"];
    };
};

s_player_butcher_human = -1;
DZE_ActionInProgress = false;
