
//snap building pro
if (!isDedicated) then {
    player_build = compile preprocessFileLineNumbers "custom\snap_pro\player_build.sqf";
    snap_build = compile preprocessFileLineNumbers "custom\snap_pro\snap_build.sqf";
    dayz_spaceInterrupt = compile preprocessFileLineNumbers "custom\snap_pro\dayz_spaceInterrupt.sqf";
	
	//custom bloodbag
	player_useMeds =            compile preprocessFileLineNumbers "custom\self_bb\player_useMeds.sqf";
	
	//custom select_slot - used in many scripts
	player_selectSlot =			compile preprocessFileLineNumbers "custom\ui_selectSlot.sqf";
};