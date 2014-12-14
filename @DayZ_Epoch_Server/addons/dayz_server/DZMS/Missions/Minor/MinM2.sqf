/*
	Bandit Supply Heli Crash by lazyink (Full credit for original code to TheSzerdi & TAW_Tonic)
	New Mission Format by Vampire
*/

private ["_missName","_coords","_ranChopper","_chopper","_veh1", "_vehicle","_trash","_trash2","_crate","_crate2","_crate3"];

//Name of the Mission
_missName = "Helicopter Landing";

//DZMSFindPos loops BIS_fnc_findSafePos until it gets a valid result
_coords = call DZMSFindPos;

[nil,nil,rTitleText,"A Survivor Helicopter has been Forced to Land!\nStop them before they refuel!", "PLAIN",10] call RE;

//DZMSAddMinMarker is a simple script that adds a marker to the location
[_coords,_missname] ExecVM DZMSAddMinMarker;

//We create the vehicles like normal
_ranChopper = ["heli"] call DZMSGetVeh;
_chopper = createVehicle [_ranChopper,_coords,[], 0, "NONE"];
[_chopper] call DZMSSetupVehicle;
_chopper setDir -36.279881;

//We create the vehicles
_veh1 = ["small_survivor"] call DZMSGetVeh;
_vehicle = createVehicle [_veh1,[(_coords select 0) + 10, (_coords select 1) - 5,0],[], 0, "CAN_COLLIDE"];
[_vehicle] call DZMSSetupVehicle;

//Lets add the scenery
_trash = createVehicle ["Body1",[(_coords select 0) - 3.0185,(_coords select 1) - 0.084,0],[], 0, "CAN_COLLIDE"];
_trash2 = createVehicle ["Body2",[(_coords select 0) + 1.9248,(_coords select 1) + 2.1201,0],[], 0, "CAN_COLLIDE"];
[_trash] call DZMSProtectObj;
[_trash2] call DZMSProtectObj;

//DZMSBoxFill fills the box, DZMSProtectObj prevents it from disappearing
_crate = createVehicle ["USLaunchersBox",[(_coords select 0) - 6.1718,(_coords select 1) + 0.6426,0],[], 0, "CAN_COLLIDE"];
[_crate,"weapons"] ExecVM DZMSBoxSetup;
[_crate] call DZMSProtectObj;

_crate2 = createVehicle ["USLaunchersBox",[(_coords select 0) - 7.1718,(_coords select 1) + 1.6426,0],[], 0, "CAN_COLLIDE"];
[_crate2,"weapons"] ExecVM DZMSBoxSetup;
[_crate2] call DZMSProtectObj;

//DZMSAISpawn spawns AI to the mission.
//Usage: [_coords, count, skillLevel, unitArray]
[[(_coords select 0) - 8.4614,(_coords select 1) - 5.0527,0],3,1,"DZMSUnitsMinor"] call DZMSAISpawn;
sleep 5;
[[(_coords select 0) - 8.4614,(_coords select 1) - 5.0527,0],2,1,"DZMSUnitsMinor"] call DZMSAISpawn;
sleep 5;
[[(_coords select 0) + 7.5337,(_coords select 1) + 4.2656,0],2,1,"DZMSUnitsMinor"] call DZMSAISpawn;
sleep 5;
[[(_coords select 0) + 7.5337,(_coords select 1) + 4.2656,0],3,1,"DZMSUnitsMinor"] call DZMSAISpawn;
sleep 5;

//Wait until the player is within 30 meters and also meets the kill req
[_coords,"DZMSUnitsMinor"] call DZMSWaitMissionComp;

//Call DZMSSaveVeh to attempt to save the vehicles to the database
//If saving is off, the script will exit.
[_chopper] ExecVM DZMSSaveVeh;
[_vehicle] ExecVM DZMSSaveVeh;

//Let everyone know the mission is over
[nil,nil,rTitleText,"The Helicopter has been Taken by Survivors!", "PLAIN",6] call RE;
diag_log text format["[DZMS]: Minor SM4 Helicopter Landing Mission has Ended."];

//Let the timer know the mission is over
DZMSMinDone = true;