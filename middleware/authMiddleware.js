const admin = require('../config/firebase-config');

const authMiddleware = async (request, h) => {
  const authorization = request.headers.authorization;

  if (!authorization || !authorization.startsWith('Bearer ')) {
    return h.response({ message: 'Unauthorized: No access Token provided' }).code(401).takeover();
  }

  const token = authorization.split(' ')[1];

  try {
    const decodedToken = await admin.auth().verifyIdToken(token);
    request.auth = { user: decodedToken }; // Menyimpan data user untuk digunakan di handler
    return h.continue; // Lanjutkan ke handler berikutnya
  } catch (error) {
    console.error('Error verifying token:', error.message);
    return h.response({ message: 'Unauthorized, Please Login First', error: error.message }).code(401).takeover();
  }
};

module.exports = authMiddleware;
