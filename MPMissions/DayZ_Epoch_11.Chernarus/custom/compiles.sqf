
//snap building pro
if (!isDedicated) then {
    player_build = compile preprocessFileLineNumbers "custom\snap_pro\player_build.sqf";
    snap_build = compile preprocessFileLineNumbers "custom\snap_pro\snap_build.sqf";
    dayz_spaceInterrupt = compile preprocessFileLineNumbers "custom\snap_pro\dayz_spaceInterrupt.sqf";
	
	//custom bloodbag
	player_useMeds = compile preprocessFileLineNumbers "custom\self_bb\player_useMeds.sqf";
	
	//custom select_slot - used in many scripts
	player_selectSlot = compile preprocessFileLineNumbers "custom\ui_selectSlot.sqf";
	
	//take clothes
	player_death = compile preprocessFileLineNumbers "custom\Recover_Skin\player_death.sqf";
	
	//instant trade
	if (DZE_ConfigTrader) then {
	    call compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_traderMenuConfig.sqf";
	} else {
	    call compile preprocessFileLineNumbers "custom\fast_trade\player_traderMenuHive.sqf";
	};

	//Custom code
	call compile preprocessFileLineNumbers "custom\code\variables.sqf";
};