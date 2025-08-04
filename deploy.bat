@echo off
chcp 65001 >nul
setlocal

echo ================================
echo Android Quote应用部署工具
echo ================================
echo.
echo 当前目录: %cd%
echo.
echo 确保您已在GitHub上创建了名为"test"的仓库
echo.

pause
echo.
echo 正在部署Android Quote应用到GitHub...
echo.

cd /d "f:\百度云\BaiduSyncdisk\CodeXU\test\AndroidQuoteApp"
echo 已进入项目目录

if not exist ".git" (
    echo.
    echo 初始化Git仓库...
    "F:\Git\bin\git.exe" init
    echo Git仓库初始化完成
) else (
    echo.
    echo Git仓库已存在
)

echo.
echo 添加文件到仓库...
"F:\Git\bin\git.exe" add .
echo 文件添加完成

echo.
echo 提交更改...
"F:\Git\bin\git.exe" commit -m "Initial commit: Android Quote App with GitHub Actions"
echo 更改提交完成

echo.
echo 添加远程仓库...
"F:\Git\bin\git.exe" remote add origin https://github.com/xubo18639520787-afk/test.git 2>nul
echo 远程仓库设置完成

echo.
echo 设置主分支...
"F:\Git\bin\git.exe" branch -M main
echo 主分支设置完成

echo.
echo 推送代码到GitHub...
echo 如果提示登录，请输入您的GitHub凭证
"F:\Git\bin\git.exe" push -u origin main

echo.
echo ================================
echo 部署完成！
echo ================================
echo 您的Android应用代码已成功推送到GitHub。
echo GitHub Actions将自动开始构建APK文件。
echo 您可以在GitHub仓库的Actions选项卡中查看构建进度。
echo.
echo 关闭此窗口前，请检查以上信息。
pause