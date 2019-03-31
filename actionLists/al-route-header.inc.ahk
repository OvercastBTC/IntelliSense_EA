; Indentation_style: https://de.wikipedia.org/wiki/EinrÃ¼ckungsstil#SL5small-Stil
; GLOBAL FILTER / ROUTING ; this file was generated 20170308151813


;

; actionListNEW := "Gmail_Google_Chrome.ahk" ; for testing only

#SingleInstance, force

toolTipGui_yOffsetNr := 0
if(actionListNEW){
    errorMsg :=  actionListNEW "`n ups actionListNEW `n `n = `n`n" "`n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
    ; MsgBox,262160,% ":(" A_LineNumber " " RegExReplace(A_LineFile,".*\\") ,% ":( " errorMsg "`n(" A_LineNumber " " RegExReplace(A_LineFile,".*\\") ")"
    ; toolTipGui("a: " actionListNEW " `n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")" ,,80*(toolTipGui_yOffsetNr++),"|-",A_LineNumber,"Purple")  ; x will be offset if y is symbolic
    ; pause
    /*
    happend (not often):
    19-03-18_11-21
    */
}

actionListNEW_debigInfoScriptTop := actionListNEW

; toolTipGui("a: " actionListNEW " `n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")" ,,80*(toolTipGui_yOffsetNr++),"|-",A_LineNumber,"Purple")  ; x will be offset if y is symbolic


if(1 && InStr(A_ComputerName,"SL5")){
    FormatTime, timestampyyMMddHHmmss, %A_now%,yy-MM-ddHH- mm:ss
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, timestampyyMMddHHmmss, % timestampyyMMddHHmmss ;  , ValueName, Value
}
; Tool tool Tool

CoordMode, ToolTip, Screen

; if you want you could use the follwong global variables for calculating you new actionListNEW : actionListDir, actionListNEW, activeClass, activeTitle

	; 02.11.2018 12:55 attention!! : This is redundant code when changing please consider the other posts also !!
	;activeClass := "_globalActionListsGenerated"
	; activeTitle := "_global" ; used till 07.10.2018 10:12 18-10-07_10-12
	; ActionList_isNotAProject_withoutExt  := removesSymbolicLinksFromFileAdress( A_ScriptDir "\..\actionLists\_globalActionListsGenerated\isNotAProject" )
	; ActionList_isNotAProject_withoutExt   := RegExReplace(A_ScriptDir "\..\actionLists\_globalActionListsGenerated\isNotAProject" ,"(\\[^\\]+\\\.\.)+") ; works. removes all symbolic links 24.02.2018  cleanPath
	; ActionList_isNotAProject  := global ActionList_isNotAProject_withoutExt ".ahk"
	; activeTitle := ActionList_isNotAProject ; isNotAProject.ahk ; todo: not very pretty silly. 28.10.2018 11:33
	; actionListNEW := ActionList_isNotAProject ; isNotAProject.ahk ; todo: not very pretty silly. 28.10.2018 11:33

; actionListNEW := (alClass) ? alClass  "-" : "" , actionListNEW .= alTitle , actionListNEW .= (alControl) ? "-" alControl : ""

if(!actionListDir)
	actionListDir := A_ScriptDir "\..\actionLists"
if(!scriptDir)
	scriptDir := actionListDir


#Include,.\..\actionLists\activeClassManipulation.inc.ahk

