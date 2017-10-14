/*	
	For DayZ Epoch
	Addons Credits: Jetski Yanahui by Kol9yN, Zakat, Gerasimow9, YuraPetrov, zGuba, A.Karagod, IceBreakr, Sahbazz
*/

//Server settings
dayZ_instance = 13; //Instance ID of this server
dayZ_serverName = ""; //Shown to all players in the bottom left of the screen (country code + server number)

//Game settings
dayz_antihack = 1; // DayZ Antihack / 1 = enabled // 0 = disabled
dayz_REsec = 1; // DayZ RE Security / 1 = enabled // 0 = disabled
dayz_enableRules = true; //Enables a nice little news/rules feed on player login (make sure to keep the lists quick).
dayz_quickSwitch = false; //Turns on forced animation for weapon switch. (hotkeys 1,2,3) False = enable animations, True = disable animations
dayz_POIs = false; //Adds Point of Interest map additions (negatively impacts FPS)
dayz_infectiousWaterholes = false; //Randomly adds some bodies, graves and wrecks by ponds (negatively impacts FPS)
dayz_ForcefullmoonNights = true; // Forces night time to be full moon.
dayz_randomMaxFuelAmount = 500; //Puts a random amount of fuel in all fuel stations.

//DayZMod presets
dayz_presets = "Custom"; //"Custom","Classic","Vanilla","Elite"

//Only need to edit if you are running a custom server.
if (dayz_presets == "Custom") then {
	dayz_enableGhosting = false; //Enable disable the ghosting system.
	dayz_ghostTimer = 60; //Sets how long in seconds a player must be disconnected before being able to login again.
	dayz_spawnselection = 0; //(Chernarus only) Turn on spawn selection 0 = random only spawns, 1 = spawn choice based on limits
	dayz_spawncarepkgs_clutterCutter = 0; //0 = loot hidden in grass, 1 = loot lifted, 2 = no grass
	dayz_spawnCrashSite_clutterCutter = 0;	// heli crash options 0 = loot hidden in grass, 1 = loot lifted, 2 = no grass
	dayz_spawnInfectedSite_clutterCutter = 0; // infected base spawn 0 = loot hidden in grass, 1 = loot lifted, 2 = no grass 
	dayz_bleedingeffect = 2; //1 = blood on the ground (negatively impacts FPS), 2 = partical effect, 3 = both
	dayz_OpenTarget_TimerTicks = 60 * 10; //how long can a player be freely attacked for after attacking someone unprovoked
	dayz_nutritionValuesSystem = true; //true, Enables nutrition system, false, disables nutrition system.
	dayz_classicBloodBagSystem = true; // disable blood types system and use the single classic ItemBloodbag
	dayz_enableFlies = false; // Enable flies on dead bodies (negatively impacts FPS).
};

//Temp settings
dayz_DamageMultiplier = 2; //1 - 0 = Disabled, anything over 1 will multiply damage. Damage Multiplier for Zombies.
dayz_maxGlobalZeds = 500; //Limit the total zeds server wide.
dayz_temperature_override = false; // Set to true to disable all temperature changes.

enableRadio false;
enableSentences false;

