#include "cfgloot.hpp"

//loot large: single, backpack, cfglootweapon, weapon, weaponnomags, magazine, object,
//loot small: single, cfglootweapon, weapon, magazine

class CfgBuildingLoot {
	class Default {
		zombieChance = 0.2;
		minRoaming = 0;
		maxRoaming = 2;
		zombieClass[] = {"zZombie_Base","z_hunter","z_teacher","z_suit1","z_suit2","z_worker1","z_worker2","z_worker3","z_villager1","z_villager2","z_villager3"};
		lootChance = 0;
		lootPos[] = {};
		lootPosSmall[] = {};
		lootPosZombie[] = {};
		itemType[] = {};
		itemChance[] = {};
		lootTypeSmall[] = {};
		itemChanceSmall[] = {};
		hangPos[] = {};
		vehPos[] = {};
	};
	
	class Castle: Default {
		lootChance = 0.2;
		lootPos[] = {};
		lootType[] = {
			{"ItemKnife","weapon",0.01},
			{"ItemMap","weapon",0.01},
			{"ItemCompass","weapon",0.01},
			{"ItemFlashlight","weapon",0.01},
			{"ItemHatchet_DZE","weapon",0.01},
			{"WeaponHolder_ItemTent","magazine",0.01},
			{"PartWoodPile","magazine",0.04},
			{"pistols_bric", "cfglootweapon", 0.1 },
			{"submachinegun_bric", "cfglootweapon", 0.1 },
			{"","generic",0.2}
		};
	};
	class Residential: Default {
		zombieChance = 0.3;
		maxRoaming = 2;
		zombieClass[] = {"zZombie_Base","z_hunter","z_teacher","z_villager1","z_villager2","z_villager3"};
		lootChance = 0.8;
		lootPos[] = {};
		lootType[] = {
			{"ItemWatch","weapon",0.02},
			{"ItemFlashlight","weapon",0.02},
			{"ItemKnife","weapon",0.02},
			{"ItemMatchbox_DZE","weapon",0.02},
			{"","backpacks",0.1},
			{"","generic",0.25},
			{"","trash",0.23},
			{"ItemCanvas","magazine",0.04},
			{"ItemDocument", "magazine",0.02},
			{"Binocular","weapon",0.04},
			{"pistols_bric", "cfglootweapon", 0.06 },
			{"ItemMachete","weapon",0.05},
			{"shotgunsingleshot", "cfglootweapon", 0.13 }
		};
		lootTypeSmall[] = {
			{ "ItemWatch","weapon",0.05 },
			{ "ItemFlashlight","weapon",0.09 },
			{ "ItemKnife","weapon",0.04 },
			{ "ItemMatchbox_DZE","weapon",0.05 },
			{ "ItemFishingPole","weapon",0.05 },
			{ "ItemShovel","weapon",0.05 },
			{ "","food",0.04 },
			{ "","generic",0.29 },
			{ "","trash",0.24 },
			{ "Binocular","weapon",0.02 },
			{ "","clothes",0.04},
			{ "","specialclothes",0.04 }
		};
	};
    class Church: Default {
        zombieChance = 0.3;
        maxRoaming = 2;
        zombieClass[] = {"zZombie_Base","z_hunter","z_teacher","z_villager1","z_villager2","z_villager3"};
        lootChance = 0.4;
        lootPos[] = {};
        lootType[] = {
            {"ItemWatch","weapon",0.02},
            {"ItemFlashlight","weapon",0.02},
            {"ItemKnife","weapon",0.02},
            {"ItemMatchbox_DZE","weapon",0.02},
            {"","backpacks",0.1},
            {"","generic",0.21},
            {"","trash",0.31},
            {"ItemCanvas","magazine",0.04},
            {"Skin_Priest_DZ","magazine",0.08},
            {"ItemDocument", "magazine",0.02},
            {"Binocular","weapon",0.04},
            {"pistols_bric", "cfglootweapon", 0.06 },
            {"ItemMachete","weapon",0.05}
        };
        lootTypeSmall[] = {
            { "ItemWatch","weapon",0.05 },
            { "ItemFlashlight","weapon",0.09 },
            { "ItemKnife","weapon",0.04 },
            { "ItemMatchbox_DZE","weapon",0.05 },
            { "","food",0.04 },
            { "","generic",0.34 },
            { "","trash",0.29 },
            { "Binocular","weapon",0.02 },
            { "","clothes",0.04},
            { "","specialclothes",0.04 }
        };
    };
	class Office: Default {
		maxRoaming = 3;
		zombieClass[] = {"z_suit1","z_suit2"};
		zombieChance = 0.3;
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {
			{"ItemWatch","weapon",0.04},
			{"ItemFlashlight","weapon",0.04},
			{"","trash",0.2},
			{"","office",0.32},
			{"Binocular","weapon",0.05},
			{"ItemCrowbar","weapon",0.05},
			{"pistols_bric","cfglootweapon",0.15 },
			{"shotgunsingleshot", "cfglootweapon", 0.15}
		};
		lootTypeSmall[] = {
			{ "ItemWatch","weapon",0.05 },
			{ "ItemCompass","weapon",0.05 },
			{ "ItemMap","weapon",0.05 },
			{ "ItemFlashlight","weapon",0.05 },
			{ "","generic",0.5 },
			{ "","trash",0.2 },
			{ "Binocular","weapon",0.06 },
			{ "ItemDocument","magazine",0.04 }
		};
	};

