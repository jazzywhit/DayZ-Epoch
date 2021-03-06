/*
	Medical Crate by lazyink (Full credit for original code to TheSzerdi & TAW_Tonic)
	Updated to new format by Vampire
*/

private ["_missName","_coords","_net","_veh1","_vehicle","_crate","_crate1"];

//Name of the Mission
_missName = "Medical Cache";

//DZMSFindPos loops BIS_fnc_findSafePos until it gets a valid result
_coords = call DZMSFindPos;

[nil,nil,rTitleText,"Bandits have Taken Over a Survivor Medical Cache!", "PLAIN",10] call RE;

//DZMSAddMinMarker is a simple script that adds a marker to the location
[_coords,_missname] ExecVM DZMSAddMinMarker;

//Lets add the scenery
_net = createVehicle ["Land_CamoNetB_NATO",[(_coords select 0) - 0.0649, (_coords select 1) + 0.6025,0],[], 0, "CAN_COLLIDE"];
[_net] call DZMSProtectObj;

//We create the vehicles like normal
_veh1 = ["small_bandit"] call DZMSGetVeh;
_vehicle = createVehicle [_veh1,[(_coords select 0) + 10.0303, (_coords select 1) - 12.2979,10],[], 0, "CAN_COLLIDE"];
[_vehicle] call DZMSSetupVehicle;

//DZMSBoxFill fills the box, DZMSProtectObj prevents it from disappearing
_crate = createVehicle ["USVehicleBox",_coords,[], 0, "CAN_COLLIDE"];
[_crate,"medical"] ExecVM DZMSBoxSetup;
[_crate] call DZMSProtectObj;

_crate1 = createVehicle ["USLaunchersBox",[(_coords select 0) - 3.7251,(_coords select 1) - 2.3614, 0],[], 0, "CAN_COLLIDE"];
[_crate1,"weapons"] ExecVM DZMSBoxSetup;
[_crate1] call DZMSProtectObj;

//DZMSAISpawn spawns AI to the mission.
//Usage: [_coords, count, skillLevel, unitArray]
[[(_coords select 0) + 0.0352,(_coords select 1) - 6.8799, 0],3,2,"DZMSUnitsMinor"] call DZMSAISpawn;
uiSleep 5;
[[(_coords select 0) + 0.0352,(_coords select 1) - 6.8799, 0],3,2,"DZMSUnitsMinor"] call DZMSAISpawn;
uiSleep 5;
[[(_coords select 0) + 0.0352,(_coords select 1) - 6.8799, 0],2,2,"DZMSUnitsMinor"] call DZMSAISpawn;
uiSleep 5;
[[(_coords select 0) + 0.0352,(_coords select 1) - 6.8799, 0],2,2,"DZMSUnitsMinor"] call DZMSAISpawn;
uiSleep 5;

//Wait until the player is within 30 meters and also meets the kill req
[_coords,"DZMSUnitsMinor"] call DZMSWaitMissionComp;

//Call DZMSSaveVeh to attempt to save the vehicles to the database
//If saving is off, the script will exit.
[_vehicle] ExecVM DZMSSaveVeh;

//Let everyone know the mission is over
[nil,nil,rTitleText,"The Medical Cache is Under Survivor Control!", "PLAIN",6] call RE;
diag_log text format["[DZMS]: Minor Medical Cache Mission has Ended."];

//Let the timer know the mission is over
DZMSMinDone = true;