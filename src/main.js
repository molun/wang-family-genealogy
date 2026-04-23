import { createApp } from 'vue'
import App from './App.vue'
import router from './router'
import { create, NButton, NCard, NInput, NSelect, NTabs, NTabPane, NSpin } from 'naive-ui'
const naive = create({ components: [NButton, NCard, NInput, NSelect, NTabs, NTabPane, NSpin] })
const app = createApp(App)
app.use(naive)
app.mount('#app')
