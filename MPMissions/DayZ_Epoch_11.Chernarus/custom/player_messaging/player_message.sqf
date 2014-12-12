private["_flair_text","_name","_text"];
_position = _this select 0;
_ghost_pos = [(_position select 0) + (random 300), (_position select 1) + (random 300), 0];
_name = _this select 1;
diag_log(format["Position: %1 Name: %2",_position, _name]);

_text = format["Your radio crackles and you hear about a %1 - Check your Map for the location",_name];
systemChat _text;