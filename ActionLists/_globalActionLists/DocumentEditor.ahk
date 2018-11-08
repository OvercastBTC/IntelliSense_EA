#Include _global.ahk
#Include G:\fre\git\github\gi-ActionLists-private\DocumentEditor.ahk
; #Include ..\..\..\gi-ActionLists-private\DocumentEditor.ahk
; Example pages: ; Only meta info (not importand): getInitialActionList:1289 Typing_Aid_everywhere_multi_clone.inc.ahk
; '....rtf [Kompatibilitätsmodus] - Microsoft Word ...'   
; if you could read this germen special character (umlaute) your file format is correct (please use UTF8)
; ä = thats a au

___open ActionList|rr||ahk|openInEditor,DocumentEditor.ahk

Montag
Dienstag
Mittwoch
Donnerstag
Freitag
Samstag
Sonntag

Datum|rr||ahk|
FormatTime, timestamp, %A_now%,dd.MM.yyyy 
ClipboardBackup  := Clipboard
Clipboard := timestamp
sleep,100
Send,^v
sleep,200
Clipboard := ClipboardBackup

