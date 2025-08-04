@echo off
echo === 系统诊断 ===
echo.

echo 当前目录: %cd%
echo.

echo === 检查项目路径 ===
if exist "f:\百度云\BaiduSyncdisk\CodeXU\test\AndroidQuoteApp" (
    echo 项目路径存在
) else (
    echo 错误: 项目路径不存在
)
echo.

echo === 检查Git安装路径 ===
if exist "F:\Git\bin\git.exe" (
    echo Git路径存在
    echo Git版本:
    "F:\Git\bin\git.exe" --version
) else (
    echo 错误: Git路径不存在
    echo 请检查F:\Git\bin\git.exe是否存在
)
echo.

echo === 检查项目文件 ===
if exist "f:\百度云\BaiduSyncdisk\CodeXU\test\AndroidQuoteApp\app\src\main\AndroidManifest.xml" (
    echo 项目文件存在
) else (
    echo 错误: 项目文件不存在
)
echo.

echo === 尝试进入项目目录 ===
cd /d "f:\百度云\BaiduSyncdisk\CodeXU\test\AndroidQuoteApp" 2>nul
if %errorlevel% equ 0 (
    echo 成功进入项目目录: %cd%
) else (
    echo 错误: 无法进入项目目录
)
echo.

pause