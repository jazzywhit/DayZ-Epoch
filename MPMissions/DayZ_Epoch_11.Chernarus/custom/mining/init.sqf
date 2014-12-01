//Mining Actions
notified = false;
_hasTool =  false;

while {true} do {
	private ["_pos","_mineNodes","_inRange","_trigger","_hasTool","_inventory","_currentWeapon"];
	
	_trigger = ["BeltBuckle_DZE"];
	_pos = getPosATL player;
	_mineNodes = (nearestObjects [_pos, _trigger, 15]);
	_inRange = count _mineNodes > 0;
	_inventory = items player;
	_currentWeapon = primaryWeapon player;
	_hasTool = false;
	
	//Check for sledge/crowbar in hand
	if (((_currentWeapon == "MeleeSledge") || ("ItemSledge" in _inventory)) || ((_currentWeapon == "MeleeCrowbar") || ("ItemCrowbar" in _inventory))) then {
		_hasTool=true;
	};

	if (_inRange) then {
		if (!notified) then {
			cutText ['Mining Area: To mine you must equip a Sledgehammer or crowbar, then pick start mining from your scroll menu. Sledgehammers work much better', 'PLAIN'];
			notified = true;
		};
	} else { notified = false; };


	if (_inRange && _hasTool) then {
	
		if (s_player_mine < 0 && !isMining) then { s_player_mine = player addaction [("<t color=""#0074E8"">" + ("Start Mining") +"</t>"),"custom\mining\start.sqf","",5,false,true,"",""]; };
		if (s_player_mining < 0 && isMining) then {	s_player_mining = player addaction [("<t color=""#0074E8"">" + ("Stop Mining") +"</t>"),"custom\mining\stop.sqf","",5,false,true,"",""]; };
	} else {
		player removeAction s_player_mining;
		player removeAction s_player_mine;
		s_player_mining = -1;
		s_player_mine = -1;
		isMining = false;
	};
	sleep 2;
};
