; WHILEloop_Typing_Aid_everywhere_multi_clone.ahk
;/¯¯¯¯ Performance ¯¯ 190123004757 ¯¯ 23.01.2019 00:47:57 ¯¯\

; test too Tool fed feed Tooltip Too

;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; activeTitle:=""
;/¯¯¯¯ createActionListAddress ¯¯ 181023091625 ¯¯ 23.10.2018 09:16:25 ¯¯\
createActionListAddress(actionList, actionListNEW
, ByRef activeTitle
, activeTitleOLD
, ByRef activeClass
, activeClassOLD
, stop_list_change
, actionListDirBase
, filterFileName ){

if(!activeTitle)
	WinGetActiveTitle, activeTitle
if(!activeClass)
	WinGetClass, activeClass, A

if(0){
results =
(
<%activeTitle%>
<%activeTitleOLD%>

<%activeClass%>
<%activeClassOLD%>
)
ToolTip,% results "`n`n(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,18
}

if(activeTitleOLD == activeTitle && activeClassOLD == activeClass )
    return A_LineNumber ;

if(substr(actionListDirBase,1,1) == "\"){
	MsgBox,% A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\")
	;actionListDirBase := A_ScriptDir actionListDirBase
}
if(!actionListDirBase){
    actionListDirBase := "..\actionLists"
}

; Tool Tool

/*
	will fetched before call:
	RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, stop_list_change, % ""
	
	will fetched inside this function:
	WinGetClass, activeClass, % activeTitleREAL

	WinGetActiveTitle, activeTitleREAL
	activeTitle := activeTitleREAL ; this will manipulated and reused in many other files and includes 12.08.2017 00:11
*/
; if(!stop_list_change)
;	MsgBox,262160,% "!stop_list_change :(`n" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ,% ":(`n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
if(!filterFileName)
	MsgBox,262160,% "!filterFileName :(`n" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ,% " !filterFileName :(`n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"

DetectHiddenWindows,On ; if this is off it does not find in tray 27.04.2017
SetTitleMatchMode,2 ; thats my default. do i need it later ? 08.07.2017 14:12

if(0 && InStr(A_ComputerName,"SL5")){
    	ToolTip,% "keyWaitReleased.ahk`n=actionList `n`n(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
    	Speak("Hallo " A_LineNumber,"PROD")
}
#Include keyWaitReleased.ahk
if(0 && InStr(A_ComputerName,"SL5")){
    	ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
    	Speak("Hallo " A_LineNumber,"PROD")
}
global g_lineNumberFeedback
g_lineNumberFeedback=%A_LineNumber%~%A_LineFile%~%A_ThisFunc%

DetectHiddenText,Off
WinGetActiveTitle, activeTitleREAL ; never manipulated name. 12.08.2017 00:10

; WinGetClass, activeClass, % activeTitleREAL

if(activeClass == "tooltips_class32")
    return A_LineNumber ;

	;msgBox,% "" tip "(while(true)" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
if(false && "simulateAlwaysTheSame Scenario"){
	activeTitleREAL := "playground | Piratenpad - Google Chrome"
	activeClass := "Chrome_WidgetWin_1"
	if(InStr(A_ComputerName,"SL5")) {
		tip =
			(
g_lineNumberFeedback = %g_lineNumberFeedback%
activeTitleREAL := "playground | Piratenpad - Google Chrome"
activeClass := "Chrome_WidgetWin_1"
			)
		ToolTip2sec(tip,-1,14)
			; msgBox,% "" tip "(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
	}
}

activeTitle := activeTitleREAL ; this will manipulated and reused in many other files and includes 12.08.2017 00:11
activeTitle := RegExReplace(activeTitle, Chr(37) . ".*", "_") ; should be easy to include variable later. some websites have suche long title with the procent in it. dont like it. simplify it. 16.03.2017 18:39

if(0 && InStr(A_ComputerName,"SL5")){
    ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
    Speak("Hallo " A_LineNumber,"PROD")
    sleep,3000
}

if(activeTitleREAL && !activeTitle ){
	tooltip, % "ups???? activeTitle is EMPTY. But activeTitleREAL is valid.  (" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
if(0 && InStr(A_ComputerName,"SL5")){
    	ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
    	Speak("Hallo " A_LineNumber,"PROD")
}
	WinWaitNotActive, % activeTitleREAL
		; WinWaitNotActive, % activeTitleREAL
}
if(0 && InStr(A_ComputerName,"SL5")){
    ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
    Speak("Hallo " A_LineNumber,"PROD")
    sleep,3000
}

activeClass := activeClassManipulation(activeClass, activeTitle)
if(0 && InStr(A_ComputerName,"SL5")){
    ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
    Speak("Hallo " A_LineNumber,"PROD")
    sleep,3000
}

g_tooltipText =
    ;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
actionListFilterPathNEWdir := actionListDirBase "\" activeClass "\"
actionListFilterPathNEW := actionListFilterPathNEWdir . filterFileNa
if(false && !fileExist(actionListDirBase) ){
	msg := "!fileExist(actionListDirBase .. `n = >" actionListDirBase "<"
	msg .= "`n`n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
	feedbackMsgBox(msg ,msg ,1 ,1 )
if(0 && InStr(A_ComputerName,"SL5")){
    ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
    Speak("Hallo " A_LineNumber,"PROD")
    sleep,4000
}
	exitApp
}
if(false && !fileExist(actionListFilterPathNEWdir) ){
	msg := "!fileExist(actionListFilterPathNEWdir .. `n = >" actionListFilterPathNEWdir "<"
	msg .= "`n`n`n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
	feedbackMsgBox(msg ,msg ,1 ,1 )

	activeClass := "_globalActionListsGenerated"
                ; activeTitle := "_global" ; used till 07.10.2018 10:12 18-10-07_10-12
	activeTitle := "isNotAProject" ; isNotAProject.ahk ; todo: not very pretty silly. 28.10.2018 11:33
	
	msg = !fileExist(actionListFilterPathNEWdir === >%actionListFilterPathNEWdir%<)  `n '%activeTitle%'=activeTitle , '%activeClass%' = activeClass
	lineFileName := RegExReplace(A_LineFile, ".*\\([\w\s\.]+)$", "$1")
	lineFileNameWithoutPATHandEXT := RegExReplace(A_LineFile, ".*\\([\w\s\._]+)\.\w+$", "$1")
	
	tip=%msg% (%lineFileNameWithoutPATHandEXT%~%A_LineNumber%)
	
	if(InStr(A_ComputerName,"SL5")) {
		ToolTip2sec(tip,-1,-40)
		;feedbackMsgBox("Oops. so lets use global.`n ",msg,1,1)
	}
	sleep,1500 ; if this is the case slow down ths script a little bit. temporaily
            ; msg=:-O WinExist temp.ahk `n `n %A_LineFile%~%A_LineNumber% ==> continue
	
	
                ;global g_doSaveLogFiles
                ;g_doSaveLogFiles := true
                ;
                ;lll( A_LineNumber, A_ScriptName, msg . "`n 17-07-29_14-18 ")
	
                ; impotend!!
                ; this line has to be includet into the this global:
                ; create own project dir or this|rr||ahk|WinGetClass,activeClass, A `n activeClass := RegExReplace( activeClass, "[\W_]+", "") `n d1 = %A_ScriptDir%\..\actionLists\%activeClass% `n  FileCreateDir, %d1% `n run, %d1%
}else{
        ; ; if(!fileExist(actionListFilterPathNEW)
        ; dont nee to do anything here. i filter is not inside it will be automatically fixed some lines later :) 09.08.2017 19:59 17-08-09_19-59
        ; so dont be worry about it :) 09.08.2017 19:59 17-08-09_19-59
}
    ;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

    ;/¯¯¯¯ missionCompleted ¯¯ 181024170958 ¯¯ 24.10.2018 17:09:58 ¯¯\
    ; inside while(true)
