/*
		Mystery Briefcase addon by Rocu
		Version 1.1
		Configuration file
*/

MBT_NAME = "Mystery Briefcase"; //Name of the item that spawns the reward (this is just a visual thing, code won't break if you change this to something random)
MBT_CRATEDELAY = 900; //How long until the reward crate disappears (in seconds) Default: 900 (15 minutes)
MBT_DIALOG_TITLE = "Mystery Briefcase Reward"; //Reward dialog title
MBT_DIALOG_CLAIM = "Claim Your Reward"; //Claim reward button
MBT_DIALOG_NOTE = "* After claiming your prize the reward crate will disappear in 15 minutes."; //Notation warning about the crate's delay



/*
		REWARD CONFIGURATION
		Everything that has to do with the prize you get from the briefcase
*/

// Food
_food_group = ["FoodNutmix","FoodPistachio","FoodMRE","ItemSodaOrangeSherbet","ItemSodaRbull","ItemSodaR4z0r","ItemSodaMdew","ItemSodaPepsi","ItemSodaCoke","FoodbaconCooked","FoodCanBakedBeans","FoodCanFrankBeans","FoodCanPasta","FoodCanSardines","FoodchickenCooked","FoodmuttonCooked","FoodrabbitCooked","ItemTroutCooked","ItemTunaCooked","ItemSeaBassCooked","FoodCanGriff","FoodCanTylers","FoodCanDemon","FoodCanPowell","FoodCanCorn","FoodCanOrlok","FoodCanHerpy","FoodCanBadguy","FoodCanBoneboy","FoodCanCurgon","FoodCanFraggleos","ItemSodaRabbit","ItemSodaMtngreenEmpty","ItemSodaSmashtEmpty","ItemSodaMtngreen","ItemSodaDrwaste","ItemSodaSmasht","ItemSodaClays","ItemSodaLemonade","ItemSodaLvg"];

// Common
_military_group = ["FlareWhite_M203","FlareGreen_M203","1Rnd_Smoke_M203","HandGrenade_west","HandGrenade_east","SmokeShell","SmokeShellRed","SmokeShellGreen","FoodMRE","Skin_Camo1_DZ","Skin_Rocket_DZ","Skin_Soldier1_DZ","Skin_Drake_Light_DZ"];
_medical_group = ["ItemAntibiotic","ItemBloodbag","ItemEpinephrine","ItemHeatPack","ItemMorphine","ItemBandage"];
_vehicle_repair_group = ["PartEngine","PartFueltank","PartGeneric","PartGlass","PartVRotor","PartWheel"];
_tools_group = ["ItemKeyKit","Binocular","Binocular_Vector","ItemCompass","ItemCrowbar","ItemEtool","ItemFishingPole","ItemFlashlightRed","ItemGPS","ItemHatchet_DZE","ItemKnife","ItemMachete","ItemMatchbox_DZE","ItemToolbox","NVGoggles"];

_common_group = [
        "ItemTankTrap",
        "PartGeneric",
        "ItemPole",
        "ItemCanvas",
        "PartPlywoodPack",
        "PartPlankPack",
        "PartPlywoodPack",
        "PartPlankPack",
        "ItemTentOld",
        "ItemTentDomed",
        "ItemTentDomed2",
        "ItemSandbag",
        "ItemWire",
        "ItemGenerator"
        ];
_assault_group = [
        "G36K",
        "G36K_camo",
        "G36C_camo",
        "G36_C_SD_eotech",
        "G36_C_SD_camo",
        "M4A1_HWS_GL_SD_camo",
        "M4A1_HWS_GL_camo",
        "M4A1_HWS_GL",
        "m8_holo_sd",
        "m8_carbine",
        "m8_carbineGL",
        "BAF_L85A2_RIS_Holo",
        "BAF_L85A2_UGL_Holo",
        "M4A1_HWS_GL_SD_Camo",
        "SCAR_L_CQC_Holo",
        "SCAR_L_CQC_CCO_SD",
        "SCAR_L_STD_HOLO",
        "SCAR_L_CQC"
        ];
_lmg_group = [
         "M8_SAW",
         "MG36_camo",
         "M60A4_EP1",
         "MG36",
         "M249",
         "M240",
         "M249_m145_EP1"
         ];
