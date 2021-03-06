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
_bpackList = [
    "DZ_ALICE_Pack_EP1",
    "DZ_British_ACU",
    "DZ_CivilBackpack_EP1",
    "DZ_Backpack_EP1"
    ];

_bpackList_high = [
    "DZ_CivilBackpack_EP1",
    "DZ_GunBag_EP1",
    "DZ_Backpack_EP1",
    "DZ_LargeGunBag_EP1"
    ];

_gshellList = [
	"FlareWhite_GP25",
	"FlareGreen_GP25",
	"FlareRed_GP25",
	"FlareYellow_GP25",
	"1Rnd_SMOKE_GP25",
	"1Rnd_SMOKERED_GP25",
	"1Rnd_SMOKEGREEN_GP25",
	"1Rnd_SMOKEYELLOW_GP25",
	"SmokeShell",
	"SmokeShellYellow",
	"SmokeShellRed",
	"SmokeShellGreen",
	"SmokeShellPurple",
	"SmokeShellBlue",
	"SmokeShellOrange"
	];

_gshellListNATO = [
	"FlareWhite_M203",
	"FlareGreen_M203",
	"FlareRed_M203",
	"FlareYellow_M203",
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
"ItemBriefcase60oz",
"ItemBriefcase70oz",
"ItemBriefcase80oz",
"ItemBriefcase90oz",
"ItemBriefcase100oz"
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
		_crate addMagazineCargoGlobal [_item,(floor(random 3))];
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
		_crate addMagazineCargoGlobal [_item,(floor(random 7))];
	};

	// load grenades
    _crate addMagazineCargoGlobal ["HandGrenade_West",(floor(random 3))];
    _crate addMagazineCargoGlobal ["1Rnd_HE_M203",(floor(random 3))];

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
			_crate addMagazineCargoGlobal [(_ammo select 0),(floor(random 9))];
		};
	};

	//load SMG
	_scount = count DZMSmgListNATO;
	for "_x" from 0 to 1 do {
		_sSelect = floor(random _sCount);
		_item = DZMSmgListNATO select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(floor(random 5))];
		};
	};

	//load primary
	_scount = count DZMSprimaryListNATO;
	for "_x" from 0 to 2 do {
		_sSelect = floor(random _sCount);
		_item = DZMSprimaryListNATO select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(floor(random 5))];
		};
	};
};

///////////////////////////////////////////////////////////////////
// Weapon Crates NATO
if (_type == "weapons_nato_high") then {
	// load grenades
	_scount = count _gshellListNATO;
	for "_x" from 0 to 2 do {
		_sSelect = floor(random _sCount);
		_item = _gshellListNATO select _sSelect;
		_crate addMagazineCargoGlobal [_item,(floor(random 9))];
	};

	// load grenades
    _crate addMagazineCargoGlobal ["HandGrenade_West",(floor(random 5))];
    _crate addMagazineCargoGlobal ["1Rnd_HE_M203",(floor(random 5))];

	// load packs
	_scount = count _bpackList_high;
	for "_x" from 0 to 1 do {
		_sSelect = floor(random _sCount);
		_item = _bpackList_high select _sSelect;
		_crate addBackpackCargoGlobal [_item,1];
	};

	//load sniper
	_scount = count DZMSsniperListNATO;
	for "_x" from 0 to 1 do {
		_sSelect = floor(random _sCount);
		_item = DZMSsniperListNATO select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(floor(random 3))];
		};
	};

	//load primary
	_scount = count DZMSprimaryListNATOHigh;
	for "_x" from 0 to 2 do {
		_sSelect = floor(random _sCount);
		_item = DZMSprimaryListNATOHigh select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(floor(random 5))];
		};
	};

	//load primary
	_scount = count DZMSmachinegunListNATO;
	for "_x" from 0 to 1 do {
		_sSelect = floor(random _sCount);
		_item = DZMSmachinegunListNATO select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(floor(random 3))];
		};
	};
};

