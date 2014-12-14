private["_position","_ghost_pos","_radius","_offset","_name","_text","_Marker","_dot"];
_position = _this select 0;
_radius = 600;
_offset = 450;
_ghost_pos = [(_position select 0) + (random _offset), (_position select 1) + (random _offset), 0];
_name = _this select 1;
diag_log(format["Position: %1 Name: %2",_position, _name]);

_text = format["Your radio crackles and you hear about a %1 - Check your Map for the location",_name];
systemChat _text;

_Marker = createMarkerLocal ["MissionMinorCircle", _ghost_pos];
_Marker setMarkerColorLocal "ColorYellow";
_Marker setMarkerShapeLocal "ELLIPSE";
_Marker setMarkerBrushLocal "Grid";
_Marker setMarkerSizeLocal [_radius,_radius];
_Marker setMarkerTextLocal _name;

_dot = createMarkerLocal ["MissionMinorDot", _ghost_pos];
_dot setMarkerColorLocal "ColorBlack";
_dot setMarkerTypeLocal "mil_dot";
_dot setMarkerTextLocal _name;
