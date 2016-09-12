{createElement} = require 'react'
{render} = require 'react-dom'
app = require './components/app.coffee'

render createElement(app, null), document.getElementById 'content'
