private ["_gearmenu","_playerPos","_nearMine","_position","_animState","_isMedic","_started","_isOk","_finished","_sound"];
_playerPos = getPosATL player;
_nearMine = false;
_isOk = true;
if(isnil "CitrineMinePosition") exitWith{diag_log("No Mine loaded");};

{
	_position = _x select 1;
	if(_playerPos distance _position <= 35) exitWith{_nearMine = true;};
} forEach CitrineMinePosition;

if !(_nearMine) exitWith {
	cutText [format["You need to be in a mining area!"], "PLAIN DOWN"];
};
if (dayz_combat == 1) then { 
    cutText [format["You are in combat and can not mine now."], "PLAIN DOWN"];
} else {	
	while {_isOk} do {
		player playActionNow "Medic";
		r_doLoop = true;
		r_interrupt = false;
		_finished = false;
		_started = false;
		_sound = false;
		while {r_doLoop} do {
			_animState = animationState player;
			_isMedic = ["medic",_animState] call fnc_inString;
			if (_isMedic) then {
				_started = true;
			};
			if(_started && !_sound) then {
				playsound "mining";
				_sound = true;
			};
			if (_started && !_isMedic) then {
				r_doLoop = false;
				_finished = true;
			};
			if (r_interrupt || (player getVariable["combattimeout", 0] >= time)) then {
				r_doLoop = false;
			};
			sleep 0.1;
		};
		if (_finished) then {
			_cnt = ceil(random(3));
			for "_x" from 1 to _cnt do {
				player addMagazine "PartOreSilver";
			};
			cutText [format["You mined % 1 ore!",str(_cnt)], "PLAIN DOWN"];
		} else {
			r_interrupt = false;
			player switchMove "";
			player playActionNow "stop";
			_isOk = false;
		};
	};
};