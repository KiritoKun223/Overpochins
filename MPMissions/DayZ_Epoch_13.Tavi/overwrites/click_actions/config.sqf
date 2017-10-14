//  DZE_CLICK_ACTIONS
//      This is where you register your right-click actions
//  FORMAT -- (no comma after last array entry)
//      [_classname,_text,_execute,_condition],
//  PARAMETERS
//  _classname  : the name of the class to click on 
//                  (example = "ItemBloodbag")
//  _text       : the text for the option that is displayed when right clicking on the item 
//                  (example = "Self Transfuse")
//  _execute    : compiled code to execute when the option is selected 
//                  (example = "execVM 'my\scripts\self_transfuse.sqf';")
//  _condition  : compiled code evaluated to determine whether or not the option is displayed
//                  (example = {true})
//  EXAMPLE -- see below for some simple examples
DZE_CLICK_ACTIONS = [
	["ItemKiloHemp","Smoke Da Gunja","execVM 'scripts\smokeshit.sqf';","true"],
	["ItemSledge","Mine For Ore","execVM 'custom\mining\mining-action.sqf';","true"],
	["ItemToolBox","Construction Box","['USOrdnanceBox'] execVM 'custom\EVD\EVD_deploy.sqf';","true"],
	["Binocular_Vector","1000 Meters","setViewDistance 1000; systemChat('ViewDistance: 1000'); systemChat('Warning: Higher the view distance, the lower the FPS');","true"],
	["Binocular_Vector","1250 Meters","setViewDistance 1250; systemChat('ViewDistance: 1250'); systemChat('Warning: Higher the view distance, the lower the FPS');","true"],
	["Binocular_Vector","1500 Meters","setViewDistance 1500; systemChat('ViewDistance: 1500'); systemChat('Warning: Higher the view distance, the lower the FPS');","true"],
	["Binocular_Vector","1750 Meters","setViewDistance 1750; systemChat('ViewDistance: 1750'); systemChat('Warning: Higher the view distance, the lower the FPS');","true"],
	["Binocular_Vector","2000 Meters","setViewDistance 2000; systemChat('ViewDistance: 2000'); systemChat('Warning: Higher the view distance, the lower the FPS');","true"],
	["Binocular_Vector","3000 Meters","setViewDistance 3000; systemChat('ViewDistance: 3000'); systemChat('Warning: Higher the view distance, the lower the FPS');","true"],
	["Binocular_Vector","4000 Meters","setViewDistance 4000; systemChat('ViewDistance: 4000'); systemChat('Warning: Higher the view distance, the lower the FPS');","true"],
	["Binocular_Vector","5000 Meters","setViewDistance 5000; systemChat('ViewDistance: 5000'); systemChat('Warning: Higher the view distance, the lower the FPS');","true"],
	["Binocular","View Distance:","systemChat('Change View Distance Locally. Click on one of the distance options');","true"],
	["Binocular","1000 Meters","setViewDistance 1000; systemChat('ViewDistance: 1000'); systemChat('Warning: Higher the distance, the lower the FPS');","true"],
	["Binocular","1250 Meters","setViewDistance 1250; systemChat('ViewDistance: 1250'); systemChat('Warning: Higher the distance, the lower the FPS');","true"],
	["Binocular","1500 Meters","setViewDistance 1500; systemChat('ViewDistance: 1500'); systemChat('Warning: Higher the distance, the lower the FPS');","true"],
	["Binocular","1750 Meters","setViewDistance 1750; systemChat('ViewDistance: 1750'); systemChat('Warning: Higher the distance, the lower the FPS');","true"],
	["Binocular","2000 Meters","setViewDistance 2000; systemChat('ViewDistance: 2000'); systemChat('Warning: Higher the distance, the lower the FPS');","true"],
	["Binocular","3000 Meters","setViewDistance 3000; systemChat('ViewDistance: 3000'); systemChat('Warning: Higher the distance, the lower the FPS');","true"],
	["Binocular","4000 Meters","setViewDistance 4000; systemChat('ViewDistance: 4000'); systemChat('Warning: Higher the distance, the lower the FPS');","true"],
	["Binocular","5000 Meters","setViewDistance 5000; systemChat('ViewDistance: 5000'); systemChat('Warning: Higher the distance, the lower the FPS');","true"]
];