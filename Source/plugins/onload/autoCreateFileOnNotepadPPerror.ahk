
Problem: https://autohotkey.com/boards/viewtopic.php?f=5&t=46608&p=210142#p210142



Datei öffnen ahk_class #32770 ahk_exe notepad++.exe
OK 
Die Datei zum Öffnen existiert nicht.



SetWorkingDir, %A_ScriptDir%\..\..\



#Include ..\..\inc_ahk\init_global.init.inc.ahk



#IfWinActive,
:*:___:: ; workaround if it comes sleeping
  run,% "E:\fre\private\HtmlDevelop\AutoHotKey\global-IntelliSense-everywhere-Nightly-Build\start.ahk"
  Last_A_This:=A_ThisFunc . A_ThisLabel 
  ToolTip1sec(A_LineNumber . " " . RegExReplace(A_LineFile,".*\\") " " Last_A_This)
return ; 



return  ; probably redundant. its more secure if we do that.
#Include ..\..\inc_ahk\functions_global.inc.ahk
#Include ..\..\inc_ahk\functions_global_dateiende.inc.ahk
#Include ..\..\inc_ahk\UPDATEDSCRIPT_global.inc.ahk 
