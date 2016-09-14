{createElement, createClass, createFactory, DOM} = require 'react'
{render} = require 'react-dom'
{p, div} = DOM
menu = createFactory require './menu'
page = createFactory require './page'

RootComponent = createClass
  render: ->
    return(
      div
        id: "root"
        menu null
        page null
    )

module.exports = createElement(RootComponent)