SetTitleMatchMode,1
temp :="created token=17-08-10_16-17" ; ahk_class #32770"
if(RegExMatch(activeTitle, temp )){
	
        ;/¯¯¯¯ try_faster_reload_if_created ¯¯ 181025152605 ¯¯ 25.10.2018 15:26:05 ¯¯\
        ; success. that seems working nice. takes about 2 seconds 25.10.2018 15:35
        ; I hope the with this method is reloaded after creating a new list (much faster). 25.10.2018 15:25
if(0 && InStr(A_ComputerName,"SL5")){
    	ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
    	Speak("Hallo " A_LineNumber,"PROD")
}
	; run,Typing_Aid_everywhere_multi_clone.ahk
        ;\____ try_faster_reload_if_created __ 181025153223 __ 25.10.2018 15:32:23 __/
	
	WinClose, % temp
        ; msgbox,closed ???
        ; box has mission completed. it just changed a short time the actionList. thats all 13.05.2018 19:01
	
                             ; created_token_17-08-10_16-17
        ;tooltip, WinWaitNotActive,actionListChangedInRegistry  `n (%A_LineFile%~%A_LineNumber%)
if(0 && InStr(A_ComputerName,"SL5")){
    	ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
    	Speak("Hallo " A_LineNumber,"PROD")
}
	WinWaitNotActive, % temp
	tooltip,
	msg:="mission completed. your menu should change. `n use it in seconds (__ ...)" ; thats all 13.05.2018 19:01
	msg.= "(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
	
	MsgBox , 64 , mission completed, % msg, 3 ; project created
	return "mission completed" ; continue ;
}
    ;\____ missionCompleted __ 181024170947 __ 24.10.2018 17:09:47 __/


if(0 && InStr(A_ComputerName,"SL5")){
    ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
    Speak("Hallo " A_LineNumber,"PROD")
    sleep,3000
}



	;/¯¯¯¯ giListSELECT ¯¯ 190118192458 ¯¯ 18.01.2019 19:24:58 ¯¯\
	; if(stopIfWinTitleExist_giListSELECT(activeTitle, detectHidden := true)) ; Problem: https://www.autohotkey.com/boards/viewtopic.php?f=76&t=60875
if(stop_list_change || stopIfWinTitleExist_giListSELECT(activeTitle)){
	
	if(0 && InStr(A_ComputerName,"SL5"))
		Speak(A_LineNumber,"PROD")
	
	    ; was found and was closed. lets search for the new title (new loop) 19-01-10_05-19
	    ; but maybe the list has to be regenerated. include file or so 19-01-18_17-17
	RegRead, actionListNEW, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, actionList
	gi_everywhereSourcePath := A_ScriptDir
	actionListDir := RegExReplace(actionListNEW,"\\[^\\]+$","")
	if(actionListDir)
	    activeClass := RegExReplace(actionListDir,".*\\","")
    if(!activeClass)
        WinGetClass, activeClass, A

    if(!activeClass)
        activeClass := "noClass"

	activeTitle := RegExReplace(actionListNEW, "^[^\n]*\\([^\.\n]*).*", "$1")
	actionListNEW := actionListDir "\" activeTitle ".ahk"
	actionListActive := actionListNEW
		; lineFileName := RegExReplace(actionListNEW, ".*\\([\w\s\.]+)$", "$1")
;activeClass := ""
;activeTitle := "giListSELECT"
        ; actionListDirBase, destinDir, sourceDir, gi_everywhereAHK)
	info =
		(
nooo AutoHotkeyGUI = activeClass
nooo giListSELECT = activeTitle (1901181747)

actionListDir = %actionListDir%
%actionListNEW% = actionListNEW
%actionListActive% = actionListActive
%gi_everywhereSourcePath% = gi_everywhereSourcePath
%activeClass% = activeClass
%activeTitle% = activeTitle
		)
	info .= "`n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
		; Msgbox,% info " (1901181747)"
	    ; gosub, lbl_actionListNEWactivate
	    ; continue
	
	stop_list_change := true
}
	;\____ giListSELECT __ 190118192504 __ 18.01.2019 19:25:04 __/


