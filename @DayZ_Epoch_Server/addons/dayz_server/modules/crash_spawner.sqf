/*
Script Name: crash_spawner.sqf
Original Author: Grafzahl / Finest
Modified by BushWookie for Epoch
Script Version: 1.1a
Modified for custom functionality by jesquik
*/
 
private["_index1","_index2","_itemTypes","_timeAdjust","_timeToSpawn","_spawnRoll","_crash","_hasAdjustment","_newHeight","_adjustedPos","_useStatic","_crashDamage","_lootRadius","_preWaypoints","_preWaypointPos","_endTime","_startTime","_safetyPoint","_heliStart","_deadBody","_exploRange","_heliModel","_lootPos","_list","_craters","_dummy","_wp2","_wp3","_landingzone","_aigroup","_wp","_helipilot","_crash","_crashwreck","_smokerand","_staticcoords","_pos","_dir","_position","_num","_config","_itemType","_itemChance","_weights","_index","_iArray","_crashModel","_lootTable","_guaranteedLoot","_randomizedLoot","_frequency","_variance","_spawnChance","_spawnMarker","_spawnRadius","_spawnFire","_permanentFire","_crashName"];
//############### //Config Start\\ ###############\\
_SpawnMax        = 15;                //Maximum percent chance of spawning a crash number between 0 - 100
_SpawnMin        = 15;                //Minimum percent chance of spawning a crash number between 0 - 100
_guaranteedLoot = 6;                //Guaranteed Loot Spawns
_randomizedLoot = 6;                //Random number of loot piles aswell as the guaranteed ones
_spawnFire      = true;                //Spawn Smoke/Fire at the helicrash
_fadeFire      = false;            //Fade the Smoke/Fire overtime
_preWaypoints    = 3;                //Amount of waypoints the heli flys to before crashing
_crashDamage    = 0.05;                //Amount of damage the heli can take before crashing (between 0.1 and 1) Lower the number and the heli can take less damage before crashing 1 damage is fully destroyed and 0.1 something like a DMR could one shot the heli
_exploRange    = 250;                //How far away from the predefined crash point should the heli start crashing
_minLootRadius    = 5;                //Minimum distance for loot to spawn from the crash site in meters
_maxLootRadius    = 10;                //Maximum distance for loot to spawn from the crash site in meters
_lootTable        = "HeliCrash_BRIC";        //Name of the loot table the heli gets loot from (DO NOT edit unless you know what your doing)
_lootMultiplier = 1;

//############### \\Config End// ###############\\
//DO NOT edit below this unless you know what your doing
 
// _heliModel        = ["UH1Y_DZE","UH1H_DZE","MV22","A10","Mi17_DZ"] call BIS_fnc_selectRandom;        //The type of heli used
_heliModel = [
			"UH1H_DZE",
			"MV22",
			"Mi17_DZE",
			"UH60M_EP1",
			"UH1H_TK_EP1",
			"UH60M_MEV_EP1",
			"A10",
			"GNT_C185",
			"GNT_C185U",
			"GNT_C185R",
			"GNT_C185C",
			"Ka52Black",
			"Mi24_D",
			"AH1Z",
			"AV8B",
			"Su25_TK_EP1",
			"Su34"
			] call BIS_fnc_selectRandom;
_crashModel    		= "UH1Wreck_DZ";    //The type of Crash model used after the heli crashes
_plane            	= false;
_massGraveSite     = false;
_patrolCrash		= false;

if(_heliModel == "Su25_TK_EP1") then {
    _crashModel    = "SU25Wreck";
	_lootTable        = "PlaneCrash_BRIC";
    _plane         = true;
};

if(_heliModel == "Su34") then {
    _crashModel    = "SU25Wreck";
	_lootTable        = "PlaneCrash_BRIC";
    _plane         = true;
};

if(_heliModel == "AV8B") then {
    _lootTable    = "PlaneCrash";
    _crashModel    = "AV8BWreck";
    _plane         = true;
};

if(_heliModel == "UH1H_TK_EP1") then {
	_lootTable    = "HeliCrash";
    _crashModel     = "UH1Wreck_DZ";
};

if(_heliModel == "UH1H_DZE") then {
	_lootTable    = "HeliCrash";
    _crashModel     = "UH1Wreck_DZ";
};

