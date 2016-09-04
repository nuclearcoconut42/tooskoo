var conn = require('../conn');
var Sequelize = require('sequelize');

var User = conn.define('user', {
  email: {
    type: Sequelize.STRING
  },
  password: {
    type: Sequelize.STRING
  }
});
