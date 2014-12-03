//not hooked up
class Category_xxx {
	class PartOre {
		type = "trade_items";
		buy[] = {1,"ItemSilverBar10oz"}; //should remove buy option if possible to avoid people buying instead of scrap metal for 2 gold and to farm gold
		sell[] = {1,"ItemSilverBar10oz"};
	};
	class PartOreSilver {
		type = "trade_items";
		buy[] = {3,"ItemSilverBar10oz"};
		sell[] = {3,"ItemSilverBar10oz"};
	};
	class ItemTopaz {
		type = "trade_items";
		buy[] = {5,"ItemSilverBar10oz"};
		sell[] = {5,"ItemSilverBar10oz"};
	};
	class ItemCitrine {
		type = "trade_items";
		buy[] = {1,"ItemGoldBar"};
		sell[] = {1,"ItemGoldBar"};
	};
	class ItemAmethyst {
		type = "trade_items";
		buy[] = {2,"ItemGoldBar"};
		sell[] = {2,"ItemGoldBar"};
	};
	class ItemSapphire {
		type = "trade_items";
		buy[] = {5,"ItemGoldBar"};
		sell[] = {5,"ItemGoldBar"};
	};
	class ItemObsidian {
		type = "trade_items";
		buy[] = {8,"ItemGoldBar"};
		sell[] = {8,"ItemGoldBar"};
	};
	class ItemRuby {
		type = "trade_items";
		buy[] = {1,"ItemGoldBar10oz"};
		sell[] = {1,"ItemGoldBar10oz"};
	};
};

//Rarity Ore 30% Silverore 20% Topaz 18% Citrine 18% Amethyst 5% Sapphire 4% Obsidian 3% Ruby 1%