@ECHO OFF
goto:main
[+] Description: a simple script to clean up Microsoft Team's Cache (release a bit memory)
:main
taskkill /IM teams.exe /F
timeout /t 5 /nobreak
del /A /Q /F "%appdata%\Microsoft\Teams\Cache"
del /A /Q /F "%appdata%\Microsoft\Teams\blob_storage"
del /A /Q /F "%appdata%\Microsoft\Teams\databases"
del /A /Q /F "%appdata%\Microsoft\Teams\GPUCache"
del /A /Q /F "%appdata%\Microsoft\Teams\IndexedDB"
del /A /Q /F "%appdata%\Microsoft\Teams\Local Storage"
del /A /Q /F "%appdata%\Microsoft\Teams\tmp"
echo "[+] Microsoft Team's Cache was cleaned!!!"
C:\Users\%USERNAME%\AppData\Local\Microsoft\Teams\Update.exe --processStart Teams.exe
echo "[+] Microsoft Team Started!!!"
echo "DONE"
