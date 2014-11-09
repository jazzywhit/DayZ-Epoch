# Remove skins
DELETE FROM epoch.Traders_DATA WHERE item LIKE '%skin%';

# Ammo
UPDATE epoch.Traders_DATA SET buy = '[1,"ItemGoldBar10oz",1]' WHERE item LIKE '%L115A1%';  # Update ammo to cost the same as it sells for
UPDATE epoch.Traders_DATA SET buy = sell WHERE item LIKE '%Rnd%';  # Update ammo to cost the same as it sells for

# Food Items
UPDATE epoch.Traders_DATA SET buy = '[2,"ItemGoldBar",1]' WHERE item LIKE '%soda%'; # Set all soda purchase to 2 gold
UPDATE epoch.Traders_DATA SET sell = '[2,"ItemGoldBar",1]' WHERE item LIKE '%soda%' and sell LIKE '%Gold%'; #Set special sodas to 1 gold sell
UPDATE epoch.Traders_DATA SET buy = '[2,"ItemGoldBar",1]' WHERE item LIKE '%food%'; # Update buy price for food to be 2 gold
UPDATE epoch.Traders_DATA SET sell = '[5,"ItemSilverBar",1]' WHERE item LIKE '%food%'; # Update sell price for food to be 5 silver
DELETE FROM epoch.Traders_DATA WHERE item LIKE '%cooked%'; # Remove cooked food from traders

# Remove Items
DELETE FROM epoch.Traders_DATA WHERE item LIKE '%cinder%'; # Remove cinder blocks from the traders
DELETE FROM epoch.Traders_DATA where item like '%ItemJerrycan"%'; # Remove full jerry cans
DELETE FROM epoch.Traders_DATA where item like '%itemfuelbarrel"%'; # Remove full fuel barrels

# Update Weapons
Update epoch.Traders_DATA set item = '["M60A4_EP1",3]' where item like '%M60A4_EP1_DZE%';
Update epoch.Traders_DATA set item = '["M249",3]' where item like '%M249_EP1_DZ%';
Update epoch.Traders_DATA set item = '["M240",3]' where item like '%M240_DZ%';
Update epoch.Traders_DATA set item = '["Mk_48",3]' where item like '%Mk_48_DZ%';
Update epoch.Traders_DATA set item = '["m240_scoped_EP1",3]' where item like '%m240_scoped_EP1%';
Update epoch.Traders_DATA set buy = '[6,"ItemGoldBar10oz",1]' where item like '%BAF_LRR_scoped%';

# Blood Bags and medical supplies
UPDATE epoch.Traders_DATA SET buy = '[5,"ItemGoldBar",1]' WHERE item LIKE '%ItemBloodbag%';
UPDATE epoch.Traders_DATA SET sell = '[1,"ItemGoldBar",1]' WHERE item LIKE '%ItemBloodbag%';

# Utility items
UPDATE epoch.Traders_DATA SET buy = '[5,"ItemSilverBar10oz",1]' WHERE item LIKE '%NVGoggles%';
UPDATE epoch.Traders_DATA SET sell = '[5,"ItemSilverBar10oz",1]' WHERE item LIKE '%NVGoggles%';

# Remove certain weapons and ammo
DELETE FROM epoch.Traders_DATA WHERE item LIKE '%Pecheneg%",3]';
DELETE FROM epoch.Traders_DATA WHERE item LIKE '%ksvk%",3]';

# Vehicles
DELETE FROM epoch.Traders_DATA WHERE item LIKE '%gyro%';
DELETE FROM epoch.Traders_DATA WHERE item LIKE '%C130J_US_EP1%';
DELETE FROM epoch.Traders_DATA WHERE item LIKE '%FN_FAL_ANPVS4%';
DELETE FROM epoch.Traders_DATA WHERE item LIKE '%Vodnik%';
DELETE FROM epoch.Traders_DATA WHERE item LIKE '%LandRover_MG_TK_EP1_DZE%';
DELETE FROM epoch.Traders_DATA WHERE item LIKE '%LandRover_Special_CZ_EP1_DZE%';
DELETE FROM epoch.Traders_DATA WHERE item LIKE '%ArmoredSUV_PMC_DZE%';
DELETE FROM epoch.Traders_DATA WHERE item LIKE '%HMMWV_M1151%'; #GPK
UPDATE epoch.Traders_DATA SET buy = '[5,"ItemBriefcase100oz",1]' WHERE item LIKE '%HMMWV_M998A2_SOV%'; # Grenade HMMV
UPDATE epoch.Traders_DATA SET sell = '[2,"ItemBriefcase100oz",1]' WHERE item LIKE '%HMMWV_M998A2_SOV%';


