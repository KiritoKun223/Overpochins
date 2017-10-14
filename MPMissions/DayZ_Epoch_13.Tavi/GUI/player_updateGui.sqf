//  edited by 
//  steamROLLER

private ["_display","_uiNumber","_ctrlWeight","_bloodText","_ctrlCombatBorder","_ctrlCombatBorder2","_ctrlBloodOuter","_ctrlFoodBorder","_ctrlThirstBorder","_ctrlTempBorder","_ctrlBlood","_ctrlBleed","_bloodVal","_ctrlFood","_ctrlThirst","_thirstVal","_foodVal","_ctrlTemp","_tempVal","_combatVal","_array","_ctrlEar","_ctrlEye","_ctrlCombat","_ctrlFracture","_visualText","_visual","_audibleText","_audible","_blood","_thirstLvl","_foodLvl","_tempImg","_thirst","_food","_temp","_bloodLvl","_tempLvl","_color","_string","_humanity","_size","_friendlies","_charID","_rcharID","_rfriendlies","_rfriendlyTo","_distance","_targetControl","_humanityTarget"];
disableSerialization;

_foodVal = 		1 - (dayz_hunger / SleepFood);
_thirstVal = 	1 - (dayz_thirst / SleepWater);
_tempVal 	= 	1 - ((dayz_temperatur - dayz_temperaturmin)/(dayz_temperaturmax - dayz_temperaturmin));	// Normalise to [0,1]
_combatVal =	1 - dayz_combat; // May change later to be a range of red/green to loosely indicate 'time left in combat'

if (uiNamespace getVariable ['DZ_displayUI', 0] == 1) exitWith {
	_array = [_foodVal,_thirstVal];
	_array
};

_display = uiNamespace getVariable 'DAYZ_GUI_display';

_ctrlBloodOuter = _display displayCtrl 1200;
_ctrlFoodBorder = _display displayCtrl 1201;
_ctrlThirstBorder = _display displayCtrl 1202;
_ctrlTempBorder = _display displayCtrl 1208;
_ctrlCombatBorder = _display displayCtrl 1207; 
_ctrlCombatBorder2 = _display displayCtrl 1211; 


//Border white
_ctrlBloodOuter ctrlSetTextColor [1,1,1,1];
_ctrlFoodBorder ctrlSetTextColor [1,1,1,1];
_ctrlThirstBorder ctrlSetTextColor [1,1,1,1];
_ctrlTempBorder ctrlSetTextColor [1,1,1,1];
_ctrlCombatBorder ctrlSetTextColor [1,1,1,1]; 
_ctrlCombatBorder2 ctrlSetTextColor [1,1,1,1]; 

_ctrlBlood = 	_display displayCtrl 1300;
_ctrlBleed = 	_display displayCtrl 1303;
_bloodVal =		r_player_blood / r_player_bloodTotal;
_ctrlFood = 	_display displayCtrl 1301;
_ctrlThirst = 	_display displayCtrl 1302;
_ctrlTemp 	= 	_display displayCtrl 1306;					//TeeChange
_ctrlEar = 		_display displayCtrl 1304;
_ctrlEye = 		_display displayCtrl 1305;
//_ctrlHumanity = _display displayCtrl 1207;
_ctrlCombat = _display displayCtrl 1307;
_ctrlFracture = 	_display displayCtrl 1203;


//Weight
_ctrlWeight = _display displayCtrl 1210;
_ctrlWeight ctrlSetText "";
_ctrlWeight ctrlShow false;


//Food/Water/Blood
_ctrlBlood ctrlSetTextColor [(Dayz_GUI_R + (0.3 * (1-_bloodVal))),(Dayz_GUI_G * _bloodVal),(Dayz_GUI_B * _bloodVal), 1];
_ctrlFood ctrlSetTextColor [(Dayz_GUI_R + (0.3 * (1-_foodVal))),(Dayz_GUI_G * _foodVal),(Dayz_GUI_B * _foodVal), 1];
_ctrlThirst ctrlSetTextColor [(Dayz_GUI_R + (0.3 * (1-_thirstVal))),(Dayz_GUI_G * _thirstVal),(Dayz_GUI_B * _thirstVal), 1];
_ctrlTemp ctrlSetTextColor [(Dayz_GUI_R + (0.3 * (1-_tempVal))), (Dayz_GUI_G * _tempVal), _tempVal, 1];	// Color ranges from iceblue (cold) to red (hot) // << Already Done :)
_ctrlCombat ctrlSetTextColor		[(Dayz_GUI_R + (0.3 * (1-_combatVal))),(Dayz_GUI_G * _combatVal),(Dayz_GUI_B * _combatVal), 0.5];

/*
	Blood: round((r_player_blood / 2) / 1000) = _bloodLvl (6 = full, 1 = empty)
	Thirst: round(_thirstVal / 0.25) = _thirstLvl (4 = full, 0 = empty)
	Hunger: round(_foodVal / 0.25) = _foodLvl (4 = full, 0 = empty)
	Temp: round(dayz_temperatur) = tempLvl (>= 36 = full <= 28 = empty)
*/

_blood = "";
_thirst = "";
_food = "";
_temp = "";
_tempImg = 0;
_bloodLvl = round((r_player_blood / 2) / 1000);
_thirstLvl = round(_thirstVal / 0.25);
_foodLvl = round(_foodVal / 0.25);
_tempLvl = round(dayz_temperatur);

