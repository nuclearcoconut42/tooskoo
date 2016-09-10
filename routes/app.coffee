{Router} = require 'express'

router = Router()

router.get('/', function(req, res, next){
  res.render('index');
});

module.exports = router;
