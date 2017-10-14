/*
Epoch Player Tools by piggd
Email: dayzpiggd@gmail.com
Website: http://dayzpiggd.enjin.com
Donations Accepted via paypal to danpigg@yahoo.com

Menu code and some functions from Epoch Admin Tools V1.8.2 by NoxSicarius
http://epochmod.com/forum/index.php?/topic/7501-release-epoch-admin-tools-v182/
*/
//_pathtobank = "custom\dze_piggd_banking_system\";
_pathtochameleon ="custom\chameleon\";
_EXECscript1 = 'player execVM "%1"';
_EXECscript2 = '[%2,"%3"] execVM "%1"';
_EXECscript3 = '[%2] execVM "%1"';

// To Disable a menu function place a // in front of it or remove it to enable.
playermenustart = [
	["",true],
//	["Template Menu >>", [], "#USER:TemplateMenu", -5, [["expression", ""]], "1", "1"],			
//	["DZE Piggd Banking System >>", [], "#USER:bankmenu", -5, [["expression", ""]], "1", "1"],			
//	["Build Menu >>", [], "#USER:BuildMenu", -5, [["expression", ""]], "1", "1"],			
	["Chameleon Menu >>", [], "#USER:ChameleonMenu", -5, [["expression", ""]], "1", "1"],			
//	["Map Menu >>", [], "#USER:MapMenu", -5, [["expression", ""]], "1", "1"],			
//	["Help Menu >>", [], "#USER:HelpMenu", -5, [["expression", ""]], "1", "1"],			
//	["Weather/Time Menu (Local Only) >>", [], "#USER:WTMenu", -5, [["expression", ""]], "1", "1"],			
	["", [], "", -5, [["expression", ""]], "1", "0"],
	["Main Menu", [20], "#USER:playermenustart", -5, [["expression", ""]], "1", "1"]		
];
ChameleonMenu = [
["",true],
	["Chameleon Male Skins Menu",[],"", -5,[["expression",format[_EXECscript1,_pathtochameleon + "male_dialog.sqf"]]],"1","1"],
	["Chameleon Female Skins Menu",[],"", -5,[["expression",format[_EXECscript1,_pathtochameleon + "female_dialog.sqf"]]],"1","1"],
	["Main Menu", [20], "#USER:playermenustart", -5, [["expression", ""]], "1", "1"]		
];

showCommandingMenu "#USER:playermenustart";