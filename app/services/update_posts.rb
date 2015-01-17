class FindAndUpdatePost

  def self.call(id, details)
    @post = Post.find(id)
    @post.update(details)
  end

end