///////////////////////////////////////////////////////////////////
// Weapon Crates NATO
// Use for drops where there will be a single box
// Only use for Major Missions
if (_type == "weapons_nato_drop") then {
    for "_x" from 0 to 2 do {
        // load grenades
        _scount = count _gshellListNATO;
        for "_x" from 0 to 2 do {
            _sSelect = floor(random _sCount);
            _item = _gshellListNATO select _sSelect;
            _crate addMagazineCargoGlobal [_item,(floor(random 9))];
        };

        // load grenades
        _crate addMagazineCargoGlobal ["HandGrenade_West",(floor(random 5))];
        _crate addMagazineCargoGlobal ["1Rnd_HE_M203",(floor(random 5))];

        // load packs
        _scount = count _bpackList_high;
        for "_x" from 0 to 1 do {
            _sSelect = floor(random _sCount);
            _item = _bpackList_high select _sSelect;
            _crate addBackpackCargoGlobal [_item,1];
        };

        //load sniper
        _scount = count DZMSsniperListNATO;
        for "_x" from 0 to 1 do {
            _sSelect = floor(random _sCount);
            _item = DZMSsniperListNATO select _sSelect;
            _crate addWeaponCargoGlobal [_item,1];
            _ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
            if (count _ammo > 0) then {
                _crate addMagazineCargoGlobal [(_ammo select 0),(floor(random 3))];
            };
        };

        //load primary
        _scount = count DZMSprimaryListNATOHigh;
        for "_x" from 0 to 2 do {
            _sSelect = floor(random _sCount);
            _item = DZMSprimaryListNATOHigh select _sSelect;
            _crate addWeaponCargoGlobal [_item,1];
            _ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
            if (count _ammo > 0) then {
                _crate addMagazineCargoGlobal [(_ammo select 0),(floor(random 5))];
            };
        };

        //load primary
        _scount = count DZMSmachinegunListNATO;
        for "_x" from 0 to 1 do {
            _sSelect = floor(random _sCount);
            _item = DZMSmachinegunListNATO select _sSelect;
            _crate addWeaponCargoGlobal [_item,1];
            _ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
            if (count _ammo > 0) then {
                _crate addMagazineCargoGlobal [(_ammo select 0),(floor(random 3))];
            };
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
		_crate addMagazineCargoGlobal [_item,(floor(random 7))];
	};

    // load grenades
    _crate addMagazineCargoGlobal ["HandGrenade_East",(floor(random 3))];
    _crate addMagazineCargoGlobal ["1Rnd_HE_GP25",(floor(random 3))];
   
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
			_crate addMagazineCargoGlobal [(_ammo select 0),(floor(random 9))];
		};
	};

	//load mg
	_scount = count DZMSmgList;
	for "_x" from 0 to 1 do {
		_sSelect = floor(random _sCount);
		_item = DZMSmgList select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(floor(random 7))];
		};
	};

	//load primary
	_scount = count DZMSprimaryList;
	for "_x" from 0 to 3 do {
		_sSelect = floor(random _sCount);
		_item = DZMSprimaryList select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(floor(random 5))];
		};
	};
};

///////////////////////////////////////////////////////////////////
// Weapon Crates High
if (_type == "weapons_high") then {
	// load grenades
	_scount = count _gshellList;
	for "_x" from 0 to 2 do {
		_sSelect = floor(random _sCount);
		_item = _gshellList select _sSelect;
		_crate addMagazineCargoGlobal [_item,(floor(random 7))];
	};

    // load grenades
    _crate addMagazineCargoGlobal ["HandGrenade_East",(floor(random 3))];
    _crate addMagazineCargoGlobal ["1Rnd_HE_GP25",(floor(random 3))];

	// load packs
	_scount = count _bpackList_high;
	for "_x" from 0 to 1 do {
		_sSelect = floor(random _sCount);
		_item = _bpackList_high select _sSelect;
		_crate addBackpackCargoGlobal [_item,1];
	};

	//load sniper
	_scount = count DZMSsniperList;
	for "_x" from 0 to 1 do {
		_sSelect = floor(random _sCount);
		_item = DZMSsniperList select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(floor(random 3))];
		};
	};

	//load primary
	_scount = count DZMSprimaryListHigh;
	for "_x" from 0 to 2 do {
		_sSelect = floor(random _sCount);
		_item = DZMSprimaryListHigh select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(floor(random 5))];
		};
	};

	//load primary
	_scount = count DZMSmachinegunList;
	for "_x" from 0 to 1 do {
		_sSelect = floor(random _sCount);
		_item = DZMSmachinegunList select _sSelect;
		_crate addWeaponCargoGlobal [_item,1];
		_ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
		if (count _ammo > 0) then {
			_crate addMagazineCargoGlobal [(_ammo select 0),(floor(random 5))];
		};
	};
};

