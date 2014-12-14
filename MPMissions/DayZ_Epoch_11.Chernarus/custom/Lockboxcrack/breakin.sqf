// Break In Script by Mist and jesquik
// Allow users to break into safes/lockboxes
private ["_obj","_rand","_object","_hasToolbox","_hasCrowbar","_meleeCrowbar","_tool_cost","_magazinesPlayer","_cursortarget","_meleeSledge","_weaponsplayer","_combination","_hasCobaltFile"];

if(DZE_ActionInProgress) exitWith { cutText ["You can't break into this right now", "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

// Get items from player inventory
_cursorTarget = cursorTarget;
_weaponsplayer = weapons player;
_magazinesPlayer = magazines player;
_hasToolbox = 	"ItemToolbox" in _weaponsPlayer;
_hasCobaltFile = "Cobalt_File" in _weaponsPlayer;
_hasCrowbar =	"ItemCrowbar" in _weaponsPlayer;
_meleeCrowbar =	"MeleeCrowbar" in _weaponsPlayer;
_meleeSledge = 	"MeleeSledge" in _weaponsPlayer;

if (_cursorTarget isKindOf "LockboxStorageLocked") then {
    If (_hasToolbox && _meleeCrowbar) then {
        // Start Breaking in
        cutText ['You attempt to pry open the Lockbox...', 'PLAIN'];
        player playActionNow "Medic";
        [player,"repair",0,false] call dayz_zombieSpeak;
        sleep 9;
        
        _rand = random 1;
        if (_rand < 0.4) then {
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
        cutText ['You need a Toolbox, and an equipped Crowbar (in hands) to attempt a break in', 'PLAIN'];
    };
};

if (_cursorTarget isKindOf "VaultStorageLocked") then {
    If (_hasToolbox && _meleeSledge && _hasCrowbar && _hasCobaltFile) then {
        cutText ['You attempt to break open the Safe...', 'PLAIN'];
        player playActionNow "Medic";
        [player,"repair",0,false] call dayz_zombieSpeak;
        sleep 9;

        _rand = random 1;
        if (_rand < 0.4) then {
            // Pay for opening the safe
            player removeWeapon "Cobalt_File";
            
            // Replace with unlocked vault
            cutText ['You have successfully used the Cobalt File to open the Safe!', 'PLAIN'];
            _object = nearestObject [player, "VaultStorageLocked"];
            _combination = _object getVariable ["CharacterID", "0"];
            dayz_combination = "";
            dayz_selectedVault = _object;
            dayz_combination = _combination;
            dayz_selectedVault spawn player_unlockVault;
        } else {
            player removeWeapon "MeleeSledge"; // Always lose the sledge hammer on failure
            _tool_cost = ["ItemToolbox", "ItemCrowbar"] call BIS_fnc_selectRandom;
            player removeWeapon _tool_cost;
            cutText ['You broke the sledgehammer and another tool before you could finish!', 'PLAIN'];
        };
    } else {
        cutText ['You need a Toolbox, Crowbar, the Cobalt File, and an equipped Sledgehammer (in hands) to attempt a break in', 'PLAIN'];
    };
};

// Remove option to breakin and allow the player to take other actions
player removeaction s_player_breakin;
s_player_breakin = -1;
DZE_ActionInProgress = false;
