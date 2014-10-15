/*
	Bandit Hunting Party by lazyink (Full credit to TheSzerdi & TAW_Tonic for the code)
	Updated to new format by Vampire
*/
private ["_missName","_coords","_vehicle"];

//Name of the Mission
_missName = "Bandit Squad";

//DZMSFindPos loops BIS_fnc_findSafePos until it gets a valid result
_coords = call DZMSFindPos;

//DZMSAISpawn spawns AI to the mission.
//Usage: [_coords, count, skillLevel, unitArray]
[_coords,2,2,"DZMSUnitsMinor"] call DZMSAISpawn;
sleep 5;
[_coords,2,2,"DZMSUnitsMinor"] call DZMSAISpawn;
sleep 5;
[_coords,2,2,"DZMSUnitsMinor"] call DZMSAISpawn;
sleep 5;

//Let the timer know the mission is over
DZMSMinDone = true;