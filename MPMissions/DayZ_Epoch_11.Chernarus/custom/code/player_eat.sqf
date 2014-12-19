private ["_onLadder","_itemorignal","_hasfooditem","_rawfood","_hasoutput","_config","_text","_regen","_alert_distance","_sfx","_itemtodrop","_nearByPile","_item","_display","_rawexceptions","_badfood","_invehicle"];
disableserialization;
call gear_ui_init;
_onLadder =		(getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
if (_onLadder) exitWith {cutText [(localize "str_player_21") , "PLAIN DOWN"]};

_itemorignal = _this;
_hasfooditem = _itemorignal in magazines player;
_rawfood = _itemorignal in meatraw;
_rawexceptions = _itemorignal in exceptionsraw;
_hasoutput = _itemorignal in food_with_output;
_badfood = _itemorignal in badfood;
_config =   configFile >> "CfgMagazines" >> _itemorignal;
_text = 	getText (_config >> "displayName");

if (!_hasfooditem) exitWith {cutText [format[(localize "str_player_31"),_text,"consume"] , "PLAIN DOWN"]};

player playActionNow "PutDown";
player removeMagazine _itemorignal;

_invehicle = false;
if (vehicle player != player) then {
	_display = findDisplay 106;
	_display closeDisplay 0;
	_invehicle = true;
};
sleep 1;

// Alert Zombies to player eating
_alert_distance = 5; //low alert && sound radius
_sfx = "eat";
[player,_sfx,0,false,_alert_distance] call dayz_zombieSpeak;
[player,_alert_distance,true,(getPosATL player)] spawn player_alertZombies;

if (_hasoutput && !_invehicle) then {
    // Selecting output
    _itemtodrop = food_output select (food_with_output find _itemorignal);

    sleep 3;
    _nearByPile= nearestObjects [(getposATL player), ["WeaponHolder","WeaponHolderBase"],2];
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

if (_hasoutput && _invehicle) then {
	sleep 2;
	(vehicle player) addMagazineCargoGlobal [_itemtodrop,1];
};

if (_rawfood && !_rawexceptions && ((random 1) < 0.25)) then {
	r_player_infected = true;
	player setVariable["USEC_infected",true,true];
};

if (_badfood && ((random 1)  < 0.75)) then {
	r_player_infected = true;
	player setVariable["USEC_infected",true,true];
};

// Set hunger levels
player setVariable ["messing",[dayz_hunger,dayz_thirst],true];
dayz_lastMeal =	time;
dayz_hunger = 0 max (dayz_hunger - round(SleepFood/3));

//Ensure Control is visible
_display = uiNamespace getVariable 'DAYZ_GUI_display';
(_display displayCtrl 1301) ctrlShow true;

cutText [format[(localize  "str_player_consumed"),_text], "PLAIN DOWN"];
