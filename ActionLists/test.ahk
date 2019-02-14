#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Menu, Tray, Icon, shell32.dll, 250 ; pretty green stick

while(1)
	Sleep,2000#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, force
; dontDeleteThisPlaceholder (getAhkCodeInsideFile~1232~createActionListAddress.inc.ahk)
#Include G:\fre\git\github\global-IntelliSense-everywhere-Nightly-Build\actionLists\actionListNameFilter.inc.ahk ; global actionList . pleas dont delete this line! 17-03-06_10-59
actionListFilterPath = G:\fre\git\github\global-IntelliSense-everywhere-Nightly-Build\actionLists\actionListNameFilter.inc.ahk 
 ; (line:%A_LineNumber%) 


clipboard = :-] %actionListNEW% = actionListNEW
tooltip, actionListNEW: %actionListNEW%,,,2

;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; this days i have to many files into hiere... i want first to activate the superglobal 10.08.2017 09:29
actionListNEW_time_between := actionListNEW
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

; if you want you could use the follwong global variables fot calculating you new actionListNEW : actionListDir, actionListNEW, activeClass, activeTitle
if (!actionListNEW ){
 global g_lineNumberFeedback
 g_lineNumberFeedback=1244~G:\fre\git\github\global-IntelliSense-everywhere-Nightly-Build\Source\inc_ahk\createActionListAddress.inc.ahk~getAhkCodeInsideFile

    tooltip, ERROR actionListNEW is EMPTY 17-03-19_11-51
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, ERROR , getAhkCodeInsideFile: 1244 ERROR actionListNEW is EMPTY 17-03-19_11-51
    exitapp
}
if (!actionListDir ){
 global g_lineNumberFeedback
 g_lineNumberFeedback=1244~G:\fre\git\github\global-IntelliSense-everywhere-Nightly-Build\Source\inc_ahk\createActionListAddress.inc.ahk~getAhkCodeInsideFile

    msgbox, ERROR actionListDir is EMPTY 17-03-19_11-52
    RegWrite, REG_SZ, HKEY_CURRENT_USER, SOFTWARE\sl5net\gi, ERROR , getAhkCodeInsideFile: 1244 ERROR ERROR actionListDir is EMPTY 17-03-19_11-52
    exitapp
}

; this days i have to many files into hiere... i want first to activate the superglobal 10.08.2017 09:29
if(0 && !RegExMatch(trim(actionListNEW),"\.ahk$")) ; dirty bug fix TODO: not pretty
	actionListNEW .= ".ahk"
if( SubStr( actionListNEW , -3 ) <> ".ahk" ) ; 06.03.2018 13:09
	actionListNEW .= ".ahk"

; Clipboard := actionListNEW    we dont need that anymore. becouse now we work without the clipboard 09.03.2017 21:21 isInternMsgTransportIsClipboard := false ; false. then using fileSystem: readfile, include copyfile
; Clipboard := actionListNEW `n G:\fre\git\github\global-IntelliSense-everywhere-Nightly-Build\Source\inc_ahk\createActionListAddress.inc.ahk~getAhkCodeInsideFile~1244 `n we dont need that anymore. becouse now we work without the clipboard 09.03.2017 21:21 isInternMsgTransportIsClipboard := false ; false. then using fileSystem: readfile, include copyfile
; tooltip,%Clipboard% = Clipboard 123496854