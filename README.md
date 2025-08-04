# 每日一句 - Android Quote应用

一个简单的Android应用程序，显示励志名言。

## 功能特点

- 显示中文励志名言和格言
- 点击按钮可以随机切换到下一条名言
- 界面简洁，易于使用

## 技术实现

- 使用Java作为主要编程语言
- 实现了基本的Android组件：Activity、TextView、Button
- 包含了一个预定义的名言数组，从中随机选择显示

## 使用GitHub Actions自动构建

本项目配置了GitHub Actions工作流，可以自动构建APK文件。

### 构建过程

1. 每当有代码推送到`main`分支时，GitHub Actions会自动触发构建
2. 工作流会:
   - 检出代码
   - 设置JDK 11环境
   - 给gradlew脚本添加执行权限
   - 使用Gradle构建项目
   - 生成Debug版本APK
   - 上传APK作为构建产物

### 下载构建的APK

1. 在GitHub仓库页面，点击"Actions"选项卡
2. 选择最近的构建工作流运行
3. 在"Artifacts"部分下载`app-debug.apk`

## 本地构建

如果您想在本地构建项目:

1. 克隆此仓库
2. 在Android Studio中打开项目
3. 选择"Build" > "Build Bundle(s) / APK(s)" > "Build APK(s)"

## 许可证

此项目为示例项目，仅供学习使用。