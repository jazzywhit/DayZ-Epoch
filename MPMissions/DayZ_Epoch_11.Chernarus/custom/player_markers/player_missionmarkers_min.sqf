private["_position","_name","_text","_Marker","_dot"];
_position = _this select 0;
_name = _this select 1;
diag_log(format["Position: %1 Name: %2",_position, _name]);

_text = format["Your radio crackles and you hear about a %1 - Check your Map for the location",_name];
systemChat _text;

_Marker = createMarkerLocal ["MissionMinorCircle", [(_position select 0) + (random 300), (_position select 1) + (random 300), 0]];
_Marker setMarkerColorLocal "ColorYellow";
_Marker setMarkerShapeLocal "ELLIPSE";
_Marker setMarkerBrushLocal "Grid";
_Marker setMarkerSizeLocal [600,600];
_Marker setMarkerTextLocal _name;