// EPOCH CONFIG VARIABLES START //
#include "\z\addons\dayz_code\configVariables.sqf" // Don't remove this line
// See the above file for a full list including descriptions and default values
// Uncomment the lines below to change the default loadout
//DefaultMagazines = ["HandRoadFlare","ItemBandage","ItemPainkiller","8Rnd_9x18_Makarov","8Rnd_9x18_Makarov"];
//DefaultWeapons = ["Makarov_DZ","ItemFlashlight"];
//DefaultBackpack = "DZ_Patrol_Pack_EP1";
//DefaultBackpackItems = []; // Can include both weapons and magazines i.e. ["PDW_DZ","30Rnd_9x19_UZI"];
dayz_paraSpawn = false; // Halo spawn
DZE_BackpackAntiTheft = false; // Prevent stealing from backpacks in trader zones
DZE_BuildOnRoads = false; // Allow building on roads
DZE_PlayerZed = true; // Enable spawning as a player zombie when players die with infected status
DZE_R3F_WEIGHT = true; // Enable R3F weight. Players carrying too much will be overburdened and forced to move slowly.
DZE_slowZombies = false; // Force zombies to always walk
DZE_StaticConstructionCount = 0; // Steps required to build. If greater than 0 this applies to all objects.
DZE_GodModeBase = false; // Make player built base objects indestructible
DZE_requireplot = 1; // Require a plot pole to build  0 = Off, 1 = On
DZE_PlotPole = [50,60]; // Radius owned by plot pole [Regular objects,Other plotpoles]. Difference between them is the minimum buffer between bases.
DZE_BuildingLimit = 450; // Max number of built objects allowed in DZE_PlotPole radius
DZE_SelfTransfuse = true; // Allow players to bloodbag themselves
DZE_selfTransfuse_Values = [12000,5,60]; // [blood amount given, infection chance %, cooldown in seconds]
MaxDynamicDebris = 700; // Max number of random road blocks to spawn around the map
MaxVehicleLimit = 400; // Max number of random vehicles to spawn around the map
spawnArea = 2500; // Distance around markers to find a safe spawn position
spawnShoremode = 1; // Random spawn locations  1 = on shores, 0 = inland
EpochUseEvents = false; //Enable event scheduler. Define custom scripts in dayz_server\modules to run on a schedule.
EpochEvents = [["any","any","any","any",30,"crash_spawner"],["any","any","any","any",0,"crash_spawner"],["any","any","any","any",15,"supply_drop"]];
// EPOCH CONFIG VARIABLES END //

//ADDITIONAL SCRIPTS//

// NewSpawn Loadout
DefaultMagazines = ["15Rnd_9x19_M9","15Rnd_9x19_M9","ItemBandage","ItemBandage","ItemMorphine","FoodCanFrankBeans","ItemSodaPepsi"];
DefaultWeapons = ["ItemToolbox","ItemGPS","ItemRadio","Binocular","ItemWatch","M9"];
DefaultBackpack = "DZ_TerminalPack_EP1";
DefaultBackpackWeapon = "";

//Edit for custom loot
DZE_MissionLootTable = true;


//Load in compiled functions
call compile preprocessFileLineNumbers "custom\fixes\variables.sqf";							//Initilize the Variables (IMPORTANT: Must happen very early)
call compile preprocessFileLineNumbers "origins\config.sqf";							//Initilize the Variables (IMPORTANT: Must happen very early)
call compile preprocessFileLineNumbers "custom\chameleon\chameleon_init.sqf";					//Chameleon Skin Changer
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";					//Initilize the publicVariable event handlers
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
call compile preprocessFileLineNumbers "custom\fixes\compiles.sqf";	
call compile preprocessFileLineNumbers "origins\compiles.sqf";							//Compile regular functions
call compile preprocessFileLineNumbers "ZSC\gold\ZSCinit.sqf";									//Zupa Single Currency
call compile preprocessFileLineNumbers "addons\bike\init.sqf";									//Personal Bike
call compile preprocessFileLineNumbers "addons\suicide\init.sqf";								//Dramatic Suicide
progressLoadingScreen 0.5;
call compile preprocessFileLineNumbers "server_traders.sqf";							//Compile trader configs
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

if (isServer) then {
	//Compile vehicle configs
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_13.Tavi\dynamic_vehicle.sqf";

	//Spawn static vehicle
	if (true) then {
        private "_handle";
        _handle = [] execVM "\z\addons\dayz_server\FS_SpawnVehicles\FS_StaticVehicleSpawnCompiles.sqf";
        waitUntil{scriptDone _handle};
    };
	
	// Add trader citys
	_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_13.Tavi\mission.sqf";

	_serverMonitor = 	[] execVM "\z\addons\dayz_server\system\server_monitor.sqf";
};

