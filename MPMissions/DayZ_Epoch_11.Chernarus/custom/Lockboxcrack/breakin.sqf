// Break In Script by Mist and jesquik
// Allow users to break into  
private ["_obj","_rand","_object","_hasToolbox","_hasCrowbar","_tool_cost"];
_object = _this select 3;
dayz_combination = "";

if(DZE_ActionInProgress) exitWith { cutText ["You can't break into this right now", "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

_hasToolbox = 	"ItemToolbox" in _itemsPlayer;
_hasCrowbar =	"ItemCrowbar" in _itemsPlayer;

_rand = random 1;
If (_hasToolbox && _hasCrowbar) then {
	if (_rand > 0.6) then {
		player removeWeapon "ItemCrowbar";
		player removeWeapon "ItemToolbox";
		dayz_selectedVault = _this select 3;
		dayz_combination = _object getVariable ["CharacterID", "0"];
		dayz_selectedVault spawn player_unlockVault;
	};
	if (_rand <= 0.6) then {
		player playActionNow "Medic";
		[player,"repair",0,false] call dayz_zombieSpeak;
		sleep 9;
		_tool_cost = ["ItemCrowbar", "itemToolbox"] call BIS_fnc_selectRandom;
		player removeWeapon _tool_cost;
		cutText ['You were unable to break into the locked box and you broke a tool!', 'PLAIN'];
	};
} else {
cutText ['You need a Toolbox and Crowbar to break in', 'PLAIN'];
};

s_player_igniteVehicle = -1;
DZE_ActionInProgress = false;
