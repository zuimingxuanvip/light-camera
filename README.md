# 补光相机 - 智能美颜相机应用

✨ 一款专业的智能美颜相机应用，支持实时补光、语音控制和多种美颜风格。

## 功能特点

### 🎨 三种美颜风格
- **古代风 🏯**：复古怀旧色调，营造古典美人氛围
- **现代风 💄**：清新自然，提升肤色美感（默认）
- **科技风 🤖**：冷色调科技感，赛博朋克风格

### 💡 专业补光
- 4种预设色温：暖光、冷光、自然光、日落
- 亮度调节（10%-100%）
- 自定义颜色选择

### 🎤 语音控制
- 支持语音命令："拍照"、"茄子"、"cheese"等
- 倒计时拍照："321"、"开始"
- 无需手动点击，解放双手

### 📷 拍照功能
- 实时预览美颜效果
- 一键拍照，自动保存
- 照片包含当前美颜风格标识

## 技术实现

- **前端框架**：原生HTML5 + CSS3 + JavaScript
- **相机访问**：WebRTC getUserMedia API
- **语音识别**：Web Speech API
- **美颜滤镜**：CSS Filters + Canvas API
- **部署方式**：GitHub Pages

## 快速开始

### 在线访问
直接访问：[补光相机 GitHub Pages](#)

### 本地运行
```bash
# 克隆项目
git clone https://github.com/YOUR_USERNAME/light-camera.git

# 进入目录
cd light-camera

# 启动本地服务器
python3 -m http.server 8000
# 或
npx serve

# 浏览器访问
http://localhost:8000
```

### 手机访问
确保手机和电脑在同一网络，访问：`http://YOUR_COMPUTER_IP:8000`

## 使用说明

1. **开启相机**：点击"开启相机"按钮，授权相机权限
2. **选择美颜风格**：从古代风、现代风、科技风中选择
3. **调整补光**：选择色温和亮度
4. **语音控制**：点击"语音"按钮，说"拍照"即可自动拍照
5. **拍照保存**：点击拍照按钮，自动保存照片

## 浏览器兼容性

- ✅ Chrome (推荐)
- ✅ Edge
- ✅ Safari
- ⚠️ Firefox (部分功能)
- ❌ 不支持IE

## 开发相关

### 项目结构
```
light-camera/
├── index.html          # 主应用文件
├── README.md          # 项目说明
└── .nojekyll         # GitHub Pages配置
```

### 部署到GitHub Pages
1. Fork或克隆此仓库
2. 进入仓库 Settings → Pages
3. Source 选择 "Deploy from a branch"
4. Branch 选择 "main"，文件夹选择 "/ (root)"
5. 点击 Save，等待部署完成

## 技术亮点

- 🎯 **实时美颜**：WebRTC + CSS Filters实现实时滤镜预览
- 🎤 **语音识别**：Web Speech API实现语音控制拍照
- 📱 **响应式设计**：适配手机、平板、桌面各种屏幕
- 🚀 **轻量级**：纯前端实现，无需后端服务器

## 未来计划

- [ ] 添加更多美颜风格
- [ ] 支持图片编辑功能
- [ ] 添加社交分享功能
- [ ] 支持视频录制
- [ ] 添加AR贴纸功能

## 许可证

MIT License

## 作者

独立开发者

## 贡献

欢迎提交Issue和Pull Request！

---

⭐ 如果这个项目对你有帮助，请给个Star！