	class IndustrialLarge: Default {
        zombieChance = 0.4;
        zombieClass[] = {"z_worker1","z_worker2","z_worker3"};
        maxRoaming = 2;
        lootChance = 0.4;
        lootPos[] = {};
        lootType[] = {
            {"ItemGenerator","magazine",0.01},
            {"ItemFuelBarrelEmpty","magazine",0.01},
            {"","generic",0.12},
            {"","trash",0.10},
            {"","military_bric",0.04},
            {"PartGeneric","magazine",0.04},
            {"PartWheel","magazine",0.05},
            {"PartFueltank","magazine",0.02},
            {"PartEngine","magazine",0.02},
            {"PartGlass","magazine",0.04},
            {"ItemJerrycanEmpty","magazine",0.04},
            {"ItemHatchet_DZE","weapon",0.07},
            {"ItemKnife","weapon",0.07},
            {"ItemToolbox","weapon",0.06},
            {"ItemCrowbar","weapon",0.05},
            {"ItemMachete","weapon",0.05},
            {"ItemWire","magazine",0.04},
            {"ItemTankTrap","magazine",0.05},
            {"ItemKeyKit","weapon",0.01},
            {"CinderBlocks","magazine",0.01},
            {"PartPlywoodPack", "magazine", 0.05},
            {"PartPlankPack", "magazine", 0.05}
        };
        lootTypeSmall[] = {
            { "","generic",0.41 },
            { "","trash",0.2 },
            { "ItemCanvas","magazine",0.04 },
            { "ItemPole","magazine",0.04 },
            { "","military_bric",0.14 },
            { "ItemSledgeHead","magazine",0.05},
            { "ItemSledgeHandle","magazine",0.05},
            { "ItemKnife","weapon",0.07 }
        };
    };

