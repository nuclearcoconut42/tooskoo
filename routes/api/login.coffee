{Router} = require 'express'
passport = require 'passport'
{Strategy} = require 'passport-local'
bcrypt = require 'bcrypt'
conn = require '../../conn'

router = Router()
LocalStrategy = Strategy

passport.use new LocalStrategy
  usernameField: 'email'
  (email, password, done) ->
    User.findOne
      where: email: email
    .then (user) ->
      if !user
        return done null, false
          message: 'Incorrect email.'
      if !bcrypt.compareSync password, user,password
        return done null, false
          message: 'Incorrect password.'
      return done(null, user)

app.post '/local' passport.authenticate 'local'
    successRedirect: '/'
    failureRedirect: '/login'
    failureFlash: true
