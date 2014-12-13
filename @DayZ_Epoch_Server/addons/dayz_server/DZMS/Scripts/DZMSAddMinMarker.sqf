DZMSMinCoords = _this select 0;
DZMSMinName = _this select 1;

if(!isServer) exitWith {};

private ["_units","_notified_units"];
_units = [];
_notified_units = [];
PlayerMissionMarkerMinor = [DZMSMinCoords, DZMSMinName];
PlayerMissionMarkerMinorClear = [];

while {DZMSMinRun} do {

    // Check radio on all units
    _units = [];
    {
        if ((side _x) == West) then {
            if (!(_x in _notified_units)) then {
                if("ItemRadio" in weapons _x) then {
                    _units set [count _units, _x];
                    _notified_units set [count _notified_units, _x];
                };
            };
        };
    } forEach allUnits;

    // Notify any units that have not already been notified
    _units = _units - _notified_units;

    // Send the markers to the players
    {
        (owner _x) publicVariableClient "PlayerMissionMarkerMinor";
    } foreach _units;

    uiSleep 10;
};

// Do a final clear of all the mission markers
{
    (owner _x) publicVariableClient "PlayerMissionMarkerMinorClear";
} forEach allUnits;