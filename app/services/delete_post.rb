class DeletePost

  def self.call(post_id)
    post = Post.find(post_id)
    post.destroy
  end

end