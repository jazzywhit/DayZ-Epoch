// Custom Loot
if(isNil "DZE_MissionLootTable") then {
	DZE_MissionLootTable = true;
};

//drink water
s_player_drinkWater = -1;

//Default Loadout
DefaultMagazines = ["ItemBandage"];
DefaultWeapons = ["ItemFlashlight"];
DefaultBackpack = "CZ_VestPouch_EP1";
DefaultBackpackWeapon = "";

// Maximum gas that will be on a vehicle if it is sold
MaxGasOnSale = 0.5;
MinGasOnSale = 0.15;

// Pyromaniac
if(isNil "s_player_igniteVehicle") then {
	s_player_igniteVehicle = -1;
};
if(isNil "s_player_igniteBuilding") then {
	s_player_igniteBuilding = -1;
};

// Cannibalism
if(isNil "s_player_butcher_human") then {
	s_player_butcher_human = -1;
};

// Bury Corpse
if(isNil "s_player_bury_human") then {
	s_player_bury_human = -1;
};

// Change combination action
if(isNil "s_player_ckc") then {
	s_player_ckc = -1;
};

// Dynamic Vehicles Fuel Level
if(isnil "DynamicVehicleFuelLow") then {
	DynamicVehicleFuelLow = 0;
};
if(isnil "DynamicVehicleFuelHigh") then {
	DynamicVehicleFuelHigh = 25;
};

// Dynamic Vehicle Damage
if(isnil "DynamicVehicleDamageLow") then {
	DynamicVehicleDamageLow = 75;
};
if(isnil "DynamicVehicleDamageHigh") then {
	DynamicVehicleDamageHigh = 100;
};

// Setup maximum number of mine veins
if(isnil "MaxMineVeins") then {
	MaxMineVeins = 50;
};

// Config trader instead of SQL
if(isNil "DZE_ConfigTrader") then {
	DZE_ConfigTrader = true;
};

//Plot for life and snap building
DZE_APlotforLife = true;
DZE_modularBuild = true;