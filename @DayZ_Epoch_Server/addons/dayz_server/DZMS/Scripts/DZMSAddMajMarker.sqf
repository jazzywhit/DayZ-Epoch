/*
	Adds a marker for Major Missions. Only runs once.
	DZMSMarkerLoop.sqf keeps this marker updated.
	Usage: [coordinates,missionname]
*/
private["_nul","_nil"];
DZMSMajCoords = _this select 0;
DZMSMajName = _this select 1;

_nul = createMarker ["DZMSMajMarker", DZMSMajCoords];
"DZMSMajMarker" setMarkerColor "ColorRed";
"DZMSMajMarker" setMarkerShape "ELLIPSE";
"DZMSMajMarker" setMarkerBrush "Grid";
"DZMSMajMarker" setMarkerSize [175,175];
_nil = createMarker ["DZMSMajDot", DZMSMajCoords];
"DZMSMajDot" setMarkerColor "ColorBlack";
"DZMSMajDot" setMarkerType "Vehicle";
"DZMSMajDot" setMarkerText DZMSMajName;

if(!isServer) exitWith {};

private ["_units"];
_units = [];
PlayerMissionMarker = [DZMSMajCoords, DZMSMajName];
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

uiSleep 120; //Change time here (in seconds) but dont make it too big or the script wont check for new players with the Item in inventory