	class Industrial: Default {
		zombieChance = 0.4;
		zombieClass[] = {"z_worker1","z_worker2","z_worker3"};
		maxRoaming = 2;
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {
			{"ItemGenerator","magazine",0.01},
			{"ItemFuelBarrelEmpty","magazine",0.01},
			{"","generic",0.12},
			{"","trash",0.10},
			{"","military_bric",0.04},
			{"PartGeneric","magazine",0.04},
			{"PartWheel","magazine",0.05},
			{"PartFueltank","magazine",0.02},
			{"PartEngine","magazine",0.02},
			{"PartGlass","magazine",0.04},
			{"ItemJerrycanEmpty","magazine",0.04},
			{"ItemHatchet_DZE","weapon",0.07},
			{"ItemKnife","weapon",0.07},
			{"ItemToolbox","weapon",0.06},
			{"ItemCrowbar","weapon",0.05},
			{"ItemMachete","weapon",0.05},
			{"ItemWire","magazine",0.04},
			{"ItemTankTrap","magazine",0.05},
			{"ItemKeyKit","weapon",0.02},
			{"PartPlywoodPack", "magazine", 0.05},
			{"PartPlankPack", "magazine", 0.05}
		};
		lootTypeSmall[] = {
			{ "","generic",0.41 },
			{ "","trash",0.2 },
			{ "ItemCanvas","magazine",0.04 },
			{ "ItemPole","magazine",0.04 },
			{ "","military_bric",0.14 },
            { "ItemSledgeHead","magazine",0.05},
            { "ItemSledgeHandle","magazine",0.05},
			{ "ItemKnife","weapon",0.07 }
		};
	};
	class IndustrialFuel: Default {
		zombieChance = 0.4;
		zombieClass[] = {"z_worker1","z_worker2","z_worker3"};
		maxRoaming = 2;
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {
			{"ItemGenerator","magazine",0.01},
			{"fuel_pump_kit","magazine",0.01},
			{"","generic",0.18},
			{"","trash",0.22},
			{"","military_bric",0.04},
			{"PartGeneric","magazine",0.04},
			{"PartWheel","magazine",0.05},
			{"PartFueltank","magazine",0.02},
			{"PartEngine","magazine",0.02},
			{"PartGlass","magazine",0.04},
			{"ItemJerrycanEmpty","magazine",0.04},
			{"ItemHatchet_DZE","weapon",0.07},
			{"ItemKnife","weapon",0.07},
			{"ItemToolbox","weapon",0.06},
			{"ItemCrowbar","weapon",0.06}
		};
		lootTypeSmall[] = {
			{ "","generic",0.5 },
			{ "","trash",0.28 },
			{ "","military_bric",0.14 },
			{ "ItemKnife","weapon",0.07 }
		};
	};
	class Farm: Default {
		zombieChance = 0.3;
		maxRoaming = 3;
		zombieClass[] = {"zZombie_Base","z_hunter","z_hunter","z_hunter","z_villager1","z_villager2","z_villager3"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{"ItemJerrycanEmpty","magazine",0.05},
			{"","generic",0.38},
			{"","trash",0.11},
			{"ItemShovel","weapon",0.05},
			{"PartPlankPack","magazine",0.06},
			{"ItemHatchet_DZE","weapon",0.05},
			{"ItemFuelBarrelEmpty","magazine",0.01},
			{"ItemMachete","weapon",0.05},
			{"ItemFishingPole","weapon",0.07},
			{"ItemLightBulb","magazine",0.02},
			{"farmweapons","cfglootweapon", 0.15}
		};
		lootTypeSmall[] = {
			{ "ItemShovel","weapon", 0.1},
			{ "ItemHatchet_DZE","weapon", 0.1},
			{ "ItemMachete","weapon", 0.1},
			{ "","generic", 0.39},
			{ "","trash",0.14 },
			{ "","military_bric",0.05},
			{ "ItemSledgeHead","magazine",0.05},
			{ "ItemSledgeHandle","magazine",0.05}
		};
	};
	class Supermarket: Default {
		lootChance = 0.6;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.3;
		zombieClass[] = {"zZombie_Base","zZombie_Base","z_teacher","z_suit1","z_suit2"};
		lootType[] = {
			{"ItemCompass","weapon",0.04},
			{"ItemMap","weapon",0.04},
			{"ItemFlashlight","weapon",0.04},
			{"ItemKnife","weapon",0.04},
			{"ItemMatchbox_DZE","weapon",0.04},
			{"ItemHatchet_DZE","weapon",0.04},
			{"ItemMachete","weapon",0.04},
			{"","generic",0.17},
            { "Binocular","weapon",0.05 },
			{ "","trash",0.2 },
			{"ItemFishingPole","weapon",0.04},
			{"ItemShovel","weapon",0.04},
			{ "","tents",0.08 },
			{ "pistols_bric", "cfglootweapon", 0.1 },
			{ "PartPlywoodPack", "magazine", 0.02 },
			{ "PartPlankPack", "magazine", 0.02 }
		};
		lootTypeSmall[] = {
			{ "ItemWatch","weapon",0.12 },
			{ "ItemCompass","weapon",0.13 },
			{ "ItemMap","weapon",0.13 },
			{ "ItemFlashlight","weapon",0.11 },
			{ "ItemKnife","weapon",0.04 },
			{ "ItemMatchbox_DZE","weapon",0.04 },
			{ "ItemRadio","weapon",0.04 },
			{ "","generic",0.11 },
			{ "ItemShovel","weapon",0.1 },
			{ "","food_special",0.01 },
			{ "","trash",0.15 },
			{ "Binocular","weapon",0.02 }
		};
	};
	class MedicalCrash: Default {
		zombieChance = 0.4;
		maxRoaming = 2;
		zombieClass[] = {"z_doctor"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{"","hospital",0.60},
			{"MedBox0","magazine",0.1},
			{"pistols_bric", "cfglootweapon", 0.05},
			{"","food_special",0.25}
		};
	};
	class HeliCrash: Default {
		zombieChance = 0.4;
		maxRoaming = 2;
		zombieClass[] = {"z_soldier_pilot"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{ "assaultrifles", "cfglootweapon", 0.30 },
			{ "submachinegun", "cfglootweapon", 0.15 },
			{ "sniperrifles", "cfglootweapon", 0.01 },
			{ "machineguns", "cfglootweapon", 0.04 },
			{ "militaryshotguns", "cfglootweapon", 0.03 },
			{ "pistols", "cfglootweapon", 0.05},
			{ "","military",0.22},
			{ "","explosives_nato",0.03},
			{ "AmmoBoxSmall_556","magazine",0.05},
			{ "AmmoBoxSmall_762","magazine",0.02},
			{ "","militaryclothes",0.04},
			{ "","mounted_ammo_nato",0.02}
		};
	};
	class HeliCrash_BRIC: Default {
		zombieChance = 0.4;
		maxRoaming = 2;
		zombieClass[] = {"z_soldier_pilot"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{ "assaultrifles_bric_high", "cfglootweapon", 0.13 },
			{ "submachinegun_bric", "cfglootweapon", 0.05 },
			{ "sniperrifles_bric", "cfglootweapon", 0.21 },
			{ "machineguns_bric_high", "cfglootweapon", 0.2 },
			{ "pistols_bric", "cfglootweapon", 0.05},
			{ "assaultrifleammo_bric", "assaultrifleammo_bric", 0.05 },
			{ "","military_bric",0.2},
			{ "","explosives_bric",0.03},
			{ "","mounted_ammo_bric",0.02},
			{ "","militaryclothes",0.06}
		};
	};
	class PlaneCrash: Default {
		zombieChance = 0.4;
		maxRoaming = 2;
		zombieClass[] = {"z_soldier_pilot"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{ "assaultrifles", "cfglootweapon", 0.3 },
			{ "submachinegun", "cfglootweapon", 0.15 },
			{ "sniperrifles", "cfglootweapon", 0.01 },
			{ "machineguns", "cfglootweapon", 0.06 },
			{ "militaryshotguns", "cfglootweapon", 0.03 },
			{ "pistols", "cfglootweapon", 0.09},
			{ "","military",0.1},
			{ "","explosives_nato",0.03},
			{ "AmmoBoxSmall_556","magazine",0.05},
			{ "AmmoBoxSmall_762","magazine",0.03},
			{ "","militaryclothes",0.11},
			{ "","mounted_ammo_nato",0.02}
		};
	};
	
