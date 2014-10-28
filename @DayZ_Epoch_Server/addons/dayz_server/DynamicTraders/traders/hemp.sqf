private ["_camp"];

_x = _this select 0;
_y = _this select 1;
_a = _this select 2;

["TK_GUE_Soldier_Sniper_EP1", [_x,_y], (_a)] call DT_fnc_CreateTrader;
