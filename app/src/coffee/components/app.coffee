{createClass, DOM} = require 'react'
{div} = DOM

module.exports = createClass
  render: ->
    div
      className: app
      'Hello, world!'