if(RegExMatch(activeTitle,"^\d:.+")){
      ;Clipboard:=activeClass
	tip= %activeTitle% ==> continue `n 17.02.2018 22:03 `n (%A_LineFile%~%A_LineNumber%)
       ; lll( A_ThisFunc ":" A_LineNumber , A_LineFile ,tip)
    ;Msgbox,`n (%A_LineFile%~%A_LineNumber%)
if(0 && InStr(A_ComputerName,"SL5")){
    ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
    Speak("Hallo " A_LineNumber,"PROD")
}
	return A_LineNumber ; continue
}
if(RegExMatch(activeTitle,"actionListChangedInRegistry")){
        ;tooltip, WinWaitNotActive,actionListChangedInRegistry  `n (%A_LineFile%~%A_LineNumber%)
if(0 && InStr(A_ComputerName,"SL5")){
    	ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
    	Speak("Hallo " A_LineNumber,"PROD")
}
	WinWaitNotActive,actionListChangedInRegistry ahk_class AutoHotkeyGUI
	tooltip,
if(0 && InStr(A_ComputerName,"SL5")){
    ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
    Speak("Hallo " A_LineNumber,"PROD")
}
	sleep,500
	return A_LineNumber ; continue
} ; activeTitle,"actionListChangedInRegistry"

if(false && RegExMatch(activeTitle,"Selected Tab")){
        ;msgbox, %activeTitle% `n = activeTitle ==> continue (%A_LineFile%~%A_LineNumber%)
        ;tooltip, WinWaitNotActive,actionListChangedInRegistry  `n (%A_LineFile%~%A_LineNumber%)
	WinWaitNotActive,Selected Tab
	tooltip,
	return A_LineNumber ; continue
}


;/¯¯¯¯ windowNotChanged ¯¯ 190208201023 ¯¯ 08.02.2019 20:10:23 ¯¯\
if(activeTitleOLD == activeTitle && activeClassOLD == activeClass ){
        ; WinWaitNotActive, %activeTitle% ahk_class %activeClass%
	if(!stop_list_change) ; if list never changing it needs somtimes to look if list is updated or includes ar update. 19-01-19_01-50
	{

		if(1 && InStr(A_ComputerName,"SL5")){
            msg =
(
activeTitle
activeClass
actionList
actionListNEW
=

<%activeTitle%>
<%activeClass%>

<%actionList%>
<%actionListNEW%>
)
            msg  .= "`n`n(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")"
            Speak("return because of same actionList. " A_LineNumber,"PROD")
            ToolTip,% msg
            ; msgbox,% msg
        }
	    ; Sleep,150 ; dont needet. but way not taka a break here a little? 19-01-19_01-52
		return A_LineNumber ; continue
	} ; endOf If
    return A_LineNumber ; continue
}
;\____ windowNotChanged __ 190208201027 __ 08.02.2019 20:10:27 __/


if(0 && InStr(A_ComputerName,"SL5")){
    ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
    Speak("Hallo " A_LineNumber,"PROD")
}

actionListOLD := actionListNEW
actionListDir := actionListDirBase . "\" activeClass
actionListFilterPath := actionListDirBase . "\" filterFileName

    ;<<<<<<<<<<<<<<<<< run createIfFileNotExist_actionListNameFilter_InNewDir <<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    ;<<<<<<<<<<<<<< createIfFileNotExist_actionListNameFilter_InNewDir <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    ; make sure we get no errors by including %actionListFilterPath% ... create actionList inside className folder
actionListFilterPathNEW := actionListDirBase . "\" activeClass . "\" filterFileName
ahkCode1 := getAhkCodeInsideFile(actionListDir , actionListFilterPathNEW  )

if(0 && InStr(A_ComputerName,"SL5")){
	msg = createIfFileNotExist_actionListNameFilter_InNewDir( %actionListDir% , %actionListFilterPathNEW% ...)
    ; msgBox,% "" msg "(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
	ToolTip5sec(msg . " `n`n" A_LineNumber . " "  RegExReplace(A_LineFile,".*\\")  )
}
    ; todo: creating always is useless. please create only if user want create a actionList explizit
    ; may only do it if _create_own_project.flag is inside....
fileAddress := actionListDir "\_create_own_project.flag"
if(FileExist(fileAddress) && !InStr(FileExist(fileAddress), "D"))
	createIfFileNotExist_actionListNameFilter_InNewDir(       actionListDir , actionListFilterPathNEW , ahkCode1, isInternMsgTransportIsClipboard)


; clipboard  := "; 19-02-08_17-22 `n`n" ahkCode1

