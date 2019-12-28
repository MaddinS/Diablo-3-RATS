; Press Esc to terminate script, Pause/Break to "pause"

Global $Paused
Global $Start
$SearchColorYellow = 16776960
$SearchColorBlue = 6842620
$SearchColorGreen = 5235762

Global $Paused, $Runner
HotKeySet("{F2}", "TogglePause")
HotKeySet("{F3}", "Terminate")
HotKeySet("{F1}", "Start")


While 1
   $search = PixelSearch(776, 30, 1148, 51, 6842620) ;Blue
	If Not @error Then
			$search = PixelSearch(1357,918,1406,925,2047808,5) ;Essenz
			If Not @error Then
			$search = PixelSearch(1357,918,1406,925,1326406,5) ;Essenz
		 If Not @error Then
		 ControlClick("","","","Right")
		 EndIf
		 EndIf
	EndIf
	Sleep(50)

	    $search = PixelSearch(776, 30, 1148, 51, 16776960) ;Yellow
	If Not @error Then
		$search = PixelSearch(1357,918,1406,925,2047808,5) ;Essenz
		If Not @error Then
			$search = PixelSearch(1357,918,1406,925,1326406,5) ;Essenz
		 If Not @error Then
		 ControlClick("","","","Right")
		 EndIf
		 EndIf
	EndIf
	Sleep(50)

   $search = PixelSearch(126,61, 126,61, 52480) ;1
			If @error Then
			$search = PixelSearch(128,61, 128,61, 65280) ;1
			If @error Then
				  $search = PixelSearch(128,70, 128,70, 61440) ;1
			If @error Then
					 $search = PixelSearch(134,61, 134,61, 188685) ;0
			If @error Then
						$search = PixelSearch(134,68, 134,68, 118785) ;0
			If @error Then
						$search = PixelSearch(169,39, 169,39, 1285) ;0
						   If Not @error Then
							  	If Not @error Then
								 $search = PixelSearch(1357,918,1406,925,2047808,5) ;Essenz
								 If Not @error Then
								 $search = PixelSearch(1357,918,1406,925,1326406,5) ;Essenz
								 If Not @error Then
		 ControlClick("","","","Right")
						EndIf
					 EndIf
				  EndIf
			   EndIf
			EndIf
		 EndIf
	  EndIf
   EndIf
EndIf




Wend


Func TogglePause()
    $Paused = NOT $Paused
    While $Paused
        sleep(100)
        ToolTip('AutoTarget "Paused"',0,0)
    WEnd
    ToolTip("")
EndFunc

Func Terminate()
    Exit 0
EndFunc