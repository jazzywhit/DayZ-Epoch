// Rewriten by Soul from DayZ2017 to work with DayZ1.7.7.1
// Special thanks to reactortrip for bringing this up
// Krixes for the countdown timer example in his sleep script ;D
// The whole community for releasing all there scripts and so enabling me to learn alot!

private["_ent"];

if(DZE_ActionInProgress) exitWith { cutText ["You can't burn anything right now", "PLAIN DOWN"]; };
DZE_ActionInProgress = true;

//Variables ------------------------------------------------
_ent = _this select 3; //Dont touch this
_countDownTimer = 60; //Total time to count down, makes the tent burn for 60 seconds. Change to whatever you like...
_timeLeft = _countDownTimer; //time left to count down, dont touch this
canAbort = true;
//----------------------------------------------------------

player removeAction s_player_igniteBuilding;
s_player_igniteBuilding = 1;

player playActionNow "Medic";
sleep 7;

PVDZ_obj_Fire = [_ent,2,time,false,true];
publicVariable "PVDZ_obj_Fire";
_id = PVDZ_obj_Fire spawn BIS_Effects_Burn;

for "_i" from 0 to _countDownTimer do {
	sleep 1;
	_timeLeft = _timeLeft - 1;
};

if(_timeLeft == 0 || _timeLeft < 0) then {
	_ent setDamage 1;
};

s_player_igniteBuilding = -1;
DZE_ActionInProgress = false;