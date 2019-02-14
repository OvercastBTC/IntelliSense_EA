; Indentation_style: https://de.wikipedia.org/wiki/EinrÃ¼ckungsstil#SL5small-Stil
; GLOBAL FILTER / ROUTING
; this file was generated 20170308151813 by: 
; if you want you could update it by yourself. it will not overwritten by Typing_Aid_everywhere_multi_clone.ahk
; if you delete it it will be generated again.
; you could use it as a global filter/routing called from your special .../className/ActionListNameFilter.inc.ahk

#SingleInstance, force

if(1 && InStr(A_ComputerName,"SL5")){
    FormatTime, timestampyyMMddHHmmss, %A_now%,yy-MM-ddHH- mm:ss
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, timestampyyMMddHHmmss, % timestampyyMMddHHmmss ;  , ValueName, Value
}
; Tool tool Tool

CoordMode, ToolTip, Screen

; if you want you could use the follwong global variables for calculating you new actionListNEW : actionListDir, actionListNEW, activeClass, activeTitle

if(0 && InStr(A_ComputerName,"SL5"))
    feedbackMsgBox(A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\"), "hallo from " A_ComputerName, 1, 1, 6 )



if (!actionListNEW && 0){
	; 02.11.2018 12:55 attention!! : This is redundant code when changing please consider the other posts also !!
	activeClass := "_globalActionListsGenerated"
	; activeTitle := "_global" ; used till 07.10.2018 10:12 18-10-07_10-12
	
	; ActionList_isNotAProject_withoutExt  := removesSymbolicLinksFromFileAdress( A_ScriptDir "\..\actionLists\_globalActionListsGenerated\isNotAProject" )
	ActionList_isNotAProject_withoutExt   := RegExReplace(A_ScriptDir "\..\actionLists\_globalActionListsGenerated\isNotAProject" ,"(\\[^\\]+\\\.\.)+") ; works. removes all symbolic links 24.02.2018  cleanPath
	ActionList_isNotAProject  := global ActionList_isNotAProject_withoutExt ".ahk"
	
	activeTitle := ActionList_isNotAProject ; isNotAProject.ahk ; todo: not very pretty silly. 28.10.2018 11:33
	
	actionListNEW := ActionList_isNotAProject ; isNotAProject.ahk ; todo: not very pretty silly. 28.10.2018 11:33
	ToolTip, % "Oops !actionListNEW (" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
	if(1 && InStr(A_ComputerName,"SL5")){
		sleep,5000
    	msgbox, % "(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
	}
	exitapp
}

if(!actionListNEW && InStr(A_ComputerName,"SL5")){
    sleep,5000
	m := "ERROR actionListNEW is EMPTY.  (" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ") `n (token293)"
	ToolTip, % m "(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"  
	msgbox, % m
    ; tooltip,%activeTitle%
}

; REMEMBER: activeTitle should not be changed inside of this file :) please :) 12.08.2017 10:11
; toh-5 - [D:\downloads\toh-5] - ...\src\app\app.component.ts - PhpStorm 2016.3.3 ahk_class SunAwtFrame


; ActionListDir_backupTopOfTempAHL := actionListDir

; feedbackMsgBox(actionListNEW "(" A_LineNumber " " RegExReplace(A_LineFile, ".*\\"), actionListNEW, 1, 1, 6 )

if(1 && InStr(A_ComputerName,"SL5"))
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, activeClass_ln%A_LineNumber%, % activeClass " " ln%A_LineNumber% ;  , ValueName, Value


if(1 && InStr(A_ComputerName,"SL5"))
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, ln%A_LineNumber%, % actionListNEW ;  , ValueName, Value