if(!actionListNEW){
	if(!activeClass)
	    WinGetClass, activeClass, A
	if(!activeTitle)
	    WinGetActiveTitle, activeTitle
    ; actionListNEW := ((activeClass) ? activeClass : nowWinGetClass) "\" activeTitle ; fallback, easy fast 19-02-11_10-48
    actionListNEW := activeTitle ; fallback, easy fast 19-02-11_10-48
    ; toolTipGui("a: " actionListNEW " `n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")" ,,80*(toolTipGui_yOffsetNr++),"|-",A_LineNumber,"Green")  ; x will be offset if y is symbolic
    ; pause
}
if(!actionListNEW := getActionListNEW173129simplify( actionListNEW )){
    errorMsg :=  actionListNEW "`n ups actionListNEW `n is folder?`n = `n`n" "`n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
    ; clipboard := temp
    toolTipGui("a: " actionListNEW " `n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")" ,,80*(toolTipGui_yOffsetNr++),"|-",A_LineNumber,"Purple")  ; x will be offset if y is symbolic
        pause

    ;MsgBox,262160,% ":(" A_LineNumber " " RegExReplace(A_LineFile,".*\\") ,% ":( " errorMsg "`n(" A_LineNumber " " RegExReplace(A_LineFile,".*\\") ")"
}

ToolTipSlowMotion(actionListNEW, A_LineNumber)

if(0 && substr(actionListNEW,-0) == "\"){
    errorMsg :=  actionListNEW "`n ups actionListNEW `n is folder?`n = `n`n" "`n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
    toolTipGui("a: " actionListNEW " `n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")" ,,80*(toolTipGui_yOffsetNr++),"|-",A_LineNumber,"Purple")  ; x will be offset if y is symbolic
    pause

    ; MsgBox,262160,% ":(" A_LineNumber " " RegExReplace(A_LineFile,".*\\") ,% ":( " errorMsg "`n(" A_LineNumber " " RegExReplace(A_LineFile,".*\\") ")"
}

msg =
(
t: %activeTitle%
c: %activeClass%
a: %actionListNEW%
d: %actionListDir%
)
; ; toolTipGui( msg "`n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")" ,,80*(toolTipGui_yOffsetNr++),"|-",A_LineNumber,"Yellow")  ; x will be offset if y is symbolic
actionListNEW := getActionListNEW_relativePath( activeTitle, activeClass, actionListNEW, actionListDir )
msg2 =
(
t: %activeTitle%
c: %activeClass%
a: %actionListNEW%
d: %actionListDir%
)

temp := ""
temp .= actionListNEW "`n"
if(!actionListNEW){
    actionListNEW := activeTitle ; fallback, easy fast 19-02-11_10-48
    actionListNEW .= (alControl) ? "-" alControl : ""
    ; actionListNEW := (alClass) ? alClass  "-" : "" , actionListNEW .= alTitle , actionListNEW .= (alControl) ? "-" alControl : ""


    ;errorMsg :=  actionListNEW "`n ups actionListNEW `n is folder?`n = `n`n" "`n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
    ; clipboard := temp
    ; MsgBox,262160,% ":(" A_LineNumber " " RegExReplace(A_LineFile,".*\\") ,% ":( " errorMsg "`n(" A_LineNumber " " RegExReplace(A_LineFile,".*\\") ")"
    ; toolTipGui("a: " actionListNEW " `n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")" ,,80*(toolTipGui_yOffsetNr++),"|-",A_LineNumber,"Purple")  ; x will be offset if y is symbolic
    ;pause

}


