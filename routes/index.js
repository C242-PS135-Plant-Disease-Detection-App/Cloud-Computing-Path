const authController = require('../controllers/authController');
const verifyToken = require('../middleware/verifyToken');
const { getAllDiagnoses } = require('../controllers/historyController');
const { predict } = require('../controllers/predictController');

const routes = [
  {
    method: 'POST',
    path: '/predict',
    handler: predict,
    options: {
      pre: [{ method: verifyToken }],
    },
  },
  {
    method: 'POST',
    path: '/login',
    handler: authController.login,
  },
  {
    method: 'GET',
    path: '/diagnoses',
    handler: getAllDiagnoses,
    options: {
      pre: [{ method: verifyToken }],
    },
  },
];

module.exports = routes;
