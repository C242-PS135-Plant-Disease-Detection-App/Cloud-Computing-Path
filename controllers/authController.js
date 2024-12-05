const admin = require('../config/firebase-config');

const authController = {
  login: async (request, h) => {
    const { idToken } = request.payload;

    if (!idToken) {
      return h.response({ message: 'ID Token is required' }).code(400);
    }

    try {
      // Verifikasi token menggunakan Firebase Admin SDK
      const decodedToken = await admin.auth().verifyIdToken(idToken);

      const user = {
        uid: decodedToken.uid,
        email: decodedToken.email,
        name: decodedToken.name,
        picture: decodedToken.picture,
      };

      return h.response({ message: 'Login successful', user }).code(200);
    } catch (error) {
      console.error('Error verifying token:', error.message);
      return h.response({ message: 'Invalid token', error: error.message }).code(401);
    }
  },
};

module.exports = authController;
