{Router} = require 'express'

router = Router()

router.get '/', (req, res, next) ->
  res.render 'index'

module.exports = router;
