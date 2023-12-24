@echo off
mkdir %appdata%\SS\Suspicious 2>nul
del %appdata%\SS\Suspicious\Muicacheview.exe 2>nul
del %appdata%\SS\Suspicious\Temp.txt 2>nul
del %appdata%\SS\Suspicious\Temp2.txt 2>nul
set "url=https://cdn.discordapp.com/attachments/1149023532794257428/1164529965463785492/MUICacheView.exe?ex=65438c0b&is=6531170b&hm=c22e2a1545665bae3eac9ca813058cb510fa58c2e698f6a15915ea9aad8cff61&"
set "Suspicious=%appdata%\Suspicious.txt"
curl -o "%appdata%\SS\Suspicious\Muicacheview.exe" "%url%" 
%appdata%\Muicacheview.exe /nosort /stext "%appdata%\SS\Suspicious\Temp.txt"
type %appdata%\SS\Suspicious\Temp.txt > %appdata%\SS\Suspicious\Temp2.txt
findstr /i /c:"click" "%appdata%\SS\Suspicious\Temp2.txt" >> %appdata%\SS\Suspicious\SuspiciousFiles.txt
findstr /i /c:"vape" "%appdata%\SS\Suspicious\Temp2.txt" >> %appdata%\SS\Suspicious\SuspiciousFiles.txt
findstr /i /c:"sapphire" "%appdata%\SS\Suspicious\Temp2.txt" >> %appdata%\SS\Suspicious\SuspiciousFiles.txt
notepad %appdata%\SS\Suspicious\SuspiciousFiles.txt