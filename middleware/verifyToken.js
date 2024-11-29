const admin = require('firebase-admin');

// Memastikan Firebase Admin SDK sudah diinisialisasi di dalam proyek
if (!admin.apps.length) {
  admin.initializeApp({
    credential: admin.credential.applicationDefault(),
  });
}

const verifyToken = async (request, h) => {
  const authHeader = request.headers.authorization;

  if (!authHeader) {
    return h.response({ message: 'Authorization header missing' }).code(401).takeover();
  }

  const token = authHeader.split(' ')[1]; // Mengambil token setelah "Bearer"

  try {
    const decodedToken = await admin.auth().verifyIdToken(token);
    request.user = decodedToken; // Menyimpan data user di request
    return h.continue; // Lanjutkan ke handler berikutnya
  } catch (error) {
    return h.response({ message: 'Invalid token', error: error.message }).code(401).takeover();
  }
};

module.exports = verifyToken;
