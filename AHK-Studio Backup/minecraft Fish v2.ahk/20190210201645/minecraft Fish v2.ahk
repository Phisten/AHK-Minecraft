#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance Force
#Persistent
SetTitleMatchMode 2
#ErrorStdOut
title:="Minecraft 1.13.2"
WinWait % title
WinGet ,minecraftID,list,% title
tmp:=0
Please_Press_F3andP:=12345
win1_Pause := false
win2_Pause := false
If (tmp=0)
{
	SetTimer fishRightKey1,1000
	if (minecraftID >= 2)
	{
		SetTimer fishRightKey2,1000
	}
	F9&1::Pause
	;F9&2::fish2_Pause
	F10::Pause
	F12::ExitApp
}

Return
fishRightKey1:
;ControlClick,, % title,,RIGHT,,NA
ControlClick,, ahk_id %minecraftID1%,,RIGHT,,NA
return
fishRightKey2:
ControlClick,, ahk_id %minecraftID2%,,RIGHT,,NA
return
fish1_Pause:
win1_Pause:=Not % win1_Pause
return
fish2_Pause:
win1_Pause:=Not % win2_Pause
return