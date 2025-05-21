@echo off
title Git Command Guide
color 0A
chcp 65001 >nul

:: Get screen width and height
for /f "tokens=2 delims=:" %%a in ('mode con ^| findstr /C:"Columns"') do set cols=%%a
for /f "tokens=2 delims=:" %%a in ('mode con ^| findstr /C:"Lines"') do set lines=%%a

:: Calculate padding
set /a padding=(%cols% - 60) / 2
set "spaces="
for /L %%i in (1,1,%padding%) do set "spaces=!spaces! "

:menu
cls
echo.
echo.
echo.
echo                                   ╔════════════════════════════════════════════════════════════╗
echo                                   ║                     GIT COMMAND GUIDE                      ║
echo                                   ╚════════════════════════════════════════════════════════════╝
echo.
echo                                     [1] Initialize a new repository
echo                                     [2] Clone a repository
echo                                     [3] Basic Git Commands
echo                                     [4] Branching Commands
echo                                     [5] Remote Repository Commands
echo                                     [6] Advanced Git Commands
echo                                     [7] Exit
echo.
set /p choice=Enter your choice (1-7): 

if "%choice%"=="1" goto init
if "%choice%"=="2" goto clone
if "%choice%"=="3" goto basic
if "%choice%"=="4" goto branch
if "%choice%"=="5" goto remote
if "%choice%"=="6" goto advanced
if "%choice%"=="7" goto end
goto menu

:init
cls
echo.
echo.
echo.
echo                                   ╔════════════════════════════════════════════════════════════╗
echo                                   ║                Initialize a New Repository                 ║
echo                                   ╚════════════════════════════════════════════════════════════╝
echo.
echo                                     git init
echo                                     - Creates a new Git repository in the current directory
echo.
echo                                     git init [project-name]
echo                                     - Creates a new Git repository in the specified directory
echo.
pause
goto menu

:clone
cls
echo.
echo.
echo.
echo                                   ╔════════════════════════════════════════════════════════════╗
echo                                   ║                  Clone a Repository                        ║
echo                                   ╚════════════════════════════════════════════════════════════╝
echo.
echo                                     git clone [url]
echo                                     - Clones a repository from a remote source
echo.
echo                                     git clone [url] [directory]
echo                                     - Clones a repository into a specific directory
echo.
pause
goto menu

:basic
cls
echo.
echo.
echo.
echo                                   ╔════════════════════════════════════════════════════════════╗
echo                                   ║                  Basic Git Commands                        ║
echo                                   ╚════════════════════════════════════════════════════════════╝
echo.
echo                                     git add [file]
echo                                     - Stages a file for commit
echo.
echo                                     git add .
echo                                     - Stages all changes for commit
echo.
echo                                     git commit -m "[message]"
echo                                     - Commits staged changes with a message
echo.
echo                                     git status
echo                                     - Shows the status of your working directory
echo.
pause
goto menu

:branch
cls
echo.
echo.
echo.
echo                                   ╔════════════════════════════════════════════════════════════╗
echo                                   ║                  Branching Commands                        ║
echo                                   ╚════════════════════════════════════════════════════════════╝
echo.
echo                                     git branch
echo                                     - Lists all local branches
echo.
echo                                     git branch [branch-name]
echo                                     - Creates a new branch
echo.
echo                                     git checkout [branch-name]
echo                                     - Switches to the specified branch
echo.
echo                                     git merge [branch-name]
echo                                     - Merges the specified branch into the current branch
echo.
pause
goto menu

:remote
cls
echo.
echo.
echo.
echo                                   ╔════════════════════════════════════════════════════════════╗
echo                                   ║                Remote Repository Commands                  ║
echo                                   ╚════════════════════════════════════════════════════════════╝
echo.
echo                                     git remote add origin [url]
echo                                     - Adds a remote repository
echo.
echo                                     git push origin [branch]
echo                                     - Pushes changes to the remote repository
echo.
echo                                     git pull origin [branch]
echo                                     - Pulls changes from the remote repository
echo.
echo                                     git fetch
echo                                     - Downloads objects and refs from remote repository
echo.
pause
goto menu

:advanced
cls
echo.
echo.
echo.
echo                                   ╔════════════════════════════════════════════════════════════╗
echo                                   ║                  Advanced Git Commands                     ║
echo                                   ╚════════════════════════════════════════════════════════════╝
echo.
echo                                     git stash
echo                                     - Temporarily stores modified files
echo.
echo                                     git stash pop
echo                                     - Applies and removes the most recent stash
echo.
echo                                     git reset [file]
echo                                     - Unstages a file while keeping the changes
echo.
echo                                     git log
echo                                     - Shows commit history
echo.
echo                                     git diff
echo                                     - Shows changes between commits, commit and working tree, etc.
echo.
pause
goto menu

:end
cls
echo.
echo.
echo.
echo                                   ╔════════════════════════════════════════════════════════════╗
echo                                   ║            Thank you for using Git Command Guide!          ║
echo                                   ╚════════════════════════════════════════════════════════════╝
timeout /t 2 >nul
exit
