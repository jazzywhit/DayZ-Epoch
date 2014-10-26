if (!isDedicated) then {

	//Custom time
	//call compile preprocessFileLineNumbers "custom\custom_time\time_control.sqf";
  
	//custom bloodbag
	player_useMeds = compile preprocessFileLineNumbers "custom\self_bb\player_useMeds.sqf";
	
	//custom select_slot - used in many scripts
	player_selectSlot = compile preprocessFileLineNumbers "custom\code\ui_selectSlot.sqf";
	
	//take clothes
	player_death = compile preprocessFileLineNumbers "custom\Recover_Skin\player_death.sqf";
	
	//instant trade
	if (DZE_ConfigTrader) then {
	    call compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_traderMenuConfig.sqf";
	} else {
	    call compile preprocessFileLineNumbers "custom\fast_trade\player_traderMenuHive.sqf";
	};

	//walkamongstthedead
	call compile preprocessFileLineNumbers "custom\walkamongstthedead\config.sqf";
	
	//Self Actions
	fnc_usec_selfActions = compile preprocessFileLineNumbers "custom\code\fn_selfActions.sqf";
	
	//tow and lift
	call compile preprocessFileLineNumbers "custom\tow_lift\init.sqf";
};