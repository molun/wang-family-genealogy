# 临县堡则峪王氏宗谱网站
## 项目介绍
基于Vue3开发的现代化族谱网站，适配临县堡则峪王氏利支2025年续修宗谱，支持本地运行、GitHub Pages免费托管。
## 本地运行
1. 安装Node.js 16+版本（官网https://nodejs.cn/ 一键安装）
2. 打开项目文件夹，在地址栏输入`cmd`回车，打开命令窗口
3. 执行命令安装依赖：`npm install`
4. 执行命令启动本地服务：`npm run dev`
5. 打开浏览器访问提示的地址（默认http://localhost:5173）即可使用
## GitHub部署
1. 将项目推送到你的GitHub仓库
2. 进入仓库Settings → Pages，将部署源设置为`gh-pages`分支
3. 等待Actions自动构建完成，即可通过GitHub Pages链接访问
## 数据更新
族谱核心数据在`public/genealogy_data.json`文件中，按格式修改/新增人物信息，保存后自动更新网站内容。
