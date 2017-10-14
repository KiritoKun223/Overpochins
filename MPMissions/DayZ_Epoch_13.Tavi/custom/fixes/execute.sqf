private ["_adminList"];
_adminList = call compile preProcessFileLineNumbers "superadmins.sqf";  // Recheck if player is allowed to run this
if ((getPlayerUID player) in _adminList) then {
    adminmenu =
    [
        ["",true],
            ["Add Item 1", [2], "", -5, [["expression", '["item1"] call SNDB_CALL']], "1", "1"],
            ["Add Item 2", [3], "", -5, [["expression", '["item2"] call SNDB_CALL']], "1", "1"],
			["Add Item 3", [4], "", -5, [["expression", '["item3"] call SNDB_CALL']], "1", "1"],
            ["", [-1], "", -5, [["expression", ""]], "1", "0"],
        ["Exit", [13], "", -3, [["expression", ""]], "1", "1"]        
    ];
};
showCommandingMenu "#USER:adminmenu";

SNDB_CALL =
{    
    DO_THIS = {
        PVDZE_spawnEvent = [_this select 0];
        publicVariableServer "PVDZE_spawnEvent";    
    };
    call DO_THIS;
};