if (!isDedicated) then {
	//Conduct map operations
	0 fadeSound 0;
	waitUntil {!isNil "dayz_loadScreenMsg"};
	dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
	
	//Run the player monitor
	_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
	_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";
	//ESS Spawn Selection v2
	execVM "spawn\start.sqf";
	//Zupa Single Currency
	execVM "ZSC\compiles\playerHud.sqf";
	//Welcome Credits
	execVM "custom\fixes\WelcomeCredits.sqf";
	//Service Point
	execVM "service_point\service_point.sqf",
	//Kill Messages
	execVM "custom\fixes\kill_msg.sqf";
	//Map Markers
	[] execVM "custom\markers\markers_init.sqf";

	//Lights
	//[false,12] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";
	//Mining system
	[] execVM "custom\mining\mining.sqf";	
	// Activate Player Menu for Tools
    [] execVM "custom\playertools\activate_player_menu.sqf";
};

diag_log 'dayz_preloadFinished reset';
dayz_preloadFinished=nil;
onPreloadStarted "diag_log [diag_tickTime,'onPreloadStarted']; dayz_preloadFinished = false;";
onPreloadFinished "diag_log [diag_tickTime,'onPreloadFinished']; dayz_preloadFinished = true;";
with uiNameSpace do {RscDMSLoad=nil;}; // autologon at next logon

if (!isDedicated) then {
	enableSaving [false, false];
	startLoadingScreen ["","RscDisplayLoadCustom"];
	progressLoadingScreen 0;
	dayz_loadScreenMsg = localize 'str_login_missionFile';
	progress_monitor = [] execVM "\z\addons\dayz_code\system\progress_monitor.sqf";
	0 cutText ['','BLACK',0];
	0 fadeSound 0;
	0 fadeMusic 0;
};

initialized = false;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\variables.sqf";
progressLoadingScreen 0.05;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";
progressLoadingScreen 0.15;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";
progressLoadingScreen 0.25;
call compile preprocessFileLineNumbers "server_traders.sqf";
call compile preprocessFileLineNumbers "\z\addons\dayz_code\system\mission\tavi.sqf"; //Add trader city objects locally on every machine early
if (dayz_POIs && (toLower worldName == "chernarus")) then {call compile preprocessFileLineNumbers "\z\addons\dayz_code\system\mission\chernarus\poi\init.sqf";}; //Add POI objects locally on every machine early
initialized = true;

setTerrainGrid 25;
if (dayz_REsec == 1) then {call compile preprocessFileLineNumbers "\z\addons\dayz_code\system\REsec.sqf";};
execVM "\z\addons\dayz_code\system\DynamicWeatherEffects.sqf";

if (isServer) then {
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\system\dynamic_vehicle.sqf";
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\system\server_monitor.sqf";
	execVM "\z\addons\dayz_server\traders\tavi.sqf"; //Add trader agents
	
	//Get the server to setup what waterholes are going to be infected and then broadcast to everyone.
	if (dayz_infectiousWaterholes && (toLower worldName == "chernarus")) then {execVM "\z\addons\dayz_code\system\mission\chernarus\infectiousWaterholes\init.sqf";};
	
	// Lootable objects from CfgTownGeneratorDefault.hpp
	if (dayz_townGenerator) then { execVM "\z\addons\dayz_code\system\mission\chernarus\MainLootableObjects.sqf"; };
};

if (!isDedicated) then {
	//Enables Plant lib fixes
	execVM "\z\addons\dayz_code\system\antihack.sqf";
	
	if (toLower(worldName) == "chernarus") then {
		diag_log "WARNING: Clearing annoying benches from Chernarus";
		([4654,9595,0] nearestObject 145259) setDamage 1;
		([4654,9595,0] nearestObject 145260) setDamage 1;
	};
	
	if (dayz_townGenerator) then { execVM "\z\addons\dayz_code\compile\client_plantSpawner.sqf"; };
	execFSM "\z\addons\dayz_code\system\player_monitor.fsm";
	//[false,12] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";
	_nil = [] execVM "custom\remote\remote.sqf";
	if (DZE_R3F_WEIGHT) then {execVM "\z\addons\dayz_code\external\R3F_Realism\R3F_Realism_Init.sqf";};
	waitUntil {scriptDone progress_monitor};
	cutText ["","BLACK IN", 3];
	3 fadeSound 1;
	3 fadeMusic 1;
	endLoadingScreen;
};


_nil=[]execVM "scripts/clean_up_map.sqf";
_nil=[]execVM "scripts/variables.sqf";