PostController = require("../controllers/post")

module.exports.populate = (app) ->
  app.get "/", PostController.index
  app.get "/post/new", PostController.newPost

