#SingleInstance,Force
isDevellopperMode:= true ; enthällt auch update script.
; g_doSound := true
#Include %A_ScriptDir%\inc_ahk\soundBeep.inc.ahk
#Include %A_ScriptDir%\inc_ahk\init_global.init.inc.ahk
#include stopIfWinTitleExist_giListSELECT.inc.ahk
#Include ..\actionLists\activeClassManipulation.inc.ahk
#include createActionListAddress.inc.ahk
Speak("Hallo " A_LineNumber,"PROD")

actionListDirBase := sourceDir "\..\actionLists"
actionListDirBase := "" ; 19-02-11_11-07
filterFileName := "actionListNameFilter.inc.ahk"


CoordMode, ToolTip,Screen
results := ""
;Loop,100
while(1)
{
	ToolTip,% results "`n`n(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", (A_ScreenWidth*2) - 800,1,17 
	Sleep,3000
	ToolTip,,,,17 
	;Sleep,1500
	
	SetTitleMatchMode,1
	IfWinExist,1:
	{
		ToolTip,% "WinWaitClose`n`n(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17 
		Speak("ups 1: is open. " A_LineNumber,"PROD")
		WinWaitClose,1:
	}
	IfWinExist,temp
	{
		ToolTip,% "WinWaitClose temp`n`n(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17 
		Speak("ups temp is open. " A_LineNumber,"PROD")
		WinWaitClose,temp
	}
	SetTitleMatchMode,2
	IfWinActive,Registrierungs-Editor ; its not difficult enough
		Continue
	
	; Speak("hi " A_LineNumber,"PROD")
	
	
	actionList := ""
	actionList := ""
	actionListNEW := ""
	activeTitle := ""
	
	
	t1 := A_TickCount
	
	return_from_LineNumber := createActionListAddress(actionList, actionListNEW
	,activeTitle := ""
	,g_activeTitleOLD
	,activeClass := ""
	,g_activeClassOLD
	,stop_list_change
	,actionListDirBase
	,filterFileName )
	g_activeTitleOLD := activeTitle
	;g_activeClassOLD := activeClass ; dont use becouse inside is: activeClass := activeClassManipulation(activeClass, activeTitle)
	WinGetClass, g_activeClassOLD, A ; todo: needet becouse inside is: activeClass := activeClassManipulation(activeClass, activeTitle)
	; RegRead, actionListReg, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, actionList
	RegRead, actionListReg, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, actionList
	
	
	t2 := A_TickCount
	durationMilliSeconds := t2 - t1
	durationInSeconds := Round(durationMilliSeconds/1000)
	;MsgBox,durationInSeconds = %durationInSeconds%
	
	; alLen := StrLen(actionList)
	; alLenNEW := StrLen(actionListNEW)
	alLenREG := StrLen(actionListReg)
	alFileExist := FileExist(actionListReg)
	results =
	(
<%activeTitle%>
<%g_activeTitleOLD%>
return_from_LineNumber = <%return_from_LineNumber%>

durationInSeconds = %durationInSeconds%
durationMilliSeconds = %durationMilliSeconds%

activeClass = <%activeClass%>
alFileExist = <%alFileExist%>
actionListReg = 
(%alLenREG%)<%actionListReg%>
	)
	; Speak("hi " A_LineNumber,"PROD")
	
	; MsgBox, % results "`n`n`n(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")"
}
; Tooltip
#Include createActionListAddress.inc.ahk
#Include %A_ScriptDir%\inc_ahk\ToolTipSec.inc.ahk
#Include %A_ScriptDir%\inc_ahk\UPDATEDSCRIPT_global.inc.ahk


#Include %A_ScriptDir%\inc_ahk\createActionListAddress.inc.ahk


^+Esc::ExitApp
;/¯¯¯¯ Ctrl+Shift+F5 ¯¯ 181201095247 ¯¯ 01.12.2018 09:52:47 ¯¯\
; Ctrl+Shift+F5
^+f5:: ; exit-all-scripts and restart
    ;if(1 && InStr(A_ComputerName,"SL5")){
WinClose,temp.ahk ahk_class #32770
Reload
return
;\____ Ctrl+Shift+F5 __ 181201095253 __ 01.12.2018 09:52:53 __/

