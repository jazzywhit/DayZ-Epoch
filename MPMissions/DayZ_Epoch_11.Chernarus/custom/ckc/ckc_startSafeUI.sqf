dayz_combination = "";

_object = nearestObject [player, "VaultStorage"];
_first = _object getVariable ["CharacterID", "0"];
cutText [format["Your actual code: %1", _first], "PLAIN DOWN"];



createDialog "ckc_SafeUI";	
findDisplay 118338;