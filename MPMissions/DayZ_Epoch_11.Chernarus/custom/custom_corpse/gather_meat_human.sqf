private["_corpse","_type","_isBuried", "_hasHarvested"];
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
		_corpse setVariable["meatHarvested",true,true];
        player playActionNow "Medic";
        sleep 10;
		
		_loop = true;
		_rnd = random 1;
	 
		[player,"gut",0,false] call dayz_zombieSpeak;
		
 
		if (_rnd < 0.1) then {
			r_player_inpain = true;
			player setVariable["USEC_inPain",true,true];
			r_player_blood = r_player_blood - 1000;
			cutText ["You cut yourself while removing the meat", "PLAIN DOWN"];
		};
		
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