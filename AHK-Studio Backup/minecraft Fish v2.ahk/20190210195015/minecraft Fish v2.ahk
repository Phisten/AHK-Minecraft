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
If (tmp=0)
{
	SetTimer fishRightKey1,1000
	if (minecraftID >= 2)
	{
		
		SetTimer fishRightKey2,1000
	}
	F10::Pause
	F12::ExitApp
}

Return
fishRightKey:
;ControlClick,, % title,,RIGHT,,NA
ControlClick,, ahk_id %minecraftID2%,,RIGHT,,NA
ControlClick,, ahk_id %minecraftID1%,,RIGHT,,NA
return