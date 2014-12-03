//breakin by Mist currently untested
private ["_obj","_rand"];
_rand = random 1;
if (_rand > 0.6) then {
	player removeWeapon "ItemCrowbar";
	player removeMagazine "ItemRuby";
	player removeMagazine "ItemPole";
	player removeMagazine "PartGeneric";
	player removeWeapon "ItemEtool";
	player removeWeapon "ItemToolbox";
	player removeWeapon "ItemKnife";
	player removeMagazine "ItemTrashRazor";
	_obj = _this select 3;
	_obj spawn player_unlockVault;
	cutText ['You managed to crack the lockbox open at the expense of your tools', 'PLAIN'];
};
if (_rand <= 0.6) then {
	player removeWeapon "ItemCrowbar";
	player removeMagazine "ItemRuby";
	player removeMagazine "ItemPole";
	player removeMagazine "PartGeneric";
	player removeWeapon "ItemEtool";
	player removeMagazine "ItemTrashRazor";
	cutText ['You were unable to break in and broke most of your tools', 'PLAIN'];
};