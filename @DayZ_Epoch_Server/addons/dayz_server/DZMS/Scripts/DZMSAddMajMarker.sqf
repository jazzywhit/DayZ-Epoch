DZMSMajCoords = _this select 0;
DZMSMajName = _this select 1;

if(!isServer) exitWith {};

private ["_units"];
_units = [];
PlayerMissionMarkerMajor = [DZMSMajCoords, DZMSMajName];
PlayerMissionMarkerMajorClear = [];

while {DZMSMajRun} do {

    // Check radio on all units
    _units = [];
    {
       if ((side _x) == West) then {
            if("ItemRadio" in weapons _x) then {
                _units set [count _units, _x];
            };
       };
       (owner _x) publicVariableClient "PlayerMissionMarkerMajorClear"
    } forEach allUnits;

    // Send the markers to the players
    {
        (owner _x) publicVariableClient "PlayerMissionMarkerMajor"
    } foreach _units;

    uiSleep 30;
};

// Do a final clear of all the mission markers
{
    (owner _x) publicVariableClient "PlayerMissionMarkerMajorClear"
} forEach allUnits;