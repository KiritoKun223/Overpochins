private ["_vehicle","_status","_sounddist"];
_vehicle = _this select 0;
_status = _this select 1;

if (local _vehicle) then {
	if(_status) then {
		_vehicle setVehicleLock "LOCKED";
		_vehicle setVariable ["R3F_LOG_disabled",true,true];
		player action ["lightOn", _vehicle];
		_nul = [objNull, _vehicle, rSAY, "carlock", 50] call RE;
		sleep 0.5;
		player action ["lightOff", _vehicle];
		titleText ["LOCKED = Can not be lifted/towed","PLAIN DOWN"]; titleFadeOut 4;
	} else {
		_vehicle setVehicleLock "UNLOCKED";
		_vehicle setVariable ["R3F_LOG_disabled",false,true];
		player action ["lightOn", _vehicle];
		_nul = [objNull, _vehicle, rSAY, "carlock", 50] call RE;
		sleep 0.5;
		player action ["lightOff", _vehicle];
		titleText ["UNLOCKED = Can be lifted/towed","PLAIN DOWN"]; titleFadeOut 4;
	};
};