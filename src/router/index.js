import { createRouter, createWebHashHistory } from 'vue-router'
const routes = [
  { path: '/', name: 'Home', component: () = },
  { path: '/tree', name: 'TreeView', component: () = },
  { path: '/member/:id', name: 'MemberDetail', component: () = },
  { path: '/migration', name: 'Migration', component: () = },
  { path: '/about', name: 'About', component: () = }
]
const router = createRouter({
  history: createWebHashHistory(),
  routes
})
export default router
