// Custom Loot
if(isNil "DZE_MissionLootTable") then {
	DZE_MissionLootTable = true;
};

//Default Loadout
DefaultMagazines = ["ItemBandage"];
DefaultWeapons = ["ItemFlashlight"];
DefaultBackpack = "CZ_VestPouch_EP1";
DefaultBackpackWeapon = "";

// Cannibalism
if(isNil "s_player_butcher_human") then {
	s_player_butcher_human = -1;
}

// Bury Corpse
if(isNil "s_player_bury_human") then {
	s_player_bury_human = -1;
}

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