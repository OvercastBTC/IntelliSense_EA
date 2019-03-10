#SingleInstance, force



; debugMode_CtrlS_pressed_in_IDE.ahk
run,%A_ScriptDir%\..\start.ahk
;Tooltip,###Sleep#####
sleep,1300 ;  100, 200,500,700,1000, 1200 , 1400 , 1700 is to short ; 1500 1200 works



doReadThisActionListEverySeconds = G:\fre\git\github\global-IntelliSense-everywhere-Nightly-Build\actionLists\Notepad\testfile.ahk



f1 := doReadThisActionListEverySeconds "_temp.txt"
f2 := doReadThisActionListEverySeconds ".txt"



; first i must be deleted
while(A_index < 2000){
    if(!FileExist(f1))
        break
    tooltip,while FileExist (%A_LineNumber%)
    sleep,5
}



FileGetTime, m1, % f1
m2:=m1
while(m2==m1 && A_index < 100){
    if(FileExist(f1))
        FileGetTime, m2, % f1
    tooltip,GetTime (%A_LineNumber%)
    sleep,50
}
FileCopy, % f1, % f2, 1
sleep,70



if(!FileExist(f1))
    msgbox,1: %f1% not exist
if(!FileExist(f2)){
    clipboard := f2
    msgbox,2:%f2% not exist
}



; 3000 it ask to much, better wait longer till file exist again. 3000
SetTitleMatchMode,2
loop,3
{
    WinActivate,Notepad++
    sleep,50
    ifwinactive,
        break
}
settitlematchmode,1
winwait,Erneut laden ahk_class #32770,,5
WinActivate,Erneut laden ahk_class #32770
WinWaitActive,Erneut laden ahk_class #32770,,1
Sleep,100
ifwinactive,Erneut laden ahk_class #32770
{
    SetKeyDelay, 30, 150
    send,{enter}
    ;send,{space}
    ; msgbox,closed? (from: %ALineFile%~%ALineNumber%)
}
winwaitclose,Erneut laden ahk_class #32770



winwait,Nicht existierende Datei behalten ahk_class #32770,,1
WinActivate,Nicht existierende Datei behalten ahk_class #32770
WinWaitActive,Nicht existierende Datei behalten ahk_class #32770,,1
winclose,Nicht existierende Datei behalten ahk_class #32770
winkill,Nicht existierende Datei behalten ahk_class #32770
; msgbox,GREAT :-] %doReadThisActionListEverySeconds%.txt
tooltip,