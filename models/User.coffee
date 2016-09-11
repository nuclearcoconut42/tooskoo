conn = require '../conn'
Sequelize = require 'sequelize'

module.exports = conn.define 'user',
  email:
    type: Sequelize.STRING
  password:
    type: Sequelize.STRING
