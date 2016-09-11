express = require 'express'
loginRoutes = require './login'

app = express()

app.use '/login', loginRoutes

module.exports = app
