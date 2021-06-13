Dim shell
set shell = CreateObject("Shell.Application")
set x = CreateObject("Wscript.shell")
WScript.Sleep 3000  
x.sendkeys("chrome://extensions/")
WScript.Sleep 500
x.sendkeys"{ENTER}"
WScript.Sleep 500
x.sendkeys"{TAB}"
WScript.Sleep 500
x.sendkeys"{ENTER}"
WScript.Sleep 400
x.sendkeys"{TAB}"
x.sendkeys"{TAB}"
x.sendkeys"{TAB}"
x.sendkeys"{TAB}"
x.sendkeys"{TAB}"
x.sendkeys"{TAB}"
x.sendkeys"{ENTER}"
WScript.Sleep 800
x.sendkeys"{TAB}"
x.sendkeys"{TAB}"
x.sendkeys"{TAB}"
x.sendkeys"{TAB}"
x.sendkeys"{TAB}"
WScript.Sleep 800
x.sendkeys"{ENTER}"
WScript.Sleep 500
x.sendkeys"%{F4}"
WScript.Sleep 10000  
x.sendkeys"{F4}"
WScript.Sleep 800  					
x.sendkeys("chrome://extensions/")
WScript.Sleep 500
x.sendkeys"{ENTER}"
WScript.Sleep 2500
x.sendkeys"{TAB}"
WScript.Sleep 400	
x.sendkeys"{TAB}"
WScript.Sleep 400
x.sendkeys"{TAB}"
WScript.Sleep 800
x.sendkeys"{ }"
WScript.Sleep 400
x.sendkeys"{TAB}"
WScript.Sleep 400
x.sendkeys"{TAB}"
WScript.Sleep 400
x.sendkeys"{TAB}"
x.sendkeys"{TAB}"
x.sendkeys"{TAB}"
x.sendkeys"{TAB}"
x.sendkeys"{TAB}"
x.sendkeys"{TAB}"
x.sendkeys"{TAB}"
x.sendkeys"{TAB}"
WScript.Sleep 400
x.sendkeys"{ }"
WScript.Sleep 800
x.sendkeys"{TAB}"
WScript.Sleep 400
x.sendkeys"{TAB}"
x.sendkeys"{TAB}"
WScript.Sleep 800
x.sendkeys"{ }"
WScript.Sleep 500
x.sendkeys"{F4}"
WScript.Sleep 500
x.sendkeys("fshare.vn")
x.sendkeys"{Enter}"
WScript.Sleep 2500
x.sendkeys"%{ }"
WScript.Sleep 800
x.sendkeys"{n}"
WScript.Sleep 800
shell.ShellExecute ("chrome.exe")
set x = CreateObject("Wscript.shell")
WScript.Sleep 1000  
x.sendkeys("fshare.vn")
WScript.Sleep 1000
x.sendkeys"{ENTER}"
