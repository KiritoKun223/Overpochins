//F507DMT
//cleanup origins map
private ["_list"];
{
hideobject _x;_x hideObject true;_x enableSimulation false;
}count(nearestObjects [getMarkerPos "center", ["LAND_vetrak1","LAND_vetrak2","LAND_Ruske_kolo","Land_traktorkabina","Land_traktorpredek"],15000]);

_list=["Land_Misc_Cargo2D","Land_Misc_Cargo2B","Land_Misc_Cargo2E","Land_Misc_Cargo2D"];
{
{
hideobject _x;_x hideObject true;_x enableSimulation false;
}count(nearestObjects [_x select 0,_list,_x select 1]);
}forEach[[[3411,7852,0],200],[[5545,9808,0],270],[[11139,18620,0],70],[[17366,13031,0],100],[[1812,16920,0],70]];

{_x animate ["ani_door1",1];}count(nearestObjects [getMarkerPos "center", ["Land_tav_HouseBlock_D1_ex2"],18000]);