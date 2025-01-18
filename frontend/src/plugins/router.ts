// Vue Routerパッケージのインポート
import { getAuth, onAuthStateChanged } from 'firebase/auth';
import { createRouter, createWebHistory } from 'vue-router'

const routes = [
  { 
    path: '/', 
    component: () => import("../components/page/user/SignIn.vue"),
    meta: {
      hideNavbar: true,
    },
  },
  { 
    path: '/calendar', 
    component: () => import("../components/page/calendar/Index.vue"),
    meta: {
      requiresAuth: true, // ログイン必須
    },
  },
  { 
    path: "/signin", 
    component: () => import("../components/page/user/SignIn.vue"),
    meta: {
      hideNavbar: true,
     },
  },
  { 
    path: "/register", 
    component: () => import("../components/page/user/Register.vue"),
    meta: {
      hideNavbar: true,
     }, 
  },
  { 
    path: "/user/detail", 
    component: () => import("../components/page/user/Detail.vue"),
    meta: {
      requiresAuth: true, // ログイン必須
    }
  },

  // 存在しないパスは全てTOPへ
  // { path: '/:catchAll(.*)', redirect: '/' }
];

const router = createRouter({
  history: createWebHistory(),
  routes,
})

const getCurrentUser = () => {
  return new Promise((resolve, reject) => {
    const removeListener = onAuthStateChanged(
      getAuth(), 
      (user) => {
        removeListener();
        resolve(user);
      },
      reject
    )
  })
}


// ログインが必要なページの場合はログインしていないとアクセスできない
router.beforeEach(async (to, from, next) => {
  if(to.matched.some((record) => record.meta.requiresAuth)){
    if(await getCurrentUser()){
      next();
    }else{
      next("/signin");
    }
  }else{
    next();
  }
})

export default router