isSlowMotion := false
; isSlowMotion := true
if(A_ScriptName == "ActionListNameFilter.inc.ahk" ) { ; thats developer mode. this script is not includet. 08.03.2017 09:14
	activeTitle  = I would like to hire a PHP Developer | Codeigniter | CSS | HTML5 | JSON | PHP - Google Chrome
	activeTitle  = (Unbenannt) * SciTE4AutoHotkey [5 von 5] ahk_class SciTEWindow 
	activeTitle  = (Unbenannt) * SciTE4AutoHotkey [6 von 6]
	activeTitle  = Threema Web - Google Chrome
	
	activeTitle  = dingsbums.ahk
	actionListDir  := "..\actionLists\SciTEWindow"
	
	if(!actionListNEW)
		actionListNEW := A_ScriptName
	actionListNEW := activeTitle
	
	isSlowMotion := true
} ; demo Mode ende. ( A_ScriptName == "ActionListNameFilter.inc.ahk" )

; playground | Piratenpad - Google Chrome TOP ahk_class Chrome_WidgetWin_1
; if DeskPins-reloaded-from-SL5net_alwaysOnTop.ahk change the title i would use anyway old list
actionListNEW := regexreplace(actionListNEW, " TOP ")


if (!actionListNEW && 1){
	m := "ERROR actionListNEW is EMPTY.  (" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ") `n (token293)"
	if(1 && InStr(A_ComputerName,"SL5")){
		ToolTip, % m "(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"  
		msgbox, % m
	}
}

if(1 && InStr(A_ComputerName,"SL5"))
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, ln%A_LineNumber%, % actionListNEW ;  , ValueName, Value

if(!actionListDir)
	actionListDir := A_ScriptDir
if(!scriptDir)
	scriptDir := actionListDir

if(1 && InStr(A_ComputerName,"SL5"))
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, ln%A_LineNumber%, % actionListNEW ;  , ValueName, Value


;ToolTip,`n (%A_LineFile%~%A_LineNumber%)
;Sleep,2000

if (!actionListNEW && 1){
	m := "ERROR actionListNEW is EMPTY.  (" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ") `n (token293)"
	if(0 && InStr(A_ComputerName,"SL5")){
		ToolTip, % m "(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"  
		msgbox, % m
	}
}

; feedbackMsgBox(actionListNEW "(" A_LineNumber " " RegExReplace(A_LineFile, ".*\\"), actionListNEW, 1, 1, 6 )
#Include,.\..\actionLists\activeClassManipulation.inc.ahk
; feedbackMsgBox(actionListNEW "(" A_LineNumber " " RegExReplace(A_LineFile, ".*\\"), actionListNEW, 1, 1, 6 )

if (!actionListNEW && 1){
	m := "ERROR actionListNEW is EMPTY.  (" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ") `n (token293)"
	if(0 && InStr(A_ComputerName,"SL5")){
		ToolTip, % m "(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"  
		msgbox, % m
	}
}

if(1 && InStr(A_ComputerName,"SL5"))
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, ln%A_LineNumber%, % actionListNEW ;  , ValueName, Value


; ToolTipSlowMotion(actionListNEW, A_LineNumber)

if(1 && InStr(A_ComputerName,"SL5"))
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, activeClass_ln%A_LineNumber%, % activeClass " " ln%A_LineNumber% ;  , ValueName, Value

actionListNEW := getActionListNEW173129simplify( actionListNEW )
ToolTipSlowMotion(actionListNEW, A_LineNumber)

if(1 && InStr(A_ComputerName,"SL5"))
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, ln%A_LineNumber%, % actionListNEW ;  , ValueName, Value

if(1 && InStr(A_ComputerName,"SL5"))
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, activeClass, % activeClass " " ln%A_LineNumber% ;  , ValueName, Value

if(1 && InStr(A_ComputerName,"SL5"))
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, activeClass_ln%A_LineNumber%, % activeClass " " ln%A_LineNumber% ;  , ValueName, Value


; feedbackMsgBox(actionListNEW "(" A_LineNumber " " RegExReplace(A_LineFile, ".*\\"), actionListNEW, 1, 1, 6 )

