private ["_onLadder","_itemorignal","_hasdrinkitem","_hasoutput","_config","_text","_sfx","_alert_distance","_itemtodrop","_nearByPile","_item","_display","_invehicle"];

disableserialization;
call gear_ui_init;

_onLadder =     (getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
if (_onLadder) exitWith {cutText [(localize "str_player_21") , "PLAIN DOWN"]};

_itemorignal = _this;
_hasdrinkitem = _itemorignal in magazines player;
_hasoutput = _itemorignal in drink_with_output;
_invehicle = false;
_config = configFile >> "CfgMagazines" >> _itemorignal;
_text = getText (_config >> "displayName");

//getting type of sfx (now just drink od soda open && drink)
_sfx =  getText (_config >> "sfx");

if (!_hasdrinkitem) exitWith {cutText [format[(localize "str_player_31"),_text,"drink"] , "PLAIN DOWN"]};

player playActionNow "PutDown";
player removeMagazine _itemorignal;
if (vehicle player != player) then {
	_display = findDisplay 106;
	_display closeDisplay 0;
	_invehicle = true;
};

sleep 1;

if (["ItemWaterbottle",_itemorignal] call fnc_inString) then {
    _alert_distance = 5; //low alert && sound radius
    [player,_sfx,0,false,_alert_distance] call dayz_zombieSpeak;
    [player,_alert_distance,true,(getPosATL player)] spawn player_alertZombies;
    player addMagazine "ItemWaterbottleUnfilled";
};
if (["ItemSoda",_itemorignal] call fnc_inString) then {
    _alert_distance = 10; //higher alert && sound radius
    [player,_sfx,0,false,_alert_distance] call dayz_zombieSpeak;
    [player,_alert_distance,true,(getPosATL player)] spawn player_alertZombies;
};

if (_hasoutput) then{
	_itemtodrop = drink_output select(drink_with_output find _itemorignal);

	if (!_invehicle) then {
		// Selecting output
		_itemtodrop = drink_output select (drink_with_output find _itemorignal);

		sleep 3;
		_nearByPile= nearestObjects [(getPosATL player), ["WeaponHolder","WeaponHolderBase"],2];
		if (count _nearByPile ==0) then {
			_iPos = getPosATL player;
			_radius = 0.0;
			_item = createVehicle ["WeaponHolder", _iPos, [], _radius, "CAN_COLLIDE"];
			_item setposATL _iPos;
		} else {
			_item = _nearByPile select 0;
		};
		_item addMagazineCargoGlobal [_itemtodrop,1];
	};

	if (_invehicle) then {
		sleep 2;
		(vehicle player) addMagazineCargoGlobal [_itemtodrop,1];
	};
};

//add infection chance for "ItemWaterbottle",
if ((random 15 < 1) && (_itemorignal == "ItemWaterbottle")) then {
    r_player_infected = true;
    player setVariable["USEC_infected",true,true];
};

player setVariable ["messing",[dayz_hunger,dayz_thirst],true];

dayz_lastDrink = time;
dayz_thirst = max(dayz_thirst - DrinkThirstValue, 0);

//Ensure Control is visible
_display = uiNamespace getVariable 'DAYZ_GUI_display';
(_display displayCtrl 1302) ctrlShow true;

cutText [format[(localize  "str_player_consumed"),_text], "PLAIN DOWN"];
