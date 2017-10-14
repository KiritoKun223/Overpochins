private["_markerPosition","_name","_position","_marker","_markerDot"];
CitrineMinePosition = [
	["CitrineMineSmallIsland",[8335.2695, 8916.4092, 0]],
	["CitrineMineNovistranaDot", [2973.1611, 17337.543]],
	["CitrineMineBigIsland", [17378.316, 8056.3589]]
];

{
	_name = _x select 0;
	_position = _x select 1;
	_marker = createMarker [_name, _position];
	_marker setMarkerText "Mining Area";
	_marker setMarkerShape "ELLIPSE";
	_marker setMarkerColor "ColorGreen";
	_marker setMarkerBrush "Solid";
	_marker setMarkerSize [150, 150];

	_markerDot = createMarker [_name + "Dot", _position];
	_markerDot setMarkerType "mil_dot";
	_markerDot setMarkerColor "ColorBlack";
	_markerDot setMarkerText "Mining Area";
} forEach CitrineMinePosition;