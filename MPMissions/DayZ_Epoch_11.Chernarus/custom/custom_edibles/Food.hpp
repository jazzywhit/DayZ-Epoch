class FoodEdible;

class FoodCanFrankBeans: FoodEdible {
	scope = 2;
	// displayName = $STR_EQUIP_NAME_28;
	displayName = "Can (Frank n Beans)"; // addactions cannot have &amp;
	model = "\dayz_equip\models\food_fbtin.p3d";
	picture = "\dayz_equip\textures\equip_fbtin_ca.paa";
	descriptionShort = $STR_EQUIP_DESC_28;
};

class FoodmeatRaw : FoodEdible {
	scope = public;
	count = 1;
	type = 256;
	displayName = $STR_FOOD_EQIP_CODE_NAME_0;
	model = "\dayz_equip\models\food_steak_gear.p3d";
	picture = "\dayz_equip\textures\equip_steak_ca.paa";
	descriptionShort = $STR_FOOD_EQUIP_CODE_DESC_0;
	bloodRegen = 0;
};
class FoodmuttonRaw : FoodmeatRaw {
	displayName = $STR_FOOD_EQIP_CODE_NAME_1;
	descriptionShort = $STR_FOOD_EQUIP_CODE_DESC_1;
	bloodRegen = 0;
};
class FoodchickenRaw : FoodmeatRaw {
	displayName = $STR_FOOD_EQIP_CODE_NAME_2;
	descriptionShort = $STR_FOOD_EQUIP_CODE_DESC_2;
	bloodRegen = 0;
};
class FoodrabbitRaw : FoodmeatRaw {
	displayName = $STR_FOOD_EQIP_CODE_NAME_3;
	descriptionShort = $STR_FOOD_EQUIP_CODE_DESC_3;
	bloodRegen = 0;
};
class FoodbaconRaw : FoodmeatRaw {
	displayName = $STR_FOOD_EQIP_CODE_NAME_4;
	model = "z\addons\dayz_communityassets\models\bacon_raw.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_bacon_raw_CA.paa";
	descriptionShort = $STR_FOOD_EQUIP_CODE_DESC_4;
	bloodRegen = 0;
};
class FoodbeefRaw : FoodmeatRaw {
	displayName = $STR_FOOD_EQIP_CODE_NAME_6;
	descriptionShort = $STR_FOOD_EQUIP_CODE_DESC_6;
	bloodRegen = 0;
};

class FoodmeatCooked : FoodEdible {
	scope = public;
	count = 1;
	displayName = $STR_FOODCOOKED_EQIP_CODE_NAME_0;
	model = "\dayz_equip\models\food_steak_cooked_gear.p3d";
	picture = "\dayz_equip\textures\equip_steak_cooked_ca.paa";
	descriptionShort = $STR_FOODCOOKED_EQUIP_CODE_DESC_0;
	bloodRegen = 0;
};
class FoodmuttonCooked : FoodmeatCooked {
	displayName = $STR_FOODCOOKED_EQIP_CODE_NAME_1;
	descriptionShort = $STR_FOODCOOKED_EQUIP_CODE_DESC_1;
	bloodRegen = 0;
};
class FoodchickenCooked : FoodmeatCooked {
	displayName = $STR_FOODCOOKED_EQIP_CODE_NAME_2;
	descriptionShort = $STR_FOODCOOKED_EQUIP_CODE_DESC_2;
	bloodRegen = 0;
};
class FoodbaconCooked : FoodmeatCooked {
	displayName = $STR_FOODCOOKED_EQIP_CODE_NAME_4;
	model = "z\addons\dayz_communityassets\models\bacon_fried.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_bacon_fried_CA.paa";
	descriptionShort = $STR_FOODCOOKED_EQUIP_CODE_DESC_4;
	bloodRegen = 0;
};
class FoodrabbitCooked : FoodmeatCooked {
	displayName = $STR_FOODCOOKED_EQIP_CODE_NAME_3;
	descriptionShort = $STR_FOODCOOKED_EQUIP_CODE_DESC_3;
	bloodRegen = 0;
};
class FoodbeefCooked : FoodmeatCooked {
	displayName = $STR_FOODCOOKED_EQIP_CODE_NAME_6;
	descriptionShort = $STR_FOODCOOKED_EQUIP_CODE_DESC_6;
	bloodRegen = 0;
};

