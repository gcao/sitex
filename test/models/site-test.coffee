require "should"
mongoose = require 'mongoose'

require '../../models/site'

describe sitex.Site, ->
  before (done) ->
    mongoose.connect 'mongodb://localhost/coffeepress', ->
      sitex.Site.remove done
  it 'should create a new site', (done) ->

