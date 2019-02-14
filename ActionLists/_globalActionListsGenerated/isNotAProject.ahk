; #include _global.ahk ; that makes confusen here. keep it simple. 19-01-06_11-03
; !! importand: never delte this line or this file! with this line you are able to usa a special project configuaratioin 09.08.2017 20:07 17-08-09_20-07
; isNotAProject.ahk

; create_own_project|rr||ahk|run,..\..\Source\createOwnProjectDirOrThis.ahk
___create actionList project|rr||ahk|run,..\..\Source\createOwnProjectDirOrThis.ahk
; ___create actionList|rr||ahk|run,..\..\Source\createOwnProjectDirOrThis.ahk
; if this german au is readable your UTF8 is probalby corre

go build main.go
main.exe

commandLines UrlEncode too go|rr||ahk|

;SendLevel, 15
SetKeyDelay, -1, -1
message =
(
hi
how are you?
)
Suspend, On
send,go build main.go{enter}
encode  := UrlEncode(message)
Clipboard := encode
SendRaw,% "main.exe """ 
Send,^v
sleep,50
Send, """"
;SendRaw,% "main.exe """ encode """"
sleep,50
send,{enter}
Suspend,Off

#Include %A_ScriptDir%\..\Source\inc_ahk\UrlEncode_UrlDecode.ahk

run this source|rr||ahk|
setworkingdir,E:\fre\private\HtmlDevelop\go
source =
(
package main
import "fmt"
func main() {
    fmt.Printf("hello, world 3\n")
}
)

tempFileName := A_tickCount ".temp"

FileAppend,% source,% tempFileName
; fileAppend, %ExportString%, %FileNameForExport%
sleep,100
filecopy, % tempFileName, % "main.go", 1
sleep,100
send,go build main.go{enter}
send,main.exe{enter}





