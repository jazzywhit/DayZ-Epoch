/*																					//
	Nato Weapons Cache Mission by lazyink (Original Full Code by TheSzerdi & TAW_Tonic)
	New Mission Format by Vampire
*/																					//

private ["_missName","_coords","_net","_veh1","_veh2","_vehicle","_vehicle1","_crate","_crate1","_crate2"];

//Name of the Mission
_missName = "NATO Weapons Cache";

//DZMSFindPos loops BIS_fnc_findSafePos until it gets a valid result
_coords = call DZMSFindPos;

[nil,nil,rTitleText,"Your radio crackles and you overhear discussion of a UN Weapons Cache!", "PLAIN",10] call RE;

//DZMSAddMajMarker is a simple script that adds a marker to the location
[_coords,_missname] ExecVM DZMSAddMajMarker;

//Lets add the scenery
_net = createVehicle ["Land_CamoNetB_NATO",[(_coords select 0) - 0.0649, (_coords select 1) + 0.6025,0],[], 0, "CAN_COLLIDE"];
[_net] call DZMSProtectObj;

//We create the vehicles like normal
_veh1 = ["small_nato"] call DZMSGetVeh;
_veh2 = ["large_nato"] call DZMSGetVeh;
_vehicle = createVehicle [_veh1,[(_coords select 0) + 10.0303, (_coords select 1) - 12.2979,10],[], 0, "CAN_COLLIDE"];
_vehicle1 = createVehicle [_veh2,[(_coords select 0) - 6.2764, (_coords select 1) - 14.086,10],[], 0, "CAN_COLLIDE"];

//DZMSSetupVehicle prevents the vehicle from disappearing and sets fuel and such
[_vehicle] call DZMSSetupVehicle;
[_vehicle1] call DZMSSetupVehicle;

//DZMSBoxFill fills the box, DZMSProtectObj prevents it from disappearing
_crate = createVehicle ["USVehicleBox",[(_coords select 0),(_coords select 1),0],[], 0, "CAN_COLLIDE"];
[_crate,"weapons_nato_high"] ExecVM DZMSBoxSetup;
[_crate] call DZMSProtectObj;

_crate1 = createVehicle ["USLaunchersBox",[(_coords select 0) + 0.3428,(_coords select 1) - 1.8985,0],[], 0, "CAN_COLLIDE"];
[_crate1,"weapons_nato"] ExecVM DZMSBoxSetup;
[_crate1] call DZMSProtectObj;

_crate2 = createVehicle ["USLaunchersBox",[(_coords select 0) - 0.3428,(_coords select 1) + 1.8985,0],[], 0, "CAN_COLLIDE"];
[_crate2,"weapons_nato_high"] ExecVM DZMSBoxSetup;
[_crate2] call DZMSProtectObj;

//DZMSAISpawn spawns AI to the mission.
//Usage: [_coords, count, skillLevel, unitArray]
[[(_coords select 0) + 0.0352,(_coords select 1) - 6.8799, 0],3,3,"DZMSUnitsMajor"] call DZMSAISpawn;
uiSleep 5;
[[(_coords select 0) + 0.0352,(_coords select 1) - 6.8799, 0],3,3,"DZMSUnitsMajor"] call DZMSAISpawn;
uiSleep 5;
[[(_coords select 0) + 0.0352,(_coords select 1) - 6.8799, 0],3,3,"DZMSUnitsMajor"] call DZMSAISpawn;
uiSleep 5;
[[(_coords select 0) + 0.0352,(_coords select 1) - 6.8799, 0],3,3,"DZMSUnitsMajor"] call DZMSAISpawn;
uiSleep 5;

//Wait until the player is within 30 meters and also meets the kill req
[_coords,"DZMSUnitsMajor"] call DZMSWaitMissionComp;

//Call DZMSSaveVeh to attempt to save the vehicles to the database
//If saving is off, the script will exit.
[_vehicle] ExecVM DZMSSaveVeh;
[_vehicle1] ExecVM DZMSSaveVeh;

//Let everyone know the mission is over
[nil,nil,rTitleText,"The Weapons Cache is Under Survivor Control!", "PLAIN",6] call RE;
diag_log text format["[DZMS]: Major SM1 Weapon Cache Mission has Ended."];

//Let the timer know the mission is over
DZMSMajDone = true;