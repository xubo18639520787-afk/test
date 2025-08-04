@echo off
cd /d "f:\百度云\BaiduSyncdisk\CodeXU\test\AndroidQuoteApp"
F:\Git\bin\git.exe init
F:\Git\bin\git.exe add .
F:\Git\bin\git.exe commit -m "Initial commit"
F:\Git\bin\git.exe remote add origin https://github.com/xubo18639520787-afk/test.git
F:\Git\bin\git.exe branch -M main
F:\Git\bin\git.exe push -u origin main
echo 完成
pause