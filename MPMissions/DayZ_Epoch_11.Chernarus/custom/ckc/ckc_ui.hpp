
class ckc_ui {
	idd = 118339;
	movingenable = 0;
	
	class Controls {
		class ComboLockUIPic : RscPicture {
			idc = -1;
			text = "\z\addons\dayz_epoch\ui\combo_gui.paa";
			x = 0;
			y = 0;
			w = 1;
			h = 1;
		};
		
		class top_combo : RscPicture {
			idc = 17734;
			text = "\z\addons\dayz_epoch\ui\top_0.paa";
			x = 0.418883;
			y = 0.234042;
			w = 0.388564;
			h = 0.161072;
		};
		
		class middle_combo : RscPicture {
			idc = 17735;
			text = "\z\addons\dayz_epoch\ui\mid_0.paa";
			x = 0.420213;
			y = 0.431049;
			w = 0.387234;
			h = 0.161072;
		};
		
		class bottom_combo : RscPicture {
			idc = 17736;
			text = "\z\addons\dayz_epoch\ui\bot_0.paa";
			x = 0.420212;
			y = 0.616233;
			w = 0.387234;
			h = 0.180772;
		};
		
		class unlock_combo : RscPicture {
			idc = 17737;
			text = "\z\addons\dayz_epoch\ui\unlock_a.paa";
			x = 0.219415;
			y = 0.762017;
			w = 0.199734;
			h = 0.208353;
		};
		
		class exit_combo : RscPicture {
			idc = 17738;
			text = "\z\addons\dayz_epoch\ui\exit_a.paa";
			x = 0.863032;
			y = 0.0252169;
			w = 0.0946809;
			h = 0.0724192;
		};
		
		class main_combo : RscButton_ckc {
			idc = -1;
			text = "";
			style = 0x02 + 0x100;
			colorText[] = {1, 1, 1, 0};
			colorDisabled[] = {1, 1, 1, 0};
			colorBackground[] = {1, 1, 1, 0};
			colorBackgroundDisabled[] = {1, 1, 1, 0};
			colorBackgroundActive[] = {1, 1, 1, 0};
			colorShadow[] = {1, 1, 1, 0};
			colorFocused[] = {1, 1, 1, 0};
			soundClick[] = {"", 0.6, 1};
		};
		
		class top_left : main_combo {
			idc = -1;
			x = 0.43484;
			y = 0.243893;
			w = 0.1625;
			h = 0.135461;
			onButtonClick = "[17734,1,""top""] call ckc_button";
		};
		
		class top_right : main_combo {
			idc = -1;
			x = 0.660904;
			y = 0.241923;
			w = 0.147872;
			h = 0.135461;
			onButtonClick = "[17734,0,""top""] call ckc_button";
		};
		
		class mid_left : main_combo {
			idc = -1;
			x = 0.43484;
			y = 0.433018;
			w = 0.1625;
			h = 0.135461;
			onButtonClick = "[17735,1,""mid""] call ckc_button";
				
		};
		
		class mid_right : main_combo {
			idc = -1;
			x = 0.659574;
			y = 0.427108;
			w = 0.153191;
			h = 0.135461;
			onButtonClick = "[17735,0,""mid""] call ckc_button";
		};
		
		class bottom_left : main_combo {
			idc = -1;
			x = 0.4375;
			y = 0.637904;
			w = 0.1625;
			h = 0.135461;
			onButtonClick = "[17736,1,""bot""] call ckc_button";
		};
		
		class bottom_right : main_combo {
			idc = -1;
			x = 0.658245;
			y = 0.633964;
			w = 0.155851;
			h = 0.133491;
			onButtonClick = "[17736,0,""bot""] call ckc_button";
		};
		
		class exit_combo_btn : main_combo {
			idc = -1;
			x = 0.827128;
			y = 0.0153665;
			w = 0.158511;
			h = 0.153191;
			onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 3000);";
		};
		
		class unlock_combo_btn : main_combo {
			idc = -1;
			x = 0.218085;
			y = 0.762017;
			w = 0.201064;
			h = 0.233964;
				onButtonClick = "((ctrlParent (_this select 0)) closeDisplay 3000);call ckc_upddoor;";
		};
	};
};
