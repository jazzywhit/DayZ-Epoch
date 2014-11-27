//DJ SCOTTY's & Mckooters IED Crafting
private["_toolBox"];
 
_toolBox                = "ItemToolbox" in items player;
 
if (!_toolBox) exitWith {cutText [format["You need a tool box to Craft a Large IED"], "PLAIN DOWN"];};
if (dayz_combat == 1) exitWith {cutText [format["You are in Combat and cannot build a Large IED"], "PLAIN DOWN"];};
 
_ctIED = {_x == "BAF_ied_v1"} count magazines player;
if (_ctIED >= 6) then {
 
        player playActionNow "Medic";
        r_interrupt = false;
        player removeMagazine "BAF_ied_v1";
        player removeMagazine "BAF_ied_v1";
        player removeMagazine "BAF_ied_v1";
player removeMagazine "BAF_ied_v1";
player removeMagazine "BAF_ied_v1";
player removeMagazine "BAF_ied_v1";
        _dis=10;
        _sfx = "repair";
        [player,_sfx,0,false,_dis] call dayz_zombieSpeak;
        [player,_dis,true,(getPosATL player)] spawn player_alertZombies;
       
        sleep 6;
       
        player addMagazine "BAF_ied_v2";
        cutText [format["You have crafted a large IED"], "PLAIN DOWN"];
       
        r_interrupt = false;
        player switchMove "";
        player playActionNow "stop";
} else {
cutText [format["You need 3 Small IED's to craft a Large IED"], "PLAIN DOWN"];      
};