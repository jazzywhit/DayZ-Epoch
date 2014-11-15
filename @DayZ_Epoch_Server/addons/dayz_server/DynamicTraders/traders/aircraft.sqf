private ["_camp"];

_x = _this select 0;
_y = _this select 1;
_z = _this select 2;

_camp = [
	["Land_fort_bagfence_long",[0.468506, 2.44519],123.738,1,0,{}],
	["Land_fort_bagfence_long",[-4.37781, -0.365234],174.046,1,0,{}],
	["FoldTable",[-2.44507, 4.995],158.416,1,0,{}],
	["Land_Water_pipe_EP1",[-1.8678,5.35425,0.0231171],223.017,1,0,{}],
	["Land_Chair_EP1",[-3.0448, 6.53442],75.9589,1,0,{}],
	["FireBarrel_DZ",[-6.53796, 3.70911],223.15,1,0,{}],
	["Land_Bag_EP1",[-5.68323, 4.9364],223.15,1,0,{}],
	["Land_Barrel_water",[-6.9906, 3.06421],223.15,1,0,{}],
	["Land_Misc_Cargo2E_EP1",[-2.19934, 8.09192],264.227,1,0,{}],
	["UH60_wreck_EP1",[-2.68555,8.26086,4.79851],239.401,1,0,{}],
	["Land_Misc_Cargo2E",[-8.00061, 5.05347],217.434,1,0,{}],
	["Mi8Wreck",[7.09009, 7.66833],0.00352896,1,0,{}],
	["Mi8Wreck",[-9.39648, -1.67212],318.822,1,0,{}],
	["HeliHCivil",[4.49377, -11.4432],0,1,0,{}]
];

[[_x, _y], 0, _camp] call DT_fnc_ObjectsMapper;

["Worker2", [_x + -2.84399,_y + 6.00989], (222.252-180)] call DT_fnc_CreateTrader;
