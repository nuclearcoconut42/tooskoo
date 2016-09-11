{Router} = require 'express'

router = Router()

router.get '/', (req, res, next) ->
  res.render 'html/index'

module.exports = router;
