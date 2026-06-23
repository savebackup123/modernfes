@echo off
title Modernfes Auto Deploy
echo ==================================================
echo       Modernfes Auto Deploy to GitHub Pages
echo ==================================================
echo.

echo [Configuring local Git identity...]
"C:\Program Files\Git\cmd\git.exe" config user.email "savebackup123@users.noreply.github.com"
"C:\Program Files\Git\cmd\git.exe" config user.name "savebackup123"

echo.
echo 1. Staging files...
"C:\Program Files\Git\cmd\git.exe" add .

echo.
echo 2. Committing changes...
"C:\Program Files\Git\cmd\git.exe" commit -m "Update modernfes website (%date% %time%)"

echo.
echo 3. Pushing to GitHub (Authentication might be required on first run)...
"C:\Program Files\Git\cmd\git.exe" push -u origin main

echo.
echo ==================================================
echo Deploy complete!
echo Please go to your GitHub repository settings:
echo https://github.com/savebackup123/modernfes/settings/pages
echo and select "Deploy from a branch" -> "main" -> "/(root)" -> Save
echo to activate GitHub Pages.
echo ==================================================
echo.
pause
