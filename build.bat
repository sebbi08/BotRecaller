@echo off
rmdir /s /q "BotRecaller_0.17.3"
del /s /q "BotRecaller*.zip"
mkdir "BotRecaller_0.17.3"
robocopy /s /e . BotRecaller_0.17.3 /mt /xd "BotRecaller_0.17.3" ".git" ".idea" /xf ".gitignore" "build.sh" "build.bat"
7z a BotRecaller_0.17.3.zip "BotRecaller_0.17.3"
rmdir /s /q "BotRecaller_0.17.3"
pause