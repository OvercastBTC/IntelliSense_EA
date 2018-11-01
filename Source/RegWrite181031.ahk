RegWrite181031( ActionListNewTemp_withoutExt ){   ; RegWrite , RegSave , Registry

    if( SubStr( ActionListNewTemp_withoutExt , -3 ) == ".ahk" )
        ActionListNewTemp_withoutExt := SubStr( ActionListNewTemp_withoutExt, 1, -4 )

	RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net, ActionList, % ActionListNewTemp_withoutExt  ; RegWrite , RegSave , Registry

    ; follwing we may dont need:
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net, ActionListActive, % ActionListNewTemp_withoutExt ; RegWrite , RegSave , Registry
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net, ActionListNEW, % ActionListNewTemp_withoutExt ; RegWrite , RegSave , Registry
    ToolTip8sec(ActionListNewTemp_withoutExt "`n" A_LineNumber " " RegExReplace(A_LineFile,".*\\") )
    return ActionListNewTemp_withoutExt
}


setRegistry_toDefault(){
    globalActionListDir := "..\ActionLists"
    ; globalActionList := globalActionListDir "\_globalActionListsGenerated\_global.ahk"
    globalActionList := globalActionListDir   "\_globalActionListsGenerated\isNotAProject.ahk"

    ; RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net, ActionListDir, %globalActionListDir% ; RegWrite , RegSave , Registry
    ; RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net, ActionListActive, %globalActionList% ; RegWrite , RegSave , Registry
    ; RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net, ActionListNEW, %globalActionList% ; RegWrite , RegSave , Registry
    RegWrite181031( globalActionList )
    ; RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net, toDo, A_ScriptName " " A_LineNumber ": "  . " to many. 2 or 3 enough"  ; RegWrite , RegSave , Registry
}

