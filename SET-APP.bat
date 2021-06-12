@echo off
curl -O https://link.qthang.net/windows-rdp/idm.exe > out.txt 2>&1
curl -O https://link.qthang.net/windows-rdp/caiidm.cmd > out.txt 2>&1
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& './caiidm.cmd'" > out.txt 2>&1
