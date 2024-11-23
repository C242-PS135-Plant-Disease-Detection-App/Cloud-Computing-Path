const authController = require("../controllers/authController");
const predictController = require("../controllers/predictController");
const historyController = require("../controllers/historyController");


const routes = [
  {
    method: "POST",
    path: "/predict",
    handler: predictController.detect,
  },
  {
    method: "POST",
    path: "/history",
    handler: historyController.saveHistory,
  },
  {
    method: "GET",
    path: "/history/{userId}",
    handler: historyController.getHistory,
  },
  {
    method: "POST",
    path: "/login",
    handler: authController.login,
  },
];

module.exports = routes;
