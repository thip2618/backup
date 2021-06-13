@echo off
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Desktop\IDM.lnk');$s.TargetPath='C:\Program Files (x86)\Internet Download Manager\IDMan.exe';$s.Save()"
powershell "& 'C:\Program Files (x86)\Internet Download Manager\IDMan.exe' -arguments"
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Desktop\AirExplorer.lnk');$s.TargetPath='C:\Program Files (x86)\AirExplorer\AirExplorer.exe';$s.Save()"
powershell "& 'C:\Program Files (x86)\AirExplorer\AirExplorer.exe' -arguments"
