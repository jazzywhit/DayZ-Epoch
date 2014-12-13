// Break In Script by Mist and jesquik
// Allow users to break into  
private ["_obj","_rand","_object","_itemsPlayer","_hasToolbox","_hasCrowbar","_tool_cost","_magazinesPlayer","_hasKnife","_hasRazor","_hasRuby","_hasPole","_magazine_cost","_cursortarget","_hasSledge","_weaponsplayer","_first","_hasEtool","_hasObsidian"];

if(DZE_ActionInProgress) exitWith { cutText ["You can't break into this right now", "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

_itemsPlayer = items player;
_weaponsplayer = weapons player;
_magazinesPlayer = magazines player;
_cursorTarget = cursorTarget;
	_hasKnife = 	"ItemKnife" in _itemsPlayer;
	_hasRazor = 	"ItemTrashRazor" in _magazinesPlayer;
	_hasToolbox = 	"ItemToolbox" in _itemsPlayer;
	_hasRuby =	"ItemRuby" in _magazinesPlayer;
	_hasPole =	"ItemPole" in _magazinesPlayer;
	_hasCrowbar =	"MeleeCrowbar" in _weaponsPlayer;
	_hasSledge = 	"MeleeSledge" in _weaponsPlayer;
	_hasEtool = 	"ItemEtool" in _itemsPlayer;
	_hasObsidian = 	"ItemObsidian" in _magazinesPlayer;
_tool_cost = -1;
_magazine_cost = -1;
_rand = random 1;

If ((_hasToolbox && _hasCrowbar && _hasKnife && _hasRazor && _hasRuby && _hasPole) && (_cursorTarget isKindOf "LockboxStorageLocked")) then {
		cutText ['You attempt to pry open the lockbox..', 'PLAIN'];
		player playActionNow "Medic";
		[player,"repair",0,false] call dayz_zombieSpeak;
		sleep 9;
	if (_rand > 0.5) then {
		player removeweapon "MeleeCrowbar";
		player removeMagazine "ItemRuby";
		player removeMagazine "ItemPole";
		player removeweapon "itemToolbox";
		player removeweapon "itemKnife";
		player removeMagazine "ItemTrashRazor";
		player removeMagazine "ItemObsidian";
		_object = nearestObject [player, "LockboxStorageLocked"];
		_first = _object getVariable ["CharacterID", "0"];
		dayz_combination = "";
		//dayz_selectedVault = _this select 3;
		dayz_selectedVault = _object;
		dayz_combination = _first;
		dayz_selectedVault spawn player_unlockVault;
		player removeaction s_player_breakin
	};
	if (_rand <= 0.5) then {
		_tool_cost = ["MeleeCrowbar", "itemToolbox", "itemKnife"] call BIS_fnc_selectRandom;
		_magazine_cost = ["ItemTrashRazor", "ItemRuby", "ItemPole"] call BIS_fnc_selectRandom;
		player removeWeapon _tool_cost;
		cutText ['You were unable to break into the lockbox and you broke a tool and item!', 'PLAIN'];
		player removeaction s_player_breakin
	};
} else {
	if (_cursorTarget isKindOf "LockboxStorageLocked") then {
		cutText ['You need a Toolbox,Razor,Knife,Ruby,Pole and Crowbar equiped (in hands) to attempt a break in', 'PLAIN'];
		player removeaction s_player_breakin
	};
};

If ((_hasToolbox && _hasSledge && _hasKnife && _hasRazor && _hasRuby && _hasPole && _hasObsidian && _hasEtool) && (_cursorTarget isKindOf "VaultStorageLocked")) then {
		cutText ['You attempt to pry open the Safe..', 'PLAIN'];
		player playActionNow "Medic";
		[player,"repair",0,false] call dayz_zombieSpeak;
		sleep 9;
	if (_rand > 0.5) then {
		player removeweapon "MeleeSledge";
		player removeMagazine "ItemRuby";
		player removeMagazine "ItemPole";
		player removeweapon "itemToolbox";
		player removeweapon "itemKnife";
		player removeMagazine "ItemTrashRazor";
		player removeMagazine "ItemObsidian";
		_object = nearestObject [player, "VaultStorageLocked"];
		_first = _object getVariable ["CharacterID", "0"];
		dayz_combination = "";
		dayz_selectedVault = _object;
		dayz_combination = _first;
		dayz_selectedVault spawn player_unlockVault;
		player removeaction s_player_breakin
	};
	if (_rand <= 0.5) then {
		_tool_cost = ["MeleeSledge", "itemToolbox", "itemKnife", "itemEtool"] call BIS_fnc_selectRandom;
		_magazine_cost = ["ItemTrashRazor", "ItemRuby", "ItemPole", "ItemObsidian"] call BIS_fnc_selectRandom;
		player removeWeapon _tool_cost;
		player removeMagazine _magazine_cost;
		cutText ['You were unable to break into the Safe and you broke a tool and item!', 'PLAIN'];
		player removeaction s_player_breakin
	};
} else {
	if (_cursorTarget isKindOf "VaultStorageLocked") then {
		cutText ['You need a Toolbox,Razor,Knife,Ruby,Obsidian,Etool,Pole and Sledgehammer equiped (in hands) to attempt a break in', 'PLAIN'];
		player removeaction s_player_breakin
	};
};

s_player_igniteVehicle = -1;
s_player_breakin = -1;
DZE_ActionInProgress = false;
