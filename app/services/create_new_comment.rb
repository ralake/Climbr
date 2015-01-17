class CreateNewComment

  def self.call
    Comment.new
  end

  def self.save(post, comments, user_id)
    @comment = post.comments.create(comments)
    @comment.user_id = user_id
  end

end