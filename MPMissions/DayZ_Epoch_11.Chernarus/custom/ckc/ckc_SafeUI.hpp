

class ckc_SafeUI {
	idd = 118338;
	movingenable = 0;
	
	class Controls {
		class SafeKeyPadPic : RscPicture {
			idc = -1;
			text = "\z\addons\dayz_epoch\pictures\SafeKeyPad.paa";
			x = "0.361701 * safezoneW + safezoneX";
			y = "0.255985 * safezoneH + safezoneY";
			w = "0.281637 * safezoneW";
			h = "0.470087 * safezoneH";
		};
		
		class b1 : RscButton_ckcS {
			idc = -1;
			x = "0.444897 * safezoneW + safezoneX";
			y = "0.39423 * safezoneH + safezoneY";
			w = "0.0283751 * safezoneW";
			h = "0.0490667 * safezoneH";
			font = "Zeppelin33";
			sizeEx = 0.05;
			text = "1";
			colorText[] = {0, 0.6, 1, 1};
			colorBackground[] = {0, 0, 0, 0};
			colorBackgroundActive[] = {0, 0, 0, 0};
			action = "dayz_combination = dayz_combination + str(1);";
			soundClick[] = {"\dayz_sfx\action\cell\dtmf_1.ogg", 0.5, 1};
		};
		
		class b4 : RscButton_ckcS {
			idc = -1;
			x = "0.444897 * safezoneW + safezoneX";
			y = "0.441239 * safezoneH + safezoneY";
			w = "0.0283751 * safezoneW";
			h = "0.0490667 * safezoneH";
			font = "Zeppelin33";
			sizeEx = 0.05;
			text = "4";
			colorText[] = {0, 0.6, 1, 1};
			colorBackground[] = {0, 0, 0, 0};
			colorBackgroundActive[] = {0, 0, 0, 0};
			action = "dayz_combination = dayz_combination + str(4);";
			soundClick[] = {"\dayz_sfx\action\cell\dtmf_4.ogg", 0.5, 1};
		};
		
		class b7 : RscButton_ckcS {
			idc = -1;
			x = "0.444897 * safezoneW + safezoneX";
			y = "0.488248 * safezoneH + safezoneY";
			w = "0.0283751 * safezoneW";
			h = "0.0490667 * safezoneH";
			font = "Zeppelin33";
			sizeEx = 0.05;
			text = "7";
			colorText[] = {0, 0.6, 1, 1};
			colorBackground[] = {0, 0, 0, 0};
			colorBackgroundActive[] = {0, 0, 0, 0};
			action = "dayz_combination = dayz_combination + str(7);";
			soundClick[] = {"\dayz_sfx\action\cell\dtmf_7.ogg", 0.5, 1};
		};
		
		class b2 : RscButton_ckcS {
			idc = -1;
			x = "0.487755 * safezoneW + safezoneX";
			y = "0.39423 * safezoneH + safezoneY";
			w = "0.0283751 * safezoneW";
			h = "0.0490667 * safezoneH";
			font = "Zeppelin33";
			sizeEx = 0.05;
			text = "2";
			colorText[] = {0, 0.6, 1, 1};
			colorBackground[] = {0, 0, 0, 0};
			colorBackgroundActive[] = {0, 0, 0, 0};
			action = "dayz_combination = dayz_combination + str(2);";
			soundClick[] = {"\dayz_sfx\action\cell\dtmf_2.ogg", 0.5, 1};
		};
		
		class b8 : RscButton_ckcS {
			idc = -1;
			x = "0.487755 * safezoneW + safezoneX";
			y = "0.488248 * safezoneH + safezoneY";
			w = "0.0283751 * safezoneW";
			h = "0.0490667 * safezoneH";
			font = "Zeppelin33";
			sizeEx = 0.05;
			text = "8";
			colorText[] = {0, 0.6, 1, 1};
			colorBackground[] = {0, 0, 0, 0};
			colorBackgroundActive[] = {0, 0, 0, 0};
			action = "dayz_combination = dayz_combination + str(8);";
			soundClick[] = {"\dayz_sfx\action\cell\dtmf_8.ogg", 0.5, 1};
		};
		
		class b5 : RscButton_ckcS {
			idc = -1;
			x = "0.487755 * safezoneW + safezoneX";
			y = "0.441239 * safezoneH + safezoneY";
			w = "0.0283751 * safezoneW";
			h = "0.0490667 * safezoneH";
			font = "Zeppelin33";
			sizeEx = 0.05;
			text = "5";
			colorText[] = {0, 0.6, 1, 1};
			colorBackground[] = {0, 0, 0, 0};
			colorBackgroundActive[] = {0, 0, 0, 0};
			action = "dayz_combination = dayz_combination + str(5);";
			soundClick[] = {"\dayz_sfx\action\cell\dtmf_5.ogg", 0.5, 1};
		};
		
