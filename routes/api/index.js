var express = require("express");
var router = express.Router();

var loginRoutes = require('./login');

router.use('/login', loginRoutes);

module.exports = router;
