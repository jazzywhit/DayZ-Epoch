// DJ SCOTTY's & Mckooters IED Crafting
// Updated by jesquik

private["_hasToolbox", "_explosiveClasses", "_reqExplosives", "_explosivesConsumed", "_alertDistance", "_hasRadio", "_nGrenade", "_nCanvas", "_nPole"];
 
_hasToolbox              = "ItemToolbox" in items player;
 
if (!_hasToolbox) exitWith { cutText [format["You need a tool box to Craft an IED"], "PLAIN DOWN"]; };
if (dayz_combat == 1) exitWith { cutText [format["You are in Combat and cannot build an IED"], "PLAIN DOWN"]; };

_reqExplosives = 4;
_explosiveClasses = ["1Rnd_HE_GP25","1Rnd_HE_M203","HandGrenade_East","HandGrenade_West"];
_nGrenade = {_x in _explosiveClasses} count magazines player;
_nCanvas = {_x == "ItemCanvas"} count magazines player;
_nPole = {_x == "ItemPole"} count magazines player;
_hasRadio = "ItemRadio" in items player;

if ((_nGrenade >= _reqExplosives) && (_nCanvas >= 1) && (_nPole >= 1) && _hasRadio) then {
        player playActionNow "Medic";
        r_interrupt = false;
        _explosivesConsumed = 0;
        _alertDistance = 50;

        while (_explosivesConsumed < _reqExplosives) do {
            {
                if (_x in magazines player && _explosivesConsumed < _reqExplosives) then {
                    player removeMagazine _x;
                    _explosivesConsumed = _explosivesConsumed + 1;
                };
            } forEach _explosiveClasses;
        };

        player removeMagazine "ItemRadio";
        player removeMagazine "ItemCanvas";
        player removeMagazine "ItemPole";

        // Make repair sound and alert zombies nearby
        [player, "repair", 0, false, _alertDistance] call dayz_zombieSpeak;
        [player, _alertDistance, true, (getPosATL player)] spawn player_alertZombies;
        sleep 6;

        // Create
        player addMagazine "BAF_ied_v1";
        cutText [format["You have crafted an IED."], "PLAIN DOWN"];
        r_interrupt = false;
        player switchMove "";
        player playActionNow "stop";

} else {
    cutText [format["You need 4 Explosives, a Metal Pole, a Radio, and some Rags (ItemCanvas) to craft an IED"], "PLAIN DOWN"];      
};