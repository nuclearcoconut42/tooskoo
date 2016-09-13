{createElement, createClass} = require 'react'
{render} = require 'react-dom'

HelloWorld = createClass
  render: ->
    createElement 'header', null, createElement 'h1', null, 'Hello World!'

mainElement = document.querySelector 'main'

render createElement(HelloWorld), mainElement
