class AddLikeToPost

  def self.call(post_id)
    post = Post.find(post_id)
    post.likes.create
  end

end