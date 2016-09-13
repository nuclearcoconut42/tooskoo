{createClass, createElement, createFactory, DOM} = require 'react'
{a, img} = DOM
Menu = createFactory require('react-burger-menu').slide

MenuComponent = createClass
  render: ->
    Menu
      customBurgerIcon: img
        src: "/img/icons/25px/menu.png"
      a
        id: 'notes'
        className: 'menu-item'
        href: '/notes'
        img
          src: "/img/icons/25px/pencil.png"
          width: "25px"
          height: "25px"
        "Notes"
      a
        id: 'assignments'
        className: 'menu-item'
        href: '/assignments'
        img
          src: "/img/icons/25px/checkbox.png"
          width: "25px"
          height: "25px"
        "Assignments"
      a
        id: 'schedule'
        className: 'menu-item'
        href: '/schedule'
        img
          src: "/img/icons/25px/clock.png"
          width: "25px"
          height: "25px"
        "Schedule"
      a
        id: 'grades'
        className: 'menu-item'
        href: '/grades'
        img
          src: "/img/icons/25px/a-plus.png"
          width: "25px"
          height: "25px"
        "Grades"
      a
        id: 'chat'
        className: 'menu-item'
        href: '/chat'
        img
          src: "/img/icons/25px/paper-airplane.png"
          width: "25px"
          height: "25px"
        "Chat"
module.exports = MenuComponent
