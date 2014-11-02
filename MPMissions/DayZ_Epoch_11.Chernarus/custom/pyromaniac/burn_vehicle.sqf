// Rewriten by Soul from DayZ2017 to work with DayZ1.7.7.1
// Special thanks to reactortrip for bringing this up
// Krixes for the countdown timer example in his sleep script ;D
// The whole community for releasing all there scripts and so enabling me to learn alot!

private["_id", "_ent", "_fuelCans", "_qty_fuelCans", "_fuelSource"];

if(DZE_ActionInProgress) exitWith { cutText ["You can't burn anything right now", "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

//Variables ------------------------------------------------
_ent = _this select 3; //Dont touch this
_fireStageTime = 60; //Total time to count down, makes the tent burn for 60 seconds. Change to whatever you like...
canAbort = true;
//----------------------------------------------------------

player removeAction s_player_igniteVehicle;
s_player_igniteVehicle = 1;

// Count number of Fuel Cans
_fuelCans = [];
{
	if(_x == "ItemJerrycan") then {
		_fuelCans set [(count _fuelCans),_x];
	};
} count magazines player;
_qty_fuelCans = count _fuelCans;
if(_qty_fuelCans == 0) exitWith { cutText ["You need Fuel to set fire to this", "PLAIN DOWN"]; s_player_igniteVehicle = -1; DZE_ActionInProgress = false;};

// Play Action
player playActionNow "Medic";
sleep 7;

// Remove fuel from the character
_fuelSource = _fuelCans select 0;
if(([player, _fuelSource] call BIS_fnc_invRemove) == 1) then {
	player addMagazine "ItemJerrycanEmpty";
};

// Player should be done and should be able to complete other actions now
s_player_igniteVehicle = -1;
DZE_ActionInProgress = false;

_objectID = _ent getVariable["ObjectID","0"];
_objectUID = _ent getVariable["ObjectUID","0"];

// Start a small fire with only smoke
PVDZ_obj_Fire = [_ent,3,time,false,true];
publicVariable "PVDZ_obj_Fire";
_id = PVDZ_obj_Fire spawn BIS_Effects_Burn;
_ent setDamage 0.99; //Damage the vehicle so it cannot be driven
sleep _fireStageTime;

// Start a small fire with only smoke
PVDZ_obj_Fire = [_ent,6,time,false,true];
publicVariable "PVDZ_obj_Fire";
_id = PVDZ_obj_Fire spawn BIS_Effects_Burn;
sleep _fireStageTime;

// Destroy Vehicle
_ent setDamage 1;
