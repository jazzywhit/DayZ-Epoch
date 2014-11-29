/*
	DayZ Mission System Config by Vampire
	DZMS: https://github.com/SMVampire/DZMS-DayZMissionSystem
*/

///////////////////////////////////////////////////////////////////////
// Do you want your players to gain humanity from killing mission AI?
DZMSMissHumanity = false;

// How Much Humanity?
DZMSCntHumanity = 25;

// Do You Want AI to use NVGs?
//(They are deleted on death)
DZMSUseNVG = true;

// Do you want AI to use RPG7V's?
//(Only one unit per group spawn will have one)
DZMSUseRPG = true;

// Do you want AI kills to count as bandit kills?
DZMSCntBanditKls = false;

// Do you want AI to disappear instantly when killed?
DZMSCleanDeath = false;

// Do you want AI equipment to disappear instantly when killed?
DZMSCleanDeathEquip = false;

// Do you want AI that players run over to not have gear?
// (If DZMSCleanDeath is true, this doesn't matter)
DZMSRunGear = false;

// How long before bodies disappear? (in seconds) (default = 2400)
DZMSBodyTime = 2400;

// Percentage of AI that must be dead before mission completes (default = 0)
//( 0 is 0% of AI / 0.50 is 50% / 1 is 100% )
DZMSRequiredKillPercent = 0.8;

// How long in seconds before mission scenery disappears (default = 1800 / 0 = disabled)
DZMSSceneryDespawnTimer = 0;

// Should crates despawn with scenery? (default = false)
DZMSSceneryDespawnLoot = false;

//////////////////////////////////////////////////////////////////////////////////////////
// You can adjust the weapons that spawn in weapon crates inside DZMSWeaponCrateList.sqf
// You can adjust the AI's gear inside DZMSAIConfig.sqf in the ExtConfig folder also.
//////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////
// Do you want to use static coords for missions?
// Leave this false unless you know what you are doing.
DZMSStaticPlc = true;

// Array of static locations. X,Y,Z
DZMSStatLocs = [
[5064.08,3727.29,0],
[4819.39,4722.03,0],
[4288.51,3688.88,0],
[3313.36,3392.4,0],
[3872.91,2935.39,0],
[3355.03,4164.66,0],
[3899.8,5080.12,0],
[3115.54,4839.46,0],
[2028.78,5189.27,0],
[2134.16,4159.47,0],
[2683.34,3205.14,0],
[3907.25,6500.18,0],
[3581.97,7398.52,0],
[2218.54,8096.69,0],
[2883.68,8867.95,0],
[3497.14,8844.18,0],
[4249.84,8530.76,0],
[4151.01,7919.15,0],
[4183.22,9666.54,0],
[3479.39,10768.8,0],
[4770.73,11932,0],
[5598.64,11152.8,0],
[6607.1,10069.4,0],
[5573.93,9350.05,0],
[7166.96,9547.29,0],
[6129.23,8784.35,0],
[7188.7,8494.41,0],
[7395.01,10651.6,0],
[8022.4,12063.4,0],
[8701.17,11311.8,0],
[9636.38,12606.6,0],
[9673.15,11622.1,0],
[8448.21,10200.8,0],
[5154.67,9262.37,0],
[6225.02,8798.04,0],
[5134.48,7897.92,0],
[5822.12,7089.07,0],
[7951.94,8205.82,0],
[7682.79,7238.99,0],
[6322.9,6690.02,0],
[6028.26,5232.27,0],
[5005.91,5264.97,0],
[7072.33,5358.28,0],
[8024.24,5131.75,0],
[6710.3,3645.9,0],
[5511.76,2642.89,0],
[5379.05,3978.64,0],
[9221.6,4071.89,0],
[11667.1,5610.36,0],
[10162.5,5900.15,0],
[8433.23,6398.15,0],
[12673.6,5809.96,0],
[11147.4,4818.11,0],
[12309.5,6854.2,0],
[11133.7,7918.26,0],
[11559.1,6558.09,0],
[10068.9,7178.21,0],
[10736.6,8601.22,0],
[10359.6,8586.44,0],
[9599.64,8542.95,0],
[9088.71,9217.57,0],
[11617.1,9588.16,0],
[11995.4,10151.5,0],
[10334.6,10855.1,0],
[10761.6,9797.54,0],
[13622.3,11182.2,0],
[12890.3,11223.4,0],
[12635.7,10819.6,0]
];

