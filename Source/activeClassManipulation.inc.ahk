; Indentation_style: https://de.wikipedia.org/wiki/Einrückungsstil#SL5small-Stil
; #Include,activeClassManipulation.inc.ahk
if(!activeClass){
      if(!activeClass)
            WinGetClass,activeClass, A
}

activeClass := activeClassManipulation(activeClass, activeTitle)
activeClass := activeClass ; activeClass is deprecated but in use ;) 10.08.2017 21:45

; Tooltip,>%activeClass%< = activeClass  `n >%activeTitle%< = activeTitle  `n (from: activeClassManipulation.inc.ahk / %A_LineFile% ~%A_ThisFunc%~%A_LineNumber%) token:1708112343


;/¯¯¯¯ activeClassManipulation ¯¯ 190208222303 ¯¯ 08.02.2019 22:23:03 ¯¯\
activeClassManipulation(activeClass, activeTitle := ""){
      
      if(RegExMatch( activeClass , "^_" )){ ; dont tuch this !! :) 11.08.2017 21:44
        ;tip = :) found `n "^_" `n >%activeClass%< = activeClass  `n >%activeTitle%< = activeTitle  `n (from: activeClassManipulation.inc.ahk / %A_LineFile% ~%A_ThisFunc%~%A_LineNumber%) token:1708120003
        ;Tooltip,% tip
        ; lll(A_LineNumber, "activeClassManipulation.inc.ahk", tip )

        ; msgbox,:) found `n "^_" `n %activeClass% `n (activeClassManipulation.inc.ahk / %A_LineFile% ~%A_ThisFunc%~%A_LineNumber%)
        ; ExitAPp
        ;Sleep,1000
        return, % activeClass
      }
      activeClass := RegExReplace( activeClass, "[\W_]+", "")
      activeClass := (activeClass) ? activeClass  : "noClass"

      if(false){ ; dont tuch this !! :) 11.08.2017 21:44
        return, % activeClass
      }
      else if(activeClass == "CabinetWClass")
            activeClass := "ChromeWidgetWin1" ; thats also found inside google chrome

      else if(InStr(activeTitle,"Q-Dir" ) || activeClass == "ATL000000014013EB90")
            activeClass := "Q-Dir"

      else if(InStr(activeTitle,"- AtmelStudio" ) || activeClass == "HwndWrapperDefaultDomain0eaa8e46bf964d15b780fbf9aace0b41")
            activeClass := "AtmelStudio"

      else if(InStr(activeTitle,"SKYPE" ) || activeClass == "TConversationForm")
            activeClass := "skype"

      else if( 1 && (InStr(activeTitle,"eyeDesign" ) || activeClass == "WindowsForms10Window8app0141b42ar16ad1") )
            activeClass := "eyeDesign"

      ;else if( 1 && InStr(activeTitle,"TightVNC" ) && (activeClass == "32770" || activeClass == "TightVNC" ) )
      ;      activeClass := "TightVNC"

      return, % activeClass
}
;\____ activeClassManipulation __ 190208222306 __ 08.02.2019 22:23:06 __/