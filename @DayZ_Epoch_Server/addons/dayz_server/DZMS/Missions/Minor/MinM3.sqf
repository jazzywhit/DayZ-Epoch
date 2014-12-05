/*
	Bandit Stash House by lazyink (Full credit for code to TheSzerdi & TAW_Tonic)
	Updated to new format by Vampire
*/
private ["_missName","_coords","_base","_baseCoords","_veh1","_vehicle","_crate","_crate1"];

//Name of the Mission
_missName = "Stash House";

//DZMSFindPos loops BIS_fnc_findSafePos until it gets a valid result
_coords = call DZMSFindPos;

[nil,nil,rTitleText,"Survivors have set up a Weapon Stash House!\nGo Empty it Out!", "PLAIN",10] call RE;

//DZMSAddMinMarker is a simple script that adds a marker to the location
[_coords,_missName] ExecVM DZMSAddMinMarker;

//We create the scenery
_base = createVehicle ["Land_HouseV_1L2",_coords,[], 0, "CAN_COLLIDE"];
_base setDir 152.66766;
_base setPos _coords;
_baseCoords = getPos _base;

//DZMSProtectObj prevents it from disappearing
[_base] call DZMSProtectObj;

//We create the vehicles
_veh1 = ["small_survivor"] call DZMSGetVeh;
_vehicle = createVehicle [_veh1,[(_coords select 0) - 10.6206, (_coords select 1) - 0.49,0],[], 0, "CAN_COLLIDE"];

//DZMSSetupVehicle prevents the vehicle from disappearing and sets fuel and such
[_vehicle] call DZMSSetupVehicle;

//We create and fill the crate
//{-2.58887,-4.8584,-0.789368},{-2.37646,0.373047,-0.799377}
_crate = createVehicle ["USBasicAmmunitionBox",[(_baseCoords select 0) - 2.59, (_baseCoords select 1) - -4.86, (_baseCoords select 2) - 0.79],[], 0, "CAN_COLLIDE"];
[_crate,"weapons"] ExecVM DZMSBoxSetup;
[_crate] call DZMSProtectObj;
_crate1 = createVehicle ["USBasicAmmunitionBox",[(_baseCoords select 0) - 2.38, (_baseCoords select 1) + 0.37, (_baseCoords select 2) - 0.8],[], 0, "CAN_COLLIDE"];
[_crate1,"weapons"] ExecVM DZMSBoxSetup;
[_crate1] call DZMSProtectObj;

//DZMSAISpawn spawns AI to the mission.
//Usage: [_coords, count, skillLevel, unitArray]
[[(_coords select 0) - 4.0796, (_coords select 1) - 11.709,0],4,1,"DZMSUnitsMinor"] call DZMSAISpawn;
sleep 3;
[[(_coords select 0) + 2.8872, (_coords select 1) + 18.964,0],4,1,"DZMSUnitsMinor"] call DZMSAISpawn;
sleep 3;

//Wait until the player is within 30 meters and also meets the kill req
[_coords,"DZMSUnitsMinor"] call DZMSWaitMissionComp;

//Call DZMSSaveVeh to attempt to save the vehicles to the database
//If saving is off, the script will exit.
[_vehicle] ExecVM DZMSSaveVeh;

//Let everyone know the mission is over
[nil,nil,rTitleText,"The Stash House is under Survivor Control!", "PLAIN",6] call RE;
diag_log text format["[DZMS]: Minor SM3 Stash House Mission has Ended."];
deleteMarker "DZMSMinMarker";
deleteMarker "DZMSMinDot";

//Let the timer know the mission is over
DZMSMinDone = true;