///////////////////////////////////////////////////////////////////////////////////////////////////////////
// Do you want vehicles from missions to save to the Database? (this means they will stay after a restart)
// If False, vehicles will disappear on restart. It will warn a player who gets inside of a vehicle.
// This is experimental, and off by default in this version.
DZMSSaveVehicles = false;

/////////////////////////////////////////////////////////////////////////////////////////////
// These are arrays of vehicle classnames for the missions.
// Adjust to your liking.

//Armed Choppers
DZMSChoppersArmed = ["CH_47F_EP1_DZE","UH1H_DZE", "Mi17_DZE", "Mi17_UN_CDF_EP1_DZE", "UH60M_EP1_DZE", "UH1Y_DZE", "MH60S_DZE"];

//Unarmed Choppers
DZMSChoppers = ["Mi17_Civilian_DZ","AH6X_DZ", "MH6J_DZ", "BAF_Merlin_DZE", "CH53_DZE"];

//Small Vehicles (NATO)
DZMSSmallVicNATO = ["SUV_TK_CIV_EP1","HMMWV_DZ","HMMWV_DES_EP1", "HMMWV_Ambulance_CZ_DES_EP1", "HMMWV_Ambulance","UAZ_Unarmed_UN_EP1"];

//Small Vehicles (Bandit)
DZMSSmallVicBandit = ["Pickup_PK_TK_GUE_EP1_DZE","Pickup_PK_GUE_DZE","datsun1_civil_2_covered","hilux1_civil_3_open_EP1"];

//Small Vehicles (Survivor)
DZMSSmallVicSurvivor = ["hilux1_civil_3_open_EP1", "datsun1_civil_2_covered", "hilux1_civil_1_open", "VWGolf"];

//Large Vehicles (Urals)
DZMSLargeVicNATO = ["MTVR_DES_EP1","MTVR", "mtvrreammo", "mtvrreammo_des_ep1", "mtvrsalvage_des_ep1", "mtvrsupply_des_ep1", "Ural_UN_EP1"];

//Large Vehicles (Urals)
DZMSLargeVicBandit = ["Ural_CDF","Ural_TK_CIV_EP1", "KamazOpen_DZE", "Kamaz", "kamazreammo", "kamazrepair"];

//Large Vehicles (Urals)
DZMSLargeVicSurvivor = ["Ural_INS","uralrepair_cdf", "uralsalvage_tk_ep1", "v3s_gue", "v3s_reammo_tk_gue_ep1", "v3s_supply_tk_gue_ep1"];

/*///////////////////////////////////////////////////////////////////////////////////////////
There are two types of missions that run simultaneously on a the server.
The two types are Major and Minor missions.

Major missions have a higher AI count, but also have more crates to loot.
Minor missions have less AI than Major missions, but have crates that reflect that.

Below is the array of mission file names and the minimum and maximum times they run.
Do not edit the Arrays unless you know what you are doing.
*/
DZMSMajorArray = ["MajM1","MajM2","MajM3","MajM4","MajM5","MajM6"];
DZMSMinorArray = ["MinM1","MinM2","MinM3","MinM4","MinM5","MinM6","MinM7","MinM8","MinM9"];

/////////////////////////////////////////////////////////////////////////////////////////////
// The Minimum time in seconds before a major mission will run.
// At least this much time will pass between major missions. Default = 900
DZMSMajorMin = 900;

// Maximum time in seconds before a major mission will run.
// A major mission will always run before this much time has passed. Default = 2700
DZMSMajorMax = 2700;

// Time in seconds before a minor mission will run.
// At least this much time will pass between minor missions. Default = 600 (10 Minutes)
DZMSMinorMin = 600; // 5 minutes

// Maximum time in seconds before a minor mission will run.
// A minor mission will always run before this much time has passed. Default = 990 (16.5 Minutes)
DZMSMinorMax = 900; // 15 minutes

// Blacklist Zone Array -- missions will not spawn in these areas
// format: [[x,y,z],radius]
// Ex: [[06325,07807,0],300] //Starry Sobor
DZMSBlacklistZones = [
	[[0,0,0],50]
];

/*=============================================================================================*/
// Do Not Edit Below This Line
/*=============================================================================================*/
DZMSVersion = "1.1FIN";
