const authController = require('../controllers/authController');
const predictController = require('../controllers/predictController');
const historyController = require('../controllers/historyController');
const verifyToken = require('../middleware/verifyToken');

const routes = [
  {
    method: 'POST',
    path: '/predict',
    handler: predictController.detect,
  },
  {
    method: 'POST',
    path: '/login',
    handler: authController.login,
  },
  {
    method: 'POST',
    path: '/history/{userId}',
    handler: historyController.addHistory,
    options: {
      pre: [{ method: verifyToken }],
    },
  },
  {
    method: 'GET',
    path: '/history/{userId}',
    handler: historyController.getHistory,
    options: {
      pre: [{ method: verifyToken }],
    },
  },
];

module.exports = routes;
