{Router} = require 'express'

loginRoutes = require './login'

router.use '/login' loginRoutes

module.exports = router