_bloodText = "\z\addons\dayz_code\gui\status\status_blood_border";
if (r_player_infected) then { _bloodText = _bloodText + "_sick_ca.paa"; }
else { _bloodText = _bloodText + "_CA.paa"; };
_ctrlBloodOuter ctrlSetText _bloodText;


if (_bloodLvl <= 0) then {
	_blood = "\z\addons\dayz_code\gui\status\status_blood_inside_1_ca.paa";
} else {
	_blood = "\z\addons\dayz_code\gui\status\status_blood_inside_" + str(_bloodLvl) + "_ca.paa";
};

if (_thirstLvl < 0) then { _thirstLvl = 0 };
_thirst = "\z\addons\dayz_code\gui\status\status_thirst_inside_" + str(_thirstLvl) + "_ca.paa";

if (_foodLvl < 0) then { _foodLvl = 0 };
_food = "\z\addons\dayz_code\gui\status\status_food_inside_" + str(_foodLvl) + "_ca.paa";

switch true do {
	case (_tempLvl >= 36): { _tempImg = 4 };
	case (_tempLvl > 33 and _tempLvl < 36): { _tempImg = 3 };
	case (_tempLvl >= 30 and _tempLvl <= 33): { _tempImg = 2 };
	case (_tempLvl > 28 and _tempLvl < 30): { _tempImg = 1 };
	default { _tempImg = 0 };
};


_temp = "\z\addons\dayz_code\gui\status\status_temp_" + str(_tempImg) + "_ca.paa";

_ctrlBlood ctrlSetText _blood;
_ctrlThirst ctrlSetText _thirst;
_ctrlFood ctrlSetText _food;
_ctrlTemp ctrlSetText _temp;

// Visual:
_visual = (dayz_disVisual / 185) min 1;
if (_visual < 0.2) then {_visual = 0.2;};
_ctrlEye  ctrlSetTextColor [1, 1, 1, _visual];

// Audible
_audible = (dayz_disAudial / 40) min 1;
if (_audible < 0.2) then {_audible = 0.2;};
_ctrlEar ctrlSetTextColor [1, 1, 1, _audible];

//Fracture
if (!canStand player) then {
	if (!(ctrlShown _ctrlFracture)) then {
		r_fracture_legs = true;
		_ctrlFracture ctrlShow true;
	};
};

//	Flashing
if (_combatVal == 0) then { _ctrlCombat call player_guiControlFlash; };
if (_bloodVal < 0.2) then { _ctrlBlood call player_guiControlFlash; };
if (_thirstVal < 0.2) then { _ctrlThirst call player_guiControlFlash; };
if (_foodVal < 0.2) then { _ctrlFood call player_guiControlFlash; };
if (_tempVal > 0.8) then { _ctrlTemp call player_guiControlFlash; } else { _ctrlTemp ctrlShow true; };
if (r_player_injured) then { _ctrlBleed call player_guiControlFlash; };

//only show the weight-icon if R3F-weight-system is running ;)
if (DZE_R3F_WEIGHT) then {
	if (R3F_Weight < 125) then {
		_ctrlWeight ctrlShow false;
	} else {
		if (R3F_Weight > 250) then {
			_ctrlWeight call player_guiControlFlash;
		} else {
			_ctrlWeight ctrlShow true;
		};
	};
};

/*
Opt-in tag system with friend tagging
*/
_targetControl = _display displayCtrl 1199;
_string = "";
_humanityTarget = cursorTarget;
if (!isNull _humanityTarget and isPlayer _humanityTarget and alive _humanityTarget) then {

	_distance = (player distance _humanityTarget);

	if (_distance < DZE_HumanityTargetDistance) then {
		
		_size = (1-(floor(_distance/5)*0.1)) max 0.1;

		// Display name if player opt-in or if friend
		_friendlies = player getVariable ["friendlies", []];
		_charID = player getVariable ["CharacterID", "0"];

		_rcharID = _humanityTarget getVariable ["CharacterID", "0"];
		_rfriendlies = _humanityTarget getVariable ["friendlies", []];
		_rfriendlyTo = _humanityTarget getVariable ["friendlyTo", []];
			
		if ((_rcharID in _friendlies) and (_charID in _rfriendlies)) then {

			if (!(_charID in _rfriendlyTo)) then {

				// diag_log format["IS FRIENDLY: %1", _player];
				_rfriendlyTo set [count _rfriendlyTo, _charID];
				_humanityTarget setVariable ["friendlyTo", _rfriendlyTo, true];
				
				// titleText [format[(localize "STR_EPOCH_ACTIONS_17"), (name _humanityTarget)], "PLAIN DOWN"];

			};
	
			// <br /><t %2 align='center' size='0.7'>Humanity: %3</t>

			_color = "color='#339933'";
			_string = format["<t %2 align='center' size='%3'>%1</t>",(name _humanityTarget),_color,_size];
		
		} else {

			// Humanity checks
			_humanity = _humanityTarget getVariable ["humanity",0];

			_color = "color='#ffffff'";
			if(_humanity < -5000) then {
				_color = "color='#ff0000'";
			} else {
				if(_humanity > 5000) then {
					_color = "color='#3333ff'";
				};
			};
			if(_humanityTarget getVariable ["DZE_display_name", false]) then {
				_string = format["<t %2 align='center' size='%3'>%1</t>",(name _humanityTarget),_color,_size];
			};
		};
	};
};

// update gui if changed
if (dayz_humanitytarget != _string) then {
	_targetControl ctrlSetStructuredText (parseText _string);
	dayz_humanitytarget = _string;
};

_array = [_foodVal,_thirstVal];
_array