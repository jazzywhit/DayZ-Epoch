//Mining Start
private ["_mining_steps", "_step_cnt","_remainder","_rand","_randGem","_hasTool","_inventory","_currentWeapon","_mining_message","_has_free_space","_cursorTarget"];

isMining = true;
_has_free_space = true;
_cursorTarget = cursorTarget;
_mining_message = "";
_mining_steps = 5; // Default mining length is 5 seconds

player removeAction s_player_mine;
s_player_mining = -1;

//checks player's current weapon and exit with message if they do not have a sledge equipped
//adds eventhandler so that if the player looks away from the rock they break out of the mining action
_currentWeapon = primaryWeapon player;
if (_currentWeapon == "MeleeSledge" || _currentWeapon == "MeleeCrowbar") then {
    _hasTool = true;
} else {
    _hasTool = false;
};

if (_hasTool) then {
	r_interrupt=false;
	systemChat("You have Started Mining");
	
	while {isMining} do {
		_inventory = magazines player;

		if (_currentWeapon == "MeleeCrowbar") then {
		    _step_cnt = _mining_steps * 2;
        } else {
            _step_cnt = _mining_steps;
        };
		systemChat(_mining_message);
		
		//set up quick loop that swings the sledge and if player moves it breaks out of the mining action

		while {_step_cnt > 0} do {
			_cursorTarget = cursorTarget;

            // Interrupt if the player moves
			if((r_interrupt)) exitWith { isMining=false };

            // Play the mining noise at appropriate times
            _remainder = _step_cnt mod _mining_steps;
            if (_remainder == 0) then {
                [player,"tentunpack",0,false] call dayz_zombieSpeak; // Play sound for the mining action
            };

            // Swing the weapon and take hunger/thirst
			player playActionNow "GestureSwing";
			[20,30] call dayz_HungerThirst; // Each swing causes you to get hungry/thirsty
			sleep 1;
			_step_cnt = _step_cnt - 1;
		};

		if (isMining) then {
			private ["_rand","_randGem"];
			_rand = random 1;

            // Gather the ore that you mined
            player playActionNow "Medic";
            sleep 9;

			if (_rand <= 0.2) then {
				_has_free_space=[player,"PartOre",false] call BIS_fnc_invAdd;
				_mining_message="Mined 1 Iron ore.";
			};
			if (_rand <= 0.4 && _rand > 0.2) then {
				_has_free_space=[player,"PartOreSilver",false] call BIS_fnc_invAdd;
				_mining_message="Mined 1 Silver ore.";
			};
            if (_rand <= 0.70 && _rand > 0.40) then {
                _has_free_space=[player,"PartOreGold",false] call BIS_fnc_invAdd;
                _mining_message="Mined 1 Silver ore.";
            };
			if (_rand <= 0.85 && _rand > 0.70) then { // Gems have 30% chance of being mined 15/30 = 50% chance of ItemTopaz
				_has_free_space=[player,"ItemTopaz",false] call BIS_fnc_invAdd;
				_mining_message="Mined 1 Topaz.";				
			};
			if (_rand <= 0.90 && _rand > 0.85) then { // Gems have 30% chance of being mined 5/30 = 17% chance of ItemCitrine
				_has_free_space=[player,"ItemCitrine",false] call BIS_fnc_invAdd;
				_mining_message="Mined 1 Citrine.";				
			};
			if (_rand <= 0.94 && _rand > 0.90) then { // Gems have 30% chance of being mined 4/30 = 13% chance of ItemAmethyst
				_has_free_space=[player,"ItemAmethyst",false] call BIS_fnc_invAdd;
				_mining_message="Mined 1 Amethyst.";				
			};
			if (_rand <= 0.97 && _rand > 0.94) then { // Gems have 30% chance of being mined 3/30 = 10% chance of ItemSapphire
				_has_free_space=[player,"ItemSapphire",false] call BIS_fnc_invAdd;
				_mining_message="Mined 1 Sapphire.";				
			};
			if (_rand <= 0.99 && _rand > 0.97) then { // Gems have 30% chance of being mined 2/30 = 7% chance of ItemObsidian
				_has_free_space=[player,"ItemObsidian",false] call BIS_fnc_invAdd;
				_mining_message="Mined 1 Obsidian.";				
			};
			if (_rand > 0.99) then { // Gems have 30% chance of being mined 1/30 = 3% chance of ItemRuby
				_has_free_space=[player,"ItemRuby",false] call BIS_fnc_invAdd;
				_mining_message="Mined 1 Ruby.";				
			};

			// If there is no room in inventory, exit
            if (!_has_free_space) exitWith {
                isMining = false;
                player removeAction s_player_mining;
                s_player_mine = -1;
                systemChat ("Your inventory is full.");
            };
		} else {
			systemChat("You have Stopped Mining");
			player removeAction s_player_mining;
			s_player_mine = -1;
		};
	};
} else {
	systemChat("You Must have a Sledgehammer or Crowbar Equipped to Mine!");
	isMining = false;
	player removeAction s_player_mining;
	s_player_mine = -1;		
};