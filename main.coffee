express = require 'express'
bodyParser = require 'body-parser'
path = require 'path'

appRoutes = require './routes/app'
apiRoutes = require './routes/api'

app = express()

app.use (req, res, next) ->
  res.setHeader 'Access-Control-Allow-Origin',
    '*'
  res.setHeader 'Access-Control-Allow-Methods',
    'POST, GET, PATCH, DELETE, OPTIONS'
  res.setHeader 'Access-Control-Allow-Headers',
    'X-Requested-With,content-type, Authorization'
  next()

app.use bodyParser.json()
app.use bodyParser.urlencoded
  extended: false
app.use express.static path.join __dirname, 'app/dist/'

app.use '/api', apiRoutes
app.use '/', appRoutes

module.exports = app
