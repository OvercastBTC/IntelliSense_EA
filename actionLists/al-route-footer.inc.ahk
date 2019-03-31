
; actionListNEW := (alClass) ? alClass  "-" : "" , actionListNEW .= alTitle , actionListNEW .= (alControl) ? "-" alControl : ""
if(false
&& "could not work becouse class is maybe in the middle of the string. you have to do it more cleber 19-02-19_18-35"
&& !FileExist(actionListNEW)){
    l := strlen(alClass) + 1

    temp_actionListNEW := substr(actionListNEW,l)
    if(FileExist(temp_actionListNEW)){
        actionListNEW := temp_actionListNEW
        msgbox, % actionListNEW "(" RegExReplace(A_LineFile,".*\\") ":" A_LineNumber
    }
    msgbox, % actionListNEW "(" RegExReplace(A_LineFile,".*\\") ":" A_LineNumber
}

;/¯¯¯¯ plausibility ¯¯ 190219200351 ¯¯ 19.02.2019 20:03:51 ¯¯\
; plausibility
lastLetter := substr(actionListNEW,-1)
if(lastLetter == "\"){
    msgbox, % "Oops should not an folder: `n`n" actionListNEW "`n`n(" RegExReplace(A_LineFile,".*\\") ":" A_LineNumber
}
;\____ plausibility __ 190219200354 __ 19.02.2019 20:03:54 __/


thisLine := A_LineNumber
#Include *i %A_ScriptDir%\..\actionLists\create_al_Address-result_plausibility_check.inc.ahk ; al_result_plausibility_check(actionListNEW)
#Include *i %A_ScriptDir%\create_al_Address-result_plausibility_check.inc.ahk ; al_result_plausibility_check(actionListNEW)

#Include *i %A_ScriptDir%\..\RegWrite181031.ahk
#Include *i %A_ScriptDir%\RegWrite181031.ahk

; RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, actionList, % actionListNEW ;  , ValueName, Value
; RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, actionListNEW, % actionListNEW ;  , ValueName, Value

if(!setRegistry_actionList( actionListNEW, "actionList" )){   ; RegWrite , RegSave , Registry
    ; problem: actionListNEW very wrong format
}
if(!setRegistry_actionList( actionListNEW, "actionListNEW" )){   ; RegWrite , RegSave , Registry
    ; problem: actionListNEW very wrong format
}


RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, activeTitle_forDebugging, % activeTitle ;  , ValueName, Value <=== for de


; ToolTip2sec( "`n(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")" )