class AngelCookies : FoodEdible {
	scope = public;
	count = 1;
	displayName = $STR_FOODCOOKED_EQIP_CODE_NAME_5;
	model = "z\addons\dayz_communityassets\models\buiscits_box.p3d";
	picture = "z\addons\dayz_communityassets\pictures\i_buiscit_ca.paa";
	descriptionShort = $STR_FOODCOOKED_EQUIP_CODE_DESC_5;
	bloodRegen = 0;
};
class FoodMRE : FoodEdible {
	scope = public;
	count = 1;
	bloodRegen = 0;
	displayName = $STR_FOOD_NAME_MRE;
	descriptionShort = $STR_FOOD_DESC_MRE;
	model = "z\addons\dayz_communityassets\models\mre.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_mre_CA.paa";
};
class FoodPistachio : FoodEdible {
	scope = public;
	count = 1;
	bloodRegen = 0;
	displayName = $STR_FOOD_NAME_PISTACHIO;
	descriptionShort = $STR_FOOD_DESC_PISTACHIO;
	model = "z\addons\dayz_communityassets\models\pistachio.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_pistachios_CA.paa";
};
class FoodNutmix : FoodEdible {
	scope = public;
	count = 1;
	bloodRegen = 0;
	displayName = $STR_FOOD_NAME_NUTMIX;
	descriptionShort = $STR_FOOD_DESC_NUTMIX;
	model = "z\addons\dayz_communityassets\models\nutmix.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_nutmix_CA.paa";
};

