// Break In Script by Mist and jesquik
// Allow users to break into  
private ["_obj","_rand","_object","_itemsPlayer","_hasToolbox","_hasCrowbar","_tool_cost","_magazinesPlayer","_hasKnife","_hasRazor","_hasRuby","_hasPole","_magazine_cost","_cursortarget","_hasSledge","_hasEtool","_hasObsidian"];
dayz_combination = "";

if(DZE_ActionInProgress) exitWith { cutText ["You can't break into this right now", "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

_itemsPlayer = items player;
_magazinesPlayer = magazines player;
_cursorTarget = cursorTarget;
	_hasKnife = 	"ItemKnife" in _itemsPlayer;
	_hasRazor = 	"ItemTrashRazor" in _magazinesPlayer;
	_hasToolbox = 	"ItemToolbox" in _itemsPlayer;
	_hasRuby =	"ItemRuby" in _magazinesPlayer;
	_hasPole =	"ItemPole" in _magazinesPlayer;
	_hasCrowbar =	"ItemCrowbar" in _magazinesPlayer;
	_hasSledge = 	"ItemSledge" in _magazinesPlayer;
	_hasEtool = 	"ItemEtool" in _magazinesPlayer;
	_hasObsidian = 	"ItemObsidian" in _magazinesPlayer;
_tool_cost = -1;
_magazine_cost = -1;
_rand = random 1;

If (_hasToolbox && _hasCrowbar && _hasKnife && _hasRazor && _hasRuby && _hasPole && _cursorTarget isKindOf "LockboxStorageLocked") then {
		cutText ['You attempt to pry open the lockbox..', 'PLAIN'];
		_tool_cost = ["ItemCrowbar", "itemToolbox", "itemKnife"];
		_magazine_cost = ["ItemTrashRazor", "ItemRuby", "ItemPole"];
		player playActionNow "Medic";
		[player,"repair",0,false] call dayz_zombieSpeak;
		sleep 9;
	if (_rand > 0.5) then {
		player removeWeapon _tool_cost;
		player removeMagazine _magazine_cost;
		_object = nearestObject [player, "LockboxStorageLocked"];
		dayz_selectedVault = _this select 3;
		dayz_combination = _object getVariable ["CharacterID", "0"];
		dayz_selectedVault spawn player_unlockVault;
	};
	if (_rand <= 0.5) then {
		_tool_cost = ["ItemCrowbar", "itemToolbox", "itemKnife"] call BIS_fnc_selectRandom;
		player removeWeapon _tool_cost;
		cutText ['You were unable to break into the lockbox and you broke a tool!', 'PLAIN'];
	};
} else {
	if (_cursorTarget isKindOf "LockboxStorageLocked") then {
		cutText ['You need a Toolbox,Razor,Ruby,Pole and Crowbar equiped (in hands) to attempt a break in', 'PLAIN'];
	};
};

If (_hasToolbox && _hasSledge && _hasKnife && _hasRazor && _hasRuby && _hasPole && _hasObsidian && _hasEtool && _cursorTarget isKindOf "VaultStorageLocked") then {
		cutText ['You attempt to pry open the Safe..', 'PLAIN'];
		_tool_cost = ["ItemSledge", "itemToolbox", "itemKnife", "itemEtool"];
		_magazine_cost = ["ItemTrashRazor", "ItemRuby", "ItemPole", "ItemObsidian"];
		player playActionNow "Medic";
		[player,"repair",0,false] call dayz_zombieSpeak;
		sleep 9;
	if (_rand > 0.5) then {
		player removeWeapon _tool_cost;
		player removeMagazine _magazine_cost;
		_object = nearestObject [player, "VaultStorageLocked"];
		dayz_selectedVault = _this select 3;
		dayz_combination = _object getVariable ["CharacterID", "0"];
		dayz_selectedVault spawn player_unlockVault;
	};
	if (_rand <= 0.5) then {
		_tool_cost = ["ItemSledge", "itemToolbox", "itemKnife", "itemEtool"] call BIS_fnc_selectRandom;
		player removeWeapon _tool_cost;
		cutText ['You were unable to break into the Safe and you broke a tool!', 'PLAIN'];
	};
} else {
	if (_cursorTarget isKindOf "VaultStorageLocked") then {
		cutText ['You need a Toolbox,Razor,Ruby,Obsidian,Etool,Pole and Sledgehammer equiped (in hands) to attempt a break in', 'PLAIN'];
	};
};

s_player_igniteVehicle = -1;
s_player_breakin = -1;
DZE_ActionInProgress = false;
