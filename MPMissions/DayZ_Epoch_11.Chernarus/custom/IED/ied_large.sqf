//DJ SCOTTY's & Mckooters IED Crafting
private["_hasToolbox","_cnt_ied_small"];
 
if (!_hasToolbox) exitWith {cutText [format["You need a tool box to Craft a Large IED"], "PLAIN DOWN"];};
if (dayz_combat == 1) exitWith {cutText [format["You are in Combat and cannot build a Large IED"], "PLAIN DOWN"];};
 
_cnt_ied_small = {_x == "BAF_ied_v1"} count magazines player;
_cnt_hotwire = {_x == "ItemHotwireKit"} count magazines player;

if (_cnt_ied_small < 5 || _cnt_hotwire < 1) then {
    cutText [format["You need 5 Small IED's and a Hotwire Kit to craft a Large IED"], "PLAIN DOWN"];
} else {
    player playActionNow "Medic";
    r_interrupt = false;
    player removeMagazine "BAF_ied_v1";
    player removeMagazine "BAF_ied_v1";
    player removeMagazine "BAF_ied_v1";
    player removeMagazine "BAF_ied_v1";
    player removeMagazine "BAF_ied_v1";
    player removeMagazine "ItemHotwireKit";
    
    _alert_distance = 50;
    [player,"repair",0,false,_alert_distance] call dayz_zombieSpeak;
    [player,_alert_distance,true,(getPosATL player)] spawn player_alertZombies;
    sleep 6;
    
    player addMagazine "BAF_ied_v2";
    cutText [format["You have crafted a large IED"], "PLAIN DOWN"];
    
    r_interrupt = false;
    player switchMove "";
    player playActionNow "stop";
};