	class C130JCrash: Default {
		zombieChance = 0.8;
		maxRoaming = 10;
		zombieClass[] = {"z_soldier_pilot"};
		lootChance = 0.7;
		lootPos[] = {};
		lootType[] = {
			{ "assaultrifles", "cfglootweapon", 0.3 },
			{ "submachinegun", "cfglootweapon", 0.15 },
			{ "sniperrifles", "cfglootweapon", 0.01 },
			{ "machineguns", "cfglootweapon", 0.06 },
			{ "militaryshotguns", "cfglootweapon", 0.03 },
			{ "pistols", "cfglootweapon", 0.09},
			{ "treasure","magazine", 0.1 },
			{ "","explosives_nato",0.03},
			{ "AmmoBoxSmall_556","magazine",0.05},
			{ "AmmoBoxSmall_762","magazine",0.03},
			{ "","militaryclothes",0.11},
			{ "","mounted_ammo_nato",0.02}
		};
	};
	
	class PlaneCrash_BRIC: Default {
		zombieChance = 0.4;
		maxRoaming = 2;
		zombieClass[] = {"z_soldier_pilot"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{ "assaultrifles_bric_high", "cfglootweapon", 0.16 },
			{ "submachinegun_bric", "cfglootweapon", 0.1 },
			{ "sniperrifles_bric", "cfglootweapon", 0.21 },
			{ "machineguns_bric_high", "cfglootweapon", 0.11 },
			{ "pistols_bric", "cfglootweapon", 0.1},
			{ "", "assaultrifleammo_bric", 0.06 },
			{ "","military_bric",0.1},
			{ "","explosives_bric",0.03},
			{ "","militaryclothes",0.11},
			{ "","mounted_ammo_bric",0.02}
		};
	};

