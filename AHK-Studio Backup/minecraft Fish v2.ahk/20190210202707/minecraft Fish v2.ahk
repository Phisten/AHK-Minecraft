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
win1_run := true
win2_run := true
If (tmp=0)
{
	SetTimer fishRightKey1,1000
	if (minecraftID >= 2)
	{
		SetTimer fishRightKey2,1000
	}
	F9 & 1::  win1_run := Not win1_run
	F9 & 2::  win2_run := Not win2_run
	F10::Pause
	F12::ExitApp
}
Return
fishRightKey1:
;ControlClick,, % title,,RIGHT,,NA
If(win1_Pause)
	ControlClick,, ahk_id %minecraftID1%,,RIGHT,,NA
return
fishRightKey2:
ControlClick,, ahk_id %minecraftID2%,,RIGHT,,NA
return
