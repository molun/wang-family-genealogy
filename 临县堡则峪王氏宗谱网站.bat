@echo off
chcp 65001
title 临县堡则峪王氏宗谱网站一键生成

echo ========================================
echo  临县堡则峪王氏宗谱网站 自动生成中
echo ========================================

:: 1. 创建项目目录结构
md public\photos
md src\components
md src\views
md src\router
md src\utils
md .github\workflows

:: 2. 生成package.json
echo {> package.json
echo   "name": "linxian-wang-family-genealogy",>> package.json
echo   "private": true,>> package.json
echo   "version": "1.0.0",>> package.json
echo   "type": "module",>> package.json
echo   "scripts": {>> package.json
echo     "dev": "vite",>> package.json
echo     "build": "vite build",>> package.json
echo     "preview": "vite preview">> package.json
echo   },>> package.json
echo   "dependencies": {>> package.json
echo     "vue": "^3.4.0",>> package.json
echo     "vue-router": "^4.3.0",>> package.json
echo     "naive-ui": "^2.38.0",>> package.json
echo     "@antv/g6": "^4.8.24",>> package.json
echo     "echarts": "^5.5.0">> package.json
echo   },>> package.json
echo   "devDependencies": {>> package.json
echo     "@vitejs/plugin-vue": "^5.0.0",>> package.json
echo     "vite": "^5.0.0">> package.json
echo   }>> package.json
echo }>> package.json

:: 3. 生成vite.config.js
echo import { defineConfig } from 'vite'> vite.config.js
echo import vue from '@vitejs/plugin-vue'>> vite.config.js
echo export default defineConfig({>> vite.config.js
echo   plugins: [vue()],>> vite.config.js
echo   base: './',>> vite.config.js
echo   build: {>> vite.config.js
echo     outDir: 'dist',>> vite.config.js
echo     assetsDir: 'assets'>> vite.config.js
echo   }>> vite.config.js
echo })>> vite.config.js

:: 4. 生成.gitignore
echo # 依赖> .gitignore
echo node_modules/>> .gitignore
echo # 构建产物>> .gitignore
echo dist/>> .gitignore
echo # 隐私数据>> .gitignore
echo public/private_data.json>> .gitignore
echo # 日志>> .gitignore
echo *.log>> .gitignore
echo # 编辑器缓存>> .gitignore
echo .vscode/>> .gitignore
echo .idea/>> .gitignore>> .gitignore

:: 5. 生成index.html
echo ^<!DOCTYPE html^>> index.html
echo ^<html lang="zh-CN"^>>> index.html
echo ^<head^>>> index.html
echo   ^<meta charset="UTF-8"^>>> index.html
echo   ^<meta name="viewport" content="width=device-width, initial-scale=1.0"^>>> index.html
echo   ^<title^>临县堡则峪王氏宗谱^</title^>>> index.html
echo ^</head^>>> index.html
echo ^<body^>>> index.html
echo   ^<div id="app"^>^</div^>>> index.html
echo   ^<script type="module" src="/src/main.js"^>^</script^>>> index.html
echo ^</body^>>> index.html
echo ^</html^>>> index.html

:: 6. 生成核心入口文件 src/main.js
echo import { createApp } from 'vue'> src/main.js
echo import App from './App.vue'>> src/main.js
echo import router from './router'>> src/main.js
echo import { create, NButton, NCard, NInput, NSelect, NTabs, NTabPane, NSpin } from 'naive-ui'>> src/main.js
echo const naive = create({ components: [NButton, NCard, NInput, NSelect, NTabs, NTabPane, NSpin] })>> src/main.js
echo const app = createApp(App)>> src/main.js
echo app.use(router)>> src/app.js
echo app.use(naive)>> src/main.js
echo app.mount('#app')>> src/main.js

