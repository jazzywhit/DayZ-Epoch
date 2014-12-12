/*
	Adds a marker for Minor Missions. Only runs once.
	Usage: [coordinates,missionname]
*/
DZMSMinCoords = _this select 0;
DZMSMinName = _this select 1;

if(!isServer) exitWith {};

private ["_units"];
_units = [];
PlayerMissionMarkerMinor = [DZMSMinCoords, DZMSMinName];

while {DZMSMinRun} do {

    // Check radio on all units
    _units = [];
    {
       if ((side _x) == West) then {
            if("ItemRadio" in weapons _x) then {
                _units set [count _units, _x];
            };
       };
    } forEach allUnits;

    // Send the markers to the players
    {
        (owner _x) publicVariableClient "PlayerMissionMarkerMinor"
    } foreach _units;

    uiSleep 30;
};