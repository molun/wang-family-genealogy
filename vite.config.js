import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

export default defineConfig({
  plugins: [vue()],
  // 关键：和你的仓库名保持一致，前后加斜杠
  base: '/wang-family-genealogy/',
  build: {
    outDir: 'dist',
    assetsDir: 'assets'
  }
})