:: 7. 生成根组件 src/App.vue
echo ^<template^>> src/App.vue
echo   ^<n-config-provider :theme="theme"^>>> src/App.vue
echo     ^<div class="app-container"^>>> src/App.vue
echo       ^<header class="app-header"^>>> src/App.vue
echo         ^<h1^>临县堡则峪王氏宗谱^</h1^>>> src/App.vue
echo         ^<nav class="nav-bar"^>>> src/App.vue
echo           ^<router-link to="/">首页^</router-link^>>> src/App.vue
echo           ^<router-link to="/tree">世系全景^</router-link^>>> src/App.vue
echo           ^<router-link to="/migration">迁徙分布^</router-link^>>> src/App.vue
echo           ^<router-link to="/about">族谱介绍^</router-link^>>> src/App.vue
echo         ^</nav^>>> src/App.vue
echo       ^</header^>>> src/App.vue
echo       ^<main class="app-main"^>>> src/App.vue
echo         ^<router-view /^>>> src/App.vue
echo       ^</main^>>> src/App.vue
echo       ^<footer class="app-footer"^>>> src/App.vue
echo         ^<p^>临县堡则峪王氏 · 利支 · 2025年续修 · 合族珍藏^</p^>>> src/App.vue
echo       ^</footer^>>> src/App.vue
echo     ^</div^>>> src/App.vue
echo   ^</n-config-provider^>>> src/App.vue
echo ^</template^>>> src/App.vue
echo ^<script setup^>>> src/App.vue
echo import { darkTheme } from 'naive-ui'>> src/App.vue
echo const theme = ref(null)>> src/App.vue
echo ^</script^>>> src/App.vue
echo ^<style scoped^>>> src/App.vue
echo .app-container { min-height: 100vh; display: flex; flex-direction: column; }>> src/App.vue
echo .app-header { padding: 1rem 2rem; background: #f8f5f0; border-bottom: 2px solid #8b4513; }>> src/App.vue
echo .app-header h1 { margin: 0; color: #8b4513; text-align: center; font-size: 1.8rem; }>> src/App.vue
echo .nav-bar { display: flex; gap: 2rem; justify-content: center; margin-top: 1rem; flex-wrap: wrap; }>> src/App.vue
echo .nav-bar a { text-decoration: none; color: #333; font-weight: 500; padding: 0.5rem 1rem; border-radius: 4px; }>> src/App.vue
echo .nav-bar a:hover, .nav-bar a.router-link-active { background: #8b4513; color: #fff; }>> src/App.vue
echo .app-main { flex: 1; padding: 2rem; max-width: 1400px; margin: 0 auto; width: 100%; box-sizing: border-box; }>> src/App.vue
echo .app-footer { padding: 1rem; text-align: center; background: #f8f5f0; color: #666; border-top: 1px solid #ddd; margin-top: 2rem; }>> src/App.vue
echo ^</style^>>> src/App.vue

:: 8. 生成路由配置 src/router/index.js
echo import { createRouter, createWebHashHistory } from 'vue-router'>> src/router/index.js
echo const routes = [>> src/router/index.js
echo   { path: '/', name: 'Home', component: () => import('../views/Home.vue') },>> src/router/index.js
echo   { path: '/tree', name: 'TreeView', component: () => import('../views/TreeView.vue') },>> src/router/index.js
echo   { path: '/member/:id', name: 'MemberDetail', component: () => import('../views/MemberDetail.vue') },>> src/router/index.js
echo   { path: '/migration', name: 'Migration', component: () => import('../views/Migration.vue') },>> src/router/index.js
echo   { path: '/about', name: 'About', component: () => import('../views/About.vue') }>> src/router/index.js
echo ]>> src/router/index.js
echo const router = createRouter({>> src/router/index.js
echo   history: createWebHashHistory(),>> src/router/index.js
echo   routes>> src/router/index.js
echo })>> src/router/index.js
echo export default router>> src/router/index.js

:: 9. 生成族谱核心数据 public/genealogy_data.json
echo {> public/genealogy_data.json
echo   "familyBase": {>> public/genealogy_data.json
echo     "surname": "王",>> public/genealogy_data.json
echo     "familyName": "临县堡则峪王氏",>> public/genealogy_data.json
echo     "branch": "利支",>> public/genealogy_data.json
echo     "firstAncestor": "王子文",>> public/genealogy_data.json
echo     "origin": "陕西",>> public/genealogy_data.json
echo     "migration": "元世祖至元元年迁居山西临县堡则峪",>> public/genealogy_data.json
echo     "revisionYear": "2025",>> public/genealogy_data.json
echo     "volume": "卷四",>> public/genealogy_data.json
echo     "generationTotal": 30>> public/genealogy_data.json
echo   },>> public/genealogy_data.json
echo   "generationRules": {>> public/genealogy_data.json
echo     "seniorityOrder": "rightToLeft",>> public/genealogy_data.json
echo     "generationStep": 1,>> public/genealogy_data.json
echo     "privacyMode": true>> public/genealogy_data.json
echo   },>> public/genealogy_data.json
echo   "members": [>> public/genealogy_data.json
echo     {>> public/genealogy_data.json
echo       "id": "W010001",>> public/genealogy_data.json
echo       "name": "王子文",>> public/genealogy_data.json
echo       "generation": 1,>> public/genealogy_data.json
echo       "sequence": 1,>> public/genealogy_data.json
echo       "branch": "六甲之祖",>> public/genealogy_data.json
echo       "spouse": [{"name": "薛氏", "type": "原配"}],>> public/genealogy_data.json
echo       "fatherId": "",>> public/genealogy_data.json
echo       "children": ["W020001"],>> public/genealogy_data.json
echo       "birth": "",>> public/genealogy_data.json
echo       "death": "",>> public/genealogy_data.json
echo       "note": "元系陕西人，至大元世祖开历元年迁来堡则峪为村，六甲之祖",>> public/genealogy_data.json
echo       "originalPage": "卷四首页",>> public/genealogy_data.json
echo       "isDeceased": true,>> public/genealogy_data.json
echo       "isPrivate": false>> public/genealogy_data.json
echo     },>> public/genealogy_data.json
echo     {>> public/genealogy_data.json
echo       "id": "W260001",>> public/genealogy_data.json
echo       "name": "王汝汉",>> public/genealogy_data.json
echo       "generation": 26,>> public/genealogy_data.json
echo       "sequence": 1,>> public/genealogy_data.json
echo       "branch": "利支",>> public/genealogy_data.json
echo       "spouse": [{"name": "白氏", "type": "原配"}],>> public/genealogy_data.json
echo       "fatherId": "W250001",>> public/genealogy_data.json
echo       "fatherName": "王孝",>> public/genealogy_data.json
echo       "grandfatherName": "王荣富",>> public/genealogy_data.json
echo       "children": ["W270001", "W270002", "W270003", "W270004"],>> public/genealogy_data.json
echo       "childrenOrder": ["王峰", "王岗", "王岩", "王嵛"],>> public/genealogy_data.json
echo       "birth": "",>> public/genealogy_data.json
echo       "death": "",>> public/genealogy_data.json
echo       "note": "王孝长子，廿六世，长兄",>> public/genealogy_data.json
echo       "originalPage": "卷四",>> public/genealogy_data.json
echo       "isDeceased": true,>> public/genealogy_data.json
echo       "isPrivate": false>> public/genealogy_data.json
echo     },>> public/genealogy_data.json
echo     {>> public/genealogy_data.json
echo       "id": "W260002",>> public/genealogy_data.json
echo       "name": "王汝泽",>> public/genealogy_data.json
echo       "generation": 26,>> public/genealogy_data.json
echo       "sequence": 2,>> public/genealogy_data.json
echo       "branch": "利支",>> public/genealogy_data.json
echo       "spouse": [{"name": "贺氏", "type": "原配"}],>> public/genealogy_data.json
echo       "fatherId": "W250001",>> public/genealogy_data.json
echo       "fatherName": "王孝",>> public/genealogy_data.json
echo       "grandfatherName": "王荣富",>> public/genealogy_data.json
echo       "children": ["W270005", "W270006"],>> public/genealogy_data.json
echo       "childrenOrder": ["王峻", "王灿"],>> public/genealogy_data.json
echo       "birth": "",>> public/genealogy_data.json
echo       "death": "",>> public/genealogy_data.json
echo       "note": "王孝次子，廿六世，二弟",>> public/genealogy_data.json
echo       "originalPage": "卷四",>> public/genealogy_data.json
echo       "isDeceased": true,>> public/genealogy_data.json
echo       "isPrivate": false>> public/genealogy_data.json
echo     },>> public/genealogy_data.json
echo     {>> public/genealogy_data.json
echo       "id": "W260003",>> public/genealogy_data.json
echo       "name": "王汝祺",>> public/genealogy_data.json
echo       "generation": 26,>> public/genealogy_data.json
echo       "sequence": 3,>> public/genealogy_data.json
echo       "branch": "利支",>> public/genealogy_data.json
echo       "spouse": [{"name": "李氏", "type": "原配"}],>> public/genealogy_data.json
echo       "fatherId": "W250001",>> public/genealogy_data.json
echo       "fatherName": "王孝",>> public/genealogy_data.json
echo       "grandfatherName": "王荣富",>> public/genealogy_data.json
echo       "children": ["W270007", "W270008", "W270009", "W270010"],>> public/genealogy_data.json
echo       "childrenOrder": ["王德", "王善", "王昌", "王瑞"],>> public/genealogy_data.json
echo       "birth": "",>> public/genealogy_data.json
echo       "death": "",>> public/genealogy_data.json
echo       "note": "王孝三子，廿六世，三弟",>> public/genealogy_data.json
echo       "originalPage": "卷四",>> public/genealogy_data.json
echo       "isDeceased": true,>> public/genealogy_data.json
echo       "isPrivate": false>> public/genealogy_data.json
echo     },>> public/genealogy_data.json
echo     {>> public/genealogy_data.json
echo       "id": "W270001",>> public/genealogy_data.json
echo       "name": "王峰",>> public/genealogy_data.json
echo       "generation": 27,>> public/genealogy_data.json
echo       "sequence": 1,>> public/genealogy_data.json
echo       "branch": "利支",>> public/genealogy_data.json
echo       "spouse": [{"name": "贺氏", "type": "原配"}],>> public/genealogy_data.json
echo       "fatherId": "W260001",>> public/genealogy_data.json
echo       "children": ["W280001", "W280002", "W280003"],>> public/genealogy_data.json
echo       "childrenOrder": ["王荣生", "王明生", "王彦生"],>> public/genealogy_data.json
echo       "birth": "",>> public/genealogy_data.json
echo       "death": "",>> public/genealogy_data.json
echo       "note": "王汝汉长子，廿七世",>> public/genealogy_data.json
echo       "originalPage": "卷四",>> public/genealogy_data.json
echo       "isDeceased": true,>> public/genealogy_data.json
echo       "isPrivate": false>> public/genealogy_data.json
echo     }>> public/genealogy_data.json
echo   ]>> public/genealogy_data.json
echo }>> public/genealogy_data.json

:: 10. 生成GitHub自动部署配置
echo name: 部署王氏宗谱网站到GitHub Pages> .github/workflows/deploy.yml
echo on:>> .github/workflows/deploy.yml
echo   push:>> .github/workflows/deploy.yml
echo     branches: [ main ]>> .github/workflows/deploy.yml
echo jobs:>> .github/workflows/deploy.yml
echo   build-and-deploy:>> .github/workflows/deploy.yml
echo     runs-on: ubuntu-latest>> .github/workflows/deploy.yml
echo     steps:>> .github/workflows/deploy.yml
echo       - uses: actions/checkout@v4>> .github/workflows/deploy.yml
echo       - name: 安装Node.js>> .github/workflows/deploy.yml
echo         uses: actions/setup-node@v4>> .github/workflows/deploy.yml
echo         with:>> .github/workflows/deploy.yml
echo           node-version: 20>> .github/workflows/deploy.yml
echo       - name: 安装依赖>> .github/workflows/deploy.yml
echo         run: npm install>> .github/workflows/deploy.yml
echo       - name: 构建静态文件>> .github/workflows/deploy.yml
echo         run: npm run build>> .github/workflows/deploy.yml
echo       - name: 部署到GitHub Pages>> .github/workflows/deploy.yml
echo         uses: peaceiris/actions-gh-pages@v4>> .github/workflows/deploy.yml
echo         with:>> .github/workflows/deploy.yml
echo           github_token: ${{ secrets.GITHUB_TOKEN }}>> .github/workflows/deploy.yml
echo           publish_dir: ./dist>> .github/workflows/deploy.yml

:: 11. 生成README使用说明
echo # 临县堡则峪王氏宗谱网站> README.md
echo ## 项目介绍>> README.md
echo 基于Vue3开发的现代化族谱网站，适配临县堡则峪王氏利支2025年续修宗谱，支持本地运行、GitHub Pages免费托管。>> README.md
echo ## 本地运行>> README.md
echo 1. 安装Node.js 16+版本（官网https://nodejs.cn/ 一键安装）>> README.md
echo 2. 打开项目文件夹，在地址栏输入`cmd`回车，打开命令窗口>> README.md
echo 3. 执行命令安装依赖：`npm install`>> README.md
echo 4. 执行命令启动本地服务：`npm run dev`>> README.md
echo 5. 打开浏览器访问提示的地址（默认http://localhost:5173）即可使用>> README.md
echo ## GitHub部署>> README.md
echo 1. 将项目推送到你的GitHub仓库>> README.md
echo 2. 进入仓库Settings → Pages，将部署源设置为`gh-pages`分支>> README.md
echo 3. 等待Actions自动构建完成，即可通过GitHub Pages链接访问>> README.md
echo ## 数据更新>> README.md
echo 族谱核心数据在`public/genealogy_data.json`文件中，按格式修改/新增人物信息，保存后自动更新网站内容。>> README.md

echo ========================================
echo  ✅ 项目文件生成完成！
echo ========================================
echo  接下来请按以下步骤操作：
echo  1. 安装Node.js（官网https://nodejs.cn/ 下载LTS版本一键安装）
echo  2. 在当前文件夹地址栏输入 cmd 回车，打开命令窗口
echo  3. 输入 npm install 回车，等待依赖安装完成
echo  4. 输入 npm run dev 回车，即可启动本地网站
echo ========================================
pause