	class Hospital: Default {
		zombieChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieClass[] = {"z_doctor","z_doctor","z_doctor"};
		lootChance = 1;
		lootPos[] = {};
		lootType[] = {
			{"","trash",0.3},
			{"","hospital",0.7}
		};
		lootTypeSmall[] = {
			{ "","trash",0.1 },
			{ "","hospital",0.9 }
		};
	};
	
	class MilitaryCity: Default {
		zombieChance = 0.3;
		maxRoaming = 6;
		zombieClass[] = {"z_soldier","z_soldier_heavy","z_policeman"};
		lootChance = 0.6;
		lootPos[] = {};
		lootType[] = {
			{ "pistols_bric", "cfglootweapon", 0.26},
			{ "militaryshotguns_bric", "cfglootweapon", 0.15 },
			{ "submachinegun_bric", "cfglootweapon", 0.13 },
			{"Binocular","weapon",0.05},
			{"ItemFlashlightRed","weapon",0.04},
			{"ItemKnife","weapon",0.04},
			{"ItemMap","weapon",0.02},
			{"","militarybackpacks",0.05},
			{"ItemHatchet_DZE","weapon",0.05},
			{"","medical",0.03},
			{"","generic",0.1},
			{"ItemEtool","weapon",0.02},
			{"ItemSandbag","magazine",0.02}
		};
		lootTypeSmall[] = {
			{ "Binocular", "weapon", 0.05 },
			{ "ItemFlashlightRed", "weapon", 0.03 },
			{ "ItemKnife", "weapon", 0.04 },
			{ "ItemGPS", "weapon", 0.02 },
			{ "ItemRadio", "weapon", 0.02 },
			{ "", "medical", 0.12 },
			{ "", "generic", 0.20 },
			{ "", "military_bric", 0.47 },
			{ "","militaryclothes",0.02},
			{ "ItemEtool", "weapon", 0.03 }
		};
	};
	
	class Military: Default {
		zombieChance = 0.3;
		maxRoaming = 6;
		zombieClass[] = {"z_soldier","z_soldier_heavy","z_policeman"};
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {
			{ "pistols_bric", "cfglootweapon", 0.07},
			{ "assaultrifles_bric", "cfglootweapon", 0.08 },
			{ "militaryshotguns_bric", "cfglootweapon", 0.06 },
			{ "submachinegun_bric", "cfglootweapon", 0.07 },
			{ "Binocular","weapon",0.04 },
			{ "ItemFlashlightRed","weapon",0.05 },
			{ "ItemKnife","weapon",0.01 },
			{ "ItemMap","weapon",0.02 },
			{ "","militarybackpacks",0.05 },
			{ "","medical",0.08 },
			{ "","generic",0.1 },
			{ "","military_bric",0.3 },
			{ "ItemEtool","weapon",0.03 },
			{ "ItemSandbag","magazine",0.03 },
			{ "machineguns_bric", "cfglootweapon", 0.01 }
		};
		lootTypeSmall[] = {
			{ "Binocular", "weapon", 0.05 },
			{ "ItemFlashlightRed", "weapon", 0.03 },
			{ "ItemKnife", "weapon", 0.04 },
			{ "ItemGPS", "weapon", 0.02 },
			{ "ItemRadio", "weapon", 0.02 },
			{ "","militaryclothes",0.05},
			{ "", "medical", 0.1 },
			{ "", "generic", 0.22 },
			{ "", "military_bric", 0.44 },
			{ "ItemEtool", "weapon", 0.03 }
		};
	};
	
