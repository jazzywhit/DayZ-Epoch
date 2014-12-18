if (isServer) then {
_grp = createGroup west;
_unit = _grp createUnit ["B_Soldier_F",markerPos "respawn_west", [], 0, "CAN_COLLIDE"];

0 = [_unit] spawn H8_addDrag;

	};