import { initializeApp } from "https://www.gstatic.com/firebasejs/9.17.1/firebase-app.js";
import { 
  getAuth, 
  signInWithPopup, 
  GoogleAuthProvider, 
  getIdToken, 
  signOut 
} from "https://www.gstatic.com/firebasejs/9.17.1/firebase-auth.js";

// Konfigurasi Firebase
const firebaseConfig = {
  apiKey: "AIzaSyDjcc8FFJR-Wc8yYGZ20VkI9kimDwTeYNM",
  authDomain: "capstonebangkit-plantanist.firebaseapp.com",
  projectId: "capstonebangkit-plantanist",
  storageBucket: "capstonebangkit-plantanist.firebasestorage.app",
  messagingSenderId: "656338336155",
  appId: "1:656338336155:web:0638e504cb4df5fc61893e",
  measurementId: "G-G074QMHQE0"
};

const app = initializeApp(firebaseConfig);
const auth = getAuth(app);
const provider = new GoogleAuthProvider();

const loginBtn = document.getElementById('google-login-btn');
const logoutBtn = document.getElementById('logout-btn');
const userInfoDiv = document.getElementById('user-info');
const userEmailDisplay = document.getElementById('user-email');

loginBtn.addEventListener('click', async () => {
  try {
    const result = await signInWithPopup(auth, provider);
    const user = result.user;

    // Dapatkan ID Token
    const idToken = await getIdToken(user);

    // Tampilkan informasi pengguna
    userEmailDisplay.textContent = `Email: ${user.email}`;
    userInfoDiv.style.display = 'block';
    loginBtn.style.display = 'none';

    console.log("ID Token:", idToken);

    fetch('/login', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ idToken }),
    });
  } catch (error) {
    console.error("Login failed:", error.message);
  }
});

// Logout
logoutBtn.addEventListener('click', async () => {
  try {
    await signOut(auth);

    // Menutup informasi pengguna setelah logout
    userInfoDiv.style.display = 'none';
    loginBtn.style.display = 'block';
    userEmailDisplay.textContent = '';

    console.log("Logout successful");
  } catch (error) {
    console.error("Logout failed:", error.message);
  }
});
