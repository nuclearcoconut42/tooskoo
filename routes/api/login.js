var express = require('express');
var passport = require('passport');
var passportLocal = require('passport-local');
var passportGoogleOauth = require('passport-google-oauth');
var bcrypt = require('bcrypt');
var conn = require('../../conn');

var router = express.Router();
var LocalStrategy = passportLocal.Strategy;

passport.use(new LocalStrategy(
  {
    usernameField: 'email'
  },
  function(email, password, done){
    User.findOne({where: {email: email}}).then(function(user){
      if(!user){
        return done(null, false, {message: 'Incorrect email.'});
      }
      if(!bcrypt.compareSync(password, user,password){
        return done(null, false, {message: 'Incorrect password.'});
      }
      return done(null, user);
    });
  })
);

app.post('/local',
  passport.authenticate('local', {
    successRedirect: '/',
    failureRedirect: '/login',
    failureFlash: true
  })
);
