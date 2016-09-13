{createElement, createClass, DOM} = require 'react'
{render} = require 'react-dom'
{header, h1} = DOM

PageComponent = createClass
  render: ->
    header null,
      h1 null

module.exports = PageComponent
