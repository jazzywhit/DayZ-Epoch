
#define CT_STATIC			0 
#define CT_BUTTON			1 
#define ST_LEFT				0 
#define ReadAndWrite			0 
#define FontMAIN			"Zeppelin32" 


class RscButton_ckc
{	// common control items
	access = ReadAndWrite;
	type = CT_BUTTON;
	style = ST_LEFT;
	x = 0; y = 0;
	w = 0.3; h = 0.1;

	// text properties
	text = "";
	font = Zeppelin32;
	sizeEx = 0.024;
	colorText[] = {0.95, 0.95, 0.95, 1};
	colorDisabled[] = {0.4, 0.4, 0.4, 1};
	colorBackground[] = {1, 0.537, 0, 0.5};
	colorBackgroundActive[] = {1, 0.537, 0, 1};
	colorBackgroundDisabled[] = {0.58, 0.1147, 0.1108, 1};
	offsetX = 0.003;
	offsetY = 0.003;
	offsetPressedX = 0.002;
	offsetPressedY = 0.002;
	colorFocused[] = {1, 0.537, 0, 1};
	colorShadow[] = {0.023529, 0, 0.0313725, 1};
	colorBorder[] = {0.023529, 0, 0.0313725, 1};
	borderSize = 0.008; // when negative, the border is on the right side of background

	// sounds
	soundEnter[] = {"", 0.1, 1};
	soundPush[] = {"", 0.1, 1};
	soundClick[] = {"", 0.1, 1};
	soundEscape[] = {"", 0.1, 1};
};

class RscButton_ckcS
{	// common control items
	access = ReadAndWrite;
	type = CT_BUTTON;
	style = ST_LEFT;
	x = 0; y = 0;
	w = 0.3; h = 0.1;

	// text properties
	text = "";
	font = Zeppelin32;
	sizeEx = 0.024;
	colorText[] = {0.95, 0.95, 0.95, 1};
	colorDisabled[] = {0.4, 0.4, 0.4, 1};
	colorBackground[] = {1, 0.537, 0, 0.5};
	colorBackgroundActive[] = {1, 0.537, 0, 1};
	colorBackgroundDisabled[] = {0.58, 0.1147, 0.1108, 1};
	offsetX = 0.003;
	offsetY = 0.003;
	offsetPressedX = 0.002;
	offsetPressedY = 0.002;
	colorFocused[] = {1, 0.537, 0, 1};
	colorShadow[] = {0.023529, 0, 0.0313725, 1};
	colorBorder[] = {0.023529, 0, 0.0313725, 1};
	borderSize = 0.008; // when negative, the border is on the right side of background

	// sounds
	soundEnter[] = {"", 0.1, 1};
	soundPush[] = {"", 0.1, 1};
	soundClick[] = {"", 0.1, 1};
	soundEscape[] = {"", 0.1, 1};
};

