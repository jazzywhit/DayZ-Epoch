private ["_camp"];

_x = _this select 0;
_y = _this select 1;
_z = _this select 2;

_camp = [
	["FoldTable",[-2.44507, 4.995],158.416,1,0,{}],
	["Land_Chair_EP1",[-3.0448, 6.53442],75.9589,1,0,{}],
	["FireBarrel_DZ",[-6.53796, 3.70911],223.15,1,0,{}]
];

[[_x, _y], 0, _camp] call DT_fnc_ObjectsMapper;

["Worker2", [_x + -2.84399,_y + 6.00989], (158.416)] call DT_fnc_CreateTrader;
