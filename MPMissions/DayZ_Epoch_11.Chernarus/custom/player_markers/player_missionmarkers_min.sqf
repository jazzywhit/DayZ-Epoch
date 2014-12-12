//WAI MissionMarker Addon by *hs-s.com | waTTe - www.banditparty.de	
private["_position","_name","_text","_Marker","_dot"];
_position = _this select 0;
_name = _this select 1;
diag_log(format["Position: %1 Name: %2",_position, _name]);

_text = format["Your radio crackles and you hear about a %1 - Check your Map for the location",_name];
systemChat _text;

deleteMarkerLocal "MissionMinorCircle";
deleteMarkerLocal "MissionMinorDot";

_Marker = createMarkerLocal ["MissionMinorCircle", _position];
_Marker setMarkerColorLocal "ColorYellow";
_Marker setMarkerShapeLocal "ELLIPSE";
_Marker setMarkerBrushLocal "Grid";
_Marker setMarkerSizeLocal [300,300];
_Marker setMarkerTextLocal _name;

_dot = createMarkerLocal ["MissionMinorDot", _position];
_dot setMarkerColorLocal "ColorBlack";
_dot setMarkerTypeLocal "mil_dot";
_dot setMarkerTextLocal _name;