/*
	DZMSAIConfig.sqf
	This is a configuration for the AI that spawn at missions.
	This includes their skin, weapons, gear, and skills.
	You can adjust these to your liking, but it is for advanced users.
*/

///////////////////////////////////////////////
// Array of skin class names for the AI to use
DZMSBanditSkins = [
    "Bandit1_DZ",
    "BanditW1_DZ"
    ]; //For skill 2

DZMSSurvivorSkins = [
    "RU_Policeman_DZ",
    "Pilot_EP1_DZ",
    "Functionary1_EP1_DZ",
    "Priest_DZ",
    "Rocker1_DZ",
    "Rocker2_DZ",
    "Rocker3_DZ",
    "Rocker4_DZ",
    "SurvivorW3_DZ",
    "SurvivorWpink_DZ",
    "SurvivorWurban_DZ",
    "INS_Bardak_DZ",
    "INS_Worker2_DZ"
    ]; // For skill 0,1

DZMSNatoSkins = [
    "Rocket_DZ",
    "Soldier1_DZ",
    "Drake_Light_DZ",
    "Soldier_TL_PMC_DZ",
    "Soldier_Sniper_PMC_DZ",
    "Soldier_Bodyguard_AA12_PMC_DZ",
    "CZ_Special_Forces_GL_DES_EP1_DZ",
    "FR_OHara_DZ",
    "FR_Rodriguez_DZ",
    "CZ_Soldier_Sniper_EP1_DZ",
    "Graves_Light_DZ",
    "INS_Soldier_AR_DZ",
    "INS_Soldier_CO_DZ"
    ]; // For skill 3

////////////////////////
// Array of AI Skills
DZMSSkills0 = [
	["aimingAccuracy",0.10,0.125],
	["aimingShake",0.45,0.55],
	["aimingSpeed",0.45,0.55],
	["endurance",0.40,0.50],
	["spotDistance",0.30,0.45],
	["spotTime",0.30,0.45],
	["courage",0.40,0.60],
	["reloadSpeed",0.50,0.60],
	["commanding",0.40,0.50],
	["general",0.40,0.60]
];

DZMSSkills1 = [
	["aimingAccuracy",0.125,0.15],
	["aimingShake",0.60,0.70],
	["aimingSpeed",0.60,0.70],
	["endurance",0.55,0.65],
	["spotDistance",0.45,0.60],
	["spotTime",0.45,0.60],
	["courage",0.55,0.75],
	["reloadSpeed",0.60,0.70],
	["commanding",0.55,0.65],
	["general",0.55,0.75]
];

DZMSSkills2 = [
	["aimingAccuracy",0.15,0.20],
	["aimingShake",0.75,0.85],
	["aimingSpeed",0.70,0.80],
	["endurance",0.70,0.80],
	["spotDistance",0.60,0.75],
	["spotTime",0.60,0.75],
	["courage",0.70,0.90],
	["reloadSpeed",0.70,0.80],
	["commanding",0.70,0.90],
	["general",0.70,0.90]
];

DZMSSkills3 = [	
	["aimingAccuracy",0.20,0.25],
	["aimingShake",0.85,0.95],
	["aimingSpeed",0.80,0.90],
	["endurance",0.80,0.90],
	["spotDistance",0.70,0.85],
	["spotTime",0.70,0.85],
	["courage",0.80,1.00],
	["reloadSpeed",0.80,0.90],
	["commanding",0.80,0.90],
	["general",0.80,1.00]
];

//////////////////////////////////////////////////////////////
// This is the primary weaponlist that can be assigned to AI
// These are assigned based on AI difficulty level
DZMS_Rifles = [
		"AK_47_M",
		"AK_47_S",
		"Sa58V_RCO_EP1",
		"Sa58V_CCO_EP1",
		"RPK_74",
		"AK_107_PSO",
		"Sa58V_EP1",
		"AKS_74_PSO"
		];

DZMS_Rifles_NATO = [
		"G36C",
		"SCAR_L_CQC",
		"m16a4_acg",
		"M249",
		"MG36",
		"M4SPR"
		];

DZMSWeps0 = DZMS_Rifles;
DZMSWeps1 = DZMS_Rifles;
DZMSWeps2 = DZMS_Rifles; //Default Skill and BRIC Weapons
DZMSWeps3 = DZMS_Rifles_NATO; //More dangerous and NATO Weapons

/////////////////////////////////////////////////////////////
// These are gear sets that will be randomly given to the AI
// They are all the same, but can be customized.
DZMSGear0 = [
["ItemBandage"],
["ItemFlashlight"]
];

DZMSGear1 = [
["ItemBandage"],
["ItemFlashlight"]
];

DZMSGear2 = [
["ItemBandage"],
["ItemFlashlight"]
];

DZMSGear3 = [
["ItemBandage"],
["ItemFlashlight"]
];

DZMSGear4 = [
["ItemBandage"],
["ItemFlashlight"]
];

////////////////////////////////////////////////////////////
// These are the backpacks that can be assigned to AI units.
DZMSPacklist = [
];