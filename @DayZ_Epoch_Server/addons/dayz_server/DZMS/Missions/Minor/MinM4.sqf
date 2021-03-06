/*
	Bandit Heli Down! by lazyink (Full credit for code to TheSzerdi & TAW_Tonic)
	Updated to new format by Vampire
*/
private ["_missName","_coords","_crash","_crate", "_crate1", "_veh1", "_vehicle"];

//Name of the Mission
_missName = "Helicopter Crash";

//DZMSFindPos loops BIS_fnc_findSafePos until it gets a valid result
_coords = call DZMSFindPos;

[nil,nil,rTitleText,"A Bandit Supply Helicopter has Crashed!\nRecover the Supplies Before Backup Arrives!", "PLAIN",10] call RE;

//DZMSAddMinMarker is a simple script that adds a marker to the location
[_coords,_missName] ExecVM DZMSAddMinMarker;

//Add the scenery
_crash = createVehicle ["UH60Wreck_DZ", _coords,[], 0, "CAN_COLLIDE"];

//We create the vehicles
_veh1 = ["small_bandit"] call DZMSGetVeh;
_vehicle = createVehicle [_veh1,[(_coords select 0) - 10.6206, (_coords select 1) - 0.49,0],[], 0, "CAN_COLLIDE"];

//DZMSProtectObj prevents it from disappearing
[_crash] call DZMSProtectObj;

//We create and fill the crates
_crate = createVehicle ["USLaunchersBox",[(_coords select 0) - 6, _coords select 1,0],[], 0, "CAN_COLLIDE"];
[_crate,"weapons"] ExecVM DZMSBoxSetup;
[_crate] call DZMSProtectObj;

_crate1 = createVehicle ["USLaunchersBox",[(_coords select 0) + 6, _coords select 1,0],[], 0, "CAN_COLLIDE"];
[_crate1,"weapons"] ExecVM DZMSBoxSetup;
[_crate1] call DZMSProtectObj;

//DZMSAISpawn spawns AI to the mission.
//Usage: [_coords, count, skillLevel, unitArray]
[_coords,2,2,"DZMSUnitsMinor"] call DZMSAISpawn;
uiSleep 1;
[_coords,2,2,"DZMSUnitsMinor"] call DZMSAISpawn;
uiSleep 1;
[_coords,2,2,"DZMSUnitsMinor"] call DZMSAISpawn;
uiSleep 1;

//Wait until the player is within 30 meters and also meets the kill req
[_coords,"DZMSUnitsMinor"] call DZMSWaitMissionComp;

//Call DZMSSaveVeh to attempt to save the vehicles to the database
//If saving is off, the script will exit.
[_vehicle] ExecVM DZMSSaveVeh;

//Let everyone know the mission is over
[nil,nil,rTitleText,"The Helicopter Crash has been Secured by Survivors!", "PLAIN",6] call RE;
diag_log text format["[DZMS]: Minor SM4 Crash Site Mission has Ended."];

//Let the timer know the mission is over
DZMSMinDone = true;