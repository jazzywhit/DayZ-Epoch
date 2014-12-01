//Mining Start
private ["_Mining_Counter","_rand","_randGem","_hasSledge","_inventory","_currentWeapon","_mining_message","_has_free_space","_cursorTarget"];

isMining = true;
_has_free_space = true;
_cursorTarget = cursorTarget;
_mining_message = "";

player removeAction s_player_mine;
s_player_mining = -1;

//checks player's current weapon and exit with message if they do not have a sledge equipped
//adds eventhandler so that if the player looks away from the rock they break out of the mining action
_currentWeapon = primaryWeapon player;
if ((_currentWeapon == "MeleeSledge") || (_currentWeapon == "MeleeCrowbar")) then {

if (_currentWeapon == "MeleeSledge") then {
	r_interrupt=false;
	systemChat("You have Started Mining");
	
	while {isMining} do {
		_inventory = magazines player;
		_Mining_Counter = 5; // Mine for 5 seconds and collect for 10 seconds
		systemChat(_mining_message);
		
		//set up quick loop that swings the sledge and if player moves it breaks out of the mining action
		[player,"tentunpack",0,false] call dayz_zombieSpeak; // Play sound for the mining action
		while {_Mining_Counter > 0} do {
			_cursorTarget = cursorTarget;

			if((r_interrupt)) exitWith { isMining=false };
			if ((currentWeapon player)!="MeleeSledge") exitWith {
				isMining = false;
				systemChat("Sledgehammer must be the current weapon.");
			};

			player playActionNow "GestureSwing";
			[10,10] call dayz_HungerThirst; // Each swing causes you to get hungry/thirsty

			sleep 1;
			_Mining_Counter = _Mining_Counter - 1;
		};

		if (isMining) then {
			private ["_rand","_randGem"];
			_rand = random 1;

            // Gather the ore that you mined
            player playActionNow "Medic";
            sleep 9;
			
			if (_rand <= 0.5) then {
				_has_free_space=[player,"PartOre",false] call BIS_fnc_invAdd;
				_mining_message="Mined 1 Iron ore.";
			};
			if (_rand <= 0.85 && _rand > 0.50) then {
				_has_free_space=[player,"PartOreSilver",false] call BIS_fnc_invAdd;
				_mining_message="Mined 1 Silver ore.";
			};
			if (_rand <= 0.88 && _rand > 0.85) then {
				_randGem = floor(random 7);
				
				switch (_randGem) do {  
					case 0:
					{
						_has_free_space=[player,"ItemTopaz",false] call BIS_fnc_invAdd;
						_mining_message="Mined 1 Topaz.";
					};
					case 1:
					{
						_has_free_space=[player,"ItemObsidian",false] call BIS_fnc_invAdd;
						_mining_message="Mined 1 Obsidian.";
					};
					case 2:
					{
						_has_free_space=[player,"ItemSapphire",false] call BIS_fnc_invAdd;
						_mining_message="Mined 1 Sapphire.";
					};
					case 3:
					{
						_has_free_space=[player,"ItemAmethyst",false] call BIS_fnc_invAdd;
						_mining_message="Mined 1 Amethyst.";
					};
					case 4:
					{
						_has_free_space=[player,"ItemEmerald",false] call BIS_fnc_invAdd;
						_mining_message="Mined 1 Emerald.";
					};
					case 5:
					{
						_has_free_space=[player,"ItemCitrine",false] call BIS_fnc_invAdd;
						_mining_message="Mined 1 Citrine.";
					};
					case 6:
					{
						_has_free_space=[player,"ItemRuby",false] call BIS_fnc_invAdd;
						_mining_message="Mined 1 Ruby.";
					};
				};
			};
			if (_rand > 0.88) then {
				_has_free_space=[player,"PartOreGold",false] call BIS_fnc_invAdd;
				_mining_message="Mined 1 Gold ore.";
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
}; 
if (_currentWeapon == "MeleeCrowbar") then {
	r_interrupt=false;
	systemChat("You have Started Mining");
	
	while {isMining} do {
		_inventory = magazines player;
		_Mining_Counter = 7; // Mine for 5 seconds and collect for 10 seconds
		systemChat(_mining_message);
		
		//set up quick loop that swings the sledge and if player moves it breaks out of the mining action
		[player,"tentunpack",0,false] call dayz_zombieSpeak; // Play sound for the mining action
		while {_Mining_Counter > 0} do {
			_cursorTarget = cursorTarget;

			if((r_interrupt)) exitWith { isMining=false };
			if ((currentWeapon player)!="MeleeCrowbar") exitWith {
				isMining = false;
				systemChat("Crowbar must be the current weapon.");
			};

			player playActionNow "GestureSwing";
			[10,10] call dayz_HungerThirst; // Each swing causes you to get hungry/thirsty

			sleep 1;
			_Mining_Counter = _Mining_Counter - 1;
		};

		if (isMining) then {
			private ["_rand","_randGem"];
			_rand = random 1;

            // Gather the ore that you mined
            player playActionNow "Medic";
            sleep 11;
			
			if (_rand <= 0.6) then {
				_has_free_space=[player,"PartOre",false] call BIS_fnc_invAdd;
				_mining_message="Mined 1 Iron ore.";
			};
			if (_rand <= 0.86 && _rand > 0.60) then {
				_has_free_space=[player,"PartOreSilver",false] call BIS_fnc_invAdd;
				_mining_message="Mined 1 Silver ore.";
			};
			if (_rand <= 0.88 && _rand > 0.86) then {
				_randGem = floor(random 7);
				
				switch (_randGem) do {  
					case 0:
					{
						_has_free_space=[player,"ItemTopaz",false] call BIS_fnc_invAdd;
						_mining_message="Mined 1 Topaz.";
					};
					case 1:
					{
						_has_free_space=[player,"ItemObsidian",false] call BIS_fnc_invAdd;
						_mining_message="Mined 1 Obsidian.";
					};
					case 2:
					{
						_has_free_space=[player,"ItemSapphire",false] call BIS_fnc_invAdd;
						_mining_message="Mined 1 Sapphire.";
					};
					case 3:
					{
						_has_free_space=[player,"ItemAmethyst",false] call BIS_fnc_invAdd;
						_mining_message="Mined 1 Amethyst.";
					};
					case 4:
					{
						_has_free_space=[player,"ItemEmerald",false] call BIS_fnc_invAdd;
						_mining_message="Mined 1 Emerald.";
					};
					case 5:
					{
						_has_free_space=[player,"ItemCitrine",false] call BIS_fnc_invAdd;
						_mining_message="Mined 1 Citrine.";
					};
					case 6:
					{
						_has_free_space=[player,"ItemRuby",false] call BIS_fnc_invAdd;
						_mining_message="Mined 1 Ruby.";
					};
				};
			};
			if (_rand > 0.88) then {
				_has_free_space=[player,"PartOreGold",false] call BIS_fnc_invAdd;
				_mining_message="Mined 1 Gold ore.";
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
}; 

} //end of bigger if
else {
	systemChat("You Must have a Sledgehammer or Crowbar Equipped to Mine!");
	isMining = false;
	player removeAction s_player_mining;
	s_player_mine = -1;		
};