_sniper_group = [
        "m16a4_acg",
        "M16A4_ACG_GL",
        "G36a",
        "G36A_camo",
        "M4SPR",
        "m8_sharpshooter",
        "M4A3_RCO_GL_EP1",
        "SCAR_L_STD_Mk4CQT",
        "SCAR_L_STD_EGLM_RCO",
        "M14_EP1",
        "BAF_L85A2_RIS_ACOG",
        "BAF_L85A2_UGL_ACOG",
        "BAF_L86A2_ACOG",
        "SCAR_H_CQC_CCO",
        "SCAR_H_CQC_CCO_SD"
        ];
_chainbullets_group = ["2000Rnd_762x51_M134","200Rnd_762x51_M240","100Rnd_127x99_M2","150Rnd_127x107_DSHKM"];

// Rares
_rares_group = ["ItemVault","ItemLockbox","30m_plot_kit"];
_rare_weapons_group = ["MK_48","BAF_LRR_scoped","M24", "M24_des_EP1", "M40A3"];

// Legendaries
_legend_group = ["BAF_ied_v2"];
_rocket_weapons_group = ["RPG7V"];
_chainsaw_group = ["Chainsaw","ChainsawB","ChainsawG","ChainsawP"];
_gem_group = ["ItemObsidian","ItemCitrine","ItemTopaz","ItemRuby","ItemSapphire","ItemEmerald","ItemAmathyst"]; //You can use this if your server uses gems as currency

MBC_REWARDLIST = [
	//Reward List format:
	//[type,item,quantity,raritylevel,rarity]
	//		type - item type. Available options: 
	//			magazine - any type of magazine and most general items (briefcases, cinder blocks, ammunition, etc)
	//			weapon - any type of weapon, note that toolbelt items are also considered weapons in Arma
	//			group_mag - a group of magazines. This is an array of items from which only 1 will be randomly picked
	//			group_wep - a group of weapons. An array of weapons from which only 1 will be randomly picked
	//			coins - this is for Zupa's Single Currency script only. Only use it if you have that script. If you don't do not use coins as a type for reward
	//			script - this is an experimental feature for more advanced users. I haven't tested it thoroughly so use it at your own risk.
	//				It was meant to work as a power-up rather than having an item as a reward. If you use "script" as a type, you must type the script's full path to the "item" field
	//		item - class name of item. If type is group, insert the group's variable. Example: 30m_plot_pole, ItemHotwireKit, _sniper_group, _junk_group
	//		quantity - number of items, if you set it to 0 while using group_wep it will only spawn the weapon without magazines. Example: 15 (in case item is ItemHotwireKit then it will give you 15 Hotwire Kits)
	//		raritylevel - the level of rarity from 1 to 4 (1 = least rare, 4 = rarest), this is just visual for the UI
	//		rarity - how likely it is for this item to be picked. 
	//			Note: Rarity number is not necessarily in percentage form. Total sum of rarity does NOT have to equal 100.
	//			For example, if you have 3 items all with 50 rarity then in reality they all have 33.3% chance of being picked.
	//			But for the sake of the script's speed, the lower you have this number the faster it will run. Setting it to like 100mil would probably crash your server.
	

	// Bad luck (junk items with low possibility)
	["group_mag",_food_group,5,1,2]
	
	// Common
	,["group_wep",_assault_group,1,1,10]
	,["group_wep",_lmg_group,1,1,10]
	,["group_wep",_sniper_group,1,2,9]
	,["group_mag",_common_group,10,2,12]
	,["group_mag",_military_group,10,2,2]
	,["group_mag",_medical_group,10,2,2]
	,["group_mag",_vehicle_repair_group,2,2,2]
	,["group_wep",_tools_group,2,2,6]
	,["magazine","ItemGoldBar10oz",5,2,4]
	,["magazine","PartPlywoodPack",15,2,5]
	,["magazine","PartPlankPack",15,2,5]
	
	// Rare
	,["group_wep",_rare_weapons_group,1,3,2]
	,["group_mag",_rares_group,1,3,5]
	,["magazine","ItemBriefcase100oz",1,3,3]
	,["magazine","BAF_ied_v1",1,3,3]
	,["magazine","ItemHotwireKit",1,3,3]
	,["magazine","CinderBlocks",6,3,2]
	,["magazine","PartPlywoodPack",30,3,2]
	,["magazine","PartPlankPack",30,3,3]
	
	// Legendary
	,["group_wep",_rocket_weapons_group,1,4,1]
	,["group_wep",_chainsaw_group,1,4,1]
	,["group_mag",_legend_group,1,4,1]
	,["magazine","CinderBlocks",15,4,1]
	,["group_mag",_chainbullets_group,1,4,1]

];