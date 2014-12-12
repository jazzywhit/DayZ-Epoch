DZMSMinCoords = _this select 0;
DZMSMinName = _this select 1;

if(!isServer) exitWith {};

private ["_units"];
_units = [];
PlayerMissionMarkerMinor = [DZMSMinCoords, DZMSMinName];
PlayerMissionMarkerMinorClear = [];

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
        (owner _x) publicVariableClient "PlayerMissionMarkerMinor";
    } foreach _units;
    uiSleep 30;
    {
        (owner _x) publicVariableClient "PlayerMissionMarkerMinorClear";
    } foreach _units;
};

// Do a final clear of all the mission markers
{
    (owner _x) publicVariableClient "PlayerMissionMarkerMinorClear";
} forEach allUnits;