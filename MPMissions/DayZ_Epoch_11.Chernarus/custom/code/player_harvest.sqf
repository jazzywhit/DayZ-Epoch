private ["_unit","_ammo","_distance","_weapon","_projectile","_endPos","_dir","_doWait","_vel"];
_unit = 		_this select 0;
_weapon = 		_this select 1;
_ammo = 		_this select 4;
_projectile = 	_this select 6;

if (_ammo isKindOf "Hatchet_Swing_Ammo" || _ammo isKindOf "Chainsaw_Swing_Ammo") then {
	
	_findNearestTree = [];
	{
		if("" == typeOf _x) then {
			
			if (alive _x) then {
				
				_objName = _x call DZE_getModelName;

				// Exit since we found a tree
				if (_objName in DZE_trees) exitWith { 
					_findNearestTree set [(count _findNearestTree),_x];
				};
			};
		};
	} count nearestObjects [getPosATL player, [], 20];

	//diag_log ("POSITION: " + str(_endPos));

	if (count(_findNearestTree) >= 1) then {

		_tree = _findNearestTree select 0;

		// get 2d distance
		_distance2d = [player, _tree] call BIS_fnc_distance2D;
		
		if(_distance2d <= 5) then {

			// damage must be going down
			_damage = damage _tree;
			if (DZE_TEMP_treedmg < _damage) then {

				if (_damage < 0.99) then {
					if("" == typeOf _tree) then {
						_tree setDamage 0.99;
					};
				};

				//diag_log ("DAMAGE: " + str(damage _tree)); 

				if (random 1 > 0.5) then {

					_countOut = 1;
					_itemOut = "PartWoodPile";
					if (random 1 > 0.7) then {
					    _itemOut = "PartWoodLumber";
                    };

					_nearByPile= nearestObjects [getPosATL player, ["WeaponHolder"],2];
					if (count _nearByPile == 0) then { 
						_item = createVehicle ["WeaponHolder", getPosATL player, [], 1, "CAN_COLLIDE"];
						_item addMagazineCargoGlobal [_itemOut,_countOut];
						player reveal _item;
					} else {
						_item = _nearByPile select 0;
						_item addMagazineCargoGlobal [_itemOut,_countOut];
					};

					_distance = 60;
					[player,_distance,false,getPosATL player] spawn player_alertZombies;
				};
			};
			DZE_TEMP_treedmg = _damage;
		};
	};
};
//Random breaking chance on swinging
private ["_item","_iPos","_weapon","_primaryWeapon","_iItem","_removed","_radius","_dropPrimary","_buildableNearby","_breakChance"];
_buildableNearby = false;
_breakChance = 0.1;
if (_ammo isKindOf "Machete_Swing_Ammo") then {
    _breakChance = 1;
};
if (_ammo isKindOf "Sledge_Swing_Ammo") then {
    _breakChance = 0.01;
};
if (_ammo isKindOf "Crowbar_Swing_Ammo") then {
    _breakChance = 0.05;
};
if (_ammo isKindOf "Fishing_Swing_Ammo") then {
    _breakChance = 50;
};
if (_ammo isKindOf "Hatchet_Swing_Ammo" or _ammo isKindOf "Machete_Swing_Ammo" or _ammo isKindOf "Sledge_Swing_Ammo" or _ammo isKindOf "Crowbar_Swing_Ammo" or _ammo isKindOf "Fishing_Swing_Ammo") then {
    {
        if ((_x isKindOf "ModularItems") or (_x isKindOf "Land_DZE_WoodDoor_Base") or (_x isKindOf "CinderWallDoor_DZ_Base")) then {
            if (alive _x) then {
                _buildableNearby = true;
            };
        };
    } foreach nearestObjects [getPosATL player, [], 6];
    if(_buildableNearby) then {
        if(random 100 <= _breakChance) then {
            _primaryWeapon = primaryWeapon player;
            cutText ["\n\nYour Melee-Weapon broke on this object. Get a stronger one", "PLAIN DOWN"];
            player removeWeapon _primaryWeapon;
        } else {
            cutText [format["\n\nYour Melee-Weapon has a %1%2 chance to break while smashing this object, some are stronger then others",_breakChance,"%"], "PLAIN DOWN"];
        };
    };
};