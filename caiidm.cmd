@ECHO OFF
@cls
Color 09
echo.
echo.
echo.
@echo      ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß
echo.
echo.
@echo            ßß     ßßßßß   ßßßßß ßßßßß    ßßß     ßßßß  ßß  ßß  ßßßß    
@echo            ßß     ßß  ßß  ßß    ßß  ßß   ßßß    ßß  ßß ßß ßß  ßß  ßß   
@echo            ßß     ßß  ßß  ßß    ßß  ßß  ßß ßß  ßß      ßß ßß  ßß        
@echo            ßß     ßß  ßß  ßßßßß ßß  ßß  ßß ßß  ßß      ßßßß   ßßßß    
@echo            ßß     ßßßßß   ßß    ßßßßß   ßß ßß  ßß      ßßßßß    ßßßß 
@echo            ßß     ßß ßß   ßß    ßß     ßßßßßßß ßß      ßß ßß      ßß 
@echo            ßß     ßß  ßß  ßß    ßß     ßß   ßß  ßß  ßß ßß  ßß ßß  ßß
@echo            ßßßßßß ßß   ßß ßßßßß ßß     ßß   ßß   ßßßß  ßß  ßß  ßßßß
echo.  
echo.  
@echo      ßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßßß      
echo.  
echo.  
echo.                             SILENT INSTALLATION...
echo.                   
@echo off
FOR %%i IN ("idm*.exe") DO Set FileName="%%i"
%FileName% /SILENT

powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Desktop\IDM.lnk');$s.TargetPath='C:\Program Files (x86)\Internet Download Manager\IDMan.exe';$s.Save()"
powershell "& 'C:\Program Files (x86)\Internet Download Manager\IDMan.exe' -arguments"