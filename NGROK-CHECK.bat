@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Azure VM" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user administrator QThang.net /add >nul
net localgroup administrators administrator /add >nul
echo All done! Connect your VM using RDP. When RDP expired and VM shutdown, Re-run jobs to get a new RDP.
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Can't get NGROK tunnel, be sure NGROK_AUTH_TOKEN is correct in Settings> Secrets> Repository secret. Maybe your previous VM still running: https://dashboard.ngrok.com/status/tunnels " 
echo User: Administrator
echo Pass: QThang.net
curl -O https://link.qthang.net/windows-rdp/DisablePasswordComplexity.ps1 > out.txt 2>&1
curl -O https://link.qthang.net/windows-rdp/idm.exe > out.txt 2>&1
curl -O https://link.qthang.net/windows-rdp/AirEx.exe > out.txt 2>&1
curl -O https://raw.githubusercontent.com/thip2618/backup/main/caiidm.cmd > out.txt 2>&1
curl -O https://raw.githubusercontent.com/thip2618/backup/main/caiair.cmd > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Fast Config VPS.exe" https://link.qthang.net/windows-rdp/FastConfigVPS_v5.1.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\SETUP APP.bat" https://raw.githubusercontent.com/thip2618/backup/main/SET-APP.bat > out.txt 2>&1
curl -o "C:\chromedefault.vbs" https://raw.githubusercontent.com/thip2618/backup/main/chromedefault.vbs > out.txt 2>&1
curl -o "C:\gui.zip" https://raw.githubusercontent.com/thip2618/backup/main/gui.zip > out.txt 2>&1
curl -o "C:\TeamViewer_Setup_x64.exe" https://download.teamviewer.com/download/TeamViewer_Setup_x64.exe > out.txt 2>&1
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& './DisablePasswordComplexity.ps1'" > out.txt 2>&1
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& './caiidm.cmd'" > out.txt 2>&1
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& './caiair.cmd'" > out.txt 2>&1
diskperf -Y >nul
sc start audiosrv >nul
sc config Audiosrv start= auto >nul
ICACLS C:\Windows\Temp /grant administrator:F >nul
ICACLS C:\Windows\installer /grant administrator:F >nul
ping -n 10 127.0.0.1 >nul






