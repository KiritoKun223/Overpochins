//  **FORMAT** -- (note no comma after last array entry)
//
//  DZE_DEPLOYABLES_CONFIG = [
//      [_clickItem,_deployOffset,_packDistance,_damageLimit,_packAny,_cargo,_ammo,_hive,_plot,_simulation,_road,_deployables,_near,_parts,_condition],
//      [_clickItem,_deployOffset,_packDistance,_damageLimit,_packAny,_cargo,_ammo,_hive,_plot,_simulation,_road,_deployables,_near,_parts,_condition],
//      [...more stuff here...]
//  ];
//    
//  parameter    | description                                                         |  type  | example
// --------------|---------------------------------------------------------------------|--------|--------
// _clickItem    | class name of the item to click on                                  | string | "ItemToolbox"
// _deployOffset | [_side,_front,_up] array to offset the deployable when buiding      | array  | [0,2,1]
// _packDistance | how close does the packer need to be to pack the object?            | number | 5
// _damageLimit  | item can't be repacked if damage is > this. (-1 = no re-packing)    | number | 0.1
// _packAny      | can anyone repack the deployable?                                   | bool   | false
// _cargo        | clear the cargo of the deployable?                                  | bool   | false
// _ammo         | should vehicle ammo be cleared? (does not persist through restart)  | bool   | true
// _hive         | write deployable to database?                                       | bool   | false
// _plot         | require a plot from the owner to build the deployable?              | bool   | false
// _simulation   | enable simulation (movement/damage) for the object? (true for cars) | bool   | true
// _road         | enable road building for this object?                               | bool   | true
// _deployables  | array of class names that can be deployed with this method          | array  | ["MMT_Civ"]
// _near         | array of items required nearby to build (workshop/fire/fueltank)    | array  | []
// _parts        | array of parts required to build (will be taken from player)        | array  | ["ItemToolbox"]
// _condition    | string of code to evaluate to determine whether action is shown     | string | "!(isNull player) && {(getPlayerUID player) in DZE_DEPLOYABLE_ADMINS}"

DZE_DEPLOYABLES_CONFIG = [
    // deploy a non-permanent bike from a toolbox right in front of the player that can be re-packed by the owner as long as it's under 10% damage
    ["ItemToolbox",[0,5,1],5,0.9,false,false,false,false,false,true,true,["Old_bike_TK_CIV_EP1"],[],["ItemToolbox"],"true"],
    // deploy mounted guns 2 meters in front of players that persist through server restart
    //["50Rnd_127x107_DSHKM",[0,2,0],1,-1,false,false,false,true,false,false,false,["DSHKM_Gue"],[],["50Rnd_127x107_DSHKM"],"true"],
	//["100Rnd_127x99_M2",[0,2,0],1,-1,false,false,false,true,false,false,false,["M2StaticMG_US_EP1"],[],["100Rnd_127x99_M2"],"true"],
    // Deploy ADMIN fortifications for FRIDAY NIGHT EVENTS - Persistent through restart
    ["ItemCopperBar",[0,5,1],5,1,false,true,false,true,false,false,false,["Land_Fuel_tank_big","MAP_snowman","US_WarfareBVehicleServicePoint_EP1","Land_fortified_nest_big_EP1","Barrack2","Camp","C130J_wreck_EP1","UralWreck","datsun02Wreck"],[],["ItemCopperBar"],"true"],
    // Items deployable from citrine gems - Persistent through restart
	["ItemCitrine",[0,1,1],5,1,false,true,false,true,true,false,false,["Baseball","Loudspeaker","MetalBucket","Misc_Videoprojektor","Land_Misc_Well_C_EP1","Misc_Videoprojektor_platno","Misc_Wall_lamp","Notebook","SatPhone","Radio","SmallTV","Suitcase"],[],["ItemCitrine"],"true"],
	// Items deployable from bronze bars - Persistent through restart
	["ItemAmethyst",[0,5,1],5,1,false,true,false,true,true,false,false,["ZavoraAnim","Sign_Checkpoint_US_EP1","SearchLight_CDF","HeliH","M2StaticMG","Hhedgehog_concrete","Land_Fort_Watchtower_EP1","Land_fortified_nest_small_EP1"],[],["ItemAmethyst"],"true"],
    // Deploy some housing items from wood piles in front of the player that are permanent but can be re-packed by anyone
    ["PartWoodPile",[0,2,0],5,1,true,true,false,true,true,false,false,["Land_Rack_EP1","Land_Table_EP1","Land_Shelf_EP1","WoodChair","Park_bench2","Park_bench1"],[],["PartWoodPile"],"true"],
    // Deploy concrete barricades from cinderblocks 2m in front of the player, that are permanent and can only be re-packed by the person who placed them
    ["CinderBlocks",[0,2,0],5,1,false,true,false,false,false,true,true,["Hedgehog_concrete","Land_CncBlock","Land_CncBlock_Stripes"],[],["CinderBlocks"],"true"],
    // Crowbar Player build menu
    ["ItemCrowbar",[0,6,0],5,-1,false,true,false,true,true,false,false,["Land_Misc_Cargo1Ao","Land_Misc_Cargo1Bo"],[],["metal_panel_kit","metal_panel_kit","metal_panel_kit","metal_panel_kit"],"true"]
    ];

// **DZE_DEPLOYABLE_NAME_MAP format
//  
//  DZE_DEPLOYABLE_NAME_MAP = [
//      [_class,_name],
//      [_class,_name],
//      [... more ...]
//  ];
//
//  parameter    | description                                                         |  type  | example
// --------------|---------------------------------------------------------------------|--------|--------
// _class        | class name of the item you want to replace the name of              | string | "Notebook"
// _name         | new name to display when right clicking                             | string | "Macbook Pro"
//
DZE_DEPLOYABLE_NAME_MAP = [
    ["Notebook","Macbook Pro"]
];

DZE_DEPLOYABLE_ADMINS = [];
