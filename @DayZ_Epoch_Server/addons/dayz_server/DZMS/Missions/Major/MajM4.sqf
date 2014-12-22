/*
	Bandit Supply Heli Crash by lazyink (Full credit for original code to TheSzerdi & TAW_Tonic)
	New Mission Format by Vampire
*/

private ["_missName","_coords","_ranChopper","_chopper","_trash","_trash2","_crate","_crate2","_crate3"];

//Name of the Mission
_missName = "Helicopter Landing";

//DZMSFindPos loops BIS_fnc_findSafePos until it gets a valid result
_coords = call DZMSFindPos;

[nil,nil,rTitleText,"A Bandit Helicopter has been Forced to Land!\nStop them before they refuel!", "PLAIN",10] call RE;

//DZMSAddMajMarker is a simple script that adds a marker to the location
[_coords,_missname] ExecVM DZMSAddMajMarker;

//We create the vehicles like normal
_ranChopper = ["heli_armed"] call DZMSGetVeh;
_chopper = createVehicle [_ranChopper,_coords,[], 0, "NONE"];
[_chopper] call DZMSSetupVehicle;
_chopper setDir -36.279881;

private ["_veh1", "_vehicle"];
//Create the vehicles
_veh1 = ["small_bandit"] call DZMSGetVeh;
_vehicle = createVehicle [_veh1,[(_coords select 0) - 17.5078, (_coords select 1) + 5.2578,0],[], 0, "CAN_COLLIDE"];
[_vehicle] call DZMSSetupVehicle;

//Lets add the scenery
_trash = createVehicle ["Body1",[(_coords select 0) - 3.0185,(_coords select 1) - 0.084,0],[], 0, "CAN_COLLIDE"];
_trash2 = createVehicle ["Body2",[(_coords select 0) + 1.9248,(_coords select 1) + 2.1201,0],[], 0, "CAN_COLLIDE"];
[_trash] call DZMSProtectObj;
[_trash2] call DZMSProtectObj;

//DZMSBoxFill fills the box, DZMSProtectObj prevents it from disappearing
_crate = createVehicle ["USLaunchersBox",[(_coords select 0) - 6.1718,(_coords select 1) + 0.6426,0],[], 0, "CAN_COLLIDE"];
[_crate,"weapons_high"] ExecVM DZMSBoxSetup;
[_crate] call DZMSProtectObj;

_crate2 = createVehicle ["USLaunchersBox",[(_coords select 0) - 7.1718,(_coords select 1) + 1.6426,0],[], 0, "CAN_COLLIDE"];
[_crate2,"weapons_high"] ExecVM DZMSBoxSetup;
[_crate2] call DZMSProtectObj;

_crate3 = createVehicle ["USLaunchersBox",[(_coords select 0) + 7.1718,(_coords select 1) - 1.6426,0],[], 0, "CAN_COLLIDE"];
[_crate3,"medical"] ExecVM DZMSBoxSetup;
[_crate3] call DZMSProtectObj;

//DZMSAISpawn spawns AI to the mission.
//Usage: [_coords, count, skillLevel, unitArray]
[[(_coords select 0) - 8.4614,(_coords select 1) - 5.0527,0],3,2,"DZMSUnitsMajor"] call DZMSAISpawn;
uiSleep 5;
[[(_coords select 0) - 8.4614,(_coords select 1) - 5.0527,0],2,2,"DZMSUnitsMajor"] call DZMSAISpawn;
uiSleep 5;
[[(_coords select 0) + 7.5337,(_coords select 1) + 4.2656,0],2,2,"DZMSUnitsMajor"] call DZMSAISpawn;
uiSleep 5;
[[(_coords select 0) + 7.5337,(_coords select 1) + 4.2656,0],3,2,"DZMSUnitsMajor"] call DZMSAISpawn;
uiSleep 5;

//Wait until the player is within 30 meters and also meets the kill req
[_coords,"DZMSUnitsMajor"] call DZMSWaitMissionComp;

//Call DZMSSaveVeh to attempt to save the vehicles to the database
//If saving is off, the script will exit.
[_chopper] ExecVM DZMSSaveVeh;
[_vehicle] ExecVM DZMSSaveVeh;

//Let everyone know the mission is over
[nil,nil,rTitleText,"The Helicopter has been Taken by Survivors!", "PLAIN",6] call RE;
diag_log text format["[DZMS]: Major SM4 Helicopter Landing Mission has Ended."];

//Let the timer know the mission is over
DZMSMajDone = true;