;Chatshit Vorila Dransik
;Kyle GusToughSon Bishop
;Discord : GusToughSon#7073
;GusToughSon@Icloud.com

HotKeySet ("{ins}", "mouse")   ;Press Insert over pots to set where the pothack clicks;
HotKeySet ("{end}", "close")   ;press End To kill Voransik hack;
HotKeySet ("{del}", "check")   ;press DEL to turn it on or off;
HotKeySet ("{pause}", "kill")  ;Force close the Vorila/Dransik Client IE:Old Style dransik logout;

Opt("MouseCoordMode", 2) ;This sets the way the mouse interacts with the client (set as 2) ;
Opt("PixelCoordMode", 2) ;This sets the way the PixelSearch interacts with the client (set as 2) ;

ConsoleWrite ("Started" & @CRLF)

;This is Global Variables;
Global $pickx = 0, $picky = 0,$on = 0

While 1
	While $on
		If WinActive("Dransik Classic") Then ;Make sure the game is in Focus

		EndIf
	WEnd
WEnd

Func check()
   If $on = 1 Then
	  $on = 0
   Else
	  $on = 1
   EndIf
EndFunc

Func close()
   ConsoleWrite(@CRLF & "Closing Via Close Command" & @CRLF)
   Exit
EndFunc

Func kill()
   ProcessClose ("Vorlia Client.exe")
   ConsoleWrite("tryed" & @CRLF)
EndFunc

Func mouse()
   $pickx = MouseGetPos(0)
   $picky = MouseGetPos(1)
   ConsoleWrite("Pots now Set At Location:" & @CRLF)
   ConsoleWrite("X = " & $pickx & @CRLF)
   ConsoleWrite("Y = " & $picky & @CRLF)
EndFunc
; Script Start - Add your code below here
