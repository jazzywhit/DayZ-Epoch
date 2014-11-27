//DJ SCOTTY's & Mckooters IED Crafting
private["_toolBox"];
 
_toolBox                = "ItemToolbox" in items player;
 
if (!_toolBox) exitWith {cutText [format["You need a tool box to Craft an IED"], "PLAIN DOWN"];};
if (dayz_combat == 1) exitWith {cutText [format["You are in Combat and cannot build an IED"], "PLAIN DOWN"];};
 
_ctGrenade = {_x == "HandGrenade_West"} count magazines player;
_ctCan = {_x == "TrashTinCan"} count magazines player;
_ctWater = {_x == "ItemWaterbottleUnfilled"} count magazines player;
if ((_ctGrenade >= 2)&&(_ctCan >= 1)&&(_ctWater >= 1)) then {
 
        player playActionNow "Medic";
        r_interrupt = false;
        player removeMagazine "HandGrenade_West";
        player removeMagazine "HandGrenade_West";
        player removeMagazine "TrashTinCan";
        player removeMagazine "ItemWaterbottleUnfilled";
        _dis=10;
        _sfx = "repair";
        [player,_sfx,0,false,_dis] call dayz_zombieSpeak;
        [player,_dis,true,(getPosATL player)] spawn player_alertZombies;
       
        sleep 6;
       
        player addMagazine "BAF_ied_v1";
        cutText [format["You have crafted an IED."], "PLAIN DOWN"];
       
        r_interrupt = false;
        player switchMove "";
        player playActionNow "stop";
} else {
cutText [format["You need 2 Grenades a tin can and a water bottle (empty) to craft an IED"], "PLAIN DOWN"];      
};