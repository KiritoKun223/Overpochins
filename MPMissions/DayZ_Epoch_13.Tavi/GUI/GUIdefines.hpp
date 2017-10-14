class playerStatusGUIcustom {
		idd = 6900;
		movingEnable = 0;
		duration = 100000;
		name = "statusBorder";
		onLoad = "uiNamespace setVariable ['DAYZ_GUI_display', _this select 0];";
		class ControlsBackground {
                       class RscStructuredText_1199: RscStructuredText10
                       {
                                idc = 1199;
                                text = "";
                                x = 0.250001;
                                y = 0.350001;
                                w = 0.5;
                                h = 0.1;
                        };
			class RscPicture_1901: RscPictureGUI
			{
				idc = 1901;
				text = "\z\addons\dayz_code\gui\status\status_bg.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.79 * safezoneH + safezoneY;//2
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1202: RscPictureGUI
			{
				idc = 1202;
				text = "\z\addons\dayz_code\gui\status\status_thirst_border_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.79 * safezoneH + safezoneY;//2
				w = 0.075;
				h = 0.10;
			};

			class RscPicture_1900: RscPictureGUI
			{
				idc = 1900;
				text = "\z\addons\dayz_code\gui\status\status_bg.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.86 * safezoneH + safezoneY; //3
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1200: RscPictureGUI
			{
				idc = 1200;
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.86 * safezoneH + safezoneY; //3
				w = 0.075;
				h = 0.10;
			};

			class RscPicture_1902: RscPictureGUI
			{
				idc = 1902;
				text = "\z\addons\dayz_code\gui\status\status_bg.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.93 * safezoneH + safezoneY; //1
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1201: RscPictureGUI
			{
				idc = 1201;
				text = "\z\addons\dayz_code\gui\status\status_food_border_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.93 * safezoneH + safezoneY; //1
				w = 0.075;
				h = 0.10;
			};

			class RscPicture_1908: RscPictureGUI
			{
				idc = 1908;
				text = "\z\addons\dayz_code\gui\status\status_bg.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.72 * safezoneH + safezoneY; //3
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1208: RscPictureGUI
			{
				idc = 1208;
				text = "\z\addons\dayz_code\gui\status\status_temp_outside_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.72 * safezoneH + safezoneY; //3
				w = 0.075;
				h = 0.10;
			};
		
			class RscPicture_1203: RscPictureGUI
			{
				idc = 1203;
				text = "\z\addons\dayz_code\gui\status\status_effect_brokenleg.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.58 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
				colorText[] = {1,1,1,1};
			};

			class RscPicture_1204: RscPictureGUI
			{
				idc = 1204;
				text = "\z\addons\dayz_code\gui\status\status_connection_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.44 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
				colorText[] = {1,1,1,1};
			};

			class RscPicture_1205: RscPictureGUI
			{
				idc = 1205;
				text = "\z\addons\dayz_code\gui\status\status_bg.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.30 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1206: RscPictureGUI
			{
				idc = 1206;
				text = "\z\addons\dayz_code\gui\status\status_bg.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.37 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1207: RscPictureGUI
			{
				idc = 1207;
				text = "\z\addons\dayz_code\gui\status\status_bg.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.65 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};

			class RscPicture_1210: RscPictureGUI
			{
				idc = 1210;
				text = "\z\addons\dayz_code\gui\status\status_effect_weight.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.51 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
				colorText[] = {1,1,1,1};
			};

			class RscPicture_1211: RscPictureGUI
			{
				idc = 1211;
				text = "\z\addons\dayz_code\gui\status\status_combat_border_CA.paa";
				x = 0.956813 * safezoneW + safezoneX;
				y = 0.6502 * safezoneH + safezoneY;
				w = 0.06;
				h = 0.08;
			};
		};

		class Controls {
			class RscPicture_1301: RscPictureGUI
			{
				idc = 1301;
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.93 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1300: RscPictureGUI
			{
				idc = 1300;
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.86 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1302: RscPictureGUI
			{
				idc = 1302;
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.79 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1306: RscPictureGUI
			{
				idc = 1306;
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.72 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1307: RscPictureGUI
			{
				idc = 1307;
				text = "\z\addons\dayz_code\gui\status\status_combat_inside_ca.paa";
				x = 0.956813 * safezoneW + safezoneX;
				y = 0.6502 * safezoneH + safezoneY;
				w = 0.06;
				h = 0.08;
			};
			class RscPicture_1303: RscPictureGUI
			{
				idc = 1303;
				text = "\z\addons\dayz_code\gui\status\status_bleeding_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.86 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
				colorText[] = {1,1,1,0.5};
			};
			class RscPicture_1304: RscPictureGUI
			{
				idc = 1304;
				text = "\z\addons\dayz_code\gui\status\status_noise.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.30 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1305: RscPictureGUI
			{
				idc = 1305;
				text = "\z\addons\dayz_code\gui\status\status_visible.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.37 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
		};
	};