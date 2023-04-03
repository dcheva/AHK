@set @x=0; /*
@echo off
if "%1"=="" cscript.exe //nologo //e:jscript "%~f0"& Exit
chdir /d "%~dp0"
 
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Lockheed Martin"
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Lockheed Martin\Prepar3D v3"
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Lockheed Martin\Prepar3D v3" /f /v "License" /t REG_SZ /d "Professional Plus"
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Lockheed Martin\Prepar3D v3" /f /v "SetupPath" /t REG_SZ /d "%cd%"
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Lockheed Martin\Prepar3D v3 Content" /f /v "SetupPath" /t REG_SZ /d "%cd%"
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Lockheed Martin\Prepar3D v3 Scenery" /f /v "SetupPath" /t REG_SZ /d "%cd%"
 
mklink /j "%USERPROFILE%\Documents\Prepar3D v3 Files" "%USERPROFILE%\Documents\Prepar3D v4 Files"
mklink /j "%USERPROFILE%\Documents\Prepar3D v3 Add-ons" "%USERPROFILE%\Documents\Prepar3D v4 Add-ons"
mklink /j "%LOCALAPPDATA%\Lockheed Martin\Prepar3D v3" "%LOCALAPPDATA%\Lockheed Martin\Prepar3D v4"
mklink /j "%LOCALAPPDATA%\Lockheed Martin\Prepar3D v3" "%LOCALAPPDATA%\Lockheed Martin\Prepar3D v4"
mklink /j "%PROGRAMDATA%\Lockheed Martin\Prepar3D v3" "%PROGRAMDATA%\Lockheed Martin\Prepar3D v4"
 
exit
 
*/new ActiveXObject('Shell.Application').ShellExecute (WScript.ScriptFullName,'Admin','','runas',1);
