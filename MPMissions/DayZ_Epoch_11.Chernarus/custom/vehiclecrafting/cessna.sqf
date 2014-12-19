private ["_object","_cursorTarget","_weaponsplayer","_pkm","_m240","_hasToolbox","_id"];

if(DZE_ActionInProgress) exitWith { cutText ["You can't craft this right now", "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

_cursorTarget = cursorTarget;
_weaponsplayer = weapons player;
_magazinesPlayer = magazines player;
_pkm = "pk" in _weaponsplayer;
_m240 = "m240" in _weaponsplayer;
_hasToolbox = 	"ItemToolbox" in _weaponsPlayer;
_hasPole = "itempole" in _magazinesPlayer;


If (_cursorTarget iskindof "GNT_C185U") then {
	_id = 1
	_object=nearestObject [player, "GNT_C185U"];
};
If (_cursorTarget iskindof "GNT_C185") then {
	_id = 2
	_object=nearestObject [player, "GNT_C185"];
};
If (_cursorTarget iskindof "GNT_C185R") then {
	_id = 3
	_object=nearestObject [player, "GNT_C185R"];
};
If (_cursorTarget iskindof "GNT_C185C") then {
	_id = 4
	_object=nearestObject [player, "GNT_C185C"];
};

If (_pkm && _hasToolbox && _hasPole) then {
	_object =nearestObject [player, "GNT_C185U"];
};