	class MilitaryIndustrial: Default {
		zombieChance = 0.3;
		maxRoaming = 6;
		zombieClass[] = {"z_soldier","z_soldier_heavy","z_policeman","z_soldier","z_soldier_heavy","z_policeman","z_worker1","z_worker2","z_worker3"};
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {
			{ "pistols_bric", "cfglootweapon", 0.07 },
			{ "assaultrifles_bric", "cfglootweapon", 0.04 },
			{ "militaryshotguns_bric", "cfglootweapon", 0.06 },
			{ "submachinegun_bric", "cfglootweapon", 0.06 },
			{ "PartGeneric","magazine",0.03 },
			{ "PartWheel","magazine",0.02 },
			{ "Binocular","weapon",0.03 },
			{ "ItemFlashlightRed","weapon",0.03 },
			{ "ItemKnife","weapon",0.06 },
			{ "PartFueltank","magazine",0.03 },
			{ "PartEngine","magazine",0.04 },
			{ "PartGlass","magazine",0.05 },
			{ "ItemEtool","weapon",0.03 },
			{ "ItemSandbag","magazine",0.02 },
			{ "","medical",0.05 },
			{ "","generic",0.35 },
			{ "","military_bric",0.07 },
			{ "machineguns_bric", "cfglootweapon", 0.01 }
		};
		lootTypeSmall[] = {
			{ "Binocular", "weapon", 0.05 },
			{ "ItemFlashlightRed", "weapon", 0.03 },
			{ "ItemKnife", "weapon", 0.04 },
			{ "ItemGPS", "weapon", 0.02 },
			{ "ItemRadio", "weapon", 0.02 },
			{ "", "medical", 0.1 },
			{ "", "generic", 0.36 },
			{ "", "military_bric", 0.35 },
			{ "ItemEtool", "weapon", 0.03 }
		};
	};

