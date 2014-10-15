/*
	Usage: [_crate,"type"] execVM "dir\DZMSBox.sqf";
		_crate is the crate to fill
		"type" is the type of crate
		"type" can be weapons or medical
*/
_crate = _this select 0;
_type = _this select 1;

// Clear the current cargo
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;

// Define lists. Some lists are defined in DZMSWeaponCrateList.sqf in the ExtConfig.
_bpackList = ["DZ_ALICE_Pack_EP1","DZ_British_ACU","DZ_CivilBackpack_EP1","DZ_Backpack_EP1"];
_gshellList = [
	"HandGrenade_East", 
	"FlareWhite_GP25", 
	"FlareGreen_GP25", 
	"FlareRed_GP25", 
	"FlareYellow_GP25",
	"1Rnd_SMOKE_GP25",
	"1Rnd_SMOKERED_GP25",
	"1Rnd_SMOKEGREEN_GP25",
	"1Rnd_SMOKEYELLOW_GP25",
	"1Rnd_HE_GP25",
	"SmokeShell",
	"SmokeShellYellow",
	"SmokeShellRed",
	"SmokeShellGreen",
	"SmokeShellPurple",
	"SmokeShellBlue",
	"SmokeShellOrange"
	];
	
_gshellListNATO = [
	"HandGrenade_West",
	"FlareWhite_M203",
	"FlareGreen_M203",
	"FlareRed_M203",
	"FlareYellow_M203",
	"1Rnd_HE_M203",
	"1Rnd_Smoke_M203",
	"1Rnd_SmokeRed_M203",
	"1Rnd_SmokeGreen_M203",
	"1Rnd_SmokeYellow_M203",
	"SmokeShell",
	"SmokeShellYellow",
	"SmokeShellRed",
	"SmokeShellGreen",
	"SmokeShellPurple",
	"SmokeShellBlue",
	"SmokeShellOrange"
	];
	
_medical = ["ItemBandage","ItemMorphine","ItemEpinephrine","ItemPainkiller","ItemAntibiotic","ItemBloodbag"];

_money = [
"ItemBriefcase10oz",
"ItemBriefcase10oz",
"ItemBriefcase10oz",
"ItemBriefcase20oz",
"ItemBriefcase20oz",
"ItemBriefcase30oz"
];

_hemp = ["ItemKiloHemp"];

//////////////////////////////////////////////////////////////////
// Medical Crates
if (_type == "medical") then {
	// load medical
	_scount = count _medical;
	for "_x" from 0 to 20 do {
		_sSelect = floor(random _sCount);
		_item = _medical select _sSelect;
		_crate addMagazineCargoGlobal [_item,(round(random 2))];
	};
};


///////////////////////////////////////////////////////////////////
// Weapon Crates NATO
if (_type == "weapons_nato") then {
	// load grenades
	_scount = count _gshellListNATO;
	for "_x" from 0 to 2 do {
		_sSelect = floor(random _sCount);
		_item = _gshellListNATO select _sSelect;
		_crate addMagazineCargoGlobal [_item,(round(random 2))];
	};
   
	// load packs
	_scount = count _bpackList;
	for "_x" from 0 to 1 do {
		_sSelect = floor(random _sCount);
		_item = _bpackList select _sSelect;
		_crate addBackpackCargoGlobal [_item,1];
	};
	 
	// load pistols
	_scount = count DZMSpistolListNATO;
	for "_x" from 0 to 2 do {
		_sSelect = floor(random _sCount);
		_item = DZMSpistolListNATO select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 8))];
		};
	};

	//load sniper
	_scount = count DZMSsniperListNATO;
	for "_x" from 0 to 1 do {
		_sSelect = floor(random _sCount);
		_item = DZMSsniperListNATO select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 2))];
		};
	};

	//load mg
	_scount = count DZMSmgListNATO;
	for "_x" from 0 to 2 do {
		_sSelect = floor(random _sCount);
		_item = DZMSmgListNATO select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 6))];
		};
	};

	//load primary
	_scount = count DZMSprimaryListNATO;
	for "_x" from 0 to 1 do {
		_sSelect = floor(random _sCount);
		_item = DZMSprimaryListNATO select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 4))];
		};
	};
};

