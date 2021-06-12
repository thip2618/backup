Set WshShell = WScript.CreateObject("WScript.Shell")

' Open the default settings window
WshShell.Run "%windir%\system32\control.exe /name Microsoft.DefaultPrograms /page pageDefaultProgram\pageAdvancedSettings?pszAppName=google%20chrome"
WScript.Sleep 1500 ' Wait until open (adjust if necessary)

' Adjust number of tabs until you reach the browser choice setting
WshShell.SendKeys "{TAB}" 
WshShell.SendKeys "{TAB}"
WshShell.SendKeys "{TAB}"
WshShell.SendKeys "{TAB}"
WshShell.SendKeys "{TAB}"

' Open the browser choice menu
WshShell.SendKeys " " 
WScript.Sleep 1000 ' Wait until open

WshShell.SendKeys "{TAB}" ' Move down one selection
WshShell.SendKeys "{TAB}" ' Move down one selection
WshShell.SendKeys " " ' Set current selection as default browser

WScript.Sleep 3000 ' Wait until open
' Uncomment the line below to outomatically close the settings window
WshShell.SendKeys "%{F4}" 
WScript.Quit