///////////////////////////////////////////////////////////////////
// Epoch Supply Crates
if (_type == "supply") then {
	// load tools
	_scount = count DZMSConTools;
	for "_x" from 0 to 4 do {
		_sSelect = floor(random _sCount);
		_item = DZMSConTools select _sSelect;
		_crate addWeaponCargoGlobal [_item, 1];
	};
	
	// load construction
	_scount = count DZMSConSupply;
	for "_x" from 0 to 25 do {
		_sSelect = floor(random _sCount);
		_item = DZMSConSupply select _sSelect;
		_crate addMagazineCargoGlobal [_item,1];
	};

	// load locks
	_spawnChance = 30;
	_scount = count DZMSConLock;
	for "_x" from 0 to 2 do {
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
	for "_x" from 0 to 6 do {
		_sSelect = floor(random _sCount);
		_item = DZMSConTools select _sSelect;
		_crate addWeaponCargoGlobal [_item, 1];
	};

	// load construction
	_scount = count DZMSConSupply;
	for "_x" from 0 to 35 do {
		_sSelect = floor(random _sCount);
		_item = DZMSConSupply select _sSelect;
		_crate addMagazineCargoGlobal [_item,1];
	};

	// load high end construction supply
	_scount = count DZMSConSupplyHigh;
	for "_x" from 0 to 10 do {
		_sSelect = floor(random _sCount);
		_item = DZMSConSupplyHigh select _sSelect;
		_crate addMagazineCargoGlobal [_item,1];
	};

	// load locks
	_spawnChance = 30;
	_scount = count DZMSConLock;
	for "_x" from 0 to 3 do {
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
	for "_x" from 0 to 3 do {
		_sSelect = floor(random _sCount);
		_item = _money select _sSelect;
		_crate addMagazineCargoGlobal [_item,1];
	};

    //load sniper
    _scount = count DZMSsniperList;
    for "_x" from 0 to 1 do {
        _sSelect = floor(random _sCount);
        _item = DZMSsniperList select _sSelect;
        _crate addWeaponCargoGlobal [_item,1];
        _ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
        if (count _ammo > 0) then {
            _crate addMagazineCargoGlobal [(_ammo select 0),(floor(random 3))];
        };
    };

    //load primary
    _scount = count DZMSprimaryListHigh;
    for "_x" from 0 to 2 do {
        _sSelect = floor(random _sCount);
        _item = DZMSprimaryListHigh select _sSelect;
        _crate addWeaponCargoGlobal [_item,1];
        _ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
        if (count _ammo > 0) then {
            _crate addMagazineCargoGlobal [(_ammo select 0),(floor(random 5))];
        };
    };

    //load primary
    _scount = count DZMSmachinegunList;
    for "_x" from 0 to 1 do {
        _sSelect = floor(random _sCount);
        _item = DZMSmachinegunList select _sSelect;
        _crate addWeaponCargoGlobal [_item,1];
        _ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
        if (count _ammo > 0) then {
            _crate addMagazineCargoGlobal [(_ammo select 0),(floor(random 5))];
        };
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

    //load sniper
    _scount = count DZMSsniperList;
    for "_x" from 0 to 1 do {
        _sSelect = floor(random _sCount);
        _item = DZMSsniperList select _sSelect;
        _crate addWeaponCargoGlobal [_item,1];
        _ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
        if (count _ammo > 0) then {
            _crate addMagazineCargoGlobal [(_ammo select 0),(floor(random 3))];
        };
    };

    //load primary
    _scount = count DZMSprimaryListHigh;
    for "_x" from 0 to 2 do {
        _sSelect = floor(random _sCount);
        _item = DZMSprimaryListHigh select _sSelect;
        _crate addWeaponCargoGlobal [_item,1];
        _ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
        if (count _ammo > 0) then {
            _crate addMagazineCargoGlobal [(_ammo select 0),(floor(random 5))];
        };
    };

    //load primary
    _scount = count DZMSmachinegunList;
    for "_x" from 0 to 1 do {
        _sSelect = floor(random _sCount);
        _item = DZMSmachinegunList select _sSelect;
        _crate addWeaponCargoGlobal [_item,1];
        _ammo = [] + getArray (configFile >> "cfgWeapons" >> _item >> "magazines");
        if (count _ammo > 0) then {
            _crate addMagazineCargoGlobal [(_ammo select 0),(floor(random 5))];
        };
    };
};