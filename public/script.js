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
  apiKey: "AIzaSyDEU7D2jyEZTpZktl1gU3t1jfB6i6h3JXs",
  authDomain: "plantanist-login.firebaseapp.com",
  projectId: "plantanist-login",
  storageBucket: "plantanist-login.appspot.com",
  messagingSenderId: "1050998665452",
  appId: "1:1050998665452:web:b9005463e13950a278b5c9",
  measurementId: "G-64Q31QD426",
};

// Inisialisasi Firebase
const app = initializeApp(firebaseConfig);
const auth = getAuth(app);
const provider = new GoogleAuthProvider();

// Referensi elemen DOM
const loginBtn = document.getElementById('google-login-btn');
const logoutBtn = document.getElementById('logout-btn');
const userInfoDiv = document.getElementById('user-info');
const userEmailDisplay = document.getElementById('user-email');

// Login dengan Google
loginBtn.addEventListener('click', async () => {
  try {
    // Popup untuk autentikasi dengan Google
    const result = await signInWithPopup(auth, provider);
    const user = result.user;

    // Dapatkan ID Token untuk digunakan di server
    const idToken = await getIdToken(user);

    // Tampilkan informasi pengguna di UI
    userEmailDisplay.textContent = `Email: ${user.email}`;
    userInfoDiv.style.display = 'block';
    loginBtn.style.display = 'none';

    console.log("ID Token:", idToken);

    // Kirim token ke server untuk diverifikasi
    const response = await fetch('/login', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ idToken }),
    });

    const data = await response.json();

    if (response.ok) {
      console.log("Server response:", data);
      alert("Login berhasil!");
    } else {
      console.error("Login failed:", data.message);
      alert(`Login gagal: ${data.message}`);
    }
  } catch (error) {
    console.error("Login failed:", error.message);
    alert(`Login gagal: ${error.message}`);
  }
});

// Logout
logoutBtn.addEventListener('click', async () => {
  try {
    // Logout dari Firebase
    await signOut(auth);

    // Reset UI setelah logout
    userInfoDiv.style.display = 'none';
    loginBtn.style.display = 'block';
    userEmailDisplay.textContent = '';

    console.log("Logout successful");
    alert("Logout berhasil!");
  } catch (error) {
    console.error("Logout failed:", error.message);
    alert(`Logout gagal: ${error.message}`);
  }
});
