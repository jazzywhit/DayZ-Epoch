
_object = dayz_selectedDoor;
_newCombo = DZE_Lock_Door;
_object setVariable ["CharacterID",_newCombo,true];
_actual = _object getVariable ["CharacterID", "0"];
cutText [format["Your new ComboKey:  %1", _actual], "PLAIN DOWN"];
_classname = typeOf _object;

  
	        _location	= _object getVariable["OEMPos",(getposATL _object)];
			_dir = getDir _object;

				
			// Create new object 
			_newobject = createVehicle [_classname, [0,0,0], [], 0, "CAN_COLLIDE"];

			// Set direction
			_newobject setDir _dir;

			// Set location
			_newobject setPosATL _location;

			PVDZE_obj_Swap = [_actual,_newobject,[_dir,_location],_classname,_object,player];
			publicVariableServer "PVDZE_obj_Swap";

			player reveal _newobject;
			
			dayz_selectedDoor = _newobject;
	