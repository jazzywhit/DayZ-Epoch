DZMSMajCoords = _this select 0;
DZMSMajName = _this select 1;

if(!isServer) exitWith {};

private ["_players","_players_ok","_notified_units"];
_players = [];
_players_ok = [];
_notified_units = [];
PlayerMissionMarkerMajor = [DZMSMajCoords, DZMSMajName];
PlayerMissionMarkerMajorClear = [];

while {DZMSMajRun} do {
    // Find all players
    {
        if ((side _x) == West) then {
            _players set [count _players, _x];
        };
    } forEach allUnits;

    // Check to make sure a player will get the message if they logoff and then back on
    //{
    //    if (!(_x in _players) then {
    //        _notified_units = _notified_units - [_x];
    //    };
    //} forEach _notified_units;

    // Check radio on all units
    _players_ok = [];
    {
        if (!(_x in _notified_units)) then {
            if("ItemRadio" in weapons _x) then {
                _players_ok set [count _players_ok, _x];
                _notified_units set [count _notified_units, _x];
            };
        };
    } forEach _players;

    // Send the markers to the players
    {
        (owner _x) publicVariableClient "PlayerMissionMarkerMajor";
    } foreach _players_ok;

    uiSleep 30;
};

// Do a final clear of all the mission markers
{
    (owner _x) publicVariableClient "PlayerMissionMarkerMajorClear";
} forEach _notified_units;