//  DZE_CLICK_ACTIONS
//      This is where you register your right-click actions
//  FORMAT -- (no comma after last array entry)
//      [_classname,_text,_execute,_condition],
//  PARAMETERS
//  _classname  : the name of the class to click on 
//                  (example = "ItemBloodbag")
//  _text       : the text for the option that is displayed when right clicking on the item 
//                  (example = "Self Transfuse")
//  _execute    : compiled code to execute when the option is selected 
//                  (example = "execVM 'my\scripts\self_transfuse.sqf';")
//  _condition  : compiled code evaluated to determine whether or not the option is displayed
//                  (example = {true})
//  EXAMPLE -- see below for some simple examples
DZE_CLICK_ACTIONS = [
    ["ItemGPS","Range Up"   ,"if(isNil 'DZE_CLICK_ACTIONS_GPS_RANGE') then {DZE_CLICK_ACTIONS_GPS_RANGE = 1500;};DZE_CLICK_ACTIONS_GPS_RANGE = (DZE_CLICK_ACTIONS_GPS_RANGE + 100) min 2500; cutText[format['GPS RANGE: %1',DZE_CLICK_ACTIONS_GPS_RANGE],'PLAIN DOWN'];","true"],
    ["ItemGPS","Range Down" ,"if(isNil 'DZE_CLICK_ACTIONS_GPS_RANGE') then {DZE_CLICK_ACTIONS_GPS_RANGE = 1500;};DZE_CLICK_ACTIONS_GPS_RANGE = (DZE_CLICK_ACTIONS_GPS_RANGE - 100) max 1000;  cutText[format['GPS RANGE: %1',DZE_CLICK_ACTIONS_GPS_RANGE],'PLAIN DOWN'];","true"],
    ["ItemBriefcase_Base","Unlock Mystery Briefcase","execVM ""custom\mysterybrief\open_brief.sqf"";","true"],
	["ItemZombieParts","Smear Zombie Parts on Yourself","[] execVM ""custom\walkamongstthedead\smear_guts.sqf"";","true"],
	["ItemWaterbottle","Wash Yourself","[] execVM ""custom\walkamongstthedead\usebottle.sqf"";","true"],
	["ItemLetter","Read the Letter","[] execVM ""custom\Newspaperinfo\info.sqf"";","true"]
];