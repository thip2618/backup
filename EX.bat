@echo off
echo Bat dau cai Teamviewer
c:\team.exe /SILENT
echo Cai xong Teamview. Giai nen

unzip -n c:\gui.zip -d C:\Users\administrator\Pictures
echo Giai nen xong. Kill chrome

tasklist /fi "ImageName eq chrome.exe" /fo csv 2>NUL | find /I "chrome.exe">NUL
if "%ERRORLEVEL%"=="0" TASKKILL /IM chrome.exe /F

echo Kill chrome xong. Load ex
c:\ex.vbs
"C:\Program Files\Google\Chrome\Application\chrome.exe" --load-extension="C:\Users\administrator\Pictures\gui"

echo Kill chrome xong. Kll msedge
tasklist /fi "ImageName eq msedge.exe" /fo csv 2>NUL | find /I "msedge.exe">NUL
if "%ERRORLEVEL%"=="0" TASKKILL /IM msedge.exe /F

echo Kill msedge xong. Load ex
"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --load-extension="C:\Users\administrator\Pictures\gui"
exit /B
