#include "cfgloot.hpp"

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
			{"ItemMap","generic",0.01},
			{"ItemCompass","weapon",0.01},
			{"ItemFlashlight","weapon",0.01},
			{"ItemHatchet_DZE","object",0.01},
			{"WeaponHolder_ItemTent","object",0.01},
			{"PartWoodPile","magazine",0.04},
			{"","generic",0.40}
		};
	};
	class Residential: Default {
		zombieChance = 0.3;
		maxRoaming = 2;
		zombieClass[] = {"zZombie_Base","z_hunter","z_teacher","z_villager1","z_villager2","z_villager3"};
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {
			{"ItemWatch","generic",0.02},
			{"ItemFlashlight","generic",0.02},
			{"ItemKnife","generic",0.02},
			{"ItemMatchbox_DZE","generic",0.02},
			{"","generic",0.32},
			{"backpacks","backpacks",0.1},
			{"","trash",0.2},
			{"ItemDocument", "generic",0.02},
			{"Binocular","weapon",0.02},
			{"clothes","clothes",0.06},
			{"specialclothes","specialclothes",0.04},
			{"pistols_bric", "cfglootweapon", 0.06 },
			{"shotgunsingleshot", "cfglootweapon", 0.1 }
		};
		lootTypeSmall[] = {
			{ "ItemWatch","weapon",0.05 },
			{ "ItemFlashlight","weapon",0.09 },
			{ "ItemKnife","weapon",0.04 },
			{ "ItemMatchbox_DZE","weapon",0.05 },
			{ "","generic",0.38 },
			{ "","trash",0.29 },
			{ "Binocular","weapon",0.02 },
			{ "clothes","single",0.04},
			{ "specialclothes","single",0.04 }
		};
	};
	class Office: Default {
		maxRoaming = 3;
		zombieClass[] = {"z_suit1","z_suit2"};
		zombieChance = 0.3;
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {
			{"ItemWatch","generic",0.04},
			{"ItemFlashlight","generic",0.04},
			{"","trash",0.2},
			{"","office",0.32},
			{"Binocular","weapon",0.05},
			{"ItemRadio","weapon",0.01},
			{"ItemCrowbar","object",0.04},
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
	class Industrial: Default {
		zombieChance = 0.4;
		zombieClass[] = {"z_worker1","z_worker2","z_worker3"};
		maxRoaming = 2;
		lootChance = 0.4;
		lootPos[] = {};
		lootType[] = {
			{"ItemGenerator","magazine",0.01},
			{"ItemFuelBarrelEmpty","magazine",0.01},
			{"","generic",0.17},
			{"","trash",0.10},
			{"","military_bric",0.04},
			{"PartGeneric","magazine",0.04},
			{"PartWheel","magazine",0.05},
			{"PartFueltank","magazine",0.02},
			{"PartEngine","magazine",0.02},
			{"PartGlass","magazine",0.04},
			{"ItemJerrycan","magazine",0.04},
			{"ItemHatchet_DZE","object",0.07},
			{"ItemKnife","military_bric",0.07},
			{"ItemToolbox","weapon",0.06},
			{"ItemCrowbar","weapon",0.05},
			{"ItemWire","magazine",0.04},
			{"ItemTankTrap","magazine",0.05},
			{"ItemKeyKit","weapon",0.01},
			{"CinderBlocks","magazine",0.01},
			{ "PartPlywoodPack", "magazine", 0.05},
			{ "PartPlankPack", "magazine", 0.05 }
		};
		lootTypeSmall[] = {
			{ "","generic",0.5 },
			{ "","trash",0.28 },
			{ "","military_bric",0.14 },
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
			{"ItemJerrycan","magazine",0.04},
			{"ItemHatchet_DZE","weapon",0.07},
			{"ItemKnife","military_bric",0.07},
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
			{"ItemJerrycan","magazine",0.05},
			{"","generic",0.3},
			{"","trash",0.11},
			{"PartPlankPack","magazine",0.06},
			{"ItemHatchet_DZE","weapon",0.05},
			{"ItemFuelBarrelEmpty","magazine",0.01},
			{"WeaponHolder_ItemMachete","object",0.03},
			{"ItemFishingPole","weapon",0.02},
			{"ItemLightBulb","magazine",0.02},
			{"ItemSledgeHandle","magazine",0.02},
			{"farmweapons","cfglootweapon", 0.15}
		};
		lootTypeSmall[] = {
			{ "","generic", 0.79},
			{ "","trash",0.14 },
			{ "","military_bric",0.05},
			{ "ItemSledgeHead","magazine",0.02}
		};
	};
	class Supermarket: Default {
		lootChance = 0.6;
		minRoaming = 2;
		maxRoaming = 6;
		zombieChance = 0.3;
		zombieClass[] = {"zZombie_Base","zZombie_Base","z_teacher","z_suit1","z_suit2"};
		lootType[] = {
			{"ItemCompass","generic",0.05},
			{"ItemMap","generic",0.05},
			{"ItemFlashlight","generic",0.05},
			{"ItemKnife","generic",0.05},
			{"ItemMatchbox_DZE","generic",0.05},
			{"ItemHatchet_DZE","generic",0.05},
			{"","generic",0.20},
            { "Binocular","weapon",0.04 },
            { "ItemRadio","weapon",0.01 },
			{ "","food",0.1 },
			{ "","trash",0.09 },
			{ "tents","tents",0.01 },
			{ "pistols_bric", "cfglootweapon", 0.16 },
			{ "shotgunsingleshot", "cfglootweapon", 0.04 },
			{ "","food_special",0.01 },
			{ "PartPlywoodPack", "magazine", 0.02 },
			{ "PartPlankPack", "magazine", 0.02 }
		};
		lootTypeSmall[] = {
			{ "ItemWatch","weapon",0.12 },
			{ "ItemCompass","weapon",0.13 },
			{ "ItemMap","weapon",0.13 },
			{ "ItemFlashlight","weapon",0.11 },
			{ "ItemKnife","weapon",0.04 },
			{ "ItemMatchbox_DZE","weapon",0.08 },
			{ "","generic",0.21 },
			{ "","trash",0.16 },
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
			{"MedBox0","object",0.1},
			{ "pistols_bric", "cfglootweapon", 0.05},
			{ "","food_special",0.25}
		};
	};
	class HeliCrash: Default {
		zombieChance = 0.4;
		maxRoaming = 2;
		zombieClass[] = {"z_soldier_pilot"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{ "assaultrifles", "cfglootweapon", 0.32 },
			{ "submachinegun", "cfglootweapon", 0.15 },
			{ "sniperrifles", "cfglootweapon", 0.01 },
			{ "machineguns", "cfglootweapon", 0.04 },
			{ "militaryshotguns", "cfglootweapon", 0.03 },
			{ "pistols", "cfglootweapon", 0.05},
			{"PartVRotor","magazine",0.05},
			{"","military",0.20},
			{"Stinger","magazine",0.01},
			{"AmmoBoxSmall_556","object",0.05},
			{"AmmoBoxSmall_762","object",0.02},
			{"militaryclothes","militaryclothes",0.03},
			{"militaryammo","militaryammo",0.04}
		};
	};
	class HeliCrash_BRIC: Default {
		zombieChance = 0.4;
		maxRoaming = 2;
		zombieClass[] = {"z_soldier_pilot"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{ "assaultrifles_bric", "cfglootweapon", 0.35 },
			{ "submachinegun_bric", "cfglootweapon", 0.15 },
			{ "sniperrifles_bric", "cfglootweapon", 0.01 },
			{ "machineguns_bric", "cfglootweapon", 0.1 },
			{ "pistols_bric", "cfglootweapon", 0.05},
			{ "assaultrifleammo_bric", "assaultrifleammo_bric", 0.05 },
			{"PartVRotor","magazine",0.05},
			{"","military_bric",0.2},
			{"Igla","magazine",0.01},
			{"militaryclothes","militaryclothes",0.03}
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
			{ "pistols", "cfglootweapon", 0.12},
			{"","military",0.1},
			{"Stinger","magazine",0.01},
			{"AmmoBoxSmall_556","object",0.05},
			{"AmmoBoxSmall_762","object",0.03},
			{"militaryclothes","militaryclothes",0.1},
			{"militaryammo","militaryammo",0.02}
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
			{ "pistols", "cfglootweapon", 0.12},
			{ "treasure","object", 0.1 },
			{"Stinger","magazine",0.01},
			{"AmmoBoxSmall_556","object",0.05},
			{"AmmoBoxSmall_762","object",0.03},
			{"militaryclothes","militaryclothes",0.1},
			{"militaryammo","militaryammo",0.02}
		};
	};
	
	class PlaneCrash_BRIC: Default {
		zombieChance = 0.4;
		maxRoaming = 2;
		zombieClass[] = {"z_soldier_pilot"};
		lootChance = 0.5;
		lootPos[] = {};
		lootType[] = {
			{ "assaultrifles_bric", "cfglootweapon", 0.36 },
			{ "submachinegun_bric", "cfglootweapon", 0.2 },
			{ "sniperrifles_bric", "cfglootweapon", 0.01 },
			{ "machineguns_bric", "cfglootweapon", 0.01 },
			{ "pistols_bric", "cfglootweapon", 0.1},
			{ "assaultrifleammo_bric", "assaultrifleammo_bric", 0.06 },
			{"","military_bric",0.15},
			{"Igla","magazine",0.01},
			{"militaryclothes","militaryclothes",0.1},
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
			{"Binocular","weapon",0.05},
			{"ItemRadio","weapon",0.04},
			{"ItemFlashlightRed","military_bric",0.04},
			{"ItemKnife","military_bric",0.04},
			{"ItemGPS","weapon",0.03},
			{"ItemMap","military_bric",0.02},
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
			{ "", "medical", 0.12 },
			{ "", "generic", 0.22 },
			{ "", "military_bric", 0.49 },
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
			{ "pistols_bric", "cfglootweapon", 0.06},
			{ "assaultrifles_bric", "cfglootweapon", 0.13 },
			{ "sniperrifles_bric", "cfglootweapon", 0.01 },
			{ "militaryshotguns_bric", "cfglootweapon", 0.06 },
			{ "submachinegun_bric", "cfglootweapon", 0.07 },
			{"Binocular","weapon",0.03},
			{"ItemRadio","weapon",0.01},
			{"ItemFlashlightRed","military_bric",0.04},
			{"ItemKnife","military_bric",0.01},
			{"ItemGPS","weapon",0.01},
			{"ItemMap","military_bric",0.02},
			{"militarybackpacks","militarybackpacks",0.05},
			{"","medical",0.03},
			{"","generic",0.1},
			{"","military_bric",0.3},
			{"ItemEtool","weapon",0.03},
			{"ItemSandbag","magazine",0.03},
			{ "machineguns_bric", "cfglootweapon", 0.01 }
		};
		lootTypeSmall[] = {
			{ "Binocular", "weapon", 0.05 },
			{ "ItemFlashlightRed", "weapon", 0.03 },
			{ "ItemKnife", "weapon", 0.04 },
			{ "ItemGPS", "weapon", 0.02 },
			{ "", "medical", 0.12 },
			{ "", "generic", 0.22 },
			{ "", "military_bric", 0.49 },
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
			{ "pistols_bric", "cfglootweapon", 0.02 },
			{ "assaultrifles_bric", "cfglootweapon", 0.06 },
			{ "PartGeneric", "magazine", 0.03 },
			{ "sniperrifles_bric", "cfglootweapon", 0.01 },
			{ "militaryshotguns_bric", "cfglootweapon", 0.06 },
			{ "submachinegun_bric", "cfglootweapon", 0.05 },
			{"PartGeneric","magazine",0.03},
			{"PartWheel","magazine",0.02},
			{"Binocular","weapon",0.01},
			{"ItemRadio","weapon",0.01},
			{"ItemFlashlightRed","military_bric",0.03},
			{"ItemKnife","military_bric",0.04},
			{"ItemGPS","weapon",0.01},
			{"","medical",0.05},
			{"","generic",0.37},
			{"","military_bric",0.07},
			{"ItemEtool","weapon",0.03},
			{"ItemSandbag","magazine",0.02},
			{"ItemFuelBarrelEmpty","magazine",0.03},
			{"fuel_pump_kit","magazine",0.01},
			{ "machineguns_bric", "cfglootweapon", 0.01 }
		};
		lootTypeSmall[] = {
			{ "Binocular", "weapon", 0.05 },
			{ "ItemFlashlightRed", "weapon", 0.03 },
			{ "ItemKnife", "weapon", 0.04 },
			{ "ItemGPS", "weapon", 0.02 },
			{ "", "medical", 0.12 },
			{ "", "generic", 0.36 },
			{ "", "military_bric", 0.35 },
			{ "ItemEtool", "weapon", 0.03 }
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
			{ "PartGeneric", "magazine", 0.03 },
			{ "sniperrifles_bric", "cfglootweapon", 0.01 },
			{ "militaryshotguns_bric", "cfglootweapon", 0.06 },
			{ "submachinegun_bric", "cfglootweapon", 0.06 },
			{"PartGeneric","magazine",0.03},
			{"PartWheel","magazine",0.02},
			{"Binocular","weapon",0.01},
			{"ItemRadio","weapon",0.01},
			{"ItemFlashlightRed","military_bric",0.03},
			{"ItemKnife","military_bric",0.06},
			{"ItemGPS","weapon",0.01},
			{"PartFueltank","magazine",0.03},
			{"PartEngine","magazine",0.04},
			{"PartGlass","magazine",0.05},
			{"","medical",0.05},
			{"","generic",0.25},
			{"","military_bric",0.07},
			{"ItemEtool","weapon",0.03},
			{"ItemSandbag","magazine",0.02},
			{ "machineguns_bric", "cfglootweapon", 0.01 }
		};
		lootTypeSmall[] = {
			{ "Binocular", "weapon", 0.05 },
			{ "ItemFlashlightRed", "weapon", 0.03 },
			{ "ItemKnife", "weapon", 0.04 },
			{ "ItemGPS", "weapon", 0.02 },
			{ "", "medical", 0.12 },
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
			{ "assaultrifles_bric_high", "cfglootweapon", 0.16 },
			{ "machineguns_bric", "cfglootweapon", 0.02 },
			{ "pistols_bric", "cfglootweapon", 0.17 },
			{"sniperrifles_bric", "cfglootweapon", 0.01 },
			{"Binocular","weapon",0.02},
			{"ItemRadio","weapon",0.05},
			{"ItemFlashlightRed","military_bric",0.02},
			{"ItemKnife","military_bric",0.01},
			{"ItemGPS","weapon",0.01},
			{"ItemMap","military_bric",0.01},
			{"Binocular_Vector","military_bric",0.01},
			{"militarybackpacks","militarybackpacks",0.04},
			{"","medical",0.05},
			{"","generic",0.3},
			{"","military_bric",0.01},
			{"machinegunammo_bric","machinegunammo_bric",0.05},
			{"militaryclothes","militaryclothes",0.05}
		};
		lootTypeSmall[] = {
			{ "assaultrifleammo_bric","assaultrifleammo_bric",0.04 },
			{ "Binocular","weapon",0.12 },
			{ "ItemFlashlightRed","military_bric",0.01 },
			{ "ItemKnife","military_bric",0.02 },
			{ "ItemGPS","weapon",0.02 },
			{ "ItemMap","weapon",0.06 },
			{ "Binocular_Vector","weapon",0.03},
			{ "","medical",0.08},
			{ "","generic",0.22},
			{ "","military_bric",0.38 },
			{ "machinegunammoexpl","single",0.02 }
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
			{"ItemFlashlight","generic",0.05},
			{"ItemKnife","generic",0.05},
			{"ItemMatchbox_DZE","generic",0.05},
			{"farmweapons", "cfglootweapon", 0.4 },
			{"WeaponHolder_ItemMachete","object",0.05},
			{"huntingrifle", "weapon", 0.1},
			{"pistols_bric", "cfglootweapon", 0.15},
			{"", "hunter_clothes", 0.05 },
			{"","hunter",0.5}
		};
		lootTypeSmall[] =	{
			{"ItemMap","weapon",0.06},
			{"ItemFlashlight","weapon",0.02},
			{"ItemKnife","weapon",0.02},
			{"ItemMatchbox_DZE","weapon",0.04},
			{"","military_bric",0.4},
			{"5x_22_LR_17_HMR","weapon", 0.08},
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
			{ "ItemWatch", "generic", 0.19 },
			{ "ItemCompass", "generic", 0.01 },
			{ "ItemMap", "weapon", 0.06 },
			{ "Makarov", "weapon", 0.02 },
			{ "Colt1911", "weapon", 0.02 },
			{ "ItemFlashlight", "generic", 0.04 },
			{ "ItemKnife", "generic", 0.06 },
			{ "ItemMatchbox_DZE", "generic", 0.06 },
			{ "ItemToolbox", "weapon", 0.02 },
			{ "ItemCrowbar", "weapon", 0.02 },
			{ "", "generic", 0.23 },
			{ "PartGeneric", "magazine", 0.07 },
			{ "PartWheel", "magazine", 0.06 },
			{ "PartFueltank", "magazine", 0.03 },
			{ "PartEngine", "magazine", 0.01 },
			{ "PartGlass", "magazine", 0.08 },
			{ "WeaponHolder_ItemJerrycan", "object", 0.03 }
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
			{ "ItemWatch", "generic", 0.1 },
			{ "ItemCompass", "generic", 0.02 },
			{ "ItemMap", "weapon", 0.05 },
			{ "MakarovSD", "weapon", 0.01 },
			{ "Colt1911", "weapon", 0.02 },
			{ "ItemFlashlight", "generic", 0.01 },
			{ "ItemKnife", "generic", 0.04 },
			{ "ItemMatchbox_DZE", "generic", 0.04 },
			{ "ItemToolbox", "weapon", 0.02 },
			{ "ItemCrowbar", "weapon", 0.02 },
			{ "", "generic", 0.20 },
			{ "PartGeneric", "magazine", 0.06 },
			{ "PartWheel", "magazine", 0.05 },
			{ "PartFueltank", "magazine", 0.03 },
			{ "PartEngine", "magazine", 0.02 },
			{ "PartGlass", "magazine", 0.03 },
			{ "WeaponHolder_ItemJerrycan", "object", 0.03 }
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
	class MassGrave: Default {
		zombieChance = 1;
		maxRoaming = 3;
		zombieClass[] = {"zZombie_Base","z_hunter","z_hunter","z_hunter","z_villager1","z_villager2","z_villager3","z_doctor","z_soldier_pilot","z_soldier_heavy"};
		lootChance = 1;
		lootPos[] = {};
		lootType[] = {
			{ "M16A2", "weapon", 0.03 },
			{ "M16A2GL", "weapon", 0.01 },
			{ "M249", "weapon", 0.01 },
			{ "M9SD", "weapon", 0.04 },
			{ "PK", "weapon", 0.01 },
			{ "AK_74", "weapon", 0.02 },
			{ "M4A1_Aim", "weapon", 0.01 },
			{ "AKS_74_kobra", "weapon", 0.01 },
			{ "AKS_74_U", "weapon", 0.02 },
			{ "AK_47_M", "weapon", 0.02 },
			{ "M24", "weapon", 0.01 },
			{ "SVD_CAMO", "weapon", 0.01 },
			{ "M1014", "weapon", 0.02 },
			{ "BAF_LRR_scoped", "weapon", 0.01 },
			{ "M4SPR", "weapon", 0.01 },
			{ "M4A1", "weapon", 0.01 },
			{ "M14_EP1", "weapon", 0.02 },
			{ "UZI_EP1", "weapon", 0.03 },
			{ "Remington870_lamp", "weapon", 0.01 },
			{ "glock17_EP1", "weapon", 0.02 },
			{ "M240", "weapon", 0.02 },
			{ "M4A1_AIM_SD_camo", "weapon", 0.01 },
			{ "M16A4_ACG", "weapon", 0.01 },
			{ "M4A1_HWS_GL_camo", "weapon", 0.01 },
			{ "Mk_48", "weapon", 0.01 },
			{ "M4A3_CCO_EP1", "weapon", 0.01 },
			{ "Binocular", "weapon", 0.04 },
			{ "ItemRadio", "weapon", 0.04 },
			{ "ItemFlashlightRed", "military", 0.01 },
			{ "ItemKnife", "military", 0.01 },
			{ "ItemGPS", "weapon", 0.01 },
			{ "ItemMap", "military", 0.01 },
			{ "Binocular_Vector", "military", 0.01 },
			{ "DZ_ALICE_Pack_EP1", "object", 0.03 },
			{ "DZ_TK_Assault_Pack_EP1", "object", 0.02 },
			{ "DZ_British_ACU", "object", 0.02 },
			{ "DZ_CivilBackpack_EP1", "object", 0.02 },
			{ "DZ_Backpack_EP1", "object", 0.01 },
			{ "DZ_LargeGunBag_EP1", "object", 0.01 },
			{ "", "medical", 0.05 },
			{ "", "generic", 0.05 },
			{ "", "military", 0.14 },
			{ "Sa58V_RCO_EP1", "weapon", 0.01 },
			{ "Sa58V_CCO_EP1", "weapon", 0.01 },
			{ "G36_C_SD_camo", "weapon", 0.01 },
			{ "M40A3", "weapon", 0.01 },
			{ "100Rnd_762x54_PK", "magazine", 0.01 },
			{ "", "militaryclothes", 0.05 },
			{ "WeaponHolder_ItemMachete", "object", 0.02 },
			{ "SCAR_H_LNG_Sniper_SD", "weapon", 0.01 },
			{ "2000Rnd_762x51_M134", "magazine", 0.01 },
			{ "KSVK", "weapon", 0.01 },
			{ "m240_scoped_EP1", "weapon", 0.01 }
		};
	};

	#include "CfgBuildingPos.hpp"
	//If you want to copypast your loottable to your mission w/o
	//changing something on the lootPos then use the a include instead of copypasting the CfgBuildingPos.hpp
	//#include "\dayz_epoch_b\CfgBuildingPos.hpp"
};