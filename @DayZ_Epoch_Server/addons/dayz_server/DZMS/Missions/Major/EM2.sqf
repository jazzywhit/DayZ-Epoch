/*
	Medical C-130 Landing by jesquik
*/

private ["_missName","_coords","_plane","_aiGrp","_wp_pos"];

//Name of the Mission
_missName = "C130 Landing";

//DZMSFindPos loops BIS_fnc_findSafePos until it gets a valid result
_coords = call DZMSFindPos;

[nil,nil,rTitleText,"C130 Mission Begin", "PLAIN",10] call RE;

//DZMSAddMajMarker is a simple script that adds a marker to the location
[_coords,_missname] ExecVM DZMSAddMajMarker;


//Lets get the AN2 Flying
_plane = createVehicle ["C130J", [0,0,500], [], 0, "FLY"];
[_plane] call DZMSProtectObj;
_plane engineOn true;
_plane flyInHeight 150;
_plane forceSpeed 175;

//Empty the plane
clearMagazineCargoGlobal _plane;
clearWeaponCargoGlobal _plane;

//Lets make AI for the plane and get them in it
_aiGrp = creategroup east;
_pilot = _aiGrp createUnit ["SurvivorW2_DZ",getPos _plane,[],0,"FORM"];
_pilot moveindriver _plane;
_pilot assignAsDriver _plane;
_pilot addWeapon 'NVGoggles';
_pilot addWeapon 'ItemCompass';
_pilot addWeapon 'ItemRadio';
_pilot addWeapon 'ItemMap';
_pilot addWeapon 'ItemGPS';

// Add a waypoint for travelling
_wp = _aiGrp addWaypoint [[(_coords select 0), (_coords select 1),150], 0];
_wp setWaypointType "MOVE";
_wp setWaypointBehaviour "CARELESS";
_wp_pos = waypointPosition [_aiGrp,1];

sleep 240;

// Begin Landing
deleteWaypoint [group _plane, 0]; // Delete waypoint to start a landing
[nil,nil,rTitleText,"A C130 is planning to land!\nThe UN will be there to refuel!", "PLAIN",10] call RE;

private ["_moveComplete", "_counter"];
_moveComplete = false;

if (isNull _plane) then
{
	[nil,nil,rTitleText,"There is no C130J!", "PLAIN",10] call RE;
}
else
{
    //chernarus:
    //0 = Airport NorthWest close to Grishno
    //1 = Airport NorthEast close to Kranostav
    //2 = Airport SouthWest close to Balota
    //3 = Nearest Airport
    //Planes approach all airports from South East
    _plane landAt floor(random 3); // Pick a random airport to land at

	//Add a LandedStopped Eventhandler to the plane to catch when the AI will stop their plane
	_plane addEventHandler ["LandedStopped", {_moveComplete = true;}];
};

_loop = true;
_counter = 0;
while {_loop && _counter < 24 && Alive _plane} do {
	if (_moveComplete) then {
	    [nil,nil,rTitleText,"I got the signal!", "PLAIN",6] call RE;
	    _loop = false;
    };
	sleep 10;
	_counter = _counter + 1;
};

if (Alive _plane) then {
    [nil,nil,rTitleText,"The C130 is going to take off!", "PLAIN",6] call RE;
    _wp = _aiGrp addWaypoint [[0,0,150], 0];
    _wp setWaypointType "MOVE";
    _wp setWaypointBehaviour "CARELESS";
    _wp_pos = waypointPosition [_aiGrp,1];

    sleep 240;
};

diag_log text format["[DZMS]: Major EM2 C130 J landing mission is over."];
deleteMarker "DZMSMajMarker";
deleteMarker "DZMSMajDot";

//Let the timer know the mission is over
DZMSMajDone = true;
