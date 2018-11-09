#Include _global.ahk
#Include G:\fre\git\github\gi-ActionLists-private\DocumentEditor.ahk
; #Include ..\..\..\gi-ActionLists-private\DocumentEditor.ahk
; Example pages: ; Only meta info (not importand): getInitialActionList:1289 Typing_Aid_everywhere_multi_clone.inc.ahk
; '....rtf [Kompatibilit�tsmodus] - Microsoft Word ...'   
; if you could read this germen special character (umlaute) your file format is correct (please use UTF8)
; � = thats a au

___open ActionList|rr||ahk|openInEditor,DocumentEditor.ahk

  
|r|
Faxen 07121 753954-7
Handylein 01777 44 3748
18-11-09_13-45

|r|
Donnerstag, 06.11.2018
Sehr geehrte Damen und Herren,
18-11-09_13-45 


|r|
Vielen Dank fuer Ihr Verständnis!
Mit freundlichen Grüßen
 Sebastian Lauffer

Verständnis

Montag
Dienstag
Mittwoch
Donnerstag
Freitag
Samstag
Sonntag

play beep|rr||ahk|SoundBeep,4000

soundBeep,500|rr||ahk|
soundBeep,500 ; 
Sleep,2000

Synonym found|rr|
TestBereich empty|r|
 not empty 


Datum|rr||ahk|
FormatTime, timestamp, %A_now%,dd.MM.yyyy 
ClipboardBackup  := Clipboard
Clipboard := timestamp
sleep,100
Send,^v
sleep,200
Clipboard := ClipboardBackup

