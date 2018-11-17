#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

o := "someThing else greetings. Recommended for performance and compatibility with future AutoHotkey releases."
contend := "anotherThing for oma"
n := getAutoKeywords(o ,contend )
; ToolTip,% n "   =n" ,190 ,1
Sleep,4000
Reload


; https://github.com/sl5net/global-IntelliSense-everywhere/blob/master/Source/Includes/ActionList.ahk#L1438
;/¯¯¯¯ getAutoKeywords ¯¯ 181106121229 ¯¯ 06.11.2018 12:12:29 ¯¯\
getAutoKeywords(ByRef oldKeywords, ByRef words){
    ; AddWord rootDoObj.createKeys https://g-intellisense.myjetbrains.com/youtrack/issues?q=project:%20g-IntelliSense#issueId=GIS-65
	
	newKeyWords := oldKeywords " " words
	
	firstWord := "" ; backup if founds nothing
	
	addKeysMAX := 4
	minLength := 4
	
	camelCaseOr := "(?:[^A-Z]?)(?P<B>[A-Z][a-z]+)"
	normalOr := "()(?P<C>[\W_-][a-z]+)"
	regEx := "(?:(?P<E>" camelCaseOr "|" normalOr "))"
	StartingPosition  := 2
	addedKeysCounter := 0
	
	;  ${SubpatternName}
	
	Array := [] ; or Array := Array()
	while(foundPos := RegexMatch( " " newKeyWords, "O)" regEx, Match, StartingPosition - 1 )){
		StartingPosition := Match.Pos(1) + Match.Len(1)
		
		if(addedKeysCounter >= addKeysMAX)
			break
		preCar1 := "2" Match.Value(2)
		preCar2 := "3" Match.Value(3)
    		;if(preCar1=="|" || preCar2=="|")
    		;	break
		if(Match.Value(4))
			keyTemp := "4" Match.Value(4)
		else if(Match.Value(3))
			keyTemp := "3" Match.Value(3)
		else if(Match.Value(2))
			keyTemp := "2" Match.Value(2)
		keyTemp .= " s:" MatchF
		; keyTemp .= " m:#" MatchP "#"
		
		m =
		(
		%MatchA%
		%MatchB%
		%MatchC%
		%MatchD%
		%MatchE%
		%MatchF%
		)
		ToolTip,% m MatchD MatchA  ,190 ,1
		
		
		s:= ""
		loop,4
			s .= A_Index ":" Match.Value(A_Index) "#"
    	; MsgBox,% s "(" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
		
		trim_keyTemp := trim(keyTemp," `t`r`n")
		if(0)
			MsgBox,% ">" trim_keyTemp "<  (" A_ThisFunc ":" A_LineNumber " " RegExReplace(A_LineFile, ".*\\") ")"
		if(!HasVal(Array,trim_keyTemp)){
			if(!firstWord)
				firstWord := trim_keyTemp
			if(minLength <= strlen(trim_keyTemp))
				Array.Push(trim_keyTemp) ; Append this line to the array.
			ArrayCount++
		}
		
    	; MsgBox,% keyTemp
	}
	newKeyWords := ""
	Loop % ArrayCount
	{
        ; element := Array%A_Index%
		element := Array[A_Index]
        ; MsgBox % "Element number " . A_Index . " is " . Array%A_Index%
		newKeyWords .= element " "
	}
	if(!newKeyWords := rTrim(newKeyWords))
		if(!newKeyWords := firstWord)
			newKeyWords := "without keywords"
        ; MsgBox % "Element number " . A_Index . " is " . Array%A_Index%
	return newKeyWords
}
;\____ getAutoKeywords __ 181106121233 __ 06.11.2018 12:12:33 __/


;/¯¯¯¯ HasVal ¯¯ 181116205402 ¯¯ 16.11.2018 20:54:02 ¯¯\
HasVal(haystack, needle) { ; return index
	if !(IsObject(haystack)) || (haystack.Length() = 0)
		return 0
	for index, value in haystack
	{
		if (value = needle)
			return index
	}
	return 0
}
;\____ HasVal __ 181116205406 __ 16.11.2018 20:54:06 __/

