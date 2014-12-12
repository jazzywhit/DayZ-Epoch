//breakin by Mist currently untested
private ["_obj","_rand","_first","_object","_hasKnife","_hasRazor","_hasToolbox","_hasRuby","_hasPole","_hasCrowbar","_hasScrap"];
	_hasKnife = 	"ItemKnife" in _itemsPlayer;
	_hasRazor = 	"ItemTrashRazor" in _magazinesPlayer;
	_hasToolbox = 	"ItemToolbox" in _itemsPlayer;
	_hasRuby =	"ItemRuby" in _magazinesPlayer; //Added items for mist breakin
	_hasPole =	"ItemPole" in _magazinesPlayer;
	_hasCrowbar =	"ItemCrowbar" in _itemsPlayer;
	_hasScrap =	"PartGeneric" in _magazinesPlayer;
_rand = random 1;
player playActionNow "Medic";
sleep 9;
If ( _hasKnife && _hasRazor && _hasToolbox && _hasRuby && _hasPole && _hasCrowbar && _hasScrap) then {
	if (_rand > 0.6) then {
		player removeWeapon "ItemCrowbar";
		player removeMagazine "ItemRuby";
		player removeMagazine "ItemPole";
		player removeMagazine "PartGeneric";
		player removeWeapon "ItemToolbox";
		player removeWeapon "ItemKnife";
		player removeMagazine "ItemTrashRazor";
		systemChat("Checkpoint1");
		_object = nearestObject [player, "LockboxStorageLocked"];
		_first = _object getVariable ["CharacterID", "0"];
		dayz_combination = "";
		dayz_selectedVault = _this select 3;
		dayz_combination = _first;
		dayz_selectedVault spawn player_unlockVault;
		//cutText ['You were able to break the lockbox open!', 'PLAIN']; removed due to double message from lockbox unlock
		systemChat("Checkpoint2");
	};
	if (_rand <= 0.6) then {
		player removeWeapon "ItemCrowbar";
		player removeMagazine "ItemRuby";
		player removeMagazine "ItemPole";
		player removeMagazine "PartGeneric";
		player removeMagazine "ItemTrashRazor";
		systemChat("Checkpoint4");
		cutText ['You were unable to break into the locked box!', 'PLAIN'];
	};
} else {
cutText ['You need a Razor,Toolbox, Ruby, Pole, Crowbar and Scrap metal to break in', 'PLAIN'];
};
systemChat("Checkpoint3");