if(debugIt) {
	global g_lineNumberFeedback
	g_lineNumberFeedback=%A_LineNumber%~%A_LineFile%~%A_ThisFunc%
	ahkCode2 := getAhkCodeInsideFile(actionListDirBase . "\FunnyWidgetHuHu" , actionListDirBase . "\FunnyWidgetHuHu\" filterFileName  )
	createIfFileNotExist_actionListNameFilter_InNewDir(actionListDirBase . "\FunnyWidgetHuHu" , actionListDirBase . "\FunnyWidgetHuHu\" filterFileName, ahkCode2, isInternMsgTransportIsClipboard) ; FunnyWidgetHuHu
	if(debugIt)
		MsgBox, '%ahkCode2%' = ahkCode2  `n (line:%A_LineNumber%) `n
	
}
    ;>>>>>>>>>>>>>>>>> run createIfFileNotExist_actionListNameFilter_InNewDir >>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    ;>>>>>>>>>>>>>> createIfFileNotExist_actionListNameFilter_InNewDir >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

; actionListNEW := activeTitle

if(!actionListNEW){
     ; msgbox, % "ERROR activeTitle is EMPTY.  (" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
	activeClass := "_globalActionListsGenerated"
        ; activeTitle := "_global" ; used till 07.10.2018 10:12 18-10-07_10-12
	actionListNEW := "isNotAProject" ; isNotAProject.ahk ; todo: not very pretty silly. 28.10.2018 11:33
	; feedbackMsgBox("Oops. so lets use global.`n ",msg,1,1)
}

; if(!actionListNEW := simplifyNameOfActionListNEWstep1( actionListNEW ))
;	msgbox,% "ERROR !actionListNEW (" A_LineNumber " " RegExReplace(A_LineFile, ".*\\", "") ")"

if(!actionListNEW)
	msgbox, % "ERROR actionListNEW is EMPTY.  (" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
actionListNEW = %actionListNEW%
if(!actionListNEW)
	msgbox, % "ERROR actionListNEW is EMPTY.  (" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"


if(0 && InStr(A_ComputerName,"SL5") && inStr(actionListNEW, "playground" )){
	lll(A_LineNumber, A_LineFile,"actionListNEW= " actionListNEW)
	Speak(" actionListNEW = " actionListNEW "( from:" A_LineNumber  ")","PROD")
}
	; Speak(" actionListNEW = " actionListNEW "( from:" A_LineNumber  ")","PROD")
if(0 && InStr(A_ComputerName,"SL5") && inStr(actionListNEW, "playground" ))
	tooltip,% actionListNEW "`n" actionList "`n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
	;msgbox, % actionListNEW "(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"


;    MsgBox, '%actionListFilterPath%' = actionListFilterPath  `n '%actionListDir%' = actionListDir `n '%actionListDirBase%' = actionListDirBase `n '%A_ScriptDir%' = A_ScriptDir `n (line:%A_LineNumber%) `n      ; thats the global wordlost
actionListFilterPath := actionListDirBase . "\" filterFileName
if(1){ ; absolute path
	actionListFilterPath2 := actionListDir "\" filterFileName
	if(substr(actionListFilterPath2,1,1) == "."){
	    actionListFilterPath2Abs := A_ScriptDir "\" actionListFilterPath2
	    ; StringReplace, actionListFilterPath2Abs, actionListFilterPath2Abs, \.\ , \
	}else{
	    actionListFilterPath2Abs := actionListFilterPath2
	}
    actionListFilterPath2Abs := removesSymbolicLinksFromFileAdress(actionListFilterPath2Abs)

}else
	actionListFilterPath2 :=  actionListDirBase . activeClass . "\" filterFileName ; todo: doesent work :( 28.03.2017 20:20 17-03-28_20-20

; lll( A_ThisFunc ":" A_LineNumber , A_LineFile ,"actionListFilterPath2=" actionListFilterPath2 . " activeClass=" activeClass . " filterFileName=" filterFileName)

if(!actionListDir) {
	global g_lineNumberFeedback
	g_lineNumberFeedback=%A_LineNumber%~%A_LineFile%~%A_ThisFunc%
    if(1 && InStr(A_ComputerName,"SL5")){
        msg =
        (
        ERROR
        !actionListDir exitap
        actionListNEW =
        <%actionListNEW%>=<`%actionListNEW`%>
        )
        msg .= "`n`n(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")"
        msgbox, %msg% `n `n 17-03-19_14-10
        ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
        Speak("Hallo " A_LineNumber,"PROD")
        sleep,3000
    }
	exitapp
}
if(!actionListNEW)
	if(!activeTitle)
		actionListNEW=noTitle
else {
	global g_lineNumberFeedback
	g_lineNumberFeedback=%A_LineNumber%~%A_LineFile%~%A_ThisFunc%
	m=!actionListNEW `n '%activeTitle%' = activeTitle  `n  '%activeClass%' = activeClass `n'%actionListDir%' = actionListDir `n==> return (line:`%A_LineNumber`%) `n 17-03-19_14-09
	g_tooltipText:=m
	Msgbox,%m%`n (from: %A_LineFile%~%A_LineNumber%) 17-08-11_23-42
           ; ToolTip5sec(m  " `n" A_LineNumber . " "  RegExReplace(A_LineFile,".*\\")  . " " Last_A_This)
            ; return ; we are inside a while loop ;) return probably makes now since there ;) 24.03.2017 20:29 17-03-24_20-29
	
	sleepMili := 1000
	msg =
