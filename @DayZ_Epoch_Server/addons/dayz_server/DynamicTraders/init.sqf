/*
Epoch Dynamic Traders my maca134
http://www.epochservers.com

You will need to go into each file in the traders file and change the model/skin to the relevent trader for the map you are using. 
Look in server_traders.sqf in the mission pbo for more information.

*/
private ["_trader_config", "_markers"];

DT_fnc_ObjectsMapper = compile preprocessFileLineNumbers "\z\addons\dayz_server\DynamicTraders\objectMapper.sqf";
DT_fnc_CreateTrader = compile preprocessFileLineNumbers "\z\addons\dayz_server\DynamicTraders\createTrader.sqf";

_trader_config = [
	[1, "general.sqf", 		"General/Building Traders", 	"ColorGreen"],
	[1, "medical.sqf", 		"Medical Trader", 				"ColorGreen"],
	[1, "weapons.sqf", 		"Weapons Trader", 				"ColorYellow"],
	[1, "wholesaler.sqf", 	"Wholesaler", 					"ColorBlack"],
	[2, "boat.sqf", 		"Boat", 						"ColorBlack"]
];

_markers = [];
waitUntil { sleep 1; !isNil "sm_done" };

//Spawn the static traders
BlackMarketTrader = ["GUE_Woodlander2", [0,0], (135.159-180)] call DT_fnc_CreateTrader;

//Spawn the hemp trader
HempTrader = ["TK_GUE_Soldier_Sniper_EP1", [8989.61,7769.91, 1.81754], (194.28-180)] call DT_fnc_CreateTrader;
_markers set [count _markers, [[8989.61,7769.91], "Hemp Trader", "ColorGreen"]];

//Loop through all other traders
{
	for [{_i=0}, {_i<(_x select 0)}, {_i=_i+1}] do {
		private ["_position", "_found_position", "_j", "_near_trader"];
		waitUntil { !isNil "BIS_fnc_findSafePos" };
		_found_position = false;
		_j = 0;
		while {!_found_position} do {
			_j = _j + 1;
			if ((_x select 1) == "boat.sqf") then {
				_position = [getMarkerPos 'center',0,DynamicVehicleArea,20,0,2000,1] call BIS_fnc_findSafePos;
			} else {
				if (!isNil "RoadList" and {(random 1) > 0.5}) then {
					waitUntil{!isNil "BIS_fnc_selectRandom"};
					_position = RoadList call BIS_fnc_selectRandom;
					_position = _position modelToWorld [0,0,0];
					waitUntil{!isNil "BIS_fnc_findSafePos"};
					_position = [_position,5,40,20,0,2000,0] call BIS_fnc_findSafePos;
				} else {
					waitUntil{!isNil "BIS_fnc_findSafePos"};
					_position = [getMarkerPos 'center',0,DynamicVehicleArea,20,0,2000,0] call BIS_fnc_findSafePos;
				};
			};
			
			{
				if (((_x select 0) distance _position) < 1000) exitWith {
					_position = [];
				};
				true
			} count _markers;
			if ((count _position) == 2 or _j > 10) then {
				_found_position = true;
			};
		};

		if ((count _position) == 2) then { 
			diag_log format["Trader Caravans: Spawning %1 at %2 (%3)", _x select 1, _position, mapGridPosition _position];
			_position execVM format["\z\addons\dayz_server\DynamicTraders\traders\%1", _x select 1];
			_markers set [count _markers, [_position, _x select 2, _x select 3]];
		};
	};
	true
} count _trader_config;

PV_TraderMarkers = _markers;
publicVariable "PV_TraderMarkers";