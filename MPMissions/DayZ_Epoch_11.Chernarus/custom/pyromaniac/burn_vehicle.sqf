// Rewriten by Soul from DayZ2017 to work with DayZ1.7.7.1
// Special thanks to reactortrip for bringing this up
// Krixes for the countdown timer example in his sleep script ;D
// The whole community for releasing all there scripts and so enabling me to learn alot!

private["_ent", "_fuelCans", "_qty_fuelCans"];

if(DZE_ActionInProgress) exitWith { cutText ["You can't burn anything right now", "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

//Variables ------------------------------------------------
_ent = _this select 3; //Dont touch this
_countDownTimer = 60; //Total time to count down, makes the tent burn for 60 seconds. Change to whatever you like...
_timeLeft = _countDownTimer; //time left to count down, dont touch this
canAbort = true;
//----------------------------------------------------------

player removeAction s_player_igniteVehicle;
s_player_igniteVehicle = 1;

// Count number of Fuel Cans
_fuelCans = [];
{
	if(_x == "ItemJerrycanEmpty" || _x == "ItemFuelBarrelEmpty") then {
		_fuelCans set [(count _fuelCans),_x];
	};
} count magazines player;
_qty_fuelCans = count _fuelCans;
if(_qty_fuelCans == 0) exitWith { cutText ["You need Fuel to set fire to this", "PLAIN DOWN"]; s_player_igniteVehicle = -1; DZE_ActionInProgress = false;};

// Play Action
player playActionNow "Medic";
sleep 7;

_objectID = _ent getVariable["ObjectID","0"];
_objectUID = _ent getVariable["ObjectUID","0"];

PVDZ_obj_Fire = [_ent,4,time,false,true];
publicVariable "PVDZ_obj_Fire";
_id = PVDZ_obj_Fire spawn BIS_Effects_Burn;

for "_i" from 0 to _countDownTimer do {
	sleep 1;
	_timeLeft = _timeLeft - 1;
};

if(_timeLeft == 0 || _timeLeft < 0) then {
	_ent setDamage 1;

	// Let the damage destroy the vehicle for now, check on server restart if that works
	//Deleting from database. Function found in player_packTent.sqf
	//PVDZ_obj_Delete = [_objectID,_objectUID];
	//publicVariableServer "PVDZ_obj_Delete";
	//if (isServer) then {
	//	PVDZ_obj_Delete call server_deleteObj;
	//};
	//deleteVehicle _ent;
};

s_player_igniteVehicle = -1;
DZE_ActionInProgress = false;