if(!instr(actionListNEW,"\"))
    actionListNEW := ((activeClass) ? activeClass : nowWinGetClass) "\" actionListNEW ; fallback, easy fast 19-02-11_10-48
if(substr(actionListNEW,-0) == "\"){
    errorMsg :=  actionListNEW "`n ups actionListNEW `n is folder?`n = `n`n" "`n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
    ; clipboard := temp
    ; run,tools\DebugVars\DebugVars.ahk
    ; MsgBox,262160,% ":(" A_LineNumber " " RegExReplace(A_LineFile,".*\\") ,% ":( " errorMsg "`n(" A_LineNumber " " RegExReplace(A_LineFile,".*\\") ")"
    toolTipGui("a: " actionListNEW " `n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")" ,,80*(toolTipGui_yOffsetNr++),"|-",A_LineNumber,"Purple")  ; x will be offset if y is symbolic
    pause

}
if(!instr(actionListNEW,"\actionLists\"))
    actionListNEW := "..\actionLists\" actionListNEW

thisLine := A_LineNumber
if(substr(actionListNEW,-0) == "\"){
    errorMsg :=  actionListNEW "`n ups actionListNEW `n is folder?`n = `n`n" "`n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
    ; MsgBox,262160,% ":(" A_LineNumber " " RegExReplace(A_LineFile,".*\\") ,% ":( " errorMsg "`n(" A_LineNumber " " RegExReplace(A_LineFile,".*\\") ")"
    toolTipGui("a: " actionListNEW " `n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")" ,,80*(toolTipGui_yOffsetNr++),"|-",A_LineNumber,"Purple")  ; x will be offset if y is symbolic
    pause

}
#Include *i %A_ScriptDir%\..\actionLists\create_al_Address-result_plausibility_check.inc.ahk ; al_result_plausibility_check(actionListNEW)
if(substr(actionListNEW,-0) == "\"){
    errorMsg :=  actionListNEW "`n ups actionListNEW `n is folder?`n = `n`n" "`n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
    ; MsgBox,262160,% ":(" A_LineNumber " " RegExReplace(A_LineFile,".*\\") ,% ":( " errorMsg "`n(" A_LineNumber " " RegExReplace(A_LineFile,".*\\") ")"
    toolTipGui("a: " actionListNEW " `n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")" ,,80*(toolTipGui_yOffsetNr++),"|-",A_LineNumber,"Purple")  ; x will be offset if y is symbolic
    pause
}
#Include *i %A_ScriptDir%\create_al_Address-result_plausibility_check.inc.ahk ; al_result_plausibility_check(actionListNEW)


if(substr(actionListNEW,-0) == "\"){
    errorMsg :=  actionListNEW "`n ups actionListNEW `n is folder?`n = `n`n" "`n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
    ; MsgBox,262160,% ":(" A_LineNumber " " RegExReplace(A_LineFile,".*\\") ,% ":( " errorMsg "`n(" A_LineNumber " " RegExReplace(A_LineFile,".*\\") ")"
    toolTipGui("a: " actionListNEW " `n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")" ,,80*(toolTipGui_yOffsetNr++),"|-",A_LineNumber,"Purple")  ; x will be offset if y is symbolic
    pause
}



ToolTipSlowMotion(actionListNEW, A_LineNumber)

; feedbackMsgBox(actionListNEW "(" A_LineNumbe  r " " RegExReplace(A_LineFile, ".*\\"), actionListNEW, 1, 1, 6 )

add_fileExtension_ifNotExist(actionListNEW )
ToolTipSlowMotion(actionListNEW, A_LineNumber)

if(0 && InStr(A_ComputerName,"SL5"))
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, ln%A_LineNumber%, % actionListNEW ;  , ValueName, Value

; feedbackMsgBox(actionListNEW "(" A_LineNumber " " RegExReplace(A_LineFile, ".*\\"), actionListNEW, 1, 1, 6 )
; #Include,.\..\actionLists\activeClassManipulation.inc.ahk

#Include .\..\actionLists\al-route-functions.inc.ahk
if(0){ ; take a look inside
    toolTipGui( msg "`n" msg2 "`n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")" ,,80*(toolTipGui_yOffsetNr++),"|-",A_LineNumber,"Yellow")  ; x
    clipboard := actionListNEW
; _globalActionListsGenerated\_ahk_global.ahk._Generated
    sleep,6000
}

if(0 && InStr(A_ComputerName,"SL5"))
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, ln%A_LineNumber%, % actionListNEW ;  , ValueName, Value

;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; this days i have to many files into here... i want first to activate the superglobal 10.08.2017 09:29
if( SubStr( actionListNEW , -3 ) <> ".ahk" ) ; 06.03.2018 13:09
	actionListNEW .= ".ahk"
if( SubStr( actionList , -3 ) <> ".ahk" ) ; 06.03.2018 13:09
	actionList .= ".ahk"

;feedbackMsgBox(actionListNEW "(" A_LineNumber " " RegExReplace(A_LineFile, ".*\\"), actionListNEW, 1, 1, 6 )

/*
inspiration:
realpath:
http://php.net/manual/de/function.realpath.php

A_LoopFilePath is available in [v1.1.28+] as an alias of
A_LoopFileFullPath, which is a misnomer.

A_LoopFileLongPath
It always contains the absolute/complete path
*/

if(0 && InStr(A_ComputerName,"SL5")){
    actionListDir := removesSymbolicLinksFromFileAdress(actionListDir)
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, actionListDir, % actionListDir

    ; \..\actionLists..\_globalActionLists\AutoHotkey_Community

    fileExist_actionList := fileExist(actionListNEW)
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, fileExist, % fileExist_actionList ;  , ValueName, Value

    fileExist_actionList_s2a := fileExist("..\actionLists\" actionListNEW)
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, fileExist_s2a, % fileExist_actionList_s2a ;  , ValueName, Value

    actionList_absoluteComplete := removesSymbolicLinksFromFileAdress(actionListDir "\" actionListNEW)
    fileExist_actionList_absoluteComplete := fileExist(actionList_absoluteComplete)
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, actionList_absoluteComplete, % actionList_absoluteComplete ;  , ValueName, Value

    ; the expected path format actionList should have: https://www.autohotkey.com/boards/viewtopic.php?t=45684#p257320

    ; actionListsORsource2actionList := removesSymbolicLinksFromFileAdress("..\actionLists\" actionListNEW)
    actionListORsource2actionList := actionListNEW

    if(!inStr(actionListNEW, "\actionLists\" )){
        controlMessage :="list path is probably wrong! expected: ..\actionLists\"
        RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, controlMessage, % controlMessage ;  , ValueName, Value
    }else
        RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, controlMessage, % "" ;  , ValueName, Value
    actionListsORsource2actionList := actionListNEW
    fileExist_actionListsORsource2actionList := fileExist(actionListsORsource2actionList)
    fileExist_actionListsORsource2actionList2 := fileExist(A_WorkingDir "\" actionListsORsource2actionList)
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, actionListsORsource2actionList, % actionListsORsource2actionList ;  , ValueName, Value
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, fileExist_actionListsORsource2actionList, % fileExist_actionListsORsource2actionList ;  , ValueName, Value
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, fileExist_actionListsORsource2actionList2, % fileExist_actionListsORsource2actionList2 ;  , ValueName, Value

    sactionListsDir2actionList := actionListNEW
    fileExist_sactionListsDir2actionList := fileExist(actionListNEW)
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, sactionListsDir2actionList, % sactionListsDir2actionList ;  , ValueName, Value
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, fileExist_sactionListsDir2actionList, % fileExist_sactionListsDir2actionList ;  , ValueName, Value

    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, A_LineFile, % A_LineFile ;  , ValueName, Value
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, A_WorkingDir, % A_WorkingDir ;  , ValueName, Value
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, A_ScriptDir, % A_ScriptDir ;  , ValueName, Value

    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, fileExist_actionList_absoluteComplete, % fileExist_actionList_absoluteComplete ;  , ValueName, Value
}



#Include .\..\ActionLists\al-route-footer.inc.ahk ; toolTipGui(actionListNEW_debigInfoScriptTop " => `n" actionListNEW " = actionListNEW `n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")" ,,20 + 80*(toolTipGui_yOffsetNr++),"¯",A_LineNumber,"Purple",,1)  ; x will be offset if y is symbolic

if(0 && InStr(A_ComputerName,"SL5"))
    FileAppend, % actionListNEW "`n", actionListNEW.log.txt
; here we are: actionLists\al-route.inc.ahk

; RegRead, actionListNewTemp_RAW, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, actionList

; RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, actionListActive, ln:%A_LineNumber% `%actionListActive`%
; RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, actionListNEWarchivePath, ln:%A_LineNumber% `%actionListNEWarchivePath`%

RegRead, CreatedDir, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, CreatedDir
if(CreatedDir){
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, CreatedDir, `% "" ; RegWrite , RegSave , Registry
    actionListOpen := StrReplace(actionList, "._Generated.ahk")
    openInEditorFromIntern( actionListOpen )
}

;/¯¯¯¯ plausibility ¯¯ 190210175751 ¯¯ 10.02.2019 17:57:51 ¯¯\
;plausibility tests
if(!instr(actionListNEW , "\")){

g_doSound := TRUE
Speak(A_LineNumber ": no slash. no backslash in list. ERROR ==> pause", "PROD" )
WinGetClass, nowWinGetClass, A
feedback =
(
/*
!instr(actionListNEW , "\")

!instr(%actionListNEW% ,  "\")

actionListNEW = %actionListNEW%
activeClass = %activeClass%
%nowWinGetClass% = WinGetClass, activeClass, A
)
feedback .= "`n`n" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\")
feedback .= "`n*/"
toolTip9sec(feedback)
; clipboard := feedback

; toolTipGui(feedback  ,,-250,"|_",A_LineNumber,"Red")  ; x will be offset if y is symbolic

;sleep,3000
}
;\____ plausibility __ 190210175755 __ 10.02.2019 17:57:55 __/

;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; this days i have to many files into hiere... i want first to activate the superglobal 10.08.2017 09:29
; thats like a backup, bevore ... \className\al-route.inc.ahk will include this file :) and change actionListNEW but reuse ActionListNEW_time_between  at  the end :)  12.08.2017 09:44
ActionListNEW_time_between := actionListNEW
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

if(0 && InStr(A_ComputerName,"SL5")){
toolTipGui("a: " actionListNEW " `n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")" ,,80*(toolTipGui_yOffsetNr++),"|-",A_LineNumber,"Green")  ; x will be offset if y is symbolic
pause
}

; # Include ..\Source\inc_ahk\openInEditor_actionList.inc.ahk
; toolTipGui("(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")" ,,,"|_",A_LineNumber,"Purple")  ; x will be offset if y is symbolic
#Include,.\..\Source\inc_ahk\copy2clipBoard.functions.inc.ahk
; toolTipGui("(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")" ,,,"|_",A_LineNumber,"Purple")  ; x will be offset if y is symbolic



#Include *i %A_ScriptDir%\inc_ahk\toolTipGui.inc.ahk ; https://www.autohotkey.com/boards/viewtopic.php?f=6&t=62078&p=263824#p263824
#Include *i inc_ahk\toolTipGui.inc.ahk ; https://www.autohotkey.com/boards/viewtopic.php?f=6&t=62078&p=263824#p263824
#Include *i ..\Source\inc_ahk\toolTipGui.inc.ahk ; https://www.autohotkey.com/boards/viewtopic.php?f=6&t=62078&p=263824#p263824





; toolTipGui("(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")" ,,,"|_",A_LineNumber,"Purple")  ; x will be offset if y is symbolic
#Include .\..\Source\inc_ahk\functions_global_dateiende.inc.ahk

; toolTipGui("(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")" ,,,"|_",A_LineNumber,"Purple")  ; x will be offset if y is symbolic
#Include .\..\Source\inc_ahk\ToolTipSec.inc.ahk

; toolTipGui("(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")" ,,,"|_",A_LineNumber,"Purple")  ; x will be offset if y is symbolic
#Include .\..\Source\inc_ahk\functions_global.inc.ahk

; G:\fre\git\github\global-IntelliSense-everywhere-Nightly-Build\Source\inc_ahk\copy2clipBoard.functions.inc.ahk

; toolTipGui("(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")" ,,,"|_",A_LineNumber,"Purple")  ; x will be offset if y is symbolic
#Include .\..\Source\inc_ahk\ToolTipSec_RemoveToolTip.inc.ahk
; toolTipGui("(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")" ,,,"|_",A_LineNumber,"Purple")  ; x will be offset if y is symbolic
