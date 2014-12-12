//breakin by Mist currently untested
private ["_obj","_rand","_first","_object"];
//_rand = random 1;
player playActionNow "Medic";
sleep 9;

//if (_rand > 0.6) then {
	//player removeWeapon "ItemCrowbar";
	//player removeMagazine "ItemRuby";
	//player removeMagazine "ItemPole";
	//player removeMagazine "PartGeneric";
	//player removeWeapon "ItemEtool";
	//player removeWeapon "ItemToolbox";
	//player removeWeapon "ItemKnife";
	//player removeMagazine "ItemTrashRazor";
	systemChat("Checkpoint1");
	_object = nearestObject [player, "VaultStorage"];
	_first = _object getVariable ["CharacterID", "0"];
	dayz_combination = _first;
	dayz_selectedVault = _this select 3;
	dayz_selectedVault spawn player_unlockVault;
	cutText ['You were able to break the lockbox open!', 'PLAIN'];
	systemChat("Checkpoint2");
//};
//if (_rand <= 0.6) then {
	//player removeWeapon "ItemCrowbar";
	//player removeMagazine "ItemRuby";
	//player removeMagazine "ItemPole";
	//player removeMagazine "PartGeneric";
	//player removeWeapon "ItemEtool";
	//player removeMagazine "ItemTrashRazor";
	//systemChat("Checkpoint2");
	//cutText ['You were unable to break into the locked box!', 'PLAIN'];
//};
systemChat("Checkpoint3");