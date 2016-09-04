var Sequelize = require('sequelize');

var conn = new Sequelize('postgres://ebrock:secret@localhost:5432/tooskoo');
sequelize
  .authenticate()
  .then(function(err) {
    console.log('Connection has been established successfully.');
  })
  .catch(function (err) {
    console.log('Unable to connect to the database:', err);
  }
);

module.exports = conn;
