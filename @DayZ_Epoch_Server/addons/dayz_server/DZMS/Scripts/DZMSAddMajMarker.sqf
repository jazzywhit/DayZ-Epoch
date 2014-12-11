/*
	Adds a marker for Major Missions. Only runs once.
	Usage: [coordinates,missionname]
*/
DZMSMajCoords = _this select 0;
DZMSMajName = _this select 1;

if(!isServer) exitWith {};

private ["_units"];
_units = [];
PlayerMissionMarker = [DZMSMajCoords, DZMSMajName];

while {DZMSMajRun} do {
    _units = [];
       if ((side _x) == West) then {
            if("ItemRadio" in weapons _x) then {
                _units set [count _units, _x];
            };
       };
    } forEach allUnits;

    // Send the markers to the players
    {
        (owner _x) publicVariableClient "PlayerMissionMarker"
    } foreach _units;

    uiSleep 30;
};