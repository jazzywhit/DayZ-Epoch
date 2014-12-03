// Rewriten by Soul from DayZ2017 to work with DayZ1.7.7.1
// Special thanks to reactortrip for bringing this up
// Krixes for the countdown timer example in his sleep script ;D
// The whole community for releasing all there scripts and so enabling me to learn alot!

private["_id", "_ent", "_fuelCans", "_qty_fuelCans", "_fuelBarrels", "_qty_fuelBarrels", "_fuelSource"];

if(DZE_ActionInProgress) exitWith { cutText ["You can't burn anything right now", "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

//Variables ------------------------------------------------
_ent = _this select 3; //Dont touch this
_fireStageTime = 60; //Total time to count down, makes the tent burn for 60 seconds. Change to whatever you like...
canAbort = true;
//----------------------------------------------------------

player removeAction s_player_igniteBuilding;
s_player_igniteBuilding = 1;

// Count number of Fuel Cans
_fuelCans = [];
{
	if(_x == "ItemJerrycan") then {
		_fuelCans set [(count _fuelCans),_x];
	};
} count magazines player;
_qty_fuelCans = count _fuelCans;

// Count number of Fuel Barrels
_fuelBarrels = [];
{
	if(_x == "ItemFuelBarrel") then {
		_fuelBarrels set [(count _fuelBarrels),_x];
	};
} count magazines player;
_qty_fuelBarrels = count _fuelBarrels;

// Exit if there isn't enough fuel
if(_qty_fuelCans == 0) exitWith { cutText ["You need some fuel to start the fire!", "PLAIN DOWN"]; s_player_igniteBuilding = -1; DZE_ActionInProgress = false;};

// Perform Character Action
player playActionNow "Medic";
sleep 7;

// Remove fuel from the character
_fuelSource = _fuelCans select 0;
if(([player, _fuelSource] call BIS_fnc_invRemove) == 1) then {
	if (_fuelSource == "ItemFuelBarrel") then {
		player addMagazine "ItemFuelBarrelEmpty";
	} else {
		player addMagazine "ItemJerrycanEmpty";
	};
};

// Player should be done and should be able to complete other actions now
s_player_igniteBuilding = -1;
DZE_ActionInProgress = false;

//TODO Update so message is broadcast to all players
//Spawns flies on AI corpse
//DZAI_deathFlies = {
//	private ["_soundFlies"];
//	_soundFlies = createSoundSource ["Sound_Flies",ASLtoATL getPosASL _this,[],0];
//	_soundFlies attachTo [_this,[0,0,0]];
//	_this setVariable ["sound_flies",_soundFlies];
//	waitUntil {sleep 5; (speed (vehicle _this)) == 0};
//	_this enableSimulation false;
//};
//["dayzFlies",player] call broadcastRpcCallAll;
// Check what type of building it is

// Start a small fire with only smoke
PVDZ_obj_Fire = [_ent,3,time,false,true];
publicVariable "PVDZ_obj_Fire";
_id = PVDZ_obj_Fire spawn BIS_Effects_Burn;
sleep _fireStageTime;

// Add flames to the fire
// TODO Players should be damaged if they go inside the building
PVDZ_obj_Fire = [_ent,3,time,false,true];
publicVariable "PVDZ_obj_Fire";
_id = PVDZ_obj_Fire spawn BIS_Effects_Burn;
sleep _fireStageTime;

// Make the fire larger
PVDZ_obj_Fire = [_ent,10,time,false,true];
publicVariable "PVDZ_obj_Fire";
_id = PVDZ_obj_Fire spawn BIS_Effects_Burn;
sleep _fireStageTime;

// Make the fire consume the building
PVDZ_obj_Fire = [_ent,15,time,false,true];
publicVariable "PVDZ_obj_Fire";
_id = PVDZ_obj_Fire spawn BIS_Effects_Burn;
sleep _fireStageTime;

//Destroy the building
_ent setDamage 1;
