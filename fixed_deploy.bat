@echo off
echo *** Deploy Android Quote App to GitHub ***
echo.

echo Changing to project directory...
cd /d "f:\百度云\BaiduSyncdisk\CodeXU\test\AndroidQuoteApp"
if %errorlevel% neq 0 (
    echo ERROR: Cannot change to project directory
    pause
    exit /b 1
)

echo Current directory: %cd%
echo.

echo Initializing Git repository...
F:\Git\bin\git.exe init
echo.

echo Adding files to repository...
F:\Git\bin\git.exe add .
echo.

echo Committing changes...
F:\Git\bin\git.exe commit -m "Initial commit: Android Quote App with GitHub Actions"
echo.

echo Adding remote repository...
F:\Git\bin\git.exe remote add origin https://github.com/xubo18639520787-afk/test.git
echo.

echo Setting main branch...
F:\Git\bin\git.exe branch -M main
echo.

echo Pushing to GitHub...
echo Make sure you have created the "test" repository on GitHub
F:\Git\bin\git.exe push -u origin main
echo.

echo *** Deployment completed! ***
echo Your code has been pushed to GitHub.
echo GitHub Actions will automatically build the APK.
echo Check the Actions tab in your GitHub repository.
pause