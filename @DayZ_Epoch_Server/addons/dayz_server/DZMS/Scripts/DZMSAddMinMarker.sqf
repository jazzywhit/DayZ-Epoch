DZMSMinCoords = _this select 0;
DZMSMinName = _this select 1;

if(!isServer) exitWith {};

PlayerMissionMarkerMinor = [DZMSMinCoords, DZMSMinName];
PlayerMissionMarkerMinorClear = [];

while {DZMSMinRun} do {

    // Check radio on all units
    {
       if ((side _x) == West) then {
            if("ItemRadio" in weapons _x) then {
                (owner _x) publicVariableClient "PlayerMissionMarkerMinor"
            };
       };
    } forEach allUnits;
    uiSleep 30;

    // Clear the markers
    {
        (owner _x) publicVariableClient "PlayerMissionMarkerMinorClear"
    } forEach allUnits;
};
