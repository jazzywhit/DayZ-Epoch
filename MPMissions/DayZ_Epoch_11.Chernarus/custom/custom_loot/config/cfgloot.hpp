#include "CfgLootSmall.hpp"
class CfgLoot {
	trash[] = {
		{"TrashTinCan",0.16},
		{"TrashJackDaniels",0.1},
		{"FoodCanGriffEmpty",0.04},
		{"FoodCanBadguyEmpty",0.04},
		{"FoodCanBoneboyEmpty",0.04},
		{"FoodCanCornEmpty",0.04},
		{"FoodCanCurgonEmpty",0.04},
		{"FoodCanDemonEmpty",0.04},
		{"FoodCanFraggleosEmpty",0.04},
		{"FoodCanHerpyEmpty",0.04},
		{"FoodCanOrlokEmpty",0.04},
		{"FoodCanPowellEmpty",0.04},
		{"FoodCanTylersEmpty",0.04},
		{"TrashJackDaniels",0.05},
		{"ItemSodaEmpty",0.05},
		{"ItemSodaMdewEmpty",0.02},
		{"ItemSodaMtngreenEmpty",0.02},
		{"ItemSodaR4z0rEmpty",0.02},
		{"ItemSodaClaysEmpty",0.02},
		{"ItemSodaSmashtEmpty",0.02},
		{"ItemSodaDrwasteEmpty",0.02},
		{"ItemSodaLemonadeEmpty",0.02},
		{"ItemSodaLvgEmpty",0.02},
		{"ItemSodaMzlyEmpty",0.02},
		{"ItemSodaRabbitEmpty",0.02}
	};
	civilian[] = {
		{"TrashJackDaniels",0.08}
		,{"ItemSodaEmpty",0.1}
		,{"8Rnd_9x18_Makarov",0.17}
		,{"7Rnd_45ACP_1911",0.15}
		,{"15Rnd_W1866_Slug",0.14}
		,{"2Rnd_shotgun_74Slug",0.14}
		,{"ItemBandage",0.13}
		,{"ItemPainkiller",0.06}
		,{"ItemDocument",0.03}
	};
	office2[] = {
		{"TrashJackDaniels",0.08}
		,{"ItemSodaEmpty",0.1}
		,{"8Rnd_9x18_Makarov",0.17}
		,{"7Rnd_45ACP_1911",0.15}
		,{"2Rnd_shotgun_74Slug",0.14}
		,{"2Rnd_shotgun_74Pellets",0.14}
		,{"ItemBandage",0.14}
		,{"ItemPainkiller",0.06}
		,{"ItemDocument",0.02}
	};
	food_special[] = {
	    {"ItemSodaEmpty",0.3}
		,{"ItemSodaMdew",0.01}
		,{"ItemSodaRbull",0.01}
		,{"ItemSodaOrangeSherbet",0.01}
		,{"ItemSodaDrwaste",0.1}
		,{"ItemSodaRabbit",0.1}
		,{"ItemSodaMtngreen",0.04}
		,{"ItemSodaR4z0r",0.04}
		,{"ItemSodaClays",0.04}
		,{"ItemSodaSmasht",0.04}
		,{"ItemSodaLemonade",0.04}
        ,{"FoodCanGriff",0.01}
        ,{"FoodCanBadguy",0.01}
        ,{"FoodCanBoneboy",0.01}
        ,{"FoodCanCorn",0.01}
        ,{"FoodCanCurgon",0.01}
		,{"ItemSodaLvg",0.04}
		,{"ItemSodaMzly",0.04}
		,{"FoodCanDemon",0.04}
		,{"FoodCanFraggleos",0.04}
		,{"FoodCanHerpy",0.04}
		,{"FoodCanOrlok",0.04}
		,{"FoodCanPowell",0.04}
		,{"FoodCanTylers",0.04}
		,{"FoodPumpkin",0.04}
		,{"FoodSunFlowerSeed",0.04}
	};
	food[] = {
		{"FoodCanUnlabeled",0.6}
		,{"ItemSodaCoke",0.05}
		,{"ItemSodaPepsi",0.05}
		,{"FoodCanBakedBeans",0.05}
		,{"FoodCanSardines",0.05}
		,{"FoodCanFrankBeans",0.05}
		,{"FoodCanPasta",0.05}
		,{"FoodPistachio",0.05}
		,{"FoodNutmix",0.05}
	};
	office[] = {
		{"ItemSodaEmpty",0.31}
		,{"TrashJackDaniels",0.26}
		,{"ItemWaterbottleUnfilled",0.02}
		,{"ItemBandage",0.15}
		,{"HandRoadFlare",0.07}
		,{"ItemPainkiller",0.02}
		,{"HandChemGreen",0.01}
		,{"HandChemBlue",0.03}
		,{"HandChemRed",0.03}
		,{"ItemHeatPack",0.04}
		,{"ItemDocument",0.03}
		,{"ItemPlotDeed",0.01}
		,{"ItemComboLock",0.01}
		,{"ItemHotwireKit",0.01}
		,{"ItemLockbox",0.01}
	};
	generic[] = {
		{"ItemNewspaper",0.04}
		,{"ItemWaterbottleUnfilled",0.02}
		,{"ItemBandage",0.14}
		,{"ItemLetter",0.02}
		,{"ItemBook1",0.02}
		,{"ItemBook2",0.02}
		,{"ItemBook3",0.02}
		,{"ItemBook4",0.02}
		,{"ItemTrashToiletpaper",0.06}
		,{"ItemTrashRazor",0.04}
		,{"HandRoadFlare",0.11}
		,{"ItemPainkiller",0.08}
		,{"HandChemGreen",0.12}
		,{"HandChemBlue",0.12}
		,{"HandChemRed",0.12}
		,{"ItemHeatPack",0.04}
	};
	medical[] = {
		{"ItemBandage",0.48}
		,{"ItemPainkiller",0.15}
		,{"ItemMorphine",0.2}
		,{"ItemEpinephrine",0.1}
		,{"ItemAntibiotic",0.02}
		,{"ItemHeatPack",0.05}
	};
	hospital[] = {
		{"ItemBandage",0.5}
		,{"ItemPainkiller",0.17}
		,{"ItemMorphine",0.13}
		,{"ItemEpinephrine",0.13}
		,{"ItemBloodbag",0.05}
		,{"ItemAntibiotic",0.02}
	};
	military[] = {
		{"ItemSodaEmpty",0.11}
		,{"ItemBandage",0.06}
		,{"ItemPainkiller",0.04}
		,{"ItemMorphine",0.01}
		,{"30Rnd_556x45_Stanag",0.12}
		,{"20Rnd_762x51_DMR",0.01}
		,{"17Rnd_9x19_glock17",0.05}
		,{"15Rnd_9x19_M9SD",0.01}
		,{"15Rnd_9x19_M9",0.04}
		,{"5Rnd_762x51_M24",0.05}
		,{"8Rnd_B_Beneli_74Slug",0.05}
		,{"200Rnd_556x45_M249",0.01}
		,{"HandGrenade_west",0.02}
		,{"SmokeShell",0.04}
		,{"SmokeShellRed",0.02}
		,{"SmokeShellGreen",0.02}
		,{"SmokeShellYellow",0.02}
		,{"SmokeShellPurple",0.02}
		,{"SmokeShellBlue",0.02}
		,{"SmokeShellOrange",0.02}
		,{"8Rnd_B_Beneli_Pellets",0.04}
		,{"30Rnd_556x45_StanagSD",0.01}
		,{"30Rnd_9x19_MP5",0.04}
		,{"30Rnd_9x19_MP5SD",0.01}
		,{"100Rnd_762x51_M240",0.01}
		,{"HandChemGreen",0.02}
		,{"HandChemBlue",0.02}
		,{"HandChemRed",0.02}
		,{"ItemHeatPack",0.07}
		,{"FoodMRE",0.01}
		,{"ItemDocument",0.01}
	};
	military_bric[] = {
		{"ItemSodaEmpty",0.06}
		,{"ItemBandage",0.2}
		,{"ItemPainkiller",0.04}
		,{"ItemMorphine",0.01}
		,{"30Rnd_762x39_AK47",0.1}
		,{"30Rnd_545x39_AK",0.12}
		,{"HandGrenade_east",0.03}
		,{"SmokeShell",0.04}
		,{"SmokeShellRed",0.02}
		,{"SmokeShellGreen",0.02}
        ,{"SmokeShellYellow",0.02}
        ,{"SmokeShellPurple",0.02}
        ,{"SmokeShellBlue",0.02}
        ,{"SmokeShellOrange",0.02}
		,{"HandChemGreen",0.04}
		,{"HandChemBlue",0.02}
		,{"HandChemRed",0.06}
		,{"ItemHeatPack",0.07}
		,{"FoodMRE",0.01}
		,{"8Rnd_9x18_MakarovSD",0.02}
		,{"20Rnd_B_765x17_Ball",0.04}
		,{"30Rnd_9x19_UZI_SD",0.01}
		,{"ItemDocument",0.01}
	};
	militarypilot[] = {
		{"ItemSodaEmpty",0.04}
		,{"ItemBandage",0.05}
		,{"ItemPainkiller",0.04}
		,{"ItemMorphine",0.04}
		,{"HandGrenade_west",0.01}
		,{"HandGrenade_east",0.01}
		,{"SmokeShell",0.04}
		,{"SmokeShellRed",0.02}
		,{"SmokeShellGreen",0.02}
		,{"HandChemGreen",0.02}
		,{"HandChemBlue",0.02}
		,{"HandChemRed",0.02}
		,{"ItemHeatPack",0.04}
		,{"FoodMRE",0.04}
	};
	policeman[] = {
		{"ItemBandage",0.3}
		,{"7Rnd_45ACP_1911",0.08}
		,{"6Rnd_45ACP",0.08}
		,{"15Rnd_W1866_Slug",0.14}
		,{"8Rnd_B_Beneli_Pellets",0.16}
		,{"HandRoadFlare",0.12}
		,{"8Rnd_9x18_MakarovSD",0.012}
		,{"SmokeShell",0.05}
		,{"ItemHotwireKit",0.01}
		,{"ItemDocument",0.03}
	};
	hunter[] = {
		{"ItemBandage",0.6}
		,{"ItemWaterbottleUnfilled",0.05}
		,{"WoodenArrow",0.2}
		,{"ItemHeatPack",0.03}
		,{"FoodMRE",0.02}
		,{"5x_22_LR_17_HMR",0.05}
	};
	worker[] = {
		{"TrashJackDaniels",0.09}
		,{"ItemSodaEmpty",0.35}
		,{"ItemBandage",0.31}
		,{"ItemPainkiller",0.15}
		,{"ItemWire",0.05}
		,{"ItemTankTrap",0.05}
	};
	hunter_clothes[] = {
        {"Skin_Sniper1_DZ",0.3}
        ,{"Skin_GUE_Soldier_Sniper_DZ",0.3}
        ,{"Soldier_Sniper_PMC_DZ",0.2}
        ,{"Skin_TK_Soldier_Sniper_EP1_DZ",0.1}
        ,{"Skin_CZ_Soldier_Sniper_EP1_DZ", 0.1}
    };
	clothes[] = {
		{"Skin_RU_Policeman_DZ",0.11}
		,{"Skin_Pilot_EP1_DZ",0.1}
		,{"Skin_Functionary1_EP1_DZ",0.1}
		,{"Skin_Priest_DZ",0.1}
		,{"Skin_Rocker1_DZ",0.07}
		,{"Skin_Rocker2_DZ",0.07}
		,{"Skin_Rocker3_DZ",0.08}
		,{"Skin_Rocker4_DZ",0.08}
		,{"Skin_SurvivorW3_DZ",0.09}
		,{"Skin_SurvivorWpink_DZ",0.09}
		,{"Skin_SurvivorWurban_DZ",0.07}
		,{"Skin_INS_Bardak_DZ",0.02}
		,{"Skin_INS_Worker2_DZ",0.02}
	};
	militaryclothes[] = {
		{"Skin_Rocket_DZ",0.14}
		,{"Skin_Soldier1_DZ",0.58}
		,{"Skin_Drake_Light_DZ",0.07}
		,{"Skin_Soldier_TL_PMC_DZ",0.07}
		,{"Skin_Soldier_Sniper_PMC_DZ",0.05}
		,{"Skin_Soldier_Bodyguard_AA12_PMC_DZ",0.07}
		,{"Skin_CZ_Special_Forces_GL_DES_EP1_DZ",0.08}
		,{"Skin_FR_OHara_DZ",0.08}
		,{"Skin_FR_Rodriguez_DZ",0.09}
		,{"Skin_Graves_Light_DZ",0.09}
		,{"Skin_INS_Soldier_AR_DZ",0.05}
		,{"Skin_INS_Soldier_CO_DZ",0.04}
	};
	specialclothes[] = {
		{"Skin_Ins_Soldier_GL_DZ",0.05}
		,{"Skin_GUE_Commander_DZ",0.08}
		,{"Skin_Bandit1_DZ",0.08}
		,{"Skin_Bandit2_DZ",0.06}
		,{"Skin_BanditW1_DZ",0.07}
		,{"Skin_BanditW2_DZ",0.07}
		,{"Skin_TK_INS_Soldier_EP1_DZ",0.05}
		,{"Skin_TK_INS_Warlord_EP1_DZ",0.07}
		,{"Skin_SurvivorWcombat_DZ",0.08}
		,{"Skin_SurvivorWdesert_DZ",0.08}
		,{"Skin_GUE_Soldier_MG_DZ",0.05}
		,{"Skin_GUE_Soldier_Crew_DZ",0.04}
		,{"Skin_GUE_Soldier_CO_DZ",0.04}
		,{"Skin_GUE_Soldier_2_DZ",0.04}
		,{"Skin_TK_Special_Forces_MG_EP1_DZ",0.04}
		,{"Skin_TK_Commander_EP1_DZ",0.04}
		,{"Skin_RU_Soldier_Crew_DZ",0.04}
		,{"Skin_INS_Lopotev_DZ",0.02}
	};
	tents[] = {
		{"WeaponHolder_ItemTentOld",0.34}
		,{"WeaponHolder_ItemTentDomed",0.33}
		,{"WeaponHolder_ItemTentDomed2",0.33}
	};
	backpacks[] = {
		{"DZ_Assault_Pack_EP1",0.3}
		,{"DZ_TerminalPack_EP1",0.2}
		,{"DZ_ALICE_Pack_EP1",0.10}
		,{"DZ_TK_Assault_Pack_EP1",0.10}
		,{"DZ_CompactPack_EP1",0.10}
	};
	militarybackpacks[] = {
		{"DZ_British_ACU",0.55}
		,{"DZ_CivilBackpack_EP1",0.42}
		,{"DZ_Backpack_EP1",0.03}
	};
	militaryammo[] = {
		{"2000Rnd_762x51_M134",0.3}
		,{"29Rnd_30mm_AGS30",0.2}
		,{"100Rnd_127x99_M2",0.5}
	};
	pistols_bric[] = {
		{"Makarov",0.7}
		,{"revolver_EP1",0.2}
		,{"MakarovSD",0.09}
		,{"revolver_gold_EP1",0.01}
	};
	pistols[] = {
		{"Colt1911",0.5}
		,{"revolver_EP1",0.2}
		,{"glock17_EP1",0.09}
		,{"M9",0.15}
		,{"M9SD",0.05}
		,{"revolver_gold_EP1",0.01}
	};
	shotgunsingleshot[] = {
		{"Winchester1866",0.7}
		,{"MR43",0.3}
	};
	farmweapons[] = {
		{"Winchester1866",0.25}
		,{"LeeEnfield",0.25}
		,{"MR43",0.5}
	};
	sniperrifles[] = {
		{"m16a4_acg",0.05}
		,{"M16A4_ACG_GL",0.05}
		,{"G36K",0.05}
		,{"G36K_camo",0.05}
		,{"G36A",0.05}
		,{"G36A_camo",0.05}
		,{"m8_carbine",0.05}
		,{"m8_SAW",0.05}
		,{"M4A3_RCO_GL_EP1",0.05}
		,{"M16A4_ACG_GL",0.02}
		,{"SCAR_L_STD_Mk4CQT",0.03}
		,{"SCAR_L_STD_EGLM_RCO",0.02}
		,{"BAF_L85A2_RIS_ACOG",0.05}
		,{"BAF_L85A2_UGL_ACOG",0.05}
		,{"BAF_L86A2_ACOG",0.07}
		,{"SCAR_H_CQC_CCO",0.05}
		,{"SCAR_H_CQC_CCO_SD",0.05}
		,{"M4SPR",0.05}
		,{"M40A3",0.02}
		,{"m8_sharpshooter",0.05}
		,{"M24_des_EP1",0.02}
		,{"M24",0.02}
		,{"M14_EP1",0.05}
	};
	sniperriflesammo[] = {
		{"30Rnd_556x45_Stanag",0.45}
		,{"100Rnd_556x45_BetaCMag",0.5}
		,{"20Rnd_762x51_DMR",0.05}
		,{"5Rnd_762x51_M24",0.4}
		,{"20Rnd_762x51_SB_SCAR",0.05}
	};
	sniperrifles_bric[] = {
		{"AK_107_PSO", 0.5}
		,{"Sa58V_RCO_EP1",0.17}
		,{"AKS_74_PSO", 0.18}
		,{"AK_107_GL_PSO", 0.15}
	};
	treasure[] = {
		{"ItemBriefcase10oz", 0.5}
		,{"ItemBriefcase20oz", 0.3}
		,{"ItemBriefcase30oz", 0.1}
		,{"ItemBriefcase40oz", 0.07}
		,{"ItemBriefcase50oz", 0.03}
	};
	sniperriflesammo_bric[] = {
		{"30Rnd_762x39_SA58",0.05}
		,{"30Rnd_762x39_AK47",0.40}
		,{"30Rnd_545x39_AK",0.55}
	};
	submachinegun[] = {
		{"UZI_EP1",0.5}
		,{"MP5A5",0.35}
		,{"UZI_SD_EP1",0.1}
		,{"MP5SD",0.05}
	};
	submachinegun_bric[] = {
		{"UZI_EP1",0.5}
		,{"bizon",0.2}
		,{"Sa61_EP1",0.22}
		,{"bizon_silenced",0.04}
		,{"UZI_SD_EP1",0.04}
	};
	assaultrifles[] = {
		{"G36C",0.09}
		,{"G36C_camo",0.05}
		,{"G36K_camo",0.05}
		,{"G36_C_SD_eotech",0.03}
		,{"G36_C_SD_camo",0.03}
		,{"M16A2",0.1}
		,{"M16A2GL",0.02}
		,{"m16a4",0.02}
		,{"M16A4_GL",0.02}
		,{"M4A1",0.13}
		,{"M4A1_Aim",0.04}
		,{"M4A1_Aim_camo",0.04}
		,{"M4A1_AIM_SD_camo",0.01}
		,{"M4A1_HWS_GL_camo",0.01}
		,{"M4A1_HWS_GL",0.01}
		,{"M4A3_CCO_EP1",0.04}
		,{"m8_compact",0.07}
		,{"m8_carbineGL",0.03}
		,{"m8_holo_sd",0.02}
		,{"m8_carbine",0.03}
		,{"FN_FAL", 0.02}
		,{"SCAR_L_CQC_Holo",0.03}
		,{"SCAR_L_STD_HOLO",0.02}
		,{"SCAR_L_CQC_CCO_SD",0.05}
		,{"BAF_L85A2_UGL_Holo",0.02}
		,{"BAF_L85A2_RIS_Holo",0.01}
		,{"M4A1_HWS_GL_SD_Camo",0.01}
	};
	assaultrifleammo[] = {
		{"30Rnd_556x45_Stanag",0.8}
		,{"30Rnd_556x45_StanagSD",0.10}
		,{"20Rnd_762x51_FNFAL",0.02}
		,{"100Rnd_556x45_BetaCMag", 0.08}
	};
	assaultrifles_bric[] = {
	    {"AKS_74_U",0.39}
		,{"AK_74",0.23}
		,{"AKS_74_kobra",0.05}
		,{"AK_74_GL",0.05}
		,{"AK_74_GL_kobra",0.16}
		,{"AKS_74_kobra",0.07}
		,{"AK_107_Kobra",0.07}
		,{"AK_107_GL_Kobra",0.07}
	};
    assaultrifles_bric_high[] = {
        {"AKS_GOLD",0.01}
        ,{"AK_47_M",0.12}
        ,{"AK_47_S",0.12}
        ,{"Sa58V_RCO_EP1",0.05}
        ,{"Sa58V_CCO_EP1",0.1}
        ,{"RPK_74",0.1}
        ,{"Sa58P_EP1",0.25}
        ,{"Sa58V_EP1",0.25}
    };
	assaultrifleammo_bric[] = {
		{"75Rnd_545x39_RPK",0.05}
		,{"30Rnd_545x39_AK",0.95}
	};
	assaultrifleammo_bric_high[] = {
		{"30Rnd_762x39_SA58",0.5}
		,{"30Rnd_762x39_AK47",0.5}
	};
	machineguns[] = {
		{"M8_SAW",0.2}
		,{"MG36_camo",0.2}
		,{"M60A4_EP1",0.1}
		,{"MG36",0.1}
		,{"M249",0.15}
		,{"M240",0.15}
		,{"M249_m145_EP1",0.05}
	};
	machinegunammo[] = {
		{"100Rnd_556x45_BetaCMag",0.5}
		,{"100Rnd_556x45_M249",0.2}
		,{"100Rnd_762x51_M240",0.2}
		,{"200Rnd_556x45_M249",0.1}
	};
	machineguns_bric[] = {
		{"RPK_74",0.8}
		,{"PK",0.2}
	};
	machinegunammo_bric[] = {
		{"75Rnd_545x39_RPK",0.90}
		,{"100Rnd_762x54_PK",0.10}
	};
	machinegunammoexpl[] = {
		{"75Rnd_545x39_RPK",0.8}
		,{"100Rnd_762x54_PK",0.18}
		,{"M_Igla_AA",0.02}
	};
	militaryshotguns[] = {
		{"Remington870_lamp",0.35}
		,{"M1014",0.4}
	};
	militaryshotguns_bric[] = {
		{"Saiga12K",1}
	};
};