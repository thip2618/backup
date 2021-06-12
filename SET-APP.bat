@echo off
powershell "& 'C:\chromedefault.vbs' -arguments"
timeout 5
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Desktop\IDM.lnk');$s.TargetPath='C:\Program Files (x86)\Internet Download Manager\IDMan.exe';$s.Save()"
powershell "& 'C:\Program Files (x86)\Internet Download Manager\IDMan.exe' -arguments"
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Desktop\AirExplorer.lnk');$s.TargetPath='C:\Program Files (x86)\AirExplorer\AirExplorer.exe';$s.Save()"
powershell "& 'C:\Program Files (x86)\AirExplorer\AirExplorer.exe' -arguments"
unzip -n c:/gui.zip -d C:\Users\administrator\Pictures
TASKKILL /IM chrome.exe /F
"C:\Program Files\Google\Chrome\Application\chrome.exe" --load-extension="C:\Users\administrator\Pictures\gui"
TASKKILL /IM msedge.exe /F
"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --load-extension="C:\Users\administrator\Pictures\gui"
