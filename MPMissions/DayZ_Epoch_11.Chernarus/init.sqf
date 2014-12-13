/*	
	For DayZ Epoch
	Addons Credits: Jetski Yanahui by Kol9yN, Zakat, Gerasimow9, YuraPetrov, zGuba, A.Karagod, IceBreakr, Sahbazz
*/
startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

//REALLY IMPORTANT VALUES
dayZ_instance =	11;					//The instance
dayzHiveRequest = [];
initialized = false;
dayz_previousID = 0;

//disable greeting menu 
player setVariable ["BIS_noCoreConversations", true];
//disable radio messages to be heard and shown in the left lower corner of the screen
enableRadio false;
// May prevent "how are you civillian?" messages from NPC
enableSentences false;

// Set loot tables to be loaded from mission file
DZE_MissionLootTable = true;

// DayZ Epoch config
spawnShoremode = 1; // Default = 1 (on shore)
spawnArea= 1500; // Default = 1500
MaxVehicleLimit = 150; // Default = 50
MaxDynamicDebris = 20; // Default = 100
dayz_MapArea = 14000; // Default = 10000
dayz_maxLocalZombies = 30; // Default = 30 
dayz_paraSpawn = false;
dayz_minpos = -1;
dayz_maxpos = 16000;
dayz_sellDistance_vehicle = 30;
dayz_sellDistance_boat = 30;
dayz_sellDistance_air = 50;
dayz_maxAnimals = 6; // Default: 8
dayz_tameDogs = true;
DZE_BuildingLimit = 500;
DZE_BuildOnRoads = false; // Default: False
dayz_fullMoonNights = true;

//self bloodbag
DZE_SelfTransfuse = true;

// Set up when crash events happen
EpochEvents = [
    ["any","any","any","any",15,"crash_spawner"],
    ["any","any","any","any",30,"crash_spawner"],
    ["any","any","any","any",45,"crash_spawner"],
    ["any","any","any","any",0,"crash_spawner"]
    ];

// - Variables
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";				//Initialize the Variables (IMPORTANT: Must happen very early)
call compile preprocessFileLineNumbers "custom\code\variables.sqf";				//Initialize the Variables (IMPORTANT: Must happen very early)
progressLoadingScreen 0.1;

// - Event Handler
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";				//Initialize the publicVariable event handlers
progressLoadingScreen 0.2;

// - Medical Client
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;

// - Compiles
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";			//Compile regular functions
progressLoadingScreen 0.5;
call compile preprocessFileLineNumbers "custom\code\compiles.sqf"; 								//custom compiles for our own scripts
progressLoadingScreen 0.7;

// - Traders
call compile preprocessFileLineNumbers "server_traders.sqf";				//Compile trader configs
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

if (isServer) then {
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_11.Chernarus\dynamic_vehicle.sqf";
	//Compile vehicle configs
	
	// Add trader citys
	_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_11.Chernarus\mission.sqf";
	_serverMonitor = 	[] execVM "\z\addons\dayz_code\system\server_monitor.sqf";
};

if (!isDedicated) then {

	//server credits
    [] execVM "custom\server_credits\Server_WelcomeCredits.sqf";
	
    //fixed point mining
	[] execVM "custom\mining\init.sqf";

	// Mission Markers
	"PlayerMissionMarkerMajor" addPublicVariableEventHandler { PlayerMissionMarkerMajor execVM 'custom\player_messaging\player_missionmarkers_maj.sqf'; };
	"PlayerMissionMarkerMinor" addPublicVariableEventHandler { PlayerMissionMarkerMinor execVM 'custom\player_messaging\player_missionmarkers_min.sqf'; };
	"PlayerMissionMarkerMajorClear" addPublicVariableEventHandler { PlayerMissionMarkerMajorClear execVM 'custom\player_messaging\player_missionmarkers_maj_clear.sqf'; };
	"PlayerMissionMarkerMinorClear" addPublicVariableEventHandler { PlayerMissionMarkerMinorClear execVM 'custom\player_messaging\player_missionmarkers_min_clear.sqf'; };

	//Conduct map operations
	0 fadeSound 0;
	waitUntil {!isNil "dayz_loadScreenMsg"};
	dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
	
	//Run the player monitor
	_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
	_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";
	
};

//Start Dynamic Weather
execVM "\z\addons\dayz_code\external\DynamicWeatherEffects.sqf";

//BIS Effects init
#include "\z\addons\dayz_code\system\BIS_Effects\init.sqf"

//Watermark
[] spawn {
    waitUntil {(!isNull Player) and (alive Player) and (player == player)};
    waituntil {!(isNull (findDisplay 46))};
    5 cutRsc ["wm_disp","PLAIN"];
    ((uiNamespace getVariable "wm_disp") displayCtrl 1) ctrlSetText "NMG";
};
