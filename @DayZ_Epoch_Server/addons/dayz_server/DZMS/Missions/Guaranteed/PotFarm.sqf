/*
	Hemp Farm Script
	Example Code by Halv
	Update for pot farm by jesquik
*/

private ["_missName","_ai_coords","_hemp_coords","_boxFin"];

//Name of the Mission
_missName = "Bandit Harvest";

//DZMSFindPos loops BIS_fnc_findSafePos until it gets a valid result
// _ai_coords = call DZMSFindPos;
_ai_coords = [9007.2881, 7789.5952, 0.00051879883];
_hemp_coords = [8988.8252, 7808.0654, 1.4512249];

[nil,nil,rTitleText,"The Bandit Farmers Have Harvested Their Crops!\nGet There Before They Smoke It All!", "PLAIN",10] call RE;

//DZMSAddMajMarker is a simple script that adds a marker to the location
[_ai_coords,_missname] ExecVM DZMSAddMajMarker;

//DZMSAISpawn spawns AI to the mission.
//Usage: [_ai_coords, count, skillLevel, unitArray]
[_ai_coords,3,2,"DZMSUnitsMajor"] call DZMSAISpawn;
sleep 5;
[_ai_coords,4,2,"DZMSUnitsMajor"] call DZMSAISpawn;
sleep 5;
[_ai_coords,3,2,"DZMSUnitsMajor"] call DZMSAISpawn;
sleep 5;

// Create final box
_boxFin = createVehicle ["USVehicleBox",_hemp_coords,[],0,"CAN_COLLIDE"];
clearWeaponCargoGlobal _boxFin;
clearMagazineCargoGlobal _boxFin;
clearBackpackCargoGlobal _boxFin;
[_boxFin,"hemp"] ExecVM DZMSBoxSetup;
[_boxFin] call DZMSProtectObj;

//Wait until the player is within 30 meters and also meets the kill req
[position _boxFin,"DZMSUnitsMajor"] call DZMSWaitMissionComp;

//Let everyone know the mission is over
[nil,nil,rTitleText,"The Harvest has Been Stolen by Survivors!", "PLAIN",6] call RE;
diag_log text format["[DZMS]: Major PF1 Harvest Mission is over."];

//Let the timer know the mission is over
DZMSMajDone = true;