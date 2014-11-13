/*
Epoch Dynamic Traders my maca134
http://www.epochservers.com

You will need to go into each file in the traders file and change the model/skin to the relevent trader for the map you are using. 
Look in server_traders.sqf in the mission pbo for more information.

*/
private ["_trader_base_config", "_static_trader_base_config", "_markers", "_hide_markers"];

DT_fnc_ObjectsMapper = compile preprocessFileLineNumbers "\z\addons\dayz_server\DynamicTraders\objectMapper.sqf";
DT_fnc_CreateTrader = compile preprocessFileLineNumbers "\z\addons\dayz_server\DynamicTraders\createTrader.sqf";

_trader_base_config = [
	[3, "general.sqf", 		"General/Building Traders", 	"ColorBlack"],
	[1, "medical.sqf", 		"Medical Trader", 				"ColorBlack"],
	[2, "weapons.sqf", 		"Weapons Trader", 				"ColorBlack"],
	[2, "wholesaler.sqf", 	"Wholesaler", 					"ColorBlack"],
	[3, "boat.sqf", 		"Boat", 						"ColorBlack"]
];

_static_trader_base_config = [
	[[5134.57, 2344.57, 0.0016], "static_aircraft.sqf", 		"Balota Aircraft Trader", 			"ColorBlack"],
	[[4138.92, 10728.7, 0.0016], "static_aircraft.sqf", 		"NW Aircraft Trader", 				"ColorBlack"]
];

_hide_markers = true;
_markers = [];
waitUntil { sleep 1; !isNil "sm_done" };

//Spawn the Black Market trader to be used for missions and make it available globally
BlackMarketTrader = ["GUE_Woodlander2", [0,0], (135.159-180)] call DT_fnc_CreateTrader;

//////////////////////////////////////////////
//Loop through all of the Dynamic traders
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

			// Check current markers to see if there is another trader within 5km
			{
				if (((_x select 0) distance _position) < 3000) exitWith {
					_position = [];
				};
				true
			} count _markers;

			// Ensure that the dynamic traders are within 750 meters of a city for non boat traders
			if ((count _position) == 2 and (_x select 1) != "boat.sqf") then {
				_nearestCities = nearestLocations [_position, ["NameCityCapital","NameCity","NameVillage"],750];
				if (count _nearestCities == 0) then {
					diag_log format["DynTrader: %1 was not a valid location for %2", _position, _x select 1];
					_nearestCities = nearestLocations [_position, ["NameCityCapital","NameCity","NameVillage"],5000];
					_nearestCity = _nearestCities select 0;
					_cityPos = position _nearestCity;
					diag_log format["DynTrader: Looking near %1 for a valid location for %2", _cityPos, _x select 1];
					_position = [[_cityPos select 0, _cityPos select 1, 0],0,750,20,0,2000,0] call BIS_fnc_findSafePos;
					diag_log format["DynTrader: %1 was used instead for %2", _position, _x select 1];
				};
			};

            // Exit if there are more than 20 unsuccessful loops or position is found
			if ((count _position) == 2 or _j > 20) then {
				_found_position = true;
				if (_j > 20) then {
					diag_log format["DynTrader: Bailed after %1 tries", _j];
				}
			};
		};

		if ((count _position) == 2) then { 
			diag_log format["Trader Caravans: Spawning %1 at %2 (%3)", _x select 1, _position, mapGridPosition _position];
			_position execVM format["\z\addons\dayz_server\DynamicTraders\traders\%1", _x select 1];
			_markers set [count _markers, [_position, _x select 2, _x select 3]];
		};
	};
	true
} count _trader_base_config;

// Reset all of the current markers for the dynamic traders if _hide_markers
if (_hide_markers) then {
    _markers = [];
};

//////////////////////////////////////////////
//Loop through all of the Static Traders w/mission files
{
	_position = _x select 0;
	diag_log format["Trader Caravans: Spawning %1 at %2 (%3)", _x select 1, _position, mapGridPosition _position];
	_position execVM format["\z\addons\dayz_server\DynamicTraders\traders\%1", _x select 1];
	_markers set [count _markers, [_position, _x select 2, _x select 3]];
	true
} count _static_trader_base_config;

PV_TraderMarkers = _markers;
publicVariable "PV_TraderMarkers";