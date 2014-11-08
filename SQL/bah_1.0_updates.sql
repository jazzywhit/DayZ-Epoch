DELETE FROM epoch.Traders_DATA WHERE item LIKE '%skin%'; # Remove skins from the traders
DELETE FROM epoch.Traders_DATA WHERE item LIKE '%Pecheneg%",3]';   # Remove the pecheneg machine gun
UPDATE epoch.Traders_DATA SET buy = sell WHERE item LIKE '%Rnd%';  # Update ammo to cost the same as it sells for
DELETE FROM epoch.Traders_DATA WHERE item LIKE '%cinder%'; # Remove cinder blocsk from the traders
UPDATE epoch.Traders_DATA SET buy = '[2,"ItemGoldBar",1]' WHERE item LIKE '%soda%'; # Set all soda purchase to 2 gold
UPDATE epoch.Traders_DATA SET sell = '[1,"ItemGoldBar",1]' WHERE item LIKE '%soda%' and sell LIKE '%Gold%'; #Set special sodas to 1 gold sell
DELETE FROM epoch.Traders_DATA WHERE item LIKE '%food%cooked%'; # Remove cooked food from traders
UPDATE epoch.Traders_DATA SET buy = '[2,"ItemGoldBar",1]' WHERE item LIKE '%food%'; # Update buy price for food to be 2 gold
UPDATE epoch.Traders_DATA SET sell = '[5,"ItemSilverBar",1]' WHERE item LIKE '%food%'; # Update sell price for food to be 5 silver
#Add basic sodas here to be 5 silver to sell
UPDATE epoch.Traders_DATA SET sell = '[5,"ItemSilverBar",1]' WHERE item LIKE '%food%'; # Update sell price for food to be 5 silver

# Add Backpack Restrictions for Weapons
Update epoch.Traders_DATA set item = '["M60A4_EP1",3]' where item like '%M60A4_EP1_DZE%'; #Add backpack restrictions
Update epoch.Traders_DATA set item = '["M249",3]' where item like '%M249_EP1_DZ%';
Update epoch.Traders_DATA set item = '["M240",3]' where item like '%M240_DZ%';
Update epoch.Traders_DATA set item = '["Mk_48",3]' where item like '%Mk_48_DZ%';

#Remove Gyros
DELETE FROM epoch.Traders_DATA WHERE item LIKE '%gyro%';