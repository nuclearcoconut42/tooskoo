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
        menu
          id: page
        page
          id: menu
          pageWrapId: "page"
          outerContainerId: "root"
    )

module.exports = createElement(RootComponent)