class FoodCanGriff : FoodEdible {
	scope = public;
	count = 1;
	bloodRegen = 0;
	displayName = $STR_FOOD_NAME_CAN_GRIFF;
	descriptionShort = $STR_FOOD_DESC_CAN_GRIFF;
	model = "z\addons\dayz_communityassets\models\can_griff_clean_full.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_griff_clean_full_ca.paa";
};
class FoodCanBadguy : FoodEdible {
	scope = public;
	count = 1;
	bloodRegen = 0;
	displayName = $STR_FOOD_NAME_CAN_BADGUY;
	descriptionShort = $STR_FOOD_DESC_CAN_BADGUY;
	model = "z\addons\dayz_communityassets\models\can_badguy_clean_full.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_badguy_clean_full_ca.paa";
};
class FoodCanBoneboy : FoodEdible {
	scope = public;
	count = 1;
	bloodRegen = 0;
	displayName = $STR_FOOD_NAME_CAN_BONEBOY;
	descriptionShort = $STR_FOOD_DESC_CAN_BONEBOY;
	model = "z\addons\dayz_communityassets\models\can_boneboy_clean_full.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_boneboy_clean_full_ca.paa";
};
class FoodCanCorn : FoodEdible {
	scope = public;
	count = 1;
	bloodRegen = 0;
	displayName = $STR_FOOD_NAME_CAN_CORN;
	descriptionShort = $STR_FOOD_DESC_CAN_CORN;
	model = "z\addons\dayz_communityassets\models\can_corn_clean_full.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_corn_clean_full_ca.paa";
};
class FoodCanCurgon : FoodEdible {
	scope = public;
	count = 1;
	bloodRegen = 0;
	displayName = $STR_FOOD_NAME_CAN_CURGON;
	descriptionShort = $STR_FOOD_DESC_CAN_CURGON;
	model = "z\addons\dayz_communityassets\models\can_curgon_clean_full.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_curgon_clean_full_ca.paa";
};
class FoodCanDemon : FoodEdible {
	scope = public;
	count = 1;
	bloodRegen = 0;
	displayName = $STR_FOOD_NAME_CAN_DEMON;
	descriptionShort = $STR_FOOD_DESC_CAN_DEMON;
	model = "z\addons\dayz_communityassets\models\can_demon_clean_full.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_demon_clean_full_ca.paa";
};
class FoodCanFraggleos : FoodEdible {
	scope = public;
	count = 1;
	bloodRegen = 0;
	displayName = $STR_FOOD_NAME_CAN_FRAGGLEOS;
	descriptionShort = $STR_FOOD_DESC_CAN_FRAGGLEOS;
	model = "z\addons\dayz_communityassets\models\can_fraggleos_clean_full.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_fraggleos_clean_full_ca.paa";
};
class FoodCanHerpy : FoodEdible {
	scope = public;
	count = 1;
	bloodRegen = 0;
	displayName = $STR_FOOD_NAME_CAN_HERPY;
	descriptionShort = $STR_FOOD_DESC_CAN_HERPY;
	model = "z\addons\dayz_communityassets\models\can_herpy_clean_full.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_herpy_clean_full_ca.paa";
};
class FoodCanOrlok : FoodEdible {
	scope = public;
	count = 1;
	bloodRegen = 0;
	displayName = $STR_FOOD_NAME_CAN_ORLOK;
	descriptionShort = $STR_FOOD_DESC_CAN_ORLOK;
	model = "z\addons\dayz_communityassets\models\can_orlok_clean_full.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_orlok_clean_full_ca.paa";
};
class FoodCanPowell : FoodEdible {
	scope = public;
	count = 1;
	bloodRegen = 0;
	displayName = $STR_FOOD_NAME_CAN_POWELL;
	descriptionShort = $STR_FOOD_DESC_CAN_POWELL;
	model = "z\addons\dayz_communityassets\models\can_powell_clean_full.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_powell_clean_full_ca.paa";
};
class FoodCanTylers : FoodEdible {
	scope = public;
	count = 1;
	bloodRegen = 0;
	displayName = $STR_FOOD_NAME_CAN_TYLERS;
	descriptionShort = $STR_FOOD_DESC_CAN_TYLERS;
	model = "z\addons\dayz_communityassets\models\can_tylers_clean_full.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_tylers_clean_full_ca.paa";
};
class FoodCanUnlabeled : FoodEdible {
	scope = public;
	count = 1;
	bloodRegen = 0;
	displayName = $STR_FOOD_NAME_CAN_UNLABELED;
	descriptionShort = $STR_FOOD_DESC_CAN_UNLABELED;
	model = "z\addons\dayz_communityassets\models\can_unlabeled_clean_full.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_unlabeled_clean_full_ca.paa";
};

class TrashTinCan: HandGrenade {
	scope = 2;
	displayName = $STR_EQUIP_NAME_33;
	model = "\dayz_equip\models\trash_tincan.p3d";
	picture = "\dayz_equip\textures\equip_tincan_ca.paa";
	descriptionShort = $STR_EQUIP_DESC_33;
	ammo = "TinCan";
	class ItemActions {
		class Crafting {
			text = "Melt into Bars";
			script = ";['Crafting','CfgMagazines', _id] spawn player_craftItem;";
			neednearby[] = {"fire"};
			requiretools[] = {"ItemToolbox"};
			output[] = {{"ItemTinBar",1}};
			input[] = {{"TrashTinCan",6}};
		};
	};
};

