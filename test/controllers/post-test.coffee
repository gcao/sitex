PostController = require "../../controllers/post"
require "should"

describe "PostController", ->
  req = {}
  res = {}
  describe "index", ->
    it "should display index with posts", (done)->
      res.render = (view, vars) ->
          view.should.equal "post/index"
          vars.title.should.equal "My Coffeepress Blog"
          vars.posts.should.eql []
          done()
      PostController.index(req, res)

  describe "new post", ->
    it "should display the add post page", (done) ->
      res.render = (view, vars) ->
          view.should.equal "post/add"
          vars.title.should.equal "Write New Post"
          done()
      PostController.newPost(req, res)

