@echo off
echo === System Diagnosis ===
echo.

echo Current directory: %cd%
echo.

echo === Checking project path ===
if exist "f:\百度云\BaiduSyncdisk\CodeXU\test\AndroidQuoteApp" (
    echo Project path exists
) else (
    echo Error: Project path does not exist
)
echo.

echo === Checking Git installation ===
if exist "F:\Git\bin\git.exe" (
    echo Git path exists
    echo Git version:
    "F:\Git\bin\git.exe" --version
) else (
    echo Error: Git path does not exist
    echo Please check if F:\Git\bin\git.exe exists
)
echo.

echo === Checking project files ===
if exist "f:\百度云\BaiduSyncdisk\CodeXU\test\AndroidQuoteApp\app\src\main\AndroidManifest.xml" (
    echo Project files exist
) else (
    echo Error: Project files do not exist
)
echo.

echo === Trying to enter project directory ===
cd /d "f:\百度云\BaiduSyncdisk\CodeXU\test\AndroidQuoteApp" 2>nul
if %errorlevel% equ 0 (
    echo Successfully entered project directory: %cd%
) else (
    echo Error: Cannot enter project directory
)
echo.

pause