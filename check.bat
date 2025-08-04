@echo off
echo *** System Check ***
echo.

echo Current dir: %cd%
echo.

echo *** Check Project ***
if exist "f:\BaiduSyncdisk\CodeXU\test\AndroidQuoteApp" (
    echo Project OK
) else (
    echo Project Missing
)
echo.

echo *** Check Git ***
if exist "F:\Git\bin\git.exe" (
    echo Git OK
) else (
    echo Git Missing
)
echo.

echo *** Check Project Files ***
dir "f:\BaiduSyncdisk\CodeXU\test\AndroidQuoteApp\app\src\main\AndroidManifest.xml" >nul 2>nul
if %errorlevel% equ 0 (
    echo Files OK
) else (
    echo Files Missing
)
echo.

pause