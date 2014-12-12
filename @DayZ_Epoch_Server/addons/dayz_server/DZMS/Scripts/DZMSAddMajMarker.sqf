DZMSMajCoords = _this select 0;
DZMSMajName = _this select 1;

if(!isServer) exitWith {};

PlayerMissionMarkerMajor = [DZMSMajCoords, DZMSMajName];
PlayerMissionMarkerMajorClear = [];

while {DZMSMajRun} do {

    // Check radio on all units
    {
       if ((side _x) == West) then {
            if("ItemRadio" in weapons _x) then {
                (owner _x) publicVariableClient "PlayerMissionMarkerMajor"
            };
       };
    } forEach allUnits;
    uiSleep 30;

    // Clear Markers
    {
        (owner _x) publicVariableClient "PlayerMissionMarkerMajorClear"
    } forEach allUnits;
};
