const admin = require('../config/firebase-config');

module.exports = {
  login: async (request, h) => {
    const { idToken } = request.payload;

    try {
      const decodedToken = await admin.auth().verifyIdToken(idToken);
      const { uid, email, name } = decodedToken;

      return h.response({
        message: 'Login successful',
        user: { uid, email, name },
        history: userHistory,
      }).code(200);
    } catch (err) {
      console.error('Error verifying token:', err.message);
      return h.response({ message: 'Invalid token', error: err.message }).code(400);
    }
  },
};
