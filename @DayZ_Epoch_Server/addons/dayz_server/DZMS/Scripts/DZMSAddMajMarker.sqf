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
    } forEach allUnits;

    // Send the markers to the players
    {
        (owner _x) publicVariableClient "PlayerMissionMarkerMajor";
        sleep 1;
    } foreach _units;
    uiSleep 30;
    {
        (owner _x) publicVariableClient "PlayerMissionMarkerMajorClear";
    } foreach _units;
};

// Do a final clear of all the mission markers
{
    (owner _x) publicVariableClient "PlayerMissionMarkerMajorClear";
} forEach allUnits;