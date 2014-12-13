private["_position","_ghost_pos","_radius","_name","_text","_Marker","_dot"];
_position = _this select 0;
_radius = 600;
_ghost_pos = [(_position select 0) + (random _radius), (_position select 1) + (random _radius), 0];
_name = _this select 1;
diag_log(format["Position: %1 Name: %2",_position, _name]);

_text = format["Your radio crackles and you hear about a %1 - Check your Map for the location",_name];
systemChat _text;

_Marker = createMarkerLocal ["MissionMajorCircle", _ghost_pos];
_Marker setMarkerColorLocal "ColorRed";
_Marker setMarkerShapeLocal "ELLIPSE";
_Marker setMarkerBrushLocal "Grid";
_Marker setMarkerSizeLocal [_radius,_radius];
_Marker setMarkerTextLocal _name;

_dot = createMarkerLocal ["MissionMajorDot", _ghost_pos];
_dot setMarkerColorLocal "ColorRed";
_dot setMarkerTypeLocal "mil_dot";
_dot setMarkerTextLocal _name;