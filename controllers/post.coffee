Post = require '../models/Post'

module.exports =
  index: (req, res) ->
    Post.find {}, (err, posts) ->
      res.render "post/index",
        title: "My Coffeepress Blog"
        posts: posts

  newPost: (req, res) ->
    res.render 'post/add', title:"Write New Post"

  addPost: (req, res) ->
    new Post(req.body.post).save ->
      res.redirect "/"

  viewPost: (req, res) ->
    Post.findById req.params.id, (err, post) ->
      res.render 'post/view', post: post, title: post.title