class FoodCanGriffEmpty : TrashTinCan {
	scope = public;
	count = 1;
	model = "z\addons\dayz_communityassets\models\can_griff_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_griff_clean_empty_ca.paa";
	displayName = $STR_FOOD_NAME_CAN_GRIFF_EMPTY;
	descriptionShort = $STR_FOOD_DESC_CAN_GRIFF_EMPTY;
	ammo = "TinCan";
};
class FoodCanBadguyEmpty : TrashTinCan {
	scope = public;
	count = 1;
	displayName = $STR_FOOD_NAME_CAN_BADGUY_EMPTY;
	descriptionShort = $STR_FOOD_DESC_CAN_BADGUY_EMPTY;
	model = "z\addons\dayz_communityassets\models\can_badguy_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_badguy_clean_empty_ca.paa";
	ammo = "TinCan";
};
class FoodCanBoneboyEmpty : TrashTinCan {
	scope = public;
	count = 1;
	displayName = $STR_FOOD_NAME_CAN_BONEBOY_EMPTY;
	descriptionShort = $STR_FOOD_DESC_CAN_BONEBOY_EMPTY;
	model = "z\addons\dayz_communityassets\models\can_boneboy_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_boneboy_clean_empty_ca.paa";
	ammo = "TinCan";
};
class FoodCanCornEmpty : TrashTinCan {
	scope = public;
	count = 1;
	displayName = $STR_FOOD_NAME_CAN_CORN_EMPTY;
	descriptionShort = $STR_FOOD_DESC_CAN_CORN_EMPTY;
	model = "z\addons\dayz_communityassets\models\can_corn_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_corn_clean_empty_ca.paa";
	ammo = "TinCan";
};
class FoodCanCurgonEmpty : TrashTinCan {
	scope = public;
	count = 1;
	displayName = $STR_FOOD_NAME_CAN_CURGON_EMPTY;
	descriptionShort = $STR_FOOD_DESC_CAN_CURGON_EMPTY;
	model = "z\addons\dayz_communityassets\models\can_curgon_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_curgon_clean_empty_ca.paa";
	ammo = "TinCan";
};
class FoodCanDemonEmpty : TrashTinCan {
	scope = public;
	count = 1;
	displayName = $STR_FOOD_NAME_CAN_DEMON_EMPTY;
	descriptionShort = $STR_FOOD_DESC_CAN_DEMON_EMPTY;
	model = "z\addons\dayz_communityassets\models\can_demon_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_demon_clean_empty_ca.paa";
	ammo = "TinCan";
};
class FoodCanFraggleosEmpty : TrashTinCan {
	scope = public;
	count = 1;
	displayName = $STR_FOOD_NAME_CAN_FRAGGLEOS_EMPTY;
	descriptionShort = $STR_FOOD_DESC_CAN_FRAGGLEOS_EMPTY;
	model = "z\addons\dayz_communityassets\models\can_fraggleos_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_fraggleos_clean_empty_ca.paa";
	ammo = "TinCan";
};
class FoodCanHerpyEmpty : TrashTinCan {
	scope = public;
	count = 1;
	displayName = $STR_FOOD_NAME_CAN_HERPY_EMPTY;
	descriptionShort = $STR_FOOD_DESC_CAN_HERPY_EMPTY;
	model = "z\addons\dayz_communityassets\models\can_herpy_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_herpy_clean_empty_ca.paa";
	ammo = "TinCan";
};
class FoodCanOrlokEmpty : TrashTinCan {
	scope = public;
	count = 1;
	displayName = $STR_FOOD_NAME_CAN_ORLOK_EMPTY;
	descriptionShort = $STR_FOOD_DESC_CAN_ORLOK_EMPTY;
	model = "z\addons\dayz_communityassets\models\can_orlok_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_orlok_clean_empty_ca.paa";
	ammo = "TinCan";
};
class FoodCanPowellEmpty : TrashTinCan {
	scope = public;
	count = 1;
	displayName = $STR_FOOD_NAME_CAN_POWELL_EMPTY;
	descriptionShort = $STR_FOOD_DESC_CAN_POWELL_EMPTY;
	model = "z\addons\dayz_communityassets\models\can_powell_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_powell_clean_empty_ca.paa";
	ammo = "TinCan";
};
class FoodCanTylersEmpty : TrashTinCan {
	scope = public;
	count = 1;
	displayName = $STR_FOOD_NAME_CAN_TYLERS_EMPTY;
	descriptionShort = $STR_FOOD_DESC_CAN_TYLERS_EMPTY;
	model = "z\addons\dayz_communityassets\models\can_tylers_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_tylers_clean_empty_ca.paa";
	ammo = "TinCan";
};
class FoodCanUnlabeledEmpty : TrashTinCan {
	scope = public;
	count = 1;
	displayName = $STR_FOOD_NAME_CAN_UNLABELED_EMPTY;
	descriptionShort = $STR_FOOD_DESC_CAN_UNLABELED_EMPTY;
	model = "z\addons\dayz_communityassets\models\can_unlabeled_clean_empty.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_can_unlabeled_clean_empty_ca.paa";
	ammo = "TinCan";
};

