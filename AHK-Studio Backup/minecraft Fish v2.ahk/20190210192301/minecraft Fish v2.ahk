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
	SetTimer fishRightKey,1000
	F10::Pause
	F12::ExitApp
}

Return
fishRightKey:
ControlClick,, % title,,RIGHT
return