#SingleInstance, force
; dontDeleteThisPlaceholder (getAhkCodeInsideFile~1178~createActionListAddress.inc.ahk)
#Include .\..\actionLists\wxWindowNR\..\ActionListNameFilter.inc.ahk ; global ActionList . pleas dont delete this line! 17-03-06_10-59
ActionListFilterPath = .\..\actionLists\wxWindowNR\ActionListNameFilter.inc.ahk
 ; (line:%A_LineNumber%) 


;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
; this days i have to many files into hiere... i want first to activate the superglobal 10.08.2017 09:29
ActionListNEW_time_between := actionListNEW
;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

; if you want you could use the follwong global variables fot calculating you new actionListNEW : actionListDir, actionListNEW, activeClass, activeTitle
if (!actionListNEW ){
 global g_lineNumberFeedback
 g_lineNumberFeedback=1180~G:\fre\git\github\global-IntelliSense-everywhere-Nightly-Build\Source\inc_ahk\createActionListAddress.inc.ahk~getAhkCodeInsideFile

    msgbox, ERROR actionListDir is EMPTY 17-03-19_11-51
    exitapp
}
if (!actionListDir ){
 global g_lineNumberFeedback
 g_lineNumberFeedback=1180~G:\fre\git\github\global-IntelliSense-everywhere-Nightly-Build\Source\inc_ahk\createActionListAddress.inc.ahk~getAhkCodeInsideFile

    msgbox, ERROR actionListDir is EMPTY 17-03-19_11-52
    exitapp
}

; this days i have to many files into hiere... i want first to activate the superglobal 10.08.2017 09:29
if(0 && !RegExMatch(trim(actionListNEW),"\.ahk$")) ; dirty bug fix TODO: not pretty
    actionListNEW .= ".ahk"
if( SubStr( actionListNEW , -3 ) <> ".ahk" ) ; 06.03.2018 13:09
    actionListNEW .= ".ahk"





; Clipboard := actionListNEW    we dont need that anymore. becouse now we work without the clipboard 09.03.2017 21:21 isInternMsgTransportIsClipboard := false ; false. then using fileSystem: readfile, include copyfile
; Clipboard := actionListNEW `n G:\fre\git\github\global-IntelliSense-everywhere-Nightly-Build\Source\inc_ahk\createActionListAddress.inc.ahk~getAhkCodeInsideFile~1180 `n we dont need that anymore. becouse now we work without the clipboard 09.03.2017 21:21 isInternMsgTransportIsClipboard := false ; false. then using fileSystem: readfile, include copyfile
; tooltip,%Clipboard% = Clipboard 123496854