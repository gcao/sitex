PostController = require "../controllers/post"

module.exports.main = (app) ->
  app.get  "/",         PostController.index
  app.get  "/post/new", PostController.newPost
  app.post "/post/new", PostController.addPost
  app.get  "/post/:id", PostController.viewPost

