private["_corpse","_type","_isBuried", "_hasHarvested"];

if(DZE_ActionInProgress) exitWith { cutText ["You butcher this man right now", "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

_corpse = _this select 3;
_type = typeOf _corpse;
_isBuried = _corpse getVariable["isBuried",false];
_hasHarvested = _corpse getVariable["meatHarvested",false];

player removeAction s_player_butcher_human;
s_player_butcher_human = 1;

if (!_isBuried) then {
    if (!_hasHarvested) then {

		_corpse setVariable["meatHarvested",true,true];
        player playActionNow "Medic";
		[player,"gut",0,false] call dayz_zombieSpeak;
        sleep 10;
		
		_rnd = random 1;
		if (_rnd < 0.1) then {
			r_player_inpain = true;
			player setVariable["USEC_inPain",true,true];
			r_player_blood = r_player_blood - 1000;
			cutText ["You cut yourself while removing the meat", "PLAIN DOWN"];
		};
		
		// Add steak to the corpse
		_qty = (random 2) + 1; // 1 - 3 steaks
		_item = "FoodSteakRaw";
		for "_x" from 1 to _qty do {
			_corpse addMagazineGlobal _item;
		};
	 
		_id = [player,150,true,(getPosATL player)] spawn player_alertZombies;
		dayzHumanity = [player,-500];
		_id = dayzHumanity spawn player_humanityChange;
		cutText ["You have gutted a human and your hands are covered with blood, you feel like a monster", "PLAIN DOWN"];
	} else {
		cutText ["Someone got to the body before you could", "PLAIN DOWN"];
    };
} else {
	cutText ["The worms have already had their fill", "PLAIN DOWN"];
};

s_player_butcher_human = -1;
DZE_ActionInProgress = false;
