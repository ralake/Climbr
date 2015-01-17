class CreateNewPost

  def self.call
    Post.new
  end

  def self.save(post_details, user_id)
    @post = Post.create(post_details)
    @post.user_id = user_id
    @post.save
  end

end