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
			{"ItemKnife","object",0.01},
			{"ItemMap","object",0.01},
			{"ItemCompass","object",0.01},
			{"ItemFlashlight","object",0.01},
			{"ItemHatchet_DZE","object",0.01},
			{"WeaponHolder_ItemTent","object",0.01},
			{"PartWoodPile","object",0.04},
			{"pistols_bric", "cfglootweapon", 0.1 },
			{"submachinegun_bric", "cfglootweapon", 0.1 },
			{"","generic",0.2}
		};
	};
	class Residential: Default {
		zombieChance = 0.3;
		maxRoaming = 2;
		zombieClass[] = {"zZombie_Base","z_hunter","z_teacher","z_villager1","z_villager2","z_villager3"};
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {
			{"ItemWatch","object",0.02},
			{"ItemFlashlight","object",0.02},
			{"ItemKnife","object",0.02},
			{"ItemMatchbox_DZE","object",0.02},
			{"ItemFishingPole","object",0.07},
			{"","backpacks",0.1},
			{"","generic",0.25},
			{"","trash",0.16},
			{"ItemCanvas","object",0.04},
			{"ItemDocument", "object",0.02},
			{"Binocular","object",0.02},
			{"","clothes",0.06},
			{"","specialclothes",0.04},
			{"pistols_bric", "cfglootweapon", 0.06 },
			{"WeaponHolder_ItemMachete","object",0.02},
			{"shotgunsingleshot", "cfglootweapon", 0.08 }
		};
		lootTypeSmall[] = {
			{ "ItemWatch","object",0.05 },
			{ "ItemFlashlight","object",0.09 },
			{ "ItemKnife","object",0.04 },
			{ "ItemMatchbox_DZE","object",0.05 },
			{ "","food",0.04 },
			{ "","generic",0.34 },
			{ "","trash",0.29 },
			{ "Binocular","object",0.02 },
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
			{"ItemWatch","object",0.04},
			{"ItemFlashlight","object",0.04},
			{"","trash",0.2},
			{"","office",0.32},
			{"Binocular","object",0.05},
			{"ItemRadio","object",0.01},
			{"ItemCrowbar","object",0.04},
			{"pistols_bric","cfglootweapon",0.15 },
			{"shotgunsingleshot", "cfglootweapon", 0.15}
		};
		lootTypeSmall[] = {
			{ "ItemWatch","object",0.05 },
			{ "ItemCompass","object",0.05 },
			{ "ItemMap","object",0.05 },
			{ "ItemFlashlight","object",0.05 },
			{ "","generic",0.5 },
			{ "","trash",0.2 },
			{ "Binocular","object",0.06 },
			{ "ItemDocument","object",0.04 }
		};
	};
	class Industrial: Default {
		zombieChance = 0.4;
		zombieClass[] = {"z_worker1","z_worker2","z_worker3"};
		maxRoaming = 2;
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {
			{"ItemGenerator","object",0.01},
			{"ItemFuelBarrelEmpty","object",0.01},
			{"","generic",0.12},
			{"","trash",0.10},
			{"","military_bric",0.04},
			{"PartGeneric","object",0.04},
			{"PartWheel","object",0.05},
			{"PartFueltank","object",0.02},
			{"PartEngine","object",0.02},
			{"PartGlass","object",0.04},
			{"ItemJerrycanEmpty","object",0.04},
			{"ItemHatchet_DZE","object",0.07},
			{"ItemKnife","object",0.07},
			{"ItemToolbox","object",0.06},
			{"ItemCrowbar","object",0.05},
			{"WeaponHolder_ItemMachete","object",0.05},
			{"ItemWire","object",0.04},
			{"ItemTankTrap","object",0.05},
			{"ItemKeyKit","object",0.01},
			{"CinderBlocks","object",0.01},
			{"PartPlywoodPack", "object", 0.05},
			{"PartPlankPack", "object", 0.05}
		};
		lootTypeSmall[] = {
			{ "","generic",0.5 },
			{ "","trash",0.20 },
			{ "ItemCanvas","object",0.04 },
			{ "ItemPole","object",0.04 },
			{ "","military_bric",0.14 },
			{ "ItemKnife","object",0.07 }
		};
	};
	class IndustrialFuel: Default {
		zombieChance = 0.4;
		zombieClass[] = {"z_worker1","z_worker2","z_worker3"};
		maxRoaming = 2;
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {
			{"ItemGenerator","object",0.01},
			{"fuel_pump_kit","object",0.01},
			{"","generic",0.18},
			{"","trash",0.22},
			{"","military_bric",0.04},
			{"PartGeneric","object",0.04},
			{"PartWheel","object",0.05},
			{"PartFueltank","object",0.02},
			{"PartEngine","object",0.02},
			{"PartGlass","object",0.04},
			{"ItemJerrycanEmpty","object",0.04},
			{"ItemHatchet_DZE","object",0.07},
			{"ItemKnife","object",0.07},
			{"ItemToolbox","object",0.06},
			{"ItemCrowbar","object",0.06}
		};
		lootTypeSmall[] = {
			{ "","generic",0.5 },
			{ "","trash",0.28 },
			{ "","military_bric",0.14 },
			{ "ItemKnife","object",0.07 }
		};
	};
	class Farm: Default {
		zombieChance = 0.3;
		maxRoaming = 3;
		zombieClass[] = {"zZombie_Base","z_hunter","z_hunter","z_hunter","z_villager1","z_villager2","z_villager3"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{"ItemJerrycanEmpty","object",0.05},
			{"","generic",0.25},
			{"","trash",0.11},
			{"PartPlankPack","object",0.06},
			{"ItemHatchet_DZE","object",0.05},
			{"ItemFuelBarrelEmpty","object",0.01},
			{"WeaponHolder_ItemMachete","object",0.03},
			{"ItemFishingPole","object",0.07},
			{"ItemLightBulb","object",0.02},
			{"ItemSledgeHandle","object",0.02},
			{"farmweapons","cfglootweapon", 0.15}
		};
		lootTypeSmall[] = {
			{ "","generic", 0.79},
			{ "","trash",0.14 },
			{ "","military_bric",0.05},
			{ "ItemSledgeHead","object",0.02}
		};
	};
	class Supermarket: Default {
		lootChance = 0.6;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.3;
		zombieClass[] = {"zZombie_Base","zZombie_Base","z_teacher","z_suit1","z_suit2"};
		lootType[] = {
			{"ItemCompass","object",0.05},
			{"ItemMap","object",0.05},
			{"ItemFlashlight","object",0.05},
			{"ItemKnife","object",0.05},
			{"ItemMatchbox_DZE","object",0.05},
			{"ItemHatchet_DZE","object",0.05},
			{"WeaponHolder_ItemMachete","object",0.05},
			{"","generic",0.13},
            { "Binocular","object",0.04 },
            { "ItemRadio","object",0.01 },
			{ "","trash",0.1 },
			{"ItemFishingPole","object",0.05},
			{ "","tents",0.09 },
			{ "pistols_bric", "cfglootweapon", 0.1 },
			{ "shotgunsingleshot", "cfglootweapon", 0.04 },
			{ "PartPlywoodPack", "object", 0.02 },
			{ "PartPlankPack", "object", 0.02 }
		};
		lootTypeSmall[] = {
			{ "ItemWatch","object",0.12 },
			{ "ItemCompass","object",0.13 },
			{ "ItemMap","object",0.13 },
			{ "ItemFlashlight","object",0.11 },
			{ "ItemKnife","object",0.04 },
			{ "ItemMatchbox_DZE","object",0.08 },
			{ "","generic",0.21 },
			{ "","food_special",0.01 },
			{ "","trash",0.15 },
			{ "Binocular","object",0.02 }
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
			{"MedBox0","object",0.1},
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
			{"PartVRotor","object",0.04},
			{"","military",0.20},
			{"Stinger","magazine",0.01},
			{"M136","magazine",0.03},
			{"AmmoBoxSmall_556","object",0.05},
			{"AmmoBoxSmall_762","object",0.02},
			{"","militaryclothes",0.03},
			{"","militaryammo",0.04}
		};
	};
	class HeliCrash_BRIC: Default {
		zombieChance = 0.4;
		maxRoaming = 2;
		zombieClass[] = {"z_soldier_pilot"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{ "assaultrifles_bric_high", "cfglootweapon", 0.33 },
			{ "submachinegun_bric", "cfglootweapon", 0.05 },
			{ "sniperrifles_bric", "cfglootweapon", 0.01 },
			{ "machineguns_bric", "cfglootweapon", 0.2 },
			{ "pistols_bric", "cfglootweapon", 0.05},
			{ "assaultrifleammo_bric", "assaultrifleammo_bric", 0.05 },
			{"PartVRotor","object",0.04},
			{"","military_bric",0.2},
			{"Strela","magazine",0.01},
			{"PG7V","magazine",0.03},
			{"","militaryclothes",0.03}
		};
	};
	class PlaneCrash: Default {
		zombieChance = 0.4;
		maxRoaming = 2;
		zombieClass[] = {"z_soldier_pilot"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{ "assaultrifles", "cfglootweapon", 0.32 },
			{ "submachinegun", "cfglootweapon", 0.15 },
			{ "sniperrifles", "cfglootweapon", 0.01 },
			{ "machineguns", "cfglootweapon", 0.06 },
			{ "militaryshotguns", "cfglootweapon", 0.03 },
			{ "pistols", "cfglootweapon", 0.09},
			{"","military",0.1},
			{"Stinger","magazine",0.01},
			{"M136","magazine",0.03},
			{"AmmoBoxSmall_556","object",0.05},
			{"AmmoBoxSmall_762","object",0.03},
			{"","militaryclothes",0.1},
			{"","militaryammo",0.02}
		};
	};
	
	class C130JCrash: Default {
		zombieChance = 0.8;
		maxRoaming = 10;
		zombieClass[] = {"z_soldier_pilot"};
		lootChance = 0.7;
		lootPos[] = {};
		lootType[] = {
			{ "assaultrifles", "cfglootweapon", 0.32 },
			{ "submachinegun", "cfglootweapon", 0.15 },
			{ "sniperrifles", "cfglootweapon", 0.01 },
			{ "machineguns", "cfglootweapon", 0.06 },
			{ "militaryshotguns", "cfglootweapon", 0.03 },
			{ "pistols", "cfglootweapon", 0.09},
			{ "treasure","object", 0.1 },
			{"Stinger","magazine",0.01},
			{"M136","magazine",0.03},
			{"AmmoBoxSmall_556","object",0.05},
			{"AmmoBoxSmall_762","object",0.03},
			{"militaryclothes","militaryclothes",0.1},
			{"","militaryammo",0.02}
		};
	};
	
	class PlaneCrash_BRIC: Default {
		zombieChance = 0.4;
		maxRoaming = 2;
		zombieClass[] = {"z_soldier_pilot"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{ "assaultrifles_bric_high", "cfglootweapon", 0.36 },
			{ "submachinegun_bric", "cfglootweapon", 0.1 },
			{ "sniperrifles_bric", "cfglootweapon", 0.01 },
			{ "machineguns_bric", "cfglootweapon", 0.11 },
			{ "pistols_bric", "cfglootweapon", 0.1},
			{ "", "assaultrifleammo_bric", 0.06 },
			{ "","military_bric",0.12},
			{ "Strela","magazine",0.01},
			{ "PG7V","magazine",0.03},
			{ "","militaryclothes",0.1},
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
			{ "militaryshotguns_bric", "cfglootweapon", 0.06 },
			{ "submachinegun_bric", "cfglootweapon", 0.02 },
			{"Binocular","object",0.05},
			{"ItemRadio","object",0.04},
			{"ItemFlashlightRed","object",0.04},
			{"ItemKnife","object",0.04},
			{"ItemGPS","object",0.03},
			{"ItemMap","object",0.02},
			{"militarybackpacks","militarybackpacks",0.05},
			{"ItemHatchet_DZE","object",0.05},
			{"","medical",0.03},
			{"","generic",0.1},
			{"ItemEtool","object",0.02},
			{"ItemSandbag","object",0.02}
		};
		lootTypeSmall[] = {
			{ "Binocular", "object", 0.05 },
			{ "ItemFlashlightRed", "object", 0.03 },
			{ "ItemKnife", "object", 0.04 },
			{ "ItemGPS", "object", 0.02 },
			{ "", "medical", 0.12 },
			{ "", "generic", 0.22 },
			{ "", "military_bric", 0.49 },
			{ "ItemEtool", "object", 0.03 }
		};
	};
	
	class Military: Default {
		zombieChance = 0.3;
		maxRoaming = 6;
		zombieClass[] = {"z_soldier","z_soldier_heavy","z_policeman"};
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {
			{ "pistols_bric", "cfglootweapon", 0.06},
			{ "assaultrifles_bric", "cfglootweapon", 0.13 },
			{ "sniperrifles_bric", "cfglootweapon", 0.01 },
			{ "militaryshotguns_bric", "cfglootweapon", 0.06 },
			{ "submachinegun_bric", "cfglootweapon", 0.07 },
			{"Binocular","object",0.03},
			{"ItemRadio","object",0.01},
			{"ItemFlashlightRed","object",0.04},
			{"ItemKnife","object",0.01},
			{"ItemGPS","object",0.01},
			{"ItemMap","object",0.02},
			{"","militarybackpacks",0.05},
			{"","medical",0.03},
			{"","generic",0.1},
			{"","military_bric",0.3},
			{"ItemEtool","object",0.03},
			{"ItemSandbag","object",0.03},
			{ "machineguns_bric", "cfglootweapon", 0.01 }
		};
		lootTypeSmall[] = {
			{ "Binocular", "object", 0.05 },
			{ "ItemFlashlightRed", "object", 0.03 },
			{ "ItemKnife", "object", 0.04 },
			{ "ItemGPS", "object", 0.02 },
			{ "", "medical", 0.12 },
			{ "", "generic", 0.22 },
			{ "", "military_bric", 0.49 },
			{ "ItemEtool", "object", 0.03 }
		};
	};
	
	class MilitaryIndustrial: Default {
		zombieChance = 0.3;
		maxRoaming = 6;
		zombieClass[] = {"z_soldier","z_soldier_heavy","z_policeman","z_soldier","z_soldier_heavy","z_policeman","z_worker1","z_worker2","z_worker3"};
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {
			{ "pistols_bric", "cfglootweapon", 0.02 },
			{ "assaultrifles_bric", "cfglootweapon", 0.06 },
			{ "sniperrifles_bric", "cfglootweapon", 0.01 },
			{ "militaryshotguns_bric", "cfglootweapon", 0.06 },
			{ "submachinegun_bric", "cfglootweapon", 0.05 },
			{ "PartGeneric", "object", 0.03 },
			{"PartGeneric","object",0.03},
			{"PartWheel","object",0.02},
			{"Binocular","object",0.01},
			{"ItemRadio","object",0.01},
			{"ItemFlashlightRed","object",0.03},
			{"ItemKnife","object",0.04},
			{"ItemGPS","object",0.01},
			{"","medical",0.05},
			{"","generic",0.37},
			{"","military_bric",0.07},
			{"ItemEtool","object",0.03},
			{"ItemSandbag","object",0.02},
			{"ItemFuelBarrelEmpty","object",0.03},
			{"fuel_pump_kit","object",0.01},
			{ "machineguns_bric", "cfglootweapon", 0.01 }
		};
		lootTypeSmall[] = {
			{ "Binocular", "object", 0.05 },
			{ "ItemFlashlightRed", "object", 0.03 },
			{ "ItemKnife", "object", 0.04 },
			{ "ItemGPS", "object", 0.02 },
			{ "", "medical", 0.12 },
			{ "", "generic", 0.36 },
			{ "", "military_bric", 0.35 },
			{ "ItemEtool", "object", 0.03 }
		};
	};
	class IndustrialMilitary: Default {
		zombieChance = 0.4;
		maxRoaming = 6;
		zombieClass[] = {"z_soldier","z_soldier_heavy","z_policeman","z_soldier","z_soldier_heavy","z_policeman","z_worker1","z_worker2","z_worker3"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{ "pistols_bric", "cfglootweapon", 0.02 },
			{ "assaultrifles_bric", "cfglootweapon", 0.09 },
			{ "sniperrifles_bric", "cfglootweapon", 0.01 },
			{ "militaryshotguns_bric", "cfglootweapon", 0.06 },
			{ "submachinegun_bric", "cfglootweapon", 0.06 },
			{ "PartGeneric", "object", 0.03 },
			{"PartGeneric","object",0.03},
			{"PartWheel","object",0.02},
			{"Binocular","object",0.01},
			{"ItemRadio","object",0.01},
			{"ItemFlashlightRed","object",0.03},
			{"ItemKnife","object",0.06},
			{"ItemGPS","object",0.01},
			{"PartFueltank","object",0.03},
			{"PartEngine","object",0.04},
			{"PartGlass","object",0.05},
			{"ItemEtool","object",0.03},
			{"ItemSandbag","object",0.02},
			{"","medical",0.05},
			{"","generic",0.25},
			{"","military_bric",0.07},
			{ "machineguns_bric", "cfglootweapon", 0.01 }
		};
		lootTypeSmall[] = {
			{ "Binocular", "object", 0.05 },
			{ "ItemFlashlightRed", "object", 0.03 },
			{ "ItemKnife", "object", 0.04 },
			{ "ItemGPS", "object", 0.02 },
			{ "", "medical", 0.12 },
			{ "", "generic", 0.36 },
			{ "", "military_bric", 0.35 },
			{ "ItemEtool", "object", 0.03 }
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
			{ "assaultrifles_bric_high", "cfglootweapon", 0.16 },
			{ "machineguns_bric", "cfglootweapon", 0.02 },
			{ "pistols_bric", "cfglootweapon", 0.17 },
			{"sniperrifles_bric", "cfglootweapon", 0.01 },
			{"Binocular","object",0.02},
			{"ItemRadio","object",0.05},
			{"ItemFlashlightRed","object",0.02},
			{"ItemKnife","object",0.01},
			{"ItemGPS","object",0.01},
			{"ItemMap","object",0.01},
			{"Binocular_Vector","object",0.01},
			{"","militarybackpacks",0.04},
			{"","medical",0.05},
			{"","generic",0.3},
			{"","military_bric",0.01},
			{"","machinegunammo_bric",0.05},
			{"","militaryclothes",0.05}
		};
		lootTypeSmall[] = {
			{ "","assaultrifleammo_bric",0.04 },
			{ "Binocular","object",0.12 },
			{ "ItemFlashlightRed","object",0.01 },
			{ "ItemKnife","object",0.02 },
			{ "ItemGPS","object",0.02 },
			{ "ItemMap","object",0.06 },
			{ "Binocular_Vector","object",0.03},
			{ "","medical",0.08},
			{ "","generic",0.22},
			{ "","military_bric",0.38 },
			{ "","machinegunammoexpl",0.02 }
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
			{"ItemMap","object",0.05},
            {"ItemFlashlight","object",0.05},
            {"ItemKnife","object",0.05},
            {"ItemMatchbox_DZE","object",0.05},
            {"WeaponHolder_ItemMachete","object",0.05},
            {"huntingrifle", "weapon", 0.03},
            {"Crossbow_DZ","weapon", 0.1},
            {"farmweapons", "cfglootweapon", 0.3 },
            {"pistols_bric", "cfglootweapon", 0.15},
            {"","military_bric",0.07},
            {"", "hunter_clothes", 0.1 },
            {"", "hunter",0.45}
		};
		lootTypeSmall[] =	{
			{"ItemMap","object",0.06},
			{"ItemFlashlight","object",0.02},
			{"ItemKnife","object",0.06},
			{"ItemMatchbox_DZE","object",0.06},
			{"","military_bric",0.3},
			{"5x_22_LR_17_HMR","object", 0.12},
			{"","hunter",0.4}
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
			{ "ItemWatch", "object", 0.19 },
			{ "ItemCompass", "object", 0.01 },
			{ "ItemMap", "object", 0.06 },
			{ "Makarov", "weapon", 0.02 },
			{ "Colt1911", "weapon", 0.02 },
			{ "ItemFlashlight", "object", 0.04 },
			{ "ItemKnife", "object", 0.06 },
			{ "ItemMatchbox_DZE", "object", 0.06 },
			{ "ItemToolbox", "object", 0.02 },
			{ "ItemCrowbar", "object", 0.02 },
			{ "", "generic", 0.23 },
			{ "PartGeneric", "object", 0.07 },
			{ "PartWheel", "object", 0.06 },
			{ "PartFueltank", "object", 0.03 },
			{ "PartEngine", "object", 0.01 },
			{ "PartGlass", "object", 0.08 },
			{ "ItemJerrycanEmpty", "object", 0.03 }
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
			{ "ItemEtool", "object", 0.05 },
			{ "ItemSandbag", "object", 0.1 },
			{ "", "military_bric", 0.08 },
			{ "ItemWatch", "object", 0.1 },
			{ "ItemCompass", "object", 0.02 },
			{ "ItemMap", "object", 0.05 },
			{ "MakarovSD", "weapon", 0.01 },
			{ "Colt1911", "weapon", 0.02 },
			{ "ItemFlashlight", "object", 0.01 },
			{ "ItemKnife", "object", 0.04 },
			{ "ItemMatchbox_DZE", "object", 0.04 },
			{ "ItemToolbox", "object", 0.02 },
			{ "ItemCrowbar", "object", 0.02 },
			{ "", "generic", 0.20 },
			{ "PartGeneric", "object", 0.06 },
			{ "PartWheel", "object", 0.05 },
			{ "PartFueltank", "object", 0.03 },
			{ "PartEngine", "object", 0.02 },
			{ "PartGlass", "object", 0.03 },
			{ "ItemJerrycanEmpty", "object", 0.03 }
		};
	};
	class SupplyDrop: Default {
		zombieChance = 1;
		maxRoaming = 3;
		zombieClass[] = {"zZombie_Base","z_hunter","z_hunter","z_hunter","z_villager1","z_villager2","z_villager3","z_doctor","z_soldier_pilot","z_soldier_heavy"};
		lootChance = 1;
		lootPos[] = {};
		lootType[] = {
			{ "PartPlywoodPack", "object", 0.3},
			{ "PartPlankPack", "object", 0.3 },
			{ "bulk_PartGeneric", "object", 0.2 },
			{ "bulk_ItemSandbag", "object", 0.1 },
			{ "bulk_ItemTankTrap", "object", 0.1 }
		};
	};

	#include "CfgBuildingPos.hpp"
	//If you want to copypast your loottable to your mission w/o
	//changing something on the lootPos then use the a include instead of copypasting the CfgBuildingPos.hpp
	//#include "\dayz_epoch_b\CfgBuildingPos.hpp"
};