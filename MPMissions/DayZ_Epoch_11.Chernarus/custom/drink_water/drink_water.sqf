private["_playerPos","_canDrink","_isPond","_isWell","_pondPos","_objectsWell","_objectsPond","_display","_infectionChance"];

call gear_ui_init;
_playerPos = getPosATL player;
_canDrink = count nearestObjects [_playerPos, ["Land_pumpa","Land_water_tank"], 4] > 0;
_isPond = false;
_isWell = false;
_pondPos = [];
_objectsWell = [];
_infectionChance = 0.05; // Drinking from a well has a low chance of infection

if (!_canDrink) then {
	_objectsWell = nearestObjects [_playerPos, [], 4];
	{
		//Check for Well
		_isWell = ["_well",str(_x),false] call fnc_inString;
		if (_isWell) then {_canDrink = true};
	} forEach _objectsWell;
};

if (!_canDrink) then {
	_objectsPond = nearestObjects [_playerPos, [], 50];
	{
		//Check for pond
		_isPond = ["pond",str(_x),false] call fnc_inString;
		if (_isPond) then {
			_pondPos = (_x worldToModel _playerPos) select 2;
			if (_pondPos < 0) then {
				_canDrink = true;
				_infectionChance = 0.5; // Ponds should have a high chance of infection
			};
		};
	} forEach _objectsPond;
};

if (_canDrink) then {
    player playActionNow "PutDown";
    dayz_lastDrink = time;
    dayz_thirst = dayz_thirst - DrinkThirstValue;

    if ((random 1) < _infectionChance) then {
        // Infect the player
        r_player_infected = true;
        player setVariable["USEC_infected",true,true];
        player setVariable ["messing",[dayz_hunger,dayz_thirst],true];
        cutText ["The water quenches your thirst but tastes strange; you begin to feel feverish.", "PLAIN DOWN"];
    } else {
        cutText ["The water quenches your thirst and you feel refreshed.", "PLAIN DOWN"];
    };

    //Ensure Control is visible
    _display = uiNamespace getVariable 'DAYZ_GUI_display';
    (_display displayCtrl 1302) ctrlShow true;
};