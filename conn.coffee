Sequelize = require 'sequelize'

module.exports = new Sequelize 'postgres://ebrock:secret@localhost:5432/tooskoo'
  .authenticate()
  .then (err) ->
    console.log 'Connection has been established successfully.'
  .catch (err) ->
    console.log 'Unable to connect to the database:', err
