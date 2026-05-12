# Android APK 构建指南（国内镜像版）

## 已配置的镜像源

### Maven 仓库镜像
- ✅ 腾讯云镜像 (优先)
- ✅ 华为云镜像
- ✅ 阿里云镜像

### Gradle 配置优化
- ✅ 增加超时时间（60秒）
- ✅ 启用并行编译
- ✅ 启用构建缓存
- ✅ 增加 JVM 内存

## 构建方法

### 方法1：使用 Android Studio（推荐）

```bash
# 1. 确保资源已同步
npm run sync:android

# 2. 打开 Android Studio
npm run open:android
```

在 Android Studio 中：
1. 等待 Gradle 同步（首次可能需要10-30分钟下载依赖）
2. 点击 **Build** → **Build Bundle(s) / APK(s)** → **Build APK(s)**
3. APK 文件位置：`android/app/build/outputs/apk/debug/app-debug.apk`

### 方法2：命令行构建

```bash
cd /workspace/light-camera/android

# 清理旧构建
gradle clean

# 构建 Debug APK
gradle assembleDebug --no-daemon

# 构建 Release APK（需要签名）
gradle assembleRelease --no-daemon
```

### 方法3：使用构建脚本

```bash
cd /workspace/light-camera
./build-android.sh
```

## 常见问题

### 1. 网络连接超时

如果仍然遇到网络问题：

```bash
# 尝试使用代理
export HTTP_PROXY=http://your-proxy:port
export HTTPS_PROXY=http://your-proxy:port
gradle assembleDebug --no-daemon
```

### 2. Gradle 版本问题

如果需要调整 Gradle 版本，编辑：
```
android/gradle/wrapper/gradle-wrapper.properties
```

### 3. Android SDK 问题

确保已安装：
- Android SDK Platform 36
- Android SDK Build-Tools 34.0.0+
- Android SDK Tools

## 其他配置

### 如果需要使用代理

编辑 `~/.gradle/gradle.properties`：

```properties
systemProp.http.proxyHost=your-proxy-host
systemProp.http.proxyPort=your-proxy-port
systemProp.https.proxyHost=your-proxy-host
systemProp.https.proxyPort=your-proxy-port
```

### 临时使用官方源

如果镜像不稳定，可以临时注释掉镜像，使用官方源：

编辑 `android/build.gradle`，注释掉镜像：
```groovy
repositories {
    // maven { url 'https://mirrors.cloud.tencent.com/nexus/repository/maven-public/' }
    // maven { url 'https://mirrors.huaweicloud.com/repository/maven/' }
    // maven { url 'https://maven.aliyun.com/repository/google' }
    // maven { url 'https://maven.aliyun.com/repository/public' }
    // maven { url 'https://maven.aliyun.com/repository/central' }
    google()
    mavenCentral()
}
```

## APK安装

### 安装到设备
```bash
adb install android/app/build/outputs/apk/debug/app-debug.apk
```

### 覆盖安装
```bash
adb install -r android/app/build/outputs/apk/debug/app-debug.apk
```

## 文件说明

| 文件 | 说明 |
|------|------|
| `android/build.gradle` | 项目级构建配置，镜像源在此 |
| `android/gradle.properties` | Gradle 属性配置 |
| `android/settings.gradle` | 项目设置 |
| `android/variables.gradle` | 版本变量 |
| `www/index.html` | 原生应用的主界面 |

## 推荐流程

1. 先在浏览器中测试 Web 版本
2. 确认功能正常后，再构建 APK
3. 使用 Android Studio 构建（最稳定）
4. 安装到真机或模拟器测试
