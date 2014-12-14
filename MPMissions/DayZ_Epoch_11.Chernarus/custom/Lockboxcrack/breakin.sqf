// Break In Script by Mist and jesquik
// Allow users to break into  
private ["_obj","_rand","_object","_hasToolbox","_hasCrowbar","_meleeCrowbar","_tool_cost","_magazinesPlayer","_hasRuby","_cursortarget","_meleeSledge","_weaponsplayer","_combination","_hasObsidian"];

if(DZE_ActionInProgress) exitWith { cutText ["You can't break into this right now", "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

// Get items from player inventory
_cursorTarget = cursorTarget;
_weaponsplayer = weapons player;
_magazinesPlayer = magazines player;
_hasRuby =	"ItemRuby" in _magazinesPlayer;
_hasObsidian = 	"ItemObsidian" in _magazinesPlayer;
_hasToolbox = 	"ItemToolbox" in _weaponsPlayer;
_hasCrowbar =	"ItemCrowbar" in _weaponsPlayer;
_meleeCrowbar =	"MeleeCrowbar" in _weaponsPlayer;
_meleeSledge = 	"MeleeSledge" in _weaponsPlayer;

if (_cursorTarget isKindOf "LockboxStorageLocked") then {
    If (_hasToolbox && _meleeCrowbar && _hasObsidian) then {
        // Start Breaking in
        cutText ['You attempt to pry open the Lockbox...', 'PLAIN'];
        player playActionNow "Medic";
        [player,"repair",0,false] call dayz_zombieSpeak;
        sleep 9;
        player playActionNow "Medic";
        [player,"repair",0,false] call dayz_zombieSpeak;
        sleep 9;
        
        _rand = random 1;
        if (_rand < 0.4) then {
            // Pay for opening the safe
            player removeMagazine "ItemObsidian";
            
            // Replace the locked box with unlocked version
            cutText ['You have successfully opened the Lockbox!', 'PLAIN'];
            _object = nearestObject [player, "LockboxStorageLocked"];
            _combination = _object getVariable ["CharacterID", "0"];
            dayz_combination = "";
            dayz_selectedVault = _object;
            dayz_combination = _combination;
            dayz_selectedVault spawn player_unlockVault;
        } else {
            // Costs a tool every time you fail
            _tool_cost = ["MeleeCrowbar", "ItemToolbox"] call BIS_fnc_selectRandom;
            player removeWeapon _tool_cost;
            cutText ['One of your tools broke before you could finish!', 'PLAIN'];
        };
    } else {
        cutText ['You need a Toolbox, Obsidian, and an equipped Crowbar (in hands) to attempt a break in', 'PLAIN'];
    };
};

if (_cursorTarget isKindOf "VaultStorageLocked") then {
    If (_hasToolbox && _meleeSledge && _hasCrowbar && _hasRuby) then {
        cutText ['You attempt to break open the Safe..', 'PLAIN'];
        player playActionNow "Medic";
        [player,"repair",0,false] call dayz_zombieSpeak;
        sleep 9;
        player playActionNow "Medic";
        [player,"repair",0,false] call dayz_zombieSpeak;
        sleep 9;

        _rand = random 1;
        if (_rand < 0.4) then {
            // Pay for opening the safe
            player removeMagazine "ItemRuby";
            
            // Replace with unlocked vault
            cutText ['You have successfully opened the Safe!', 'PLAIN'];
            _object = nearestObject [player, "VaultStorageLocked"];
            _combination = _object getVariable ["CharacterID", "0"];
            dayz_combination = "";
            dayz_selectedVault = _object;
            dayz_combination = _combination;
            dayz_selectedVault spawn player_unlockVault;
        } else {
            _tool_cost = ["MeleeSledge", "ItemToolbox", "ItemCrowbar"] call BIS_fnc_selectRandom;
            player removeWeapon _tool_cost;
            cutText ['One of your tools broke before you could finish!', 'PLAIN'];
        };
    } else {
        cutText ['You need a Toolbox, Crowbar, Ruby, and an equipped Sledgehammer (in hands) to attempt a break in', 'PLAIN'];
    };
};

// Remove option to breakin and allow the player to take other actions
s_player_breakin = -1;
DZE_ActionInProgress = false;
player removeaction s_player_breakin;