if(_heliModel == "AH1Z") then {
	_lootTable    = "HeliCrash";
    _crashModel     = "AH1ZWreck";
};

if(_heliModel == "Mi24_D") then {
    _crashModel     = "Mi24Wreck";
	_lootTable        = "HeliCrash_BRIC";
};

if(_heliModel == "Ka52Black") then {
    _crashModel     = "Ka52Wreck";
	_lootTable        = "HeliCrash_BRIC";
};

if(_heliModel == "Mi17_DZE") then {
	_lootTable    = "MilitarySpecial";
	_lootMultiplier = 2;
    _crashModel     = "Mi8Wreck";
};

if(_heliModel == "UH60M_EP1") then {
	_lootTable    = "HeliCrash";
    _crashModel     = "UH60Wreck_DZ";
};

if(_heliModel == "A10") then {
    _lootTable    = "PlaneCrash";
    _crashModel    = "A10Wreck";
    _plane         = true;
};

if(_heliModel == "GNT_C185") then {
    _lootTable    = "PlaneCrash_BRIC";
    _crashModel    = "A10Wreck";
    _plane         = true;
};

if(_heliModel == "GNT_C185U") then {
    _lootTable    = "PlaneCrash_BRIC";
    _crashModel    = "A10Wreck";
    _plane         = true;
};

if(_heliModel == "GNT_C185R") then {
    _lootTable    = "PlaneCrash_BRIC";
    _crashModel    = "A10Wreck";
    _plane         = true;
};

if(_heliModel == "GNT_C185C") then {
    _lootTable    = "PlaneCrash_BRIC";
    _crashModel    = "A10Wreck";
    _plane         = true;
};

if(_heliModel == "MV22") then {
    _lootTable    = "PlaneCrash";
    _lootMultiplier = 2;
    _crashModel     = "MV22Wreck";
    _plane         = true;
};

if(_heliModel == "C130J") then {
    _lootTable    = "C130JCrash";
	_lootMultiplier = 5;
    _crashModel     = "C130JWreck";
    _plane         = true;
	_patrolCrash   = true;
};

if(_heliModel == "UH60M_MEV_EP1") then {
    _lootTable    = "PlaneCrash";
    _crashModel     = "UH60Wreck_DZ";
};

 // Loot Radius
_maxLootRadius = _maxLootRadius - _minLootRadius;
_spawnRadius = HeliCrashArea;

//Cherno
_heliStart = [[6986,-630,1000],[10450,-630,1000],[6993.7007,173.05298,300],[1623.715,218.18848,300],[15098,8144,300],[15186,11857,300]] call BIS_fnc_selectRandom;
_safetyPoint = [8450.08,20240,0];

// Crash specifics
_crashName= getText (configFile >> "CfgVehicles" >> _heliModel >> "displayName");
_spawnMarker    = 'center';
_spawnChance = _SpawnMax - _SpawnMin;
_spawnChance = (random _spawnChance) + _SpawnMin;

