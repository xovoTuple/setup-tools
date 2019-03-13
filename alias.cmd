@echo off
: this file is automatically run every time CMD is opened. setup procedure:
	: Open registry editor
	: navigating to HKEY_CURRENT_USER\Software\Microsoft\Command Processor
	: adding a new String Value
	: providing the name AutoRun and setting the Data as %USERPROFILE%\Desktop\prog\setup-tools\alias.cmd
: concept taken from https://stackoverflow.com/questions/20530996/aliases-in-windows-command-prompt



: Directories
DOSKEY downloads= cd %USERPROFILE%\Downloads
DOSKEY desktop= cd %USERPROFILE%\Desktop
DOSKEY prog= cd %USERPROFILE%\Desktop\prog

: Commands
DOSKEY npp="C:\Program Files (x86)\Notepad++\notepad++.exe" $*
DOSKEY np=C:\Windows\notepad.exe $*
DOSKEY ls=dir /N
DOSKEY alias="C:\Program Files (x86)\Notepad++\notepad++.exe" %USERPROFILE%\Desktop\prog\setup-tools\alias.cmd