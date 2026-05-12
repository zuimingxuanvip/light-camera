# ✨ AI Beauty Camera - Web美颜相机

基于Web技术的实时美颜相机应用，集成GPU加速美颜、智能补光、面部变形等功能。

[English](./README_EN.md) | 简体中文

## 🌟 功能特性

### ✨ 美颜功能
- **4种美颜预设**：原图、自然、精致、AI美颜
- **磨皮**：基于双边滤波的GPU加速算法
- **美白**：智能肤色识别，保留自然质感
- **瘦脸**：基于MediaPipe Face Mesh的精准瘦脸
- **大眼**：自然的眼睛放大效果
- **GFPGAN修复**：AI图像增强模拟

### 💄 化妆功能
- **5种口红颜色**：红、粉、橙、珊瑚、玫瑰
- **腮红**：精准定位双颊，自然过渡

### 💡 补光功能
- **普通补光**：经典径向渐变柔光
- **智能人脸补光**：基于人脸检测的精准区域补光
- **逆光修复**：直方图均衡化，暗部提亮
- **4种色温**：暖光、冷光、自然、日落

### 🎤 语音控制
- 说"拍照"或"茄子"即可自动拍照
- 支持多种语音指令

### 📱 技术特性
- 纯Web实现，无需安装
- 60 FPS实时预览
- 跨平台兼容（桌面、移动端）
- 所有现代浏览器支持

## 🚀 快速开始

### 方法一：直接访问（推荐）

访问在线演示地址：
```
https://your-username.github.io/light-camera
```

### 方法二：本地运行

1. **克隆项目**
```bash
git clone https://github.com/your-username/light-camera.git
cd light-camera
```

2. **启动本地服务器**
```bash
# 使用Python
python3 -m http.server 8000

# 或使用Node.js
npx serve .

# 或使用VS Code的Live Server插件
```

3. **访问应用**
在浏览器中打开 `http://localhost:8000`

## 🛠️ 技术栈

### 前端技术
- **HTML5 + CSS3 + JavaScript**：原生Web技术栈
- **MediaPipe Face Mesh**：Google的面部特征点检测
- **Canvas API**：高性能图像处理
- **WebRTC**：相机访问
- **Web Speech API**：语音识别

### 核心算法
- **双边滤波**：磨皮去噪
- **肤色检测**：智能美白
- **图像变形**：瘦脸大眼
- **直方图均衡化**：逆光修复
- **拉普拉斯增强**：GFPGAN风格修复

## 📖 使用指南

### 基本操作
1. 点击"开启相机"按钮启动相机
2. 选择美颜预设或手动调节参数
3. 尝试不同补光模式
4. 点击"拍照"或说"拍照"保存照片

### 美颜参数说明
- **磨皮**：值越大，皮肤越光滑（建议30-70）
- **美白**：值越大，肤色越亮（建议20-50）
- **瘦脸**：值越大，脸型越瘦（建议10-30）
- **大眼**：值越大，眼睛越大（建议10-25）

### 补光模式选择
- **普通补光**：适用于光线均匀的场景
- **智能补光**：适用于人像特写
- **逆光修复**：适用于背光或暗光环境

## 🔧 部署指南

### GitHub Pages（免费）

1. Fork本项目
2. 进入项目Settings → Pages
3. Source选择`main`分支和`/(root)`
4. 点击Save，等待部署完成
5. 访问 `https://your-username.github.io/light-camera`

### Vercel（推荐）

```bash
npm i -g vercel
vercel
```

### Netlify

直接拖拽项目文件夹到Netlify即可

### Docker

```bash
docker build -t light-camera .
docker run -p 8000:8000 light-camera
```

## 🎯 浏览器兼容性

| 浏览器 | 支持版本 | 备注 |
|--------|---------|------|
| Chrome | 80+ | ✅ 完全支持 |
| Firefox | 75+ | ✅ 完全支持 |
| Safari | 14+ | ✅ 完全支持 |
| Edge | 80+ | ✅ 完全支持 |
| Mobile Chrome | 80+ | ✅ 完全支持 |
| Mobile Safari | 14+ | ✅ 完全支持 |

**注意**：需要相机和麦克风权限

## 📝 项目结构

```
light-camera/
├── index.html          # 主应用文件
├── README.md           # 中文说明文档
├── README_EN.md        # English documentation
├── LICENSE             # MIT开源许可证
└── .github/
    └── workflows/
        └── deploy.yml  # GitHub Actions部署配置
```

## 🤝 贡献指南

欢迎提交Issue和Pull Request！

### 开发流程

1. Fork本项目
2. 创建新分支 (`git checkout -b feature/amazing-feature`)
3. 提交更改 (`git commit -m 'Add amazing feature'`)
4. 推送到分支 (`git push origin feature/amazing-feature`)
5. 创建Pull Request

### 代码规范

- 使用4空格缩进
- 变量命名清晰易懂
- 添加必要的注释
- 确保代码通过 ESLint

## 📄 开源协议

本项目基于 [MIT License](LICENSE) 开源。

## 🙏 致谢

- [MediaPipe](https://google.github.io/mediapipe/) - Google的面部特征点检测
- [gpupixel](https://github.com/pixpark/gpupixel) - GPU美颜库参考
- [GFPGAN](https://github.com/TencentARC/GFPGAN) - AI人像修复参考

## 📞 联系作者

- GitHub：[Your GitHub](https://github.com/your-username)
- 邮箱：your-email@example.com

## 📌 更新日志

### v1.0.0 (2026-05-12)
- ✨ 初始版本发布
- ✨ 集成美颜、化妆、补光功能
- ✨ 支持语音控制拍照
- ✨ 修复画面比例显示问题

---

**如果你觉得这个项目有用，请给我一个⭐！**