///////////////////////////////////////////////////////////////////
// Weapon Crates
if (_type == "weapons") then {
	// load grenades
	_scount = count _gshellList;
	for "_x" from 0 to 2 do {
		_sSelect = floor(random _sCount);
		_item = _gshellList select _sSelect;
		_crate addMagazineCargoGlobal [_item,(round(random 2))];
	};
   
	// load packs
	_scount = count _bpackList;
	for "_x" from 0 to 1 do {
		_sSelect = floor(random _sCount);
		_item = _bpackList select _sSelect;
		_crate addBackpackCargoGlobal [_item,1];
	};
	 
	// load pistols
	_scount = count DZMSpistolList;
	for "_x" from 0 to 2 do {
		_sSelect = floor(random _sCount);
		_item = DZMSpistolList select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 8))];
		};
	};

	//load sniper
	_scount = count DZMSsniperList;
	for "_x" from 0 to 1 do {
		_sSelect = floor(random _sCount);
		_item = DZMSsniperList select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 2))];
		};
	};

	//load mg
	_scount = count DZMSmgList;
	for "_x" from 0 to 2 do {
		_sSelect = floor(random _sCount);
		_item = DZMSmgList select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 6))];
		};
	};

	//load primary
	_scount = count DZMSprimaryList;
	for "_x" from 0 to 1 do {
		_sSelect = floor(random _sCount);
		_item = DZMSprimaryList select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(round(random 4))];
		};
	};
};

///////////////////////////////////////////////////////////////////
// Epoch Supply Crates
if (_type == "supply") then {
	// load tools
	_scount = count DZMSConTools;
	for "_x" from 0 to 2 do {
		_sSelect = floor(random _sCount);
		_item = DZMSConTools select _sSelect;
		_crate addWeaponCargoGlobal [_item, 1];
	};
	
	// load construction
	_scount = count DZMSConSupply;
	for "_x" from 0 to 15 do {
		_sSelect = floor(random _sCount);
		_item = DZMSConSupply select _sSelect;
		_crate addMagazineCargoGlobal [_item,1];
	};
	
	// load locks
	_spawnChance = 30;
	_scount = count DZMSConLock;
	for "_x" from 0 to 1 do {
		_spawnRoll = floor(random(100)+1);
		if (_spawnRoll <= _spawnChance) then {
			_sSelect = floor(random _sCount);
			_item = DZMSConLock select _sSelect;
			_crate addMagazineCargoGlobal [_item,1];
		};
	};
};

///////////////////////////////////////////////////////////////////
// Epoch Building Crates High End
if (_type == "supply_high") then {
	// load tools
	_scount = count DZMSConTools;
	for "_x" from 0 to 3 do {
		_sSelect = floor(random _sCount);
		_item = DZMSConTools select _sSelect;
		_crate addWeaponCargoGlobal [_item, 1];
	};
	
	// load construction
	_scount = count DZMSConSupply;
	for "_x" from 0 to 15 do {
		_sSelect = floor(random _sCount);
		_item = DZMSConSupply select _sSelect;
		_crate addMagazineCargoGlobal [_item,1];
	};
	
	// load high end construction supply
	_scount = count DZMSBuildingSupply;
	for "_x" from 0 to 15 do {
		_sSelect = floor(random _sCount);
		_item = DZMSBuildingSupply select _sSelect;
		_crate addMagazineCargoGlobal [_item,1];
	};
	
	// load locks
	_spawnChance = 30;
	_scount = count DZMSConLock;
	for "_x" from 0 to 1 do {
		_spawnRoll = floor(random(100)+1);
		if (_spawnRoll <= _spawnChance) then
		{
			_sSelect = floor(random _sCount);
			_item = DZMSConLock select _sSelect;
			_crate addMagazineCargoGlobal [_item,1];
		};
	};
};

///////////////////////////////////////////////////////////////////
// Epoch Money Crates
if (_type == "money") then {
	// load money
	_scount = count _money;
	for "_x" from 2 to 5 do {
		_sSelect = floor(random _sCount);
		_item = _money select _sSelect;
		_crate addMagazineCargoGlobal [_item,1];
	};
};

///////////////////////////////////////////////////////////////////
// Pot Farm Boxes
if (_type == "hemp") then {
	// load hemp
	_scount = count _hemp;
	for "_x" from 3 to 8 do {
		_sSelect = floor(random _sCount);
		_item = _hemp select _sSelect;
		_crate addMagazineCargoGlobal [_item,1];
	};
};