class CreateNewComment

  def self.call
    Comment.new
  end

  def self.save(post_id, comments, user_id)
    post = Post.find(post_id)
    comment = post.comments.create(comments)
    comment.user_id = user_id
  end

end