(
no actionListNEW and no activeTitle
we are inside a while loop

Sleep,%sleepMili%
if(activeTitleREAL){
tooltip, `% "Wait" A_LineNumber " " RegExReplace(A_LineFile,".*\")
    WinWaitNotActive, %activeTitleREAL%,,15
    }
continue
17-07-29_14-29
)
	global g_doSaveLogFiles
	
	lll( A_LineNumber, A_ScriptName, msg . "`n 17-07-29_14-18 ")
	
	Sleep,%sleepMili%
	if(activeTitleREAL)
		WinWaitNotActive, % activeTitleREAL,,15
	return A_LineNumber ; continue
}
if(false && !activeTitle) {
	global g_lineNumberFeedback
	g_lineNumberFeedback=%A_LineNumber%~%A_LineFile%~%A_ThisFunc%
	msgbox,!activeTitle exitap (line:`%A_LineNumber`%) `n 17-03-19_14-19
	exitapp
}


	if(0 && InStr(A_ComputerName,"SL5")){
        ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
        Speak("Hallo " A_LineNumber,"PROD")
        sleep,3000
    }


if(!activeClass) {
	global g_lineNumberFeedback
	g_lineNumberFeedback=%A_LineNumber%~%A_LineFile%~%A_ThisFunc%
		; msgbox,!activeClass exitap (line: %A_LineNumber% > `%A_LineNumber`%) `n 17-03-19_14-15
	tooltip,!activeClass (line: %A_LineNumber% `%A_LineNumber`%) `n 17-03-19_14-15
if(0 && InStr(A_ComputerName,"SL5")){
    ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
    Speak("Hallo " A_LineNumber,"PROD")
    sleep,3000
}
	sleep,1000
	return A_LineNumber " !activeClass " ; reload
}

	;

;<<<<<<<<<<<<< demoData =  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
activeTitle := RegExReplace(activeTitle, "m)\n.*", "") ; title should never is multioline. this proof is hoprefulle redundatnd. 15.02.2018
actionListOLD := RegExReplace(actionListOLD, "m)\n.*", "") ; never is multioline. this proof is hoprefulle redundatnd. 15.02.2018
demoData =
(
SetTitleMatchMode, 1
activeTitle := RegExReplace`(activeTitle, Chr`(37`) . ".*", ""`) ; delete prozent. should be easy to include variable later. some websites have suche long title with the procent in it. dont like it. simplify it. 16.03.2017
global g_lineNumberFeedback
g_lineNumberFeedback=%A_LineNumber%~%A_LineFile%~%A_ThisFunc%
actionListDir = %actionListDir% demoData
activeTitle = %activeTitle% demoData
activeClass = %activeClass% demoData
actionListNEW = %activeTitle% demoData
)
;>>>>>>>>>>>>>>>  demoData =  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;>>>>>>>>>>>>>>>  demoData =  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>



ahkSource := ";" "this file was generated by " A_ScriptName   " `n"
ahkSource .= "g_lineNumberFeedback=" A_ScriptName . "~" A_ThisFunc . "~" A_LineNumber . " token363 `n"
ahkSource .= "#" "SingleInstance, force"   " `n"
ahkSource .= "#" "NoTrayIcon"  " `n"
ahkSource .= "SetWorkingDir, " A_ScriptDir " `n"

global g_doSaveLogFiles
global g_doRunLogFiles
    ;global g_doSaveLogFiles := true
    ;g_doRunLogFiles := false

ahkSource .= "global g_doSaveLogFiles"  " `n"
ahkSource .= "global g_doRunLogFiles"  " `n"

ahkSource .= "g_doSaveLogFiles := " g_doSaveLogFiles  " `n"
ahkSource .= "g_doRunLogFiles := " g_doRunLogFiles  " `n"


; ahkSource .= demoData   " `n"
    ; ahkSource .= "#" "Include, " actionListFilterPath . "  `; thats the subfolder  wordlost inside class `n"

ahkSource .= "actionListFilterPath2 = " actionListFilterPath2  " `n"
ahkSource .= "actionListFilterPath2Abs = " actionListFilterPath2Abs  " `n"
ahkSource .= "fileEx := FileExist ( actionListFilterPath2Abs ) `n"
        ; ahkSource .= "KeyWait Control  `; Wartet darauf, dass sowohl STRG als auch ALT losgelassen wird. `n"
ahkSource .= "if( !fileEx ) { `n"
ahkSource .= "message = :(  ``n '%actionListFilterPath2%'  ``n '%actionListFilterPath2Abs%'  ``n existiert nicht ( `%fileEx%` = fileEx ) . ``n ``n message with id (1704171514) was copied to the Clipboard. Sor you probably could find this source code little bit easier. ``n (from: %A_LineFile%~%A_LineNumber%) `n "
ahkSource .= "tooltip, `%message`%=m , 1,1 `n "

	; ahkSource .= "Clipboard = `%message`%  `n "
	; ahkSource .= "Msgbox,4 , :( actionListNameFilter.inc.ahk not found , `%message`% , 4  `n "
	; ahkSource .= "tooltip,:( actionListNameFilter.inc.ahk not found : `%message`% , 1,1  `n "

ahkSource .= "Sleep, 4000 `n"
ahkSource .= "ExitApp  `n"
ahkSource .= "} `n"

; ahkSource .= "actionListNEW = " actionListNEW " `n"

if (!activeTitle)
    WinGetActiveTitle, activeTitle
;if (!actionListNEW)
    actionListNEW := getActionListNEW173129simplify( activeTitle )

ahkSource .= mvarInjects(actionListDir, actionListNEW, activeClass, activeTitle) " `n"
; ahkSource .= "varInjects1 := mvarInjects(actionListDir, actionListNEW, activeClass, activeTitle) `n"
    ; ahkSource .= "actionListDir = " actionListDir   " `n"

ahkSource .= "#" "Include *i " actionListFilterPath2Abs "  `; thats the subfolder actionList inside class `n"
 ;   ahkSource .= "#" "Include *i " actionListFilterPath2 . "  `; thats the subfolder  wordlost inside class `n"


if(!actionListNEW){
	global g_lineNumberFeedback
	g_lineNumberFeedback=%A_LineNumber%~%A_LineFile%~%A_ThisFunc%

	tooltip,exitapp !actionListNEW exitap (%g_lineNumberFeedback%) `n
	;msgbox,% "exitapp !actionListNEW exitap (" g_lineNumberFeedback ") `n 111333111 `n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
	sleep,1888
	return A_LineNumber ":!actionListNEW" ; exitapp
}

; lbl_actionListNEWactivate:

if(!actionListNEW && InStr(A_ComputerName,"SL5")){
    msg =
    (
    ERROR
    !actionListNEW
    actionListNEW =
    <%actionListNEW%>=<`%actionListNEW`%>
    )
    msg .= "`n`n(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")"
    msgbox,msg `n `n 19-02-08_19-42
    ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
    Speak("Hallo " A_LineNumber,"PROD")
    sleep,3000
}

if(!actionListNEW && InStr(A_ComputerName,"SL5")){
    msg =
    (
    ERROR
    !actionListNEW
    actionListNEW =
    <%actionListNEW%>=<`%actionListNEW`%>
    )
    msg .= "`n`n(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")"
    msgbox,msg `n `n 19-02-08_19-42
    ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
    Speak("Hallo " A_LineNumber,"PROD")
    sleep,3000
}


; ahkSource .= "actionListOLD = " actionListOLD  " `n"
; ahkSource .= "gi_everywhereSourcePath = "  gi_everywhereSourcePath  " `n"
; ahkSource .= "actionListActive = "  actionListActive   " `n"
temp =
(
TargetScriptTitle = gi-everywhere - Active ahk_class AutoHotkey
stringToSend := (InStr(actionListNEW,"\")) ? actionListNEW : actionListDir . "\" actionListNEW
; result := Send_WM_COPYDATA`(stringToSend, TargetScriptTitle`)
if(false){  ; temporaly deactivated . for compatibiliti thinks 02.03.2018 17:10
    try{
        y := ComObjActive("{93C04B39-0465-4460-8CA0-7BFFF481FF98}")
        y.callFunction( "Receive_actionListAddress", stringToSend ) ;will call the function of the other script
    } catch e{
        tip:="Exception:``n" e.What "``n" e.Message "``n" e.File "@" e.Line
        tooltip, `% tip
}}
)

;/¯¯¯¯ ahkSourceTemp ¯¯ 190209052303 ¯¯ 09.02.2019 05:23:03 ¯¯\
ahkSourceTemp_aösdkfjaösldkfjasöldfkjasdöljf =
(
; old scool. for compatibiliti thinks 02.03.2018 17:10

	actionListDir := removesSymbolicLinksFromFileAdress(actionListDir)
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, actionListDir, ln:%A_LineNumber% `%actionListDir`%
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, actionListNEW, ln:%A_LineNumber% `%actionListNEW`%
    ; RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, actionListActive, ln:%A_LineNumber% `%actionListActive`%
    ; RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, actionListNEWarchivePath, ln:%A_LineNumber% `%actionListNEWarchivePath`%

    actionList = `%actionListDir`%\`%actionListNEW`%

    actionList := removesSymbolicLinksFromFileAdress(actionList)

    if( SubStr( actionList , -3 ) <> ".ahk" ) ; 07.11.2018 22:05
        actionList .= ".ahk"

msg := actionList " =actionList``n"
msg .= actionListNEW " =actionListNEW``n"
feedbackMsgBox(msg "(" A_LineNumber " " RegExReplace(A_LineFile, ".*\\"), msg, 1, 1, 6 )
; msgbox, `% msg "  19-02-09_00-01"
sleep,1000

if(0){
    ; actionList = `%actionListNEWarchivePath`% ; its not existing here 03.03.2018 19:13
    ; msgbox,`%actionListNEWarchivePath`%
    pLength := 0
    while(pLength <> StrLen(actionList )){
        ; tooltip,`% A_index "# Line:" A_LineNumber " Name:" A_ScriptName " "
        pLength := StrLen(actionList )
        actionList := RegExReplace(actionList ,"(\\[^\\]+\\\.\.)+") ; works. removes all symbolic links 24.02.2018  cleanPath
    }
    actionList := RegExReplace(actionList,"\\\.\\")  ; works. removes all symbolic link 24.02.2018 cleanPath
    actionList := RegExReplace(actionList,"^\.\\")  ; works. removes all symbolic link 24.02.2018  cleanPath
}
    ;msgbox,`% actionList
    FileRead, fileContent, `% actionList
    ; StringReplace, fileContent, fileContent, ..\actionLists, .. \
    l1 := StrLen(fileContent)
    fileContent := StrReplace(fileContent, "..\actionLists\", "..\" ) ; https://ahkde.github.io/docs/commands/StringReplace.htm
l2 := StrLen(fileContent)
if(1 && l1 > l2){ ; proof it test it
    FileSave(fileContent, actionList )
    if(1 && InStr(A_ComputerName,"SL5"))
        msgbox,`% actionList " 12is saved (l1 > l2) (%A_LineFile%~%A_LineNumber%) (" RegExReplace(A_LineFile,".*\\") "~" A_LineNumber ") ---- " fileContent
    tooltip,`% actionList " 12is saved (l1 > l2) (%A_LineFile%~%A_LineNumber%) (" RegExReplace(A_LineFile,".*\\") "~" A_LineNumber ") ---- " fileContent
}
if(0){ ; diesabled 24.12.2018 13:36 ... so its not possible to update lists without icludes
    ; inside of : while(true)
    ; dirty bug fix ._Generated.txt 04.03.2018 10:44

    postFixGenerated := "._Generated.ahk"
    actionListPostFix  := SubStr(rtrim(actionList), - StrLen(postFixGenerated) + 1 ) ; That works I've tested it 01.11.2018 14:59
    itsAGeneratedList := ( postFixGenerated == actionListPostFix )

    If(!itsAGeneratedList && !FileExist( actionList "._Generated.ahk")) ; dirty bugFix TODO: prettyFy it
    {
      actionList .= "._Generated.ahk" ; inside the while(true)
      tooltip, token=1812241329 (from: `%A_LineFile`%~`%A_LineNumber`%)
      sleep,3000
    }
  msgbox, `% actionList
}
    if(1 && !RegExMatch(actionList,"created_token_17-08-10_16-17")) ; todo: whey control here? wrong place. quck dirty 25.03.2018 01:36
        setRegistry_actionList("ln:" A_LineNumber "-"  actionList ) ; old scool. for compatibiliti thinks 02.03.2018 17:10)

    RegRead, CreatedDir, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, CreatedDir
    if(CreatedDir){
        RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, CreatedDir, `% "" ; RegWrite , RegSave , Registry
        actionListOpen := StrReplace(actionList, "._Generated.ahk")
        openInEditorFromIntern( actionListOpen )
    }

) ; endOf ahkSourceTemp ToolTip2sec( "`n(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")" )
ahkSourceTemp .= "#" "Include," A_ScriptDir "\RegWrite181031.ahk `n"
;                                     \Source\RegWrite181031.ahk
;\____ ahkSourceTemp __ 190209052339 __ 09.02.2019 05:23:39 __/

; feedbackMsgBox("ahkSourceTemp (" A_LineNumber " " RegExReplace(A_LineFile, ".*\\"), ahkSourceTemp, 1, 1, 6 )


	if(0 && InStr(A_ComputerName,"SL5")){
        ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
        Speak("Hallo " A_LineNumber,"PROD")
        sleep,3000
    }



if(!actionListNEW && InStr(A_ComputerName,"SL5")){
    msg =
    (
    ERROR
    !actionListNEW
    actionListNEW =
    <%actionListNEW%>=<`%actionListNEW`%>
    )
    msg .= "`n`n(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")"
    msgbox,msg `n `n 19-02-08_19-50
    ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
    Speak("Hallo " A_LineNumber,"PROD")
    sleep,3000
}


; ahkSource .= "`n" ahkSourceTemp
    ; following lines are debrecated
    ; ahkSource .= "actionListOLDbackup( actionListDir , actionListOLD)"  " `n"
    ; ahkSource .= "actionListOLDdisable( gi_everywhereSourcePath, actionListActive )"  " `n"
ahkSource .= "`n actionListNEWactivate( actionListDir , actionListNEW, actionListActive, gi_everywhereSourcePath, activeClass , activeTitle)"  " `n"

; ahkSource .= "actionListNEW = " actionListNEW " `n"
; ahkSource .= "varInjects2 := mvarInjects(actionListDir, actionListNEW, activeClass, activeTitle) `n"
if(debugIt)
	ahkSource .= "MsgBox, , debugIt , `% varInjects1 . "" ``n "" varInjects2 . "" ``n actionListNEW = '"" actionListNEW . ""'  ``n (lineCaller:" A_LineNumber . ") ``n "" ,9 `n"
ahkSource .= "ExitApp"  " `n"
ahkSource .= "#" "Include, inc_ahk\\createActionListAddress.inc.ahk  `; `n"
    ; createGLOBALactionListNameFilterIfNotExist(actionListDirBase ) ;  its possible to put it out of the loop, but if user delete it we get ugly errors. better gife a chance to ceate it imediatly again 06.03.2017 19:19
    ; actionListNEW := getActionListNEWfromPluginIfExist(actionListDir, actionListNEW, activeClass, activeTitle   ) ; ; thats plugin. you could filter, reduce the complexety of new file names
    ; ToolTip4sec(actionListNEW . "= actionListNEW `n " A_LineNumber ) ;
    ; MsgBox, '%actionListNEW%' = actionListNEW  `n (line:%A_LineNumber%) `n
DetectHiddenWindows,On
SetTitleMatchMode,1
    ; IfWinNotExist,temp.ahk
    ; IfNotExist,temp.ahk
;~     Tooltip, %ahkSource% `n (from: %A_LineFile%~%A_LineNumber%)
;~     Msgbox,`n (from: %A_LineFile%~%A_LineNumber%)

	if(0 && InStr(A_ComputerName,"SL5")){
        ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
        Speak("Hallo " A_LineNumber,"PROD")
        sleep,3000
    }

#Include keyWaitReleased.ahk
	if(0 && InStr(A_ComputerName,"SL5")){
        ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
        Speak("Hallo " A_LineNumber,"PROD")
        sleep,3000
    }
; if(GetKeyState("ctrl", "P"))
; 	KeyWait, ctrl
; if(GetKeyState("Alt", "P"))
; KeyWait, Alt

IfWinNotExist,temp.ahk
{
	if(0 && InStr(A_ComputerName,"SL5") && inStr(actionListNEW, "playground" ))
		tooltip,% actionListNEW "`n" actionList "`n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
	
	if(activeTitle == "giListSELECT" && InStr(A_ComputerName,"SL5") )
		MsgBox,% ahkSource "`n" actionList "`n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
	FileWriteAndRun( ahkSource , "temp.ahk" ) ; TODO: wozu ? 13.08.2017 10:52
	;msgbox,% "temp.ahk is saved 19-02-08_21-18 `n`n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"

	if(0 && InStr(A_ComputerName,"SL5") && inStr(actionListNEW, "playground" )){
		tooltip,% actionListNEW "`n" actionList "`n(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")",1,10
	}
	
        ; DynaRun(ahkSource) ; this line prducing erros. if u use FileWriteAndRun it works.
} else {
	Tooltip, WinWaitClose   temp.ahk `n (from: %A_LineFile%~%A_LineNumber%)
	WinWaitClose,temp.ahk,,1
	Tooltip,
	IfWinExist,temp.ahk
	{
		msg=:-O WinExist temp.ahk `n `n %A_LineFile%~%A_LineNumber% ==> continue
		SetTitleMatchMode,2
            ; if(!WinExist(":Oops", msg))
		if(1 || !InStr(A_ComputerName,"SL5") ){
			winclose,temp.ahk
		}
		
		if(1 && InStr(A_ComputerName,"SL5") ){
			if(!WinExist(":Oops"))
				feedbackMsgBox("Oops ",msg,1,1)
		}


		sleep,2000
		return A_LineNumber ; continue
	}
}
    ; FileDeleteAsyncDynaRun(A_WorkingDir . "\temp.ahk" , 500)
;Sleep,40 ; you need to use it minimum of 3 seconds

    ; lll("`n" A_LineNumber, A_ScriptName, "FileDeleteAsyncDynaRun(temp.ahk , 4000)")

g_tooltipText = WaitNotActive %activeTitle%
    ; WinWaitNotActive [, WinTitle, WinText, Seconds, ExcludeTitle, ExcludeText]
g_lineNumberFeedback=%A_LineNumber%~%A_LineFile%~%A_ThisFunc%

DetectHiddenText,Off
    ; WinWaitNotActive, ahk_class %activeClass%

global g_nextCriticalCommandString ; checkCriticalCommand()
g_nextCriticalCommandString := "327:WinWaitNotActive, %activeTitle%" ; checkCriticalCommand()

; SetTimer, checkCriticalCommandLbl, On
	;Speak(A_lineNumber " " A_ThisFunc,"PROD")







; WinWaitNotActive, %activeTitle%
while(stop_list_change){
	if(0 && InStr(A_ComputerName,"SL5")){
		m =
		    (
		    stop_list_change is ON
		    actionList will not be changed.
		    wait stop_list_change is set Off/false/0 again

            Problem then: only changes in ... _generated will be update
            ==> stop only every 5 seconds
		    )
		ToolTip, % A_index ": while RegRead`n" A_LineNumber . " "  RegExReplace(A_LineFile,".*\\") ,1 , 100,8
	}
	if( A_index >= 5 ) ; time for take a short look fur updates
	{
		if(0 && InStr(A_ComputerName,"SL5")){
			ToolTip, % "BREAK while RegRead`n" A_LineNumber . " "  RegExReplace(A_LineFile,".*\\") ,1 , 100,8
			Speak(A_LineNumber "BREAK ","PROD")
		}
		break
		
	}
	sleep,1000
	RegRead, stop_list_change, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, stop_list_change ; todo: 02.03.2018 12:55 18-03-02_12-55
}

; too ToolTip5sec( "`n(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")" )



; SetTimer, checkCriticalCommandLbl, Off

g_nextCriticalCommandString := ""

    ; WinWaitNotActive, %activeTitle% ahk_class %activeClass% ; seems not work alway. be careful !! with that :( 29.04.2017 22:13
;    WinWaitNotActive, %activeTitle% %activeClass%
g_tooltipText = WinWaitNotActive CopyQ
g_lineNumberFeedback=%A_LineNumber%~%A_LineFile%~%A_ThisFunc%

WinWaitNotActive,CopyQ , , 9
g_tooltipText = WinWaitNotActive - Everything
g_lineNumberFeedback=%A_LineNumber%~%A_LineFile%~%A_ThisFunc%

WinWaitNotActive,- Everything , , 9 ; ahk_class EVERYTHING

if( debugIt || 0) {
	global g_lineNumberFeedback
	g_lineNumberFeedback=%A_LineNumber%~%A_LineFile%~%A_ThisFunc%
	l = ______________________________________________________________ `n ; %l%
	MsgBox, '%activeTitle%' = activeTitle  `n %l% '%varInjects%' = varInjects  %l% `n (line:%A_LineNumber%) `n  '%ahkSource%' = ahkSource of temp.php `n (line:%A_LineNumber%) `n
}

	if(0 && InStr(A_ComputerName,"SL5")){
        ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
        Speak("Hallo " A_LineNumber,"PROD")
        sleep,3000
    }

; rungi_everywhereAHKifNotExist( gi_everywhereAHK )

if(false){
	RegRead, ALinfoOnley, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, actionList
	RegRead, ALinfoOnleyNEW, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, actionListNEW
	; ToolTip5sec( "RegRead=.........  " ALinfoOnley "`n" ALinfoOnleyNEW "`n`n(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 10,300 )
	; Sleep, 1000
	;lll( A_ThisFunc ":" A_LineNumber , A_LineFile ,ALinfoOnley "`n end of while(true)`n '" activeTitle . "' = activeTitle `n  time:" timestampHHmmss)
}
if( false && InStr(ALinfoOnley,"Piratenpad")){
	FormatTime, timestampHHmmss, %A_now%,HH:mm:ss
	
	lll( A_ThisFunc ":" A_LineNumber , A_LineFile ,ALinfoOnley "`n`n end of while(true)`n '" activeTitle . "' = activeTitle `n  time:" timestampHHmmss)
	ToolTip,% A_ThisFunc ":" A_LineNumber " , " A_LineFile
		;
	Speak(A_lineNumber " " A_ThisFunc,"PROD")
}
	if(0 && InStr(A_ComputerName,"SL5")){
        ToolTip,% "(" A_ThisFunc " " RegExReplace(A_LineFile,".*\\") ":"  A_LineNumber ")", 250,1,17
        Speak("Hallo " A_LineNumber,"PROD")
        sleep,3000
    }

    return A_LineNumber " endOfFunction" ;
}
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;\____ while __ 181023091702 __ 23.10.2018 09:17:02 __/

#Include .\..\actionLists\actionListNameFilter-functions.inc.ahk
