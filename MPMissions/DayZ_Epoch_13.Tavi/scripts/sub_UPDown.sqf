private ["_unit","_DownUp"];
_unit = _this select 0;
_DownUp = _this select 3;
_nul = [nil, _unit, rSAY, "z_subsink_0", 20] call RE;

_unit animate ["sink", _DownUp];