// Roll and spawn Event
_spawnRoll = floor(random(100)+1);
diag_log(format["CRASHSPAWNER: %1%2 chance to start a crashing %3 with loot table '%4'", _spawnChance, '%', _crashName, _lootTable]);
if (_spawnRoll <= _spawnChance) then
{
	if (!_massGraveSite) then {
		_position = [getMarkerPos _spawnMarker,0,_spawnRadius,10,0,2000,0] call BIS_fnc_findSafePos;
		diag_log(format["CRASHSPAWNER: %1 started flying from %2 to %3 NOW!(TIME:%4||LT:%5)", _crashName,  str(_heliStart), str(_position), round(time), _lootTable]);
		_startTime = time;
		_crashwreck = createVehicle [_heliModel,_heliStart, [], 0, "FLY"];
		_crashwreck setCombatMode "BLUE";
		_crashwreck engineOn true;
		
		if (_plane) then
		{
			_crashwreck flyInHeight 250;
			_crashwreck forceSpeed 150;
			_crashwreck setspeedmode "NORMAL";
			_exploRange = 360;
		}
		else
		{
			_crashwreck flyInHeight 150;
			_crashwreck forceSpeed 100;
			_crashwreck setspeedmode "NORMAL";
		};
		
		_crashwreck setspeedmode "NORMAL";
		_landingzone = createVehicle ["HeliHEmpty", [_position select 0, _position select 1,0], [], 0, "CAN_COLLIDE"];
		_aigroup = creategroup civilian;
		_helipilot = _aigroup createUnit ["SurvivorW2_DZ",getPos _crashwreck,[],0,"FORM"];
		_helipilot setCombatMode "BLUE";
		_helipilot moveindriver _crashwreck;
		_helipilot assignAsDriver _crashwreck;
		
		// Test out adding Basic Items to heli crash pilots
		_helipilot addWeapon "NVGoggles";
		_helipilot addWeapon 'ItemCompass';
		_helipilot addWeapon 'ItemRadio';
		_helipilot addWeapon 'ItemMap';
		_helipilot addWeapon 'ItemGPS';
		
		sleep 0.5;
		if(_patrolCrash) then {
			if(_preWaypoints > 0) then
			{
				_waypoint_multiplier = 2;
				_total_waypoints = _preWaypoints * _waypoint_multiplier;
				for "_x" from 1 to _total_waypoints do
				{
					_preWaypointPos = [getMarkerPos _spawnMarker,0,_spawnRadius,10,0,2000,0] call BIS_fnc_findSafePos;
					_wp = _aigroup addWaypoint [_preWaypointPos, 0];
					_wp setWaypointType "MOVE";
					_wp setWaypointBehaviour "CARELESS";
				};
				
				_wp = _aigroup addWaypoint [_heliStart, 0];
				_wp setWaypointType "MOVE";
				_wp setWaypointBehaviour "CARELESS";
				
				if (_plane) then
				{
					_crashwreck flyInHeight 300;
					_crashwreck forceSpeed 150;
					_crashwreck setspeedmode "NORMAL";
					_exploRange = 360;
				}
				else
				{
					_crashwreck flyInHeight 200;
					_crashwreck forceSpeed 100;
					_crashwreck setspeedmode "NORMAL";
				};
				
				sleep 60;
				waituntil {(_crashwreck distance _heliStart) <= 1000 || not alive _crashwreck || (getPosATL _crashwreck select 2) < 15 || (damage _crashwreck) >= _crashDamage};

				if(!alive _crashwreck || (damage _crashwreck) >= _crashDamage) then{
					if (_plane) then
					{
						_crashwreck setdamage 1;
						_vel = velocity _crashwreck;
						_dir = direction _crashwreck;
						_speed = 100;
						_crashwreck setVelocity [(_vel select 0)-(sin _dir*_speed),(_vel select 1)-(cos _dir*_speed),(_vel select 2) - 30];
					}
					else
					{
						_crashwreck setHit ["mala vrtule", 1];
						_ran15 = random 15;
						_crashwreck setVelocity [_ran15,_ran15,-25];
						_crashwreck setdamage .9;
						waitUntil{sleep 1; getpos _crashwreck select 2 <= 30};
						_crashwreck setVelocity [_ran15,_ran15,-20];
						waitUntil{sleep 1; getpos _crashwreck select 2 <= 10};
						_crashwreck setdamage 1;
					};

					waitUntil{sleep 1; getpos _crashwreck select 2 <= 15};

					diag_log(format["CRASHSPAWNER: %1 just exploded at %2!, ", _crashName, str(getPosATL _crashwreck)]);
					_pos = [getpos _crashwreck select 0, getpos _crashwreck select 1,0];
				};
				deletevehicle _crashwreck;
				deletevehicle _helipilot;
				deletevehicle _landingzone;
			};
		} else {
			if(_preWaypoints > 0) then
			{
				for "_x" from 1 to _preWaypoints do
				{
					_preWaypointPos = [getMarkerPos _spawnMarker,0,_spawnRadius,10,0,2000,0] call BIS_fnc_findSafePos;
					_wp = _aigroup addWaypoint [_preWaypointPos, 0];
					_wp setWaypointType "MOVE";
					_wp setWaypointBehaviour "CARELESS";
				};
			};
		 
			_wp2 = _aigroup addWaypoint [position _landingzone, 0];
			_wp2 setWaypointType "MOVE";
			_wp2 setWaypointBehaviour "CARELESS";
			_wp2 setWaypointStatements ["true", "_crashwreck setdamage 1;"];
			_wp3 = _aigroup addWaypoint [_safetyPoint, 0];
			_wp3 setWaypointType "CYCLE";
			_wp3 setWaypointBehaviour "CARELESS";
			
			waituntil {(_crashwreck distance _position) <= 1000 || not alive _crashwreck || (getPosATL _crashwreck select 2) < 5 || (damage _crashwreck) >= _crashDamage};

			if (_plane) then
			{
				_crashwreck flyInHeight 100;
				_crashwreck forceSpeed 150;
				_crashwreck setspeedmode "NORMAL";
				_exploRange = 360;
			}
			else
			{
				_crashwreck flyInHeight 100;
				_crashwreck forceSpeed 100;
				_crashwreck setspeedmode "NORMAL";
			};
			
			waituntil {(_crashwreck distance _position) <= _exploRange || not alive _crashwreck || (getPosATL _crashwreck select 2) < 5 || (damage _crashwreck) >= _crashDamage};
			
			if (_plane) then
			{
				_crashwreck setdamage 1;
				_vel = velocity _crashwreck;
				_dir = direction _crashwreck;
				_speed = 100;
				_crashwreck setVelocity [(_vel select 0)-(sin _dir*_speed),(_vel select 1)-(cos _dir*_speed),(_vel select 2) - 30];
			}
			else
			{
				_crashwreck setHit ["mala vrtule", 1];
				_ran15 = random 15;
				_crashwreck setVelocity [_ran15,_ran15,-25];
				_crashwreck setdamage .9;
				waitUntil{sleep 1; getpos _crashwreck select 2 <= 30};
				_crashwreck setVelocity [_ran15,_ran15,-20];
				waitUntil{sleep 1; getpos _crashwreck select 2 <= 10};
				_crashwreck setdamage 1;
			};

			waitUntil{sleep 1; getpos _crashwreck select 2 <= 5};

			diag_log(format["CRASHSPAWNER: %1 just exploded at %2!, ", _crashName, str(getPosATL _crashwreck)]);
			_pos = [getpos _crashwreck select 0, getpos _crashwreck select 1,0];
			deletevehicle _crashwreck;
			// deletevehicle _helipilot;
			_helipilot setdamage 1;
			deletevehicle _landingzone;
		};
		
		_crash = createVehicle [_crashModel, _pos, [], 0, "CAN_COLLIDE"];
		PVDZE_serverObjectMonitor set [count PVDZE_serverObjectMonitor,_crash];
		if (_spawnFire) then
		{
			PVDZE_obj_Fire = [_crash,2,time,false,_fadeFire];
			publicVariable "PVDZE_obj_Fire";
			_crash setVariable ["fadeFire",_fadeFire,true];
		};
		
		_num = (round(random _randomizedLoot) + _guaranteedLoot) * _lootMultiplier;
		if (DZE_MissionLootTable) then {
			_itemTypes = [] + getArray (missionConfigFile >> "CfgBuildingLoot" >> _lootTable >> "lootType");
		} else {
			_itemTypes = [] + getArray (configFile >> "CfgBuildingLoot" >> _lootTable >> "lootType");
		};
		_CBLBase = dayz_CBLBase find (toLower(_lootTable));
		_weights = dayz_CBLChances select _CBLBase;
		_cntWeights = count _weights;
		
		for "_x" from 1 to _num do
		{
			_maxLootRadius = (random _maxLootRadius) + _minLootRadius;
			_lootPos = [_pos, _maxLootRadius, random 360] call BIS_fnc_relPos;
			
			//create loot
			_index1 = floor(random _cntWeights);
			_index2 = _weights select _index1;
			_itemType = _itemTypes select _index2;
			[_itemType select 0, _itemType select 1, _lootPos, 5] call spawn_loot;
			diag_log(format["CRASHSPAWNER: Loot spawn at '%1' with loot table '%2'", _pos, _lootTable]);
			_nearby = _pos nearObjects ["ReammoBox", sizeOf(_crashModel)];
			{
				_x setVariable ["permaLoot",true];
			} forEach _nearBy;
		};
	};
	
    _endTime = time - _startTime;
    diag_log(format["CRASHSPAWNER: Crash completed! Wreck at: %2 - Runtime: %1 Seconds || Distance from calculated POC: %3 meters", round(_endTime), str(getPos _crash), round(_position distance _crash)]);
};