		class b3 : RscButton_ckcS {
			idc = -1;
			x = "0.530613 * safezoneW + safezoneX";
			y = "0.39423 * safezoneH + safezoneY";
			w = "0.0283751 * safezoneW";
			h = "0.0490667 * safezoneH";
			font = "Zeppelin33";
			sizeEx = 0.05;
			text = "3";
			colorText[] = {0, 0.6, 1, 1};
			colorBackground[] = {0, 0, 0, 0};
			colorBackgroundActive[] = {0, 0, 0, 0};
			action = "dayz_combination = dayz_combination + str(3);";
			soundClick[] = {"\dayz_sfx\action\cell\dtmf_3.ogg", 0.5, 1};
		};
		
		class b6 : RscButton_ckcS {
			idc = -1;
			x = "0.530613 * safezoneW + safezoneX";
			y = "0.441239 * safezoneH + safezoneY";
			w = "0.0283751 * safezoneW";
			h = "0.0490667 * safezoneH";
			font = "Zeppelin33";
			sizeEx = 0.05;
			text = "6";
			colorText[] = {0, 0.6, 1, 1};
			colorBackground[] = {0, 0, 0, 0};
			colorBackgroundActive[] = {0, 0, 0, 0};
			action = "dayz_combination = dayz_combination + str(6);";
			soundClick[] = {"\dayz_sfx\action\cell\dtmf_6.ogg", 0.5, 1};
		};
		
		class b9 : RscButton_ckcS {
			idc = -1;
			x = "0.530613 * safezoneW + safezoneX";
			y = "0.488248 * safezoneH + safezoneY";
			w = "0.0283751 * safezoneW";
			h = "0.0490667 * safezoneH";
			font = "Zeppelin33";
			sizeEx = 0.05;
			text = "9";
			colorText[] = {0, 0.6, 1, 1};
			colorBackground[] = {0, 0, 0, 0};
			colorBackgroundActive[] = {0, 0, 0, 0};
			action = "dayz_combination = dayz_combination + str(9);";
			soundClick[] = {"\dayz_sfx\action\cell\dtmf_9.ogg", 0.5, 1};
		};
		
		class b0 : RscButton_ckcS {
			idc = -1;
			x = "0.487755 * safezoneW + safezoneX";
			y = "0.535257 * safezoneH + safezoneY";
			w = "0.0283751 * safezoneW";
			h = "0.0490667 * safezoneH";
			font = "Zeppelin33";
			sizeEx = 0.05;
			text = "0";
			colorText[] = {0, 0.6, 1, 1};
			colorBackground[] = {0, 0, 0, 0};
			colorBackgroundActive[] = {0, 0, 0, 0};
			action = "dayz_combination = dayz_combination + str(0);";
			soundClick[] = {"\dayz_sfx\action\cell\dtmf_9.ogg", 0.5, 1};
		};
		
		class bcancel : RscButton_ckcS {
			idc = -1;
			x = "0.444897 * safezoneW + safezoneX";
			y = "0.545257 * safezoneH + safezoneY";
			w = "0.0263751 * safezoneW";
			h = "0.0440667 * safezoneH";
			font = "Zeppelin33";
			sizeEx = 0.1;
			text = "*";
			colorText[] = {1, 0.1, 0.1, 1};
			colorBackground[] = {0, 0, 0, 0};
			colorBackgroundActive[] = {0, 0, 0, 0};
			soundClick[] = {"\dayz_sfx\action\cell\dtmf_star.ogg", 0.6, 1};
			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 3000);";
		};
		
		class benter : RscButton_ckcS {
			idc = -1;
			x = "0.530613 * safezoneW + safezoneX";
			y = "0.535257 * safezoneH + safezoneY";
			w = "0.0263751 * safezoneW";
			h = "0.0440667 * safezoneH";
			font = "Zeppelin33Italic";
			sizeEx = 0.1;
			text = "#";
			colorText[] = {0, 1, 0, 1};
			colorBackground[] = {0, 0, 0, 0};
			colorBackgroundActive[] = {0, 0, 0, 0};
			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 3000); [] spawn ckc_updSafe;";
			soundClick[] = {"\dayz_sfx\action\cell\dtmf_hash.ogg", 0.6, 1};
		};
	};
};