	class MilitarySpecial: Default {
		zombieChance = 0.4;
		minRoaming = 2;
		maxRoaming = 6;
		zombieClass[] = {"z_soldier_heavy"};
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {
			{ "assaultrifles_bric_high", "cfglootweapon", 0.11 },
			{ "machineguns_bric_high", "cfglootweapon", 0.03 },
			{ "pistols_bric", "cfglootweapon", 0.07 },
			{ "sniperrifles_bric", "cfglootweapon", 0.04 },
			{ "Binocular","weapon",0.02},
			{ "ItemRadio","weapon",0.1},
			{ "ItemFlashlightRed","weapon",0.02},
			{ "ItemKnife","weapon",0.04},
			{ "ItemMap","weapon",0.04},
			{ "Binocular_Vector","weapon",0.01},
			{ "","militarybackpacks",0.04},
			{ "","medical",0.1},
			{ "","generic",0.18},
			{ "","military_bric",0.18},
			{ "","machinegunammo_bric",0.02}
		};
		lootTypeSmall[] = {
			{ "","assaultrifleammo_bric",0.04 },
			{ "Binocular","weapon",0.07 },
			{ "ItemFlashlightRed","weapon",0.01 },
			{ "ItemKnife","weapon",0.02 },
			{ "ItemGPS","weapon",0.02 },
			{ "ItemRadio","weapon",0.02 },
			{ "ItemMap","weapon",0.06 },
			{ "Binocular_Vector","weapon",0.03},
            { "","militaryclothes",0.05},
			{ "","medical",0.08},
			{ "","generic",0.22},
			{ "","military_bric",0.38 }
		};
	};
	class Hunting: Default {
		zombieChance = 0.4;
		minRoaming = 1;
		maxRoaming = 3;
		zombieClass[] = {"z_hunter","z_hunter","z_hunter"};
		lootChance = 1;
		lootPos[] = {};
		lootType[] = {
			{"ItemMap","weapon",0.05},
            {"ItemFlashlight","weapon",0.05},
            {"ItemKnife","weapon",0.05},
            {"ItemMatchbox_DZE","weapon",0.05},
            {"ItemRadio","weapon",0.05},
            {"huntingrifle", "weapon", 0.05},
            {"Crossbow_DZ","weapon", 0.15},
            {"farmweapons", "cfglootweapon", 0.3 },
            {"pistols_bric", "cfglootweapon", 0.18},
            {"","military_bric",0.07},
            {"", "hunter",0.45}
		};
		lootTypeSmall[] =	{
			{ "ItemMap","weapon",0.06},
			{ "ItemFlashlight","weapon",0.02},
			{ "ItemKnife","weapon",0.06},
			{ "ItemMatchbox_DZE","weapon",0.06},
			{ "ItemRadio","weapon",0.1},
			{ "", "hunter_clothes", 0.1 },
			{ "","military_bric",0.2},
			{ "5x_22_LR_17_HMR","magazine", 0.12},
			{ "","hunter",0.3}
		};
	};
	class DynamicDebris: Default
	{
		lootChance = 0.4;
		minRoaming = 0;
		maxRoaming = 2;
		zombieChance = 0.3;
		zombieClass[] = {"zZombie_Base","zZombie_Base","z_teacher","z_suit1","z_suit2"};
		lootType[] = {
			{ "ItemWatch", "weapon", 0.19 },
			{ "ItemCompass", "weapon", 0.01 },
			{ "ItemMap", "weapon", 0.06 },
			{ "Makarov", "weapon", 0.02 },
			{ "Colt1911", "weapon", 0.02 },
			{ "ItemFlashlight", "weapon", 0.04 },
			{ "ItemKnife", "weapon", 0.06 },
			{ "ItemMatchbox_DZE", "weapon", 0.06 },
			{ "ItemToolbox", "weapon", 0.02 },
			{ "ItemCrowbar", "weapon", 0.02 },
			{ "", "generic", 0.23 },
			{ "PartGeneric", "magazine", 0.07 },
			{ "PartWheel", "magazine", 0.06 },
			{ "PartFueltank", "magazine", 0.03 },
			{ "PartEngine", "magazine", 0.01 },
			{ "PartGlass", "magazine", 0.08 },
			{ "ItemJerrycanEmpty", "magazine", 0.03 }
		};
	};
	class DynamicDebrisMilitary: Default
	{
		lootChance = 0.4;
		minRoaming = 0;
		maxRoaming = 2;
		zombieChance = 0.3;
		zombieClass[] = {"z_soldier_pilot","z_soldier_heavy"};
		lootType[] = {
			{ "ItemEtool", "weapon", 0.05 },
			{ "ItemSandbag", "magazine", 0.1 },
			{ "", "military_bric", 0.08 },
			{ "ItemWatch", "weapon", 0.1 },
			{ "ItemCompass", "weapon", 0.02 },
			{ "ItemMap", "weapon", 0.05 },
			{ "MakarovSD", "weapon", 0.01 },
			{ "Colt1911", "weapon", 0.02 },
			{ "ItemFlashlight", "weapon", 0.01 },
			{ "ItemKnife", "weapon", 0.04 },
			{ "ItemMatchbox_DZE", "weapon", 0.04 },
			{ "ItemToolbox", "weapon", 0.02 },
			{ "ItemCrowbar", "weapon", 0.02 },
			{ "", "generic", 0.20 },
			{ "PartGeneric", "magazine", 0.06 },
			{ "PartWheel", "magazine", 0.05 },
			{ "PartFueltank", "magazine", 0.03 },
			{ "PartEngine", "magazine", 0.02 },
			{ "PartGlass", "magazine", 0.03 },
			{ "ItemJerrycanEmpty", "magazine", 0.03 }
		};
	};
	class SupplyDrop: Default {
		zombieChance = 1;
		maxRoaming = 3;
		zombieClass[] = {"zZombie_Base","z_hunter","z_hunter","z_hunter","z_villager1","z_villager2","z_villager3","z_doctor","z_soldier_pilot","z_soldier_heavy"};
		lootChance = 1;
		lootPos[] = {};
		lootType[] = {
			{ "PartPlywoodPack", "magazine", 0.3},
			{ "PartPlankPack", "magazine", 0.3 },
			{ "bulk_PartGeneric", "magazine", 0.2 },
			{ "bulk_ItemSandbag", "magazine", 0.1 },
			{ "bulk_ItemTankTrap", "magazine", 0.1 }
		};
	};

	#include "CfgBuildingPos.hpp"
	//If you want to copypast your loottable to your mission w/o
	//changing something on the lootPos then use the a include instead of copypasting the CfgBuildingPos.hpp
	//#include "\dayz_epoch_b\CfgBuildingPos.hpp"
};