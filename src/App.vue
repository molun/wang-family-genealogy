<template>
  <n-config-provider :theme="theme">
    <div class="app-container">
      <header class="app-header">
        <h1>临县堡则峪王氏宗谱</h1>
        <nav class="nav-bar">
          <router-link to="/"
          <router-link to="/tree"
          <router-link to="/migration"
          <router-link to="/about"
        </nav>
      </header>
      <main class="app-main">
        <router-view />
      </main>
      <footer class="app-footer">
        <p>临县堡则峪王氏 · 利支 · 2025年续修 · 合族珍藏</p>
      </footer>
    </div>
  </n-config-provider>
</template>
<script setup>
import { darkTheme } from 'naive-ui'
const theme = ref(null)
</script>
<style scoped>
.app-container { min-height: 100vh; display: flex; flex-direction: column; }
.app-header { padding: 1rem 2rem; background: #f8f5f0; border-bottom: 2px solid #8b4513; }
.app-header h1 { margin: 0; color: #8b4513; text-align: center; font-size: 1.8rem; }
.nav-bar { display: flex; gap: 2rem; justify-content: center; margin-top: 1rem; flex-wrap: wrap; }
.nav-bar a { text-decoration: none; color: #333; font-weight: 500; padding: 0.5rem 1rem; border-radius: 4px; }
.nav-bar a:hover, .nav-bar a.router-link-active { background: #8b4513; color: #fff; }
.app-main { flex: 1; padding: 2rem; max-width: 1400px; margin: 0 auto; width: 100 border-box; }
.app-footer { padding: 1rem; text-align: center; background: #f8f5f0; color: #666; border-top: 1px solid #ddd; margin-top: 2rem; }
</style>
