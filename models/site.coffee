mongoose = require 'mongoose'

require '../config/application'

sitex.Site = mongoose.model 'Site', new mongoose.Schema(
  domain: String
  description: String
)