; actionListDirBase := "..\actionLists"
actionListNEW := getActionListNEW_relativePath( activeTitle, activeClass, actionListNEW, actionListDir )
if(!instr(actionListNEW,"\"))
    actionListNEW := ((activeClass) ? activeClass : nowWinGetClass) "\" actionListNEW ; fallback, easy fast 19-02-11_10-48
if(!instr(actionListNEW,"\actionLists\"))
    actionListNEW := "..\actionLists\" actionListNEW

; G:\fre\git\github\global-IntelliSense-everywhere-Nightly-Build\actionLists\actionListNameFilter.inc.ahk

if(1 && InStr(A_ComputerName,"SL5"))
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, activeClass_ln%A_LineNumber%, % activeClass " " ln%A_LineNumber% ;  , ValueName, Value

if(1 && InStr(A_ComputerName,"SL5"))
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, ln%A_LineNumber%, % actionListNEW ;  , ValueName, Value


ToolTipSlowMotion(actionListNEW, A_LineNumber)

if(1 && InStr(A_ComputerName,"SL5"))
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, ln%A_LineNumber%, % actionListNEW ;  , ValueName, Value

; feedbackMsgBox(actionListNEW "(" A_LineNumber " " RegExReplace(A_LineFile, ".*\\"), actionListNEW, 1, 1, 6 )

add_fileExtension_ifNotExist(actionListNEW )
ToolTipSlowMotion(actionListNEW, A_LineNumber)

if(1 && InStr(A_ComputerName,"SL5"))
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, ln%A_LineNumber%, % actionListNEW ;  , ValueName, Value

; feedbackMsgBox(actionListNEW "(" A_LineNumber " " RegExReplace(A_LineFile, ".*\\"), actionListNEW, 1, 1, 6 )

; #Include,.\..\actionLists\activeClassManipulation.inc.ahk

#Include .\..\actionLists\actionListNameFilter-functions.inc.ahk

if(1 && InStr(A_ComputerName,"SL5"))
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

if(1 && InStr(A_ComputerName,"SL5")){
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



RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, actionList, % actionListNEW ;  , ValueName, Value
RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, actionListNEW, % actionListNEW ;  , ValueName, Value

if(1 && InStr(A_ComputerName,"SL5"))
    FileAppend, % actionListNEW "`n", actionListNEW.log.txt
; here we are: actionLists\actionListNameFilter.inc.ahk

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
if(!instr(actionListNEW,"\")){

g_doSound := TRUE
Speak(A_LineNumber ": no slash. no backslash in list. ERROR ==> pause", "PROD" )
WinGetClass, nowWinGetClass, A
feedback =
(
/*
actionListNEW = %actionListNEW%
activeClass = %activeClass%
%nowWinGetClass% = WinGetClass, activeClass, A
)
feedback .= "`n`n" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\")
feedback .= "`n*/"
toolTip9sec(feedback)
clipboard := feedback

pause
}
;\____ plausibility __ 190210175755 __ 10.02.2019 17:57:55 __/

;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; this days i have to many files into hiere... i want first to activate the superglobal 10.08.2017 09:29
; thats like a backup, bevore ... \className\ActionListNameFilter.inc.ahk will include this file :) and change actionListNEW but reuse ActionListNEW_time_between  at  the end :)  12.08.2017 09:44
ActionListNEW_time_between := actionListNEW
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

; # Include ..\Source\inc_ahk\openInEditor_actionList.inc.ahk
#Include,.\..\Source\inc_ahk\copy2clipBoard.functions.inc.ahk
#Include .\..\Source\inc_ahk\ToolTipSec_RemoveToolTip.inc.ahk
#Include .\..\Source\inc_ahk\ToolTipSec.inc.ahk
#Include .\..\Source\inc_ahk\functions_global.inc.ahk
#Include .\..\Source\inc_ahk\functions_global_dateiende.inc.ahk


; G:\fre\git\github\global-IntelliSense-everywhere-Nightly-Build\Source\inc_ahk\copy2clipBoard.functions.inc.ahk