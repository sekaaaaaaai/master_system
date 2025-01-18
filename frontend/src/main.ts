import { createApp } from 'vue'
import './style.css'
import App from './App.vue'
import vuetify from './plugins/vuetify'
import router from './plugins/router'
import { initializeApp } from 'firebase/app';
import { getFirestore } from 'firebase/firestore'

const firebaseConfig = {
  apiKey: "AIzaSyAahRfTTmOlY5GxK7doNkzLDF-e-EwLhvQ",
  authDomain: "sekishin-web-system.firebaseapp.com",
  projectId: "sekishin-web-system",
  storageBucket: "sekishin-web-system.firebasestorage.app",
  messagingSenderId: "588043973365",
  appId: "1:588043973365:web:2159f85476cda9b048cbbc"
};

const firebaseApp = initializeApp(firebaseConfig);
const db = getFirestore(firebaseApp);

const app = createApp(App)
app.use(router) // router追加
app.use(vuetify) // vuetify追加
app.mount('#app')

export { db };