#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.2
 Author: Gllook

Script Function:
	Bot pour farmer la Cobblestone sur un générateur
#ce ----------------------------------------------------------------------------

#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

Opt("GUIOnEventMode", 1) ; Mode Event activé

HotKeySet ( "p" , "CloseButton")

#Region ### START Koda GUI section ### Form=
$Form1_1 = GUICreate("Bot Farmeur de Cobble", 319, 271, 317, 182)
GUISetOnEvent($GUI_EVENT_CLOSE, "CLOSEButton")
$Label1 = GUICtrlCreateLabel("Bot pour farmer la Cobble", 16, 16, 218, 28)
GUICtrlSetFont(-1, 14, 400, 0, "MS Sans Serif")
$Button1 = GUICtrlCreateButton("Go", 24, 184, 75, 25)
GUICtrlSetOnEvent($Button1, "OKButton")
$Combo1 = GUICtrlCreateCombo("", 24, 80, 145, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "Minecraft 1.10.2|Minecraft1.10.1|Minecraft1.10", "Minecraft 1.10.2")
$Label4 = GUICtrlCreateLabel("Nombre de Pioches", 24, 120, 97, 17)
$Combo2 = GUICtrlCreateCombo("", 24, 144, 145, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "1|2|3|4|5|6|7|8|9", "1")
$Label2 = GUICtrlCreateLabel("Version de Jeu", 24, 56, 74, 17)
$Label3 = GUICtrlCreateLabel("By Gllook", 256, 248, 49, 17)
$Label5 = GUICtrlCreateLabel("http://gllook.blogspot.fr/", 128, 248, 120, 17)
GUICtrlSetFont(-1, 8, 400, 4, "MS Sans Serif")
GUICtrlSetColor(-1, 0x0000FF)
GUICtrlSetOnEvent($label5, "OpenLink")
$Label6 = GUICtrlCreateLabel("'p' pour quitter", 104, 184, 70, 17)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
    sleep (1000)
WEnd

Func OpenLink()
    ShellExecute ("http://gllook.blogspot.fr/")
EndFunc

Func CLOSEButton()
    Exit
EndFunc

Func OKButton()
    Local $VersionJ = GUICtrlRead($Combo1)
	WinActivate ($VersionJ)
    WinMove ($VersionJ, "", 0, 0, 870, 519)
	Sleep (1000)
	MouseClick ("left", 426, 184, 1, 0)

    Local $NBp = GUICtrlRead($Combo2)
	While ($NBp <> 0)
	    Local $x
        If ($NBp == 1) Then
		    $x = 601
	    ElseIf ($NBp == 2) Then
		    $x = 562
	    ElseIf ($NBp == 3) Then
		    $x = 521
	    ElseIf ($NBp == 4) Then
		    $x = 482
	    ElseIf ($NBp == 5) Then
		    $x = 442
	    ElseIf ($NBp == 6) Then
		    $x = 401
	    ElseIf ($NBp == 7) Then
		    $x = 361
	    ElseIf ($NBp == 8) Then
	        $x = 321
	    ElseIf ($NBp == 9) Then
		    $x = 281
		EndIf
        While (PixelGetColor($x, 484) <> 16777215)
			MouseDown ("left")
            Sleep (1000)
		    MouseUp ("left")
        WEnd
    Sleep (1000)
	$NBp -= 1
	MouseWheel ("down", 1)
    WEnd
EndFunc