class ItemTrout : FoodEdible {
	scope = 2;
	displayName = "Rainbow Trout";
	descriptionShort = "Rainbow Trout: A small fish that can be fairly easy to catch.";
	model = "\z\addons\dayz_epoch\models\trout.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_rainbowtrout_CA.paa";
	bloodRegen = 0;
};
class ItemSeaBass : FoodEdible {
	scope = 2;
	displayName = "Sea Bass";
	descriptionShort = "Sea Bass: A medium sized fish that is fairly rare.";
	model = "\z\addons\dayz_epoch\models\seabass.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_seabass_CA.paa";
	bloodRegen = 0;
};
class ItemTuna : FoodEdible {
	scope = 2;
	displayName = "Blue Fin Tuna";
	descriptionShort = "Blue Fin Tuna: A very large and hard to catch fish. Sushi anyone?";
	model = "\z\addons\dayz_epoch\models\tuna.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_tuna_CA.paa";
	bloodRegen = 0;
};
class ItemTroutCooked : FoodEdible {
	scope = 2;
	displayName = "Rainbow Trout (Cooked)";
	descriptionShort = "Rainbow Trout: A small fish that can be fairly easy to catch.";
	model = "\z\addons\dayz_epoch\models\trout_cooked.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_trout_cooked_CA.paa";
	bloodRegen = 0;
};
class ItemSeaBassCooked : FoodEdible {
	scope = 2;
	displayName = "Sea Bass (Cooked)";
	descriptionShort = "Sea Bass: A medium sized fish that is fairly rare.";
	model = "\z\addons\dayz_epoch\models\seabass_cooked.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_seabass_cooked_CA.paa";
	bloodRegen = 0;
};
class ItemTunaCooked : FoodEdible {
	scope = 2;
	displayName = "Blue Fin Tuna (Cooked)";
	descriptionShort = "Blue Fin Tuna: A very large and hard to catch fish. Sushi anyone?";
	model = "\z\addons\dayz_epoch\models\tuna_cooked.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_tuna_cooked_CA.paa";
	bloodRegen = 0;
};
class FoodBioMeat: FoodEdible {
	scope = 2;
	displayName = "Bio Meat";
	model = "\z\addons\dayz_epoch\models\biomeat_can.p3d";
	picture = "\z\addons\dayz_epoch\pictures\equip_biomeat_CA.paa";
	descriptionShort = "Bio Meat: A very good source of nutrition, and a very high chance of infection. Eat at own risk.";
	bloodRegen = 0;
};
// new DZE harvested food
class FoodPumpkin : FoodEdible {
	scope = public;
	count = 1;
	bloodRegen = 0;
	displayName = "Pumpkin";
	descriptionShort = "Pumpkin";
	weight = 1;
	model = "z\addons\dayz_communityassets\models\pistachio.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_pistachios_CA.paa";
};
class FoodSunFlowerSeed : FoodEdible {
	scope = public;
	count = 1;
	bloodRegen = 0;
	displayName = "Bag of Sunflower Seeds";
	descriptionShort = "Bag of Sunflower Seeds";
	weight = 0.1;
	model = "z\addons\dayz_communityassets\models\pistachio.p3d";
	picture = "\z\addons\dayz_communityassets\pictures\equip_pistachios_CA.paa";
};
