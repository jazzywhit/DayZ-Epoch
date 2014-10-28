private ["_camp"];

_x = _this select 0;
_y = _this select 1;
_z = _this select 2;

["TK_GUE_Soldier_Sniper_EP1", [_x,_y,_z], (194.28-180)] call DT_fnc_CreateTrader;
