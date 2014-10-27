/*
	Medical Outpost by lazyink (Full credit for code to TheSzerdi & TAW_Tonic)
	Updated to new format by Vampire
	Updated for Black Market Trader by jesquik
*/
private ["_missName","_coords","_base","_base1","_base2","_base3","_veh1","_veh2","_vehicle","_vehicle1","_crate","_crate2", "_orig_coords"];

//Name of the Mission
_missName = "Black Market";

//DZMSFindPos loops BIS_fnc_findSafePos until it gets a valid result
_coords = call DZMSFindPos;

[nil,nil,rTitleText,"The Black Market Trader has set up shop!\nBring your illicit goods!", "PLAIN",10] call RE;

//DZMSAddMinMarker is a simple script that adds a marker to the location
[_coords,_missName] ExecVM DZMSAddMinMarker;

//We create the scenery
_base = createVehicle ["US_WarfareBFieldhHospital_Base_EP1",[(_coords select 0) +2, (_coords select 1)+5,-0.3],[], 0, "CAN_COLLIDE"];
_base1 = createVehicle ["MASH_EP1",[(_coords select 0) - 24, (_coords select 1) - 5,0],[], 0, "CAN_COLLIDE"];
_base2 = createVehicle ["MASH_EP1",[(_coords select 0) - 17, (_coords select 1) - 5,0],[], 0, "CAN_COLLIDE"];
_base3 = createVehicle ["MASH_EP1",[(_coords select 0) - 10, (_coords select 1) - 5,0],[], 0, "CAN_COLLIDE"];

//DZMSProtectObj prevents it from disappearing
[_base] call DZMSProtectObj;
[_base1] call DZMSProtectObj;
[_base2] call DZMSProtectObj;
[_base3] call DZMSProtectObj;

//We create the vehicles
_veh1 = ["small"] call DZMSGetVeh;
_veh2 = ["small"] call DZMSGetVeh;
_vehicle = createVehicle [_veh1,[(_coords select 0) + 10, (_coords select 1) - 5,0],[], 0, "CAN_COLLIDE"];
_vehicle1 = createVehicle [_veh2,[(_coords select 0) + 15, (_coords select 1) - 5,0],[], 0, "CAN_COLLIDE"];

//DZMSSetupVehicle prevents the vehicle from disappearing and sets fuel and such
[_vehicle] call DZMSSetupVehicle;
[_vehicle1] call DZMSSetupVehicle;

//We create and fill the crates
_crate = createVehicle ["USVehicleBox",[(_coords select 0) - 3, _coords select 1,0],[], 0, "CAN_COLLIDE"];

//DZMSBoxFill fills the box, DZMSProtectObj prevents it from disappearing
[_crate,"medical"] ExecVM DZMSBoxSetup;
[_crate] call DZMSProtectObj;

_crate2 = createVehicle ["USLaunchersBox",[(_coords select 0) - 8, _coords select 1,0],[], 0, "CAN_COLLIDE"];
[_crate2,"weapons"] ExecVM DZMSBoxSetup;
[_crate2] call DZMSProtectObj;

// Move the black market trader to the mission zone
_trader = createAgent [(_coords select 0), (_coords select 1), [], 0, "CAN_COLLIDE"];
_trader setVehicleInit "this allowDammage false; this disableAI 'FSM'; this disableAI 'MOVE'; this disableAI 'AUTOTARGET'; this disableAI 'TARGET'; this setBehaviour 'CARELESS'; this forceSpeed 0;";
_trader setUnitAbility 0.60000002;
_trader allowDammage false;
_trader disableAI 'FSM';
_trader disableAI 'MOVE';
_trader disableAI 'AUTOTARGET';
_trader disableAI 'TARGET';
_trader setBehaviour 'CARELESS';
_trader forceSpeed 0;
_trader enableSimulation false;
//_trader setDir (_this select 2);

if (!isNil "_unit_108") then {
    _orig_coords = getPos _unit_108;
    _unit_108 setPos [(_coords select 0), (_coords select 1),0];
} else {
    [nil,nil,rTitleText,"Couldn't Find him...", "PLAIN",6] call RE;
};

// Add a couple of AI and add them to West
[[(_coords select 0) + 20, (_coords select 1) + 15,0],2,2,"DZMSUnitsMinor", true] call DZMSAISpawn;
sleep 3;

// Wait 10 minutes and then take the mission away
[600,5] call DZMSSleep; // sleep 10 minutes

// Wait 10 minutes and then take the mission away
[nil,nil,rTitleText,"The Black Market Trader is Packing Up Shop", "PLAIN",6] call RE;
[300,5] call DZMSSleep; // sleep 5 minutes

//Call DZMSSaveVeh to attempt to save the vehicles to the database
//If saving is off, the script will exit.
[_vehicle] ExecVM DZMSSaveVeh;
[_vehicle1] ExecVM DZMSSaveVeh;

deleteVehicle _trader;

//Let everyone know the mission is over
[nil,nil,rTitleText,"The Black Market Trader is Gone", "PLAIN",6] call RE;
diag_log text format["[DZMS]: Minor SM2 Medical Outpost Mission has Ended."];
deleteMarker "DZMSMinMarker";
deleteMarker "DZMSMinDot";

//Let the timer know the mission is over
DZMSMinDone = true;